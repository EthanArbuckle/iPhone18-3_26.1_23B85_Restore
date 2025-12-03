@interface ICSEvent
- (BOOL)isDefaultAlarmDeleted;
- (BOOL)validate:(id *)validate;
- (BOOL)x_apple_dontschedule;
- (BOOL)x_apple_needs_reply;
- (BOOL)x_wr_itipalreadysent;
- (BOOL)x_wr_itipstatusattendeeml;
- (BOOL)x_wr_itipstatusml;
- (BOOL)x_wr_rsvpneeded;
- (NSString)x_apple_creator_identity;
- (NSString)x_apple_creator_team_identity;
- (NSString)x_apple_special_day;
- (NSString)x_calendarserver_private_comment;
- (int)transp;
- (int)x_apple_ews_busystatus;
- (void)fixAttendeeComments;
- (void)fixComponent;
- (void)setTransp:(int)transp;
- (void)setX_apple_dontschedule:(BOOL)x_apple_dontschedule;
- (void)setX_apple_ews_busystatus:(int)x_apple_ews_busystatus;
- (void)setX_apple_needs_reply:(BOOL)x_apple_needs_reply;
- (void)setX_wr_itipalreadysent:(BOOL)x_wr_itipalreadysent;
- (void)setX_wr_itipstatusattendeeml:(BOOL)x_wr_itipstatusattendeeml;
- (void)setX_wr_itipstatusml:(BOOL)x_wr_itipstatusml;
- (void)setX_wr_rsvpneeded:(BOOL)x_wr_rsvpneeded;
@end

@implementation ICSEvent

- (void)fixComponent
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v52.receiver = self;
  v52.super_class = ICSEvent;
  [(ICSComponent *)&v52 fixComponent];
  [(ICSEvent *)self fixAttendeeComments];
  v4 = [(ICSComponent *)self propertiesForName:@"DTEND"];

  if (v4)
  {
    dtend = [(ICSComponent *)self dtend];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"DTEND"];
    }
  }

  v7 = [(ICSComponent *)self propertiesForName:@"LOCATION"];

  if (v7)
  {
    location = [(ICSComponent *)self location];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if ((v9 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"LOCATION"];
    }
  }

  v10 = [(ICSComponent *)self propertiesForName:@"TRANSP"];

  if (v10)
  {
    v11 = [(ICSComponent *)self propertiesForName:@"TRANSP"];
    lastObject = [v11 lastObject];
    value = [lastObject value];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if ((v14 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"TRANSP"];
    }
  }

  v15 = [(ICSComponent *)self propertiesForName:@"PRIORITY"];

  if (v15)
  {
    v16 = [(ICSComponent *)self propertiesForName:@"PRIORITY"];
    lastObject2 = [v16 lastObject];
    value2 = [lastObject2 value];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if ((v19 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"PRIORITY"];
    }
  }

  dtstart = [(ICSComponent *)self dtstart];
  objc_opt_class();
  dtend2 = [(ICSComponent *)self dtend];
  objc_opt_class();

  v22 = [(ICSComponent *)self propertiesForName:@"DTEND"];
  if (v22)
  {
    goto LABEL_14;
  }

  v23 = [(ICSComponent *)self propertiesForName:@"DURATION"];

  if (!v23)
  {
    v22 = [[ICSDuration alloc] initWithWeeks:0 days:0 hours:0 minutes:0 seconds:0];
    [(ICSComponent *)self setDuration:v22];
LABEL_14:
  }

  if ([(ICSComponent *)self isAllDay])
  {
    dtstart2 = [(ICSComponent *)self dtstart];
    value3 = [dtstart2 value];

    dtend3 = [(ICSComponent *)self dtend];
    value4 = [dtend3 value];

    year = [value3 year];
    if (year == [value4 year])
    {
      month = [value3 month];
      if (month == [value4 month])
      {
        v30 = [value3 day];
        if (v30 == [value4 day])
        {
          v31 = [[ICSDuration alloc] initWithWeeks:0 days:1 hours:0 minutes:0 seconds:0];
          [(ICSComponent *)self setDuration:v31];
        }
      }
    }
  }

  v32 = objc_alloc_init(ICSCalendar);
  v33 = [(ICSComponent *)self propertiesForName:@"EXDATE"];

  if (v33)
  {
    v47 = v3;
    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    exdate = [(ICSComponent *)self exdate];
    v37 = [exdate countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v49;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v49 != v39)
          {
            objc_enumerationMutation(exdate);
          }

          v41 = *(*(&v48 + 1) + 8 * i);
          v42 = [(ICSCalendar *)v32 systemDateForDate:v41 options:1];
          if (([v35 containsObject:v42] & 1) == 0)
          {
            [v34 addObject:v41];
            [v35 addObject:v42];
          }
        }

        v38 = [exdate countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v38);
    }

    exdate2 = [(ICSComponent *)self exdate];
    v44 = [exdate2 count];
    v45 = [v34 count];

    if (v44 != v45)
    {
      [(ICSComponent *)self setExdate:v34];
    }

    v3 = v47;
  }

  objc_autoreleasePoolPop(v3);
  v46 = *MEMORY[0x277D85DE8];
}

