@interface ICSCalendar
+ (id)ICSStringFromCalendarServerAccess:(int)a3;
+ (id)ICSStringFromMethod:(int)a3;
+ (id)calendarWithKnownTimeZones;
+ (id)defaultProdid;
+ (int)calendarServerAccessFromICSString:(id)a3;
+ (int)methodFromICSString:(id)a3;
+ (int64_t)compareCalendarServerAccess:(int)a3 withAccess:(int)a4;
+ (void)setDefaultProdid:(id)a3;
- (ICSColor)x_apple_calendar_color;
- (ICSDuration)x_apple_auto_refresh;
- (NSString)calscale;
- (NSString)prodid;
- (NSString)version;
- (NSString)x_apple_language;
- (NSString)x_apple_region;
- (NSString)x_wr_caldesc;
- (NSString)x_wr_calname;
- (NSString)x_wr_relcalid;
- (NSString)x_wr_timezone;
- (id)_initWithVersionAndProdID:(BOOL)a3;
- (id)_timeZonesForComponents:(id)a3 options:(int)a4;
- (id)parsingErrors;
- (id)systemCalendarForDate:(id)a3 options:(int)a4;
- (id)systemTimeZoneForDate:(id)a3;
- (int)method;
- (void)_addComponent:(id)a3 withUIDGenerator:(id)a4;
- (void)_addTimeZonesInComponent:(id)a3 toDictionary:(id)a4;
- (void)_addTimeZonesInComponent:(id)a3 toSet:(id)a4;
- (void)addComponent:(id)a3 withUIDGenerator:(id)a4;
- (void)fixComponent;
- (void)fixEntities;
- (void)fixPropertiesInheritance;
- (void)setComponents:(id)a3 timeZones:(BOOL)a4;
- (void)setMethod:(int)a3;
- (void)setX_apple_calendar_color:(id)a3;
@end

@implementation ICSCalendar

+ (id)calendarWithKnownTimeZones
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [MEMORY[0x277CBEBB0] knownTimeZoneNames];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [ICSTimeZone timeZoneWithSystemTimeZoneName:*(*(&v14 + 1) + 8 * i)];
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v8 = objc_alloc_init(ICSCalendar);
  v9 = MEMORY[0x277CBEB18];
  v10 = [_sCache allValues];
  v11 = [v9 arrayWithArray:v10];
  [(ICSCalendar *)v8 setComponents:v11];

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)setDefaultProdid:(id)a3
{
  v6 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  if (__defaultProdid != v6)
  {
    objc_storeStrong(&__defaultProdid, a3);
  }

  objc_sync_exit(v5);
}

+ (id)defaultProdid
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = __defaultProdid;
  objc_sync_exit(v2);

  return v3;
}

+ (int)methodFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PUBLISH"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"REQUEST"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"REPLY"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ADD"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CANCEL"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"REFRESH"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"COUNTER"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"DECLINE-COUNTER"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)ICSStringFromMethod:(int)a3
{
  if ((a3 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return off_27A64B948[a3 - 1];
  }
}

+ (int)calendarServerAccessFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CONFIDENTIAL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PUBLIC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PRIVATE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RESTRICTED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)ICSStringFromCalendarServerAccess:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_27A64B988[a3 - 1];
  }
}

+ (int64_t)compareCalendarServerAccess:(int)a3 withAccess:(int)a4
{
  if (a3 < a4)
  {
    return -1;
  }

  else
  {
    return a3 > a4;
  }
}

- (id)_initWithVersionAndProdID:(BOOL)a3
{
  v3 = a3;
  v17.receiver = self;
  v17.super_class = ICSCalendar;
  v4 = [(ICSComponent *)&v17 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    masters = v4->_masters;
    v4->_masters = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    occurrences = v4->_occurrences;
    v4->_occurrences = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    keys = v4->_keys;
    v4->_keys = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    timezones = v4->_timezones;
    v4->_timezones = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    parsingErrors = v4->_parsingErrors;
    v4->_parsingErrors = v13;

    if (v3)
    {
      [(ICSCalendar *)v4 setVersion:@"2.0"];
      [(ICSCalendar *)v4 setCalscale:@"GREGORIAN"];
      v15 = [objc_opt_class() defaultProdid];
      [(ICSCalendar *)v4 setProdid:v15];
    }
  }

  return v4;
}

