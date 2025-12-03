@interface ICSCalendar
+ (id)ICSStringFromCalendarServerAccess:(int)access;
+ (id)ICSStringFromMethod:(int)method;
+ (id)calendarWithKnownTimeZones;
+ (id)defaultProdid;
+ (int)calendarServerAccessFromICSString:(id)string;
+ (int)methodFromICSString:(id)string;
+ (int64_t)compareCalendarServerAccess:(int)access withAccess:(int)withAccess;
+ (void)setDefaultProdid:(id)prodid;
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
- (id)_initWithVersionAndProdID:(BOOL)d;
- (id)_timeZonesForComponents:(id)components options:(int)options;
- (id)parsingErrors;
- (id)systemCalendarForDate:(id)date options:(int)options;
- (id)systemTimeZoneForDate:(id)date;
- (int)method;
- (void)_addComponent:(id)component withUIDGenerator:(id)generator;
- (void)_addTimeZonesInComponent:(id)component toDictionary:(id)dictionary;
- (void)_addTimeZonesInComponent:(id)component toSet:(id)set;
- (void)addComponent:(id)component withUIDGenerator:(id)generator;
- (void)fixComponent;
- (void)fixEntities;
- (void)fixPropertiesInheritance;
- (void)setComponents:(id)components timeZones:(BOOL)zones;
- (void)setMethod:(int)method;
- (void)setX_apple_calendar_color:(id)x_apple_calendar_color;
@end

@implementation ICSCalendar

+ (id)calendarWithKnownTimeZones
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  knownTimeZoneNames = [MEMORY[0x277CBEBB0] knownTimeZoneNames];
  v3 = [knownTimeZoneNames countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(knownTimeZoneNames);
        }

        v7 = [ICSTimeZone timeZoneWithSystemTimeZoneName:*(*(&v14 + 1) + 8 * i)];
      }

      v4 = [knownTimeZoneNames countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v8 = objc_alloc_init(ICSCalendar);
  v9 = MEMORY[0x277CBEB18];
  allValues = [_sCache allValues];
  v11 = [v9 arrayWithArray:allValues];
  [(ICSCalendar *)v8 setComponents:v11];

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)setDefaultProdid:(id)prodid
{
  prodidCopy = prodid;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (__defaultProdid != prodidCopy)
  {
    objc_storeStrong(&__defaultProdid, prodid);
  }

  objc_sync_exit(selfCopy);
}

+ (id)defaultProdid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = __defaultProdid;
  objc_sync_exit(selfCopy);

  return v3;
}

+ (int)methodFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"PUBLISH"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"REQUEST"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"REPLY"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"ADD"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"CANCEL"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"REFRESH"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"COUNTER"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"DECLINE-COUNTER"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)ICSStringFromMethod:(int)method
{
  if ((method - 1) > 7)
  {
    return 0;
  }

  else
  {
    return off_27A64B948[method - 1];
  }
}

+ (int)calendarServerAccessFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"CONFIDENTIAL"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"PUBLIC"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"PRIVATE"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"RESTRICTED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)ICSStringFromCalendarServerAccess:(int)access
{
  if ((access - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_27A64B988[access - 1];
  }
}

+ (int64_t)compareCalendarServerAccess:(int)access withAccess:(int)withAccess
{
  if (access < withAccess)
  {
    return -1;
  }

  else
  {
    return access > withAccess;
  }
}

- (id)_initWithVersionAndProdID:(BOOL)d
{
  dCopy = d;
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

    if (dCopy)
    {
      [(ICSCalendar *)v4 setVersion:@"2.0"];
      [(ICSCalendar *)v4 setCalscale:@"GREGORIAN"];
      defaultProdid = [objc_opt_class() defaultProdid];
      [(ICSCalendar *)v4 setProdid:defaultProdid];
    }
  }

  return v4;
}

