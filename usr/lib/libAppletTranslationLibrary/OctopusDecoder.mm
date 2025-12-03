@interface OctopusDecoder
+ (id)getAAVSAmount:(id)amount;
+ (id)getBaseDate:(id)date;
+ (id)getLoyaltyBalance:(id)balance;
+ (id)getNegativeValueLimit:(id)limit;
+ (id)getPhysicalID:(id)d;
+ (id)getPurseBalance:(id)balance;
+ (id)getTransactionTypeModifierStringFromCode:(unsigned __int8)code;
+ (id)getTransactionTypeStringFromCode:(unsigned __int8)code andServiceProviderID:(unsigned __int8)d;
+ (id)getTransitTransactionTypeNameFromCode:(unsigned __int8)code andServiceProvider:(unsigned __int16)provider;
+ (id)injectTLOGAAVS:(id)s withAAVSAmount:(id)amount andBalance:(id)balance;
+ (id)parseTLOGBlock:(id)block withBaseDate:(id)date;
+ (int)filterHistoryEntry:(id)entry;
+ (int)getEnRouteStatus:(id)status;
+ (int)isTransitTransactionCode:(unsigned __int8)code;
@end

@implementation OctopusDecoder

+ (id)getPurseBalance:(id)balance
{
  balanceCopy = balance;
  if ([SlalomUtils isValidFelicaBlock:balanceCopy])
  {
    bytes = [balanceCopy bytes];
    v5 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:bswap32(*bytes) exponent:0xFFFFFFFFLL isNegative:0];
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

+ (id)parseTLOGBlock:(id)block withBaseDate:(id)date
{
  v37[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  dateCopy = date;
  if (![SlalomUtils isValidFelicaBlock:blockCopy])
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
    dictionary = 0;
    goto LABEL_20;
  }

  if (!dateCopy)
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

  bytes = [blockCopy bytes];
  v9 = *bytes;
  v10 = bytes[1] >> 1;
  v34 = *(bytes + 1);
  v11 = bswap32(*(bytes + 1)) >> 3;
  v12 = [SlalomUtils readBitsValueFromBuffer:bytes bitPosition:61 length:3];
  [dateCopy timeIntervalSinceReferenceDate];
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v13 + v11];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v17 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
  [currentCalendar setTimeZone:v17];

  v18 = [currentCalendar components:252 fromDate:v14];
  [dictionary setObject:v18 forKeyedSubscript:@"TransactionTime"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
  [dictionary setObject:v19 forKeyedSubscript:@"TypeDetailRaw"];

  v35 = v9;
  v20 = [self getTransactionTypeStringFromCode:v10 andServiceProviderID:v9];
  [dictionary setObject:v20 forKeyedSubscript:@"TypeDetail"];

  if ([self isTransitTransactionCode:v10])
  {
    v21 = [self getTransactionTypeModifierStringFromCode:v10];
    v22 = v21;
    if (v21)
    {
      v37[0] = v21;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
      [dictionary setObject:v23 forKeyedSubscript:@"TypeModifiers"];
    }
  }

  v24 = __rev16(v34);
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
  [dictionary setObject:v25 forKeyedSubscript:@"AddValueTypeRaw"];

  if (v12 == 4)
  {
    v26 = MEMORY[0x277CBEC38];
  }

  else
  {
    v26 = MEMORY[0x277CBEC28];
  }

  [dictionary setObject:v26 forKeyedSubscript:@"AddValueType"];
  if (v34)
  {
    v27 = [self isTopUpTransaction:v10];
  }

  else
  {
    v27 = 0;
  }

  v29 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v24 exponent:0xFFFFFFFFLL isNegative:v27];
  [dictionary setObject:v29 forKeyedSubscript:@"Amount"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v35];
  [dictionary setObject:v30 forKeyedSubscript:@"MerchantCategoryCode"];

  CC_SHA256([blockCopy bytes], 0x10u, buf);
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*buf)];
  [dictionary setObject:v31 forKeyedSubscript:@"SerialNumber"];

