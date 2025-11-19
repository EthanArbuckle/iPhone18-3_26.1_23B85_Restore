@interface OctopusDecoder
+ (id)getAAVSAmount:(id)a3;
+ (id)getBaseDate:(id)a3;
+ (id)getLoyaltyBalance:(id)a3;
+ (id)getNegativeValueLimit:(id)a3;
+ (id)getPhysicalID:(id)a3;
+ (id)getPurseBalance:(id)a3;
+ (id)getTransactionTypeModifierStringFromCode:(unsigned __int8)a3;
+ (id)getTransactionTypeStringFromCode:(unsigned __int8)a3 andServiceProviderID:(unsigned __int8)a4;
+ (id)getTransitTransactionTypeNameFromCode:(unsigned __int8)a3 andServiceProvider:(unsigned __int16)a4;
+ (id)injectTLOGAAVS:(id)a3 withAAVSAmount:(id)a4 andBalance:(id)a5;
+ (id)parseTLOGBlock:(id)a3 withBaseDate:(id)a4;
+ (int)filterHistoryEntry:(id)a3;
+ (int)getEnRouteStatus:(id)a3;
+ (int)isTransitTransactionCode:(unsigned __int8)a3;
@end

@implementation OctopusDecoder

+ (id)getPurseBalance:(id)a3
{
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = [v3 bytes];
    v5 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:bswap32(*v4) exponent:0xFFFFFFFFLL isNegative:0];
  }

  else
  {
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Octopus Purse Service to decode did not have 16 bytes; aborting", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)parseTLOGBlock:(id)a3 withBaseDate:(id)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![SlalomUtils isValidFelicaBlock:v6])
  {
    v14 = ATLLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v28 = "Octopus TLOG block to decode did not have 16 bytes; aborting.";
LABEL_16:
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
    }

LABEL_17:
    v15 = 0;
    goto LABEL_20;
  }

  if (!v7)
  {
    v14 = ATLLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v28 = "Cannot parse TLOG block without a Base Date";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v8 = [v6 bytes];
  v9 = *v8;
  v10 = v8[1] >> 1;
  v34 = *(v8 + 1);
  v11 = bswap32(*(v8 + 1)) >> 3;
  v12 = [SlalomUtils readBitsValueFromBuffer:v8 bitPosition:61 length:3];
  [v7 timeIntervalSinceReferenceDate];
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v13 + v11];
  v15 = [MEMORY[0x277CBEB38] dictionary];
  v16 = [MEMORY[0x277CBEA80] currentCalendar];
  v17 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
  [v16 setTimeZone:v17];

  v18 = [v16 components:252 fromDate:v14];
  [v15 setObject:v18 forKeyedSubscript:@"TransactionTime"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
  [v15 setObject:v19 forKeyedSubscript:@"TypeDetailRaw"];

  v35 = v9;
  v20 = [a1 getTransactionTypeStringFromCode:v10 andServiceProviderID:v9];
  [v15 setObject:v20 forKeyedSubscript:@"TypeDetail"];

  if ([a1 isTransitTransactionCode:v10])
  {
    v21 = [a1 getTransactionTypeModifierStringFromCode:v10];
    v22 = v21;
    if (v21)
    {
      v37[0] = v21;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
      [v15 setObject:v23 forKeyedSubscript:@"TypeModifiers"];
    }
  }

  v24 = __rev16(v34);
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
  [v15 setObject:v25 forKeyedSubscript:@"AddValueTypeRaw"];

  if (v12 == 4)
  {
    v26 = MEMORY[0x277CBEC38];
  }

  else
  {
    v26 = MEMORY[0x277CBEC28];
  }

  [v15 setObject:v26 forKeyedSubscript:@"AddValueType"];
  if (v34)
  {
    v27 = [a1 isTopUpTransaction:v10];
  }

  else
  {
    v27 = 0;
  }

  v29 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v24 exponent:0xFFFFFFFFLL isNegative:v27];
  [v15 setObject:v29 forKeyedSubscript:@"Amount"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v35];
  [v15 setObject:v30 forKeyedSubscript:@"MerchantCategoryCode"];

  CC_SHA256([v6 bytes], 0x10u, buf);
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*buf)];
  [v15 setObject:v31 forKeyedSubscript:@"SerialNumber"];

