@interface QPHistoryDecoder
+ (id)generateEndEventFromHCI:(id)a3 withTransceiver:(id)a4;
+ (id)getTransactionAmount:(id)a3;
+ (id)getTransactionDate:(id)a3;
+ (id)parseQuickPayHistoryBlocks:(id)a3;
+ (unsigned)getATC:(id)a3;
+ (unsigned)getExpirationDate:(id)a3;
+ (unsigned)getHistoryNumber:(id)a3;
+ (unsigned)getTypeOfUse:(id)a3;
@end

@implementation QPHistoryDecoder

+ (id)getTransactionDate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v5 = [v3 decodeBCDAtOffset:0 length:2];
    v6 = [v3 decodeBCDAtOffset:2 length:1];
    v7 = [v3 decodeBCDAtOffset:3 length:1];
    [v4 setDay:{objc_msgSend(v7, "intValue")}];
    [v4 setMonth:{objc_msgSend(v6, "intValue")}];
    [v4 setYear:{objc_msgSend(v5, "intValue")}];
  }

  else
  {
    v8 = ATLLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction date for QuicPay, invalid block: %@", &v11, 0xCu);
    }

    v4 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)getTransactionAmount:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = [v3 bytes];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v4[13] << 16) | (v4[14] << 8) | v4[15]];
  }

  else
  {
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction amount for QuicPay, invalid block: %@", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (unsigned)getTypeOfUse:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = *([v3 bytes] + 4) >> 4;
    switch(v4)
    {
      case 1:
        LOWORD(v4) = 241;
        break;
      case 2:
        LOWORD(v4) = 240;
        break;
      case 4:
        LOWORD(v4) = 74;
        break;
    }

    v6 = v4 << 8;
  }

  else
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Failed to get the type of use for QuicPay, invalid block: %@", &v9, 0xCu);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (unsigned)getHistoryNumber:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    LODWORD(v4) = bswap32(*([v3 bytes] + 11)) >> 16;
  }

  else
  {
    v4 = ATLLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get the hisotry number for QuicPay, invalid block: %@", &v7, 0xCu);
    }

    LOWORD(v4) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)parseQuickPayHistoryBlocks:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = [v5 objectAtIndexedSubscript:0];
    if ([SlalomUtils isValidFelicaBlock:v7])
    {
      v8 = [a1 getTransactionDate:v7];
      v9 = [a1 getTransactionAmount:v7];
      v10 = [a1 getTypeOfUse:v7];
      [v6 setObject:v8 forKeyedSubscript:@"NFTransactionDate"];
      [v6 setObject:v9 forKeyedSubscript:@"NFAmount"];
      [v6 setObject:&unk_2843C7130 forKeyedSubscript:@"NFAmountType"];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10 >> 8];
      [v6 setObject:v11 forKeyedSubscript:@"NFTransactionType"];

      [v6 setObject:&unk_2843C7148 forKeyedSubscript:@"NFSectorCombination"];
      v12 = [a1 getHistoryNumber:v7];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      [v6 setObject:v13 forKeyedSubscript:@"NFHistorySequenceNumber"];

      v14 = v6;
    }

    else
    {
      v8 = ATLLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, "the array contains an empty block", v16, 2u);
      }

      v14 = 0;
    }
  }

  else
  {
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "the array of block does not contain block entry", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

+ (id)generateEndEventFromHCI:(id)a3 withTransceiver:(id)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = ATLLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *md = 0;
      v41 = "No transceiver provided";
      goto LABEL_29;
    }

