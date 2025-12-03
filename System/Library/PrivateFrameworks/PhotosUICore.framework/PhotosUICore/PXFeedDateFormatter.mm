@interface PXFeedDateFormatter
+ (id)defaultFeedSectionDateFormatter;
- (BOOL)_canSubstitueDateStringsWithLocale:(id)locale;
- (BOOL)isDateInFuture:(id)future;
- (BOOL)isDateInToday:(id)today;
- (PXFeedDateFormatter)initWithLocale:(id)locale ignoreWhitelist:(BOOL)whitelist;
- (id)_completeRelativeStringForDate:(id)date dateFormatter:(id)formatter;
- (id)stringFromDate:(id)date;
- (void)_invalidate;
- (void)_prepare;
- (void)dealloc;
@end

@implementation PXFeedDateFormatter

- (BOOL)_canSubstitueDateStringsWithLocale:(id)locale
{
  localeCopy = locale;
  if (self->_ignoreWhitelist)
  {
    goto LABEL_5;
  }

  if (_canSubstitueDateStringsWithLocale__onceToken != -1)
  {
    dispatch_once(&_canSubstitueDateStringsWithLocale__onceToken, &__block_literal_global_18_228114);
  }

  v5 = _canSubstitueDateStringsWithLocale__whitelistedLanguageCodes;
  languageCode = [localeCopy languageCode];
  LOBYTE(v5) = [v5 containsObject:languageCode];

  if (v5)
  {
LABEL_5:
    v7 = 1;
  }

  else
  {
    v8 = _canSubstitueDateStringsWithLocale__whitelistedLocaleIdentifiers;
    localeIdentifier = [localeCopy localeIdentifier];
    v7 = [v8 containsObject:localeIdentifier];
  }

  return v7;
}

void __58__PXFeedDateFormatter__canSubstitueDateStringsWithLocale___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"ar", @"de", @"el", @"en", @"es", @"he", @"hr", @"id", @"ko", @"nl", @"pl", @"pt", @"ro", @"ru", @"sk", @"sv", @"uk", @"vi", @"yue", @"zh", 0}];
  v1 = _canSubstitueDateStringsWithLocale__whitelistedLanguageCodes;
  _canSubstitueDateStringsWithLocale__whitelistedLanguageCodes = v0;

  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"ms", @"ms_BN", @"ms_MY", @"ms_SG", 0}];
  v3 = _canSubstitueDateStringsWithLocale__whitelistedLocaleIdentifiers;
  _canSubstitueDateStringsWithLocale__whitelistedLocaleIdentifiers = v2;
}

- (id)_completeRelativeStringForDate:(id)date dateFormatter:(id)formatter
{
  dateCopy = date;
  formatterCopy = formatter;
  v8 = [formatterCopy stringFromDate:dateCopy];
  locale = [formatterCopy locale];

  v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v10 setLocale:locale];
  [v10 setDateStyle:4];
  v11 = [v10 copy];
  [v11 setDoesRelativeDateFormatting:1];
  v12 = [v11 stringFromDate:dateCopy];
  v13 = [v10 stringFromDate:dateCopy];
  if (([v12 isEqualToString:v13] & 1) == 0)
  {
    if ([(PXFeedDateFormatter *)self _canSubstitueDateStringsWithLocale:locale])
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v14 setLocale:locale];
      v15 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"EEEE" options:0 locale:locale];
      [v14 setDateFormat:v15];

      v16 = [v14 stringFromDate:dateCopy];
      v17 = [v8 rangeOfString:v16 options:1];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = [v8 stringByReplacingCharactersInRange:v17 withString:{v18, v12}];

        v8 = v19;
      }

      v20 = v8;

      v8 = v14;
    }

    else
    {
      v20 = v12;
    }

    v8 = v20;
  }

  v21 = [v8 px_stringByApplyingCapitalization:3];

  return v21;
}

