@interface TSUFormattingSymbols
+ (BOOL)isADummyDataSetVersion:(id)version;
+ (BOOL)p_localeIsCustomized:(id)customized;
+ (BOOL)p_patternsDifferForDF:(id)f uncustomizedDF:(id)dF dateStyle:(unint64_t)style timeStyle:(unint64_t)timeStyle;
+ (id)defaultFormattingSymbolsForLocale:(id)locale;
+ (id)defaultFormattingSymbolsVersionForLocale:(id)locale;
+ (id)dummyFormattingSymbolsForTesting:(int64_t)testing;
+ (id)numberingSystemForLocale:(id)locale;
+ (unint64_t)locationOfFirstDateFormatCharacter:(id)character;
+ (void)p_setAllSpaceVariantsOfString:(id)string toCode:(id)code inSymbolToCodeDictionary:(id)dictionary;
- (BOOL)hasUserCustomizations;
- (BOOL)isEqual:(id)equal;
- (TSUFormattingSymbols)initWithDummyDataSet:(int64_t)set;
- (TSUFormattingSymbols)initWithLocale:(id)locale;
- (TSUFormattingSymbols)initWithVersion:(id)version calendar:(id)calendar numberingSystem:(id)system months:(id)months standaloneMonths:(id)standaloneMonths shortMonths:(id)shortMonths standaloneShortMonths:(id)standaloneShortMonths tinyMonths:(id)self0 standaloneTinyMonths:(id)self1 weekdays:(id)self2 standaloneWeekdays:(id)self3 shortWeekdays:(id)self4 standaloneShortWeekdays:(id)self5 tinyWeekdays:(id)self6 standaloneTinyWeekdays:(id)self7 quarters:(id)self8 standaloneQuarters:(id)self9 shortQuarters:(id)shortQuarters standaloneShortQuarters:(id)standaloneShortQuarters eras:(id)eras longEras:(id)longEras amSymbol:(id)symbol pmSymbol:(id)pmSymbol shortDatePattern:(id)pattern mediumDatePattern:(id)datePattern longDatePattern:(id)longDatePattern fullDatePattern:(id)fullDatePattern shortTimePattern:(id)version0 mediumTimePattern:(id)version1 longTimePattern:(id)version2 fullTimePattern:(id)version3 decimalSeparator:(id)version4 groupingSeparator:(id)version5 currencyDecimalSeparator:(id)version6 currencyGroupingSeparator:(id)version7 plusSign:(id)version8 minusSign:(id)version9 exponentialSymbol:(id)calendar0 percentSymbol:(id)calendar1 perMilleSymbol:(id)calendar2 infinitySymbol:(id)calendar3 nanSymbol:(id)calendar4 decimalPattern:(id)calendar5 scientificPattern:(id)calendar6 percentPattern:(id)calendar7 currencyPattern:(id)calendar8 currencyCode:(id)calendar9 currencySymbols:(id)system0;
- (id)currencyCodeForCurrencySymbol:(id)symbol;
- (id)currencySymbolForCurrencyCode:(id)code;
- (id)halfwidthCurrencySymbolForCurrencyCode:(id)code;
- (id)p_negativeNumberKeyForNumberStyle:(unsigned int)style negativeStyle:(unsigned __int8)negativeStyle;
- (id)patternStringForDateStyle:(unint64_t)style timeStyle:(unint64_t)timeStyle;
- (id)patternStringForNumberStyle:(unsigned int)style negativeStyle:(unsigned __int8)negativeStyle;
- (unint64_t)hash;
- (void)p_deriveCalculatedPropertyValues;
- (void)setForTestingShortDatePattern:(id)pattern mediumDatePattern:(id)datePattern longDatePattern:(id)longDatePattern fullDatePattern:(id)fullDatePattern shortTimePattern:(id)timePattern mediumTimePattern:(id)mediumTimePattern longTimePattern:(id)longTimePattern fullTimePattern:(id)self0;
- (void)upgradeIfNecessary:(id)necessary;
@end

@implementation TSUFormattingSymbols

+ (id)defaultFormattingSymbolsForLocale:(id)locale
{
  localeCopy = locale;
  v4 = [[TSUFormattingSymbols alloc] initWithLocale:localeCopy];

  return v4;
}

+ (id)defaultFormattingSymbolsVersionForLocale:(id)locale
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *MEMORY[0x277CBED68];
  localeCopy = locale;
  v6 = [v3 stringWithFormat:@"%07.2f", v4];
  v7 = [TSUFormattingSymbols p_localeIsCustomized:localeCopy];

  if (v7)
  {
    v8 = [v6 stringByAppendingString:@"*"];

    v6 = v8;
  }

  return v6;
}

+ (id)numberingSystemForLocale:(id)locale
{
  v3 = qword_280A63CF0;
  localeCopy = locale;
  if (v3 != -1)
  {
    sub_2771140AC();
  }

  v5 = objc_opt_new();
  [v5 setLocale:localeCopy];

  v6 = [v5 stringFromNumber:&unk_28864BCC8];
  v7 = [v6 substringToIndex:1];

  v8 = [qword_280A63CE8 objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"latn";
  }

  v11 = v10;

  return v10;
}

+ (id)dummyFormattingSymbolsForTesting:(int64_t)testing
{
  v3 = [[TSUFormattingSymbols alloc] initWithDummyDataSet:testing];

  return v3;
}

- (void)setForTestingShortDatePattern:(id)pattern mediumDatePattern:(id)datePattern longDatePattern:(id)longDatePattern fullDatePattern:(id)fullDatePattern shortTimePattern:(id)timePattern mediumTimePattern:(id)mediumTimePattern longTimePattern:(id)longTimePattern fullTimePattern:(id)self0
{
  patternCopy = pattern;
  datePatternCopy = datePattern;
  longDatePatternCopy = longDatePattern;
  fullDatePatternCopy = fullDatePattern;
  timePatternCopy = timePattern;
  mediumTimePatternCopy = mediumTimePattern;
  longTimePatternCopy = longTimePattern;
  fullTimePatternCopy = fullTimePattern;
  objc_storeStrong(&self->_shortDatePattern, pattern);
  objc_storeStrong(&self->_mediumDatePattern, datePattern);
  objc_storeStrong(&self->_longDatePattern, longDatePattern);
  objc_storeStrong(&self->_fullDatePattern, fullDatePattern);
  objc_storeStrong(&self->_shortTimePattern, timePattern);
  objc_storeStrong(&self->_mediumTimePattern, mediumTimePattern);
  objc_storeStrong(&self->_longTimePattern, longTimePattern);
  objc_storeStrong(&self->_fullTimePattern, fullTimePattern);
  if (![(TSUFormattingSymbols *)self hasUserCustomizations])
  {
    v18 = [(NSString *)self->_version stringByAppendingString:@"*"];
    version = self->_version;
    self->_version = v18;
  }
}

- (TSUFormattingSymbols)initWithLocale:(id)locale
{
  v92 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  calendarIdentifier = [localeCopy calendarIdentifier];
  v5 = [calendarIdentifier isEqualToString:*MEMORY[0x277CBE5C0]];

  v6 = localeCopy;
  if ((v5 & 1) == 0)
  {
    v6 = sub_2770303F8(localeCopy);
  }

  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setLocale:v6];
  [v7 setTimeStyle:0];
  [v7 setDateStyle:1];
  dateFormat = [v7 dateFormat];
  [v7 setDateStyle:2];
  dateFormat2 = [v7 dateFormat];
  [v7 setDateStyle:3];
  dateFormat3 = [v7 dateFormat];
  [v7 setDateStyle:4];
  dateFormat4 = [v7 dateFormat];
  [v7 setDateStyle:0];
  [v7 setTimeStyle:1];
  dateFormat5 = [v7 dateFormat];
  [v7 setTimeStyle:2];
  dateFormat6 = [v7 dateFormat];
  [v7 setTimeStyle:3];
  dateFormat7 = [v7 dateFormat];
  [v7 setTimeStyle:4];
  dateFormat8 = [v7 dateFormat];
  v10 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v10 setLocale:localeCopy];
  [v10 setNumberStyle:1];
  positiveFormat = [v10 positiveFormat];
  [v10 setNumberStyle:4];
  positiveFormat2 = [v10 positiveFormat];
  [v10 setNumberStyle:3];
  positiveFormat3 = [v10 positiveFormat];
  [v10 setNumberStyle:2];
  v46 = v10;
  positiveFormat4 = [v10 positiveFormat];
  languageCode = [localeCopy languageCode];
  v13 = [languageCode isEqualToString:@"he"];

  v47 = v7;
  v48 = v6;
  v84 = dateFormat;
  v83 = dateFormat2;
  if (v13 && [(__CFString *)positiveFormat4 isEqualToString:@"\u200F#, ##0.00 \u200F¤"])
  {
    countryCode = [localeCopy countryCode];
    v15 = [countryCode isEqualToString:@"IL"];

    if (v15)
    {
      positiveFormat4 = @"\u200F#,##0.00 ¤";
    }

    else
    {
      positiveFormat4 = @"¤#,##0.00";
    }
  }

  v73 = positiveFormat4;
  v85 = objc_opt_new();
  localeIdentifier = [localeCopy localeIdentifier];
  v17 = [TSULocale regionSubtagAwareComponentsFromLocaleIdentifier:localeIdentifier];
  v86 = [v17 mutableCopy];

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  iSOCurrencyCodes = [MEMORY[0x277CBEAF8] ISOCurrencyCodes];
  v19 = [iSOCurrencyCodes countByEnumeratingWithState:&v87 objects:v91 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v88;
    v22 = *MEMORY[0x277CBE698];
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v88 != v21)
        {
          objc_enumerationMutation(iSOCurrencyCodes);
        }

        v24 = *(*(&v87 + 1) + 8 * i);
        [v86 setObject:v24 forKey:v22];
        v25 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v86];
        v26 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v25];
        currencySymbol = [v26 currencySymbol];
        if (([currencySymbol isEqualToString:v24] & 1) == 0)
        {
          [v85 setObject:currencySymbol forKey:v24];
        }
      }

      v20 = [iSOCurrencyCodes countByEnumeratingWithState:&v87 objects:v91 count:16];
    }

    while (v20);
  }

  v72 = [TSUFormattingSymbols defaultFormattingSymbolsVersionForLocale:localeCopy];
  calendar = [v47 calendar];
  calendarIdentifier2 = [calendar calendarIdentifier];
  v70 = [TSUFormattingSymbols numberingSystemForLocale:localeCopy];
  monthSymbols = [v47 monthSymbols];
  standaloneMonthSymbols = [v47 standaloneMonthSymbols];
  shortMonthSymbols = [v47 shortMonthSymbols];
  shortStandaloneMonthSymbols = [v47 shortStandaloneMonthSymbols];
  veryShortMonthSymbols = [v47 veryShortMonthSymbols];
  veryShortStandaloneMonthSymbols = [v47 veryShortStandaloneMonthSymbols];
  weekdaySymbols = [v47 weekdaySymbols];
  standaloneWeekdaySymbols = [v47 standaloneWeekdaySymbols];
  shortWeekdaySymbols = [v47 shortWeekdaySymbols];
  shortStandaloneWeekdaySymbols = [v47 shortStandaloneWeekdaySymbols];
  veryShortWeekdaySymbols = [v47 veryShortWeekdaySymbols];
  veryShortStandaloneWeekdaySymbols = [v47 veryShortStandaloneWeekdaySymbols];
  quarterSymbols = [v47 quarterSymbols];
  standaloneQuarterSymbols = [v47 standaloneQuarterSymbols];
  shortQuarterSymbols = [v47 shortQuarterSymbols];
  shortStandaloneQuarterSymbols = [v47 shortStandaloneQuarterSymbols];
  eraSymbols = [v47 eraSymbols];
  longEraSymbols = [v47 longEraSymbols];
  aMSymbol = [v47 AMSymbol];
  pMSymbol = [v47 PMSymbol];
  decimalSeparator = [v46 decimalSeparator];
  groupingSeparator = [v46 groupingSeparator];
  currencyDecimalSeparator = [v46 currencyDecimalSeparator];
  currencyGroupingSeparator = [v46 currencyGroupingSeparator];
  plusSign = [v46 plusSign];
  minusSign = [v46 minusSign];
  exponentSymbol = [v46 exponentSymbol];
  percentSymbol = [v46 percentSymbol];
  perMillSymbol = [v46 perMillSymbol];
  positiveInfinitySymbol = [v46 positiveInfinitySymbol];
  notANumberSymbol = [v46 notANumberSymbol];
  currencyCode = [localeCopy currencyCode];
  v35 = currencyCode;
  if (currencyCode)
  {
    v36 = currencyCode;
  }

  else
  {
    v36 = @"USD";
  }

  v38 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v85];
  v45 = [(TSUFormattingSymbols *)self initWithVersion:v72 calendar:calendarIdentifier2 numberingSystem:v70 months:monthSymbols standaloneMonths:standaloneMonthSymbols shortMonths:shortMonthSymbols standaloneShortMonths:shortStandaloneMonthSymbols tinyMonths:veryShortMonthSymbols standaloneTinyMonths:veryShortStandaloneMonthSymbols weekdays:weekdaySymbols standaloneWeekdays:standaloneWeekdaySymbols shortWeekdays:shortWeekdaySymbols standaloneShortWeekdays:shortStandaloneWeekdaySymbols tinyWeekdays:veryShortWeekdaySymbols standaloneTinyWeekdays:veryShortStandaloneWeekdaySymbols quarters:quarterSymbols standaloneQuarters:standaloneQuarterSymbols shortQuarters:shortQuarterSymbols standaloneShortQuarters:shortStandaloneQuarterSymbols eras:eraSymbols longEras:longEraSymbols amSymbol:aMSymbol pmSymbol:pMSymbol shortDatePattern:v84 mediumDatePattern:v83 longDatePattern:dateFormat3 fullDatePattern:dateFormat4 shortTimePattern:dateFormat5 mediumTimePattern:dateFormat6 longTimePattern:dateFormat7 fullTimePattern:dateFormat8 decimalSeparator:decimalSeparator groupingSeparator:groupingSeparator currencyDecimalSeparator:currencyDecimalSeparator currencyGroupingSeparator:currencyGroupingSeparator plusSign:plusSign minusSign:minusSign exponentialSymbol:exponentSymbol percentSymbol:percentSymbol perMilleSymbol:perMillSymbol infinitySymbol:positiveInfinitySymbol nanSymbol:notANumberSymbol decimalPattern:positiveFormat scientificPattern:positiveFormat2 percentPattern:positiveFormat3 currencyPattern:v73 currencyCode:v36 currencySymbols:v38];

  return v45;
}

