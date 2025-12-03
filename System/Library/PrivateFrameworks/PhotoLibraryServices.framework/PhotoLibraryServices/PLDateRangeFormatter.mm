@interface PLDateRangeFormatter
+ (id)autoupdatingFormatterWithPreset:(int64_t)preset;
- (BOOL)allowUseRelativeDayFormatting;
- (BOOL)allowUseTime;
- (BOOL)useLocalDates;
- (NSLocale)locale;
- (PLDateRangeFormatter)initWithPreset:(int64_t)preset;
- (UDateIntervalFormat)_dayOfTheWeekIntervalFormat;
- (UDateIntervalFormat)_differentMonthDayIntervalFormat;
- (UDateIntervalFormat)_differentMonthDayNoYearIntervalFormat;
- (UDateIntervalFormat)_monthDayIntervalFormat;
- (UDateIntervalFormat)_monthDayNoYearIntervalFormat;
- (UDateIntervalFormat)_monthIntervalFormat;
- (UDateIntervalFormat)_monthYearIntervalFormat;
- (UDateIntervalFormat)_timeIntervalFormat;
- (UDateIntervalFormat)_yearIntervalFormat;
- (id)_dayDifferentMonthsTemplate;
- (id)_dayOfTheWeekDateFormatter;
- (id)_dayTemplate;
- (id)_monthDateFormatter;
- (id)_monthYearDateFormatter;
- (id)_relativeDateFormatter;
- (id)_sameDayDateFormatter;
- (id)_sameDayNoYearDateFormatter;
- (id)_sameMonthTemplate;
- (id)_stringFromDate:(id)date toDate:(id)toDate currentDate:(id)currentDate;
- (id)_yearDateFormatter;
- (id)stringFromDate:(id)date toDate:(id)toDate;
- (id)stringFromDate:(id)date toDate:(id)toDate currentDate:(id)currentDate;
- (int64_t)preset;
- (void)_currentLocaleDidChange:(id)change;
- (void)_handlePresetDidChange;
- (void)_handleUseLocalDatesDidChange;
- (void)_resetFormatters;
- (void)_significantTimeChange:(id)change;
- (void)_systemTimeZoneDidChange:(id)change;
- (void)dealloc;
- (void)setAllowUseRelativeDayFormatting:(BOOL)formatting;
- (void)setAllowUseTime:(BOOL)time;
- (void)setLocale:(id)locale;
- (void)setPreset:(int64_t)preset;
- (void)setUseLocalDates:(BOOL)dates;
@end

@implementation PLDateRangeFormatter

- (id)stringFromDate:(id)date toDate:(id)toDate
{
  v6 = MEMORY[0x1E695DF00];
  toDateCopy = toDate;
  dateCopy = date;
  date = [v6 date];
  v10 = [(PLDateRangeFormatter *)self stringFromDate:dateCopy toDate:toDateCopy currentDate:date];

  return v10;
}

- (id)stringFromDate:(id)date toDate:(id)toDate currentDate:(id)currentDate
{
  v5 = &stru_1F0F06D80;
  if (date && currentDate)
  {
    currentDateCopy = currentDate;
    toDateCopy = toDate;
    dateCopy = date;
    os_unfair_lock_lock(&self->_lock);
    v5 = [(PLDateRangeFormatter *)self _stringFromDate:dateCopy toDate:toDateCopy currentDate:currentDateCopy];

    os_unfair_lock_unlock(&self->_lock);
  }

  return v5;
}

