@interface SCRCWebDateTimeParser
+ (SCRCWebDateTimeParser)sharedInstance;
- (SCRCWebDateTimeParser)init;
- (id)_cachedDateFormatterForFormat:(id)a3;
- (id)_expressionForRule:(id)a3;
- (id)_handleDatesAndTimes:(id)a3;
- (id)_handleDuration:(id)a3;
- (id)_handleTimes:(id)a3;
- (id)spokenStringForDateTimeAttribute:(id)a3;
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

- (id)_cachedDateFormatterForFormat:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_dateFormats objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    v6 = MEMORY[0x277CCA968];
    v7 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    v8 = [v6 dateFormatFromTemplate:v4 options:0 locale:v7];

    [v5 setDateFormat:v8];
    [(NSMutableDictionary *)self->_dateFormats setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (id)_expressionForRule:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_expressions objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v13 = 0;
    v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v4 options:1 error:&v13];
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
        v15 = v4;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_2648D2000, v8, OS_LOG_TYPE_INFO, "Could not create rule: %@ %@", buf, 0x16u);
      }
    }

    if (v6)
    {
      [(NSMutableDictionary *)self->_expressions setObject:v6 forKeyedSubscript:v4];
      v11 = v6;
    }
  }

  return v6;
}

- (id)_handleDuration:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hasPrefix:@"P"])
  {
    v5 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"([\\d]+[DHMS])"];
    v6 = [v5 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
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

            v13 = [*(*(&v26 + 1) + 8 * v12) range];
            v15 = [v4 substringWithRange:{v13, v14}];
            if ([v15 hasSuffix:@"S"])
            {
              v16 = [v15 stringByReplacingOccurrencesOfString:@"S" withString:&stru_287632E30];
              v17 = [v16 integerValue];
LABEL_17:
              v11 = v11 + v17;

              goto LABEL_18;
            }

            if ([v15 hasSuffix:@"M"])
            {
              v16 = [v15 stringByReplacingOccurrencesOfString:@"H" withString:&stru_287632E30];
              v17 = 60 * [v16 integerValue];
              goto LABEL_17;
            }

            if ([v15 hasSuffix:@"H"])
            {
              v16 = [v15 stringByReplacingOccurrencesOfString:@"H" withString:&stru_287632E30];
              v18 = [v16 integerValue];
              v19 = 3600;
LABEL_16:
              v17 = v18 * v19;
              goto LABEL_17;
            }

            if ([v15 hasSuffix:@"D"])
            {
              v16 = [v15 stringByReplacingOccurrencesOfString:@"D" withString:&stru_287632E30];
              v18 = [v16 integerValue];
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

- (id)_handleTimes:(id)a3
{
  v4 = a3;
  v5 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"^([\\d]{2}:[\\d]{2})$"];
  v6 = [v5 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
  if ([v6 count] == 1 || (-[SCRCWebDateTimeParser _expressionForRule:](self, "_expressionForRule:", @"^([\\d]{2}:[\\d]{2})([+-])([\\d]{2}:[\\d]{2})$"), v7 = objc_claimAutoreleasedReturnValue(), v5, objc_msgSend(v7, "matchesInString:options:range:", v4, 0, 0, objc_msgSend(v4, "length")), v8 = objc_claimAutoreleasedReturnValue(), v6, v9 = objc_msgSend(v8, "count"), v10 = 0, v6 = v8, v5 = v7, v9 == 1))
  {
    v11 = [v6 firstObject];
    v12 = [v11 rangeAtIndex:1];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v43 = 0;
      v44 = 0;
    }

    else
    {
      v14 = [v4 substringWithRange:{v12, v13}];
      v15 = [v14 componentsSeparatedByString:@":"];
      v16 = [v15 firstObject];
      v44 = [v16 integerValue];

      v17 = [v14 componentsSeparatedByString:@":"];
      v18 = [v17 lastObject];
      v43 = [v18 integerValue];
    }

    if ([v11 numberOfRanges] < 3 || objc_msgSend(v11, "rangeAtIndex:", 2) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0;
    }

    else
    {
      v20 = [v11 rangeAtIndex:2];
      v19 = [v4 substringWithRange:{v20, v21}];
    }

    v45 = v5;
    if ([v11 numberOfRanges] < 4 || objc_msgSend(v11, "rangeAtIndex:", 3) == 0x7FFFFFFFFFFFFFFFLL)
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

      v26 = [v11 rangeAtIndex:3];
      v28 = [v4 substringWithRange:{v26, v27}];
      v29 = [v28 componentsSeparatedByString:@":"];
      v30 = [v29 firstObject];
      v42 = [v30 integerValue];

      v31 = [v28 componentsSeparatedByString:@":"];
      v32 = [v31 lastObject];
      v33 = [v32 integerValue];

      v23 = 3600 * v25 * v42;
      v24 = 60 * v25 * v33;

      v22 = v28 != 0;
    }

    v34 = [MEMORY[0x277CBEA80] currentCalendar];
    if (v19 && v22)
    {
      v35 = objc_alloc(MEMORY[0x277CBEA80]);
      v36 = [v35 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];

      v37 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:@"jjmmazzz"];
      v38 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:v24 + v23];
      [v37 setTimeZone:v38];
      v34 = v36;
    }

    else
    {
      v37 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:@"jjmma"];
      v38 = 0;
    }

    v39 = objc_opt_new();
    [v39 setHour:v44];
    [v39 setTimeZone:v38];
    [v39 setMinute:v43];
    v40 = [v34 dateFromComponents:v39];
    v10 = [v37 stringFromDate:v40];

    v5 = v45;
  }

  return v10;
}

