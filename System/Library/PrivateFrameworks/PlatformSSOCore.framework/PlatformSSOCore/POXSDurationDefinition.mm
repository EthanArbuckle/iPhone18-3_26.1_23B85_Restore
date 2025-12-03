@interface POXSDurationDefinition
- (id)stringFromValue:(id)value;
- (id)valueFromString:(id)string;
@end

@implementation POXSDurationDefinition

- (id)valueFromString:(id)string
{
  stringCopy = string;
  v4 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:stringCopy];
  v5 = [v4 scanString:@"-" intoString:0];
  [v4 scanString:@"+" intoString:0];
  v6 = [v4 scanString:@"P" intoString:0] ^ 1;
  v7 = 0.0;
  if (([v4 isAtEnd] & 1) == 0 && (v6 & 1) == 0)
  {
    v8 = 0;
    while (1)
    {
      v16 = 0.0;
      v6 = [v4 scanDouble:&v16] ^ 1;
      scanLocation = [v4 scanLocation];
      v10 = [stringCopy characterAtIndex:scanLocation];
      if (v10 > 82)
      {
        break;
      }

      switch(v10)
      {
        case 'D':
          v11 = v16;
LABEL_21:
          v12 = v11 * 24.0;
          goto LABEL_22;
        case 'H':
          v12 = v16;
LABEL_22:
          v7 = v7 + v12 * 60.0 * 60.0;
          goto LABEL_25;
        case 'M':
          if (v8)
          {
            v7 = v7 + v16 * 60.0;
            v8 = 1;
            goto LABEL_25;
          }

          v8 = 0;
          break;
      }

      v6 = 1;
LABEL_25:
      [v4 setScanLocation:scanLocation + 1];
      if ([v4 isAtEnd] & 1) != 0 || (v6)
      {
        goto LABEL_27;
      }
    }

    if (v10 == 83)
    {
      v7 = v7 + v16;
      goto LABEL_25;
    }

    if (v10 != 87)
    {
      if (v10 == 84)
      {
        v6 = v8;
      }

      else
      {
        v6 = 1;
      }

      if (v10 == 84)
      {
        v8 = 1;
      }

      goto LABEL_25;
    }

    v11 = v16 * 7.0;
    goto LABEL_21;
  }

LABEL_27:
  if (v6)
  {
    v13 = 0;
  }

  else
  {
    v14 = -v7;
    if (!v5)
    {
      v14 = v7;
    }

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  }

  return v13;
}

- (id)stringFromValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    longLongValue = [valueCopy longLongValue];
    string = [MEMORY[0x277CCAB68] string];
    v6 = string;
    if ((longLongValue & 0x8000000000000000) != 0)
    {
      [string appendString:@"-"];
      longLongValue = -longLongValue;
    }

    v7 = longLongValue % 0x93A80;
    [v6 appendString:@"P"];
    if (longLongValue >= 0x93A80)
    {
      [v6 appendFormat:@"%llu%C", longLongValue / 0x93A80, 87];
    }

    v8 = longLongValue % 0x15180;
    if (v7 >> 7 >= 0x2A3)
    {
      [v6 appendFormat:@"%llu%C", v7 / 0x15180uLL, 68];
    }

    v9 = longLongValue % 0xE10;
    if (v8 <= 0xE0F && (v9 <= 0x3B ? (v10 = longLongValue == 60 * (longLongValue / 0x3C)) : (v10 = 0), v10))
    {
      if (!longLongValue)
      {
        [v6 appendString:@"T0S"];
      }
    }

    else
    {
      [v6 appendFormat:@"%C", 84];
      if (v8 >= 0xE10)
      {
        [v6 appendFormat:@"%llu%C", v8 / 0xE10uLL, 72];
      }

      if (v9 >= 0x3C)
      {
        [v6 appendFormat:@"%llu%C", longLongValue % 0xE10 / 0x3C, 77];
      }

      if (longLongValue % 0x3C)
      {
        [v6 appendFormat:@"%llu%C", longLongValue % 0x3C, 83];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end