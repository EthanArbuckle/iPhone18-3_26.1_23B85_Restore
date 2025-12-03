@interface SXCalendarEventAction
- (SXCalendarEventAction)initWithStartDate:(id)date;
@end

@implementation SXCalendarEventAction

- (SXCalendarEventAction)initWithStartDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = SXCalendarEventAction;
  v5 = [(SXCalendarEventAction *)&v9 init];
  if (v5)
  {
    v6 = [dateCopy copy];
    startDate = v5->_startDate;
    v5->_startDate = v6;
  }

  return v5;
}

@end