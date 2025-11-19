@interface REMRecurrenceRuleFormatter
+ (id)_andDaysOfWeekString:(id)a3;
+ (id)_byDayOfWeekOrdinalStrings;
+ (id)_customByDayItemFormatLocalizedString;
+ (id)_customDayCombinationDescription:(id)a3;
+ (id)_dayOfMonthAsString:(int64_t)a3;
+ (id)_daysOfWeek;
+ (id)_localizedOfMonthStringForMonth:(id)a3;
+ (id)_numberedWeekDayString:(id)a3;
+ (id)_orDaysOfWeekString:(id)a3;
+ (id)_readableMonths;
+ (id)_readableWeekDays;
+ (id)_stringForByDayOfWeek:(id)a3 setPositions:(id)a4;
+ (id)_stringForDayOfWeek:(int64_t)a3;
+ (id)_stringForMonthNumber:(int64_t)a3;
+ (id)_weekDayPositionAsString:(int64_t)a3;
+ (id)localizedDescriptionForRepeatType:(int64_t)a3;
+ (id)naturalLanguageDescriptionForFrequency:(int64_t)a3 interval:(int64_t)a4 daysOfTheWeek:(id)a5 daysOfTheMonth:(id)a6 monthsOfTheYear:(id)a7 weeksOfTheYear:(id)a8 daysOfTheYear:(id)a9 setPositions:(id)a10 end:(id)a11 withStartDate:(id)a12;
+ (id)naturalLanguageDescriptionForRecurrenceRule:(id)a3 withStartDate:(id)a4;
+ (id)shortNaturalLanguageDescriptionForFrequency:(int64_t)a3 interval:(int64_t)a4 daysOfTheWeek:(id)a5 daysOfTheMonth:(id)a6 monthsOfTheYear:(id)a7 setPositions:(id)a8 date:(id)a9 timeZone:(id)a10 lowercase:(BOOL)a11;
+ (id)shortNaturalLanguageDescriptionForRecurrenceRule:(id)a3 date:(id)a4 timeZone:(id)a5 lowercase:(BOOL)a6;
+ (int64_t)daysTypeForDayArray:(id)a3;
+ (int64_t)repeatTypeForFrequency:(int64_t)a3 interval:(int64_t)a4 daysOfTheWeek:(id)a5 daysOfTheMonth:(id)a6 monthsOfTheYear:(id)a7 weeksOfTheYear:(id)a8 daysOfTheYear:(id)a9 setPositions:(id)a10 end:(id)a11 recurrenceDate:(id)a12 recurrenceTimeZone:(id)a13 getRepeatEnd:(id *)a14;
+ (int64_t)repeatTypeForRecurrenceRules:(id)a3 recurrenceDate:(id)a4 recurrenceTimeZone:(id)a5 getRepeatEnd:(id *)a6;
@end

@implementation REMRecurrenceRuleFormatter

+ (id)naturalLanguageDescriptionForRecurrenceRule:(id)a3 withStartDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v17 = [v6 frequency];
  v7 = [v6 interval];
  v8 = [v6 daysOfTheWeek];
  v9 = [v6 daysOfTheMonth];
  v10 = [v6 monthsOfTheYear];
  v11 = [v6 weeksOfTheYear];
  v12 = [v6 daysOfTheYear];
  v13 = [v6 setPositions];
  v14 = [v6 recurrenceEnd];

  v15 = [a1 naturalLanguageDescriptionForFrequency:v17 interval:v7 daysOfTheWeek:v8 daysOfTheMonth:v9 monthsOfTheYear:v10 weeksOfTheYear:v11 daysOfTheYear:v12 setPositions:v13 end:v14 withStartDate:v5];

  return v15;
}

+ (id)naturalLanguageDescriptionForFrequency:(int64_t)a3 interval:(int64_t)a4 daysOfTheWeek:(id)a5 daysOfTheMonth:(id)a6 monthsOfTheYear:(id)a7 weeksOfTheYear:(id)a8 daysOfTheYear:(id)a9 setPositions:(id)a10 end:(id)a11 withStartDate:(id)a12
{
  v138 = a5;
  v17 = a6;
  v18 = a7;
  v135 = a8;
  v19 = a9;
  v137 = a10;
  v20 = a11;
  v21 = a12;
  v139 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v22 = [MEMORY[0x1E695DEE8] currentCalendar];
  v134 = v21;
  v136 = [v22 components:536 fromDate:v21];

  if (!naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableWeekDayArray)
  {
    v23 = [a1 _readableWeekDays];
    v24 = naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableWeekDayArray;
    naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableWeekDayArray = v23;
  }

  if (!naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableMonthArray)
  {
    v25 = [a1 _readableMonths];
    v26 = naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableMonthArray;
    naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableMonthArray = v25;
  }

  v27 = &stru_1F0D67F00;
  v28 = v17;
  if (a3 <= 1)
  {
    v29 = v138;
    if (!a3)
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = a4;
      if (a4 == 1)
      {
        v32 = @"Event will occur every day.";
        goto LABEL_93;
      }

      v58 = @"Event will occur every %lu days.";
      goto LABEL_133;
    }

    if (a3 != 1)
    {
      goto LABEL_153;
    }

    if (!v138 || [v138 count] == 1 && (objc_msgSend(v138, "objectAtIndex:", 0), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "dayOfTheWeek"), v35 = objc_msgSend(v136, "weekday"), v33, v34 == v35))
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = a4;
      if (a4 == 1)
      {
        v32 = @"Event will occur every week.";
        goto LABEL_93;
      }

      v58 = @"Event will occur every %lu weeks.";
