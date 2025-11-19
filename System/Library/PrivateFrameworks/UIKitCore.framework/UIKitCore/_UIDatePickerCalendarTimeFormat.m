@interface _UIDatePickerCalendarTimeFormat
+ (_UIDatePickerCalendarTimeFormat)formatWithCalendar:(id)a3 locale:(id)a4 followsSystemHourCycle:(BOOL)a5;
- (_UIDatePickerCalendarTimeFormat)initWithCalendar:(id)a3 locale:(id)a4 followsSystemHourCycle:(BOOL)a5 forceDoubleDigitHours:(BOOL)a6 displaysTimeZone:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localizedTimeStringWithHours:(unint64_t)a3 minutes:(unint64_t)a4 isPM:(BOOL)a5 ranges:(id *)a6;
- (id)withDisplaysTimeZone:(BOOL)a3;
- (id)withForceDoubleDigitHours:(BOOL)a3;
- (id)withTimeZone:(id)a3;
@end

@implementation _UIDatePickerCalendarTimeFormat

+ (_UIDatePickerCalendarTimeFormat)formatWithCalendar:(id)a3 locale:(id)a4 followsSystemHourCycle:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [objc_alloc(objc_opt_class()) initWithCalendar:v8 locale:v7 followsSystemHourCycle:v5 forceDoubleDigitHours:0 displaysTimeZone:0];

  return v9;
}

