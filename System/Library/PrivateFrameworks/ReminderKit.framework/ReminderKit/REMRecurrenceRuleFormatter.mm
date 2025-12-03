@interface REMRecurrenceRuleFormatter
+ (id)_andDaysOfWeekString:(id)string;
+ (id)_byDayOfWeekOrdinalStrings;
+ (id)_customByDayItemFormatLocalizedString;
+ (id)_customDayCombinationDescription:(id)description;
+ (id)_dayOfMonthAsString:(int64_t)string;
+ (id)_daysOfWeek;
+ (id)_localizedOfMonthStringForMonth:(id)month;
+ (id)_numberedWeekDayString:(id)string;
+ (id)_orDaysOfWeekString:(id)string;
+ (id)_readableMonths;
+ (id)_readableWeekDays;
+ (id)_stringForByDayOfWeek:(id)week setPositions:(id)positions;
+ (id)_stringForDayOfWeek:(int64_t)week;
+ (id)_stringForMonthNumber:(int64_t)number;
+ (id)_weekDayPositionAsString:(int64_t)string;
+ (id)localizedDescriptionForRepeatType:(int64_t)type;
+ (id)naturalLanguageDescriptionForFrequency:(int64_t)frequency interval:(int64_t)interval daysOfTheWeek:(id)week daysOfTheMonth:(id)month monthsOfTheYear:(id)year weeksOfTheYear:(id)theYear daysOfTheYear:(id)ofTheYear setPositions:(id)self0 end:(id)self1 withStartDate:(id)self2;
+ (id)naturalLanguageDescriptionForRecurrenceRule:(id)rule withStartDate:(id)date;
+ (id)shortNaturalLanguageDescriptionForFrequency:(int64_t)frequency interval:(int64_t)interval daysOfTheWeek:(id)week daysOfTheMonth:(id)month monthsOfTheYear:(id)year setPositions:(id)positions date:(id)date timeZone:(id)self0 lowercase:(BOOL)self1;
+ (id)shortNaturalLanguageDescriptionForRecurrenceRule:(id)rule date:(id)date timeZone:(id)zone lowercase:(BOOL)lowercase;
+ (int64_t)daysTypeForDayArray:(id)array;
+ (int64_t)repeatTypeForFrequency:(int64_t)frequency interval:(int64_t)interval daysOfTheWeek:(id)week daysOfTheMonth:(id)month monthsOfTheYear:(id)year weeksOfTheYear:(id)theYear daysOfTheYear:(id)ofTheYear setPositions:(id)self0 end:(id)self1 recurrenceDate:(id)self2 recurrenceTimeZone:(id)self3 getRepeatEnd:(id *)self4;
+ (int64_t)repeatTypeForRecurrenceRules:(id)rules recurrenceDate:(id)date recurrenceTimeZone:(id)zone getRepeatEnd:(id *)end;
@end

@implementation REMRecurrenceRuleFormatter

+ (id)naturalLanguageDescriptionForRecurrenceRule:(id)rule withStartDate:(id)date
{
  dateCopy = date;
  ruleCopy = rule;
  frequency = [ruleCopy frequency];
  interval = [ruleCopy interval];
  daysOfTheWeek = [ruleCopy daysOfTheWeek];
  daysOfTheMonth = [ruleCopy daysOfTheMonth];
  monthsOfTheYear = [ruleCopy monthsOfTheYear];
  weeksOfTheYear = [ruleCopy weeksOfTheYear];
  daysOfTheYear = [ruleCopy daysOfTheYear];
  setPositions = [ruleCopy setPositions];
  recurrenceEnd = [ruleCopy recurrenceEnd];

  v15 = [self naturalLanguageDescriptionForFrequency:frequency interval:interval daysOfTheWeek:daysOfTheWeek daysOfTheMonth:daysOfTheMonth monthsOfTheYear:monthsOfTheYear weeksOfTheYear:weeksOfTheYear daysOfTheYear:daysOfTheYear setPositions:setPositions end:recurrenceEnd withStartDate:dateCopy];

  return v15;
}

+ (id)naturalLanguageDescriptionForFrequency:(int64_t)frequency interval:(int64_t)interval daysOfTheWeek:(id)week daysOfTheMonth:(id)month monthsOfTheYear:(id)year weeksOfTheYear:(id)theYear daysOfTheYear:(id)ofTheYear setPositions:(id)self0 end:(id)self1 withStartDate:(id)self2
{
  weekCopy = week;
  monthCopy = month;
  yearCopy = year;
  theYearCopy = theYear;
  ofTheYearCopy = ofTheYear;
  positionsCopy = positions;
  endCopy = end;
  dateCopy = date;
  v139 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v134 = dateCopy;
  v136 = [currentCalendar components:536 fromDate:dateCopy];

  if (!naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableWeekDayArray)
  {
    _readableWeekDays = [self _readableWeekDays];
    v24 = naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableWeekDayArray;
    naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableWeekDayArray = _readableWeekDays;
  }

  if (!naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableMonthArray)
  {
    _readableMonths = [self _readableMonths];
    v26 = naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableMonthArray;
    naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableMonthArray = _readableMonths;
  }

  v117 = &stru_1F0D67F00;
  v28 = monthCopy;
  if (frequency <= 1)
  {
    v29 = weekCopy;
    if (!frequency)
    {
      v30 = MEMORY[0x1E696AEC0];
      intervalCopy10 = interval;
      if (interval == 1)
      {
        v32 = @"Event will occur every day.";
        goto LABEL_93;
      }

      v58 = @"Event will occur every %lu days.";
      goto LABEL_133;
    }

    if (frequency != 1)
    {
      goto LABEL_153;
    }

    if (!weekCopy || [weekCopy count] == 1 && (objc_msgSend(weekCopy, "objectAtIndex:", 0), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "dayOfTheWeek"), v35 = objc_msgSend(v136, "weekday"), v33, v34 == v35))
    {
      v30 = MEMORY[0x1E696AEC0];
      intervalCopy10 = interval;
      if (interval == 1)
      {
        v32 = @"Event will occur every week.";
        goto LABEL_93;
      }

      v58 = @"Event will occur every %lu weeks.";
LABEL_133:
      v77 = [v139 localizedStringForKey:v58 value:&stru_1F0D67F00 table:@"PluralLocalizable"];
      v117 = intervalCopy10;
      goto LABEL_134;
    }

    intervalCopy5 = interval;
    if (interval != 1)
    {
      v74 = MEMORY[0x1E696AEC0];
      v75 = @"Event will occur every %lu weeks on %@.";
      goto LABEL_77;
    }

    v60 = [objc_opt_class() daysTypeForDayArray:weekCopy];
    v117 = 0;
    if (v60 > 1)
    {
      if (v60 == 2)
      {
        v61 = @"Event will occur every weekday.";
LABEL_131:
        v117 = [v139 localizedStringForKey:v61 value:&stru_1F0D67F00 table:0];
        goto LABEL_153;
      }

      if (v60 != 3)
      {
        goto LABEL_153;
      }
    }

    else if (v60)
    {
      if (v60 != 1)
      {
        goto LABEL_153;
      }

      v61 = @"Event will occur every day.";
      goto LABEL_131;
    }

    v90 = MEMORY[0x1E696AEC0];
    v77 = [v139 localizedStringForKey:@"Event will occur every week on %@." value:&stru_1F0D67F00 table:0];
    v78 = [objc_opt_class() _andDaysOfWeekString:weekCopy];
    v79 = [v90 stringWithFormat:v77, v78];
    goto LABEL_100;
  }

  v140 = yearCopy;
  v29 = weekCopy;
  if (frequency == 2)
  {
    if ([yearCopy count])
    {
      if (![yearCopy count])
      {
        goto LABEL_153;
      }

      goto LABEL_20;
    }

    if ([weekCopy count])
    {
      if ([positionsCopy count])
      {
        v68 = objc_opt_class();
        v69 = [positionsCopy objectAtIndex:0];
        v70 = [v68 _weekDayPositionAsString:{objc_msgSend(v69, "integerValue")}];

        v71 = MEMORY[0x1E696AEC0];
        if (interval == 1)
        {
          v72 = [v139 localizedStringForKey:@"Event will occur every month on the %@ %@." value:&stru_1F0D67F00 table:0];
          v73 = [objc_opt_class() _orDaysOfWeekString:weekCopy];
          [v71 localizedStringWithFormat:v72, v70, v73, v119];
        }

        else
        {
          v72 = [v139 localizedStringForKey:@"Event will occur every %lu months on the %@ %@." value:&stru_1F0D67F00 table:@"PluralLocalizable"];
          v73 = [objc_opt_class() _orDaysOfWeekString:weekCopy];
          [v71 localizedStringWithFormat:v72, interval, v70, v73];
        }
        v117 = ;

        goto LABEL_153;
      }

      v92 = [weekCopy objectAtIndex:0];
      weekNumber = [v92 weekNumber];

      v74 = MEMORY[0x1E696AEC0];
      if (weekNumber)
      {
        intervalCopy5 = interval;
        if (interval == 1)
        {
          v94 = @"Event will occur every month on the %@-XX01.";
          v95 = @"Event will occur every month on the %@.";
LABEL_143:
          v77 = [v139 localizedStringForKey:v94 value:v95 table:0];
          v78 = [objc_opt_class() _andDaysOfWeekString:weekCopy];
          [v74 localizedStringWithFormat:v77, v78, v118];
          goto LABEL_79;
        }

        v75 = @"Event will occur every %lu months on the %@-XX01.";
        v76 = @"Event will occur every %lu months on the %@.";
LABEL_78:
        v77 = [v139 localizedStringForKey:v75 value:v76 table:@"PluralLocalizable"];
        v78 = [objc_opt_class() _andDaysOfWeekString:v29];
        [v74 localizedStringWithFormat:v77, intervalCopy5, v78];
        v79 = LABEL_79:;
LABEL_100:
        v117 = v79;

LABEL_135:
        goto LABEL_153;
      }

      intervalCopy5 = interval;
      if (interval == 1)
      {
        v94 = @"Event will occur every month on %@.";
        v95 = &stru_1F0D67F00;
        goto LABEL_143;
      }

      v75 = @"Event will occur every %lu months on %@.";
LABEL_77:
      v76 = &stru_1F0D67F00;
      goto LABEL_78;
    }

    v83 = [v28 count];
    if (!v28)
    {
      goto LABEL_91;
    }

    v84 = v83;
    v142 = v83;
    if (v83 == 1)
    {
      v85 = [v28 objectAtIndex:0];
      integerValue = [v85 integerValue];
      v87 = endCopy;
      v88 = [v136 day];

      v89 = integerValue == v88;
      v84 = 1;
      endCopy = v87;
      if (v89)
      {
LABEL_91:
        v30 = MEMORY[0x1E696AEC0];
        intervalCopy10 = interval;
        if (interval == 1)
        {
          v32 = @"Event will occur every month.";
          goto LABEL_93;
        }

        v58 = @"Event will occur every %lu months.";
        goto LABEL_133;
      }
    }

    v123 = endCopy;
    v127 = v28;
    string = [MEMORY[0x1E696AD60] string];
    intervalCopy8 = interval;
    if (!v84)
    {
LABEL_125:
      v110 = MEMORY[0x1E696AEC0];
      if (intervalCopy8 == 1)
      {
        v111 = [v139 localizedStringForKey:@"Event will occur every month on the %@." value:&stru_1F0D67F00 table:0];
        v112 = string;
        [v110 localizedStringWithFormat:v111, string, v118];
      }

      else
      {
        v111 = [v139 localizedStringForKey:@"Event will occur every %lu months on the %@." value:&stru_1F0D67F00 table:@"PluralLocalizable"];
        v112 = string;
        [v110 localizedStringWithFormat:v111, intervalCopy8, string];
      }
      v117 = ;
      v29 = weekCopy;
      v28 = v127;
      endCopy = v123;

      goto LABEL_153;
    }

    v97 = 0;
    v125 = ofTheYearCopy;
    while (1)
    {
      if (v97)
      {
        v98 = v97 + 1;
        v99 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v100 = v99;
        if (v97 + 1 >= v84)
        {
          if (v84 == 2)
          {
            v101 = [v99 localizedStringForKey:@"Recurrence rule last item format for a list with two terms.  The last part of a list: X and Y. Here %@ is 'Y'" value:@" and %@" table:0];
            v103 = 0;
            v102 = 1;
            v104 = endCopy;
            v105 = v29;
            v129 = v101;
            v130 = v100;
          }

          else
          {
            v101 = [v99 localizedStringForKey:@"Recurrence rule last item format for a list with three or more items.  The last part of a list: X value:Y table:{and Z. Here %@ is 'Z'", @", and %@", 0}];
            v102 = 0;
            v103 = 1;
            v104 = endCopy;
            v105 = v29;
            v128 = v100;
            v121 = v101;
          }
        }

        else
        {
          v101 = [v99 localizedStringForKey:@" value:%@" table:{&stru_1F0D67F00, 0}];
          v102 = 0;
          v103 = 0;
          v104 = v100;
          v105 = v101;
        }

        v107 = objc_opt_class();
        v108 = [v127 objectAtIndex:v97];
        v109 = [v107 _dayOfMonthAsString:{objc_msgSend(v108, "integerValue")}];
        [string appendFormat:v101, v109];

        if (v103)
        {
        }

        yearCopy = v140;
        ofTheYearCopy = v125;
        if (v102)
        {
        }

        endCopy = v104;
        v29 = v105;
        intervalCopy8 = interval;
        if (v98 >= v142)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v106 = objc_opt_class();
        v104 = [v127 objectAtIndex:0];
        v105 = [v106 _dayOfMonthAsString:{objc_msgSend(v104, "integerValue")}];
        [string appendString:v105];
        v98 = 1;
      }

      v104 = endCopy;
      v105 = v29;
LABEL_124:
      v29 = v105;
      endCopy = v104;
      v97 = v98;
      v84 = v142;
      if (v98 == v142)
      {
        goto LABEL_125;
      }
    }
  }

  if (frequency != 3)
  {
    if (frequency != 4)
    {
      goto LABEL_153;
    }

    v30 = MEMORY[0x1E696AEC0];
    intervalCopy10 = interval;
    if (interval == 1)
    {
      v32 = @"Event will occur every hour.";
LABEL_93:
      v77 = [v139 localizedStringForKey:v32 value:&stru_1F0D67F00 table:0];
LABEL_134:
      v117 = [v30 localizedStringWithFormat:v77, v117];
      goto LABEL_135;
    }

    v58 = @"Event will occur every %lu hours.";
    goto LABEL_133;
  }

