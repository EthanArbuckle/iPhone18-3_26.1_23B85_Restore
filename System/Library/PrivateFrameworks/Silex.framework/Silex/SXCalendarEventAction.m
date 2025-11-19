@interface SXCalendarEventAction
- (SXCalendarEventAction)initWithStartDate:(id)a3;
@end

@implementation SXCalendarEventAction

- (SXCalendarEventAction)initWithStartDate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SXCalendarEventAction;
  v5 = [(SXCalendarEventAction *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    startDate = v5->_startDate;
    v5->_startDate = v6;
  }

  return v5;
}

@end