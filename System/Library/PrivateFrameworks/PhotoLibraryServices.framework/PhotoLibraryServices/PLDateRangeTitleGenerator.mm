@interface PLDateRangeTitleGenerator
- (PLDateRangeTitleGenerator)init;
- (PLDateRangeTitleGenerator)initWithLocale:(id)locale;
- (id)dateRangeFormatterForCategory:(unsigned __int16)category kind:(unsigned __int16)kind type:(unsigned __int16)type options:(unint64_t)options;
- (id)dateRangeTitleWithStartDate:(id)date endDate:(id)endDate category:(unsigned __int16)category kind:(unsigned __int16)kind type:(unsigned __int16)type options:(unint64_t)options;
- (id)newDateRangeFormatter;
- (id)newMonthYearWithDelimiterDateRangeFormatter;
- (id)newRecentDateRangeFormatter;
- (id)newShortMonthYearDateRangeFormatter;
- (id)newShortMonthYearWithDelimiterDateRangeFormatter;
- (id)newYearDateRangeFormatter;
- (id)newYearlessDateRangeFormatter;
@end

@implementation PLDateRangeTitleGenerator

- (id)newYearDateRangeFormatter
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[PLDateRangeFormatter alloc] initWithPreset:4];
  v5 = v4;
  if (self->_locale)
  {
    [(PLDateRangeFormatter *)v4 setLocale:?];
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (id)newShortMonthYearDateRangeFormatter
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[PLDateRangeFormatter alloc] initWithPreset:10];
  v5 = v4;
  if (self->_locale)
  {
    [(PLDateRangeFormatter *)v4 setLocale:?];
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (id)newShortMonthYearWithDelimiterDateRangeFormatter
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[PLDateRangeFormatter alloc] initWithPreset:9];
  v5 = v4;
  if (self->_locale)
  {
    [(PLDateRangeFormatter *)v4 setLocale:?];
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (id)newMonthYearWithDelimiterDateRangeFormatter
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[PLDateRangeFormatter alloc] initWithPreset:8];
  v5 = v4;
  if (self->_locale)
  {
    [(PLDateRangeFormatter *)v4 setLocale:?];
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (id)newYearlessDateRangeFormatter
{
  v3 = objc_autoreleasePoolPush();
  v4 = [PLDateRangeFormatter autoupdatingFormatterWithPreset:1];
  [v4 setUseLocalDates:1];
  if (self->_locale)
  {
    [v4 setLocale:?];
  }

  objc_autoreleasePoolPop(v3);
  return v4;
}

- (id)newDateRangeFormatter
{
  v3 = objc_autoreleasePoolPush();
  v4 = [PLDateRangeFormatter autoupdatingFormatterWithPreset:0];
  [v4 setUseLocalDates:1];
  if (self->_locale)
  {
    [v4 setLocale:?];
  }

  objc_autoreleasePoolPop(v3);
  return v4;
}

- (id)newRecentDateRangeFormatter
{
  v3 = objc_autoreleasePoolPush();
  v4 = [PLDateRangeFormatter autoupdatingFormatterWithPreset:2];
  [v4 setUseLocalDates:1];
  if (self->_locale)
  {
    [v4 setLocale:?];
  }

  objc_autoreleasePoolPop(v3);
  return v4;
}

- (id)dateRangeFormatterForCategory:(unsigned __int16)category kind:(unsigned __int16)kind type:(unsigned __int16)type options:(unint64_t)options
{
  v6 = 0;
  if (kind > 1)
  {
    if (kind == 2)
    {
      shortMonthYearDateRangeFormatter = [(PLDateRangeTitleGenerator *)self yearDateRangeFormatter:category];
      goto LABEL_20;
    }

    if (kind != 3)
    {
      goto LABEL_21;
    }

LABEL_7:
    if ((options & 0x10) != 0)
    {
      shortMonthYearDateRangeFormatter = [(PLDateRangeTitleGenerator *)self shortMonthYearDateRangeFormatter];
      goto LABEL_20;
    }

    if (category == 1)
    {
      shortMonthYearDateRangeFormatter = [(PLDateRangeTitleGenerator *)self recentDateRangeFormatter];
      goto LABEL_20;
    }

    if (!category)
    {
      if ((options & 2) != 0)
      {
        [(PLDateRangeTitleGenerator *)self yearlessDateRangeFormatter];
      }

      else
      {
        [(PLDateRangeTitleGenerator *)self dateRangeFormatter];
      }

      goto LABEL_12;
    }

LABEL_13:
    if ((options & 4) != 0)
    {
      [(PLDateRangeTitleGenerator *)self shortMonthYearWithDelimiterDateRangeFormatter];
    }

    else
    {
      [(PLDateRangeTitleGenerator *)self monthYearWithDelimiterDateRangeFormatter];
    }

    shortMonthYearDateRangeFormatter = LABEL_12:;
LABEL_20:
    v6 = shortMonthYearDateRangeFormatter;
    goto LABEL_21;
  }

  if (!kind)
  {
    goto LABEL_7;
  }

  if (kind == 1)
  {
    goto LABEL_13;
  }

LABEL_21:

  return v6;
}

- (id)dateRangeTitleWithStartDate:(id)date endDate:(id)endDate category:(unsigned __int16)category kind:(unsigned __int16)kind type:(unsigned __int16)type options:(unint64_t)options
{
  typeCopy = type;
  kindCopy = kind;
  categoryCopy = category;
  dateCopy = date;
  endDateCopy = endDate;
  v16 = endDateCopy;
  v17 = 0;
  if (dateCopy && endDateCopy)
  {
    v18 = [(PLDateRangeTitleGenerator *)self dateRangeFormatterForCategory:categoryCopy kind:kindCopy type:typeCopy options:options];
    v19 = v18;
    if (v18)
    {
      [v18 setAllowUseTime:(options & 8) == 0];
      v20 = (typeCopy > 4 || ((1 << typeCopy) & 0x16) == 0) && (options & 0x20) == 0;
      [v19 setAllowUseRelativeDayFormatting:v20];
      if (options)
      {
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        [v19 setLocale:currentLocale];
      }

      if (kindCopy >= 2)
      {
        v22 = v16;
      }

      else
      {
        v22 = dateCopy;
      }

      v17 = [v19 stringFromDate:dateCopy toDate:v22];
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (PLDateRangeTitleGenerator)initWithLocale:(id)locale
{
  localeCopy = locale;
  v6 = [(PLDateRangeTitleGenerator *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, locale);
  }

  return v7;
}

- (PLDateRangeTitleGenerator)init
{
  v47.receiver = self;
  v47.super_class = PLDateRangeTitleGenerator;
  v2 = [(PLDateRangeTitleGenerator *)&v47 init];
  if (v2)
  {
    v3 = objc_initWeak(&location, v2);

    v4 = objc_alloc(MEMORY[0x1E69BF270]);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __33__PLDateRangeTitleGenerator_init__block_invoke;
    v44[3] = &unk_1E7576828;
    objc_copyWeak(&v45, &location);
    v5 = [v4 initWithBlock:v44];
    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
    lazyRecentDateRangeFormatter = v2->_lazyRecentDateRangeFormatter;
    v2->_lazyRecentDateRangeFormatter = v5;

    v7 = objc_initWeak(&location, v2);
    v8 = objc_alloc(MEMORY[0x1E69BF270]);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __33__PLDateRangeTitleGenerator_init__block_invoke_2;
    v42[3] = &unk_1E7576828;
    objc_copyWeak(&v43, &location);
    v9 = [v8 initWithBlock:v42];
    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
    lazyDateRangeFormatter = v2->_lazyDateRangeFormatter;
    v2->_lazyDateRangeFormatter = v9;

    v11 = objc_initWeak(&location, v2);
    v12 = objc_alloc(MEMORY[0x1E69BF270]);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __33__PLDateRangeTitleGenerator_init__block_invoke_3;
    v40[3] = &unk_1E7576828;
    objc_copyWeak(&v41, &location);
    v13 = [v12 initWithBlock:v40];
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
    lazyYearlessDateRangeFormatter = v2->_lazyYearlessDateRangeFormatter;
    v2->_lazyYearlessDateRangeFormatter = v13;

    v15 = objc_initWeak(&location, v2);
    v16 = objc_alloc(MEMORY[0x1E69BF270]);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __33__PLDateRangeTitleGenerator_init__block_invoke_4;
    v38[3] = &unk_1E7576828;
    objc_copyWeak(&v39, &location);
    v17 = [v16 initWithBlock:v38];
    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
    lazyMonthYearWithDelimiterDateRangeFormatter = v2->_lazyMonthYearWithDelimiterDateRangeFormatter;
    v2->_lazyMonthYearWithDelimiterDateRangeFormatter = v17;

    v19 = objc_initWeak(&location, v2);
    v20 = objc_alloc(MEMORY[0x1E69BF270]);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __33__PLDateRangeTitleGenerator_init__block_invoke_5;
    v36[3] = &unk_1E7576828;
    objc_copyWeak(&v37, &location);
    v21 = [v20 initWithBlock:v36];
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
    lazyShortMonthYearWithDelimiterDateRangeFormatter = v2->_lazyShortMonthYearWithDelimiterDateRangeFormatter;
    v2->_lazyShortMonthYearWithDelimiterDateRangeFormatter = v21;

    v23 = objc_initWeak(&location, v2);
    v24 = objc_alloc(MEMORY[0x1E69BF270]);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __33__PLDateRangeTitleGenerator_init__block_invoke_6;
    v34[3] = &unk_1E7576828;
    objc_copyWeak(&v35, &location);
    v25 = [v24 initWithBlock:v34];
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
    lazyShortMonthYearDateRangeFormatter = v2->_lazyShortMonthYearDateRangeFormatter;
    v2->_lazyShortMonthYearDateRangeFormatter = v25;

    v27 = objc_initWeak(&location, v2);
    v28 = objc_alloc(MEMORY[0x1E69BF270]);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __33__PLDateRangeTitleGenerator_init__block_invoke_7;
    v32[3] = &unk_1E7576828;
    objc_copyWeak(&v33, &location);
    v29 = [v28 initWithBlock:v32];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
    lazyYearDateRangeFormatter = v2->_lazyYearDateRangeFormatter;
    v2->_lazyYearDateRangeFormatter = v29;
  }

  return v2;
}

id __33__PLDateRangeTitleGenerator_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newRecentDateRangeFormatter];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __33__PLDateRangeTitleGenerator_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newDateRangeFormatter];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __33__PLDateRangeTitleGenerator_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newYearlessDateRangeFormatter];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __33__PLDateRangeTitleGenerator_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newMonthYearWithDelimiterDateRangeFormatter];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __33__PLDateRangeTitleGenerator_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newShortMonthYearWithDelimiterDateRangeFormatter];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __33__PLDateRangeTitleGenerator_init__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newShortMonthYearDateRangeFormatter];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __33__PLDateRangeTitleGenerator_init__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newYearDateRangeFormatter];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end