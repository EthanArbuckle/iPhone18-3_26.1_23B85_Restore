@interface TSUNumberFormatter
+ (id)availableCurrencyCodes;
+ (id)currencySymbolForCurrencyCode:(id)a3;
+ (id)currentLocaleCurrencyCode;
+ (id)currentNonCachedLocaleCurrencyCode;
+ (id)currentNonCachedLocaleDecimalSeparator;
+ (id)defaultFormatStringForValueType:(int)a3;
+ (id)defaultFormatStringForValueType:(int)a3 negativeStyle:(int)a4;
+ (id)displayNameForCurrencyCode:(id)a3;
+ (id)formatString:(id)a3 transformedForNegativeStyle:(int)a4;
+ (id)formatterForLocale:(__CFLocale *)a3;
+ (id)localizedPercentSymbol;
+ (id)userVisibleCurrencyCodes;
+ (int)positionOfMinusSignInNumberFormatSubpattern:(id)a3;
+ (int)positionOfSymbol:(id)a3 inNumberFormatSubpattern:(id)a4;
+ (unsigned)defaultDecimalPlacesForCurrencyCode:(id)a3;
+ (void)formatString:(id)a3 replaceOccurencesOfUnescapedString:(id)a4 withString:(id)a5;
+ (void)initialize;
- (BOOL)currencyFromString:(__CFString *)a3 additionalCurrencyCode:(__CFString *)a4 value:(double *)a5 formatString:(const __CFString *)a6 currencyCode:(const __CFString *)a7;
- (BOOL)decimalFromString:(__CFString *)a3 value:(double *)a4 formatString:(const __CFString *)a5;
- (BOOL)findCurrencySymbolInString:(__CFString *)a3 additionalCurrencyCode:(__CFString *)a4 successTSUlString:(const __CFString *)a5;
- (BOOL)fractionFromString:(__CFString *)a3 value:(double *)a4;
- (BOOL)percentageFromString:(__CFString *)a3 value:(double *)a4 formatString:(const __CFString *)a5;
- (BOOL)scientificFromString:(__CFString *)a3 value:(double *)a4 formatString:(const __CFString *)a5;
- (BOOL)valueFromString:(__CFString *)a3 formatters:(__CFArray *)a4 value:(double *)a5 formatString:(const __CFString *)a6 currencyCode:(const __CFString *)a7;
- (TSUNumberFormatter)initWithLocale:(__CFLocale *)a3;
- (__CFArray)p_currencyFormatters;
- (__CFArray)p_decimalFormatters;
- (__CFArray)p_percentageFormatters;
- (__CFArray)p_scientificFormatters;
- (id)currencySymbolForCurrencyCode:(id)a3;
- (id)currentLocaleCurrencyCode;
- (id)defaultFormatStringForValueType:(int)a3;
- (id)defaultFormatStringForValueType:(int)a3 negativeStyle:(int)a4;
- (id)displayNameForCurrencyCode:(id)a3;
- (id)halfWidthCurrencySymbolForCurrencyCode:(id)a3;
- (void)dealloc;
- (void)numberPreferencesChanged:(id)a3;
@end

@implementation TSUNumberFormatter

+ (void)initialize
{
  gLockTSUNumberOfTrailingZerosInMantissaWhenFormattedAsScientific = objc_alloc_init(MEMORY[0x277CCAC60]);
  gLockTSUNumberFormatterStringFromDoubleWithFormat = objc_alloc_init(MEMORY[0x277CCAC60]);
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSUNumberFormatter;
  objc_msgSendSuper2(&v3, sel_initialize);
}

+ (int)positionOfSymbol:(id)a3 inNumberFormatSubpattern:(id)a4
{
  v5 = [a4 rangeOfString:a3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = v5;
  v8 = [a4 indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];
  return v8 != 0x7FFFFFFFFFFFFFFFLL && v7 >= v8;
}

+ (int)positionOfMinusSignInNumberFormatSubpattern:(id)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"-"];

  return [a1 positionOfSymbol:v5 inNumberFormatSubpattern:a3];
}