- (void)setUseLocalDates:(BOOL)dates
{
  datesCopy = dates;
  os_unfair_lock_lock(&self->_lock);
  if (self->_useLocalDates != datesCopy)
  {
    self->_useLocalDates = datesCopy;
    [(PLDateRangeFormatter *)self _handleUseLocalDatesDidChange];
    [(PLDateRangeFormatter *)self _resetFormatters];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)useLocalDates
{
  os_unfair_lock_lock(&self->_lock);
  useLocalDates = self->_useLocalDates;
  os_unfair_lock_unlock(&self->_lock);
  return useLocalDates;
}

- (void)setLocale:(id)locale
{
  localeCopy = locale;
  if (!localeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDateRangeFormatter.m" lineNumber:1092 description:{@"Invalid parameter not satisfying: %@", @"locale"}];
  }

  os_unfair_lock_lock(&self->_lock);
  if (([(NSLocale *)self->_locale isEqual:localeCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_locale, locale);
    [(PLDateRangeFormatter *)self _resetFormatters];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSLocale)locale
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_locale;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAllowUseRelativeDayFormatting:(BOOL)formatting
{
  os_unfair_lock_lock(&self->_lock);
  self->_allowUseRelativeDayFormatting = formatting;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)allowUseRelativeDayFormatting
{
  os_unfair_lock_lock(&self->_lock);
  allowUseRelativeDayFormatting = self->_allowUseRelativeDayFormatting;
  os_unfair_lock_unlock(&self->_lock);
  return allowUseRelativeDayFormatting;
}

- (void)setAllowUseTime:(BOOL)time
{
  os_unfair_lock_lock(&self->_lock);
  self->_allowUseTime = time;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)allowUseTime
{
  os_unfair_lock_lock(&self->_lock);
  allowUseTime = self->_allowUseTime;
  os_unfair_lock_unlock(&self->_lock);
  return allowUseTime;
}

- (void)setPreset:(int64_t)preset
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_preset != preset)
  {
    self->_preset = preset;
    [(PLDateRangeFormatter *)self _handlePresetDidChange];
    [(PLDateRangeFormatter *)self _resetFormatters];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)preset
{
  os_unfair_lock_lock(&self->_lock);
  preset = self->_preset;
  os_unfair_lock_unlock(&self->_lock);
  return preset;
}

- (id)_stringFromDate:(id)date toDate:(id)toDate currentDate:(id)currentDate
{
  v128 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  toDateCopy = toDate;
  currentDateCopy = currentDate;
  os_unfair_lock_assert_owner(&self->_lock);
  localTimeZone = [(PLDateRangeFormatter *)self localTimeZone];
  secondsFromGMT = [localTimeZone secondsFromGMT];
  v12 = secondsFromGMT;
  if (self->_useLocalDates)
  {
    v13 = [currentDateCopy dateByAddingTimeInterval:secondsFromGMT];

    currentDateCopy = v13;
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v15 = self->_timeZone;
  [currentCalendar setTimeZone:v15];
  v105 = [currentCalendar components:124 fromDate:dateCopy];
  if (self->_omitYear)
  {
    v104 = 0;
    v16 = 1;
  }

  else if (self->_allowUseRelativeDayFormatting && self->_useRelativeDayFormatting)
  {
    v104 = [currentCalendar components:124 fromDate:currentDateCopy];
    year = [v104 year];
    v16 = year == [v105 year];
  }

  else
  {
    v16 = 0;
    v104 = 0;
  }

  v106 = [dateCopy dateByAddingTimeInterval:-v12];
  v18 = v106;
  if (!self->_useLocalDates)
  {
    v18 = dateCopy;
  }

  v103 = v18;
  if (!toDateCopy)
  {
    v19 = 0;
    goto LABEL_43;
  }

  v19 = [currentCalendar components:124 fromDate:toDateCopy];
  v20 = [toDateCopy dateByAddingTimeInterval:-v12];
  v21 = v20;
  if (self->_useLocalDates)
  {
    v22 = v20;
  }

  else
  {
    v22 = toDateCopy;
  }

  v101 = v22;
  if (self->_allowUseRelativeDayFormatting && self->_useRelativeDayFormatting)
  {
    v23 = [v105 day];
    if (v23 != [v19 day] && _DateIsInThePastNumberOfDays(dateCopy, 6, v15, localTimeZone, self->_useLocalDates) && _DateIsInThePastNumberOfDays(toDateCopy, 6, v15, localTimeZone, self->_useLocalDates))
    {
      v24 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _dayOfTheWeekIntervalFormat], dateCopy, toDateCopy);
      v25 = v24;
      if (!v24)
      {
        goto LABEL_86;
      }

      v26 = [v24 isEqualToString:&stru_1F0F06D80];

      if ((v26 & 1) != 0 || !_DateIsInThePastNumberOfDays(toDateCopy, 1, v15, localTimeZone, self->_useLocalDates))
      {
        goto LABEL_86;
      }

      _relativeDateFormatter = [(PLDateRangeFormatter *)self _relativeDateFormatter];
      v99 = [_relativeDateFormatter stringFromDate:v101];

      if (self->_useShortDaysInRanges && [v99 length] > 0xF)
      {
        goto LABEL_118;
      }

      *buf = 0;
      v117 = buf;
      v118 = 0x3032000000;
      v119 = __Block_byref_object_copy__101075;
      v120 = __Block_byref_object_dispose__101076;
      v121 = 0;
      v113[0] = MEMORY[0x1E69E9820];
      v113[1] = 3221225472;
      v113[2] = __59__PLDateRangeFormatter__stringFromDate_toDate_currentDate___block_invoke;
      v113[3] = &unk_1E7574E48;
      v96 = v25;
      v114 = v96;
      v115 = buf;
      [&unk_1F0FC0108 enumerateObjectsUsingBlock:v113];
      if ([*(v117 + 5) count] != 2)
      {
        v25 = v96;
LABEL_117:

        _Block_object_dispose(buf, 8);
LABEL_118:

        goto LABEL_86;
      }

      v28 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _dayOfTheWeekIntervalFormat], toDateCopy, toDateCopy);
      v94 = [v28 lowercaseStringWithLocale:self->_locale];

      v85 = [v94 length];
      v90 = [*(v117 + 5) objectAtIndexedSubscript:1];
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v30 = [v90 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      v91 = [v30 lowercaseStringWithLocale:self->_locale];

      v88 = [v96 lowercaseStringWithLocale:self->_locale];
      v83 = [v91 isEqualToString:v94];
      if (v83)
      {
        v32 = [v88 rangeOfString:v94 options:8 range:{objc_msgSend(v88, "length") - v85}];
        v33 = 0;
      }

      else
      {
        v81 = [*(v117 + 5) objectAtIndexedSubscript:0];
        whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v80 = [v81 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

        if ([v80 isEqualToString:v94])
        {
          v32 = [v88 rangeOfString:v94 options:8 range:{0, v85}];
        }

        else
        {
          v31 = 0;
          v32 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v33 = 1;
        v91 = v80;
      }

      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v87 = v91;
        v25 = v96;
LABEL_116:

        goto LABEL_117;
      }

      v25 = [v96 stringByReplacingCharactersInRange:v32 withString:{v31, v99}];

      if (!_DateIsInThePastNumberOfDays(dateCopy, 1, v15, localTimeZone, self->_useLocalDates))
      {
        v87 = v91;
        goto LABEL_116;
      }

      v98 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _dayOfTheWeekIntervalFormat], dateCopy, dateCopy);
      v82 = [*(v117 + 5) objectAtIndexedSubscript:v33];
      whitespaceCharacterSet3 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v87 = [v82 stringByTrimmingCharactersInSet:whitespaceCharacterSet3];

      if ([v87 isEqualToString:v98])
      {
        v72 = v98;
        v73 = [v98 length];
        if (v83)
        {
          v74 = 12;
        }

        else
        {
          v74 = 8;
        }

        v75 = [v25 rangeOfString:v98 options:v74 range:{0, v73, v80}];
        v93 = v76;
        v84 = v75;
        if (v75 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_114;
        }

        _relativeDateFormatter2 = [(PLDateRangeFormatter *)self _relativeDateFormatter];
        v78 = [_relativeDateFormatter2 stringFromDate:v103];

        v79 = [v25 stringByReplacingCharactersInRange:v84 withString:{v93, v78}];

        v25 = v79;
      }

      v72 = v98;
LABEL_114:

      goto LABEL_116;
    }
  }

  if (self->_yearOnly)
  {
    year2 = [v105 year];
    if (year2 != [v19 year])
    {
      v35 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _yearIntervalFormat], dateCopy, toDateCopy);
