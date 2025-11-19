@interface NSString(OFNSStringExtensions)
+ (__CFString)normalizeString:()OFNSStringExtensions;
+ (__CFString)upperBoundString:()OFNSStringExtensions;
+ (uint64_t)durationFromFullTimeCodeString:()OFNSStringExtensions;
+ (uint64_t)generateUUID;
+ (uint64_t)shortTimeCodeStringWithDuration:()OFNSStringExtensions;
- (uint64_t)firstline;
- (uint64_t)stringByAddingPercentEscapes;
- (uint64_t)stringByAddingPercentEscapesForURLPath;
- (uint64_t)stringByCapitalizingFirstCharacter;
- (uint64_t)stringByDeletingTrailingSlash;
- (void)javaScriptEscapedString;
- (void)pathRelativeTo:()OFNSStringExtensions;
@end

@implementation NSString(OFNSStringExtensions)

+ (uint64_t)generateUUID
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  v2 = [MEMORY[0x277CCACA8] stringWithString:v1];
  if (v1)
  {
    CFRelease(v1);
  }

  if (v0)
  {
    CFRelease(v0);
  }

  return v2;
}

+ (uint64_t)durationFromFullTimeCodeString:()OFNSStringExtensions
{
  v0 = [MEMORY[0x277CCAC80] scannerWithString:?];
  v3 = -1;
  v4 = -1;
  v2 = -1;
  [v0 scanInteger:&v4];
  [v0 scanString:@":" intoString:0];
  [v0 scanInteger:&v3];
  [v0 scanString:@":" intoString:0];
  [v0 scanInteger:&v2];
  return 3600 * v4 + 60 * v3 + v2;
}

+ (uint64_t)shortTimeCodeStringWithDuration:()OFNSStringExtensions
{
  v3 = a3 % 0xE10;
  if (a3 >= 0xE10 && v3 >= 0x3C && a3 % 0xE10 % 0x3C != 0)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%lu:%02lu:%02lu", a3 / 0xE10, a3 % 0xE10 / 0x3C, a3 % 0xE10 % 0x3C];
  }

  if (v3 >= 0x3C && a3 % 0xE10 % 0x3C != 0)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%lu:%02lu", a3 % 0xE10 / 0x3C, a3 % 0xE10 % 0x3C, v8];
  }

  if (a3 % 0xE10 % 0x3C)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"0:%02lu", a3 % 0xE10 % 0x3C, v7, v8];
  }

  return 0;
}

+ (__CFString)normalizeString:()OFNSStringExtensions
{
  if (!a3)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CCAB68] stringWithString:?];
  CFStringNormalize(v3, kCFStringNormalizationFormD);
  CFStringFold(v3, 0x181uLL, 0);
  return v3;
}

+ (__CFString)upperBoundString:()OFNSStringExtensions
{
  v4 = [(__CFString *)a3 length];
  if (!v4)
  {
    return a3;
  }

  v5 = v4 - 1;
  if (v4 == 1)
  {
    v6 = &stru_287AB5E40;
    v7 = &stru_287AB5E40;
  }

  else
  {
    v7 = [(__CFString *)a3 substringToIndex:v5];
    v6 = a3;
  }

  v9 = [(__CFString *)a3 characterAtIndex:v5];
  v10 = v9 & 0xFC00;
  if (v9 == 0xFFFF)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v9 == 0xFFFF)
  {
    v12 = 1;
  }

  else
  {
    v12 = (v9 + 1);
  }

  if (v10 == 56320)
  {
    v13 = v7;
  }

  else
  {
    v13 = v11;
  }

  if (v10 == 56320)
  {
    v14 = 57344;
  }

  else
  {
    v14 = v12;
  }

  if (v10 == 55296)
  {
    v15 = v7;
  }

  else
  {
    v15 = v13;
  }

  if (v10 == 55296)
  {
    v16 = 56320;
  }

  else
  {
    v16 = v14;
  }

  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%C", v15, v16];

  return v17;
}

- (uint64_t)firstline
{
  v2 = [a1 rangeOfString:@"\n"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a1;
  }

  return [a1 substringToIndex:v2];
}

- (void)pathRelativeTo:()OFNSStringExtensions
{
  v3 = a1;
  if (a3 && [a1 hasPrefix:?])
  {
    v3 = [MEMORY[0x277CCAB68] stringWithString:v3];
    [v3 replaceOccurrencesOfString:a3 withString:&stru_287AB5E40 options:1 range:{0, objc_msgSend(a3, "length")}];
    [v3 replaceOccurrencesOfString:@"/" withString:&stru_287AB5E40 options:1 range:{0, 1}];
  }

  return v3;
}

- (void)javaScriptEscapedString
{
  v2 = [MEMORY[0x277CCAB68] string];
  v3 = [a1 length];
  if (v3 >= 1)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = [a1 characterAtIndex:v6];
      v8 = v7;
      if (v7 <= 11)
      {
        switch(v7)
        {
          case 8:
            v9 = 98;
            goto LABEL_19;
          case 9:
            v9 = 116;
            goto LABEL_19;
          case 0xA:
            v9 = 110;
            goto LABEL_19;
        }
      }

      else if (v7 > 33)
      {
        v9 = v7;
        if (v7 == 34 || v7 == 92)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v7 == 12)
        {
          v9 = 102;
          goto LABEL_19;
        }

        if (v7 == 13)
        {
          v9 = 114;
LABEL_19:
          v10 = v6 - v5;
          if (v6 != v5)
          {
            [v2 appendString:{objc_msgSend(a1, "substringWithRange:", v5, v10)}];
          }

          if (v9 == 117)
          {
            [v2 appendFormat:@"\\%c%04X", v10, 117, v8];
          }

          else
          {
            [v2 appendFormat:@"\\%c", v10, v9, v13];
          }

          v5 = v6 + 1;
          goto LABEL_25;
        }
      }

      if (v7 < 0x20)
      {
        v9 = 117;
        goto LABEL_19;
      }

      if (v7 >= 0x7F)
      {
        v11 = u_charType(v7);
        v9 = 117;
        if (v11 > 0x1D || ((1 << v11) & 0x3FF81FFE) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_25:
      if (v4 == ++v6)
      {
        goto LABEL_32;
      }
    }
  }

  v5 = 0;
LABEL_32:
  [v2 appendString:{objc_msgSend(a1, "substringFromIndex:", v5)}];
  return v2;
}

- (uint64_t)stringByDeletingTrailingSlash
{
  if (![a1 length] || objc_msgSend(a1, "characterAtIndex:", objc_msgSend(a1, "length") - 1) != 47)
  {
    return a1;
  }

  v2 = [a1 length] - 1;

  return [a1 substringToIndex:v2];
}

- (uint64_t)stringByAddingPercentEscapes
{
  if (stringByAddingPercentEscapes_onceToken != -1)
  {
    [NSString(OFNSStringExtensions) stringByAddingPercentEscapes];
  }

  v2 = stringByAddingPercentEscapes_sAllowedCharacterSet;

  return [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
}

- (uint64_t)stringByAddingPercentEscapesForURLPath
{
  v2 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];

  return [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
}

- (uint64_t)stringByCapitalizingFirstCharacter
{
  v2 = [objc_msgSend(a1 substringToIndex:{1), "capitalizedString"}];

  return [a1 stringByReplacingCharactersInRange:0 withString:{1, v2}];
}

@end