- (NSString)calscale
{
  v2 = [(ICSComponent *)self propertiesForName:@"CALSCALE"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (int)method
{
  v2 = [(ICSComponent *)self propertiesForName:@"METHOD"];
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 longValue];

  return v5;
}

- (void)setMethod:(int)a3
{
  v4 = [(ICSPredefinedValue *)ICSMethodValue numberWithLong:a3];
  [(ICSComponent *)self setPropertyValue:v4 type:5025 forName:@"METHOD"];
}

- (NSString)prodid
{
  v2 = [(ICSComponent *)self propertiesForName:@"PRODID"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)version
{
  v2 = [(ICSComponent *)self propertiesForName:@"VERSION"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (ICSDuration)x_apple_auto_refresh
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-AUTO-REFRESH"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  v5 = [ICSDuration durationFromICSString:v4];

  return v5;
}

- (ICSColor)x_apple_calendar_color
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-CALENDAR-COLOR"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  if (([v4 length] == 7 || objc_msgSend(v4, "length") == 9) && objc_msgSend(v4, "characterAtIndex:", 0) == 35)
  {
    v18 = 0;
    v17 = 0;
    v5 = MEMORY[0x277CCAC80];
    v6 = [v4 substringWithRange:{1, 2}];
    v7 = [v5 scannerWithString:v6];
    [v7 scanHexInt:&v18 + 4];

    v8 = MEMORY[0x277CCAC80];
    v9 = [v4 substringWithRange:{3, 2}];
    v10 = [v8 scannerWithString:v9];
    [v10 scanHexInt:&v18];

    v11 = MEMORY[0x277CCAC80];
    v12 = [v4 substringWithRange:{5, 2}];
    v13 = [v11 scannerWithString:v12];
    [v13 scanHexInt:&v17];

    v14 = [ICSColor alloc];
    v15 = [(ICSColor *)v14 initWithRed:BYTE4(v18) green:v18 blue:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setX_apple_calendar_color:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = a3;
    v6 = [v5 red];
    v7 = [v5 green];
    v8 = [v5 blue];

    v9 = [v4 stringWithFormat:@"#%02X%02X%02X", v6, v7, v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [(ICSComponent *)self setPropertyValue:v9 forName:@"X-APPLE-CALENDAR-COLOR"];
}

- (NSString)x_wr_caldesc
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-WR-CALDESC"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_wr_calname
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-WR-CALNAME"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_apple_language
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-LANGUAGE"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_apple_region
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-REGION"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_wr_relcalid
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-WR-RELCALID"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_wr_timezone
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-WR-TIMEZONE"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (id)systemTimeZoneForDate:(id)a3
{
  v4 = a3;
  v5 = [v4 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  }

  else
  {
    v7 = [v4 tzid];

    if (v7)
    {
      v8 = [v4 tzid];
      v9 = [(ICSCalendar *)self timeZoneForKey:v8];

      v10 = [v4 value];
      v7 = [v9 systemTimeZoneForDate:v10];

      if (!v7)
      {
        v11 = MEMORY[0x277CBEBB0];
        v12 = [v4 tzid];
        v7 = [v11 timeZoneWithName:v12];
      }
    }
  }

  return v7;
}

- (id)systemCalendarForDate:(id)a3 options:(int)a4
{
  v6 = MEMORY[0x277CBEA80];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v10 = [(ICSCalendar *)self systemTimeZoneForDate:v7];

  if (v10)
  {
    [v9 setTimeZone:v10];
  }

  else if (a4 == 1)
  {
    v11 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
    [v9 setTimeZone:v11];
  }

  return v9;
}

- (void)_addTimeZonesInComponent:(id)a3 toSet:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = [v6 components];
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(ICSCalendar *)self _addTimeZonesInComponent:*(*(&v39 + 1) + 8 * i) toSet:v7];
      }

      v10 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v10);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = v6;
  v13 = [v6 properties];
  v14 = [v13 allValues];

  v29 = [v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v29)
  {
    v28 = *v36;
    do
    {
      v15 = 0;
      do
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v14);
        }

        v30 = v15;
        v16 = *(*(&v35 + 1) + 8 * v15);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v32;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v32 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v31 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v23 = [v22 value];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v25 = [v22 tzid];
                  if (v25)
                  {
                    [v7 addObject:v25];
                  }
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v31 objects:v43 count:16];
          }

          while (v19);
        }

        v15 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v29);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_addTimeZonesInComponent:(id)a3 toDictionary:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = [v6 components];
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(ICSCalendar *)self _addTimeZonesInComponent:*(*(&v41 + 1) + 8 * i) toDictionary:v7];
      }

      v10 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v10);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v29 = v6;
  v13 = [v6 properties];
  v14 = [v13 allValues];

  v31 = [v14 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v31)
  {
    v30 = *v38;
    do
    {
      v15 = 0;
      do
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(v14);
        }

        v32 = v15;
        v16 = *(*(&v37 + 1) + 8 * v15);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v33 objects:v45 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v34;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v34 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v33 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v23 = [v22 value];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v25 = [v22 tzid];
                  if (v25)
                  {
                    v26 = [v22 value];
                    v27 = [v7 objectForKey:v25];
                    if (!v27 || [v26 compare:v27] == -1)
                    {
                      [v7 setObject:v26 forKey:v25];
                    }
                  }
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v33 objects:v45 count:16];
          }

          while (v19);
        }

        v15 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [v14 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v31);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_timeZonesForComponents:(id)a3 options:(int)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v33 = [MEMORY[0x277CBEB18] array];
  v7 = objc_alloc(MEMORY[0x277CBEA80]);
  v8 = [v7 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 components:28 fromDate:v9];

  v11 = -[ICSDateTimeValue initWithYear:month:day:hour:minute:second:]([ICSDateTimeValue alloc], "initWithYear:month:day:hour:minute:second:", [v10 year], objc_msgSend(v10, "month"), objc_msgSend(v10, "day"), 0, 0, 0);
  v32 = a4;
  if ((a4 - 1) <= 1)
  {
    v28 = v10;
    v29 = v8;
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = v6;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v43;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(ICSCalendar *)self _addTimeZonesInComponent:*(*(&v42 + 1) + 8 * i) toDictionary:v12, v28, v29];
        }

        v15 = [v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v15);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [v12 allKeys];
    v37 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v37)
    {
      if (v32 == 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = -1;
      }

      v34 = v18;
      v35 = *v39;
      v36 = v11;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v39 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v38 + 1) + 8 * j);
          v21 = [v12 objectForKey:{v20, v28, v29}];
          if ([(ICSDateValue *)v11 compare:v21]== -1)
          {
            v22 = v11;

            v21 = v22;
          }

          v23 = -[ICSDateTimeValue initWithYear:month:day:hour:minute:second:]([ICSDateTimeValue alloc], "initWithYear:month:day:hour:minute:second:", [v21 year] + v34, objc_msgSend(v21, "month"), objc_msgSend(v21, "day"), objc_msgSend(v21, "hour"), objc_msgSend(v21, "minute"), objc_msgSend(v21, "second"));
          v24 = [MEMORY[0x277CBEBB0] timeZoneWithName:v20];
          if (v24)
          {
            v25 = [[ICSTimeZone alloc] initWithSystemTimeZone:v24 fromDate:v23 options:v32];
            [v33 addObject:v25];
          }

          v11 = v36;
        }

        v37 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v37);
    }

    v8 = v29;
    v6 = v30;
    v10 = v28;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v33;
}

