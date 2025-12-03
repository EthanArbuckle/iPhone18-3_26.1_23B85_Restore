@interface SXAnalyticsEvent
- (SXAnalyticsEvent)init;
- (id)description;
- (void)determineEndDate;
@end

@implementation SXAnalyticsEvent

- (SXAnalyticsEvent)init
{
  v6.receiver = self;
  v6.super_class = SXAnalyticsEvent;
  v2 = [(SXAnalyticsEvent *)&v6 init];
  if (v2)
  {
    date = [MEMORY[0x1E695DF00] date];
    startDate = v2->_startDate;
    v2->_startDate = date;
  }

  return v2;
}

- (void)determineEndDate
{
  if (!self->_endDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    endDate = self->_endDate;
    self->_endDate = date;

    MEMORY[0x1EEE66BB8](date, endDate);
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  endDate = [(SXAnalyticsEvent *)self endDate];

  if (endDate)
  {
    endDate2 = [(SXAnalyticsEvent *)self endDate];
    [endDate2 timeIntervalSinceReferenceDate];
    v7 = v6;
    startDate = [(SXAnalyticsEvent *)self startDate];
    [startDate timeIntervalSinceReferenceDate];
    [v3 appendFormat:@"; duration: %f", v7 - v9];
  }

  else
  {
    [v3 appendString:@"; duration: undetermined"];
  }

  [v3 appendString:@">"];

  return v3;
}

@end