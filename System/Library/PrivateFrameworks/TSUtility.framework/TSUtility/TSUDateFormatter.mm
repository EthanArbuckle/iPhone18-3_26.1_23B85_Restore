@interface TSUDateFormatter
+ (id)datePortionOfDateTimeFormatString:(id)string;
+ (id)defaultDateTimeFormat;
+ (id)shortMonthNamesForNonCachedCurrentLocale;
+ (id)supportedDateFormats;
+ (id)supportedTimeFormats;
+ (id)timePortionOfDateTimeFormatString:(id)string;
+ (unint64_t)p_DateTimeSplitLocationInFormatString:(id)string;
- (TSUDateFormatter)init;
- (id)appropriateOutputFormatStringForInputFormatString:(id)string;
- (id)fullDateString:(id)string;
- (void)dealloc;
@end

@implementation TSUDateFormatter

+ (id)defaultDateTimeFormat
{
  result = defaultDateTimeFormat_sFormat;
  if (!defaultDateTimeFormat_sFormat)
  {
    result = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterMediumStyle, kCFDateFormatterShortStyle);
    defaultDateTimeFormat_sFormat = result;
  }

  return result;
}

+ (id)supportedDateFormats
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterShortStyle, kCFDateFormatterNoStyle);
  v3 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle);
  v4 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterLongStyle, kCFDateFormatterNoStyle);
  v5 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterFullStyle, kCFDateFormatterNoStyle);
  v6 = TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(0);
  v7 = [objc_msgSend(v6 objectForKey:{TSUDateFormatterDateTimeFormatInfoDisplayedDateFormats), "mutableCopy"}];

  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v7);
        }

        [v8 addObject:{TSUDateFormatterStringFromDateWithFormat(v9, *(*(&v19 + 1) + 8 * v13++))}];
      }

      while (v11 != v13);
      v11 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = TSUDateFormatterStringFromDateWithFormat(v9, v2);
  v15 = TSUDateFormatterStringFromDateWithFormat(v9, v3);
  v16 = TSUDateFormatterStringFromDateWithFormat(v9, v4);
  v17 = TSUDateFormatterStringFromDateWithFormat(v9, v5);
  if (([v8 containsObject:v14] & 1) == 0)
  {
    [v7 addObject:v2];
  }

  if (([v8 containsObject:v15] & 1) == 0)
  {
    [v7 addObject:v3];
  }

  if (([v8 containsObject:v16] & 1) == 0)
  {
    [v7 addObject:v4];
  }

  if (([v8 containsObject:v17] & 1) == 0)
  {
    [v7 addObject:v5];
  }

  return v7;
}

+ (id)supportedTimeFormats
{
  v2 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
  v3 = TSUDateFormatterCopyFormatStringForDateAndTimeStyles(kCFDateFormatterNoStyle, kCFDateFormatterMediumStyle);
  v4 = TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(0);
  v5 = [objc_msgSend(v4 objectForKey:{TSUDateFormatterDateTimeFormatInfoDisplayedTimeFormats), "mutableCopy"}];

  v6 = [(__CFString *)v2 mutableCopy];
  [v6 replaceOccurrencesOfString:@"h" withString:@"hh" options:0 range:{0, objc_msgSend(v6, "length")}];
  [v6 replaceOccurrencesOfString:@"H" withString:@"HH" options:0 range:{0, objc_msgSend(v6, "length")}];
  v17 = v2;
  v7 = [(__CFString *)v2 mutableCopy];
  [v7 replaceOccurrencesOfString:@"hh" withString:@"h" options:0 range:{0, objc_msgSend(v7, "length")}];
  [v7 replaceOccurrencesOfString:@"HH" withString:@"H" options:0 range:{0, objc_msgSend(v7, "length")}];
  v8 = [(__CFString *)v3 mutableCopy];
  [v8 replaceOccurrencesOfString:@"h" withString:@"hh" options:0 range:{0, objc_msgSend(v8, "length")}];
  [v8 replaceOccurrencesOfString:@"H" withString:@"HH" options:0 range:{0, objc_msgSend(v8, "length")}];
  v9 = [(__CFString *)v3 mutableCopy];
  [v9 replaceOccurrencesOfString:@"hh" withString:@"h" options:0 range:{0, objc_msgSend(v9, "length")}];
  [v9 replaceOccurrencesOfString:@"HH" withString:@"H" options:0 range:{0, objc_msgSend(v9, "length")}];
  v10 = [v5 indexOfObject:v6];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 removeObjectAtIndex:v10];
  }

  v11 = [v5 indexOfObject:v7];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v11;
    [v5 removeObjectAtIndex:v11];
    v10 = v12;
  }

  if (([v5 containsObject:v17] & 1) == 0)
  {
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 addObject:v17];
    }

    else
    {
      [v5 insertObject:v17 atIndex:v10];
    }
  }

  v13 = [v5 indexOfObject:v8];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 removeObjectAtIndex:v13];
  }

  v14 = [v5 indexOfObject:v9];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v14;
    [v5 removeObjectAtIndex:v14];
    v13 = v15;
  }

  if (([v5 containsObject:v3] & 1) == 0)
  {
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 addObject:v3];
    }

    else
    {
      [v5 insertObject:v3 atIndex:v13];
    }
  }

  return v5;
}