LABEL_20:
  if ([yearCopy count] == 1)
  {
    frequency = [yearCopy objectAtIndex:0];
    integerValue2 = [frequency integerValue];
    v37 = integerValue2 == [v136 month];
  }

  else
  {
    v37 = 0;
  }

  if (![weekCopy count] && (objc_msgSend(yearCopy, "count") == 0 || v37))
  {
    v30 = MEMORY[0x1E696AEC0];
    intervalCopy10 = interval;
    if (interval == 1)
    {
      v32 = @"Event will occur every year.";
      goto LABEL_93;
    }

    v58 = @"Event will occur every %lu years.";
    goto LABEL_133;
  }

  v122 = endCopy;
  v124 = ofTheYearCopy;
  v126 = v28;
  string2 = [MEMORY[0x1E696AD60] string];
  v38 = [yearCopy count];
  if (v38)
  {
    v39 = v38;
    v40 = 0;
    while (1)
    {
      v41 = [yearCopy objectAtIndex:v40];
      v42 = v41;
      if (v40)
      {
        break;
      }

      if ([v41 integerValue] < 1 || objc_msgSend(v42, "integerValue") >= 13)
      {
        [string2 appendString:@"???"];
      }

      else
      {
        v48 = [naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableMonthArray objectAtIndex:{objc_msgSend(v42, "integerValue") - 1}];
        [string2 appendString:v48];
      }

LABEL_52:

      if (v39 == ++v40)
      {
        goto LABEL_53;
      }
    }

    v43 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v44 = v43;
    if (v40 + 1 >= v39)
    {
      if (v39 == 2)
      {
        v45 = [v43 localizedStringForKey:@"Recurrence rule last item format for a list with two terms.  The last part of a list: X and Y. Here %@ is 'Y'" value:@" and %@" table:0];
        v47 = 0;
        v46 = 1;
        v130 = v44;
        v131 = v45;
      }

      else
      {
        v45 = [v43 localizedStringForKey:@"Recurrence rule last item format for a list with three or more items.  The last part of a list: X value:Y table:{and Z. Here %@ is 'Z'", @", and %@", 0}];
        v46 = 0;
        v47 = 1;
        v128 = v44;
        v129 = v45;
      }
    }

    else
    {
      v45 = [v43 localizedStringForKey:@" value:%@" table:{&stru_1F0D67F00, 0}];
      v46 = 0;
      v47 = 0;
      endCopy = v44;
      frequency = v45;
    }

    if ([v42 integerValue] < 1 || objc_msgSend(v42, "integerValue") >= 13)
    {
      [string2 appendFormat:v45, @"???"];
      if (!v47)
      {
LABEL_47:
        if (v46)
        {
        }

        if (v40 + 1 < v39)
        {
        }

        yearCopy = v140;
        goto LABEL_52;
      }
    }

    else
    {
      v49 = [naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableMonthArray objectAtIndex:{objc_msgSend(v42, "integerValue") - 1}];
      [string2 appendFormat:v45, v49];

      if (!v47)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_47;
  }

LABEL_53:
  if (![positionsCopy count])
  {
    v62 = [weekCopy objectAtIndex:0];
    weekNumber2 = [v62 weekNumber];

    if (weekNumber2)
    {
      yearCopy = v140;
      v64 = [v140 count];
      v65 = MEMORY[0x1E696AEC0];
      endCopy = v122;
      ofTheYearCopy = v124;
      if (v64)
      {
        intervalCopy13 = interval;
        if (interval == 1)
        {
          v67 = @"Event will occur every year on the %@ of %@.";
LABEL_86:
          v52 = [v139 localizedStringForKey:v67 value:&stru_1F0D67F00 table:0];
          v81 = [objc_opt_class() _andDaysOfWeekString:weekCopy];
          v82 = v81;
          v118 = string2;
LABEL_140:
          [v65 localizedStringWithFormat:v52, v81, v118, v119];
          v117 = LABEL_151:;

          goto LABEL_152;
        }

        v115 = @"Event will occur every %lu years on the %@ of %@.";
        goto LABEL_146;
      }

      intervalCopy13 = interval;
      if (interval == 1)
      {
        v91 = @"Event will occur every year on the %@.";
LABEL_139:
        v52 = [v139 localizedStringForKey:v91 value:&stru_1F0D67F00 table:0];
        v81 = [objc_opt_class() _andDaysOfWeekString:weekCopy];
        v82 = v81;
        goto LABEL_140;
      }

      v114 = @"Event will occur every %lu years on the %@.";
    }

    else
    {
      endCopy = v122;
      ofTheYearCopy = v124;
      if (![weekCopy count])
      {
        v113 = MEMORY[0x1E696AEC0];
        yearCopy = v140;
        if (interval == 1)
        {
          v52 = [v139 localizedStringForKey:@"Event will occur every year in %@." value:&stru_1F0D67F00 table:0];
          [v113 localizedStringWithFormat:v52, string2, v118];
        }

        else
        {
          v52 = [v139 localizedStringForKey:@"Event will occur every %lu years in %@." value:&stru_1F0D67F00 table:@"PluralLocalizable"];
          [v113 localizedStringWithFormat:v52, interval, string2];
        }
        v117 = ;
        goto LABEL_152;
      }

      yearCopy = v140;
      v80 = [v140 count];
      v65 = MEMORY[0x1E696AEC0];
      intervalCopy13 = interval;
      if (v80)
      {
        if (interval == 1)
        {
          v67 = @"Event will occur every year on every %@ in %@.";
          goto LABEL_86;
        }

        v115 = @"Event will occur every %lu years on every %@ in %@.";
LABEL_146:
        v52 = [v139 localizedStringForKey:v115 value:&stru_1F0D67F00 table:@"PluralLocalizable"];
        v82 = [objc_opt_class() _andDaysOfWeekString:weekCopy];
        [v65 localizedStringWithFormat:v52, intervalCopy13, v82, string2];
        goto LABEL_151;
      }

      if (interval == 1)
      {
        v91 = @"Event will occur every year on every %@.";
        goto LABEL_139;
      }

      v114 = @"Event will occur every %lu years on every %@.";
    }

    v52 = [v139 localizedStringForKey:v114 value:&stru_1F0D67F00 table:@"PluralLocalizable"];
    v82 = [objc_opt_class() _andDaysOfWeekString:weekCopy];
    [v65 localizedStringWithFormat:v52, intervalCopy13, v82, v119];
    goto LABEL_151;
  }

  v50 = objc_opt_class();
  v51 = [positionsCopy objectAtIndex:0];
  v52 = [v50 _weekDayPositionAsString:{objc_msgSend(v51, "integerValue")}];

  v53 = [yearCopy count];
  v54 = MEMORY[0x1E696AEC0];
  if (v53)
  {
    ofTheYearCopy = v124;
    if (interval != 1)
    {
      v55 = [v139 localizedStringForKey:@"Event will occur every %lu years on the %@ %@ of %@." value:&stru_1F0D67F00 table:@"PluralLocalizable"];
      v57 = [objc_opt_class() _orDaysOfWeekString:weekCopy];
      [v54 localizedStringWithFormat:v55, interval, v52, v57, string2];
      goto LABEL_95;
    }

    v55 = [v139 localizedStringForKey:@"Event will occur every year on the %@ %@ of %@." value:&stru_1F0D67F00 table:0];
    v56 = [objc_opt_class() _orDaysOfWeekString:weekCopy];
    v57 = v56;
    v119 = string2;
  }

  else
  {
    ofTheYearCopy = v124;
    if (interval != 1)
    {
      v55 = [v139 localizedStringForKey:@"Event will occur every %lu years on the %@ %@." value:&stru_1F0D67F00 table:@"PluralLocalizable"];
      v57 = [objc_opt_class() _orDaysOfWeekString:weekCopy];
      [v54 localizedStringWithFormat:v55, interval, v52, v57, v120];
      goto LABEL_95;
    }

    v55 = [v139 localizedStringForKey:@"Event will occur every year on the %@ %@." value:&stru_1F0D67F00 table:0];
    v56 = [objc_opt_class() _orDaysOfWeekString:weekCopy];
    v57 = v56;
  }

  [v54 localizedStringWithFormat:v55, v52, v56, v119, v120];
  v117 = LABEL_95:;

  endCopy = v122;
