@interface NSString(TSUCustomNumberFormatAdditions)
+ (uint64_t)customNumberFormatDecimalTokenRepresentedStringWithDigits:()TSUCustomNumberFormatAdditions digitString:;
+ (uint64_t)customNumberFormatIntegerTokenRepresentedStringWithDigits:()TSUCustomNumberFormatAdditions separator:digitString:;
+ (uint64_t)customNumberFormatTokenStringOfType:()TSUCustomNumberFormatAdditions content:;
+ (void)customNumberFormatDecimalFormatStringWithDigits:()TSUCustomNumberFormatAdditions digitString:includeDecimalSeparator:;
+ (void)customNumberFormatDecimalTokenDisplayStringWithDigits:()TSUCustomNumberFormatAdditions digitString:;
+ (void)customNumberFormatIntegerFormatStringWithDigits:()TSUCustomNumberFormatAdditions digitString:;
+ (void)customNumberFormatIntegerTokenDisplayStringWithDigits:()TSUCustomNumberFormatAdditions separator:digitString:;
- (BOOL)customFormatIntegerTokenUsesSeparator;
- (BOOL)isSpecialCustomNumberFormatToken;
- (BOOL)isSpecialCustomNumberFormatTokenOfType:()TSUCustomNumberFormatAdditions;
- (__CFString)digitPlaceholderStringInDigitToken;
- (id)currencyCodeFromCustomNumberFormatCurrencyToken;
- (uint64_t)fractionAccuracyFromCustomNumberFormatFractionToken;
- (uint64_t)numberOfDigitsInCustomNumberFormatDecimalToken;
- (uint64_t)numberOfDigitsInCustomNumberFormatIntegerToken;
- (void)stringByInsertingFormatGroupingSeparators;
@end

@implementation NSString(TSUCustomNumberFormatAdditions)

+ (uint64_t)customNumberFormatTokenStringOfType:()TSUCustomNumberFormatAdditions content:
{
  v5 = TSUCustomNumberFormatTokenIdentifierCharacterForTokenType(a3);
  if (a4)
  {
    return [MEMORY[0x277CCAB68] stringWithFormat:@"%C%C%@", TSUCustomNumberFormatSentinelCharacter, v5, a4];
  }

  else
  {
    return [MEMORY[0x277CCAB68] stringWithFormat:@"%C%C", TSUCustomNumberFormatSentinelCharacter, v5, v7];
  }
}

- (BOOL)isSpecialCustomNumberFormatToken
{
  if ([self length] < 2)
  {
    return 0;
  }

  v3 = [self characterAtIndex:0];
  return TSUCustomNumberFormatSentinelCharacter == v3;
}

- (BOOL)isSpecialCustomNumberFormatTokenOfType:()TSUCustomNumberFormatAdditions
{
  if ([self length] < 2)
  {
    return 0;
  }

  v5 = [self characterAtIndex:0];
  if (TSUCustomNumberFormatSentinelCharacter != v5)
  {
    return 0;
  }

  v6 = [self characterAtIndex:1];
  return TSUCustomNumberFormatTokenIdentifierCharacterForTokenType(a3) == v6;
}

- (uint64_t)numberOfDigitsInCustomNumberFormatIntegerToken
{
  if (([self isSpecialCustomNumberFormatTokenOfType:1] & 1) == 0)
  {
    v2 = +[TSUAssertionHandler currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUCustomNumberFormatAdditions) numberOfDigitsInCustomNumberFormatIntegerToken]"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCustomFormatNumberTokenDelegate.m"), 135, @"Wrong token type!"}];
  }

  if ([self length] < 3)
  {
    return 0;
  }

  LODWORD(v4) = 0;
  v5 = 3;
  v6 = 2;
  do
  {
    if ([self characterAtIndex:v6] == 44)
    {
      v4 = v4;
    }

    else
    {
      v4 = (v4 + 1);
    }

    v6 = v5;
  }

  while ([self length] > v5++);
  return v4;
}

- (BOOL)customFormatIntegerTokenUsesSeparator
{
  if (([self isSpecialCustomNumberFormatTokenOfType:1] & 1) == 0)
  {
    v2 = +[TSUAssertionHandler currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUCustomNumberFormatAdditions) customFormatIntegerTokenUsesSeparator]"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCustomFormatNumberTokenDelegate.m"), 146, @"Wrong token type!"}];
  }

  return [self characterAtIndex:{objc_msgSend(self, "length") - 1}] == 44;
}

- (void)stringByInsertingFormatGroupingSeparators
{
  string = [MEMORY[0x277CCAB68] string];
  v3 = TSUNumberFormatterGroupingSizeForLocale(0);
  v4 = [self length];
  v5 = v4 - 1;
  if (v4 >= 1)
  {
    v6 = 1;
    do
    {
      [string insertString:objc_msgSend(MEMORY[0x277CCACA8] atIndex:{"stringWithFormat:", @"%C", objc_msgSend(self, "characterAtIndex:", v5)), 0}];
      if (v5 && v3 && !(v6 % v3))
      {
        [string insertString:@" atIndex:{", 0}];
      }

      --v5;
      ++v6;
    }

    while (v5 != -1);
  }

  return string;
}

