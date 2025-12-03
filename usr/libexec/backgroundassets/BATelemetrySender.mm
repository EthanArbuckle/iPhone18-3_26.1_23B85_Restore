@interface BATelemetrySender
+ (BOOL)shouldReportBundleIDInTelemetry:(id)telemetry date:(id)date deviceIdentifier:(unsigned __int8)identifier[16];
+ (void)sendContentRequestTelemetryEvent:(id)event;
@end

@implementation BATelemetrySender

+ (BOOL)shouldReportBundleIDInTelemetry:(id)telemetry date:(id)date deviceIdentifier:(unsigned __int8)identifier[16]
{
  telemetryCopy = telemetry;
  dateCopy = date;
  if (telemetryCopy && ([telemetryCopy isEqualToString:&stru_10007B210] & 1) == 0)
  {
    v10 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v11 = [v10 ordinalityOfUnit:16 inUnit:4 forDate:dateCopy];
    data = v11 + 366 * [v10 component:4 fromDate:dateCopy];
    memset(&v15, 0, sizeof(v15));
    CC_SHA256_Init(&v15);
    CC_SHA256_Update(&v15, identifier, 0x10u);
    CC_SHA256_Update(&v15, &data, 4u);
    uTF8String = [telemetryCopy UTF8String];
    v13 = strlen(uTF8String);
    CC_SHA256_Update(&v15, uTF8String, v13);
    CC_SHA256_Final(md, &v15);
    v9 = *md < 0x290u;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)sendContentRequestTelemetryEvent:(id)event
{
  eventCopy = event;
  if (qword_100089C00 != -1)
  {
    sub_10004855C();
  }

  eventName = [eventCopy eventName];
  payload = [eventCopy payload];
  v6 = [payload mutableCopy];

  v7 = [v6 valueForKey:@"BundleIdentifier"];
  if (os_variant_has_internal_diagnostics())
  {
    AnalyticsSendEvent();
    v8 = sub_1000104FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = eventName;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BATelemetrySender: sent %@ event, payload: %@", &v12, 0x16u);
    }
  }

  else
  {
    v9 = +[NSDate date];
    v10 = [BATelemetrySender shouldReportBundleIDInTelemetry:v7 date:v9 deviceIdentifier:&unk_100089BF0];

    if ((v10 & 1) == 0)
    {
      v11 = +[NSNull null];
      [v6 setObject:v11 forKey:@"BundleIdentifier"];
    }

    AnalyticsSendEvent();
  }
}

@end