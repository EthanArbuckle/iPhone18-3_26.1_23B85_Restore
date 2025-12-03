@interface TSUNumberFormatter
+ (id)defaultFormatStringForValueType:(int)type;
+ (id)defaultFormatStringForValueType:(int)type negativeStyle:(unsigned __int8)style;
+ (id)formatString:(id)string transformedForNegativeStyle:(unsigned __int8)style placeMinusSignAfterRLM:(BOOL)m;
+ (id)formatterForLocale:(id)locale;
+ (id)stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand:(id)understand;
+ (int)positionOfMinusSignInNumberFormatSubpattern:(id)subpattern;
+ (int)positionOfSymbol:(id)symbol inNumberFormatSubpattern:(id)subpattern;
+ (void)formatString:(id)string replaceOccurencesOfUnescapedString:(id)unescapedString withString:(id)withString;
+ (void)initialize;
+ (void)lock;
- (BOOL)currencyFromString:(id)string additionalCurrencyCode:(id)code value:(double *)value formatString:(id *)formatString currencyCode:(id *)currencyCode;
- (BOOL)decimalFromString:(id)string value:(double *)value formatString:(id *)formatString;
- (BOOL)fractionFromString:(id)string value:(double *)value;
- (BOOL)p_valueFromString:(id)string formatters:(id)formatters value:(double *)value formatString:(id *)formatString;
- (BOOL)percentageFromString:(id)string value:(double *)value formatString:(id *)formatString;
- (BOOL)scientificFromString:(id)string value:(double *)value formatString:(id *)formatString;
- (TSUNumberFormatter)initWithLocale:(id)locale;
- (id)defaultFormatStringForValueType:(int)type;
- (id)defaultFormatStringForValueType:(int)type negativeStyle:(unsigned __int8)style;
- (id)p_createDictionaryOfCurrencyFormattersForCurrencies:(id)currencies;
- (id)p_currencyFormatters;
- (id)p_decimalFormatters;
- (id)p_findCurrencySymbolInString:(id)string additionalCurrencyCode:(id)code successfullString:(id *)successfullString currencyCode:(id *)currencyCode;
- (id)p_percentageFormatters;
- (id)p_scientificFormatters;
- (void)p_numberPreferencesChanged:(id)changed;
@end

@implementation TSUNumberFormatter

+ (void)initialize
{
  v3 = objc_opt_new();
  v4 = qword_280A65CA0;
  qword_280A65CA0 = v3;

  v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v6 = qword_280A65CA8;
  qword_280A65CA8 = v5;

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___TSUNumberFormatter;
  objc_msgSendSuper2(&v7, sel_initialize);
}

+ (void)lock
{
  if (qword_280A639E0 != -1)
  {
    sub_277112DF8();
  }

  pthread_mutex_lock(&stru_280A639E8);
}

+ (id)stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand:(id)understand
{
  understandCopy = understand;
  if (qword_280A63A30 != -1)
  {
    sub_277112E0C();
  }

  v4 = [understandCopy rangeOfCharacterFromSet:qword_280A63A28];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = understandCopy;
  }

  else
  {
    v6 = v4;
    v7 = [understandCopy mutableCopy];
    v8 = [v7 length];
    v9 = v8 - v6;
    [v7 replaceOccurrencesOfString:@"−" withString:@"-" options:0 range:{v6, v8 - v6}];
    [v7 replaceOccurrencesOfString:@"﹣" withString:@"-" options:0 range:{v6, v9}];
    [v7 replaceOccurrencesOfString:@"－" withString:@"-" options:0 range:{v6, v9}];
    [v7 replaceOccurrencesOfString:@"﹢" withString:@"+" options:0 range:{v6, v9}];
    [v7 replaceOccurrencesOfString:@"＋" withString:@"+" options:0 range:{v6, v9}];
    v5 = [MEMORY[0x277CCACA8] stringWithString:v7];
  }

  return v5;
}