+ (BOOL)isADummyDataSetVersion:(id)version
{
  versionCopy = version;
  if ([versionCopy isEqualToString:@"0001.00"] & 1) != 0 || (objc_msgSend(versionCopy, "isEqualToString:", @"0001.10"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [versionCopy isEqualToString:@"0000.00"];
  }

  return v4;
}

- (TSUFormattingSymbols)initWithDummyDataSet:(int64_t)set
{
  if (set == 1)
  {
    v3 = [(TSUFormattingSymbols *)self initWithVersion:@"0001.10" calendar:@"gregorian" numberingSystem:@"latn" months:&unk_28864B848 standaloneMonths:&unk_28864B860 shortMonths:&unk_28864B878 standaloneShortMonths:&unk_28864B890 tinyMonths:&unk_28864B8A8 standaloneTinyMonths:&unk_28864B8C0 weekdays:&unk_28864B8D8 standaloneWeekdays:&unk_28864B8F0 shortWeekdays:&unk_28864B908 standaloneShortWeekdays:&unk_28864B920 tinyWeekdays:&unk_28864B938 standaloneTinyWeekdays:&unk_28864B950 quarters:&unk_28864B968 standaloneQuarters:&unk_28864B980 shortQuarters:&unk_28864B998 standaloneShortQuarters:&unk_28864B9B0 eras:&unk_28864B9C8 longEras:&unk_28864B9E0 amSymbol:@"AX" pmSymbol:@"PX" shortDatePattern:@"d!yy!MM" mediumDatePattern:@"d!yyyy!MMM" longDatePattern:@"d☺yyyy☺MMMM" fullDatePattern:@"d☺yyyy☺MMMM☺EEEE" shortTimePattern:@"a•h•mm" mediumTimePattern:@"a•h•mm" longTimePattern:@"a•h•mm•ss" fullTimePattern:@"a•h•mm•ss" decimalSeparator:@"•" groupingSeparator:@"|" currencyDecimalSeparator:@"•" currencyGroupingSeparator:@"|" plusSign:@"⊕" minusSign:@"⊖" exponentialSymbol:@"↑" percentSymbol:@"％" perMilleSymbol:@"‰" infinitySymbol:@"INFINITY!" nanSymbol:@"😱" decimalPattern:@"# scientificPattern:#0.000" percentPattern:@"# currencyPattern:#0.###E00" currencyCode:@"#0.00%" currencySymbols:@"¤#, #0.00", @"CAD", &unk_28864C738];
  }

  else if (set)
  {
    v3 = [(TSUFormattingSymbols *)self initWithVersion:@"0000.00" calendar:@"gregorian" numberingSystem:@"latn" months:&unk_28864B9F8 standaloneMonths:&unk_28864BA10 shortMonths:&unk_28864BA28 standaloneShortMonths:&unk_28864BA40 tinyMonths:&unk_28864BA58 standaloneTinyMonths:&unk_28864BA70 weekdays:&unk_28864BA88 standaloneWeekdays:&unk_28864BAA0 shortWeekdays:&unk_28864BAB8 standaloneShortWeekdays:&unk_28864BAD0 tinyWeekdays:&unk_28864BAE8 standaloneTinyWeekdays:&unk_28864BB00 quarters:&unk_28864BB18 standaloneQuarters:&unk_28864BB30 shortQuarters:&unk_28864BB48 standaloneShortQuarters:&unk_28864BB60 eras:&unk_28864BB78 longEras:&unk_28864BB90 amSymbol:@"A" pmSymbol:@"P" shortDatePattern:@"d yy MM" mediumDatePattern:@"d yyyy MMM" longDatePattern:@"d yyyy MMMM" fullDatePattern:@"d yyyy MMMM EEEE" shortTimePattern:@"h a mm" mediumTimePattern:@"h a mm" longTimePattern:@"h a mm ss" fullTimePattern:@"h a mm ss" decimalSeparator:@"•" groupingSeparator:@"|" currencyDecimalSeparator:@"•" currencyGroupingSeparator:@"|" plusSign:@"⊕" minusSign:@"⊖" exponentialSymbol:@"↑" percentSymbol:@"％" perMilleSymbol:@"‰" infinitySymbol:@"INFINITY!" nanSymbol:@"😱" decimalPattern:@"# scientificPattern:#0.000" percentPattern:@"# currencyPattern:#0.###E00" currencyCode:@"#0.00%" currencySymbols:@"¤#, #0.00", @"CAD", &unk_28864C760];
  }

  else
  {
    v3 = [(TSUFormattingSymbols *)self initWithVersion:@"0001.00" calendar:@"gregorian" numberingSystem:@"latn" months:&unk_28864B698 standaloneMonths:&unk_28864B6B0 shortMonths:&unk_28864B6C8 standaloneShortMonths:&unk_28864B6E0 tinyMonths:&unk_28864B6F8 standaloneTinyMonths:&unk_28864B710 weekdays:&unk_28864B728 standaloneWeekdays:&unk_28864B740 shortWeekdays:&unk_28864B758 standaloneShortWeekdays:&unk_28864B770 tinyWeekdays:&unk_28864B788 standaloneTinyWeekdays:&unk_28864B7A0 quarters:&unk_28864B7B8 standaloneQuarters:&unk_28864B7D0 shortQuarters:&unk_28864B7E8 standaloneShortQuarters:&unk_28864B800 eras:&unk_28864B818 longEras:&unk_28864B830 amSymbol:@"AA" pmSymbol:@"PP" shortDatePattern:@"d*yy*MM" mediumDatePattern:@"d*yyyy*MMM" longDatePattern:@"d->yyyy->MMMM" fullDatePattern:@"d->yyyy->MMMM->EEEE" shortTimePattern:@"h*a*mm" mediumTimePattern:@"h*a*mm" longTimePattern:@"h*a*mm*ss" fullTimePattern:@"h*a*mm*ss" decimalSeparator:@"•" groupingSeparator:@"|" currencyDecimalSeparator:@"•" currencyGroupingSeparator:@"|" plusSign:@"⊕" minusSign:@"⊖" exponentialSymbol:@"↑" percentSymbol:@"％" perMilleSymbol:@"‰" infinitySymbol:@"INFINITY!" nanSymbol:@"😱" decimalPattern:@"# scientificPattern:#0.000" percentPattern:@"# currencyPattern:#0.###E00" currencyCode:@"#0.00%" currencySymbols:@"¤#, #0.00", @"EUR", &unk_28864C710];
  }

  v4 = v3;

  return v4;
}

- (TSUFormattingSymbols)initWithVersion:(id)version calendar:(id)calendar numberingSystem:(id)system months:(id)months standaloneMonths:(id)standaloneMonths shortMonths:(id)shortMonths standaloneShortMonths:(id)standaloneShortMonths tinyMonths:(id)self0 standaloneTinyMonths:(id)self1 weekdays:(id)self2 standaloneWeekdays:(id)self3 shortWeekdays:(id)self4 standaloneShortWeekdays:(id)self5 tinyWeekdays:(id)self6 standaloneTinyWeekdays:(id)self7 quarters:(id)self8 standaloneQuarters:(id)self9 shortQuarters:(id)shortQuarters standaloneShortQuarters:(id)standaloneShortQuarters eras:(id)eras longEras:(id)longEras amSymbol:(id)symbol pmSymbol:(id)pmSymbol shortDatePattern:(id)pattern mediumDatePattern:(id)datePattern longDatePattern:(id)longDatePattern fullDatePattern:(id)fullDatePattern shortTimePattern:(id)version0 mediumTimePattern:(id)version1 longTimePattern:(id)version2 fullTimePattern:(id)version3 decimalSeparator:(id)version4 groupingSeparator:(id)version5 currencyDecimalSeparator:(id)version6 currencyGroupingSeparator:(id)version7 plusSign:(id)version8 minusSign:(id)version9 exponentialSymbol:(id)calendar0 percentSymbol:(id)calendar1 perMilleSymbol:(id)calendar2 infinitySymbol:(id)calendar3 nanSymbol:(id)calendar4 decimalPattern:(id)calendar5 scientificPattern:(id)calendar6 percentPattern:(id)calendar7 currencyPattern:(id)calendar8 currencyCode:(id)calendar9 currencySymbols:(id)system0
{
  versionCopy = version;
  calendarCopy = calendar;
  systemCopy = system;
  systemCopy2 = system;
  monthsCopy = months;
  standaloneMonthsCopy = standaloneMonths;
  shortMonthsCopy = shortMonths;
  standaloneShortMonthsCopy = standaloneShortMonths;
  tinyMonthsCopy = tinyMonths;
  standaloneTinyMonthsCopy = standaloneTinyMonths;
  weekdaysCopy = weekdays;
  standaloneWeekdaysCopy = standaloneWeekdays;
  shortWeekdaysCopy = shortWeekdays;
  standaloneShortWeekdaysCopy = standaloneShortWeekdays;
  tinyWeekdaysCopy = tinyWeekdays;
  standaloneTinyWeekdaysCopy = standaloneTinyWeekdays;
  quartersCopy = quarters;
  standaloneQuartersCopy = standaloneQuarters;
  shortQuartersCopy = shortQuarters;
  standaloneShortQuartersCopy = standaloneShortQuarters;
  erasCopy = eras;
  longErasCopy = longEras;
  symbolCopy = symbol;
  pmSymbolCopy = pmSymbol;
  patternCopy = pattern;
  datePatternCopy = datePattern;
  longDatePatternCopy = longDatePattern;
  fullDatePatternCopy = fullDatePattern;
  timePatternCopy = timePattern;
  mediumTimePatternCopy = mediumTimePattern;
  longTimePatternCopy = longTimePattern;
  fullTimePatternCopy = fullTimePattern;
  separatorCopy = separator;
  groupingSeparatorCopy = groupingSeparator;
  decimalSeparatorCopy = decimalSeparator;
  currencyGroupingSeparatorCopy = currencyGroupingSeparator;
  signCopy = sign;
  minusSignCopy = minusSign;
  exponentialSymbolCopy = exponentialSymbol;
  percentSymbolCopy = percentSymbol;
  milleSymbolCopy = milleSymbol;
  infinitySymbolCopy = infinitySymbol;
  nanSymbolCopy = nanSymbol;
  decimalPatternCopy = decimalPattern;
  scientificPatternCopy = scientificPattern;
  percentPatternCopy = percentPattern;
  currencyPatternCopy = currencyPattern;
  codeCopy = code;
  symbolsCopy = symbols;
  v109.receiver = self;
  v109.super_class = TSUFormattingSymbols;
  v59 = [(TSUFormattingSymbols *)&v109 init];
  v60 = v59;
  if (v59)
  {
    objc_storeStrong(&v59->_version, version);
    objc_storeStrong(&v60->_calendar, calendar);
    objc_storeStrong(&v60->_numberingSystem, systemCopy);
    objc_storeStrong(&v60->_months, months);
    objc_storeStrong(&v60->_standaloneMonths, standaloneMonths);
    objc_storeStrong(&v60->_shortMonths, shortMonths);
    objc_storeStrong(&v60->_standaloneShortMonths, standaloneShortMonths);
    objc_storeStrong(&v60->_tinyMonths, tinyMonths);
    objc_storeStrong(&v60->_standaloneTinyMonths, standaloneTinyMonths);
    objc_storeStrong(&v60->_weekdays, weekdays);
    objc_storeStrong(&v60->_standaloneWeekdays, standaloneWeekdays);
    objc_storeStrong(&v60->_shortWeekdays, shortWeekdays);
    objc_storeStrong(&v60->_standaloneShortWeekdays, standaloneShortWeekdays);
    objc_storeStrong(&v60->_tinyWeekdays, tinyWeekdays);
    objc_storeStrong(&v60->_standaloneTinyWeekdays, standaloneTinyWeekdays);
    objc_storeStrong(&v60->_quarters, quarters);
    objc_storeStrong(&v60->_standaloneQuarters, standaloneQuarters);
    objc_storeStrong(&v60->_shortQuarters, shortQuarters);
    objc_storeStrong(&v60->_standaloneShortQuarters, standaloneShortQuarters);
    objc_storeStrong(&v60->_eras, eras);
    objc_storeStrong(&v60->_longEras, longEras);
    objc_storeStrong(&v60->_amSymbol, symbol);
    objc_storeStrong(&v60->_pmSymbol, pmSymbol);
    objc_storeStrong(&v60->_shortDatePattern, pattern);
    objc_storeStrong(&v60->_mediumDatePattern, datePattern);
    objc_storeStrong(&v60->_longDatePattern, longDatePattern);
    objc_storeStrong(&v60->_fullDatePattern, fullDatePattern);
    objc_storeStrong(&v60->_shortTimePattern, timePattern);
    objc_storeStrong(&v60->_mediumTimePattern, mediumTimePattern);
    objc_storeStrong(&v60->_longTimePattern, longTimePattern);
    objc_storeStrong(&v60->_fullTimePattern, fullTimePattern);
    objc_storeStrong(&v60->_decimalSeparator, separator);
    objc_storeStrong(&v60->_groupingSeparator, groupingSeparator);
    objc_storeStrong(&v60->_currencyDecimalSeparator, decimalSeparator);
    objc_storeStrong(&v60->_currencyGroupingSeparator, currencyGroupingSeparator);
    objc_storeStrong(&v60->_plusSign, sign);
    objc_storeStrong(&v60->_minusSign, minusSign);
    objc_storeStrong(&v60->_exponentialSymbol, exponentialSymbol);
    objc_storeStrong(&v60->_percentSymbol, percentSymbol);
    objc_storeStrong(&v60->_perMilleSymbol, milleSymbol);
    objc_storeStrong(&v60->_infinitySymbol, infinitySymbol);
    objc_storeStrong(&v60->_nanSymbol, nanSymbol);
    objc_storeStrong(&v60->_decimalPattern, decimalPattern);
    objc_storeStrong(&v60->_scientificPattern, scientificPattern);
    objc_storeStrong(&v60->_percentPattern, percentPattern);
    objc_storeStrong(&v60->_currencyPattern, currencyPattern);
    objc_storeStrong(&v60->_currencyCode, code);
    objc_storeStrong(&v60->_currencySymbols, symbols);
    [(TSUFormattingSymbols *)v60 p_deriveCalculatedPropertyValues];
  }

  return v60;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    v5 = objc_opt_class();
    v6 = TSUDynamicCast(v5, equalCopy);
    if (!v6)
    {
      v57 = 0;
      goto LABEL_56;
    }

    if (!-[TSUFormattingSymbols hasUserCustomizations](self, "hasUserCustomizations") || ![v6 hasUserCustomizations])
    {
      version = [(TSUFormattingSymbols *)self version];
      version2 = [v6 version];
      v57 = [version isEqualToString:version2];
LABEL_54:

LABEL_56:
      goto LABEL_57;
    }

    version = [(TSUFormattingSymbols *)self calendar];
    version2 = [v6 calendar];
    v194 = [version isEqualToString:version2];
    if (v194 && (-[TSUFormattingSymbols numberingSystem](self, "numberingSystem"), v10 = objc_claimAutoreleasedReturnValue(), [v6 numberingSystem], v169 = v10, v168 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "isEqualToString:")))
    {
      months = [(TSUFormattingSymbols *)self months];
      [v6 months];
      v164 = v165 = months;
      if ([months isEqualToArray:?])
      {
        standaloneMonths = [(TSUFormattingSymbols *)self standaloneMonths];
        [v6 standaloneMonths];
        v162 = v163 = standaloneMonths;
        if ([standaloneMonths isEqualToArray:?])
        {
          shortMonths = [(TSUFormattingSymbols *)self shortMonths];
          [v6 shortMonths];
          v160 = v161 = shortMonths;
          if ([shortMonths isEqualToArray:?])
          {
            standaloneShortMonths = [(TSUFormattingSymbols *)self standaloneShortMonths];
            [v6 standaloneShortMonths];
            v158 = v159 = standaloneShortMonths;
            if ([standaloneShortMonths isEqualToArray:?])
            {
              tinyMonths = [(TSUFormattingSymbols *)self tinyMonths];
              [v6 tinyMonths];
              v156 = v157 = tinyMonths;
              if ([tinyMonths isEqualToArray:?])
              {
                standaloneTinyMonths = [(TSUFormattingSymbols *)self standaloneTinyMonths];
                [v6 standaloneTinyMonths];
                v154 = v155 = standaloneTinyMonths;
                if ([standaloneTinyMonths isEqualToArray:?])
                {
                  weekdays = [(TSUFormattingSymbols *)self weekdays];
                  [v6 weekdays];
                  v152 = v153 = weekdays;
                  if ([weekdays isEqualToArray:?])
                  {
                    standaloneWeekdays = [(TSUFormattingSymbols *)self standaloneWeekdays];
                    [v6 standaloneWeekdays];
                    v150 = v151 = standaloneWeekdays;
                    if ([standaloneWeekdays isEqualToArray:?])
                    {
                      shortWeekdays = [(TSUFormattingSymbols *)self shortWeekdays];
                      [v6 shortWeekdays];
                      v148 = v149 = shortWeekdays;
                      if ([shortWeekdays isEqualToArray:?])
                      {
                        standaloneShortWeekdays = [(TSUFormattingSymbols *)self standaloneShortWeekdays];
                        v166 = v6;
                        [v6 standaloneShortWeekdays];
                        v146 = v147 = standaloneShortWeekdays;
                        if ([standaloneShortWeekdays isEqualToArray:?])
                        {
                          tinyWeekdays = [(TSUFormattingSymbols *)self tinyWeekdays];
                          [v6 tinyWeekdays];
                          v144 = v145 = tinyWeekdays;
                          if ([tinyWeekdays isEqualToArray:?])
                          {
                            standaloneTinyWeekdays = [(TSUFormattingSymbols *)self standaloneTinyWeekdays];
                            [v6 standaloneTinyWeekdays];
                            v142 = v143 = standaloneTinyWeekdays;
                            if ([standaloneTinyWeekdays isEqualToArray:?])
                            {
                              quarters = [(TSUFormattingSymbols *)self quarters];
                              [v6 quarters];
                              v140 = v141 = quarters;
                              if ([quarters isEqualToArray:?])
                              {
                                standaloneQuarters = [(TSUFormattingSymbols *)self standaloneQuarters];
                                standaloneQuarters2 = [v6 standaloneQuarters];
                                v139 = standaloneQuarters;
                                if ([standaloneQuarters isEqualToArray:?])
                                {
                                  shortQuarters = [(TSUFormattingSymbols *)self shortQuarters];
                                  shortQuarters2 = [v6 shortQuarters];
                                  v137 = shortQuarters;
                                  if ([shortQuarters isEqualToArray:?])
                                  {
                                    standaloneShortQuarters = [(TSUFormattingSymbols *)self standaloneShortQuarters];
                                    standaloneShortQuarters2 = [v6 standaloneShortQuarters];
                                    v135 = standaloneShortQuarters;
                                    if ([standaloneShortQuarters isEqualToArray:?])
                                    {
                                      eras = [(TSUFormattingSymbols *)self eras];
                                      eras2 = [v6 eras];
                                      v133 = eras;
                                      if ([eras isEqualToArray:?])
                                      {
                                        longEras = [(TSUFormattingSymbols *)self longEras];
                                        longEras2 = [v6 longEras];
                                        v131 = longEras;
                                        if ([longEras isEqualToArray:?])
                                        {
                                          amSymbol = [(TSUFormattingSymbols *)self amSymbol];
                                          amSymbol2 = [v6 amSymbol];
                                          v129 = amSymbol;
                                          if ([amSymbol isEqualToString:?])
                                          {
                                            pmSymbol = [(TSUFormattingSymbols *)self pmSymbol];
                                            pmSymbol2 = [v6 pmSymbol];
                                            v127 = pmSymbol;
                                            if ([pmSymbol isEqualToString:?])
                                            {
                                              shortDatePattern = [(TSUFormattingSymbols *)self shortDatePattern];
                                              shortDatePattern2 = [v6 shortDatePattern];
                                              v125 = shortDatePattern;
                                              if ([shortDatePattern isEqualToString:?])
                                              {
                                                mediumDatePattern = [(TSUFormattingSymbols *)self mediumDatePattern];
                                                mediumDatePattern2 = [v166 mediumDatePattern];
                                                v123 = mediumDatePattern;
                                                if ([mediumDatePattern isEqualToString:?])
                                                {
                                                  longDatePattern = [(TSUFormattingSymbols *)self longDatePattern];
                                                  longDatePattern2 = [v166 longDatePattern];
                                                  v121 = longDatePattern;
                                                  if ([longDatePattern isEqualToString:?])
                                                  {
                                                    fullDatePattern = [(TSUFormattingSymbols *)self fullDatePattern];
                                                    fullDatePattern2 = [v166 fullDatePattern];
                                                    v119 = fullDatePattern;
                                                    if ([fullDatePattern isEqualToString:?])
                                                    {
                                                      shortTimePattern = [(TSUFormattingSymbols *)self shortTimePattern];
                                                      shortTimePattern2 = [v166 shortTimePattern];
                                                      v117 = shortTimePattern;
                                                      if ([shortTimePattern isEqualToString:?])
                                                      {
                                                        mediumTimePattern = [(TSUFormattingSymbols *)self mediumTimePattern];
                                                        mediumTimePattern2 = [v166 mediumTimePattern];
                                                        v115 = mediumTimePattern;
                                                        if ([mediumTimePattern isEqualToString:?])
                                                        {
                                                          longTimePattern = [(TSUFormattingSymbols *)self longTimePattern];
                                                          longTimePattern2 = [v166 longTimePattern];
                                                          v113 = longTimePattern;
                                                          if ([longTimePattern isEqualToString:?])
                                                          {
                                                            fullTimePattern = [(TSUFormattingSymbols *)self fullTimePattern];
                                                            fullTimePattern2 = [v166 fullTimePattern];
                                                            v111 = fullTimePattern;
                                                            if ([fullTimePattern isEqualToString:?])
                                                            {
                                                              decimalSeparator = [(TSUFormattingSymbols *)self decimalSeparator];
                                                              decimalSeparator2 = [v166 decimalSeparator];
                                                              v109 = decimalSeparator;
                                                              if ([decimalSeparator isEqualToString:?])
                                                              {
                                                                groupingSeparator = [(TSUFormattingSymbols *)self groupingSeparator];
                                                                groupingSeparator2 = [v166 groupingSeparator];
                                                                v107 = groupingSeparator;
                                                                if ([groupingSeparator isEqualToString:?])
                                                                {
                                                                  currencyDecimalSeparator = [(TSUFormattingSymbols *)self currencyDecimalSeparator];
                                                                  currencyDecimalSeparator2 = [v166 currencyDecimalSeparator];
                                                                  v105 = currencyDecimalSeparator;
                                                                  if ([currencyDecimalSeparator isEqualToString:?])
                                                                  {
                                                                    currencyGroupingSeparator = [(TSUFormattingSymbols *)self currencyGroupingSeparator];
                                                                    currencyGroupingSeparator2 = [v166 currencyGroupingSeparator];
                                                                    v103 = currencyGroupingSeparator;
                                                                    if ([currencyGroupingSeparator isEqualToString:?])
                                                                    {
                                                                      plusSign = [(TSUFormattingSymbols *)self plusSign];
                                                                      plusSign2 = [v166 plusSign];
                                                                      v101 = plusSign;
                                                                      if ([plusSign isEqualToString:?])
                                                                      {
                                                                        minusSign = [(TSUFormattingSymbols *)self minusSign];
                                                                        minusSign2 = [v166 minusSign];
                                                                        v99 = minusSign;
                                                                        if ([minusSign isEqualToString:?])
                                                                        {
                                                                          exponentialSymbol = [(TSUFormattingSymbols *)self exponentialSymbol];
                                                                          exponentialSymbol2 = [v166 exponentialSymbol];
                                                                          v97 = exponentialSymbol;
                                                                          if ([exponentialSymbol isEqualToString:?])
                                                                          {
                                                                            percentSymbol = [(TSUFormattingSymbols *)self percentSymbol];
                                                                            percentSymbol2 = [v166 percentSymbol];
                                                                            v95 = percentSymbol;
                                                                            if ([percentSymbol isEqualToString:?])
                                                                            {
                                                                              perMilleSymbol = [(TSUFormattingSymbols *)self perMilleSymbol];
                                                                              perMilleSymbol2 = [v166 perMilleSymbol];
                                                                              v93 = perMilleSymbol;
                                                                              if ([perMilleSymbol isEqualToString:?])
                                                                              {
                                                                                infinitySymbol = [(TSUFormattingSymbols *)self infinitySymbol];
                                                                                infinitySymbol2 = [v166 infinitySymbol];
                                                                                v91 = infinitySymbol;
                                                                                if ([infinitySymbol isEqualToString:?])
                                                                                {
                                                                                  nanSymbol = [(TSUFormattingSymbols *)self nanSymbol];
                                                                                  nanSymbol2 = [v166 nanSymbol];
                                                                                  v89 = nanSymbol;
                                                                                  if ([nanSymbol isEqualToString:?])
                                                                                  {
                                                                                    decimalPattern = [(TSUFormattingSymbols *)self decimalPattern];
                                                                                    decimalPattern2 = [v166 decimalPattern];
                                                                                    v87 = decimalPattern;
                                                                                    if ([decimalPattern isEqualToString:?])
                                                                                    {
                                                                                      scientificPattern = [(TSUFormattingSymbols *)self scientificPattern];
                                                                                      scientificPattern2 = [v166 scientificPattern];
                                                                                      v85 = scientificPattern;
                                                                                      if ([scientificPattern isEqualToString:?])
                                                                                      {
                                                                                        percentPattern = [(TSUFormattingSymbols *)self percentPattern];
                                                                                        percentPattern2 = [v166 percentPattern];
                                                                                        v83 = percentPattern;
                                                                                        if ([percentPattern isEqualToString:?])
                                                                                        {
                                                                                          currencyPattern = [(TSUFormattingSymbols *)self currencyPattern];
                                                                                          currencyPattern2 = [v166 currencyPattern];
                                                                                          v81 = currencyPattern;
                                                                                          if ([currencyPattern isEqualToString:?])
                                                                                          {
                                                                                            currencyCode = [(TSUFormattingSymbols *)self currencyCode];
                                                                                            currencyCode2 = [v166 currencyCode];
                                                                                            v79 = currencyCode;
                                                                                            if ([currencyCode isEqualToString:?])
                                                                                            {
                                                                                              currencySymbols = [(TSUFormattingSymbols *)self currencySymbols];
                                                                                              v6 = v166;
                                                                                              currencySymbols2 = [v166 currencySymbols];
                                                                                              v77 = currencySymbols;
                                                                                              v57 = [currencySymbols isEqualToDictionary:currencySymbols2];
                                                                                              v9 = currencySymbols2;
                                                                                              v58 = 1;
                                                                                              *(&v193 + 1) = 0x100000001;
                                                                                              *&v193 = 0x100000001;
                                                                                              v59 = 1;
                                                                                              v60 = 1;
                                                                                              v61 = 1;
                                                                                              v191 = 1;
                                                                                              v189 = 1;
                                                                                              v187 = 1;
                                                                                              v185 = 1;
                                                                                              v183 = 1;
                                                                                              v181 = 1;
                                                                                              v179 = 0x100000001;
                                                                                              v178 = 0x100000001;
                                                                                              v177 = 0x100000001;
                                                                                              v176 = 0x100000001;
                                                                                              v175 = 0x100000001;
                                                                                              v174 = 0x100000001;
                                                                                              v173 = 0x100000001;
                                                                                              v172 = 0x100000001;
                                                                                              v171 = 0x100000001;
                                                                                              *&v170[8] = 1;
                                                                                              *v170 = 0x100000001;
                                                                                              v180 = 1;
                                                                                              v182 = 1;
                                                                                              v184 = 1;
                                                                                              v186 = 1;
                                                                                              v188 = 1;
                                                                                              v190 = 1;
                                                                                              v192 = 1;
                                                                                              v62 = 1;
                                                                                              v63 = 1;
                                                                                              v64 = 1;
                                                                                              goto LABEL_59;
                                                                                            }

                                                                                            v58 = 0;
                                                                                            v57 = 0;
                                                                                            *(&v193 + 1) = 0x100000001;
                                                                                            *&v193 = 0x100000001;
                                                                                            v59 = 1;
                                                                                            v60 = 1;
                                                                                            v61 = 1;
                                                                                            v191 = 1;
                                                                                            v189 = 1;
                                                                                            v187 = 1;
                                                                                            v185 = 1;
                                                                                            v183 = 1;
                                                                                            v181 = 1;
                                                                                            v179 = 0x100000001;
                                                                                            v178 = 0x100000001;
                                                                                            v177 = 0x100000001;
                                                                                            v176 = 0x100000001;
                                                                                            v175 = 0x100000001;
                                                                                            v174 = 0x100000001;
                                                                                            v173 = 0x100000001;
                                                                                            v172 = 0x100000001;
                                                                                            v171 = 0x100000001;
                                                                                            *&v170[8] = 1;
                                                                                            *v170 = 0x100000001;
                                                                                            v180 = 1;
                                                                                            v182 = 1;
                                                                                            v184 = 1;
                                                                                            v186 = 1;
                                                                                            v188 = 1;
                                                                                            v190 = 1;
                                                                                            v192 = 1;
                                                                                            v62 = 1;
                                                                                            v63 = 1;
                                                                                            v64 = 1;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v64 = 0;
                                                                                            v58 = 0;
                                                                                            v57 = 0;
                                                                                            *(&v193 + 1) = 0x100000001;
                                                                                            *&v193 = 0x100000001;
                                                                                            v59 = 1;
                                                                                            v60 = 1;
                                                                                            v61 = 1;
                                                                                            v191 = 1;
                                                                                            v189 = 1;
                                                                                            v187 = 1;
                                                                                            v185 = 1;
                                                                                            v183 = 1;
                                                                                            v181 = 1;
                                                                                            v179 = 0x100000001;
                                                                                            v178 = 0x100000001;
                                                                                            v177 = 0x100000001;
                                                                                            v176 = 0x100000001;
                                                                                            v175 = 0x100000001;
                                                                                            v174 = 0x100000001;
                                                                                            v173 = 0x100000001;
                                                                                            v172 = 0x100000001;
                                                                                            v171 = 0x100000001;
                                                                                            *&v170[8] = 1;
                                                                                            *v170 = 0x100000001;
                                                                                            v180 = 1;
                                                                                            v182 = 1;
                                                                                            v184 = 1;
                                                                                            v186 = 1;
                                                                                            v188 = 1;
                                                                                            v190 = 1;
                                                                                            v192 = 1;
                                                                                            v62 = 1;
                                                                                            v63 = 1;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v63 = 0;
                                                                                          v64 = 0;
                                                                                          v58 = 0;
                                                                                          v57 = 0;
                                                                                          *(&v193 + 1) = 0x100000001;
                                                                                          *&v193 = 0x100000001;
                                                                                          v59 = 1;
                                                                                          v60 = 1;
                                                                                          v61 = 1;
                                                                                          v191 = 1;
                                                                                          v189 = 1;
                                                                                          v187 = 1;
                                                                                          v185 = 1;
                                                                                          v183 = 1;
                                                                                          v181 = 1;
                                                                                          v179 = 0x100000001;
                                                                                          v178 = 0x100000001;
                                                                                          v177 = 0x100000001;
                                                                                          v176 = 0x100000001;
                                                                                          v175 = 0x100000001;
                                                                                          v174 = 0x100000001;
                                                                                          v173 = 0x100000001;
                                                                                          v172 = 0x100000001;
                                                                                          v171 = 0x100000001;
                                                                                          *&v170[8] = 1;
                                                                                          *v170 = 0x100000001;
                                                                                          v180 = 1;
                                                                                          v182 = 1;
                                                                                          v184 = 1;
                                                                                          v186 = 1;
                                                                                          v188 = 1;
                                                                                          v190 = 1;
                                                                                          v192 = 1;
                                                                                          v62 = 1;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v62 = 0;
                                                                                        v63 = 0;
                                                                                        v64 = 0;
                                                                                        v58 = 0;
                                                                                        v57 = 0;
                                                                                        *(&v193 + 1) = 0x100000001;
                                                                                        *&v193 = 0x100000001;
                                                                                        v59 = 1;
                                                                                        v60 = 1;
                                                                                        v61 = 1;
                                                                                        v191 = 1;
                                                                                        v189 = 1;
                                                                                        v187 = 1;
                                                                                        v185 = 1;
                                                                                        v183 = 1;
                                                                                        v181 = 1;
                                                                                        v179 = 0x100000001;
                                                                                        v178 = 0x100000001;
                                                                                        v177 = 0x100000001;
                                                                                        v176 = 0x100000001;
                                                                                        v175 = 0x100000001;
                                                                                        v174 = 0x100000001;
                                                                                        v173 = 0x100000001;
                                                                                        v172 = 0x100000001;
                                                                                        v171 = 0x100000001;
                                                                                        *&v170[8] = 1;
                                                                                        *v170 = 0x100000001;
                                                                                        v180 = 1;
                                                                                        v182 = 1;
                                                                                        v184 = 1;
                                                                                        v186 = 1;
                                                                                        v188 = 1;
                                                                                        v190 = 1;
                                                                                        v192 = 1;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v62 = 0;
                                                                                      v63 = 0;
                                                                                      v64 = 0;
                                                                                      v58 = 0;
                                                                                      v57 = 0;
                                                                                      *(&v193 + 1) = 0x100000001;
                                                                                      v192 = 0;
                                                                                      *&v193 = 0x100000001;
                                                                                      v59 = 1;
                                                                                      v60 = 1;
                                                                                      v61 = 1;
                                                                                      v191 = 1;
                                                                                      v189 = 1;
                                                                                      v187 = 1;
                                                                                      v185 = 1;
                                                                                      v183 = 1;
                                                                                      v181 = 1;
                                                                                      v179 = 0x100000001;
                                                                                      v178 = 0x100000001;
                                                                                      v177 = 0x100000001;
                                                                                      v176 = 0x100000001;
                                                                                      v175 = 0x100000001;
                                                                                      v174 = 0x100000001;
                                                                                      v173 = 0x100000001;
                                                                                      v172 = 0x100000001;
                                                                                      v171 = 0x100000001;
                                                                                      *&v170[8] = 1;
                                                                                      *v170 = 0x100000001;
                                                                                      v180 = 1;
                                                                                      v182 = 1;
                                                                                      v184 = 1;
                                                                                      v186 = 1;
                                                                                      v188 = 1;
                                                                                      v190 = 1;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v62 = 0;
                                                                                    v63 = 0;
                                                                                    v64 = 0;
                                                                                    v58 = 0;
                                                                                    v57 = 0;
                                                                                    *(&v193 + 1) = 0x100000001;
                                                                                    v192 = 0;
                                                                                    *&v193 = 0x100000001;
                                                                                    v59 = 1;
                                                                                    v60 = 1;
                                                                                    v61 = 1;
                                                                                    v190 = 0;
                                                                                    v191 = 1;
                                                                                    v189 = 1;
                                                                                    v187 = 1;
                                                                                    v185 = 1;
                                                                                    v183 = 1;
                                                                                    v181 = 1;
                                                                                    v179 = 0x100000001;
                                                                                    v178 = 0x100000001;
                                                                                    v177 = 0x100000001;
                                                                                    v176 = 0x100000001;
                                                                                    v175 = 0x100000001;
                                                                                    v174 = 0x100000001;
                                                                                    v173 = 0x100000001;
                                                                                    v172 = 0x100000001;
                                                                                    v171 = 0x100000001;
                                                                                    *&v170[8] = 1;
                                                                                    *v170 = 0x100000001;
                                                                                    v180 = 1;
                                                                                    v182 = 1;
                                                                                    v184 = 1;
                                                                                    v186 = 1;
                                                                                    v188 = 1;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v62 = 0;
                                                                                  v63 = 0;
                                                                                  v64 = 0;
                                                                                  v58 = 0;
                                                                                  v57 = 0;
                                                                                  *(&v193 + 1) = 0x100000001;
                                                                                  v192 = 0;
                                                                                  *&v193 = 0x100000001;
                                                                                  v59 = 1;
                                                                                  v60 = 1;
                                                                                  v61 = 1;
                                                                                  v190 = 0;
                                                                                  v191 = 1;
                                                                                  v188 = 0;
                                                                                  v189 = 1;
                                                                                  v187 = 1;
                                                                                  v185 = 1;
                                                                                  v183 = 1;
                                                                                  v181 = 1;
                                                                                  v179 = 0x100000001;
                                                                                  v178 = 0x100000001;
                                                                                  v177 = 0x100000001;
                                                                                  v176 = 0x100000001;
                                                                                  v175 = 0x100000001;
                                                                                  v174 = 0x100000001;
                                                                                  v173 = 0x100000001;
                                                                                  v172 = 0x100000001;
                                                                                  v171 = 0x100000001;
                                                                                  *&v170[8] = 1;
                                                                                  *v170 = 0x100000001;
                                                                                  v180 = 1;
                                                                                  v182 = 1;
                                                                                  v184 = 1;
                                                                                  v186 = 1;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v62 = 0;
                                                                                v63 = 0;
                                                                                v64 = 0;
                                                                                v58 = 0;
                                                                                v57 = 0;
                                                                                *(&v193 + 1) = 0x100000001;
                                                                                v192 = 0;
                                                                                *&v193 = 0x100000001;
                                                                                v59 = 1;
                                                                                v60 = 1;
                                                                                v61 = 1;
                                                                                v190 = 0;
                                                                                v191 = 1;
                                                                                v188 = 0;
                                                                                v189 = 1;
                                                                                v186 = 0;
                                                                                v187 = 1;
                                                                                v185 = 1;
                                                                                v183 = 1;
                                                                                v181 = 1;
                                                                                v179 = 0x100000001;
                                                                                v178 = 0x100000001;
                                                                                v177 = 0x100000001;
                                                                                v176 = 0x100000001;
                                                                                v175 = 0x100000001;
                                                                                v174 = 0x100000001;
                                                                                v173 = 0x100000001;
                                                                                v172 = 0x100000001;
                                                                                v171 = 0x100000001;
                                                                                *&v170[8] = 1;
                                                                                *v170 = 0x100000001;
                                                                                v180 = 1;
                                                                                v182 = 1;
                                                                                v184 = 1;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v184 = 0;
                                                                              v62 = 0;
                                                                              v63 = 0;
                                                                              v64 = 0;
                                                                              v58 = 0;
                                                                              v57 = 0;
                                                                              *(&v193 + 1) = 0x100000001;
                                                                              v192 = 0;
                                                                              *&v193 = 0x100000001;
                                                                              v59 = 1;
                                                                              v60 = 1;
                                                                              v61 = 1;
                                                                              v190 = 0;
                                                                              v191 = 1;
                                                                              v188 = 0;
                                                                              v189 = 1;
                                                                              v186 = 0;
                                                                              v187 = 1;
                                                                              v185 = 1;
                                                                              v183 = 1;
                                                                              v181 = 1;
                                                                              v179 = 0x100000001;
                                                                              v178 = 0x100000001;
                                                                              v177 = 0x100000001;
                                                                              v176 = 0x100000001;
                                                                              v175 = 0x100000001;
                                                                              v174 = 0x100000001;
                                                                              v173 = 0x100000001;
                                                                              v172 = 0x100000001;
                                                                              v171 = 0x100000001;
                                                                              *&v170[8] = 1;
                                                                              *v170 = 0x100000001;
                                                                              v180 = 1;
                                                                              v182 = 1;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v182 = 0;
                                                                            v184 = 0;
                                                                            v62 = 0;
                                                                            v63 = 0;
                                                                            v64 = 0;
                                                                            v58 = 0;
                                                                            v57 = 0;
                                                                            *(&v193 + 1) = 0x100000001;
                                                                            v192 = 0;
                                                                            *&v193 = 0x100000001;
                                                                            v59 = 1;
                                                                            v60 = 1;
                                                                            v61 = 1;
                                                                            v190 = 0;
                                                                            v191 = 1;
                                                                            v188 = 0;
                                                                            v189 = 1;
                                                                            v186 = 0;
                                                                            v187 = 1;
                                                                            v185 = 1;
                                                                            v183 = 1;
                                                                            v181 = 1;
                                                                            v179 = 0x100000001;
                                                                            v178 = 0x100000001;
                                                                            v177 = 0x100000001;
                                                                            v176 = 0x100000001;
                                                                            v175 = 0x100000001;
                                                                            v174 = 0x100000001;
                                                                            v173 = 0x100000001;
                                                                            v172 = 0x100000001;
                                                                            v171 = 0x100000001;
                                                                            *&v170[8] = 1;
                                                                            *v170 = 0x100000001;
                                                                            v180 = 1;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v180 = 0;
                                                                          v182 = 0;
                                                                          v184 = 0;
                                                                          v62 = 0;
                                                                          v63 = 0;
                                                                          v64 = 0;
                                                                          v58 = 0;
                                                                          v57 = 0;
                                                                          *(&v193 + 1) = 0x100000001;
                                                                          v192 = 0;
                                                                          *&v193 = 0x100000001;
                                                                          v59 = 1;
                                                                          v60 = 1;
                                                                          v61 = 1;
                                                                          v190 = 0;
                                                                          v191 = 1;
                                                                          v188 = 0;
                                                                          v189 = 1;
                                                                          v186 = 0;
                                                                          v187 = 1;
                                                                          v185 = 1;
                                                                          v183 = 1;
                                                                          v181 = 1;
                                                                          v178 = 0x100000001;
                                                                          v177 = 0x100000001;
                                                                          v176 = 0x100000001;
                                                                          v175 = 0x100000001;
                                                                          v174 = 0x100000001;
                                                                          v173 = 0x100000001;
                                                                          v172 = 0x100000001;
                                                                          v171 = 0x100000001;
                                                                          *&v170[8] = 1;
                                                                          *v170 = 0x100000001;
                                                                          v179 = 0x100000001;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v179 = 0x100000000;
                                                                        v180 = 0;
                                                                        v182 = 0;
                                                                        v184 = 0;
                                                                        v62 = 0;
                                                                        v63 = 0;
                                                                        v64 = 0;
                                                                        v58 = 0;
                                                                        v57 = 0;
                                                                        *(&v193 + 1) = 0x100000001;
                                                                        v192 = 0;
                                                                        *&v193 = 0x100000001;
                                                                        v59 = 1;
                                                                        v60 = 1;
                                                                        v61 = 1;
                                                                        v190 = 0;
                                                                        v191 = 1;
                                                                        v188 = 0;
                                                                        v189 = 1;
                                                                        v186 = 0;
                                                                        v187 = 1;
                                                                        v185 = 1;
                                                                        v183 = 1;
                                                                        v181 = 1;
                                                                        v177 = 0x100000001;
                                                                        v176 = 0x100000001;
                                                                        v175 = 0x100000001;
                                                                        v174 = 0x100000001;
                                                                        v173 = 0x100000001;
                                                                        v172 = 0x100000001;
                                                                        v171 = 0x100000001;
                                                                        *&v170[8] = 1;
                                                                        *v170 = 0x100000001;
                                                                        v178 = 0x100000001;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v178 = 0x100000000;
                                                                      v179 = 0x100000000;
                                                                      v180 = 0;
                                                                      v182 = 0;
                                                                      v184 = 0;
                                                                      v62 = 0;
                                                                      v63 = 0;
                                                                      v64 = 0;
                                                                      v58 = 0;
                                                                      v57 = 0;
                                                                      *(&v193 + 1) = 0x100000001;
                                                                      v192 = 0;
                                                                      *&v193 = 0x100000001;
                                                                      v59 = 1;
                                                                      v60 = 1;
                                                                      v61 = 1;
                                                                      v190 = 0;
                                                                      v191 = 1;
                                                                      v188 = 0;
                                                                      v189 = 1;
                                                                      v186 = 0;
                                                                      v187 = 1;
                                                                      v185 = 1;
                                                                      v183 = 1;
                                                                      v181 = 1;
                                                                      v176 = 0x100000001;
                                                                      v175 = 0x100000001;
                                                                      v174 = 0x100000001;
                                                                      v173 = 0x100000001;
                                                                      v172 = 0x100000001;
                                                                      v171 = 0x100000001;
                                                                      *&v170[8] = 1;
                                                                      *v170 = 0x100000001;
                                                                      v177 = 0x100000001;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v177 = 0x100000000;
                                                                    v178 = 0x100000000;
                                                                    v179 = 0x100000000;
                                                                    v180 = 0;
                                                                    v182 = 0;
                                                                    v184 = 0;
                                                                    v62 = 0;
                                                                    v63 = 0;
                                                                    v64 = 0;
                                                                    v58 = 0;
                                                                    v57 = 0;
                                                                    *(&v193 + 1) = 0x100000001;
                                                                    v192 = 0;
                                                                    *&v193 = 0x100000001;
                                                                    v59 = 1;
                                                                    v60 = 1;
                                                                    v61 = 1;
                                                                    v190 = 0;
                                                                    v191 = 1;
                                                                    v188 = 0;
                                                                    v189 = 1;
                                                                    v186 = 0;
                                                                    v187 = 1;
                                                                    v185 = 1;
                                                                    v183 = 1;
                                                                    v181 = 1;
                                                                    v175 = 0x100000001;
                                                                    v174 = 0x100000001;
                                                                    v173 = 0x100000001;
                                                                    v172 = 0x100000001;
                                                                    v171 = 0x100000001;
                                                                    *&v170[8] = 1;
                                                                    *v170 = 0x100000001;
                                                                    v176 = 0x100000001;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v176 = 0x100000000;
                                                                  v177 = 0x100000000;
                                                                  v178 = 0x100000000;
                                                                  v179 = 0x100000000;
                                                                  v180 = 0;
                                                                  v182 = 0;
                                                                  v184 = 0;
                                                                  v62 = 0;
                                                                  v63 = 0;
                                                                  v64 = 0;
                                                                  v58 = 0;
                                                                  v57 = 0;
                                                                  *(&v193 + 1) = 0x100000001;
                                                                  v192 = 0;
                                                                  *&v193 = 0x100000001;
                                                                  v59 = 1;
                                                                  v60 = 1;
                                                                  v61 = 1;
                                                                  v190 = 0;
                                                                  v191 = 1;
                                                                  v188 = 0;
                                                                  v189 = 1;
                                                                  v186 = 0;
                                                                  v187 = 1;
                                                                  v185 = 1;
                                                                  v183 = 1;
                                                                  v181 = 1;
                                                                  v174 = 0x100000001;
                                                                  v173 = 0x100000001;
                                                                  v172 = 0x100000001;
                                                                  v171 = 0x100000001;
                                                                  *&v170[8] = 1;
                                                                  *v170 = 0x100000001;
                                                                  v175 = 0x100000001;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v175 = 0x100000000;
                                                                v176 = 0x100000000;
                                                                v177 = 0x100000000;
                                                                v178 = 0x100000000;
                                                                v179 = 0x100000000;
                                                                v180 = 0;
                                                                v182 = 0;
                                                                v184 = 0;
                                                                v62 = 0;
                                                                v63 = 0;
                                                                v64 = 0;
                                                                v58 = 0;
                                                                v57 = 0;
                                                                *(&v193 + 1) = 0x100000001;
                                                                v192 = 0;
                                                                *&v193 = 0x100000001;
                                                                v59 = 1;
                                                                v60 = 1;
                                                                v61 = 1;
                                                                v190 = 0;
                                                                v191 = 1;
                                                                v188 = 0;
                                                                v189 = 1;
                                                                v186 = 0;
                                                                v187 = 1;
                                                                v185 = 1;
                                                                v183 = 1;
                                                                v181 = 1;
                                                                v173 = 0x100000001;
                                                                v172 = 0x100000001;
                                                                v171 = 0x100000001;
                                                                *&v170[8] = 1;
                                                                *v170 = 0x100000001;
                                                                v174 = 0x100000001;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v174 = 0x100000000;
                                                              v175 = 0x100000000;
                                                              v176 = 0x100000000;
                                                              v177 = 0x100000000;
                                                              v178 = 0x100000000;
                                                              v179 = 0x100000000;
                                                              v180 = 0;
                                                              v182 = 0;
                                                              v184 = 0;
                                                              v62 = 0;
                                                              v63 = 0;
                                                              v64 = 0;
                                                              v58 = 0;
                                                              v57 = 0;
                                                              *(&v193 + 1) = 0x100000001;
                                                              v192 = 0;
                                                              *&v193 = 0x100000001;
                                                              v59 = 1;
                                                              v60 = 1;
                                                              v61 = 1;
                                                              v190 = 0;
                                                              v191 = 1;
                                                              v188 = 0;
                                                              v189 = 1;
                                                              v186 = 0;
                                                              v187 = 1;
                                                              v185 = 1;
                                                              v183 = 1;
                                                              v181 = 1;
                                                              v172 = 0x100000001;
                                                              v171 = 0x100000001;
                                                              *&v170[8] = 1;
                                                              *v170 = 0x100000001;
                                                              v173 = 0x100000001;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v173 = 0x100000000;
                                                            v174 = 0x100000000;
                                                            v175 = 0x100000000;
                                                            v176 = 0x100000000;
                                                            v177 = 0x100000000;
                                                            v178 = 0x100000000;
                                                            v179 = 0x100000000;
                                                            v180 = 0;
                                                            v182 = 0;
                                                            v184 = 0;
                                                            v62 = 0;
                                                            v63 = 0;
                                                            v64 = 0;
                                                            v58 = 0;
                                                            v57 = 0;
                                                            *(&v193 + 1) = 0x100000001;
                                                            v192 = 0;
                                                            *&v193 = 0x100000001;
                                                            v59 = 1;
                                                            v60 = 1;
                                                            v61 = 1;
                                                            v190 = 0;
                                                            v191 = 1;
                                                            v188 = 0;
                                                            v189 = 1;
                                                            v186 = 0;
                                                            v187 = 1;
                                                            v185 = 1;
                                                            v183 = 1;
                                                            v181 = 1;
                                                            v171 = 0x100000001;
                                                            *&v170[8] = 1;
                                                            *v170 = 0x100000001;
                                                            v172 = 0x100000001;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v172 = 0x100000000;
                                                          v173 = 0x100000000;
                                                          v174 = 0x100000000;
                                                          v175 = 0x100000000;
                                                          v176 = 0x100000000;
                                                          v177 = 0x100000000;
                                                          v178 = 0x100000000;
                                                          v179 = 0x100000000;
                                                          v180 = 0;
                                                          v182 = 0;
                                                          v184 = 0;
                                                          v62 = 0;
                                                          v63 = 0;
                                                          v64 = 0;
                                                          v58 = 0;
                                                          v57 = 0;
                                                          *(&v193 + 1) = 0x100000001;
                                                          v192 = 0;
                                                          *&v193 = 0x100000001;
                                                          v59 = 1;
                                                          v60 = 1;
                                                          v61 = 1;
                                                          v190 = 0;
                                                          v191 = 1;
                                                          v188 = 0;
                                                          v189 = 1;
                                                          v186 = 0;
                                                          v187 = 1;
                                                          v185 = 1;
                                                          v183 = 1;
                                                          v181 = 1;
                                                          *&v170[8] = 1;
                                                          *v170 = 0x100000001;
                                                          v171 = 0x100000001;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v171 = 0x100000000;
                                                        v172 = 0x100000000;
                                                        v173 = 0x100000000;
                                                        v174 = 0x100000000;
                                                        v175 = 0x100000000;
                                                        v176 = 0x100000000;
                                                        v177 = 0x100000000;
                                                        v178 = 0x100000000;
                                                        v179 = 0x100000000;
                                                        v180 = 0;
                                                        v182 = 0;
                                                        v184 = 0;
                                                        v62 = 0;
                                                        v63 = 0;
                                                        v64 = 0;
                                                        v58 = 0;
                                                        v57 = 0;
                                                        *(&v193 + 1) = 0x100000001;
                                                        v192 = 0;
                                                        *&v193 = 0x100000001;
                                                        v59 = 1;
                                                        v60 = 1;
                                                        v61 = 1;
                                                        v190 = 0;
                                                        v191 = 1;
                                                        v188 = 0;
                                                        v189 = 1;
                                                        v186 = 0;
                                                        v187 = 1;
                                                        v185 = 1;
                                                        v183 = 1;
                                                        v181 = 1;
                                                        *&v170[8] = 1;
                                                        *v170 = 0x100000001;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v171 = 0x100000000;
                                                      v172 = 0x100000000;
                                                      v173 = 0x100000000;
                                                      v174 = 0x100000000;
                                                      v175 = 0x100000000;
                                                      v176 = 0x100000000;
                                                      v177 = 0x100000000;
                                                      v178 = 0x100000000;
                                                      v179 = 0x100000000;
                                                      v180 = 0;
                                                      v182 = 0;
                                                      v184 = 0;
                                                      v62 = 0;
                                                      v63 = 0;
                                                      v64 = 0;
                                                      v58 = 0;
                                                      v57 = 0;
                                                      *(&v193 + 1) = 0x100000001;
                                                      v192 = 0;
                                                      *&v193 = 0x100000001;
                                                      v59 = 1;
                                                      v60 = 1;
                                                      v61 = 1;
                                                      v190 = 0;
                                                      v191 = 1;
                                                      v188 = 0;
                                                      v189 = 1;
                                                      v186 = 0;
                                                      v187 = 1;
                                                      v185 = 1;
                                                      v183 = 1;
                                                      v181 = 1;
                                                      *&v170[8] = 1;
                                                      *v170 = 1;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    *v170 = 0;
                                                    v171 = 0x100000000;
                                                    v172 = 0x100000000;
                                                    v173 = 0x100000000;
                                                    v174 = 0x100000000;
                                                    v175 = 0x100000000;
                                                    v176 = 0x100000000;
                                                    v177 = 0x100000000;
                                                    v178 = 0x100000000;
                                                    v179 = 0x100000000;
                                                    v180 = 0;
                                                    v182 = 0;
                                                    v184 = 0;
                                                    v62 = 0;
                                                    v63 = 0;
                                                    v64 = 0;
                                                    v58 = 0;
                                                    v57 = 0;
                                                    *(&v193 + 1) = 0x100000001;
                                                    v192 = 0;
                                                    *&v193 = 0x100000001;
                                                    v59 = 1;
                                                    v60 = 1;
                                                    v61 = 1;
                                                    v190 = 0;
                                                    v191 = 1;
                                                    v188 = 0;
                                                    v189 = 1;
                                                    v186 = 0;
                                                    v187 = 1;
                                                    v185 = 1;
                                                    v183 = 1;
                                                    v181 = 1;
                                                    *&v170[8] = 1;
                                                  }
                                                }

                                                else
                                                {
                                                  memset(v170, 0, sizeof(v170));
                                                  v171 = 0x100000000;
                                                  v172 = 0x100000000;
                                                  v173 = 0x100000000;
                                                  v174 = 0x100000000;
                                                  v175 = 0x100000000;
                                                  v176 = 0x100000000;
                                                  v177 = 0x100000000;
                                                  v178 = 0x100000000;
                                                  v179 = 0x100000000;
                                                  v180 = 0;
                                                  v182 = 0;
                                                  v184 = 0;
                                                  v62 = 0;
                                                  v63 = 0;
                                                  v64 = 0;
                                                  v58 = 0;
                                                  v57 = 0;
                                                  *(&v193 + 1) = 0x100000001;
                                                  v192 = 0;
                                                  *&v193 = 0x100000001;
                                                  v59 = 1;
                                                  v60 = 1;
                                                  v61 = 1;
                                                  v190 = 0;
                                                  v191 = 1;
                                                  v188 = 0;
                                                  v189 = 1;
                                                  v186 = 0;
                                                  v187 = 1;
                                                  v185 = 1;
                                                  v183 = 1;
                                                  v181 = 1;
                                                }
                                              }

                                              else
                                              {
                                                v171 = 0;
                                                memset(v170, 0, sizeof(v170));
                                                v172 = 0x100000000;
                                                v173 = 0x100000000;
                                                v174 = 0x100000000;
                                                v175 = 0x100000000;
                                                v176 = 0x100000000;
                                                v177 = 0x100000000;
                                                v178 = 0x100000000;
                                                v179 = 0x100000000;
                                                v180 = 0;
                                                v182 = 0;
                                                v184 = 0;
                                                v62 = 0;
                                                v63 = 0;
                                                v64 = 0;
                                                v58 = 0;
                                                v57 = 0;
                                                *(&v193 + 1) = 0x100000001;
                                                v192 = 0;
                                                *&v193 = 0x100000001;
                                                v59 = 1;
                                                v60 = 1;
                                                v61 = 1;
                                                v190 = 0;
                                                v191 = 1;
                                                v188 = 0;
                                                v189 = 1;
                                                v186 = 0;
                                                v187 = 1;
                                                v185 = 1;
                                                v183 = 1;
                                                v181 = 1;
                                              }
                                            }

                                            else
                                            {
                                              v171 = 0;
                                              v172 = 0;
                                              memset(v170, 0, sizeof(v170));
                                              v173 = 0x100000000;
                                              v174 = 0x100000000;
                                              v175 = 0x100000000;
                                              v176 = 0x100000000;
                                              v177 = 0x100000000;
                                              v178 = 0x100000000;
                                              v179 = 0x100000000;
                                              v180 = 0;
                                              v182 = 0;
                                              v184 = 0;
                                              v62 = 0;
                                              v63 = 0;
                                              v64 = 0;
                                              v58 = 0;
                                              v57 = 0;
                                              *(&v193 + 1) = 0x100000001;
                                              v192 = 0;
                                              *&v193 = 0x100000001;
                                              v59 = 1;
                                              v60 = 1;
                                              v61 = 1;
                                              v190 = 0;
                                              v191 = 1;
                                              v188 = 0;
                                              v189 = 1;
                                              v186 = 0;
                                              v187 = 1;
                                              v185 = 1;
                                              v183 = 1;
                                              v181 = 1;
                                            }
                                          }

                                          else
                                          {
                                            v172 = 0;
                                            v173 = 0;
                                            v171 = 0;
                                            memset(v170, 0, sizeof(v170));
                                            v174 = 0x100000000;
                                            v175 = 0x100000000;
                                            v176 = 0x100000000;
                                            v177 = 0x100000000;
                                            v178 = 0x100000000;
                                            v179 = 0x100000000;
                                            v180 = 0;
                                            v182 = 0;
                                            v184 = 0;
                                            v62 = 0;
                                            v63 = 0;
                                            v64 = 0;
                                            v58 = 0;
                                            v57 = 0;
                                            *(&v193 + 1) = 0x100000001;
                                            v192 = 0;
                                            *&v193 = 0x100000001;
                                            v59 = 1;
                                            v60 = 1;
                                            v61 = 1;
                                            v190 = 0;
                                            v191 = 1;
                                            v188 = 0;
                                            v189 = 1;
                                            v186 = 0;
                                            v187 = 1;
                                            v185 = 1;
                                            v183 = 1;
                                            v181 = 1;
                                          }
                                        }

                                        else
                                        {
                                          v173 = 0;
                                          v174 = 0;
                                          v171 = 0;
                                          v172 = 0;
                                          memset(v170, 0, sizeof(v170));
                                          v175 = 0x100000000;
                                          v176 = 0x100000000;
                                          v177 = 0x100000000;
                                          v178 = 0x100000000;
                                          v179 = 0x100000000;
                                          v180 = 0;
                                          v182 = 0;
                                          v184 = 0;
                                          v62 = 0;
                                          v63 = 0;
                                          v64 = 0;
                                          v58 = 0;
                                          v57 = 0;
                                          *(&v193 + 1) = 0x100000001;
                                          v192 = 0;
                                          *&v193 = 0x100000001;
                                          v59 = 1;
                                          v60 = 1;
                                          v61 = 1;
                                          v190 = 0;
                                          v191 = 1;
                                          v188 = 0;
                                          v189 = 1;
                                          v186 = 0;
                                          v187 = 1;
                                          v185 = 1;
                                          v183 = 1;
                                          v181 = 1;
                                        }
                                      }

                                      else
                                      {
                                        v174 = 0;
                                        v175 = 0;
                                        v172 = 0;
                                        v173 = 0;
                                        v171 = 0;
                                        memset(v170, 0, sizeof(v170));
                                        v176 = 0x100000000;
                                        v177 = 0x100000000;
                                        v178 = 0x100000000;
                                        v179 = 0x100000000;
                                        v180 = 0;
                                        v182 = 0;
                                        v184 = 0;
                                        v62 = 0;
                                        v63 = 0;
                                        v64 = 0;
                                        v58 = 0;
                                        v57 = 0;
                                        *(&v193 + 1) = 0x100000001;
                                        v192 = 0;
                                        *&v193 = 0x100000001;
                                        v59 = 1;
                                        v60 = 1;
                                        v61 = 1;
                                        v190 = 0;
                                        v191 = 1;
                                        v188 = 0;
                                        v189 = 1;
                                        v186 = 0;
                                        v187 = 1;
                                        v185 = 1;
                                        v183 = 1;
                                        v181 = 1;
                                      }
                                    }

                                    else
                                    {
                                      v175 = 0;
                                      v176 = 0;
                                      v173 = 0;
                                      v174 = 0;
                                      v171 = 0;
                                      v172 = 0;
                                      memset(v170, 0, sizeof(v170));
                                      v177 = 0x100000000;
                                      v178 = 0x100000000;
                                      v179 = 0x100000000;
                                      v180 = 0;
                                      v182 = 0;
                                      v184 = 0;
                                      v62 = 0;
                                      v63 = 0;
                                      v64 = 0;
                                      v58 = 0;
                                      v57 = 0;
                                      *(&v193 + 1) = 0x100000001;
                                      v192 = 0;
                                      *&v193 = 0x100000001;
                                      v59 = 1;
                                      v60 = 1;
                                      v61 = 1;
                                      v190 = 0;
                                      v191 = 1;
                                      v188 = 0;
                                      v189 = 1;
                                      v186 = 0;
                                      v187 = 1;
                                      v185 = 1;
                                      v183 = 1;
                                      v181 = 1;
                                    }
                                  }

                                  else
                                  {
                                    v176 = 0;
                                    v177 = 0;
                                    v174 = 0;
                                    v175 = 0;
                                    v172 = 0;
                                    v173 = 0;
                                    v171 = 0;
                                    memset(v170, 0, sizeof(v170));
                                    v178 = 0x100000000;
                                    v179 = 0x100000000;
                                    v180 = 0;
                                    v182 = 0;
                                    v184 = 0;
                                    v62 = 0;
                                    v63 = 0;
                                    v64 = 0;
                                    v58 = 0;
                                    v57 = 0;
                                    *(&v193 + 1) = 0x100000001;
                                    v192 = 0;
                                    *&v193 = 0x100000001;
                                    v59 = 1;
                                    v60 = 1;
                                    v61 = 1;
                                    v190 = 0;
                                    v191 = 1;
                                    v188 = 0;
                                    v189 = 1;
                                    v186 = 0;
                                    v187 = 1;
                                    v185 = 1;
                                    v183 = 1;
                                    v181 = 1;
                                  }
                                }

                                else
                                {
                                  v177 = 0;
                                  v178 = 0;
                                  v175 = 0;
                                  v176 = 0;
                                  v173 = 0;
                                  v174 = 0;
                                  v171 = 0;
                                  v172 = 0;
                                  memset(v170, 0, sizeof(v170));
                                  v179 = 0x100000000;
                                  v180 = 0;
                                  v182 = 0;
                                  v184 = 0;
                                  v62 = 0;
                                  v63 = 0;
                                  v64 = 0;
                                  v58 = 0;
                                  v57 = 0;
                                  *(&v193 + 1) = 0x100000001;
                                  v192 = 0;
                                  *&v193 = 0x100000001;
                                  v59 = 1;
                                  v60 = 1;
                                  v61 = 1;
                                  v190 = 0;
                                  v191 = 1;
                                  v188 = 0;
                                  v189 = 1;
                                  v186 = 0;
                                  v187 = 1;
                                  v185 = 1;
                                  v183 = 1;
                                  v181 = 1;
                                }
                              }

                              else
                              {
                                v178 = 0;
                                v179 = 0;
                                v176 = 0;
                                v177 = 0;
                                v174 = 0;
                                v175 = 0;
                                v172 = 0;
                                v173 = 0;
                                v171 = 0;
                                memset(v170, 0, sizeof(v170));
                                v180 = 0;
                                v182 = 0;
                                v184 = 0;
                                v62 = 0;
                                v63 = 0;
                                v64 = 0;
                                v58 = 0;
                                v57 = 0;
                                *(&v193 + 1) = 0x100000001;
                                v192 = 0;
                                *&v193 = 0x100000001;
                                v59 = 1;
                                v60 = 1;
                                v61 = 1;
                                v190 = 0;
                                v191 = 1;
                                v188 = 0;
                                v189 = 1;
                                v186 = 0;
                                v187 = 1;
                                v185 = 1;
                                v183 = 1;
                                v181 = 1;
                              }
                            }

                            else
                            {
                              v180 = 0;
                              v181 = 0;
                              v178 = 0;
                              v179 = 0;
                              v176 = 0;
                              v177 = 0;
                              v174 = 0;
                              v175 = 0;
                              v172 = 0;
                              v173 = 0;
                              v171 = 0;
                              memset(v170, 0, sizeof(v170));
                              v182 = 0;
                              v184 = 0;
                              v62 = 0;
                              v63 = 0;
                              v64 = 0;
                              v58 = 0;
                              v57 = 0;
                              *(&v193 + 1) = 0x100000001;
                              v192 = 0;
                              *&v193 = 0x100000001;
                              v59 = 1;
                              v60 = 1;
                              v61 = 1;
                              v190 = 0;
                              v191 = 1;
                              v188 = 0;
                              v189 = 1;
                              v186 = 0;
                              v187 = 1;
                              v185 = 1;
                              v183 = 1;
                            }
                          }

                          else
                          {
                            v182 = 0;
                            v183 = 0;
                            v180 = 0;
                            v181 = 0;
                            v178 = 0;
                            v179 = 0;
                            v176 = 0;
                            v177 = 0;
                            v174 = 0;
                            v175 = 0;
                            v172 = 0;
                            v173 = 0;
                            v171 = 0;
                            memset(v170, 0, sizeof(v170));
                            v184 = 0;
                            v62 = 0;
                            v63 = 0;
                            v64 = 0;
                            v58 = 0;
                            v57 = 0;
                            *(&v193 + 1) = 0x100000001;
                            v192 = 0;
                            *&v193 = 0x100000001;
                            v59 = 1;
                            v60 = 1;
                            v61 = 1;
                            v190 = 0;
                            v191 = 1;
                            v188 = 0;
                            v189 = 1;
                            v186 = 0;
                            v187 = 1;
                            v185 = 1;
                          }
                        }

                        else
                        {
                          v184 = 0;
                          v185 = 0;
                          v182 = 0;
                          v183 = 0;
                          v180 = 0;
                          v181 = 0;
                          v178 = 0;
                          v179 = 0;
                          v176 = 0;
                          v177 = 0;
                          v174 = 0;
                          v175 = 0;
                          v172 = 0;
                          v173 = 0;
                          v171 = 0;
                          memset(v170, 0, sizeof(v170));
                          v62 = 0;
                          v63 = 0;
                          v64 = 0;
                          v58 = 0;
                          v57 = 0;
                          *(&v193 + 1) = 0x100000001;
                          v192 = 0;
                          *&v193 = 0x100000001;
                          v59 = 1;
                          v60 = 1;
                          v61 = 1;
                          v190 = 0;
                          v191 = 1;
                          v188 = 0;
                          v189 = 1;
                          v186 = 0;
                          v187 = 1;
                        }

                        v6 = v166;
                      }

                      else
                      {
                        v186 = 0;
                        v187 = 0;
                        v184 = 0;
                        v185 = 0;
                        v182 = 0;
                        v183 = 0;
                        v180 = 0;
                        v181 = 0;
                        v178 = 0;
                        v179 = 0;
                        v176 = 0;
                        v177 = 0;
                        v174 = 0;
                        v175 = 0;
                        v172 = 0;
                        v173 = 0;
                        v171 = 0;
                        memset(v170, 0, sizeof(v170));
                        v62 = 0;
                        v63 = 0;
                        v64 = 0;
                        v58 = 0;
                        v57 = 0;
                        *(&v193 + 1) = 0x100000001;
                        v192 = 0;
                        *&v193 = 0x100000001;
                        v59 = 1;
                        v60 = 1;
                        v61 = 1;
                        v190 = 0;
                        v191 = 1;
                        v188 = 0;
                        v189 = 1;
                      }
                    }

                    else
                    {
                      v188 = 0;
                      v189 = 0;
                      v186 = 0;
                      v187 = 0;
                      v184 = 0;
                      v185 = 0;
                      v182 = 0;
                      v183 = 0;
                      v180 = 0;
                      v181 = 0;
                      v178 = 0;
                      v179 = 0;
                      v176 = 0;
                      v177 = 0;
                      v174 = 0;
                      v175 = 0;
                      v172 = 0;
                      v173 = 0;
                      v171 = 0;
                      memset(v170, 0, sizeof(v170));
                      v62 = 0;
                      v63 = 0;
                      v64 = 0;
                      v58 = 0;
                      v57 = 0;
                      *(&v193 + 1) = 0x100000001;
                      v192 = 0;
                      *&v193 = 0x100000001;
                      v59 = 1;
                      v60 = 1;
                      v61 = 1;
                      v190 = 0;
                      v191 = 1;
                    }
                  }

                  else
                  {
                    v191 = 0;
                    v188 = 0;
                    v189 = 0;
                    v186 = 0;
                    v187 = 0;
                    v184 = 0;
                    v185 = 0;
                    v182 = 0;
                    v183 = 0;
                    v180 = 0;
                    v181 = 0;
                    v178 = 0;
                    v179 = 0;
                    v176 = 0;
                    v177 = 0;
                    v174 = 0;
                    v175 = 0;
                    v172 = 0;
                    v173 = 0;
                    v171 = 0;
                    memset(v170, 0, sizeof(v170));
                    v190 = 0;
                    v62 = 0;
                    v63 = 0;
                    v64 = 0;
                    v58 = 0;
                    v57 = 0;
                    *(&v193 + 1) = 0x100000001;
                    v192 = 0;
                    *&v193 = 0x100000001;
                    v59 = 1;
                    v60 = 1;
                    v61 = 1;
                  }
                }

                else
                {
                  v61 = 0;
                  v191 = 0;
                  v188 = 0;
                  v189 = 0;
                  v186 = 0;
                  v187 = 0;
                  v184 = 0;
                  v185 = 0;
                  v182 = 0;
                  v183 = 0;
                  v180 = 0;
                  v181 = 0;
                  v178 = 0;
                  v179 = 0;
                  v176 = 0;
                  v177 = 0;
                  v174 = 0;
                  v175 = 0;
                  v172 = 0;
                  v173 = 0;
                  v171 = 0;
                  memset(v170, 0, sizeof(v170));
                  v190 = 0;
                  v62 = 0;
                  v63 = 0;
                  v64 = 0;
                  v58 = 0;
                  v57 = 0;
                  *(&v193 + 1) = 0x100000001;
                  v192 = 0;
                  *&v193 = 0x100000001;
                  v59 = 1;
                  v60 = 1;
                }
              }

              else
              {
                v60 = 0;
                v61 = 0;
                v191 = 0;
                v188 = 0;
                v189 = 0;
                v186 = 0;
                v187 = 0;
                v184 = 0;
                v185 = 0;
                v182 = 0;
                v183 = 0;
                v180 = 0;
                v181 = 0;
                v178 = 0;
                v179 = 0;
                v176 = 0;
                v177 = 0;
                v174 = 0;
                v175 = 0;
                v172 = 0;
                v173 = 0;
                v171 = 0;
                memset(v170, 0, sizeof(v170));
                v190 = 0;
                v62 = 0;
                v63 = 0;
                v64 = 0;
                v58 = 0;
                v57 = 0;
                *(&v193 + 1) = 0x100000001;
                v192 = 0;
                *&v193 = 0x100000001;
                v59 = 1;
              }
            }

            else
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v191 = 0;
              v188 = 0;
              v189 = 0;
              v186 = 0;
              v187 = 0;
              v184 = 0;
              v185 = 0;
              v182 = 0;
              v183 = 0;
              v180 = 0;
              v181 = 0;
              v178 = 0;
              v179 = 0;
              v176 = 0;
              v177 = 0;
              v174 = 0;
              v175 = 0;
              v172 = 0;
              v173 = 0;
              v171 = 0;
              memset(v170, 0, sizeof(v170));
              v190 = 0;
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v58 = 0;
              v57 = 0;
              *(&v193 + 1) = 0x100000001;
              v192 = 0;
              *&v193 = 0x100000001;
            }
          }

          else
          {
            *&v193 = 0x100000000;
            v59 = 0;
            v60 = 0;
            v61 = 0;
            v191 = 0;
            v188 = 0;
            v189 = 0;
            v186 = 0;
            v187 = 0;
            v184 = 0;
            v185 = 0;
            v182 = 0;
            v183 = 0;
            v180 = 0;
            v181 = 0;
            v178 = 0;
            v179 = 0;
            v176 = 0;
            v177 = 0;
            v174 = 0;
            v175 = 0;
            v172 = 0;
            v173 = 0;
            v171 = 0;
            memset(v170, 0, sizeof(v170));
            v190 = 0;
            v192 = 0;
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v58 = 0;
            v57 = 0;
            *(&v193 + 1) = 0x100000001;
          }
        }

        else
        {
          *&v193 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v191 = 0;
          v188 = 0;
          v189 = 0;
          v186 = 0;
          v187 = 0;
          v184 = 0;
          v185 = 0;
          v182 = 0;
          v183 = 0;
          v180 = 0;
          v181 = 0;
          v178 = 0;
          v179 = 0;
          v176 = 0;
          v177 = 0;
          v174 = 0;
          v175 = 0;
          v172 = 0;
          v173 = 0;
          v171 = 0;
          memset(v170, 0, sizeof(v170));
          v190 = 0;
          v192 = 0;
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v58 = 0;
          v57 = 0;
          *(&v193 + 1) = 0x100000001;
        }
      }

      else
      {
        *(&v193 + 4) = 0;
        LODWORD(v193) = 0;
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v191 = 0;
        v188 = 0;
        v189 = 0;
        v186 = 0;
        v187 = 0;
        v184 = 0;
        v185 = 0;
        v182 = 0;
        v183 = 0;
        v180 = 0;
        v181 = 0;
        v178 = 0;
        v179 = 0;
        v176 = 0;
        v177 = 0;
        v174 = 0;
        v175 = 0;
        v172 = 0;
        v173 = 0;
        v171 = 0;
        memset(v170, 0, sizeof(v170));
        v190 = 0;
        v192 = 0;
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v58 = 0;
        v57 = 0;
        HIDWORD(v193) = 1;
      }
    }

    else
    {
      v193 = 0uLL;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v191 = 0;
      v188 = 0;
      v189 = 0;
      v186 = 0;
      v187 = 0;
      v184 = 0;
      v185 = 0;
      v182 = 0;
      v183 = 0;
      v180 = 0;
      v181 = 0;
      v178 = 0;
      v179 = 0;
      v176 = 0;
      v177 = 0;
      v174 = 0;
      v175 = 0;
      v172 = 0;
      v173 = 0;
      v171 = 0;
      memset(v170, 0, sizeof(v170));
      v190 = 0;
      v192 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v58 = 0;
      v57 = 0;
    }

LABEL_59:
    if (v58)
    {
      v167 = equalCopy;
      v66 = v6;
      v67 = v57;
      v68 = version2;
      v69 = version;
      v70 = v61;
      v71 = v62;
      v72 = v60;
      v73 = v63;
      v74 = v59;
      v75 = v64;

      v76 = v75;
      v59 = v74;
      v63 = v73;
      v60 = v72;
      v62 = v71;
      v61 = v70;
      version = v69;
      version2 = v68;
      v57 = v67;
      v6 = v66;
      equalCopy = v167;
      if (!v76)
      {
        goto LABEL_61;
      }
    }

    else if (!v64)
    {
LABEL_61:
      if (v63)
      {
        goto LABEL_62;
      }

      goto LABEL_66;
    }

    if (v63)
    {
LABEL_62:

      if (!v62)
      {
LABEL_68:
        if (v192)
        {
        }

        if (v190)
        {
        }

        if (v188)
        {
        }

        if (v186)
        {
        }

        if (v184)
        {
        }

        if (v182)
        {
        }

        if (v180)
        {
        }

        if (v179)
        {
        }

        if (v178)
        {
        }

        if (v177)
        {
        }

        if (v176)
        {
        }

        if (v175)
        {
        }

        if (v174)
        {
        }

        if (v173)
        {
        }

        if (v172)
        {
        }

        if (v171)
        {
        }

        if (*&v170[4])
        {
        }

        if (*v170)
        {
        }

        if (*&v170[8])
        {
        }

        if (HIDWORD(v171))
        {
        }

        if (HIDWORD(v172))
        {
        }

        if (HIDWORD(v173))
        {
        }

        if (HIDWORD(v174))
        {
        }

        if (HIDWORD(v175))
        {
        }

        if (HIDWORD(v176))
        {
        }

        if (HIDWORD(v177))
        {
        }

        if (HIDWORD(v178))
        {
        }

        if (HIDWORD(v179))
        {
        }

        if (v181)
        {
        }

        if (v183)
        {
        }

        if (v185)
        {
        }

        if (v187)
        {
        }

        if (v189)
        {
        }

        if (v191)
        {

          if (!v61)
          {
            goto LABEL_136;
          }
        }

        else if (!v61)
        {
LABEL_136:
          if (v60)
          {
            goto LABEL_137;
          }

          goto LABEL_141;
        }

        if (v60)
        {
LABEL_137:

          if (!v59)
          {
            goto LABEL_143;
          }

          goto LABEL_142;
        }

LABEL_141:
        if (!v59)
        {
LABEL_143:
          if (v193)
          {
          }

          if (DWORD1(v193))
          {
          }

          if (DWORD2(v193))
          {
          }

          if (HIDWORD(v193))
          {
          }

          if (v194)
          {
          }

          goto LABEL_54;
        }

LABEL_142:

        goto LABEL_143;
      }

LABEL_67:

      goto LABEL_68;
    }

LABEL_66:
    if (!v62)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  v57 = 1;
LABEL_57:

  return v57;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(TSUHasher);
  calendar = [(TSUFormattingSymbols *)self calendar];
  [(TSUHasher *)v3 addObject:calendar];

  numberingSystem = [(TSUFormattingSymbols *)self numberingSystem];
  [(TSUHasher *)v3 addObject:numberingSystem];

  months = [(TSUFormattingSymbols *)self months];
  [(TSUHasher *)v3 addObject:months];

  standaloneMonths = [(TSUFormattingSymbols *)self standaloneMonths];
  [(TSUHasher *)v3 addObject:standaloneMonths];

  shortMonths = [(TSUFormattingSymbols *)self shortMonths];
  [(TSUHasher *)v3 addObject:shortMonths];

  standaloneShortMonths = [(TSUFormattingSymbols *)self standaloneShortMonths];
  [(TSUHasher *)v3 addObject:standaloneShortMonths];

  tinyMonths = [(TSUFormattingSymbols *)self tinyMonths];
  [(TSUHasher *)v3 addObject:tinyMonths];

  standaloneTinyMonths = [(TSUFormattingSymbols *)self standaloneTinyMonths];
  [(TSUHasher *)v3 addObject:standaloneTinyMonths];

  weekdays = [(TSUFormattingSymbols *)self weekdays];
  [(TSUHasher *)v3 addObject:weekdays];

  standaloneWeekdays = [(TSUFormattingSymbols *)self standaloneWeekdays];
  [(TSUHasher *)v3 addObject:standaloneWeekdays];

  shortWeekdays = [(TSUFormattingSymbols *)self shortWeekdays];
  [(TSUHasher *)v3 addObject:shortWeekdays];

  standaloneShortWeekdays = [(TSUFormattingSymbols *)self standaloneShortWeekdays];
  [(TSUHasher *)v3 addObject:standaloneShortWeekdays];

  tinyWeekdays = [(TSUFormattingSymbols *)self tinyWeekdays];
  [(TSUHasher *)v3 addObject:tinyWeekdays];

  standaloneTinyWeekdays = [(TSUFormattingSymbols *)self standaloneTinyWeekdays];
  [(TSUHasher *)v3 addObject:standaloneTinyWeekdays];

  quarters = [(TSUFormattingSymbols *)self quarters];
  [(TSUHasher *)v3 addObject:quarters];

  standaloneQuarters = [(TSUFormattingSymbols *)self standaloneQuarters];
  [(TSUHasher *)v3 addObject:standaloneQuarters];

  shortQuarters = [(TSUFormattingSymbols *)self shortQuarters];
  [(TSUHasher *)v3 addObject:shortQuarters];

  standaloneShortQuarters = [(TSUFormattingSymbols *)self standaloneShortQuarters];
  [(TSUHasher *)v3 addObject:standaloneShortQuarters];

  eras = [(TSUFormattingSymbols *)self eras];
  [(TSUHasher *)v3 addObject:eras];

  longEras = [(TSUFormattingSymbols *)self longEras];
  [(TSUHasher *)v3 addObject:longEras];

  amSymbol = [(TSUFormattingSymbols *)self amSymbol];
  [(TSUHasher *)v3 addObject:amSymbol];

  pmSymbol = [(TSUFormattingSymbols *)self pmSymbol];
  [(TSUHasher *)v3 addObject:pmSymbol];

  shortDatePattern = [(TSUFormattingSymbols *)self shortDatePattern];
  [(TSUHasher *)v3 addObject:shortDatePattern];

  mediumDatePattern = [(TSUFormattingSymbols *)self mediumDatePattern];
  [(TSUHasher *)v3 addObject:mediumDatePattern];

  longDatePattern = [(TSUFormattingSymbols *)self longDatePattern];
  [(TSUHasher *)v3 addObject:longDatePattern];

  fullDatePattern = [(TSUFormattingSymbols *)self fullDatePattern];
  [(TSUHasher *)v3 addObject:fullDatePattern];

  shortTimePattern = [(TSUFormattingSymbols *)self shortTimePattern];
  [(TSUHasher *)v3 addObject:shortTimePattern];

  mediumTimePattern = [(TSUFormattingSymbols *)self mediumTimePattern];
  [(TSUHasher *)v3 addObject:mediumTimePattern];

  longTimePattern = [(TSUFormattingSymbols *)self longTimePattern];
  [(TSUHasher *)v3 addObject:longTimePattern];

  fullTimePattern = [(TSUFormattingSymbols *)self fullTimePattern];
  [(TSUHasher *)v3 addObject:fullTimePattern];

  decimalSeparator = [(TSUFormattingSymbols *)self decimalSeparator];
  [(TSUHasher *)v3 addObject:decimalSeparator];

  groupingSeparator = [(TSUFormattingSymbols *)self groupingSeparator];
  [(TSUHasher *)v3 addObject:groupingSeparator];

  currencyDecimalSeparator = [(TSUFormattingSymbols *)self currencyDecimalSeparator];
  [(TSUHasher *)v3 addObject:currencyDecimalSeparator];

  currencyGroupingSeparator = [(TSUFormattingSymbols *)self currencyGroupingSeparator];
  [(TSUHasher *)v3 addObject:currencyGroupingSeparator];

  plusSign = [(TSUFormattingSymbols *)self plusSign];
  [(TSUHasher *)v3 addObject:plusSign];

  minusSign = [(TSUFormattingSymbols *)self minusSign];
  [(TSUHasher *)v3 addObject:minusSign];

  exponentialSymbol = [(TSUFormattingSymbols *)self exponentialSymbol];
  [(TSUHasher *)v3 addObject:exponentialSymbol];

  percentSymbol = [(TSUFormattingSymbols *)self percentSymbol];
  [(TSUHasher *)v3 addObject:percentSymbol];

  perMilleSymbol = [(TSUFormattingSymbols *)self perMilleSymbol];
  [(TSUHasher *)v3 addObject:perMilleSymbol];

  infinitySymbol = [(TSUFormattingSymbols *)self infinitySymbol];
  [(TSUHasher *)v3 addObject:infinitySymbol];

  nanSymbol = [(TSUFormattingSymbols *)self nanSymbol];
  [(TSUHasher *)v3 addObject:nanSymbol];

  decimalPattern = [(TSUFormattingSymbols *)self decimalPattern];
  [(TSUHasher *)v3 addObject:decimalPattern];

  scientificPattern = [(TSUFormattingSymbols *)self scientificPattern];
  [(TSUHasher *)v3 addObject:scientificPattern];

  percentPattern = [(TSUFormattingSymbols *)self percentPattern];
  [(TSUHasher *)v3 addObject:percentPattern];

  currencyPattern = [(TSUFormattingSymbols *)self currencyPattern];
  [(TSUHasher *)v3 addObject:currencyPattern];

  currencyCode = [(TSUFormattingSymbols *)self currencyCode];
  [(TSUHasher *)v3 addObject:currencyCode];

  currencySymbols = [(TSUFormattingSymbols *)self currencySymbols];
  [(TSUHasher *)v3 addObject:currencySymbols];

  hashValue = [(TSUHasher *)v3 hashValue];
  return hashValue;
}

- (void)upgradeIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  locale = [necessaryCopy locale];
  v5 = [TSUFormattingSymbols defaultFormattingSymbolsForLocale:locale];

  v6 = MEMORY[0x277CBEAF8];
  localeIdentifier = [necessaryCopy localeIdentifier];
  v8 = [v6 localeWithLocaleIdentifier:localeIdentifier];
  v9 = [TSUFormattingSymbols defaultFormattingSymbolsForLocale:v8];

  version = [(TSUFormattingSymbols *)self version];
  if ([TSUFormattingSymbols isADummyDataSetVersion:version])
  {
    v11 = 0;
  }

  else
  {
    standaloneMonths = [v5 standaloneMonths];
    standaloneMonths2 = [(TSUFormattingSymbols *)self standaloneMonths];
    v11 = [standaloneMonths isEqualToArray:standaloneMonths2] ^ 1;
  }

  version = self->_version;
  if (version && [(NSString *)version length])
  {
    if (v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    version2 = [v5 version];
    v16 = self->_version;
    self->_version = version2;

    if (v11)
    {
LABEL_11:
      calendar = [v5 calendar];
      calendar = self->_calendar;
      self->_calendar = calendar;

      goto LABEL_12;
    }
  }

  v17 = self->_calendar;
  if (!v17 || ![(NSString *)v17 length])
  {
    goto LABEL_11;
  }

LABEL_12:
  numberingSystem = self->_numberingSystem;
  if (numberingSystem && [(NSString *)numberingSystem length])
  {
    if (v11)
    {
LABEL_15:
      months = [v5 months];
      months = self->_months;
      self->_months = months;

      goto LABEL_22;
    }
  }

  else
  {
    numberingSystem = [v5 numberingSystem];
    v24 = self->_numberingSystem;
    self->_numberingSystem = numberingSystem;

    if (v11)
    {
      goto LABEL_15;
    }
  }

  v25 = self->_months;
  if (!v25 || ![(NSArray *)v25 count])
  {
    months2 = [v5 months];
    v27 = self->_months;
    self->_months = months2;
  }

  standaloneMonths = self->_standaloneMonths;
  if (standaloneMonths && [(NSArray *)standaloneMonths count])
  {
LABEL_24:
    shortMonths = self->_shortMonths;
    if (!shortMonths || ![(NSArray *)shortMonths count])
    {
      shortMonths = [v5 shortMonths];
      v35 = self->_shortMonths;
      self->_shortMonths = shortMonths;
    }

    standaloneShortMonths = self->_standaloneShortMonths;
    if (standaloneShortMonths && [(NSArray *)standaloneShortMonths count])
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_22:
  standaloneMonths3 = [v5 standaloneMonths];
  v30 = self->_standaloneMonths;
  self->_standaloneMonths = standaloneMonths3;

  if ((v11 & 1) == 0)
  {
    goto LABEL_24;
  }

  shortMonths2 = [v5 shortMonths];
  v32 = self->_shortMonths;
  self->_shortMonths = shortMonths2;

LABEL_29:
  standaloneShortMonths = [v5 standaloneShortMonths];
  v38 = self->_standaloneShortMonths;
  self->_standaloneShortMonths = standaloneShortMonths;

  if (v11)
  {
    tinyMonths = [v5 tinyMonths];
    tinyMonths = self->_tinyMonths;
    self->_tinyMonths = tinyMonths;

    goto LABEL_36;
  }

LABEL_31:
  v41 = self->_tinyMonths;
  if (!v41 || ![(NSArray *)v41 count])
  {
    tinyMonths2 = [v5 tinyMonths];
    v43 = self->_tinyMonths;
    self->_tinyMonths = tinyMonths2;
  }

  standaloneTinyMonths = self->_standaloneTinyMonths;
  if (standaloneTinyMonths && [(NSArray *)standaloneTinyMonths count])
  {
LABEL_38:
    weekdays = self->_weekdays;
    if (!weekdays || ![(NSArray *)weekdays count])
    {
      weekdays = [v5 weekdays];
      v51 = self->_weekdays;
      self->_weekdays = weekdays;
    }

    standaloneWeekdays = self->_standaloneWeekdays;
    if (standaloneWeekdays && [(NSArray *)standaloneWeekdays count])
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

LABEL_36:
  standaloneTinyMonths = [v5 standaloneTinyMonths];
  v46 = self->_standaloneTinyMonths;
  self->_standaloneTinyMonths = standaloneTinyMonths;

  if ((v11 & 1) == 0)
  {
    goto LABEL_38;
  }

  weekdays2 = [v5 weekdays];
  v48 = self->_weekdays;
  self->_weekdays = weekdays2;

LABEL_43:
  standaloneWeekdays = [v5 standaloneWeekdays];
  v54 = self->_standaloneWeekdays;
  self->_standaloneWeekdays = standaloneWeekdays;

  if (v11)
  {
    shortWeekdays = [v5 shortWeekdays];
    shortWeekdays = self->_shortWeekdays;
    self->_shortWeekdays = shortWeekdays;

    goto LABEL_50;
  }

LABEL_45:
  v57 = self->_shortWeekdays;
  if (!v57 || ![(NSArray *)v57 count])
  {
    shortWeekdays2 = [v5 shortWeekdays];
    v59 = self->_shortWeekdays;
    self->_shortWeekdays = shortWeekdays2;
  }

  standaloneShortWeekdays = self->_standaloneShortWeekdays;
  if (standaloneShortWeekdays && [(NSArray *)standaloneShortWeekdays count])
  {
LABEL_52:
    tinyWeekdays = self->_tinyWeekdays;
    if (!tinyWeekdays || ![(NSArray *)tinyWeekdays count])
    {
      tinyWeekdays = [v5 tinyWeekdays];
      v67 = self->_tinyWeekdays;
      self->_tinyWeekdays = tinyWeekdays;
    }

    standaloneTinyWeekdays = self->_standaloneTinyWeekdays;
    if (standaloneTinyWeekdays && [(NSArray *)standaloneTinyWeekdays count])
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

LABEL_50:
  standaloneShortWeekdays = [v5 standaloneShortWeekdays];
  v62 = self->_standaloneShortWeekdays;
  self->_standaloneShortWeekdays = standaloneShortWeekdays;

  if ((v11 & 1) == 0)
  {
    goto LABEL_52;
  }

  tinyWeekdays2 = [v5 tinyWeekdays];
  v64 = self->_tinyWeekdays;
  self->_tinyWeekdays = tinyWeekdays2;

LABEL_57:
  standaloneTinyWeekdays = [v5 standaloneTinyWeekdays];
  v70 = self->_standaloneTinyWeekdays;
  self->_standaloneTinyWeekdays = standaloneTinyWeekdays;

  if (v11)
  {
    quarters = [v5 quarters];
    quarters = self->_quarters;
    self->_quarters = quarters;

    goto LABEL_64;
  }

LABEL_59:
  v73 = self->_quarters;
  if (!v73 || ![(NSArray *)v73 count])
  {
    quarters2 = [v5 quarters];
    v75 = self->_quarters;
    self->_quarters = quarters2;
  }

  standaloneQuarters = self->_standaloneQuarters;
  if (standaloneQuarters && [(NSArray *)standaloneQuarters count])
  {
LABEL_66:
    shortQuarters = self->_shortQuarters;
    if (!shortQuarters || ![(NSArray *)shortQuarters count])
    {
      shortQuarters = [v5 shortQuarters];
      v83 = self->_shortQuarters;
      self->_shortQuarters = shortQuarters;
    }

    standaloneShortQuarters = self->_standaloneShortQuarters;
    if (standaloneShortQuarters && [(NSArray *)standaloneShortQuarters count])
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

LABEL_64:
  standaloneQuarters = [v5 standaloneQuarters];
  v78 = self->_standaloneQuarters;
  self->_standaloneQuarters = standaloneQuarters;

  if ((v11 & 1) == 0)
  {
    goto LABEL_66;
  }

  shortQuarters2 = [v5 shortQuarters];
  v80 = self->_shortQuarters;
  self->_shortQuarters = shortQuarters2;

LABEL_71:
  standaloneShortQuarters = [v5 standaloneShortQuarters];
  v86 = self->_standaloneShortQuarters;
  self->_standaloneShortQuarters = standaloneShortQuarters;

  if (v11)
  {
    eras = [v5 eras];
    eras = self->_eras;
    self->_eras = eras;

    goto LABEL_78;
  }

LABEL_73:
  v89 = self->_eras;
  if (!v89 || ![(NSArray *)v89 count])
  {
    eras2 = [v5 eras];
    v91 = self->_eras;
    self->_eras = eras2;
  }

  longEras = self->_longEras;
  if (longEras && [(NSArray *)longEras count])
  {
LABEL_80:
    amSymbol = self->_amSymbol;
    if (!amSymbol || ![(NSString *)amSymbol length])
    {
      amSymbol = [v5 amSymbol];
      v99 = self->_amSymbol;
      self->_amSymbol = amSymbol;
    }

    pmSymbol = self->_pmSymbol;
    if (pmSymbol && [(NSString *)pmSymbol length])
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_78:
  longEras = [v5 longEras];
  v94 = self->_longEras;
  self->_longEras = longEras;

  if ((v11 & 1) == 0)
  {
    goto LABEL_80;
  }

  amSymbol2 = [v5 amSymbol];
  v96 = self->_amSymbol;
  self->_amSymbol = amSymbol2;

LABEL_85:
  pmSymbol = [v5 pmSymbol];
  v102 = self->_pmSymbol;
  self->_pmSymbol = pmSymbol;

  if (v11)
  {
LABEL_88:
    shortDatePattern = [v5 shortDatePattern];
    shortDatePattern = self->_shortDatePattern;
    self->_shortDatePattern = shortDatePattern;

    goto LABEL_89;
  }

LABEL_86:
  v103 = self->_shortDatePattern;
  if (!v103 || ![(NSString *)v103 length])
  {
    goto LABEL_88;
  }

LABEL_89:
  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_shortDatePattern])
  {
    shortDatePattern2 = [v9 shortDatePattern];
    v107 = self->_shortDatePattern;
    self->_shortDatePattern = shortDatePattern2;
  }

  if ((v11 & 1) != 0 || (v108 = self->_mediumDatePattern) == 0 || ![(NSString *)v108 length])
  {
    mediumDatePattern = [v5 mediumDatePattern];
    mediumDatePattern = self->_mediumDatePattern;
    self->_mediumDatePattern = mediumDatePattern;
  }

  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_mediumDatePattern])
  {
    mediumDatePattern2 = [v9 mediumDatePattern];
    v112 = self->_mediumDatePattern;
    self->_mediumDatePattern = mediumDatePattern2;
  }

  if ((v11 & 1) != 0 || (v113 = self->_longDatePattern) == 0 || ![(NSString *)v113 length])
  {
    longDatePattern = [v5 longDatePattern];
    longDatePattern = self->_longDatePattern;
    self->_longDatePattern = longDatePattern;
  }

  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_longDatePattern])
  {
    longDatePattern2 = [v9 longDatePattern];
    v117 = self->_longDatePattern;
    self->_longDatePattern = longDatePattern2;
  }

  if ((v11 & 1) != 0 || (v118 = self->_fullDatePattern) == 0 || ![(NSString *)v118 length])
  {
    fullDatePattern = [v5 fullDatePattern];
    fullDatePattern = self->_fullDatePattern;
    self->_fullDatePattern = fullDatePattern;
  }

  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_fullDatePattern])
  {
    fullDatePattern2 = [v9 fullDatePattern];
    v122 = self->_fullDatePattern;
    self->_fullDatePattern = fullDatePattern2;
  }

  if ((v11 & 1) != 0 || (v123 = self->_shortTimePattern) == 0 || ![(NSString *)v123 length])
  {
    shortTimePattern = [v5 shortTimePattern];
    shortTimePattern = self->_shortTimePattern;
    self->_shortTimePattern = shortTimePattern;
  }

  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_shortTimePattern])
  {
    shortTimePattern2 = [v9 shortTimePattern];
    v127 = self->_shortTimePattern;
    self->_shortTimePattern = shortTimePattern2;
  }

  if ((v11 & 1) != 0 || (v128 = self->_mediumTimePattern) == 0 || ![(NSString *)v128 length])
  {
    mediumTimePattern = [v5 mediumTimePattern];
    mediumTimePattern = self->_mediumTimePattern;
    self->_mediumTimePattern = mediumTimePattern;
  }

  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_mediumTimePattern])
  {
    mediumTimePattern2 = [v9 mediumTimePattern];
    v132 = self->_mediumTimePattern;
    self->_mediumTimePattern = mediumTimePattern2;
  }

  if ((v11 & 1) != 0 || (v133 = self->_longTimePattern) == 0 || ![(NSString *)v133 length])
  {
    longTimePattern = [v5 longTimePattern];
    longTimePattern = self->_longTimePattern;
    self->_longTimePattern = longTimePattern;
  }

  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_longTimePattern])
  {
    longTimePattern2 = [v9 longTimePattern];
    v137 = self->_longTimePattern;
    self->_longTimePattern = longTimePattern2;
  }

  if ((v11 & 1) != 0 || (v138 = self->_fullTimePattern) == 0 || ![(NSString *)v138 length])
  {
    fullTimePattern = [v5 fullTimePattern];
    fullTimePattern = self->_fullTimePattern;
    self->_fullTimePattern = fullTimePattern;
  }

  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_fullTimePattern])
  {
    fullTimePattern2 = [v9 fullTimePattern];
    v142 = self->_fullTimePattern;
    self->_fullTimePattern = fullTimePattern2;
  }

  decimalSeparator = self->_decimalSeparator;
  if (!decimalSeparator || ![(NSString *)decimalSeparator length])
  {
    decimalSeparator = [v5 decimalSeparator];
    v145 = self->_decimalSeparator;
    self->_decimalSeparator = decimalSeparator;
  }

  groupingSeparator = self->_groupingSeparator;
  if (!groupingSeparator || ![(NSString *)groupingSeparator length])
  {
    groupingSeparator = [v5 groupingSeparator];
    v148 = self->_groupingSeparator;
    self->_groupingSeparator = groupingSeparator;
  }

  currencyDecimalSeparator = self->_currencyDecimalSeparator;
  if (!currencyDecimalSeparator || ![(NSString *)currencyDecimalSeparator length])
  {
    currencyDecimalSeparator = [v5 currencyDecimalSeparator];
    v151 = self->_currencyDecimalSeparator;
    self->_currencyDecimalSeparator = currencyDecimalSeparator;
  }

  currencyGroupingSeparator = self->_currencyGroupingSeparator;
  if (!currencyGroupingSeparator || ![(NSString *)currencyGroupingSeparator length])
  {
    currencyGroupingSeparator = [v5 currencyGroupingSeparator];
    v154 = self->_currencyGroupingSeparator;
    self->_currencyGroupingSeparator = currencyGroupingSeparator;
  }

  plusSign = self->_plusSign;
  if (!plusSign || ![(NSString *)plusSign length])
  {
    plusSign = [v5 plusSign];
    v157 = self->_plusSign;
    self->_plusSign = plusSign;
  }

  minusSign = self->_minusSign;
  if (!minusSign || ![(NSString *)minusSign length])
  {
    minusSign = [v5 minusSign];
    v160 = self->_minusSign;
    self->_minusSign = minusSign;
  }

  exponentialSymbol = self->_exponentialSymbol;
  if (!exponentialSymbol || ![(NSString *)exponentialSymbol length])
  {
    exponentialSymbol = [v5 exponentialSymbol];
    v163 = self->_exponentialSymbol;
    self->_exponentialSymbol = exponentialSymbol;
  }

  percentSymbol = self->_percentSymbol;
  if (!percentSymbol || ![(NSString *)percentSymbol length])
  {
    percentSymbol = [v5 percentSymbol];
    v166 = self->_percentSymbol;
    self->_percentSymbol = percentSymbol;
  }

  perMilleSymbol = self->_perMilleSymbol;
  if (!perMilleSymbol || ![(NSString *)perMilleSymbol length])
  {
    perMilleSymbol = [v5 perMilleSymbol];
    v169 = self->_perMilleSymbol;
    self->_perMilleSymbol = perMilleSymbol;
  }

  infinitySymbol = self->_infinitySymbol;
  if (!infinitySymbol || ![(NSString *)infinitySymbol length])
  {
    infinitySymbol = [v5 infinitySymbol];
    v172 = self->_infinitySymbol;
    self->_infinitySymbol = infinitySymbol;
  }

  nanSymbol = self->_nanSymbol;
  if (!nanSymbol || ![(NSString *)nanSymbol length])
  {
    nanSymbol = [v5 nanSymbol];
    v175 = self->_nanSymbol;
    self->_nanSymbol = nanSymbol;
  }

  decimalPattern = self->_decimalPattern;
  if (!decimalPattern || ![(NSString *)decimalPattern length])
  {
    decimalPattern = [v5 decimalPattern];
    v178 = self->_decimalPattern;
    self->_decimalPattern = decimalPattern;
  }

  scientificPattern = self->_scientificPattern;
  if (!scientificPattern || ![(NSString *)scientificPattern length])
  {
    scientificPattern = [v5 scientificPattern];
    v181 = self->_scientificPattern;
    self->_scientificPattern = scientificPattern;
  }

  percentPattern = self->_percentPattern;
  if (!percentPattern || ![(NSString *)percentPattern length])
  {
    percentPattern = [v5 percentPattern];
    v184 = self->_percentPattern;
    self->_percentPattern = percentPattern;
  }

  currencyPattern = self->_currencyPattern;
  if (!currencyPattern || ![(NSString *)currencyPattern length])
  {
    currencyPattern = [v5 currencyPattern];
    v187 = self->_currencyPattern;
    self->_currencyPattern = currencyPattern;
  }

  currencyCode = self->_currencyCode;
  if (!currencyCode || ![(NSString *)currencyCode length])
  {
    currencyCode = [v5 currencyCode];
    v190 = self->_currencyCode;
    self->_currencyCode = currencyCode;
  }

  currencySymbols = self->_currencySymbols;
  if (!currencySymbols || ![(NSDictionary *)currencySymbols count])
  {
    currencySymbols = [v5 currencySymbols];
    v193 = self->_currencySymbols;
    self->_currencySymbols = currencySymbols;
  }

  [(TSUFormattingSymbols *)self p_deriveCalculatedPropertyValues];
}

- (BOOL)hasUserCustomizations
{
  version = [(TSUFormattingSymbols *)self version];
  v3 = [TSUFormattingSymbols versionIsForACustomizedLocale:version];

  return v3;
}

- (id)patternStringForDateStyle:(unint64_t)style timeStyle:(unint64_t)timeStyle
{
  if (!(timeStyle | style))
  {
    v9 = &stru_28862C2A0;
    goto LABEL_30;
  }

  if (timeStyle)
  {
    if (style)
    {
      v6 = [(TSUFormattingSymbols *)self patternStringForDateStyle:style timeStyle:0];
      v7 = [(TSUFormattingSymbols *)self patternStringForDateStyle:0 timeStyle:timeStyle];
      if ([v6 length])
      {
        if ([v7 length])
        {
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v6, v7];
        }

        else
        {
          v8 = v6;
        }
      }

      else
      {
        v8 = v7;
      }

      v9 = v8;

      goto LABEL_30;
    }

    v9 = &stru_28862C2A0;
    if (timeStyle > 2)
    {
      if (timeStyle == 3)
      {
        longTimePattern = [(TSUFormattingSymbols *)self longTimePattern];
      }

      else
      {
        if (timeStyle != 4)
        {
          goto LABEL_30;
        }

        longTimePattern = [(TSUFormattingSymbols *)self fullTimePattern];
      }
    }

    else if (timeStyle == 1)
    {
      longTimePattern = [(TSUFormattingSymbols *)self shortTimePattern];
    }

    else
    {
      if (timeStyle != 2)
      {
        goto LABEL_30;
      }

      longTimePattern = [(TSUFormattingSymbols *)self mediumTimePattern];
    }
  }

  else
  {
    v9 = &stru_28862C2A0;
    if (style > 2)
    {
      if (style == 3)
      {
        longTimePattern = [(TSUFormattingSymbols *)self longDatePattern];
      }

      else
      {
        if (style != 4)
        {
          goto LABEL_30;
        }

        longTimePattern = [(TSUFormattingSymbols *)self fullDatePattern];
      }
    }

    else if (style == 1)
    {
      longTimePattern = [(TSUFormattingSymbols *)self shortDatePattern];
    }

    else
    {
      if (style != 2)
      {
        goto LABEL_30;
      }

      longTimePattern = [(TSUFormattingSymbols *)self mediumDatePattern];
    }
  }

  v9 = longTimePattern;
LABEL_30:

  return v9;
}

- (id)patternStringForNumberStyle:(unsigned int)style negativeStyle:(unsigned __int8)negativeStyle
{
  negativeStyleCopy = negativeStyle;
  v5 = *&style;
  negativeNumberPatterns = [(TSUFormattingSymbols *)self negativeNumberPatterns];
  v8 = [(TSUFormattingSymbols *)self p_negativeNumberKeyForNumberStyle:v5 negativeStyle:negativeStyleCopy];
  v9 = [negativeNumberPatterns objectForKey:v8];

  return v9;
}

- (id)currencySymbolForCurrencyCode:(id)code
{
  codeCopy = code;
  currencySymbols = [(TSUFormattingSymbols *)self currencySymbols];
  v6 = [currencySymbols objectForKey:codeCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = codeCopy;
  }

  v9 = v8;

  return v8;
}

- (id)halfwidthCurrencySymbolForCurrencyCode:(id)code
{
  codeCopy = code;
  currencyCodesToHalfwidthSymbols = [(TSUFormattingSymbols *)self currencyCodesToHalfwidthSymbols];
  v6 = [currencyCodesToHalfwidthSymbols objectForKey:codeCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = codeCopy;
  }

  v9 = v8;

  return v8;
}

- (id)currencyCodeForCurrencySymbol:(id)symbol
{
  symbolCopy = symbol;
  currencySymbolsToCodes = [(TSUFormattingSymbols *)self currencySymbolsToCodes];
  v6 = [currencySymbolsToCodes objectForKey:symbolCopy];

  if (v6)
  {
    if ([v6 length])
    {
      goto LABEL_7;
    }
  }

  else if ([TSULocale isValidCurrencyCode:symbolCopy])
  {
    v6 = symbolCopy;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (void)p_setAllSpaceVariantsOfString:(id)string toCode:(id)code inSymbolToCodeDictionary:(id)dictionary
{
  stringCopy = string;
  codeCopy = code;
  dictionaryCopy = dictionary;
  [dictionaryCopy setObject:codeCopy forKey:stringCopy];
  v9 = [stringCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_28862C2A0];
  if (([v9 isEqualToString:stringCopy] & 1) == 0)
  {
    v10 = [dictionaryCopy objectForKey:v9];

    if (!v10)
    {
      [dictionaryCopy setObject:codeCopy forKey:v9];
    }

    v11 = [stringCopy stringByReplacingOccurrencesOfString:@" " withString:@" "];
    [dictionaryCopy setObject:codeCopy forKey:v11];
    v12 = [stringCopy stringByReplacingOccurrencesOfString:@" " withString:@" "];
    [dictionaryCopy setObject:codeCopy forKey:v12];
  }

  v13 = [stringCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_28862C2A0];
  if (([v13 isEqualToString:stringCopy] & 1) == 0)
  {
    v14 = [dictionaryCopy objectForKey:v13];

    if (!v14)
    {
      [dictionaryCopy setObject:codeCopy forKey:v13];
    }

    v15 = [stringCopy stringByReplacingOccurrencesOfString:@" " withString:@" "];
    [dictionaryCopy setObject:codeCopy forKey:v15];
    v16 = [stringCopy stringByReplacingOccurrencesOfString:@" " withString:@" "];
    [dictionaryCopy setObject:codeCopy forKey:v16];
  }

  v17 = [stringCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_28862C2A0];

  if (([v17 isEqualToString:stringCopy] & 1) == 0)
  {
    v18 = [dictionaryCopy objectForKey:v17];

    if (!v18)
    {
      [dictionaryCopy setObject:codeCopy forKey:v17];
    }

    v19 = [stringCopy stringByReplacingOccurrencesOfString:@" " withString:@" "];
    [dictionaryCopy setObject:codeCopy forKey:v19];
    v20 = [stringCopy stringByReplacingOccurrencesOfString:@" " withString:@" "];
    [dictionaryCopy setObject:codeCopy forKey:v20];
  }
}

+ (unint64_t)locationOfFirstDateFormatCharacter:(id)character
{
  characterCopy = character;
  if (qword_280A63D00 != -1)
  {
    sub_2771140C0();
  }

  v4 = [characterCopy length];
  v5 = [characterCopy rangeOfCharacterFromSet:qword_280A63D08];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    v8 = [characterCopy rangeOfCharacterFromSet:qword_280A63CF8];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v7;
    }

    else
    {
      v9 = v8;
      v10 = [characterCopy rangeOfCharacterFromSet:qword_280A63D08 options:0 range:{0, v8}];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v4 - 1;
        while (1)
        {
          v12 = v9 + 1;
          v13 = [characterCopy length] - (v9 + 1);
          v14 = [characterCopy rangeOfCharacterFromSet:qword_280A63CF8 options:0 range:{v9 + 1, v13}];
          v15 = [characterCopy rangeOfCharacterFromSet:qword_280A63D08 options:0 range:{v12, v13}];
          v6 = 0x7FFFFFFFFFFFFFFFLL;
          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v16 = v15;
          if (v14 >= v11 || v15 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v18 = [characterCopy length];
          v19 = [characterCopy rangeOfCharacterFromSet:qword_280A63CF8 options:0 range:{v14 + 1, v18 - (v14 + 1)}];
          v9 = v19;
          if (v19 == 0x7FFFFFFFFFFFFFFFLL || v19 > v16)
          {
            v6 = v16;
            break;
          }
        }
      }

      else
      {
        v6 = v10;
      }
    }
  }

  return v6;
}

- (void)p_deriveCalculatedPropertyValues
{
  v101 = *MEMORY[0x277D85DE8];
  if ([(NSString *)self->_decimalSeparator isEqualToString:@"."])
  {
    v3 = @",";
  }

  else
  {
    v3 = @";";
  }

  objc_storeStrong(&self->_listSeparator, v3);
  arrayRowSeparator = self->_arrayRowSeparator;
  self->_arrayRowSeparator = @";";

  v5 = objc_opt_new();
  [v5 setPositiveFormat:self->_decimalPattern];
  self->_groupingSize = [v5 groupingSize];
  v83 = v5;
  self->_secondaryGroupingSize = [v5 secondaryGroupingSize];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](self->_currencySymbols, "count")}];
  v87 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](self->_currencySymbols, "count")}];
  array = [MEMORY[0x277CBEB18] array];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  selfCopy = self;
  allKeys = [(NSDictionary *)self->_currencySymbols allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v93 objects:v100 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v94;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v94 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v93 + 1) + 8 * i);
        v15 = [(NSDictionary *)selfCopy->_currencySymbols objectForKey:v14];
        if ([v15 rangeOfCharacterFromSet:whitespaceCharacterSet] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [array insertObject:v14 atIndex:0];
        }

        else
        {
          [array addObject:v14];
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v93 objects:v100 count:16];
    }

    while (v11);
  }

  v82 = whitespaceCharacterSet;

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = array;
  v16 = [obj countByEnumeratingWithState:&v89 objects:v99 count:16];
  if (v16)
  {
    v17 = v16;
    v85 = *v90;
    v18 = *MEMORY[0x277CBE750];
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v90 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v89 + 1) + 8 * j);
        v21 = [(NSDictionary *)selfCopy->_currencySymbols objectForKey:v20];
        [TSUFormattingSymbols p_setAllSpaceVariantsOfString:v21 toCode:v20 inSymbolToCodeDictionary:v6];
        [v6 setObject:&stru_28862C2A0 forKey:v20];
        v22 = [v21 stringByReplacingOccurrencesOfString:@"\u200F" withString:&stru_28862C2A0];
        if (([v22 isEqualToString:v21] & 1) == 0)
        {
          [TSUFormattingSymbols p_setAllSpaceVariantsOfString:v22 toCode:v20 inSymbolToCodeDictionary:v6];
        }

        v23 = [v22 stringByApplyingTransform:v18 reverse:0];
        if (([v23 isEqualToString:v22] & 1) == 0)
        {
          [TSUFormattingSymbols p_setAllSpaceVariantsOfString:v23 toCode:v20 inSymbolToCodeDictionary:v6];
        }

        v24 = [v22 stringByApplyingTransform:v18 reverse:1];
        if (([v24 isEqualToString:v22] & 1) == 0)
        {
          [TSUFormattingSymbols p_setAllSpaceVariantsOfString:v24 toCode:v20 inSymbolToCodeDictionary:v6];
        }

        [v87 setObject:v23 forKey:v20];
      }

      v17 = [obj countByEnumeratingWithState:&v89 objects:v99 count:16];
    }

    while (v17);
  }

  v81 = v6;
  v25 = [v6 copy];
  [(TSUFormattingSymbols *)selfCopy setCurrencySymbolsToCodes:v25];

  v26 = [v87 copy];
  [(TSUFormattingSymbols *)selfCopy setCurrencyCodesToHalfwidthSymbols:v26];

  version = [(TSUFormattingSymbols *)selfCopy version];
  v86 = [version stringByReplacingOccurrencesOfString:@"*" withString:&stru_28862C2A0];

  v28 = [v86 integerValue] > 1799;
  v80 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:256 negativeStyle:4];
  v97[0] = v80;
  decimalPattern = [(TSUFormattingSymbols *)selfCopy decimalPattern];
  v98[0] = decimalPattern;
  v78 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:256 negativeStyle:0];
  v97[1] = v78;
  decimalPattern2 = [(TSUFormattingSymbols *)selfCopy decimalPattern];
  v76 = [TSUNumberFormatter formatString:decimalPattern2 transformedForNegativeStyle:0];
  v98[1] = v76;
  v75 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:256 negativeStyle:1];
  v97[2] = v75;
  decimalPattern3 = [(TSUFormattingSymbols *)selfCopy decimalPattern];
  v73 = [TSUNumberFormatter formatString:decimalPattern3 transformedForNegativeStyle:1];
  v98[2] = v73;
  v72 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:256 negativeStyle:2];
  v97[3] = v72;
  decimalPattern4 = [(TSUFormattingSymbols *)selfCopy decimalPattern];
  v70 = [TSUNumberFormatter formatString:decimalPattern4 transformedForNegativeStyle:2];
  v98[3] = v70;
  v69 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:256 negativeStyle:3];
  v97[4] = v69;
  decimalPattern5 = [(TSUFormattingSymbols *)selfCopy decimalPattern];
  v67 = [TSUNumberFormatter formatString:decimalPattern5 transformedForNegativeStyle:3];
  v98[4] = v67;
  v66 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:257 negativeStyle:4];
  v97[5] = v66;
  currencyPattern = [(TSUFormattingSymbols *)selfCopy currencyPattern];
  v98[5] = currencyPattern;
  v64 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:257 negativeStyle:0];
  v97[6] = v64;
  currencyPattern2 = [(TSUFormattingSymbols *)selfCopy currencyPattern];
  v62 = [TSUNumberFormatter formatString:currencyPattern2 transformedForNegativeStyle:0 placeMinusSignAfterRLM:v28];
  v98[6] = v62;
  v61 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:257 negativeStyle:1];
  v97[7] = v61;
  currencyPattern3 = [(TSUFormattingSymbols *)selfCopy currencyPattern];
  v59 = [TSUNumberFormatter formatString:currencyPattern3 transformedForNegativeStyle:1];
  v98[7] = v59;
  v58 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:257 negativeStyle:2];
  v97[8] = v58;
  currencyPattern4 = [(TSUFormattingSymbols *)selfCopy currencyPattern];
  v56 = [TSUNumberFormatter formatString:currencyPattern4 transformedForNegativeStyle:2];
  v98[8] = v56;
  v55 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:257 negativeStyle:3];
  v97[9] = v55;
  currencyPattern5 = [(TSUFormattingSymbols *)selfCopy currencyPattern];
  v53 = [TSUNumberFormatter formatString:currencyPattern5 transformedForNegativeStyle:3];
  v98[9] = v53;
  v52 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:258 negativeStyle:4];
  v97[10] = v52;
  percentPattern = [(TSUFormattingSymbols *)selfCopy percentPattern];
  v98[10] = percentPattern;
  v50 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:258 negativeStyle:0];
  v97[11] = v50;
  percentPattern2 = [(TSUFormattingSymbols *)selfCopy percentPattern];
  v48 = [TSUNumberFormatter formatString:percentPattern2 transformedForNegativeStyle:0];
  v98[11] = v48;
  v47 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:258 negativeStyle:1];
  v97[12] = v47;
  percentPattern3 = [(TSUFormattingSymbols *)selfCopy percentPattern];
  v45 = [TSUNumberFormatter formatString:percentPattern3 transformedForNegativeStyle:1];
  v98[12] = v45;
  v44 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:258 negativeStyle:2];
  v97[13] = v44;
  percentPattern4 = [(TSUFormattingSymbols *)selfCopy percentPattern];
  v42 = [TSUNumberFormatter formatString:percentPattern4 transformedForNegativeStyle:2];
  v98[13] = v42;
  v41 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:258 negativeStyle:3];
  v97[14] = v41;
  percentPattern5 = [(TSUFormattingSymbols *)selfCopy percentPattern];
  v39 = [TSUNumberFormatter formatString:percentPattern5 transformedForNegativeStyle:3];
  v98[14] = v39;
  v38 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:259 negativeStyle:4];
  v97[15] = v38;
  v98[15] = @"#.##E+00";
  v29 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:259 negativeStyle:0];
  v97[16] = v29;
  v30 = [TSUNumberFormatter formatString:@"#.##E+00" transformedForNegativeStyle:0];
  v98[16] = v30;
  v31 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:259 negativeStyle:1];
  v97[17] = v31;
  v32 = [TSUNumberFormatter formatString:@"#.##E+00" transformedForNegativeStyle:1];
  v98[17] = v32;
  v33 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:259 negativeStyle:2];
  v97[18] = v33;
  v34 = [TSUNumberFormatter formatString:@"#.##E+00" transformedForNegativeStyle:2];
  v98[18] = v34;
  v35 = [(TSUFormattingSymbols *)selfCopy p_negativeNumberKeyForNumberStyle:259 negativeStyle:3];
  v97[19] = v35;
  v36 = [TSUNumberFormatter formatString:@"#.##E+00" transformedForNegativeStyle:3];
  v98[19] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:20];
  [(TSUFormattingSymbols *)selfCopy setNegativeNumberPatterns:v37];
}