LABEL_152:

  v29 = weekCopy;
  v28 = v126;
LABEL_153:

  return v117;
}

+ (id)_readableWeekDays
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  standaloneWeekdaySymbols = [v2 standaloneWeekdaySymbols];
  v4 = [standaloneWeekdaySymbols copy];

  if ([v4 count] != 7)
  {
    NSLog(&cfstr_Nsdateformatte.isa);
    v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"Sunday", @"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday", 0}];

    v4 = v5;
  }

  return v4;
}

+ (id)_readableMonths
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  standaloneMonthSymbols = [v2 standaloneMonthSymbols];
  v4 = [standaloneMonthSymbols copy];

  if ([v4 count] != 12)
  {
    NSLog(&cfstr_Nsdateformatte_0.isa);
    v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", 0}];

    v4 = v5;
  }

  return v4;
}

+ (id)_andDaysOfWeekString:(id)string
{
  stringCopy = string;
  string = [MEMORY[0x1E696AD60] string];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if ([stringCopy count])
  {
    v6 = 0;
    do
    {
      v7 = [stringCopy objectAtIndex:v6];
      if (v6)
      {
        if (v6 == [stringCopy count] - 1)
        {
          if ([stringCopy count] == 2)
          {
            v8 = v5;
            v9 = @"the last part of a list of two items: X and Y. Here %@ is 'Y'";
            v10 = @" and %@";
          }

          else
          {
            v8 = v5;
            v9 = @"the last part of a list of three or more items: X, Y, and Z. Here %@ is 'Z'";
            v10 = @", and %@";
          }
        }

        else
        {
          v8 = v5;
          v9 = @", %@-XX01";
          v10 = @", %@";
        }

        v11 = [v8 localizedStringForKey:v9 value:v10 table:0];
        v12 = [objc_opt_class() _numberedWeekDayString:v7];
        [string appendFormat:v11, v12];
      }

      else
      {
        v11 = [objc_opt_class() _numberedWeekDayString:v7];
        [string appendString:v11];
      }

      ++v6;
    }

    while (v6 < [stringCopy count]);
  }

  return string;
}

+ (id)_numberedWeekDayString:(id)string
{
  stringCopy = string;
  _daysOfWeek = [objc_opt_class() _daysOfWeek];
  v5 = [_daysOfWeek objectAtIndex:{objc_msgSend(stringCopy, "dayOfTheWeek")}];

  if ([stringCopy weekNumber])
  {
    v6 = [objc_opt_class() _weekDayPositionAsString:{objc_msgSend(stringCopy, "weekNumber")}];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = MEMORY[0x1E696AEC0];
    v9 = [v7 localizedStringForKey:@"%@ %@" value:&stru_1F0D67F00 table:0];
    v10 = [v8 stringWithFormat:v9, v6, v5];
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

+ (id)_daysOfWeek
{
  v3 = _daysOfWeek_sDaysOfWeek;
  if (!_daysOfWeek_sDaysOfWeek)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    standaloneWeekdaySymbols = [v5 standaloneWeekdaySymbols];
    v7 = [standaloneWeekdaySymbols mutableCopy];

    if ([v7 count] == 7)
    {
      [v7 insertObject:&stru_1F0D67F00 atIndex:0];
      v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v7];
    }

    else
    {
      NSLog(&cfstr_Nsdateformatte.isa);
      v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{&stru_1F0D67F00, @"Sunday", @"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday", 0}];
    }

    v9 = _daysOfWeek_sDaysOfWeek;
    _daysOfWeek_sDaysOfWeek = v8;

    objc_sync_exit(selfCopy);
    v3 = _daysOfWeek_sDaysOfWeek;
  }

  return v3;
}

+ (id)_dayOfMonthAsString:(int64_t)string
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = &stru_1F0D67F00;
  switch(string)
  {
    case -1:
      v7 = @"last day";
      v8 = &stru_1F0D67F00;
      goto LABEL_34;
    case 1:
      v7 = @"1st-XX01";
      v8 = @"1st";
      goto LABEL_34;
    case 2:
      v7 = @"2nd-XX01";
      v8 = @"2nd";
      goto LABEL_34;
    case 3:
      v7 = @"3rd-XX01";
      v8 = @"3rd";
      goto LABEL_34;
    case 4:
      v7 = @"4th-XX01";
      v8 = @"4th";
      goto LABEL_34;
    case 5:
      v7 = @"5th-XX01";
      v8 = @"5th";
      goto LABEL_34;
    case 6:
      v7 = @"6th-XX01";
      v8 = @"6th";
      goto LABEL_34;
    case 7:
      v7 = @"7th-XX01";
      v8 = @"7th";
      goto LABEL_34;
    case 8:
      v7 = @"8th-XX01";
      v8 = @"8th";
      goto LABEL_34;
    case 9:
      v7 = @"9th-XX01";
      v8 = @"9th";
      goto LABEL_34;
    case 10:
      v7 = @"10th-XX01";
      v8 = @"10th";
      goto LABEL_34;
    case 11:
      v7 = @"11th-XX01";
      v8 = @"11th";
      goto LABEL_34;
    case 12:
      v7 = @"12th-XX01";
      v8 = @"12th";
      goto LABEL_34;
    case 13:
      v7 = @"13th-XX01";
      v8 = @"13th";
      goto LABEL_34;
    case 14:
      v7 = @"14th-XX01";
      v8 = @"14th";
      goto LABEL_34;
    case 15:
      v7 = @"15th-XX01";
      v8 = @"15th";
      goto LABEL_34;
    case 16:
      v7 = @"16th-XX01";
      v8 = @"16th";
      goto LABEL_34;
    case 17:
      v7 = @"17th-XX01";
      v8 = @"17th";
      goto LABEL_34;
    case 18:
      v7 = @"18th-XX01";
      v8 = @"18th";
      goto LABEL_34;
    case 19:
      v7 = @"19th-XX01";
      v8 = @"19th";
      goto LABEL_34;
    case 20:
      v7 = @"20th-XX01";
      v8 = @"20th";
      goto LABEL_34;
    case 21:
      v7 = @"21st-XX01";
      v8 = @"21st";
      goto LABEL_34;
    case 22:
      v7 = @"22nd-XX01";
      v8 = @"22nd";
      goto LABEL_34;
    case 23:
      v7 = @"23rd-XX01";
      v8 = @"23rd";
      goto LABEL_34;
    case 24:
      v7 = @"24th-XX01";
      v8 = @"24th";
      goto LABEL_34;
    case 25:
      v7 = @"25th-XX01";
      v8 = @"25th";
      goto LABEL_34;
    case 26:
      v7 = @"26th-XX01";
      v8 = @"26th";
      goto LABEL_34;
    case 27:
      v7 = @"27th-XX01";
      v8 = @"27th";
      goto LABEL_34;
    case 28:
      v7 = @"28th-XX01";
      v8 = @"28th";
      goto LABEL_34;
    case 29:
      v7 = @"29th-XX01";
      v8 = @"29th";
      goto LABEL_34;
    case 30:
      v7 = @"30th-XX01";
      v8 = @"30th";
      goto LABEL_34;
    case 31:
      v7 = @"31st-XX01";
      v8 = @"31st";
LABEL_34:
      v6 = [v4 localizedStringForKey:v7 value:v8 table:0];
      break;
    default:
      break;
  }

  return v6;
}

+ (id)_weekDayPositionAsString:(int64_t)string
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = &stru_1F0D67F00;
  switch(string)
  {
    case -1:
      v7 = @"last";
      v8 = &stru_1F0D67F00;
      goto LABEL_56;
    case 1:
      v7 = @"1st-XX02";
      v8 = @"1st";
      goto LABEL_56;
    case 2:
      v7 = @"2nd-XX02";
      v8 = @"2nd";
      goto LABEL_56;
    case 3:
      v7 = @"3rd-XX02";
      v8 = @"3rd";
      goto LABEL_56;
    case 4:
      v7 = @"4th-XX02";
      v8 = @"4th";
      goto LABEL_56;
    case 5:
      v7 = @"5th-XX02";
      v8 = @"5th";
      goto LABEL_56;
    case 6:
      v7 = @"6th-XX02";
      v8 = @"6th";
      goto LABEL_56;
    case 7:
      v7 = @"7th-XX02";
      v8 = @"7th";
      goto LABEL_56;
    case 8:
      v7 = @"8th-XX02";
      v8 = @"8th";
      goto LABEL_56;
    case 9:
      v7 = @"9th-XX02";
      v8 = @"9th";
      goto LABEL_56;
    case 10:
      v7 = @"10th-XX02";
      v8 = @"10th";
      goto LABEL_56;
    case 11:
      v7 = @"11th-XX02";
      v8 = @"11th";
      goto LABEL_56;
    case 12:
      v7 = @"12th-XX02";
      v8 = @"12th";
      goto LABEL_56;
    case 13:
      v7 = @"13th-XX02";
      v8 = @"13th";
      goto LABEL_56;
    case 14:
      v7 = @"14th-XX02";
      v8 = @"14th";
      goto LABEL_56;
    case 15:
      v7 = @"15th-XX02";
      v8 = @"15th";
      goto LABEL_56;
    case 16:
      v7 = @"16th-XX02";
      v8 = @"16th";
      goto LABEL_56;
    case 17:
      v7 = @"17th-XX02";
      v8 = @"17th";
      goto LABEL_56;
    case 18:
      v7 = @"18th-XX02";
      v8 = @"18th";
      goto LABEL_56;
    case 19:
      v7 = @"19th-XX02";
      v8 = @"19th";
      goto LABEL_56;
    case 20:
      v7 = @"20th-XX02";
      v8 = @"20th";
      goto LABEL_56;
    case 21:
      v7 = @"21st-XX02";
      v8 = @"21st";
      goto LABEL_56;
    case 22:
      v7 = @"22nd-XX02";
      v8 = @"22nd";
      goto LABEL_56;
    case 23:
      v7 = @"23rd-XX02";
      v8 = @"23rd";
      goto LABEL_56;
    case 24:
      v7 = @"24th-XX02";
      v8 = @"24th";
      goto LABEL_56;
    case 25:
      v7 = @"25th-XX02";
      v8 = @"25th";
      goto LABEL_56;
    case 26:
      v7 = @"26th-XX02";
      v8 = @"26th";
      goto LABEL_56;
    case 27:
      v7 = @"27th-XX02";
      v8 = @"27th";
      goto LABEL_56;
    case 28:
      v7 = @"28th-XX02";
      v8 = @"28th";
      goto LABEL_56;
    case 29:
      v7 = @"29th-XX02";
      v8 = @"29th";
      goto LABEL_56;
    case 30:
      v7 = @"30th-XX02";
      v8 = @"30th";
      goto LABEL_56;
    case 31:
      v7 = @"31st-XX02";
      v8 = @"31st";
      goto LABEL_56;
    case 32:
      v7 = @"32nd-XX02";
      v8 = @"32nd";
      goto LABEL_56;
    case 33:
      v7 = @"33rd-XX02";
      v8 = @"33rd";
      goto LABEL_56;
    case 34:
      v7 = @"34th-XX02";
      v8 = @"34th";
      goto LABEL_56;
    case 35:
      v7 = @"35th-XX02";
      v8 = @"35th";
      goto LABEL_56;
    case 36:
      v7 = @"36th-XX02";
      v8 = @"36th";
      goto LABEL_56;
    case 37:
      v7 = @"37th-XX02";
      v8 = @"37th";
      goto LABEL_56;
    case 38:
      v7 = @"38th-XX02";
      v8 = @"38th";
      goto LABEL_56;
    case 39:
      v7 = @"39th-XX02";
      v8 = @"39th";
      goto LABEL_56;
    case 40:
      v7 = @"40th-XX02";
      v8 = @"40th";
      goto LABEL_56;
    case 41:
      v7 = @"41st-XX02";
      v8 = @"41st";
      goto LABEL_56;
    case 42:
      v7 = @"42nd-XX02";
      v8 = @"42nd";
      goto LABEL_56;
    case 43:
      v7 = @"43rd-XX02";
      v8 = @"43rd";
      goto LABEL_56;
    case 44:
      v7 = @"44th-XX02";
      v8 = @"44th";
      goto LABEL_56;
    case 45:
      v7 = @"45th-XX02";
      v8 = @"45th";
      goto LABEL_56;
    case 46:
      v7 = @"46th-XX02";
      v8 = @"46th";
      goto LABEL_56;
    case 47:
      v7 = @"47th-XX02";
      v8 = @"47th";
      goto LABEL_56;
    case 48:
      v7 = @"48th-XX02";
      v8 = @"48th";
      goto LABEL_56;
    case 49:
      v7 = @"49th-XX02";
      v8 = @"49th";
      goto LABEL_56;
    case 50:
      v7 = @"50th-XX02";
      v8 = @"50th";
      goto LABEL_56;
    case 51:
      v7 = @"51st-XX02";
      v8 = @"51st";
      goto LABEL_56;
    case 52:
      v7 = @"52nd-XX02";
      v8 = @"52nd";
      goto LABEL_56;
    case 53:
      v7 = @"53rd-XX02";
      v8 = @"53rd";
LABEL_56:
      v6 = [v4 localizedStringForKey:v7 value:v8 table:0];
      break;
    default:
      break;
  }

  return v6;
}

