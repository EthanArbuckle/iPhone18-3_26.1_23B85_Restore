@interface RCDurationFormatter
+ (id)_dateTimeFormatTemplateForStyle:(int64_t)a3;
+ (id)_localizedDateTimeFormatTemplateForStyle:(int64_t)a3;
+ (id)sharedFormatter;
- (RCDurationFormatter)init;
- (RCDurationIntegers)durationIntegersFromDuration:(SEL)a3 byReplacingDigitsWithDigit:(double)a4 style:(int64_t)a5;
- (RCDurationStrings)durationStringsFromDurationIntegers:(SEL)a3 hideComponentOptions:(RCDurationIntegers *)a4 style:(int64_t)a5 shouldPadMinute:(int64_t)a6;
- (id)localizedStringFromDurationStrings:(RCDurationStrings *)a3 style:(int64_t)a4;
- (id)stringFromDuration:(double)a3 hideComponentOptions:(int64_t)a4 style:(int64_t)a5 shouldPadMinute:(BOOL)a6;
- (id)stringFromDuration:(double)a3 replacingDigitsWithDigit:(unint64_t)a4 style:(int64_t)a5;
- (void)_onQueueReloadLocalizedFormatStrings;
- (void)_replaceComponentPlaceholderForType:(unint64_t)a3 withString:(id)a4 inLocalizedDataFormatTemplate:(id)a5;
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
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = [MEMORY[0x277CCABD8] mainQueue];
    v5 = *MEMORY[0x277CBE620];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __27__RCDurationFormatter_init__block_invoke;
    v13 = &unk_279E443D0;
    objc_copyWeak(&v14, &location);
    v6 = [v3 addObserverForName:v5 object:0 queue:v4 usingBlock:&v10];

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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  styleToLocalizedDateTimeFormatTemplate = self->_styleToLocalizedDateTimeFormatTemplate;
  self->_styleToLocalizedDateTimeFormatTemplate = v3;

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

- (id)stringFromDuration:(double)a3 replacingDigitsWithDigit:(unint64_t)a4 style:(int64_t)a5
{
  if (a4 >= 0xA)
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
  *&block[6] = a3;
  block[7] = a4;
  block[8] = a5;
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

- (id)stringFromDuration:(double)a3 hideComponentOptions:(int64_t)a4 style:(int64_t)a5 shouldPadMinute:(BOOL)a6
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
  *&v9[6] = a3;
  v9[7] = a4;
  v9[8] = a5;
  v10 = a6;
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

- (RCDurationIntegers)durationIntegersFromDuration:(SEL)a3 byReplacingDigitsWithDigit:(double)a4 style:(int64_t)a5
{
  v7 = (a4 * 100.0) % 0x64;
  v8 = a4;
  v9 = a4 / 0x3C;
  v10 = v9 - 60 * (((v9 * 0x888888888888889uLL) >> 64) >> 1);
  if (a6 != 4)
  {
    v8 = 0;
  }

  if ((a6 - 2) < 2)
  {
    v8 = a4 % 0x3C;
  }

  else
  {
    v9 = 0;
  }

  if (a6 >= 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 / 0xE10;
  }

  if (a6 >= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (a6 >= 2)
  {
    v13 = v8;
  }

  else
  {
    v13 = a4 % 0x3C;
  }

  if ((a5 & 0x8000000000000000) == 0)
  {
    v15 = [@"0" length];
    v16 = RCNumberOfDigitsInInteger(v11);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    v11 = a5;
    v18 = v17 - 1;
    if (v18)
    {
      v19 = 10;
      v11 = a5;
      do
      {
        v11 += v19 * a5;
        v19 *= 10;
        --v18;
      }

      while (v18);
    }

    v20 = RCNumberOfDigitsInInteger(v12);
    v21 = 2;
    if (v20 > 2)
    {
      v21 = v20;
    }

    v22 = v21 - 1;
    v23 = 10;
    v12 = a5;
    do
    {
      v12 += v23 * a5;
      v23 *= 10;
      --v22;
    }

    while (v22);
    v24 = RCNumberOfDigitsInInteger(v13);
    v25 = 2;
    if (v24 > 2)
    {
      v25 = v24;
    }

    v26 = v25 - 1;
    v27 = 10;
    v13 = a5;
    do
    {
      v13 += v27 * a5;
      v27 *= 10;
      --v26;
    }

    while (v26);
    self = RCNumberOfDigitsInInteger(v7);
    v28 = 2;
    if (self > 2)
    {
      v28 = self;
    }

    v29 = v28 - 1;
    v30 = 10;
    v7 = a5;
    do
    {
      v7 += v30 * a5;
      v30 *= 10;
      --v29;
    }

    while (v29);
  }

  retstr->var0 = v11;
  retstr->var1 = v12;
  retstr->var2 = v13;
  retstr->var3 = v7;
  return self;
}

- (RCDurationStrings)durationStringsFromDurationIntegers:(SEL)a3 hideComponentOptions:(RCDurationIntegers *)a4 style:(int64_t)a5 shouldPadMinute:(int64_t)a6
{
  v8 = a5;
  p_defaultFormatter = &self->_defaultFormatter;
  defaultFormatter = self->_defaultFormatter;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4->var3];
  v15 = [(NSNumberFormatter *)defaultFormatter stringFromNumber:v14];

  if (v8)
  {
    v16 = _hiddenComponentStringWithString(v15);

    v15 = v16;
  }

  v17 = *p_defaultFormatter;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4->var2];
  v19 = [v17 stringFromNumber:v18];

  if ((v8 & 2) != 0)
  {
    v20 = _hiddenComponentStringWithString(v19);

    v19 = v20;
  }

  if (!a7 && (!a4->var0 || a4->var1 >= 0xA))
  {
    p_defaultFormatter = &self->_nonPaddedHourMinuteFormatter;
  }

  v21 = *p_defaultFormatter;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4->var1];
  v23 = [v21 stringFromNumber:v22];

  if ((v8 & 4) != 0)
  {
    v24 = _hiddenComponentStringWithString(v23);

    v23 = v24;
  }

  if (a6 > 1)
  {
    nonPaddedHourMinuteFormatter = 0;
  }

  else
  {
    nonPaddedHourMinuteFormatter = self->_nonPaddedHourMinuteFormatter;
  }

  v26 = nonPaddedHourMinuteFormatter;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4->var0];
  v28 = [(NSNumberFormatter *)v26 stringFromNumber:v27];

  if ((v8 & 8) != 0)
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

