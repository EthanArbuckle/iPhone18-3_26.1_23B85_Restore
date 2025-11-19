@interface KramerMappings
+ (id)addAmount:(id)a3 withCurrency:(id)a4 withIdentifier:(id)a5 usingAmountKey:(id)a6 usingCurrencyKey:(id)a7 usingExponentKey:(id)a8 usingPlanIdentifier:(id)a9 withExpirationDate:(id)a10 usingBalanceExpiryKey:(id)a11;
+ (id)addBalance:(id)a3 withIpe:(id)a4;
+ (id)calculateTopupTransactionSN:(id)a3 withDifferentiator:(id)a4 withIpeId:(id)a5;
+ (id)calculateTransactionSN:(id)a3 withDifferentiator:(id)a4;
+ (id)commutePlanWithIdAndExpiry:(id)a3 withExpiry:(id)a4 withUniqueId:(id)a5;
+ (id)convertLogToHistory:(id)a3 withDirectory:(id)a4 withIpeList:(id)a5;
+ (id)convertPlansToBalances:(id)a3 withDetails:(id)a4;
+ (id)convertTopupsToHistory:(id)a3;
+ (id)getAbsoluteDateComponents:(unsigned int)a3;
+ (id)getMergedHistory:(id)a3 withDirectory:(id)a4 withIpeList:(id)a5;
+ (id)mapEnterExitIndicator:(unsigned __int8)a3;
+ (id)mapInternalEnRouteStatus:(unsigned __int8)a3;
+ (id)mapIpeToBalance:(id)a3;
+ (id)mapLogEntryToHistory:(id)a3 withIpeList:(id)a4 withNormalLogFlag:(BOOL)a5;
+ (id)mapTransactionTypeCode:(unsigned __int8)a3;
+ (id)mapTransitDetailRaw:(unsigned __int8)a3;
+ (id)mergeTransitAndTopupHistory:(id)a3 withTopupHistory:(id)a4;
@end

@implementation KramerMappings

