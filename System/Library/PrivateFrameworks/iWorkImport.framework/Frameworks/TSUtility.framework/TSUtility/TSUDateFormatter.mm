@interface TSUDateFormatter
+ (id)datePortionOfDateTimeFormatString:(id)string;
+ (id)defaultDateTimeFormatForLocale:(id)locale;
+ (id)p_supportedDateFormatMatchingFormat:(id)format locale:(id)locale;
+ (id)p_supportedTimeFormatMatchingFormat:(id)format locale:(id)locale;
+ (id)supportedDateFormatsForLocale:(id)locale;
+ (id)supportedTimeFormatsForLocale:(id)locale;
+ (id)timePortionOfDateTimeFormatString:(id)string;
+ (unint64_t)p_DateTimeSplitLocationInFormatString:(id)string;
- (TSUDateFormatter)init;
- (TSUDateFormatter)initWithLocale:(id)locale;
- (void)dealloc;
@end

@implementation TSUDateFormatter

+ (id)defaultDateTimeFormatForLocale:(id)locale
{
  localeCopy = locale;
  v4 = [localeCopy localeSpecificStorageForKey:@"TSUDateFormatter_defaultDateTimeFormat"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    v4 = [localeCopy localeSpecificStorageForKey:@"TSUDateFormatter_defaultDateTimeFormat"];
    if (!v4)
    {
      formattingSymbols = [localeCopy formattingSymbols];
      v4 = [formattingSymbols patternStringForDateStyle:2 timeStyle:1];

      [localeCopy setLocaleSpecificStorage:v4 forKey:@"TSUDateFormatter_defaultDateTimeFormat"];
    }

    objc_sync_exit(v5);
  }

  return v4;
}

+ (id)supportedDateFormatsForLocale:(id)locale
{
  v36 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v4 = [localeCopy localeSpecificStorageForKey:@"TSUDateFormatter_supportedDateFormats"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    v4 = [localeCopy localeSpecificStorageForKey:@"TSUDateFormatter_supportedDateFormats"];
    if (!v4)
    {
      formattingSymbols = [localeCopy formattingSymbols];
      v30 = [formattingSymbols patternStringForDateStyle:1 timeStyle:0];

      formattingSymbols2 = [localeCopy formattingSymbols];
      v29 = [formattingSymbols2 patternStringForDateStyle:2 timeStyle:0];

      formattingSymbols3 = [localeCopy formattingSymbols];
      v28 = [formattingSymbols3 patternStringForDateStyle:3 timeStyle:0];

      formattingSymbols4 = [localeCopy formattingSymbols];
      v27 = [formattingSymbols4 patternStringForDateStyle:4 timeStyle:0];

      locale = [localeCopy locale];
      v11 = sub_27702F324(locale);

      v12 = [v11 objectForKey:@"DisplayedDateFormats"];
      v13 = [v12 mutableCopy];

      v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v13, "count")}];
      v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
      v26 = v11;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = v13;
      v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v17)
      {
        v18 = *v32;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v32 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = TSUDateFormatterStringFromDateWithFormat(v15, *(*(&v31 + 1) + 8 * i), localeCopy);
            [v14 addObject:v20];
          }

          v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v17);
      }

      v21 = TSUDateFormatterStringFromDateWithFormat(v15, v30, localeCopy);
      v22 = TSUDateFormatterStringFromDateWithFormat(v15, v29, localeCopy);
      v23 = TSUDateFormatterStringFromDateWithFormat(v15, v28, localeCopy);
      v24 = TSUDateFormatterStringFromDateWithFormat(v15, v27, localeCopy);
      if (([v14 containsObject:v21] & 1) == 0)
      {
        [v14 addObject:v21];
        [v16 addObject:v30];
      }

      if (([v14 containsObject:v22] & 1) == 0)
      {
        [v14 addObject:v22];
        [v16 addObject:v29];
      }

      if (([v14 containsObject:v23] & 1) == 0)
      {
        [v14 addObject:v23];
        [v16 addObject:v28];
      }

      if (([v14 containsObject:v24] & 1) == 0)
      {
        [v14 addObject:v24];
        [v16 addObject:v27];
      }

      v4 = [v16 copy];
      [localeCopy setLocaleSpecificStorage:v4 forKey:@"TSUDateFormatter_supportedDateFormats"];
    }

    objc_sync_exit(v5);
  }

  return v4;
}