+ (void)customNumberFormatIntegerTokenDisplayStringWithDigits:()TSUCustomNumberFormatAdditions separator:digitString:
{
  string = [MEMORY[0x277CCAB68] string];
  v9 = TSUNumberFormatterGroupingSizeForLocale(0);
  if (a3)
  {
    v10 = v9;
    v11 = 0;
    v12 = *MEMORY[0x277CBE6B8];
    do
    {
      if (v11 && v10)
      {
        if (a3 % v10)
        {
          v13 = 1;
        }

        else
        {
          v13 = a4 == 0;
        }

        if (!v13)
        {
          [string appendString:{objc_msgSend(objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale"), "objectForKey:", v12)}];
        }
      }

      [string appendString:a5];
      ++v11;
      --a3;
    }

    while (a3);
  }

  return string;
}

+ (uint64_t)customNumberFormatIntegerTokenRepresentedStringWithDigits:()TSUCustomNumberFormatAdditions separator:digitString:
{
  v8 = [MEMORY[0x277CCAB68] stringWithCapacity:?];
  if (a3)
  {
    v9 = 1;
    do
    {
      [v8 appendString:a5];
      v10 = v9++;
    }

    while (v10 < a3);
  }

  if (a4)
  {
    [v8 appendString:{@", "}];
  }

  v11 = MEMORY[0x277CCAB68];

  return [v11 customNumberFormatTokenStringOfType:1 content:v8];
}

+ (void)customNumberFormatIntegerFormatStringWithDigits:()TSUCustomNumberFormatAdditions digitString:
{
  for (i = [MEMORY[0x277CCAB68] string]; a3; --a3)
  {
    [i appendString:a4];
  }

  return i;
}

- (uint64_t)numberOfDigitsInCustomNumberFormatDecimalToken
{
  if (([self isSpecialCustomNumberFormatTokenOfType:2] & 1) == 0)
  {
    v2 = +[TSUAssertionHandler currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUCustomNumberFormatAdditions) numberOfDigitsInCustomNumberFormatDecimalToken]"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCustomFormatNumberTokenDelegate.m"), 209, @"Wrong token type!"}];
  }

  if ([self length] <= 2)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUCustomNumberFormatAdditions) numberOfDigitsInCustomNumberFormatDecimalToken]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUCustomFormatNumberTokenDelegate.m"), 212, @"Bad token format"}];
  }

  return [self length] - 3;
}

+ (void)customNumberFormatDecimalTokenDisplayStringWithDigits:()TSUCustomNumberFormatAdditions digitString:
{
  string = [MEMORY[0x277CCAB68] string];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [string appendString:{objc_msgSend(currentLocale, "objectForKey:", *MEMORY[0x277CBE6A8])}];
  for (; a3; --a3)
  {
    [string appendString:a4];
  }

  return string;
}

+ (uint64_t)customNumberFormatDecimalTokenRepresentedStringWithDigits:()TSUCustomNumberFormatAdditions digitString:
{
  v6 = [MEMORY[0x277CCAB68] stringWithCapacity:?];
  if (a3 != -1)
  {
    v7 = a3 + 1;
    do
    {
      [v6 appendString:a4];
      --v7;
    }

    while (v7);
  }

  v8 = MEMORY[0x277CCAB68];

  return [v8 customNumberFormatTokenStringOfType:2 content:v6];
}

+ (void)customNumberFormatDecimalFormatStringWithDigits:()TSUCustomNumberFormatAdditions digitString:includeDecimalSeparator:
{
  string = [MEMORY[0x277CCAB68] string];
  v9 = string;
  if (a5)
  {
    [string appendString:@"."];
  }

  if (a3 >= 1)
  {
    v10 = a3 + 1;
    do
    {
      [v9 appendString:a4];
      --v10;
    }

    while (v10 > 1);
  }

  return v9;
}

- (__CFString)digitPlaceholderStringInDigitToken
{
  v2 = @"0";
  if ([self rangeOfString:@"0"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = @"#";
    if ([self rangeOfString:@"#"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      return @"?";
    }
  }

  return v2;
}

- (id)currencyCodeFromCustomNumberFormatCurrencyToken
{
  if ([self length] < 3)
  {

    return +[TSUNumberFormatter currentLocaleCurrencyCode];
  }

  else
  {

    return [self substringFromIndex:2];
  }
}

- (uint64_t)fractionAccuracyFromCustomNumberFormatFractionToken
{
  v1 = [self substringFromIndex:2];

  return [v1 intValue];
}

@end