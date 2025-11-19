@interface SXCalendarEventActionActivityProvider
- (SXCalendarEventActionActivityProvider)initWithCalendarPresenter:(id)a3 host:(id)a4;
- (id)activityGroupForAction:(id)a3;
- (void)createEvent:(id)a3;
- (void)showInCalendar:(id)a3;
@end

@implementation SXCalendarEventActionActivityProvider

- (SXCalendarEventActionActivityProvider)initWithCalendarPresenter:(id)a3 host:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXCalendarEventActionActivityProvider;
  v9 = [(SXCalendarEventActionActivityProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calendarPresenter, a3);
    objc_storeStrong(&v10->_host, a4);
  }

  return v10;
}

- (id)activityGroupForAction:(id)a3
{
  v4 = a3;
  v5 = [SXActionActivityGroup alloc];
  v6 = [v4 title];
  v7 = [(SXActionActivityGroup *)v5 initWithTitle:v6];

  v8 = [SXBlockActionActivity alloc];
  v9 = SXBundle();
  v10 = [v9 localizedStringForKey:@"Create Event" value:&stru_1F532F6C0 table:0];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __64__SXCalendarEventActionActivityProvider_activityGroupForAction___block_invoke;
  v25[3] = &unk_1E84FEDD0;
  v25[4] = self;
  v11 = v4;
  v26 = v11;
  v12 = [(SXBlockActionActivity *)v8 initWithLabel:v10 type:0 block:v25];
  [(SXActionActivityGroup *)v7 addActivity:v12];

  v13 = [SXBlockActionActivity alloc];
  v14 = SXBundle();
  v15 = [v14 localizedStringForKey:@"Show in Calendar" value:&stru_1F532F6C0 table:0];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __64__SXCalendarEventActionActivityProvider_activityGroupForAction___block_invoke_2;
  v22 = &unk_1E84FEDD0;
  v23 = self;
  v24 = v11;
  v16 = v11;
  v17 = [(SXBlockActionActivity *)v13 initWithLabel:v15 type:1 block:&v19];
  [(SXActionActivityGroup *)v7 addActivity:v17, v19, v20, v21, v22, v23];

  return v7;
}

- (void)createEvent:(id)a3
{
  v4 = a3;
  v5 = [SXPresentableCalendarEvent alloc];
  v6 = [v4 startDate];
  v14 = [(SXPresentableCalendarEvent *)v5 initWithStartDate:v6];

  v7 = [v4 endDate];
  [(SXPresentableCalendarEvent *)v14 setEndDate:v7];

  v8 = [v4 timeZone];
  [(SXPresentableCalendarEvent *)v14 setTimeZone:v8];

  -[SXPresentableCalendarEvent setAllDay:](v14, "setAllDay:", [v4 allDay]);
  v9 = [v4 title];
  [(SXPresentableCalendarEvent *)v14 setTitle:v9];

  v10 = [v4 URL];
  [(SXPresentableCalendarEvent *)v14 setURL:v10];

  v11 = [v4 notes];
  [(SXPresentableCalendarEvent *)v14 setNotes:v11];

  v12 = [v4 location];

  [(SXPresentableCalendarEvent *)v14 setLocation:v12];
  v13 = [(SXCalendarEventActionActivityProvider *)self calendarPresenter];
  [v13 presentCalendarEvent:v14];
}

- (void)showInCalendar:(id)a3
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [a3 startDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = [v5 stringWithFormat:@"calshow:%d", v7];
  v10 = [v4 URLWithString:v8];

  v9 = [(SXCalendarEventActionActivityProvider *)self host];
  [v9 openURL:v10 completion:0];
}

@end