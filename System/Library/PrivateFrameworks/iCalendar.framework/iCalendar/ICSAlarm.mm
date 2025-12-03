@interface ICSAlarm
+ (id)ICSStringFromAction:(int)action;
+ (id)createNoneAlarm;
+ (id)parseableDocumentFromICS:(id)s options:(unint64_t)options;
+ (int)actionFromICSString:(id)string;
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
- (void)setAction:(int)action;
- (void)setBookmark:(id)bookmark;
- (void)setX_apple_default_alarm:(BOOL)x_apple_default_alarm;
- (void)setX_apple_local_default_alarm:(BOOL)x_apple_local_default_alarm;
- (void)setX_apple_travel_default_alarm:(BOOL)x_apple_travel_default_alarm;
@end

@implementation ICSAlarm

- (void)fixAlarm
{
  trigger = [(ICSComponent *)self trigger];
  [trigger fixAlarmTrigger];

  v4 = [(ICSComponent *)self propertiesForName:@"TRIGGER"];

  if (v4)
  {
    v5 = [(ICSComponent *)self propertiesForName:@"TRIGGER"];
    lastObject = [v5 lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {

      [(ICSComponent *)self removePropertiesForName:@"TRIGGER"];
    }
  }
}

+ (int)actionFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"AUDIO"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"DISPLAY"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"EMAIL"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"PROCEDURE"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

+ (id)ICSStringFromAction:(int)action
{
  if (action > 4)
  {
    return 0;
  }

  else
  {
    return off_27A64C280[action];
  }
}

+ (id)parseableDocumentFromICS:(id)s options:(unint64_t)options
{
  v5 = [s stringByReplacingOccurrencesOfString:@"\r" withString:&stru_28841D818];
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

  v9 = [[ICSDocument alloc] initWithICSString:v8 options:options error:0];

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
  x_apple_structured_location = [(ICSComponent *)self x_apple_structured_location];
  if (x_apple_structured_location)
  {
    x_apple_proximity = x_apple_structured_location;
LABEL_4:
    v5 = 0;
    goto LABEL_5;
  }

  x_apple_proximity = [(ICSAlarm *)self x_apple_proximity];
  if ([x_apple_proximity isEqualToString:@"CONNECT"])
  {
    goto LABEL_4;
  }

  x_apple_proximity2 = [(ICSAlarm *)self x_apple_proximity];
  v8 = [x_apple_proximity2 isEqualToString:@"DISCONNECT"];

  if (v8)
  {
    return 0;
  }

  if (![(ICSAlarm *)self action])
  {
    return 1;
  }

  trigger = [(ICSComponent *)self trigger];
  isDurationBased = [trigger isDurationBased];

  if (isDurationBased)
  {
    return 0;
  }

  trigger2 = [(ICSComponent *)self trigger];
  x_apple_proximity = [trigger2 value];

  icsString = [x_apple_proximity icsString];
  if ([icsString isEqualToString:@"19760401T005545Z"])
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
  lastObject = [v2 lastObject];
  value = [lastObject value];
  longValue = [value longValue];

  return longValue;
}

- (void)setAction:(int)action
{
  v4 = [(ICSPredefinedValue *)ICSActionValue numberWithLong:action];
  [(ICSComponent *)self setPropertyValue:v4 type:5020 forName:@"ACTION"];
}

- (NSString)x_wr_alarmuid
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-WR-ALARMUID"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (ICSDateTimeUTCValue)acknowledged
{
  v2 = [(ICSComponent *)self propertiesForName:@"ACKNOWLEDGED"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)relatedTo
{
  v2 = [(ICSComponent *)self propertiesForName:@"RELATED-TO"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_apple_proximity
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-PROXIMITY"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (void)setX_apple_default_alarm:(BOOL)x_apple_default_alarm
{
  if (x_apple_default_alarm)
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
  lastObject = [v2 lastObject];
  value = [lastObject value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (void)setX_apple_travel_default_alarm:(BOOL)x_apple_travel_default_alarm
{
  if (x_apple_travel_default_alarm)
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
  lastObject = [v2 lastObject];
  value = [lastObject value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (void)setX_apple_local_default_alarm:(BOOL)x_apple_local_default_alarm
{
  if (x_apple_local_default_alarm)
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
  lastObject = [v2 lastObject];
  value = [lastObject value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (NSData)bookmark
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-BOOKMARK"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  if ([value length])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:value options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setBookmark:(id)bookmark
{
  if (bookmark)
  {
    v4 = [bookmark base64EncodedStringWithOptions:0];
    [(ICSComponent *)self setPropertyValue:v4 forName:@"X-APPLE-BOOKMARK"];
  }

  else
  {

    [(ICSComponent *)self removePropertiesForName:@"X-APPLE-BOOKMARK"];
  }
}

@end