@interface MogulDecoder
+ (id)decodeCardIssueDate:(id)date;
+ (id)decodeChargeAmountFlagValue:(id)value;
+ (id)decodePointsData:(id)data andWith:(id)with;
+ (id)decodeTransactionHistoryEntry:(id)entry;
+ (id)getPurseBalance:(id)balance;
@end

@implementation MogulDecoder

+ (id)decodeCardIssueDate:(id)date
{
  v3 = [date u16BE:1];
  v4 = (v3 >> 5) & 0xF;
  v5 = (v3 >> 9) + 2000;
  v6 = v3 & 0x1F;
  v7 = MEMORY[0x277CBEAB8];

  return [v7 dateWithYear:v5 month:v4 day:v6];
}

+ (id)decodeTransactionHistoryEntry:(id)entry
{
  v22[6] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  if ([entryCopy isAll00])
  {
    v5 = 0;
  }

  else
  {
    v6 = [entryCopy u8:0];
    v7 = [entryCopy u32BE:1];
    v8 = [entryCopy u32BE:5];
    v9 = [entryCopy u32BE:9];
    v10 = [entryCopy u16BE:13];
    v11 = [MEMORY[0x277CBEAB8] dateWithYear:((v9 >> 21) & 0x7F) + 2000 month:(v9 >> 17) & 0xF day:(v9 >> 12) & 0x1F hour:(v9 >> 6) & 0x3F minute:v9 & 0x3F second:0];
    v12 = [self decodeTransactionTypeCode:v6];
    v13 = [self isTopUpTransactionType:v6];
    if (v7)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v7 exponent:0 isNegative:v14];
    v16 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v8 exponent:0 isNegative:0];
    v22[0] = v15;
    v21[0] = @"Amount";
    v21[1] = @"TypeDetailRaw";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v6];
    v22[1] = v17;
    v22[2] = v11;
    v21[2] = @"TransactionTime";
    v21[3] = @"TypeDetail";
    v22[3] = v12;
    v21[4] = @"SerialNumber";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v10];
    v21[5] = @"FinalBalance";
    v22[4] = v18;
    v22[5] = v16;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)getPurseBalance:(id)balance
{
  v3 = *[balance bytes];
  v4 = MEMORY[0x277CCA980];

  return [v4 decimalNumberWithMantissa:v3 exponent:0 isNegative:0];
}

+ (id)decodePointsData:(id)data andWith:(id)with
{
  withCopy = with;
  v6 = [data u8:0];
  v7 = 0;
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = objc_opt_new();
      v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(withCopy, "s24BE:", v8)}];
      [v10 setBalance:v11];

      v12 = [withCopy u16BE:v8 + 3];
      0x1F = [MEMORY[0x277CBEAB8] dateWithYear:(v12 >> 9) + 2000 month:(v12 >> 5) & 0xF day:v12 & 0x1F];
      [0x1F setHour:23];
      [0x1F setMinute:59];
      [0x1F setSecond:59];
      [v10 setExpiration:0x1F];
      v14 = v9 & 1;
      if (v9)
      {
        v15 = @"Points1";
      }

      else
      {
        v15 = @"Points2";
      }

      [v10 setName:v15];
      [v7 addObject:v10];

      v9 = 0;
      v8 += 5;
    }

    while (v14);
  }

  return v7;
}

+ (id)decodeChargeAmountFlagValue:(id)value
{
  valueCopy = value;
  v4 = [valueCopy u8:6];
  v5 = [valueCopy u8:5];

  v6 = 0;
  if (v5 && v4)
  {
    v7 = +[AppletConfigurationData getSlalomSettings];
    v8 = [v7 objectForKeyedSubscript:@"mogul"];
    v9 = [v8 objectForKeyedSubscript:@"rechargeAmountCodes"];

    if (v9 && ([MEMORY[0x277CCACA8] stringWithFormat:@"%d", v4], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "valueForKey:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
    {
      v6 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:objc_msgSend(v11 exponent:"unsignedLongValue") isNegative:{0, 0}];
    }

    else
    {
      switch(v4)
      {
        case 1:
        case 11:
        case 21:
        case 31:
        case 41:
        case 51:
        case 61:
        case 71:
        case 81:
        case 91:
        case 101:
        case 111:
          v12 = MEMORY[0x277CCA980];
          v13 = 5000;
          goto LABEL_17;
        case 2:
        case 12:
        case 22:
        case 32:
        case 42:
        case 52:
        case 62:
        case 72:
        case 82:
        case 92:
        case 102:
        case 112:
          v12 = MEMORY[0x277CCA980];
          v13 = 6000;
          goto LABEL_17;
        case 3:
        case 13:
        case 23:
        case 33:
        case 43:
        case 53:
        case 63:
        case 73:
        case 83:
        case 93:
        case 103:
        case 113:
          v12 = MEMORY[0x277CCA980];
          v13 = 7000;
          goto LABEL_17;
        case 4:
        case 14:
        case 24:
        case 34:
        case 44:
        case 54:
        case 64:
        case 74:
        case 84:
        case 94:
        case 104:
        case 114:
          v12 = MEMORY[0x277CCA980];
          v13 = 8000;
          goto LABEL_17;
        case 5:
        case 15:
        case 25:
        case 35:
        case 45:
        case 55:
        case 65:
        case 75:
        case 85:
        case 95:
        case 105:
        case 115:
          v12 = MEMORY[0x277CCA980];
          v13 = 9000;
          goto LABEL_17;
        case 6:
        case 16:
        case 26:
        case 36:
        case 46:
        case 56:
        case 66:
        case 76:
        case 86:
        case 96:
        case 106:
        case 116:
          v12 = MEMORY[0x277CCA980];
          v13 = 10000;
          goto LABEL_17;
        case 7:
        case 17:
        case 27:
        case 37:
        case 47:
        case 57:
        case 67:
        case 77:
        case 87:
        case 97:
        case 107:
        case 117:
          v12 = MEMORY[0x277CCA980];
          v13 = 15000;
          goto LABEL_17;
        case 8:
        case 18:
        case 28:
        case 38:
        case 48:
        case 58:
        case 68:
        case 78:
        case 88:
        case 98:
        case 108:
        case 118:
          v12 = MEMORY[0x277CCA980];
          v13 = 20000;
          goto LABEL_17;
        case 9:
        case 19:
        case 29:
        case 39:
        case 49:
        case 59:
        case 69:
        case 79:
        case 89:
        case 99:
        case 109:
        case 119:
          v12 = MEMORY[0x277CCA980];
          v13 = 25000;
          goto LABEL_17;
        case 10:
        case 20:
        case 30:
        case 40:
        case 50:
        case 60:
        case 70:
        case 80:
        case 90:
        case 100:
        case 110:
        case 120:
          v12 = MEMORY[0x277CCA980];
          v13 = 30000;
LABEL_17:
          v6 = [v12 decimalNumberWithMantissa:v13 exponent:0 isNegative:0];
          break;
        default:
          v6 = 0;
          break;
      }
    }
  }

  return v6;
}

@end