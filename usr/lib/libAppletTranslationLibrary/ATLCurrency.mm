@interface ATLCurrency
+ (BOOL)checkSorted;
+ (id)currencyCodeForNumber:(unint64_t)number exponentOut:(signed __int16 *)out;
@end

@implementation ATLCurrency

+ (id)currencyCodeForNumber:(unint64_t)number exponentOut:(signed __int16 *)out
{
  if (number <= 0x3E8)
  {
    v8 = &countryEntries;
    v9 = 165;
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[4 * (v9 >> 1)];
      v13 = *v11;
      v12 = v11 + 4;
      v9 += ~(v9 >> 1);
      if (v13 < number)
      {
        v8 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
    if (v8 == &unk_22EFBB54E || *v8 != number)
    {
      v6 = 0;
    }

    else
    {
      if (out)
      {
        *out = v8[1];
      }

      v6 = [MEMORY[0x277CCACA8] stringWithCString:v8 + 2 encoding:{1, v4}];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)checkSorted
{
  v2 = 8u;
  LOWORD(v3) = 8;
  do
  {
    v4 = v3;
    v3 = *(&countryEntries + v2);
    if (v2 == 1312)
    {
      break;
    }

    v2 += 8;
  }

  while (v3 > v4);
  return v3 > v4;
}

@end