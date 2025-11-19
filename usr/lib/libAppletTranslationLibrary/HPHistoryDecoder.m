@interface HPHistoryDecoder
+ ($06D0163FE0D7AFE752A9F21F38483579)getInOutStation:(id)a3;
+ ($391024036B902F3EE9BCB0FBA5EF777F)getCommuterBalance:(id)a3;
+ ($391024036B902F3EE9BCB0FBA5EF777F)getTransactionBalance:(id)a3;
+ ($9E16F6706E08E1DCF37CEDFAE5F41851)getSectorInformation:(id)a3;
+ (BOOL)getGreenCarTicketUsed:(id)a3;
+ (BOOL)getIsDenyListed:(id)a3;
+ (id)_decodeShinkansenTrainDataWithBlock:(id)a3 andBlock:(id)a4;
+ (id)getTransactionDate:(id)a3;
+ (id)parseGreencarBlocks:(id)a3;
+ (id)parseShinkansenBlocks:(id)a3 fromServiceCode:(unsigned __int16)a4;
+ (id)parseSuicaHistoryBlocks:(id)a3 withIDm:(id)a4;
+ (int)getTransactionAmount:(id)a3 withPreviousBlock:(id)a4;
+ (unsigned)getHistoryNumber:(id)a3;
+ (unsigned)getTypeOfUse:(id)a3;
@end

@implementation HPHistoryDecoder

+ (id)getTransactionDate:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = bswap32(*([v3 bytes] + 4));
    v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v5 setYear:(v4 >> 25) + 2000];
    [v5 setMonth:(v4 >> 21) & 0xF];
    [v5 setDay:HIWORD(v4) & 0x1F];
  }

  else
  {
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction date for Suica, invalid block: %@", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ ($391024036B902F3EE9BCB0FBA5EF777F)getTransactionBalance:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = [v3 bytes];
    v5 = ((v4[12] << 16) | (v4[11] << 8) | v4[10]) << 32;
    v6 = 1;
  }

  else
  {
    v7 = ATLLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get the transaction balance for Suica, invalid block: %@", &v10, 0xCu);
    }

    v5 = 0;
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return (v6 | v5);
}

+ ($391024036B902F3EE9BCB0FBA5EF777F)getCommuterBalance:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = [v3 bytes];
    v5 = ((v4[13] << 16) | (v4[12] << 8) | v4[11]) << 32;
    v6 = 1;
  }

  else
  {
    v7 = ATLLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get the commuter balance for Suica, invalid block: %@", &v10, 0xCu);
    }

    v5 = 0;
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return (v6 | v5);
}

+ (unsigned)getTypeOfUse:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = [v3 bytes];
    v5 = *(v4 + 3) | ((*(v4 + 1) & 0x7F) << 8);
  }

  else
  {
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get the type of use for Suica, invalid block: %@", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (int)getTransactionAmount:(id)a3 withPreviousBlock:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![SlalomUtils isValidFelicaBlock:v6])
  {
    v10 = ATLLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      v11 = "Failed to get the transaction amount use for Suica, invalid (current) block: %@";
LABEL_8:
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_DEFAULT, v11, &v14, 0xCu);
    }

LABEL_9:

    v9 = 0;
    goto LABEL_10;
  }

  if (![SlalomUtils isValidFelicaBlock:v7])
  {
    v10 = ATLLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      v11 = "Failed to get the transaction amount use for Suica, invalid (previous) block: %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = [a1 getTransactionBalance:v6] >> 32;
  v9 = ([a1 getTransactionBalance:v7] >> 32) - v8;
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

+ ($9E16F6706E08E1DCF37CEDFAE5F41851)getSectorInformation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = [v3 bytes];
    v5 = bswap32(*(v4 + 6)) >> 16;
    v6 = (*(v4 + 15) & 0x30) << 48;
    v7 = (bswap32(*(v4 + 8)) >> 16) << 32;
    v8 = (*(v4 + 15) & 0xC0) << 16;
  }

  else
  {
    v9 = ATLLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get the sector information for Suica, invalid block: %@", &v12, 0xCu);
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return (v7 | v6 | v8 | v5);
}