+ (id)_orDaysOfWeekString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [objc_opt_class() _customDayCombinationDescription:stringCopy];
  v6 = v5;
  if (v5)
  {
    string = v5;
  }

  else
  {
    string = [MEMORY[0x1E696AD60] string];
    if ([stringCopy count])
    {
      v8 = 0;
      do
      {
        v9 = [stringCopy objectAtIndex:v8];
        if (v8)
        {
          if (v8 == [stringCopy count] - 1)
          {
            v10 = @" or %@";
            v11 = &stru_1F0D67F00;
          }

          else
          {
            v10 = @", %@-XX02";
            v11 = @", %@";
          }

          v12 = [v4 localizedStringForKey:v10 value:v11 table:0];
          v13 = [objc_opt_class() _numberedWeekDayString:v9];
          [string appendFormat:v12, v13];
        }

        else
        {
          v12 = [objc_opt_class() _numberedWeekDayString:v9];
          [string appendString:v12];
        }

        ++v8;
      }

      while (v8 < [stringCopy count]);
    }
  }

  return string;
}

+ (id)_customDayCombinationDescription:(id)description
{
  v3 = MEMORY[0x1E696AAE8];
  descriptionCopy = description;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [objc_opt_class() daysTypeForDayArray:descriptionCopy];

  switch(v6)
  {
    case 3:
      v7 = @"weekend day";
      goto LABEL_7;
    case 2:
      v7 = @"weekday";
LABEL_7:
      v8 = &stru_1F0D67F00;
      goto LABEL_8;
    case 1:
      v7 = @"day-XX02";
      v8 = @"day";
LABEL_8:
      v9 = [v5 localizedStringForKey:v7 value:v8 table:0];
      goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

+ (int64_t)daysTypeForDayArray:(id)array
{
  v35 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = [arrayCopy count];
  switch(v4)
  {
    case 2:
      v19 = [arrayCopy objectAtIndex:0];
      dayOfTheWeek = [v19 dayOfTheWeek];

      v21 = [arrayCopy objectAtIndex:1];
      dayOfTheWeek2 = [v21 dayOfTheWeek];

      if (dayOfTheWeek == 7 && dayOfTheWeek2 == 1 || dayOfTheWeek == 1 && dayOfTheWeek2 == 7)
      {
        v5 = 3;
        goto LABEL_37;
      }

      break;
    case 7:
      v5 = 1;
      v13 = 1;
      while (1)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v14 = arrayCopy;
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (!v15)
        {
          goto LABEL_30;
        }

        v16 = v15;
        v17 = *v30;
LABEL_20:
        v18 = 0;
        while (1)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if ([*(*(&v29 + 1) + 8 * v18) dayOfTheWeek] == v13)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
            if (v16)
            {
              goto LABEL_20;
            }

            goto LABEL_30;
          }
        }

        v12 = v13++ >= 7;
        if (v12)
        {
          goto LABEL_37;
        }
      }

    case 5:
      v5 = 2;
      v6 = 2;
      while (1)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v7 = arrayCopy;
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (!v8)
        {
          break;
        }

        v9 = v8;
        v10 = *v26;
LABEL_7:
        v11 = 0;
        while (1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v25 + 1) + 8 * v11) dayOfTheWeek] == v6)
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v9)
            {
              goto LABEL_7;
            }

            goto LABEL_30;
          }
        }

        v12 = v6++ >= 6;
        if (v12)
        {
          goto LABEL_37;
        }
      }

LABEL_30:

      break;
  }

  v5 = 0;
LABEL_37:

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)shortNaturalLanguageDescriptionForRecurrenceRule:(id)rule date:(id)date timeZone:(id)zone lowercase:(BOOL)lowercase
{
  zoneCopy = zone;
  dateCopy = date;
  ruleCopy = rule;
  frequency = [ruleCopy frequency];
  interval = [ruleCopy interval];
  daysOfTheWeek = [ruleCopy daysOfTheWeek];
  daysOfTheMonth = [ruleCopy daysOfTheMonth];
  monthsOfTheYear = [ruleCopy monthsOfTheYear];
  setPositions = [ruleCopy setPositions];

  LOBYTE(v20) = lowercase;
  v18 = [self shortNaturalLanguageDescriptionForFrequency:frequency interval:interval daysOfTheWeek:daysOfTheWeek daysOfTheMonth:daysOfTheMonth monthsOfTheYear:monthsOfTheYear setPositions:setPositions date:dateCopy timeZone:zoneCopy lowercase:v20];

  return v18;
}