+ (id)getAbsoluteDateComponents:(unsigned int)a3
{
  if (a3 >> 23)
  {
    v3 = 0;
  }

  else
  {
    v3 = 20;
  }

  if (a3 >> 23)
  {
    v4 = 1;
  }

  else
  {
    v4 = 11;
  }

  v5 = 2028;
  if (a3 >> 23)
  {
    v5 = 1997;
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  if (a3 >> 23)
  {
    v7 = a3 / 1440 + 1;
  }

  else
  {
    v7 = a3 / 1440 + 24;
  }

  v8 = [MEMORY[0x277CBEAB8] dateWithYear:v5 month:v4 day:v7 hour:v3 minute:a3 % 1440 + 16 * v6 second:0];
  v9 = [MEMORY[0x277CBEA80] currentCalendar];
  [v8 setCalendar:v9];
  v10 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
  [v8 setTimeZone:v10];

  v11 = [v8 date];
  v12 = [v9 components:3145852 fromDate:v11];

  return v12;
}

+ (id)mapIpeToBalance:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"ValueGroupRecords"];
  v6 = [v4 objectForKeyedSubscript:@"CountBasedFlag"];
  if (v6 && (v7 = v6, v8 = [v5 count], v7, v8))
  {
    v9 = [v4 objectForKeyedSubscript:@"LatestValueGroup"];
    v10 = [a1 addBalance:v9 withIpe:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)mapLogEntryToHistory:(id)a3 withIpeList:(id)a4 withNormalLogFlag:(BOOL)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  if (!a5)
  {
    v23 = [v8 objectForKeyedSubscript:@"LogUninitialized"];
    v24 = [v23 BOOLValue];

    if ((v24 & 1) == 0)
    {
      v12 = [v8 objectForKeyedSubscript:@"LogEntryExitIndicator"];
      v22 = [a1 mapEnterExitIndicator:{objc_msgSend(v12, "unsignedCharValue")}];
      v20 = [a1 mapTransitDetailRaw:0];
      [v8 objectForKeyedSubscript:@"LogDateTimeStampRaw"];
      v54 = v50 = a1;
      v26 = [a1 calculateTransactionSN:? withDifferentiator:?];
      v27 = [v8 objectForKeyedSubscript:@"LogDateTimeStamp"];
      v14 = [v8 objectForKeyedSubscript:@"LogIpePointer"];
      v16 = [v14 unsignedShortValue];
      v57 = @"Transit";
      goto LABEL_12;
    }

LABEL_8:
    v25 = 0;
    goto LABEL_28;
  }

  v11 = [v8 objectForKeyedSubscript:@"TTLength"];

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = [v8 objectForKeyedSubscript:@"TTTransactionType"];
  v57 = [a1 mapTransactionTypeCode:{objc_msgSend(v12, "unsignedCharValue")}];
  v13 = [a1 mapTransitDetailRaw:{objc_msgSend(v12, "unsignedCharValue")}];
  v55 = [a1 mapInternalEnRouteStatus:{objc_msgSend(v12, "unsignedCharValue")}];
  v14 = [v8 objectForKeyedSubscript:@"RecordOffset"];
  [v8 objectForKeyedSubscript:@"TTDateTimeStampRaw"];
  v54 = v50 = a1;
  v48 = [a1 calculateTransactionSN:? withDifferentiator:?];
  v52 = [v8 objectForKeyedSubscript:@"TTDateTimeStamp"];
  v15 = [v8 objectForKeyedSubscript:@"TTIpeId"];
  v16 = [v15 unsignedShortValue];

  [v10 setObject:v12 forKeyedSubscript:@"TerminalTransactionCode"];
  v17 = [v8 objectForKeyedSubscript:@"StartStation"];

  if (v17)
  {
    v18 = [v8 objectForKeyedSubscript:@"StartStation"];
    [v10 setObject:v18 forKeyedSubscript:@"StartStation"];
  }

  v19 = [v8 objectForKeyedSubscript:@"EndStation"];

  if (v19)
  {
    [v8 objectForKeyedSubscript:@"EndStation"];
    v21 = v20 = v13;
    [v10 setObject:v21 forKeyedSubscript:@"EndStation"];

    v22 = v55;
  }

  else
  {
    v22 = v55;
    v20 = v13;
  }

  v26 = v48;
  v27 = v52;
LABEL_12:

  [v10 setObject:v27 forKeyedSubscript:@"TransactionTime"];
  [v10 setObject:v22 forKeyedSubscript:@"InternalEnRouteStatus"];
  [v10 setObject:v57 forKeyedSubscript:@"TypeDetail"];
  v56 = v20;
  [v10 setObject:v20 forKeyedSubscript:@"TypeDetailRaw"];
  [v10 setObject:v26 forKeyedSubscript:@"SerialNumber"];
  if ((v16 - 1) > 6)
  {
    v28 = 0;
  }

  else
  {
    v28 = [v9 objectAtIndex:?];
    if ([v28 count])
    {
      v53 = v27;
      v29 = [v28 objectForKeyedSubscript:@"CommutePlanIdentifier"];
      v49 = [v28 objectForKeyedSubscript:@"CommutePlanUniqueIdentifier"];
      v47 = [v28 objectForKeyedSubscript:@"CommutePlanValidityEndDate"];
      v30 = [v28 objectForKeyedSubscript:@"CountBasedFlag"];
      v31 = [v30 BOOLValue];

      if (v31)
      {
        v51 = v9;
        v32 = v22;
        v33 = [v8 objectForKeyedSubscript:@"Amount"];
        v34 = [v8 objectForKeyedSubscript:@"AmountCurrency"];
        v35 = v29;
        v36 = v34;
        v37 = v35;
        v38 = [v50 addAmount:v33 withCurrency:v34 withIdentifier:@"AmountIdentifier" usingAmountKey:0 usingCurrencyKey:0 usingExponentKey:? usingPlanIdentifier:? withExpirationDate:? usingBalanceExpiryKey:?];

        v39 = ATLLogObject();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v61 = v38;
          _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_DEBUG, "Adding Amounts %@", buf, 0xCu);
        }

        v59 = v38;
        v40 = @"Amounts";
        v41 = &v59;
        v29 = v37;
      }

      else
      {
        if (!v28)
        {
LABEL_24:

          v27 = v53;
          goto LABEL_25;
        }

        v51 = v9;
        v32 = v22;
        v38 = [v50 commutePlanWithIdAndExpiry:v29 withExpiry:v47 withUniqueId:v49];
        v42 = ATLLogObject();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v61 = v38;
          _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_DEBUG, "Adding commutePlanWithIdAndExpiry %@", buf, 0xCu);
        }

        v58 = v38;
        v40 = @"CommutePlans";
        v41 = &v58;
      }

      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
      [v10 setObject:v43 forKeyedSubscript:v40];

      v22 = v32;
      v9 = v51;
      goto LABEL_24;
    }
  }