+ (BOOL)getGreenCarTicketUsed:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = *([v3 bytes] + 15) & 1;
  }

  else
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Failed to get the GreenCar information for Suica, invalid block: %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

+ ($06D0163FE0D7AFE752A9F21F38483579)getInOutStation:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = [v3 bytes];
    LODWORD(v5) = *v4 >> 7;
    v6 = (v4[1] >> 6) & 1;
  }

  else
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Failed to get the In and Out information for Suica, invalid block: %@", &v9, 0xCu);
    }

    LOWORD(v6) = 0;
    LOWORD(v5) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return (v5 | (v6 << 8));
}

+ (BOOL)getIsDenyListed:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = *([v3 bytes] + 8) < 0;
  }

  else
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Failed to get the denylisted information for Suica, invalid block: %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (unsigned)getHistoryNumber:(id)a3
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
      _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get the history number information for Suica, invalid block: %@", &v7, 0xCu);
    }

    LOWORD(v4) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)parseSuicaHistoryBlocks:(id)a3 withIDm:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7 || [v7 length] != 8)
  {
    NSLog(&cfstr_IdmNotProvided.isa, v8);
LABEL_14:
    v45 = 0;
    goto LABEL_15;
  }

  if (!v6 || ![v6 count])
  {
    NSLog(&cfstr_TheArrayOfBloc.isa);
    goto LABEL_14;
  }

  v48 = [MEMORY[0x277CBEB38] dictionary];
  v51 = [MEMORY[0x277CBEB18] array];
  if ([v6 count])
  {
    v9 = 0;
    v10 = 0;
    v11 = 0x277CBE000uLL;
    v49 = a1;
    v50 = v8;
    v52 = v6;
    do
    {
      v53 = v10;
      v12 = [MEMORY[0x277CBEB38] dictionary];
      v13 = [v6 objectAtIndexedSubscript:v9];
      v14 = [a1 getTransactionDate:v13];
      v15 = [a1 getTypeOfUse:v13];
      v16 = [a1 getSectorInformation:v13];
      v17 = [a1 getTransactionBalance:v13] >> 32;
      v56 = 0;
      v18 = v9 + 1;
      if (v18 >= [v6 count])
      {
        *md = 0;
        v58 = 0;
        v20 = v11;
        v21 = [*(v11 + 2704) dataWithBytesNoCopy:md length:16 freeWhenDone:0];
        v56 = [a1 getTransactionAmount:v13 withPreviousBlock:v21];
      }

      else
      {
        v19 = [v52 objectAtIndexedSubscript:v18];
        v56 = [a1 getTransactionAmount:v13 withPreviousBlock:v19];

        v20 = v11;
      }

      v22 = v14;
      [v12 setObject:v14 forKeyedSubscript:@"NFTransactionDate"];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
      [v12 setObject:v23 forKeyedSubscript:@"NFBalance"];

      v24 = [MEMORY[0x277CCABB0] numberWithInt:v56];
      [v12 setObject:v24 forKeyedSubscript:@"NFAmount"];

      [v12 setObject:&unk_2843C69F8 forKeyedSubscript:@"NFAmountType"];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v15 >> 8];
      [v12 setObject:v25 forKeyedSubscript:@"NFTransactionType"];

      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v15];
      [v12 setObject:v26 forKeyedSubscript:@"NFSectorCombination"];

      v55[0] = BYTE1(v16);
      v55[1] = v16;
      v55[2] = BYTE2(v16);
      v27 = [*(v20 + 2704) dataWithBytes:v55 length:3];
      [v12 setObject:v27 forKeyedSubscript:@"NFStartStationData"];

      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
      [v12 setObject:v28 forKeyedSubscript:@"NFStartStation"];

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v16)];
      [v12 setObject:v29 forKeyedSubscript:@"NFStartStationExt"];

      v54[0] = BYTE5(v16);
      v54[1] = BYTE4(v16);
      v54[2] = BYTE6(v16);
      v30 = [*(v20 + 2704) dataWithBytes:v54 length:3];
      [v12 setObject:v30 forKeyedSubscript:@"NFEndStationData"];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v16)];
      [v12 setObject:v31 forKeyedSubscript:@"NFEndStation"];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v16)];
      [v12 setObject:v32 forKeyedSubscript:@"NFEndStationExt"];

      data = 0;
      v60 = 0;
      v8 = v50;
      data = *[v50 bytes];
      LODWORD(v60) = bswap32(v56);
      v33 = [v13 bytes];
      WORD2(v60) = *(v33 + 4);
      CC_SHA256(&data, 0xDu, md);
      v34 = [MEMORY[0x277CBEB28] dataWithBytes:md length:16];
      [v34 increaseLengthBy:16];
      v35 = [v34 asHexString];
      [v12 setObject:v35 forKeyedSubscript:@"NFTransactionID"];

      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:bswap32(*(v33 + 13)) >> 16];
      [v12 setObject:v36 forKeyedSubscript:@"NFHistorySequenceNumber"];

      v37 = v20;
      v38 = [SlalomUtils readBitsValueFromBuffer:v33 + 1 bitPosition:7 length:1];
      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v38];
      [v12 setObject:v39 forKeyedSubscript:@"NFSFBreakdown"];

      v40 = [SlalomUtils readBitsValueFromBuffer:v33 bitPosition:0 length:7];
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v40];
      [v12 setObject:v41 forKeyedSubscript:@"NFDeviceCode"];

      v42 = [SlalomUtils readBitsValueFromBuffer:v33 + 2 bitPosition:0 length:7];
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v42];
      [v12 setObject:v43 forKeyedSubscript:@"NFPaymentType"];

      [v51 addObject:v12];
      v9 = (v53 + 1);
      v6 = v52;
      v44 = [v52 count];
      a1 = v49;
      v11 = v37;
      v10 = v53 + 1;
    }

    while (v44 > v9);
  }

  v45 = v48;
  [v48 setObject:v51 forKeyedSubscript:@"NFHistoryRecords"];

