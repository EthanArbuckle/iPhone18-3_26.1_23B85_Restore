@interface IDHistoryDecoder
+ (id)generateEndEventFromHCI:(id)a3 withTransceiver:(id)a4;
+ (id)getDPAN:(id)a3;
+ (id)getExpirationDate:(id)a3;
+ (id)getTransactionAmount:(id)a3;
+ (id)getTransactionDate:(id)a3;
+ (id)parseIDHistoryBlocks:(id)a3;
+ (unsigned)getHistoryNumber:(id)a3;
+ (unsigned)getTypeOfUse:(id)a3;
@end

@implementation IDHistoryDecoder

+ (id)getTransactionDate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v5 = [v3 decodeBCDAtOffset:13 length:1];
    v6 = [v3 decodeBCDAtOffset:14 length:1];
    v7 = [v3 decodeBCDAtOffset:15 length:1];
    [v4 setDay:{objc_msgSend(v5, "intValue")}];
    [v4 setMonth:{objc_msgSend(v6, "intValue")}];
    [v4 setYear:{(objc_msgSend(v7, "intValue") + 2000)}];
  }

  else
  {
    v8 = ATLLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction date for ID, invalid block: %@", &v11, 0xCu);
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
    LOBYTE(v9) = v4[11];
    BYTE1(v9) = v4[10];
    BYTE2(v9) = v4[9];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{DecodeBCD(&v9, 3)}];
  }

  else
  {
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction amount for ID, invalid block: %@", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (unsigned)getTypeOfUse:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = [v3 bytes];
    v5 = *(v4 + 3);
    if (v5 == 32)
    {
      v6 = 18944;
    }

    else if (v5 == 16)
    {
      v6 = -4096;
    }

    else
    {
      NSLog(&cfstr_UnknownIdTypeO.isa, *(v4 + 3));
      v6 = v5 << 8;
    }
  }

  else
  {
    v7 = ATLLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction type of use for ID, invalid block: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (unsigned)getHistoryNumber:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = [v3 bytes];
    v5 = *(v4 + 2) | (*(v4 + 13) << 8);
  }

  else
  {
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get the history number for ID, invalid block: %@", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)getDPAN:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = [v3 bytes];
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x24E098A9uLL);
    v6 = v5;
    for (i = 15; i != -1; --i)
    {
      v8 = *v4++;
      *(v5 + i) = v8;
    }

    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:16];
    free(v6);
  }

  else
  {
    v10 = ATLLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_DEFAULT, "Failed to get the DPAN for ID, invalid block: %@", &v13, 0xCu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)parseIDHistoryBlocks:(id)a3
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
      v10 = [a1 getHistoryNumber:v7];
      [v6 setObject:v8 forKeyedSubscript:@"NFTransactionDate"];
      [v6 setObject:v9 forKeyedSubscript:@"NFAmount"];
      [v6 setObject:&unk_2843C63B0 forKeyedSubscript:@"NFAmountType"];
      [v6 setObject:&unk_2843C63C8 forKeyedSubscript:@"NFSectorCombination"];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
      [v6 setObject:v11 forKeyedSubscript:@"NFHistorySequenceNumber"];

      v12 = v6;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    NSLog(&cfstr_TheArrayOfBloc.isa);
    v12 = 0;
  }

  return v12;
}

+ (id)getExpirationDate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4.i32[0] = *([v3 bytes] + 12);
    v5 = vrev64_s16(*&vmovl_u8(v4));
    v10 = vuzp1_s8(v5, v5).u32[0];
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:4];
  }

  else
  {
    v7 = ATLLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get the expiration date for ID, invalid block: %@", &v10, 0xCu);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)generateEndEventFromHCI:(id)a3 withTransceiver:(id)a4
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = ATLLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *md = 0;
      v38 = "No transceiver provided";
      goto LABEL_29;
    }