- (_UIDatePickerCalendarTimeFormat)initWithCalendar:(id)a3 locale:(id)a4 followsSystemHourCycle:(BOOL)a5 forceDoubleDigitHours:(BOOL)a6 displaysTimeZone:(BOOL)a7
{
  v7 = a7;
  v96 = a6;
  v8 = a5;
  v127 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v117.receiver = self;
  v117.super_class = _UIDatePickerCalendarTimeFormat;
  v14 = [(_UIDatePickerCalendarTimeFormat *)&v117 init];
  if (!v14)
  {
    goto LABEL_72;
  }

  v15 = objc_opt_new();
  [v15 setCalendar:v12];
  [v15 setLocale:v13];
  v16 = [v12 timeZone];
  v97 = v15;
  [v15 setTimeZone:v16];

  v92 = a2;
  if (v7)
  {
    v17 = [v12 timeZone];
    timeZone = v14->_timeZone;
    v14->_timeZone = v17;

    objc_storeStrong(&v14->_locale, a4);
    v14->_timeZoneReferenceDate = [MEMORY[0x1E695DF00] now];
    v19 = @"jm zzz";
  }

  else
  {
    v19 = @"jm";
  }

  v94 = v8;
  v20 = _UIDatePickerDateFormatFromTemplate(v19, v13, v8);
  [v15 setDateFormat:v20];

  v14->_displaysTimeZone = v7;
  v21 = [v12 copy];
  [v21 setLocale:v13];
  v22 = [v21 AMSymbol];
  AMSymbol = v14->_AMSymbol;
  v14->_AMSymbol = v22;

  v95 = v21;
  v24 = [v21 PMSymbol];
  PMSymbol = v14->_PMSymbol;
  v98 = v14;
  v14->_PMSymbol = v24;

  v101 = [v15 dateFormat];
  v26 = [MEMORY[0x1E696AB78] _componentsFromFormatString:?];
  v27 = objc_opt_new();
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v28 = v26;
  v29 = [v28 countByEnumeratingWithState:&v113 objects:v126 count:16];
  v30 = *MEMORY[0x1E695D900];
  v105 = v28;
  if (v29)
  {
    v31 = v29;
    v99 = v13;
    v100 = v12;
    obj = 0;
    v104 = 0;
    v108 = 0;
    v32 = *v114;
    v110 = *MEMORY[0x1E695D910];
    v109 = *MEMORY[0x1E695D908];
    v107 = -1;
    v102 = 0x7FFFFFFFFFFFFFFFLL;
    v106 = 0x7FFFFFFFFFFFFFFFLL;
    v103 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v33 = 0;
      v112 = v31;
      do
      {
        if (*v114 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v34 = *(*(&v113 + 1) + 8 * v33);
        v35 = [v34 objectForKeyedSubscript:{v30, v92}];
        v36 = [v35 BOOLValue];

        if (v36)
        {
          [v27 addObject:v34];
          goto LABEL_35;
        }

        v37 = v30;
        v38 = v27;
        v39 = [v34 objectForKeyedSubscript:v110];
        v40 = [v34 objectForKeyedSubscript:v109];
        v41 = [v40 rangeValue];
        v43 = v42;

        v44 = [v39 characterAtIndex:0];
        v45 = v44;
        if (v44 <= 103)
        {
          switch(v44)
          {
            case 'H':
              v48 = v39;

              [v38 addObject:v34];
              obj = v48;
              v27 = v38;
              v108 = v43;
              v106 = v41;
              v47 = 2;
LABEL_30:
              v107 = v47;
              break;
            case 'K':
              v51 = v39;

              [v38 addObject:v34];
              v107 = 0;
              v108 = v43;
              obj = v51;
              v27 = v38;
              v106 = v41;
              break;
            case 'a':
              v27 = v38;
              [v38 addObject:v34];
              v103 = v41;
              break;
            default:
              goto LABEL_25;
          }
        }

        else
        {
          if (v44 <= 108)
          {
            if (v44 == 104)
            {
              v50 = v39;

              [v38 addObject:v34];
              obj = v50;
              v28 = v105;
              v27 = v38;
              v108 = v43;
              v106 = v41;
              v47 = 1;
            }

            else
            {
              if (v44 != 107)
              {
                goto LABEL_25;
              }

              v46 = v39;

              [v38 addObject:v34];
              obj = v46;
              v27 = v38;
              v108 = v43;
              v106 = v41;
              v47 = 3;
            }

            goto LABEL_30;
          }

          if (v44 == 109)
          {
            v27 = v38;
            [v38 addObject:v34];
            v104 = v43;
            v102 = v41;
          }

          else
          {
            if (v44 != 122)
            {
LABEL_25:
              if (os_variant_has_internal_diagnostics())
              {
                v52 = __UIFaultDebugAssertLog();
                v30 = v37;
                if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
                {
                  *buf = 67109890;
                  v119 = v45;
                  v120 = 2112;
                  v121 = v101;
                  v122 = 2112;
                  v123 = v100;
                  v124 = 2112;
                  v125 = v99;
                  _os_log_fault_impl(&dword_188A29000, v52, OS_LOG_TYPE_FAULT, "Internal UIKit inconsistency: found an unknown character (%C) in a date format. dateFormat: %@; calendar: %@; locale: %@", buf, 0x26u);
                }
              }

              else
              {
                v49 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1110) + 8);
                v30 = v37;
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109890;
                  v119 = v45;
                  v120 = 2112;
                  v121 = v101;
                  v122 = 2112;
                  v123 = v100;
                  v124 = 2112;
                  v125 = v99;
                  _os_log_impl(&dword_188A29000, v49, OS_LOG_TYPE_ERROR, "Internal UIKit inconsistency: found an unknown character (%C) in a date format. dateFormat: %@; calendar: %@; locale: %@", buf, 0x26u);
                }
              }

              v27 = v38;
              goto LABEL_34;
            }

            v27 = v38;
            [v38 addObject:v34];
          }
        }

        v30 = v37;
LABEL_34:

        v31 = v112;
LABEL_35:
        ++v33;
      }

      while (v31 != v33);
      v53 = [v28 countByEnumeratingWithState:&v113 objects:v126 count:16];
      v31 = v53;
      if (!v53)
      {
        v54 = v102 == 0x7FFFFFFFFFFFFFFFLL;
        v13 = v99;
        v12 = v100;
        goto LABEL_43;
      }
    }
  }

  obj = 0;
  v107 = -1;
  v108 = 0;
  v106 = 0x7FFFFFFFFFFFFFFFLL;
  v54 = 1;
  v103 = 0x7FFFFFFFFFFFFFFFLL;
  v104 = 0;
