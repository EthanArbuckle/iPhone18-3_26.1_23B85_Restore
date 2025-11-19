@interface SXPresentableCalendarEvent
- (SXPresentableCalendarEvent)initWithStartDate:(id)a3;
@end

@implementation SXPresentableCalendarEvent

- (SXPresentableCalendarEvent)initWithStartDate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXPresentableCalendarEvent;
  v6 = [(SXPresentableCalendarEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startDate, a3);
  }

  return v7;
}

@end