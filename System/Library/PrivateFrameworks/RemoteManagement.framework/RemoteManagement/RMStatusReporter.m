@interface RMStatusReporter
- (RMStatusReporter)initWithStatusEngine:(id)a3 onlyIfNeeded:(BOOL)a4;
- (id)statusReportReturningError:(id *)a3;
- (void)acknowledgeStatusSent;
@end

@implementation RMStatusReporter

- (RMStatusReporter)initWithStatusEngine:(id)a3 onlyIfNeeded:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = RMStatusReporter;
  v8 = [(RMStatusReporter *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_statusEngine, a3);
    v9->_onlyIfNeeded = a4;
    statusQueryResult = v9->_statusQueryResult;
    v9->_statusQueryResult = 0;
  }

  return v9;
}

- (id)statusReportReturningError:(id *)a3
{
  v5 = [(RMStatusReporter *)self onlyIfNeeded];
  v6 = [(RMStatusReporter *)self statusEngine];
  v7 = v6;
  if (v5)
  {
    [v6 queryForUnacknowledgedStatusSubscriptions];
  }

  else
  {
    [v6 queryForStatusSubscriptions];
  }
  v8 = ;
  [(RMStatusReporter *)self setStatusQueryResult:v8];

  v9 = [(RMStatusReporter *)self statusQueryResult];
  LOBYTE(v8) = [v9 hasStatusToReport];

  if (v8)
  {
    v10 = [(RMStatusReporter *)self statusQueryResult];
    v11 = [v10 protocolStatusReportWithFullReport:{-[RMStatusReporter onlyIfNeeded](self, "onlyIfNeeded") ^ 1}];

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

      if (a3 && v13)
      {
        v16 = v13;
        *a3 = v13;
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
  v3 = [(RMStatusReporter *)self statusQueryResult];
  v4 = [v3 hasStatusToReport];

  if (v4)
  {
    v6 = [(RMStatusReporter *)self statusEngine];
    v5 = [(RMStatusReporter *)self statusQueryResult];
    [v6 acknowledgeStatusSubscriptions:v5];
  }
}

@end