LABEL_20:
  v32 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)injectTLOGAAVS:(id)s withAAVSAmount:(id)amount andBalance:(id)balance
{
  v26[5] = *MEMORY[0x277D85DE8];
  sCopy = s;
  amountCopy = amount;
  balanceCopy = balance;
  v10 = [sCopy objectForKeyedSubscript:@"AddValueType"];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    v12 = [sCopy objectForKeyedSubscript:@"Amount"];
    v13 = [sCopy objectForKeyedSubscript:@"TransactionTime"];
    if ([v12 compare:&unk_2843C6A40] == 1)
    {
      [balanceCopy decimalNumberByAdding:v12];
    }

    else
    {
      [balanceCopy decimalNumberBySubtracting:v12];
    }
    v15 = ;

    v16 = +[HashHelper hashHelper];
    v17 = [(HashHelper *)v16 addDictionary:sCopy];
    getHash = [(HashHelper *)v17 getHash];
    v19 = [getHash u32BE:0];

    bOOLValue2 = [amountCopy BOOLValue];
    v26[0] = @"TopUpAuto";
    v25[0] = @"TypeDetail";
    v25[1] = @"Amount";
    v21 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:objc_msgSend(amountCopy exponent:"unsignedLongLongValue") isNegative:{0, bOOLValue2}];
    v26[1] = v21;
    v26[2] = v13;
    v25[2] = @"TransactionTime";
    v25[3] = @"FinalBalance";
    v26[3] = v15;
    v25[4] = @"SerialNumber";
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
    v26[4] = v22;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

    balanceCopy = v15;
  }

  else
  {
    v14 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)getLoyaltyBalance:(id)balance
{
  balanceCopy = balance;
  if ([SlalomUtils isValidFelicaBlock:balanceCopy])
  {
    v4 = +[SlalomUtils readBitsValueFromBuffer:bitPosition:length:](SlalomUtils, "readBitsValueFromBuffer:bitPosition:length:", [balanceCopy bytes], 52, 18);
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

+ (id)getNegativeValueLimit:(id)limit
{
  limitCopy = limit;
  if ([SlalomUtils isValidFelicaBlock:limitCopy])
  {
    v4 = +[SlalomUtils readBitsValueFromBuffer:bitPosition:length:](SlalomUtils, "readBitsValueFromBuffer:bitPosition:length:", [limitCopy bytes], 34, 10);
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

+ (id)getBaseDate:(id)date
{
  dateCopy = date;
  v4 = dateCopy;
  if (dateCopy && [dateCopy length] == 16)
  {
    v5 = +[SlalomUtils readBitsValueFromBuffer:bitPosition:length:](SlalomUtils, "readBitsValueFromBuffer:bitPosition:length:", [v4 bytes], 80, 16);
    v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
    [currentCalendar setTimeZone:v8];

    [v6 setCalendar:currentCalendar];
    [v6 setYear:2000];
    [v6 setMonth:1];
    [v6 setDay:1];
    date = [v6 date];
    v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v11 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
    [v10 setTimeZone:v11];

    [v10 setDay:v5];
    v12 = [currentCalendar dateByAddingComponents:v10 toDate:date options:0];
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

+ (id)getPhysicalID:(id)d
{
  dCopy = d;
  if ([SlalomUtils isValidFelicaBlock:dCopy])
  {
    v4 = [dCopy subdataWithRange:{4, 4}];
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

+ (id)getAAVSAmount:(id)amount
{
  amountCopy = amount;
  if ([SlalomUtils isValidFelicaBlock:amountCopy])
  {
    v4 = +[SlalomUtils readBitsValueFromBuffer:bitPosition:length:](SlalomUtils, "readBitsValueFromBuffer:bitPosition:length:", [amountCopy bytes], 48, 6);
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

+ (id)getTransactionTypeModifierStringFromCode:(unsigned __int8)code
{
  result = 0;
  if (code <= 25)
  {
    if (code != 2 && code != 21)
    {
      return result;
    }

    return @"FareAdjustment";
  }

  if (code == 32)
  {
    return @"FareRebate";
  }

  if (code == 26)
  {
    return @"FareAdjustment";
  }

  return result;
}

+ (int)isTransitTransactionCode:(unsigned __int8)code
{
  result = 1;
  if ((code > 0x20u || ((1 << code) & 0x104BA003ELL) == 0) && ((code - 100) > 6 || ((1 << (code - 100)) & 0x65) == 0))
  {
    return 0;
  }

  return result;
}

+ (id)getTransactionTypeStringFromCode:(unsigned __int8)code andServiceProviderID:(unsigned __int8)d
{
  v6 = @"Purchase";
  switch(code)
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
      if ((code - 100) <= 6 && ((1 << (code - 100)) & 0x65) != 0)
      {
LABEL_5:
        v6 = [self getTransitTransactionTypeNameFromCode:v4 andServiceProvider:?];
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

+ (id)getTransitTransactionTypeNameFromCode:(unsigned __int8)code andServiceProvider:(unsigned __int16)provider
{
  if (code == 102 && provider == 253 || code <= 0x1Au && ((1 << code) & 0x4000018) != 0)
  {
    return @"TransitBus";
  }

  result = @"TransitTrain";
  if (provider <= 100)
  {
    if (provider <= 3)
    {
      if ((provider - 1) < 2)
      {
        return result;
      }

      if (provider != 3)
      {
        return @"Transit";
      }

      return @"TransitLightRail";
    }

    if ((provider - 4) < 2)
    {
      return @"TransitBus";
    }

    if (provider != 6)
    {
      if (provider == 7)
      {
        return @"TransitBus";
      }

      return @"Transit";
    }

    return @"TransitOtherFerry";
  }

  if (provider <= 199)
  {
    v5 = provider - 101;
    if ((provider - 101) <= 0x39)
    {
      if (((1 << v5) & 0x281040F80000000) == 0)
      {
        if (((1 << v5) & 0x600000000000) == 0)
        {
          if (provider == 101)
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

  if (provider > 248)
  {
    if (provider != 250)
    {
      if (provider != 249)
      {
        return @"Transit";
      }

      return @"TransitLightRail";
    }

    return @"TransitOtherFerry";
  }

  if (provider != 200 && provider != 248)
  {
    return @"Transit";
  }

  return result;
}

+ (int)getEnRouteStatus:(id)status
{
  statusCopy = status;
  if ([SlalomUtils isValidFelicaBlock:statusCopy])
  {
    v4 = +[SlalomUtils readBitsValueFromBuffer:bitPosition:length:](SlalomUtils, "readBitsValueFromBuffer:bitPosition:length:", [statusCopy bytes], 15, 1) == 1;
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

+ (int)filterHistoryEntry:(id)entry
{
  entryCopy = entry;
  v4 = [entryCopy objectForKeyedSubscript:@"AddValueTypeRaw"];
  if ([v4 intValue] == 4)
  {
    v5 = [entryCopy objectForKeyedSubscript:@"MerchantCategoryCode"];
    if ([v5 intValue] == 1)
    {
      v6 = [entryCopy objectForKeyedSubscript:@"TypeDetailRaw"];
      if ([v6 intValue] == 18)
      {
        v7 = [entryCopy objectForKeyedSubscript:@"Amount"];
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