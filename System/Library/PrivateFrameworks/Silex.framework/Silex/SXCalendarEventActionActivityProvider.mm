@interface SXCalendarEventActionActivityProvider
- (SXCalendarEventActionActivityProvider)initWithCalendarPresenter:(id)presenter host:(id)host;
- (id)activityGroupForAction:(id)action;
- (void)createEvent:(id)event;
- (void)showInCalendar:(id)calendar;
@end

@implementation SXCalendarEventActionActivityProvider

- (SXCalendarEventActionActivityProvider)initWithCalendarPresenter:(id)presenter host:(id)host
{
  presenterCopy = presenter;
  hostCopy = host;
  v12.receiver = self;
  v12.super_class = SXCalendarEventActionActivityProvider;
  v9 = [(SXCalendarEventActionActivityProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calendarPresenter, presenter);
    objc_storeStrong(&v10->_host, host);
  }

  return v10;
}

- (id)activityGroupForAction:(id)action
{
  actionCopy = action;
  v5 = [SXActionActivityGroup alloc];
  title = [actionCopy title];
  v7 = [(SXActionActivityGroup *)v5 initWithTitle:title];

  v8 = [SXBlockActionActivity alloc];
  v9 = SXBundle();
  v10 = [v9 localizedStringForKey:@"Create Event" value:&stru_1F532F6C0 table:0];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __64__SXCalendarEventActionActivityProvider_activityGroupForAction___block_invoke;
  v25[3] = &unk_1E84FEDD0;
  v25[4] = self;
  v11 = actionCopy;
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
  selfCopy = self;
  v24 = v11;
  v16 = v11;
  v17 = [(SXBlockActionActivity *)v13 initWithLabel:v15 type:1 block:&v19];
  [(SXActionActivityGroup *)v7 addActivity:v17, v19, v20, v21, v22, selfCopy];

  return v7;
}

- (void)createEvent:(id)event
{
  eventCopy = event;
  v5 = [SXPresentableCalendarEvent alloc];
  startDate = [eventCopy startDate];
  v14 = [(SXPresentableCalendarEvent *)v5 initWithStartDate:startDate];

  endDate = [eventCopy endDate];
  [(SXPresentableCalendarEvent *)v14 setEndDate:endDate];

  timeZone = [eventCopy timeZone];
  [(SXPresentableCalendarEvent *)v14 setTimeZone:timeZone];

  -[SXPresentableCalendarEvent setAllDay:](v14, "setAllDay:", [eventCopy allDay]);
  title = [eventCopy title];
  [(SXPresentableCalendarEvent *)v14 setTitle:title];

  v10 = [eventCopy URL];
  [(SXPresentableCalendarEvent *)v14 setURL:v10];

  notes = [eventCopy notes];
  [(SXPresentableCalendarEvent *)v14 setNotes:notes];

  location = [eventCopy location];

  [(SXPresentableCalendarEvent *)v14 setLocation:location];
  calendarPresenter = [(SXCalendarEventActionActivityProvider *)self calendarPresenter];
  [calendarPresenter presentCalendarEvent:v14];
}

- (void)showInCalendar:(id)calendar
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = MEMORY[0x1E696AEC0];
  startDate = [calendar startDate];
  [startDate timeIntervalSinceReferenceDate];
  v8 = [v5 stringWithFormat:@"calshow:%d", v7];
  v10 = [v4 URLWithString:v8];

  host = [(SXCalendarEventActionActivityProvider *)self host];
  [host openURL:v10 completion:0];
}

@end