+ (unint64_t)p_DateTimeSplitLocationInFormatString:(id)string
{
  v4 = [string length];
  v5 = [MEMORY[0x277CCAC80] scannerWithString:string];
  [v5 setCharactersToBeSkipped:0];
  v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"'hHmsSakKZ"];
  v11 = 0;
  scanLocation = [v5 scanLocation];
  if (scanLocation < [string length])
  {
    while (1)
    {
      [v5 scanUpToCharactersFromSet:v6 intoString:&v11];
      scanLocation2 = [v5 scanLocation];
      if (scanLocation2 >= [string length] || objc_msgSend(string, "characterAtIndex:", objc_msgSend(v5, "scanLocation")) != 39)
      {
        break;
      }

      [v5 scanLocation];
      [v5 setScanLocation:{objc_msgSend(v5, "scanLocation") + 1}];
      [v5 scanUpToString:@"'" intoString:&v11];
      [v5 setScanLocation:{objc_msgSend(v5, "scanLocation") + 1}];
      [v5 scanLocation];
      scanLocation3 = [v5 scanLocation];
      if (scanLocation3 >= [string length])
      {
        return v4;
      }
    }

    return [v5 scanLocation];
  }

  return v4;
}

+ (id)datePortionOfDateTimeFormatString:(id)string
{
  v3 = [string substringToIndex:{objc_msgSend(self, "p_DateTimeSplitLocationInFormatString:")}];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];

  return [v3 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
}

+ (id)timePortionOfDateTimeFormatString:(id)string
{
  v4 = [self p_DateTimeSplitLocationInFormatString:?];
  if (v4 >= [string length])
  {
    return &stru_287DDF830;
  }

  v5 = [string substringFromIndex:v4];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];

  return [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
}

+ (id)shortMonthNamesForNonCachedCurrentLocale
{
  v2 = CFDateFormatterCreate(0, [MEMORY[0x277CBEAF8] currentLocale], kCFDateFormatterMediumStyle, kCFDateFormatterMediumStyle);
  v3 = CFDateFormatterCopyProperty(v2, *MEMORY[0x277CBEDC0]);
  CFRelease(v2);

  return v3;
}

- (TSUDateFormatter)init
{
  v9.receiver = self;
  v9.super_class = TSUDateFormatter;
  v2 = [(TSUDateFormatter *)&v9 init];
  if (v2)
  {
    TSUDateFormatterInit();
    v3 = CFDateFormatterCreate(0, sDateFormatterLocale, kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle);
    v4 = CFDateFormatterCreate(0, sDateFormatterLocale, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
    v2->mDateOnlyFormatString = CFDateFormatterGetFormat(v3);
    v2->mTimeOnlyFormatString = CFDateFormatterGetFormat(v4);
    v5 = CFDateFormatterCreate(0, sDateFormatterLocale, kCFDateFormatterFullStyle, kCFDateFormatterFullStyle);
    v2->mFullDateFormatter = v5;
    v6 = *MEMORY[0x277CBEDF8];
    v7 = TSUGetGMTTimeZone();
    CFDateFormatterSetProperty(v5, v6, v7);
    CFRelease(v3);
    CFRelease(v4);
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->mFullDateFormatter);
  v3.receiver = self;
  v3.super_class = TSUDateFormatter;
  [(TSUDateFormatter *)&v3 dealloc];
}

- (id)fullDateString:(id)string
{
  if (!string)
  {
    return 0;
  }

  StringWithDate = CFDateFormatterCreateStringWithDate(0, self->mFullDateFormatter, string);

  return StringWithDate;
}

- (id)appropriateOutputFormatStringForInputFormatString:(id)string
{
  v4 = TSUGregorianUnitsPresentInFormatString(string);
  if (v4 >= 8 && (v4 & 7) != 0)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", self->mDateOnlyFormatString, self->mTimeOnlyFormatString];
  }

  if ((v4 & 7) != 0)
  {
    v6 = MEMORY[0x277CCACA8];
    mDateOnlyFormatString = self->mDateOnlyFormatString;
  }

  else
  {
    if (!v4)
    {
      v8 = +[TSUAssertionHandler currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateFormatter(Private) appropriateOutputFormatStringForInputFormatString:]"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDateFormatter.m"), 783, @"this should never be reached"}];
      return 0;
    }

    v6 = MEMORY[0x277CCACA8];
    mDateOnlyFormatString = self->mTimeOnlyFormatString;
  }

  return [v6 stringWithString:mDateOnlyFormatString];
}

@end