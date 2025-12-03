@interface SCRCWebDateTimeParser
+ (SCRCWebDateTimeParser)sharedInstance;
- (SCRCWebDateTimeParser)init;
- (id)_cachedDateFormatterForFormat:(id)format;
- (id)_expressionForRule:(id)rule;
- (id)_handleDatesAndTimes:(id)times;
- (id)_handleDuration:(id)duration;
- (id)_handleTimes:(id)times;
- (id)spokenStringForDateTimeAttribute:(id)attribute;
@end

@implementation SCRCWebDateTimeParser

+ (SCRCWebDateTimeParser)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SCRCWebDateTimeParser sharedInstance];
  }

  v3 = sharedInstance_Parser;

  return v3;
}

uint64_t __39__SCRCWebDateTimeParser_sharedInstance__block_invoke()
{
  sharedInstance_Parser = objc_alloc_init(SCRCWebDateTimeParser);

  return MEMORY[0x2821F96F8]();
}

- (SCRCWebDateTimeParser)init
{
  v8.receiver = self;
  v8.super_class = SCRCWebDateTimeParser;
  v2 = [(SCRCWebDateTimeParser *)&v8 init];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  expressions = v2->_expressions;
  v2->_expressions = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  dateFormats = v2->_dateFormats;
  v2->_dateFormats = v5;

  return v2;
}

- (id)_cachedDateFormatterForFormat:(id)format
{
  formatCopy = format;
  v5 = [(NSMutableDictionary *)self->_dateFormats objectForKeyedSubscript:formatCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    v6 = MEMORY[0x277CCA968];
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    v8 = [v6 dateFormatFromTemplate:formatCopy options:0 locale:autoupdatingCurrentLocale];

    [v5 setDateFormat:v8];
    [(NSMutableDictionary *)self->_dateFormats setObject:v5 forKeyedSubscript:formatCopy];
  }

  return v5;
}

- (id)_expressionForRule:(id)rule
{
  v18 = *MEMORY[0x277D85DE8];
  ruleCopy = rule;
  v5 = [(NSMutableDictionary *)self->_expressions objectForKeyedSubscript:ruleCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v13 = 0;
    v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:ruleCopy options:1 error:&v13];
    v7 = v13;
    if (v7)
    {
      v8 = SCRParserLog;
      if (!SCRParserLog)
      {
        v9 = os_log_create("com.apple.Accessibility", "SCRCParser");
        v10 = SCRParserLog;
        SCRParserLog = v9;

        v8 = SCRParserLog;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v15 = ruleCopy;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_2648D2000, v8, OS_LOG_TYPE_INFO, "Could not create rule: %@ %@", buf, 0x16u);
      }
    }

    if (v6)
    {
      [(NSMutableDictionary *)self->_expressions setObject:v6 forKeyedSubscript:ruleCopy];
      v11 = v6;
    }
  }

  return v6;
}

- (id)_handleDuration:(id)duration
{
  v31 = *MEMORY[0x277D85DE8];
  durationCopy = duration;
  if ([durationCopy hasPrefix:@"P"])
  {
    v5 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"([\\d]+[DHMS])"];
    v6 = [v5 matchesInString:durationCopy options:0 range:{0, objc_msgSend(durationCopy, "length")}];
    if ([v6 count])
    {
      v24 = v6;
      v25 = v5;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v27;
        v11 = 0.0;
        while (1)
        {
          v12 = 0;
          do
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(v7);
            }

            range = [*(*(&v26 + 1) + 8 * v12) range];
            v15 = [durationCopy substringWithRange:{range, v14}];
            if ([v15 hasSuffix:@"S"])
            {
              v16 = [v15 stringByReplacingOccurrencesOfString:@"S" withString:&stru_287632E30];
              integerValue = [v16 integerValue];
LABEL_17:
              v11 = v11 + integerValue;

              goto LABEL_18;
            }

            if ([v15 hasSuffix:@"M"])
            {
              v16 = [v15 stringByReplacingOccurrencesOfString:@"H" withString:&stru_287632E30];
              integerValue = 60 * [v16 integerValue];
              goto LABEL_17;
            }

            if ([v15 hasSuffix:@"H"])
            {
              v16 = [v15 stringByReplacingOccurrencesOfString:@"H" withString:&stru_287632E30];
              integerValue2 = [v16 integerValue];
              v19 = 3600;
LABEL_16:
              integerValue = integerValue2 * v19;
              goto LABEL_17;
            }

            if ([v15 hasSuffix:@"D"])
            {
              v16 = [v15 stringByReplacingOccurrencesOfString:@"D" withString:&stru_287632E30];
              integerValue2 = [v16 integerValue];
              v19 = 86400;
              goto LABEL_16;
            }

LABEL_18:

            ++v12;
          }

          while (v9 != v12);
          v20 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
          v9 = v20;
          if (!v20)
          {
            goto LABEL_26;
          }
        }
      }

      v11 = 0.0;
