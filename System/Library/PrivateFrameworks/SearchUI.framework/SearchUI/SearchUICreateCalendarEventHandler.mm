@interface SearchUICreateCalendarEventHandler
- (id)createViewControllerForCommand:(id)command environment:(id)environment;
- (id)eventFromSFCalendarEvent:(id)event eventStore:(id)store;
- (id)structuredLocationFromLocation:(id)location;
- (unint64_t)destination;
@end

@implementation SearchUICreateCalendarEventHandler

- (id)createViewControllerForCommand:(id)command environment:(id)environment
{
  environmentCopy = environment;
  event = [command event];
  if (event)
  {
    presentingViewController = [environmentCopy presentingViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = objc_opt_new();
      v11 = [(SearchUICreateCalendarEventHandler *)self eventFromSFCalendarEvent:event eventStore:v10];
      v12 = objc_opt_new();
      [v12 setEventStore:v10];
      [v12 setEvent:v11];
      presentingViewController2 = [environmentCopy presentingViewController];
      [v12 setEditViewDelegate:presentingViewController2];

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

- (id)eventFromSFCalendarEvent:(id)event eventStore:(id)store
{
  eventCopy = event;
  v7 = MEMORY[0x1E6966A08];
  storeCopy = store;
  v9 = [v7 eventWithEventStore:storeCopy];
  title = [eventCopy title];
  [v9 setTitle:title];

  [v9 setAllDay:{objc_msgSend(eventCopy, "isAllDay")}];
  startDate = [eventCopy startDate];
  [v9 setStartDate:startDate];

  startTimeZone = [eventCopy startTimeZone];
  if (startTimeZone)
  {
    [v9 setStartTimeZone:startTimeZone];
  }

  else
  {
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    [v9 setStartTimeZone:defaultTimeZone];
  }

  endDate = [eventCopy endDate];
  if (endDate)
  {
    [v9 setEndDate:endDate];
  }

  else
  {
    startDate2 = [v9 startDate];
    [v9 setEndDate:startDate2];
  }

  endTimeZone = [eventCopy endTimeZone];
  if (endTimeZone)
  {
    [v9 setEndTimeZone:endTimeZone];
  }

  else
  {
    startTimeZone2 = [v9 startTimeZone];
    [v9 setEndTimeZone:startTimeZone2];
  }

  notes = [eventCopy notes];
  [v9 setNotes:notes];

  v19 = [eventCopy url];
  [v9 setURL:v19];

  defaultCalendarForNewEvents = [storeCopy defaultCalendarForNewEvents];

  [v9 setCalendar:defaultCalendarForNewEvents];
  location = [eventCopy location];
  v22 = [(SearchUICreateCalendarEventHandler *)self structuredLocationFromLocation:location];
  [v9 setStructuredLocation:v22];

  endLocation = [eventCopy endLocation];
  v24 = [(SearchUICreateCalendarEventHandler *)self structuredLocationFromLocation:endLocation];
  [v9 setEndLocation:v24];

  return v9;
}

- (id)structuredLocationFromLocation:(id)location
{
  locationCopy = location;
  if (locationCopy)
  {
    v4 = objc_opt_new();
    title = [locationCopy title];
    [v4 setTitle:title];

    geoLocation = [locationCopy geoLocation];
    if (geoLocation)
    {
      v7 = objc_alloc(MEMORY[0x1E6985C40]);
      geoLocation2 = [locationCopy geoLocation];
      [geoLocation2 lat];
      v10 = v9;
      geoLocation3 = [locationCopy geoLocation];
      [geoLocation3 lng];
      v13 = [v7 initWithLatitude:v10 longitude:v12];
      [v4 setGeoLocation:v13];
    }

    else
    {
      [v4 setGeoLocation:0];
    }

    [locationCopy radius];
    [v4 setRadius:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end