LABEL_20:
  v32 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)injectTLOGAAVS:(id)a3 withAAVSAmount:(id)a4 andBalance:(id)a5
{
  v26[5] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 objectForKeyedSubscript:@"AddValueType"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = [v7 objectForKeyedSubscript:@"Amount"];
    v13 = [v7 objectForKeyedSubscript:@"TransactionTime"];
    if ([v12 compare:&unk_2843C6A40] == 1)
    {
      [v9 decimalNumberByAdding:v12];
    }

    else
    {
      [v9 decimalNumberBySubtracting:v12];
    }
    v15 = ;

    v16 = +[HashHelper hashHelper];
    v17 = [(HashHelper *)v16 addDictionary:v7];
    v18 = [(HashHelper *)v17 getHash];
    v19 = [v18 u32BE:0];

    v20 = [v8 BOOLValue];
    v26[0] = @"TopUpAuto";
    v25[0] = @"TypeDetail";
    v25[1] = @"Amount";
    v21 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:objc_msgSend(v8 exponent:"unsignedLongLongValue") isNegative:{0, v20}];
    v26[1] = v21;
    v26[2] = v13;
    v25[2] = @"TransactionTime";
    v25[3] = @"FinalBalance";
    v26[3] = v15;
    v25[4] = @"SerialNumber";
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
    v26[4] = v22;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

    v9 = v15;
  }

  else
  {
    v14 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)getLoyaltyBalance:(id)a3
{
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = +[SlalomUtils readBitsValueFromBuffer:bitPosition:length:](SlalomUtils, "readBitsValueFromBuffer:bitPosition:length:", [v3 bytes], 52, 18);
    v5 = MEMORY[0x277CCABB0];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
    [v6 doubleValue];
    v8 = [v5 numberWithDouble:v7 / 100.0];
  }

  else
  {
    v9 = ATLLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_DEFAULT, "Octopus TLOG block to decode did not have 16 bytes; aborting.", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)getNegativeValueLimit:(id)a3
{
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = +[SlalomUtils readBitsValueFromBuffer:bitPosition:length:](SlalomUtils, "readBitsValueFromBuffer:bitPosition:length:", [v3 bytes], 34, 10);
    v5 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:10 * v4 exponent:0xFFFFFFFFLL isNegative:0];
  }

  else
  {
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Octopus Negative Value Limit data cannot be retrieved; block to decode did not have 16 bytes; aborting.", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)getBaseDate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length] == 16)
  {
    v5 = +[SlalomUtils readBitsValueFromBuffer:bitPosition:length:](SlalomUtils, "readBitsValueFromBuffer:bitPosition:length:", [v4 bytes], 80, 16);
    v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v7 = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
    [v7 setTimeZone:v8];

    [v6 setCalendar:v7];
    [v6 setYear:2000];
    [v6 setMonth:1];
    [v6 setDay:1];
    v9 = [v6 date];
    v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v11 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
    [v10 setTimeZone:v11];

    [v10 setDay:v5];
    v12 = [v7 dateByAddingComponents:v10 toDate:v9 options:0];
  }

  else
  {
    v13 = ATLLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_DEFAULT, "Octopus Base Date cannot be retrieved; block to decode did not have 16 bytes; aborting.", v15, 2u);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)getPhysicalID:(id)a3
{
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = [v3 subdataWithRange:{4, 4}];
  }

  else
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Octopus Negative Value Limit data cannot be retrieved; block to decode did not have 16 bytes; aborting.", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)getAAVSAmount:(id)a3
{
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = +[SlalomUtils readBitsValueFromBuffer:bitPosition:length:](SlalomUtils, "readBitsValueFromBuffer:bitPosition:length:", [v3 bytes], 48, 6);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:50 * v4];
  }

  else
  {
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Octopus AAVS data cannot be retrieved; block to decode did not have 16 bytes; aborting.", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)getTransactionTypeModifierStringFromCode:(unsigned __int8)a3
{
  result = 0;
  if (a3 <= 25)
  {
    if (a3 != 2 && a3 != 21)
    {
      return result;
    }

    return @"FareAdjustment";
  }

  if (a3 == 32)
  {
    return @"FareRebate";
  }

  if (a3 == 26)
  {
    return @"FareAdjustment";
  }

  return result;
}

+ (int)isTransitTransactionCode:(unsigned __int8)a3
{
  result = 1;
  if ((a3 > 0x20u || ((1 << a3) & 0x104BA003ELL) == 0) && ((a3 - 100) > 6 || ((1 << (a3 - 100)) & 0x65) == 0))
  {
    return 0;
  }

  return result;
}

+ (id)getTransactionTypeStringFromCode:(unsigned __int8)a3 andServiceProviderID:(unsigned __int8)a4
{
  v6 = @"Purchase";
  switch(a3)
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 0x11u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x17u:
    case 0x1Au:
    case 0x20u:
      goto LABEL_5;
    case 6u:
      v6 = @"TopUpContactless";
      goto LABEL_6;
    case 7u:
    case 8u:
    case 0xAu:
    case 0xBu:
    case 0xFu:
    case 0x10u:
      goto LABEL_6;
    case 9u:
    case 0xDu:
    case 0xEu:
    case 0x12u:
    case 0x16u:
    case 0x18u:
      v6 = @"TopUp";
      goto LABEL_6;
    case 0xCu:
      v6 = @"TopUpServer";
      goto LABEL_6;
    case 0x19u:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
      goto LABEL_9;
    default:
      if ((a3 - 100) <= 6 && ((1 << (a3 - 100)) & 0x65) != 0)
      {
LABEL_5:
        v6 = [a1 getTransitTransactionTypeNameFromCode:v4 andServiceProvider:?];
      }

      else
      {
LABEL_9:
        v6 = @"Unknown";
      }

LABEL_6:

      return v6;
  }
}