- (id)p_negativeNumberKeyForNumberStyle:(unsigned int)style negativeStyle:(unsigned __int8)negativeStyle
{
  if (style - 260 >= 0xFFFFFFFC)
  {
    styleCopy = style;
  }

  else
  {
    styleCopy = 256;
  }

  if (negativeStyle >= 4u)
  {
    negativeStyleCopy = 4;
  }

  else
  {
    negativeStyleCopy = negativeStyle;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%d-%d", styleCopy, negativeStyleCopy];
}

+ (BOOL)p_localeIsCustomized:(id)customized
{
  customizedCopy = customized;
  v5 = MEMORY[0x277CBEAF8];
  localeIdentifier = [customizedCopy localeIdentifier];
  v7 = [v5 localeWithLocaleIdentifier:localeIdentifier];

  decimalSeparator = [customizedCopy decimalSeparator];
  decimalSeparator2 = [v7 decimalSeparator];
  v10 = [decimalSeparator isEqualToString:decimalSeparator2];

  if (!v10)
  {
    goto LABEL_5;
  }

  groupingSeparator = [customizedCopy groupingSeparator];
  groupingSeparator2 = [v7 groupingSeparator];
  v13 = [groupingSeparator isEqualToString:groupingSeparator2];

  if (!v13)
  {
    goto LABEL_5;
  }

  currencyCode = [customizedCopy currencyCode];
  currencyCode2 = [v7 currencyCode];
  v16 = [currencyCode isEqualToString:currencyCode2];

  if (!v16)
  {
    goto LABEL_5;
  }

  usesMetricSystem = [customizedCopy usesMetricSystem];
  if (usesMetricSystem != [v7 usesMetricSystem])
  {
    goto LABEL_5;
  }

  v20 = objc_opt_new();
  [v20 setLocale:customizedCopy];
  v21 = objc_opt_new();
  [v21 setLocale:v7];
  aMSymbol = [v20 AMSymbol];
  aMSymbol2 = [v21 AMSymbol];
  v24 = [aMSymbol isEqualToString:aMSymbol2];

  if (!v24)
  {
    goto LABEL_13;
  }

  pMSymbol = [v20 PMSymbol];
  pMSymbol2 = [v21 PMSymbol];
  v27 = [pMSymbol isEqualToString:pMSymbol2];

  if (!v27)
  {
    goto LABEL_13;
  }

  LOBYTE(v18) = 1;
  if ([self p_patternsDifferForDF:v20 uncustomizedDF:v21 dateStyle:1 timeStyle:0])
  {
LABEL_14:

    goto LABEL_6;
  }

  if ([self p_patternsDifferForDF:v20 uncustomizedDF:v21 dateStyle:2 timeStyle:0] & 1) != 0 || (objc_msgSend(self, "p_patternsDifferForDF:uncustomizedDF:dateStyle:timeStyle:", v20, v21, 3, 0) & 1) != 0 || (objc_msgSend(self, "p_patternsDifferForDF:uncustomizedDF:dateStyle:timeStyle:", v20, v21, 4, 0))
  {
    goto LABEL_13;
  }

  LOBYTE(v18) = 1;
  if ([self p_patternsDifferForDF:v20 uncustomizedDF:v21 dateStyle:0 timeStyle:1])
  {
    goto LABEL_14;
  }

  if ([self p_patternsDifferForDF:v20 uncustomizedDF:v21 dateStyle:0 timeStyle:2] & 1) != 0 || (objc_msgSend(self, "p_patternsDifferForDF:uncustomizedDF:dateStyle:timeStyle:", v20, v21, 0, 3))
  {
LABEL_13:
    LOBYTE(v18) = 1;
    goto LABEL_14;
  }

  v28 = [self p_patternsDifferForDF:v20 uncustomizedDF:v21 dateStyle:0 timeStyle:4];

  if ((v28 & 1) == 0)
  {
    v20 = objc_opt_new();
    [v20 setLocale:customizedCopy];
    v21 = objc_opt_new();
    [v21 setLocale:v7];
    currencyDecimalSeparator = [v20 currencyDecimalSeparator];
    currencyDecimalSeparator2 = [v21 currencyDecimalSeparator];
    v31 = [currencyDecimalSeparator isEqualToString:currencyDecimalSeparator2];

    if (v31)
    {
      currencyGroupingSeparator = [v20 currencyGroupingSeparator];
      currencyGroupingSeparator2 = [v21 currencyGroupingSeparator];
      v18 = [currencyGroupingSeparator isEqualToString:currencyGroupingSeparator2] ^ 1;

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_5:
  LOBYTE(v18) = 1;
LABEL_6:

  return v18;
}

+ (BOOL)p_patternsDifferForDF:(id)f uncustomizedDF:(id)dF dateStyle:(unint64_t)style timeStyle:(unint64_t)timeStyle
{
  dFCopy = dF;
  fCopy = f;
  [fCopy setDateStyle:style];
  [fCopy setTimeStyle:timeStyle];
  [dFCopy setDateStyle:style];
  [dFCopy setTimeStyle:timeStyle];
  dateFormat = [fCopy dateFormat];

  dateFormat2 = [dFCopy dateFormat];

  LOBYTE(fCopy) = [dateFormat isEqualToString:dateFormat2];
  return fCopy ^ 1;
}

@end