- (id)_handleDatesAndTimes:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"^([\\d]{4})$"];
  v7 = [v6 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
  if ([v7 count] == 1)
  {
    v8 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:@"yyyy"];
    [v5 setYear:{objc_msgSend(v4, "integerValue")}];
LABEL_3:
    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [v9 dateFromComponents:v5];
    v11 = [v8 stringFromDate:v10];
LABEL_17:

    goto LABEL_18;
  }

  v12 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"^([\\d]{4})[-]([\\d]{2})$"];

  v13 = [v12 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];

  if ([v13 count] == 1)
  {
    v14 = [v13 firstObject];
    v15 = [v14 numberOfRanges];

    if (v15 == 3)
    {
      v8 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:@"MMMMyyyy"];
      v16 = [v13 objectAtIndexedSubscript:0];
      v17 = [v16 rangeAtIndex:1];
      v19 = [v4 substringWithRange:{v17, v18}];
      [v5 setYear:{objc_msgSend(v19, "integerValue")}];

      v20 = [v13 objectAtIndexedSubscript:0];
      v21 = [v20 rangeAtIndex:2];
      v23 = [v4 substringWithRange:{v21, v22}];
      [v5 setMonth:{objc_msgSend(v23, "integerValue")}];

LABEL_16:
      v9 = [MEMORY[0x277CBEA80] currentCalendar];
      v10 = [v9 dateFromComponents:v5];
      v11 = [v8 stringFromDate:v10];
      v7 = v13;
      v6 = v12;
      goto LABEL_17;
    }
  }

  v6 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"^([\\d]{4})[-]([\\d]{2})[-]([\\d]{2})$"];

  v7 = [v6 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];

  if ([v7 count] == 1)
  {
    v24 = [v7 firstObject];
    v25 = [v24 numberOfRanges];

    if (v25 == 4)
    {
      v8 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:@"MMMMdyyyy"];
      v26 = [v7 objectAtIndexedSubscript:0];
      v27 = [v26 rangeAtIndex:1];
      v29 = [v4 substringWithRange:{v27, v28}];
      [v5 setYear:{objc_msgSend(v29, "integerValue")}];

      v30 = [v7 objectAtIndexedSubscript:0];
      v31 = [v30 rangeAtIndex:2];
      v33 = [v4 substringWithRange:{v31, v32}];
      [v5 setMonth:{objc_msgSend(v33, "integerValue")}];

      v34 = [v7 objectAtIndexedSubscript:0];
      v35 = [v34 rangeAtIndex:3];
      v37 = [v4 substringWithRange:{v35, v36}];
      [v5 setDay:{objc_msgSend(v37, "integerValue")}];

      goto LABEL_3;
    }
  }

  v38 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"^([\\d]{2})[-]([\\d]{2})$"];

  v39 = [v38 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];

  if ([v39 count] == 1)
  {
    v40 = [v39 firstObject];
    v41 = [v40 numberOfRanges];

    if (v41 == 3)
    {
      v8 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:@"MMMMd"];
      v42 = [v39 objectAtIndexedSubscript:0];
      v43 = [v42 rangeAtIndex:1];
      v45 = [v4 substringWithRange:{v43, v44}];
      [v5 setMonth:{objc_msgSend(v45, "integerValue")}];

      v46 = [v39 objectAtIndexedSubscript:0];
      v47 = [v46 rangeAtIndex:2];
      v49 = [v4 substringWithRange:{v47, v48}];
      [v5 setDay:{objc_msgSend(v49, "integerValue")}];

      v9 = [MEMORY[0x277CBEA80] currentCalendar];
      v10 = [v9 dateFromComponents:v5];
      v11 = [v8 stringFromDate:v10];
      v7 = v39;
      v6 = v38;
      goto LABEL_17;
    }
  }

  v12 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"^([\\d]{4})[-][W]([\\d]{2})$"];

  v13 = [v12 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];

  if ([v13 count] == 1)
  {
    v50 = [v13 firstObject];
    v51 = [v50 numberOfRanges];

    if (v51 == 3)
    {
      v8 = [(SCRCWebDateTimeParser *)self _cachedDateFormatterForFormat:@"MMMMdyyyy"];
      v52 = [v13 objectAtIndexedSubscript:0];
      v53 = [v52 rangeAtIndex:1];
      v55 = [v4 substringWithRange:{v53, v54}];
      [v5 setYear:{objc_msgSend(v55, "integerValue")}];

      v56 = [v13 objectAtIndexedSubscript:0];
      v57 = [v56 rangeAtIndex:2];
      v59 = [v4 substringWithRange:{v57, v58}];
      [v5 setWeekOfYear:{objc_msgSend(v59, "integerValue")}];

      [v5 setWeekday:1];
      goto LABEL_16;
    }
  }

  v6 = [(SCRCWebDateTimeParser *)self _expressionForRule:@"^([\\d]{4})[-]([\\d]{2})[-]([\\d]{2})([T]|\\s{1})([\\d]{2}):([\\d]{2})(:([\\d]{2})(\\.[\\d]+)?)?$"];

  v7 = [v6 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];

  if ([v7 count] == 1)
  {
    v61 = [v7 firstObject];
    v62 = [v61 numberOfRanges];

    if (v62 == 10)
    {
      v9 = [v7 firstObject];
      if ([v9 rangeAtIndex:7] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v63 = @"MMMMdyyyyjjmm";
      }

      else if ([v9 rangeAtIndex:9] == 0x7FFFFFFFFFFFFFFFLL)
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
      v67 = [v4 substringWithRange:{v65, v66}];
      [v5 setYear:{objc_msgSend(v67, "integerValue")}];

      v68 = [v7 objectAtIndexedSubscript:0];
      v69 = [v68 rangeAtIndex:2];
      v71 = [v4 substringWithRange:{v69, v70}];
      [v5 setMonth:{objc_msgSend(v71, "integerValue")}];

      v72 = [v7 objectAtIndexedSubscript:0];
      v73 = [v72 rangeAtIndex:3];
      v75 = [v4 substringWithRange:{v73, v74}];
      [v5 setDay:{objc_msgSend(v75, "integerValue")}];

      v76 = [v7 objectAtIndexedSubscript:0];
      v77 = [v76 rangeAtIndex:5];
      v79 = [v4 substringWithRange:{v77, v78}];
      [v5 setHour:{objc_msgSend(v79, "integerValue")}];

      v80 = [v7 objectAtIndexedSubscript:0];
      v81 = [v80 rangeAtIndex:6];
      v83 = [v4 substringWithRange:{v81, v82}];
      [v5 setMinute:{objc_msgSend(v83, "integerValue")}];

      if ([v9 rangeAtIndex:7] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v84 = [v7 objectAtIndexedSubscript:0];
        v85 = [v84 rangeAtIndex:8];
        v87 = [v4 substringWithRange:{v85, v86}];
        [v5 setSecond:{objc_msgSend(v87, "integerValue")}];

        if ([v9 rangeAtIndex:9] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v88 = [v7 objectAtIndexedSubscript:0];
          v89 = [v88 rangeAtIndex:9];
          v91 = [v4 substringWithRange:{v89, v90}];

          v92 = [v91 stringByReplacingOccurrencesOfString:@"." withString:&stru_287632E30];

          v93 = [v7 objectAtIndexedSubscript:0];
          [v93 rangeAtIndex:9];
          [v5 setNanosecond:{(1000000000.0 / __exp10((v94 - 1)) * objc_msgSend(v92, "integerValue"))}];
        }
      }

      v10 = [MEMORY[0x277CBEA80] currentCalendar];
      v95 = [v10 dateFromComponents:v5];
      v11 = [v8 stringFromDate:v95];

      goto LABEL_17;
    }
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (id)spokenStringForDateTimeAttribute:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SCRCWebDateTimeParser *)self _handleDuration:v4];
    if (![v5 length])
    {
      v6 = [(SCRCWebDateTimeParser *)self _handleTimes:v4];

      v5 = v6;
    }

    if (![v5 length])
    {
      v7 = [(SCRCWebDateTimeParser *)self _handleDatesAndTimes:v4];

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