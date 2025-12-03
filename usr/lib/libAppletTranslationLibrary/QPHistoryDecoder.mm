@interface QPHistoryDecoder
+ (id)generateEndEventFromHCI:(id)i withTransceiver:(id)transceiver;
+ (id)getTransactionAmount:(id)amount;
+ (id)getTransactionDate:(id)date;
+ (id)parseQuickPayHistoryBlocks:(id)blocks;
+ (unsigned)getATC:(id)c;
+ (unsigned)getExpirationDate:(id)date;
+ (unsigned)getHistoryNumber:(id)number;
+ (unsigned)getTypeOfUse:(id)use;
@end

@implementation QPHistoryDecoder

+ (id)getTransactionDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if ([SlalomUtils isValidFelicaBlock:dateCopy])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v5 = [dateCopy decodeBCDAtOffset:0 length:2];
    v6 = [dateCopy decodeBCDAtOffset:2 length:1];
    v7 = [dateCopy decodeBCDAtOffset:3 length:1];
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
      v12 = dateCopy;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction date for QuicPay, invalid block: %@", &v11, 0xCu);
    }

    v4 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)getTransactionAmount:(id)amount
{
  v11 = *MEMORY[0x277D85DE8];
  amountCopy = amount;
  if ([SlalomUtils isValidFelicaBlock:amountCopy])
  {
    bytes = [amountCopy bytes];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(bytes[13] << 16) | (bytes[14] << 8) | bytes[15]];
  }

  else
  {
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = amountCopy;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction amount for QuicPay, invalid block: %@", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (unsigned)getTypeOfUse:(id)use
{
  v11 = *MEMORY[0x277D85DE8];
  useCopy = use;
  if ([SlalomUtils isValidFelicaBlock:useCopy])
  {
    v4 = *([useCopy bytes] + 4) >> 4;
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
      v10 = useCopy;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Failed to get the type of use for QuicPay, invalid block: %@", &v9, 0xCu);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (unsigned)getHistoryNumber:(id)number
{
  v9 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  if ([SlalomUtils isValidFelicaBlock:numberCopy])
  {
    LODWORD(v4) = bswap32(*([numberCopy bytes] + 11)) >> 16;
  }

  else
  {
    v4 = ATLLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = numberCopy;
      _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get the hisotry number for QuicPay, invalid block: %@", &v7, 0xCu);
    }

    LOWORD(v4) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)parseQuickPayHistoryBlocks:(id)blocks
{
  blocksCopy = blocks;
  v5 = blocksCopy;
  if (blocksCopy && [blocksCopy count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v7 = [v5 objectAtIndexedSubscript:0];
    if ([SlalomUtils isValidFelicaBlock:v7])
    {
      v8 = [self getTransactionDate:v7];
      v9 = [self getTransactionAmount:v7];
      v10 = [self getTypeOfUse:v7];
      [dictionary setObject:v8 forKeyedSubscript:@"NFTransactionDate"];
      [dictionary setObject:v9 forKeyedSubscript:@"NFAmount"];
      [dictionary setObject:&unk_2843C7130 forKeyedSubscript:@"NFAmountType"];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10 >> 8];
      [dictionary setObject:v11 forKeyedSubscript:@"NFTransactionType"];

      [dictionary setObject:&unk_2843C7148 forKeyedSubscript:@"NFSectorCombination"];
      v12 = [self getHistoryNumber:v7];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      [dictionary setObject:v13 forKeyedSubscript:@"NFHistorySequenceNumber"];

      v14 = dictionary;
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
    dictionary = ATLLogObject();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, dictionary, OS_LOG_TYPE_DEFAULT, "the array of block does not contain block entry", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

+ (id)generateEndEventFromHCI:(id)i withTransceiver:(id)transceiver
{
  v78 = *MEMORY[0x277D85DE8];
  iCopy = i;
  transceiverCopy = transceiver;
  if (!transceiverCopy)
  {
    dictionary = ATLLogObject();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *md = 0;
      v41 = "No transceiver provided";
      goto LABEL_29;
    }

LABEL_30:
    v42 = 0;
    goto LABEL_65;
  }

  if (!iCopy || ![iCopy count])
  {
    dictionary = ATLLogObject();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *md = 0;
      v41 = "HCI Array provided does not contain HCI events";
LABEL_29:
      _os_log_impl(&dword_22EEF5000, dictionary, OS_LOG_TYPE_DEFAULT, v41, md, 2u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_2843C7160 forKeyedSubscript:@"NFServiceProviderID"];
  v9 = FelicaGetDataFileSystemCommand(13771, 4);
  if (v9)
  {
    v10 = v9;
    v11 = [transceiverCopy transceiveAndCheckSW:v9 error:0];
    if (v11)
    {
      v12 = v11;
      v13 = FeliCaGetBlockDataFromGetDataCommand(v11);
      if (v13)
      {
        v14 = v13;
        v58 = v10;
        v59 = v12;
        v15 = [self getDPAN:v13];
        v56 = *([v15 bytes] + 2);
        asHexString = [v15 asHexString];
        v63 = dictionary;
        [dictionary setObject:asHexString forKeyedSubscript:@"NFDPAN"];

        selfCopy = self;
        v60 = v14;
        v55 = [self getExpirationDate:v14];

        array = [MEMORY[0x277CBEB18] array];
        array2 = [MEMORY[0x277CBEB18] array];
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v62 = iCopy;
        v17 = iCopy;
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
                  [array addObject:v25];
                }

                if ([v26 count])
                {
                  [array2 addObject:v26];
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v66 objects:v77 count:16];
          }

          while (v19);
        }

        v27 = [array count];
        if (v27)
        {
          v10 = FelicaGetDataFileSystemCommand(13839, 0);

          dictionary = v63;
          if (v10)
          {
            v28 = [transceiverCopy transceiveAndCheckSW:v10 error:0];

            if (v28)
            {
              v29 = FeliCaGetBlockDataFromGetDataCommand(v28);

              if (v29)
              {
                bytes = [v29 bytes];
                v61 = v27;
                v31 = *(bytes + 13);
                v32 = *(bytes + 15);
                v33 = *bytes;
                v76 = v29;
                v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
                v35 = [QPHistoryDecoder parseQuickPayHistoryBlocks:v34];

                [v63 addEntriesFromDictionary:v35];
                data = v56;
                v73 = v31;
                v74 = v32;
                v75 = v33;
                CC_SHA256(&data, 0xFu, md);
                asHexString3 = [MEMORY[0x277CBEB28] dataWithBytes:md length:32];
                asHexString2 = [asHexString3 asHexString];
                [v63 setObject:asHexString2 forKeyedSubscript:@"NFTransactionID"];

                v38 = [selfCopy getTypeOfUse:v29];
                LOBYTE(asHexString2) = v38;
                v39 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v38 >> 8];
                [v63 setObject:v39 forKeyedSubscript:@"NFTransactionType"];

                dictionary = v63;
                v40 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:asHexString2];
                [v63 setObject:v40 forKeyedSubscript:@"NFSectorCombination"];

                v27 = v61;
LABEL_44:

LABEL_63:
                v52 = [MEMORY[0x277CCABB0] numberWithBool:v27 == 0];
                [dictionary setObject:v52 forKeyedSubscript:@"readOnly"];

                v42 = dictionary;
                iCopy = v62;
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

        dictionary = v63;
        if (v10)
        {
          v28 = [transceiverCopy transceiveAndCheckSW:v10 error:0];

          if (v28)
          {
            v29 = FeliCaGetBlockDataFromGetDataCommand(v28);

            if (v29)
            {
              data = v56;
              v45 = [selfCopy getATC:v29];
              LOBYTE(v73) = HIBYTE(v45);
              HIBYTE(v73) = v45;
              v74 = HIBYTE(v55);
              LOBYTE(v75) = v55;
              *md = 0u;
              v71 = 0u;
              CC_SHA256(&data, 0xCu, md);
              v35 = [MEMORY[0x277CBEB28] dataWithBytes:md length:32];
              asHexString3 = [v35 asHexString];
              [v63 setObject:asHexString3 forKeyedSubscript:@"NFTransactionID"];
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

+ (unsigned)getATC:(id)c
{
  v9 = *MEMORY[0x277D85DE8];
  cCopy = c;
  if ([SlalomUtils isValidFelicaBlock:cCopy])
  {
    LODWORD(v4) = bswap32(*([cCopy bytes] + 4)) >> 16;
  }

  else
  {
    v4 = ATLLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = cCopy;
      _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get the ATC for QuicPay, invalid block: %@", &v7, 0xCu);
    }

    LOWORD(v4) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (unsigned)getExpirationDate:(id)date
{
  v9 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if ([SlalomUtils isValidFelicaBlock:dateCopy])
  {
    LODWORD(v4) = bswap32(*([dateCopy bytes] + 13)) >> 16;
  }

  else
  {
    v4 = ATLLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = dateCopy;
      _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get the expiration date for QuicPay, invalid block: %@", &v7, 0xCu);
    }

    LOWORD(v4) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

@end