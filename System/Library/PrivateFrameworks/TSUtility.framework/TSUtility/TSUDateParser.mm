@interface TSUDateParser
+ (id)parserForDefaultLocale;
- (TSUDateParser)initWithLocale:(__CFLocale *)locale;
- (__CFDate)newDateFromString:(__CFString *)string preferredFormatString:(__CFString *)formatString successfulFormatString:(const __CFString *)successfulFormatString tryAggressiveFormats:(BOOL)formats;
- (__CFDate)newDateFromStringTryingFormats:(__CFString *)formats locale:(__CFLocale *)locale formats:(id)a5 outSuccessfulFormatString:(const __CFString *)string;
- (__CFDateFormatter)specialCaseDateFormatterForLocale:(__CFLocale *)locale;
- (void)addFormat:(id)format locale:(__CFLocale *)locale formatCategoryMap:(id)map;
- (void)datePreferencesChanged:(id)changed;
- (void)dealloc;
- (void)parseFormat:(id)format initialPattern:(id *)pattern separator:(unsigned __int16 *)separator;
@end

@implementation TSUDateParser

+ (id)parserForDefaultLocale
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKey:@"TSUDateParserThreadDictionaryKey"];
  if (!v4)
  {
    v4 = [+[TSUDateParserLibrary sharedDateParserLibrary](TSUDateParserLibrary "sharedDateParserLibrary")];
    [threadDictionary setObject:v4 forKey:@"TSUDateParserThreadDictionaryKey"];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__TSUDateParser_parserForDefaultLocale__block_invoke;
    v9[3] = &unk_279D65DF0;
    v9[4] = currentThread;
    v9[5] = v4;
    [threadDictionary setObject:TSURegisterLocaleChangeObserver(v9) forKey:@"TSUDateParserThreadDictionaryLocaleObserverKey"];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277CCA6F8];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__TSUDateParser_parserForDefaultLocale__block_invoke_2;
    v8[3] = &unk_279D65E18;
    v8[4] = v4;
    [threadDictionary setObject:objc_msgSend(defaultCenter forKey:{"addObserverForName:object:queue:usingBlock:", v6, currentThread, 0, v8), @"TSUDateParserThreadDictionaryExitObserverKey"}];
  }

  return v4;
}

uint64_t __39__TSUDateParser_parserForDefaultLocale__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    v7 = *(a1 + 40);

    return [v7 datePreferencesChanged:a2];
  }

  else
  {
    result = [v5 isFinished];
    if ((result & 1) == 0)
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);

      return [v8 performSelector:sel_datePreferencesChanged_ onThread:v9 withObject:a2 waitUntilDone:0];
    }
  }

  return result;
}

