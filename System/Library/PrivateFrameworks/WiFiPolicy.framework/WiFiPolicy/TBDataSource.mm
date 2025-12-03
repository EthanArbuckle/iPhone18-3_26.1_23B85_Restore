@interface TBDataSource
- (void)executeFetchRequest:(id)request;
- (void)submitAnalyticsEventForFetchRequest:(id)request duration:(double)duration error:(id)error resultCount:(int64_t)count;
@end

@implementation TBDataSource

- (void)executeFetchRequest:(id)request
{
  requestCopy = request;
  NSLog(&cfstr_UnsupportedFet.isa, requestCopy);
  v5 = [TBError fetchUnsupportedErrorWithUserInfo:0];
  v4 = [TBErrorFetchResponse responseWithError:v5];
  [requestCopy handleResponse:v4];
}

- (void)submitAnalyticsEventForFetchRequest:(id)request duration:(double)duration error:(id)error resultCount:(int64_t)count
{
  requestCopy = request;
  errorCopy = error;
  descriptor = [requestCopy descriptor];
  type = [descriptor type];

  type2 = [(TBDataSource *)self type];
  descriptor2 = [requestCopy descriptor];
  if ([descriptor2 type] == 1)
  {
    descriptor3 = [requestCopy descriptor];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v19 = 0;
      goto LABEL_7;
    }

    v17 = MEMORY[0x277CCABB0];
    descriptor2 = [requestCopy descriptor];
    bssids = [descriptor2 bssids];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(bssids, "count")}];
  }

  else
  {
    v19 = 0;
  }

LABEL_7:
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([requestCopy userInfo], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "objectForKeyedSubscript:", @"trigger"), v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v21))
  {
    userInfo = [requestCopy userInfo];
    v23 = [userInfo objectForKeyedSubscript:@"trigger"];
    unsignedIntegerValue = [v23 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  if ((type - 1) >= 3)
  {
    type = 0;
  }

  if (type2)
  {
    v25 = 2 * (type2 == 1);
  }

  else
  {
    v25 = 1;
  }

  v26 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v28 = [TBFetchAnalyticsEvent fetchEventWithSource:v25 type:type trigger:unsignedIntegerValue duration:v26 requestCount:v19 resultCount:v27 error:errorCopy tileKey:0];

  [TBAnalytics captureEvent:v28];
}

@end