LABEL_85:
      v25 = v35;
LABEL_86:

      goto LABEL_87;
    }

    goto LABEL_42;
  }

  if (self->_monthOnly)
  {
    month = [v105 month];
    if (month != [v19 month])
    {
      v35 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _monthIntervalFormat], dateCopy, toDateCopy);
      goto LABEL_85;
    }

    goto LABEL_42;
  }

  if (self->_monthWithDelimiterAndYear)
  {
    month2 = [v105 month];
    if (month2 != [v19 month])
    {
      v38 = PLBackendGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "[PLDateRangeFormatter] From and to date months are not equal, which should not happen for month highlight. Cannot get attributed string with UDateIntervalFormat formatter", buf, 2u);
      }

      v35 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _monthYearIntervalFormat], dateCopy, toDateCopy);
      goto LABEL_85;
    }

    goto LABEL_42;
  }

  if (self->_monthWithYear)
  {
    month3 = [v105 month];
    if (month3 != [v19 month])
    {
      v35 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _monthYearIntervalFormat], dateCopy, toDateCopy);
      goto LABEL_85;
    }

    goto LABEL_42;
  }

  year3 = [v105 year];
  if (year3 != [v19 year] || (v64 = objc_msgSend(v105, "month"), v64 != objc_msgSend(v19, "month")))
  {
    if (v16)
    {
      _differentMonthDayNoYearIntervalFormat = [(PLDateRangeFormatter *)self _differentMonthDayNoYearIntervalFormat];
    }

    else
    {
      _differentMonthDayNoYearIntervalFormat = [(PLDateRangeFormatter *)self _differentMonthDayIntervalFormat];
    }

    goto LABEL_84;
  }

  v65 = [v105 day];
  if (v65 != [v19 day])
  {
    if (v16)
    {
      _differentMonthDayNoYearIntervalFormat = [(PLDateRangeFormatter *)self _monthDayNoYearIntervalFormat];
    }

    else
    {
      _differentMonthDayNoYearIntervalFormat = [(PLDateRangeFormatter *)self _monthDayIntervalFormat];
    }

LABEL_84:
    v35 = _FormattedDateWithUDateFormatter(_differentMonthDayNoYearIntervalFormat, dateCopy, toDateCopy);
    goto LABEL_85;
  }

LABEL_42:

