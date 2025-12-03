@interface TSUDateParser
- (TSUDateParser)initWithLocale:(id)locale;
- (TSUDateParser)initWithLocale:(id)locale usingLimitedFormats:(id)formats;
- (__CFDateFormatter)specialCaseDateFormatterForLocale:(id)locale;
- (id)allFormats;
- (id)formatStringsDictionary;
- (id)newDateFromString:(id)string preferredFormatString:(id)formatString successfulFormatString:(id *)successfulFormatString tryAggressiveFormats:(BOOL)formats;
- (id)p_initialPatternParsingFormat:(id)format separator:(unsigned __int16 *)separator;
- (id)p_newDateFromStringTryingFormats:(id)formats locale:(id)locale formats:(id)a5 outSuccessfulFormatString:(id *)string perfect:(BOOL *)perfect;
- (void)_commonInitWithLocale:(id)locale;
- (void)dealloc;
- (void)p_addFormat:(id)format locale:(id)locale formatCategoryMap:(id)map;
@end

@implementation TSUDateParser

- (void)_commonInitWithLocale:(id)locale
{
  localeCopy = locale;
  v16 = localeCopy;
  if (!localeCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateParser _commonInitWithLocale:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateParser.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:88 isFatal:0 description:"A locale is required here"];

    +[TSUAssertionHandler logBacktraceThrottled];
    localeCopy = 0;
  }

  copyWithGregorianCalendar = [localeCopy copyWithGregorianCalendar];
  locale = self->_locale;
  self->_locale = copyWithGregorianCalendar;

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  formatCategories = self->_formatCategories;
  self->_formatCategories = v9;

  locale = [(TSULocale *)self->_locale locale];
  v12 = [locale objectForKey:*MEMORY[0x277CBE690]];

  locale2 = [(TSULocale *)self->_locale locale];
  v14 = [locale2 objectForKey:*MEMORY[0x277CBE6C8]];

  if (v12)
  {
    v15 = [v12 compare:@"JP" options:1] || v14 == 0;
    if (!v15 && ![v14 compare:@"ja" options:1])
    {
      self->_isJapaneseLocale = 1;
    }
  }
}