- (TSUDateParser)initWithLocale:(__CFLocale *)locale
{
  v27.receiver = self;
  v27.super_class = TSUDateParser;
  v4 = [(TSUDateParser *)&v27 init];
  if (v4)
  {
    v4->mFormatCategories = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (locale)
    {
      v5 = CFRetain(locale);
    }

    else
    {
      v5 = TSUCopyCurrentLocaleWithGregorianCalendar();
    }

    v4->mLocale = v5;
    Value = CFLocaleGetValue(v5, *MEMORY[0x277CBEE98]);
    v7 = CFLocaleGetValue(v4->mLocale, *MEMORY[0x277CBEED0]);
    if (Value)
    {
      v8 = v7;
      v9 = CFStringCompare(Value, @"JP", 1uLL) || v8 == 0;
      if (!v9 && CFStringCompare(v8, @"ja", 1uLL) == kCFCompareEqualTo)
      {
        v4->mIsJapaneseLocale = 1;
      }
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = TSUCreateArrayOfDateFormatStringsForLocale(v4->mLocale);
    v12 = TSUCreateArrayOfTimeFormatStringsForLocale(v4->mLocale);
    Count = CFArrayGetCount(v11);
    v14 = CFArrayGetCount(v12);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
        v17 = [ValueAtIndex stringByAppendingString:@" "];
        [(TSUDateParser *)v4 addFormat:ValueAtIndex locale:v4->mLocale formatCategoryMap:v10];
        if (v14 >= 1)
        {
          for (j = 0; j != v14; ++j)
          {
            -[TSUDateParser addFormat:locale:formatCategoryMap:](v4, "addFormat:locale:formatCategoryMap:", [v17 stringByAppendingString:{CFArrayGetValueAtIndex(v12, j)}], v4->mLocale, v10);
          }
        }
      }
    }

    if (v14 >= 1)
    {
      for (k = 0; k != v14; ++k)
      {
        v20 = CFArrayGetValueAtIndex(v12, k);
        v21 = [v20 stringByAppendingString:@" "];
        [(TSUDateParser *)v4 addFormat:v20 locale:v4->mLocale formatCategoryMap:v10];
        if (Count >= 1)
        {
          for (m = 0; m != Count; ++m)
          {
            -[TSUDateParser addFormat:locale:formatCategoryMap:](v4, "addFormat:locale:formatCategoryMap:", [v21 stringByAppendingString:{CFArrayGetValueAtIndex(v11, m)}], v4->mLocale, v10);
          }
        }
      }
    }

    CFRelease(v12);
    CFRelease(v11);
    for (n = kCFDateFormatterNoStyle; n != (kCFDateFormatterFullStyle|kCFDateFormatterShortStyle); ++n)
    {
      for (ii = kCFDateFormatterNoStyle; ii != (kCFDateFormatterFullStyle|kCFDateFormatterShortStyle); ++ii)
      {
        if (ii | n)
        {
          v25 = CFDateFormatterCreate(0, v4->mLocale, n, ii);
          [(TSUDateParser *)v4 addFormat:CFDateFormatterGetFormat(v25) locale:v4->mLocale formatCategoryMap:v10];
          CFRelease(v25);
        }
      }
    }

    [(TSUDateParser *)v4 addFormat:TSUDefaultDateTimeFormat() locale:v4->mLocale formatCategoryMap:v10];
  }

  return v4;
}

- (void)dealloc
{
  mSpecialCaseFormatter = self->mSpecialCaseFormatter;
  if (mSpecialCaseFormatter)
  {
    CFRelease(mSpecialCaseFormatter);
  }

  v4.receiver = self;
  v4.super_class = TSUDateParser;
  [(TSUDateParser *)&v4 dealloc];
}

- (__CFDateFormatter)specialCaseDateFormatterForLocale:(__CFLocale *)locale
{
  mSpecialCaseFormatter = self->mSpecialCaseFormatter;
  if (!mSpecialCaseFormatter)
  {
LABEL_5:
    v7 = CFDateFormatterCreate(0, locale, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    self->mSpecialCaseFormatter = v7;
    CFDateFormatterSetProperty(v7, *MEMORY[0x277CBED88], *MEMORY[0x277CBED10]);
    v8 = self->mSpecialCaseFormatter;
    v9 = *MEMORY[0x277CBEDF8];
    v10 = TSUGetGMTTimeZone();
    CFDateFormatterSetProperty(v8, v9, v10);
    return self->mSpecialCaseFormatter;
  }

  if (CFDateFormatterGetLocale(mSpecialCaseFormatter) != locale)
  {
    v6 = self->mSpecialCaseFormatter;
    if (v6)
    {
      CFRelease(v6);
    }

    goto LABEL_5;
  }

  return self->mSpecialCaseFormatter;
}

- (__CFDate)newDateFromStringTryingFormats:(__CFString *)formats locale:(__CFLocale *)locale formats:(id)a5 outSuccessfulFormatString:(const __CFString *)string
{
  v29 = *MEMORY[0x277D85DE8];
  if (locale)
  {
    v10 = [(TSUDateParser *)self specialCaseDateFormatterForLocale:locale];
  }

  else
  {
    v11 = TSUCopyCurrentLocaleWithGregorianCalendar();
    v10 = [(TSUDateParser *)self specialCaseDateFormatterForLocale:v11];
    CFRelease(v11);
  }

  Length = CFStringGetLength(formats);
  rangep.location = 0;
  rangep.length = Length;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [a5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    stringCopy = string;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(a5);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        CFDateFormatterSetFormat(v10, v17);
        v18 = CFDateFormatterCreateDateFromString(0, v10, formats, &rangep);
        if (v18)
        {
          v19 = v18;
          if (rangep.location || rangep.length != Length)
          {
            CFRelease(v18);
          }

          else
          {
            v20 = TSUCreateDateWithGregorianUnitsSetToDefaultValue(v18, v17);
            CFRelease(v19);
            if (stringCopy)
            {
              *stringCopy = CFStringCreateCopy(0, v17);
            }

            if (v20)
            {
              return v20;
            }
          }
        }
      }

      v14 = [a5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v14);
  }

  return 0;
}