- (NSString)calscale
{
  v2 = [(ICSComponent *)self propertiesForName:@"CALSCALE"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (int)method
{
  v2 = [(ICSComponent *)self propertiesForName:@"METHOD"];
  lastObject = [v2 lastObject];
  value = [lastObject value];
  longValue = [value longValue];

  return longValue;
}

- (void)setMethod:(int)method
{
  v4 = [(ICSPredefinedValue *)ICSMethodValue numberWithLong:method];
  [(ICSComponent *)self setPropertyValue:v4 type:5025 forName:@"METHOD"];
}

- (NSString)prodid
{
  v2 = [(ICSComponent *)self propertiesForName:@"PRODID"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)version
{
  v2 = [(ICSComponent *)self propertiesForName:@"VERSION"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (ICSDuration)x_apple_auto_refresh
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-AUTO-REFRESH"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  v5 = [ICSDuration durationFromICSString:value];

  return v5;
}

- (ICSColor)x_apple_calendar_color
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-CALENDAR-COLOR"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  if (([value length] == 7 || objc_msgSend(value, "length") == 9) && objc_msgSend(value, "characterAtIndex:", 0) == 35)
  {
    v18 = 0;
    v17 = 0;
    v5 = MEMORY[0x277CCAC80];
    v6 = [value substringWithRange:{1, 2}];
    v7 = [v5 scannerWithString:v6];
    [v7 scanHexInt:&v18 + 4];

    v8 = MEMORY[0x277CCAC80];
    v9 = [value substringWithRange:{3, 2}];
    v10 = [v8 scannerWithString:v9];
    [v10 scanHexInt:&v18];

    v11 = MEMORY[0x277CCAC80];
    v12 = [value substringWithRange:{5, 2}];
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

- (void)setX_apple_calendar_color:(id)x_apple_calendar_color
{
  if (x_apple_calendar_color)
  {
    v4 = MEMORY[0x277CCACA8];
    x_apple_calendar_colorCopy = x_apple_calendar_color;
    v6 = [x_apple_calendar_colorCopy red];
    green = [x_apple_calendar_colorCopy green];
    blue = [x_apple_calendar_colorCopy blue];

    v9 = [v4 stringWithFormat:@"#%02X%02X%02X", v6, green, blue];
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
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_wr_calname
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-WR-CALNAME"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_apple_language
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-LANGUAGE"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_apple_region
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-REGION"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_wr_relcalid
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-WR-RELCALID"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_wr_timezone
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-WR-TIMEZONE"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (id)systemTimeZoneForDate:(id)date
{
  dateCopy = date;
  value = [dateCopy value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    tzid = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  }

  else
  {
    tzid = [dateCopy tzid];

    if (tzid)
    {
      tzid2 = [dateCopy tzid];
      v9 = [(ICSCalendar *)self timeZoneForKey:tzid2];

      value2 = [dateCopy value];
      tzid = [v9 systemTimeZoneForDate:value2];

      if (!tzid)
      {
        v11 = MEMORY[0x277CBEBB0];
        tzid3 = [dateCopy tzid];
        tzid = [v11 timeZoneWithName:tzid3];
      }
    }
  }

  return tzid;
}

- (id)systemCalendarForDate:(id)date options:(int)options
{
  v6 = MEMORY[0x277CBEA80];
  dateCopy = date;
  v8 = [v6 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v10 = [(ICSCalendar *)self systemTimeZoneForDate:dateCopy];

  if (v10)
  {
    [v9 setTimeZone:v10];
  }

  else if (options == 1)
  {
    v11 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
    [v9 setTimeZone:v11];
  }

  return v9;
}

- (void)_addTimeZonesInComponent:(id)component toSet:(id)set
{
  v46 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  setCopy = set;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  components = [componentCopy components];
  v9 = [components countByEnumeratingWithState:&v39 objects:v45 count:16];
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
          objc_enumerationMutation(components);
        }

        [(ICSCalendar *)self _addTimeZonesInComponent:*(*(&v39 + 1) + 8 * i) toSet:setCopy];
      }

      v10 = [components countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v10);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = componentCopy;
  properties = [componentCopy properties];
  allValues = [properties allValues];

  v29 = [allValues countByEnumeratingWithState:&v35 objects:v44 count:16];
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
          objc_enumerationMutation(allValues);
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
                value = [v22 value];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  tzid = [v22 tzid];
                  if (tzid)
                  {
                    [setCopy addObject:tzid];
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
      v29 = [allValues countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v29);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_addTimeZonesInComponent:(id)component toDictionary:(id)dictionary
{
  v48 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  dictionaryCopy = dictionary;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  components = [componentCopy components];
  v9 = [components countByEnumeratingWithState:&v41 objects:v47 count:16];
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
          objc_enumerationMutation(components);
        }

        [(ICSCalendar *)self _addTimeZonesInComponent:*(*(&v41 + 1) + 8 * i) toDictionary:dictionaryCopy];
      }

      v10 = [components countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v10);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v29 = componentCopy;
  properties = [componentCopy properties];
  allValues = [properties allValues];

  v31 = [allValues countByEnumeratingWithState:&v37 objects:v46 count:16];
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
          objc_enumerationMutation(allValues);
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
                value = [v22 value];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  tzid = [v22 tzid];
                  if (tzid)
                  {
                    value2 = [v22 value];
                    v27 = [dictionaryCopy objectForKey:tzid];
                    if (!v27 || [value2 compare:v27] == -1)
                    {
                      [dictionaryCopy setObject:value2 forKey:tzid];
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
      v31 = [allValues countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v31);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_timeZonesForComponents:(id)components options:(int)options
{
  v48 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  array = [MEMORY[0x277CBEB18] array];
  v7 = objc_alloc(MEMORY[0x277CBEA80]);
  v8 = [v7 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 components:28 fromDate:date];

  v11 = -[ICSDateTimeValue initWithYear:month:day:hour:minute:second:]([ICSDateTimeValue alloc], "initWithYear:month:day:hour:minute:second:", [v10 year], objc_msgSend(v10, "month"), objc_msgSend(v10, "day"), 0, 0, 0);
  optionsCopy = options;
  if ((options - 1) <= 1)
  {
    v28 = v10;
    v29 = v8;
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = componentsCopy;
    v13 = componentsCopy;
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
      if (optionsCopy == 1)
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
            v25 = [[ICSTimeZone alloc] initWithSystemTimeZone:v24 fromDate:v23 options:optionsCopy];
            [array addObject:v25];
          }

          v11 = v36;
        }

        v37 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v37);
    }

    v8 = v29;
    componentsCopy = v30;
    v10 = v28;
  }

  v26 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)_addComponent:(id)component withUIDGenerator:(id)generator
{
  componentCopy = component;
  generatorCopy = generator;
  v7 = [componentCopy propertiesForName:@"UID"];
  lastObject = [v7 lastObject];
  value = [lastObject value];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
    if (value)
    {
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (value)
    {
      goto LABEL_11;
    }
  }

  if (isKindOfClass)
  {
    if (generatorCopy)
    {
      [generatorCopy generateUID];
    }

    else
    {
      +[ICSComponent makeUID];
    }
    value = ;
    [componentCopy setUid:value];
  }

LABEL_11:
  if (!value)
  {
    goto LABEL_20;
  }

  [(NSMutableSet *)self->_keys addObject:value];
  v11 = [componentCopy propertiesForName:@"RECURRENCE-ID"];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_occurrences objectForKey:value];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(NSMutableDictionary *)self->_occurrences setObject:v12 forKey:value];
    }

    [v12 addObject:componentCopy];
  }

  else
  {
    v13 = [(NSMutableDictionary *)self->_masters objectForKey:value];

    if (v13)
    {
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_20;
      }

      NSLog(&cfstr_DuplicateUid.isa, value);
    }

    [(NSMutableDictionary *)self->_masters setObject:componentCopy forKey:value];
  }

LABEL_20:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tzid = [componentCopy tzid];
    if (tzid)
    {
      v15 = [(NSMutableDictionary *)self->_timezones objectForKey:tzid];

      if (v15)
      {
        NSLog(&cfstr_DuplicateTzid.isa, tzid);
      }

      [(NSMutableDictionary *)self->_timezones setObject:componentCopy forKey:tzid];
    }
  }
}

- (void)setComponents:(id)components timeZones:(BOOL)zones
{
  if (zones)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [(ICSCalendar *)self setComponents:components options:v4];
}

- (void)addComponent:(id)component withUIDGenerator:(id)generator
{
  v8.receiver = self;
  v8.super_class = ICSCalendar;
  generatorCopy = generator;
  componentCopy = component;
  [(ICSComponent *)&v8 addComponent:componentCopy withUIDGenerator:generatorCopy];
  [(ICSCalendar *)self _addComponent:componentCopy withUIDGenerator:generatorCopy, v8.receiver, v8.super_class];
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
  componentKeys = [(ICSCalendar *)self componentKeys];
  v4 = [componentKeys countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(componentKeys);
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

      v5 = [componentKeys countByEnumeratingWithState:&v20 objects:v25 count:16];
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
    lastObject = [v4 lastObject];
    value = [lastObject value];
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
  components = [(ICSComponent *)self components];
  v4 = [components countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(components);
        }

        [*(*(&v9 + 1) + 8 * v7++) fixComponent];
      }

      while (v5 != v7);
      v5 = [components countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end