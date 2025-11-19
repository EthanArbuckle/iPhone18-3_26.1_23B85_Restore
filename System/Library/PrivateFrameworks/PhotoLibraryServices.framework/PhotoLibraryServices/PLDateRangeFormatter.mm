@interface PLDateRangeFormatter
+ (id)autoupdatingFormatterWithPreset:(int64_t)a3;
- (BOOL)allowUseRelativeDayFormatting;
- (BOOL)allowUseTime;
- (BOOL)useLocalDates;
- (NSLocale)locale;
- (PLDateRangeFormatter)initWithPreset:(int64_t)a3;
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
- (id)_stringFromDate:(id)a3 toDate:(id)a4 currentDate:(id)a5;
- (id)_yearDateFormatter;
- (id)stringFromDate:(id)a3 toDate:(id)a4;
- (id)stringFromDate:(id)a3 toDate:(id)a4 currentDate:(id)a5;
- (int64_t)preset;
- (void)_currentLocaleDidChange:(id)a3;
- (void)_handlePresetDidChange;
- (void)_handleUseLocalDatesDidChange;
- (void)_resetFormatters;
- (void)_significantTimeChange:(id)a3;
- (void)_systemTimeZoneDidChange:(id)a3;
- (void)dealloc;
- (void)setAllowUseRelativeDayFormatting:(BOOL)a3;
- (void)setAllowUseTime:(BOOL)a3;
- (void)setLocale:(id)a3;
- (void)setPreset:(int64_t)a3;
- (void)setUseLocalDates:(BOOL)a3;
@end

@implementation PLDateRangeFormatter

- (id)stringFromDate:(id)a3 toDate:(id)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  v10 = [(PLDateRangeFormatter *)self stringFromDate:v8 toDate:v7 currentDate:v9];

  return v10;
}

- (id)stringFromDate:(id)a3 toDate:(id)a4 currentDate:(id)a5
{
  v5 = &stru_1F0F06D80;
  if (a3 && a5)
  {
    v9 = a5;
    v10 = a4;
    v11 = a3;
    os_unfair_lock_lock(&self->_lock);
    v5 = [(PLDateRangeFormatter *)self _stringFromDate:v11 toDate:v10 currentDate:v9];

    os_unfair_lock_unlock(&self->_lock);
  }

  return v5;
}

- (void)setUseLocalDates:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_useLocalDates != v3)
  {
    self->_useLocalDates = v3;
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

- (void)setLocale:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PLDateRangeFormatter.m" lineNumber:1092 description:{@"Invalid parameter not satisfying: %@", @"locale"}];
  }

  os_unfair_lock_lock(&self->_lock);
  if (([(NSLocale *)self->_locale isEqual:v7]& 1) == 0)
  {
    objc_storeStrong(&self->_locale, a3);
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

- (void)setAllowUseRelativeDayFormatting:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_allowUseRelativeDayFormatting = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)allowUseRelativeDayFormatting
{
  os_unfair_lock_lock(&self->_lock);
  allowUseRelativeDayFormatting = self->_allowUseRelativeDayFormatting;
  os_unfair_lock_unlock(&self->_lock);
  return allowUseRelativeDayFormatting;
}

- (void)setAllowUseTime:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_allowUseTime = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)allowUseTime
{
  os_unfair_lock_lock(&self->_lock);
  allowUseTime = self->_allowUseTime;
  os_unfair_lock_unlock(&self->_lock);
  return allowUseTime;
}