LABEL_15:
  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

+ (id)parseGreencarBlocks:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    v11 = 0;
    goto LABEL_18;
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v4 objectAtIndexedSubscript:0];
  if ([SlalomUtils isValidFelicaBlock:v6])
  {
    if (![v6 isAll00])
    {
      v12 = [v6 bytes];
      v13 = [MEMORY[0x277CBEA90] dataWithBytes:v12 length:2];
      if (([v13 isAll00] & 1) == 0)
      {
        [v5 setObject:v13 forKeyedSubscript:@"NFStartStationData"];
      }

      v14 = [MEMORY[0x277CBEA90] dataWithBytes:v12 + 2 length:2];

      if (([v14 isAll00] & 1) == 0)
      {
        [v5 setObject:v14 forKeyedSubscript:@"NFEndStationData"];
      }

      v15 = [SlalomUtils readUInt16FromBytes:v12 + 4];
      v16 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v16 setYear:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v15, 7, 9) + 2000}];
      [v16 setMonth:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v15, 4, 5)}];
      [v16 setDay:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v15, 5, 0)}];
      [v5 setObject:v16 forKeyedSubscript:@"NFPurchaseDate"];
      v17 = [SlalomUtils readUInt24FromBytes:v12 + 6];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v17, 6, 13)}];
      [v5 setObject:v18 forKeyedSubscript:@"NFMinuteSold"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v17, 5, 19)}];
      [v5 setObject:v19 forKeyedSubscript:@"NFHourSold"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:10 * *(v12 + 9)];
      [v5 setObject:v20 forKeyedSubscript:@"NFFare"];

      v21 = [MEMORY[0x277CBEA90] dataWithBytes:v12 + 12 length:2];
      [v5 setObject:v21 forKeyedSubscript:@"NFRefundStation"];

      v22 = [SlalomUtils readUInt16FromBytes:v12 + 14];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v22, 1, 0)}];
      [v5 setObject:v23 forKeyedSubscript:@"NFTicketUsed"];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v22, 6, 5)}];
      [v5 setObject:v24 forKeyedSubscript:@"NFRefundDay"];

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v22, 6, 11)}];
      [v5 setObject:v25 forKeyedSubscript:@"NFRefundMonth"];

      v11 = v5;
      goto LABEL_17;
    }

    v7 = ATLLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      v8 = "Shinkansen information are all zeros, filtering";
      v9 = v7;
      v10 = 2;