+ (id)shortNaturalLanguageDescriptionForFrequency:(int64_t)frequency interval:(int64_t)interval daysOfTheWeek:(id)week daysOfTheMonth:(id)month monthsOfTheYear:(id)year setPositions:(id)positions date:(id)date timeZone:(id)self0 lowercase:(BOOL)self1
{
  v248[1] = *MEMORY[0x1E69E9840];
  weekCopy = week;
  monthCopy = month;
  yearCopy = year;
  positionsCopy = positions;
  dateCopy = date;
  zoneCopy = zone;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  selfCopy = self;
  v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v238 = [v20 localizedStringForKey:@" value:and %@" table:{&stru_1F0D67F00, 0}];
  v237 = [v20 localizedStringForKey:@" and %@" value:&stru_1F0D67F00 table:0];
  v232 = [v20 localizedStringForKey:@"Monthly" value:&stru_1F0D67F00 table:0];
  v21 = [v20 localizedStringForKey:@"Custom Repeat" value:&stru_1F0D67F00 table:0];
  if (shortNaturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_setPositions_date_timeZone_lowercase__onceToken != -1)
  {
    +[REMRecurrenceRuleFormatter shortNaturalLanguageDescriptionForFrequency:interval:daysOfTheWeek:daysOfTheMonth:monthsOfTheYear:setPositions:date:timeZone:lowercase:];
  }

  intervalCopy3 = 0;
  lowercaseCopy6 = lowercase;
  if (frequency <= 1)
  {
    if (!frequency)
    {
      if (interval >= 2)
      {
        intervalCopy3 = interval;
        v26 = v21;
        v27 = zoneCopy;
        v28 = @"Every %u days";
        goto LABEL_31;
      }

      v37 = [v20 localizedStringForKey:@"Daily" value:&stru_1F0D67F00 table:0];
      v24 = positionsCopy;
      if (!lowercase)
      {
LABEL_40:
        v54 = v37;
        goto LABEL_161;
      }

LABEL_37:
      v53 = v37;
      goto LABEL_38;
    }

    v24 = positionsCopy;
    if (frequency != 1)
    {
      goto LABEL_323;
    }

    v29 = v21;
    v30 = yearCopy;
    v228 = v29;
    v31 = weekCopy;
    v32 = [v31 count];
    if (!v32 || (v33 = v32, v34 = v32 - 1, v32 == 1) && recurrenceDateMatchesAnyDaySpecifiedInByDayList(v31, dateCopy, zoneCopy))
    {
      if (interval == 1)
      {
        v35 = [v20 localizedStringForKey:@"SINGULAR_WEEKLY_RECURRENCE" value:@"Weekly" table:0];
        intervalCopy3 = v35;
        yearCopy = v30;
        if (!lowercase)
        {
          v61 = positionsCopy;
          v21 = v228;
          goto LABEL_117;
        }

        v36 = [v35 lowercaseStringWithLocale:currentLocale];
      }

      else
      {
        intervalCopy3 = [v20 localizedStringForKey:@"Every %u weeks" value:&stru_1F0D67F00 table:@"PluralLocalizable"];
        interval = [MEMORY[0x1E696AEC0] localizedStringWithFormat:intervalCopy3, interval];
        v36 = interval;
        yearCopy = v30;
        if (lowercase)
        {
          v96 = [interval lowercaseStringWithLocale:currentLocale];

          v36 = v96;
        }
      }

      v61 = positionsCopy;
      v21 = v228;
LABEL_116:

      intervalCopy3 = v36;
LABEL_117:

      v24 = v61;
      goto LABEL_323;
    }

    intervalCopy2 = interval;
    v221 = v30;
    v226 = v20;
    v218 = weekCopy;
    intervalCopy3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    do
    {
      v58 = [v31 objectAtIndex:v55];
      v59 = [selfCopy _stringForDayOfWeek:{objc_msgSend(v58, "dayOfTheWeek") - 1}];
      v60 = v59;
      if (v55)
      {
        if (v55 >= v34)
        {
          if (v33 < 3)
          {
            [intervalCopy3 appendFormat:v237, v59];
          }

          else
          {
            [intervalCopy3 appendFormat:v238, v59];
          }
        }

        else
        {
          [intervalCopy3 appendFormat:@", %@", v59];
        }
      }

      else
      {
        [intervalCopy3 appendString:v59];
      }

      if ([v58 dayOfTheWeek] == 1 || objc_msgSend(v58, "dayOfTheWeek") == 7)
      {
        ++v57;
      }

      else if ([v58 dayOfTheWeek] > 1)
      {
        ++v56;
      }

      ++v55;
    }

    while (v33 != v55);
    if (intervalCopy2 == 1 && !v57 && v56 == 5)
    {
      v20 = v226;
      v36 = [v226 localizedStringForKey:@"Weekdays" value:&stru_1F0D67F00 table:0];
      v61 = positionsCopy;
      v62 = v228;
      if (lowercase)
      {
LABEL_59:
        v63 = [v36 lowercaseStringWithLocale:currentLocale];
LABEL_113:
        v97 = v63;
        weekCopy = v218;
        yearCopy = v221;
        goto LABEL_114;
      }
    }

    else
    {
      v61 = positionsCopy;
      v62 = v228;
      if (intervalCopy2 != 1 || v57 != 2 || v56)
      {
        v20 = v226;
        if (intervalCopy2 == 1)
        {
          v117 = [v226 localizedStringForKey:@"Every week on %@" value:&stru_1F0D67F00 table:0];
          [MEMORY[0x1E696AEC0] localizedStringWithFormat:v117, intervalCopy3, v196];
        }

        else
        {
          v117 = [v226 localizedStringForKey:@"Every %u weeks on %@" value:&stru_1F0D67F00 table:@"PluralLocalizable"];
          [MEMORY[0x1E696AEC0] localizedStringWithFormat:v117, intervalCopy2, intervalCopy3];
        }
        v36 = ;
        weekCopy = v218;
        yearCopy = v221;

        if (!lowercase)
        {
          goto LABEL_115;
        }

        v97 = [v36 lowercaseStringWithLocale:currentLocale];
LABEL_114:

        v36 = v97;
LABEL_115:
        v21 = v62;
        goto LABEL_116;
      }

      v20 = v226;
      v36 = [v226 localizedStringForKey:@"Weekends" value:&stru_1F0D67F00 table:0];
      if (lowercase)
      {
        goto LABEL_59;
      }
    }

    v63 = v36;
    v36 = v63;
    goto LABEL_113;
  }

  if (frequency != 2)
  {
    if (frequency != 3)
    {
      v24 = positionsCopy;
      if (frequency != 4)
      {
        goto LABEL_323;
      }

      if (interval >= 2)
      {
        intervalCopy3 = interval;
        v26 = v21;
        v27 = zoneCopy;
        v28 = @"Every %u hours";
LABEL_31:
        v49 = [v20 localizedStringForKey:v28 value:&stru_1F0D67F00 table:0];
        v50 = v49;
        v51 = MEMORY[0x1E696AEC0];
        v52 = v49;
        if (lowercase)
        {
          v52 = [v49 lowercaseStringWithLocale:currentLocale];
        }

        intervalCopy3 = [v51 localizedStringWithFormat:v52, intervalCopy3];
        if (lowercase)
        {
        }

        zoneCopy = v27;
        v24 = positionsCopy;
        v21 = v26;
        goto LABEL_323;
      }

      v37 = [v20 localizedStringForKey:@"Hourly" value:&stru_1F0D67F00 table:0];
      if (!lowercase)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v47 = weekCopy;
    v211 = v47;
    if ([v47 count])
    {
      v48 = [v47 objectAtIndex:0];
      v239 = [selfCopy _stringForByDayOfWeek:v48 setPositions:positionsCopy];
    }

    else
    {
      v239 = 0;
    }

    v230 = v21;
    v69 = yearCopy;
    if (![v69 count])
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      [currentCalendar setTimeZone:zoneCopy];
      v216 = v69;
      v71 = MEMORY[0x1E696AD98];
      v72 = [currentCalendar components:8 fromDate:dateCopy];
      v73 = [v71 numberWithInteger:{objc_msgSend(v72, "month")}];
      v248[0] = v73;
      v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v248 count:1];

      v69 = v74;
      lowercaseCopy6 = lowercase;
    }

    v217 = v69;
    if (v239 || [v69 count] > 1 || (recurrenceMonthMatchesAnyMonthSpecifiedInByMonthList(v69, dateCopy, zoneCopy) & 1) == 0)
    {
      v75 = [v69 count];
      v243 = 0u;
      v244 = 0u;
      v245 = 0u;
      v246 = 0u;
      v76 = v69;
      v77 = [v76 countByEnumeratingWithState:&v243 objects:v247 count:16];
      if (v77)
      {
        v78 = v77;
        intervalCopy4 = interval;
        v207 = zoneCopy;
        v219 = weekCopy;
        v222 = yearCopy;
        v79 = 0;
        v80 = *v244;
        do
        {
          for (i = 0; i != v78; ++i)
          {
            if (*v244 != v80)
            {
              objc_enumerationMutation(v76);
            }

            v82 = [selfCopy _stringForMonthNumber:{objc_msgSend(*(*(&v243 + 1) + 8 * i), "intValue")}];
            v83 = v82;
            if (v79)
            {
              if (v75 - 1 == i)
              {
                if ([v76 count] == 2)
                {
                  [v79 appendFormat:v237, v83];
                }

                else
                {
                  [v79 appendFormat:v238, v83];
                }
              }

              else
              {
                [v79 appendFormat:@", %@", v82];
              }
            }

            else
            {
              v84 = objc_alloc_init(MEMORY[0x1E696AD60]);
              v79 = v84;
              if (!v239)
              {
                [v84 appendString:v83];
              }
            }
          }

          v75 -= v78;
          v78 = [v76 countByEnumeratingWithState:&v243 objects:v247 count:16];
        }

        while (v78);

        if (v79 && !v239)
        {
          interval = intervalCopy4;
          weekCopy = v219;
          yearCopy = v222;
          v21 = v230;
          if (intervalCopy4 < 2)
          {
            v98 = [v20 localizedStringForKey:@"Every year in %@" value:&stru_1F0D67F00 table:0];
            v86 = v98;
            v99 = MEMORY[0x1E696AEC0];
            v88 = v98;
            if (lowercaseCopy6)
            {
              v88 = [v98 lowercaseStringWithLocale:currentLocale];
            }

            [v99 localizedStringWithFormat:v88, v79, v196];
          }

          else
          {
            v85 = [v20 localizedStringForKey:@"Every %u years in %@" value:&stru_1F0D67F00 table:0];
            v86 = v85;
            v87 = MEMORY[0x1E696AEC0];
            v88 = v85;
            if (lowercaseCopy6)
            {
              v88 = [v85 lowercaseStringWithLocale:currentLocale];
            }

            [v87 localizedStringWithFormat:v88, intervalCopy4, v79];
          }
          v100 = ;
          v101 = v88;
          intervalCopy3 = v100;
          v102 = 1;
          if (!lowercaseCopy6)
          {
            goto LABEL_309;
          }

          goto LABEL_308;
        }

        weekCopy = v219;
        yearCopy = v222;
        v21 = v230;
        interval = intervalCopy4;
        if (!v239 || !v79)
        {
          goto LABEL_312;
        }

        v89 = [v76 objectAtIndexedSubscript:0];
        v86 = [selfCopy _localizedOfMonthStringForMonth:v89];

        v90 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v86, v79];
        v242 = v90;
        if ([v211 count] == 7)
        {
          if (![positionsCopy count])
          {
            goto LABEL_201;
          }

          v91 = v230;
          v92 = [positionsCopy objectAtIndex:0];
          intValue = [v92 intValue];

          if (intValue != 1)
          {
            v21 = v230;
            if (intValue == -1)
            {
              if (intervalCopy4 >= 2)
              {
                v94 = @"Every %u years on the last day %@";
LABEL_198:
                v142 = [v20 localizedStringForKey:v94 value:&stru_1F0D67F00 table:0];
                v143 = MEMORY[0x1E696AEC0];
                v206 = v142;
                if (lowercaseCopy6)
                {
                  v142 = [v142 lowercaseStringWithLocale:currentLocale];
                }

                v195 = intervalCopy4;
                v196 = v242;
LABEL_298:
                v182 = v143;
                v204 = v142;
                v183 = v142;
                goto LABEL_304;
              }

              v168 = @"Every year on the last day %@";
              goto LABEL_295;
            }

            goto LABEL_201;
          }

          if (intervalCopy4 >= 2)
          {
            v159 = @"Every %u years on the first day %@";
LABEL_275:
            v175 = [v20 localizedStringForKey:v159 value:&stru_1F0D67F00 table:0];
            v176 = MEMORY[0x1E696AEC0];
            v206 = v175;
            v21 = v91;
            if (lowercaseCopy6)
            {
              v175 = [v175 lowercaseStringWithLocale:currentLocale];
            }

            v195 = intervalCopy4;
            v196 = v242;
LABEL_303:
            v182 = v176;
            v204 = v175;
            v183 = v175;
LABEL_304:
            intervalCopy3 = [v182 localizedStringWithFormat:v183, v195, v196];
            v102 = 0;
            if (!lowercaseCopy6)
            {
LABEL_306:

              goto LABEL_307;
            }

LABEL_305:

            goto LABEL_306;
          }

          v169 = @"Every year on the first day %@";
        }

        else if ([v211 isEqualToArray:shortNaturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_setPositions_date_timeZone_lowercase____WeekdaysByDayArray])
        {
          if (![positionsCopy count])
          {
            goto LABEL_201;
          }

          v91 = v230;
          v118 = [positionsCopy objectAtIndex:0];
          intValue2 = [v118 intValue];

          if (intValue2 != 1)
          {
            v21 = v230;
            if (intValue2 == -1)
            {
              if (intervalCopy4 >= 2)
              {
                v94 = @"Every %u years on the last weekday %@";
                goto LABEL_198;
              }

              v168 = @"Every year on the last weekday %@";
LABEL_295:
              v142 = [v20 localizedStringForKey:v168 value:&stru_1F0D67F00 table:0];
              v143 = MEMORY[0x1E696AEC0];
              v206 = v142;
              if (lowercaseCopy6)
              {
                v142 = [v142 lowercaseStringWithLocale:currentLocale];
              }

              v195 = v242;
              goto LABEL_298;
            }

LABEL_201:
            v102 = 0;
            intervalCopy3 = 0;
LABEL_307:
            v101 = v242;
LABEL_308:

LABEL_309:
            if (intervalCopy3)
            {
              zoneCopy = v207;
LABEL_322:

              v24 = positionsCopy;
              goto LABEL_323;
            }

            zoneCopy = v207;
            if (!v102)
            {
              intervalCopy3 = v21;
              goto LABEL_322;
            }

LABEL_312:
            if (interval < 2)
            {
              v189 = [v20 localizedStringForKey:@"Yearly" value:&stru_1F0D67F00 table:0];
              v190 = v189;
              if (lowercaseCopy6)
              {
                v191 = [v189 lowercaseStringWithLocale:currentLocale];
              }

              else
              {
                v191 = v189;
              }

              intervalCopy3 = v191;
            }

            else
            {
              v225 = yearCopy;
              v184 = zoneCopy;
              v185 = [v20 localizedStringForKey:@"Every %u years" value:&stru_1F0D67F00 table:0];
              v186 = v185;
              v187 = MEMORY[0x1E696AEC0];
              v188 = v185;
              if (lowercaseCopy6)
              {
                v188 = [v185 lowercaseStringWithLocale:currentLocale];
              }

              intervalCopy3 = [v187 localizedStringWithFormat:v188, interval];
              if (lowercaseCopy6)
              {
              }

              zoneCopy = v184;
              v21 = v230;
              yearCopy = v225;
            }

            goto LABEL_322;
          }

          if (intervalCopy4 >= 2)
          {
            v159 = @"Every %u years on the first weekday %@";
            goto LABEL_275;
          }

          v169 = @"Every year on the first weekday %@";
        }

        else
        {
          if (![v211 isEqualToArray:shortNaturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_setPositions_date_timeZone_lowercase____WeekendsByDayArray])
          {
            if (intervalCopy4 < 2)
            {
              v166 = [v20 localizedStringForKey:@"Every year on the %@ %@" value:&stru_1F0D67F00 table:0];
              v167 = MEMORY[0x1E696AEC0];
              v206 = v166;
              if (lowercaseCopy6)
              {
                v166 = [v166 lowercaseStringWithLocale:currentLocale];
              }

              v204 = v166;
              intervalCopy3 = [v167 localizedStringWithFormat:v166, v239, v90];
              v102 = 1;
              if (!lowercaseCopy6)
              {
                goto LABEL_306;
              }
            }

            else
            {
              v155 = [v20 localizedStringForKey:@"Every %u years on the %@ %@" value:&stru_1F0D67F00 table:0];
              v156 = MEMORY[0x1E696AEC0];
              v206 = v155;
              if (lowercaseCopy6)
              {
                v155 = [v155 lowercaseStringWithLocale:currentLocale];
              }

              v204 = v155;
              intervalCopy3 = [v156 localizedStringWithFormat:v155, intervalCopy4, v239, v90];
              v102 = 1;
              if (!lowercaseCopy6)
              {
                goto LABEL_306;
              }
            }

            goto LABEL_305;
          }

          if (![positionsCopy count])
          {
            goto LABEL_201;
          }

          v91 = v230;
          v140 = [positionsCopy objectAtIndex:0];
          intValue3 = [v140 intValue];

          if (intValue3 != 1)
          {
            v21 = v230;
            if (intValue3 == -1)
            {
              if (intervalCopy4 >= 2)
              {
                v94 = @"Every %u years on the last weekend day %@";
                goto LABEL_198;
              }

              v168 = @"Every year on the last weekend day %@";
              goto LABEL_295;
            }

            goto LABEL_201;
          }

          if (intervalCopy4 >= 2)
          {
            v159 = @"Every %u years on the first weekend day %@";
            goto LABEL_275;
          }

          v169 = @"Every year on the first weekend day %@";
        }

        v175 = [v20 localizedStringForKey:v169 value:&stru_1F0D67F00 table:0];
        v176 = MEMORY[0x1E696AEC0];
        v206 = v175;
        v21 = v91;
        if (lowercaseCopy6)
        {
          v175 = [v175 lowercaseStringWithLocale:currentLocale];
        }

        v195 = v242;
        goto LABEL_303;
      }
    }

    v79 = 0;
    v21 = v230;
    goto LABEL_312;
  }

  v37 = weekCopy;
  v38 = [v37 count];
  if ([yearCopy count])
  {
    LOBYTE(v197) = lowercase;
    v24 = positionsCopy;
    intervalCopy3 = [selfCopy shortNaturalLanguageDescriptionForFrequency:3 interval:interval daysOfTheWeek:v37 daysOfTheMonth:monthCopy monthsOfTheYear:yearCopy setPositions:positionsCopy date:dateCopy timeZone:zoneCopy lowercase:v197];
    goto LABEL_19;
  }

  v212 = v37;
  if (v38)
  {
    if (v38 == 7)
    {
      v24 = positionsCopy;
      if (![positionsCopy count])
      {
        goto LABEL_160;
      }

      v229 = v21;
      v64 = [positionsCopy objectAtIndex:0];
      intValue4 = [v64 intValue];

      if (intValue4 != 1)
      {
        v66 = intValue4 == -1;
        v21 = v229;
        v37 = v212;
        if (!v66)
        {
          goto LABEL_160;
        }

        if (interval >= 2)
        {
          v67 = zoneCopy;
          v68 = @"Every %u months on the last day";
LABEL_265:
          v171 = [v20 localizedStringForKey:v68 value:&stru_1F0D67F00 table:0];
          v172 = v171;
          v173 = MEMORY[0x1E696AEC0];
          v174 = v171;
          if (lowercase)
          {
            v174 = [v171 lowercaseStringWithLocale:currentLocale];
          }

          intervalCopy3 = [v173 localizedStringWithFormat:v174, interval];
          if (lowercase)
          {
          }

          v39 = 0;
          zoneCopy = v67;
          v24 = positionsCopy;
          goto LABEL_270;
        }

        v160 = @"Every month on the last day";
        goto LABEL_282;
      }

      if (interval >= 2)
      {
        v67 = zoneCopy;
        v68 = @"Every %u months on the first day";
        goto LABEL_265;
      }

      v161 = @"Every month on the first day";
      goto LABEL_287;
    }

    v24 = positionsCopy;
    if ([v37 isEqualToArray:shortNaturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_setPositions_date_timeZone_lowercase____WeekdaysByDayArray])
    {
      if (![positionsCopy count])
      {
        goto LABEL_160;
      }

      v229 = v21;
      v115 = [positionsCopy objectAtIndex:0];
      intValue5 = [v115 intValue];

      if (intValue5 != 1)
      {
        v66 = intValue5 == -1;
        v21 = v229;
        v37 = v212;
        if (!v66)
        {
          goto LABEL_160;
        }

        if (interval >= 2)
        {
          v67 = zoneCopy;
          v68 = @"Every %u months on the last weekday";
          goto LABEL_265;
        }

        v160 = @"Every month on the last weekday";
        goto LABEL_282;
      }

      if (interval >= 2)
      {
        v67 = zoneCopy;
        v68 = @"Every %u months on the first weekday";
        goto LABEL_265;
      }

      v161 = @"Every month on the first weekday";
      goto LABEL_287;
    }

    if ([v37 isEqualToArray:shortNaturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_setPositions_date_timeZone_lowercase____WeekendsByDayArray])
    {
      if (![positionsCopy count])
      {
        goto LABEL_160;
      }

      v229 = v21;
      v120 = [positionsCopy objectAtIndex:0];
      intValue6 = [v120 intValue];

      if (intValue6 != 1)
      {
        v66 = intValue6 == -1;
        v21 = v229;
        v37 = v212;
        if (!v66)
        {
          goto LABEL_160;
        }

        if (interval >= 2)
        {
          v67 = zoneCopy;
          v68 = @"Every %u months on the last weekend day";
          goto LABEL_265;
        }

        v160 = @"Every month on the last weekend day";
LABEL_282:
        v177 = [v20 localizedStringForKey:v160 value:&stru_1F0D67F00 table:0];
        v178 = v177;
        if (lowercase)
        {
          v179 = [v177 lowercaseStringWithLocale:currentLocale];
        }

        else
        {
          v179 = v177;
        }

        intervalCopy3 = v179;
LABEL_291:

        v39 = 0;
LABEL_292:
        v37 = v212;
        if (!intervalCopy3)
        {
          goto LABEL_20;
        }

        goto LABEL_162;
      }

      if (interval >= 2)
      {
        v67 = zoneCopy;
        v68 = @"Every %u months on the first weekend day";
        goto LABEL_265;
      }

      v161 = @"Every month on the first weekend day";
LABEL_287:
      v180 = [v20 localizedStringForKey:v161 value:&stru_1F0D67F00 table:0];
      v178 = v180;
      if (lowercase)
      {
        v181 = [v180 lowercaseStringWithLocale:currentLocale];
      }

      else
      {
        v181 = v180;
      }

      intervalCopy3 = v181;
      v21 = v229;
      goto LABEL_291;
    }

    v229 = v21;
    v144 = [v37 objectAtIndex:0];
    v145 = [selfCopy _stringForByDayOfWeek:v144 setPositions:positionsCopy];

    if (!v145)
    {
      intervalCopy3 = 0;
LABEL_251:

      v39 = 1;
LABEL_270:
      v21 = v229;
      goto LABEL_292;
    }

    v209 = zoneCopy;
    if (interval < 2)
    {
      v164 = [v20 localizedStringForKey:@"Every month on the %@" value:&stru_1F0D67F00 table:0];
      v147 = v164;
      v165 = MEMORY[0x1E696AEC0];
      v149 = v164;
      if (lowercase)
      {
        v149 = [v164 lowercaseStringWithLocale:currentLocale];
      }

      intervalCopy3 = [v165 localizedStringWithFormat:v149, v145];
      if (!lowercase)
      {
        goto LABEL_250;
      }
    }

    else
    {
      v146 = [v20 localizedStringForKey:@"Every %u months on the %@" value:&stru_1F0D67F00 table:0];
      v147 = v146;
      v148 = MEMORY[0x1E696AEC0];
      v149 = v146;
      if (lowercase)
      {
        v149 = [v146 lowercaseStringWithLocale:currentLocale];
      }

      intervalCopy3 = [v148 localizedStringWithFormat:v149, interval, v145];
      if (!lowercase)
      {
        goto LABEL_250;
      }
    }

LABEL_250:
    zoneCopy = v209;
    v24 = positionsCopy;
    goto LABEL_251;
  }

  intervalCopy5 = interval;
  v220 = monthCopy;
  v103 = [v220 count];
  v231 = v21;
  if ([positionsCopy count])
  {
    v104 = [positionsCopy objectAtIndex:0];
    intValue7 = [v104 intValue];

    v66 = intValue7 == -1;
    v21 = v231;
    if (v66)
    {
      if (recurrenceDateMatchesAnyDaySpecifiedInByMonthDayList(v220, dateCopy, zoneCopy))
      {
        interval = intervalCopy5;
        if (intervalCopy5 < 2)
        {
          v24 = positionsCopy;
          v37 = v212;
          if (lowercase)
          {
            v170 = [v232 lowercaseStringWithLocale:currentLocale];
          }

          else
          {
            v170 = v232;
          }

          intervalCopy3 = v170;
          goto LABEL_244;
        }

        v150 = zoneCopy;
        v151 = [v20 localizedStringForKey:@"Every %u months" value:&stru_1F0D67F00 table:0];
        v152 = v151;
        v153 = MEMORY[0x1E696AEC0];
        v154 = v151;
        if (lowercase)
        {
          v154 = [v151 lowercaseStringWithLocale:currentLocale];
        }

        intervalCopy3 = [v153 localizedStringWithFormat:v154, intervalCopy5];
        if (lowercase)
        {
        }

        zoneCopy = v150;
        v24 = positionsCopy;
        v21 = v231;
      }

      else
      {
        intervalCopy3 = 0;
        v24 = positionsCopy;
        interval = intervalCopy5;
      }

LABEL_243:
      v37 = v212;
      goto LABEL_244;
    }
  }

  if (!v103 || v103 == 1 && (recurrenceDateMatchesAnyDaySpecifiedInByMonthDayList(v220, dateCopy, zoneCopy) & 1) != 0)
  {
    v106 = v21;
    currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
    v108 = zoneCopy;
    [currentCalendar2 setTimeZone:zoneCopy];
    v109 = [currentCalendar2 components:16 fromDate:dateCopy];
    v110 = [v109 day];

    if ((v110 - 29) > 2)
    {
      intervalCopy3 = 0;
      zoneCopy = v108;
      v21 = v106;
      interval = intervalCopy5;
LABEL_242:

      v24 = positionsCopy;
      goto LABEL_243;
    }

    v223 = yearCopy;
    interval = intervalCopy5;
    if (intervalCopy5 < 2)
    {
      v162 = [v20 localizedStringForKey:@"Every month that has %u days" value:&stru_1F0D67F00 table:0];
      v112 = v162;
      v163 = MEMORY[0x1E696AEC0];
      v114 = v162;
      if (lowercase)
      {
        v114 = [v162 lowercaseStringWithLocale:currentLocale];
      }

      intervalCopy3 = [v163 localizedStringWithFormat:v114, v110];
      lowercaseCopy6 = lowercase;
      if (!lowercase)
      {
        goto LABEL_241;
      }
    }

    else
    {
      v111 = [v20 localizedStringForKey:@"Every %u months that have %u days" value:&stru_1F0D67F00 table:0];
      v112 = v111;
      v113 = MEMORY[0x1E696AEC0];
      v114 = v111;
      if (lowercase)
      {
        v114 = [v111 lowercaseStringWithLocale:currentLocale];
      }

      intervalCopy3 = [v113 localizedStringWithFormat:v114, intervalCopy5, v110];
      lowercaseCopy6 = lowercase;
      if (!lowercase)
      {
        goto LABEL_241;
      }
    }

LABEL_241:
    zoneCopy = v108;
    v21 = v231;
    yearCopy = v223;
    goto LABEL_242;
  }

  v240 = 0;
  v122 = 0;
  v205 = v103;
  v208 = zoneCopy;
  v224 = yearCopy;
  v227 = v20;
  do
  {
    v123 = [v220 objectAtIndex:v122];
    intValue8 = [v123 intValue];

    if (intValue8 < 1)
    {
      goto LABEL_184;
    }

    if (!v240)
    {
      v130 = yearCopy;
      v131 = weekCopy;
      v132 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v126 = [selfCopy _dayOfMonthAsString:intValue8];
      v240 = v132;
      v133 = v132;
      weekCopy = v131;
      yearCopy = v130;
      v103 = v205;
      [v133 appendString:v126];
LABEL_182:

      goto LABEL_184;
    }

    v125 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v126 = v125;
    if (v122 + 1 >= v103)
    {
      if (v103 == 2)
      {
        v127 = [v125 localizedStringForKey:@"Recurrence rule last item format for a list with two terms.  The last part of a list: X and Y. Here %@ is 'Y'" value:@" and %@" table:0];
        v128 = 0;
        v129 = 1;
        v200 = v127;
        v198 = v126;
      }

      else
      {
        v127 = [v125 localizedStringForKey:@"Recurrence rule last item format for a list with three or more items.  The last part of a list: X value:Y table:{and Z. Here %@ is 'Z'", @", and %@", 0}];
        v129 = 0;
        v128 = 1;
        v201 = v127;
        v199 = v126;
      }

      v126 = v203;
    }

    else
    {
      v127 = [v125 localizedStringForKey:@" value:%@" table:{&stru_1F0D67F00, 0}];
      v128 = 0;
      v129 = 0;
      v202 = v127;
    }

    v134 = [selfCopy _dayOfMonthAsString:intValue8];
    [v240 appendFormat:v127, v134];

    if (v128)
    {
    }

    v103 = v205;
    if (v129)
    {
    }

    yearCopy = v224;
    v20 = v227;
    v21 = v231;
    if (v122 + 1 < v205)
    {

      v203 = v126;
      zoneCopy = v208;
      goto LABEL_182;
    }

    v203 = v126;
    zoneCopy = v208;