- (void)fixAttendeeComments
{
  v3 = [(ICSComponent *)self propertiesForName:@"X-CALENDARSERVER-ATTENDEE-COMMENT"];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB58]);
    x_calendarserver_attendee_comment = [(ICSEvent *)self x_calendarserver_attendee_comment];
    v11 = [v4 initWithCapacity:{objc_msgSend(x_calendarserver_attendee_comment, "count")}];

    x_calendarserver_attendee_comment2 = [(ICSEvent *)self x_calendarserver_attendee_comment];
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    if ([x_calendarserver_attendee_comment2 count])
    {
      v8 = 0;
      do
      {
        v9 = [x_calendarserver_attendee_comment2 objectAtIndexedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          x_calendarserver_attendee_ref = [v9 x_calendarserver_attendee_ref];
          if (x_calendarserver_attendee_ref)
          {
            if ([v11 containsObject:x_calendarserver_attendee_ref])
            {
              [indexSet addIndex:v8];
            }

            else
            {
              [v11 addObject:x_calendarserver_attendee_ref];
            }
          }
        }

        else
        {
          [indexSet addIndex:v8];
        }

        ++v8;
      }

      while (v8 < [x_calendarserver_attendee_comment2 count]);
    }

    [x_calendarserver_attendee_comment2 removeObjectsAtIndexes:indexSet];
    if (![x_calendarserver_attendee_comment2 count])
    {
      [(ICSComponent *)self removePropertiesForName:@"X-CALENDARSERVER-ATTENDEE-COMMENT"];
    }
  }
}