LABEL_43:
  if (self->_yearOnly)
  {
    _yearDateFormatter = [(PLDateRangeFormatter *)self _yearDateFormatter];
    v41 = [_yearDateFormatter stringFromDate:dateCopy];
LABEL_47:
    v25 = v41;

    goto LABEL_87;
  }

  if (self->_monthOnly)
  {
    _yearDateFormatter = [(PLDateRangeFormatter *)self _monthDateFormatter];
    v41 = [_yearDateFormatter stringFromDate:dateCopy];
    goto LABEL_47;
  }

  if (!self->_monthWithDelimiterAndYear)
  {
    if (self->_monthWithYear)
    {
      _yearDateFormatter = [(PLDateRangeFormatter *)self _monthYearDateFormatter];
      v41 = [_yearDateFormatter stringFromDate:dateCopy];
      goto LABEL_47;
    }

    if (self->_allowUseRelativeDayFormatting && self->_useRelativeDayFormatting)
    {
      if (self->_allowUseTime && self->_useTime)
      {
        year4 = [v104 year];
        if (year4 == [v105 year])
        {
          month4 = [v104 month];
          if (month4 == [v105 month])
          {
            v58 = [v104 day];
            if (v58 == [v105 day])
            {
              if (toDateCopy)
              {
                [toDateCopy timeIntervalSinceDate:dateCopy];
                if (fabs(v59) > 900.0)
                {
LABEL_66:
                  v60 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _timeIntervalFormat], dateCopy, toDateCopy);
LABEL_89:
                  v25 = v60;
                  goto LABEL_87;
                }
              }

LABEL_88:
              v60 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _timeIntervalFormat], dateCopy, dateCopy);
              goto LABEL_89;
            }
          }
        }
      }

      if (_DateIsInThePastNumberOfDays(dateCopy, 1, v15, localTimeZone, self->_useLocalDates))
      {
        _yearDateFormatter = [(PLDateRangeFormatter *)self _relativeDateFormatter];
        v41 = [_yearDateFormatter stringFromDate:v103];
        goto LABEL_47;
      }

      if (_DateIsInThePastNumberOfDays(dateCopy, 6, v15, localTimeZone, self->_useLocalDates))
      {
        _yearDateFormatter = [(PLDateRangeFormatter *)self _dayOfTheWeekDateFormatter];
        v41 = [_yearDateFormatter stringFromDate:dateCopy];
        goto LABEL_47;
      }
    }

    else if (self->_timeOnly)
    {
      if (toDateCopy)
      {
        [toDateCopy timeIntervalSinceDate:dateCopy];
        if (fabs(v67) > 900.0)
        {
          goto LABEL_66;
        }
      }

      goto LABEL_88;
    }

    if (v16)
    {
      [(PLDateRangeFormatter *)self _sameDayNoYearDateFormatter];
    }

    else
    {
      [(PLDateRangeFormatter *)self _sameDayDateFormatter];
    }
    _yearDateFormatter = ;
    v41 = [_yearDateFormatter stringFromDate:dateCopy];
    goto LABEL_47;
  }

  _monthYearDateFormatter = [(PLDateRangeFormatter *)self _monthYearDateFormatter];
  v102 = [_monthYearDateFormatter _attributedStringWithFieldsFromDate:dateCopy];

  string = [v102 string];
  _monthDateFormatter = [(PLDateRangeFormatter *)self _monthDateFormatter];
  v92 = [_monthDateFormatter stringFromDate:dateCopy];

  v44 = [string localizedStandardRangeOfString:v92];
  v46 = v45;
  v47 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:2];
  v48 = *MEMORY[0x1E695D8F8];
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __59__PLDateRangeFormatter__stringFromDate_toDate_currentDate___block_invoke_74;
  v111[3] = &unk_1E7574E70;
  v95 = v47;
  v112 = v95;
  v86 = v46;
  v89 = v44;
  [v102 enumerateAttribute:v48 inRange:v44 options:v46 usingBlock:{0, v111}];
  v100 = [string mutableCopy];
  *buf = 0;
  v117 = buf;
  v118 = 0x2020000000;
  v119 = 0;
  if ([v95 count] == 1 && (objc_msgSend(v95, "anyObject"), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "isEqualToString:", @"M"), v49, v50))
  {
    [v100 insertString:@"" atIndex:v89 + v86];
    [v100 insertString:@"" atIndex:v89];
    *(v117 + 3) += 2;
  }

  else
  {
    v51 = [v102 length];
    v108[0] = MEMORY[0x1E69E9820];
    v108[1] = 3221225472;
    v108[2] = __59__PLDateRangeFormatter__stringFromDate_toDate_currentDate___block_invoke_2;
    v108[3] = &unk_1E7574E98;
    v109 = v100;
    v110 = buf;
    [v102 enumerateAttribute:v48 inRange:0 options:v51 usingBlock:{2, v108}];
  }

  v52 = [v100 componentsSeparatedByString:@""];
  v53 = [v52 count];
  v54 = v53 == *(v117 + 3) + 1;

  if (v54)
  {
    v55 = [v100 copy];
  }

  else
  {
    v61 = PLBackendGetLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
      *v122 = 138543874;
      v123 = string;
      v124 = 2114;
      v125 = localeIdentifier;
      v126 = 2114;
      v127 = v100;
      _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_FAULT, "[PLDateRangeFormatter _stringFromDate:toDate:currentDate:] Failed to retrieve back one or more delimiters we inserted in montYearString %{public}@ using locale: %{public}@. Resulting in %{public}@.", v122, 0x20u);
    }

    v55 = string;
  }

  v25 = v55;
  _Block_object_dispose(buf, 8);