- (id)localizedStringFromDurationStrings:(RCDurationStrings *)a3 style:(int64_t)a4
{
  styleToLocalizedDateTimeFormatTemplate = self->_styleToLocalizedDateTimeFormatTemplate;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v8 = [(NSMutableDictionary *)styleToLocalizedDateTimeFormatTemplate objectForKeyedSubscript:v7];

  v9 = [v8 mutableCopy];
  [(RCDurationFormatter *)self _replaceComponentPlaceholderForType:0 withString:a3->var0 inLocalizedDataFormatTemplate:v9];
  [(RCDurationFormatter *)self _replaceComponentPlaceholderForType:1 withString:a3->var1 inLocalizedDataFormatTemplate:v9];
  [(RCDurationFormatter *)self _replaceComponentPlaceholderForType:2 withString:a3->var2 inLocalizedDataFormatTemplate:v9];
  [(RCDurationFormatter *)self _replaceComponentPlaceholderForType:3 withString:a3->var3 inLocalizedDataFormatTemplate:v9];
  v10 = [v9 copy];

  __destructor_8_s0_s8_s16_s24(a3);

  return v10;
}

- (void)_replaceComponentPlaceholderForType:(unint64_t)a3 withString:(id)a4 inLocalizedDataFormatTemplate:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    if (a3 - 1 > 2)
    {
      v9 = &unk_2881AE2F0;
    }

    else
    {
      v9 = qword_279E444A8[a3 - 1];
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
          if ([v8 containsString:{v15, v17}])
          {
            [v8 replaceOccurrencesOfString:v15 withString:v7 options:0 range:{0, objc_msgSend(v8, "length")}];
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

+ (id)_localizedDateTimeFormatTemplateForStyle:(int64_t)a3
{
  v5 = objc_alloc(MEMORY[0x277CBEAF8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v6 localeIdentifier];
  v8 = [v5 initWithLocaleIdentifier:v7];

  v9 = [a1 _dateTimeFormatTemplateForStyle:a3];
  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(*MEMORY[0x277CBECE8], v9, 0, v8);
  v11 = [v8 localeIdentifier];
  if ([v11 hasPrefix:@"ee_"] && -[__CFString hasPrefix:](DateFormatFromTemplate, "hasPrefix:", @"'aɖabaƒoƒo' "))
  {
    v12 = -[__CFString substringFromIndex:](DateFormatFromTemplate, "substringFromIndex:", [@"'aɖabaƒoƒo' " length]);

    DateFormatFromTemplate = v12;
  }

  return DateFormatFromTemplate;
}

+ (id)_dateTimeFormatTemplateForStyle:(int64_t)a3
{
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __55__RCDurationFormatter__dateTimeFormatTemplateForStyle___block_invoke;
  v11 = &__block_descriptor_48_e5_v8__0l;
  v12 = a2;
  v13 = a1;
  if (_dateTimeFormatTemplateForStyle__onceToken != -1)
  {
    dispatch_once(&_dateTimeFormatTemplateForStyle__onceToken, &v8);
  }

  v4 = _dateTimeFormatTemplateForStyle__styleToDateTimeFormat;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{a3, v8, v9, v10, v11, v12, v13}];
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