+ (id)p_supportedDateFormatMatchingFormat:(id)format locale:(id)locale
{
  v23 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  localeCopy = locale;
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v8 = TSUDateFormatterStringFromDateWithFormat(v7, formatCopy, localeCopy);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [TSUDateFormatter supportedDateFormatsForLocale:localeCopy, 0];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = TSUDateFormatterStringFromDateWithFormat(v7, v14, localeCopy);
        if ([v15 isEqualToString:v8])
        {
          v16 = v14;

          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = formatCopy;
LABEL_11:

  return v16;
}

+ (id)supportedTimeFormatsForLocale:(id)locale
{
  localeCopy = locale;
  v4 = [localeCopy localeSpecificStorageForKey:@"TSUDateFormatter_supportedTimeFormats"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    v4 = [localeCopy localeSpecificStorageForKey:@"TSUDateFormatter_supportedTimeFormats"];
    if (v4)
    {
LABEL_23:
      objc_sync_exit(v5);

      goto LABEL_24;
    }

    v34 = v5;
    formattingSymbols = [localeCopy formattingSymbols];
    v37 = [formattingSymbols patternStringForDateStyle:0 timeStyle:1];

    formattingSymbols2 = [localeCopy formattingSymbols];
    v8 = [formattingSymbols2 patternStringForDateStyle:0 timeStyle:2];

    locale = [localeCopy locale];
    v10 = sub_27702F324(locale);

    v11 = [v10 objectForKey:@"DisplayedTimeFormats"];
    v12 = [v11 mutableCopy];
    v33 = v10;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (i = 0; i < [v12 count]; ++i)
    {
      v15 = objc_alloc(MEMORY[0x277CCAB68]);
      v16 = [v12 objectAtIndexedSubscript:i];
      v17 = [v15 initWithString:v16];

      sub_2770316D0(v18, v17);
      [v13 addObject:v17];
    }

    v19 = [v37 mutableCopy];
    [v19 replaceOccurrencesOfString:@"h" withString:@"hh" options:0 range:{0, objc_msgSend(v19, "length")}];
    [v19 replaceOccurrencesOfString:@"H" withString:@"HH" options:0 range:{0, objc_msgSend(v19, "length")}];
    v20 = [v37 mutableCopy];
    [v20 replaceOccurrencesOfString:@"hh" withString:@"h" options:0 range:{0, objc_msgSend(v20, "length")}];
    [v20 replaceOccurrencesOfString:@"HH" withString:@"H" options:0 range:{0, objc_msgSend(v20, "length")}];
    v21 = [v37 mutableCopy];
    sub_2770316D0(v21, v21);
    v22 = [v8 mutableCopy];
    [v22 replaceOccurrencesOfString:@"h" withString:@"hh" options:0 range:{0, objc_msgSend(v22, "length")}];
    [v22 replaceOccurrencesOfString:@"H" withString:@"HH" options:0 range:{0, objc_msgSend(v22, "length")}];
    v23 = [v8 mutableCopy];
    [v23 replaceOccurrencesOfString:@"hh" withString:@"h" options:0 range:{0, objc_msgSend(v23, "length")}];
    [v23 replaceOccurrencesOfString:@"HH" withString:@"H" options:0 range:{0, objc_msgSend(v23, "length")}];
    v24 = v8;
    v25 = [v8 mutableCopy];
    sub_2770316D0(v25, v25);
    v35 = v21;
    v36 = v19;
    if ([v12 indexOfObject:v37] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = [v12 indexOfObject:v19];
      v27 = [v12 indexOfObject:v20];
      v28 = [v13 indexOfObject:v35];
      if (v26 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v27 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v28 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v12 addObject:v37];
            goto LABEL_14;
          }

          v26 = v28;
        }

        else
        {
          v26 = v27;
        }
      }

      [v12 replaceObjectAtIndex:v26 withObject:v37];
    }

LABEL_14:
    if ([v12 indexOfObject:v24] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = [v12 indexOfObject:v22];
      v30 = [v13 indexOfObject:v23];
      v31 = [v13 indexOfObject:v25];
      if (v29 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v30 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v31 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v12 addObject:v24];
            goto LABEL_22;
          }

          v29 = v31;
        }

        else
        {
          v29 = v30;
        }
      }

      [v12 replaceObjectAtIndex:v29 withObject:v24];
    }

LABEL_22:
    v4 = [v12 copy];
    [localeCopy setLocaleSpecificStorage:v4 forKey:@"TSUDateFormatter_supportedTimeFormats"];

    v5 = v34;
    goto LABEL_23;
  }

LABEL_24:

  return v4;
}

