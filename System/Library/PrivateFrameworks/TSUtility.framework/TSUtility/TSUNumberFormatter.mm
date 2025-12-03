@interface TSUNumberFormatter
+ (id)availableCurrencyCodes;
+ (id)currencySymbolForCurrencyCode:(id)code;
+ (id)currentLocaleCurrencyCode;
+ (id)currentNonCachedLocaleCurrencyCode;
+ (id)currentNonCachedLocaleDecimalSeparator;
+ (id)defaultFormatStringForValueType:(int)type;
+ (id)defaultFormatStringForValueType:(int)type negativeStyle:(int)style;
+ (id)displayNameForCurrencyCode:(id)code;
+ (id)formatString:(id)string transformedForNegativeStyle:(int)style;
+ (id)formatterForLocale:(__CFLocale *)locale;
+ (id)localizedPercentSymbol;
+ (id)userVisibleCurrencyCodes;
+ (int)positionOfMinusSignInNumberFormatSubpattern:(id)subpattern;
+ (int)positionOfSymbol:(id)symbol inNumberFormatSubpattern:(id)subpattern;
+ (unsigned)defaultDecimalPlacesForCurrencyCode:(id)code;
+ (void)formatString:(id)string replaceOccurencesOfUnescapedString:(id)unescapedString withString:(id)withString;
+ (void)initialize;
- (BOOL)currencyFromString:(__CFString *)string additionalCurrencyCode:(__CFString *)code value:(double *)value formatString:(const __CFString *)formatString currencyCode:(const __CFString *)currencyCode;
- (BOOL)decimalFromString:(__CFString *)string value:(double *)value formatString:(const __CFString *)formatString;
- (BOOL)findCurrencySymbolInString:(__CFString *)string additionalCurrencyCode:(__CFString *)code successTSUlString:(const __CFString *)ulString;
- (BOOL)fractionFromString:(__CFString *)string value:(double *)value;
- (BOOL)percentageFromString:(__CFString *)string value:(double *)value formatString:(const __CFString *)formatString;
- (BOOL)scientificFromString:(__CFString *)string value:(double *)value formatString:(const __CFString *)formatString;
- (BOOL)valueFromString:(__CFString *)string formatters:(__CFArray *)formatters value:(double *)value formatString:(const __CFString *)formatString currencyCode:(const __CFString *)code;
- (TSUNumberFormatter)initWithLocale:(__CFLocale *)locale;
- (__CFArray)p_currencyFormatters;
- (__CFArray)p_decimalFormatters;
- (__CFArray)p_percentageFormatters;
- (__CFArray)p_scientificFormatters;
- (id)currencySymbolForCurrencyCode:(id)code;
- (id)currentLocaleCurrencyCode;
- (id)defaultFormatStringForValueType:(int)type;
- (id)defaultFormatStringForValueType:(int)type negativeStyle:(int)style;
- (id)displayNameForCurrencyCode:(id)code;
- (id)halfWidthCurrencySymbolForCurrencyCode:(id)code;
- (void)dealloc;
- (void)numberPreferencesChanged:(id)changed;
@end

@implementation TSUNumberFormatter

+ (void)initialize
{
  gLockTSUNumberOfTrailingZerosInMantissaWhenFormattedAsScientific = objc_alloc_init(MEMORY[0x277CCAC60]);
  gLockTSUNumberFormatterStringFromDoubleWithFormat = objc_alloc_init(MEMORY[0x277CCAC60]);
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSUNumberFormatter;
  objc_msgSendSuper2(&v3, sel_initialize);
}

+ (int)positionOfSymbol:(id)symbol inNumberFormatSubpattern:(id)subpattern
{
  v5 = [subpattern rangeOfString:symbol];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = v5;
  indexOfFirstNonPrefixCharacterInNumberFormatSubpattern = [subpattern indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];
  return indexOfFirstNonPrefixCharacterInNumberFormatSubpattern != 0x7FFFFFFFFFFFFFFFLL && v7 >= indexOfFirstNonPrefixCharacterInNumberFormatSubpattern;
}

+ (int)positionOfMinusSignInNumberFormatSubpattern:(id)subpattern
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"-"];

  return [self positionOfSymbol:v5 inNumberFormatSubpattern:subpattern];
}