LABEL_87:
  v68 = v25;

  return v25;
}

void __59__PLDateRangeFormatter__stringFromDate_toDate_currentDate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  obj = [*(a1 + 32) componentsSeparatedByString:a2];
  if ([obj count] == 2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    *a4 = 1;
  }
}

uint64_t __59__PLDateRangeFormatter__stringFromDate_toDate_currentDate___block_invoke_74(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

uint64_t __59__PLDateRangeFormatter__stringFromDate_toDate_currentDate___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 isEqualToString:@"M"];
  if (result)
  {
    [*(a1 + 32) insertString:@"" atIndex:a3 + a4];
    result = [*(a1 + 32) insertString:@"" atIndex:a3];
    *(*(*(a1 + 40) + 8) + 24) += 2;
  }

  return result;
}

- (UDateIntervalFormat)_yearIntervalFormat
{
  os_unfair_lock_assert_owner(&self->_lock);
  result = self->_yearIntervalFormat;
  if (!result)
  {
    result = _CreateUDateFormatter(self->_locale, self->_timeZone, @"y");
    self->_yearIntervalFormat = result;
  }

  return result;
}

- (UDateIntervalFormat)_monthYearIntervalFormat
{
  os_unfair_lock_assert_owner(&self->_lock);
  result = self->_monthYearIntervalFormat;
  if (!result)
  {
    _sameMonthTemplate = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ y", _sameMonthTemplate];
    self->_monthYearIntervalFormat = _CreateUDateFormatter(self->_locale, self->_timeZone, v5);

    return self->_monthYearIntervalFormat;
  }

  return result;
}

- (UDateIntervalFormat)_monthIntervalFormat
{
  os_unfair_lock_assert_owner(&self->_lock);
  result = self->_monthIntervalFormat;
  if (!result)
  {
    _sameMonthTemplate = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    self->_monthIntervalFormat = _CreateUDateFormatter(self->_locale, self->_timeZone, _sameMonthTemplate);

    return self->_monthIntervalFormat;
  }

  return result;
}

- (UDateIntervalFormat)_timeIntervalFormat
{
  os_unfair_lock_assert_owner(&self->_lock);
  result = self->_timeIntervalFormat;
  if (!result)
  {
    v4 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"jm" options:0 locale:self->_locale];
    self->_timeIntervalFormat = _CreateUDateFormatter(self->_locale, self->_timeZone, v4);

    return self->_timeIntervalFormat;
  }

  return result;
}

- (UDateIntervalFormat)_dayOfTheWeekIntervalFormat
{
  os_unfair_lock_assert_owner(&self->_lock);
  result = self->_dayOfTheWeekIntervalFormat;
  if (!result)
  {
    if (self->_useShortDaysInRanges)
    {
      v4 = @"EEE";
    }

    else
    {
      v4 = @"EEEE";
    }

    result = _CreateUDateFormatter(self->_locale, self->_timeZone, v4);
    self->_dayOfTheWeekIntervalFormat = result;
  }

  return result;
}

- (UDateIntervalFormat)_differentMonthDayNoYearIntervalFormat
{
  os_unfair_lock_assert_owner(&self->_lock);
  result = self->_differentMonthDayNoYearIntervalFormat;
  if (!result)
  {
    _sameMonthTemplate = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    _dayDifferentMonthsTemplate = [(PLDateRangeFormatter *)self _dayDifferentMonthsTemplate];
    locale = self->_locale;
    timeZone = self->_timeZone;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", _sameMonthTemplate, _dayDifferentMonthsTemplate];
    self->_differentMonthDayNoYearIntervalFormat = _CreateUDateFormatter(locale, timeZone, v8);

    return self->_differentMonthDayNoYearIntervalFormat;
  }

  return result;
}

- (UDateIntervalFormat)_differentMonthDayIntervalFormat
{
  os_unfair_lock_assert_owner(&self->_lock);
  result = self->_differentMonthDayIntervalFormat;
  if (!result)
  {
    _sameMonthTemplate = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    _dayDifferentMonthsTemplate = [(PLDateRangeFormatter *)self _dayDifferentMonthsTemplate];
    locale = self->_locale;
    timeZone = self->_timeZone;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@y", _sameMonthTemplate, _dayDifferentMonthsTemplate];
    self->_differentMonthDayIntervalFormat = _CreateUDateFormatter(locale, timeZone, v8);

    return self->_differentMonthDayIntervalFormat;
  }

  return result;
}

- (UDateIntervalFormat)_monthDayNoYearIntervalFormat
{
  os_unfair_lock_assert_owner(&self->_lock);
  result = self->_monthDayNoYearIntervalFormat;
  if (!result)
  {
    _sameMonthTemplate = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    _dayTemplate = [(PLDateRangeFormatter *)self _dayTemplate];
    locale = self->_locale;
    timeZone = self->_timeZone;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", _sameMonthTemplate, _dayTemplate];
    self->_monthDayNoYearIntervalFormat = _CreateUDateFormatter(locale, timeZone, v8);

    return self->_monthDayNoYearIntervalFormat;
  }

  return result;
}