LABEL_25:
  v44 = ATLLogObject();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v61 = v10;
    _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEBUG, "historyEntry %@", buf, 0xCu);
  }

  v25 = v10;
LABEL_28:

  v45 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)getMergedHistory:(id)a3 withDirectory:(id)a4 withIpeList:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [KramerMappings convertTopupsToHistory:v7];
  v11 = [KramerMappings convertLogToHistory:v9 withDirectory:v8 withIpeList:v7];

  v12 = [KramerMappings mergeTransitAndTopupHistory:v11 withTopupHistory:v10];
  v13 = ATLLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = v12;
    _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_DEBUG, "Merged history: %@", &v16, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)convertTopupsToHistory:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v52 = [MEMORY[0x277CBEB18] arrayWithCapacity:{5 * objc_msgSend(v3, "count")}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v69;
    v47 = *v69;
    do
    {
      v7 = 0;
      v48 = v5;
      do
      {
        if (*v69 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v68 + 1) + 8 * v7);
        v9 = [v8 objectForKeyedSubscript:@"VGTopups"];
        v10 = v9;
        if (v8)
        {
          v11 = v9 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v55 = [v9 countByEnumeratingWithState:&v64 objects:v75 count:16];
          if (v55)
          {
            v49 = v7;
            v12 = 0;
            v13 = 0;
            v62 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v53 = *v65;
            v50 = v10;
            do
            {
              v17 = 0;
              v18 = v12;
              v19 = v13;
              v20 = v62;
              v21 = v14;
              v22 = v15;
              v23 = v16;
              do
              {
                v63 = v19;
                v59 = v18;
                if (*v65 != v53)
                {
                  objc_enumerationMutation(v50);
                }

                v61 = v17;
                v24 = *(*(&v64 + 1) + 8 * v17);
                v25 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
                v26 = [v24 objectForKeyedSubscript:@"VGTrxType"];
                v27 = [a1 mapTransactionTypeCode:{objc_msgSend(v26, "unsignedCharValue")}];

                v57 = v26;
                v28 = [a1 mapTransitDetailRaw:{objc_msgSend(v26, "unsignedCharValue")}];

                v29 = [v24 objectForKeyedSubscript:@"VGDateTimeStampRaw"];

                v30 = [v24 objectForKeyedSubscript:@"VGRecordOffset"];

                v31 = [v24 objectForKeyedSubscript:@"VGIpePointer"];

                v56 = [obj objectAtIndex:{objc_msgSend(v31, "unsignedShortValue") - 1}];
                v32 = [v56 objectForKeyedSubscript:@"CommutePlanIdentifier"];
                v58 = v29;
                v62 = v30;
                v33 = v30;
                v13 = v31;
                v34 = [a1 calculateTopupTransactionSN:v29 withDifferentiator:v33 withIpeId:v31];

                v35 = [v24 objectForKeyedSubscript:@"VGDateTimeStamp"];
                [v25 setObject:v35 forKeyedSubscript:@"TransactionTime"];

                v60 = v27;
                [v25 setObject:v27 forKeyedSubscript:@"TypeDetail"];
                v22 = v28;
                v36 = v28;
                v12 = v34;
                [v25 setObject:v36 forKeyedSubscript:@"TypeDetailRaw"];
                [v25 setObject:v34 forKeyedSubscript:@"SerialNumber"];
                v37 = MEMORY[0x277CCABB0];
                v38 = [v24 objectForKeyedSubscript:@"VGTopupCredit"];
                v39 = [v37 numberWithInt:{-objc_msgSend(v38, "intValue")}];

                v40 = [v24 objectForKeyedSubscript:@"VGCurrencyCode"];
                v41 = [a1 addAmount:v39 withCurrency:v40 withIdentifier:v32 usingAmountKey:@"Amount" usingCurrencyKey:@"AmountCurrency" usingExponentKey:@"AmountCurrencyExponent" usingPlanIdentifier:@"AmountIdentifier" withExpirationDate:0 usingBalanceExpiryKey:0];

                v42 = ATLLogObject();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v74 = v41;
                  _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_DEFAULT, "Adding Amounts %@", buf, 0xCu);
                }

                v72 = v41;
                v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
                [v25 setObject:v43 forKeyedSubscript:@"Amounts"];

                [v52 addObject:v25];
                v20 = v62;
                v17 = v61 + 1;
                v18 = v12;
                v19 = v13;
                v14 = v58;
                v16 = v60;
                v21 = v58;
                v23 = v60;
              }

              while (v55 != v61 + 1);
              v15 = v22;
              v10 = v50;
              v55 = [v50 countByEnumeratingWithState:&v64 objects:v75 count:16];
            }

            while (v55);

            v6 = v47;
            v5 = v48;
            v7 = v49;
          }
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
    }

    while (v5);
  }

  v44 = ATLLogObject();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = v52;
    _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEFAULT, "historyEntries %@", buf, 0xCu);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v52;
}

