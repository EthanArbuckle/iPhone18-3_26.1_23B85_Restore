@interface GQNumberFormatter
+ (id)availableCurrencyCodes;
+ (id)currencySymbolForCurrencyCode:(id)code;
+ (id)currentLocaleCurrencyCode;
+ (id)displayNameForCurrencyCode:(id)code;
+ (id)formatString:(id)string transformedForNegativeStyle:(int)style;
+ (id)formatterForLocale:(__CFLocale *)locale;
+ (id)localizedPercentSymbol;
+ (id)numberFormatStringSpecialSymbols;
+ (id)userVisibleCurrencyCodes;
+ (int)positionOfCurrencySymbolInNumberFormatSubpattern:(id)subpattern;
+ (int)positionOfMinusSignInNumberFormatSubpattern:(id)subpattern;
+ (int)positionOfSymbol:(id)symbol inNumberFormatSubpattern:(id)subpattern;
+ (unsigned)defaultDecimalPlacesForCurrencyCode:(id)code;
+ (void)formatString:(id)string replaceOccurencesOfUnescapedString:(id)unescapedString withString:(id)withString;
- (BOOL)currencyFromString:(__CFString *)string additionalCurrencyCode:(__CFString *)code value:(double *)value formatString:(const __CFString *)formatString currencyCode:(const __CFString *)currencyCode;
- (BOOL)findCurrencySymbolInString:(__CFString *)string additionalCurrencyCode:(__CFString *)code successfulString:(const __CFString *)successfulString;
- (BOOL)fractionFromString:(__CFString *)string value:(double *)value;
- (BOOL)valueFromString:(__CFString *)string formatters:(__CFArray *)formatters value:(double *)value formatString:(const __CFString *)formatString currencyCode:(const __CFString *)code;
- (GQNumberFormatter)initWithLocale:(__CFLocale *)locale;
- (id)currencySymbolForCurrencyCode:(id)code;
- (id)currentLocaleCurrencyCode;
- (id)defaultFormatStringForValueType:(int)type;
- (id)defaultFormatStringForValueType:(int)type negativeStyle:(int)style;
- (id)displayNameForCurrencyCode:(id)code;
- (id)halfWidthCurrencySymbolForCurrencyCode:(id)code;
- (void)dealloc;
@end

@implementation GQNumberFormatter

+ (int)positionOfSymbol:(id)symbol inNumberFormatSubpattern:(id)subpattern
{
  v5 = [subpattern rangeOfString:symbol];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = v5;
  sfu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern = [subpattern sfu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];
  return sfu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern != -1 && v7 >= sfu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern;
}

+ (int)positionOfCurrencySymbolInNumberFormatSubpattern:(id)subpattern
{
  v5 = [NSString stringWithFormat:@"%C", 164];

  return [self positionOfSymbol:v5 inNumberFormatSubpattern:subpattern];
}

+ (int)positionOfMinusSignInNumberFormatSubpattern:(id)subpattern
{
  v5 = [NSString stringWithFormat:@"-"];

  return [self positionOfSymbol:v5 inNumberFormatSubpattern:subpattern];
}

