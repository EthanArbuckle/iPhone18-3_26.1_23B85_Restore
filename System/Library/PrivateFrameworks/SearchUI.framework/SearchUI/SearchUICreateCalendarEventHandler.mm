@interface SearchUICreateCalendarEventHandler
- (id)createViewControllerForCommand:(id)a3 environment:(id)a4;
- (id)eventFromSFCalendarEvent:(id)a3 eventStore:(id)a4;
- (id)structuredLocationFromLocation:(id)a3;
- (unint64_t)destination;
@end

@implementation SearchUICreateCalendarEventHandler

- (id)createViewControllerForCommand:(id)a3 environment:(id)a4
{
  v6 = a4;
  v7 = [a3 event];
  if (v7)
  {
    v8 = [v6 presentingViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = objc_opt_new();
      v11 = [(SearchUICreateCalendarEventHandler *)self eventFromSFCalendarEvent:v7 eventStore:v10];
      v12 = objc_opt_new();
      [v12 setEventStore:v10];
      [v12 setEvent:v11];
      v13 = [v6 presentingViewController];
      [v12 setEditViewDelegate:v13];

      goto LABEL_9;
    }

    v14 = SearchUITapLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SearchUICreateCalendarEventHandler createViewControllerForCommand:v14 environment:?];
    }
  }

  else
  {
    v14 = SearchUITapLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SearchUICreateCalendarEventHandler createViewControllerForCommand:v14 environment:?];
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (unint64_t)destination
{
  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (id)eventFromSFCalendarEvent:(id)a3 eventStore:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E6966A08];
  v8 = a4;
  v9 = [v7 eventWithEventStore:v8];
  v10 = [v6 title];
  [v9 setTitle:v10];

  [v9 setAllDay:{objc_msgSend(v6, "isAllDay")}];
  v11 = [v6 startDate];
  [v9 setStartDate:v11];

  v12 = [v6 startTimeZone];
  if (v12)
  {
    [v9 setStartTimeZone:v12];
  }

  else
  {
    v13 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    [v9 setStartTimeZone:v13];
  }

  v14 = [v6 endDate];
  if (v14)
  {
    [v9 setEndDate:v14];
  }

  else
  {
    v15 = [v9 startDate];
    [v9 setEndDate:v15];
  }

  v16 = [v6 endTimeZone];
  if (v16)
  {
    [v9 setEndTimeZone:v16];
  }

  else
  {
    v17 = [v9 startTimeZone];
    [v9 setEndTimeZone:v17];
  }

  v18 = [v6 notes];
  [v9 setNotes:v18];

  v19 = [v6 url];
  [v9 setURL:v19];

  v20 = [v8 defaultCalendarForNewEvents];

  [v9 setCalendar:v20];
  v21 = [v6 location];
  v22 = [(SearchUICreateCalendarEventHandler *)self structuredLocationFromLocation:v21];
  [v9 setStructuredLocation:v22];

  v23 = [v6 endLocation];
  v24 = [(SearchUICreateCalendarEventHandler *)self structuredLocationFromLocation:v23];
  [v9 setEndLocation:v24];

  return v9;
}

- (id)structuredLocationFromLocation:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v3 title];
    [v4 setTitle:v5];

    v6 = [v3 geoLocation];
    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x1E6985C40]);
      v8 = [v3 geoLocation];
      [v8 lat];
      v10 = v9;
      v11 = [v3 geoLocation];
      [v11 lng];
      v13 = [v7 initWithLatitude:v10 longitude:v12];
      [v4 setGeoLocation:v13];
    }

    else
    {
      [v4 setGeoLocation:0];
    }

    [v3 radius];
    [v4 setRadius:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end