LABEL_26:

      if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v22 = objc_opt_new();
        [v22 setZeroFormattingBehavior:1];
        [v22 setUnitsStyle:4];
        [v22 setAllowedUnits:240];
        v21 = [v22 stringFromTimeInterval:v11];
      }

      else
      {
        v21 = 0;
      }

      v6 = v24;
      v5 = v25;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_handleTimes:(id)times
{
  timesCopy = times;
  v5 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"^([\\d]{2}:[\\d]{2})$"];
  v6 = [v5 matchesInString:timesCopy options:0 range:{0, objc_msgSend(timesCopy, "length")}];
  if ([v6 count] == 1 || (-[SCRCWebDateTimeParser _expressionForRule:](self, "_expressionForRule:", @"^([\\d]{2}:[\\d]{2})([+-])([\\d]{2}:[\\d]{2})$"), v7 = objc_claimAutoreleasedReturnValue(), v5, objc_msgSend(v7, "matchesInString:options:range:", timesCopy, 0, 0, objc_msgSend(timesCopy, "length")), v8 = objc_claimAutoreleasedReturnValue(), v6, v9 = objc_msgSend(v8, "count"), v10 = 0, v6 = v8, v5 = v7, v9 == 1))
  {
    firstObject = [v6 firstObject];
    v12 = [firstObject rangeAtIndex:1];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      integerValue2 = 0;
      integerValue = 0;
    }

    else
    {
      v14 = [timesCopy substringWithRange:{v12, v13}];
      v15 = [v14 componentsSeparatedByString:@":"];
      firstObject2 = [v15 firstObject];
      integerValue = [firstObject2 integerValue];

      v17 = [v14 componentsSeparatedByString:@":"];
      lastObject = [v17 lastObject];
      integerValue2 = [lastObject integerValue];
    }

    if ([firstObject numberOfRanges] < 3 || objc_msgSend(firstObject, "rangeAtIndex:", 2) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0;
    }

    else
    {
      v20 = [firstObject rangeAtIndex:2];
      v19 = [timesCopy substringWithRange:{v20, v21}];
    }

    v45 = v5;
    if ([firstObject numberOfRanges] < 4 || objc_msgSend(firstObject, "rangeAtIndex:", 3) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
    }

    else
    {
      if ([v19 isEqualToString:@"-"])
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }

      v26 = [firstObject rangeAtIndex:3];
      v28 = [timesCopy substringWithRange:{v26, v27}];
      v29 = [v28 componentsSeparatedByString:@":"];
      firstObject3 = [v29 firstObject];
      integerValue3 = [firstObject3 integerValue];

      v31 = [v28 componentsSeparatedByString:@":"];
      lastObject2 = [v31 lastObject];
      integerValue4 = [lastObject2 integerValue];

      v23 = 3600 * v25 * integerValue3;
      v24 = 60 * v25 * integerValue4;

      v22 = v28 != 0;
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    if (v19 && v22)
    {
      v35 = objc_alloc(MEMORY[0x277CBEA80]);
      v36 = [v35 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];

      v37 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:@"jjmmazzz"];
      v38 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:v24 + v23];
      [v37 setTimeZone:v38];
      currentCalendar = v36;
    }

    else
    {
      v37 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:@"jjmma"];
      v38 = 0;
    }

    v39 = objc_opt_new();
    [v39 setHour:integerValue];
    [v39 setTimeZone:v38];
    [v39 setMinute:integerValue2];
    v40 = [currentCalendar dateFromComponents:v39];
    v10 = [v37 stringFromDate:v40];

    v5 = v45;
  }

  return v10;
}

- (id)_handleDatesAndTimes:(id)times
{
  timesCopy = times;
  v5 = objc_opt_new();
  v6 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"^([\\d]{4})$"];
  v7 = [v6 matchesInString:timesCopy options:0 range:{0, objc_msgSend(timesCopy, "length")}];
  if ([v7 count] == 1)
  {
    v8 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:@"yyyy"];
    [v5 setYear:{objc_msgSend(timesCopy, "integerValue")}];