+ (int)positionOfSymbol:(id)symbol inNumberFormatSubpattern:(id)subpattern
{
  subpatternCopy = subpattern;
  v6 = [subpatternCopy rangeOfString:symbol];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern = [subpatternCopy tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];
    v7 = tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern != 0x7FFFFFFFFFFFFFFFLL && v8 >= tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern;
  }

  return v7;
}

+ (int)positionOfMinusSignInNumberFormatSubpattern:(id)subpattern
{
  v4 = MEMORY[0x277CCACA8];
  subpatternCopy = subpattern;
  v6 = [v4 stringWithFormat:@"-"];
  LODWORD(self) = [self positionOfSymbol:v6 inNumberFormatSubpattern:subpatternCopy];

  return self;
}

+ (id)formatString:(id)string transformedForNegativeStyle:(unsigned __int8)style placeMinusSignAfterRLM:(BOOL)m
{
  mCopy = m;
  styleCopy = style;
  stringCopy = string;
  string = [MEMORY[0x277CCAB68] string];
  v10 = string;
  if (!styleCopy)
  {
    tsu_positiveSubpatternOfNumberFormatPattern = [stringCopy tsu_positiveSubpatternOfNumberFormatPattern];
    [v10 appendString:tsu_positiveSubpatternOfNumberFormatPattern];

    [v10 appendString:@";"];
    tsu_positiveSubpatternOfNumberFormatPattern2 = [stringCopy tsu_positiveSubpatternOfNumberFormatPattern];
    v18 = [tsu_positiveSubpatternOfNumberFormatPattern2 mutableCopy];

    [self formatString:v18 replaceOccurencesOfUnescapedString:@"-" withString:&stru_28862C2A0];
    if (mCopy && [(__CFString *)v18 containsString:@"¤"]&& (v19 = [(__CFString *)v18 rangeOfString:@"\u200F"], v19 != 0x7FFFFFFFFFFFFFFFLL))
    {
      [(__CFString *)v18 insertString:@"-" atIndex:v19 + v20];
    }

    else
    {
      tsu_negativeSubpatternOfNumberFormatPattern = [stringCopy tsu_negativeSubpatternOfNumberFormatPattern];
      v22 = [TSUNumberFormatter positionOfMinusSignInNumberFormatSubpattern:tsu_negativeSubpatternOfNumberFormatPattern];

      if (v22)
      {
        [v10 appendString:v18];
        if (v22 != 1)
        {
LABEL_18:

          goto LABEL_19;
        }

        v23 = @"-";
        v24 = v10;
LABEL_17:
        [v24 appendString:v23];
        goto LABEL_18;
      }

      [v10 appendString:@"-"];
    }

    v24 = v10;
    v23 = v18;
    goto LABEL_17;
  }

  if (styleCopy == 1)
  {
    tsu_positiveSubpatternOfNumberFormatPattern3 = [stringCopy tsu_positiveSubpatternOfNumberFormatPattern];
    [v10 appendString:tsu_positiveSubpatternOfNumberFormatPattern3];

    [v10 appendString:@";"];
    tsu_positiveSubpatternOfNumberFormatPattern4 = [stringCopy tsu_positiveSubpatternOfNumberFormatPattern];
    v13 = [tsu_positiveSubpatternOfNumberFormatPattern4 mutableCopy];

    [self formatString:v13 replaceOccurencesOfUnescapedString:@"-" withString:&stru_28862C2A0];
    v14 = v10;
    v15 = v13;
LABEL_12:
    [v14 appendString:v15];

    goto LABEL_19;
  }

  if ((styleCopy & 0xFE) == 2)
  {
    tsu_positiveSubpatternOfNumberFormatPattern5 = [stringCopy tsu_positiveSubpatternOfNumberFormatPattern];
    [v10 appendString:tsu_positiveSubpatternOfNumberFormatPattern5];

    [v10 appendString:@";"];
    tsu_positiveSubpatternOfNumberFormatPattern6 = [stringCopy tsu_positiveSubpatternOfNumberFormatPattern];
    v13 = [tsu_positiveSubpatternOfNumberFormatPattern6 mutableCopy];

    [self formatString:v13 replaceOccurencesOfUnescapedString:@"-" withString:&stru_28862C2A0];
    objc_msgSend(v10, "appendString:", @"(");
    [v10 appendString:v13];
    v15 = @"");
    v14 = v10;
    goto LABEL_12;
  }

  [string appendString:stringCopy];