- (void)setPreset:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_preset != a3)
  {
    self->_preset = a3;
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

- (id)_stringFromDate:(id)a3 toDate:(id)a4 currentDate:(id)a5
{
  v128 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_assert_owner(&self->_lock);
  v107 = [(PLDateRangeFormatter *)self localTimeZone];
  v11 = [v107 secondsFromGMT];
  v12 = v11;
  if (self->_useLocalDates)
  {
    v13 = [v10 dateByAddingTimeInterval:v11];

    v10 = v13;
  }

  v14 = [MEMORY[0x1E695DEE8] currentCalendar];
  v15 = self->_timeZone;
  [v14 setTimeZone:v15];
  v105 = [v14 components:124 fromDate:v8];
  if (self->_omitYear)
  {
    v104 = 0;
    v16 = 1;
  }

  else if (self->_allowUseRelativeDayFormatting && self->_useRelativeDayFormatting)
  {
    v104 = [v14 components:124 fromDate:v10];
    v17 = [v104 year];
    v16 = v17 == [v105 year];
  }

  else
  {
    v16 = 0;
    v104 = 0;
  }

  v106 = [v8 dateByAddingTimeInterval:-v12];
  v18 = v106;
  if (!self->_useLocalDates)
  {
    v18 = v8;
  }

  v103 = v18;
  if (!v9)
  {
    v19 = 0;
    goto LABEL_43;
  }

  v19 = [v14 components:124 fromDate:v9];
  v20 = [v9 dateByAddingTimeInterval:-v12];
  v21 = v20;
  if (self->_useLocalDates)
  {
    v22 = v20;
  }

  else
  {
    v22 = v9;
  }

  v101 = v22;
  if (self->_allowUseRelativeDayFormatting && self->_useRelativeDayFormatting)
  {
    v23 = [v105 day];
    if (v23 != [v19 day] && _DateIsInThePastNumberOfDays(v8, 6, v15, v107, self->_useLocalDates) && _DateIsInThePastNumberOfDays(v9, 6, v15, v107, self->_useLocalDates))
    {
      v24 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _dayOfTheWeekIntervalFormat], v8, v9);
      v25 = v24;
      if (!v24)
      {
        goto LABEL_86;
      }

      v26 = [v24 isEqualToString:&stru_1F0F06D80];

      if ((v26 & 1) != 0 || !_DateIsInThePastNumberOfDays(v9, 1, v15, v107, self->_useLocalDates))
      {
        goto LABEL_86;
      }

      v27 = [(PLDateRangeFormatter *)self _relativeDateFormatter];
      v99 = [v27 stringFromDate:v101];

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

      v28 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _dayOfTheWeekIntervalFormat], v9, v9);
      v94 = [v28 lowercaseStringWithLocale:self->_locale];

      v85 = [v94 length];
      v90 = [*(v117 + 5) objectAtIndexedSubscript:1];
      v29 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v30 = [v90 stringByTrimmingCharactersInSet:v29];

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
        v70 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v80 = [v81 stringByTrimmingCharactersInSet:v70];

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

      if (!_DateIsInThePastNumberOfDays(v8, 1, v15, v107, self->_useLocalDates))
      {
        v87 = v91;
        goto LABEL_116;
      }

      v98 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _dayOfTheWeekIntervalFormat], v8, v8);
      v82 = [*(v117 + 5) objectAtIndexedSubscript:v33];
      v71 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v87 = [v82 stringByTrimmingCharactersInSet:v71];

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

        v77 = [(PLDateRangeFormatter *)self _relativeDateFormatter];
        v78 = [v77 stringFromDate:v103];

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
    v34 = [v105 year];
    if (v34 != [v19 year])
    {
      v35 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _yearIntervalFormat], v8, v9);
LABEL_85:
      v25 = v35;