+ (id)mapTransactionTypeCode:(unsigned __int8)a3
{
  if ((a3 - 1) > 0x16)
  {
    return @"Unknown";
  }

  else
  {
    return off_278874EB0[(a3 - 1)];
  }
}

+ (id)mapInternalEnRouteStatus:(unsigned __int8)a3
{
  v3 = a3;
  v8 = *MEMORY[0x277D85DE8];
  if (a3 - 1) < 0x17 && ((0x7DBC7Bu >> (a3 - 1)))
  {
    result = off_278874F68[(a3 - 1)];
  }

  else
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = v3;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Unexpected Transaction Type code: %u", v7, 8u);
    }

    result = @"Unknown";
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)mapEnterExitIndicator:(unsigned __int8)a3
{
  v3 = a3;
  v8 = *MEMORY[0x277D85DE8];
  if (a3 >= 4u)
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = v3;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Unexpected Enter / Exit Indicatorcode: %u (expected for topup transactions)", v7, 8u);
    }

    result = @"Unknown";
  }

  else
  {
    result = off_278875020[a3];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)mapTransitDetailRaw:(unsigned __int8)a3
{
  if ((a3 - 1) > 4)
  {
    v5 = @"010000";
  }

  else
  {
    v5 = off_278875040[(a3 - 1)];
  }

  v6 = [MEMORY[0x277CBEA90] dataWithHexString:{v5, v3}];

  return v6;
}

+ (id)calculateTopupTransactionSN:(id)a3 withDifferentiator:(id)a4 withIpeId:(id)a5
{
  v7 = a4;
  v8 = a3;
  LOWORD(a5) = [a5 unsignedShortValue];
  v9 = [v7 unsignedShortValue];

  v10 = v9 + 100 * a5;
  v11 = +[HashHelper hashHelper];
  v12 = [(HashHelper *)v11 addNumber:v8];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v10];
  v14 = [(HashHelper *)v12 addNumber:v13];
  v15 = [(HashHelper *)v14 getHash];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v15, "u32BE:", 0)}];

  return v16;
}

+ (id)calculateTransactionSN:(id)a3 withDifferentiator:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[HashHelper hashHelper];
  v8 = [(HashHelper *)v7 addNumber:v6];

  v9 = [(HashHelper *)v8 addNumber:v5];

  v10 = [(HashHelper *)v9 getHash];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "u32BE:", 0)}];

  return v11;
}

+ (id)addBalance:(id)a3 withIpe:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"CommutePlanIdentifier"];
  v9 = [v7 objectForKeyedSubscript:@"CommutePlanValidityEndDate"];

  v10 = [v6 objectForKeyedSubscript:@"VGRemainingRides"];

  if (v10)
  {
    v11 = @"VGRemainingRides";
LABEL_5:
    v13 = [v6 objectForKeyedSubscript:v11];
    v14 = [a1 addAmount:v13 withCurrency:0 withIdentifier:v8 usingAmountKey:@"Balance" usingCurrencyKey:@"BalanceCurrency" usingExponentKey:@"BalanceCurrencyExponent" usingPlanIdentifier:@"BalanceIdentifier" withExpirationDate:v9 usingBalanceExpiryKey:@"BalanceExpirationDate"];
    goto LABEL_6;
  }

  v12 = [v6 objectForKeyedSubscript:@"VGRemainingPasses"];

  if (v12)
  {
    v11 = @"VGRemainingPasses";
    goto LABEL_5;
  }

  v13 = [v6 objectForKeyedSubscript:@"VGValue"];
  v16 = [v6 objectForKeyedSubscript:@"VGCurrencyCode"];
  v14 = [a1 addAmount:v13 withCurrency:v16 withIdentifier:v8 usingAmountKey:@"Balance" usingCurrencyKey:@"BalanceCurrency" usingExponentKey:@"BalanceCurrencyExponent" usingPlanIdentifier:@"BalanceIdentifier" withExpirationDate:0 usingBalanceExpiryKey:0];

