@interface RCDurationFormatter
+ (id)_dateTimeFormatTemplateForStyle:(int64_t)style;
+ (id)_localizedDateTimeFormatTemplateForStyle:(int64_t)style;
+ (id)sharedFormatter;
- (RCDurationFormatter)init;
- (RCDurationIntegers)durationIntegersFromDuration:(SEL)duration byReplacingDigitsWithDigit:(double)digit style:(int64_t)style;
- (RCDurationStrings)durationStringsFromDurationIntegers:(SEL)integers hideComponentOptions:(RCDurationIntegers *)options style:(int64_t)style shouldPadMinute:(int64_t)minute;
- (id)localizedStringFromDurationStrings:(RCDurationStrings *)strings style:(int64_t)style;
- (id)stringFromDuration:(double)duration hideComponentOptions:(int64_t)options style:(int64_t)style shouldPadMinute:(BOOL)minute;
- (id)stringFromDuration:(double)duration replacingDigitsWithDigit:(unint64_t)digit style:(int64_t)style;
- (void)_onQueueReloadLocalizedFormatStrings;
- (void)_replaceComponentPlaceholderForType:(unint64_t)type withString:(id)string inLocalizedDataFormatTemplate:(id)template;
- (void)reloadLocalizedFormatStrings;
@end

@implementation RCDurationFormatter

+ (id)sharedFormatter
{
  if (sharedFormatter_onceToken != -1)
  {
    +[RCDurationFormatter sharedFormatter];
  }

  v3 = sharedFormatter_sharedInstance;

  return v3;
}

uint64_t __38__RCDurationFormatter_sharedFormatter__block_invoke()
{
  sharedFormatter_sharedInstance = objc_alloc_init(RCDurationFormatter);

  return MEMORY[0x2821F96F8]();
}

- (RCDurationFormatter)init
{
  v16.receiver = self;
  v16.super_class = RCDurationFormatter;
  v2 = [(RCDurationFormatter *)&v16 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v5 = *MEMORY[0x277CBE620];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __27__RCDurationFormatter_init__block_invoke;
    v13 = &unk_279E443D0;
    objc_copyWeak(&v14, &location);
    v6 = [defaultCenter addObserverForName:v5 object:0 queue:mainQueue usingBlock:&v10];

    v7 = dispatch_queue_create(0, 0);
    queue = v2->_queue;
    v2->_queue = v7;

    [(RCDurationFormatter *)v2 reloadLocalizedFormatStrings:v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)reloadLocalizedFormatStrings
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RCDurationFormatter_reloadLocalizedFormatStrings__block_invoke;
  block[3] = &unk_279E43B20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_onQueueReloadLocalizedFormatStrings
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  styleToLocalizedDateTimeFormatTemplate = self->_styleToLocalizedDateTimeFormatTemplate;
  self->_styleToLocalizedDateTimeFormatTemplate = dictionary;

  for (i = 0; i != 5; ++i)
  {
    v6 = [objc_opt_class() _localizedDateTimeFormatTemplateForStyle:i];
    if (v6)
    {
      v7 = self->_styleToLocalizedDateTimeFormatTemplate;
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:i];
      [(NSMutableDictionary *)v7 setObject:v6 forKey:v8];
    }
  }

  v9 = objc_alloc_init(MEMORY[0x277CCABB8]);
  defaultFormatter = self->_defaultFormatter;
  self->_defaultFormatter = v9;

  [(NSNumberFormatter *)self->_defaultFormatter setNumberStyle:0];
  [(NSNumberFormatter *)self->_defaultFormatter setMinimumIntegerDigits:2];
  [(NSNumberFormatter *)self->_defaultFormatter setPositiveFormat:@"00"];
  v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
  nonPaddedHourMinuteFormatter = self->_nonPaddedHourMinuteFormatter;
  self->_nonPaddedHourMinuteFormatter = v11;

  [(NSNumberFormatter *)self->_nonPaddedHourMinuteFormatter setNumberStyle:0];
  [(NSNumberFormatter *)self->_nonPaddedHourMinuteFormatter setMinimumIntegerDigits:1];
  v13 = self->_nonPaddedHourMinuteFormatter;

  [(NSNumberFormatter *)v13 setPositiveFormat:@"0"];
}

void __27__RCDurationFormatter_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadLocalizedFormatStrings];
}