+ (id)getTransitTransactionTypeNameFromCode:(unsigned __int8)a3 andServiceProvider:(unsigned __int16)a4
{
  if (a3 == 102 && a4 == 253 || a3 <= 0x1Au && ((1 << a3) & 0x4000018) != 0)
  {
    return @"TransitBus";
  }

  result = @"TransitTrain";
  if (a4 <= 100)
  {
    if (a4 <= 3)
    {
      if ((a4 - 1) < 2)
      {
        return result;
      }

      if (a4 != 3)
      {
        return @"Transit";
      }

      return @"TransitLightRail";
    }

    if ((a4 - 4) < 2)
    {
      return @"TransitBus";
    }

    if (a4 != 6)
    {
      if (a4 == 7)
      {
        return @"TransitBus";
      }

      return @"Transit";
    }

    return @"TransitOtherFerry";
  }

  if (a4 <= 199)
  {
    v5 = a4 - 101;
    if ((a4 - 101) <= 0x39)
    {
      if (((1 << v5) & 0x281040F80000000) == 0)
      {
        if (((1 << v5) & 0x600000000000) == 0)
        {
          if (a4 == 101)
          {
            return result;
          }

          return @"Transit";
        }

        return @"TransitOtherFerry";
      }

      return @"TransitBus";
    }

    return @"Transit";
  }

  if (a4 > 248)
  {
    if (a4 != 250)
    {
      if (a4 != 249)
      {
        return @"Transit";
      }

      return @"TransitLightRail";
    }

    return @"TransitOtherFerry";
  }

  if (a4 != 200 && a4 != 248)
  {
    return @"Transit";
  }

  return result;
}

+ (int)getEnRouteStatus:(id)a3
{
  v3 = a3;
  if ([SlalomUtils isValidFelicaBlock:v3])
  {
    v4 = +[SlalomUtils readBitsValueFromBuffer:bitPosition:length:](SlalomUtils, "readBitsValueFromBuffer:bitPosition:length:", [v3 bytes], 15, 1) == 1;
  }

  else
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_DEFAULT, "Octopus Transit Flag data cannot be retrieved; block to decode did not have 16 bytes; aborting.", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (int)filterHistoryEntry:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"AddValueTypeRaw"];
  if ([v4 intValue] == 4)
  {
    v5 = [v3 objectForKeyedSubscript:@"MerchantCategoryCode"];
    if ([v5 intValue] == 1)
    {
      v6 = [v3 objectForKeyedSubscript:@"TypeDetailRaw"];
      if ([v6 intValue] == 18)
      {
        v7 = [v3 objectForKeyedSubscript:@"Amount"];
        v8 = [v7 intValue] == 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end