LABEL_86:

      goto LABEL_87;
    }

    goto LABEL_42;
  }

  if (self->_monthOnly)
  {
    v36 = [v105 month];
    if (v36 != [v19 month])
    {
      v35 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _monthIntervalFormat], v8, v9);
      goto LABEL_85;
    }

    goto LABEL_42;
  }

  if (self->_monthWithDelimiterAndYear)
  {
    v37 = [v105 month];
    if (v37 != [v19 month])
    {
      v38 = PLBackendGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "[PLDateRangeFormatter] From and to date months are not equal, which should not happen for month highlight. Cannot get attributed string with UDateIntervalFormat formatter", buf, 2u);
      }

      v35 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _monthYearIntervalFormat], v8, v9);
      goto LABEL_85;
    }

    goto LABEL_42;
  }

  if (self->_monthWithYear)
  {
    v39 = [v105 month];
    if (v39 != [v19 month])
    {
      v35 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _monthYearIntervalFormat], v8, v9);
      goto LABEL_85;
    }

    goto LABEL_42;
  }

  v63 = [v105 year];
  if (v63 != [v19 year] || (v64 = objc_msgSend(v105, "month"), v64 != objc_msgSend(v19, "month")))
  {
    if (v16)
    {
      v66 = [(PLDateRangeFormatter *)self _differentMonthDayNoYearIntervalFormat];
    }

    else
    {
      v66 = [(PLDateRangeFormatter *)self _differentMonthDayIntervalFormat];
    }

    goto LABEL_84;
  }

  v65 = [v105 day];
  if (v65 != [v19 day])
  {
    if (v16)
    {
      v66 = [(PLDateRangeFormatter *)self _monthDayNoYearIntervalFormat];
    }

    else
    {
      v66 = [(PLDateRangeFormatter *)self _monthDayIntervalFormat];
    }

LABEL_84:
    v35 = _FormattedDateWithUDateFormatter(v66, v8, v9);
    goto LABEL_85;
  }

LABEL_42:

LABEL_43:
  if (self->_yearOnly)
  {
    v40 = [(PLDateRangeFormatter *)self _yearDateFormatter];
    v41 = [v40 stringFromDate:v8];
LABEL_47:
    v25 = v41;

    goto LABEL_87;
  }

  if (self->_monthOnly)
  {
    v40 = [(PLDateRangeFormatter *)self _monthDateFormatter];
    v41 = [v40 stringFromDate:v8];
    goto LABEL_47;
  }

  if (!self->_monthWithDelimiterAndYear)
  {
    if (self->_monthWithYear)
    {
      v40 = [(PLDateRangeFormatter *)self _monthYearDateFormatter];
      v41 = [v40 stringFromDate:v8];
      goto LABEL_47;
    }

    if (self->_allowUseRelativeDayFormatting && self->_useRelativeDayFormatting)
    {
      if (self->_allowUseTime && self->_useTime)
      {
        v56 = [v104 year];
        if (v56 == [v105 year])
        {
          v57 = [v104 month];
          if (v57 == [v105 month])
          {
            v58 = [v104 day];
            if (v58 == [v105 day])
            {
              if (v9)
              {
                [v9 timeIntervalSinceDate:v8];
                if (fabs(v59) > 900.0)
                {
LABEL_66:
                  v60 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _timeIntervalFormat], v8, v9);
LABEL_89:
                  v25 = v60;
                  goto LABEL_87;
                }
              }

LABEL_88:
              v60 = _FormattedDateWithUDateFormatter([(PLDateRangeFormatter *)self _timeIntervalFormat], v8, v8);
              goto LABEL_89;
            }
          }
        }
      }

      if (_DateIsInThePastNumberOfDays(v8, 1, v15, v107, self->_useLocalDates))
      {
        v40 = [(PLDateRangeFormatter *)self _relativeDateFormatter];
        v41 = [v40 stringFromDate:v103];
        goto LABEL_47;
      }

      if (_DateIsInThePastNumberOfDays(v8, 6, v15, v107, self->_useLocalDates))
      {
        v40 = [(PLDateRangeFormatter *)self _dayOfTheWeekDateFormatter];
        v41 = [v40 stringFromDate:v8];
        goto LABEL_47;
      }
    }

    else if (self->_timeOnly)
    {
      if (v9)
      {
        [v9 timeIntervalSinceDate:v8];
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
    v40 = ;
    v41 = [v40 stringFromDate:v8];
    goto LABEL_47;
  }

  v42 = [(PLDateRangeFormatter *)self _monthYearDateFormatter];
  v102 = [v42 _attributedStringWithFieldsFromDate:v8];

  v97 = [v102 string];
  v43 = [(PLDateRangeFormatter *)self _monthDateFormatter];
  v92 = [v43 stringFromDate:v8];

  v44 = [v97 localizedStandardRangeOfString:v92];
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
  v100 = [v97 mutableCopy];
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
      v62 = [(NSLocale *)self->_locale localeIdentifier];
      *v122 = 138543874;
      v123 = v97;
      v124 = 2114;
      v125 = v62;
      v126 = 2114;
      v127 = v100;
      _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_FAULT, "[PLDateRangeFormatter _stringFromDate:toDate:currentDate:] Failed to retrieve back one or more delimiters we inserted in montYearString %{public}@ using locale: %{public}@. Resulting in %{public}@.", v122, 0x20u);
    }

    v55 = v97;
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
    v4 = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ y", v4];
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
    v4 = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    self->_monthIntervalFormat = _CreateUDateFormatter(self->_locale, self->_timeZone, v4);

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
    v4 = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    v5 = [(PLDateRangeFormatter *)self _dayDifferentMonthsTemplate];
    locale = self->_locale;
    timeZone = self->_timeZone;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v4, v5];
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
    v4 = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    v5 = [(PLDateRangeFormatter *)self _dayDifferentMonthsTemplate];
    locale = self->_locale;
    timeZone = self->_timeZone;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@y", v4, v5];
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
    v4 = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    v5 = [(PLDateRangeFormatter *)self _dayTemplate];
    locale = self->_locale;
    timeZone = self->_timeZone;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v4, v5];
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
    v4 = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    v5 = [(PLDateRangeFormatter *)self _dayTemplate];
    locale = self->_locale;
    timeZone = self->_timeZone;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@y", v4, v5];
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
    v4 = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ y", v4];
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
    v4 = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    v5 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:v4 options:0 locale:self->_locale];
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
    v4 = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    v5 = [(PLDateRangeFormatter *)self _dayTemplate];
    v6 = MEMORY[0x1E696AB78];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v4, v5];
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
    v4 = [(PLDateRangeFormatter *)self _sameMonthTemplate];
    v5 = [(PLDateRangeFormatter *)self _dayTemplate];
    v6 = MEMORY[0x1E696AB78];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@y", v4, v5];
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

