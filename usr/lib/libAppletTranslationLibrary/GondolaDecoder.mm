@interface GondolaDecoder
+ (id)decodeAutoTopThresholdAmount:(id)a3;
+ (id)decodeAutoTopUpAmount:(id)a3;
+ (id)decodeCardNumberFromBlock0:(id)a3 andBlock1:(id)a4;
+ (id)decodeEnrollmentDateAfterDelivery:(id)a3;
+ (id)decodeHistoryBlock1:(id)a3 andWithBlock2:(id)a4;
+ (id)decodeLastTransactionDate:(id)a3;
+ (id)decodeLoyaltyPointBalancesAndExpiration:(id)a3 withActivationDate:(id)a4;
+ (id)decodeTotalPointsUntil1YearAgo:(id)a3;
+ (id)decodeTotalPointsUntil2YearsAgo:(id)a3;
+ (id)decodeTransactionTopupCategory:(unint64_t)a3;
+ (id)decodeTransactionType:(unint64_t)a3;
+ (id)getPurseBalance:(id)a3;
@end

@implementation GondolaDecoder

+ (id)decodeCardNumberFromBlock0:(id)a3 andBlock1:(id)a4
{
  v5 = MEMORY[0x277CBEB28];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dataWithCapacity:8];
  v9 = [v7 bytes];

  v10 = [v6 bytes];
  [v8 appendBytes:v9 + 12 length:4];
  [v8 appendBytes:v10 length:4];

  return v8;
}

+ (id)decodeEnrollmentDateAfterDelivery:(id)a3
{
  v3 = MEMORY[0x277CBEAB8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 decodeBCDAtOffset:3 length:1];
  v8 = [v6 numberWithInt:{objc_msgSend(v7, "intValue") + 2000}];

  v9 = [v4 decodeBCDAtOffset:4 length:1];
  v10 = [v4 decodeBCDAtOffset:5 length:1];

  [v5 setDay:{objc_msgSend(v10, "intValue")}];
  [v5 setMonth:{objc_msgSend(v9, "intValue")}];
  [v5 setYear:{objc_msgSend(v8, "intValue")}];

  return v5;
}

+ (id)decodeLastTransactionDate:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a3;
  v5 = [v4 decodeBCDAtOffset:11 length:1];
  v6 = [v3 numberWithInt:{objc_msgSend(v5, "intValue") + 2000}];

  v7 = [v4 decodeBCDAtOffset:12 length:1];
  v8 = [v4 decodeBCDAtOffset:13 length:1];

  v9 = [MEMORY[0x277CBEAB8] dateWithYear:objc_msgSend(v6 month:"intValue") day:{objc_msgSend(v7, "intValue"), objc_msgSend(v8, "intValue")}];

  return v9;
}

+ (id)decodeHistoryBlock1:(id)a3 andWithBlock2:(id)a4
{
  v62[7] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v56 = [v7 subdataWithRange:{0, 13}];
  v51 = [v7 u16BE:13];

  v8 = [v6 readBinaryValueAtBit:8 numberOfBits:7] >> 1;
  v46 = [a1 decodeTransactionType:v8];
  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  LODWORD(v7) = [v6 readBinaryValueAtBit:14 numberOfBits:7];
  v10 = [v6 readBinaryValueAtBit:21 numberOfBits:4];
  v11 = [v6 readBinaryValueAtBit:25 numberOfBits:5];
  v12 = [v6 readBinaryValueAtBit:30 numberOfBits:5];
  v13 = [v6 readBinaryValueAtBit:35 numberOfBits:6];
  [v9 setDay:v11];
  [v9 setMonth:v10];
  [v9 setYear:v7 + 2005];
  [v9 setHour:v12];
  [v9 setMinute:v13];
  v14 = [v6 readBinaryValueAtBit:41 numberOfBits:18];
  v15 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v14 exponent:0 isNegative:0];
  v16 = [v6 readBinaryValueAtBit:59 numberOfBits:18];
  v17 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v16 exponent:0 isNegative:v8 == 10];
  v18 = [v6 readBinaryValueAtBit:77 numberOfBits:17];
  v53 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v18 exponent:0 isNegative:v8 != 5];
  v45 = a1;
  v49 = [v6 readBinaryValueAtBit:94 numberOfBits:4];
  v54 = [a1 decodeTransactionTopupCategory:?];
  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
  v20 = [MEMORY[0x277CBEB28] dataWithCapacity:32];
  v21 = [v6 bytes];

  v22 = v20;
  v47 = v20;
  v23 = v46;
  CC_SHA256(v21, 8u, [v22 mutableBytes]);
  v48 = v17;
  v43 = v16;
  if (v16)
  {
    v61[0] = @"TerminalIdentifier";
    v24 = [v56 asHexString];
    v62[0] = v24;
    v61[1] = @"SerialNumber";
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v51];
    v62[1] = v25;
    v61[2] = @"TypeDetailRaw";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
    v62[2] = v26;
    v62[3] = v9;
    v61[3] = @"TransactionTime";
    v61[4] = @"Amount";
    v62[4] = v17;
    v62[5] = v15;
    v61[5] = @"FinalBalance";
    v61[6] = @"TypeDetail";
    v62[6] = v46;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:7];
    v28 = v27 = v15;
    [v19 setValuesForKeysWithDictionary:v28];

    v15 = v27;
  }

  v50 = v9;
  v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{9, v43}];
  if (v18)
  {
    if ([v45 isTransactionTypePaymentWithReload:v8])
    {

      v23 = @"TopUpAuto";
    }

    if (v8 != 6 || v49)
    {
      v30 = v54;
    }

    else
    {

      v30 = @"Points";
    }

    v59[0] = @"TerminalIdentifier";
    v34 = [v56 asHexString];
    v60[0] = v34;
    v59[1] = @"SerialNumber";
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v51];
    v60[1] = v35;
    v59[2] = @"TypeDetailRaw";
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
    v60[2] = v36;
    v60[3] = v50;
    v59[3] = @"TransactionTime";
    v59[4] = @"Amount";
    v60[4] = v53;
    v60[5] = v15;
    v52 = v15;
    v59[5] = @"FinalBalance";
    v59[6] = @"AddValueTypeRaw";
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v49];
    v60[6] = v37;
    v60[7] = v30;
    v55 = v30;
    v59[7] = @"AddValueType";
    v59[8] = @"TypeDetail";
    v60[8] = v23;
    v33 = 0x277CBE000uLL;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:9];
    [v29 setValuesForKeysWithDictionary:v38];

    if (v44)
    {
      v32 = v47;
      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{bswap64(*objc_msgSend(v47, "bytes"))}];
      [v19 setObject:v39 forKey:@"fakeTransactionId"];

      v15 = v52;
      v31 = v55;
    }

    else
    {
      v15 = v52;
      v31 = v55;
      v32 = v47;
    }
  }

  else
  {
    v31 = v54;
    v32 = v47;
    v33 = 0x277CBE000;
  }

  v57[0] = @"Charge";
  v57[1] = @"TopUp";
  v58[0] = v19;
  v58[1] = v29;
  v40 = [*(v33 + 2752) dictionaryWithObjects:v58 forKeys:v57 count:2];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (id)getPurseBalance:(id)a3
{
  v3 = *[a3 bytes];
  v4 = MEMORY[0x277CCA980];

  return [v4 decimalNumberWithMantissa:v3 exponent:0 isNegative:0];
}