+ (id)formatString:(id)a3 transformedForNegativeStyle:(int)a4
{
  v7 = [MEMORY[0x277CCAB68] string];
  v8 = v7;
  if (!a4)
  {
    [v7 appendString:{objc_msgSend(a3, "positiveSubpatternOfNumberFormatPattern")}];
    [v8 appendString:@";"];
    v12 = [objc_msgSend(a3 "positiveSubpatternOfNumberFormatPattern")];
    [a1 formatString:v12 replaceOccurencesOfUnescapedString:@"-" withString:&stru_287DDF830];
    v13 = +[TSUNumberFormatter positionOfMinusSignInNumberFormatSubpattern:](TSUNumberFormatter, "positionOfMinusSignInNumberFormatSubpattern:", [a3 negativeSubpatternOfNumberFormatPattern]);
    if (v13)
    {
      v14 = v13;
      [v8 appendString:v12];
      if (v14 != 1)
      {
LABEL_13:

        return v8;
      }

      v15 = @"-";
      v16 = v8;
    }

    else
    {
      [v8 appendString:@"-"];
      v16 = v8;
      v15 = v12;
    }

    [v16 appendString:v15];
    goto LABEL_13;
  }

  if (a4 == 1)
  {
    [v7 appendString:{objc_msgSend(a3, "positiveSubpatternOfNumberFormatPattern")}];
    [v8 appendString:@";"];
    v9 = [objc_msgSend(a3 "positiveSubpatternOfNumberFormatPattern")];
    [a1 formatString:v9 replaceOccurencesOfUnescapedString:@"-" withString:&stru_287DDF830];
    v10 = v8;
    v11 = v9;
  }

  else
  {
    if ((a4 & 0xFFFFFFFE) != 2)
    {
      [v7 appendString:a3];
      return v8;
    }

    [v7 appendString:{objc_msgSend(a3, "positiveSubpatternOfNumberFormatPattern")}];
    [v8 appendString:@";"];
    v9 = [objc_msgSend(a3 "positiveSubpatternOfNumberFormatPattern")];
    [a1 formatString:v9 replaceOccurencesOfUnescapedString:@"-" withString:&stru_287DDF830];
    objc_msgSend(v8, "appendString:", @"(");
    [v8 appendString:v9];
    v11 = @"");
    v10 = v8;
  }

  [v10 appendString:v11];

  return v8;
}

+ (void)formatString:(id)a3 replaceOccurencesOfUnescapedString:(id)a4 withString:(id)a5
{
  v17 = [a3 newRangesOfEscapedCharactersInNumberFormatPattern];
  v8 = [a3 length];
  if ([v17 count])
  {
    [a3 replaceOccurrencesOfString:a4 withString:a5 options:0 range:{0, objc_msgSend(objc_msgSend(v17, "objectAtIndex:", 0), "rangeValue")}];
    if ([v17 count] >= 2)
    {
      v9 = 1;
      do
      {
        v10 = [a3 length];
        v11 = [objc_msgSend(v17 objectAtIndex:{v9 - 1), "rangeValue"}];
        [a3 replaceOccurrencesOfString:a4 withString:a5 options:0 range:{v12 + v11 - v8 + v10, objc_msgSend(objc_msgSend(v17, "objectAtIndex:", v9++), "rangeValue") - (v12 + v11)}];
      }

      while (v9 < [v17 count]);
    }

    v13 = [objc_msgSend(v17 "lastObject")];
    v15 = v13 + v14;
    v16 = [a3 length] - (v13 + v14);
  }

  else
  {
    v16 = [a3 length];
    v15 = 0;
  }

  [a3 replaceOccurrencesOfString:a4 withString:a5 options:0 range:{v15, v16}];
}

+ (id)availableCurrencyCodes
{
  v2 = CFLocaleCopyISOCurrencyCodes();

  return v2;
}

+ (id)displayNameForCurrencyCode:(id)a3
{
  v4 = [a1 formatterForLocale:0];

  return [v4 displayNameForCurrencyCode:a3];
}

+ (id)currencySymbolForCurrencyCode:(id)a3
{
  v4 = [a1 formatterForLocale:0];

  return [v4 currencySymbolForCurrencyCode:a3];
}

+ (unsigned)defaultDecimalPlacesForCurrencyCode:(id)a3
{
  defaultFractionDigits = 0;
  v7 = 0.0;
  if (CFNumberFormatterGetDecimalInfoForCurrencyCode(a3, &defaultFractionDigits, &v7))
  {
    return defaultFractionDigits & ~(defaultFractionDigits >> 31);
  }

  else
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNumberFormatter defaultDecimalPlacesForCurrencyCode:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormatter.m"), 1629, @"Couldn't get decimal info for a currency code."}];
    LOWORD(v3) = 0;
  }

  return v3;
}