+ (id)formatString:(id)string transformedForNegativeStyle:(int)style
{
  v7 = +[NSMutableString string];
  v8 = v7;
  if (!style)
  {
    [v7 appendString:{objc_msgSend(string, "sfu_positiveSubpatternOfNumberFormatPattern")}];
    [v8 appendString:@";"];
    v12 = [objc_msgSend(string "sfu_positiveSubpatternOfNumberFormatPattern")];
    [self formatString:v12 replaceOccurencesOfUnescapedString:@"-" withString:&stru_85620];
    v13 = +[GQNumberFormatter positionOfMinusSignInNumberFormatSubpattern:](GQNumberFormatter, "positionOfMinusSignInNumberFormatSubpattern:", [string sfu_negativeSubpatternOfNumberFormatPattern]);
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
    [v7 appendString:{objc_msgSend(string, "sfu_positiveSubpatternOfNumberFormatPattern")}];
    [v8 appendString:@";"];
    v9 = [objc_msgSend(string "sfu_positiveSubpatternOfNumberFormatPattern")];
    [self formatString:v9 replaceOccurencesOfUnescapedString:@"-" withString:&stru_85620];
    v10 = v8;
    v11 = v9;
  }

  else
  {
    if ((style & 0xFFFFFFFE) != 2)
    {
      [v7 appendString:string];
      return v8;
    }

    [v7 appendString:{objc_msgSend(string, "sfu_positiveSubpatternOfNumberFormatPattern")}];
    [v8 appendString:@";"];
    v9 = [objc_msgSend(string "sfu_positiveSubpatternOfNumberFormatPattern")];
    [self formatString:v9 replaceOccurencesOfUnescapedString:@"-" withString:&stru_85620];
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
  sfu_createRangesOfEscapedCharactersInNumberFormatPattern = [string sfu_createRangesOfEscapedCharactersInNumberFormatPattern];
  v8 = [string length];
  if ([sfu_createRangesOfEscapedCharactersInNumberFormatPattern count])
  {
    [string replaceOccurrencesOfString:unescapedString withString:withString options:0 range:{0, objc_msgSend(objc_msgSend(sfu_createRangesOfEscapedCharactersInNumberFormatPattern, "objectAtIndex:", 0), "rangeValue")}];
    if ([sfu_createRangesOfEscapedCharactersInNumberFormatPattern count] >= 2)
    {
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = v8 - [string length];
        v12 = [objc_msgSend(sfu_createRangesOfEscapedCharactersInNumberFormatPattern objectAtIndex:{v9 - 2), "rangeValue"}];
        [string replaceOccurrencesOfString:unescapedString withString:withString options:0 range:{&v12[v13 - v11], objc_msgSend(objc_msgSend(sfu_createRangesOfEscapedCharactersInNumberFormatPattern, "objectAtIndex:", v10), "rangeValue") - &v12[v13]}];
        v10 = v9;
      }

      while ([sfu_createRangesOfEscapedCharactersInNumberFormatPattern count] > v9++);
    }

    v15 = [objc_msgSend(sfu_createRangesOfEscapedCharactersInNumberFormatPattern "lastObject")];
    v17 = &v15[v16];
    v18 = ([string length] - &v15[v16]);
  }

  else
  {
    v18 = [string length];
    v17 = 0;
  }

  [string replaceOccurrencesOfString:unescapedString withString:withString options:0 range:{v17, v18}];
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
  v6 = 0.0;
  DecimalInfoForCurrencyCode = CFNumberFormatterGetDecimalInfoForCurrencyCode(code, &defaultFractionDigits, &v6);
  v4 = defaultFractionDigits & ~(defaultFractionDigits >> 31);
  if (!DecimalInfoForCurrencyCode)
  {
    LOWORD(v4) = 0;
  }

  return v4;
}

+ (id)currentLocaleCurrencyCode
{
  v2 = [self formatterForLocale:0];

  return [v2 currentLocaleCurrencyCode];
}

+ (id)numberFormatStringSpecialSymbols
{
  v2 = [NSString stringWithFormat:@"0123456789@#.-, E+;'*%%%C%C", 8240, 164];

  return [NSCharacterSet characterSetWithCharactersInString:v2];
}

+ (id)localizedPercentSymbol
{
  v2 = [self formatterForLocale:0];

  return [v2 localizedPercentSymbol];
}

+ (id)userVisibleCurrencyCodes
{
  v2 = +[NSUserDefaults standardUserDefaults];
  if ([(NSUserDefaults *)v2 BOOLForKey:off_9D7A0])
  {
    v3 = CFLocaleCopyCommonISOCurrencyCodes();
    v4 = v3;
  }

  else
  {
    v3 = [NSMutableArray arrayWithObjects:@"AUD", @"CAD", @"HKD", @"SGD", @"TWD", @"USD", @"EUR", @"CHF", @"SEK", @"DKK", @"NOK", @"MXN", @"GBP", @"BRL", @"INR", @"KRW", @"JPY", @"CNY", @"IDR", @"RUB", @"TRY", @"THB", @"PLN", @"ZAR", @"ARS", 0];
    v5 = +[GQNumberFormatter currentLocaleCurrencyCode];
    if (([(NSMutableArray *)v3 containsObject:v5]& 1) == 0)
    {
      [(NSMutableArray *)v3 insertObject:v5 atIndex:0];
    }
  }

  return v3;
}

+ (id)formatterForLocale:(__CFLocale *)locale
{
  if (locale)
  {
    v3 = [[self alloc] initWithLocale:locale];

    return v3;
  }

  else
  {
    v5 = qword_A45A8;
    if (!qword_A45A8)
    {
      v5 = [[self alloc] initWithLocale:0];
      qword_A45A8 = v5;
    }

    return v5;
  }
}