LABEL_10:
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_DEFAULT, v8, &v28, v10);
    }
  }

  else
  {
    v7 = ATLLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v6;
      v8 = "Failed to get the GreenCar information for Suica, invalid block: %@";
      v9 = v7;
      v10 = 12;
      goto LABEL_10;
    }
  }

  v11 = 0;
LABEL_17:

LABEL_18:
  v26 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)parseShinkansenBlocks:(id)a3 fromServiceCode:(unsigned __int16)a4
{
  v4 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [v7 objectAtIndexedSubscript:0];
    if ([SlalomUtils isValidFelicaBlock:v9])
    {
      if ([v9 isAll00])
      {
        v10 = ATLLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v11 = "Shinkansen information are all zeros, filtering";
          v12 = v10;
          v13 = 2;
LABEL_13:
          _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
        }

LABEL_14:

        v14 = 0;
LABEL_44:

        goto LABEL_45;
      }

      if (v4 != 6475)
      {
        v46 = [v9 bytes];
        if (!v46)
        {
          goto LABEL_43;
        }

        v47 = v46;
        v48 = [MEMORY[0x277CCABB0] numberWithInt:*v46];
        [v8 setObject:v48 forKeyedSubscript:@"NFTicketSelected"];

        if ([v9 length] < 9)
        {
          goto LABEL_43;
        }

        v49 = v47[8];
        v50 = [MEMORY[0x277CCABB0] numberWithInt:(v49 >> 4) & 1];
        [v8 setObject:v50 forKeyedSubscript:@"NFNotifyOnLowBalance"];

        v22 = [MEMORY[0x277CCABB0] numberWithInt:(v49 >> 5) & 1];
        [v8 setObject:v22 forKeyedSubscript:@"NFAllowBalanceUsageForCommute"];
LABEL_42:

LABEL_43:
        v14 = v8;
        goto LABEL_44;
      }

      if ([v7 count] == 8)
      {
        v15 = [v9 bytes];
        v16 = [SlalomUtils readUInt16FromBytes:v15];
        v17 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        [v17 setYear:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v16, 7, 9) + 2000}];
        [v17 setMonth:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v16, 4, 5)}];
        [v17 setDay:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v16, 5, 0)}];
        [v8 setObject:v17 forKeyedSubscript:@"NFExpressTicketDate"];
        v18 = [MEMORY[0x277CBEA90] dataWithBytes:v15 + 2 length:3];
        [v8 setObject:v18 forKeyedSubscript:@"NFExpressTicketNumber"];

        v19 = [SlalomUtils readUInt16FromBytes:v15 + 11];
        v20 = objc_alloc_init(MEMORY[0x277CBEAB8]);

        [v20 setYear:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v19, 7, 9) + 2000}];
        [v20 setMonth:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v19, 4, 5)}];
        [v20 setDay:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v19, 5, 0)}];
        [v8 setObject:v20 forKeyedSubscript:@"NFIssueDate"];
        v21 = [SlalomUtils readUInt16FromBytes:v15 + 13];
        v22 = objc_alloc_init(MEMORY[0x277CBEAB8]);

        [v22 setYear:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v21, 7, 9) + 2000}];
        [v22 setMonth:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v21, 4, 5)}];
        [v22 setDay:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v21, 5, 0)}];
        [v8 setObject:v22 forKeyedSubscript:@"NFValidityStartDate"];
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v15 + 15)];
        [v8 setObject:v23 forKeyedSubscript:@"NFValidityTerm"];

        v24 = [v7 objectAtIndexedSubscript:5];

        v54 = v24;
        v25 = [v24 bytes];
        v53 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:2];
        v26 = [MEMORY[0x277CBEA90] dataWithBytes:v25 + 2 length:2];
        v56 = [MEMORY[0x277CBEA90] dataWithBytes:v25 + 4 length:2];
        v55 = [MEMORY[0x277CBEA90] dataWithBytes:v25 + 6 length:2];
        v27 = [SlalomUtils readNumberFromBytes:v25 + 8 numberOfBytes:6];
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{10 * +[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v27, 12, 12)}];
        [v8 setObject:v28 forKeyedSubscript:@"NFExpressFareC"];

        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{10 * +[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v27, 12, 12)}];
        [v8 setObject:v29 forKeyedSubscript:@"NFExpressFareB"];

        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{10 * +[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v27, 12, 24)}];
        [v8 setObject:v30 forKeyedSubscript:@"NFExpressFareA"];

        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{10 * +[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v27, 12, 36)}];
        [v8 setObject:v31 forKeyedSubscript:@"NFExpressFare"];

        v32 = [SlalomUtils readUInt16FromBytes:v25 + 14];
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2 * ((5 * v32) & 0x7FFF)];
        [v8 setObject:v33 forKeyedSubscript:@"NFTotalFare"];

        v34 = [MEMORY[0x277CBEB18] array];
        if (v53 && v26 && ([v53 isAll00] & 1) == 0 && (objc_msgSend(v26, "isAll00") & 1) == 0)
        {
          v35 = [v7 objectAtIndexedSubscript:1];
          v36 = [v7 objectAtIndexedSubscript:2];
          v37 = [a1 _decodeShinkansenTrainDataWithBlock:v35 andBlock:v36];

          if (!v37)
          {
            v37 = [MEMORY[0x277CBEB38] dictionary];
          }

          [v37 setObject:v53 forKey:@"NFStartStationData"];
          [v37 setObject:v26 forKey:@"NFEndStationData"];
          [v34 addObject:v37];
        }

        v39 = v55;
        v38 = v56;
        if (v26 && v56 && ([v26 isAll00] & 1) == 0 && (objc_msgSend(v56, "isAll00") & 1) == 0)
        {
          v40 = [v7 objectAtIndexedSubscript:3];
          v41 = [v7 objectAtIndexedSubscript:4];
          v42 = [a1 _decodeShinkansenTrainDataWithBlock:v40 andBlock:v41];

          if (!v42)
          {
            v42 = [MEMORY[0x277CBEB38] dictionary];
          }

          [v42 setObject:v26 forKey:@"NFStartStationData"];
          v38 = v56;
          [v42 setObject:v56 forKey:@"NFEndStationData"];
          [v34 addObject:v42];

          v39 = v55;
        }

        if (v38 && v39 && ([v38 isAll00] & 1) == 0 && (objc_msgSend(v39, "isAll00") & 1) == 0)
        {
          v43 = [v7 objectAtIndexedSubscript:6];
          v44 = [v7 objectAtIndexedSubscript:7];
          v45 = [a1 _decodeShinkansenTrainDataWithBlock:v43 andBlock:v44];

          if (!v45)
          {
            v45 = [MEMORY[0x277CBEB38] dictionary];
          }

          v38 = v56;
          [v45 setObject:v56 forKey:@"NFStartStationData"];
          [v45 setObject:v39 forKey:@"NFEndStationData"];
          [v34 addObject:v45];
        }

        [v8 setObject:v34 forKeyedSubscript:@"NFTrains"];

        v9 = v54;
        goto LABEL_42;
      }

      v10 = ATLLogObject();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 134217984;
      v58 = [v7 count];
      v11 = "Shinkansen1 missing blocks, bailing out. Expecting 8 got %lu";
    }

    else
    {
      v10 = ATLLogObject();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 138412290;
      v58 = v9;
      v11 = "Failed to get the shinkansen information for Suica, invalid block: %@";
    }

    v12 = v10;
    v13 = 12;
    goto LABEL_13;
  }

  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, "Bailing out for Shinkansen Service, not enough blocks", buf, 2u);
  }

  v14 = 0;