LABEL_3:
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    currentCalendar2 = [currentCalendar dateFromComponents:v5];
    v11 = [v8 stringFromDate:currentCalendar2];
LABEL_17:

    goto LABEL_18;
  }

  v12 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"^([\\d]{4})[-]([\\d]{2})$"];

  v13 = [v12 matchesInString:timesCopy options:0 range:{0, objc_msgSend(timesCopy, "length")}];

  if ([v13 count] == 1)
  {
    firstObject = [v13 firstObject];
    numberOfRanges = [firstObject numberOfRanges];

    if (numberOfRanges == 3)
    {
      v8 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:@"MMMMyyyy"];
      v16 = [v13 objectAtIndexedSubscript:0];
      v17 = [v16 rangeAtIndex:1];
      v19 = [timesCopy substringWithRange:{v17, v18}];
      [v5 setYear:{objc_msgSend(v19, "integerValue")}];

      v20 = [v13 objectAtIndexedSubscript:0];
      v21 = [v20 rangeAtIndex:2];
      v23 = [timesCopy substringWithRange:{v21, v22}];
      [v5 setMonth:{objc_msgSend(v23, "integerValue")}];

LABEL_16:
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      currentCalendar2 = [currentCalendar dateFromComponents:v5];
      v11 = [v8 stringFromDate:currentCalendar2];
      v7 = v13;
      v6 = v12;
      goto LABEL_17;
    }
  }

  v6 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"^([\\d]{4})[-]([\\d]{2})[-]([\\d]{2})$"];

  v7 = [v6 matchesInString:timesCopy options:0 range:{0, objc_msgSend(timesCopy, "length")}];

  if ([v7 count] == 1)
  {
    firstObject2 = [v7 firstObject];
    numberOfRanges2 = [firstObject2 numberOfRanges];

    if (numberOfRanges2 == 4)
    {
      v8 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:@"MMMMdyyyy"];
      v26 = [v7 objectAtIndexedSubscript:0];
      v27 = [v26 rangeAtIndex:1];
      v29 = [timesCopy substringWithRange:{v27, v28}];
      [v5 setYear:{objc_msgSend(v29, "integerValue")}];

      v30 = [v7 objectAtIndexedSubscript:0];
      v31 = [v30 rangeAtIndex:2];
      v33 = [timesCopy substringWithRange:{v31, v32}];
      [v5 setMonth:{objc_msgSend(v33, "integerValue")}];

      v34 = [v7 objectAtIndexedSubscript:0];
      v35 = [v34 rangeAtIndex:3];
      v37 = [timesCopy substringWithRange:{v35, v36}];
      [v5 setDay:{objc_msgSend(v37, "integerValue")}];

      goto LABEL_3;
    }
  }

  v38 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"^([\\d]{2})[-]([\\d]{2})$"];

  v39 = [v38 matchesInString:timesCopy options:0 range:{0, objc_msgSend(timesCopy, "length")}];

  if ([v39 count] == 1)
  {
    firstObject3 = [v39 firstObject];
    numberOfRanges3 = [firstObject3 numberOfRanges];

    if (numberOfRanges3 == 3)
    {
      v8 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:@"MMMMd"];
      v42 = [v39 objectAtIndexedSubscript:0];
      v43 = [v42 rangeAtIndex:1];
      v45 = [timesCopy substringWithRange:{v43, v44}];
      [v5 setMonth:{objc_msgSend(v45, "integerValue")}];

      v46 = [v39 objectAtIndexedSubscript:0];
      v47 = [v46 rangeAtIndex:2];
      v49 = [timesCopy substringWithRange:{v47, v48}];
      [v5 setDay:{objc_msgSend(v49, "integerValue")}];

      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      currentCalendar2 = [currentCalendar dateFromComponents:v5];
      v11 = [v8 stringFromDate:currentCalendar2];
      v7 = v39;
      v6 = v38;
      goto LABEL_17;
    }
  }

  v12 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"^([\\d]{4})[-][W]([\\d]{2})$"];

  v13 = [v12 matchesInString:timesCopy options:0 range:{0, objc_msgSend(timesCopy, "length")}];

  if ([v13 count] == 1)
  {
    firstObject4 = [v13 firstObject];
    numberOfRanges4 = [firstObject4 numberOfRanges];

    if (numberOfRanges4 == 3)
    {
      v8 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:@"MMMMdyyyy"];
      v52 = [v13 objectAtIndexedSubscript:0];
      v53 = [v52 rangeAtIndex:1];
      v55 = [timesCopy substringWithRange:{v53, v54}];
      [v5 setYear:{objc_msgSend(v55, "integerValue")}];

      v56 = [v13 objectAtIndexedSubscript:0];
      v57 = [v56 rangeAtIndex:2];
      v59 = [timesCopy substringWithRange:{v57, v58}];
      [v5 setWeekOfYear:{objc_msgSend(v59, "integerValue")}];

      [v5 setWeekday:1];
      goto LABEL_16;
    }
  }

  v6 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"^([\\d]{4})[-]([\\d]{2})[-]([\\d]{2})([T]|\\s{1})([\\d]{2}):([\\d]{2})(:([\\d]{2})(\\.[\\d]+)?)?$"];

  v7 = [v6 matchesInString:timesCopy options:0 range:{0, objc_msgSend(timesCopy, "length")}];

  if ([v7 count] == 1)
  {
    firstObject5 = [v7 firstObject];
    numberOfRanges5 = [firstObject5 numberOfRanges];

    if (numberOfRanges5 == 10)
    {
      currentCalendar = [v7 firstObject];
      if ([currentCalendar rangeAtIndex:7] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v63 = @"MMMMdyyyyjjmm";
      }

      else if ([currentCalendar rangeAtIndex:9] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v63 = @"MMMMdyyyyjjmmss";
      }

      else
      {
        v63 = @"MMMMdyyyyjjmmssSSS";
      }

      v8 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:v63];
      v64 = [v7 objectAtIndexedSubscript:0];
      v65 = [v64 rangeAtIndex:1];
      v67 = [timesCopy substringWithRange:{v65, v66}];
      [v5 setYear:{objc_msgSend(v67, "integerValue")}];

      v68 = [v7 objectAtIndexedSubscript:0];
      v69 = [v68 rangeAtIndex:2];
      v71 = [timesCopy substringWithRange:{v69, v70}];
      [v5 setMonth:{objc_msgSend(v71, "integerValue")}];

      v72 = [v7 objectAtIndexedSubscript:0];
      v73 = [v72 rangeAtIndex:3];
      v75 = [timesCopy substringWithRange:{v73, v74}];
      [v5 setDay:{objc_msgSend(v75, "integerValue")}];

      v76 = [v7 objectAtIndexedSubscript:0];
      v77 = [v76 rangeAtIndex:5];
      v79 = [timesCopy substringWithRange:{v77, v78}];
      [v5 setHour:{objc_msgSend(v79, "integerValue")}];

      v80 = [v7 objectAtIndexedSubscript:0];
      v81 = [v80 rangeAtIndex:6];
      v83 = [timesCopy substringWithRange:{v81, v82}];
      [v5 setMinute:{objc_msgSend(v83, "integerValue")}];

      if ([currentCalendar rangeAtIndex:7] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v84 = [v7 objectAtIndexedSubscript:0];
        v85 = [v84 rangeAtIndex:8];
        v87 = [timesCopy substringWithRange:{v85, v86}];
        [v5 setSecond:{objc_msgSend(v87, "integerValue")}];

        if ([currentCalendar rangeAtIndex:9] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v88 = [v7 objectAtIndexedSubscript:0];
          v89 = [v88 rangeAtIndex:9];
          v91 = [timesCopy substringWithRange:{v89, v90}];

          v92 = [v91 stringByReplacingOccurrencesOfString:@"." withString:&stru_287632E30];

          v93 = [v7 objectAtIndexedSubscript:0];
          [v93 rangeAtIndex:9];
          [v5 setNanosecond:{(1000000000.0 / __exp10((v94 - 1)) * objc_msgSend(v92, "integerValue"))}];
        }
      }

      currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
      v95 = [currentCalendar2 dateFromComponents:v5];
      v11 = [v8 stringFromDate:v95];

      goto LABEL_17;
    }
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (id)spokenStringForDateTimeAttribute:(id)attribute
{
  attributeCopy = attribute;
  if (attributeCopy)
  {
    v5 = [(SCRCWebDateTimeParser *)self _handleDuration:attributeCopy];
    if (![v5 length])
    {
      v6 = [(SCRCWebDateTimeParser *)self _handleTimes:attributeCopy];

      v5 = v6;
    }

    if (![v5 length])
    {
      v7 = [(SCRCWebDateTimeParser *)self _handleDatesAndTimes:attributeCopy];

      v5 = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end