@interface PRSRankingUtilities
+ (BOOL)aToZInString:(id)string;
+ (BOOL)caseAndDiacriticInsensitiveLocalizedString:(id)string containsString:(id)containsString locale:(id)locale;
+ (BOOL)caseAndDiacriticInsensitiveLocalizedString:(id)string hasPrefix:(id)prefix locale:(id)locale;
+ (BOOL)caseAndDiacriticInsensitiveLocalizedString:(id)string isEqualToString:(id)toString;
+ (BOOL)digitInString:(id)string;
+ (BOOL)multiWordString:(id)string hasPrefix:(id)prefix;
+ (BOOL)somePotentialPhoneNumbersInString:(id)string;
+ (BOOL)userQueryHasOnlySingleCharacterTerms:(id)terms;
+ (BOOL)userQueryTermsHasOnlySingleCharacterTerms:(id)terms;
+ (float)floatValue:(float)value withSigFigs:(int64_t)figs;
+ (id)hyphensCharacterSet;
+ (id)onlyPotentialPhoneNumbersInString:(id)string;
+ (void)computeDateCountsForDates:(id)dates countLastYear:(unint64_t *)year countLastMonth:(unint64_t *)month countLastWeek:(unint64_t *)week countLastDay:(unint64_t *)day currentTime:(double)time;
@end

@implementation PRSRankingUtilities