+ (id)decodeTotalPointsUntil1YearAgo:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [a3 s24BE:0];

  return [v3 numberWithInt:v4];
}

+ (id)decodeTotalPointsUntil2YearsAgo:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [a3 s24BE:3];

  return [v3 numberWithInt:v4];
}

+ (id)decodeAutoTopUpAmount:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [a3 readBinaryValueAtBit:34 numberOfBits:17];

  return [v3 numberWithUnsignedLongLong:v4];
}

+ (id)decodeAutoTopThresholdAmount:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [a3 readBinaryValueAtBit:51 numberOfBits:17];

  return [v3 numberWithUnsignedLongLong:v4];
}

+ (id)decodeTransactionTopupCategory:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_278874880[a3 - 1];
  }
}

+ (id)decodeTransactionType:(unint64_t)a3
{
  v4 = +[AppletConfigurationData getSlalomSettings];
  v5 = [v4 objectForKeyedSubscript:@"gondola"];
  v6 = [v5 objectForKeyedSubscript:@"transactionType"];

  if (!v6 || ([MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a3], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "valueForKey:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    if (a3 - 1 > 0x25)
    {
      v8 = @"Unknown";
    }

    else
    {
      v8 = off_2788748B0[a3 - 1];
    }
  }

  return v8;
}

+ (id)decodeLoyaltyPointBalancesAndExpiration:(id)a3 withActivationDate:(id)a4
{
  v29[5] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [a1 decodeTotalPointsUntil1YearAgo:v7];
  v9 = [a1 decodeTotalPointsUntil2YearsAgo:v7];
  v10 = [a1 decodeLastTransactionDate:v7];

  if ([v10 year] == 2000)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v12 = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [MEMORY[0x277CBEAB8] dateWithYear:objc_msgSend(v6 month:"year") + 1 day:{objc_msgSend(v6, "month") % 12 + 1, 1}];
    v14 = [v12 dateFromComponents:v13];
    v15 = [v12 dateFromComponents:v10];
    v23 = v9;
    if ([v15 compare:v14] == 1)
    {
      [v13 setYear:{objc_msgSend(v10, "year")}];
      v16 = [v12 dateFromComponents:v13];

      v22 = v16;
      if ([v15 compare:v16] == 1)
      {
        [v13 setYear:{objc_msgSend(v13, "year") + 1}];
      }

      v26[0] = @"BalanceIdentifier";
      v26[1] = @"Balance";
      v27[0] = @"Points2";
      v27[1] = v9;
      v26[2] = @"BalanceCurrency";
      v26[3] = @"BalanceCurrencyExponent";
      v27[2] = @"XXX";
      v27[3] = &unk_2843C6368;
      v26[4] = @"BalanceExpirationDate";
      v27[4] = v13;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:5];
      [v11 addObject:v17];

      v18 = [MEMORY[0x277CBEAB8] dateWithYear:objc_msgSend(v13 month:"year") + 1 day:{objc_msgSend(v13, "month"), objc_msgSend(v13, "day")}];
      v24[0] = @"BalanceIdentifier";
      v24[1] = @"Balance";
      v25[0] = @"Points1";
      v25[1] = v8;
      v24[2] = @"BalanceCurrency";
      v24[3] = @"BalanceCurrencyExponent";
      v25[2] = @"XXX";
      v25[3] = &unk_2843C6368;
      v24[4] = @"BalanceExpirationDate";
      v25[4] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];
      [v11 addObject:v19];

      v14 = v22;
    }

    else
    {
      [v13 setYear:{objc_msgSend(v13, "year") + 1}];
      v28[0] = @"BalanceIdentifier";
      v28[1] = @"Balance";
      v29[0] = @"Points1";
      v29[1] = v8;
      v28[2] = @"BalanceCurrency";
      v28[3] = @"BalanceCurrencyExponent";
      v29[2] = @"XXX";
      v29[3] = &unk_2843C6368;
      v28[4] = @"BalanceExpirationDate";
      v29[4] = v13;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:5];
      [v11 addObject:v18];
    }

    v9 = v23;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

@end