LABEL_30:
    v39 = 0;
    goto LABEL_75;
  }

  if (!v6 || ![v6 count])
  {
    v8 = ATLLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *md = 0;
      v38 = "HCI Array provided does not contain HCI events";
LABEL_29:
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, v38, md, 2u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:&unk_2843C63B0 forKeyedSubscript:@"NFServiceProviderID"];
  v9 = FelicaGetDataFileSystemCommand(16587, 1);
  if (v9)
  {
    v10 = v9;
    v11 = [v7 transceiveAndCheckSW:v9 error:0];
    if (v11)
    {
      v12 = v11;
      v13 = FeliCaGetBlockDataFromGetDataCommand(v11);
      if (!v13)
      {
        v26 = ATLLogObject();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *md = 138412290;
          v78 = 0;
          _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_DEFAULT, "ID block is unexpected (Sercice 40CB block 1): %@", md, 0xCu);
        }

        v39 = 0;
        goto LABEL_73;
      }

      v65 = v12;
      v69 = v7;
      v64 = a1;
      v67 = v13;
      v14 = [a1 getDPAN:?];
      v84 = *[v14 bytes];
      v15 = [v14 asHexString];
      v70 = v8;
      [v8 setObject:v15 forKeyedSubscript:@"NFDPAN"];

      v72 = [MEMORY[0x277CBEB18] array];
      v71 = [MEMORY[0x277CBEB18] array];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v68 = v6;
      v16 = v6;
      v17 = [v16 countByEnumeratingWithState:&v73 objects:v83 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v74;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v74 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v73 + 1) + 8 * i);
            v22 = [v21 objectForKeyedSubscript:@"EventType"];

            if (v22 == @"TransactionEvent")
            {
              v23 = [v21 objectForKeyedSubscript:@"parsedInfo"];
              v24 = [v23 objectForKeyedSubscript:@"OPWrite"];
              v25 = [v23 objectForKeyedSubscript:@"OPRead"];
              if ([v24 count])
              {
                [v72 addObject:v24];
              }

              if ([v25 count])
              {
                [v71 addObject:v25];
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v73 objects:v83 count:16];
        }

        while (v18);
      }

      v26 = v72;
      v27 = [v72 count];
      if (!v27)
      {
        v41 = FelicaGetDataFileSystemCommand(16587, 2);

        v7 = v69;
        v8 = v70;
        v66 = v41;
        if (v41)
        {
          v12 = [v69 transceiveAndCheckSW:v41 error:0];

          v42 = v67;
          v6 = v68;
          if (v12)
          {
            v43 = FeliCaGetBlockDataFromGetDataCommand(v12);

            if (!v43)
            {
LABEL_72:
              v61 = [MEMORY[0x277CCABB0] numberWithBool:v27 == 0];
              [v8 setObject:v61 forKeyedSubscript:@"readOnly"];

              v39 = v8;
              v10 = v66;
LABEL_73:

              goto LABEL_74;
            }

            v44 = [v64 getExpirationDate:v43];
            data = v84;
            v80 = 0;
            v81 = *[v44 bytes];
            CC_SHA256(&data, 0x16u, md);
            v45 = [MEMORY[0x277CBEB28] dataWithBytes:md length:16];
            v46 = [v45 asHexString];
            [v70 setObject:v46 forKeyedSubscript:@"NFTransactionID"];

            v26 = v72;
            v7 = v69;

            v27 = 0;
            v42 = v43;
LABEL_71:

            goto LABEL_72;
          }
        }

        else
        {
          v59 = ATLLogObject();
          v42 = v67;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *md = 138412290;
            v78 = 0;
            _os_log_impl(&dword_22EEF5000, v59, OS_LOG_TYPE_DEFAULT, "GET DATA Command was nil: %@", md, 0xCu);
          }

          v6 = v68;
        }

        v60 = ATLLogObject();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *md = 138412290;
          v78 = 0;
          _os_log_impl(&dword_22EEF5000, v60, OS_LOG_TYPE_DEFAULT, "GET DATA response from transceiver was nil: %@", md, 0xCu);
        }

        v12 = 0;
        goto LABEL_71;
      }

      v28 = FelicaGetDataFileSystemCommand(16527, 0);

      v7 = v69;
      if (v28)
      {
        v29 = [v69 transceiveAndCheckSW:v28 error:0];

        v30 = v67;
        if (v29)
        {
          v31 = FeliCaGetBlockDataFromGetDataCommand(v29);

          if (v31)
          {
            v82 = v31;
            [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
            v33 = v32 = v27;
            v34 = [IDHistoryDecoder parseIDHistoryBlocks:v33];

            [v70 addEntriesFromDictionary:v34];
            v35 = [v31 bytes];
            data = v84;
            LOBYTE(v80) = v35[11];
            HIBYTE(v80) = v35[10];
            LOBYTE(v81) = v35[9];
            BYTE1(v81) = v35[15];
            BYTE2(v81) = v35[14];
            HIBYTE(v81) = v35[13];
            CC_SHA256(&data, 0x16u, md);
            v36 = [MEMORY[0x277CBEB28] dataWithBytes:md length:16];
            v37 = [v36 asHexString];
            v26 = v72;
            [v70 setObject:v37 forKeyedSubscript:@"NFTransactionID"];

            v27 = v32;
            v6 = v68;
            goto LABEL_53;
          }

          v6 = v68;
LABEL_50:
          v34 = ATLLogObject();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *md = 138412290;
            v78 = 0;
            _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_DEFAULT, "ID block is unexpected (Sercice 408F block 0): %@", md, 0xCu);
          }

          v31 = 0;
LABEL_53:

          v49 = FelicaGetDataFileSystemCommand(16524, 0);

          v66 = v49;
          if (v49)
          {
            v12 = [v69 transceiveAndCheckSW:v49 error:0];

            if (v12)
            {
              v50 = FeliCaGetBlockDataFromGetDataCommand(v12);

              if (v50)
              {
                v51 = [v64 getTypeOfUse:v50];
                v52 = v51;
                [MEMORY[0x277CCABB0] numberWithUnsignedChar:v51 >> 8];
                v53 = v50;
                v55 = v54 = v27;
                v8 = v70;
                [v70 setObject:v55 forKeyedSubscript:@"NFTransactionType"];

                v27 = v54;
                v42 = v53;
                v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v52];
                [v70 setObject:v56 forKeyedSubscript:@"NFSectorCombination"];

                goto LABEL_71;
              }

LABEL_63:
              v8 = v70;
              v42 = ATLLogObject();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *md = 138412290;
                v78 = 0;
                _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_DEFAULT, "ID block is unexpected (Sercice 408C block 0): %@", md, 0xCu);
              }

              goto LABEL_71;
            }
          }

          else
          {
            v57 = ATLLogObject();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *md = 138412290;
              v78 = 0;
              _os_log_impl(&dword_22EEF5000, v57, OS_LOG_TYPE_DEFAULT, "GET DATA Command was nil: %@", md, 0xCu);
            }
          }

          v58 = ATLLogObject();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *md = 138412290;
            v78 = 0;
            _os_log_impl(&dword_22EEF5000, v58, OS_LOG_TYPE_DEFAULT, "GET DATA response from transceiver was nil: %@", md, 0xCu);
          }

          v12 = 0;
          goto LABEL_63;
        }
      }

      else
      {
        v47 = ATLLogObject();
        v30 = v67;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *md = 138412290;
          v78 = 0;
          _os_log_impl(&dword_22EEF5000, v47, OS_LOG_TYPE_DEFAULT, "GET DATA Command was nil: %@", md, 0xCu);
        }
      }

      v48 = ATLLogObject();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *md = 138412290;
        v78 = 0;
        _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_DEFAULT, "GET DATA response from transceiver was nil: %@", md, 0xCu);
      }

      v29 = 0;
      v6 = v68;
      goto LABEL_50;
    }

    v40 = ATLLogObject();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *md = 138412290;
      v78 = 0;
      _os_log_impl(&dword_22EEF5000, v40, OS_LOG_TYPE_DEFAULT, "GET DATA response from transceiver was nil: %@", md, 0xCu);
    }
  }

  else
  {
    v10 = ATLLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *md = 138412290;
      v78 = 0;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_DEFAULT, "GET DATA Command was nil: %@", md, 0xCu);
    }
  }

  v39 = 0;
LABEL_74:

LABEL_75:
  v62 = *MEMORY[0x277D85DE8];

  return v39;
}

@end