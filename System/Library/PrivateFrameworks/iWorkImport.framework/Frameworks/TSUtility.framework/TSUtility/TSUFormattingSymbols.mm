@interface TSUFormattingSymbols
+ (BOOL)isADummyDataSetVersion:(id)a3;
+ (BOOL)p_localeIsCustomized:(id)a3;
+ (BOOL)p_patternsDifferForDF:(id)a3 uncustomizedDF:(id)a4 dateStyle:(unint64_t)a5 timeStyle:(unint64_t)a6;
+ (id)defaultFormattingSymbolsForLocale:(id)a3;
+ (id)defaultFormattingSymbolsVersionForLocale:(id)a3;
+ (id)dummyFormattingSymbolsForTesting:(int64_t)a3;
+ (id)numberingSystemForLocale:(id)a3;
+ (unint64_t)locationOfFirstDateFormatCharacter:(id)a3;
+ (void)p_setAllSpaceVariantsOfString:(id)a3 toCode:(id)a4 inSymbolToCodeDictionary:(id)a5;
- (BOOL)hasUserCustomizations;
- (BOOL)isEqual:(id)a3;
- (TSUFormattingSymbols)initWithDummyDataSet:(int64_t)a3;
- (TSUFormattingSymbols)initWithLocale:(id)a3;
- (TSUFormattingSymbols)initWithVersion:(id)a3 calendar:(id)a4 numberingSystem:(id)a5 months:(id)a6 standaloneMonths:(id)a7 shortMonths:(id)a8 standaloneShortMonths:(id)a9 tinyMonths:(id)a10 standaloneTinyMonths:(id)a11 weekdays:(id)a12 standaloneWeekdays:(id)a13 shortWeekdays:(id)a14 standaloneShortWeekdays:(id)a15 tinyWeekdays:(id)a16 standaloneTinyWeekdays:(id)a17 quarters:(id)a18 standaloneQuarters:(id)a19 shortQuarters:(id)a20 standaloneShortQuarters:(id)a21 eras:(id)a22 longEras:(id)a23 amSymbol:(id)a24 pmSymbol:(id)a25 shortDatePattern:(id)a26 mediumDatePattern:(id)a27 longDatePattern:(id)a28 fullDatePattern:(id)a29 shortTimePattern:(id)a30 mediumTimePattern:(id)a31 longTimePattern:(id)a32 fullTimePattern:(id)a33 decimalSeparator:(id)a34 groupingSeparator:(id)a35 currencyDecimalSeparator:(id)a36 currencyGroupingSeparator:(id)a37 plusSign:(id)a38 minusSign:(id)a39 exponentialSymbol:(id)a40 percentSymbol:(id)a41 perMilleSymbol:(id)a42 infinitySymbol:(id)a43 nanSymbol:(id)a44 decimalPattern:(id)a45 scientificPattern:(id)a46 percentPattern:(id)a47 currencyPattern:(id)a48 currencyCode:(id)a49 currencySymbols:(id)a50;
- (id)currencyCodeForCurrencySymbol:(id)a3;
- (id)currencySymbolForCurrencyCode:(id)a3;
- (id)halfwidthCurrencySymbolForCurrencyCode:(id)a3;
- (id)p_negativeNumberKeyForNumberStyle:(unsigned int)a3 negativeStyle:(unsigned __int8)a4;
- (id)patternStringForDateStyle:(unint64_t)a3 timeStyle:(unint64_t)a4;
- (id)patternStringForNumberStyle:(unsigned int)a3 negativeStyle:(unsigned __int8)a4;
- (unint64_t)hash;
- (void)p_deriveCalculatedPropertyValues;
- (void)setForTestingShortDatePattern:(id)a3 mediumDatePattern:(id)a4 longDatePattern:(id)a5 fullDatePattern:(id)a6 shortTimePattern:(id)a7 mediumTimePattern:(id)a8 longTimePattern:(id)a9 fullTimePattern:(id)a10;
- (void)upgradeIfNecessary:(id)a3;
@end

@implementation TSUFormattingSymbols

+ (id)defaultFormattingSymbolsForLocale:(id)a3
{
  v3 = a3;
  v4 = [[TSUFormattingSymbols alloc] initWithLocale:v3];

  return v4;
}

+ (id)defaultFormattingSymbolsVersionForLocale:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *MEMORY[0x277CBED68];
  v5 = a3;
  v6 = [v3 stringWithFormat:@"%07.2f", v4];
  v7 = [TSUFormattingSymbols p_localeIsCustomized:v5];

  if (v7)
  {
    v8 = [v6 stringByAppendingString:@"*"];

    v6 = v8;
  }

  return v6;
}

+ (id)numberingSystemForLocale:(id)a3
{
  v3 = qword_280A63CF0;
  v4 = a3;
  if (v3 != -1)
  {
    sub_2771140AC();
  }

  v5 = objc_opt_new();
  [v5 setLocale:v4];

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

+ (id)dummyFormattingSymbolsForTesting:(int64_t)a3
{
  v3 = [[TSUFormattingSymbols alloc] initWithDummyDataSet:a3];

  return v3;
}

- (void)setForTestingShortDatePattern:(id)a3 mediumDatePattern:(id)a4 longDatePattern:(id)a5 fullDatePattern:(id)a6 shortTimePattern:(id)a7 mediumTimePattern:(id)a8 longTimePattern:(id)a9 fullTimePattern:(id)a10
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v21 = a8;
  v20 = a9;
  v17 = a10;
  objc_storeStrong(&self->_shortDatePattern, a3);
  objc_storeStrong(&self->_mediumDatePattern, a4);
  objc_storeStrong(&self->_longDatePattern, a5);
  objc_storeStrong(&self->_fullDatePattern, a6);
  objc_storeStrong(&self->_shortTimePattern, a7);
  objc_storeStrong(&self->_mediumTimePattern, a8);
  objc_storeStrong(&self->_longTimePattern, a9);
  objc_storeStrong(&self->_fullTimePattern, a10);
  if (![(TSUFormattingSymbols *)self hasUserCustomizations])
  {
    v18 = [(NSString *)self->_version stringByAppendingString:@"*"];
    version = self->_version;
    self->_version = v18;
  }
}