- (id)stringFromDuration:(double)duration replacingDigitsWithDigit:(unint64_t)digit style:(int64_t)style
{
  if (digit >= 0xA)
  {
    [RCDurationFormatter stringFromDuration:a2 replacingDigitsWithDigit:self style:?];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__RCDurationFormatter_stringFromDuration_replacingDigitsWithDigit_style___block_invoke;
  block[3] = &unk_279E443F8;
  block[4] = self;
  block[5] = &v13;
  *&block[6] = duration;
  block[7] = digit;
  block[8] = style;
  dispatch_sync(queue, block);
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __73__RCDurationFormatter_stringFromDuration_replacingDigitsWithDigit_style___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueueStringFromDuration:*(a1 + 56) byReplacingDigitsWithDigit:0 hideComponentOptions:*(a1 + 64) style:1 shouldPadMinute:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)stringFromDuration:(double)duration hideComponentOptions:(int64_t)options style:(int64_t)style shouldPadMinute:(BOOL)minute
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__RCDurationFormatter_stringFromDuration_hideComponentOptions_style_shouldPadMinute___block_invoke;
  v9[3] = &unk_279E44420;
  v9[4] = self;
  v9[5] = &v11;
  *&v9[6] = duration;
  v9[7] = options;
  v9[8] = style;
  minuteCopy = minute;
  dispatch_sync(queue, v9);
  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

uint64_t __85__RCDurationFormatter_stringFromDuration_hideComponentOptions_style_shouldPadMinute___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueueStringFromDuration:-1 byReplacingDigitsWithDigit:*(a1 + 56) hideComponentOptions:*(a1 + 64) style:*(a1 + 72) shouldPadMinute:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (RCDurationIntegers)durationIntegersFromDuration:(SEL)duration byReplacingDigitsWithDigit:(double)digit style:(int64_t)style
{
  styleCopy5 = (digit * 100.0) % 0x64;
  digitCopy = digit;
  v9 = digit / 0x3C;
  v10 = v9 - 60 * (((v9 * 0x888888888888889uLL) >> 64) >> 1);
  if (a6 != 4)
  {
    digitCopy = 0;
  }

  if ((a6 - 2) < 2)
  {
    digitCopy = digit % 0x3C;
  }

  else
  {
    v9 = 0;
  }

  if (a6 >= 2)
  {
    styleCopy2 = 0;
  }

  else
  {
    styleCopy2 = digit / 0xE10;
  }

  if (a6 >= 2)
  {
    styleCopy3 = v9;
  }

  else
  {
    styleCopy3 = v10;
  }

  if (a6 >= 2)
  {
    styleCopy4 = digitCopy;
  }

  else
  {
    styleCopy4 = digit % 0x3C;
  }

  if ((style & 0x8000000000000000) == 0)
  {
    v15 = [@"0" length];
    v16 = RCNumberOfDigitsInInteger(styleCopy2);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    styleCopy2 = style;
    v18 = v17 - 1;
    if (v18)
    {
      v19 = 10;
      styleCopy2 = style;
      do
      {
        styleCopy2 += v19 * style;
        v19 *= 10;
        --v18;
      }

      while (v18);
    }

    v20 = RCNumberOfDigitsInInteger(styleCopy3);
    v21 = 2;
    if (v20 > 2)
    {
      v21 = v20;
    }

    v22 = v21 - 1;
    v23 = 10;
    styleCopy3 = style;
    do
    {
      styleCopy3 += v23 * style;
      v23 *= 10;
      --v22;
    }

    while (v22);
    v24 = RCNumberOfDigitsInInteger(styleCopy4);
    v25 = 2;
    if (v24 > 2)
    {
      v25 = v24;
    }

    v26 = v25 - 1;
    v27 = 10;
    styleCopy4 = style;
    do
    {
      styleCopy4 += v27 * style;
      v27 *= 10;
      --v26;
    }

    while (v26);
    self = RCNumberOfDigitsInInteger(styleCopy5);
    selfCopy = 2;
    if (self > 2)
    {
      selfCopy = self;
    }

    v29 = selfCopy - 1;
    v30 = 10;
    styleCopy5 = style;
    do
    {
      styleCopy5 += v30 * style;
      v30 *= 10;
      --v29;
    }

    while (v29);
  }

  retstr->var0 = styleCopy2;
  retstr->var1 = styleCopy3;
  retstr->var2 = styleCopy4;
  retstr->var3 = styleCopy5;
  return self;
}

- (RCDurationStrings)durationStringsFromDurationIntegers:(SEL)integers hideComponentOptions:(RCDurationIntegers *)options style:(int64_t)style shouldPadMinute:(int64_t)minute
{
  styleCopy = style;
  p_defaultFormatter = &self->_defaultFormatter;
  defaultFormatter = self->_defaultFormatter;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options->var3];
  v15 = [(NSNumberFormatter *)defaultFormatter stringFromNumber:v14];

  if (styleCopy)
  {
    v16 = _hiddenComponentStringWithString(v15);

    v15 = v16;
  }

  v17 = *p_defaultFormatter;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options->var2];
  v19 = [v17 stringFromNumber:v18];

  if ((styleCopy & 2) != 0)
  {
    v20 = _hiddenComponentStringWithString(v19);

    v19 = v20;
  }

  if (!a7 && (!options->var0 || options->var1 >= 0xA))
  {
    p_defaultFormatter = &self->_nonPaddedHourMinuteFormatter;
  }

  v21 = *p_defaultFormatter;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options->var1];
  v23 = [v21 stringFromNumber:v22];

  if ((styleCopy & 4) != 0)
  {
    v24 = _hiddenComponentStringWithString(v23);

    v23 = v24;
  }

  if (minute > 1)
  {
    nonPaddedHourMinuteFormatter = 0;
  }

  else
  {
    nonPaddedHourMinuteFormatter = self->_nonPaddedHourMinuteFormatter;
  }

  v26 = nonPaddedHourMinuteFormatter;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options->var0];
  v28 = [(NSNumberFormatter *)v26 stringFromNumber:v27];

  if ((styleCopy & 8) != 0)
  {
    v29 = _hiddenComponentStringWithString(v28);

    v28 = v29;
  }

  retstr->var0 = v28;
  retstr->var1 = v23;
  retstr->var2 = v19;
  retstr->var3 = v15;
  v30 = v15;
  v34 = v19;
  v31 = v23;

  return result;
}

