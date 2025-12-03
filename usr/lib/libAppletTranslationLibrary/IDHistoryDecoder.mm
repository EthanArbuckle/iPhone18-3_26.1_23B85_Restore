@interface IDHistoryDecoder
+ (id)generateEndEventFromHCI:(id)i withTransceiver:(id)transceiver;
+ (id)getDPAN:(id)n;
+ (id)getExpirationDate:(id)date;
+ (id)getTransactionAmount:(id)amount;
+ (id)getTransactionDate:(id)date;
+ (id)parseIDHistoryBlocks:(id)blocks;
+ (unsigned)getHistoryNumber:(id)number;
+ (unsigned)getTypeOfUse:(id)use;
@end

@implementation IDHistoryDecoder

+ (id)getTransactionDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if ([SlalomUtils isValidFelicaBlock:dateCopy])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v5 = [dateCopy decodeBCDAtOffset:13 length:1];
    v6 = [dateCopy decodeBCDAtOffset:14 length:1];
    v7 = [dateCopy decodeBCDAtOffset:15 length:1];
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
      v12 = dateCopy;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction date for ID, invalid block: %@", &v11, 0xCu);
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
    LOBYTE(v9) = bytes[11];
    BYTE1(v9) = bytes[10];
    BYTE2(v9) = bytes[9];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{DecodeBCD(&v9, 3)}];
  }

  else
  {
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = amountCopy;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction amount for ID, invalid block: %@", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (unsigned)getTypeOfUse:(id)use
{
  v12 = *MEMORY[0x277D85DE8];
  useCopy = use;
  if ([SlalomUtils isValidFelicaBlock:useCopy])
  {
    bytes = [useCopy bytes];
    v5 = *(bytes + 3);
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
      NSLog(&cfstr_UnknownIdTypeO.isa, *(bytes + 3));
      v6 = v5 << 8;
    }
  }

  else
  {
    v7 = ATLLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = useCopy;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction type of use for ID, invalid block: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (unsigned)getHistoryNumber:(id)number
{
  v11 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  if ([SlalomUtils isValidFelicaBlock:numberCopy])
  {
    bytes = [numberCopy bytes];
    v5 = *(bytes + 2) | (*(bytes + 13) << 8);
  }

  else
  {
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = numberCopy;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get the history number for ID, invalid block: %@", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)getDPAN:(id)n
{
  v15 = *MEMORY[0x277D85DE8];
  nCopy = n;
  if ([SlalomUtils isValidFelicaBlock:nCopy])
  {
    bytes = [nCopy bytes];
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x24E098A9uLL);
    v6 = v5;
    for (i = 15; i != -1; --i)
    {
      v8 = *bytes++;
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
      v14 = nCopy;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_DEFAULT, "Failed to get the DPAN for ID, invalid block: %@", &v13, 0xCu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)parseIDHistoryBlocks:(id)blocks
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
      v10 = [self getHistoryNumber:v7];
      [dictionary setObject:v8 forKeyedSubscript:@"NFTransactionDate"];
      [dictionary setObject:v9 forKeyedSubscript:@"NFAmount"];
      [dictionary setObject:&unk_2843C63B0 forKeyedSubscript:@"NFAmountType"];
      [dictionary setObject:&unk_2843C63C8 forKeyedSubscript:@"NFSectorCombination"];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
      [dictionary setObject:v11 forKeyedSubscript:@"NFHistorySequenceNumber"];

      v12 = dictionary;
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

+ (id)getExpirationDate:(id)date
{
  v12 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if ([SlalomUtils isValidFelicaBlock:dateCopy])
  {
    v4.i32[0] = *([dateCopy bytes] + 12);
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
      v11 = dateCopy;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get the expiration date for ID, invalid block: %@", &v10, 0xCu);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)generateEndEventFromHCI:(id)i withTransceiver:(id)transceiver
{
  v85 = *MEMORY[0x277D85DE8];
  iCopy = i;
  transceiverCopy = transceiver;
  if (!transceiverCopy)
  {
    dictionary = ATLLogObject();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *md = 0;
      v38 = "No transceiver provided";
      goto LABEL_29;
    }

LABEL_30:
    v39 = 0;
    goto LABEL_75;
  }

  if (!iCopy || ![iCopy count])
  {
    dictionary = ATLLogObject();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *md = 0;
      v38 = "HCI Array provided does not contain HCI events";
LABEL_29:
      _os_log_impl(&dword_22EEF5000, dictionary, OS_LOG_TYPE_DEFAULT, v38, md, 2u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_2843C63B0 forKeyedSubscript:@"NFServiceProviderID"];
  v9 = FelicaGetDataFileSystemCommand(16587, 1);
  if (v9)
  {
    v10 = v9;
    v11 = [transceiverCopy transceiveAndCheckSW:v9 error:0];
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
      v69 = transceiverCopy;
      selfCopy = self;
      v67 = v13;
      v14 = [self getDPAN:?];
      v84 = *[v14 bytes];
      asHexString = [v14 asHexString];
      v70 = dictionary;
      [dictionary setObject:asHexString forKeyedSubscript:@"NFDPAN"];

      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v68 = iCopy;
      v16 = iCopy;
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
                [array addObject:v24];
              }

              if ([v25 count])
              {
                [array2 addObject:v25];
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v73 objects:v83 count:16];
        }

        while (v18);
      }

      v26 = array;
      v27 = [array count];
      if (!v27)
      {
        v41 = FelicaGetDataFileSystemCommand(16587, 2);

        transceiverCopy = v69;
        dictionary = v70;
        v66 = v41;
        if (v41)
        {
          v12 = [v69 transceiveAndCheckSW:v41 error:0];

          v42 = v67;
          iCopy = v68;
          if (v12)
          {
            v43 = FeliCaGetBlockDataFromGetDataCommand(v12);

            if (!v43)
            {
LABEL_72:
              v61 = [MEMORY[0x277CCABB0] numberWithBool:v27 == 0];
              [dictionary setObject:v61 forKeyedSubscript:@"readOnly"];

              v39 = dictionary;
              v10 = v66;
LABEL_73:

              goto LABEL_74;
            }

            v44 = [selfCopy getExpirationDate:v43];
            data = v84;
            v80 = 0;
            v81 = *[v44 bytes];
            CC_SHA256(&data, 0x16u, md);
            v45 = [MEMORY[0x277CBEB28] dataWithBytes:md length:16];
            asHexString2 = [v45 asHexString];
            [v70 setObject:asHexString2 forKeyedSubscript:@"NFTransactionID"];

            v26 = array;
            transceiverCopy = v69;

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

          iCopy = v68;
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

      transceiverCopy = v69;
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
            bytes = [v31 bytes];
            data = v84;
            LOBYTE(v80) = bytes[11];
            HIBYTE(v80) = bytes[10];
            LOBYTE(v81) = bytes[9];
            BYTE1(v81) = bytes[15];
            BYTE2(v81) = bytes[14];
            HIBYTE(v81) = bytes[13];
            CC_SHA256(&data, 0x16u, md);
            v36 = [MEMORY[0x277CBEB28] dataWithBytes:md length:16];
            asHexString3 = [v36 asHexString];
            v26 = array;
            [v70 setObject:asHexString3 forKeyedSubscript:@"NFTransactionID"];

            v27 = v32;
            iCopy = v68;
            goto LABEL_53;
          }

          iCopy = v68;
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
                v51 = [selfCopy getTypeOfUse:v50];
                v52 = v51;
                [MEMORY[0x277CCABB0] numberWithUnsignedChar:v51 >> 8];
                v53 = v50;
                v55 = v54 = v27;
                dictionary = v70;
                [v70 setObject:v55 forKeyedSubscript:@"NFTransactionType"];

                v27 = v54;
                v42 = v53;
                v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v52];
                [v70 setObject:v56 forKeyedSubscript:@"NFSectorCombination"];

                goto LABEL_71;
              }

LABEL_63:
              dictionary = v70;
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
      iCopy = v68;
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