LABEL_19:

  return v10;
}

+ (void)formatString:(id)string replaceOccurencesOfUnescapedString:(id)unescapedString withString:(id)withString
{
  stringCopy = string;
  unescapedStringCopy = unescapedString;
  withStringCopy = withString;
  tsu_newRangesOfEscapedCharactersInNumberFormatPattern = [stringCopy tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  v10 = [stringCopy length];
  if ([tsu_newRangesOfEscapedCharactersInNumberFormatPattern count])
  {
    v11 = [tsu_newRangesOfEscapedCharactersInNumberFormatPattern objectAtIndex:0];
    [stringCopy replaceOccurrencesOfString:unescapedStringCopy withString:withStringCopy options:0 range:{0, objc_msgSend(v11, "rangeValue")}];

    if ([tsu_newRangesOfEscapedCharactersInNumberFormatPattern count] >= 2)
    {
      v12 = 1;
      do
      {
        v13 = [stringCopy length];
        v14 = [tsu_newRangesOfEscapedCharactersInNumberFormatPattern objectAtIndex:v12 - 1];
        rangeValue = [v14 rangeValue];
        v17 = v16;

        v18 = [tsu_newRangesOfEscapedCharactersInNumberFormatPattern objectAtIndex:v12];
        rangeValue2 = [v18 rangeValue];

        [stringCopy replaceOccurrencesOfString:unescapedStringCopy withString:withStringCopy options:0 range:{v17 + rangeValue - v10 + v13, rangeValue2 - (v17 + rangeValue)}];
        ++v12;
      }

      while (v12 < [tsu_newRangesOfEscapedCharactersInNumberFormatPattern count]);
    }

    lastObject = [tsu_newRangesOfEscapedCharactersInNumberFormatPattern lastObject];
    rangeValue3 = [lastObject rangeValue];
    v23 = v22;

    v24 = rangeValue3 + v23;
    v25 = [stringCopy length] - (rangeValue3 + v23);
  }

  else
  {
    v25 = [stringCopy length];
    v24 = 0;
  }

  [stringCopy replaceOccurrencesOfString:unescapedStringCopy withString:withStringCopy options:0 range:{v24, v25}];
}

+ (id)defaultFormatStringForValueType:(int)type negativeStyle:(unsigned __int8)style
{
  styleCopy = style;
  v5 = *&type;
  v6 = [self formatterForLocale:0];
  v7 = [v6 defaultFormatStringForValueType:v5 negativeStyle:styleCopy];

  return v7;
}

+ (id)defaultFormatStringForValueType:(int)type
{
  v3 = *&type;
  v4 = [self formatterForLocale:0];
  v5 = [v4 defaultFormatStringForValueType:v3];

  return v5;
}

+ (id)formatterForLocale:(id)locale
{
  localeCopy = locale;
  if (localeCopy)
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];
    v7 = sub_277042268(localeCopy);
    v8 = [threadDictionary objectForKey:v7];
    if (!v8)
    {
      v8 = [[self alloc] initWithLocale:localeCopy];
      [threadDictionary setObject:v8 forKey:v7];
      if ([localeCopy isAutoUpdating])
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = sub_277044EF8;
        v18[3] = &unk_27A701A78;
        v9 = currentThread;
        v19 = v9;
        v10 = v8;
        v20 = v10;
        v11 = sub_2770382CC(v18);
        [threadDictionary setObject:v11 forKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v13 = *MEMORY[0x277CCA6F8];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_277044F9C;
        v16[3] = &unk_27A701AA0;
        v8 = v10;
        v17 = v8;
        v14 = [defaultCenter tsu_addObserverForName:v13 object:v9 queue:0 usingBlock:v16];

        [threadDictionary setObject:v14 forKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
      }
    }
  }

  else
  {
    currentThread = +[TSULocale currentLocale];
    v8 = [self formatterForLocale:currentThread];
  }

  return v8;
}