LABEL_6:

  return v14;
}

+ (id)addAmount:(id)a3 withCurrency:(id)a4 withIdentifier:(id)a5 usingAmountKey:(id)a6 usingCurrencyKey:(id)a7 usingExponentKey:(id)a8 usingPlanIdentifier:(id)a9 withExpirationDate:(id)a10 usingBalanceExpiryKey:(id)a11
{
  v76 = *MEMORY[0x277D85DE8];
  v61 = a3;
  v17 = a4;
  v60 = a5;
  v59 = a6;
  v58 = a7;
  v56 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v57 = v17;
  if (!v17)
  {
    v24 = 0;
    v23 = @"XXX";
    v22 = v61;
    goto LABEL_5;
  }

  v21 = [v17 unsignedCharValue];
  v22 = v61;
  if (v21 || ![v61 integerValue])
  {
    v23 = [a1 mapCurrencyCode:v21];
    v24 = [a1 mapCurrencyExponent:v21];
LABEL_5:
    v25 = v59;
    v26 = v60;
    goto LABEL_6;
  }

  v46 = ATLLogObject();
  v25 = v59;
  v26 = v60;
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v71 = v17;
    v72 = 2112;
    v73 = v60;
    v74 = 2112;
    v75 = v61;
    _os_log_impl(&dword_22EEF5000, v46, OS_LOG_TYPE_DEFAULT, "Warning: Currency code field is %@ for %@. Defaulting to GBP with exponent 2. Amount is %@.", buf, 0x20u);
  }

  v23 = @"GBP";
  v24 = 2;
LABEL_6:
  v27 = [v22 shortValue];
  if (v27 >= 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = -v27;
  }

  v29 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v28 exponent:-v24 isNegative:(v27 >> 15) & 1];
  v54 = v29;
  v55 = v20;
  v53 = v23;
  if (v26)
  {
    v30 = v18;
    v31 = MEMORY[0x277CBEB38];
    if (!v19)
    {
      v66[0] = v25;
      v40 = v58;
      v67[0] = v29;
      v67[1] = v23;
      v66[1] = v58;
      v66[2] = v56;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
      v67[2] = v32;
      v66[3] = v30;
      v33 = v60;
      v34 = [v60 dataUsingEncoding:4];
      v47 = [v34 asHexString];
      v67[3] = v47;
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:4];
      v38 = [v31 dictionaryWithDictionary:v48];

      v39 = v56;
      v49 = v61;
      v36 = v55;
      goto LABEL_24;
    }

    v68[0] = v25;
    v68[1] = v58;
    v69[0] = v29;
    v69[1] = v23;
    v68[2] = v56;
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
    v69[2] = v32;
    v68[3] = v30;
    v33 = v60;
    v34 = [v60 dataUsingEncoding:4];
    v35 = [v34 asHexString];
    v36 = v20;
    v68[4] = v20;
    v69[3] = v35;
    v69[4] = v19;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:5];
    v38 = [v31 dictionaryWithDictionary:v37];

    v39 = v56;
    v40 = v58;
  }

  else
  {
    v41 = v25;
    v42 = v29;
    v43 = v23;
    v52 = v18;
    v44 = ATLLogObject();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v71) = v27;
      _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEFAULT, "Plan Identifier not available for inclusion of amount (%d)", buf, 8u);
    }

    v45 = MEMORY[0x277CBEB38];
    v40 = v58;
    v39 = v56;
    if (v19)
    {
      v64[0] = v41;
      v64[1] = v58;
      v65[0] = v42;
      v65[1] = v43;
      v64[2] = v56;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
      v36 = v55;
      v64[3] = v55;
      v65[2] = v32;
      v65[3] = v19;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:4];
      v38 = [v45 dictionaryWithDictionary:v34];
    }

    else
    {
      v62[0] = v41;
      v62[1] = v58;
      v63[0] = v42;
      v63[1] = v43;
      v62[2] = v56;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
      v63[2] = v32;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:3];
      v38 = [v45 dictionaryWithDictionary:v34];
      v36 = v55;
    }

    v33 = v60;
    v30 = v52;
  }

  v49 = v61;
