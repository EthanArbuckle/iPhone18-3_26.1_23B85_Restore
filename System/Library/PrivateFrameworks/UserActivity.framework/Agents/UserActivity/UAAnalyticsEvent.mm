@interface UAAnalyticsEvent
- (id)description;
- (id)firstPartyActivityTypeOrUnknown:(id)unknown;
- (void)sendEvent;
@end

@implementation UAAnalyticsEvent

- (void)sendEvent
{
  v3 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    eventName = [(UAAnalyticsEvent *)self eventName];
    v7 = 138412290;
    v8 = eventName;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Sending event: %@", &v7, 0xCu);
  }

  eventName2 = [(UAAnalyticsEvent *)self eventName];
  eventPayload = [(UAAnalyticsEvent *)self eventPayload];
  AnalyticsSendEvent();
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  eventName = [(UAAnalyticsEvent *)self eventName];
  [v3 appendString:eventName];

  [v3 appendString:@" => "];
  eventPayload = [(UAAnalyticsEvent *)self eventPayload];
  [v3 appendFormat:@"%@", eventPayload];

  return v3;
}

- (id)firstPartyActivityTypeOrUnknown:(id)unknown
{
  unknownCopy = unknown;
  if (([unknownCopy hasPrefix:@":com.apple."] & 1) != 0 || (objc_msgSend(unknownCopy, "hasPrefix:", @"com.apple.") & 1) != 0 || objc_msgSend(unknownCopy, "isEqualToString:", @"NSUserActivityTypeBrowsingWeb"))
  {
    v4 = unknownCopy;
  }

  else
  {
    v4 = @"unknown";
  }

  v5 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138478083;
    v8 = unknownCopy;
    v9 = 2113;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Metric AT for %{private}@ is %{private}@", &v7, 0x16u);
  }

  return v4;
}

@end