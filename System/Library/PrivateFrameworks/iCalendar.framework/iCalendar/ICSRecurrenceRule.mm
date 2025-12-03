@interface ICSRecurrenceRule
+ (id)recurrenceRuleFromICSCString:(const char *)string withTokenizer:(id)tokenizer;
+ (id)recurrenceRuleFromICSString:(id)string;
- (ICSRecurrenceRule)initWithCoder:(id)coder;
- (ICSRecurrenceRule)initWithFrequency:(unint64_t)frequency;
- (id)occurrencesForStartDate:(id)date fromDate:(id)fromDate toDate:(id)toDate inTimeZone:(id)zone;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
- (void)cleanUpForStartDate:(id)date;
- (void)encodeWithCoder:(id)coder;
- (void)setParameterValue:(id)value forName:(id)name;
@end

@implementation ICSRecurrenceRule

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  array = [MEMORY[0x277CBEB18] array];
  v7 = [(ICSRecurrenceRule *)self freq]- 1;
  if (v7 <= 6)
  {
    [array addObject:off_27A64C198[v7]];
  }

  interval = [(ICSRecurrenceRule *)self interval];

  if (interval)
  {
    v9 = MEMORY[0x277CCACA8];
    interval2 = [(ICSRecurrenceRule *)self interval];
    v11 = [v9 stringWithFormat:@"INTERVAL=%ld", objc_msgSend(interval2, "integerValue")];
    [array addObject:v11];
  }

  v12 = [(ICSRecurrenceRule *)self count];

  if (v12)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [(ICSRecurrenceRule *)self count];
    v15 = [v13 stringWithFormat:@"COUNT=%ld", objc_msgSend(v14, "integerValue")];
    [array addObject:v15];
  }

  until = [(ICSRecurrenceRule *)self until];

  if (until)
  {
    v17 = [[ICSStringWriter alloc] initWithString:@"UNTIL="];
    until2 = [(ICSRecurrenceRule *)self until];
    [until2 _ICSStringWithOptions:options appendingToString:v17];

    result = [(ICSStringWriter *)v17 result];
    [array addObject:result];
  }

  bymonth = [(ICSRecurrenceRule *)self bymonth];

  if (bymonth)
  {
    v21 = [[ICSStringWriter alloc] initWithString:@"BYMONTH="];
    bymonth2 = [(ICSRecurrenceRule *)self bymonth];
    [bymonth2 _ICSStringWithOptions:options appendingToString:v21];

    result2 = [(ICSStringWriter *)v21 result];
    [array addObject:result2];
  }

  byweekno = [(ICSRecurrenceRule *)self byweekno];

  if (byweekno)
  {
    v25 = [[ICSStringWriter alloc] initWithString:@"BYWEEKNO="];
    byweekno2 = [(ICSRecurrenceRule *)self byweekno];
    [byweekno2 _ICSStringWithOptions:options appendingToString:v25];

    result3 = [(ICSStringWriter *)v25 result];
    [array addObject:result3];
  }

  bysetpos = [(ICSRecurrenceRule *)self bysetpos];

  if (bysetpos)
  {
    v29 = [[ICSStringWriter alloc] initWithString:@"BYSETPOS="];
    bysetpos2 = [(ICSRecurrenceRule *)self bysetpos];
    [bysetpos2 _ICSStringWithOptions:options appendingToString:v29];

    result4 = [(ICSStringWriter *)v29 result];
    [array addObject:result4];
  }

  byyearday = [(ICSRecurrenceRule *)self byyearday];

  if (byyearday)
  {
    v33 = [[ICSStringWriter alloc] initWithString:@"BYYEARDAY="];
    byyearday2 = [(ICSRecurrenceRule *)self byyearday];
    [byyearday2 _ICSStringWithOptions:options appendingToString:v33];

    result5 = [(ICSStringWriter *)v33 result];
    [array addObject:result5];
  }

  bymonthday = [(ICSRecurrenceRule *)self bymonthday];

  if (bymonthday)
  {
    v37 = [[ICSStringWriter alloc] initWithString:@"BYMONTHDAY="];
    bymonthday2 = [(ICSRecurrenceRule *)self bymonthday];
    [bymonthday2 _ICSStringWithOptions:options appendingToString:v37];

    result6 = [(ICSStringWriter *)v37 result];
    [array addObject:result6];
  }

  byday = [(ICSRecurrenceRule *)self byday];

  if (byday)
  {
    v41 = [[ICSStringWriter alloc] initWithString:@"BYDAY="];
    byday2 = [(ICSRecurrenceRule *)self byday];
    [byday2 _ICSStringWithOptions:options appendingToString:v41];

    result7 = [(ICSStringWriter *)v41 result];
    [array addObject:result7];
  }

  byhour = [(ICSRecurrenceRule *)self byhour];

  if (byhour)
  {
    v45 = [[ICSStringWriter alloc] initWithString:@"BYHOUR="];
    byhour2 = [(ICSRecurrenceRule *)self byhour];
    [byhour2 _ICSStringWithOptions:options appendingToString:v45];

    result8 = [(ICSStringWriter *)v45 result];
    [array addObject:result8];
  }

  byminute = [(ICSRecurrenceRule *)self byminute];

  if (byminute)
  {
    v49 = [[ICSStringWriter alloc] initWithString:@"BYMINUTE="];
    byminute2 = [(ICSRecurrenceRule *)self byminute];
    [byminute2 _ICSStringWithOptions:options appendingToString:v49];

    result9 = [(ICSStringWriter *)v49 result];
    [array addObject:result9];
  }

  bysecond = [(ICSRecurrenceRule *)self bysecond];

  if (bysecond)
  {
    v53 = [[ICSStringWriter alloc] initWithString:@"BYSECOND="];
    bysecond2 = [(ICSRecurrenceRule *)self bysecond];
    [bysecond2 _ICSStringWithOptions:options appendingToString:v53];

    result10 = [(ICSStringWriter *)v53 result];
    [array addObject:result10];
  }

  wkst = [(ICSRecurrenceRule *)self wkst];

  if (wkst)
  {
    v57 = [[ICSStringWriter alloc] initWithString:@"WKST="];
    wkst2 = [(ICSRecurrenceRule *)self wkst];
    v59 = iCalendarRepresentationForCALDay([wkst2 integerValue]);
    [(ICSStringWriter *)v57 appendString:v59];

    result11 = [(ICSStringWriter *)v57 result];
    [array addObject:result11];
  }

  if ((options & 8) != 0)
  {
    v61 = [array sortedArrayUsingSelector:sel_compare_];
    v62 = [v61 componentsJoinedByString:@""];;
    [stringCopy appendString:v62];
  }

  else
  {
    v61 = [array componentsJoinedByString:@""];;
    [stringCopy appendString:v61];
  }
}

