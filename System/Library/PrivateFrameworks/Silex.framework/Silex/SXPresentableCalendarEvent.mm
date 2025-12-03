@interface SXPresentableCalendarEvent
- (SXPresentableCalendarEvent)initWithStartDate:(id)date;
@end

@implementation SXPresentableCalendarEvent

- (SXPresentableCalendarEvent)initWithStartDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = SXPresentableCalendarEvent;
  v6 = [(SXPresentableCalendarEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startDate, date);
  }

  return v7;
}

@end