@interface SXCalendarEventActionFactory
- (SXCalendarEventActionFactory)initWithDateParser:(id)a3;
- (id)actionForAddition:(id)a3;
- (id)actionForStartDate:(id)a3 endDate:(id)a4;
- (id)actionForURL:(id)a3;
@end

@implementation SXCalendarEventActionFactory

- (SXCalendarEventActionFactory)initWithDateParser:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXCalendarEventActionFactory;
  v6 = [(SXCalendarEventActionFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dateParser, a3);
  }

  return v7;
}

- (id)actionForAddition:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v4 startDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 startDate];
    v7 = [v4 endDate];
    v8 = [(SXCalendarEventActionFactory *)self actionForStartDate:v6 endDate:v7];

    v9 = [v4 title];
    [v8 setTitle:v9];

    v10 = [v4 location];
    [v8 setLocation:v10];

    v11 = [v4 notes];
    [v8 setNotes:v11];

    v12 = [v4 URL];
    [v8 setURL:v12];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)actionForURL:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:0];
    v5 = [v4 queryValueForName:@"startDate"];
    v6 = [v4 queryValueForName:@"endDate"];
    v7 = [v4 queryValueForName:@"title"];
    v8 = [v4 queryValueForName:@"location"];
    v9 = [v4 queryValueForName:@"notes"];
    v10 = [v4 queryValueForName:@"URL"];
    if (v5)
    {
      v11 = [(SXCalendarEventActionFactory *)self actionForStartDate:v5 endDate:v6];
      [v11 setTitle:v7];
      [v11 setLocation:v8];
      v12 = [[SXFormattedText alloc] initWithText:v9];
      [v11 setNotes:v12];

      v13 = [MEMORY[0x1E695DFF8] URLWithString:v10];
      [v11 setURL:v13];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)actionForStartDate:(id)a3 endDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SXCalendarEventActionFactory *)self dateParser];
  v9 = [v8 dateFromString:v7];

  if (v6)
  {
    v10 = [(SXCalendarEventActionFactory *)self dateParser];
    v11 = [v10 dateFromString:v6];
  }

  else
  {
    v11 = 0;
  }

  if (([v9 containedTime] & 1) != 0 || objc_msgSend(v11, "containedTime"))
  {
    v12 = [MEMORY[0x1E695DFE8] systemTimeZone];
    v13 = [v9 timeZone];

    v14 = v9;
    if (v13)
    {
LABEL_7:
      v15 = [v14 timeZone];

      v16 = 0;
      v12 = v15;
      goto LABEL_12;
    }

    v16 = [v11 timeZone];
    if (v16)
    {
      v17 = [v9 timeZone];

      v14 = v11;
      if (!v17)
      {
        goto LABEL_7;
      }

      v16 = 0;
    }
  }

  else
  {
    v12 = 0;
    v16 = 1;
  }

LABEL_12:
  v18 = [v9 date];
  v19 = [v11 date];
  if (!v19 && v18 || ([v18 timeIntervalSince1970], v21 = v20, objc_msgSend(v19, "timeIntervalSince1970"), v21 > v22))
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v23 setHour:1];
    v24 = [MEMORY[0x1E695DEE8] currentCalendar];
    v25 = [v24 dateByAddingComponents:v23 toDate:v18 options:0];

    v19 = v25;
  }

  v26 = [[SXCalendarEventAction alloc] initWithStartDate:v18];
  [(SXCalendarEventAction *)v26 setEndDate:v19];
  [(SXCalendarEventAction *)v26 setAllDay:v16];
  [(SXCalendarEventAction *)v26 setTimeZone:v12];

  return v26;
}

@end