LABEL_24:

  v50 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (id)mergeTransitAndTopupHistory:(id)a3 withTopupHistory:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count") + objc_msgSend(v5, "count")}];
  if (![v5 count])
  {
    v28 = v6;
LABEL_25:
    v27 = v28;
    goto LABEL_26;
  }

  if (![v6 count])
  {
    v28 = v5;
    goto LABEL_25;
  }

  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v31 = v6;
  v33 = [v6 mutableCopy];
  if ([v5 count])
  {
    v9 = 0;
    v10 = 0;
    v32 = v5;
    v36 = v7;
    do
    {
      v34 = v10;
      v11 = [v5 objectAtIndex:v9];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v33;
      v12 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v42;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v42 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v41 + 1) + 8 * i);
            v17 = [v16 objectForKeyedSubscript:@"TransactionTime"];
            v18 = [v8 dateFromComponents:v17];

            v19 = [v11 objectForKeyedSubscript:@"TransactionTime"];
            v20 = [v8 dateFromComponents:v19];

            if ([v18 compare:v20] != -1)
            {
              [v36 insertObject:v16 atIndex:0];
            }
          }

          v13 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v13);
      }

      v7 = v36;
      [v36 insertObject:v11 atIndex:0];
      [obj removeObjectsInArray:v36];

      v10 = v34 + 1;
      v9 = (v34 + 1);
      v5 = v32;
    }

    while ([v32 count] > v9);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = v33;
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v38;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [v7 insertObject:*(*(&v37 + 1) + 8 * j) atIndex:0];
      }

      v23 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v23);
  }

  v26 = [v7 reverseObjectEnumerator];
  v27 = [v26 allObjects];

  v6 = v31;
LABEL_26:

  v29 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)convertLogToHistory:(id)a3 withDirectory:(id)a4 withIpeList:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v11 = [v8 objectForKeyedSubscript:@"LogUninitialized"];
  v12 = [v11 BOOLValue];

  v13 = [v8 objectForKeyedSubscript:@"LogNormalModeFlag"];
  v14 = [v13 BOOLValue];

  if ((v12 & 1) != 0 || ((v7 == 0) & v14) != 0)
  {
    v25 = v10;
  }

  else
  {
    v27 = v14;
    v15 = [v8 objectForKeyedSubscript:@"LogRecordOffset"];
    v16 = [v15 unsignedShortValue];

    v17 = 0;
    v18 = 1;
    do
    {
      v19 = v17;
      v17 = [v7 objectAtIndexedSubscript:v16 & 3];

      v20 = [v17 objectForKeyedSubscript:@"TTLength"];

      if (v20)
      {
        v21 = [KramerMappings mapLogEntryToHistory:v17 withIpeList:v9 withNormalLogFlag:1];
        [v10 addObject:v21];
      }

      v16 = (v16 & 3) + 1;
    }

    while (v18++ < 4);
    if ((v27 & 1) == 0)
    {
      v23 = [KramerMappings mapLogEntryToHistory:v8 withIpeList:v9 withNormalLogFlag:0];
      if (v23)
      {
        [v10 addObject:v23];
      }
    }

    v24 = [v10 reverseObjectEnumerator];
    v25 = [v24 allObjects];
  }

  return v25;
}

+ (id)convertPlansToBalances:(id)a3 withDetails:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  v8 = [v5 count];
  if (v8)
  {
    v9 = v8 - 1;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:v9];
      v11 = [KramerMappings mapIpeToBalance:v10];
      if (v11)
      {
        [v7 addObject:v11];
        [v5 removeObjectAtIndex:v9];
      }

      --v9;
    }

    while (v9 != -1);
  }

  return v7;
}

+ (id)commutePlanWithIdAndExpiry:(id)a3 withExpiry:(id)a4 withUniqueId:(id)a5
{
  v24[3] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v23[0] = @"CommutePlanIdentifier";
    v23[1] = @"CommutePlanValidityEndDate";
    v24[0] = a3;
    v24[1] = a4;
    v23[2] = @"CommutePlanUniqueIdentifier";
    v24[2] = a5;
    v7 = MEMORY[0x277CBEAC0];
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = v24;
    v12 = v23;
    v13 = v7;
    v14 = 3;
  }

  else
  {
    v21[0] = @"CommutePlanIdentifier";
    v21[1] = @"CommutePlanValidityEndDate";
    v22[0] = a3;
    v22[1] = a4;
    v15 = MEMORY[0x277CBEAC0];
    v8 = 0;
    v16 = a4;
    v17 = a3;
    v11 = v22;
    v12 = v21;
    v13 = v15;
    v14 = 2;
  }

  v18 = [v13 dictionaryWithObjects:v11 forKeys:v12 count:v14];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end