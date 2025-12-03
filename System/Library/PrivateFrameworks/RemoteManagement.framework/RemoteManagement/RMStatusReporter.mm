@interface RMStatusReporter
- (RMStatusReporter)initWithStatusEngine:(id)engine onlyIfNeeded:(BOOL)needed;
- (id)statusReportReturningError:(id *)error;
- (void)acknowledgeStatusSent;
@end

@implementation RMStatusReporter

- (RMStatusReporter)initWithStatusEngine:(id)engine onlyIfNeeded:(BOOL)needed
{
  engineCopy = engine;
  v12.receiver = self;
  v12.super_class = RMStatusReporter;
  v8 = [(RMStatusReporter *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_statusEngine, engine);
    v9->_onlyIfNeeded = needed;
    statusQueryResult = v9->_statusQueryResult;
    v9->_statusQueryResult = 0;
  }

  return v9;
}

- (id)statusReportReturningError:(id *)error
{
  onlyIfNeeded = [(RMStatusReporter *)self onlyIfNeeded];
  statusEngine = [(RMStatusReporter *)self statusEngine];
  v7 = statusEngine;
  if (onlyIfNeeded)
  {
    [statusEngine queryForUnacknowledgedStatusSubscriptions];
  }

  else
  {
    [statusEngine queryForStatusSubscriptions];
  }
  v8 = ;
  [(RMStatusReporter *)self setStatusQueryResult:v8];

  statusQueryResult = [(RMStatusReporter *)self statusQueryResult];
  LOBYTE(v8) = [statusQueryResult hasStatusToReport];

  if (v8)
  {
    statusQueryResult2 = [(RMStatusReporter *)self statusQueryResult];
    v11 = [statusQueryResult2 protocolStatusReportWithFullReport:{-[RMStatusReporter onlyIfNeeded](self, "onlyIfNeeded") ^ 1}];

    v18 = 0;
    v12 = [v11 serializeAsDataWithType:1 error:&v18];
    v13 = v18;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v15 = +[RMLog statusReporter];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10006A02C(v13, v15);
      }

      if (error && v13)
      {
        v16 = v13;
        *error = v13;
      }
    }
  }

  else
  {
    v13 = +[RMLog statusReporter];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100069FE8(v13);
    }

    v12 = 0;
  }

  return v12;
}

- (void)acknowledgeStatusSent
{
  statusQueryResult = [(RMStatusReporter *)self statusQueryResult];
  hasStatusToReport = [statusQueryResult hasStatusToReport];

  if (hasStatusToReport)
  {
    statusEngine = [(RMStatusReporter *)self statusEngine];
    statusQueryResult2 = [(RMStatusReporter *)self statusQueryResult];
    [statusEngine acknowledgeStatusSubscriptions:statusQueryResult2];
  }
}

@end