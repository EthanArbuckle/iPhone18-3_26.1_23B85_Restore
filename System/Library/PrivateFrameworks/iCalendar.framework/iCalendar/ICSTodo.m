@interface ICSTodo
- (BOOL)validate:(id *)a3;
- (ICSDate)completed;
- (ICSDate)due;
- (ICSDate)x_apple_alternative_due_date_for_calendar;
- (NSData)x_apple_appLinkData;
- (int64_t)percentComplete;
- (unint64_t)x_apple_sort_order;
- (void)fixComponent;
- (void)setPercentComplete:(int64_t)a3;
- (void)setX_apple_sort_order:(unint64_t)a3;
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
    v4 = [(ICSTodo *)self completed];
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
    v8 = [v7 lastObject];
    v9 = [v8 value];
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
    v16 = [v15 lastObject];
    v17 = [v16 value];
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
    v21 = [v20 lastObject];
    v22 = [v21 value];
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
    v26 = [v25 lastObject];
    v27 = [v26 value];
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();

    if ((v28 & 1) == 0)
    {
      [(ICSComponent *)self removePropertiesForName:@"X-APPLE-SORT-ORDER"];
    }
  }
}

- (BOOL)validate:(id *)a3
{
  v5 = [(ICSComponent *)self propertiesForName:@"STATUS"];

  if (v5)
  {
    v6 = [(ICSComponent *)self status];
    v7 = v6;
    if (v6 > 8 || ((1 << v6) & 0x139) == 0)
    {
      if (a3)
      {
        v9 = MEMORY[0x277CCA9B8];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Invalid STATUS for VTODO." forKey:*MEMORY[0x277CCA450]];
        *a3 = [v9 errorWithDomain:@"com.apple.iCalendar" code:1000 userInfo:v10];
      }

      if ((v7 | 8) != 8)
      {
        return 0;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = ICSTodo;
  return [(ICSComponent *)&v11 validate:a3];
}

- (ICSDate)completed
{
  v2 = [(ICSComponent *)self propertiesForName:@"COMPLETED"];
  v3 = [v2 lastObject];

  return v3;
}

- (int64_t)percentComplete
{
  v2 = [(ICSComponent *)self propertiesForName:@"PERCENT-COMPLETE"];
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 integerValue];

  return v5;
}

- (void)setPercentComplete:(int64_t)a3
{
  if ((a3 - 1) > 0x63)
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
  v3 = [v2 lastObject];

  return v3;
}

- (unint64_t)x_apple_sort_order
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-SORT-ORDER"];
  v3 = [v2 lastObject];
  v4 = [v3 value];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (void)setX_apple_sort_order:(unint64_t)a3
{
  if (a3)
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
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (ICSDate)x_apple_alternative_due_date_for_calendar
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-ALTERNATIVE-DUE-DATE-FOR-CALENDAR"];
  v3 = [v2 lastObject];

  return v3;
}

@end