LABEL_30:
    v42 = 0;
    goto LABEL_65;
  }

  if (!v6 || ![v6 count])
  {
    v8 = ATLLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *md = 0;
      v41 = "HCI Array provided does not contain HCI events";
LABEL_29:
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, v41, md, 2u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:&unk_2843C7160 forKeyedSubscript:@"NFServiceProviderID"];
  v9 = FelicaGetDataFileSystemCommand(13771, 4);
  if (v9)
  {
    v10 = v9;
    v11 = [v7 transceiveAndCheckSW:v9 error:0];
    if (v11)
    {
      v12 = v11;
      v13 = FeliCaGetBlockDataFromGetDataCommand(v11);
      if (v13)
      {
        v14 = v13;
        v58 = v10;
        v59 = v12;
        v15 = [a1 getDPAN:v13];
        v56 = *([v15 bytes] + 2);
        v16 = [v15 asHexString];
        v63 = v8;
        [v8 setObject:v16 forKeyedSubscript:@"NFDPAN"];

        v57 = a1;
        v60 = v14;
        v55 = [a1 getExpirationDate:v14];

        v65 = [MEMORY[0x277CBEB18] array];
        v64 = [MEMORY[0x277CBEB18] array];
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v62 = v6;
        v17 = v6;
        v18 = [v17 countByEnumeratingWithState:&v66 objects:v77 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v67;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v67 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v66 + 1) + 8 * i);
              v23 = [v22 objectForKeyedSubscript:@"EventType"];

              if (v23 == @"TransactionEvent")
              {
                v24 = [v22 objectForKeyedSubscript:@"parsedInfo"];
                v25 = [v24 objectForKeyedSubscript:@"OPWrite"];
                v26 = [v24 objectForKeyedSubscript:@"OPRead"];
                if ([v25 count])
                {
                  [v65 addObject:v25];
                }

                if ([v26 count])
                {
                  [v64 addObject:v26];
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v66 objects:v77 count:16];
          }

          while (v19);
        }

        v27 = [v65 count];
        if (v27)
        {
          v10 = FelicaGetDataFileSystemCommand(13839, 0);

          v8 = v63;
          if (v10)
          {
            v28 = [v7 transceiveAndCheckSW:v10 error:0];

            if (v28)
            {
              v29 = FeliCaGetBlockDataFromGetDataCommand(v28);

              if (v29)
              {
                v30 = [v29 bytes];
                v61 = v27;
                v31 = *(v30 + 13);
                v32 = *(v30 + 15);
                v33 = *v30;
                v76 = v29;
                v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
                v35 = [QPHistoryDecoder parseQuickPayHistoryBlocks:v34];

                [v63 addEntriesFromDictionary:v35];
                data = v56;
                v73 = v31;
                v74 = v32;
                v75 = v33;
                CC_SHA256(&data, 0xFu, md);
                v36 = [MEMORY[0x277CBEB28] dataWithBytes:md length:32];
                v37 = [v36 asHexString];
                [v63 setObject:v37 forKeyedSubscript:@"NFTransactionID"];

                v38 = [v57 getTypeOfUse:v29];
                LOBYTE(v37) = v38;
                v39 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v38 >> 8];
                [v63 setObject:v39 forKeyedSubscript:@"NFTransactionType"];

                v8 = v63;
                v40 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v37];
                [v63 setObject:v40 forKeyedSubscript:@"NFSectorCombination"];

                v27 = v61;
LABEL_44:

LABEL_63:
                v52 = [MEMORY[0x277CCABB0] numberWithBool:v27 == 0];
                [v8 setObject:v52 forKeyedSubscript:@"readOnly"];

                v42 = v8;
                v6 = v62;
                goto LABEL_64;
              }

LABEL_51:
              v48 = ATLLogObject();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *md = 138412290;
                *&md[4] = 0;
                v49 = "QP block is unexpected (Sercice 360F block 0): %@";
LABEL_61:
                _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_DEFAULT, v49, md, 0xCu);
                goto LABEL_62;
              }

              goto LABEL_62;
            }
          }

          else
          {
            v46 = ATLLogObject();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *md = 138412290;
              *&md[4] = 0;
              _os_log_impl(&dword_22EEF5000, v46, OS_LOG_TYPE_DEFAULT, "GET DATA Command was nil: %@", md, 0xCu);
            }
          }

          v47 = ATLLogObject();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *md = 138412290;
            *&md[4] = 0;
            _os_log_impl(&dword_22EEF5000, v47, OS_LOG_TYPE_DEFAULT, "GET DATA response from transceiver was nil: %@", md, 0xCu);
          }

          v28 = 0;
          goto LABEL_51;
        }

        v10 = FelicaGetDataFileSystemCommand(13771, 6);

        v8 = v63;
        if (v10)
        {
          v28 = [v7 transceiveAndCheckSW:v10 error:0];

          if (v28)
          {
            v29 = FeliCaGetBlockDataFromGetDataCommand(v28);

            if (v29)
            {
              data = v56;
              v45 = [v57 getATC:v29];
              LOBYTE(v73) = HIBYTE(v45);
              HIBYTE(v73) = v45;
              v74 = HIBYTE(v55);
              LOBYTE(v75) = v55;
              *md = 0u;
              v71 = 0u;
              CC_SHA256(&data, 0xCu, md);
              v35 = [MEMORY[0x277CBEB28] dataWithBytes:md length:32];
              v36 = [v35 asHexString];
              [v63 setObject:v36 forKeyedSubscript:@"NFTransactionID"];
              goto LABEL_44;
            }

LABEL_59:
            v48 = ATLLogObject();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *md = 138412290;
              *&md[4] = 0;
              v49 = "QP block is unexpected (Sercice 408C block 0): %@";
              goto LABEL_61;
            }

LABEL_62:

            v29 = 0;
            goto LABEL_63;
          }
        }

        else
        {
          v50 = ATLLogObject();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *md = 138412290;
            *&md[4] = 0;
            _os_log_impl(&dword_22EEF5000, v50, OS_LOG_TYPE_DEFAULT, "GET DATA Command was nil: %@", md, 0xCu);
          }
        }

        v51 = ATLLogObject();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *md = 138412290;
          *&md[4] = 0;
          _os_log_impl(&dword_22EEF5000, v51, OS_LOG_TYPE_DEFAULT, "GET DATA response from transceiver was nil: %@", md, 0xCu);
        }

        v28 = 0;
        goto LABEL_59;
      }

      v44 = ATLLogObject();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *md = 138412290;
        *&md[4] = 0;
        _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEFAULT, "QP block is unexpected (Sercice 35CB block 4): %@", md, 0xCu);
      }
    }

    else
    {
      v43 = ATLLogObject();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *md = 138412290;
        *&md[4] = 0;
        _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_DEFAULT, "GET DATA response from transceiver was nil: %@", md, 0xCu);
      }
    }
  }

  else
  {
    v10 = ATLLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *md = 138412290;
      *&md[4] = 0;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_DEFAULT, "GET DATA Command was nil: %@", md, 0xCu);
    }
  }

  v42 = 0;
LABEL_64:

LABEL_65:
  v53 = *MEMORY[0x277D85DE8];

  return v42;
}

+ (unsigned)getATC:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    LODWORD(v4) = bswap32(*([v3 bytes] + 4)) >> 16;
  }

  else
  {
    v4 = ATLLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get the ATC for QuicPay, invalid block: %@", &v7, 0xCu);
    }

    LOWORD(v4) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (unsigned)getExpirationDate:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    LODWORD(v4) = bswap32(*([v3 bytes] + 13)) >> 16;
  }

  else
  {
    v4 = ATLLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get the expiration date for QuicPay, invalid block: %@", &v7, 0xCu);
    }

    LOWORD(v4) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

@end