- (id)localizedStringFromDurationStrings:(RCDurationStrings *)strings style:(int64_t)style
{
  styleToLocalizedDateTimeFormatTemplate = self->_styleToLocalizedDateTimeFormatTemplate;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  v8 = [(NSMutableDictionary *)styleToLocalizedDateTimeFormatTemplate objectForKeyedSubscript:v7];

  v9 = [v8 mutableCopy];
  [(RCDurationFormatter *)self _replaceComponentPlaceholderForType:0 withString:strings->var0 inLocalizedDataFormatTemplate:v9];
  [(RCDurationFormatter *)self _replaceComponentPlaceholderForType:1 withString:strings->var1 inLocalizedDataFormatTemplate:v9];
  [(RCDurationFormatter *)self _replaceComponentPlaceholderForType:2 withString:strings->var2 inLocalizedDataFormatTemplate:v9];
  [(RCDurationFormatter *)self _replaceComponentPlaceholderForType:3 withString:strings->var3 inLocalizedDataFormatTemplate:v9];
  v10 = [v9 copy];

  __destructor_8_s0_s8_s16_s24(strings);

  return v10;
}

- (void)_replaceComponentPlaceholderForType:(unint64_t)type withString:(id)string inLocalizedDataFormatTemplate:(id)template
{
  v22 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  templateCopy = template;
  if (stringCopy)
  {
    if (type - 1 > 2)
    {
      v9 = &unk_2881AE2F0;
    }

    else
    {
      v9 = qword_279E444A8[type - 1];
    }

    [v9 sortedArrayUsingComparator:&__block_literal_global_23];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v20 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if ([templateCopy containsString:{v15, v17}])
          {
            [templateCopy replaceOccurrencesOfString:v15 withString:stringCopy options:0 range:{0, objc_msgSend(templateCopy, "length")}];
            goto LABEL_15;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __100__RCDurationFormatter__replaceComponentPlaceholderForType_withString_inLocalizedDataFormatTemplate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 length];
  if (v6 <= [v5 length])
  {
    v8 = [v4 length];
    v7 = v8 < [v5 length];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (id)_localizedDateTimeFormatTemplateForStyle:(int64_t)style
{
  v5 = objc_alloc(MEMORY[0x277CBEAF8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v8 = [v5 initWithLocaleIdentifier:localeIdentifier];

  v9 = [self _dateTimeFormatTemplateForStyle:style];
  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(*MEMORY[0x277CBECE8], v9, 0, v8);
  localeIdentifier2 = [v8 localeIdentifier];
  if ([localeIdentifier2 hasPrefix:@"ee_"] && -[__CFString hasPrefix:](DateFormatFromTemplate, "hasPrefix:", @"'aɖabaƒoƒo' "))
  {
    v12 = -[__CFString substringFromIndex:](DateFormatFromTemplate, "substringFromIndex:", [@"'aɖabaƒoƒo' " length]);

    DateFormatFromTemplate = v12;
  }

  return DateFormatFromTemplate;
}

+ (id)_dateTimeFormatTemplateForStyle:(int64_t)style
{
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __55__RCDurationFormatter__dateTimeFormatTemplateForStyle___block_invoke;
  v11 = &__block_descriptor_48_e5_v8__0l;
  v12 = a2;
  selfCopy = self;
  if (_dateTimeFormatTemplateForStyle__onceToken != -1)
  {
    dispatch_once(&_dateTimeFormatTemplateForStyle__onceToken, &v8);
  }

  v4 = _dateTimeFormatTemplateForStyle__styleToDateTimeFormat;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{style, v8, v9, v10, v11, v12, selfCopy}];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

void __55__RCDurationFormatter__dateTimeFormatTemplateForStyle___block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2881AE058;
  v3[1] = &unk_2881AE070;
  v4[0] = @"HHmmssSS";
  v4[1] = @"HHmmss";
  v3[2] = &unk_2881AE088;
  v3[3] = &unk_2881AE0A0;
  v4[2] = @"mmssSS";
  v4[3] = @"mmss";
  v3[4] = &unk_2881AE0B8;
  v4[4] = @"sSS";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = _dateTimeFormatTemplateForStyle__styleToDateTimeFormat;
  _dateTimeFormatTemplateForStyle__styleToDateTimeFormat = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (void)stringFromDuration:(uint64_t)a1 replacingDigitsWithDigit:(uint64_t)a2 style:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RCDurationFormatter.m" lineNumber:79 description:{@"Invalid replacement digit, must be a single digit"}];
}

@end