@interface SXCalendarEventActionFactory
- (SXCalendarEventActionFactory)initWithDateParser:(id)parser;
- (id)actionForAddition:(id)addition;
- (id)actionForStartDate:(id)date endDate:(id)endDate;
- (id)actionForURL:(id)l;
@end

@implementation SXCalendarEventActionFactory

- (SXCalendarEventActionFactory)initWithDateParser:(id)parser
{
  parserCopy = parser;
  v9.receiver = self;
  v9.super_class = SXCalendarEventActionFactory;
  v6 = [(SXCalendarEventActionFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dateParser, parser);
  }

  return v7;
}

- (id)actionForAddition:(id)addition
{
  additionCopy = addition;
  if (additionCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([additionCopy startDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    startDate = [additionCopy startDate];
    endDate = [additionCopy endDate];
    v8 = [(SXCalendarEventActionFactory *)self actionForStartDate:startDate endDate:endDate];

    title = [additionCopy title];
    [v8 setTitle:title];

    location = [additionCopy location];
    [v8 setLocation:location];

    notes = [additionCopy notes];
    [v8 setNotes:notes];

    v12 = [additionCopy URL];
    [v8 setURL:v12];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)actionForURL:(id)l
{
  if (l)
  {
    v4 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:0];
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

- (id)actionForStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  dateParser = [(SXCalendarEventActionFactory *)self dateParser];
  v9 = [dateParser dateFromString:dateCopy];

  if (endDateCopy)
  {
    dateParser2 = [(SXCalendarEventActionFactory *)self dateParser];
    v11 = [dateParser2 dateFromString:endDateCopy];
  }

  else
  {
    v11 = 0;
  }

  if (([v9 containedTime] & 1) != 0 || objc_msgSend(v11, "containedTime"))
  {
    systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
    timeZone = [v9 timeZone];

    v14 = v9;
    if (timeZone)
    {
LABEL_7:
      timeZone2 = [v14 timeZone];

      timeZone3 = 0;
      systemTimeZone = timeZone2;
      goto LABEL_12;
    }

    timeZone3 = [v11 timeZone];
    if (timeZone3)
    {
      timeZone4 = [v9 timeZone];

      v14 = v11;
      if (!timeZone4)
      {
        goto LABEL_7;
      }

      timeZone3 = 0;
    }
  }

  else
  {
    systemTimeZone = 0;
    timeZone3 = 1;
  }

LABEL_12:
  date = [v9 date];
  date2 = [v11 date];
  if (!date2 && date || ([date timeIntervalSince1970], v21 = v20, objc_msgSend(date2, "timeIntervalSince1970"), v21 > v22))
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v23 setHour:1];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v25 = [currentCalendar dateByAddingComponents:v23 toDate:date options:0];

    date2 = v25;
  }

  v26 = [[SXCalendarEventAction alloc] initWithStartDate:date];
  [(SXCalendarEventAction *)v26 setEndDate:date2];
  [(SXCalendarEventAction *)v26 setAllDay:timeZone3];
  [(SXCalendarEventAction *)v26 setTimeZone:systemTimeZone];

  return v26;
}

@end