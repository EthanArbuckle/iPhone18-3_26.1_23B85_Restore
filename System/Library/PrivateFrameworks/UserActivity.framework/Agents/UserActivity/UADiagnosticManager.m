@interface UADiagnosticManager
+ (id)sharedManager;
- (UADiagnosticManager)init;
- (id)firstPartyActivityTypeOrUnknown:(id)a3;
- (void)submitDidSendLocalPasteboard:(id)a3;
- (void)submitRemotePasteboardBecameAvailable;
- (void)submitRemotePasteboardBecameUnavailable:(unint64_t)a3;
- (void)submitRemotePasteboardTypeInfoRequested:(id)a3;
- (void)submitRemotePasteboardWasRequested:(id)a3;
- (void)submitUserActivityBecameCurrent:(id)a3 withToken:(id *)a4;
- (void)submitUserActivityWasContinuedInfo:(id)a3;
- (void)submitUserActivityWasDiscovered:(id)a3;
- (void)submitUserActivityWasSuggestedInfo:(id)a3;
@end

@implementation UADiagnosticManager

+ (id)sharedManager
{
  if (qword_1000E5D00 != -1)
  {
    sub_10007BDC8();
  }

  v3 = qword_1000E5CF8;

  return v3;
}

- (UADiagnosticManager)init
{
  v3.receiver = self;
  v3.super_class = UADiagnosticManager;
  return [(UADiagnosticManager *)&v3 init];
}

- (void)submitUserActivityBecameCurrent:(id)a3 withToken:(id *)a4
{
  v6 = a3;
  if (!a4 || (v7 = *&a4->var0[4], v12[0] = *a4->var0, v12[1] = v7, sub_100001FA4(v12), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = @"unknown";
  }

  v9 = objc_alloc_init(UAActivityBecameCurrentEvent);
  v10 = [(UADiagnosticManager *)self firstPartyActivityTypeOrUnknown:v6];
  [(UAActivityBecameCurrentEvent *)v9 setActivityType:v10];

  [(UAActivityBecameCurrentEvent *)v9 setBundleIdentifier:v8];
  [(UAAnalyticsEvent *)v9 sendEvent];
  v11 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LODWORD(v12[0]) = 138477827;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Submitted UAActivityBecameCurrentEvent: %{private}@", v12, 0xCu);
  }
}

- (void)submitUserActivityWasDiscovered:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UAActivityWasDiscoveredEvent);
  v6 = [(UADiagnosticManager *)self firstPartyActivityTypeOrUnknown:v4];

  [(UAActivityWasDiscoveredEvent *)v5 setActivityType:v6];
  [(UAAnalyticsEvent *)v5 sendEvent];
  v7 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138477827;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Submitted UAActivityWasDiscoveredEvent: %{private}@", &v8, 0xCu);
  }
}

- (void)submitUserActivityWasSuggestedInfo:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[UAActivityWasSuggestedEvent alloc] initWithAnalyticsInfo:v3];

    [(UAActivityWasSuggestedEvent *)v4 sendEvent];
    v5 = sub_100001A30(@"Diagnostic");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138477827;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Submitted UAActivityWasSuggestedEvent: %{private}@", &v6, 0xCu);
    }
  }
}

- (void)submitUserActivityWasContinuedInfo:(id)a3
{
  v3 = a3;
  if (([v3 payloadRequested] & 1) != 0 || !objc_msgSend(v3, "isCancelled"))
  {
    v4 = [[UAActivityWasContinuedEvent alloc] initWithAnalyticsInfo:v3];
    [(UAAnalyticsEvent *)v4 sendEvent];
    v5 = sub_100001A30(@"Diagnostic");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v3 uuid];
      v7 = 138412547;
      v8 = v6;
      v9 = 2113;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Submitted UAActivityWasContinuedEvent for %@: %{private}@", &v7, 0x16u);
    }
  }

  else
  {
    v4 = sub_100001A30(@"Diagnostic");
    if (os_log_type_enabled(&v4->super.super, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, &v4->super.super, OS_LOG_TYPE_INFO, "Not reporting activity was continued becasuse payload was never requested.", &v7, 2u);
    }
  }
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

- (void)submitRemotePasteboardWasRequested:(id)a3
{
  v3 = a3;
  [v3 sendEvent];
  v4 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 description];
    v6 = sub_100009684(v5);
    v7 = 138477827;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Submitted UARemotePasteboardWasRequestedEvent: %{private}@", &v7, 0xCu);
  }
}

- (void)submitDidSendLocalPasteboard:(id)a3
{
  v3 = a3;
  [v3 sendEvent];
  v4 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 description];
    v6 = sub_100009684(v5);
    v7 = 138477827;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Submitted UARemotePasteboardDidSendLocalEvent: %{private}@", &v7, 0xCu);
  }
}

- (void)submitRemotePasteboardTypeInfoRequested:(id)a3
{
  v3 = a3;
  [v3 sendEvent];
  v4 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 description];
    v6 = sub_100009684(v5);
    v7 = 138477827;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Submitted UARemotePasteboardTypeInfoRequestedEvent: %{private}@", &v7, 0xCu);
  }
}

- (void)submitRemotePasteboardBecameAvailable
{
  v2 = objc_alloc_init(UARemotePasteboardBecameAvailableEvent);
  [(UAAnalyticsEvent *)v2 sendEvent];
  v3 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(UAAnalyticsEvent *)v2 description];
    v5 = sub_100009684(v4);
    v6 = 138477827;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Submitted UARemotePasteboardBecameAvailableEvent: %{private}@", &v6, 0xCu);
  }
}

- (void)submitRemotePasteboardBecameUnavailable:(unint64_t)a3
{
  v4 = objc_alloc_init(UARemotePasteboardBecameUnavailableEvent);
  [(UARemotePasteboardBecameUnavailableEvent *)v4 setReason:a3];
  [(UAAnalyticsEvent *)v4 sendEvent];
  v5 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138477827;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Submitted UARemotePasteboardBecameUnavailableEvent: %{private}@", &v6, 0xCu);
  }
}

@end