- (__CFDate)newDateFromString:(__CFString *)string preferredFormatString:(__CFString *)formatString successfulFormatString:(const __CFString *)successfulFormatString tryAggressiveFormats:(BOOL)formats
{
  if (!string)
  {
    return 0;
  }

  formatsCopy = formats;
  if (!CFStringGetLength(string))
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, string);
  CFStringTransform(MutableCopy, 0, *MEMORY[0x277CBF0A8], 0);
  if (formatString)
  {
    if ([&stru_287DDF830 isEqualToString:formatString])
    {
      formatString = 0;
    }

    else
    {
      v12 = [TSUDateFormatter datePortionOfDateTimeFormatString:formatString];
      v13 = [TSUDateFormatter timePortionOfDateTimeFormatString:formatString];
      v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
      [v14 addObject:formatString];
      if (v12 && ([&stru_287DDF830 isEqualToString:v12] & 1) == 0)
      {
        [v14 addObject:v12];
      }

      if (v13 && ([&stru_287DDF830 isEqualToString:v13] & 1) == 0)
      {
        [v14 addObject:v13];
      }

      formatString = [(TSUDateParser *)self newDateFromStringTryingFormats:MutableCopy locale:self->mLocale formats:v14 outSuccessfulFormatString:successfulFormatString];
    }
  }

  objectEnumerator = [(NSMutableArray *)self->mFormatCategories objectEnumerator];
  v23 = 0;
  if (formatString)
  {
    goto LABEL_15;
  }

  v17 = objectEnumerator;
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    formatString = 0;
    v19 = 0;
    while (1)
    {
      v20 = [nextObject newDateFromString:MutableCopy forceAllowAMPM:self->mIsJapaneseLocale successfulFormatString:successfulFormatString perfect:&v23];
      if (v20)
      {
        formatStringCopy = v20;
        if (v23)
        {
          if (formatString)
          {
            CFRelease(formatString);
          }

          formatString = formatStringCopy;
          goto LABEL_39;
        }

        if (!formatString)
        {
          if (successfulFormatString)
          {
            v19 = *successfulFormatString;
            goto LABEL_28;
          }

LABEL_29:
          formatString = formatStringCopy;
          goto LABEL_30;
        }

        CFRelease(v20);
        if (successfulFormatString)
        {
          if (*successfulFormatString)
          {
            CFRelease(*successfulFormatString);
          }

          formatStringCopy = formatString;
LABEL_28:
          *successfulFormatString = 0;
          goto LABEL_29;
        }
      }

LABEL_30:
      nextObject = [v17 nextObject];
      if (!nextObject)
      {
        if (!formatString)
        {
          goto LABEL_39;
        }

        if (successfulFormatString)
        {
          *successfulFormatString = v19;
        }

        goto LABEL_15;
      }
    }
  }

  v19 = 0;
  formatString = 0;
LABEL_39:
  if (v19)
  {
    CFRelease(v19);
  }

  if (!formatString && formatsCopy)
  {
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"yy", 0}];
    formatString = 0;
    if (-[__CFString rangeOfCharacterFromSet:](MutableCopy, "rangeOfCharacterFromSet:", [MEMORY[0x277CCA900] decimalDigitCharacterSet]) != 0x7FFFFFFFFFFFFFFFLL)
    {
      formatString = [(TSUDateParser *)self newDateFromStringTryingFormats:MutableCopy locale:self->mLocale formats:v22 outSuccessfulFormatString:successfulFormatString];
    }
  }

