@interface REMReminderCreationContext
- (REMReminderCreationContext)initWithCoder:(id)coder;
- (REMReminderCreationContext)initWithDelegate:(id)delegate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMReminderCreationContext

- (REMReminderCreationContext)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = REMReminderCreationContext;
  v5 = [(REMReminderCreationContext *)&v24 init];
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      reminderID = [delegateCopy reminderID];
      [(REMReminderCreationContext *)v5 setReminderID:reminderID];
    }

    title = [delegateCopy title];
    [(REMReminderCreationContext *)v5 setTitle:title];

    notes = [delegateCopy notes];
    [(REMReminderCreationContext *)v5 setNotes:notes];

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([delegateCopy dueDateComponents], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      dueDateComponents = [delegateCopy dueDateComponents];
      rem_isAllDayDateComponents = [dueDateComponents rem_isAllDayDateComponents];
      timeZone = [dueDateComponents timeZone];
      if (!timeZone)
      {
        timeZone = [MEMORY[0x277CBEBB0] localTimeZone];
      }

      v13 = [MEMORY[0x277CBEAB8] rem_dateWithDateComponents:dueDateComponents timeZone:timeZone];
      if (v13)
      {
        v14 = [MEMORY[0x277CBEAB8] rem_dateComponentsWithDate:v13 timeZone:timeZone isAllDay:rem_isAllDayDateComponents];
        [(REMReminderCreationContext *)v5 setDueDateComponents:v14];
      }

      else
      {
        [(REMReminderCreationContext *)v5 setDueDateComponents:0];
      }
    }

    else
    {
      [(REMReminderCreationContext *)v5 setDueDateComponents:0];
    }

    location = [delegateCopy location];
    [(REMReminderCreationContext *)v5 setLocation:location];

    locationString = [delegateCopy locationString];
    [(REMReminderCreationContext *)v5 setLocationString:locationString];

    v17 = [delegateCopy url];
    [(REMReminderCreationContext *)v5 setUrl:v17];

    userActivity = [delegateCopy userActivity];
    [(REMReminderCreationContext *)v5 setUserActivity:userActivity];

    if (objc_opt_respondsToSelector())
    {
      wantsExtendedDetailOnlyView = [delegateCopy wantsExtendedDetailOnlyView];
    }

    else
    {
      wantsExtendedDetailOnlyView = 0;
    }

    [(REMReminderCreationContext *)v5 setWantsExtendedDetailOnlyView:wantsExtendedDetailOnlyView];
    if (objc_opt_respondsToSelector())
    {
      titleIsGeneratedSuggestion = [delegateCopy titleIsGeneratedSuggestion];
    }

    else
    {
      titleIsGeneratedSuggestion = 0;
    }

    [(REMReminderCreationContext *)v5 setTitleIsGeneratedSuggestion:titleIsGeneratedSuggestion];
    if (objc_opt_respondsToSelector())
    {
      siriFoundInAppsData = [delegateCopy siriFoundInAppsData];
      [(REMReminderCreationContext *)v5 setSiriFoundInAppsData:siriFoundInAppsData];
    }

    if (objc_opt_respondsToSelector())
    {
      locationProximity = [delegateCopy locationProximity];
    }

    else
    {
      locationProximity = 0;
    }

    [(REMReminderCreationContext *)v5 setLocationProximity:locationProximity];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  reminderID = [(REMReminderCreationContext *)self reminderID];
  [coderCopy encodeObject:reminderID forKey:@"reminderID"];

  title = [(REMReminderCreationContext *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  notes = [(REMReminderCreationContext *)self notes];
  [coderCopy encodeObject:notes forKey:@"notes"];

  dueDateComponents = [(REMReminderCreationContext *)self dueDateComponents];
  [coderCopy encodeObject:dueDateComponents forKey:@"dueDateComponents"];

  location = [(REMReminderCreationContext *)self location];
  [coderCopy encodeObject:location forKey:@"location"];

  locationString = [(REMReminderCreationContext *)self locationString];
  [coderCopy encodeObject:locationString forKey:@"locationString"];

  v10 = [(REMReminderCreationContext *)self url];
  [coderCopy encodeObject:v10 forKey:@"url"];

  siriFoundInAppsData = [(REMReminderCreationContext *)self siriFoundInAppsData];
  [coderCopy encodeObject:siriFoundInAppsData forKey:@"siriFoundInAppsData"];

  [coderCopy encodeBool:-[REMReminderCreationContext wantsExtendedDetailOnlyView](self forKey:{"wantsExtendedDetailOnlyView"), @"wantsExtendedDetailOnlyView"}];
  [coderCopy encodeBool:-[REMReminderCreationContext titleIsGeneratedSuggestion](self forKey:{"titleIsGeneratedSuggestion"), @"titleIsGeneratedSuggestion"}];
  [coderCopy encodeInteger:-[REMReminderCreationContext locationProximity](self forKey:{"locationProximity"), @"locationProximity"}];
  userActivity = [(REMReminderCreationContext *)self userActivity];

  if (userActivity)
  {
    userActivity2 = [(REMReminderCreationContext *)self userActivity];
    v14 = [objc_alloc(MEMORY[0x277D448F0]) initWithUserActivity:userActivity2];
    archivedDictionaryData = [v14 archivedDictionaryData];
  }

  else
  {
    archivedDictionaryData = 0;
  }

  [coderCopy encodeObject:archivedDictionaryData forKey:@"userActivity"];
}

- (REMReminderCreationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(REMReminderCreationContext *)self initWithDelegate:0];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reminderID"];
    [(REMReminderCreationContext *)v5 setReminderID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(REMReminderCreationContext *)v5 setTitle:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notes"];
    [(REMReminderCreationContext *)v5 setNotes:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dueDateComponents"];
    [(REMReminderCreationContext *)v5 setDueDateComponents:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    [(REMReminderCreationContext *)v5 setLocation:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationString"];
    [(REMReminderCreationContext *)v5 setLocationString:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    [(REMReminderCreationContext *)v5 setUrl:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"siriFoundInAppsData"];
    [(REMReminderCreationContext *)v5 setSiriFoundInAppsData:v13];

    -[REMReminderCreationContext setWantsExtendedDetailOnlyView:](v5, "setWantsExtendedDetailOnlyView:", [coderCopy decodeBoolForKey:@"wantsExtendedDetailOnlyView"]);
    -[REMReminderCreationContext setTitleIsGeneratedSuggestion:](v5, "setTitleIsGeneratedSuggestion:", [coderCopy decodeBoolForKey:@"titleIsGeneratedSuggestion"]);
    -[REMReminderCreationContext setLocationProximity:](v5, "setLocationProximity:", [coderCopy decodeIntegerForKey:@"locationProximity"]);
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userActivity"];
    if (v14)
    {
      v15 = [MEMORY[0x277D448F0] userActivityWithDictionaryData:v14 error:0];
      userActivity = [v15 userActivity];
      [(REMReminderCreationContext *)v5 setUserActivity:userActivity];
    }
  }

  return v5;
}

@end