@interface SXCalendarEventActionSerializer
- (id)URLForAction:(id)a3 type:(int64_t)a4;
- (id)queryItemForName:(id)a3 value:(id)a4;
@end

@implementation SXCalendarEventActionSerializer

- (id)URLForAction:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 startDate];

    v8 = 0;
    if (a4 != 1 && v7)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v9 setScheme:@"action"];
      [v9 setHost:@"calendar-event"];
      v10 = [MEMORY[0x1E695DF70] array];
      v11 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v12 = [v6 startDate];
      v13 = [v11 stringFromDate:v12];
      v14 = [(SXCalendarEventActionSerializer *)self queryItemForName:@"startDate" value:v13];
      [v10 addObject:v14];

      v15 = [v6 endDate];

      if (v15)
      {
        v16 = [v6 endDate];
        v17 = [v11 stringFromDate:v16];
        v18 = [(SXCalendarEventActionSerializer *)self queryItemForName:@"endDate" value:v17];
        [v10 addObject:v18];
      }

      v19 = [v6 title];

      if (v19)
      {
        v20 = [v6 title];
        v21 = [(SXCalendarEventActionSerializer *)self queryItemForName:@"title" value:v20];
        [v10 addObject:v21];
      }

      v22 = [v6 location];

      if (v22)
      {
        v23 = [v6 location];
        v24 = [(SXCalendarEventActionSerializer *)self queryItemForName:@"location" value:v23];
        [v10 addObject:v24];
      }

      v25 = [v6 notes];

      if (v25)
      {
        v26 = [v6 notes];
        v27 = [v26 text];
        v28 = [(SXCalendarEventActionSerializer *)self queryItemForName:@"notes" value:v27];
        [v10 addObject:v28];
      }

      v29 = [v6 URL];

      if (v29)
      {
        v30 = [v6 URL];
        v31 = [v30 absoluteString];
        v32 = [(SXCalendarEventActionSerializer *)self queryItemForName:@"URL" value:v31];
        [v10 addObject:v32];
      }

      [v9 setQueryItems:v10];
      v8 = [v9 URL];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)queryItemForName:(id)a3 value:(id)a4
{
  v5 = MEMORY[0x1E696AF60];
  v6 = MEMORY[0x1E696AB08];
  v7 = a4;
  v8 = a3;
  v9 = [v6 URLQueryAllowedCharacterSet];
  v10 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v9];

  v11 = [v5 queryItemWithName:v8 value:v10];

  return v11;
}

@end