- (void)_significantTimeChange:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"PLDateRangeFormatterChangedNotification" object:self];
}

- (void)_systemTimeZoneDidChange:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(PLDateRangeFormatter *)self _resetFormatters];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"PLDateRangeFormatterChangedNotification" object:self];
}

- (void)_currentLocaleDidChange:(id)a3
{
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  [(PLDateRangeFormatter *)self setLocale:v4];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"PLDateRangeFormatterChangedNotification" object:self];
}

- (void)dealloc
{
  [(PLDateRangeFormatter *)self _resetFormatters];
  v3.receiver = self;
  v3.super_class = PLDateRangeFormatter;
  [(PLDateRangeFormatter *)&v3 dealloc];
}

- (PLDateRangeFormatter)initWithPreset:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = PLDateRangeFormatter;
  v4 = [(PLDateRangeFormatter *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_preset = a3;
    v6 = [MEMORY[0x1E695DF58] currentLocale];
    locale = v5->_locale;
    v5->_locale = v6;

    *&v5->_allowUseTime = 257;
    [(PLDateRangeFormatter *)v5 _handlePresetDidChange];
    [(PLDateRangeFormatter *)v5 _handleUseLocalDatesDidChange];
  }

  return v5;
}

+ (id)autoupdatingFormatterWithPreset:(int64_t)a3
{
  v3 = [[a1 alloc] initWithPreset:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:v3 selector:sel__currentLocaleDidChange_ name:*MEMORY[0x1E695D8F0] object:0];
  [v4 addObserver:v3 selector:sel__systemTimeZoneDidChange_ name:*MEMORY[0x1E695DA68] object:0];
  [v4 addObserver:v3 selector:sel__significantTimeChange_ name:@"UIApplicationSignificantTimeChangeNotification" object:0];

  return v3;
}

@end