- (GQNumberFormatter)initWithLocale:(__CFLocale *)locale
{
  v15.receiver = self;
  v15.super_class = GQNumberFormatter;
  v4 = [(GQNumberFormatter *)&v15 init];
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
    v4->mDecimalFormatters = sub_52678(v5);
    mLocale = v4->mLocale;
    v7 = [NSArray arrayWithObjects:CFLocaleGetValue(mLocale, kCFLocaleCurrencyCode), @"USD", @"JPY", @"GBP", @"EUR", 0, 0];
    v4->mCurrencyFormatters = sub_528D8(mLocale, v7);
    v4->mPercentageFormatters = sub_5314C(v4->mLocale);
    v4->mScientificFormatters = sub_53224(v4->mLocale);
    v4->mFractionFormatter = CFNumberFormatterCreate(0, v4->mLocale, kCFNumberFormatterDecimalStyle);
    v4->mCurrencyCodeToSymbolMap = objc_alloc_init(NSMutableDictionary);
    v4->mCurrencyCodeToHalfWidthSymbolMap = objc_alloc_init(NSMutableDictionary);
    v8 = CFNumberFormatterCreate(0, v4->mLocale, kCFNumberFormatterCurrencyStyle);
    v4->mCurrencyString = [(__CFString *)CFNumberFormatterGetFormat(v8) copy];
    CFRelease(v8);
    v9 = CFNumberFormatterCreate(0, v4->mLocale, kCFNumberFormatterPercentStyle);
    v4->mPercentageString = [(__CFString *)CFNumberFormatterGetFormat(v9) copy];
    CFRelease(v9);
    v10 = CFNumberFormatterCreate(0, v4->mLocale, kCFNumberFormatterNoStyle);
    CFNumberFormatterSetFormat(v10, @"#E+00");
    v4->mScientificString = [(__CFString *)CFNumberFormatterGetFormat(v10) copy];
    CFRelease(v10);
    v11 = CFNumberFormatterCreate(0, v4->mLocale, kCFNumberFormatterDecimalStyle);
    v4->mDecimalString = [(__CFString *)CFNumberFormatterGetFormat(v11) copy];
    CFRelease(v11);
    v4->mTransformedDecimalStrings = [[NSMutableArray alloc] initWithCapacity:4];
    v4->mTransformedCurrencyStrings = [[NSMutableArray alloc] initWithCapacity:4];
    v4->mTransformedPercentageStrings = [[NSMutableArray alloc] initWithCapacity:4];
    v12 = 0;
    v4->mTransformedScientificStrings = [[NSMutableArray alloc] initWithCapacity:4];
    do
    {
      [(NSMutableArray *)v4->mTransformedDecimalStrings insertObject:[GQNumberFormatter atIndex:"formatString:transformedForNegativeStyle:" formatString:v12 transformedForNegativeStyle:?], v12];
      [(NSMutableArray *)v4->mTransformedCurrencyStrings insertObject:[GQNumberFormatter atIndex:"formatString:transformedForNegativeStyle:" formatString:v12 transformedForNegativeStyle:?], v12];
      [(NSMutableArray *)v4->mTransformedPercentageStrings insertObject:[GQNumberFormatter atIndex:"formatString:transformedForNegativeStyle:" formatString:v12 transformedForNegativeStyle:?], v12];
      [(NSMutableArray *)v4->mTransformedScientificStrings insertObject:[GQNumberFormatter atIndex:"formatString:transformedForNegativeStyle:" formatString:v12 transformedForNegativeStyle:?], v12];
      ++v12;
    }

    while (v12 != 4);
    v13 = CFNumberFormatterCreate(0, v4->mLocale, kCFNumberFormatterNoStyle);
    v4->mPercentSymbol = CFNumberFormatterCopyProperty(v13, kCFNumberFormatterPercentSymbol);
    CFRelease(v13);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->mLocale);
  CFRelease(self->mDecimalFormatters);
  CFRelease(self->mCurrencyFormatters);
  CFRelease(self->mPercentageFormatters);
  CFRelease(self->mScientificFormatters);
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

  v5.receiver = self;
  v5.super_class = GQNumberFormatter;
  [(GQNumberFormatter *)&v5 dealloc];
}

- (BOOL)currencyFromString:(__CFString *)string additionalCurrencyCode:(__CFString *)code value:(double *)value formatString:(const __CFString *)formatString currencyCode:(const __CFString *)currencyCode
{
  cf = 0;
  if ([(GQNumberFormatter *)self findCurrencySymbolInString:string additionalCurrencyCode:code successfulString:&cf])
  {
    v12 = [(GQNumberFormatter *)self valueFromString:cf formatters:self->mCurrencyFormatters value:value formatString:formatString currencyCode:currencyCode];
    v13 = v12;
    if (!code || (v12 & 1) != 0)
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
        v13 = [(GQNumberFormatter *)self valueFromString:cf formatters:mAdditionalCurrencyCodeFormatters value:value formatString:formatString currencyCode:currencyCode];
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
    mAdditionalCurrencyCodeFormatters = sub_528D8(self->mLocale, [NSArray arrayWithObject:v17]);
    self->mAdditionalCurrencyCodeFormatters = mAdditionalCurrencyCodeFormatters;
    goto LABEL_13;
  }

  return 0;
}