LABEL_184:
    ++v122;
  }

  while (v103 != v122);
  v37 = v212;
  if (v240)
  {
    v135 = zoneCopy;
    interval = intervalCopy5;
    lowercaseCopy6 = lowercase;
    if (intervalCopy5 >= 2)
    {
      v136 = [v20 localizedStringForKey:@"Every %u months value:each %@" table:{&stru_1F0D67F00, 0}];
      v137 = v136;
      v138 = MEMORY[0x1E696AEC0];
      v139 = v136;
      if (lowercase)
      {
        v139 = [v136 lowercaseStringWithLocale:currentLocale];
      }

      intervalCopy3 = [v138 localizedStringWithFormat:v139, intervalCopy5, v240];
      if (!lowercase)
      {
        goto LABEL_228;
      }

LABEL_227:

      goto LABEL_228;
    }

    v157 = [v20 localizedStringForKey:@"Every month value:each %@" table:{&stru_1F0D67F00, 0}];
    v137 = v157;
    v158 = MEMORY[0x1E696AEC0];
    v139 = v157;
    if (lowercase)
    {
      v139 = [v157 lowercaseStringWithLocale:currentLocale];
    }

    intervalCopy3 = [v158 localizedStringWithFormat:v139, v240];
    if (lowercase)
    {
      goto LABEL_227;
    }

LABEL_228:

    zoneCopy = v135;
    v21 = v231;
    v37 = v212;
  }

  else
  {
    intervalCopy3 = 0;
    lowercaseCopy6 = lowercase;
    interval = intervalCopy5;
  }

  v24 = positionsCopy;
