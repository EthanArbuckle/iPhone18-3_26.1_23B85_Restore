@interface ICSTimeZoneBlock
- (BOOL)validate:(id *)a3;
- (ICSDate)dtstart;
- (NSArray)rrule;
- (NSArray)tzname;
- (id)computeTimeZoneChangeListFromDate:(id)a3 toDate:(id)a4;
- (int64_t)compare:(id)a3;
- (int64_t)tzoffsetfrom;
- (int64_t)tzoffsetto;
- (void)setRrule:(id)a3;
- (void)setTzname:(id)a3;
- (void)setTzoffsetfrom:(int64_t)a3;
- (void)setTzoffsetto:(int64_t)a3;
@end

@implementation ICSTimeZoneBlock

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(ICSTimeZoneBlock *)self dtstart];
  v6 = [v5 value];
  v7 = [v4 dtstart];

  v8 = [v7 value];
  v9 = [v6 compare:v8];

  return v9;
}

- (BOOL)validate:(id *)a3
{
  v5 = [(ICSComponent *)self propertiesForName:@"DTSTART"];

  if (v5)
  {
    v6 = [(ICSComponent *)self propertiesForName:@"TZOFFSETTO"];

    if (v6)
    {
      v7 = [(ICSComponent *)self propertiesForName:@"TZOFFSETFROM"];

      if (v7)
      {
        v8 = [(ICSComponent *)self propertiesForName:@"RRULE"];
        if (!v8 || (v9 = v8, [(ICSComponent *)self propertiesForName:@"RDATE"], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
        {
          v17.receiver = self;
          v17.super_class = ICSTimeZoneBlock;
          return [(ICSComponent *)&v17 validate:a3];
        }

        if (a3)
        {
          v11 = MEMORY[0x277CCA9B8];
          v12 = MEMORY[0x277CBEAC0];
          v13 = *MEMORY[0x277CCA450];
          v14 = @"RDATE and RRULE cannot both be set for VTIMEZONE.";
LABEL_15:
          v16 = [v12 dictionaryWithObject:v14 forKey:v13];
          *a3 = [v11 errorWithDomain:@"com.apple.iCalendar" code:1000 userInfo:v16];
        }
      }

      else if (a3)
      {
        v11 = MEMORY[0x277CCA9B8];
        v12 = MEMORY[0x277CBEAC0];
        v13 = *MEMORY[0x277CCA450];
        v14 = @"TZOFFSETFROM is required for VTIMEZONE.";
        goto LABEL_15;
      }
    }

    else if (a3)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = MEMORY[0x277CBEAC0];
      v13 = *MEMORY[0x277CCA450];
      v14 = @"TZOFFSETTO is required for VTIMEZONE.";
      goto LABEL_15;
    }
  }

  else if (a3)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = MEMORY[0x277CBEAC0];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"DTSTART is required for VTIMEZONE.";
    goto LABEL_15;
  }

  return 0;
}

- (ICSDate)dtstart
{
  v2 = [(ICSComponent *)self propertiesForName:@"DTSTART"];
  v3 = [v2 lastObject];

  return v3;
}

- (void)setRrule:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [ICSProperty alloc];
        v13 = [(ICSProperty *)v12 initWithValue:v11 type:5029, v15];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(ICSComponent *)self setProperties:v5 forName:@"RRULE"];
  v14 = *MEMORY[0x277D85DE8];
}

- (NSArray)rrule
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICSComponent *)self propertiesForName:@"RRULE"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) value];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)tzname
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICSComponent *)self propertiesForName:@"TZNAME"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) value];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setTzname:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [ICSProperty alloc];
        v13 = [(ICSProperty *)v12 initWithValue:v11 type:5007, v15];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(ICSComponent *)self setProperties:v5 forName:@"TZNAME"];
  v14 = *MEMORY[0x277D85DE8];
}

- (int64_t)tzoffsetfrom
{
  v2 = [(ICSComponent *)self propertiesForName:@"TZOFFSETFROM"];
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 integerValue];

  return v5;
}

- (void)setTzoffsetfrom:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(ICSComponent *)self setPropertyValue:v4 type:5018 forName:@"TZOFFSETFROM"];
}

- (int64_t)tzoffsetto
{
  v2 = [(ICSComponent *)self propertiesForName:@"TZOFFSETTO"];
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 integerValue];

  return v5;
}

- (void)setTzoffsetto:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(ICSComponent *)self setPropertyValue:v4 type:5018 forName:@"TZOFFSETTO"];
}

- (id)computeTimeZoneChangeListFromDate:(id)a3 toDate:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v53 = a3;
  v50 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [(ICSTimeZoneBlock *)self dtstart];
  v8 = [v7 value];

  v9 = [(ICSTimeZoneBlock *)self tzoffsetfrom];
  v10 = [(ICSTimeZoneBlock *)self tzoffsetto];
  v11 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:v9];
  v12 = objc_alloc(MEMORY[0x277CBEA80]);
  v49 = [v12 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v46 = v11;
  [v49 setTimeZone:v11];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v43 = self;
  obj = [(ICSTimeZoneBlock *)self rrule];
  v47 = v8;
  v48 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v48)
  {
    v45 = *v63;
    do
    {
      v13 = 0;
      do
      {
        if (*v63 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v13;
        v14 = [*(*(&v62 + 1) + 8 * v13) occurrencesForStartDate:v8 fromDate:v53 toDate:v50 inTimeZone:v46];
        v15 = [v53 components];
        v16 = [v49 dateFromComponents:v15];

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v17 = v14;
        v18 = [v17 countByEnumeratingWithState:&v58 objects:v67 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v59;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v59 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v58 + 1) + 8 * i);
              if ([v16 compare:v22] == -1)
              {
                v23 = [ICSTimeZoneChange alloc];
                [v22 timeIntervalSinceReferenceDate];
                v24 = [(ICSTimeZoneChange *)v23 initWithTimeInterval:v10 tzOffsetTo:?];
                [v6 addObject:v24];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v58 objects:v67 count:16];
          }

          while (v19);
        }

        v13 = v51 + 1;
        v8 = v47;
      }

      while (v51 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v48);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = [(ICSTimeZoneBlock *)v43 rdate];
  v25 = [v52 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v55;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v55 != v27)
        {
          objc_enumerationMutation(v52);
        }

        v29 = *(*(&v54 + 1) + 8 * j);
        v30 = [v29 value];
        if ([v53 compare:v30] == -1)
        {
          v31 = [v29 value];
          v32 = [v50 compare:v31];

          if (v32 == -1)
          {
            continue;
          }

          v33 = [v29 value];
          v34 = [v33 components];
          v30 = [v49 dateFromComponents:v34];

          v35 = [ICSTimeZoneChange alloc];
          [v30 timeIntervalSinceReferenceDate];
          v36 = [(ICSTimeZoneChange *)v35 initWithTimeInterval:v10 tzOffsetTo:?];
          [v6 addObject:v36];
        }
      }

      v26 = [v52 countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v26);
  }

  if (![v6 count] && objc_msgSend(v53, "compare:", v47) == -1 && objc_msgSend(v50, "compare:", v47) != -1)
  {
    v37 = [v47 components];
    v38 = [v49 dateFromComponents:v37];

    v39 = [ICSTimeZoneChange alloc];
    [v38 timeIntervalSinceReferenceDate];
    v40 = [(ICSTimeZoneChange *)v39 initWithTimeInterval:v10 tzOffsetTo:?];
    [v6 addObject:v40];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v6;
}

@end