+ (id)p_supportedTimeFormatMatchingFormat:(id)format locale:(id)locale
{
  v23 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  localeCopy = locale;
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v8 = TSUDateFormatterStringFromDateWithFormat(v7, formatCopy, localeCopy);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [TSUDateFormatter supportedTimeFormatsForLocale:localeCopy, 0];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = TSUDateFormatterStringFromDateWithFormat(v7, v14, localeCopy);
        if ([v15 isEqualToString:v8])
        {
          v16 = v14;

          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = formatCopy;
LABEL_11:

  return v16;
}

+ (unint64_t)p_DateTimeSplitLocationInFormatString:(id)string
{
  stringCopy = string;
  scanLocation5 = [stringCopy length];
  v5 = [MEMORY[0x277CCAC80] scannerWithString:stringCopy];
  [v5 setCharactersToBeSkipped:0];
  v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"'hHmsSakKZ"];
  scanLocation = [v5 scanLocation];
  if (scanLocation >= [stringCopy length])
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v21 = v8;
      [v5 scanUpToCharactersFromSet:v6 intoString:&v21];
      v9 = v21;

      scanLocation2 = [v5 scanLocation];
      if (scanLocation2 >= [stringCopy length] || objc_msgSend(stringCopy, "characterAtIndex:", objc_msgSend(v5, "scanLocation")) != 39)
      {
        break;
      }

      scanLocation3 = [v5 scanLocation];
      v12 = [v5 scanLocation] + 1;
      if (v12 >= [stringCopy length])
      {
        goto LABEL_14;
      }

      [v5 setScanLocation:{objc_msgSend(v5, "scanLocation") + 1}];
      v20 = v9;
      [v5 scanUpToString:@"'" intoString:&v20];
      v8 = v20;

      v13 = [v5 scanLocation] + 1;
      v14 = [stringCopy length];
      v15 = [v5 scanLocation] + 1;
      if (v13 >= v14)
      {
        if (v15 == [stringCopy length])
        {
          goto LABEL_10;
        }

        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUDateFormatter p_DateTimeSplitLocationInFormatString:]"];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
        [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:927 isFatal:0 description:"Unmatched single quote found in format string %{public}@", stringCopy];

        +[TSUAssertionHandler logBacktraceThrottled];
        v15 = scanLocation3 + 1;
      }

      [v5 setScanLocation:v15];
      scanLocation4 = [v5 scanLocation];
      if (scanLocation4 >= [stringCopy length])
      {
LABEL_10:
        v9 = v8;
        goto LABEL_14;
      }
    }

    scanLocation5 = [v5 scanLocation];
  }

LABEL_14:

  return scanLocation5;
}

+ (id)datePortionOfDateTimeFormatString:(id)string
{
  stringCopy = string;
  v5 = [stringCopy substringToIndex:{objc_msgSend(self, "p_DateTimeSplitLocationInFormatString:", stringCopy)}];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v7;
}

+ (id)timePortionOfDateTimeFormatString:(id)string
{
  stringCopy = string;
  v5 = [self p_DateTimeSplitLocationInFormatString:stringCopy];
  if (v5 >= [stringCopy length])
  {
    v8 = &stru_28862C2A0;
  }

  else
  {
    v6 = [stringCopy substringFromIndex:v5];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [v6 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  }

  return v8;
}

- (TSUDateFormatter)initWithLocale:(id)locale
{
  localeCopy = locale;
  v17.receiver = self;
  v17.super_class = TSUDateFormatter;
  v5 = [(TSUDateFormatter *)&v17 init];
  if (v5)
  {
    copyWithGregorianCalendar = [localeCopy copyWithGregorianCalendar];
    UsingHarmonizedSymbols = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, copyWithGregorianCalendar, 2, 0);
    v8 = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, copyWithGregorianCalendar, 0, 1);
    v9 = CFDateFormatterGetFormat(UsingHarmonizedSymbols);
    dateOnlyFormatString = v5->_dateOnlyFormatString;
    v5->_dateOnlyFormatString = v9;

    v11 = CFDateFormatterGetFormat(v8);
    timeOnlyFormatString = v5->_timeOnlyFormatString;
    v5->_timeOnlyFormatString = v11;

    v13 = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, copyWithGregorianCalendar, 4, 4);
    v5->_fullDateFormatter = v13;
    v14 = *MEMORY[0x277CBEDF8];
    v15 = TSUGetGMTTimeZone();
    CFDateFormatterSetProperty(v13, v14, v15);

    CFRelease(UsingHarmonizedSymbols);
    CFRelease(v8);
  }

  return v5;
}

- (TSUDateFormatter)init
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateFormatter init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:981 isFatal:0 description:"I don't think anyone creates these objects anymore - if they do, a locale needs to be supplied"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v5 = +[TSULocale currentLocale];
  v6 = [(TSUDateFormatter *)self initWithLocale:v5];

  return v6;
}

- (void)dealloc
{
  CFRelease(self->_fullDateFormatter);
  v3.receiver = self;
  v3.super_class = TSUDateFormatter;
  [(TSUDateFormatter *)&v3 dealloc];
}

@end