- (BOOL)validate:(id *)validate
{
  v5 = [(ICSComponent *)self propertiesForName:@"DTSTART"];

  if (!v5)
  {
    if (validate)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"DTSTART is required for VEVENT." forKey:*MEMORY[0x277CCA450]];
      *validate = [v13 errorWithDomain:@"com.apple.iCalendar" code:1000 userInfo:v14];
    }

    return 0;
  }

  v6 = [(ICSComponent *)self propertiesForName:@"DTEND"];

  if (!v6)
  {
    dtstart = [(ICSComponent *)self propertiesForName:@"DURATION"];
    goto LABEL_25;
  }

  dtstart = [(ICSComponent *)self dtstart];
  dtend = [(ICSComponent *)self dtend];
  tzid = [dtstart tzid];

  if (tzid)
  {
    v10 = MEMORY[0x277CBEBB0];
    tzid2 = [dtstart tzid];
    v12 = [v10 timeZoneWithName:tzid2];
  }

  else
  {
    v12 = 0;
  }

  tzid3 = [dtend tzid];

  if (!tzid3)
  {
    v22 = v12;
    v18 = 0;
    goto LABEL_17;
  }

  v16 = MEMORY[0x277CBEBB0];
  tzid4 = [dtend tzid];
  v18 = [v16 timeZoneWithName:tzid4];

  if (!v12 || !v18)
  {
    v22 = v12;
LABEL_17:
    value = [dtend value];
    value2 = [dtstart value];
    v32 = [value compare:value2];

    if (v32 == -1)
    {
LABEL_13:
      if (validate)
      {
        v29 = @"DTEND must not be before DTSTART.";
LABEL_21:
        v34 = MEMORY[0x277CCA9B8];
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v29 forKey:*MEMORY[0x277CCA450]];
        *validate = [v34 errorWithDomain:@"com.apple.iCalendar" code:1000 userInfo:v35];

        goto LABEL_22;
      }

      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v19 = objc_alloc(MEMORY[0x277CBEA80]);
  v20 = *MEMORY[0x277CBE5C0];
  v21 = [v19 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v22 = v12;
  [v21 setTimeZone:v12];
  v23 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v20];
  [v23 setTimeZone:v18];
  components = [dtstart components];
  [v21 dateFromComponents:components];
  v25 = v42 = v18;

  components2 = [dtend components];
  v27 = [v23 dateFromComponents:components2];

  v28 = [v27 compare:v25];
  v18 = v42;

  if (v28 == -1)
  {
    goto LABEL_13;
  }

LABEL_18:
  v33 = [(ICSComponent *)self propertiesForName:@"DURATION"];

  if (v33)
  {
    if (validate)
    {
      v29 = @"DTEND and DURATION cannot both be set for VEVENT.";
      goto LABEL_21;
    }

LABEL_22:

    return 0;
  }

LABEL_25:
  v37 = [(ICSComponent *)self propertiesForName:@"STATUS"];

  if (v37)
  {
    status = [(ICSComponent *)self status];
    v39 = status;
    if (status > 8 || ((1 << status) & 0x107) == 0)
    {
      if (validate)
      {
        v40 = MEMORY[0x277CCA9B8];
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Invalid STATUS for VEVENT." forKey:*MEMORY[0x277CCA450]];
        *validate = [v40 errorWithDomain:@"com.apple.iCalendar" code:1000 userInfo:v41];
      }

      if (v39 != 8)
      {
        return 0;
      }
    }
  }

  v43.receiver = self;
  v43.super_class = ICSEvent;
  return [(ICSComponent *)&v43 validate:validate];
}

- (int)transp
{
  v3 = [(ICSComponent *)self propertiesForName:@"TRANSP"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSComponent *)self propertiesForName:@"TRANSP"];
  lastObject = [v4 lastObject];
  value = [lastObject value];
  longValue = [value longValue];

  return longValue;
}

- (void)setTransp:(int)transp
{
  if (transp)
  {
    v4 = [(ICSPredefinedValue *)ICSTransparencyValue numberWithLong:transp];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(ICSComponent *)self setPropertyValue:v4 type:5004 forName:@"TRANSP"];
}

- (NSString)x_calendarserver_private_comment
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-CALENDARSERVER-PRIVATE-COMMENT"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (void)setX_apple_dontschedule:(BOOL)x_apple_dontschedule
{
  if (x_apple_dontschedule)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(ICSComponent *)self setPropertyValue:v4 type:5012 forName:@"X-APPLE-DONTSCHEDULE"];
  }

  else
  {

    [(ICSComponent *)self removePropertiesForName:@"X-APPLE-DONTSCHEDULE"];
  }
}

- (BOOL)x_apple_dontschedule
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-DONTSCHEDULE"];
  lastObject = [v2 lastObject];
  value = [lastObject value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (BOOL)x_apple_needs_reply
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-NEEDS-REPLY"];
  lastObject = [v2 lastObject];
  value = [lastObject value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (void)setX_apple_needs_reply:(BOOL)x_apple_needs_reply
{
  if (x_apple_needs_reply)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(ICSComponent *)self setPropertyValue:v4 type:5012 forName:@"X-APPLE-NEEDS-REPLY"];
}

- (void)setX_wr_itipalreadysent:(BOOL)x_wr_itipalreadysent
{
  if (x_wr_itipalreadysent)
  {
    v3 = @"DONE";
  }

  else
  {
    v3 = 0;
  }

  [(ICSComponent *)self setPropertyValue:v3 forName:@"X-WR-ITIPALREADYSENT"];
}

- (BOOL)x_wr_itipalreadysent
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-WR-ITIPALREADYSENT"];
  v3 = v2 != 0;

  return v3;
}