LABEL_133:
      v77 = [v139 localizedStringForKey:v58 value:&stru_1F0D67F00 table:@"PluralLocalizable"];
      v117 = v31;
      goto LABEL_134;
    }

    v59 = a4;
    if (a4 != 1)
    {
      v74 = MEMORY[0x1E696AEC0];
      v75 = @"Event will occur every %lu weeks on %@.";
      goto LABEL_77;
    }

    v60 = [objc_opt_class() daysTypeForDayArray:v138];
    v27 = 0;
    if (v60 > 1)
    {
      if (v60 == 2)
      {
        v61 = @"Event will occur every weekday.";
LABEL_131:
        v27 = [v139 localizedStringForKey:v61 value:&stru_1F0D67F00 table:0];
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
    v78 = [objc_opt_class() _andDaysOfWeekString:v138];
    v79 = [v90 stringWithFormat:v77, v78];
    goto LABEL_100;
  }

  v140 = v18;
  v29 = v138;
  if (a3 == 2)
  {
    if ([v18 count])
    {
      if (![v18 count])
      {
        goto LABEL_153;
      }

      goto LABEL_20;
    }

    if ([v138 count])
    {
      if ([v137 count])
      {
        v68 = objc_opt_class();
        v69 = [v137 objectAtIndex:0];
        v70 = [v68 _weekDayPositionAsString:{objc_msgSend(v69, "integerValue")}];

        v71 = MEMORY[0x1E696AEC0];
        if (a4 == 1)
        {
          v72 = [v139 localizedStringForKey:@"Event will occur every month on the %@ %@." value:&stru_1F0D67F00 table:0];
          v73 = [objc_opt_class() _orDaysOfWeekString:v138];
          [v71 localizedStringWithFormat:v72, v70, v73, v119];
        }

        else
        {
          v72 = [v139 localizedStringForKey:@"Event will occur every %lu months on the %@ %@." value:&stru_1F0D67F00 table:@"PluralLocalizable"];
          v73 = [objc_opt_class() _orDaysOfWeekString:v138];
          [v71 localizedStringWithFormat:v72, a4, v70, v73];
        }
        v27 = ;

        goto LABEL_153;
      }

      v92 = [v138 objectAtIndex:0];
      v93 = [v92 weekNumber];

      v74 = MEMORY[0x1E696AEC0];
      if (v93)
      {
        v59 = a4;
        if (a4 == 1)
        {
          v94 = @"Event will occur every month on the %@-XX01.";
          v95 = @"Event will occur every month on the %@.";
LABEL_143:
          v77 = [v139 localizedStringForKey:v94 value:v95 table:0];
          v78 = [objc_opt_class() _andDaysOfWeekString:v138];
          [v74 localizedStringWithFormat:v77, v78, v118];
          goto LABEL_79;
        }

        v75 = @"Event will occur every %lu months on the %@-XX01.";
        v76 = @"Event will occur every %lu months on the %@.";
LABEL_78:
        v77 = [v139 localizedStringForKey:v75 value:v76 table:@"PluralLocalizable"];
        v78 = [objc_opt_class() _andDaysOfWeekString:v29];
        [v74 localizedStringWithFormat:v77, v59, v78];
        v79 = LABEL_79:;
LABEL_100:
        v27 = v79;

LABEL_135:
        goto LABEL_153;
      }

      v59 = a4;
      if (a4 == 1)
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
      v86 = [v85 integerValue];
      v87 = v20;
      v88 = [v136 day];

      v89 = v86 == v88;
      v84 = 1;
      v20 = v87;
      if (v89)
      {
LABEL_91:
        v30 = MEMORY[0x1E696AEC0];
        v31 = a4;
        if (a4 == 1)
        {
          v32 = @"Event will occur every month.";
          goto LABEL_93;
        }

        v58 = @"Event will occur every %lu months.";
        goto LABEL_133;
      }
    }

    v123 = v20;
    v127 = v28;
    v132 = [MEMORY[0x1E696AD60] string];
    v96 = a4;
    if (!v84)
    {
LABEL_125:
      v110 = MEMORY[0x1E696AEC0];
      if (v96 == 1)
      {
        v111 = [v139 localizedStringForKey:@"Event will occur every month on the %@." value:&stru_1F0D67F00 table:0];
        v112 = v132;
        [v110 localizedStringWithFormat:v111, v132, v118];
      }

      else
      {
        v111 = [v139 localizedStringForKey:@"Event will occur every %lu months on the %@." value:&stru_1F0D67F00 table:@"PluralLocalizable"];
        v112 = v132;
        [v110 localizedStringWithFormat:v111, v96, v132];
      }
      v27 = ;
      v29 = v138;
      v28 = v127;
      v20 = v123;

      goto LABEL_153;
    }

    v97 = 0;
    v125 = v19;
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
            v104 = v20;
            v105 = v29;
            v129 = v101;
            v130 = v100;
          }

          else
          {
            v101 = [v99 localizedStringForKey:@"Recurrence rule last item format for a list with three or more items.  The last part of a list: X value:Y table:{and Z. Here %@ is 'Z'", @", and %@", 0}];
            v102 = 0;
            v103 = 1;
            v104 = v20;
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
        [v132 appendFormat:v101, v109];

        if (v103)
        {
        }

        v18 = v140;
        v19 = v125;
        if (v102)
        {
        }

        v20 = v104;
        v29 = v105;
        v96 = a4;
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
        [v132 appendString:v105];
        v98 = 1;
      }

      v104 = v20;
      v105 = v29;
LABEL_124:
      v29 = v105;
      v20 = v104;
      v97 = v98;
      v84 = v142;
      if (v98 == v142)
      {
        goto LABEL_125;
      }
    }
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      goto LABEL_153;
    }

    v30 = MEMORY[0x1E696AEC0];
    v31 = a4;
    if (a4 == 1)
    {
      v32 = @"Event will occur every hour.";
LABEL_93:
      v77 = [v139 localizedStringForKey:v32 value:&stru_1F0D67F00 table:0];
LABEL_134:
      v27 = [v30 localizedStringWithFormat:v77, v117];
      goto LABEL_135;
    }

    v58 = @"Event will occur every %lu hours.";
    goto LABEL_133;
  }