- (UDateIntervalFormat)_monthDayIntervalFormat
{
  os_unfair_lock_assert_owner(&self->_lock);
  result = self->_monthDayIntervalFormat;
  if (!result)
  {
    _sameMonthTemplate = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    _dayTemplate = [(PLDateRangeFormatter *)self _dayTemplate];
    locale = self->_locale;
    timeZone = self->_timeZone;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@y", _sameMonthTemplate, _dayTemplate];
    self->_monthDayIntervalFormat = _CreateUDateFormatter(locale, timeZone, v8);

    return self->_monthDayIntervalFormat;
  }

  return result;
}

- (id)_relativeDateFormatter
{
  os_unfair_lock_assert_owner(&self->_lock);
  relativeDateFormatter = self->_relativeDateFormatter;
  if (!relativeDateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [(NSDateFormatter *)v4 setDateStyle:2];
    [(NSDateFormatter *)v4 setTimeStyle:0];
    v5 = self->_allowUseRelativeDayFormatting && self->_useRelativeDayFormatting;
    [(NSDateFormatter *)v4 setDoesRelativeDateFormatting:v5];
    [(NSDateFormatter *)v4 setLocale:self->_locale];
    [(NSDateFormatter *)v4 setFormattingContext:4];
    v6 = self->_relativeDateFormatter;
    self->_relativeDateFormatter = v4;

    relativeDateFormatter = self->_relativeDateFormatter;
  }

  return relativeDateFormatter;
}

- (id)_monthYearDateFormatter
{
  os_unfair_lock_assert_owner(&self->_lock);
  monthYearDateFormatter = self->_monthYearDateFormatter;
  if (!monthYearDateFormatter)
  {
    _sameMonthTemplate = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ y", _sameMonthTemplate];
    v6 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:v5 options:0 locale:self->_locale];
    v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [(NSDateFormatter *)v7 setTimeStyle:0];
    [(NSDateFormatter *)v7 setDateFormat:v6];
    [(NSDateFormatter *)v7 setLocale:self->_locale];
    [(NSDateFormatter *)v7 setTimeZone:self->_timeZone];
    [(NSDateFormatter *)v7 setFormattingContext:4];
    v8 = self->_monthYearDateFormatter;
    self->_monthYearDateFormatter = v7;

    monthYearDateFormatter = self->_monthYearDateFormatter;
  }

  return monthYearDateFormatter;
}

- (id)_monthDateFormatter
{
  os_unfair_lock_assert_owner(&self->_lock);
  monthDateFormatter = self->_monthDateFormatter;
  if (!monthDateFormatter)
  {
    _sameMonthTemplate = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    v5 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:_sameMonthTemplate options:0 locale:self->_locale];
    v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [(NSDateFormatter *)v6 setTimeStyle:0];
    [(NSDateFormatter *)v6 setDateFormat:v5];
    [(NSDateFormatter *)v6 setLocale:self->_locale];
    [(NSDateFormatter *)v6 setTimeZone:self->_timeZone];
    [(NSDateFormatter *)v6 setFormattingContext:4];
    v7 = self->_monthDateFormatter;
    self->_monthDateFormatter = v6;

    monthDateFormatter = self->_monthDateFormatter;
  }

  return monthDateFormatter;
}

- (id)_yearDateFormatter
{
  os_unfair_lock_assert_owner(&self->_lock);
  yearDateFormatter = self->_yearDateFormatter;
  if (!yearDateFormatter)
  {
    v4 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"y" options:0 locale:self->_locale];
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [(NSDateFormatter *)v5 setTimeStyle:0];
    [(NSDateFormatter *)v5 setDateFormat:v4];
    [(NSDateFormatter *)v5 setLocale:self->_locale];
    [(NSDateFormatter *)v5 setTimeZone:self->_timeZone];
    [(NSDateFormatter *)v5 setFormattingContext:4];
    v6 = self->_yearDateFormatter;
    self->_yearDateFormatter = v5;

    yearDateFormatter = self->_yearDateFormatter;
  }

  return yearDateFormatter;
}

- (id)_dayOfTheWeekDateFormatter
{
  os_unfair_lock_assert_owner(&self->_lock);
  dayOfTheWeekDateFormatter = self->_dayOfTheWeekDateFormatter;
  if (!dayOfTheWeekDateFormatter)
  {
    v4 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"EEEE" options:0 locale:self->_locale];
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [(NSDateFormatter *)v5 setDateStyle:0];
    [(NSDateFormatter *)v5 setTimeStyle:0];
    [(NSDateFormatter *)v5 setDateFormat:v4];
    [(NSDateFormatter *)v5 setLocale:self->_locale];
    [(NSDateFormatter *)v5 setTimeZone:self->_timeZone];
    [(NSDateFormatter *)v5 setFormattingContext:4];
    v6 = self->_dayOfTheWeekDateFormatter;
    self->_dayOfTheWeekDateFormatter = v5;

    dayOfTheWeekDateFormatter = self->_dayOfTheWeekDateFormatter;
  }

  return dayOfTheWeekDateFormatter;
}