- (void)_addComponent:(id)a3 withUIDGenerator:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v16 propertiesForName:@"UID"];
  v8 = [v7 lastObject];
  v9 = [v8 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v9)
    {
      goto LABEL_11;
    }
  }

  if (isKindOfClass)
  {
    if (v6)
    {
      [v6 generateUID];
    }

    else
    {
      +[ICSComponent makeUID];
    }
    v9 = ;
    [v16 setUid:v9];
  }

LABEL_11:
  if (!v9)
  {
    goto LABEL_20;
  }

  [(NSMutableSet *)self->_keys addObject:v9];
  v11 = [v16 propertiesForName:@"RECURRENCE-ID"];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_occurrences objectForKey:v9];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(NSMutableDictionary *)self->_occurrences setObject:v12 forKey:v9];
    }

    [v12 addObject:v16];
  }

  else
  {
    v13 = [(NSMutableDictionary *)self->_masters objectForKey:v9];

    if (v13)
    {
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_20;
      }

      NSLog(&cfstr_DuplicateUid.isa, v9);
    }

    [(NSMutableDictionary *)self->_masters setObject:v16 forKey:v9];
  }

LABEL_20:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v16 tzid];
    if (v14)
    {
      v15 = [(NSMutableDictionary *)self->_timezones objectForKey:v14];

      if (v15)
      {
        NSLog(&cfstr_DuplicateTzid.isa, v14);
      }

      [(NSMutableDictionary *)self->_timezones setObject:v16 forKey:v14];
    }
  }
}

- (void)setComponents:(id)a3 timeZones:(BOOL)a4
{
  if (a4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [(ICSCalendar *)self setComponents:a3 options:v4];
}

- (void)addComponent:(id)a3 withUIDGenerator:(id)a4
{
  v8.receiver = self;
  v8.super_class = ICSCalendar;
  v6 = a4;
  v7 = a3;
  [(ICSComponent *)&v8 addComponent:v7 withUIDGenerator:v6];
  [(ICSCalendar *)self _addComponent:v7 withUIDGenerator:v6, v8.receiver, v8.super_class];
}

- (id)parsingErrors
{
  v2 = [(NSMutableArray *)self->_parsingErrors copy];

  return v2;
}

- (void)fixPropertiesInheritance
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [(ICSCalendar *)self componentKeys];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [(ICSCalendar *)self componentForKey:v8];
        v10 = [(ICSCalendar *)self componentOccurrencesForKey:v8];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v16 + 1) + 8 * j) fixPropertiesInheritance:v9];
            }

            v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fixComponent
{
  v3 = [(ICSComponent *)self propertiesForName:@"METHOD"];

  if (v3)
  {
    v4 = [(ICSComponent *)self propertiesForName:@"METHOD"];
    v5 = [v4 lastObject];
    v6 = [v5 value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {

      [(ICSComponent *)self removePropertiesForName:@"METHOD"];
    }
  }
}

- (void)fixEntities
{
  v14 = *MEMORY[0x277D85DE8];
  [(ICSCalendar *)self fixComponent];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(ICSComponent *)self components];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) fixComponent];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end