- (TSUNumberFormatter)initWithLocale:(id)locale
{
  localeCopy = locale;
  v12.receiver = self;
  v12.super_class = TSUNumberFormatter;
  v6 = [(TSUNumberFormatter *)&v12 init];
  if (v6)
  {
    if (!localeCopy)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormatter initWithLocale:]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormatter.m"];
      [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1371 isFatal:0 description:"TSUNumberFormatter cannot be initialized without a locale. Please check comments near this assertion or <rdar://problem/23557988> for details."];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    objc_storeStrong(&v6->_locale, locale);
    formattingSymbols = [localeCopy formattingSymbols];
    formattingSymbols = v6->_formattingSymbols;
    v6->_formattingSymbols = formattingSymbols;
  }

  return v6;
}

- (void)p_numberPreferencesChanged:(id)changed
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [threadDictionary objectForKey:@"TSUNumberFormatterThreadDictionaryKey"];
  if (v5 != self)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormatter p_numberPreferencesChanged:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1384 isFatal:0 description:"Registered wrong date formatter for date preference change notification"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  [threadDictionary removeObjectForKey:@"TSUNumberFormatterThreadDictionaryKey"];
  v8 = [threadDictionary objectForKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
  sub_27703EA60(v8);

  [threadDictionary removeObjectForKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
  v9 = [threadDictionary objectForKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:v9];

  [threadDictionary removeObjectForKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
}

- (BOOL)decimalFromString:(id)string value:(double *)value formatString:(id *)formatString
{
  stringCopy = string;
  p_decimalFormatters = [(TSUNumberFormatter *)self p_decimalFormatters];
  LOBYTE(formatString) = [(TSUNumberFormatter *)self p_valueFromString:stringCopy formatters:p_decimalFormatters value:value formatString:formatString];

  return formatString;
}

- (BOOL)currencyFromString:(id)string additionalCurrencyCode:(id)code value:(double *)value formatString:(id *)formatString currencyCode:(id *)currencyCode
{
  codeCopy = code;
  v38 = 0;
  v39 = 0;
  v14 = [(TSUNumberFormatter *)self p_findCurrencySymbolInString:string additionalCurrencyCode:codeCopy successfullString:&v39 currencyCode:&v38];
  v15 = v39;
  v16 = v38;
  v17 = v16;
  v18 = 0;
  if (v14 && v16)
  {
    valueCopy = value;
    p_currencyFormatters = [(TSUNumberFormatter *)self p_currencyFormatters];
    array = [p_currencyFormatters objectForKeyedSubscript:v17];
    if (!array)
    {
      formatStringCopy = formatString;
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormatter currencyFromString:additionalCurrencyCode:value:formatString:currencyCode:]"];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormatter.m"];
      [TSUAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:1422 isFatal:0 description:"No currency formatters found for currencyCode:%{public}@ locale:%{public}@", v17, self->_locale];

      formatString = formatStringCopy;
      +[TSUAssertionHandler logBacktraceThrottled];
      array = [MEMORY[0x277CBEA60] array];
    }

    v22 = [(TSUNumberFormatter *)self p_valueFromString:v15 formatters:array value:valueCopy formatString:formatString];
    v18 = v22;
    if (!codeCopy || v22)
    {
      goto LABEL_15;
    }

    if (self->_additionalCurrencyCode)
    {
      if ([codeCopy isEqualToString:?])
      {
LABEL_12:
        formatStringCopy2 = formatString;
        v29 = self->_additionalCurrencyCode;

        array2 = [(NSDictionary *)self->_additionalCurrencyCodeFormatters objectForKey:self->_additionalCurrencyCode];

        if (!array2)
        {
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormatter currencyFromString:additionalCurrencyCode:value:formatString:currencyCode:]"];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormatter.m"];
          [TSUAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:1445 isFatal:0 description:"No currency formatters found for additional currencyCode:%{public}@ locale:%{public}@", self->_additionalCurrencyCode, self->_locale];

          +[TSUAssertionHandler logBacktraceThrottled];
          array2 = [MEMORY[0x277CBEA60] array];
        }

        v18 = [(TSUNumberFormatter *)self p_valueFromString:v15 formatters:array2 value:valueCopy formatString:formatStringCopy2];
        v17 = v29;
        array = array2;
LABEL_15:

        goto LABEL_16;
      }

      additionalCurrencyCode = self->_additionalCurrencyCode;
    }

    else
    {
      additionalCurrencyCode = 0;
    }

    self->_additionalCurrencyCode = 0;

    additionalCurrencyCodeFormatters = self->_additionalCurrencyCodeFormatters;
    self->_additionalCurrencyCodeFormatters = 0;

    objc_storeStrong(&self->_additionalCurrencyCode, code);
    v25 = [MEMORY[0x277CBEA60] arrayWithObject:self->_additionalCurrencyCode];
    v26 = [(TSUNumberFormatter *)self p_createDictionaryOfCurrencyFormattersForCurrencies:v25];
    v27 = self->_additionalCurrencyCodeFormatters;
    self->_additionalCurrencyCodeFormatters = v26;

    goto LABEL_12;
  }

