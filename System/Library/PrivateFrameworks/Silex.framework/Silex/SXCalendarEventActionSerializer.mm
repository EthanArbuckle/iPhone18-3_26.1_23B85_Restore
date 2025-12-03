@interface SXCalendarEventActionSerializer
- (id)URLForAction:(id)action type:(int64_t)type;
- (id)queryItemForName:(id)name value:(id)value;
@end

@implementation SXCalendarEventActionSerializer

- (id)URLForAction:(id)action type:(int64_t)type
{
  actionCopy = action;
  if (actionCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    startDate = [actionCopy startDate];

    v8 = 0;
    if (type != 1 && startDate)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v9 setScheme:@"action"];
      [v9 setHost:@"calendar-event"];
      array = [MEMORY[0x1E695DF70] array];
      v11 = objc_alloc_init(MEMORY[0x1E696AC80]);
      startDate2 = [actionCopy startDate];
      v13 = [v11 stringFromDate:startDate2];
      v14 = [(SXCalendarEventActionSerializer *)self queryItemForName:@"startDate" value:v13];
      [array addObject:v14];

      endDate = [actionCopy endDate];

      if (endDate)
      {
        endDate2 = [actionCopy endDate];
        v17 = [v11 stringFromDate:endDate2];
        v18 = [(SXCalendarEventActionSerializer *)self queryItemForName:@"endDate" value:v17];
        [array addObject:v18];
      }

      title = [actionCopy title];

      if (title)
      {
        title2 = [actionCopy title];
        v21 = [(SXCalendarEventActionSerializer *)self queryItemForName:@"title" value:title2];
        [array addObject:v21];
      }

      location = [actionCopy location];

      if (location)
      {
        location2 = [actionCopy location];
        v24 = [(SXCalendarEventActionSerializer *)self queryItemForName:@"location" value:location2];
        [array addObject:v24];
      }

      notes = [actionCopy notes];

      if (notes)
      {
        notes2 = [actionCopy notes];
        text = [notes2 text];
        v28 = [(SXCalendarEventActionSerializer *)self queryItemForName:@"notes" value:text];
        [array addObject:v28];
      }

      v29 = [actionCopy URL];

      if (v29)
      {
        v30 = [actionCopy URL];
        absoluteString = [v30 absoluteString];
        v32 = [(SXCalendarEventActionSerializer *)self queryItemForName:@"URL" value:absoluteString];
        [array addObject:v32];
      }

      [v9 setQueryItems:array];
      v8 = [v9 URL];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)queryItemForName:(id)name value:(id)value
{
  v5 = MEMORY[0x1E696AF60];
  v6 = MEMORY[0x1E696AB08];
  valueCopy = value;
  nameCopy = name;
  uRLQueryAllowedCharacterSet = [v6 URLQueryAllowedCharacterSet];
  v10 = [valueCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  v11 = [v5 queryItemWithName:nameCopy value:v10];

  return v11;
}

@end