- (TSUDateParser)initWithLocale:(id)locale
{
  localeCopy = locale;
  v60.receiver = self;
  v60.super_class = TSUDateParser;
  v5 = [(TSUDateParser *)&v60 init];
  v6 = v5;
  if (v5)
  {
    v57 = localeCopy;
    [(TSUDateParser *)v5 _commonInitWithLocale:localeCopy];
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    locale = [(TSULocale *)v6->_locale locale];
    v9 = sub_2770308B8(locale);

    locale2 = [(TSULocale *)v6->_locale locale];
    v11 = sub_2770308F8(locale2);

    v12 = [v9 count];
    v13 = [v11 count];
    v58 = v11;
    v59 = v9;
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v15 = [v9 objectAtIndex:i];
        v16 = [v15 stringByAppendingString:@" "];
        [(TSUDateParser *)v6 p_addFormat:v15 locale:v6->_locale formatCategoryMap:v7];
        if (v13)
        {
          for (j = 0; j != v13; ++j)
          {
            v18 = [v11 objectAtIndex:j];
            v19 = [v16 stringByAppendingString:v18];
            [(TSUDateParser *)v6 p_addFormat:v19 locale:v6->_locale formatCategoryMap:v7];

            v11 = v58;
          }
        }

        v9 = v59;
      }
    }

    if (v13)
    {
      for (k = 0; k != v13; ++k)
      {
        v21 = [v58 objectAtIndex:k];
        v22 = [v21 stringByAppendingString:@" "];
        [(TSUDateParser *)v6 p_addFormat:v21 locale:v6->_locale formatCategoryMap:v7];
        if (v12)
        {
          for (m = 0; m != v12; ++m)
          {
            v24 = [v9 objectAtIndex:m];
            v25 = [v22 stringByAppendingString:v24];
            [(TSUDateParser *)v6 p_addFormat:v25 locale:v6->_locale formatCategoryMap:v7];

            v9 = v59;
          }
        }
      }
    }

    v26 = 0;
    localeCopy = v57;
    while (1)
    {
      for (n = 0; n != 5; ++n)
      {
        if (!(n | v26))
        {
          continue;
        }

        formattingSymbols = [localeCopy formattingSymbols];
        v29 = [formattingSymbols patternStringForDateStyle:v26 timeStyle:n];

        [(TSUDateParser *)v6 p_addFormat:v29 locale:v6->_locale formatCategoryMap:v7];
        if (v26 && n)
        {
          v30 = objc_opt_new();
          locale3 = [(TSULocale *)v6->_locale locale];
          [v30 setLocale:locale3];

          [v30 setDateStyle:v26];
          [v30 setTimeStyle:0];
          dateFormat = [v30 dateFormat];
          LOBYTE(locale3) = [TSUFormattingSymbols dateFormatIsPureLiteral:dateFormat];

          if ((locale3 & 1) != 0 || ([v30 setDateStyle:0], objc_msgSend(v30, "setTimeStyle:", n), objc_msgSend(v30, "dateFormat"), v33 = objc_claimAutoreleasedReturnValue(), v34 = +[TSUFormattingSymbols dateFormatIsPureLiteral:](TSUFormattingSymbols, "dateFormatIsPureLiteral:", v33), v33, v34))
          {
            [(TSULocale *)v6->_locale isAutoUpdating];
          }

          else
          {
            [v30 setDateStyle:v26];
            dateFormat2 = [v30 dateFormat];
            [(TSUDateParser *)v6 p_addFormat:dateFormat2 locale:v6->_locale formatCategoryMap:v7];

            if (![(TSULocale *)v6->_locale isAutoUpdating])
            {
              goto LABEL_33;
            }
          }

          copyWithGregorianCalendar = objc_opt_new();
          [copyWithGregorianCalendar setDateStyle:v26];
          [copyWithGregorianCalendar setTimeStyle:n];
          v36 = MEMORY[0x277CBEAF8];
          localeIdentifier = [(TSULocale *)v6->_locale localeIdentifier];
          v38 = [v36 localeWithLocaleIdentifier:localeIdentifier];
          [copyWithGregorianCalendar setLocale:v38];

          dateFormat3 = [copyWithGregorianCalendar dateFormat];
          [(TSUDateParser *)v6 p_addFormat:dateFormat3 locale:v6->_locale formatCategoryMap:v7];
        }

        else
        {
          if (v26 || n != 1 || [v29 rangeOfString:@"a"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_34;
          }

          v40 = [v29 rangeOfString:@"mm"];
          v41 = v40;
          v43 = v42;
          if (v40 && v40 != 0x7FFFFFFFFFFFFFFFLL)
          {
            letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
            v45 = [letterCharacterSet characterIsMember:{objc_msgSend(v29, "characterAtIndex:", v41 - 1)}];

            if (!v45)
            {
              --v41;
            }

            v46 = v45 ^ 1u;
            localeCopy = v57;
            v43 += v46;
          }

          v30 = [v29 stringByReplacingCharactersInRange:v41 withString:{v43, &stru_28862C2A0}];
          copyWithGregorianCalendar = [(TSULocale *)v6->_locale copyWithGregorianCalendar];
          [(TSUDateParser *)v6 p_addFormat:v30 locale:copyWithGregorianCalendar formatCategoryMap:v7];
        }

LABEL_33:
LABEL_34:
      }

      if (++v26 == 5)
      {
        v48 = TSUDefaultDateTimeFormat(v6->_locale);
        [(TSUDateParser *)v6 p_addFormat:v48 locale:v6->_locale formatCategoryMap:v7];

        v49 = TSUShortestCompleteDateOnlyFormat(v6->_locale);
        [(TSUDateParser *)v6 p_addFormat:v49 locale:v6->_locale formatCategoryMap:v7];

        v50 = TSUShortestCompleteTimeOnlyFormat(v6->_locale);
        [(TSUDateParser *)v6 p_addFormat:v50 locale:v6->_locale formatCategoryMap:v7];

        v51 = TSUShortestCompleteDateTimeFormat(v6->_locale);
        [(TSUDateParser *)v6 p_addFormat:v51 locale:v6->_locale formatCategoryMap:v7];

        v52 = TSUDefaultDateOnlyShortFormat(v6->_locale);
        [(TSUDateParser *)v6 p_addFormat:v52 locale:v6->_locale formatCategoryMap:v7];

        v53 = TSUDefaultDateOnlyMediumFormat(v6->_locale);
        [(TSUDateParser *)v6 p_addFormat:v53 locale:v6->_locale formatCategoryMap:v7];

        v54 = TSUDefaultTimeOnlyShortFormat(v6->_locale);
        [(TSUDateParser *)v6 p_addFormat:v54 locale:v6->_locale formatCategoryMap:v7];

        v55 = v6;
        break;
      }
    }
  }

  return v6;
}