- (id)_sameDayNoYearDateFormatter
{
  os_unfair_lock_assert_owner(&self->_lock);
  sameDayNoYearDateFormatter = self->_sameDayNoYearDateFormatter;
  if (!sameDayNoYearDateFormatter)
  {
    _sameMonthTemplate = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    _dayTemplate = [(PLDateRangeFormatter *)self _dayTemplate];
    v6 = MEMORY[0x1E696AB78];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", _sameMonthTemplate, _dayTemplate];
    v8 = [v6 dateFormatFromTemplate:v7 options:0 locale:self->_locale];

    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [(NSDateFormatter *)v9 setTimeStyle:0];
    [(NSDateFormatter *)v9 setDateFormat:v8];
    [(NSDateFormatter *)v9 setLocale:self->_locale];
    [(NSDateFormatter *)v9 setTimeZone:self->_timeZone];
    [(NSDateFormatter *)v9 setFormattingContext:4];
    v10 = self->_sameDayNoYearDateFormatter;
    self->_sameDayNoYearDateFormatter = v9;

    sameDayNoYearDateFormatter = self->_sameDayNoYearDateFormatter;
  }

  return sameDayNoYearDateFormatter;
}

- (id)_sameDayDateFormatter
{
  os_unfair_lock_assert_owner(&self->_lock);
  sameDayDateFormatter = self->_sameDayDateFormatter;
  if (!sameDayDateFormatter)
  {
    _sameMonthTemplate = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    _dayTemplate = [(PLDateRangeFormatter *)self _dayTemplate];
    v6 = MEMORY[0x1E696AB78];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@y", _sameMonthTemplate, _dayTemplate];
    v8 = [v6 dateFormatFromTemplate:v7 options:0 locale:self->_locale];

    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [(NSDateFormatter *)v9 setTimeStyle:0];
    [(NSDateFormatter *)v9 setDateFormat:v8];
    [(NSDateFormatter *)v9 setLocale:self->_locale];
    [(NSDateFormatter *)v9 setTimeZone:self->_timeZone];
    [(NSDateFormatter *)v9 setFormattingContext:4];
    v10 = self->_sameDayDateFormatter;
    self->_sameDayDateFormatter = v9;

    sameDayDateFormatter = self->_sameDayDateFormatter;
  }

  return sameDayDateFormatter;
}

- (id)_dayDifferentMonthsTemplate
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = &stru_1F0F06D80;
  if (self->_includeDayNumbers && self->_includeDayNumbersWhenMonthsDiffer)
  {
    v3 = @"d";
  }

  return v3;
}

- (id)_dayTemplate
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_includeDayNumbers)
  {
    v3 = @"d";
  }

  else
  {
    v3 = &stru_1F0F06D80;
  }

  return v3;
}

- (id)_sameMonthTemplate
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_useShortMonths)
  {
    v3 = @"MMM";
  }

  else
  {
    v3 = @"MMMM";
  }

  return v3;
}

- (void)_resetFormatters
{
  sameDayDateFormatter = self->_sameDayDateFormatter;
  self->_sameDayDateFormatter = 0;

  sameDayNoYearDateFormatter = self->_sameDayNoYearDateFormatter;
  self->_sameDayNoYearDateFormatter = 0;

  dayOfTheWeekDateFormatter = self->_dayOfTheWeekDateFormatter;
  self->_dayOfTheWeekDateFormatter = 0;

  yearDateFormatter = self->_yearDateFormatter;
  self->_yearDateFormatter = 0;

  monthDateFormatter = self->_monthDateFormatter;
  self->_monthDateFormatter = 0;

  monthYearDateFormatter = self->_monthYearDateFormatter;
  self->_monthYearDateFormatter = 0;

  relativeDateFormatter = self->_relativeDateFormatter;
  self->_relativeDateFormatter = 0;

  if (self->_monthDayIntervalFormat)
  {
    udtitvfmt_close();
    self->_monthDayIntervalFormat = 0;
  }

  if (self->_monthDayNoYearIntervalFormat)
  {
    udtitvfmt_close();
    self->_monthDayNoYearIntervalFormat = 0;
  }

  if (self->_differentMonthDayIntervalFormat)
  {
    udtitvfmt_close();
    self->_differentMonthDayIntervalFormat = 0;
  }

  if (self->_differentMonthDayNoYearIntervalFormat)
  {
    udtitvfmt_close();
    self->_differentMonthDayNoYearIntervalFormat = 0;
  }

  if (self->_dayOfTheWeekIntervalFormat)
  {
    udtitvfmt_close();
    self->_dayOfTheWeekIntervalFormat = 0;
  }

  if (self->_timeIntervalFormat)
  {
    udtitvfmt_close();
    self->_timeIntervalFormat = 0;
  }

  if (self->_monthIntervalFormat)
  {
    udtitvfmt_close();
    self->_monthIntervalFormat = 0;
  }

  if (self->_monthYearIntervalFormat)
  {
    udtitvfmt_close();
    self->_monthYearIntervalFormat = 0;
  }

  if (self->_yearIntervalFormat)
  {
    udtitvfmt_close();
    self->_yearIntervalFormat = 0;
  }
}

