@interface ICSAlarm
+ (id)ICSStringFromAction:(int)a3;
+ (id)createNoneAlarm;
+ (id)parseableDocumentFromICS:(id)a3 options:(unint64_t)a4;
+ (int)actionFromICSString:(id)a3;
- (BOOL)isNoneAlarm;
- (BOOL)x_apple_default_alarm;
- (BOOL)x_apple_local_default_alarm;
- (BOOL)x_apple_travel_default_alarm;
- (ICSDateTimeUTCValue)acknowledged;
- (NSData)bookmark;
- (NSString)relatedTo;
- (NSString)x_apple_proximity;
- (NSString)x_wr_alarmuid;
- (int)action;
- (void)fixAlarm;
- (void)setAction:(int)a3;
- (void)setBookmark:(id)a3;
- (void)setX_apple_default_alarm:(BOOL)a3;
- (void)setX_apple_local_default_alarm:(BOOL)a3;
- (void)setX_apple_travel_default_alarm:(BOOL)a3;
@end

@implementation ICSAlarm

- (void)fixAlarm
{
  v3 = [(ICSComponent *)self trigger];
  [v3 fixAlarmTrigger];

  v4 = [(ICSComponent *)self propertiesForName:@"TRIGGER"];

  if (v4)
  {
    v5 = [(ICSComponent *)self propertiesForName:@"TRIGGER"];
    v6 = [v5 lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {

      [(ICSComponent *)self removePropertiesForName:@"TRIGGER"];
    }
  }
}

+ (int)actionFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AUDIO"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DISPLAY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"EMAIL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PROCEDURE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

+ (id)ICSStringFromAction:(int)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_27A64C280[a3];
  }
}

+ (id)parseableDocumentFromICS:(id)a3 options:(unint64_t)a4
{
  v5 = [a3 stringByReplacingOccurrencesOfString:@"\r" withString:&stru_28841D818];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 stringByAppendingString:@"END:VCALENDAR\n"];
    v8 = [@"BEGIN:VCALENDAR\n" stringByAppendingString:v7];
  }

  else
  {
    v8 = [@"BEGIN:VCALENDAR\n" stringByAppendingString:@"END:VCALENDAR\n"];
  }

  v9 = [[ICSDocument alloc] initWithICSString:v8 options:a4 error:0];

  return v9;
}

+ (id)createNoneAlarm
{
  v2 = objc_alloc_init(ICSAlarm);
  [(ICSAlarm *)v2 setAction:0];
  v3 = [ICSDateValue dateFromICSString:@"19760401T005545Z"];
  v4 = [[ICSTrigger alloc] initWithDate:v3];
  [(ICSComponent *)v2 setTrigger:v4];

  return v2;
}

- (BOOL)isNoneAlarm
{
  v3 = [(ICSComponent *)self x_apple_structured_location];
  if (v3)
  {
    v4 = v3;
LABEL_4:
    v5 = 0;
    goto LABEL_5;
  }

  v4 = [(ICSAlarm *)self x_apple_proximity];
  if ([v4 isEqualToString:@"CONNECT"])
  {
    goto LABEL_4;
  }

  v7 = [(ICSAlarm *)self x_apple_proximity];
  v8 = [v7 isEqualToString:@"DISCONNECT"];

  if (v8)
  {
    return 0;
  }

  if (![(ICSAlarm *)self action])
  {
    return 1;
  }

  v9 = [(ICSComponent *)self trigger];
  v10 = [v9 isDurationBased];

  if (v10)
  {
    return 0;
  }

  v11 = [(ICSComponent *)self trigger];
  v4 = [v11 value];

  v12 = [v4 icsString];
  if ([v12 isEqualToString:@"19760401T005545Z"])
  {
    [(ICSAlarm *)self setAction:0];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

LABEL_5:
  return v5;
}

- (int)action
{
  v2 = [(ICSComponent *)self propertiesForName:@"ACTION"];
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 longValue];

  return v5;
}

- (void)setAction:(int)a3
{
  v4 = [(ICSPredefinedValue *)ICSActionValue numberWithLong:a3];
  [(ICSComponent *)self setPropertyValue:v4 type:5020 forName:@"ACTION"];
}

- (NSString)x_wr_alarmuid
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-WR-ALARMUID"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (ICSDateTimeUTCValue)acknowledged
{
  v2 = [(ICSComponent *)self propertiesForName:@"ACKNOWLEDGED"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)relatedTo
{
  v2 = [(ICSComponent *)self propertiesForName:@"RELATED-TO"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_apple_proximity
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-PROXIMITY"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (void)setX_apple_default_alarm:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(ICSComponent *)self setPropertyValue:v4 type:5012 forName:@"X-APPLE-DEFAULT-ALARM"];
  }

  else
  {

    [(ICSComponent *)self removePropertiesForName:@"X-APPLE-DEFAULT-ALARM"];
  }
}

- (BOOL)x_apple_default_alarm
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-DEFAULT-ALARM"];
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setX_apple_travel_default_alarm:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(ICSComponent *)self setPropertyValue:v4 type:5012 forName:@"X-APPLE-TRAVEL-DEFAULT-ALARM"];
  }

  else
  {

    [(ICSComponent *)self removePropertiesForName:@"X-APPLE-TRAVEL-DEFAULT-ALARM"];
  }
}

- (BOOL)x_apple_travel_default_alarm
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-TRAVEL-DEFAULT-ALARM"];
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setX_apple_local_default_alarm:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(ICSComponent *)self setPropertyValue:v4 type:5012 forName:@"X-APPLE-LOCAL-DEFAULT-ALARM"];
  }

  else
  {

    [(ICSComponent *)self removePropertiesForName:@"X-APPLE-LOCAL-DEFAULT-ALARM"];
  }
}

- (BOOL)x_apple_local_default_alarm
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-LOCAL-DEFAULT-ALARM"];
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 BOOLValue];

  return v5;
}

- (NSData)bookmark
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-BOOKMARK"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  if ([v4 length])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setBookmark:(id)a3
{
  if (a3)
  {
    v4 = [a3 base64EncodedStringWithOptions:0];
    [(ICSComponent *)self setPropertyValue:v4 forName:@"X-APPLE-BOOKMARK"];
  }

  else
  {

    [(ICSComponent *)self removePropertiesForName:@"X-APPLE-BOOKMARK"];
  }
}

@end