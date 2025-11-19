@interface ICSEvent
- (BOOL)isDefaultAlarmDeleted;
- (BOOL)validate:(id *)a3;
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
- (void)setTransp:(int)a3;
- (void)setX_apple_dontschedule:(BOOL)a3;
- (void)setX_apple_ews_busystatus:(int)a3;
- (void)setX_apple_needs_reply:(BOOL)a3;
- (void)setX_wr_itipalreadysent:(BOOL)a3;
- (void)setX_wr_itipstatusattendeeml:(BOOL)a3;
- (void)setX_wr_itipstatusml:(BOOL)a3;
- (void)setX_wr_rsvpneeded:(BOOL)a3;
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
    v5 = [(ICSComponent *)self dtend];
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
    v8 = [(ICSComponent *)self location];
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
    v12 = [v11 lastObject];
    v13 = [v12 value];
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
    v17 = [v16 lastObject];
    v18 = [v17 value];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if ((v19 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"PRIORITY"];
    }
  }

  v20 = [(ICSComponent *)self dtstart];
  objc_opt_class();
  v21 = [(ICSComponent *)self dtend];
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
    v24 = [(ICSComponent *)self dtstart];
    v25 = [v24 value];

    v26 = [(ICSComponent *)self dtend];
    v27 = [v26 value];

    v28 = [v25 year];
    if (v28 == [v27 year])
    {
      v29 = [v25 month];
      if (v29 == [v27 month])
      {
        v30 = [v25 day];
        if (v30 == [v27 day])
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
    v36 = [(ICSComponent *)self exdate];
    v37 = [v36 countByEnumeratingWithState:&v48 objects:v53 count:16];
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
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v48 + 1) + 8 * i);
          v42 = [(ICSCalendar *)v32 systemDateForDate:v41 options:1];
          if (([v35 containsObject:v42] & 1) == 0)
          {
            [v34 addObject:v41];
            [v35 addObject:v42];
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v38);
    }

    v43 = [(ICSComponent *)self exdate];
    v44 = [v43 count];
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
    v5 = [(ICSEvent *)self x_calendarserver_attendee_comment];
    v11 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

    v6 = [(ICSEvent *)self x_calendarserver_attendee_comment];
    v7 = [MEMORY[0x277CCAB58] indexSet];
    if ([v6 count])
    {
      v8 = 0;
      do
      {
        v9 = [v6 objectAtIndexedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 x_calendarserver_attendee_ref];
          if (v10)
          {
            if ([v11 containsObject:v10])
            {
              [v7 addIndex:v8];
            }

            else
            {
              [v11 addObject:v10];
            }
          }
        }

        else
        {
          [v7 addIndex:v8];
        }

        ++v8;
      }

      while (v8 < [v6 count]);
    }

    [v6 removeObjectsAtIndexes:v7];
    if (![v6 count])
    {
      [(ICSComponent *)self removePropertiesForName:@"X-CALENDARSERVER-ATTENDEE-COMMENT"];
    }
  }
}

