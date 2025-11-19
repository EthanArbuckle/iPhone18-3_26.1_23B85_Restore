@interface TSUNumberFormatter
+ (id)defaultFormatStringForValueType:(int)a3;
+ (id)defaultFormatStringForValueType:(int)a3 negativeStyle:(unsigned __int8)a4;
+ (id)formatString:(id)a3 transformedForNegativeStyle:(unsigned __int8)a4 placeMinusSignAfterRLM:(BOOL)a5;
+ (id)formatterForLocale:(id)a3;
+ (id)stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand:(id)a3;
+ (int)positionOfMinusSignInNumberFormatSubpattern:(id)a3;
+ (int)positionOfSymbol:(id)a3 inNumberFormatSubpattern:(id)a4;
+ (void)formatString:(id)a3 replaceOccurencesOfUnescapedString:(id)a4 withString:(id)a5;
+ (void)initialize;
+ (void)lock;
- (BOOL)currencyFromString:(id)a3 additionalCurrencyCode:(id)a4 value:(double *)a5 formatString:(id *)a6 currencyCode:(id *)a7;
- (BOOL)decimalFromString:(id)a3 value:(double *)a4 formatString:(id *)a5;
- (BOOL)fractionFromString:(id)a3 value:(double *)a4;
- (BOOL)p_valueFromString:(id)a3 formatters:(id)a4 value:(double *)a5 formatString:(id *)a6;
- (BOOL)percentageFromString:(id)a3 value:(double *)a4 formatString:(id *)a5;
- (BOOL)scientificFromString:(id)a3 value:(double *)a4 formatString:(id *)a5;
- (TSUNumberFormatter)initWithLocale:(id)a3;
- (id)defaultFormatStringForValueType:(int)a3;
- (id)defaultFormatStringForValueType:(int)a3 negativeStyle:(unsigned __int8)a4;
- (id)p_createDictionaryOfCurrencyFormattersForCurrencies:(id)a3;
- (id)p_currencyFormatters;
- (id)p_decimalFormatters;
- (id)p_findCurrencySymbolInString:(id)a3 additionalCurrencyCode:(id)a4 successfullString:(id *)a5 currencyCode:(id *)a6;
- (id)p_percentageFormatters;
- (id)p_scientificFormatters;
- (void)p_numberPreferencesChanged:(id)a3;
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

  v7.receiver = a1;
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

+ (id)stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand:(id)a3
{
  v3 = a3;
  if (qword_280A63A30 != -1)
  {
    sub_277112E0C();
  }

  v4 = [v3 rangeOfCharacterFromSet:qword_280A63A28];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v6 = v4;
    v7 = [v3 mutableCopy];
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

+ (int)positionOfSymbol:(id)a3 inNumberFormatSubpattern:(id)a4
{
  v5 = a4;
  v6 = [v5 rangeOfString:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = [v5 tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];
    v7 = v9 != 0x7FFFFFFFFFFFFFFFLL && v8 >= v9;
  }

  return v7;
}

+ (int)positionOfMinusSignInNumberFormatSubpattern:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"-"];
  LODWORD(a1) = [a1 positionOfSymbol:v6 inNumberFormatSubpattern:v5];

  return a1;
}