+ (BOOL)multiWordString:(id)string hasPrefix:(id)prefix
{
  v19 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  lowercaseString = [string lowercaseString];
  lowercaseString2 = [prefixCopy lowercaseString];
  if ([lowercaseString hasPrefix:lowercaseString2])
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [lowercaseString componentsSeparatedByString:{@" ", 0}];
    v8 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v14 + 1) + 8 * i) hasPrefix:lowercaseString2])
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }

        v8 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (BOOL)userQueryTermsHasOnlySingleCharacterTerms:(id)terms
{
  termsCopy = terms;
  v4 = termsCopy;
  if (termsCopy && [termsCopy count])
  {
    v5 = [v4 count];
    if (v5)
    {
      v6 = 0;
      v7 = v5 - 1;
      do
      {
        v8 = [v4 objectAtIndex:v6];
        v9 = [v8 length];
        v10 = v9 < 2;

        if (v9 > 1)
        {
          break;
        }
      }

      while (v7 != v6++);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)userQueryHasOnlySingleCharacterTerms:(id)terms
{
  v3 = [terms componentsSeparatedByString:@" "];
  v4 = [PRSRankingUtilities userQueryTermsHasOnlySingleCharacterTerms:v3];

  return v4;
}

+ (BOOL)caseAndDiacriticInsensitiveLocalizedString:(id)string isEqualToString:(id)toString
{
  stringCopy = string;
  toStringCopy = toString;
  v7 = [stringCopy length];
  if (v7 >= [toStringCopy length])
  {
    v8 = [stringCopy compare:toStringCopy options:129 range:{0, objc_msgSend(stringCopy, "length")}] == 0;
  }

  else
  {
    v8 = [PRSRankingUtilities caseAndDiacriticInsensitiveLocalizedString:toStringCopy isEqualToString:stringCopy];
  }

  return v8;
}

+ (BOOL)caseAndDiacriticInsensitiveLocalizedString:(id)string hasPrefix:(id)prefix locale:(id)locale
{
  localeCopy = locale;
  prefixCopy = prefix;
  stringCopy = string;
  [stringCopy rangeOfString:prefixCopy options:137 range:0 locale:{objc_msgSend(stringCopy, "length"), localeCopy}];
  v11 = v10;

  return v11 != 0;
}

+ (BOOL)caseAndDiacriticInsensitiveLocalizedString:(id)string containsString:(id)containsString locale:(id)locale
{
  localeCopy = locale;
  containsStringCopy = containsString;
  stringCopy = string;
  [stringCopy rangeOfString:containsStringCopy options:129 range:0 locale:{objc_msgSend(stringCopy, "length"), localeCopy}];
  v11 = v10;

  return v11 != 0;
}

+ (void)computeDateCountsForDates:(id)dates countLastYear:(unint64_t *)year countLastMonth:(unint64_t *)month countLastWeek:(unint64_t *)week countLastDay:(unint64_t *)day currentTime:(double)time
{
  weekCopy = week;
  dayCopy = day;
  v30 = *MEMORY[0x1E69E9840];
  datesCopy = dates;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [datesCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(datesCopy);
        }

        [*(*(&v25 + 1) + 8 * i) timeIntervalSinceReferenceDate];
        v21 = time - v20;
        if (v21 <= 86400.0)
        {
          ++v16;
        }

        if (v21 <= 604800.0)
        {
          ++v15;
        }

        if (v21 <= 2592000.0)
        {
          ++v14;
        }

        if (v21 <= 31536000.0)
        {
          ++v17;
        }
      }

      v13 = [datesCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  *year = v17;
  *month = v14;
  *weekCopy = v15;
  *dayCopy = v16;

  v22 = *MEMORY[0x1E69E9840];
}

+ (float)floatValue:(float)value withSigFigs:(int64_t)figs
{
  valueCopy = value;
  v17 = *MEMORY[0x1E69E9840];
  if (value >= 10.0)
  {
    v15 = 0u;
    v16 = 0u;
    *v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    *__str = 0u;
    v10 = 0u;
    snprintf(__str, 0x40uLL, "%%.%ldg", figs);
    snprintf(v13, 0x40uLL, __str, valueCopy);
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    [v5 floatValue];
    valueCopy = v6;
  }

  v7 = *MEMORY[0x1E69E9840];
  return valueCopy;
}

+ (BOOL)aToZInString:(id)string
{
  v3 = aToZInString__aToZ_onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    +[PRSRankingUtilities aToZInString:];
  }

  v5 = [stringCopy rangeOfCharacterFromSet:aToZInString__aToZ];

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t __36__PRSRankingUtilities_aToZInString___block_invoke()
{
  aToZInString__aToZ = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwzyzABCDEFGHIJKLMNOPQRSTUVWZYZ"];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)digitInString:(id)string
{
  v3 = digitInString__digitsOnceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    +[PRSRankingUtilities digitInString:];
  }

  v5 = [stringCopy rangeOfCharacterFromSet:digitInString__digits];

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t __37__PRSRankingUtilities_digitInString___block_invoke()
{
  digitInString__digits = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)onlyPotentialPhoneNumbersInString:(id)string
{
  v3 = onlyPotentialPhoneNumbersInString__oneToNine_onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    +[PRSRankingUtilities onlyPotentialPhoneNumbersInString:];
  }

  v5 = removeLeadingSpaces(stringCopy);

  for (i = 0; i != 4; ++i)
  {
    v7 = v5;
    v5 = [v5 stringByReplacingOccurrencesOfString:onlyPotentialPhoneNumbersInString__sPhoneNumberSeparatorList[i] withString:@" "];
  }

  v8 = removeLeadingSpaces(v5);

  v9 = [v8 length];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = 0;
  while ([onlyPotentialPhoneNumbersInString__oneToNine characterIsMember:{objc_msgSend(v8, "characterAtIndex:", v11)}])
  {
    if (v10 == ++v11)
    {
      v11 = v10;
      break;
    }
  }

  if (v11 >= 3)
  {
    v12 = v8;
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  return v12;
}

uint64_t __57__PRSRankingUtilities_onlyPotentialPhoneNumbersInString___block_invoke()
{
  onlyPotentialPhoneNumbersInString__oneToNine = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789 "];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)somePotentialPhoneNumbersInString:(id)string
{
  v3 = somePotentialPhoneNumbersInString__oneToNine_onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    +[PRSRankingUtilities somePotentialPhoneNumbersInString:];
  }

  v5 = [stringCopy rangeOfCharacterFromSet:somePotentialPhoneNumbersInString__oneToNine];

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t __57__PRSRankingUtilities_somePotentialPhoneNumbersInString___block_invoke()
{
  somePotentialPhoneNumbersInString__oneToNine = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)hyphensCharacterSet
{
  if (hyphensCharacterSet_hyphens_onceToken != -1)
  {
    +[PRSRankingUtilities hyphensCharacterSet];
  }

  v3 = hyphensCharacterSet_hyphensSet;

  return v3;
}

void __42__PRSRankingUtilities_hyphensCharacterSet__block_invoke()
{
  v0 = MEMORY[0x1E696AB08];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C%C%C%C%C%C%C%C%C%C%C%C%C", 45, 1418, 1470, 6150, 8208, 8209, 8210, 8211, 8212, 8213, 65112, 65123, 65293];
  v1 = [v0 characterSetWithCharactersInString:v3];
  v2 = hyphensCharacterSet_hyphensSet;
  hyphensCharacterSet_hyphensSet = v1;
}

@end