- (TSUFormattingSymbols)initWithLocale:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 calendarIdentifier];
  v5 = [v4 isEqualToString:*MEMORY[0x277CBE5C0]];

  v6 = v3;
  if ((v5 & 1) == 0)
  {
    v6 = sub_2770303F8(v3);
  }

  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setLocale:v6];
  [v7 setTimeStyle:0];
  [v7 setDateStyle:1];
  v8 = [v7 dateFormat];
  [v7 setDateStyle:2];
  v9 = [v7 dateFormat];
  [v7 setDateStyle:3];
  v82 = [v7 dateFormat];
  [v7 setDateStyle:4];
  v81 = [v7 dateFormat];
  [v7 setDateStyle:0];
  [v7 setTimeStyle:1];
  v80 = [v7 dateFormat];
  [v7 setTimeStyle:2];
  v79 = [v7 dateFormat];
  [v7 setTimeStyle:3];
  v78 = [v7 dateFormat];
  [v7 setTimeStyle:4];
  v77 = [v7 dateFormat];
  v10 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v10 setLocale:v3];
  [v10 setNumberStyle:1];
  v76 = [v10 positiveFormat];
  [v10 setNumberStyle:4];
  v75 = [v10 positiveFormat];
  [v10 setNumberStyle:3];
  v74 = [v10 positiveFormat];
  [v10 setNumberStyle:2];
  v46 = v10;
  v11 = [v10 positiveFormat];
  v12 = [v3 languageCode];
  v13 = [v12 isEqualToString:@"he"];

  v47 = v7;
  v48 = v6;
  v84 = v8;
  v83 = v9;
  if (v13 && [(__CFString *)v11 isEqualToString:@"\u200F#, ##0.00 \u200F¤"])
  {
    v14 = [v3 countryCode];
    v15 = [v14 isEqualToString:@"IL"];

    if (v15)
    {
      v11 = @"\u200F#,##0.00 ¤";
    }

    else
    {
      v11 = @"¤#,##0.00";
    }
  }

  v73 = v11;
  v85 = objc_opt_new();
  v16 = [v3 localeIdentifier];
  v17 = [TSULocale regionSubtagAwareComponentsFromLocaleIdentifier:v16];
  v86 = [v17 mutableCopy];

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v18 = [MEMORY[0x277CBEAF8] ISOCurrencyCodes];
  v19 = [v18 countByEnumeratingWithState:&v87 objects:v91 count:16];
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
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v87 + 1) + 8 * i);
        [v86 setObject:v24 forKey:v22];
        v25 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v86];
        v26 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v25];
        v27 = [v26 currencySymbol];
        if (([v27 isEqualToString:v24] & 1) == 0)
        {
          [v85 setObject:v27 forKey:v24];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v87 objects:v91 count:16];
    }

    while (v20);
  }

  v72 = [TSUFormattingSymbols defaultFormattingSymbolsVersionForLocale:v3];
  v43 = [v47 calendar];
  v71 = [v43 calendarIdentifier];
  v70 = [TSUFormattingSymbols numberingSystemForLocale:v3];
  v69 = [v47 monthSymbols];
  v67 = [v47 standaloneMonthSymbols];
  v64 = [v47 shortMonthSymbols];
  v66 = [v47 shortStandaloneMonthSymbols];
  v68 = [v47 veryShortMonthSymbols];
  v63 = [v47 veryShortStandaloneMonthSymbols];
  v65 = [v47 weekdaySymbols];
  v60 = [v47 standaloneWeekdaySymbols];
  v62 = [v47 shortWeekdaySymbols];
  v59 = [v47 shortStandaloneWeekdaySymbols];
  v61 = [v47 veryShortWeekdaySymbols];
  v57 = [v47 veryShortStandaloneWeekdaySymbols];
  v58 = [v47 quarterSymbols];
  v56 = [v47 standaloneQuarterSymbols];
  v42 = [v47 shortQuarterSymbols];
  v55 = [v47 shortStandaloneQuarterSymbols];
  v41 = [v47 eraSymbols];
  v54 = [v47 longEraSymbols];
  v40 = [v47 AMSymbol];
  v39 = [v47 PMSymbol];
  v53 = [v46 decimalSeparator];
  v52 = [v46 groupingSeparator];
  v51 = [v46 currencyDecimalSeparator];
  v50 = [v46 currencyGroupingSeparator];
  v49 = [v46 plusSign];
  v28 = [v46 minusSign];
  v29 = [v46 exponentSymbol];
  v30 = [v46 percentSymbol];
  v31 = [v46 perMillSymbol];
  v32 = [v46 positiveInfinitySymbol];
  v33 = [v46 notANumberSymbol];
  v34 = [v3 currencyCode];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = @"USD";
  }

  v38 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v85];
  v45 = [(TSUFormattingSymbols *)self initWithVersion:v72 calendar:v71 numberingSystem:v70 months:v69 standaloneMonths:v67 shortMonths:v64 standaloneShortMonths:v66 tinyMonths:v68 standaloneTinyMonths:v63 weekdays:v65 standaloneWeekdays:v60 shortWeekdays:v62 standaloneShortWeekdays:v59 tinyWeekdays:v61 standaloneTinyWeekdays:v57 quarters:v58 standaloneQuarters:v56 shortQuarters:v42 standaloneShortQuarters:v55 eras:v41 longEras:v54 amSymbol:v40 pmSymbol:v39 shortDatePattern:v84 mediumDatePattern:v83 longDatePattern:v82 fullDatePattern:v81 shortTimePattern:v80 mediumTimePattern:v79 longTimePattern:v78 fullTimePattern:v77 decimalSeparator:v53 groupingSeparator:v52 currencyDecimalSeparator:v51 currencyGroupingSeparator:v50 plusSign:v49 minusSign:v28 exponentialSymbol:v29 percentSymbol:v30 perMilleSymbol:v31 infinitySymbol:v32 nanSymbol:v33 decimalPattern:v76 scientificPattern:v75 percentPattern:v74 currencyPattern:v73 currencyCode:v36 currencySymbols:v38];

  return v45;
}

+ (BOOL)isADummyDataSetVersion:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"0001.00"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"0001.10"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"0000.00"];
  }

  return v4;
}

- (TSUFormattingSymbols)initWithDummyDataSet:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(TSUFormattingSymbols *)self initWithVersion:@"0001.10" calendar:@"gregorian" numberingSystem:@"latn" months:&unk_28864B848 standaloneMonths:&unk_28864B860 shortMonths:&unk_28864B878 standaloneShortMonths:&unk_28864B890 tinyMonths:&unk_28864B8A8 standaloneTinyMonths:&unk_28864B8C0 weekdays:&unk_28864B8D8 standaloneWeekdays:&unk_28864B8F0 shortWeekdays:&unk_28864B908 standaloneShortWeekdays:&unk_28864B920 tinyWeekdays:&unk_28864B938 standaloneTinyWeekdays:&unk_28864B950 quarters:&unk_28864B968 standaloneQuarters:&unk_28864B980 shortQuarters:&unk_28864B998 standaloneShortQuarters:&unk_28864B9B0 eras:&unk_28864B9C8 longEras:&unk_28864B9E0 amSymbol:@"AX" pmSymbol:@"PX" shortDatePattern:@"d!yy!MM" mediumDatePattern:@"d!yyyy!MMM" longDatePattern:@"d☺yyyy☺MMMM" fullDatePattern:@"d☺yyyy☺MMMM☺EEEE" shortTimePattern:@"a•h•mm" mediumTimePattern:@"a•h•mm" longTimePattern:@"a•h•mm•ss" fullTimePattern:@"a•h•mm•ss" decimalSeparator:@"•" groupingSeparator:@"|" currencyDecimalSeparator:@"•" currencyGroupingSeparator:@"|" plusSign:@"⊕" minusSign:@"⊖" exponentialSymbol:@"↑" percentSymbol:@"％" perMilleSymbol:@"‰" infinitySymbol:@"INFINITY!" nanSymbol:@"😱" decimalPattern:@"# scientificPattern:#0.000" percentPattern:@"# currencyPattern:#0.###E00" currencyCode:@"#0.00%" currencySymbols:@"¤#, #0.00", @"CAD", &unk_28864C738];
  }

  else if (a3)
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