+ (id)formatString:(id)a3 transformedForNegativeStyle:(unsigned __int8)a4 placeMinusSignAfterRLM:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [MEMORY[0x277CCAB68] string];
  v10 = v9;
  if (!v6)
  {
    v16 = [v8 tsu_positiveSubpatternOfNumberFormatPattern];
    [v10 appendString:v16];

    [v10 appendString:@";"];
    v17 = [v8 tsu_positiveSubpatternOfNumberFormatPattern];
    v18 = [v17 mutableCopy];

    [a1 formatString:v18 replaceOccurencesOfUnescapedString:@"-" withString:&stru_28862C2A0];
    if (v5 && [(__CFString *)v18 containsString:@"¤"]&& (v19 = [(__CFString *)v18 rangeOfString:@"\u200F"], v19 != 0x7FFFFFFFFFFFFFFFLL))
    {
      [(__CFString *)v18 insertString:@"-" atIndex:v19 + v20];
    }

    else
    {
      v21 = [v8 tsu_negativeSubpatternOfNumberFormatPattern];
      v22 = [TSUNumberFormatter positionOfMinusSignInNumberFormatSubpattern:v21];

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

  if (v6 == 1)
  {
    v11 = [v8 tsu_positiveSubpatternOfNumberFormatPattern];
    [v10 appendString:v11];

    [v10 appendString:@";"];
    v12 = [v8 tsu_positiveSubpatternOfNumberFormatPattern];
    v13 = [v12 mutableCopy];

    [a1 formatString:v13 replaceOccurencesOfUnescapedString:@"-" withString:&stru_28862C2A0];
    v14 = v10;
    v15 = v13;
LABEL_12:
    [v14 appendString:v15];

    goto LABEL_19;
  }

  if ((v6 & 0xFE) == 2)
  {
    v25 = [v8 tsu_positiveSubpatternOfNumberFormatPattern];
    [v10 appendString:v25];

    [v10 appendString:@";"];
    v26 = [v8 tsu_positiveSubpatternOfNumberFormatPattern];
    v13 = [v26 mutableCopy];

    [a1 formatString:v13 replaceOccurencesOfUnescapedString:@"-" withString:&stru_28862C2A0];
    objc_msgSend(v10, "appendString:", @"(");
    [v10 appendString:v13];
    v15 = @"");
    v14 = v10;
    goto LABEL_12;
  }

  [v9 appendString:v8];
LABEL_19:

  return v10;
}

+ (void)formatString:(id)a3 replaceOccurencesOfUnescapedString:(id)a4 withString:(id)a5
{
  v26 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v26 tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  v10 = [v26 length];
  if ([v9 count])
  {
    v11 = [v9 objectAtIndex:0];
    [v26 replaceOccurrencesOfString:v7 withString:v8 options:0 range:{0, objc_msgSend(v11, "rangeValue")}];

    if ([v9 count] >= 2)
    {
      v12 = 1;
      do
      {
        v13 = [v26 length];
        v14 = [v9 objectAtIndex:v12 - 1];
        v15 = [v14 rangeValue];
        v17 = v16;

        v18 = [v9 objectAtIndex:v12];
        v19 = [v18 rangeValue];

        [v26 replaceOccurrencesOfString:v7 withString:v8 options:0 range:{v17 + v15 - v10 + v13, v19 - (v17 + v15)}];
        ++v12;
      }

      while (v12 < [v9 count]);
    }

    v20 = [v9 lastObject];
    v21 = [v20 rangeValue];
    v23 = v22;

    v24 = v21 + v23;
    v25 = [v26 length] - (v21 + v23);
  }

  else
  {
    v25 = [v26 length];
    v24 = 0;
  }

  [v26 replaceOccurrencesOfString:v7 withString:v8 options:0 range:{v24, v25}];
}

+ (id)defaultFormatStringForValueType:(int)a3 negativeStyle:(unsigned __int8)a4
{
  v4 = a4;
  v5 = *&a3;
  v6 = [a1 formatterForLocale:0];
  v7 = [v6 defaultFormatStringForValueType:v5 negativeStyle:v4];

  return v7;
}

+ (id)defaultFormatStringForValueType:(int)a3
{
  v3 = *&a3;
  v4 = [a1 formatterForLocale:0];
  v5 = [v4 defaultFormatStringForValueType:v3];

  return v5;
}