+ (id)formatString:(id)string transformedForNegativeStyle:(int)style
{
  string = [MEMORY[0x277CCAB68] string];
  v8 = string;
  if (!style)
  {
    [string appendString:{objc_msgSend(string, "positiveSubpatternOfNumberFormatPattern")}];
    [v8 appendString:@";"];
    v12 = [objc_msgSend(string "positiveSubpatternOfNumberFormatPattern")];
    [self formatString:v12 replaceOccurencesOfUnescapedString:@"-" withString:&stru_287DDF830];
    v13 = +[TSUNumberFormatter positionOfMinusSignInNumberFormatSubpattern:](TSUNumberFormatter, "positionOfMinusSignInNumberFormatSubpattern:", [string negativeSubpatternOfNumberFormatPattern]);
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

  if (style == 1)
  {
    [string appendString:{objc_msgSend(string, "positiveSubpatternOfNumberFormatPattern")}];
    [v8 appendString:@";"];
    v9 = [objc_msgSend(string "positiveSubpatternOfNumberFormatPattern")];
    [self formatString:v9 replaceOccurencesOfUnescapedString:@"-" withString:&stru_287DDF830];
    v10 = v8;
    v11 = v9;
  }

  else
  {
    if ((style & 0xFFFFFFFE) != 2)
    {
      [string appendString:string];
      return v8;
    }

    [string appendString:{objc_msgSend(string, "positiveSubpatternOfNumberFormatPattern")}];
    [v8 appendString:@";"];
    v9 = [objc_msgSend(string "positiveSubpatternOfNumberFormatPattern")];
    [self formatString:v9 replaceOccurencesOfUnescapedString:@"-" withString:&stru_287DDF830];
    objc_msgSend(v8, "appendString:", @"(");
    [v8 appendString:v9];
    v11 = @"");
    v10 = v8;
  }

  [v10 appendString:v11];

  return v8;
}

+ (void)formatString:(id)string replaceOccurencesOfUnescapedString:(id)unescapedString withString:(id)withString
{
  newRangesOfEscapedCharactersInNumberFormatPattern = [string newRangesOfEscapedCharactersInNumberFormatPattern];
  v8 = [string length];
  if ([newRangesOfEscapedCharactersInNumberFormatPattern count])
  {
    [string replaceOccurrencesOfString:unescapedString withString:withString options:0 range:{0, objc_msgSend(objc_msgSend(newRangesOfEscapedCharactersInNumberFormatPattern, "objectAtIndex:", 0), "rangeValue")}];
    if ([newRangesOfEscapedCharactersInNumberFormatPattern count] >= 2)
    {
      v9 = 1;
      do
      {
        v10 = [string length];
        v11 = [objc_msgSend(newRangesOfEscapedCharactersInNumberFormatPattern objectAtIndex:{v9 - 1), "rangeValue"}];
        [string replaceOccurrencesOfString:unescapedString withString:withString options:0 range:{v12 + v11 - v8 + v10, objc_msgSend(objc_msgSend(newRangesOfEscapedCharactersInNumberFormatPattern, "objectAtIndex:", v9++), "rangeValue") - (v12 + v11)}];
      }

      while (v9 < [newRangesOfEscapedCharactersInNumberFormatPattern count]);
    }

    v13 = [objc_msgSend(newRangesOfEscapedCharactersInNumberFormatPattern "lastObject")];
    v15 = v13 + v14;
    v16 = [string length] - (v13 + v14);
  }

  else
  {
    v16 = [string length];
    v15 = 0;
  }

  [string replaceOccurrencesOfString:unescapedString withString:withString options:0 range:{v15, v16}];
}

+ (id)availableCurrencyCodes
{
  v2 = CFLocaleCopyISOCurrencyCodes();

  return v2;
}

+ (id)displayNameForCurrencyCode:(id)code
{
  v4 = [self formatterForLocale:0];

  return [v4 displayNameForCurrencyCode:code];
}

+ (id)currencySymbolForCurrencyCode:(id)code
{
  v4 = [self formatterForLocale:0];

  return [v4 currencySymbolForCurrencyCode:code];
}

+ (unsigned)defaultDecimalPlacesForCurrencyCode:(id)code
{
  defaultFractionDigits = 0;
  v7 = 0.0;
  if (CFNumberFormatterGetDecimalInfoForCurrencyCode(code, &defaultFractionDigits, &v7))
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
  v2 = [self formatterForLocale:0];

  return [v2 currentLocaleCurrencyCode];
}

+ (id)currentNonCachedLocaleCurrencyCode
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  result = CFLocaleGetValue(currentLocale, *MEMORY[0x277CBEEA0]);
  if (!result)
  {
    return @"USD";
  }

  return result;
}