+ (id)recurrenceRuleFromICSString:(id)string
{
  uTF8String = [string UTF8String];

  return [ICSRecurrenceRule recurrenceRuleFromICSCString:uTF8String withTokenizer:0];
}

- (ICSRecurrenceRule)initWithFrequency:(unint64_t)frequency
{
  v7.receiver = self;
  v7.super_class = ICSRecurrenceRule;
  v4 = [(ICSRecurrenceRule *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ICSRecurrenceRule *)v4 setFreq:frequency];
  }

  return v5;
}

- (void)setParameterValue:(id)value forName:(id)name
{
  valueCopy = value;
  nameCopy = name;
  v7 = valueCopy;
  v8 = nameCopy;
  parameters = self->_parameters;
  if (valueCopy)
  {
    if (!parameters)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = self->_parameters;
      self->_parameters = v10;

      v7 = valueCopy;
      parameters = self->_parameters;
    }

    [(NSMutableDictionary *)parameters setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)parameters removeObjectForKey:v8];
  }
}

- (void)encodeWithCoder:(id)coder
{
  freq_low = LODWORD(self->_freq);
  coderCopy = coder;
  [coderCopy encodeInt:freq_low forKey:@"Frequency"];
  [coderCopy encodeObject:self->_parameters forKey:@"Parameters"];
}

- (ICSRecurrenceRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ICSRecurrenceRule;
  v5 = [(ICSRecurrenceRule *)&v9 init];
  if (v5)
  {
    if (initWithCoder__onceToken != -1)
    {
      [ICSRecurrenceRule initWithCoder:];
    }

    v5->_freq = [coderCopy decodeIntForKey:@"Frequency"];
    v6 = [coderCopy decodeObjectOfClasses:initWithCoder__parametersPermittedList forKey:@"Parameters"];
    parameters = v5->_parameters;
    v5->_parameters = v6;
  }

  return v5;
}