- (void)setX_wr_itipstatusattendeeml:(BOOL)x_wr_itipstatusattendeeml
{
  if (x_wr_itipstatusattendeeml)
  {
    v3 = @"UNCLEAN";
  }

  else
  {
    v3 = 0;
  }

  [(ICSComponent *)self setPropertyValue:v3 forName:@"X-WR-ITIPSTATUSATTENDEEML"];
}

- (BOOL)x_wr_itipstatusattendeeml
{
  v3 = [(ICSComponent *)self propertiesForName:@"X-WR-ITIPSTATUSATTENDEEML"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSComponent *)self propertiesForName:@"X-WR-ITIPSTATUSATTENDEEML"];
  lastObject = [v4 lastObject];
  value = [lastObject value];
  v7 = [value isEqualToString:@"UNCLEAN"];

  return v7;
}

- (void)setX_wr_itipstatusml:(BOOL)x_wr_itipstatusml
{
  if (x_wr_itipstatusml)
  {
    v4 = [(ICSComponent *)self propertiesForName:@"ATTENDEE"];

    if (v4)
    {

      [(ICSComponent *)self setPropertyValue:@"UNCLEAN" forName:@"X-WR-ITIPSTATUSML"];
    }
  }

  else
  {

    [(ICSComponent *)self removePropertiesForName:@"X-WR-ITIPSTATUSML"];
  }
}

- (BOOL)x_wr_itipstatusml
{
  v3 = [(ICSComponent *)self propertiesForName:@"X-WR-ITIPSTATUSML"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSComponent *)self propertiesForName:@"X-WR-ITIPSTATUSML"];
  lastObject = [v4 lastObject];
  value = [lastObject value];
  v7 = [value isEqualToString:@"UNCLEAN"];

  return v7;
}

- (void)setX_wr_rsvpneeded:(BOOL)x_wr_rsvpneeded
{
  if (x_wr_rsvpneeded)
  {
    v3 = @"UNCLEAN";
  }

  else
  {
    v3 = 0;
  }

  [(ICSComponent *)self setPropertyValue:v3 forName:@"X-WR-RSVPNEEDED"];
}

- (BOOL)x_wr_rsvpneeded
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-WR-RSVPNEEDED"];
  v3 = v2 != 0;

  return v3;
}

- (int)x_apple_ews_busystatus
{
  v3 = [(ICSComponent *)self propertiesForName:@"X-APPLE-EWS-BUSYSTATUS"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSComponent *)self propertiesForName:@"X-APPLE-EWS-BUSYSTATUS"];
  lastObject = [v4 lastObject];
  value = [lastObject value];
  longValue = [value longValue];

  return longValue;
}

- (void)setX_apple_ews_busystatus:(int)x_apple_ews_busystatus
{
  if (x_apple_ews_busystatus)
  {
    v4 = [(ICSPredefinedValue *)ICSBusyStatusValue numberWithLong:x_apple_ews_busystatus];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(ICSComponent *)self setPropertyValue:v4 type:5031 forName:@"X-APPLE-EWS-BUSYSTATUS"];
}

- (NSString)x_apple_special_day
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SPECIAL-DAY"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_apple_creator_identity
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-CREATOR-IDENTITY"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_apple_creator_team_identity
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-CREATOR-TEAM-IDENTITY"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (BOOL)isDefaultAlarmDeleted
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  components = [(ICSComponent *)self components];
  v3 = [components countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(components);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
          if ([v7 isNoneAlarm] && (objc_msgSend(v7, "x_apple_default_alarm") & 1) == 0)
          {

            LOBYTE(v3) = 1;
            goto LABEL_15;
          }

          x_apple_default_alarm = [v7 x_apple_default_alarm];

          if (x_apple_default_alarm)
          {
            LOBYTE(v3) = 0;
            goto LABEL_15;
          }
        }
      }

      v3 = [components countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

@end