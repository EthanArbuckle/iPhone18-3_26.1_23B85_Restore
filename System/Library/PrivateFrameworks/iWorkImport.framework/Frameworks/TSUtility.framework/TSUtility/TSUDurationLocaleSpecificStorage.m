@interface TSUDurationLocaleSpecificStorage
+ (id)localeSpecificStorageForLocale:(id)a3;
- (TSUDurationLocaleSpecificStorage)initWithLocale:(id)a3;
- (void)addDurationUnit:(id)a3;
- (void)dealloc;
@end

@implementation TSUDurationLocaleSpecificStorage

- (TSUDurationLocaleSpecificStorage)initWithLocale:(id)a3
{
  v9.receiver = self;
  v9.super_class = TSUDurationLocaleSpecificStorage;
  v4 = [(TSUDurationLocaleSpecificStorage *)&v9 init];
  if (v4)
  {
    v4->_emptyCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:&stru_28862C2A0];
    v4->_minusSignCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-"];
    v4->_alphabeticCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
    v4->_decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v4->_whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v4->_whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v4->_specialDurationFormatCharacters = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"wdhmsf"];
    if ([objc_msgSend(a3 "languageCode")])
    {
      v5 = [(NSCharacterSet *)v4->_alphabeticCharacterSet mutableCopy];
      [(NSCharacterSet *)v5 addCharactersInString:@"׳״"];

      v4->_alphabeticCharacterSet = v5;
    }

    v6 = [MEMORY[0x277CCAB50] characterSetWithCharactersInString:@":."];
    [v6 addCharactersInString:{objc_msgSend(a3, "decimalSeparator")}];
    v4->_separatorPunctuationCharacterSet = [v6 copy];
    v7 = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
    [v7 addCharactersInString:{objc_msgSend(a3, "decimalSeparator")}];
    [v7 addCharactersInString:{objc_msgSend(a3, "groupingSeparator")}];
    v4->_decimalDigitAndSeperatorsCharacterSet = [v7 copy];
    v4->_weekLongSingularString = [a3 localizedStringForKey:@"week" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_weekLongPluralString = [a3 localizedStringForKey:@"weeks" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_weekMediumSingularString = [a3 localizedStringForKey:@"wk" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_weekMediumPluralString = [a3 localizedStringForKey:@"wks" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_weekShortString = [a3 localizedStringForKey:@"w" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_dayLongSingularString = [a3 localizedStringForKey:@"day" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_dayLongPluralString = [a3 localizedStringForKey:@"days" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_dayMediumSingularString = [a3 localizedStringForKey:@"day" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_dayMediumPluralString = [a3 localizedStringForKey:@"days" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_dayShortString = [a3 localizedStringForKey:@"d" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_hourLongSingularString = [a3 localizedStringForKey:@"hour" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_hourLongPluralString = [a3 localizedStringForKey:@"hours" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_hourMediumSingularString = [a3 localizedStringForKey:@"hr" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_hourMediumPluralString = [a3 localizedStringForKey:@"hrs" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_hourShortString = [a3 localizedStringForKey:@"h" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_minuteLongSingularString = [a3 localizedStringForKey:@"minute" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_minuteLongPluralString = [a3 localizedStringForKey:@"minutes" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_minuteMediumSingularString = [a3 localizedStringForKey:@"min" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_minuteMediumPluralString = [a3 localizedStringForKey:@"mins" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_minuteShortString = [a3 localizedStringForKey:@"m" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_secondLongSingularString = [a3 localizedStringForKey:@"second" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_secondLongPluralString = [a3 localizedStringForKey:@"seconds" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_secondMediumSingularString = [a3 localizedStringForKey:@"sec" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_secondMediumPluralString = [a3 localizedStringForKey:@"secs" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_secondShortString = [a3 localizedStringForKey:@"s" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_millisecondLongSingularString = [a3 localizedStringForKey:@"millisecond" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_millisecondLongPluralString = [a3 localizedStringForKey:@"milliseconds" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_millisecondShortString = [a3 localizedStringForKey:@"ms" value:&stru_28862C2A0 table:@"TSUtility"];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_weekLongSingularString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_weekLongPluralString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_weekMediumSingularString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_weekMediumPluralString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_weekShortString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_dayLongSingularString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_dayLongPluralString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_dayMediumSingularString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_dayMediumPluralString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_dayShortString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_hourLongSingularString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_hourLongPluralString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_hourMediumSingularString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_hourMediumPluralString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_hourShortString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_minuteLongSingularString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_minuteLongPluralString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_minuteMediumSingularString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_minuteMediumPluralString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_minuteShortString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_secondLongSingularString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_secondLongPluralString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_secondMediumSingularString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_secondMediumPluralString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_secondShortString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_millisecondLongSingularString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_millisecondLongPluralString];
    [(TSUDurationLocaleSpecificStorage *)v4 addDurationUnit:v4->_millisecondShortString];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUDurationLocaleSpecificStorage;
  [(TSUDurationLocaleSpecificStorage *)&v3 dealloc];
}

- (void)addDurationUnit:(id)a3
{
  v4 = [a3 stringByTrimmingCharactersInSet:self->_whitespaceCharacterSet];
  if ([v4 rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL)
  {
    multiWordDurationUnitStrings = self->_multiWordDurationUnitStrings;
    if (!multiWordDurationUnitStrings)
    {
      multiWordDurationUnitStrings = objc_opt_new();
      self->_multiWordDurationUnitStrings = multiWordDurationUnitStrings;
    }

    [(NSMutableArray *)multiWordDurationUnitStrings addObject:v4];
  }

  if ([v4 rangeOfString:@"."] != 0x7FFFFFFFFFFFFFFFLL)
  {
    fullStopDurationUnitStrings = self->_fullStopDurationUnitStrings;
    if (!fullStopDurationUnitStrings)
    {
      fullStopDurationUnitStrings = objc_opt_new();
      self->_fullStopDurationUnitStrings = fullStopDurationUnitStrings;
    }

    [(NSMutableArray *)fullStopDurationUnitStrings addObject:v4];
  }
}

+ (id)localeSpecificStorageForLocale:(id)a3
{
  v3 = a3;
  if (!a3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUDurationLocaleSpecificStorage localeSpecificStorageForLocale:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDurationFormatter.m"], 356, 0, "No locale passed in, falling to back current locale.");
    +[TSUAssertionHandler logBacktraceThrottled];
    v3 = +[TSULocale currentLocale];
  }

  v6 = [(TSULocale *)v3 localeSpecificStorageForKey:@"durationFormatterLocaleStorageKey"];
  if (!v6)
  {
    objc_sync_enter(a1);
    v6 = [(TSULocale *)v3 localeSpecificStorageForKey:@"durationFormatterLocaleStorageKey"];
    if (!v6)
    {
      v6 = [[TSUDurationLocaleSpecificStorage alloc] initWithLocale:v3];
      [(TSULocale *)v3 setLocaleSpecificStorage:v6 forKey:@"durationFormatterLocaleStorageKey"];
    }

    objc_sync_exit(a1);
  }

  return v6;
}

@end