LABEL_43:

  v55 = [v27 firstObject];
  v56 = [v55 objectForKeyedSubscript:v30];
  v57 = [v56 BOOLValue];

  if (v57)
  {
    v58 = [v27 firstObject];
    v59 = __121___UIDatePickerCalendarTimeFormat_initWithCalendar_locale_followsSystemHourCycle_forceDoubleDigitHours_displaysTimeZone___block_invoke(v58, 1);

    if (v59)
    {
      [v27 replaceObjectAtIndex:0 withObject:v59];
      v60 = v98;
      v98->_hasLeadingLiteral = 1;
    }

    else
    {
      [v27 removeObjectAtIndex:0];
      v60 = v98;
    }

LABEL_51:

    goto LABEL_52;
  }

  v61 = [v27 lastObject];
  v62 = [v61 objectForKeyedSubscript:v30];
  v63 = [v62 BOOLValue];

  v60 = v98;
  if (v63)
  {
    v64 = [v27 lastObject];
    v59 = __121___UIDatePickerCalendarTimeFormat_initWithCalendar_locale_followsSystemHourCycle_forceDoubleDigitHours_displaysTimeZone___block_invoke(v64, 0);

    if (v59)
    {
      [v27 replaceObjectAtIndex:objc_msgSend(v27 withObject:{"count") - 1, v59}];
      v98->_hasTrailingLiteral = 1;
    }

    else
    {
      [v27 removeLastObject];
    }

    goto LABEL_51;
  }

LABEL_52:
  v65 = [MEMORY[0x1E696AB78] _formatStringFromComponents:{v27, v92}];
  timeFormat = v60->_timeFormat;
  v60->_timeFormat = v65;

  objc_storeStrong(&v60->_hourFormat, obj);
  v67 = _UIDatePickerDateFormatFromTemplate(obj, v13, v94);
  v68 = _UIDateFormatStripOtherFormatCharacters(v67, [obj characterAtIndex:0]);

  v69 = [v68 length];
  if (v69 > [obj length])
  {
    v70 = v60->_timeFormat;
    v71 = v68;
    v72 = [(NSString *)v70 stringByReplacingOccurrencesOfString:@"'" withString:&stru_1EFB14550];
    v73 = [v71 stringByReplacingOccurrencesOfString:@"'" withString:&stru_1EFB14550];

    v74 = [v72 rangeOfString:v73];
    v60 = v98;

    if (v74 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_storeStrong(&v98->_extendedHoursFormat, v68);
    }
  }

  v75 = v107;
  if (v107 == -1)
  {
    v86 = [MEMORY[0x1E696AAA8] currentHandler];
    [v86 handleFailureInMethod:v93 object:v60 file:@"_UIDatePickerCalendarTimeFormat.m" lineNumber:245 description:@"Internal UIKit inconsistency: unable to find the clock format."];

    v75 = -1;
  }

  v76 = v106;
  v77 = v96;
  if (v106 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v87 = [MEMORY[0x1E696AAA8] currentHandler];
    [v87 handleFailureInMethod:v93 object:v60 file:@"_UIDatePickerCalendarTimeFormat.m" lineNumber:246 description:@"Internal UIKit inconsistency: unable to find an hour format."];

    v76 = 0x7FFFFFFFFFFFFFFFLL;
    v75 = v107;
    if (!v54)
    {
      goto LABEL_59;
    }

LABEL_74:
    v88 = [MEMORY[0x1E696AAA8] currentHandler];
    [v88 handleFailureInMethod:v93 object:v60 file:@"_UIDatePickerCalendarTimeFormat.m" lineNumber:247 description:@"Internal UIKit inconsistency: unable to find a minute format."];

    v76 = v106;
    v75 = v107;
    goto LABEL_59;
  }

  if (v54)
  {
    goto LABEL_74;
  }

