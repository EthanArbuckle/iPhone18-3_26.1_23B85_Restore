@interface ICSRecurrenceRule
+ (id)recurrenceRuleFromICSCString:(const char *)a3 withTokenizer:(id)a4;
+ (id)recurrenceRuleFromICSString:(id)a3;
- (ICSRecurrenceRule)initWithCoder:(id)a3;
- (ICSRecurrenceRule)initWithFrequency:(unint64_t)a3;
- (id)occurrencesForStartDate:(id)a3 fromDate:(id)a4 toDate:(id)a5 inTimeZone:(id)a6;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
- (void)cleanUpForStartDate:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setParameterValue:(id)a3 forName:(id)a4;
@end

@implementation ICSRecurrenceRule

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v63 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [(ICSRecurrenceRule *)self freq]- 1;
  if (v7 <= 6)
  {
    [v6 addObject:off_27A64C198[v7]];
  }

  v8 = [(ICSRecurrenceRule *)self interval];

  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(ICSRecurrenceRule *)self interval];
    v11 = [v9 stringWithFormat:@"INTERVAL=%ld", objc_msgSend(v10, "integerValue")];
    [v6 addObject:v11];
  }

  v12 = [(ICSRecurrenceRule *)self count];

  if (v12)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [(ICSRecurrenceRule *)self count];
    v15 = [v13 stringWithFormat:@"COUNT=%ld", objc_msgSend(v14, "integerValue")];
    [v6 addObject:v15];
  }

  v16 = [(ICSRecurrenceRule *)self until];

  if (v16)
  {
    v17 = [[ICSStringWriter alloc] initWithString:@"UNTIL="];
    v18 = [(ICSRecurrenceRule *)self until];
    [v18 _ICSStringWithOptions:a3 appendingToString:v17];

    v19 = [(ICSStringWriter *)v17 result];
    [v6 addObject:v19];
  }

  v20 = [(ICSRecurrenceRule *)self bymonth];

  if (v20)
  {
    v21 = [[ICSStringWriter alloc] initWithString:@"BYMONTH="];
    v22 = [(ICSRecurrenceRule *)self bymonth];
    [v22 _ICSStringWithOptions:a3 appendingToString:v21];

    v23 = [(ICSStringWriter *)v21 result];
    [v6 addObject:v23];
  }

  v24 = [(ICSRecurrenceRule *)self byweekno];

  if (v24)
  {
    v25 = [[ICSStringWriter alloc] initWithString:@"BYWEEKNO="];
    v26 = [(ICSRecurrenceRule *)self byweekno];
    [v26 _ICSStringWithOptions:a3 appendingToString:v25];

    v27 = [(ICSStringWriter *)v25 result];
    [v6 addObject:v27];
  }

  v28 = [(ICSRecurrenceRule *)self bysetpos];

  if (v28)
  {
    v29 = [[ICSStringWriter alloc] initWithString:@"BYSETPOS="];
    v30 = [(ICSRecurrenceRule *)self bysetpos];
    [v30 _ICSStringWithOptions:a3 appendingToString:v29];

    v31 = [(ICSStringWriter *)v29 result];
    [v6 addObject:v31];
  }

  v32 = [(ICSRecurrenceRule *)self byyearday];

  if (v32)
  {
    v33 = [[ICSStringWriter alloc] initWithString:@"BYYEARDAY="];
    v34 = [(ICSRecurrenceRule *)self byyearday];
    [v34 _ICSStringWithOptions:a3 appendingToString:v33];

    v35 = [(ICSStringWriter *)v33 result];
    [v6 addObject:v35];
  }

  v36 = [(ICSRecurrenceRule *)self bymonthday];

  if (v36)
  {
    v37 = [[ICSStringWriter alloc] initWithString:@"BYMONTHDAY="];
    v38 = [(ICSRecurrenceRule *)self bymonthday];
    [v38 _ICSStringWithOptions:a3 appendingToString:v37];

    v39 = [(ICSStringWriter *)v37 result];
    [v6 addObject:v39];
  }

  v40 = [(ICSRecurrenceRule *)self byday];

  if (v40)
  {
    v41 = [[ICSStringWriter alloc] initWithString:@"BYDAY="];
    v42 = [(ICSRecurrenceRule *)self byday];
    [v42 _ICSStringWithOptions:a3 appendingToString:v41];

    v43 = [(ICSStringWriter *)v41 result];
    [v6 addObject:v43];
  }

  v44 = [(ICSRecurrenceRule *)self byhour];

  if (v44)
  {
    v45 = [[ICSStringWriter alloc] initWithString:@"BYHOUR="];
    v46 = [(ICSRecurrenceRule *)self byhour];
    [v46 _ICSStringWithOptions:a3 appendingToString:v45];

    v47 = [(ICSStringWriter *)v45 result];
    [v6 addObject:v47];
  }

  v48 = [(ICSRecurrenceRule *)self byminute];

  if (v48)
  {
    v49 = [[ICSStringWriter alloc] initWithString:@"BYMINUTE="];
    v50 = [(ICSRecurrenceRule *)self byminute];
    [v50 _ICSStringWithOptions:a3 appendingToString:v49];

    v51 = [(ICSStringWriter *)v49 result];
    [v6 addObject:v51];
  }

  v52 = [(ICSRecurrenceRule *)self bysecond];

  if (v52)
  {
    v53 = [[ICSStringWriter alloc] initWithString:@"BYSECOND="];
    v54 = [(ICSRecurrenceRule *)self bysecond];
    [v54 _ICSStringWithOptions:a3 appendingToString:v53];

    v55 = [(ICSStringWriter *)v53 result];
    [v6 addObject:v55];
  }

  v56 = [(ICSRecurrenceRule *)self wkst];

  if (v56)
  {
    v57 = [[ICSStringWriter alloc] initWithString:@"WKST="];
    v58 = [(ICSRecurrenceRule *)self wkst];
    v59 = iCalendarRepresentationForCALDay([v58 integerValue]);
    [(ICSStringWriter *)v57 appendString:v59];

    v60 = [(ICSStringWriter *)v57 result];
    [v6 addObject:v60];
  }

  if ((a3 & 8) != 0)
  {
    v61 = [v6 sortedArrayUsingSelector:sel_compare_];
    v62 = [v61 componentsJoinedByString:@""];;
    [v63 appendString:v62];
  }

  else
  {
    v61 = [v6 componentsJoinedByString:@""];;
    [v63 appendString:v61];
  }
}