void __35__ICSRecurrenceRule_initWithCoder___block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = initWithCoder__parametersPermittedList;
  initWithCoder__parametersPermittedList = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)occurrencesForStartDate:(id)date fromDate:(id)fromDate toDate:(id)toDate inTimeZone:(id)zone
{
  v115 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  fromDateCopy = fromDate;
  toDateCopy = toDate;
  zoneCopy = zone;
  v14 = objc_alloc(MEMORY[0x277CBEA80]);
  v15 = *MEMORY[0x277CBE5C0];
  v16 = [v14 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  [v16 setTimeZone:zoneCopy];
  v96 = dateCopy;
  components = [dateCopy components];
  v18 = [v16 dateFromComponents:components];

  v19 = fromDateCopy;
  components2 = [fromDateCopy components];
  v21 = [v16 dateFromComponents:components2];
  v95 = v18;
  v100 = [v18 laterDate:v21];

  components3 = [toDateCopy components];
  v101 = v16;
  v23 = [v16 dateFromComponents:components3];

  until = [(ICSRecurrenceRule *)self until];

  selfCopy = self;
  if (until)
  {
    until2 = [(ICSRecurrenceRule *)self until];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      until4 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v15];
      v28 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
      [until4 setTimeZone:v28];

      until3 = [(ICSRecurrenceRule *)self until];
      components4 = [until3 components];
      v31 = [until4 dateFromComponents:components4];
      v32 = [v23 earlierDate:v31];

      v23 = v31;
    }

    else
    {
      until4 = [(ICSRecurrenceRule *)self until];
      until3 = [until4 components];
      components4 = [v16 dateFromComponents:until3];
      v32 = [v23 earlierDate:components4];
    }

    v23 = v32;
  }

  v33 = v96;
  v34 = selfCopy;
  interval = [(ICSRecurrenceRule *)selfCopy interval];
  if (interval)
  {
    interval2 = [(ICSRecurrenceRule *)selfCopy interval];
    integerValue = [interval2 integerValue];

    v34 = selfCopy;
  }

  else
  {
    integerValue = 1;
  }

  v37 = [(ICSRecurrenceRule *)v34 count];
  v93 = zoneCopy;
  v94 = toDateCopy;
  v103 = v23;
  if (v37)
  {
    v38 = [(ICSRecurrenceRule *)v34 count];
    unsignedIntegerValue = [v38 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = -1;
  }

  array = [MEMORY[0x277CBEB18] array];
  v40 = v100;
  v41 = v101;
  if ([(ICSRecurrenceRule *)v34 freq]== 7)
  {
    bymonth = [(ICSRecurrenceRule *)v34 bymonth];
    v43 = [bymonth count];

    if (v43 == 1)
    {
      bymonthday = [(ICSRecurrenceRule *)v34 bymonthday];
      v45 = [bymonthday count];

      if (v45)
      {
        v46 = [v101 components:228 fromDate:v95];
        bymonth2 = [(ICSRecurrenceRule *)v34 bymonth];
        v48 = [bymonth2 objectAtIndex:0];
        [v46 setMonth:{objc_msgSend(v48, "integerValue")}];

        v49 = v95;
        year = [v46 year];
        if ([array count] < unsignedIntegerValue)
        {
          v92 = v19;
          v51 = selfCopy;
          while (1)
          {
            if ([v49 compare:v103] == 1)
            {
              goto LABEL_52;
            }

            v97 = year;
            byday = [(ICSRecurrenceRule *)v51 byday];
            v53 = [byday count];

            if (!v53)
            {
              break;
            }

            byday2 = [(ICSRecurrenceRule *)v51 byday];
            if ([byday2 count] != 1)
            {
              goto LABEL_49;
            }

            v55 = v33;
            byday3 = [(ICSRecurrenceRule *)v51 byday];
            v57 = [byday3 objectAtIndex:0];
            number = [v57 number];

            if (!number)
            {
              byday4 = [(ICSRecurrenceRule *)v51 byday];
              byday2 = [byday4 objectAtIndex:0];

              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              obj = [(ICSRecurrenceRule *)v51 bymonthday];
              v65 = [obj countByEnumeratingWithState:&v105 objects:v113 count:16];
              v41 = v101;
              if (v65)
              {
                v66 = v65;
                v67 = *v106;
                do
                {
                  for (i = 0; i != v66; ++i)
                  {
                    v69 = v49;
                    if (*v106 != v67)
                    {
                      objc_enumerationMutation(obj);
                    }

                    [v46 setDay:{objc_msgSend(*(*(&v105 + 1) + 8 * i), "integerValue")}];
                    v49 = [v41 dateFromComponents:v46];

                    if ([array count] < unsignedIntegerValue && objc_msgSend(v49, "compare:", v40) != -1 && objc_msgSend(v49, "compare:", v103) != 1)
                    {
                      weekday = [byday2 weekday];
                      v71 = [v41 components:512 fromDate:v49];
                      weekday2 = [v71 weekday];

                      v73 = weekday == weekday2;
                      v40 = v100;
                      v41 = v101;
                      if (v73)
                      {
                        [array addObject:v49];
                      }
                    }
                  }

                  v66 = [obj countByEnumeratingWithState:&v105 objects:v113 count:16];
                }

                while (v66);
              }

              goto LABEL_48;
            }

            v41 = v101;
            v33 = v55;
            v19 = v92;
LABEL_50:
            [v46 setDay:1];
            year = v97 + integerValue;
            [v46 setYear:v97 + integerValue];
            v74 = [v41 dateFromComponents:v46];

            v49 = v74;
            if ([array count] >= unsignedIntegerValue)
            {
              goto LABEL_53;
            }
          }

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          byday2 = [(ICSRecurrenceRule *)v51 bymonthday];
          v59 = [byday2 countByEnumeratingWithState:&v109 objects:v114 count:16];
          if (v59)
          {
            v60 = v59;
            v61 = *v110;
            do
            {
              for (j = 0; j != v60; ++j)
              {
                v63 = v49;
                if (*v110 != v61)
                {
                  objc_enumerationMutation(byday2);
                }

                [v46 setDay:{objc_msgSend(*(*(&v109 + 1) + 8 * j), "integerValue")}];
                v49 = [v41 dateFromComponents:v46];

                if ([array count] < unsignedIntegerValue && objc_msgSend(v49, "compare:", v40) != -1 && objc_msgSend(v49, "compare:", v103) != 1)
                {
                  [array addObject:v49];
                }
              }

              v60 = [byday2 countByEnumeratingWithState:&v109 objects:v114 count:16];
            }

            while (v60);
LABEL_48:
            v33 = v96;
            v19 = v92;
            v51 = selfCopy;
          }

LABEL_49:

          goto LABEL_50;
        }

LABEL_52:
        v74 = v49;
LABEL_53:
      }

      else
      {
        byday5 = [(ICSRecurrenceRule *)v34 byday];
        if ([byday5 count] == 1)
        {
          byday6 = [(ICSRecurrenceRule *)v34 byday];
          v77 = [byday6 objectAtIndex:0];
          number2 = [v77 number];

          if (!number2)
          {
            goto LABEL_66;
          }

          byday5 = [v101 components:228 fromDate:v95];
          bymonth3 = [(ICSRecurrenceRule *)v34 bymonth];
          v80 = [bymonth3 objectAtIndex:0];
          [byday5 setMonth:{objc_msgSend(v80, "integerValue")}];

          byday7 = [(ICSRecurrenceRule *)v34 byday];
          v82 = [byday7 objectAtIndex:0];
          [byday5 setWeekday:{objc_msgSend(v82, "weekday")}];

          byday8 = [(ICSRecurrenceRule *)v34 byday];
          v84 = [byday8 objectAtIndex:0];
          number3 = [v84 number];
          [byday5 setWeekdayOrdinal:{objc_msgSend(number3, "integerValue")}];

          v86 = [v101 dateFromComponents:byday5];
          year2 = [byday5 year];
          if ([array count] < unsignedIntegerValue)
          {
            v88 = year2 + integerValue;
            while ([v86 compare:v103] != 1)
            {
              if ([v86 compare:v100] != -1)
              {
                [array addObject:v86];
              }

              [byday5 setYear:v88];
              v89 = [v101 dateFromComponents:byday5];

              v88 += integerValue;
              v86 = v89;
              if ([array count] >= unsignedIntegerValue)
              {
                goto LABEL_64;
              }
            }
          }

          v89 = v86;
LABEL_64:
        }
      }
    }
  }

LABEL_66:

  v90 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)recurrenceRuleFromICSCString:(const char *)string withTokenizer:(id)tokenizer
{
  tokenizerCopy = tokenizer;
  v6 = objc_alloc_init(ICSRecurrenceRule);
  if (string)
  {
    v7 = 0x27A64B000uLL;
    if (strncmp_s(string, "FREQ=", 5uLL) || strlen(string) <= 5)
    {
      [ICSLogger logAtLevel:3 forTokenizer:tokenizerCopy message:@"Invalid RRULE %s", string];
      string = 0;
      goto LABEL_5;
    }

    v9 = strdup(string);
    i = v9 + 5;
    if (strncmp_s("YEARLY", v9 + 5, 6uLL))
    {
      if (!strncmp_s("MONTHLY", i, 7uLL))
      {
        [(ICSRecurrenceRule *)v6 setFreq:6];
        i = v9 + 12;
        goto LABEL_22;
      }

      if (strncmp_s("WEEKLY", i, 6uLL))
      {
        if (!strncmp_s("DAILY", i, 5uLL))
        {
          [(ICSRecurrenceRule *)v6 setFreq:4];
          i = v9 + 10;
          goto LABEL_22;
        }

        if (strncmp_s("HOURLY", i, 6uLL))
        {
          if (strncmp_s("MINUTELY", i, 8uLL))
          {
            if (strncmp_s("SECONDLY", i, 8uLL))
            {
              [ICSLogger logAtLevel:3 forTokenizer:tokenizerCopy message:@"RRULE %s Unrecognized frequency %s", string, i];
              goto LABEL_22;
            }

            v87 = v6;
            v88 = 1;
          }

          else
          {
            v87 = v6;
            v88 = 2;
          }

          [(ICSRecurrenceRule *)v87 setFreq:v88];
          i = v9 + 13;
LABEL_22:
          if (*i)
          {
            ++i;
          }

          while (1)
          {
            while (1)
            {
              while (1)
              {
                while (1)
                {
                  v13 = *i;
                  if ((v13 - 9) >= 2 && v13 != 13)
                  {
                    break;
                  }

                  ++i;
                }

                if (!*i)
                {
LABEL_257:
                  free(v9);
                  v6 = v6;
                  string = v6;
                  goto LABEL_5;
                }

                if (strncmp_s("COUNT=", i, 6uLL))
                {
                  break;
                }

                v20 = i + 6;
                for (i += 6; *i; ++i)
                {
                  if (*i == 59)
                  {
                    *i++ = 0;
                    break;
                  }
                }

                v21 = atoi(v20);
                if (v21 >= 1)
                {
                  v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];
                  [(ICSRecurrenceRule *)v6 setCount:v22];
                  goto LABEL_94;
                }

                [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"Invalid COUNT value in recurrence:%s", string}];
              }

              if (strncmp_s("UNTIL=", i, 6uLL))
              {
                break;
              }

              for (i += 6; *i; ++i)
              {
                if (*i == 59)
                {
                  *i++ = 0;
                  break;
                }
              }

              v22 = [ICSDateValue dateFromICSUTF8String:?];
              if (v22)
              {
                [(ICSRecurrenceRule *)v6 setUntil:v22];
              }

LABEL_94:
            }

            if (strncmp_s("INTERVAL=", i, 9uLL))
            {
              if (strncmp_s("WKST=", i, 5uLL))
              {
                if (!strncmp_s("BYMONTH=", i, 8uLL))
                {
                  v25 = i + 8;
                  array = [MEMORY[0x277CBEB18] array];
LABEL_81:
                  for (i = v25; ; ++i)
                  {
                    v26 = *i;
                    if (!*i)
                    {
                      break;
                    }

                    if (v26 == 59)
                    {
                      *i++ = 0;
                      break;
                    }

                    if (v26 == 44)
                    {
                      *i = 0;
                      v27 = atoi(v25);
                      if ((v27 - 1) > 0xB)
                      {
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYMONTH %d", string, v27}];
                      }

                      else
                      {
                        v28 = [MEMORY[0x277CCABB0] numberWithInt:v27];
                        [array addObject:v28];
                      }

                      v25 = i + 1;
                      goto LABEL_81;
                    }
                  }

                  v36 = atoi(v25);
                  if ((v36 - 1) > 0xB)
                  {
                    [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYMONTH %d", string, v36}];
                  }

                  else
                  {
                    v37 = [MEMORY[0x277CCABB0] numberWithInt:v36];
                    [array addObject:v37];
                  }

                  if ([array count])
                  {
                    [(ICSRecurrenceRule *)v6 setBymonth:array];
                  }

                  goto LABEL_252;
                }

                if (!strncmp_s("BYYEARDAY=", i, 0xAuLL))
                {
                  v31 = i + 10;
                  array = [MEMORY[0x277CBEB18] array];
LABEL_96:
                  for (i = v31; ; ++i)
                  {
                    v32 = *i;
                    if (!*i)
                    {
                      break;
                    }

                    if (v32 == 59)
                    {
                      *i++ = 0;
                      break;
                    }

                    if (v32 == 44)
                    {
                      *i = 0;
                      v33 = atoi(v31);
                      if (v33 >= 0)
                      {
                        v34 = v33;
                      }

                      else
                      {
                        v34 = -v33;
                      }

                      if (v33 && v34 <= 0x16E)
                      {
                        v35 = [MEMORY[0x277CCABB0] numberWithInt:v33];
                        [array addObject:v35];
                      }

                      else
                      {
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYYEARDAY %d", string, v33}];
                      }

                      v31 = i + 1;
                      goto LABEL_96;
                    }
                  }

                  v43 = atoi(v31);
                  if (v43 >= 0)
                  {
                    v44 = v43;
                  }

                  else
                  {
                    v44 = -v43;
                  }

                  if (v43 && v44 <= 0x16E)
                  {
                    v45 = [MEMORY[0x277CCABB0] numberWithInt:v43];
                    [array addObject:v45];
                  }

                  else
                  {
                    [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYYEARDAY %d", string, v43}];
                  }

                  if ([array count])
                  {
                    [(ICSRecurrenceRule *)v6 setByyearday:array];
                  }

                  goto LABEL_252;
                }

                if (!strncmp_s("BYSETPOS=", i, 9uLL))
                {
                  v38 = i + 9;
                  array = [MEMORY[0x277CBEB18] array];
LABEL_116:
                  for (i = v38; ; ++i)
                  {
                    v39 = *i;
                    if (!*i)
                    {
                      break;
                    }

                    if (v39 == 59)
                    {
                      *i++ = 0;
                      break;
                    }

                    if (v39 == 44)
                    {
                      *i = 0;
                      v40 = atoi(v38);
                      if (v40 >= 0)
                      {
                        v41 = v40;
                      }

                      else
                      {
                        v41 = -v40;
                      }

                      if (v40 && v41 <= 0x16E)
                      {
                        v42 = [MEMORY[0x277CCABB0] numberWithInt:v40];
                        [array addObject:v42];
                      }

                      else
                      {
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYSETPOS %d", string, v40}];
                      }

                      v38 = i + 1;
                      goto LABEL_116;
                    }
                  }

                  v51 = atoi(v38);
                  if (v51 >= 0)
                  {
                    v52 = v51;
                  }

                  else
                  {
                    v52 = -v51;
                  }

                  if (v51 && v52 <= 0x16E)
                  {
                    v53 = [MEMORY[0x277CCABB0] numberWithInt:v51];
                    [array addObject:v53];
                  }

                  else
                  {
                    [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYSETPOS %d", string, v51}];
                  }

                  if ([array count])
                  {
                    [(ICSRecurrenceRule *)v6 setBysetpos:array];
                  }

                  goto LABEL_252;
                }

                if (!strncmp_s("BYMONTHDAY=", i, 0xBuLL))
                {
                  v46 = i + 11;
                  array = [MEMORY[0x277CBEB18] array];
LABEL_140:
                  for (i = v46; ; ++i)
                  {
                    v47 = *i;
                    if (!*i)
                    {
                      break;
                    }

                    if (v47 == 59)
                    {
                      *i++ = 0;
                      break;
                    }

                    if (v47 == 44)
                    {
                      *i = 0;
                      v48 = atoi(v46);
                      if (v48 >= 0)
                      {
                        v49 = v48;
                      }

                      else
                      {
                        v49 = -v48;
                      }

                      if (v48 && v49 <= 0x1F)
                      {
                        v50 = [MEMORY[0x277CCABB0] numberWithInt:v48];
                        [array addObject:v50];
                      }

                      else
                      {
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYMONTHDAY %d", string, v48}];
                      }

                      v46 = i + 1;
                      goto LABEL_140;
                    }
                  }

                  v59 = atoi(v46);
                  if (v59 >= 0)
                  {
                    v60 = v59;
                  }

                  else
                  {
                    v60 = -v59;
                  }

                  if (v59 && v60 <= 0x1F)
                  {
                    v61 = [MEMORY[0x277CCABB0] numberWithInt:v59];
                    [array addObject:v61];
                  }

                  else
                  {
                    [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYMONTHDAY %d", string, v59}];
                  }

                  if ([array count])
                  {
                    [(ICSRecurrenceRule *)v6 setBymonthday:array];
                  }

                  goto LABEL_252;
                }

                if (!strncmp_s("BYWEEKNO=", i, 9uLL))
                {
                  v54 = i + 9;
                  array = [MEMORY[0x277CBEB18] array];
LABEL_164:
                  for (i = v54; ; ++i)
                  {
                    v55 = *i;
                    if (!*i)
                    {
                      break;
                    }

                    if (v55 == 59)
                    {
                      *i++ = 0;
                      break;
                    }

                    if (v55 == 44)
                    {
                      *i = 0;
                      v56 = atoi(v54);
                      if (v56 >= 0)
                      {
                        v57 = v56;
                      }

                      else
                      {
                        v57 = -v56;
                      }

                      if (v56 && v57 <= 0x35)
                      {
                        v58 = [MEMORY[0x277CCABB0] numberWithInt:v56];
                        [array addObject:v58];
                      }

                      else
                      {
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYWEEKNO %d", string, v56}];
                      }

                      v54 = i + 1;
                      goto LABEL_164;
                    }
                  }

                  v67 = atoi(v54);
                  if (v67 >= 0)
                  {
                    v68 = v67;
                  }

                  else
                  {
                    v68 = -v67;
                  }

                  if (v67 && v68 <= 0x35)
                  {
                    v69 = [MEMORY[0x277CCABB0] numberWithInt:v67];
                    [array addObject:v69];
                  }

                  else
                  {
                    [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYWEEKNO %d", string, v67}];
                  }

                  if ([array count])
                  {
                    [(ICSRecurrenceRule *)v6 setByweekno:array];
                  }

                  goto LABEL_252;
                }

                if (strncmp_s("BYDAY=", i, 6uLL))
                {
                  if (strncmp_s("BYMINUTE=", i, 9uLL))
                  {
                    if (strncmp_s("BYSECOND=", i, 9uLL))
                    {
                      if (strncmp_s("BYHOUR=", i, 7uLL))
                      {
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"Unrecognized value in RRULE %s, (%s)", string, i}];

                        v6 = 0;
                        goto LABEL_257;
                      }

                      v15 = i + 7;
                      array = [MEMORY[0x277CBEB18] array];
LABEL_45:
                      for (i = v15; ; ++i)
                      {
                        v17 = *i;
                        if (!*i)
                        {
                          break;
                        }

                        if (v17 == 59)
                        {
                          *i++ = 0;
                          break;
                        }

                        if (v17 == 44)
                        {
                          *i = 0;
                          v18 = atoi(v15);
                          if (v18 > 0x17)
                          {
                            [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYHOUR %d", string, v18}];
                          }

                          else
                          {
                            v19 = [MEMORY[0x277CCABB0] numberWithInt:v18];
                            [array addObject:v19];
                          }

                          v15 = i + 1;
                          goto LABEL_45;
                        }
                      }

                      v81 = atoi(v15);
                      if (v81 > 0x17)
                      {
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYHOUR %d", string, v81}];
                      }

                      else
                      {
                        v82 = [MEMORY[0x277CCABB0] numberWithInt:v81];
                        [array addObject:v82];
                      }

                      if ([array count])
                      {
                        [(ICSRecurrenceRule *)v6 setByhour:array];
                      }
                    }

                    else
                    {
                      v77 = i + 9;
                      array = [MEMORY[0x277CBEB18] array];
LABEL_221:
                      for (i = v77; ; ++i)
                      {
                        v78 = *i;
                        if (!*i)
                        {
                          break;
                        }

                        if (v78 == 59)
                        {
                          *i++ = 0;
                          break;
                        }

                        if (v78 == 44)
                        {
                          *i = 0;
                          v79 = atoi(v77);
                          if (v79 > 0x3B)
                          {
                            [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYSECOND %d", string, v79}];
                          }

                          else
                          {
                            v80 = [MEMORY[0x277CCABB0] numberWithInt:v79];
                            [array addObject:v80];
                          }

                          v77 = i + 1;
                          goto LABEL_221;
                        }
                      }

                      v85 = atoi(v77);
                      if (v85 > 0x3B)
                      {
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYSECOND %d", string, v85}];
                      }

                      else
                      {
                        v86 = [MEMORY[0x277CCABB0] numberWithInt:v85];
                        [array addObject:v86];
                      }

                      if ([array count])
                      {
                        [(ICSRecurrenceRule *)v6 setBysecond:array];
                      }
                    }
                  }

                  else
                  {
                    v70 = i + 9;
                    array = [MEMORY[0x277CBEB18] array];
LABEL_208:
                    for (i = v70; ; ++i)
                    {
                      v71 = *i;
                      if (!*i)
                      {
                        break;
                      }

                      if (v71 == 59)
                      {
                        *i++ = 0;
                        break;
                      }

                      if (v71 == 44)
                      {
                        *i = 0;
                        v72 = atoi(v70);
                        if (v72 > 0x3B)
                        {
                          [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYMINUTE %d", string, v72}];
                        }

                        else
                        {
                          v73 = [MEMORY[0x277CCABB0] numberWithInt:v72];
                          [array addObject:v73];
                        }

                        v70 = i + 1;
                        goto LABEL_208;
                      }
                    }

                    v83 = atoi(v70);
                    if (v83 > 0x3B)
                    {
                      [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYMINUTE %d", string, v83}];
                    }

                    else
                    {
                      v84 = [MEMORY[0x277CCABB0] numberWithInt:v83];
                      [array addObject:v84];
                    }

                    if ([array count])
                    {
                      [(ICSRecurrenceRule *)v6 setByminute:array];
                    }
                  }

LABEL_252:
                }

                else
                {
                  v62 = i + 6;
                  [MEMORY[0x277CBEB18] array];
                  v90 = v89 = v9;
LABEL_188:
                  for (i = v62; ; ++i)
                  {
                    v63 = *i;
                    if (!*i)
                    {
                      break;
                    }

                    if (v63 == 59)
                    {
                      *i++ = 0;
                      break;
                    }

                    if (v63 == 44)
                    {
                      v64 = v7;
                      *i = 0;
                      v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:v62];
                      v66 = [ICSByDayValue byDayValueFromICSString:v65];

                      if (v66)
                      {
                        [v90 addObject:v66];
                      }

                      else
                      {
                        [*(v64 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Bad value in BYDAY  %s", string, v62}];
                      }

                      v62 = i + 1;

                      v7 = v64;
                      goto LABEL_188;
                    }
                  }

                  v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:v62];
                  v75 = [ICSByDayValue byDayValueFromICSString:v74];

                  if (v75)
                  {
                    v76 = v90;
                    [v90 addObject:v75];
                    v9 = v89;
                  }

                  else
                  {
                    [ICSLogger logAtLevel:3 forTokenizer:tokenizerCopy message:@"RRULE %s Bad value in BYDAY %s", string, v62];
                    v9 = v89;
                    v76 = v90;
                  }

                  if ([v76 count])
                  {
                    [(ICSRecurrenceRule *)v6 setByday:v76];
                  }

                  v7 = 0x27A64B000;
                }
              }

              else
              {
                for (i += 5; *i; ++i)
                {
                  if (*i == 59)
                  {
                    *i++ = 0;
                    break;
                  }
                }

                v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
                v30 = [ICSByDayValue weekdayFromICSString:v29];

                if (v30 != -1)
                {
                  v22 = [MEMORY[0x277CCABB0] numberWithInteger:v30];
                  [(ICSRecurrenceRule *)v6 setWkst:v22];
                  goto LABEL_94;
                }
              }
            }

            else
            {
              v23 = i + 9;
              for (i += 9; *i; ++i)
              {
                if (*i == 59)
                {
                  *i++ = 0;
                  break;
                }
              }

              v24 = atoi(v23);
              if (v24 >= 1)
              {
                v22 = [MEMORY[0x277CCABB0] numberWithInt:v24];
                [(ICSRecurrenceRule *)v6 setInterval:v22];
                goto LABEL_94;
              }

              [*(v7 + 1496) logAtLevel:3 forTokenizer:tokenizerCopy message:{@"RRULE %s Invalid INTERVAL value in recurrence:%s", string, v23}];
            }
          }
        }

        v11 = v6;
        v12 = 3;
      }

      else
      {
        v11 = v6;
        v12 = 5;
      }
    }

    else
    {
      v11 = v6;
      v12 = 7;
    }

    [(ICSRecurrenceRule *)v11 setFreq:v12];
    i = v9 + 11;
    goto LABEL_22;
  }

LABEL_5:

  return string;
}

- (void)cleanUpForStartDate:(id)date
{
  if (date)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      until = [(ICSRecurrenceRule *)self until];
      if (until)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = -[ICSDateValue initWithYear:month:day:]([ICSDateValue alloc], "initWithYear:month:day:", [until year], objc_msgSend(until, "month"), objc_msgSend(until, "day"));
          [(ICSRecurrenceRule *)self setUntil:v5];
        }
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

@end