+ (id)currentLocaleCurrencyCode
{
  v2 = [a1 formatterForLocale:0];

  return [v2 currentLocaleCurrencyCode];
}

+ (id)currentNonCachedLocaleCurrencyCode
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  result = CFLocaleGetValue(v2, *MEMORY[0x277CBEEA0]);
  if (!result)
  {
    return @"USD";
  }

  return result;
}

+ (id)currentNonCachedLocaleDecimalSeparator
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = *MEMORY[0x277CBEEB8];

  return CFLocaleGetValue(v2, v3);
}

+ (id)defaultFormatStringForValueType:(int)a3 negativeStyle:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v6 = [a1 formatterForLocale:0];

  return [v6 defaultFormatStringForValueType:v5 negativeStyle:v4];
}

+ (id)defaultFormatStringForValueType:(int)a3
{
  v3 = *&a3;
  v4 = [a1 formatterForLocale:0];

  return [v4 defaultFormatStringForValueType:v3];
}

+ (id)localizedPercentSymbol
{
  v2 = [a1 formatterForLocale:0];

  return [v2 localizedPercentSymbol];
}

+ (id)userVisibleCurrencyCodes
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([v2 BOOLForKey:TSUDefaultsShowCompleteCurrencyList])
  {
    v3 = CFLocaleCopyCommonISOCurrencyCodes();
    v4 = v3;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"AUD", @"CAD", @"HKD", @"SGD", @"TWD", @"USD", @"EUR", @"CHF", @"SEK", @"DKK", @"NOK", @"MXN", @"GBP", @"BRL", @"INR", @"KRW", @"JPY", @"CNY", @"IDR", @"RUB", @"TRY", @"THB", @"PLN", @"ZAR", @"ARS", 0}];
    v5 = +[TSUNumberFormatter currentLocaleCurrencyCode];
    if (([(__CFArray *)v3 containsObject:v5]& 1) == 0)
    {
      [(__CFArray *)v3 insertObject:v5 atIndex:0];
    }
  }

  return v3;
}

+ (id)formatterForLocale:(__CFLocale *)a3
{
  if (a3)
  {
    v4 = [[a1 alloc] initWithLocale:a3];

    return v4;
  }

  else
  {
    v6 = [MEMORY[0x277CCACC8] currentThread];
    v7 = [v6 threadDictionary];
    v8 = [v7 objectForKey:@"TSUNumberFormatterThreadDictionaryKey"];
    if (!v8)
    {
      v8 = [[a1 alloc] initWithLocale:0];
      [v7 setObject:v8 forKey:@"TSUNumberFormatterThreadDictionaryKey"];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __50__TSUNumberFormatter_Private__formatterForLocale___block_invoke;
      v12[3] = &unk_279D65DF0;
      v12[4] = v6;
      v12[5] = v8;
      [v7 setObject:TSURegisterLocaleChangeObserver(v12) forKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = *MEMORY[0x277CCA6F8];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __50__TSUNumberFormatter_Private__formatterForLocale___block_invoke_2;
      v11[3] = &unk_279D65E18;
      v11[4] = v8;
      [v7 setObject:objc_msgSend(v9 forKey:{"addObserverForName:object:queue:usingBlock:", v10, v6, 0, v11), @"TSUNumberFormatterThreadDictionaryExitObserverKey"}];
    }

    return v8;
  }
}

uint64_t __50__TSUNumberFormatter_Private__formatterForLocale___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    v7 = *(a1 + 40);

    return [v7 numberPreferencesChanged:a2];
  }

  else
  {
    result = [v5 isFinished];
    if ((result & 1) == 0)
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);

      return [v8 performSelector:sel_numberPreferencesChanged_ onThread:v9 withObject:a2 waitUntilDone:0];
    }
  }

  return result;
}