+ (id)recurrenceRuleFromICSString:(id)a3
{
  v3 = [a3 UTF8String];

  return [ICSRecurrenceRule recurrenceRuleFromICSCString:v3 withTokenizer:0];
}

- (ICSRecurrenceRule)initWithFrequency:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = ICSRecurrenceRule;
  v4 = [(ICSRecurrenceRule *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ICSRecurrenceRule *)v4 setFreq:a3];
  }

  return v5;
}

- (void)setParameterValue:(id)a3 forName:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v12;
  v8 = v6;
  parameters = self->_parameters;
  if (v12)
  {
    if (!parameters)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = self->_parameters;
      self->_parameters = v10;

      v7 = v12;
      parameters = self->_parameters;
    }

    [(NSMutableDictionary *)parameters setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)parameters removeObjectForKey:v8];
  }
}

- (void)encodeWithCoder:(id)a3
{
  freq_low = LODWORD(self->_freq);
  v5 = a3;
  [v5 encodeInt:freq_low forKey:@"Frequency"];
  [v5 encodeObject:self->_parameters forKey:@"Parameters"];
}

- (ICSRecurrenceRule)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICSRecurrenceRule;
  v5 = [(ICSRecurrenceRule *)&v9 init];
  if (v5)
  {
    if (initWithCoder__onceToken != -1)
    {
      [ICSRecurrenceRule initWithCoder:];
    }

    v5->_freq = [v4 decodeIntForKey:@"Frequency"];
    v6 = [v4 decodeObjectOfClasses:initWithCoder__parametersPermittedList forKey:@"Parameters"];
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

- (id)occurrencesForStartDate:(id)a3 fromDate:(id)a4 toDate:(id)a5 inTimeZone:(id)a6
{
  v115 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc(MEMORY[0x277CBEA80]);
  v15 = *MEMORY[0x277CBE5C0];
  v16 = [v14 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  [v16 setTimeZone:v13];
  v96 = v10;
  v17 = [v10 components];
  v18 = [v16 dateFromComponents:v17];

  v19 = v11;
  v20 = [v11 components];
  v21 = [v16 dateFromComponents:v20];
  v95 = v18;
  v100 = [v18 laterDate:v21];

  v22 = [v12 components];
  v101 = v16;
  v23 = [v16 dateFromComponents:v22];

  v24 = [(ICSRecurrenceRule *)self until];

  v99 = self;
  if (v24)
  {
    v25 = [(ICSRecurrenceRule *)self until];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v27 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v15];
      v28 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
      [v27 setTimeZone:v28];

      v29 = [(ICSRecurrenceRule *)self until];
      v30 = [v29 components];
      v31 = [v27 dateFromComponents:v30];
      v32 = [v23 earlierDate:v31];

      v23 = v31;
    }

    else
    {
      v27 = [(ICSRecurrenceRule *)self until];
      v29 = [v27 components];
      v30 = [v16 dateFromComponents:v29];
      v32 = [v23 earlierDate:v30];
    }

    v23 = v32;
  }

  v33 = v96;
  v34 = v99;
  v35 = [(ICSRecurrenceRule *)v99 interval];
  if (v35)
  {
    v36 = [(ICSRecurrenceRule *)v99 interval];
    v98 = [v36 integerValue];

    v34 = v99;
  }

  else
  {
    v98 = 1;
  }

  v37 = [(ICSRecurrenceRule *)v34 count];
  v93 = v13;
  v94 = v12;
  v103 = v23;
  if (v37)
  {
    v38 = [(ICSRecurrenceRule *)v34 count];
    v104 = [v38 unsignedIntegerValue];
  }

  else
  {
    v104 = -1;
  }

  v39 = [MEMORY[0x277CBEB18] array];
  v40 = v100;
  v41 = v101;
  if ([(ICSRecurrenceRule *)v34 freq]== 7)
  {
    v42 = [(ICSRecurrenceRule *)v34 bymonth];
    v43 = [v42 count];

    if (v43 == 1)
    {
      v44 = [(ICSRecurrenceRule *)v34 bymonthday];
      v45 = [v44 count];

      if (v45)
      {
        v46 = [v101 components:228 fromDate:v95];
        v47 = [(ICSRecurrenceRule *)v34 bymonth];
        v48 = [v47 objectAtIndex:0];
        [v46 setMonth:{objc_msgSend(v48, "integerValue")}];

        v49 = v95;
        v50 = [v46 year];
        if ([v39 count] < v104)
        {
          v92 = v19;
          v51 = v99;
          while (1)
          {
            if ([v49 compare:v103] == 1)
            {
              goto LABEL_52;
            }

            v97 = v50;
            v52 = [(ICSRecurrenceRule *)v51 byday];
            v53 = [v52 count];

            if (!v53)
            {
              break;
            }

            v54 = [(ICSRecurrenceRule *)v51 byday];
            if ([v54 count] != 1)
            {
              goto LABEL_49;
            }

            v55 = v33;
            v56 = [(ICSRecurrenceRule *)v51 byday];
            v57 = [v56 objectAtIndex:0];
            v58 = [v57 number];

            if (!v58)
            {
              v64 = [(ICSRecurrenceRule *)v51 byday];
              v54 = [v64 objectAtIndex:0];

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

                    if ([v39 count] < v104 && objc_msgSend(v49, "compare:", v40) != -1 && objc_msgSend(v49, "compare:", v103) != 1)
                    {
                      v70 = [v54 weekday];
                      v71 = [v41 components:512 fromDate:v49];
                      v72 = [v71 weekday];

                      v73 = v70 == v72;
                      v40 = v100;
                      v41 = v101;
                      if (v73)
                      {
                        [v39 addObject:v49];
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
            v50 = v97 + v98;
            [v46 setYear:v97 + v98];
            v74 = [v41 dateFromComponents:v46];

            v49 = v74;
            if ([v39 count] >= v104)
            {
              goto LABEL_53;
            }
          }

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v54 = [(ICSRecurrenceRule *)v51 bymonthday];
          v59 = [v54 countByEnumeratingWithState:&v109 objects:v114 count:16];
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
                  objc_enumerationMutation(v54);
                }

                [v46 setDay:{objc_msgSend(*(*(&v109 + 1) + 8 * j), "integerValue")}];
                v49 = [v41 dateFromComponents:v46];

                if ([v39 count] < v104 && objc_msgSend(v49, "compare:", v40) != -1 && objc_msgSend(v49, "compare:", v103) != 1)
                {
                  [v39 addObject:v49];
                }
              }

              v60 = [v54 countByEnumeratingWithState:&v109 objects:v114 count:16];
            }

            while (v60);
LABEL_48:
            v33 = v96;
            v19 = v92;
            v51 = v99;
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
        v75 = [(ICSRecurrenceRule *)v34 byday];
        if ([v75 count] == 1)
        {
          v76 = [(ICSRecurrenceRule *)v34 byday];
          v77 = [v76 objectAtIndex:0];
          v78 = [v77 number];

          if (!v78)
          {
            goto LABEL_66;
          }

          v75 = [v101 components:228 fromDate:v95];
          v79 = [(ICSRecurrenceRule *)v34 bymonth];
          v80 = [v79 objectAtIndex:0];
          [v75 setMonth:{objc_msgSend(v80, "integerValue")}];

          v81 = [(ICSRecurrenceRule *)v34 byday];
          v82 = [v81 objectAtIndex:0];
          [v75 setWeekday:{objc_msgSend(v82, "weekday")}];

          v83 = [(ICSRecurrenceRule *)v34 byday];
          v84 = [v83 objectAtIndex:0];
          v85 = [v84 number];
          [v75 setWeekdayOrdinal:{objc_msgSend(v85, "integerValue")}];

          v86 = [v101 dateFromComponents:v75];
          v87 = [v75 year];
          if ([v39 count] < v104)
          {
            v88 = v87 + v98;
            while ([v86 compare:v103] != 1)
            {
              if ([v86 compare:v100] != -1)
              {
                [v39 addObject:v86];
              }

              [v75 setYear:v88];
              v89 = [v101 dateFromComponents:v75];

              v88 += v98;
              v86 = v89;
              if ([v39 count] >= v104)
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

  return v39;
}

+ (id)recurrenceRuleFromICSCString:(const char *)a3 withTokenizer:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(ICSRecurrenceRule);
  if (a3)
  {
    v7 = 0x27A64B000uLL;
    if (strncmp_s(a3, "FREQ=", 5uLL) || strlen(a3) <= 5)
    {
      [ICSLogger logAtLevel:3 forTokenizer:v5 message:@"Invalid RRULE %s", a3];
      a3 = 0;
      goto LABEL_5;
    }

    v9 = strdup(a3);
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
              [ICSLogger logAtLevel:3 forTokenizer:v5 message:@"RRULE %s Unrecognized frequency %s", a3, i];
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
                  a3 = v6;
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

                [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"Invalid COUNT value in recurrence:%s", a3}];
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
                  v16 = [MEMORY[0x277CBEB18] array];
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
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYMONTH %d", a3, v27}];
                      }

                      else
                      {
                        v28 = [MEMORY[0x277CCABB0] numberWithInt:v27];
                        [v16 addObject:v28];
                      }

                      v25 = i + 1;
                      goto LABEL_81;
                    }
                  }

                  v36 = atoi(v25);
                  if ((v36 - 1) > 0xB)
                  {
                    [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYMONTH %d", a3, v36}];
                  }

                  else
                  {
                    v37 = [MEMORY[0x277CCABB0] numberWithInt:v36];
                    [v16 addObject:v37];
                  }

                  if ([v16 count])
                  {
                    [(ICSRecurrenceRule *)v6 setBymonth:v16];
                  }

                  goto LABEL_252;
                }

                if (!strncmp_s("BYYEARDAY=", i, 0xAuLL))
                {
                  v31 = i + 10;
                  v16 = [MEMORY[0x277CBEB18] array];
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
                        [v16 addObject:v35];
                      }

                      else
                      {
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYYEARDAY %d", a3, v33}];
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
                    [v16 addObject:v45];
                  }

                  else
                  {
                    [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYYEARDAY %d", a3, v43}];
                  }

                  if ([v16 count])
                  {
                    [(ICSRecurrenceRule *)v6 setByyearday:v16];
                  }

                  goto LABEL_252;
                }

                if (!strncmp_s("BYSETPOS=", i, 9uLL))
                {
                  v38 = i + 9;
                  v16 = [MEMORY[0x277CBEB18] array];
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
                        [v16 addObject:v42];
                      }

                      else
                      {
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYSETPOS %d", a3, v40}];
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
                    [v16 addObject:v53];
                  }

                  else
                  {
                    [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYSETPOS %d", a3, v51}];
                  }

                  if ([v16 count])
                  {
                    [(ICSRecurrenceRule *)v6 setBysetpos:v16];
                  }

                  goto LABEL_252;
                }

                if (!strncmp_s("BYMONTHDAY=", i, 0xBuLL))
                {
                  v46 = i + 11;
                  v16 = [MEMORY[0x277CBEB18] array];
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
                        [v16 addObject:v50];
                      }

                      else
                      {
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYMONTHDAY %d", a3, v48}];
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
                    [v16 addObject:v61];
                  }

                  else
                  {
                    [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYMONTHDAY %d", a3, v59}];
                  }

                  if ([v16 count])
                  {
                    [(ICSRecurrenceRule *)v6 setBymonthday:v16];
                  }

                  goto LABEL_252;
                }

                if (!strncmp_s("BYWEEKNO=", i, 9uLL))
                {
                  v54 = i + 9;
                  v16 = [MEMORY[0x277CBEB18] array];
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
                        [v16 addObject:v58];
                      }

                      else
                      {
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYWEEKNO %d", a3, v56}];
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
                    [v16 addObject:v69];
                  }

                  else
                  {
                    [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYWEEKNO %d", a3, v67}];
                  }

                  if ([v16 count])
                  {
                    [(ICSRecurrenceRule *)v6 setByweekno:v16];
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
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"Unrecognized value in RRULE %s, (%s)", a3, i}];

                        v6 = 0;
                        goto LABEL_257;
                      }

                      v15 = i + 7;
                      v16 = [MEMORY[0x277CBEB18] array];
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
                            [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYHOUR %d", a3, v18}];
                          }

                          else
                          {
                            v19 = [MEMORY[0x277CCABB0] numberWithInt:v18];
                            [v16 addObject:v19];
                          }

                          v15 = i + 1;
                          goto LABEL_45;
                        }
                      }

                      v81 = atoi(v15);
                      if (v81 > 0x17)
                      {
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYHOUR %d", a3, v81}];
                      }

                      else
                      {
                        v82 = [MEMORY[0x277CCABB0] numberWithInt:v81];
                        [v16 addObject:v82];
                      }

                      if ([v16 count])
                      {
                        [(ICSRecurrenceRule *)v6 setByhour:v16];
                      }
                    }

                    else
                    {
                      v77 = i + 9;
                      v16 = [MEMORY[0x277CBEB18] array];
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
                            [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYSECOND %d", a3, v79}];
                          }

                          else
                          {
                            v80 = [MEMORY[0x277CCABB0] numberWithInt:v79];
                            [v16 addObject:v80];
                          }

                          v77 = i + 1;
                          goto LABEL_221;
                        }
                      }

                      v85 = atoi(v77);
                      if (v85 > 0x3B)
                      {
                        [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYSECOND %d", a3, v85}];
                      }

                      else
                      {
                        v86 = [MEMORY[0x277CCABB0] numberWithInt:v85];
                        [v16 addObject:v86];
                      }

                      if ([v16 count])
                      {
                        [(ICSRecurrenceRule *)v6 setBysecond:v16];
                      }
                    }
                  }

                  else
                  {
                    v70 = i + 9;
                    v16 = [MEMORY[0x277CBEB18] array];
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
                          [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYMINUTE %d", a3, v72}];
                        }

                        else
                        {
                          v73 = [MEMORY[0x277CCABB0] numberWithInt:v72];
                          [v16 addObject:v73];
                        }

                        v70 = i + 1;
                        goto LABEL_208;
                      }
                    }

                    v83 = atoi(v70);
                    if (v83 > 0x3B)
                    {
                      [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYMINUTE %d", a3, v83}];
                    }

                    else
                    {
                      v84 = [MEMORY[0x277CCABB0] numberWithInt:v83];
                      [v16 addObject:v84];
                    }

                    if ([v16 count])
                    {
                      [(ICSRecurrenceRule *)v6 setByminute:v16];
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
                        [*(v64 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Bad value in BYDAY  %s", a3, v62}];
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
                    [ICSLogger logAtLevel:3 forTokenizer:v5 message:@"RRULE %s Bad value in BYDAY %s", a3, v62];
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

              [*(v7 + 1496) logAtLevel:3 forTokenizer:v5 message:{@"RRULE %s Invalid INTERVAL value in recurrence:%s", a3, v23}];
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

  return a3;
}

- (void)cleanUpForStartDate:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [(ICSRecurrenceRule *)self until];
      if (v4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = -[ICSDateValue initWithYear:month:day:]([ICSDateValue alloc], "initWithYear:month:day:", [v4 year], objc_msgSend(v4, "month"), objc_msgSend(v4, "day"));
          [(ICSRecurrenceRule *)self setUntil:v5];
        }
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

@end