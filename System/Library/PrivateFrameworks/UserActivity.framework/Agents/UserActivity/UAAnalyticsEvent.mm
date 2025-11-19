@interface UAAnalyticsEvent
- (id)description;
- (id)firstPartyActivityTypeOrUnknown:(id)a3;
- (void)sendEvent;
@end

@implementation UAAnalyticsEvent

- (void)sendEvent
{
  v3 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(UAAnalyticsEvent *)self eventName];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Sending event: %@", &v7, 0xCu);
  }

  v5 = [(UAAnalyticsEvent *)self eventName];
  v6 = [(UAAnalyticsEvent *)self eventPayload];
  AnalyticsSendEvent();
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = [(UAAnalyticsEvent *)self eventName];
  [v3 appendString:v4];

  [v3 appendString:@" => "];
  v5 = [(UAAnalyticsEvent *)self eventPayload];
  [v3 appendFormat:@"%@", v5];

  return v3;
}

- (id)firstPartyActivityTypeOrUnknown:(id)a3
{
  v3 = a3;
  if (([v3 hasPrefix:@":com.apple."] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"com.apple.") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"NSUserActivityTypeBrowsingWeb"))
  {
    v4 = v3;
  }

  else
  {
    v4 = @"unknown";
  }

  v5 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138478083;
    v8 = v3;
    v9 = 2113;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Metric AT for %{private}@ is %{private}@", &v7, 0x16u);
  }

  return v4;
}

@end