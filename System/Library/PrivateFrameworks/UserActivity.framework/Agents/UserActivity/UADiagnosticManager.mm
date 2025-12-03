@interface UADiagnosticManager
+ (id)sharedManager;
- (UADiagnosticManager)init;
- (id)firstPartyActivityTypeOrUnknown:(id)unknown;
- (void)submitDidSendLocalPasteboard:(id)pasteboard;
- (void)submitRemotePasteboardBecameAvailable;
- (void)submitRemotePasteboardBecameUnavailable:(unint64_t)unavailable;
- (void)submitRemotePasteboardTypeInfoRequested:(id)requested;
- (void)submitRemotePasteboardWasRequested:(id)requested;
- (void)submitUserActivityBecameCurrent:(id)current withToken:(id *)token;
- (void)submitUserActivityWasContinuedInfo:(id)info;
- (void)submitUserActivityWasDiscovered:(id)discovered;
- (void)submitUserActivityWasSuggestedInfo:(id)info;
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

- (void)submitUserActivityBecameCurrent:(id)current withToken:(id *)token
{
  currentCopy = current;
  if (!token || (v7 = *&token->var0[4], v12[0] = *token->var0, v12[1] = v7, sub_100001FA4(v12), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = @"unknown";
  }

  v9 = objc_alloc_init(UAActivityBecameCurrentEvent);
  v10 = [(UADiagnosticManager *)self firstPartyActivityTypeOrUnknown:currentCopy];
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

- (void)submitUserActivityWasDiscovered:(id)discovered
{
  discoveredCopy = discovered;
  v5 = objc_alloc_init(UAActivityWasDiscoveredEvent);
  v6 = [(UADiagnosticManager *)self firstPartyActivityTypeOrUnknown:discoveredCopy];

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

- (void)submitUserActivityWasSuggestedInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
    v4 = [[UAActivityWasSuggestedEvent alloc] initWithAnalyticsInfo:infoCopy];

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

- (void)submitUserActivityWasContinuedInfo:(id)info
{
  infoCopy = info;
  if (([infoCopy payloadRequested] & 1) != 0 || !objc_msgSend(infoCopy, "isCancelled"))
  {
    v4 = [[UAActivityWasContinuedEvent alloc] initWithAnalyticsInfo:infoCopy];
    [(UAAnalyticsEvent *)v4 sendEvent];
    v5 = sub_100001A30(@"Diagnostic");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      uuid = [infoCopy uuid];
      v7 = 138412547;
      v8 = uuid;
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

- (void)submitRemotePasteboardWasRequested:(id)requested
{
  requestedCopy = requested;
  [requestedCopy sendEvent];
  v4 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [requestedCopy description];
    v6 = sub_100009684(v5);
    v7 = 138477827;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Submitted UARemotePasteboardWasRequestedEvent: %{private}@", &v7, 0xCu);
  }
}

- (void)submitDidSendLocalPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  [pasteboardCopy sendEvent];
  v4 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [pasteboardCopy description];
    v6 = sub_100009684(v5);
    v7 = 138477827;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Submitted UARemotePasteboardDidSendLocalEvent: %{private}@", &v7, 0xCu);
  }
}

- (void)submitRemotePasteboardTypeInfoRequested:(id)requested
{
  requestedCopy = requested;
  [requestedCopy sendEvent];
  v4 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [requestedCopy description];
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

- (void)submitRemotePasteboardBecameUnavailable:(unint64_t)unavailable
{
  v4 = objc_alloc_init(UARemotePasteboardBecameUnavailableEvent);
  [(UARemotePasteboardBecameUnavailableEvent *)v4 setReason:unavailable];
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