- (void)_prepare
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_prepared)
  {
    obj->_prepared = 1;
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    calendar = obj->_calendar;
    obj->_calendar = currentCalendar;

    date = [MEMORY[0x1E695DF00] date];
    today = obj->_today;
    obj->_today = date;

    v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v7 setDay:-1];
    v8 = [(NSCalendar *)obj->_calendar dateByAddingComponents:v7 toDate:obj->_today options:0];
    yesterday = obj->_yesterday;
    obj->_yesterday = v8;

    locale = obj->_locale;
    if (locale)
    {
      currentLocale = locale;
    }

    else
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    }

    v12 = currentLocale;
    v13 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatterForCurrentYear = obj->_dateFormatterForCurrentYear;
    obj->_dateFormatterForCurrentYear = v13;

    [(NSDateFormatter *)obj->_dateFormatterForCurrentYear setLocale:v12];
    v15 = obj->_dateFormatterForCurrentYear;
    v16 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"EEEE options:MMMM d" locale:{0, v12}];
    [(NSDateFormatter *)v15 setDateFormat:v16];

    v17 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatterForNoncurrentYears = obj->_dateFormatterForNoncurrentYears;
    obj->_dateFormatterForNoncurrentYears = v17;

    [(NSDateFormatter *)obj->_dateFormatterForNoncurrentYears setLocale:v12];
    [(NSDateFormatter *)obj->_dateFormatterForNoncurrentYears setDateStyle:4];
    v19 = [(PXFeedDateFormatter *)obj _completeRelativeStringForDate:obj->_today dateFormatter:obj->_dateFormatterForCurrentYear];
    todayString = obj->_todayString;
    obj->_todayString = v19;

    v21 = [(PXFeedDateFormatter *)obj _completeRelativeStringForDate:obj->_yesterday dateFormatter:obj->_dateFormatterForCurrentYear];
    yesterdayString = obj->_yesterdayString;
    obj->_yesterdayString = v21;

    v2 = obj;
  }

  objc_sync_exit(v2);
}

- (void)_invalidate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_prepared = 0;
  objc_sync_exit(selfCopy);

  px_dispatch_on_main_queue();
}

void __34__PXFeedDateFormatter__invalidate__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"PXFeedDateFormatterChangedNotification" object:*(a1 + 32)];
}

- (BOOL)isDateInFuture:(id)future
{
  futureCopy = future;
  [(PXFeedDateFormatter *)self _prepare];
  v5 = [(NSCalendar *)self->_calendar compareDate:self->_today toDate:futureCopy toUnitGranularity:16];

  return v5 == NSOrderedAscending;
}

- (BOOL)isDateInToday:(id)today
{
  todayCopy = today;
  [(PXFeedDateFormatter *)self _prepare];
  LOBYTE(self) = [(NSCalendar *)self->_calendar isDate:todayCopy inSameDayAsDate:self->_today];

  return self;
}

- (id)stringFromDate:(id)date
{
  dateCopy = date;
  [(PXFeedDateFormatter *)self _prepare];
  if ([(NSCalendar *)self->_calendar isDate:dateCopy inSameDayAsDate:self->_today])
  {
    todayString = self->_todayString;
LABEL_5:
    v6 = todayString;
    goto LABEL_9;
  }

  if ([(NSCalendar *)self->_calendar isDate:dateCopy inSameDayAsDate:self->_yesterday])
  {
    todayString = self->_yesterdayString;
    goto LABEL_5;
  }

  v7 = [(NSCalendar *)self->_calendar isDate:dateCopy equalToDate:self->_today toUnitGranularity:4];
  v8 = 80;
  if (v7)
  {
    v8 = 72;
  }

  v9 = [*(&self->super.isa + v8) stringFromDate:dateCopy];
  v6 = [v9 px_stringByApplyingCapitalization:3];

LABEL_9:

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PXFeedDateFormatter;
  [(PXFeedDateFormatter *)&v4 dealloc];
}

- (PXFeedDateFormatter)initWithLocale:(id)locale ignoreWhitelist:(BOOL)whitelist
{
  localeCopy = locale;
  v13.receiver = self;
  v13.super_class = PXFeedDateFormatter;
  v8 = [(PXFeedDateFormatter *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locale, locale);
    v9->_ignoreWhitelist = whitelist;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__calendarDayChanged_ name:*MEMORY[0x1E695D810] object:0];

    if (!v9->_locale)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v9 selector:sel__currentLocaleChanged_ name:*MEMORY[0x1E695D8F0] object:0];
    }
  }

  return v9;
}

+ (id)defaultFeedSectionDateFormatter
{
  if (defaultFeedSectionDateFormatter_onceToken != -1)
  {
    dispatch_once(&defaultFeedSectionDateFormatter_onceToken, &__block_literal_global_228212);
  }

  v3 = defaultFeedSectionDateFormatter_defaultFeedSectionDateFormatter;

  return v3;
}

void __54__PXFeedDateFormatter_defaultFeedSectionDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(PXFeedDateFormatter);
  v1 = defaultFeedSectionDateFormatter_defaultFeedSectionDateFormatter;
  defaultFeedSectionDateFormatter_defaultFeedSectionDateFormatter = v0;
}

@end