LABEL_16:
  if (currencyCode)
  {
    if (v18)
    {
      v33 = v17;
    }

    else
    {
      v33 = 0;
    }

    *currencyCode = v33;
  }

  return v18;
}

- (BOOL)percentageFromString:(id)string value:(double *)value formatString:(id *)formatString
{
  stringCopy = string;
  p_percentageFormatters = [(TSUNumberFormatter *)self p_percentageFormatters];
  LOBYTE(formatString) = [(TSUNumberFormatter *)self p_valueFromString:stringCopy formatters:p_percentageFormatters value:value formatString:formatString];

  return formatString;
}

- (BOOL)scientificFromString:(id)string value:(double *)value formatString:(id *)formatString
{
  stringCopy = string;
  p_scientificFormatters = [(TSUNumberFormatter *)self p_scientificFormatters];
  LOBYTE(formatString) = [(TSUNumberFormatter *)self p_valueFromString:stringCopy formatters:p_scientificFormatters value:value formatString:formatString];

  return formatString;
}

- (BOOL)fractionFromString:(id)string value:(double *)value
{
  stringCopy = string;
  v7 = [stringCopy rangeOfString:@"/"];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0)
  {
    v12 = 0;
    if (!value)
    {
LABEL_20:
      v10 = 0;
      goto LABEL_40;
    }
  }

  else
  {
    v11 = v7;
    v12 = [stringCopy substringWithRange:{0, v7}];
    v13 = v11 + 1;
    if (v13 < [stringCopy length])
    {
      v14 = [stringCopy substringWithRange:{v13, objc_msgSend(stringCopy, "length") - v13}];
      if (!self->_fractionFormatter)
      {
        v15 = [TSUDecimalFormatter createHarmonizedDecimalFormatterOfStyle:1 locale:self->_locale formattingSymbols:self->_formattingSymbols];
        fractionFormatter = self->_fractionFormatter;
        self->_fractionFormatter = v15;
      }

      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v18 = [v12 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
      v19 = [v14 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
      v20 = [v18 rangeOfString:@" "];
      if (v20 == 0x7FFFFFFFFFFFFFFFLL || !v21)
      {
        v23 = 0;
        v36 = 0;
        v37 = 0;
        v39 = 0.0;
        v40 = 0.0;
        v38 = 0.0;
      }

      else
      {
        v22 = v20;
        v23 = [v18 substringWithRange:{0, v20}];
        v24 = v22 + 1;
        if (v24 >= [v18 length])
        {
          v10 = 0;
          if (value)
          {
            *value = 0.0;
          }

          goto LABEL_39;
        }

        v35 = v19;
        v25 = [v18 substringWithRange:{v24, objc_msgSend(v18, "length") - v24}];
        v26 = [v23 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
        v37 = v25;
        v27 = [v25 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
        v39 = 0.0;
        v40 = 0.0;
        v38 = 0.0;
        v36 = v27;
        if (v26)
        {
          v28 = v27;
          if (!sub_277043FE0(self->_fractionFormatter, v26, &v38) || (v29 = floor(v38), vabdd_f64(v38, v29) > 0.00001))
          {
            v10 = 0;
            v30 = 0.0;
            v19 = v35;
            if (!value)
            {
              goto LABEL_38;
            }

            goto LABEL_37;
          }

          v33 = sub_277043FE0(self->_fractionFormatter, v28, &v40);
          v19 = v35;
          if ((v33 & 1) == 0)
          {
LABEL_36:
            v10 = 0;
            v30 = 0.0;
            if (!value)
            {
LABEL_38:

LABEL_39:
              goto LABEL_40;
            }

LABEL_37:
            *value = v30;
            goto LABEL_38;
          }

LABEL_24:
          if ((sub_277043FE0(self->_fractionFormatter, v19, &v39) & 1) != 0 && v39 != 0.0)
          {
            v31 = v40;
            if (v29 < 0.0)
            {
              v31 = -v40;
              v40 = -v40;
            }

            v32 = v29 + v31 / v39;
            if (__fpclassifyd(v32) != 2 && __fpclassifyd(v32) != 1)
            {
              if (!value)
              {
                v10 = 1;
                goto LABEL_38;
              }

              v30 = v29 + v40 / v39;
              v10 = 1;
              goto LABEL_37;
            }
          }

          goto LABEL_36;
        }

        v19 = v35;
      }

      v26 = 0;
      if ((sub_277043FE0(self->_fractionFormatter, v18, &v40) & 1) == 0)
      {
        goto LABEL_36;
      }

      v29 = 0.0;
      goto LABEL_24;
    }

    if (!value)
    {
      goto LABEL_20;
    }
  }

  v10 = 0;
  *value = 0.0;
LABEL_40:

  return v10;
}

- (BOOL)p_valueFromString:(id)string formatters:(id)formatters value:(double *)value formatString:(id *)formatString
{
  stringCopy = string;
  formattersCopy = formatters;
  v11 = formattersCopy;
  if (formattersCopy)
  {
    v12 = [formattersCopy count];
    +[TSUNumberFormatter lock];
    if (v12)
    {
      v13 = 0;
      while (1)
      {
        v14 = [v11 objectAtIndex:v13];
        if (sub_277043FE0(v14, stringCopy, value))
        {
          break;
        }

        if (v12 == ++v13)
        {
          goto LABEL_6;
        }
      }

      if (formatString)
      {
        *formatString = [v14 format];
      }

      v15 = 1;
    }

    else
    {
LABEL_6:
      v15 = 0;
    }

    +[TSUNumberFormatter unlock];
  }

  else
  {
    v15 = 0;
  }

  if (formatString && !v15)
  {
    *formatString = 0;
  }

  return v15;
}

- (id)p_findCurrencySymbolInString:(id)string additionalCurrencyCode:(id)code successfullString:(id *)successfullString currencyCode:(id *)currencyCode
{
  stringCopy = string;
  codeCopy = code;
  v50 = stringCopy;
  v48 = [stringCopy length];
  v40 = codeCopy;
  if (v48)
  {
    +[TSUNumberFormatter lock];
    v11 = 8;
    if (v48 < 8)
    {
      v11 = v48;
    }

    v49 = v11;
    v12 = sub_277043AA0(self->_locale, codeCopy);
    v13 = [v12 count];
    if (v13)
    {
      successfullStringCopy = successfullString;
      currencyCodeCopy = currencyCode;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v45 = v48 - v49;
      v46 = 0;
      v43 = v13;
      v44 = v12;
      while (1)
      {
        v17 = [v12 objectAtIndex:v15];
        formattingSymbols = [(TSULocale *)self->_locale formattingSymbols];
        v19 = [formattingSymbols currencySymbolForCurrencyCode:v17];

        v20 = [v19 stringByReplacingOccurrencesOfString:@"\u200F" withString:&stru_28862C2A0];
        v21 = [v50 rangeOfString:v20 options:0 range:{0, v49}];
        v23 = v22;
        v25 = 0;
        v24 = 0x7FFFFFFFFFFFFFFFLL;
        if (v48 >= 1)
        {
          v24 = [v50 rangeOfString:v20 options:0 range:{v45, v49}];
        }

        if (v21 != 0x7FFFFFFFFFFFFFFFLL || v24 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v21 != 0x7FFFFFFFFFFFFFFFLL && v23 > v46)
          {
            break;
          }

          if (v24 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v23 = v25;
            if (v25 > v46)
            {
              break;
            }
          }
        }

        v29 = v14;
        formattingSymbols2 = [(TSULocale *)self->_locale formattingSymbols];
        v28 = [formattingSymbols2 halfwidthCurrencySymbolForCurrencyCode:v17];

        v31 = [v50 rangeOfString:v28 options:0 range:{0, v49}];
        v33 = v32;
        v23 = 0;
        v34 = 0x7FFFFFFFFFFFFFFFLL;
        if (v48 >= 1)
        {
          v34 = [v50 rangeOfString:v28 options:0 range:{v45, v49}];
          v23 = v35;
        }

        if (v31 != 0x7FFFFFFFFFFFFFFFLL || v34 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v31 != 0x7FFFFFFFFFFFFFFFLL && v33 > v46)
          {
            v23 = v33;
            v34 = v31;
LABEL_27:
            v27 = [v50 stringByReplacingCharactersInRange:v34 withString:{v23, v20}];

            v14 = v29;
LABEL_28:

            v36 = v20;
            if (successfullStringCopy)
            {
              v37 = v27;
              *successfullStringCopy = v27;
            }

            if (currencyCodeCopy)
            {
              v38 = v17;
              *currencyCodeCopy = v17;
            }

            v46 = v23;
            v16 = v27;
            v14 = v36;
            goto LABEL_33;
          }

          if (v34 != 0x7FFFFFFFFFFFFFFFLL && v23 > v46)
          {
            goto LABEL_27;
          }
        }

        v14 = v29;
LABEL_33:

        ++v15;
        v12 = v44;
        if (v43 == v15)
        {
          goto LABEL_37;
        }
      }

      v27 = v50;
      v28 = v16;
      goto LABEL_28;
    }

    v16 = 0;
    v14 = 0;
LABEL_37:

    +[TSUNumberFormatter unlock];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)defaultFormatStringForValueType:(int)type negativeStyle:(unsigned __int8)style
{
  if (style >= 4u)
  {
    styleCopy = 4;
  }

  else
  {
    styleCopy = style;
  }

  v6 = TSUFormatTypeFromTSUNumberValueType(type);
  formattingSymbols = self->_formattingSymbols;

  return [(TSUFormattingSymbols *)formattingSymbols patternStringForNumberStyle:v6 negativeStyle:styleCopy];
}

- (id)defaultFormatStringForValueType:(int)type
{
  v4 = TSUFormatTypeFromTSUNumberValueType(type);
  formattingSymbols = self->_formattingSymbols;

  return [(TSUFormattingSymbols *)formattingSymbols patternStringForNumberStyle:v4 negativeStyle:4];
}

- (id)p_createDictionaryOfCurrencyFormattersForCurrencies:(id)currencies
{
  currenciesCopy = currencies;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(TSULocale *)self->_locale createHarmonizedDecimalFormatterOfStyle:2];
  [v7 setExponentSymbol:@"xyzzyqghbv&q"];
  format = [v7 format];
  tsu_positiveSubpatternOfNumberFormatPattern = [format tsu_positiveSubpatternOfNumberFormatPattern];
  tsu_numberPortionOfNumberFormatSubpattern = [tsu_positiveSubpatternOfNumberFormatPattern tsu_numberPortionOfNumberFormatSubpattern];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@", tsu_numberPortionOfNumberFormatSubpattern];
  [v6 addObject:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@- ¤%@", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤", tsu_numberPortionOfNumberFormatSubpattern];
  [v6 addObject:v12];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤- %@¤", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v13];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@¤-%@", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v14];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@(¤%@)", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v15];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@¤(%@)", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v16];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤(%@¤)", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v17];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤(%@)¤", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v18];

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@¤%@-", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v19];

  v20 = [currenciesCopy count];
  if (v20 >= 1)
  {
    v21 = v20;
    for (i = 0; i != v21; ++i)
    {
      v23 = [currenciesCopy objectAtIndex:i];
      v24 = sub_27704630C(self->_locale, v6, v23);
      [dictionary setObject:v24 forKey:v23];
    }
  }

  return dictionary;
}