- (BOOL)validate:(id *)a3
{
  v5 = [(ICSComponent *)self propertiesForName:@"DTSTART"];

  if (!v5)
  {
    if (a3)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"DTSTART is required for VEVENT." forKey:*MEMORY[0x277CCA450]];
      *a3 = [v13 errorWithDomain:@"com.apple.iCalendar" code:1000 userInfo:v14];
    }

    return 0;
  }

  v6 = [(ICSComponent *)self propertiesForName:@"DTEND"];

  if (!v6)
  {
    v7 = [(ICSComponent *)self propertiesForName:@"DURATION"];
    goto LABEL_25;
  }

  v7 = [(ICSComponent *)self dtstart];
  v8 = [(ICSComponent *)self dtend];
  v9 = [v7 tzid];

  if (v9)
  {
    v10 = MEMORY[0x277CBEBB0];
    v11 = [v7 tzid];
    v12 = [v10 timeZoneWithName:v11];
  }

  else
  {
    v12 = 0;
  }

  v15 = [v8 tzid];

  if (!v15)
  {
    v22 = v12;
    v18 = 0;
    goto LABEL_17;
  }

  v16 = MEMORY[0x277CBEBB0];
  v17 = [v8 tzid];
  v18 = [v16 timeZoneWithName:v17];

  if (!v12 || !v18)
  {
    v22 = v12;
LABEL_17:
    v30 = [v8 value];
    v31 = [v7 value];
    v32 = [v30 compare:v31];

    if (v32 == -1)
    {
LABEL_13:
      if (a3)
      {
        v29 = @"DTEND must not be before DTSTART.";
LABEL_21:
        v34 = MEMORY[0x277CCA9B8];
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v29 forKey:*MEMORY[0x277CCA450]];
        *a3 = [v34 errorWithDomain:@"com.apple.iCalendar" code:1000 userInfo:v35];

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
  v24 = [v7 components];
  [v21 dateFromComponents:v24];
  v25 = v42 = v18;

  v26 = [v8 components];
  v27 = [v23 dateFromComponents:v26];

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
    if (a3)
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
    v38 = [(ICSComponent *)self status];
    v39 = v38;
    if (v38 > 8 || ((1 << v38) & 0x107) == 0)
    {
      if (a3)
      {
        v40 = MEMORY[0x277CCA9B8];
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Invalid STATUS for VEVENT." forKey:*MEMORY[0x277CCA450]];
        *a3 = [v40 errorWithDomain:@"com.apple.iCalendar" code:1000 userInfo:v41];
      }

      if (v39 != 8)
      {
        return 0;
      }
    }
  }

  v43.receiver = self;
  v43.super_class = ICSEvent;
  return [(ICSComponent *)&v43 validate:a3];
}

- (int)transp
{
  v3 = [(ICSComponent *)self propertiesForName:@"TRANSP"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSComponent *)self propertiesForName:@"TRANSP"];
  v5 = [v4 lastObject];
  v6 = [v5 value];
  v7 = [v6 longValue];

  return v7;
}

- (void)setTransp:(int)a3
{
  if (a3)
  {
    v4 = [(ICSPredefinedValue *)ICSTransparencyValue numberWithLong:a3];
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
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (void)setX_apple_dontschedule:(BOOL)a3
{
  if (a3)
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
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)x_apple_needs_reply
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-NEEDS-REPLY"];
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setX_apple_needs_reply:(BOOL)a3
{
  if (a3)
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

- (void)setX_wr_itipalreadysent:(BOOL)a3
{
  if (a3)
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

- (void)setX_wr_itipstatusattendeeml:(BOOL)a3
{
  if (a3)
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
  v5 = [v4 lastObject];
  v6 = [v5 value];
  v7 = [v6 isEqualToString:@"UNCLEAN"];

  return v7;
}

- (void)setX_wr_itipstatusml:(BOOL)a3
{
  if (a3)
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
  v5 = [v4 lastObject];
  v6 = [v5 value];
  v7 = [v6 isEqualToString:@"UNCLEAN"];

  return v7;
}

- (void)setX_wr_rsvpneeded:(BOOL)a3
{
  if (a3)
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
  v5 = [v4 lastObject];
  v6 = [v5 value];
  v7 = [v6 longValue];

  return v7;
}

- (void)setX_apple_ews_busystatus:(int)a3
{
  if (a3)
  {
    v4 = [(ICSPredefinedValue *)ICSBusyStatusValue numberWithLong:a3];
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
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_apple_creator_identity
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-CREATOR-IDENTITY"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_apple_creator_team_identity
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-CREATOR-TEAM-IDENTITY"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (BOOL)isDefaultAlarmDeleted
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(ICSComponent *)self components];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
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

          v8 = [v7 x_apple_default_alarm];

          if (v8)
          {
            LOBYTE(v3) = 0;
            goto LABEL_15;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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