LABEL_244:

LABEL_19:
  v39 = 1;
  if (!intervalCopy3)
  {
LABEL_20:
    if (v39)
    {
      if (interval >= 2)
      {
        v210 = v37;
        intervalCopy6 = interval;
        v41 = v21;
        v42 = zoneCopy;
        v43 = [v20 localizedStringForKey:@"Every %u months" value:&stru_1F0D67F00 table:0];
        v44 = v43;
        v45 = MEMORY[0x1E696AEC0];
        v46 = v43;
        if (lowercaseCopy6)
        {
          v46 = [v43 lowercaseStringWithLocale:currentLocale];
        }

        intervalCopy3 = [v45 localizedStringWithFormat:v46, intervalCopy6];
        if (lowercaseCopy6)
        {
        }

        zoneCopy = v42;
        v24 = positionsCopy;
        v21 = v41;
        v37 = v210;
        goto LABEL_162;
      }

      if (lowercaseCopy6)
      {
        v53 = v232;
LABEL_38:
        v54 = [v53 lowercaseStringWithLocale:currentLocale];
      }

      else
      {
        v54 = v232;
      }

LABEL_161:
      intervalCopy3 = v54;
      goto LABEL_162;
    }

LABEL_160:
    v54 = v21;
    goto LABEL_161;
  }

LABEL_162:

LABEL_323:
  v192 = intervalCopy3;

  v193 = *MEMORY[0x1E69E9840];
  return intervalCopy3;
}

void __165__REMRecurrenceRuleFormatter_shortNaturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_setPositions_date_timeZone_lowercase___block_invoke()
{
  v0 = MEMORY[0x1E695DEC8];
  v1 = [REMRecurrenceDayOfWeek dayOfWeek:2];
  v2 = [REMRecurrenceDayOfWeek dayOfWeek:3];
  v3 = [REMRecurrenceDayOfWeek dayOfWeek:4];
  v4 = [REMRecurrenceDayOfWeek dayOfWeek:5];
  v5 = [REMRecurrenceDayOfWeek dayOfWeek:6];
  v6 = [v0 arrayWithObjects:{v1, v2, v3, v4, v5, 0}];
  v7 = shortNaturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_setPositions_date_timeZone_lowercase____WeekdaysByDayArray;
  shortNaturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_setPositions_date_timeZone_lowercase____WeekdaysByDayArray = v6;

  v8 = MEMORY[0x1E695DEC8];
  v12 = [REMRecurrenceDayOfWeek dayOfWeek:1];
  v9 = [REMRecurrenceDayOfWeek dayOfWeek:7];
  v10 = [v8 arrayWithObjects:{v12, v9, 0}];
  v11 = shortNaturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_setPositions_date_timeZone_lowercase____WeekendsByDayArray;
  shortNaturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_setPositions_date_timeZone_lowercase____WeekendsByDayArray = v10;
}

+ (id)_stringForDayOfWeek:(int64_t)week
{
  _readableWeekDays = [self _readableWeekDays];
  v5 = _readableWeekDays;
  if (week < 0 || [_readableWeekDays count] <= week)
  {
    v6 = @"???";
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:week];
  }

  return v6;
}

+ (id)_stringForMonthNumber:(int64_t)number
{
  _readableMonths = [self _readableMonths];
  v5 = _readableMonths;
  if (number >= 1 && [_readableMonths count] >= number)
  {
    v6 = [v5 objectAtIndexedSubscript:number - 1];
  }

  else
  {
    v6 = @"???";
  }

  return v6;
}

+ (id)_byDayOfWeekOrdinalStrings
{
  v12[6] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"last" value:&stru_1F0D67F00 table:0];
  v12[0] = v3;
  v4 = [v2 localizedStringForKey:@"first" value:&stru_1F0D67F00 table:0];
  v12[1] = v4;
  v5 = [v2 localizedStringForKey:@"second" value:&stru_1F0D67F00 table:0];
  v12[2] = v5;
  v6 = [v2 localizedStringForKey:@"third" value:&stru_1F0D67F00 table:0];
  v12[3] = v6;
  v7 = [v2 localizedStringForKey:@"fourth" value:&stru_1F0D67F00 table:0];
  v12[4] = v7;
  v8 = [v2 localizedStringForKey:@"fifth" value:&stru_1F0D67F00 table:0];
  v12[5] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:6];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_customByDayItemFormatLocalizedString
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Custom by-day item format" value:@"%@ %@" table:0];

  return v3;
}