LABEL_59:
  if (v103 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v60->_clockLayout = 0;
  }

  else
  {
    if (v103 >= v76)
    {
      v78 = 1;
    }

    else
    {
      v78 = 2;
    }

    v60->_clockLayout = v78;
  }

  v60->_wantsDoubleDigitHours = v108 > 1;
  v60->_forceDoubleDigitHours = v96;
  v60->_clock = v75;
  if (os_variant_has_internal_diagnostics())
  {
    if (v108 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v89 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109890;
        v119 = v108;
        v120 = 2112;
        v121 = v101;
        v122 = 2112;
        v123 = v12;
        v124 = 2112;
        v125 = v13;
        _os_log_fault_impl(&dword_188A29000, v89, OS_LOG_TYPE_FAULT, "Date format is reported with %d digits for the hour. We can't handle this. dateFormat: %@; calendar: %@; locale: %@", buf, 0x26u);
      }

      v77 = v96;
    }
  }

  else if (v108 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v90 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49E0A8) + 8);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109890;
      v119 = v108;
      v120 = 2112;
      v121 = v101;
      v122 = 2112;
      v123 = v12;
      v124 = 2112;
      v125 = v13;
      _os_log_impl(&dword_188A29000, v90, OS_LOG_TYPE_ERROR, "Date format is reported with %d digits for the hour. We can't handle this. dateFormat: %@; calendar: %@; locale: %@", buf, 0x26u);
    }
  }

  v79 = objc_opt_new();
  [(NSNumberFormatter *)v79 setLocale:v13];
  [(NSNumberFormatter *)v79 setMaximumFractionDigits:0];
  [(NSNumberFormatter *)v79 setMinimumIntegerDigits:v108];
  objc_storeStrong(&v98->_strictHourFormatter, v79);
  if (v77 && [(NSNumberFormatter *)v79 minimumIntegerDigits]<= 1)
  {
    v80 = [(NSNumberFormatter *)v79 copy];

    [(NSNumberFormatter *)v80 setMinimumIntegerDigits:2];
    v79 = v80;
  }

  hourFormatter = v98->_hourFormatter;
  v98->_hourFormatter = v79;
  v82 = v79;

  v14 = v98;
  v83 = objc_opt_new();
  [(NSNumberFormatter *)v83 setLocale:v13];
  [(NSNumberFormatter *)v83 setMinimumIntegerDigits:v104];
  [(NSNumberFormatter *)v83 setMaximumFractionDigits:0];
  minuteFormatter = v98->_minuteFormatter;
  v98->_minuteFormatter = v83;

LABEL_72:
  return v14;
}