+ (id)formatterForLocale:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCACC8] currentThread];
    v6 = [v5 threadDictionary];
    v7 = sub_277042268(v4);
    v8 = [v6 objectForKey:v7];
    if (!v8)
    {
      v8 = [[a1 alloc] initWithLocale:v4];
      [v6 setObject:v8 forKey:v7];
      if ([v4 isAutoUpdating])
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = sub_277044EF8;
        v18[3] = &unk_27A701A78;
        v9 = v5;
        v19 = v9;
        v10 = v8;
        v20 = v10;
        v11 = sub_2770382CC(v18);
        [v6 setObject:v11 forKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
        v12 = [MEMORY[0x277CCAB98] defaultCenter];
        v13 = *MEMORY[0x277CCA6F8];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_277044F9C;
        v16[3] = &unk_27A701AA0;
        v8 = v10;
        v17 = v8;
        v14 = [v12 tsu_addObserverForName:v13 object:v9 queue:0 usingBlock:v16];

        [v6 setObject:v14 forKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
      }
    }
  }

  else
  {
    v5 = +[TSULocale currentLocale];
    v8 = [a1 formatterForLocale:v5];
  }

  return v8;
}

- (TSUNumberFormatter)initWithLocale:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TSUNumberFormatter;
  v6 = [(TSUNumberFormatter *)&v12 init];
  if (v6)
  {
    if (!v5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormatter initWithLocale:]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormatter.m"];
      [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1371 isFatal:0 description:"TSUNumberFormatter cannot be initialized without a locale. Please check comments near this assertion or <rdar://problem/23557988> for details."];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    objc_storeStrong(&v6->_locale, a3);
    v9 = [v5 formattingSymbols];
    formattingSymbols = v6->_formattingSymbols;
    v6->_formattingSymbols = v9;
  }

  return v6;
}