+ (id)_stringForByDayOfWeek:(id)week setPositions:(id)positions
{
  weekCopy = week;
  positionsCopy = positions;
  _byDayOfWeekOrdinalStrings = [self _byDayOfWeekOrdinalStrings];
  if (![weekCopy weekNumber])
  {
    if ([positionsCopy count])
    {
      v10 = [positionsCopy objectAtIndex:0];
      intValue = [v10 intValue];

      if (intValue == -1)
      {
        goto LABEL_12;
      }

      if (intValue - 1 < 5)
      {
        weekNumber = intValue;
        goto LABEL_13;
      }
    }

LABEL_11:
    v12 = 0;
    goto LABEL_14;
  }

  if ([weekCopy weekNumber] == -1)
  {
LABEL_12:
    weekNumber = 0;
    goto LABEL_13;
  }

  if ([weekCopy weekNumber] > 5)
  {
    goto LABEL_11;
  }

  if ([weekCopy weekNumber] <= 0)
  {
    goto LABEL_11;
  }

  weekNumber = [weekCopy weekNumber];
  if (weekNumber < 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v12 = [_byDayOfWeekOrdinalStrings objectAtIndex:weekNumber];
LABEL_14:
  v13 = [self _stringForDayOfWeek:{objc_msgSend(weekCopy, "dayOfTheWeek", weekNumber) - 1}];
  v14 = MEMORY[0x1E696AEC0];
  _customByDayItemFormatLocalizedString = [self _customByDayItemFormatLocalizedString];
  v16 = [v14 localizedStringWithFormat:_customByDayItemFormatLocalizedString, v12, v13];

  return v16;
}

+ (id)_localizedOfMonthStringForMonth:(id)month
{
  v3 = MEMORY[0x1E696AAE8];
  monthCopy = month;
  v5 = [v3 bundleForClass:objc_opt_class()];
  intValue = [monthCopy intValue];

  if ((intValue - 1) > 0xB)
  {
    v7 = &stru_1F0D67F00;
  }

  else
  {
    v7 = [v5 localizedStringForKey:off_1E7508468[intValue - 1] value:&stru_1F0D67F00 table:0];
  }

  return v7;
}

+ (int64_t)repeatTypeForRecurrenceRules:(id)rules recurrenceDate:(id)date recurrenceTimeZone:(id)zone getRepeatEnd:(id *)end
{
  rulesCopy = rules;
  dateCopy = date;
  zoneCopy = zone;
  v13 = [rulesCopy count];
  v14 = v13;
  if (v13)
  {
    if (v13 == 1)
    {
      [rulesCopy objectAtIndex:0];
      v15 = v28 = self;
      frequency = [v15 frequency];
      interval = [v15 interval];
      daysOfTheWeek = [v15 daysOfTheWeek];
      daysOfTheMonth = [v15 daysOfTheMonth];
      [v15 monthsOfTheYear];
      v16 = v30 = zoneCopy;
      [v15 weeksOfTheYear];
      v17 = v29 = end;
      daysOfTheYear = [v15 daysOfTheYear];
      setPositions = [v15 setPositions];
      recurrenceEnd = [v15 recurrenceEnd];
      v31 = 0;
      v14 = [v28 repeatTypeForFrequency:frequency interval:interval daysOfTheWeek:daysOfTheWeek daysOfTheMonth:daysOfTheMonth monthsOfTheYear:v16 weeksOfTheYear:v17 daysOfTheYear:daysOfTheYear setPositions:setPositions end:recurrenceEnd recurrenceDate:dateCopy recurrenceTimeZone:v30 getRepeatEnd:&v31];
      v21 = v31;

      end = v29;
      zoneCopy = v30;

      if (!v29)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v21 = 0;
      v14 = 11;
      if (!end)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  v21 = 0;
  if (end)
  {
LABEL_6:
    v22 = v21;
    *end = v21;
  }

LABEL_7:

  return v14;
}

+ (int64_t)repeatTypeForFrequency:(int64_t)frequency interval:(int64_t)interval daysOfTheWeek:(id)week daysOfTheMonth:(id)month monthsOfTheYear:(id)year weeksOfTheYear:(id)theYear daysOfTheYear:(id)ofTheYear setPositions:(id)self0 end:(id)self1 recurrenceDate:(id)self2 recurrenceTimeZone:(id)self3 getRepeatEnd:(id *)self4
{
  weekCopy = week;
  monthCopy = month;
  yearCopy = year;
  theYearCopy = theYear;
  ofTheYearCopy = ofTheYear;
  positionsCopy = positions;
  endCopy = end;
  dateCopy = date;
  zoneCopy = zone;
  occurrenceCount = [endCopy occurrenceCount];
  v24 = yearCopy;
  if (occurrenceCount)
  {
    v25 = 11;
    v26 = weekCopy;
    v27 = theYearCopy;
    repeatEndCopy5 = repeatEnd;
    if (endCopy)
    {
      goto LABEL_3;
    }

LABEL_64:
    endDate = 0;
    if (!repeatEndCopy5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v57 = weekCopy;
  v32 = [v57 count];
  v33 = v32;
  v25 = 11;
  if (frequency <= 1)
  {
    v27 = theYearCopy;
    if (frequency)
    {
      repeatEndCopy5 = repeatEnd;
      if (frequency != 1)
      {
        goto LABEL_63;
      }

      if ((interval - 1) > 1 || [v24 count] || objc_msgSend(positionsCopy, "count"))
      {
        goto LABEL_62;
      }

      if (!v33 || v33 == 1 && recurrenceDateMatchesAnyDaySpecifiedInByDayList(v57, dateCopy, zoneCopy))
      {
        if (interval == 1)
        {
          v25 = 5;
        }

        else
        {
          v25 = 6;
        }

        goto LABEL_63;
      }

      if (interval != 1)
      {
        goto LABEL_62;
      }

      v53 = [objc_opt_class() daysTypeForDayArray:v57];
      v50 = 11;
      if (v53 == 2)
      {
        v50 = 3;
      }

      v49 = v53 == 3;
      v51 = 4;
    }

    else
    {
      v25 = 11;
      repeatEndCopy5 = repeatEnd;
      if (interval != 1 || v32)
      {
        goto LABEL_63;
      }

      if ([v24 count])
      {
        goto LABEL_62;
      }

      v49 = [monthCopy count] == 0;
      v50 = 11;
      v51 = 2;
    }

    if (v49)
    {
      v25 = v51;
    }

    else
    {
      v25 = v50;
    }

    goto LABEL_63;
  }

  v27 = theYearCopy;
  if (frequency == 2)
  {
    v34 = (interval & 0xFFFFFFFFFFFFFFFDLL) == 1 || interval == 6;
    v25 = 11;
    repeatEndCopy5 = repeatEnd;
    if (!v34 || v32)
    {
      goto LABEL_63;
    }

    if ([v24 count])
    {
      goto LABEL_62;
    }

    v35 = monthCopy;
    v36 = [v35 count];
    v37 = recurrenceDateMatchesAnyDaySpecifiedInByMonthDayList(v35, dateCopy, zoneCopy);
    v38 = v37;
    if (v36 == 1)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0;
    }

    v55 = v39;
    v58 = positionsCopy;
    v56 = v35;
    if ([v58 count])
    {
      v54 = v38;
      v40 = [v58 objectAtIndex:0];
      integerValue = [v40 integerValue];

      if (integerValue == -1)
      {
        v35 = v56;
        if (v54)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v35 = v56;
        if (!integerValue)
        {
          goto LABEL_42;
        }
      }

LABEL_46:
      v25 = 11;
LABEL_76:

      goto LABEL_77;
    }

LABEL_42:
    v42 = v55 ^ 1;
    if (!v36)
    {
      v42 = 0;
    }

    if (v42)
    {
      goto LABEL_46;
    }

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    [currentCalendar setTimeZone:zoneCopy];
    v44 = [currentCalendar components:16 fromDate:dateCopy];
    v45 = [v44 day];

    v46 = (v45 - 29) >= 3;
    v35 = v56;
    if (!v46)
    {
      goto LABEL_46;
    }

LABEL_71:
    v52 = 7;
    if (interval == 6)
    {
      v52 = 9;
    }

    if (interval == 3)
    {
      v25 = 8;
    }

    else
    {
      v25 = v52;
    }

    goto LABEL_76;
  }

  repeatEndCopy5 = repeatEnd;
  if (frequency == 3)
  {
    v47 = [v24 count];
    v25 = 11;
    if (interval != 1 || v33)
    {
      goto LABEL_63;
    }

    if (v47 && (v47 != 1 || !recurrenceMonthMatchesAnyMonthSpecifiedInByMonthList(v24, dateCopy, zoneCopy)) || [ofTheYearCopy count] || objc_msgSend(positionsCopy, "count") || objc_msgSend(v27, "count"))
    {
      goto LABEL_62;
    }

    v35 = monthCopy;
    v48 = [v35 count];
    if (!v48 || v48 == 1 && recurrenceDateMatchesAnyDaySpecifiedInByMonthDayList(v35, dateCopy, zoneCopy))
    {
      v25 = 10;
    }

    else
    {
      v25 = 11;
    }

LABEL_77:

    goto LABEL_63;
  }

  if (frequency == 4)
  {
    v25 = 11;
    if (interval == 1 && !v32)
    {
      if (![v24 count])
      {
        if ([monthCopy count])
        {
          v25 = 11;
        }

        else
        {
          v25 = 1;
        }

        goto LABEL_63;
      }

LABEL_62:
      v25 = 11;
    }
  }

LABEL_63:

  v26 = weekCopy;
  if (!endCopy)
  {
    goto LABEL_64;
  }

LABEL_3:
  endDate = [endCopy endDate];

  if (endDate)
  {
    endDate = [endCopy endDate];
  }

  if (repeatEndCopy5)
  {
LABEL_6:
    v30 = endDate;
    *repeatEndCopy5 = endDate;
  }

LABEL_7:

  return v25;
}

+ (id)localizedDescriptionForRepeatType:(int64_t)type
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = 0;
  if (type <= 5)
  {
    if (type > 2)
    {
      if (type == 3)
      {
        v7 = @"Weekdays";
      }

      else if (type == 4)
      {
        v7 = @"Weekends";
      }

      else
      {
        v7 = @"Weekly";
      }
    }

    else if (type)
    {
      if (type == 1)
      {
        v7 = @"Hourly";
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_28;
        }

        v7 = @"Daily";
      }
    }

    else
    {
      v7 = @"Never";
    }

    goto LABEL_26;
  }

  if (type <= 8)
  {
    if (type == 6)
    {
      v7 = @"Biweekly";
    }

    else if (type == 7)
    {
      v7 = @"Monthly";
    }

    else
    {
      v7 = @"Every 3 Months";
    }

    goto LABEL_26;
  }

  if (type == 9)
  {
    v7 = @"Every 6 Months";
LABEL_26:
    v8 = &stru_1F0D67F00;
    goto LABEL_27;
  }

  if (type == 10)
  {
    v7 = @"Yearly";
    goto LABEL_26;
  }

  if (type != 11)
  {
    goto LABEL_28;
  }

  v7 = @"LOCALIZED_CUSTOM_REPEAT_TYPE_DESCRIPTION";
  v8 = @"Custom";
LABEL_27:
  v6 = [v4 localizedStringForKey:v7 value:v8 table:0];
LABEL_28:

  return v6;
}

@end