- (id)localizedTimeStringWithHours:(unint64_t)a3 minutes:(unint64_t)a4 isPM:(BOOL)a5 ranges:(id *)a6
{
  v88 = *MEMORY[0x1E69E9840];
  v7 = 0x1E696A000uLL;
  v8 = objc_opt_new();
  [MEMORY[0x1E696AB78] _componentsFromFormatString:self->_timeFormat];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v86 = 0u;
  v9 = [obj countByEnumeratingWithState:&v83 objects:v87 count:16];
  v80 = self;
  if (!v9)
  {
    v72 = 0;
    v39 = 0;
    v67 = 0x7FFFFFFFFFFFFFFFLL;
    v68 = 0;
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_41;
  }

  v10 = v9;
  v78 = 0;
  v72 = 0;
  v68 = 0;
  v11 = *v84;
  v12 = *MEMORY[0x1E695D900];
  v76 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = *MEMORY[0x1E695D910];
  v73 = 0x7FFFFFFFFFFFFFFFLL;
  v67 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v14 = 0;
    do
    {
      if (*v84 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v83 + 1) + 8 * v14);
      v16 = [v15 objectForKeyedSubscript:v12];
      v17 = [v16 BOOLValue];

      v18 = [v15 objectForKeyedSubscript:v13];
      v19 = v18;
      if (v17)
      {
        [v8 appendString:v18];
        goto LABEL_21;
      }

      v20 = [v18 characterAtIndex:0];
      v21 = v20;
      if (v20 <= 103)
      {
        if (v20 == 72 || v20 == 75)
        {
          goto LABEL_18;
        }

        if (v20 != 97)
        {
          goto LABEL_30;
        }

        if (a5)
        {
          [(_UIDatePickerCalendarTimeFormat *)self PMSymbol];
        }

        else
        {
          [(_UIDatePickerCalendarTimeFormat *)self AMSymbol];
        }
        v37 = ;
        if (v37)
        {
          v67 = [v8 length];
          v68 = [v37 length];
          [v8 appendString:v37];
        }
      }

      else
      {
        if (v20 <= 108)
        {
          if (v20 == 104 || v20 == 107)
          {
LABEL_18:
            v22 = [(_UIDatePickerCalendarTimeFormat *)self hourFormatter];
            v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
            v24 = [v22 stringFromNumber:v23];

            v76 = [v8 length];
            v78 = [v24 length];
            [v8 appendString:v24];
          }

          else
          {
LABEL_30:
            v24 = [MEMORY[0x1E696AAA8] currentHandler];
            [v24 handleFailureInMethod:a2 object:v80 file:@"_UIDatePickerCalendarTimeFormat.m" lineNumber:336 description:{@"Internal UIKit inconsistency: unknown character in format string: %C; dateFormat: %@", v21, v80->_timeFormat}];
          }

LABEL_20:
          self = v80;
          goto LABEL_21;
        }

        if (v20 == 109)
        {
          v34 = [(_UIDatePickerCalendarTimeFormat *)self minuteFormatter];
          v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
          v36 = [v34 stringFromNumber:v35];

          self = v80;
          v73 = [v8 length];
          v72 = [v36 length];
          [v8 appendString:v36];
        }

        else
        {
          if (v20 != 122)
          {
            goto LABEL_30;
          }

          if ([(_UIDatePickerCalendarTimeFormat *)self displaysTimeZone])
          {
            [(_UIDatePickerCalendarTimeFormat *)self timeZone];
            v26 = v25 = self;

            if (v26)
            {
              v27 = [(_UIDatePickerCalendarTimeFormat *)v25 timeZone];
              v28 = [(_UIDatePickerCalendarTimeFormat *)v25 timeZoneReferenceDate];
              v29 = [v27 isDaylightSavingTimeForDate:v28];
              v30 = 3;
              if (!v29)
              {
                v30 = 1;
              }

              v66 = v30;

              v31 = [(_UIDatePickerCalendarTimeFormat *)v25 timeZone];
              v32 = [(_UIDatePickerCalendarTimeFormat *)v25 locale];
              v33 = [v31 localizedName:v66 locale:v32];

              [v8 appendString:v33];
              goto LABEL_20;
            }

            self = v25;
          }
        }
      }

LABEL_21:

      ++v14;
    }

    while (v10 != v14);
    v38 = [obj countByEnumeratingWithState:&v83 objects:v87 count:16];
    v10 = v38;
  }

  while (v38);
  v40 = v76;
  v39 = v78;
  v41 = v73;
  v7 = 0x1E696A000;
  if (v76 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_41:
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:v80 file:@"_UIDatePickerCalendarTimeFormat.m" lineNumber:341 description:@"Internal UIKit inconsistency: unable to replace hour."];

    v40 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v41 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v64 = [MEMORY[0x1E696AAA8] currentHandler];
    [v64 handleFailureInMethod:a2 object:v80 file:@"_UIDatePickerCalendarTimeFormat.m" lineNumber:342 description:@"Internal UIKit inconsistency: unable to replace minutes."];
  }

  v43 = v40;
  v44 = v39;
  if (v80->_extendedHoursFormat)
  {
    v74 = v41;
    v77 = v40;
    v79 = v39;
    v45 = [v8 substringWithRange:{v40, v39}];
    hourFormat = v80->_hourFormat;
    v47 = v80->_extendedHoursFormat;
    v48 = hourFormat;
    v49 = v45;
    v50 = [(NSString *)v47 length];
    v81 = v49;
    v51 = [v49 length];
    v52 = v51 - [(NSString *)v48 length]+ v50;
    v53 = [*(v7 + 3424) stringWithCapacity:v52];
    if (v52)
    {
      v54 = 0;
      for (i = 0; i < v52; ++i)
      {
        v56 = [(NSString *)v47 characterAtIndex:i];
        if (v56 == 39)
        {
          v54 ^= 1u;
        }

        else
        {
          v57 = v56;
          if ((v54 & 1) != 0 || ([(NSString *)v47 substringWithRange:i, [(NSString *)v48 length]], v58 = objc_claimAutoreleasedReturnValue(), v59 = [(NSString *)v48 isEqual:v58], v58, !v59))
          {
            [v53 appendFormat:@"%C", v57];
          }

          else
          {
            [v53 appendString:v81];
            v60 = [v81 length];
            v54 = 0;
            i = v60 + i - [(NSString *)v48 length];
          }
        }
      }
    }

    v61 = [v8 rangeOfString:v53];
    v40 = v77;
    v39 = v79;
    if (v61 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v43 = v77;
    }

    else
    {
      v43 = v61;
    }

    if (v61 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v44 = v79;
    }

    else
    {
      v44 = v62;
    }

    v41 = v74;
  }

  if (a6)
  {
    a6->var0.location = v40;
    a6->var0.length = v39;
    a6->var1.location = v41;
    a6->var1.length = v72;
    a6->var2.location = v67;
    a6->var2.length = v68;
    a6->var3.location = v40 + v39;
    a6->var3.length = v41 - (v40 + v39);
    a6->var4.location = v43;
    a6->var4.length = v44;
  }

  return v8;
}

