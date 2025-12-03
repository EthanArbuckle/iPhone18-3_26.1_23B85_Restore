@interface ICSTodo
- (BOOL)validate:(id *)validate;
- (ICSDate)completed;
- (ICSDate)due;
- (ICSDate)x_apple_alternative_due_date_for_calendar;
- (NSData)x_apple_appLinkData;
- (int64_t)percentComplete;
- (unint64_t)x_apple_sort_order;
- (void)fixComponent;
- (void)setPercentComplete:(int64_t)complete;
- (void)setX_apple_sort_order:(unint64_t)x_apple_sort_order;
@end

@implementation ICSTodo

- (void)fixComponent
{
  v29.receiver = self;
  v29.super_class = ICSTodo;
  [(ICSComponent *)&v29 fixComponent];
  v3 = [(ICSComponent *)self propertiesForName:@"COMPLETED"];

  if (v3)
  {
    completed = [(ICSTodo *)self completed];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"COMPLETED"];
    }
  }

  v6 = [(ICSComponent *)self propertiesForName:@"PERCENT-COMPLETE"];

  if (v6)
  {
    v7 = [(ICSComponent *)self propertiesForName:@"PERCENT-COMPLETE"];
    lastObject = [v7 lastObject];
    value = [lastObject value];
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if ((v10 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"PERCENT-COMPLETE"];
    }
  }

  v11 = [(ICSComponent *)self propertiesForName:@"DUE"];

  if (v11)
  {
    v12 = [(ICSTodo *)self due];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if ((v13 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"DUE"];
    }
  }

  v14 = [(ICSComponent *)self propertiesForName:@"PRIORITY"];

  if (v14)
  {
    v15 = [(ICSComponent *)self propertiesForName:@"PRIORITY"];
    lastObject2 = [v15 lastObject];
    value2 = [lastObject2 value];
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();

    if ((v18 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"PRIORITY"];
    }
  }

  v19 = [(ICSComponent *)self propertiesForName:@"DURATION"];

  if (v19)
  {
    v20 = [(ICSComponent *)self propertiesForName:@"DURATION"];
    lastObject3 = [v20 lastObject];
    value3 = [lastObject3 value];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if ((v23 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"DURATION"];
    }
  }

  v24 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SORT-ORDER"];

  if (v24)
  {
    v25 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SORT-ORDER"];
    lastObject4 = [v25 lastObject];
    value4 = [lastObject4 value];
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();

    if ((v28 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"X-APPLE-SORT-ORDER"];
    }
  }
}

- (BOOL)validate:(id *)validate
{
  v5 = [(ICSComponent *)self propertiesForName:@"STATUS"];

  if (v5)
  {
    status = [(ICSComponent *)self status];
    v7 = status;
    if (status > 8 || ((1 << status) & 0x139) == 0)
    {
      if (validate)
      {
        v9 = MEMORY[0x277CCA9B8];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Invalid STATUS for VTODO." forKey:*MEMORY[0x277CCA450]];
        *validate = [v9 errorWithDomain:@"com.apple.iCalendar" code:1000 userInfo:v10];
      }

      if ((v7 | 8) != 8)
      {
        return 0;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = ICSTodo;
  return [(ICSComponent *)&v11 validate:validate];
}

- (ICSDate)completed
{
  v2 = [(ICSComponent *)self propertiesForName:@"COMPLETED"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (int64_t)percentComplete
{
  v2 = [(ICSComponent *)self propertiesForName:@"PERCENT-COMPLETE"];
  lastObject = [v2 lastObject];
  value = [lastObject value];
  integerValue = [value integerValue];

  return integerValue;
}

- (void)setPercentComplete:(int64_t)complete
{
  if ((complete - 1) > 0x63)
  {

    [(ICSComponent *)self removePropertiesForName:@"PERCENT-COMPLETE"];
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [(ICSComponent *)self setPropertyValue:v4 type:5008 forName:@"PERCENT-COMPLETE"];
  }
}

- (ICSDate)due
{
  v2 = [(ICSComponent *)self propertiesForName:@"DUE"];
  lastObject = [v2 lastObject];

  return lastObject;
}

- (unint64_t)x_apple_sort_order
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SORT-ORDER"];
  lastObject = [v2 lastObject];
  value = [lastObject value];
  unsignedIntegerValue = [value unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setX_apple_sort_order:(unint64_t)x_apple_sort_order
{
  if (x_apple_sort_order)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [(ICSComponent *)self setPropertyValue:v4 type:5008 forName:@"X-APPLE-SORT-ORDER"];
  }

  else
  {

    [(ICSComponent *)self removePropertiesForName:@"X-APPLE-SORT-ORDER"];
  }
}

- (NSData)x_apple_appLinkData
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-APP-LINK-DATA"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (ICSDate)x_apple_alternative_due_date_for_calendar
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-ALTERNATIVE-DUE-DATE-FOR-CALENDAR"];
  lastObject = [v2 lastObject];

  return lastObject;
}

@end