@interface TSUDurationLocaleSpecificStorage
+ (id)localeSpecificStorageForLocale:(id)locale;
- (TSUDurationLocaleSpecificStorage)initWithLocale:(id)locale;
- (void)addDurationUnit:(id)unit;
- (void)dealloc;
@end

@implementation TSUDurationLocaleSpecificStorage

- (TSUDurationLocaleSpecificStorage)initWithLocale:(id)locale
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
    if ([objc_msgSend(locale "languageCode")])
    {
      v5 = [(NSCharacterSet *)v4->_alphabeticCharacterSet mutableCopy];
      [(NSCharacterSet *)v5 addCharactersInString:@"׳״"];

      v4->_alphabeticCharacterSet = v5;
    }

    v6 = [MEMORY[0x277CCAB50] characterSetWithCharactersInString:@":."];
    [v6 addCharactersInString:{objc_msgSend(locale, "decimalSeparator")}];
    v4->_separatorPunctuationCharacterSet = [v6 copy];
    decimalDigitCharacterSet = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
    [decimalDigitCharacterSet addCharactersInString:{objc_msgSend(locale, "decimalSeparator")}];
    [decimalDigitCharacterSet addCharactersInString:{objc_msgSend(locale, "groupingSeparator")}];
    v4->_decimalDigitAndSeperatorsCharacterSet = [decimalDigitCharacterSet copy];
    v4->_weekLongSingularString = [locale localizedStringForKey:@"week" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_weekLongPluralString = [locale localizedStringForKey:@"weeks" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_weekMediumSingularString = [locale localizedStringForKey:@"wk" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_weekMediumPluralString = [locale localizedStringForKey:@"wks" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_weekShortString = [locale localizedStringForKey:@"w" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_dayLongSingularString = [locale localizedStringForKey:@"day" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_dayLongPluralString = [locale localizedStringForKey:@"days" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_dayMediumSingularString = [locale localizedStringForKey:@"day" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_dayMediumPluralString = [locale localizedStringForKey:@"days" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_dayShortString = [locale localizedStringForKey:@"d" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_hourLongSingularString = [locale localizedStringForKey:@"hour" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_hourLongPluralString = [locale localizedStringForKey:@"hours" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_hourMediumSingularString = [locale localizedStringForKey:@"hr" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_hourMediumPluralString = [locale localizedStringForKey:@"hrs" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_hourShortString = [locale localizedStringForKey:@"h" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_minuteLongSingularString = [locale localizedStringForKey:@"minute" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_minuteLongPluralString = [locale localizedStringForKey:@"minutes" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_minuteMediumSingularString = [locale localizedStringForKey:@"min" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_minuteMediumPluralString = [locale localizedStringForKey:@"mins" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_minuteShortString = [locale localizedStringForKey:@"m" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_secondLongSingularString = [locale localizedStringForKey:@"second" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_secondLongPluralString = [locale localizedStringForKey:@"seconds" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_secondMediumSingularString = [locale localizedStringForKey:@"sec" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_secondMediumPluralString = [locale localizedStringForKey:@"secs" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_secondShortString = [locale localizedStringForKey:@"s" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_millisecondLongSingularString = [locale localizedStringForKey:@"millisecond" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_millisecondLongPluralString = [locale localizedStringForKey:@"milliseconds" value:&stru_28862C2A0 table:@"TSUtility"];
    v4->_millisecondShortString = [locale localizedStringForKey:@"ms" value:&stru_28862C2A0 table:@"TSUtility"];
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

- (void)addDurationUnit:(id)unit
{
  v4 = [unit stringByTrimmingCharactersInSet:self->_whitespaceCharacterSet];
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

+ (id)localeSpecificStorageForLocale:(id)locale
{
  localeCopy = locale;
  if (!locale)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUDurationLocaleSpecificStorage localeSpecificStorageForLocale:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDurationFormatter.m"], 356, 0, "No locale passed in, falling to back current locale.");
    +[TSUAssertionHandler logBacktraceThrottled];
    localeCopy = +[TSULocale currentLocale];
  }

  v6 = [(TSULocale *)localeCopy localeSpecificStorageForKey:@"durationFormatterLocaleStorageKey"];
  if (!v6)
  {
    objc_sync_enter(self);
    v6 = [(TSULocale *)localeCopy localeSpecificStorageForKey:@"durationFormatterLocaleStorageKey"];
    if (!v6)
    {
      v6 = [[TSUDurationLocaleSpecificStorage alloc] initWithLocale:localeCopy];
      [(TSULocale *)localeCopy setLocaleSpecificStorage:v6 forKey:@"durationFormatterLocaleStorageKey"];
    }

    objc_sync_exit(self);
  }

  return v6;
}

@end