LABEL_20:
  if ([v18 count] == 1)
  {
    a3 = [v18 objectAtIndex:0];
    v36 = [a3 integerValue];
    v37 = v36 == [v136 month];
  }

  else
  {
    v37 = 0;
  }

  if (![v138 count] && (objc_msgSend(v18, "count") == 0 || v37))
  {
    v30 = MEMORY[0x1E696AEC0];
    v31 = a4;
    if (a4 == 1)
    {
      v32 = @"Event will occur every year.";
      goto LABEL_93;
    }

    v58 = @"Event will occur every %lu years.";
    goto LABEL_133;
  }

  v122 = v20;
  v124 = v19;
  v126 = v28;
  v141 = [MEMORY[0x1E696AD60] string];
  v38 = [v18 count];
  if (v38)
  {
    v39 = v38;
    v40 = 0;
    while (1)
    {
      v41 = [v18 objectAtIndex:v40];
      v42 = v41;
      if (v40)
      {
        break;
      }

      if ([v41 integerValue] < 1 || objc_msgSend(v42, "integerValue") >= 13)
      {
        [v141 appendString:@"???"];
      }

      else
      {
        v48 = [naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableMonthArray objectAtIndex:{objc_msgSend(v42, "integerValue") - 1}];
        [v141 appendString:v48];
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
      v20 = v44;
      a3 = v45;
    }

    if ([v42 integerValue] < 1 || objc_msgSend(v42, "integerValue") >= 13)
    {
      [v141 appendFormat:v45, @"???"];
      if (!v47)
      {
LABEL_47:
        if (v46)
        {
        }

        if (v40 + 1 < v39)
        {
        }

        v18 = v140;
        goto LABEL_52;
      }
    }

    else
    {
      v49 = [naturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_weeksOfTheYear_daysOfTheYear_setPositions_end_withStartDate__readableMonthArray objectAtIndex:{objc_msgSend(v42, "integerValue") - 1}];
      [v141 appendFormat:v45, v49];

      if (!v47)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_47;
  }

LABEL_53:
  if (![v137 count])
  {
    v62 = [v138 objectAtIndex:0];
    v63 = [v62 weekNumber];

    if (v63)
    {
      v18 = v140;
      v64 = [v140 count];
      v65 = MEMORY[0x1E696AEC0];
      v20 = v122;
      v19 = v124;
      if (v64)
      {
        v66 = a4;
        if (a4 == 1)
        {
          v67 = @"Event will occur every year on the %@ of %@.";
LABEL_86:
          v52 = [v139 localizedStringForKey:v67 value:&stru_1F0D67F00 table:0];
          v81 = [objc_opt_class() _andDaysOfWeekString:v138];
          v82 = v81;
          v118 = v141;
LABEL_140:
          [v65 localizedStringWithFormat:v52, v81, v118, v119];
          v27 = LABEL_151:;

          goto LABEL_152;
        }

        v115 = @"Event will occur every %lu years on the %@ of %@.";
        goto LABEL_146;
      }

      v66 = a4;
      if (a4 == 1)
      {
        v91 = @"Event will occur every year on the %@.";
LABEL_139:
        v52 = [v139 localizedStringForKey:v91 value:&stru_1F0D67F00 table:0];
        v81 = [objc_opt_class() _andDaysOfWeekString:v138];
        v82 = v81;
        goto LABEL_140;
      }

      v114 = @"Event will occur every %lu years on the %@.";
    }

    else
    {
      v20 = v122;
      v19 = v124;
      if (![v138 count])
      {
        v113 = MEMORY[0x1E696AEC0];
        v18 = v140;
        if (a4 == 1)
        {
          v52 = [v139 localizedStringForKey:@"Event will occur every year in %@." value:&stru_1F0D67F00 table:0];
          [v113 localizedStringWithFormat:v52, v141, v118];
        }

        else
        {
          v52 = [v139 localizedStringForKey:@"Event will occur every %lu years in %@." value:&stru_1F0D67F00 table:@"PluralLocalizable"];
          [v113 localizedStringWithFormat:v52, a4, v141];
        }
        v27 = ;
        goto LABEL_152;
      }

      v18 = v140;
      v80 = [v140 count];
      v65 = MEMORY[0x1E696AEC0];
      v66 = a4;
      if (v80)
      {
        if (a4 == 1)
        {
          v67 = @"Event will occur every year on every %@ in %@.";
          goto LABEL_86;
        }

        v115 = @"Event will occur every %lu years on every %@ in %@.";
LABEL_146:
        v52 = [v139 localizedStringForKey:v115 value:&stru_1F0D67F00 table:@"PluralLocalizable"];
        v82 = [objc_opt_class() _andDaysOfWeekString:v138];
        [v65 localizedStringWithFormat:v52, v66, v82, v141];
        goto LABEL_151;
      }

      if (a4 == 1)
      {
        v91 = @"Event will occur every year on every %@.";
        goto LABEL_139;
      }

      v114 = @"Event will occur every %lu years on every %@.";
    }

    v52 = [v139 localizedStringForKey:v114 value:&stru_1F0D67F00 table:@"PluralLocalizable"];
    v82 = [objc_opt_class() _andDaysOfWeekString:v138];
    [v65 localizedStringWithFormat:v52, v66, v82, v119];
    goto LABEL_151;
  }

  v50 = objc_opt_class();
  v51 = [v137 objectAtIndex:0];
  v52 = [v50 _weekDayPositionAsString:{objc_msgSend(v51, "integerValue")}];

  v53 = [v18 count];
  v54 = MEMORY[0x1E696AEC0];
  if (v53)
  {
    v19 = v124;
    if (a4 != 1)
    {
      v55 = [v139 localizedStringForKey:@"Event will occur every %lu years on the %@ %@ of %@." value:&stru_1F0D67F00 table:@"PluralLocalizable"];
      v57 = [objc_opt_class() _orDaysOfWeekString:v138];
      [v54 localizedStringWithFormat:v55, a4, v52, v57, v141];
      goto LABEL_95;
    }

    v55 = [v139 localizedStringForKey:@"Event will occur every year on the %@ %@ of %@." value:&stru_1F0D67F00 table:0];
    v56 = [objc_opt_class() _orDaysOfWeekString:v138];
    v57 = v56;
    v119 = v141;
  }

  else
  {
    v19 = v124;
    if (a4 != 1)
    {
      v55 = [v139 localizedStringForKey:@"Event will occur every %lu years on the %@ %@." value:&stru_1F0D67F00 table:@"PluralLocalizable"];
      v57 = [objc_opt_class() _orDaysOfWeekString:v138];
      [v54 localizedStringWithFormat:v55, a4, v52, v57, v120];
      goto LABEL_95;
    }

    v55 = [v139 localizedStringForKey:@"Event will occur every year on the %@ %@." value:&stru_1F0D67F00 table:0];
    v56 = [objc_opt_class() _orDaysOfWeekString:v138];
    v57 = v56;
  }

  [v54 localizedStringWithFormat:v55, v52, v56, v119, v120];
  v27 = LABEL_95:;

  v20 = v122;
LABEL_152:

  v29 = v138;
  v28 = v126;
LABEL_153:

  return v27;
}

+ (id)_readableWeekDays
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = [v2 standaloneWeekdaySymbols];
  v4 = [v3 copy];

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
  v3 = [v2 standaloneMonthSymbols];
  v4 = [v3 copy];

  if ([v4 count] != 12)
  {
    NSLog(&cfstr_Nsdateformatte_0.isa);
    v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", 0}];

    v4 = v5;
  }

  return v4;
}

+ (id)_andDaysOfWeekString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if ([v3 count])
  {
    v6 = 0;
    do
    {
      v7 = [v3 objectAtIndex:v6];
      if (v6)
      {
        if (v6 == [v3 count] - 1)
        {
          if ([v3 count] == 2)
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
        [v4 appendFormat:v11, v12];
      }

      else
      {
        v11 = [objc_opt_class() _numberedWeekDayString:v7];
        [v4 appendString:v11];
      }

      ++v6;
    }

    while (v6 < [v3 count]);
  }

  return v4;
}

+ (id)_numberedWeekDayString:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _daysOfWeek];
  v5 = [v4 objectAtIndex:{objc_msgSend(v3, "dayOfTheWeek")}];

  if ([v3 weekNumber])
  {
    v6 = [objc_opt_class() _weekDayPositionAsString:{objc_msgSend(v3, "weekNumber")}];
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
    v4 = a1;
    objc_sync_enter(v4);
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v6 = [v5 standaloneWeekdaySymbols];
    v7 = [v6 mutableCopy];

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

    objc_sync_exit(v4);
    v3 = _daysOfWeek_sDaysOfWeek;
  }

  return v3;
}

+ (id)_dayOfMonthAsString:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = &stru_1F0D67F00;
  switch(a3)
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

+ (id)_weekDayPositionAsString:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = &stru_1F0D67F00;
  switch(a3)
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

+ (id)_orDaysOfWeekString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [objc_opt_class() _customDayCombinationDescription:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD60] string];
    if ([v3 count])
    {
      v8 = 0;
      do
      {
        v9 = [v3 objectAtIndex:v8];
        if (v8)
        {
          if (v8 == [v3 count] - 1)
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
          [v7 appendFormat:v12, v13];
        }

        else
        {
          v12 = [objc_opt_class() _numberedWeekDayString:v9];
          [v7 appendString:v12];
        }

        ++v8;
      }

      while (v8 < [v3 count]);
    }
  }

  return v7;
}

+ (id)_customDayCombinationDescription:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [objc_opt_class() daysTypeForDayArray:v4];

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