- (void)_handleUseLocalDatesDidChange
{
  if (self->_useLocalDates)
  {
    [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  }

  else
  {
    [(PLDateRangeFormatter *)self localTimeZone];
  }
  v3 = ;
  timeZone = self->_timeZone;
  self->_timeZone = v3;
}

- (void)_handlePresetDidChange
{
  preset = self->_preset;
  if (preset <= 4)
  {
    if (preset <= 1)
    {
      if (preset)
      {
        if (preset != 1)
        {
          return;
        }

        *&self->_useShortDaysInRanges = 257;
        *&self->_includeDayNumbers = 16843009;
        *&self->_yearOnly = 0x1000000;
      }

      else
      {
        *&self->_useShortDaysInRanges = 257;
        *&self->_includeDayNumbers = 16843009;
        *&self->_yearOnly = 0;
      }
    }

    else
    {
      if (preset == 2)
      {
        *&self->_includeDayNumbers = 257;
        self->_useRelativeDayFormatting = 1;
        *&self->_useShortMonths = 0;
        goto LABEL_24;
      }

      if (preset != 3)
      {
        *&self->_useShortDaysInRanges = 0;
        *&self->_includeDayNumbers = 0;
        self->_yearOnly = 1;
        *&self->_monthOnly = 0;
LABEL_24:
        self->_monthWithYear = 0;
        return;
      }

      *&self->_includeDayNumbers = 257;
      *&self->_useRelativeDayFormatting = 0;
    }

    *&self->_monthWithDelimiterAndYear = 0;
    return;
  }

  if (preset > 7)
  {
    switch(preset)
    {
      case 8:
        *&self->_includeDayNumbers = 0;
        *&self->_timeOnly = 0x10000;
        break;
      case 9:
        *&self->_includeDayNumbers = 0x1000000;
        *&self->_useShortDaysInRanges = 0x1000000000000;
        break;
      case 10:
        *&self->_includeDayNumbers = 0x1000000;
        *&self->_useShortDaysInRanges = 0;
        *&self->_monthOnly = 0;
        self->_monthWithYear = 1;
        break;
    }
  }

  else
  {
    if (preset == 5)
    {
      *&self->_useShortMonths = 0;
      *&self->_includeDayNumbers = 0;
      self->_monthOnly = 1;
    }

    else
    {
      if (preset != 6)
      {
        *&self->_includeDayNumbers = 0;
        *&self->_timeOnly = 1;
        return;
      }

      *&self->_includeDayNumbers = 0x100000001000000;
    }

    *&self->_timeOnly = 0;
  }
}

- (void)_significantTimeChange:(id)change
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PLDateRangeFormatterChangedNotification" object:self];
}

- (void)_systemTimeZoneDidChange:(id)change
{
  os_unfair_lock_lock(&self->_lock);
  [(PLDateRangeFormatter *)self _resetFormatters];
  os_unfair_lock_unlock(&self->_lock);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PLDateRangeFormatterChangedNotification" object:self];
}

- (void)_currentLocaleDidChange:(id)change
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  [(PLDateRangeFormatter *)self setLocale:currentLocale];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PLDateRangeFormatterChangedNotification" object:self];
}

- (void)dealloc
{
  [(PLDateRangeFormatter *)self _resetFormatters];
  v3.receiver = self;
  v3.super_class = PLDateRangeFormatter;
  [(PLDateRangeFormatter *)&v3 dealloc];
}

- (PLDateRangeFormatter)initWithPreset:(int64_t)preset
{
  v9.receiver = self;
  v9.super_class = PLDateRangeFormatter;
  v4 = [(PLDateRangeFormatter *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_preset = preset;
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    locale = v5->_locale;
    v5->_locale = currentLocale;

    *&v5->_allowUseTime = 257;
    [(PLDateRangeFormatter *)v5 _handlePresetDidChange];
    [(PLDateRangeFormatter *)v5 _handleUseLocalDatesDidChange];
  }

  return v5;
}

+ (id)autoupdatingFormatterWithPreset:(int64_t)preset
{
  v3 = [[self alloc] initWithPreset:preset];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v3 selector:sel__currentLocaleDidChange_ name:*MEMORY[0x1E695D8F0] object:0];
  [defaultCenter addObserver:v3 selector:sel__systemTimeZoneDidChange_ name:*MEMORY[0x1E695DA68] object:0];
  [defaultCenter addObserver:v3 selector:sel__significantTimeChange_ name:@"UIApplicationSignificantTimeChangeNotification" object:0];

  return v3;
}

@end