- (void)p_numberPreferencesChanged:(id)a3
{
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v11 = [v4 threadDictionary];

  v5 = [v11 objectForKey:@"TSUNumberFormatterThreadDictionaryKey"];
  if (v5 != self)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormatter p_numberPreferencesChanged:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1384 isFatal:0 description:"Registered wrong date formatter for date preference change notification"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  [v11 removeObjectForKey:@"TSUNumberFormatterThreadDictionaryKey"];
  v8 = [v11 objectForKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
  sub_27703EA60(v8);

  [v11 removeObjectForKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
  v9 = [v11 objectForKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 removeObserver:v9];

  [v11 removeObjectForKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
}

- (BOOL)decimalFromString:(id)a3 value:(double *)a4 formatString:(id *)a5
{
  v8 = a3;
  v9 = [(TSUNumberFormatter *)self p_decimalFormatters];
  LOBYTE(a5) = [(TSUNumberFormatter *)self p_valueFromString:v8 formatters:v9 value:a4 formatString:a5];

  return a5;
}

- (BOOL)currencyFromString:(id)a3 additionalCurrencyCode:(id)a4 value:(double *)a5 formatString:(id *)a6 currencyCode:(id *)a7
{
  v13 = a4;
  v38 = 0;
  v39 = 0;
  v14 = [(TSUNumberFormatter *)self p_findCurrencySymbolInString:a3 additionalCurrencyCode:v13 successfullString:&v39 currencyCode:&v38];
  v15 = v39;
  v16 = v38;
  v17 = v16;
  v18 = 0;
  if (v14 && v16)
  {
    v37 = a5;
    v36 = [(TSUNumberFormatter *)self p_currencyFormatters];
    v19 = [v36 objectForKeyedSubscript:v17];
    if (!v19)
    {
      v35 = a6;
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormatter currencyFromString:additionalCurrencyCode:value:formatString:currencyCode:]"];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormatter.m"];
      [TSUAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:1422 isFatal:0 description:"No currency formatters found for currencyCode:%{public}@ locale:%{public}@", v17, self->_locale];

      a6 = v35;
      +[TSUAssertionHandler logBacktraceThrottled];
      v19 = [MEMORY[0x277CBEA60] array];
    }

    v22 = [(TSUNumberFormatter *)self p_valueFromString:v15 formatters:v19 value:v37 formatString:a6];
    v18 = v22;
    if (!v13 || v22)
    {
      goto LABEL_15;
    }

    if (self->_additionalCurrencyCode)
    {
      if ([v13 isEqualToString:?])
      {
LABEL_12:
        v28 = a6;
        v29 = self->_additionalCurrencyCode;

        v30 = [(NSDictionary *)self->_additionalCurrencyCodeFormatters objectForKey:self->_additionalCurrencyCode];

        if (!v30)
        {
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormatter currencyFromString:additionalCurrencyCode:value:formatString:currencyCode:]"];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormatter.m"];
          [TSUAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:1445 isFatal:0 description:"No currency formatters found for additional currencyCode:%{public}@ locale:%{public}@", self->_additionalCurrencyCode, self->_locale];

          +[TSUAssertionHandler logBacktraceThrottled];
          v30 = [MEMORY[0x277CBEA60] array];
        }

        v18 = [(TSUNumberFormatter *)self p_valueFromString:v15 formatters:v30 value:v37 formatString:v28];
        v17 = v29;
        v19 = v30;
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

    objc_storeStrong(&self->_additionalCurrencyCode, a4);
    v25 = [MEMORY[0x277CBEA60] arrayWithObject:self->_additionalCurrencyCode];
    v26 = [(TSUNumberFormatter *)self p_createDictionaryOfCurrencyFormattersForCurrencies:v25];
    v27 = self->_additionalCurrencyCodeFormatters;
    self->_additionalCurrencyCodeFormatters = v26;

    goto LABEL_12;
  }

LABEL_16:
  if (a7)
  {
    if (v18)
    {
      v33 = v17;
    }

    else
    {
      v33 = 0;
    }

    *a7 = v33;
  }

  return v18;
}

- (BOOL)percentageFromString:(id)a3 value:(double *)a4 formatString:(id *)a5
{
  v8 = a3;
  v9 = [(TSUNumberFormatter *)self p_percentageFormatters];
  LOBYTE(a5) = [(TSUNumberFormatter *)self p_valueFromString:v8 formatters:v9 value:a4 formatString:a5];

  return a5;
}

- (BOOL)scientificFromString:(id)a3 value:(double *)a4 formatString:(id *)a5
{
  v8 = a3;
  v9 = [(TSUNumberFormatter *)self p_scientificFormatters];
  LOBYTE(a5) = [(TSUNumberFormatter *)self p_valueFromString:v8 formatters:v9 value:a4 formatString:a5];

  return a5;
}

- (BOOL)fractionFromString:(id)a3 value:(double *)a4
{
  v6 = a3;
  v7 = [v6 rangeOfString:@"/"];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0)
  {
    v12 = 0;
    if (!a4)
    {
LABEL_20:
      v10 = 0;
      goto LABEL_40;
    }
  }

  else
  {
    v11 = v7;
    v12 = [v6 substringWithRange:{0, v7}];
    v13 = v11 + 1;
    if (v13 < [v6 length])
    {
      v14 = [v6 substringWithRange:{v13, objc_msgSend(v6, "length") - v13}];
      if (!self->_fractionFormatter)
      {
        v15 = [TSUDecimalFormatter createHarmonizedDecimalFormatterOfStyle:1 locale:self->_locale formattingSymbols:self->_formattingSymbols];
        fractionFormatter = self->_fractionFormatter;
        self->_fractionFormatter = v15;
      }

      v17 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v18 = [v12 stringByTrimmingCharactersInSet:v17];
      v19 = [v14 stringByTrimmingCharactersInSet:v17];
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
          if (a4)
          {
            *a4 = 0.0;
          }

          goto LABEL_39;
        }

        v35 = v19;
        v25 = [v18 substringWithRange:{v24, objc_msgSend(v18, "length") - v24}];
        v26 = [v23 stringByTrimmingCharactersInSet:v17];
        v37 = v25;
        v27 = [v25 stringByTrimmingCharactersInSet:v17];
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
            if (!a4)
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
            if (!a4)
            {
LABEL_38:

LABEL_39:
              goto LABEL_40;
            }

LABEL_37:
            *a4 = v30;
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
              if (!a4)
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

    if (!a4)
    {
      goto LABEL_20;
    }
  }

  v10 = 0;
  *a4 = 0.0;
LABEL_40:

  return v10;
}