LABEL_45:

  v51 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_decodeShinkansenTrainDataWithBlock:(id)a3 andBlock:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (![SlalomUtils isValidFelicaBlock:v5])
  {
    v33 = ATLLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v5;
      v34 = "Failed to get the denylisted information for Suica, invalid (block1) block: %@";
LABEL_16:
      _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 0xCu);
    }

LABEL_17:

LABEL_18:
    v32 = 0;
    goto LABEL_26;
  }

  if (![SlalomUtils isValidFelicaBlock:v6])
  {
    v33 = ATLLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v6;
      v34 = "Failed to get the denylisted information for Suica, invalid (block2) block: %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if ([v5 isAll00] && (objc_msgSend(v6, "isAll00") & 1) != 0)
  {
    goto LABEL_18;
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [v5 mutableCopy];
  v9 = [v6 bytes];
  [v8 appendBytes:v9 length:6];
  [v7 setObject:v8 forKeyedSubscript:@"NFTrainName"];
  v10 = [SlalomUtils readNumberFromBytes:v9 + 6 numberOfBytes:8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v10, 6, 0)}];
  [v7 setObject:v11 forKeyedSubscript:@"NFArrivalMinute"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v10, 5, 6)}];
  [v7 setObject:v12 forKeyedSubscript:@"NFArrivalHour"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v10, 6, 11)}];
  [v7 setObject:v13 forKeyedSubscript:@"NFDepartureMinute"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v10, 5, 17)}];
  [v7 setObject:v14 forKeyedSubscript:@"NFDepartureHour"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v10, 20, 22)}];
  [v7 setObject:v15 forKeyedSubscript:@"NFPBCode"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v10, 1, 42)}];
  [v7 setObject:v16 forKeyedSubscript:@"NFReissue"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v10, 3, 43)}];
  [v7 setObject:v17 forKeyedSubscript:@"NFCarId"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v10, 1, 46)}];
  [v7 setObject:v18 forKeyedSubscript:@"NFSmoking"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v10, 5, 47)}];
  [v7 setObject:v19 forKeyedSubscript:@"NFCarNumber"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v10, 3, 52)}];
  [v7 setObject:v20 forKeyedSubscript:@"NFSeatType"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v10, 1, 55)}];
  [v7 setObject:v21 forKeyedSubscript:@"NFChild"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v10, 2, 56)}];
  [v7 setObject:v22 forKeyedSubscript:@"NFGreenCar"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[SlalomUtils getBitsFrom:numberOfBits:startingFrom:](SlalomUtils, "getBitsFrom:numberOfBits:startingFrom:", v10, 6, 58)}];
  [v7 setObject:v23 forKeyedSubscript:@"NFSeatNumber"];

  v24 = [SlalomUtils readUInt16FromBytes:v9 + 14];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:10 * (v24 >> 6)];
  [v7 setObject:v25 forKeyedSubscript:@"NFGreenCarFare"];

  v26 = [v7 objectForKeyedSubscript:@"NFDepartureHour"];
  if (![v26 isEqualToNumber:&unk_2843C6A10])
  {
LABEL_23:

    goto LABEL_24;
  }

  v27 = [v7 objectForKeyedSubscript:@"NFDepartureMinute"];
  if (![v27 isEqualToNumber:&unk_2843C6A10])
  {
LABEL_22:

    goto LABEL_23;
  }

  v28 = [v7 objectForKeyedSubscript:@"NFArrivalHour"];
  if (![v28 isEqualToNumber:&unk_2843C6A10])
  {
LABEL_21:

    goto LABEL_22;
  }

  v29 = [v7 objectForKeyedSubscript:@"NFArrivalMinute"];
  if (![v29 isEqualToNumber:&unk_2843C6A10])
  {
LABEL_20:

    goto LABEL_21;
  }

  v30 = [v7 objectForKeyedSubscript:@"NFPBCode"];
  if (![v30 isEqualToNumber:&unk_2843C6A10])
  {

    goto LABEL_20;
  }

  v31 = [v7 objectForKeyedSubscript:@"NFCarId"];
  v37 = [v31 isEqualToNumber:&unk_2843C6A10];

  if ((v37 & 1) == 0)
  {
LABEL_24:
    v32 = v7;
    goto LABEL_25;
  }

  v32 = 0;
LABEL_25:

LABEL_26:
  v35 = *MEMORY[0x277D85DE8];

  return v32;
}

@end