- (TSUNumberFormatter)initWithLocale:(__CFLocale *)a3
{
  v13.receiver = self;
  v13.super_class = TSUNumberFormatter;
  v4 = [(TSUNumberFormatter *)&v13 init];
  if (v4)
  {
    if (a3)
    {
      v5 = CFRetain(a3);
    }

    else
    {
      v5 = CFLocaleCopyCurrent();
    }

    v4->mLocale = v5;
    v4->mFractionFormatter = CFNumberFormatterCreate(0, v5, kCFNumberFormatterDecimalStyle);
    v4->mCurrencyCodeToSymbolMap = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4->mCurrencyCodeToHalfWidthSymbolMap = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = CFNumberFormatterCreate(0, v4->mLocale, kCFNumberFormatterCurrencyStyle);
    v4->mCurrencyString = [(__CFString *)CFNumberFormatterGetFormat(v6) copy];
    CFRelease(v6);
    v7 = CFNumberFormatterCreate(0, v4->mLocale, kCFNumberFormatterPercentStyle);
    v4->mPercentageString = [(__CFString *)CFNumberFormatterGetFormat(v7) copy];
    CFRelease(v7);
    v8 = CFNumberFormatterCreate(0, v4->mLocale, kCFNumberFormatterNoStyle);
    CFNumberFormatterSetFormat(v8, @"#.##E+00");
    v4->mScientificString = [(__CFString *)CFNumberFormatterGetFormat(v8) copy];
    CFRelease(v8);
    v9 = CFNumberFormatterCreate(0, v4->mLocale, kCFNumberFormatterDecimalStyle);
    v4->mDecimalString = [(__CFString *)CFNumberFormatterGetFormat(v9) copy];
    CFRelease(v9);
    v4->mTransformedDecimalStrings = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    v4->mTransformedCurrencyStrings = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    v4->mTransformedPercentageStrings = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    v10 = 0;
    v4->mTransformedScientificStrings = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    do
    {
      [(NSMutableArray *)v4->mTransformedDecimalStrings insertObject:[TSUNumberFormatter atIndex:"formatString:transformedForNegativeStyle:" formatString:v10 transformedForNegativeStyle:?], v10];
      [(NSMutableArray *)v4->mTransformedCurrencyStrings insertObject:[TSUNumberFormatter atIndex:"formatString:transformedForNegativeStyle:" formatString:v10 transformedForNegativeStyle:?], v10];
      [(NSMutableArray *)v4->mTransformedPercentageStrings insertObject:[TSUNumberFormatter atIndex:"formatString:transformedForNegativeStyle:" formatString:v10 transformedForNegativeStyle:?], v10];
      [(NSMutableArray *)v4->mTransformedScientificStrings insertObject:[TSUNumberFormatter atIndex:"formatString:transformedForNegativeStyle:" formatString:v10 transformedForNegativeStyle:?], v10];
      ++v10;
    }

    while (v10 != 5);
    v11 = CFNumberFormatterCreate(0, v4->mLocale, kCFNumberFormatterNoStyle);
    v4->mPercentSymbol = CFNumberFormatterCopyProperty(v11, *MEMORY[0x277CBEFB0]);
    CFRelease(v11);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->mLocale);
  mDecimalFormatters = self->mDecimalFormatters;
  if (mDecimalFormatters)
  {
    CFRelease(mDecimalFormatters);
  }

  mCurrencyFormatters = self->mCurrencyFormatters;
  if (mCurrencyFormatters)
  {
    CFRelease(mCurrencyFormatters);
  }

  mPercentageFormatters = self->mPercentageFormatters;
  if (mPercentageFormatters)
  {
    CFRelease(mPercentageFormatters);
  }

  mScientificFormatters = self->mScientificFormatters;
  if (mScientificFormatters)
  {
    CFRelease(mScientificFormatters);
  }

  CFRelease(self->mFractionFormatter);

  mAdditionalCurrencyCode = self->mAdditionalCurrencyCode;
  if (mAdditionalCurrencyCode)
  {
    CFRelease(mAdditionalCurrencyCode);
  }

  mAdditionalCurrencyCodeFormatters = self->mAdditionalCurrencyCodeFormatters;
  if (mAdditionalCurrencyCodeFormatters)
  {
    CFRelease(mAdditionalCurrencyCodeFormatters);
  }

  [gLockTSUNumberFormatterStringFromDoubleWithFormat lock];
  sActiveFormatter = 0;
  sActiveCurrencyFormatter = 0;
  v9 = sActiveCurrencyCode;
  sActiveCurrencyCode = 0;

  v10 = sActiveFormat;
  sActiveFormat = 0;

  v11 = sActiveCurrencyFormat;
  sActiveCurrencyFormat = 0;

  [gLockTSUNumberFormatterStringFromDoubleWithFormat unlock];
  v12.receiver = self;
  v12.super_class = TSUNumberFormatter;
  [(TSUNumberFormatter *)&v12 dealloc];
}