+ (id)currentNonCachedLocaleDecimalSeparator
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = *MEMORY[0x277CBEEB8];

  return CFLocaleGetValue(currentLocale, v3);
}

+ (id)defaultFormatStringForValueType:(int)type negativeStyle:(int)style
{
  v4 = *&style;
  v5 = *&type;
  v6 = [self formatterForLocale:0];

  return [v6 defaultFormatStringForValueType:v5 negativeStyle:v4];
}

+ (id)defaultFormatStringForValueType:(int)type
{
  v3 = *&type;
  v4 = [self formatterForLocale:0];

  return [v4 defaultFormatStringForValueType:v3];
}

+ (id)localizedPercentSymbol
{
  v2 = [self formatterForLocale:0];

  return [v2 localizedPercentSymbol];
}

+ (id)userVisibleCurrencyCodes
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:TSUDefaultsShowCompleteCurrencyList])
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

+ (id)formatterForLocale:(__CFLocale *)locale
{
  if (locale)
  {
    v4 = [[self alloc] initWithLocale:locale];

    return v4;
  }

  else
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];
    v8 = [threadDictionary objectForKey:@"TSUNumberFormatterThreadDictionaryKey"];
    if (!v8)
    {
      v8 = [[self alloc] initWithLocale:0];
      [threadDictionary setObject:v8 forKey:@"TSUNumberFormatterThreadDictionaryKey"];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __50__TSUNumberFormatter_Private__formatterForLocale___block_invoke;
      v12[3] = &unk_279D65DF0;
      v12[4] = currentThread;
      v12[5] = v8;
      [threadDictionary setObject:TSURegisterLocaleChangeObserver(v12) forKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = *MEMORY[0x277CCA6F8];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __50__TSUNumberFormatter_Private__formatterForLocale___block_invoke_2;
      v11[3] = &unk_279D65E18;
      v11[4] = v8;
      [threadDictionary setObject:objc_msgSend(defaultCenter forKey:{"addObserverForName:object:queue:usingBlock:", v10, currentThread, 0, v11), @"TSUNumberFormatterThreadDictionaryExitObserverKey"}];
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

- (TSUNumberFormatter)initWithLocale:(__CFLocale *)locale
{
  v13.receiver = self;
  v13.super_class = TSUNumberFormatter;
  v4 = [(TSUNumberFormatter *)&v13 init];
  if (v4)
  {
    if (locale)
    {
      v5 = CFRetain(locale);
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

- (void)numberPreferencesChanged:(id)changed
{
  currentThread = [objc_msgSend(MEMORY[0x277CCACC8] currentThread];
  if ([currentThread objectForKey:@"TSUNumberFormatterThreadDictionaryKey"] != self)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormatter(Private) numberPreferencesChanged:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormatter.m"), 1886, @"Registered wrong date formatter for date preference change notification"}];
  }

  selfCopy = self;
  [currentThread removeObjectForKey:@"TSUNumberFormatterThreadDictionaryKey"];
  TSURemoveLocaleChangeObserver([currentThread objectForKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"]);
  [currentThread removeObjectForKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
  v7 = [currentThread objectForKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [currentThread removeObjectForKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
}

- (BOOL)decimalFromString:(__CFString *)string value:(double *)value formatString:(const __CFString *)formatString
{
  p_decimalFormatters = [(TSUNumberFormatter *)self p_decimalFormatters];

  return [(TSUNumberFormatter *)self valueFromString:string formatters:p_decimalFormatters value:value formatString:formatString currencyCode:0];
}

- (BOOL)currencyFromString:(__CFString *)string additionalCurrencyCode:(__CFString *)code value:(double *)value formatString:(const __CFString *)formatString currencyCode:(const __CFString *)currencyCode
{
  cf = 0;
  if ([(TSUNumberFormatter *)self findCurrencySymbolInString:string additionalCurrencyCode:code successTSUlString:&cf])
  {
    v12 = [(TSUNumberFormatter *)self valueFromString:cf formatters:[(TSUNumberFormatter *)self p_currencyFormatters] value:value formatString:formatString currencyCode:currencyCode];
    v13 = v12;
    if (!code || v12)
    {
      goto LABEL_14;
    }

    mAdditionalCurrencyCode = self->mAdditionalCurrencyCode;
    if (mAdditionalCurrencyCode)
    {
      if (CFStringCompare(mAdditionalCurrencyCode, code, 0) == kCFCompareEqualTo)
      {
        mAdditionalCurrencyCodeFormatters = self->mAdditionalCurrencyCodeFormatters;
LABEL_13:
        v13 = [(TSUNumberFormatter *)self valueFromString:cf formatters:mAdditionalCurrencyCodeFormatters value:value formatString:formatString currencyCode:currencyCode];
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

    v17 = CFRetain(code);
    self->mAdditionalCurrencyCode = v17;
    mAdditionalCurrencyCodeFormatters = TSUCreateArrayOfCurrencyFormattersForLocale(self->mLocale, [MEMORY[0x277CBEA60] arrayWithObject:v17]);
    self->mAdditionalCurrencyCodeFormatters = mAdditionalCurrencyCodeFormatters;
    goto LABEL_13;
  }

  return 0;
}

- (BOOL)percentageFromString:(__CFString *)string value:(double *)value formatString:(const __CFString *)formatString
{
  p_percentageFormatters = [(TSUNumberFormatter *)self p_percentageFormatters];

  return [(TSUNumberFormatter *)self valueFromString:string formatters:p_percentageFormatters value:value formatString:formatString currencyCode:0];
}

- (BOOL)scientificFromString:(__CFString *)string value:(double *)value formatString:(const __CFString *)formatString
{
  p_scientificFormatters = [(TSUNumberFormatter *)self p_scientificFormatters];

  return [(TSUNumberFormatter *)self valueFromString:string formatters:p_scientificFormatters value:value formatString:formatString currencyCode:0];
}

- (BOOL)fractionFromString:(__CFString *)string value:(double *)value
{
  v7 = CFStringFind(string, @"/", 0);
  if (v7.location != -1 && v7.length != 0)
  {
    v10 = *MEMORY[0x277CBECE8];
    v31.location = 0;
    v31.length = v7.location;
    v11 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], string, v31);
    v12 = v7.location + 1;
    if (v12 >= CFStringGetLength(string))
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

    v32.length = CFStringGetLength(string) - v12;
    v32.location = v7.location + 1;
    v13 = CFStringCreateWithSubstring(v10, string, v32);
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
        if (!value)
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
        *value = v24;
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
    if (!value)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v9 = 0;
  if (value)
  {
    *value = 0.0;
  }

  return v9;
}

- (BOOL)valueFromString:(__CFString *)string formatters:(__CFArray *)formatters value:(double *)value formatString:(const __CFString *)formatString currencyCode:(const __CFString *)code
{
  Count = CFArrayGetCount(formatters);
  if (Count >= 1)
  {
    v13 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(formatters, 0);
    if (TSUImprovedCFNumberFormatterGetValueFromString(ValueAtIndex, string, value))
    {
      v15 = 1;
      if (formatString)
      {
LABEL_4:
        Format = CFNumberFormatterGetFormat(ValueAtIndex);
        *formatString = CFRetain(Format);
      }

LABEL_5:
      if (code)
      {
        v17 = CFNumberFormatterCopyProperty(ValueAtIndex, *MEMORY[0x277CBEEF8]);
LABEL_16:
        *code = v17;
        return v15;
      }

      return v15;
    }

    v18 = 1;
    while (v13 != v18)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(formatters, v18++);
      if (TSUImprovedCFNumberFormatterGetValueFromString(ValueAtIndex, string, value))
      {
        v15 = v18 - 1 < v13;
        if (formatString)
        {
          goto LABEL_4;
        }

        goto LABEL_5;
      }
    }
  }

  if (formatString)
  {
    *formatString = 0;
  }

  v15 = 0;
  if (code)
  {
    v17 = 0;
    goto LABEL_16;
  }

  return v15;
}

- (BOOL)findCurrencySymbolInString:(__CFString *)string additionalCurrencyCode:(__CFString *)code successTSUlString:(const __CFString *)ulString
{
  Length = CFStringGetLength(string);
  if (!Length || ((v10 = Length, Length >= 8) ? (v11 = 8) : (v11 = Length), v12 = TSUCurrencyCodesForLocale(self->mLocale, code), (v13 = [v12 count]) == 0))
  {
    LOBYTE(v19) = 0;
    return v19;
  }

  v14 = v13;
  ulStringCopy = ulString;
  v15 = 0;
  while (1)
  {
    v16 = [v12 objectAtIndex:v15];
    v17 = [(TSUNumberFormatter *)self currencySymbolForCurrencyCode:v16];
    v25.location = 0;
    v25.length = v11;
    if (CFStringFindWithOptions(string, v17, v25, 0, 0))
    {
      break;
    }

    if (v10 >= 1)
    {
      v26.location = v10 - v11;
      v26.length = v11;
      if (CFStringFindWithOptions(string, v17, v26, 0, 0))
      {
        break;
      }
    }

    v18 = [(TSUNumberFormatter *)self halfWidthCurrencySymbolForCurrencyCode:v16];
    result.location = 0;
    result.length = 0;
    v27.location = 0;
    v27.length = v11;
    if (CFStringFindWithOptions(string, v18, v27, 0, &result))
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
      v19 = CFStringFindWithOptions(string, v18, v28, 0, &result) != 0;
    }

    if (ulStringCopy && v19)
    {
      LOBYTE(v19) = 1;
      result.length = 1;
      MutableCopy = CFStringCreateMutableCopy(0, 0, string);
      v21 = [(TSUNumberFormatter *)self currencySymbolForCurrencyCode:v16];
      CFStringReplace(MutableCopy, result, v21);
      *ulStringCopy = MutableCopy;
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

  if (ulStringCopy)
  {
    *ulStringCopy = CFRetain(string);
  }

  LOBYTE(v19) = 1;
  return v19;
}

- (id)displayNameForCurrencyCode:(id)code
{
  v3 = CFLocaleCopyDisplayNameForPropertyValue(self->mLocale, *MEMORY[0x277CBEEA0], code);

  return v3;
}

- (id)currencySymbolForCurrencyCode:(id)code
{
  codeCopy = code;
  if (!code)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormatter(Private) currencySymbolForCurrencyCode:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormatter.m"), 2177, @"can't get the currency symbol for a nil currency code. Using USD."}];
    codeCopy = @"USD";
  }

  mCurrencyCodeToSymbolMap = self->mCurrencyCodeToSymbolMap;
  objc_sync_enter(mCurrencyCodeToSymbolMap);
  v8 = [(NSMutableDictionary *)self->mCurrencyCodeToSymbolMap objectForKey:codeCopy];
  if (!v8)
  {
    v9 = MEMORY[0x26D6AAE40](self->mLocale);
    ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(0, v9);
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, ComponentsFromLocaleIdentifier);
    CFDictionarySetValue(MutableCopy, *MEMORY[0x277CBEEA0], codeCopy);
    LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(0, MutableCopy);
    v13 = CFLocaleCreate(0, LocaleIdentifierFromComponents);
    v8 = [CFLocaleGetValue(v13 *MEMORY[0x277CBEEA8])];
    [(NSMutableDictionary *)self->mCurrencyCodeToSymbolMap setObject:v8 forKey:codeCopy];

    CFRelease(v13);
    CFRelease(LocaleIdentifierFromComponents);
    CFRelease(MutableCopy);
    CFRelease(ComponentsFromLocaleIdentifier);
  }

  objc_sync_exit(mCurrencyCodeToSymbolMap);
  return v8;
}

- (id)halfWidthCurrencySymbolForCurrencyCode:(id)code
{
  mCurrencyCodeToHalfWidthSymbolMap = self->mCurrencyCodeToHalfWidthSymbolMap;
  objc_sync_enter(mCurrencyCodeToHalfWidthSymbolMap);
  MutableCopy = [(NSMutableDictionary *)self->mCurrencyCodeToHalfWidthSymbolMap objectForKey:code];
  if (!MutableCopy)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, [(TSUNumberFormatter *)self currencySymbolForCurrencyCode:code]);
    CFStringTransform(MutableCopy, 0, *MEMORY[0x277CBF0A8], 0);
    [(NSMutableDictionary *)self->mCurrencyCodeToHalfWidthSymbolMap setObject:MutableCopy forKey:code];
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

- (id)defaultFormatStringForValueType:(int)type negativeStyle:(int)style
{
  v4 = 112;
  if ((type - 1) < 3)
  {
    v4 = 8 * (type - 1) + 120;
  }

  if (style >= 4)
  {
    styleCopy = 4;
  }

  else
  {
    styleCopy = style;
  }

  return [*(&self->super.isa + v4) objectAtIndex:styleCopy];
}

- (id)defaultFormatStringForValueType:(int)type
{
  v3 = 96;
  if ((type - 1) < 3)
  {
    v3 = 8 * (type - 1) + 72;
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