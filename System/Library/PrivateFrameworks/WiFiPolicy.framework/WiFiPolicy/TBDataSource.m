@interface TBDataSource
- (void)executeFetchRequest:(id)a3;
- (void)submitAnalyticsEventForFetchRequest:(id)a3 duration:(double)a4 error:(id)a5 resultCount:(int64_t)a6;
@end

@implementation TBDataSource

- (void)executeFetchRequest:(id)a3
{
  v3 = a3;
  NSLog(&cfstr_UnsupportedFet.isa, v3);
  v5 = [TBError fetchUnsupportedErrorWithUserInfo:0];
  v4 = [TBErrorFetchResponse responseWithError:v5];
  [v3 handleResponse:v4];
}

- (void)submitAnalyticsEventForFetchRequest:(id)a3 duration:(double)a4 error:(id)a5 resultCount:(int64_t)a6
{
  v29 = a3;
  v10 = a5;
  v11 = [v29 descriptor];
  v12 = [v11 type];

  v13 = [(TBDataSource *)self type];
  v14 = [v29 descriptor];
  if ([v14 type] == 1)
  {
    v15 = [v29 descriptor];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v19 = 0;
      goto LABEL_7;
    }

    v17 = MEMORY[0x277CCABB0];
    v14 = [v29 descriptor];
    v18 = [v14 bssids];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
  }

  else
  {
    v19 = 0;
  }

LABEL_7:
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v29 userInfo], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "objectForKeyedSubscript:", @"trigger"), v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v21))
  {
    v22 = [v29 userInfo];
    v23 = [v22 objectForKeyedSubscript:@"trigger"];
    v24 = [v23 unsignedIntegerValue];
  }

  else
  {
    v24 = 0;
  }

  if ((v12 - 1) >= 3)
  {
    v12 = 0;
  }

  if (v13)
  {
    v25 = 2 * (v13 == 1);
  }

  else
  {
    v25 = 1;
  }

  v26 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
  v28 = [TBFetchAnalyticsEvent fetchEventWithSource:v25 type:v12 trigger:v24 duration:v26 requestCount:v19 resultCount:v27 error:v10 tileKey:0];

  [TBAnalytics captureEvent:v28];
}

@end