@interface BATelemetrySender
+ (BOOL)shouldReportBundleIDInTelemetry:(id)a3 date:(id)a4 deviceIdentifier:(unsigned __int8)a5[16];
+ (void)sendContentRequestTelemetryEvent:(id)a3;
@end

@implementation BATelemetrySender

+ (BOOL)shouldReportBundleIDInTelemetry:(id)a3 date:(id)a4 deviceIdentifier:(unsigned __int8)a5[16]
{
  v7 = a3;
  v8 = a4;
  if (v7 && ([v7 isEqualToString:&stru_10007B210] & 1) == 0)
  {
    v10 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v11 = [v10 ordinalityOfUnit:16 inUnit:4 forDate:v8];
    data = v11 + 366 * [v10 component:4 fromDate:v8];
    memset(&v15, 0, sizeof(v15));
    CC_SHA256_Init(&v15);
    CC_SHA256_Update(&v15, a5, 0x10u);
    CC_SHA256_Update(&v15, &data, 4u);
    v12 = [v7 UTF8String];
    v13 = strlen(v12);
    CC_SHA256_Update(&v15, v12, v13);
    CC_SHA256_Final(md, &v15);
    v9 = *md < 0x290u;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)sendContentRequestTelemetryEvent:(id)a3
{
  v3 = a3;
  if (qword_100089C00 != -1)
  {
    sub_10004855C();
  }

  v4 = [v3 eventName];
  v5 = [v3 payload];
  v6 = [v5 mutableCopy];

  v7 = [v6 valueForKey:@"BundleIdentifier"];
  if (os_variant_has_internal_diagnostics())
  {
    AnalyticsSendEvent();
    v8 = sub_1000104FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v4;
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