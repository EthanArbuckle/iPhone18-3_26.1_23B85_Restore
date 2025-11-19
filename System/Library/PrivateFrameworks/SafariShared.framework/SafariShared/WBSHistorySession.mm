@interface WBSHistorySession
+ (id)currentSession;
- (BOOL)isCurrentSession;
- (BOOL)isEqual:(id)a3;
- (WBSHistorySession)initWithSessionStartDate:(id)a3;
@end

@implementation WBSHistorySession

+ (id)currentSession
{
  v2 = [a1 alloc];
  v3 = currentSessionStartDate();
  v4 = [v2 initWithSessionStartDate:v3];

  return v4;
}

- (WBSHistorySession)initWithSessionStartDate:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSHistorySession;
  v6 = [(WBSHistorySession *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startDate, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)isCurrentSession
{
  startDate = self->_startDate;
  v3 = currentSessionStartDate();
  LOBYTE(startDate) = [(NSDate *)startDate isEqualToDate:v3];

  return startDate;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      startDate = self->_startDate;
      v6 = [(WBSHistorySession *)v4 startDate];
      v7 = [(NSDate *)startDate isEqualToDate:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end