+ (int64_t)daysTypeForDayArray:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 count];
  switch(v4)
  {
    case 2:
      v19 = [v3 objectAtIndex:0];
      v20 = [v19 dayOfTheWeek];

      v21 = [v3 objectAtIndex:1];
      v22 = [v21 dayOfTheWeek];

      if (v20 == 7 && v22 == 1 || v20 == 1 && v22 == 7)
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
        v14 = v3;
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
        v7 = v3;
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

+ (id)shortNaturalLanguageDescriptionForRecurrenceRule:(id)a3 date:(id)a4 timeZone:(id)a5 lowercase:(BOOL)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v11 frequency];
  v13 = [v11 interval];
  v14 = [v11 daysOfTheWeek];
  v15 = [v11 daysOfTheMonth];
  v16 = [v11 monthsOfTheYear];
  v17 = [v11 setPositions];

  LOBYTE(v20) = a6;
  v18 = [a1 shortNaturalLanguageDescriptionForFrequency:v12 interval:v13 daysOfTheWeek:v14 daysOfTheMonth:v15 monthsOfTheYear:v16 setPositions:v17 date:v10 timeZone:v9 lowercase:v20];

  return v18;
}

+ (id)shortNaturalLanguageDescriptionForFrequency:(int64_t)a3 interval:(int64_t)a4 daysOfTheWeek:(id)a5 daysOfTheMonth:(id)a6 monthsOfTheYear:(id)a7 setPositions:(id)a8 date:(id)a9 timeZone:(id)a10 lowercase:(BOOL)a11
{
  v248[1] = *MEMORY[0x1E69E9840];
  v17 = a5;
  v233 = a6;
  v18 = a7;
  v236 = a8;
  v234 = a9;
  v19 = a10;
  v235 = [MEMORY[0x1E695DF58] currentLocale];
  v241 = a1;
  v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v238 = [v20 localizedStringForKey:@" value:and %@" table:{&stru_1F0D67F00, 0}];
  v237 = [v20 localizedStringForKey:@" and %@" value:&stru_1F0D67F00 table:0];
  v232 = [v20 localizedStringForKey:@"Monthly" value:&stru_1F0D67F00 table:0];
  v21 = [v20 localizedStringForKey:@"Custom Repeat" value:&stru_1F0D67F00 table:0];
  if (shortNaturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_setPositions_date_timeZone_lowercase__onceToken != -1)
  {
    +[REMRecurrenceRuleFormatter shortNaturalLanguageDescriptionForFrequency:interval:daysOfTheWeek:daysOfTheMonth:monthsOfTheYear:setPositions:date:timeZone:lowercase:];
  }

  v22 = 0;
  v23 = a11;
  if (a3 <= 1)
  {
    if (!a3)
    {
      if (a4 >= 2)
      {
        v25 = a4;
        v26 = v21;
        v27 = v19;
        v28 = @"Every %u days";
        goto LABEL_31;
      }

      v37 = [v20 localizedStringForKey:@"Daily" value:&stru_1F0D67F00 table:0];
      v24 = v236;
      if (!a11)
      {
LABEL_40:
        v54 = v37;
        goto LABEL_161;
      }

LABEL_37:
      v53 = v37;
      goto LABEL_38;
    }

    v24 = v236;
    if (a3 != 1)
    {
      goto LABEL_323;
    }

    v29 = v21;
    v30 = v18;
    v228 = v29;
    v31 = v17;
    v32 = [v31 count];
    if (!v32 || (v33 = v32, v34 = v32 - 1, v32 == 1) && recurrenceDateMatchesAnyDaySpecifiedInByDayList(v31, v234, v19))
    {
      if (a4 == 1)
      {
        v35 = [v20 localizedStringForKey:@"SINGULAR_WEEKLY_RECURRENCE" value:@"Weekly" table:0];
        v22 = v35;
        v18 = v30;
        if (!a11)
        {
          v61 = v236;
          v21 = v228;
          goto LABEL_117;
        }

        v36 = [v35 lowercaseStringWithLocale:v235];
      }

      else
      {
        v22 = [v20 localizedStringForKey:@"Every %u weeks" value:&stru_1F0D67F00 table:@"PluralLocalizable"];
        v95 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v22, a4];
        v36 = v95;
        v18 = v30;
        if (a11)
        {
          v96 = [v95 lowercaseStringWithLocale:v235];

          v36 = v96;
        }
      }

      v61 = v236;
      v21 = v228;
LABEL_116:

      v22 = v36;
LABEL_117:

      v24 = v61;
      goto LABEL_323;
    }

    v213 = a4;
    v221 = v30;
    v226 = v20;
    v218 = v17;
    v22 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    do
    {
      v58 = [v31 objectAtIndex:v55];
      v59 = [v241 _stringForDayOfWeek:{objc_msgSend(v58, "dayOfTheWeek") - 1}];
      v60 = v59;
      if (v55)
      {
        if (v55 >= v34)
        {
          if (v33 < 3)
          {
            [v22 appendFormat:v237, v59];
          }

          else
          {
            [v22 appendFormat:v238, v59];
          }
        }

        else
        {
          [v22 appendFormat:@", %@", v59];
        }
      }

      else
      {
        [v22 appendString:v59];
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
    if (v213 == 1 && !v57 && v56 == 5)
    {
      v20 = v226;
      v36 = [v226 localizedStringForKey:@"Weekdays" value:&stru_1F0D67F00 table:0];
      v61 = v236;
      v62 = v228;
      if (a11)
      {
LABEL_59:
        v63 = [v36 lowercaseStringWithLocale:v235];
LABEL_113:
        v97 = v63;
        v17 = v218;
        v18 = v221;
        goto LABEL_114;
      }
    }

    else
    {
      v61 = v236;
      v62 = v228;
      if (v213 != 1 || v57 != 2 || v56)
      {
        v20 = v226;
        if (v213 == 1)
        {
          v117 = [v226 localizedStringForKey:@"Every week on %@" value:&stru_1F0D67F00 table:0];
          [MEMORY[0x1E696AEC0] localizedStringWithFormat:v117, v22, v196];
        }

        else
        {
          v117 = [v226 localizedStringForKey:@"Every %u weeks on %@" value:&stru_1F0D67F00 table:@"PluralLocalizable"];
          [MEMORY[0x1E696AEC0] localizedStringWithFormat:v117, v213, v22];
        }
        v36 = ;
        v17 = v218;
        v18 = v221;

        if (!a11)
        {
          goto LABEL_115;
        }

        v97 = [v36 lowercaseStringWithLocale:v235];
LABEL_114:

        v36 = v97;
LABEL_115:
        v21 = v62;
        goto LABEL_116;
      }

      v20 = v226;
      v36 = [v226 localizedStringForKey:@"Weekends" value:&stru_1F0D67F00 table:0];
      if (a11)
      {
        goto LABEL_59;
      }
    }

    v63 = v36;
    v36 = v63;
    goto LABEL_113;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      v24 = v236;
      if (a3 != 4)
      {
        goto LABEL_323;
      }

      if (a4 >= 2)
      {
        v25 = a4;
        v26 = v21;
        v27 = v19;
        v28 = @"Every %u hours";
LABEL_31:
        v49 = [v20 localizedStringForKey:v28 value:&stru_1F0D67F00 table:0];
        v50 = v49;
        v51 = MEMORY[0x1E696AEC0];
        v52 = v49;
        if (a11)
        {
          v52 = [v49 lowercaseStringWithLocale:v235];
        }

        v22 = [v51 localizedStringWithFormat:v52, v25];
        if (a11)
        {
        }

        v19 = v27;
        v24 = v236;
        v21 = v26;
        goto LABEL_323;
      }

      v37 = [v20 localizedStringForKey:@"Hourly" value:&stru_1F0D67F00 table:0];
      if (!a11)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v47 = v17;
    v211 = v47;
    if ([v47 count])
    {
      v48 = [v47 objectAtIndex:0];
      v239 = [v241 _stringForByDayOfWeek:v48 setPositions:v236];
    }

    else
    {
      v239 = 0;
    }

    v230 = v21;
    v69 = v18;
    if (![v69 count])
    {
      v70 = [MEMORY[0x1E695DEE8] currentCalendar];
      [v70 setTimeZone:v19];
      v216 = v69;
      v71 = MEMORY[0x1E696AD98];
      v72 = [v70 components:8 fromDate:v234];
      v73 = [v71 numberWithInteger:{objc_msgSend(v72, "month")}];
      v248[0] = v73;
      v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v248 count:1];

      v69 = v74;
      v23 = a11;
    }

    v217 = v69;
    if (v239 || [v69 count] > 1 || (recurrenceMonthMatchesAnyMonthSpecifiedInByMonthList(v69, v234, v19) & 1) == 0)
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
        v214 = a4;
        v207 = v19;
        v219 = v17;
        v222 = v18;
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

            v82 = [v241 _stringForMonthNumber:{objc_msgSend(*(*(&v243 + 1) + 8 * i), "intValue")}];
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
          a4 = v214;
          v17 = v219;
          v18 = v222;
          v21 = v230;
          if (v214 < 2)
          {
            v98 = [v20 localizedStringForKey:@"Every year in %@" value:&stru_1F0D67F00 table:0];
            v86 = v98;
            v99 = MEMORY[0x1E696AEC0];
            v88 = v98;
            if (v23)
            {
              v88 = [v98 lowercaseStringWithLocale:v235];
            }

            [v99 localizedStringWithFormat:v88, v79, v196];
          }

          else
          {
            v85 = [v20 localizedStringForKey:@"Every %u years in %@" value:&stru_1F0D67F00 table:0];
            v86 = v85;
            v87 = MEMORY[0x1E696AEC0];
            v88 = v85;
            if (v23)
            {
              v88 = [v85 lowercaseStringWithLocale:v235];
            }

            [v87 localizedStringWithFormat:v88, v214, v79];
          }
          v100 = ;
          v101 = v88;
          v22 = v100;
          v102 = 1;
          if (!v23)
          {
            goto LABEL_309;
          }

          goto LABEL_308;
        }

        v17 = v219;
        v18 = v222;
        v21 = v230;
        a4 = v214;
        if (!v239 || !v79)
        {
          goto LABEL_312;
        }

        v89 = [v76 objectAtIndexedSubscript:0];
        v86 = [v241 _localizedOfMonthStringForMonth:v89];

        v90 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v86, v79];
        v242 = v90;
        if ([v211 count] == 7)
        {
          if (![v236 count])
          {
            goto LABEL_201;
          }

          v91 = v230;
          v92 = [v236 objectAtIndex:0];
          v93 = [v92 intValue];

          if (v93 != 1)
          {
            v21 = v230;
            if (v93 == -1)
            {
              if (v214 >= 2)
              {
                v94 = @"Every %u years on the last day %@";
LABEL_198:
                v142 = [v20 localizedStringForKey:v94 value:&stru_1F0D67F00 table:0];
                v143 = MEMORY[0x1E696AEC0];
                v206 = v142;
                if (v23)
                {
                  v142 = [v142 lowercaseStringWithLocale:v235];
                }

                v195 = v214;
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

          if (v214 >= 2)
          {
            v159 = @"Every %u years on the first day %@";
LABEL_275:
            v175 = [v20 localizedStringForKey:v159 value:&stru_1F0D67F00 table:0];
            v176 = MEMORY[0x1E696AEC0];
            v206 = v175;
            v21 = v91;
            if (v23)
            {
              v175 = [v175 lowercaseStringWithLocale:v235];
            }

            v195 = v214;
            v196 = v242;
LABEL_303:
            v182 = v176;
            v204 = v175;
            v183 = v175;
LABEL_304:
            v22 = [v182 localizedStringWithFormat:v183, v195, v196];
            v102 = 0;
            if (!v23)
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
          if (![v236 count])
          {
            goto LABEL_201;
          }

          v91 = v230;
          v118 = [v236 objectAtIndex:0];
          v119 = [v118 intValue];

          if (v119 != 1)
          {
            v21 = v230;
            if (v119 == -1)
            {
              if (v214 >= 2)
              {
                v94 = @"Every %u years on the last weekday %@";
                goto LABEL_198;
              }

              v168 = @"Every year on the last weekday %@";
LABEL_295:
              v142 = [v20 localizedStringForKey:v168 value:&stru_1F0D67F00 table:0];
              v143 = MEMORY[0x1E696AEC0];
              v206 = v142;
              if (v23)
              {
                v142 = [v142 lowercaseStringWithLocale:v235];
              }

              v195 = v242;
              goto LABEL_298;
            }

LABEL_201:
            v102 = 0;
            v22 = 0;
LABEL_307:
            v101 = v242;
LABEL_308:

LABEL_309:
            if (v22)
            {
              v19 = v207;
LABEL_322:

              v24 = v236;
              goto LABEL_323;
            }

            v19 = v207;
            if (!v102)
            {
              v22 = v21;
              goto LABEL_322;
            }

LABEL_312:
            if (a4 < 2)
            {
              v189 = [v20 localizedStringForKey:@"Yearly" value:&stru_1F0D67F00 table:0];
              v190 = v189;
              if (v23)
              {
                v191 = [v189 lowercaseStringWithLocale:v235];
              }

              else
              {
                v191 = v189;
              }

              v22 = v191;
            }

            else
            {
              v225 = v18;
              v184 = v19;
              v185 = [v20 localizedStringForKey:@"Every %u years" value:&stru_1F0D67F00 table:0];
              v186 = v185;
              v187 = MEMORY[0x1E696AEC0];
              v188 = v185;
              if (v23)
              {
                v188 = [v185 lowercaseStringWithLocale:v235];
              }

              v22 = [v187 localizedStringWithFormat:v188, a4];
              if (v23)
              {
              }

              v19 = v184;
              v21 = v230;
              v18 = v225;
            }

            goto LABEL_322;
          }

          if (v214 >= 2)
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
            if (v214 < 2)
            {
              v166 = [v20 localizedStringForKey:@"Every year on the %@ %@" value:&stru_1F0D67F00 table:0];
              v167 = MEMORY[0x1E696AEC0];
              v206 = v166;
              if (v23)
              {
                v166 = [v166 lowercaseStringWithLocale:v235];
              }

              v204 = v166;
              v22 = [v167 localizedStringWithFormat:v166, v239, v90];
              v102 = 1;
              if (!v23)
              {
                goto LABEL_306;
              }
            }

            else
            {
              v155 = [v20 localizedStringForKey:@"Every %u years on the %@ %@" value:&stru_1F0D67F00 table:0];
              v156 = MEMORY[0x1E696AEC0];
              v206 = v155;
              if (v23)
              {
                v155 = [v155 lowercaseStringWithLocale:v235];
              }

              v204 = v155;
              v22 = [v156 localizedStringWithFormat:v155, v214, v239, v90];
              v102 = 1;
              if (!v23)
              {
                goto LABEL_306;
              }
            }

            goto LABEL_305;
          }

          if (![v236 count])
          {
            goto LABEL_201;
          }

          v91 = v230;
          v140 = [v236 objectAtIndex:0];
          v141 = [v140 intValue];

          if (v141 != 1)
          {
            v21 = v230;
            if (v141 == -1)
            {
              if (v214 >= 2)
              {
                v94 = @"Every %u years on the last weekend day %@";
                goto LABEL_198;
              }

              v168 = @"Every year on the last weekend day %@";
              goto LABEL_295;
            }

            goto LABEL_201;
          }

          if (v214 >= 2)
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
        if (v23)
        {
          v175 = [v175 lowercaseStringWithLocale:v235];
        }

        v195 = v242;
        goto LABEL_303;
      }
    }

    v79 = 0;
    v21 = v230;
    goto LABEL_312;
  }

  v37 = v17;
  v38 = [v37 count];
  if ([v18 count])
  {
    LOBYTE(v197) = a11;
    v24 = v236;
    v22 = [v241 shortNaturalLanguageDescriptionForFrequency:3 interval:a4 daysOfTheWeek:v37 daysOfTheMonth:v233 monthsOfTheYear:v18 setPositions:v236 date:v234 timeZone:v19 lowercase:v197];
    goto LABEL_19;
  }

  v212 = v37;
  if (v38)
  {
    if (v38 == 7)
    {
      v24 = v236;
      if (![v236 count])
      {
        goto LABEL_160;
      }

      v229 = v21;
      v64 = [v236 objectAtIndex:0];
      v65 = [v64 intValue];

      if (v65 != 1)
      {
        v66 = v65 == -1;
        v21 = v229;
        v37 = v212;
        if (!v66)
        {
          goto LABEL_160;
        }

        if (a4 >= 2)
        {
          v67 = v19;
          v68 = @"Every %u months on the last day";
LABEL_265:
          v171 = [v20 localizedStringForKey:v68 value:&stru_1F0D67F00 table:0];
          v172 = v171;
          v173 = MEMORY[0x1E696AEC0];
          v174 = v171;
          if (a11)
          {
            v174 = [v171 lowercaseStringWithLocale:v235];
          }

          v22 = [v173 localizedStringWithFormat:v174, a4];
          if (a11)
          {
          }

          v39 = 0;
          v19 = v67;
          v24 = v236;
          goto LABEL_270;
        }

        v160 = @"Every month on the last day";
        goto LABEL_282;
      }

      if (a4 >= 2)
      {
        v67 = v19;
        v68 = @"Every %u months on the first day";
        goto LABEL_265;
      }

      v161 = @"Every month on the first day";
      goto LABEL_287;
    }

    v24 = v236;
    if ([v37 isEqualToArray:shortNaturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_setPositions_date_timeZone_lowercase____WeekdaysByDayArray])
    {
      if (![v236 count])
      {
        goto LABEL_160;
      }

      v229 = v21;
      v115 = [v236 objectAtIndex:0];
      v116 = [v115 intValue];

      if (v116 != 1)
      {
        v66 = v116 == -1;
        v21 = v229;
        v37 = v212;
        if (!v66)
        {
          goto LABEL_160;
        }

        if (a4 >= 2)
        {
          v67 = v19;
          v68 = @"Every %u months on the last weekday";
          goto LABEL_265;
        }

        v160 = @"Every month on the last weekday";
        goto LABEL_282;
      }

      if (a4 >= 2)
      {
        v67 = v19;
        v68 = @"Every %u months on the first weekday";
        goto LABEL_265;
      }

      v161 = @"Every month on the first weekday";
      goto LABEL_287;
    }

    if ([v37 isEqualToArray:shortNaturalLanguageDescriptionForFrequency_interval_daysOfTheWeek_daysOfTheMonth_monthsOfTheYear_setPositions_date_timeZone_lowercase____WeekendsByDayArray])
    {
      if (![v236 count])
      {
        goto LABEL_160;
      }

      v229 = v21;
      v120 = [v236 objectAtIndex:0];
      v121 = [v120 intValue];

      if (v121 != 1)
      {
        v66 = v121 == -1;
        v21 = v229;
        v37 = v212;
        if (!v66)
        {
          goto LABEL_160;
        }

        if (a4 >= 2)
        {
          v67 = v19;
          v68 = @"Every %u months on the last weekend day";
          goto LABEL_265;
        }

        v160 = @"Every month on the last weekend day";
LABEL_282:
        v177 = [v20 localizedStringForKey:v160 value:&stru_1F0D67F00 table:0];
        v178 = v177;
        if (a11)
        {
          v179 = [v177 lowercaseStringWithLocale:v235];
        }

        else
        {
          v179 = v177;
        }

        v22 = v179;
LABEL_291:

        v39 = 0;
LABEL_292:
        v37 = v212;
        if (!v22)
        {
          goto LABEL_20;
        }

        goto LABEL_162;
      }

      if (a4 >= 2)
      {
        v67 = v19;
        v68 = @"Every %u months on the first weekend day";
        goto LABEL_265;
      }

      v161 = @"Every month on the first weekend day";
LABEL_287:
      v180 = [v20 localizedStringForKey:v161 value:&stru_1F0D67F00 table:0];
      v178 = v180;
      if (a11)
      {
        v181 = [v180 lowercaseStringWithLocale:v235];
      }

      else
      {
        v181 = v180;
      }

      v22 = v181;
      v21 = v229;
      goto LABEL_291;
    }

    v229 = v21;
    v144 = [v37 objectAtIndex:0];
    v145 = [v241 _stringForByDayOfWeek:v144 setPositions:v236];

    if (!v145)
    {
      v22 = 0;
LABEL_251:

      v39 = 1;
LABEL_270:
      v21 = v229;
      goto LABEL_292;
    }

    v209 = v19;
    if (a4 < 2)
    {
      v164 = [v20 localizedStringForKey:@"Every month on the %@" value:&stru_1F0D67F00 table:0];
      v147 = v164;
      v165 = MEMORY[0x1E696AEC0];
      v149 = v164;
      if (a11)
      {
        v149 = [v164 lowercaseStringWithLocale:v235];
      }

      v22 = [v165 localizedStringWithFormat:v149, v145];
      if (!a11)
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
      if (a11)
      {
        v149 = [v146 lowercaseStringWithLocale:v235];
      }

      v22 = [v148 localizedStringWithFormat:v149, a4, v145];
      if (!a11)
      {
        goto LABEL_250;
      }
    }

LABEL_250:
    v19 = v209;
    v24 = v236;
    goto LABEL_251;
  }

  v215 = a4;
  v220 = v233;
  v103 = [v220 count];
  v231 = v21;
  if ([v236 count])
  {
    v104 = [v236 objectAtIndex:0];
    v105 = [v104 intValue];

    v66 = v105 == -1;
    v21 = v231;
    if (v66)
    {
      if (recurrenceDateMatchesAnyDaySpecifiedInByMonthDayList(v220, v234, v19))
      {
        a4 = v215;
        if (v215 < 2)
        {
          v24 = v236;
          v37 = v212;
          if (a11)
          {
            v170 = [v232 lowercaseStringWithLocale:v235];
          }

          else
          {
            v170 = v232;
          }

          v22 = v170;
          goto LABEL_244;
        }

        v150 = v19;
        v151 = [v20 localizedStringForKey:@"Every %u months" value:&stru_1F0D67F00 table:0];
        v152 = v151;
        v153 = MEMORY[0x1E696AEC0];
        v154 = v151;
        if (a11)
        {
          v154 = [v151 lowercaseStringWithLocale:v235];
        }

        v22 = [v153 localizedStringWithFormat:v154, v215];
        if (a11)
        {
        }

        v19 = v150;
        v24 = v236;
        v21 = v231;
      }

      else
      {
        v22 = 0;
        v24 = v236;
        a4 = v215;
      }

LABEL_243:
      v37 = v212;
      goto LABEL_244;
    }
  }

  if (!v103 || v103 == 1 && (recurrenceDateMatchesAnyDaySpecifiedInByMonthDayList(v220, v234, v19) & 1) != 0)
  {
    v106 = v21;
    v107 = [MEMORY[0x1E695DEE8] currentCalendar];
    v108 = v19;
    [v107 setTimeZone:v19];
    v109 = [v107 components:16 fromDate:v234];
    v110 = [v109 day];

    if ((v110 - 29) > 2)
    {
      v22 = 0;
      v19 = v108;
      v21 = v106;
      a4 = v215;
LABEL_242:

      v24 = v236;
      goto LABEL_243;
    }

    v223 = v18;
    a4 = v215;
    if (v215 < 2)
    {
      v162 = [v20 localizedStringForKey:@"Every month that has %u days" value:&stru_1F0D67F00 table:0];
      v112 = v162;
      v163 = MEMORY[0x1E696AEC0];
      v114 = v162;
      if (a11)
      {
        v114 = [v162 lowercaseStringWithLocale:v235];
      }

      v22 = [v163 localizedStringWithFormat:v114, v110];
      v23 = a11;
      if (!a11)
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
      if (a11)
      {
        v114 = [v111 lowercaseStringWithLocale:v235];
      }

      v22 = [v113 localizedStringWithFormat:v114, v215, v110];
      v23 = a11;
      if (!a11)
      {
        goto LABEL_241;
      }
    }

LABEL_241:
    v19 = v108;
    v21 = v231;
    v18 = v223;
    goto LABEL_242;
  }

  v240 = 0;
  v122 = 0;
  v205 = v103;
  v208 = v19;
  v224 = v18;
  v227 = v20;
  do
  {
    v123 = [v220 objectAtIndex:v122];
    v124 = [v123 intValue];

    if (v124 < 1)
    {
      goto LABEL_184;
    }

    if (!v240)
    {
      v130 = v18;
      v131 = v17;
      v132 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v126 = [v241 _dayOfMonthAsString:v124];
      v240 = v132;
      v133 = v132;
      v17 = v131;
      v18 = v130;
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

    v134 = [v241 _dayOfMonthAsString:v124];
    [v240 appendFormat:v127, v134];

    if (v128)
    {
    }

    v103 = v205;
    if (v129)
    {
    }

    v18 = v224;
    v20 = v227;
    v21 = v231;
    if (v122 + 1 < v205)
    {

      v203 = v126;
      v19 = v208;
      goto LABEL_182;
    }

    v203 = v126;
    v19 = v208;
LABEL_184:
    ++v122;
  }

  while (v103 != v122);
  v37 = v212;
  if (v240)
  {
    v135 = v19;
    a4 = v215;
    v23 = a11;
    if (v215 >= 2)
    {
      v136 = [v20 localizedStringForKey:@"Every %u months value:each %@" table:{&stru_1F0D67F00, 0}];
      v137 = v136;
      v138 = MEMORY[0x1E696AEC0];
      v139 = v136;
      if (a11)
      {
        v139 = [v136 lowercaseStringWithLocale:v235];
      }

      v22 = [v138 localizedStringWithFormat:v139, v215, v240];
      if (!a11)
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
    if (a11)
    {
      v139 = [v157 lowercaseStringWithLocale:v235];
    }

    v22 = [v158 localizedStringWithFormat:v139, v240];
    if (a11)
    {
      goto LABEL_227;
    }

LABEL_228:

    v19 = v135;
    v21 = v231;
    v37 = v212;
  }

  else
  {
    v22 = 0;
    v23 = a11;
    a4 = v215;
  }

  v24 = v236;
LABEL_244:

LABEL_19:
  v39 = 1;
  if (!v22)
  {
LABEL_20:
    if (v39)
    {
      if (a4 >= 2)
      {
        v210 = v37;
        v40 = a4;
        v41 = v21;
        v42 = v19;
        v43 = [v20 localizedStringForKey:@"Every %u months" value:&stru_1F0D67F00 table:0];
        v44 = v43;
        v45 = MEMORY[0x1E696AEC0];
        v46 = v43;
        if (v23)
        {
          v46 = [v43 lowercaseStringWithLocale:v235];
        }

        v22 = [v45 localizedStringWithFormat:v46, v40];
        if (v23)
        {
        }

        v19 = v42;
        v24 = v236;
        v21 = v41;
        v37 = v210;
        goto LABEL_162;
      }

      if (v23)
      {
        v53 = v232;
LABEL_38:
        v54 = [v53 lowercaseStringWithLocale:v235];
      }

      else
      {
        v54 = v232;
      }

LABEL_161:
      v22 = v54;
      goto LABEL_162;
    }

LABEL_160:
    v54 = v21;
    goto LABEL_161;
  }

LABEL_162:

LABEL_323:
  v192 = v22;

  v193 = *MEMORY[0x1E69E9840];
  return v22;
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

+ (id)_stringForDayOfWeek:(int64_t)a3
{
  v4 = [a1 _readableWeekDays];
  v5 = v4;
  if (a3 < 0 || [v4 count] <= a3)
  {
    v6 = @"???";
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:a3];
  }

  return v6;
}

+ (id)_stringForMonthNumber:(int64_t)a3
{
  v4 = [a1 _readableMonths];
  v5 = v4;
  if (a3 >= 1 && [v4 count] >= a3)
  {
    v6 = [v5 objectAtIndexedSubscript:a3 - 1];
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

+ (id)_stringForByDayOfWeek:(id)a3 setPositions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _byDayOfWeekOrdinalStrings];
  if (![v6 weekNumber])
  {
    if ([v7 count])
    {
      v10 = [v7 objectAtIndex:0];
      v11 = [v10 intValue];

      if (v11 == -1)
      {
        goto LABEL_12;
      }

      if (v11 - 1 < 5)
      {
        v9 = v11;
        goto LABEL_13;
      }
    }

LABEL_11:
    v12 = 0;
    goto LABEL_14;
  }

  if ([v6 weekNumber] == -1)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if ([v6 weekNumber] > 5)
  {
    goto LABEL_11;
  }

  if ([v6 weekNumber] <= 0)
  {
    goto LABEL_11;
  }

  v9 = [v6 weekNumber];
  if (v9 < 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v12 = [v8 objectAtIndex:v9];
LABEL_14:
  v13 = [a1 _stringForDayOfWeek:{objc_msgSend(v6, "dayOfTheWeek", v9) - 1}];
  v14 = MEMORY[0x1E696AEC0];
  v15 = [a1 _customByDayItemFormatLocalizedString];
  v16 = [v14 localizedStringWithFormat:v15, v12, v13];

  return v16;
}

+ (id)_localizedOfMonthStringForMonth:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v4 intValue];

  if ((v6 - 1) > 0xB)
  {
    v7 = &stru_1F0D67F00;
  }

  else
  {
    v7 = [v5 localizedStringForKey:off_1E7508468[v6 - 1] value:&stru_1F0D67F00 table:0];
  }

  return v7;
}

+ (int64_t)repeatTypeForRecurrenceRules:(id)a3 recurrenceDate:(id)a4 recurrenceTimeZone:(id)a5 getRepeatEnd:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 count];
  v14 = v13;
  if (v13)
  {
    if (v13 == 1)
    {
      [v10 objectAtIndex:0];
      v15 = v28 = a1;
      v27 = [v15 frequency];
      v26 = [v15 interval];
      v25 = [v15 daysOfTheWeek];
      v24 = [v15 daysOfTheMonth];
      [v15 monthsOfTheYear];
      v16 = v30 = v12;
      [v15 weeksOfTheYear];
      v17 = v29 = a6;
      v18 = [v15 daysOfTheYear];
      v19 = [v15 setPositions];
      v20 = [v15 recurrenceEnd];
      v31 = 0;
      v14 = [v28 repeatTypeForFrequency:v27 interval:v26 daysOfTheWeek:v25 daysOfTheMonth:v24 monthsOfTheYear:v16 weeksOfTheYear:v17 daysOfTheYear:v18 setPositions:v19 end:v20 recurrenceDate:v11 recurrenceTimeZone:v30 getRepeatEnd:&v31];
      v21 = v31;

      a6 = v29;
      v12 = v30;

      if (!v29)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v21 = 0;
      v14 = 11;
      if (!a6)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  v21 = 0;
  if (a6)
  {
LABEL_6:
    v22 = v21;
    *a6 = v21;
  }

LABEL_7:

  return v14;
}

+ (int64_t)repeatTypeForFrequency:(int64_t)a3 interval:(int64_t)a4 daysOfTheWeek:(id)a5 daysOfTheMonth:(id)a6 monthsOfTheYear:(id)a7 weeksOfTheYear:(id)a8 daysOfTheYear:(id)a9 setPositions:(id)a10 end:(id)a11 recurrenceDate:(id)a12 recurrenceTimeZone:(id)a13 getRepeatEnd:(id *)a14
{
  v18 = a5;
  v63 = a6;
  v19 = a7;
  v20 = a8;
  v60 = a9;
  v62 = a10;
  v21 = a11;
  v61 = a12;
  v22 = a13;
  v23 = [v21 occurrenceCount];
  v24 = v19;
  if (v23)
  {
    v25 = 11;
    v26 = v18;
    v27 = v20;
    v28 = a14;
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_64:
    v29 = 0;
    if (!v28)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v57 = v18;
  v32 = [v57 count];
  v33 = v32;
  v25 = 11;
  if (a3 <= 1)
  {
    v27 = v20;
    if (a3)
    {
      v28 = a14;
      if (a3 != 1)
      {
        goto LABEL_63;
      }

      if ((a4 - 1) > 1 || [v24 count] || objc_msgSend(v62, "count"))
      {
        goto LABEL_62;
      }

      if (!v33 || v33 == 1 && recurrenceDateMatchesAnyDaySpecifiedInByDayList(v57, v61, v22))
      {
        if (a4 == 1)
        {
          v25 = 5;
        }

        else
        {
          v25 = 6;
        }

        goto LABEL_63;
      }

      if (a4 != 1)
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
      v28 = a14;
      if (a4 != 1 || v32)
      {
        goto LABEL_63;
      }

      if ([v24 count])
      {
        goto LABEL_62;
      }

      v49 = [v63 count] == 0;
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

  v27 = v20;
  if (a3 == 2)
  {
    v34 = (a4 & 0xFFFFFFFFFFFFFFFDLL) == 1 || a4 == 6;
    v25 = 11;
    v28 = a14;
    if (!v34 || v32)
    {
      goto LABEL_63;
    }

    if ([v24 count])
    {
      goto LABEL_62;
    }

    v35 = v63;
    v36 = [v35 count];
    v37 = recurrenceDateMatchesAnyDaySpecifiedInByMonthDayList(v35, v61, v22);
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
    v58 = v62;
    v56 = v35;
    if ([v58 count])
    {
      v54 = v38;
      v40 = [v58 objectAtIndex:0];
      v41 = [v40 integerValue];

      if (v41 == -1)
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
        if (!v41)
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

    v43 = [MEMORY[0x1E695DEE8] currentCalendar];
    [v43 setTimeZone:v22];
    v44 = [v43 components:16 fromDate:v61];
    v45 = [v44 day];

    v46 = (v45 - 29) >= 3;
    v35 = v56;
    if (!v46)
    {
      goto LABEL_46;
    }

LABEL_71:
    v52 = 7;
    if (a4 == 6)
    {
      v52 = 9;
    }

    if (a4 == 3)
    {
      v25 = 8;
    }

    else
    {
      v25 = v52;
    }

    goto LABEL_76;
  }

  v28 = a14;
  if (a3 == 3)
  {
    v47 = [v24 count];
    v25 = 11;
    if (a4 != 1 || v33)
    {
      goto LABEL_63;
    }

    if (v47 && (v47 != 1 || !recurrenceMonthMatchesAnyMonthSpecifiedInByMonthList(v24, v61, v22)) || [v60 count] || objc_msgSend(v62, "count") || objc_msgSend(v27, "count"))
    {
      goto LABEL_62;
    }

    v35 = v63;
    v48 = [v35 count];
    if (!v48 || v48 == 1 && recurrenceDateMatchesAnyDaySpecifiedInByMonthDayList(v35, v61, v22))
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

  if (a3 == 4)
  {
    v25 = 11;
    if (a4 == 1 && !v32)
    {
      if (![v24 count])
      {
        if ([v63 count])
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

  v26 = v18;
  if (!v21)
  {
    goto LABEL_64;
  }

LABEL_3:
  v29 = [v21 endDate];

  if (v29)
  {
    v29 = [v21 endDate];
  }

  if (v28)
  {
LABEL_6:
    v30 = v29;
    *v28 = v29;
  }

LABEL_7:

  return v25;
}

+ (id)localizedDescriptionForRepeatType:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = 0;
  if (a3 <= 5)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v7 = @"Weekdays";
      }

      else if (a3 == 4)
      {
        v7 = @"Weekends";
      }

      else
      {
        v7 = @"Weekly";
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v7 = @"Hourly";
      }

      else
      {
        if (a3 != 2)
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

  if (a3 <= 8)
  {
    if (a3 == 6)
    {
      v7 = @"Biweekly";
    }

    else if (a3 == 7)
    {
      v7 = @"Monthly";
    }

    else
    {
      v7 = @"Every 3 Months";
    }

    goto LABEL_26;
  }

  if (a3 == 9)
  {
    v7 = @"Every 6 Months";
LABEL_26:
    v8 = &stru_1F0D67F00;
    goto LABEL_27;
  }

  if (a3 == 10)
  {
    v7 = @"Yearly";
    goto LABEL_26;
  }

  if (a3 != 11)
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