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
    v3 = [MEMORY[0x1E695DF00] date];
    startDate = v2->_startDate;
    v2->_startDate = v3;
  }

  return v2;
}

- (void)determineEndDate
{
  if (!self->_endDate)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    endDate = self->_endDate;
    self->_endDate = v4;

    MEMORY[0x1EEE66BB8](v4, endDate);
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(SXAnalyticsEvent *)self endDate];

  if (v4)
  {
    v5 = [(SXAnalyticsEvent *)self endDate];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;
    v8 = [(SXAnalyticsEvent *)self startDate];
    [v8 timeIntervalSinceReferenceDate];
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