- (id)formatStringsDictionary
{
  v22 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_formatCategories;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        initialPattern = [v10 initialPattern];
        [array addObject:initialPattern];
        formatStringsDictionary = [v10 formatStringsDictionary];
        [array2 addObject:formatStringsDictionary];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v19[0] = @"keys";
  v19[1] = @"values";
  v20[0] = array;
  v20[1] = array2;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  return v13;
}

- (TSUDateParser)initWithLocale:(id)locale usingLimitedFormats:(id)formats
{
  v24 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  formatsCopy = formats;
  v22.receiver = self;
  v22.super_class = TSUDateParser;
  v8 = [(TSUDateParser *)&v22 init];
  v9 = v8;
  if (v8)
  {
    [(TSUDateParser *)v8 _commonInitWithLocale:localeCopy];
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = formatsCopy;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(TSUDateParser *)v9 p_addFormat:*(*(&v18 + 1) + 8 * v15++) locale:v9->_locale formatCategoryMap:v10, v18];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v13);
    }

    v16 = v9;
  }

  return v9;
}

- (void)dealloc
{
  specialCaseFormatter = self->_specialCaseFormatter;
  if (specialCaseFormatter)
  {
    CFRelease(specialCaseFormatter);
  }

  v4.receiver = self;
  v4.super_class = TSUDateParser;
  [(TSUDateParser *)&v4 dealloc];
}

- (__CFDateFormatter)specialCaseDateFormatterForLocale:(id)locale
{
  localeCopy = locale;
  v5 = localeCopy;
  if (!self->_specialCaseFormatter)
  {
LABEL_5:
    specialCaseFormatter = sub_277032454(v5);
    self->_specialCaseFormatter = specialCaseFormatter;
    goto LABEL_6;
  }

  locale = [localeCopy locale];
  Locale = CFDateFormatterGetLocale(self->_specialCaseFormatter);

  specialCaseFormatter = self->_specialCaseFormatter;
  if (locale != Locale)
  {
    if (specialCaseFormatter)
    {
      CFRelease(self->_specialCaseFormatter);
    }

    goto LABEL_5;
  }

LABEL_6:

  return specialCaseFormatter;
}

- (id)allFormats
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  objectEnumerator = [(NSMutableArray *)self->_formatCategories objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v5 = nextObject;
    do
    {
      formatStringsDictionary = [v5 formatStringsDictionary];
      v6 = [formatStringsDictionary objectForKey:@"values"];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v26;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v26 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v25 + 1) + 8 * i);
            v21 = 0u;
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v12 = v11;
            v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v22;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v22 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  [v3 addObject:*(*(&v21 + 1) + 8 * j)];
                }

                v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
              }

              while (v14);
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v8);
      }

      nextObject2 = [objectEnumerator nextObject];

      v5 = nextObject2;
    }

    while (nextObject2);
  }

  return v3;
}

