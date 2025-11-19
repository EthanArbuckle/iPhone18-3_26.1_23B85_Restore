@interface REMReminderCreationContext
- (REMReminderCreationContext)initWithCoder:(id)a3;
- (REMReminderCreationContext)initWithDelegate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMReminderCreationContext

- (REMReminderCreationContext)initWithDelegate:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = REMReminderCreationContext;
  v5 = [(REMReminderCreationContext *)&v24 init];
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 reminderID];
      [(REMReminderCreationContext *)v5 setReminderID:v6];
    }

    v7 = [v4 title];
    [(REMReminderCreationContext *)v5 setTitle:v7];

    v8 = [v4 notes];
    [(REMReminderCreationContext *)v5 setNotes:v8];

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 dueDateComponents], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      v10 = [v4 dueDateComponents];
      v11 = [v10 rem_isAllDayDateComponents];
      v12 = [v10 timeZone];
      if (!v12)
      {
        v12 = [MEMORY[0x277CBEBB0] localTimeZone];
      }

      v13 = [MEMORY[0x277CBEAB8] rem_dateWithDateComponents:v10 timeZone:v12];
      if (v13)
      {
        v14 = [MEMORY[0x277CBEAB8] rem_dateComponentsWithDate:v13 timeZone:v12 isAllDay:v11];
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

    v15 = [v4 location];
    [(REMReminderCreationContext *)v5 setLocation:v15];

    v16 = [v4 locationString];
    [(REMReminderCreationContext *)v5 setLocationString:v16];

    v17 = [v4 url];
    [(REMReminderCreationContext *)v5 setUrl:v17];

    v18 = [v4 userActivity];
    [(REMReminderCreationContext *)v5 setUserActivity:v18];

    if (objc_opt_respondsToSelector())
    {
      v19 = [v4 wantsExtendedDetailOnlyView];
    }

    else
    {
      v19 = 0;
    }

    [(REMReminderCreationContext *)v5 setWantsExtendedDetailOnlyView:v19];
    if (objc_opt_respondsToSelector())
    {
      v20 = [v4 titleIsGeneratedSuggestion];
    }

    else
    {
      v20 = 0;
    }

    [(REMReminderCreationContext *)v5 setTitleIsGeneratedSuggestion:v20];
    if (objc_opt_respondsToSelector())
    {
      v21 = [v4 siriFoundInAppsData];
      [(REMReminderCreationContext *)v5 setSiriFoundInAppsData:v21];
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = [v4 locationProximity];
    }

    else
    {
      v22 = 0;
    }

    [(REMReminderCreationContext *)v5 setLocationProximity:v22];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  v4 = [(REMReminderCreationContext *)self reminderID];
  [v16 encodeObject:v4 forKey:@"reminderID"];

  v5 = [(REMReminderCreationContext *)self title];
  [v16 encodeObject:v5 forKey:@"title"];

  v6 = [(REMReminderCreationContext *)self notes];
  [v16 encodeObject:v6 forKey:@"notes"];

  v7 = [(REMReminderCreationContext *)self dueDateComponents];
  [v16 encodeObject:v7 forKey:@"dueDateComponents"];

  v8 = [(REMReminderCreationContext *)self location];
  [v16 encodeObject:v8 forKey:@"location"];

  v9 = [(REMReminderCreationContext *)self locationString];
  [v16 encodeObject:v9 forKey:@"locationString"];

  v10 = [(REMReminderCreationContext *)self url];
  [v16 encodeObject:v10 forKey:@"url"];

  v11 = [(REMReminderCreationContext *)self siriFoundInAppsData];
  [v16 encodeObject:v11 forKey:@"siriFoundInAppsData"];

  [v16 encodeBool:-[REMReminderCreationContext wantsExtendedDetailOnlyView](self forKey:{"wantsExtendedDetailOnlyView"), @"wantsExtendedDetailOnlyView"}];
  [v16 encodeBool:-[REMReminderCreationContext titleIsGeneratedSuggestion](self forKey:{"titleIsGeneratedSuggestion"), @"titleIsGeneratedSuggestion"}];
  [v16 encodeInteger:-[REMReminderCreationContext locationProximity](self forKey:{"locationProximity"), @"locationProximity"}];
  v12 = [(REMReminderCreationContext *)self userActivity];

  if (v12)
  {
    v13 = [(REMReminderCreationContext *)self userActivity];
    v14 = [objc_alloc(MEMORY[0x277D448F0]) initWithUserActivity:v13];
    v15 = [v14 archivedDictionaryData];
  }

  else
  {
    v15 = 0;
  }

  [v16 encodeObject:v15 forKey:@"userActivity"];
}

- (REMReminderCreationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderCreationContext *)self initWithDelegate:0];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reminderID"];
    [(REMReminderCreationContext *)v5 setReminderID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(REMReminderCreationContext *)v5 setTitle:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notes"];
    [(REMReminderCreationContext *)v5 setNotes:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dueDateComponents"];
    [(REMReminderCreationContext *)v5 setDueDateComponents:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    [(REMReminderCreationContext *)v5 setLocation:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationString"];
    [(REMReminderCreationContext *)v5 setLocationString:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    [(REMReminderCreationContext *)v5 setUrl:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"siriFoundInAppsData"];
    [(REMReminderCreationContext *)v5 setSiriFoundInAppsData:v13];

    -[REMReminderCreationContext setWantsExtendedDetailOnlyView:](v5, "setWantsExtendedDetailOnlyView:", [v4 decodeBoolForKey:@"wantsExtendedDetailOnlyView"]);
    -[REMReminderCreationContext setTitleIsGeneratedSuggestion:](v5, "setTitleIsGeneratedSuggestion:", [v4 decodeBoolForKey:@"titleIsGeneratedSuggestion"]);
    -[REMReminderCreationContext setLocationProximity:](v5, "setLocationProximity:", [v4 decodeIntegerForKey:@"locationProximity"]);
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userActivity"];
    if (v14)
    {
      v15 = [MEMORY[0x277D448F0] userActivityWithDictionaryData:v14 error:0];
      v16 = [v15 userActivity];
      [(REMReminderCreationContext *)v5 setUserActivity:v16];
    }
  }

  return v5;
}

@end