- (void)numberPreferencesChanged:(id)a3
{
  v3 = [objc_msgSend(MEMORY[0x277CCACC8] currentThread];
  if ([v3 objectForKey:@"TSUNumberFormatterThreadDictionaryKey"] != self)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormatter(Private) numberPreferencesChanged:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormatter.m"), 1886, @"Registered wrong date formatter for date preference change notification"}];
  }

  v6 = self;
  [v3 removeObjectForKey:@"TSUNumberFormatterThreadDictionaryKey"];
  TSURemoveLocaleChangeObserver([v3 objectForKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"]);
  [v3 removeObjectForKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
  v7 = [v3 objectForKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [v3 removeObjectForKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
}

- (BOOL)decimalFromString:(__CFString *)a3 value:(double *)a4 formatString:(const __CFString *)a5
{
  v9 = [(TSUNumberFormatter *)self p_decimalFormatters];

  return [(TSUNumberFormatter *)self valueFromString:a3 formatters:v9 value:a4 formatString:a5 currencyCode:0];
}

- (BOOL)currencyFromString:(__CFString *)a3 additionalCurrencyCode:(__CFString *)a4 value:(double *)a5 formatString:(const __CFString *)a6 currencyCode:(const __CFString *)a7
{
  cf = 0;
  if ([(TSUNumberFormatter *)self findCurrencySymbolInString:a3 additionalCurrencyCode:a4 successTSUlString:&cf])
  {
    v12 = [(TSUNumberFormatter *)self valueFromString:cf formatters:[(TSUNumberFormatter *)self p_currencyFormatters] value:a5 formatString:a6 currencyCode:a7];
    v13 = v12;
    if (!a4 || v12)
    {
      goto LABEL_14;
    }

    mAdditionalCurrencyCode = self->mAdditionalCurrencyCode;
    if (mAdditionalCurrencyCode)
    {
      if (CFStringCompare(mAdditionalCurrencyCode, a4, 0) == kCFCompareEqualTo)
      {
        mAdditionalCurrencyCodeFormatters = self->mAdditionalCurrencyCodeFormatters;
LABEL_13:
        v13 = [(TSUNumberFormatter *)self valueFromString:cf formatters:mAdditionalCurrencyCodeFormatters value:a5 formatString:a6 currencyCode:a7];
LABEL_14:
        CFRelease(cf);
        return v13;
      }

      v15 = self->mAdditionalCurrencyCode;
      if (v15)
      {
        CFRelease(v15);
      }
    }

    v16 = self->mAdditionalCurrencyCodeFormatters;
    if (v16)
    {
      CFRelease(v16);
    }

    v17 = CFRetain(a4);
    self->mAdditionalCurrencyCode = v17;
    mAdditionalCurrencyCodeFormatters = TSUCreateArrayOfCurrencyFormattersForLocale(self->mLocale, [MEMORY[0x277CBEA60] arrayWithObject:v17]);
    self->mAdditionalCurrencyCodeFormatters = mAdditionalCurrencyCodeFormatters;
    goto LABEL_13;
  }

  return 0;
}

- (BOOL)percentageFromString:(__CFString *)a3 value:(double *)a4 formatString:(const __CFString *)a5
{
  v9 = [(TSUNumberFormatter *)self p_percentageFormatters];

  return [(TSUNumberFormatter *)self valueFromString:a3 formatters:v9 value:a4 formatString:a5 currencyCode:0];
}

- (BOOL)scientificFromString:(__CFString *)a3 value:(double *)a4 formatString:(const __CFString *)a5
{
  v9 = [(TSUNumberFormatter *)self p_scientificFormatters];

  return [(TSUNumberFormatter *)self valueFromString:a3 formatters:v9 value:a4 formatString:a5 currencyCode:0];
}

- (BOOL)fractionFromString:(__CFString *)a3 value:(double *)a4
{
  v7 = CFStringFind(a3, @"/", 0);
  if (v7.location != -1 && v7.length != 0)
  {
    v10 = *MEMORY[0x277CBECE8];
    v31.location = 0;
    v31.length = v7.location;
    v11 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], a3, v31);
    v12 = v7.location + 1;
    if (v12 >= CFStringGetLength(a3))
    {
      v19 = 0;
      v20 = 0;
      v15 = 0;
      MutableCopy = 0;
      v18 = 0;
      v26 = 0;
      v13 = 0;
      goto LABEL_26;
    }

    v32.length = CFStringGetLength(a3) - v12;
    v32.location = v7.location + 1;
    v13 = CFStringCreateWithSubstring(v10, a3, v32);
    MutableCopy = CFStringCreateMutableCopy(v10, 0, v11);
    v15 = CFStringCreateMutableCopy(v10, 0, v13);
    CFStringTrimWhitespace(MutableCopy);
    CFStringTrimWhitespace(v15);
    v16 = CFStringFind(MutableCopy, @" ", 0);
    if (v16.location == 0x7FFFFFFFFFFFFFFFLL || v16.length == 0)
    {
      v26 = 0;
      v18 = 0;
      v19 = 0;
      v29 = 0.0;
      v30 = 0.0;
      v28 = 0.0;
    }

    else
    {
      v33.location = 0;
      v33.length = v16.location;
      v26 = CFStringCreateWithSubstring(v10, MutableCopy, v33);
      v27 = v16.location + 1;
      if (v27 >= CFStringGetLength(MutableCopy))
      {
        v19 = 0;
        v20 = 0;
        v18 = 0;
        goto LABEL_26;
      }

      v34.length = CFStringGetLength(MutableCopy) - v27;
      v34.location = v16.location + 1;
      v18 = CFStringCreateWithSubstring(v10, MutableCopy, v34);
      v20 = CFStringCreateMutableCopy(v10, 0, v26);
      v19 = CFStringCreateMutableCopy(v10, 0, v18);
      CFStringTrimWhitespace(v20);
      CFStringTrimWhitespace(v19);
      v29 = 0.0;
      v30 = 0.0;
      v28 = 0.0;
      if (v20)
      {
        if (!TSUImprovedCFNumberFormatterGetValueFromString(self->mFractionFormatter, v20, &v28))
        {
          goto LABEL_26;
        }

        v21 = floor(v28);
        if (vabdd_f64(v28, v21) > 0.00001 || (TSUImprovedCFNumberFormatterGetValueFromString(self->mFractionFormatter, v19, &v30) & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_17;
      }
    }

    v20 = 0;
    if ((TSUImprovedCFNumberFormatterGetValueFromString(self->mFractionFormatter, MutableCopy, &v30) & 1) == 0)
    {
      goto LABEL_26;
    }

    v21 = 0.0;
LABEL_17:
    if ((TSUImprovedCFNumberFormatterGetValueFromString(self->mFractionFormatter, v15, &v29) & 1) != 0 && v29 != 0.0)
    {
      v22 = v30;
      if (v21 < 0.0)
      {
        v22 = -v30;
        v30 = -v30;
      }

      v23 = v21 + v22 / v29;
      if (__fpclassifyd(v23) != 2 && __fpclassifyd(v23) != 1)
      {
        if (!a4)
        {
          v9 = 1;
          if (!v11)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v24 = v21 + v30 / v29;
        v9 = 1;
LABEL_27:
        *a4 = v24;
LABEL_28:
        if (!v11)
        {
LABEL_30:
          if (v13)
          {
            CFRelease(v13);
          }

          if (v26)
          {
            CFRelease(v26);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          if (v19)
          {
            CFRelease(v19);
          }

          return v9;
        }

LABEL_29:
        CFRelease(v11);
        goto LABEL_30;
      }
    }

LABEL_26:
    v9 = 0;
    v24 = 0.0;
    if (!a4)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v9 = 0;
  if (a4)
  {
    *a4 = 0.0;
  }

  return v9;
}

- (BOOL)valueFromString:(__CFString *)a3 formatters:(__CFArray *)a4 value:(double *)a5 formatString:(const __CFString *)a6 currencyCode:(const __CFString *)a7
{
  Count = CFArrayGetCount(a4);
  if (Count >= 1)
  {
    v13 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(a4, 0);
    if (TSUImprovedCFNumberFormatterGetValueFromString(ValueAtIndex, a3, a5))
    {
      v15 = 1;
      if (a6)
      {
LABEL_4:
        Format = CFNumberFormatterGetFormat(ValueAtIndex);
        *a6 = CFRetain(Format);
      }

LABEL_5:
      if (a7)
      {
        v17 = CFNumberFormatterCopyProperty(ValueAtIndex, *MEMORY[0x277CBEEF8]);
LABEL_16:
        *a7 = v17;
        return v15;
      }

      return v15;
    }

    v18 = 1;
    while (v13 != v18)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a4, v18++);
      if (TSUImprovedCFNumberFormatterGetValueFromString(ValueAtIndex, a3, a5))
      {
        v15 = v18 - 1 < v13;
        if (a6)
        {
          goto LABEL_4;
        }

        goto LABEL_5;
      }
    }
  }

  if (a6)
  {
    *a6 = 0;
  }

  v15 = 0;
  if (a7)
  {
    v17 = 0;
    goto LABEL_16;
  }

  return v15;
}

- (BOOL)findCurrencySymbolInString:(__CFString *)a3 additionalCurrencyCode:(__CFString *)a4 successTSUlString:(const __CFString *)a5
{
  Length = CFStringGetLength(a3);
  if (!Length || ((v10 = Length, Length >= 8) ? (v11 = 8) : (v11 = Length), v12 = TSUCurrencyCodesForLocale(self->mLocale, a4), (v13 = [v12 count]) == 0))
  {
    LOBYTE(v19) = 0;
    return v19;
  }

  v14 = v13;
  v23 = a5;
  v15 = 0;
  while (1)
  {
    v16 = [v12 objectAtIndex:v15];
    v17 = [(TSUNumberFormatter *)self currencySymbolForCurrencyCode:v16];
    v25.location = 0;
    v25.length = v11;
    if (CFStringFindWithOptions(a3, v17, v25, 0, 0))
    {
      break;
    }

    if (v10 >= 1)
    {
      v26.location = v10 - v11;
      v26.length = v11;
      if (CFStringFindWithOptions(a3, v17, v26, 0, 0))
      {
        break;
      }
    }

    v18 = [(TSUNumberFormatter *)self halfWidthCurrencySymbolForCurrencyCode:v16];
    result.location = 0;
    result.length = 0;
    v27.location = 0;
    v27.length = v11;
    if (CFStringFindWithOptions(a3, v18, v27, 0, &result))
    {
      v19 = 1;
    }

    else
    {
      if (v10 < 1)
      {
        LOBYTE(v19) = 0;
        goto LABEL_17;
      }

      v28.location = v10 - v11;
      v28.length = v11;
      v19 = CFStringFindWithOptions(a3, v18, v28, 0, &result) != 0;
    }

    if (v23 && v19)
    {
      LOBYTE(v19) = 1;
      result.length = 1;
      MutableCopy = CFStringCreateMutableCopy(0, 0, a3);
      v21 = [(TSUNumberFormatter *)self currencySymbolForCurrencyCode:v16];
      CFStringReplace(MutableCopy, result, v21);
      *v23 = MutableCopy;
      return v19;
    }

    if (v19)
    {
      return v19;
    }

LABEL_17:
    if (++v15 >= v14)
    {
      return v19;
    }
  }

  if (v23)
  {
    *v23 = CFRetain(a3);
  }

  LOBYTE(v19) = 1;
  return v19;
}

- (id)displayNameForCurrencyCode:(id)a3
{
  v3 = CFLocaleCopyDisplayNameForPropertyValue(self->mLocale, *MEMORY[0x277CBEEA0], a3);

  return v3;
}

- (id)currencySymbolForCurrencyCode:(id)a3
{
  v3 = a3;
  if (!a3)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormatter(Private) currencySymbolForCurrencyCode:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormatter.m"), 2177, @"can't get the currency symbol for a nil currency code. Using USD."}];
    v3 = @"USD";
  }

  mCurrencyCodeToSymbolMap = self->mCurrencyCodeToSymbolMap;
  objc_sync_enter(mCurrencyCodeToSymbolMap);
  v8 = [(NSMutableDictionary *)self->mCurrencyCodeToSymbolMap objectForKey:v3];
  if (!v8)
  {
    v9 = MEMORY[0x26D6AAE40](self->mLocale);
    ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(0, v9);
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, ComponentsFromLocaleIdentifier);
    CFDictionarySetValue(MutableCopy, *MEMORY[0x277CBEEA0], v3);
    LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(0, MutableCopy);
    v13 = CFLocaleCreate(0, LocaleIdentifierFromComponents);
    v8 = [CFLocaleGetValue(v13 *MEMORY[0x277CBEEA8])];
    [(NSMutableDictionary *)self->mCurrencyCodeToSymbolMap setObject:v8 forKey:v3];

    CFRelease(v13);
    CFRelease(LocaleIdentifierFromComponents);
    CFRelease(MutableCopy);
    CFRelease(ComponentsFromLocaleIdentifier);
  }

  objc_sync_exit(mCurrencyCodeToSymbolMap);
  return v8;
}

- (id)halfWidthCurrencySymbolForCurrencyCode:(id)a3
{
  mCurrencyCodeToHalfWidthSymbolMap = self->mCurrencyCodeToHalfWidthSymbolMap;
  objc_sync_enter(mCurrencyCodeToHalfWidthSymbolMap);
  MutableCopy = [(NSMutableDictionary *)self->mCurrencyCodeToHalfWidthSymbolMap objectForKey:a3];
  if (!MutableCopy)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, [(TSUNumberFormatter *)self currencySymbolForCurrencyCode:a3]);
    CFStringTransform(MutableCopy, 0, *MEMORY[0x277CBF0A8], 0);
    [(NSMutableDictionary *)self->mCurrencyCodeToHalfWidthSymbolMap setObject:MutableCopy forKey:a3];
    CFRelease(MutableCopy);
  }

  objc_sync_exit(mCurrencyCodeToHalfWidthSymbolMap);
  return MutableCopy;
}

- (id)currentLocaleCurrencyCode
{
  result = CFLocaleGetValue(self->mLocale, *MEMORY[0x277CBEEA0]);
  if (!result)
  {
    return @"USD";
  }

  return result;
}

- (id)defaultFormatStringForValueType:(int)a3 negativeStyle:(int)a4
{
  v4 = 112;
  if ((a3 - 1) < 3)
  {
    v4 = 8 * (a3 - 1) + 120;
  }

  if (a4 >= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = a4;
  }

  return [*(&self->super.isa + v4) objectAtIndex:v5];
}

- (id)defaultFormatStringForValueType:(int)a3
{
  v3 = 96;
  if ((a3 - 1) < 3)
  {
    v3 = 8 * (a3 - 1) + 72;
  }

  return *(&self->super.isa + v3);
}

- (__CFArray)p_decimalFormatters
{
  result = self->mDecimalFormatters;
  if (!result)
  {
    objc_sync_enter(self);
    if (!self->mDecimalFormatters)
    {
      v4 = TSUCreateArrayOfDecimalFormattersForLocale(self->mLocale);
      __dmb(0xBu);
      self->mDecimalFormatters = v4;
    }

    objc_sync_exit(self);
    return self->mDecimalFormatters;
  }

  return result;
}

- (__CFArray)p_currencyFormatters
{
  result = self->mCurrencyFormatters;
  if (!result)
  {
    objc_sync_enter(self);
    if (!self->mCurrencyFormatters)
    {
      mLocale = self->mLocale;
      v5 = TSUCurrencyCodesForLocale(mLocale, 0);
      v6 = TSUCreateArrayOfCurrencyFormattersForLocale(mLocale, v5);
      __dmb(0xBu);
      self->mCurrencyFormatters = v6;
    }

    objc_sync_exit(self);
    return self->mCurrencyFormatters;
  }

  return result;
}

- (__CFArray)p_percentageFormatters
{
  result = self->mPercentageFormatters;
  if (!result)
  {
    objc_sync_enter(self);
    if (!self->mPercentageFormatters)
    {
      v4 = TSUCreateArrayOfPercentageFormattersForLocale(self->mLocale);
      __dmb(0xBu);
      self->mPercentageFormatters = v4;
    }

    objc_sync_exit(self);
    return self->mPercentageFormatters;
  }

  return result;
}

- (__CFArray)p_scientificFormatters
{
  result = self->mScientificFormatters;
  if (!result)
  {
    objc_sync_enter(self);
    if (!self->mScientificFormatters)
    {
      v4 = TSUCreateArrayOfScientificFormattersForLocale(self->mLocale);
      __dmb(0xBu);
      self->mScientificFormatters = v4;
    }

    objc_sync_exit(self);
    return self->mScientificFormatters;
  }

  return result;
}

@end