- (BOOL)fractionFromString:(__CFString *)string value:(double *)value
{
  v7 = CFStringFind(string, @"/", 0);
  if (v7.location != -1 && v7.length != 0)
  {
    v29.location = 0;
    v29.length = v7.location;
    v10 = CFStringCreateWithSubstring(kCFAllocatorDefault, string, v29);
    v11 = v7.location + 1;
    if (v11 >= CFStringGetLength(string))
    {
      v18 = 0;
      v19 = 0;
      v14 = 0;
      MutableCopy = 0;
      v17 = 0;
      v24 = 0;
      v12 = 0;
      goto LABEL_24;
    }

    v30.length = CFStringGetLength(string) - v11;
    v30.location = v7.location + 1;
    v12 = CFStringCreateWithSubstring(kCFAllocatorDefault, string, v30);
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v10);
    v14 = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v12);
    CFStringTrimWhitespace(MutableCopy);
    CFStringTrimWhitespace(v14);
    v15 = CFStringFind(MutableCopy, @" ", 0);
    if (v15.location == 0x7FFFFFFFFFFFFFFFLL || v15.length == 0)
    {
      v24 = 0;
      v17 = 0;
      v18 = 0;
      v27 = 0.0;
      v28 = 0.0;
      v26 = 0.0;
    }

    else
    {
      v31.location = 0;
      v31.length = v15.location;
      v24 = CFStringCreateWithSubstring(kCFAllocatorDefault, MutableCopy, v31);
      v25 = v15.location + 1;
      if (v25 >= CFStringGetLength(MutableCopy))
      {
        v18 = 0;
        v19 = 0;
        v17 = 0;
        goto LABEL_24;
      }

      v32.length = CFStringGetLength(MutableCopy) - v25;
      v32.location = v15.location + 1;
      v17 = CFStringCreateWithSubstring(kCFAllocatorDefault, MutableCopy, v32);
      v19 = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v24);
      v18 = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v17);
      CFStringTrimWhitespace(v19);
      CFStringTrimWhitespace(v18);
      v27 = 0.0;
      v28 = 0.0;
      v26 = 0.0;
      if (v19)
      {
        if (!sub_5328C(self->mFractionFormatter, v19, &v26))
        {
          goto LABEL_24;
        }

        v20 = floor(v26);
        if (vabdd_f64(v26, v20) > 0.00001 || (sub_5328C(self->mFractionFormatter, v18, &v28) & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

    v19 = 0;
    if ((sub_5328C(self->mFractionFormatter, MutableCopy, &v28) & 1) == 0)
    {
      goto LABEL_24;
    }

    v20 = 0.0;
LABEL_17:
    if ((sub_5328C(self->mFractionFormatter, v14, &v27) & 1) != 0 && v27 != 0.0)
    {
      v21 = v20 + v28 / v27;
      if (__fpclassifyd(v21) != 2 && __fpclassifyd(v21) != 1)
      {
        if (!value)
        {
          v9 = 1;
          if (!v10)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

        v22 = v20 + v28 / v27;
        v9 = 1;
LABEL_25:
        *value = v22;
LABEL_26:
        if (!v10)
        {
LABEL_28:
          if (v12)
          {
            CFRelease(v12);
          }

          if (v24)
          {
            CFRelease(v24);
          }

          if (v17)
          {
            CFRelease(v17);
          }

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          if (v19)
          {
            CFRelease(v19);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          return v9;
        }

LABEL_27:
        CFRelease(v10);
        goto LABEL_28;
      }
    }

LABEL_24:
    v9 = 0;
    v22 = 0.0;
    if (!value)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
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
    if (sub_5328C(ValueAtIndex, string, value))
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
        v17 = CFNumberFormatterCopyProperty(ValueAtIndex, kCFNumberFormatterCurrencyCode);
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
      if (sub_5328C(ValueAtIndex, string, value))
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

- (BOOL)findCurrencySymbolInString:(__CFString *)string additionalCurrencyCode:(__CFString *)code successfulString:(const __CFString *)successfulString
{
  Length = CFStringGetLength(string);
  v10 = Length;
  if (!Length || (Length >= 8 ? (v11 = 8) : (v11 = Length), v12 = [NSArray arrayWithObjects:CFLocaleGetValue(self->mLocale, kCFLocaleCurrencyCode), @"USD", @"JPY", @"GBP", @"EUR", code, 0], v13 = [(NSArray *)v12 count], v13 < 1))
  {
    LOBYTE(v21) = 0;
    return v21;
  }

  successfulStringCopy = successfulString;
  v14 = 0;
  v15 = v11;
  v16 = v10 - v11;
  v17 = v13 & 0x7FFFFFFF;
  while (1)
  {
    v18 = [(NSArray *)v12 objectAtIndex:v14];
    v19 = [(GQNumberFormatter *)self currencySymbolForCurrencyCode:v18];
    v27.location = 0;
    v27.length = v15;
    if (CFStringFindWithOptions(string, v19, v27, 0, 0))
    {
      break;
    }

    if (v10 >= 1)
    {
      v28.location = v16;
      v28.length = v15;
      if (CFStringFindWithOptions(string, v19, v28, 0, 0))
      {
        break;
      }
    }

    v20 = [(GQNumberFormatter *)self halfWidthCurrencySymbolForCurrencyCode:v18];
    result.location = 0;
    result.length = 0;
    v29.location = 0;
    v29.length = v15;
    if (CFStringFindWithOptions(string, v20, v29, 0, &result))
    {
      v21 = 1;
    }

    else
    {
      if (v10 < 1)
      {
        LOBYTE(v21) = 0;
        goto LABEL_17;
      }

      v30.location = v16;
      v30.length = v15;
      v21 = CFStringFindWithOptions(string, v20, v30, 0, &result) != 0;
    }

    if (successfulStringCopy && v21)
    {
      LOBYTE(v21) = 1;
      result.length = 1;
      MutableCopy = CFStringCreateMutableCopy(0, 0, string);
      v23 = [(GQNumberFormatter *)self currencySymbolForCurrencyCode:v18];
      CFStringReplace(MutableCopy, result, v23);
      *successfulStringCopy = MutableCopy;
      return v21;
    }

    if (v21)
    {
      return v21;
    }

LABEL_17:
    if (++v14 >= v17)
    {
      return v21;
    }
  }

  if (successfulStringCopy)
  {
    *successfulStringCopy = CFRetain(string);
  }

  LOBYTE(v21) = 1;
  return v21;
}

- (id)displayNameForCurrencyCode:(id)code
{
  v3 = CFLocaleCopyDisplayNameForPropertyValue(self->mLocale, kCFLocaleCurrencyCode, code);

  return v3;
}

- (id)currencySymbolForCurrencyCode:(id)code
{
  v5 = [(NSMutableDictionary *)self->mCurrencyCodeToSymbolMap objectForKey:?];
  if (!v5)
  {
    Identifier = CFLocaleGetIdentifier(self->mLocale);
    ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(0, Identifier);
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, ComponentsFromLocaleIdentifier);
    CFDictionarySetValue(MutableCopy, kCFLocaleCurrencyCode, code);
    LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(0, MutableCopy);
    v10 = CFLocaleCreate(0, LocaleIdentifierFromComponents);
    v5 = [CFLocaleGetValue(v10 kCFLocaleCurrencySymbol)];
    [(NSMutableDictionary *)self->mCurrencyCodeToSymbolMap setObject:v5 forKey:code];

    CFRelease(v10);
    CFRelease(LocaleIdentifierFromComponents);
    CFRelease(MutableCopy);
    CFRelease(ComponentsFromLocaleIdentifier);
  }

  return v5;
}

- (id)halfWidthCurrencySymbolForCurrencyCode:(id)code
{
  MutableCopy = [(NSMutableDictionary *)self->mCurrencyCodeToHalfWidthSymbolMap objectForKey:?];
  if (!MutableCopy)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, [(GQNumberFormatter *)self currencySymbolForCurrencyCode:code]);
    CFStringTransform(MutableCopy, 0, kCFStringTransformFullwidthHalfwidth, 0);
    [(NSMutableDictionary *)self->mCurrencyCodeToHalfWidthSymbolMap setObject:MutableCopy forKey:code];
    CFRelease(MutableCopy);
  }

  return MutableCopy;
}

- (id)currentLocaleCurrencyCode
{
  v2 = CFLocaleGetValue(self->mLocale, kCFLocaleCurrencyCode);

  return v2;
}

- (id)defaultFormatStringForValueType:(int)type negativeStyle:(int)style
{
  v4 = 112;
  if ((type - 1) < 3)
  {
    v4 = 8 * (type - 1) + 120;
  }

  return [*(&self->super.isa + v4) objectAtIndex:style];
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

@end