- (id)withForceDoubleDigitHours:(BOOL)a3
{
  v3 = a3;
  if ([(_UIDatePickerCalendarTimeFormat *)self forceDoubleDigitHours]== a3)
  {
    v5 = self;
  }

  else
  {
    v5 = [(_UIDatePickerCalendarTimeFormat *)self copy];
    v5->_forceDoubleDigitHours = v3;
    v6 = [(_UIDatePickerCalendarTimeFormat *)v5 strictHourFormatter];
    v7 = [v6 minimumIntegerDigits];
    if (v3)
    {

      if (v7 > 1)
      {
        goto LABEL_8;
      }

      v6 = [(_UIDatePickerCalendarTimeFormat *)v5 hourFormatter];
      [v6 setMinimumIntegerDigits:2];
    }

    else
    {
      v8 = [(_UIDatePickerCalendarTimeFormat *)v5 hourFormatter];
      [v8 setMinimumIntegerDigits:v7];
    }
  }

LABEL_8:

  return v5;
}

- (id)withDisplaysTimeZone:(BOOL)a3
{
  if ([(_UIDatePickerCalendarTimeFormat *)self displaysTimeZone]== a3)
  {
    v5 = self;
  }

  else
  {
    v5 = [(_UIDatePickerCalendarTimeFormat *)self copy];
    v5->_displaysTimeZone = a3;
  }

  return v5;
}

- (id)withTimeZone:(id)a3
{
  v5 = a3;
  v6 = [(_UIDatePickerCalendarTimeFormat *)self timeZone];
  v7 = [v6 isEqual:v5];

  if (v7)
  {
    v8 = self;
  }

  else
  {
    v8 = [(_UIDatePickerCalendarTimeFormat *)self copy];
    objc_storeStrong(&v8->_timeZone, a3);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(_UIDatePickerCalendarTimeFormat *)self timeFormat];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  v7 = [(_UIDatePickerCalendarTimeFormat *)self hourFormat];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  v9 = [(_UIDatePickerCalendarTimeFormat *)self AMSymbol];
  v10 = *(v4 + 32);
  *(v4 + 32) = v9;

  v11 = [(_UIDatePickerCalendarTimeFormat *)self PMSymbol];
  v12 = *(v4 + 40);
  *(v4 + 40) = v11;

  *(v4 + 8) = [(_UIDatePickerCalendarTimeFormat *)self wantsDoubleDigitHours];
  *(v4 + 9) = [(_UIDatePickerCalendarTimeFormat *)self forceDoubleDigitHours];
  *(v4 + 48) = [(_UIDatePickerCalendarTimeFormat *)self clock];
  *(v4 + 56) = [(_UIDatePickerCalendarTimeFormat *)self clockLayout];
  *(v4 + 10) = [(_UIDatePickerCalendarTimeFormat *)self hasLeadingLiteral];
  *(v4 + 11) = [(_UIDatePickerCalendarTimeFormat *)self hasTrailingLiteral];
  v13 = [(_UIDatePickerCalendarTimeFormat *)self hourFormatter];
  v14 = [v13 copy];
  v15 = *(v4 + 64);
  *(v4 + 64) = v14;

  v16 = [(_UIDatePickerCalendarTimeFormat *)self minuteFormatter];
  v17 = [v16 copy];
  v18 = *(v4 + 72);
  *(v4 + 72) = v17;

  v19 = [(_UIDatePickerCalendarTimeFormat *)self strictHourFormatter];
  v20 = [v19 copy];
  v21 = *(v4 + 88);
  *(v4 + 88) = v20;

  v22 = [(_UIDatePickerCalendarTimeFormat *)self timeZone];
  v23 = *(v4 + 104);
  *(v4 + 104) = v22;

  v24 = [(_UIDatePickerCalendarTimeFormat *)self locale];
  v25 = *(v4 + 112);
  *(v4 + 112) = v24;

  *(v4 + 12) = [(_UIDatePickerCalendarTimeFormat *)self displaysTimeZone];
  *(v4 + 96) = [(_UIDatePickerCalendarTimeFormat *)self timeZoneReferenceDate];
  v26 = [(_UIDatePickerCalendarTimeFormat *)self extendedHoursFormat];
  v27 = *(v4 + 80);
  *(v4 + 80) = v26;

  return v4;
}

@end