- (BOOL)p_valueFromString:(id)a3 formatters:(id)a4 value:(double *)a5 formatString:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 count];
    +[TSUNumberFormatter lock];
    if (v12)
    {
      v13 = 0;
      while (1)
      {
        v14 = [v11 objectAtIndex:v13];
        if (sub_277043FE0(v14, v9, a5))
        {
          break;
        }

        if (v12 == ++v13)
        {
          goto LABEL_6;
        }
      }

      if (a6)
      {
        *a6 = [v14 format];
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

  if (a6 && !v15)
  {
    *a6 = 0;
  }

  return v15;
}

- (id)p_findCurrencySymbolInString:(id)a3 additionalCurrencyCode:(id)a4 successfullString:(id *)a5 currencyCode:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v50 = v9;
  v48 = [v9 length];
  v40 = v10;
  if (v48)
  {
    +[TSUNumberFormatter lock];
    v11 = 8;
    if (v48 < 8)
    {
      v11 = v48;
    }

    v49 = v11;
    v12 = sub_277043AA0(self->_locale, v10);
    v13 = [v12 count];
    if (v13)
    {
      v41 = a5;
      v42 = a6;
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
        v18 = [(TSULocale *)self->_locale formattingSymbols];
        v19 = [v18 currencySymbolForCurrencyCode:v17];

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
        v30 = [(TSULocale *)self->_locale formattingSymbols];
        v28 = [v30 halfwidthCurrencySymbolForCurrencyCode:v17];

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
            if (v41)
            {
              v37 = v27;
              *v41 = v27;
            }

            if (v42)
            {
              v38 = v17;
              *v42 = v17;
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

- (id)defaultFormatStringForValueType:(int)a3 negativeStyle:(unsigned __int8)a4
{
  if (a4 >= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = a4;
  }

  v6 = TSUFormatTypeFromTSUNumberValueType(a3);
  formattingSymbols = self->_formattingSymbols;

  return [(TSUFormattingSymbols *)formattingSymbols patternStringForNumberStyle:v6 negativeStyle:v5];
}

- (id)defaultFormatStringForValueType:(int)a3
{
  v4 = TSUFormatTypeFromTSUNumberValueType(a3);
  formattingSymbols = self->_formattingSymbols;

  return [(TSUFormattingSymbols *)formattingSymbols patternStringForNumberStyle:v4 negativeStyle:4];
}

- (id)p_createDictionaryOfCurrencyFormattersForCurrencies:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(TSULocale *)self->_locale createHarmonizedDecimalFormatterOfStyle:2];
  [v7 setExponentSymbol:@"xyzzyqghbv&q"];
  v26 = [v7 format];
  v8 = [v26 tsu_positiveSubpatternOfNumberFormatPattern];
  v9 = [v8 tsu_numberPortionOfNumberFormatSubpattern];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@", v9];
  [v6 addObject:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@- ¤%@", v9, v9];;
  [v6 addObject:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤", v9];
  [v6 addObject:v12];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤- %@¤", v9, v9];;
  [v6 addObject:v13];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@¤-%@", v9, v9];;
  [v6 addObject:v14];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@(¤%@)", v9, v9];;
  [v6 addObject:v15];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@¤(%@)", v9, v9];;
  [v6 addObject:v16];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤(%@¤)", v9, v9];;
  [v6 addObject:v17];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤(%@)¤", v9, v9];;
  [v6 addObject:v18];

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@¤%@-", v9, v9];;
  [v6 addObject:v19];

  v20 = [v4 count];
  if (v20 >= 1)
  {
    v21 = v20;
    for (i = 0; i != v21; ++i)
    {
      v23 = [v4 objectAtIndex:i];
      v24 = sub_27704630C(self->_locale, v6, v23);
      [v5 setObject:v24 forKey:v23];
    }
  }

  return v5;
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