- (TSUFormattingSymbols)initWithVersion:(id)a3 calendar:(id)a4 numberingSystem:(id)a5 months:(id)a6 standaloneMonths:(id)a7 shortMonths:(id)a8 standaloneShortMonths:(id)a9 tinyMonths:(id)a10 standaloneTinyMonths:(id)a11 weekdays:(id)a12 standaloneWeekdays:(id)a13 shortWeekdays:(id)a14 standaloneShortWeekdays:(id)a15 tinyWeekdays:(id)a16 standaloneTinyWeekdays:(id)a17 quarters:(id)a18 standaloneQuarters:(id)a19 shortQuarters:(id)a20 standaloneShortQuarters:(id)a21 eras:(id)a22 longEras:(id)a23 amSymbol:(id)a24 pmSymbol:(id)a25 shortDatePattern:(id)a26 mediumDatePattern:(id)a27 longDatePattern:(id)a28 fullDatePattern:(id)a29 shortTimePattern:(id)a30 mediumTimePattern:(id)a31 longTimePattern:(id)a32 fullTimePattern:(id)a33 decimalSeparator:(id)a34 groupingSeparator:(id)a35 currencyDecimalSeparator:(id)a36 currencyGroupingSeparator:(id)a37 plusSign:(id)a38 minusSign:(id)a39 exponentialSymbol:(id)a40 percentSymbol:(id)a41 perMilleSymbol:(id)a42 infinitySymbol:(id)a43 nanSymbol:(id)a44 decimalPattern:(id)a45 scientificPattern:(id)a46 percentPattern:(id)a47 currencyPattern:(id)a48 currencyCode:(id)a49 currencySymbols:(id)a50
{
  v107 = a3;
  v106 = a4;
  v63 = a5;
  v105 = a5;
  v104 = a6;
  v103 = a7;
  v102 = a8;
  v101 = a9;
  v100 = a10;
  v99 = a11;
  v98 = a12;
  v97 = a13;
  v96 = a14;
  v95 = a15;
  v94 = a16;
  v93 = a17;
  v92 = a18;
  v91 = a19;
  v90 = a20;
  v89 = a21;
  v88 = a22;
  v87 = a23;
  v86 = a24;
  v85 = a25;
  v84 = a26;
  v83 = a27;
  v82 = a28;
  v81 = a29;
  v80 = a30;
  v54 = a31;
  v55 = a32;
  v56 = a33;
  v78 = a34;
  v75 = a35;
  v57 = a36;
  v58 = a37;
  v77 = a38;
  v79 = a39;
  v76 = a40;
  v74 = a41;
  v73 = a42;
  v72 = a43;
  v71 = a44;
  v70 = a45;
  v69 = a46;
  v68 = a47;
  v66 = a48;
  v65 = a49;
  v64 = a50;
  v109.receiver = self;
  v109.super_class = TSUFormattingSymbols;
  v59 = [(TSUFormattingSymbols *)&v109 init];
  v60 = v59;
  if (v59)
  {
    objc_storeStrong(&v59->_version, a3);
    objc_storeStrong(&v60->_calendar, a4);
    objc_storeStrong(&v60->_numberingSystem, v63);
    objc_storeStrong(&v60->_months, a6);
    objc_storeStrong(&v60->_standaloneMonths, a7);
    objc_storeStrong(&v60->_shortMonths, a8);
    objc_storeStrong(&v60->_standaloneShortMonths, a9);
    objc_storeStrong(&v60->_tinyMonths, a10);
    objc_storeStrong(&v60->_standaloneTinyMonths, a11);
    objc_storeStrong(&v60->_weekdays, a12);
    objc_storeStrong(&v60->_standaloneWeekdays, a13);
    objc_storeStrong(&v60->_shortWeekdays, a14);
    objc_storeStrong(&v60->_standaloneShortWeekdays, a15);
    objc_storeStrong(&v60->_tinyWeekdays, a16);
    objc_storeStrong(&v60->_standaloneTinyWeekdays, a17);
    objc_storeStrong(&v60->_quarters, a18);
    objc_storeStrong(&v60->_standaloneQuarters, a19);
    objc_storeStrong(&v60->_shortQuarters, a20);
    objc_storeStrong(&v60->_standaloneShortQuarters, a21);
    objc_storeStrong(&v60->_eras, a22);
    objc_storeStrong(&v60->_longEras, a23);
    objc_storeStrong(&v60->_amSymbol, a24);
    objc_storeStrong(&v60->_pmSymbol, a25);
    objc_storeStrong(&v60->_shortDatePattern, a26);
    objc_storeStrong(&v60->_mediumDatePattern, a27);
    objc_storeStrong(&v60->_longDatePattern, a28);
    objc_storeStrong(&v60->_fullDatePattern, a29);
    objc_storeStrong(&v60->_shortTimePattern, a30);
    objc_storeStrong(&v60->_mediumTimePattern, a31);
    objc_storeStrong(&v60->_longTimePattern, a32);
    objc_storeStrong(&v60->_fullTimePattern, a33);
    objc_storeStrong(&v60->_decimalSeparator, a34);
    objc_storeStrong(&v60->_groupingSeparator, a35);
    objc_storeStrong(&v60->_currencyDecimalSeparator, a36);
    objc_storeStrong(&v60->_currencyGroupingSeparator, a37);
    objc_storeStrong(&v60->_plusSign, a38);
    objc_storeStrong(&v60->_minusSign, a39);
    objc_storeStrong(&v60->_exponentialSymbol, a40);
    objc_storeStrong(&v60->_percentSymbol, a41);
    objc_storeStrong(&v60->_perMilleSymbol, a42);
    objc_storeStrong(&v60->_infinitySymbol, a43);
    objc_storeStrong(&v60->_nanSymbol, a44);
    objc_storeStrong(&v60->_decimalPattern, a45);
    objc_storeStrong(&v60->_scientificPattern, a46);
    objc_storeStrong(&v60->_percentPattern, a47);
    objc_storeStrong(&v60->_currencyPattern, a48);
    objc_storeStrong(&v60->_currencyCode, a49);
    objc_storeStrong(&v60->_currencySymbols, a50);
    [(TSUFormattingSymbols *)v60 p_deriveCalculatedPropertyValues];
  }

  return v60;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v5 = objc_opt_class();
    v6 = TSUDynamicCast(v5, v4);
    if (!v6)
    {
      v57 = 0;
      goto LABEL_56;
    }

    if (!-[TSUFormattingSymbols hasUserCustomizations](self, "hasUserCustomizations") || ![v6 hasUserCustomizations])
    {
      v7 = [(TSUFormattingSymbols *)self version];
      v8 = [v6 version];
      v57 = [v7 isEqualToString:v8];
LABEL_54:

LABEL_56:
      goto LABEL_57;
    }

    v7 = [(TSUFormattingSymbols *)self calendar];
    v8 = [v6 calendar];
    v194 = [v7 isEqualToString:v8];
    if (v194 && (-[TSUFormattingSymbols numberingSystem](self, "numberingSystem"), v10 = objc_claimAutoreleasedReturnValue(), [v6 numberingSystem], v169 = v10, v168 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "isEqualToString:")))
    {
      v11 = [(TSUFormattingSymbols *)self months];
      [v6 months];
      v164 = v165 = v11;
      if ([v11 isEqualToArray:?])
      {
        v12 = [(TSUFormattingSymbols *)self standaloneMonths];
        [v6 standaloneMonths];
        v162 = v163 = v12;
        if ([v12 isEqualToArray:?])
        {
          v13 = [(TSUFormattingSymbols *)self shortMonths];
          [v6 shortMonths];
          v160 = v161 = v13;
          if ([v13 isEqualToArray:?])
          {
            v14 = [(TSUFormattingSymbols *)self standaloneShortMonths];
            [v6 standaloneShortMonths];
            v158 = v159 = v14;
            if ([v14 isEqualToArray:?])
            {
              v15 = [(TSUFormattingSymbols *)self tinyMonths];
              [v6 tinyMonths];
              v156 = v157 = v15;
              if ([v15 isEqualToArray:?])
              {
                v16 = [(TSUFormattingSymbols *)self standaloneTinyMonths];
                [v6 standaloneTinyMonths];
                v154 = v155 = v16;
                if ([v16 isEqualToArray:?])
                {
                  v17 = [(TSUFormattingSymbols *)self weekdays];
                  [v6 weekdays];
                  v152 = v153 = v17;
                  if ([v17 isEqualToArray:?])
                  {
                    v18 = [(TSUFormattingSymbols *)self standaloneWeekdays];
                    [v6 standaloneWeekdays];
                    v150 = v151 = v18;
                    if ([v18 isEqualToArray:?])
                    {
                      v19 = [(TSUFormattingSymbols *)self shortWeekdays];
                      [v6 shortWeekdays];
                      v148 = v149 = v19;
                      if ([v19 isEqualToArray:?])
                      {
                        v20 = [(TSUFormattingSymbols *)self standaloneShortWeekdays];
                        v166 = v6;
                        [v6 standaloneShortWeekdays];
                        v146 = v147 = v20;
                        if ([v20 isEqualToArray:?])
                        {
                          v21 = [(TSUFormattingSymbols *)self tinyWeekdays];
                          [v6 tinyWeekdays];
                          v144 = v145 = v21;
                          if ([v21 isEqualToArray:?])
                          {
                            v22 = [(TSUFormattingSymbols *)self standaloneTinyWeekdays];
                            [v6 standaloneTinyWeekdays];
                            v142 = v143 = v22;
                            if ([v22 isEqualToArray:?])
                            {
                              v23 = [(TSUFormattingSymbols *)self quarters];
                              [v6 quarters];
                              v140 = v141 = v23;
                              if ([v23 isEqualToArray:?])
                              {
                                v24 = [(TSUFormattingSymbols *)self standaloneQuarters];
                                v138 = [v6 standaloneQuarters];
                                v139 = v24;
                                if ([v24 isEqualToArray:?])
                                {
                                  v25 = [(TSUFormattingSymbols *)self shortQuarters];
                                  v136 = [v6 shortQuarters];
                                  v137 = v25;
                                  if ([v25 isEqualToArray:?])
                                  {
                                    v26 = [(TSUFormattingSymbols *)self standaloneShortQuarters];
                                    v134 = [v6 standaloneShortQuarters];
                                    v135 = v26;
                                    if ([v26 isEqualToArray:?])
                                    {
                                      v27 = [(TSUFormattingSymbols *)self eras];
                                      v132 = [v6 eras];
                                      v133 = v27;
                                      if ([v27 isEqualToArray:?])
                                      {
                                        v28 = [(TSUFormattingSymbols *)self longEras];
                                        v130 = [v6 longEras];
                                        v131 = v28;
                                        if ([v28 isEqualToArray:?])
                                        {
                                          v29 = [(TSUFormattingSymbols *)self amSymbol];
                                          v128 = [v6 amSymbol];
                                          v129 = v29;
                                          if ([v29 isEqualToString:?])
                                          {
                                            v30 = [(TSUFormattingSymbols *)self pmSymbol];
                                            v126 = [v6 pmSymbol];
                                            v127 = v30;
                                            if ([v30 isEqualToString:?])
                                            {
                                              v31 = [(TSUFormattingSymbols *)self shortDatePattern];
                                              v124 = [v6 shortDatePattern];
                                              v125 = v31;
                                              if ([v31 isEqualToString:?])
                                              {
                                                v32 = [(TSUFormattingSymbols *)self mediumDatePattern];
                                                v122 = [v166 mediumDatePattern];
                                                v123 = v32;
                                                if ([v32 isEqualToString:?])
                                                {
                                                  v33 = [(TSUFormattingSymbols *)self longDatePattern];
                                                  v120 = [v166 longDatePattern];
                                                  v121 = v33;
                                                  if ([v33 isEqualToString:?])
                                                  {
                                                    v34 = [(TSUFormattingSymbols *)self fullDatePattern];
                                                    v118 = [v166 fullDatePattern];
                                                    v119 = v34;
                                                    if ([v34 isEqualToString:?])
                                                    {
                                                      v35 = [(TSUFormattingSymbols *)self shortTimePattern];
                                                      v116 = [v166 shortTimePattern];
                                                      v117 = v35;
                                                      if ([v35 isEqualToString:?])
                                                      {
                                                        v36 = [(TSUFormattingSymbols *)self mediumTimePattern];
                                                        v114 = [v166 mediumTimePattern];
                                                        v115 = v36;
                                                        if ([v36 isEqualToString:?])
                                                        {
                                                          v37 = [(TSUFormattingSymbols *)self longTimePattern];
                                                          v112 = [v166 longTimePattern];
                                                          v113 = v37;
                                                          if ([v37 isEqualToString:?])
                                                          {
                                                            v38 = [(TSUFormattingSymbols *)self fullTimePattern];
                                                            v110 = [v166 fullTimePattern];
                                                            v111 = v38;
                                                            if ([v38 isEqualToString:?])
                                                            {
                                                              v39 = [(TSUFormattingSymbols *)self decimalSeparator];
                                                              v108 = [v166 decimalSeparator];
                                                              v109 = v39;
                                                              if ([v39 isEqualToString:?])
                                                              {
                                                                v40 = [(TSUFormattingSymbols *)self groupingSeparator];
                                                                v106 = [v166 groupingSeparator];
                                                                v107 = v40;
                                                                if ([v40 isEqualToString:?])
                                                                {
                                                                  v41 = [(TSUFormattingSymbols *)self currencyDecimalSeparator];
                                                                  v104 = [v166 currencyDecimalSeparator];
                                                                  v105 = v41;
                                                                  if ([v41 isEqualToString:?])
                                                                  {
                                                                    v42 = [(TSUFormattingSymbols *)self currencyGroupingSeparator];
                                                                    v102 = [v166 currencyGroupingSeparator];
                                                                    v103 = v42;
                                                                    if ([v42 isEqualToString:?])
                                                                    {
                                                                      v43 = [(TSUFormattingSymbols *)self plusSign];
                                                                      v100 = [v166 plusSign];
                                                                      v101 = v43;
                                                                      if ([v43 isEqualToString:?])
                                                                      {
                                                                        v44 = [(TSUFormattingSymbols *)self minusSign];
                                                                        v98 = [v166 minusSign];
                                                                        v99 = v44;
                                                                        if ([v44 isEqualToString:?])
                                                                        {
                                                                          v45 = [(TSUFormattingSymbols *)self exponentialSymbol];
                                                                          v96 = [v166 exponentialSymbol];
                                                                          v97 = v45;
                                                                          if ([v45 isEqualToString:?])
                                                                          {
                                                                            v46 = [(TSUFormattingSymbols *)self percentSymbol];
                                                                            v94 = [v166 percentSymbol];
                                                                            v95 = v46;
                                                                            if ([v46 isEqualToString:?])
                                                                            {
                                                                              v47 = [(TSUFormattingSymbols *)self perMilleSymbol];
                                                                              v92 = [v166 perMilleSymbol];
                                                                              v93 = v47;
                                                                              if ([v47 isEqualToString:?])
                                                                              {
                                                                                v48 = [(TSUFormattingSymbols *)self infinitySymbol];
                                                                                v90 = [v166 infinitySymbol];
                                                                                v91 = v48;
                                                                                if ([v48 isEqualToString:?])
                                                                                {
                                                                                  v49 = [(TSUFormattingSymbols *)self nanSymbol];
                                                                                  v88 = [v166 nanSymbol];
                                                                                  v89 = v49;
                                                                                  if ([v49 isEqualToString:?])
                                                                                  {
                                                                                    v50 = [(TSUFormattingSymbols *)self decimalPattern];
                                                                                    v86 = [v166 decimalPattern];
                                                                                    v87 = v50;
                                                                                    if ([v50 isEqualToString:?])
                                                                                    {
                                                                                      v51 = [(TSUFormattingSymbols *)self scientificPattern];
                                                                                      v84 = [v166 scientificPattern];
                                                                                      v85 = v51;
                                                                                      if ([v51 isEqualToString:?])
                                                                                      {
                                                                                        v52 = [(TSUFormattingSymbols *)self percentPattern];
                                                                                        v82 = [v166 percentPattern];
                                                                                        v83 = v52;
                                                                                        if ([v52 isEqualToString:?])
                                                                                        {
                                                                                          v53 = [(TSUFormattingSymbols *)self currencyPattern];
                                                                                          v80 = [v166 currencyPattern];
                                                                                          v81 = v53;
                                                                                          if ([v53 isEqualToString:?])
                                                                                          {
                                                                                            v54 = [(TSUFormattingSymbols *)self currencyCode];
                                                                                            v78 = [v166 currencyCode];
                                                                                            v79 = v54;
                                                                                            if ([v54 isEqualToString:?])
                                                                                            {
                                                                                              v55 = [(TSUFormattingSymbols *)self currencySymbols];
                                                                                              v6 = v166;
                                                                                              v56 = [v166 currencySymbols];
                                                                                              v77 = v55;
                                                                                              v57 = [v55 isEqualToDictionary:v56];
                                                                                              v9 = v56;
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
      v167 = v4;
      v66 = v6;
      v67 = v57;
      v68 = v8;
      v69 = v7;
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
      v7 = v69;
      v8 = v68;
      v57 = v67;
      v6 = v66;
      v4 = v167;
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
  v4 = [(TSUFormattingSymbols *)self calendar];
  [(TSUHasher *)v3 addObject:v4];

  v5 = [(TSUFormattingSymbols *)self numberingSystem];
  [(TSUHasher *)v3 addObject:v5];

  v6 = [(TSUFormattingSymbols *)self months];
  [(TSUHasher *)v3 addObject:v6];

  v7 = [(TSUFormattingSymbols *)self standaloneMonths];
  [(TSUHasher *)v3 addObject:v7];

  v8 = [(TSUFormattingSymbols *)self shortMonths];
  [(TSUHasher *)v3 addObject:v8];

  v9 = [(TSUFormattingSymbols *)self standaloneShortMonths];
  [(TSUHasher *)v3 addObject:v9];

  v10 = [(TSUFormattingSymbols *)self tinyMonths];
  [(TSUHasher *)v3 addObject:v10];

  v11 = [(TSUFormattingSymbols *)self standaloneTinyMonths];
  [(TSUHasher *)v3 addObject:v11];

  v12 = [(TSUFormattingSymbols *)self weekdays];
  [(TSUHasher *)v3 addObject:v12];

  v13 = [(TSUFormattingSymbols *)self standaloneWeekdays];
  [(TSUHasher *)v3 addObject:v13];

  v14 = [(TSUFormattingSymbols *)self shortWeekdays];
  [(TSUHasher *)v3 addObject:v14];

  v15 = [(TSUFormattingSymbols *)self standaloneShortWeekdays];
  [(TSUHasher *)v3 addObject:v15];

  v16 = [(TSUFormattingSymbols *)self tinyWeekdays];
  [(TSUHasher *)v3 addObject:v16];

  v17 = [(TSUFormattingSymbols *)self standaloneTinyWeekdays];
  [(TSUHasher *)v3 addObject:v17];

  v18 = [(TSUFormattingSymbols *)self quarters];
  [(TSUHasher *)v3 addObject:v18];

  v19 = [(TSUFormattingSymbols *)self standaloneQuarters];
  [(TSUHasher *)v3 addObject:v19];

  v20 = [(TSUFormattingSymbols *)self shortQuarters];
  [(TSUHasher *)v3 addObject:v20];

  v21 = [(TSUFormattingSymbols *)self standaloneShortQuarters];
  [(TSUHasher *)v3 addObject:v21];

  v22 = [(TSUFormattingSymbols *)self eras];
  [(TSUHasher *)v3 addObject:v22];

  v23 = [(TSUFormattingSymbols *)self longEras];
  [(TSUHasher *)v3 addObject:v23];

  v24 = [(TSUFormattingSymbols *)self amSymbol];
  [(TSUHasher *)v3 addObject:v24];

  v25 = [(TSUFormattingSymbols *)self pmSymbol];
  [(TSUHasher *)v3 addObject:v25];

  v26 = [(TSUFormattingSymbols *)self shortDatePattern];
  [(TSUHasher *)v3 addObject:v26];

  v27 = [(TSUFormattingSymbols *)self mediumDatePattern];
  [(TSUHasher *)v3 addObject:v27];

  v28 = [(TSUFormattingSymbols *)self longDatePattern];
  [(TSUHasher *)v3 addObject:v28];

  v29 = [(TSUFormattingSymbols *)self fullDatePattern];
  [(TSUHasher *)v3 addObject:v29];

  v30 = [(TSUFormattingSymbols *)self shortTimePattern];
  [(TSUHasher *)v3 addObject:v30];

  v31 = [(TSUFormattingSymbols *)self mediumTimePattern];
  [(TSUHasher *)v3 addObject:v31];

  v32 = [(TSUFormattingSymbols *)self longTimePattern];
  [(TSUHasher *)v3 addObject:v32];

  v33 = [(TSUFormattingSymbols *)self fullTimePattern];
  [(TSUHasher *)v3 addObject:v33];

  v34 = [(TSUFormattingSymbols *)self decimalSeparator];
  [(TSUHasher *)v3 addObject:v34];

  v35 = [(TSUFormattingSymbols *)self groupingSeparator];
  [(TSUHasher *)v3 addObject:v35];

  v36 = [(TSUFormattingSymbols *)self currencyDecimalSeparator];
  [(TSUHasher *)v3 addObject:v36];

  v37 = [(TSUFormattingSymbols *)self currencyGroupingSeparator];
  [(TSUHasher *)v3 addObject:v37];

  v38 = [(TSUFormattingSymbols *)self plusSign];
  [(TSUHasher *)v3 addObject:v38];

  v39 = [(TSUFormattingSymbols *)self minusSign];
  [(TSUHasher *)v3 addObject:v39];

  v40 = [(TSUFormattingSymbols *)self exponentialSymbol];
  [(TSUHasher *)v3 addObject:v40];

  v41 = [(TSUFormattingSymbols *)self percentSymbol];
  [(TSUHasher *)v3 addObject:v41];

  v42 = [(TSUFormattingSymbols *)self perMilleSymbol];
  [(TSUHasher *)v3 addObject:v42];

  v43 = [(TSUFormattingSymbols *)self infinitySymbol];
  [(TSUHasher *)v3 addObject:v43];

  v44 = [(TSUFormattingSymbols *)self nanSymbol];
  [(TSUHasher *)v3 addObject:v44];

  v45 = [(TSUFormattingSymbols *)self decimalPattern];
  [(TSUHasher *)v3 addObject:v45];

  v46 = [(TSUFormattingSymbols *)self scientificPattern];
  [(TSUHasher *)v3 addObject:v46];

  v47 = [(TSUFormattingSymbols *)self percentPattern];
  [(TSUHasher *)v3 addObject:v47];

  v48 = [(TSUFormattingSymbols *)self currencyPattern];
  [(TSUHasher *)v3 addObject:v48];

  v49 = [(TSUFormattingSymbols *)self currencyCode];
  [(TSUHasher *)v3 addObject:v49];

  v50 = [(TSUFormattingSymbols *)self currencySymbols];
  [(TSUHasher *)v3 addObject:v50];

  v51 = [(TSUHasher *)v3 hashValue];
  return v51;
}

- (void)upgradeIfNecessary:(id)a3
{
  v194 = a3;
  v4 = [v194 locale];
  v5 = [TSUFormattingSymbols defaultFormattingSymbolsForLocale:v4];

  v6 = MEMORY[0x277CBEAF8];
  v7 = [v194 localeIdentifier];
  v8 = [v6 localeWithLocaleIdentifier:v7];
  v9 = [TSUFormattingSymbols defaultFormattingSymbolsForLocale:v8];

  v10 = [(TSUFormattingSymbols *)self version];
  if ([TSUFormattingSymbols isADummyDataSetVersion:v10])
  {
    v11 = 0;
  }

  else
  {
    v12 = [v5 standaloneMonths];
    v13 = [(TSUFormattingSymbols *)self standaloneMonths];
    v11 = [v12 isEqualToArray:v13] ^ 1;
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
    v15 = [v5 version];
    v16 = self->_version;
    self->_version = v15;

    if (v11)
    {
LABEL_11:
      v18 = [v5 calendar];
      calendar = self->_calendar;
      self->_calendar = v18;

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
      v21 = [v5 months];
      months = self->_months;
      self->_months = v21;

      goto LABEL_22;
    }
  }

  else
  {
    v23 = [v5 numberingSystem];
    v24 = self->_numberingSystem;
    self->_numberingSystem = v23;

    if (v11)
    {
      goto LABEL_15;
    }
  }

  v25 = self->_months;
  if (!v25 || ![(NSArray *)v25 count])
  {
    v26 = [v5 months];
    v27 = self->_months;
    self->_months = v26;
  }

  standaloneMonths = self->_standaloneMonths;
  if (standaloneMonths && [(NSArray *)standaloneMonths count])
  {
LABEL_24:
    shortMonths = self->_shortMonths;
    if (!shortMonths || ![(NSArray *)shortMonths count])
    {
      v34 = [v5 shortMonths];
      v35 = self->_shortMonths;
      self->_shortMonths = v34;
    }

    standaloneShortMonths = self->_standaloneShortMonths;
    if (standaloneShortMonths && [(NSArray *)standaloneShortMonths count])
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_22:
  v29 = [v5 standaloneMonths];
  v30 = self->_standaloneMonths;
  self->_standaloneMonths = v29;

  if ((v11 & 1) == 0)
  {
    goto LABEL_24;
  }

  v31 = [v5 shortMonths];
  v32 = self->_shortMonths;
  self->_shortMonths = v31;

LABEL_29:
  v37 = [v5 standaloneShortMonths];
  v38 = self->_standaloneShortMonths;
  self->_standaloneShortMonths = v37;

  if (v11)
  {
    v39 = [v5 tinyMonths];
    tinyMonths = self->_tinyMonths;
    self->_tinyMonths = v39;

    goto LABEL_36;
  }

LABEL_31:
  v41 = self->_tinyMonths;
  if (!v41 || ![(NSArray *)v41 count])
  {
    v42 = [v5 tinyMonths];
    v43 = self->_tinyMonths;
    self->_tinyMonths = v42;
  }

  standaloneTinyMonths = self->_standaloneTinyMonths;
  if (standaloneTinyMonths && [(NSArray *)standaloneTinyMonths count])
  {
LABEL_38:
    weekdays = self->_weekdays;
    if (!weekdays || ![(NSArray *)weekdays count])
    {
      v50 = [v5 weekdays];
      v51 = self->_weekdays;
      self->_weekdays = v50;
    }

    standaloneWeekdays = self->_standaloneWeekdays;
    if (standaloneWeekdays && [(NSArray *)standaloneWeekdays count])
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

LABEL_36:
  v45 = [v5 standaloneTinyMonths];
  v46 = self->_standaloneTinyMonths;
  self->_standaloneTinyMonths = v45;

  if ((v11 & 1) == 0)
  {
    goto LABEL_38;
  }

  v47 = [v5 weekdays];
  v48 = self->_weekdays;
  self->_weekdays = v47;

LABEL_43:
  v53 = [v5 standaloneWeekdays];
  v54 = self->_standaloneWeekdays;
  self->_standaloneWeekdays = v53;

  if (v11)
  {
    v55 = [v5 shortWeekdays];
    shortWeekdays = self->_shortWeekdays;
    self->_shortWeekdays = v55;

    goto LABEL_50;
  }

LABEL_45:
  v57 = self->_shortWeekdays;
  if (!v57 || ![(NSArray *)v57 count])
  {
    v58 = [v5 shortWeekdays];
    v59 = self->_shortWeekdays;
    self->_shortWeekdays = v58;
  }

  standaloneShortWeekdays = self->_standaloneShortWeekdays;
  if (standaloneShortWeekdays && [(NSArray *)standaloneShortWeekdays count])
  {
LABEL_52:
    tinyWeekdays = self->_tinyWeekdays;
    if (!tinyWeekdays || ![(NSArray *)tinyWeekdays count])
    {
      v66 = [v5 tinyWeekdays];
      v67 = self->_tinyWeekdays;
      self->_tinyWeekdays = v66;
    }

    standaloneTinyWeekdays = self->_standaloneTinyWeekdays;
    if (standaloneTinyWeekdays && [(NSArray *)standaloneTinyWeekdays count])
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

LABEL_50:
  v61 = [v5 standaloneShortWeekdays];
  v62 = self->_standaloneShortWeekdays;
  self->_standaloneShortWeekdays = v61;

  if ((v11 & 1) == 0)
  {
    goto LABEL_52;
  }

  v63 = [v5 tinyWeekdays];
  v64 = self->_tinyWeekdays;
  self->_tinyWeekdays = v63;

LABEL_57:
  v69 = [v5 standaloneTinyWeekdays];
  v70 = self->_standaloneTinyWeekdays;
  self->_standaloneTinyWeekdays = v69;

  if (v11)
  {
    v71 = [v5 quarters];
    quarters = self->_quarters;
    self->_quarters = v71;

    goto LABEL_64;
  }

LABEL_59:
  v73 = self->_quarters;
  if (!v73 || ![(NSArray *)v73 count])
  {
    v74 = [v5 quarters];
    v75 = self->_quarters;
    self->_quarters = v74;
  }

  standaloneQuarters = self->_standaloneQuarters;
  if (standaloneQuarters && [(NSArray *)standaloneQuarters count])
  {
LABEL_66:
    shortQuarters = self->_shortQuarters;
    if (!shortQuarters || ![(NSArray *)shortQuarters count])
    {
      v82 = [v5 shortQuarters];
      v83 = self->_shortQuarters;
      self->_shortQuarters = v82;
    }

    standaloneShortQuarters = self->_standaloneShortQuarters;
    if (standaloneShortQuarters && [(NSArray *)standaloneShortQuarters count])
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

LABEL_64:
  v77 = [v5 standaloneQuarters];
  v78 = self->_standaloneQuarters;
  self->_standaloneQuarters = v77;

  if ((v11 & 1) == 0)
  {
    goto LABEL_66;
  }

  v79 = [v5 shortQuarters];
  v80 = self->_shortQuarters;
  self->_shortQuarters = v79;

LABEL_71:
  v85 = [v5 standaloneShortQuarters];
  v86 = self->_standaloneShortQuarters;
  self->_standaloneShortQuarters = v85;

  if (v11)
  {
    v87 = [v5 eras];
    eras = self->_eras;
    self->_eras = v87;

    goto LABEL_78;
  }

LABEL_73:
  v89 = self->_eras;
  if (!v89 || ![(NSArray *)v89 count])
  {
    v90 = [v5 eras];
    v91 = self->_eras;
    self->_eras = v90;
  }

  longEras = self->_longEras;
  if (longEras && [(NSArray *)longEras count])
  {
LABEL_80:
    amSymbol = self->_amSymbol;
    if (!amSymbol || ![(NSString *)amSymbol length])
    {
      v98 = [v5 amSymbol];
      v99 = self->_amSymbol;
      self->_amSymbol = v98;
    }

    pmSymbol = self->_pmSymbol;
    if (pmSymbol && [(NSString *)pmSymbol length])
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_78:
  v93 = [v5 longEras];
  v94 = self->_longEras;
  self->_longEras = v93;

  if ((v11 & 1) == 0)
  {
    goto LABEL_80;
  }

  v95 = [v5 amSymbol];
  v96 = self->_amSymbol;
  self->_amSymbol = v95;

LABEL_85:
  v101 = [v5 pmSymbol];
  v102 = self->_pmSymbol;
  self->_pmSymbol = v101;

  if (v11)
  {
LABEL_88:
    v104 = [v5 shortDatePattern];
    shortDatePattern = self->_shortDatePattern;
    self->_shortDatePattern = v104;

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
    v106 = [v9 shortDatePattern];
    v107 = self->_shortDatePattern;
    self->_shortDatePattern = v106;
  }

  if ((v11 & 1) != 0 || (v108 = self->_mediumDatePattern) == 0 || ![(NSString *)v108 length])
  {
    v109 = [v5 mediumDatePattern];
    mediumDatePattern = self->_mediumDatePattern;
    self->_mediumDatePattern = v109;
  }

  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_mediumDatePattern])
  {
    v111 = [v9 mediumDatePattern];
    v112 = self->_mediumDatePattern;
    self->_mediumDatePattern = v111;
  }

  if ((v11 & 1) != 0 || (v113 = self->_longDatePattern) == 0 || ![(NSString *)v113 length])
  {
    v114 = [v5 longDatePattern];
    longDatePattern = self->_longDatePattern;
    self->_longDatePattern = v114;
  }

  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_longDatePattern])
  {
    v116 = [v9 longDatePattern];
    v117 = self->_longDatePattern;
    self->_longDatePattern = v116;
  }

  if ((v11 & 1) != 0 || (v118 = self->_fullDatePattern) == 0 || ![(NSString *)v118 length])
  {
    v119 = [v5 fullDatePattern];
    fullDatePattern = self->_fullDatePattern;
    self->_fullDatePattern = v119;
  }

  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_fullDatePattern])
  {
    v121 = [v9 fullDatePattern];
    v122 = self->_fullDatePattern;
    self->_fullDatePattern = v121;
  }

  if ((v11 & 1) != 0 || (v123 = self->_shortTimePattern) == 0 || ![(NSString *)v123 length])
  {
    v124 = [v5 shortTimePattern];
    shortTimePattern = self->_shortTimePattern;
    self->_shortTimePattern = v124;
  }

  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_shortTimePattern])
  {
    v126 = [v9 shortTimePattern];
    v127 = self->_shortTimePattern;
    self->_shortTimePattern = v126;
  }

  if ((v11 & 1) != 0 || (v128 = self->_mediumTimePattern) == 0 || ![(NSString *)v128 length])
  {
    v129 = [v5 mediumTimePattern];
    mediumTimePattern = self->_mediumTimePattern;
    self->_mediumTimePattern = v129;
  }

  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_mediumTimePattern])
  {
    v131 = [v9 mediumTimePattern];
    v132 = self->_mediumTimePattern;
    self->_mediumTimePattern = v131;
  }

  if ((v11 & 1) != 0 || (v133 = self->_longTimePattern) == 0 || ![(NSString *)v133 length])
  {
    v134 = [v5 longTimePattern];
    longTimePattern = self->_longTimePattern;
    self->_longTimePattern = v134;
  }

  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_longTimePattern])
  {
    v136 = [v9 longTimePattern];
    v137 = self->_longTimePattern;
    self->_longTimePattern = v136;
  }

  if ((v11 & 1) != 0 || (v138 = self->_fullTimePattern) == 0 || ![(NSString *)v138 length])
  {
    v139 = [v5 fullTimePattern];
    fullTimePattern = self->_fullTimePattern;
    self->_fullTimePattern = v139;
  }

  if ([TSUFormattingSymbols dateFormatIsPureLiteral:self->_fullTimePattern])
  {
    v141 = [v9 fullTimePattern];
    v142 = self->_fullTimePattern;
    self->_fullTimePattern = v141;
  }

  decimalSeparator = self->_decimalSeparator;
  if (!decimalSeparator || ![(NSString *)decimalSeparator length])
  {
    v144 = [v5 decimalSeparator];
    v145 = self->_decimalSeparator;
    self->_decimalSeparator = v144;
  }

  groupingSeparator = self->_groupingSeparator;
  if (!groupingSeparator || ![(NSString *)groupingSeparator length])
  {
    v147 = [v5 groupingSeparator];
    v148 = self->_groupingSeparator;
    self->_groupingSeparator = v147;
  }

  currencyDecimalSeparator = self->_currencyDecimalSeparator;
  if (!currencyDecimalSeparator || ![(NSString *)currencyDecimalSeparator length])
  {
    v150 = [v5 currencyDecimalSeparator];
    v151 = self->_currencyDecimalSeparator;
    self->_currencyDecimalSeparator = v150;
  }

  currencyGroupingSeparator = self->_currencyGroupingSeparator;
  if (!currencyGroupingSeparator || ![(NSString *)currencyGroupingSeparator length])
  {
    v153 = [v5 currencyGroupingSeparator];
    v154 = self->_currencyGroupingSeparator;
    self->_currencyGroupingSeparator = v153;
  }

  plusSign = self->_plusSign;
  if (!plusSign || ![(NSString *)plusSign length])
  {
    v156 = [v5 plusSign];
    v157 = self->_plusSign;
    self->_plusSign = v156;
  }

  minusSign = self->_minusSign;
  if (!minusSign || ![(NSString *)minusSign length])
  {
    v159 = [v5 minusSign];
    v160 = self->_minusSign;
    self->_minusSign = v159;
  }

  exponentialSymbol = self->_exponentialSymbol;
  if (!exponentialSymbol || ![(NSString *)exponentialSymbol length])
  {
    v162 = [v5 exponentialSymbol];
    v163 = self->_exponentialSymbol;
    self->_exponentialSymbol = v162;
  }

  percentSymbol = self->_percentSymbol;
  if (!percentSymbol || ![(NSString *)percentSymbol length])
  {
    v165 = [v5 percentSymbol];
    v166 = self->_percentSymbol;
    self->_percentSymbol = v165;
  }

  perMilleSymbol = self->_perMilleSymbol;
  if (!perMilleSymbol || ![(NSString *)perMilleSymbol length])
  {
    v168 = [v5 perMilleSymbol];
    v169 = self->_perMilleSymbol;
    self->_perMilleSymbol = v168;
  }

  infinitySymbol = self->_infinitySymbol;
  if (!infinitySymbol || ![(NSString *)infinitySymbol length])
  {
    v171 = [v5 infinitySymbol];
    v172 = self->_infinitySymbol;
    self->_infinitySymbol = v171;
  }

  nanSymbol = self->_nanSymbol;
  if (!nanSymbol || ![(NSString *)nanSymbol length])
  {
    v174 = [v5 nanSymbol];
    v175 = self->_nanSymbol;
    self->_nanSymbol = v174;
  }

  decimalPattern = self->_decimalPattern;
  if (!decimalPattern || ![(NSString *)decimalPattern length])
  {
    v177 = [v5 decimalPattern];
    v178 = self->_decimalPattern;
    self->_decimalPattern = v177;
  }

  scientificPattern = self->_scientificPattern;
  if (!scientificPattern || ![(NSString *)scientificPattern length])
  {
    v180 = [v5 scientificPattern];
    v181 = self->_scientificPattern;
    self->_scientificPattern = v180;
  }

  percentPattern = self->_percentPattern;
  if (!percentPattern || ![(NSString *)percentPattern length])
  {
    v183 = [v5 percentPattern];
    v184 = self->_percentPattern;
    self->_percentPattern = v183;
  }

  currencyPattern = self->_currencyPattern;
  if (!currencyPattern || ![(NSString *)currencyPattern length])
  {
    v186 = [v5 currencyPattern];
    v187 = self->_currencyPattern;
    self->_currencyPattern = v186;
  }

  currencyCode = self->_currencyCode;
  if (!currencyCode || ![(NSString *)currencyCode length])
  {
    v189 = [v5 currencyCode];
    v190 = self->_currencyCode;
    self->_currencyCode = v189;
  }

  currencySymbols = self->_currencySymbols;
  if (!currencySymbols || ![(NSDictionary *)currencySymbols count])
  {
    v192 = [v5 currencySymbols];
    v193 = self->_currencySymbols;
    self->_currencySymbols = v192;
  }

  [(TSUFormattingSymbols *)self p_deriveCalculatedPropertyValues];
}

- (BOOL)hasUserCustomizations
{
  v2 = [(TSUFormattingSymbols *)self version];
  v3 = [TSUFormattingSymbols versionIsForACustomizedLocale:v2];

  return v3;
}

- (id)patternStringForDateStyle:(unint64_t)a3 timeStyle:(unint64_t)a4
{
  if (!(a4 | a3))
  {
    v9 = &stru_28862C2A0;
    goto LABEL_30;
  }

  if (a4)
  {
    if (a3)
    {
      v6 = [(TSUFormattingSymbols *)self patternStringForDateStyle:a3 timeStyle:0];
      v7 = [(TSUFormattingSymbols *)self patternStringForDateStyle:0 timeStyle:a4];
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
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        v10 = [(TSUFormattingSymbols *)self longTimePattern];
      }

      else
      {
        if (a4 != 4)
        {
          goto LABEL_30;
        }

        v10 = [(TSUFormattingSymbols *)self fullTimePattern];
      }
    }

    else if (a4 == 1)
    {
      v10 = [(TSUFormattingSymbols *)self shortTimePattern];
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_30;
      }

      v10 = [(TSUFormattingSymbols *)self mediumTimePattern];
    }
  }

  else
  {
    v9 = &stru_28862C2A0;
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v10 = [(TSUFormattingSymbols *)self longDatePattern];
      }

      else
      {
        if (a3 != 4)
        {
          goto LABEL_30;
        }

        v10 = [(TSUFormattingSymbols *)self fullDatePattern];
      }
    }

    else if (a3 == 1)
    {
      v10 = [(TSUFormattingSymbols *)self shortDatePattern];
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_30;
      }

      v10 = [(TSUFormattingSymbols *)self mediumDatePattern];
    }
  }

  v9 = v10;
LABEL_30:

  return v9;
}

- (id)patternStringForNumberStyle:(unsigned int)a3 negativeStyle:(unsigned __int8)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = [(TSUFormattingSymbols *)self negativeNumberPatterns];
  v8 = [(TSUFormattingSymbols *)self p_negativeNumberKeyForNumberStyle:v5 negativeStyle:v4];
  v9 = [v7 objectForKey:v8];

  return v9;
}

- (id)currencySymbolForCurrencyCode:(id)a3
{
  v4 = a3;
  v5 = [(TSUFormattingSymbols *)self currencySymbols];
  v6 = [v5 objectForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v8;
}

- (id)halfwidthCurrencySymbolForCurrencyCode:(id)a3
{
  v4 = a3;
  v5 = [(TSUFormattingSymbols *)self currencyCodesToHalfwidthSymbols];
  v6 = [v5 objectForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v8;
}

- (id)currencyCodeForCurrencySymbol:(id)a3
{
  v4 = a3;
  v5 = [(TSUFormattingSymbols *)self currencySymbolsToCodes];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    if ([v6 length])
    {
      goto LABEL_7;
    }
  }

  else if ([TSULocale isValidCurrencyCode:v4])
  {
    v6 = v4;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (void)p_setAllSpaceVariantsOfString:(id)a3 toCode:(id)a4 inSymbolToCodeDictionary:(id)a5
{
  v21 = a3;
  v7 = a4;
  v8 = a5;
  [v8 setObject:v7 forKey:v21];
  v9 = [v21 stringByReplacingOccurrencesOfString:@" " withString:&stru_28862C2A0];
  if (([v9 isEqualToString:v21] & 1) == 0)
  {
    v10 = [v8 objectForKey:v9];

    if (!v10)
    {
      [v8 setObject:v7 forKey:v9];
    }

    v11 = [v21 stringByReplacingOccurrencesOfString:@" " withString:@" "];
    [v8 setObject:v7 forKey:v11];
    v12 = [v21 stringByReplacingOccurrencesOfString:@" " withString:@" "];
    [v8 setObject:v7 forKey:v12];
  }

  v13 = [v21 stringByReplacingOccurrencesOfString:@" " withString:&stru_28862C2A0];
  if (([v13 isEqualToString:v21] & 1) == 0)
  {
    v14 = [v8 objectForKey:v13];

    if (!v14)
    {
      [v8 setObject:v7 forKey:v13];
    }

    v15 = [v21 stringByReplacingOccurrencesOfString:@" " withString:@" "];
    [v8 setObject:v7 forKey:v15];
    v16 = [v21 stringByReplacingOccurrencesOfString:@" " withString:@" "];
    [v8 setObject:v7 forKey:v16];
  }

  v17 = [v21 stringByReplacingOccurrencesOfString:@" " withString:&stru_28862C2A0];

  if (([v17 isEqualToString:v21] & 1) == 0)
  {
    v18 = [v8 objectForKey:v17];

    if (!v18)
    {
      [v8 setObject:v7 forKey:v17];
    }

    v19 = [v21 stringByReplacingOccurrencesOfString:@" " withString:@" "];
    [v8 setObject:v7 forKey:v19];
    v20 = [v21 stringByReplacingOccurrencesOfString:@" " withString:@" "];
    [v8 setObject:v7 forKey:v20];
  }
}

+ (unint64_t)locationOfFirstDateFormatCharacter:(id)a3
{
  v3 = a3;
  if (qword_280A63D00 != -1)
  {
    sub_2771140C0();
  }

  v4 = [v3 length];
  v5 = [v3 rangeOfCharacterFromSet:qword_280A63D08];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    v8 = [v3 rangeOfCharacterFromSet:qword_280A63CF8];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v7;
    }

    else
    {
      v9 = v8;
      v10 = [v3 rangeOfCharacterFromSet:qword_280A63D08 options:0 range:{0, v8}];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v4 - 1;
        while (1)
        {
          v12 = v9 + 1;
          v13 = [v3 length] - (v9 + 1);
          v14 = [v3 rangeOfCharacterFromSet:qword_280A63CF8 options:0 range:{v9 + 1, v13}];
          v15 = [v3 rangeOfCharacterFromSet:qword_280A63D08 options:0 range:{v12, v13}];
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

          v18 = [v3 length];
          v19 = [v3 rangeOfCharacterFromSet:qword_280A63CF8 options:0 range:{v14 + 1, v18 - (v14 + 1)}];
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
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v88 = self;
  v9 = [(NSDictionary *)self->_currencySymbols allKeys];
  v10 = [v9 countByEnumeratingWithState:&v93 objects:v100 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v93 + 1) + 8 * i);
        v15 = [(NSDictionary *)v88->_currencySymbols objectForKey:v14];
        if ([v15 rangeOfCharacterFromSet:v8] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v7 insertObject:v14 atIndex:0];
        }

        else
        {
          [v7 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v93 objects:v100 count:16];
    }

    while (v11);
  }

  v82 = v8;

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v7;
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
        v21 = [(NSDictionary *)v88->_currencySymbols objectForKey:v20];
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
  [(TSUFormattingSymbols *)v88 setCurrencySymbolsToCodes:v25];

  v26 = [v87 copy];
  [(TSUFormattingSymbols *)v88 setCurrencyCodesToHalfwidthSymbols:v26];

  v27 = [(TSUFormattingSymbols *)v88 version];
  v86 = [v27 stringByReplacingOccurrencesOfString:@"*" withString:&stru_28862C2A0];

  v28 = [v86 integerValue] > 1799;
  v80 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:256 negativeStyle:4];
  v97[0] = v80;
  v79 = [(TSUFormattingSymbols *)v88 decimalPattern];
  v98[0] = v79;
  v78 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:256 negativeStyle:0];
  v97[1] = v78;
  v77 = [(TSUFormattingSymbols *)v88 decimalPattern];
  v76 = [TSUNumberFormatter formatString:v77 transformedForNegativeStyle:0];
  v98[1] = v76;
  v75 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:256 negativeStyle:1];
  v97[2] = v75;
  v74 = [(TSUFormattingSymbols *)v88 decimalPattern];
  v73 = [TSUNumberFormatter formatString:v74 transformedForNegativeStyle:1];
  v98[2] = v73;
  v72 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:256 negativeStyle:2];
  v97[3] = v72;
  v71 = [(TSUFormattingSymbols *)v88 decimalPattern];
  v70 = [TSUNumberFormatter formatString:v71 transformedForNegativeStyle:2];
  v98[3] = v70;
  v69 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:256 negativeStyle:3];
  v97[4] = v69;
  v68 = [(TSUFormattingSymbols *)v88 decimalPattern];
  v67 = [TSUNumberFormatter formatString:v68 transformedForNegativeStyle:3];
  v98[4] = v67;
  v66 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:257 negativeStyle:4];
  v97[5] = v66;
  v65 = [(TSUFormattingSymbols *)v88 currencyPattern];
  v98[5] = v65;
  v64 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:257 negativeStyle:0];
  v97[6] = v64;
  v63 = [(TSUFormattingSymbols *)v88 currencyPattern];
  v62 = [TSUNumberFormatter formatString:v63 transformedForNegativeStyle:0 placeMinusSignAfterRLM:v28];
  v98[6] = v62;
  v61 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:257 negativeStyle:1];
  v97[7] = v61;
  v60 = [(TSUFormattingSymbols *)v88 currencyPattern];
  v59 = [TSUNumberFormatter formatString:v60 transformedForNegativeStyle:1];
  v98[7] = v59;
  v58 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:257 negativeStyle:2];
  v97[8] = v58;
  v57 = [(TSUFormattingSymbols *)v88 currencyPattern];
  v56 = [TSUNumberFormatter formatString:v57 transformedForNegativeStyle:2];
  v98[8] = v56;
  v55 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:257 negativeStyle:3];
  v97[9] = v55;
  v54 = [(TSUFormattingSymbols *)v88 currencyPattern];
  v53 = [TSUNumberFormatter formatString:v54 transformedForNegativeStyle:3];
  v98[9] = v53;
  v52 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:258 negativeStyle:4];
  v97[10] = v52;
  v51 = [(TSUFormattingSymbols *)v88 percentPattern];
  v98[10] = v51;
  v50 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:258 negativeStyle:0];
  v97[11] = v50;
  v49 = [(TSUFormattingSymbols *)v88 percentPattern];
  v48 = [TSUNumberFormatter formatString:v49 transformedForNegativeStyle:0];
  v98[11] = v48;
  v47 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:258 negativeStyle:1];
  v97[12] = v47;
  v46 = [(TSUFormattingSymbols *)v88 percentPattern];
  v45 = [TSUNumberFormatter formatString:v46 transformedForNegativeStyle:1];
  v98[12] = v45;
  v44 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:258 negativeStyle:2];
  v97[13] = v44;
  v43 = [(TSUFormattingSymbols *)v88 percentPattern];
  v42 = [TSUNumberFormatter formatString:v43 transformedForNegativeStyle:2];
  v98[13] = v42;
  v41 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:258 negativeStyle:3];
  v97[14] = v41;
  v40 = [(TSUFormattingSymbols *)v88 percentPattern];
  v39 = [TSUNumberFormatter formatString:v40 transformedForNegativeStyle:3];
  v98[14] = v39;
  v38 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:259 negativeStyle:4];
  v97[15] = v38;
  v98[15] = @"#.##E+00";
  v29 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:259 negativeStyle:0];
  v97[16] = v29;
  v30 = [TSUNumberFormatter formatString:@"#.##E+00" transformedForNegativeStyle:0];
  v98[16] = v30;
  v31 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:259 negativeStyle:1];
  v97[17] = v31;
  v32 = [TSUNumberFormatter formatString:@"#.##E+00" transformedForNegativeStyle:1];
  v98[17] = v32;
  v33 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:259 negativeStyle:2];
  v97[18] = v33;
  v34 = [TSUNumberFormatter formatString:@"#.##E+00" transformedForNegativeStyle:2];
  v98[18] = v34;
  v35 = [(TSUFormattingSymbols *)v88 p_negativeNumberKeyForNumberStyle:259 negativeStyle:3];
  v97[19] = v35;
  v36 = [TSUNumberFormatter formatString:@"#.##E+00" transformedForNegativeStyle:3];
  v98[19] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:20];
  [(TSUFormattingSymbols *)v88 setNegativeNumberPatterns:v37];
}

- (id)p_negativeNumberKeyForNumberStyle:(unsigned int)a3 negativeStyle:(unsigned __int8)a4
{
  if (a3 - 260 >= 0xFFFFFFFC)
  {
    v4 = a3;
  }

  else
  {
    v4 = 256;
  }

  if (a4 >= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = a4;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%d-%d", v4, v5];
}

+ (BOOL)p_localeIsCustomized:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAF8];
  v6 = [v4 localeIdentifier];
  v7 = [v5 localeWithLocaleIdentifier:v6];

  v8 = [v4 decimalSeparator];
  v9 = [v7 decimalSeparator];
  v10 = [v8 isEqualToString:v9];

  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [v4 groupingSeparator];
  v12 = [v7 groupingSeparator];
  v13 = [v11 isEqualToString:v12];

  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = [v4 currencyCode];
  v15 = [v7 currencyCode];
  v16 = [v14 isEqualToString:v15];

  if (!v16)
  {
    goto LABEL_5;
  }

  v17 = [v4 usesMetricSystem];
  if (v17 != [v7 usesMetricSystem])
  {
    goto LABEL_5;
  }

  v20 = objc_opt_new();
  [v20 setLocale:v4];
  v21 = objc_opt_new();
  [v21 setLocale:v7];
  v22 = [v20 AMSymbol];
  v23 = [v21 AMSymbol];
  v24 = [v22 isEqualToString:v23];

  if (!v24)
  {
    goto LABEL_13;
  }

  v25 = [v20 PMSymbol];
  v26 = [v21 PMSymbol];
  v27 = [v25 isEqualToString:v26];

  if (!v27)
  {
    goto LABEL_13;
  }

  LOBYTE(v18) = 1;
  if ([a1 p_patternsDifferForDF:v20 uncustomizedDF:v21 dateStyle:1 timeStyle:0])
  {
LABEL_14:

    goto LABEL_6;
  }

  if ([a1 p_patternsDifferForDF:v20 uncustomizedDF:v21 dateStyle:2 timeStyle:0] & 1) != 0 || (objc_msgSend(a1, "p_patternsDifferForDF:uncustomizedDF:dateStyle:timeStyle:", v20, v21, 3, 0) & 1) != 0 || (objc_msgSend(a1, "p_patternsDifferForDF:uncustomizedDF:dateStyle:timeStyle:", v20, v21, 4, 0))
  {
    goto LABEL_13;
  }

  LOBYTE(v18) = 1;
  if ([a1 p_patternsDifferForDF:v20 uncustomizedDF:v21 dateStyle:0 timeStyle:1])
  {
    goto LABEL_14;
  }

  if ([a1 p_patternsDifferForDF:v20 uncustomizedDF:v21 dateStyle:0 timeStyle:2] & 1) != 0 || (objc_msgSend(a1, "p_patternsDifferForDF:uncustomizedDF:dateStyle:timeStyle:", v20, v21, 0, 3))
  {
LABEL_13:
    LOBYTE(v18) = 1;
    goto LABEL_14;
  }

  v28 = [a1 p_patternsDifferForDF:v20 uncustomizedDF:v21 dateStyle:0 timeStyle:4];

  if ((v28 & 1) == 0)
  {
    v20 = objc_opt_new();
    [v20 setLocale:v4];
    v21 = objc_opt_new();
    [v21 setLocale:v7];
    v29 = [v20 currencyDecimalSeparator];
    v30 = [v21 currencyDecimalSeparator];
    v31 = [v29 isEqualToString:v30];

    if (v31)
    {
      v32 = [v20 currencyGroupingSeparator];
      v33 = [v21 currencyGroupingSeparator];
      v18 = [v32 isEqualToString:v33] ^ 1;

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_5:
  LOBYTE(v18) = 1;
LABEL_6:

  return v18;
}

+ (BOOL)p_patternsDifferForDF:(id)a3 uncustomizedDF:(id)a4 dateStyle:(unint64_t)a5 timeStyle:(unint64_t)a6
{
  v9 = a4;
  v10 = a3;
  [v10 setDateStyle:a5];
  [v10 setTimeStyle:a6];
  [v9 setDateStyle:a5];
  [v9 setTimeStyle:a6];
  v11 = [v10 dateFormat];

  v12 = [v9 dateFormat];

  LOBYTE(v10) = [v11 isEqualToString:v12];
  return v10 ^ 1;
}

@end