- (id)p_newDateFromStringTryingFormats:(id)formats locale:(id)locale formats:(id)a5 outSuccessfulFormatString:(id *)string perfect:(BOOL *)perfect
{
  v54 = *MEMORY[0x277D85DE8];
  formatsCopy = formats;
  localeCopy = locale;
  v13 = a5;
  if (!localeCopy)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateParser p_newDateFromStringTryingFormats:locale:formats:outSuccessfulFormatString:perfect:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateParser.m"];
    [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:303 isFatal:0 description:"A locale is now required here"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v16 = [(TSUDateParser *)self specialCaseDateFormatterForLocale:localeCopy];
  v17 = [(__CFString *)formatsCopy length];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v18 = v13;
  v19 = [v18 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v19)
  {

    v46 = 0;
    v37 = 0;
    v35 = 0;
    if (perfect)
    {
LABEL_37:
      *perfect = v35;
    }

    goto LABEL_38;
  }

  v39 = localeCopy;
  perfectCopy = perfect;
  v41 = 0;
  v46 = 0;
  v47 = *v50;
  stringCopy2 = string;
  v43 = v17;
  v44 = v18;
  while (2)
  {
    v21 = 0;
    v45 = v19;
    do
    {
      if (*v50 != v47)
      {
        objc_enumerationMutation(v18);
      }

      v22 = *(*(&v49 + 1) + 8 * v21);
      CFDateFormatterSetFormat(v16, v22);
      rangep.location = 0;
      rangep.length = v17;
      v23 = CFDateFormatterCreateDateFromString(0, v16, formatsCopy, &rangep);
      if (v23)
      {
        v24 = v23;
        if (rangep.location || rangep.length != v17)
        {
          v25 = v23;
LABEL_24:

          goto LABEL_25;
        }

        v25 = sub_277030634(v23, v22);

        if (stringCopy2)
        {
          v26 = v22;
          *stringCopy2 = v22;
        }

        StringWithDate = CFDateFormatterCreateStringWithDate(0, v16, v25);
        if (![(__CFString *)formatsCopy compare:StringWithDate options:1])
        {
          v19 = v25;
LABEL_33:

          v18 = v44;
          v35 = 1;
LABEL_34:
          localeCopy = v39;
          perfect = perfectCopy;
          v37 = v41;
          if (perfectCopy)
          {
            goto LABEL_37;
          }

          goto LABEL_38;
        }

        v19 = v25;
        if ([(__CFString *)v22 rangeOfString:@"yyyy"]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          tsu_stringByReplacing4DigitYearStringWith2DigitYearString = [(__CFString *)v22 tsu_stringByReplacing4DigitYearStringWith2DigitYearString];
          CFDateFormatterSetFormat(v16, tsu_stringByReplacing4DigitYearStringWith2DigitYearString);
          v29 = formatsCopy;
          v30 = CFDateFormatterCreateDateFromString(0, v16, formatsCopy, &rangep);
          v19 = sub_277030634(v30, v22);

          v31 = CFDateFormatterCreateStringWithDate(0, v16, v19);
          v32 = [(__CFString *)v29 compare:v31 options:1];

          formatsCopy = v29;
          stringCopy2 = string;

          if (!v32)
          {
            goto LABEL_33;
          }
        }

        if (v46)
        {

          if (!stringCopy2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (!stringCopy2)
          {
            v46 = v19;
            goto LABEL_23;
          }

          v33 = *stringCopy2;

          v46 = v19;
          v41 = v33;
        }

        *stringCopy2 = 0;
LABEL_23:

        v17 = v43;
        v18 = v44;
        v19 = v45;
        goto LABEL_24;
      }

LABEL_25:
      v21 = (v21 + 1);
    }

    while (v19 != v21);
    v34 = [v18 countByEnumeratingWithState:&v49 objects:v53 count:16];
    v19 = v34;
    if (v34)
    {
      continue;
    }

    break;
  }

  v35 = v46;
  if (!v46)
  {
    v46 = 0;
    v19 = 0;
    goto LABEL_34;
  }

  v19 = v46;
  v36 = stringCopy2;
  perfect = perfectCopy;
  v37 = v41;
  v46 = v19;
  if (v36)
  {
    v37 = v41;
    v35 = 0;
    *v36 = v37;
  }

  else
  {
    v35 = 0;
  }

  localeCopy = v39;
  if (perfectCopy)
  {
    goto LABEL_37;
  }

LABEL_38:

  return v19;
}

- (id)newDateFromString:(id)string preferredFormatString:(id)formatString successfulFormatString:(id *)successfulFormatString tryAggressiveFormats:(BOOL)formats
{
  formatsCopy = formats;
  v36[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  formatStringCopy = formatString;
  if (stringCopy && [stringCopy length])
  {
    v12 = [stringCopy mutableCopy];
    CFStringTransform(v12, 0, *MEMORY[0x277CBF0A8], 0);
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v14 = [(__CFString *)v12 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v15 = [v14 stringByReplacingOccurrencesOfString:@"\u200F" withString:&stru_28862C2A0];

    v16 = [v15 stringByReplacingOccurrencesOfString:@"\u200E" withString:&stru_28862C2A0];

    v35 = 0;
    v33 = v12;
    v34 = formatStringCopy;
    if (formatStringCopy)
    {
      if (([&stru_28862C2A0 isEqualToString:formatStringCopy] & 1) == 0)
      {
        v36[0] = formatStringCopy;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
        v20 = [(TSUDateParser *)self p_newDateFromStringTryingFormats:v16 locale:self->_locale formats:v19 outSuccessfulFormatString:successfulFormatString perfect:&v35];
        v17 = v20;
        if (!v20)
        {
          goto LABEL_13;
        }

        if (v35)
        {
          v18 = v20;
LABEL_39:

          goto LABEL_40;
        }

        if (successfulFormatString)
        {
          formatStringCopy = *successfulFormatString;
          *successfulFormatString = 0;
        }

        else
        {
LABEL_13:
          formatStringCopy = 0;
        }

LABEL_15:
        v31 = formatsCopy;
        objectEnumerator = [(NSMutableArray *)self->_formatCategories objectEnumerator];
        nextObject = [objectEnumerator nextObject];
        if (nextObject)
        {
          while (1)
          {
            v23 = [nextObject newDateFromString:v16 forceAllowAMPM:self->_isJapaneseLocale successfulFormatString:successfulFormatString perfect:&v35];
            if (v23)
            {
              v24 = v23;
              if (v35)
              {
                nextObject2 = nextObject;
                goto LABEL_38;
              }

              if (v17)
              {

                if (!successfulFormatString)
                {
                  goto LABEL_24;
                }
              }

              else
              {
                if (!successfulFormatString)
                {
                  v17 = v23;
                  goto LABEL_24;
                }

                v25 = *successfulFormatString;

                v17 = v24;
                formatStringCopy = v25;
              }

              *successfulFormatString = 0;
            }

LABEL_24:
            nextObject2 = [objectEnumerator nextObject];

            nextObject = nextObject2;
            if (!nextObject2)
            {
              goto LABEL_28;
            }
          }
        }

        nextObject2 = 0;
LABEL_28:
        if (v17)
        {
          v17 = v17;
          if (successfulFormatString)
          {
            v27 = formatStringCopy;
            *successfulFormatString = formatStringCopy;
          }

          v24 = v17;
        }

        else if (v31)
        {
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"yy", 0}];
          decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
          v29 = [v16 rangeOfCharacterFromSet:decimalDigitCharacterSet];

          v24 = 0;
          if (v29 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v24 = [(TSUDateParser *)self p_newDateFromStringTryingFormats:v16 locale:self->_locale formats:v32 outSuccessfulFormatString:successfulFormatString perfect:&v35];
          }

          v17 = 0;
        }

        else
        {
          v17 = 0;
          v24 = 0;
        }

LABEL_38:
        v18 = v24;

        v19 = v17;
        v12 = v33;
        formatStringCopy = v34;
        goto LABEL_39;
      }

      formatStringCopy = 0;
    }

    v17 = 0;
    goto LABEL_15;
  }

  v18 = 0;
LABEL_40:

  return v18;
}

- (void)p_addFormat:(id)format locale:(id)locale formatCategoryMap:(id)map
{
  formatCopy = format;
  localeCopy = locale;
  mapCopy = map;
  v13 = 0;
  v11 = [(TSUDateParser *)self p_initialPatternParsingFormat:formatCopy separator:&v13];
  v12 = [mapCopy objectForKey:v11];
  if (!v12)
  {
    v12 = [[TSUDateFormatCategory alloc] initWithInitialPattern:v11 locale:localeCopy];
    [(NSMutableArray *)self->_formatCategories addObject:v12];
    [mapCopy setObject:v12 forKey:v11];
  }

  [(TSUDateFormatCategory *)v12 addSeparator:v13 format:formatCopy locale:localeCopy];
}

- (id)p_initialPatternParsingFormat:(id)format separator:(unsigned __int16 *)separator
{
  v5 = [format stringByReplacingOccurrencesOfString:@"\u200F" withString:&stru_28862C2A0];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"\u200E" withString:&stru_28862C2A0];

  if (qword_280A63908 != -1)
  {
    sub_277112D80();
  }

  v7 = [v6 length];
  if (!v7)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateParser p_initialPatternParsingFormat:separator:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateParser.m"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:524 isFatal:0 description:"Zero length date format"];

    +[TSUAssertionHandler logBacktraceThrottled];
    *separator = 0;
    v15 = v6;
    goto LABEL_19;
  }

  v8 = v7;
  v9 = [TSUFormattingSymbols locationOfFirstDateFormatCharacter:v6];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateParser p_initialPatternParsingFormat:separator:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateParser.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:543 isFatal:0 description:"We shouldn't be trying to parse against useless formats."];

    +[TSUAssertionHandler logBacktraceThrottled];
    v12 = v8;
  }

  else
  {
    v16 = [v6 rangeOfCharacterFromSet:qword_280A63900 options:0 range:{v9, v8 - v9}];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v8;
    }

    else
    {
      v12 = v16;
    }

    if (v12 < v8)
    {
      v17 = [v6 characterAtIndex:v12];
      if (v17 == 34)
      {
        v18 = 39;
      }

      else
      {
        v18 = v17;
      }

      *separator = v18;
      if (v18 == 39)
      {
        if (v12 + 1 >= v8)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateParser p_initialPatternParsingFormat:separator:]"];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateParser.m"];
          [TSUAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:561 isFatal:0 description:"No character following quote character"];

          +[TSUAssertionHandler logBacktraceThrottled];
        }

        else
        {
          *separator = [v6 characterAtIndex:?];
        }
      }

      goto LABEL_18;
    }
  }

  *separator = 0;
LABEL_18:
  v15 = [v6 substringToIndex:v12];
LABEL_19:
  v19 = v15;

  return v19;
}

@end