LABEL_15:
  CFRelease(MutableCopy);
  return formatString;
}

- (void)addFormat:(id)format locale:(__CFLocale *)locale formatCategoryMap:(id)map
{
  v12 = 0;
  v11 = 0;
  [(TSUDateParser *)self parseFormat:format initialPattern:&v12 separator:&v11];
  v9 = [map objectForKey:v12];
  if (!v9)
  {
    v10 = [TSUDateFormatCategory alloc];
    v9 = [(TSUDateFormatCategory *)v10 initWithInitialPattern:v12 locale:locale];
    [(NSMutableArray *)self->mFormatCategories addObject:v9];
    [map setObject:v9 forKey:v12];
  }

  [(TSUDateFormatCategory *)v9 addSeparator:v11 format:format locale:locale];
}

- (void)parseFormat:(id)format initialPattern:(id *)pattern separator:(unsigned __int16 *)separator
{
  if (!parseFormat_initialPattern_separator__formatCharacterSet)
  {
    v8 = objc_opt_class();
    objc_sync_enter(v8);
    if (!parseFormat_initialPattern_separator__formatCharacterSet)
    {
      v9 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"GyMdhHmsSEDFwWakKZ"];
      parseFormat_initialPattern_separator__inverseFormatCharacterSet = [v9 invertedSet];
      __dmb(0xBu);
      parseFormat_initialPattern_separator__formatCharacterSet = v9;
    }

    objc_sync_exit(v8);
  }

  v10 = [format length];
  if (!v10)
  {
    v11 = +[TSUAssertionHandler currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateParser(Private) parseFormat:initialPattern:separator:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDateParser.m"), 425, @"Zero length date format"}];
  }

  v13 = [format rangeOfCharacterFromSet:parseFormat_initialPattern_separator__formatCharacterSet];
  v14 = v10;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL || ((v15 = [format rangeOfCharacterFromSet:parseFormat_initialPattern_separator__inverseFormatCharacterSet options:0 range:{v13, v10 - v13}], v15 != 0x7FFFFFFFFFFFFFFFLL) ? (v14 = v15) : (v14 = v10), v14 >= v10))
  {
    *separator = 0;
  }

  else
  {
    v16 = [format characterAtIndex:v14];
    if (v16 == 34)
    {
      v17 = 39;
    }

    else
    {
      v17 = v16;
    }

    *separator = v17;
    if (v17 == 39)
    {
      if (v14 + 1 >= v10)
      {
        v18 = +[TSUAssertionHandler currentHandler];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateParser(Private) parseFormat:initialPattern:separator:]"];
        [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDateParser.m"), 458, @"No character following single quote"}];
      }

      v20 = [format characterAtIndex:v14 + 1];
      *separator = v20;
      if (v20 == 39)
      {
        v21 = +[TSUAssertionHandler currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateParser(Private) parseFormat:initialPattern:separator:]"];
        [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDateParser.m"), 460, @"Two single quotes in a row"}];
      }
    }
  }

  *pattern = [format substringToIndex:v14];
}

- (void)datePreferencesChanged:(id)changed
{
  currentThread = [objc_msgSend(MEMORY[0x277CCACC8] currentThread];
  if ([currentThread objectForKey:@"TSUDateParserThreadDictionaryKey"] != self)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateParser(Private) datePreferencesChanged:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDateParser.m"), 476, @"Registered wrong date parser for date preference change notification"}];
  }

  selfCopy = self;
  [currentThread removeObjectForKey:@"TSUDateParserThreadDictionaryKey"];
  TSURemoveLocaleChangeObserver([currentThread objectForKey:@"TSUDateParserThreadDictionaryLocaleObserverKey"]);
  [currentThread removeObjectForKey:@"TSUDateParserThreadDictionaryLocaleObserverKey"];
  v7 = [currentThread objectForKey:@"TSUDateParserThreadDictionaryExitObserverKey"];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [currentThread removeObjectForKey:@"TSUDateParserThreadDictionaryExitObserverKey"];
  [+[TSUDateParserLibrary sharedDateParserLibrary](TSUDateParserLibrary "sharedDateParserLibrary")];
}

@end