- (id)p_decimalFormatters
{
  decimalFormatters = self->_decimalFormatters;
  if (!decimalFormatters)
  {
    +[TSUNumberFormatter lock];
    if (!self->_decimalFormatters)
    {
      v4 = sub_277043B88(self->_locale);
      __dmb(0xBu);
      v5 = self->_decimalFormatters;
      self->_decimalFormatters = v4;
    }

    +[TSUNumberFormatter unlock];
    decimalFormatters = self->_decimalFormatters;
  }

  return decimalFormatters;
}

- (id)p_currencyFormatters
{
  currencyFormatters = self->_currencyFormatters;
  if (!currencyFormatters)
  {
    +[TSUNumberFormatter lock];
    if (!self->_currencyFormatters)
    {
      v4 = sub_277043AA0(self->_locale, 0);
      v5 = [(TSUNumberFormatter *)self p_createDictionaryOfCurrencyFormattersForCurrencies:v4];

      __dmb(0xBu);
      v6 = self->_currencyFormatters;
      self->_currencyFormatters = v5;
    }

    +[TSUNumberFormatter unlock];
    currencyFormatters = self->_currencyFormatters;
  }

  return currencyFormatters;
}

- (id)p_percentageFormatters
{
  percentageFormatters = self->_percentageFormatters;
  if (!percentageFormatters)
  {
    +[TSUNumberFormatter lock];
    if (!self->_percentageFormatters)
    {
      v4 = sub_277043D5C(self->_locale);
      __dmb(0xBu);
      v5 = self->_percentageFormatters;
      self->_percentageFormatters = v4;
    }

    +[TSUNumberFormatter unlock];
    percentageFormatters = self->_percentageFormatters;
  }

  return percentageFormatters;
}

- (id)p_scientificFormatters
{
  scientificFormatters = self->_scientificFormatters;
  if (!scientificFormatters)
  {
    +[TSUNumberFormatter lock];
    if (!self->_scientificFormatters)
    {
      v4 = sub_277043E74(self->_locale);
      __dmb(0xBu);
      v5 = self->_scientificFormatters;
      self->_scientificFormatters = v4;
    }

    +[TSUNumberFormatter unlock];
    scientificFormatters = self->_scientificFormatters;
  }

  return scientificFormatters;
}

@end