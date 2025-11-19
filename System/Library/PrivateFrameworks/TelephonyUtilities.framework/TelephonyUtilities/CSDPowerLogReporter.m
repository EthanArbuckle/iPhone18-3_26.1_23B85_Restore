@interface CSDPowerLogReporter
- (CSDPowerLogReporter)init;
- (id)_bundleIdentifierForCall:(id)a3;
- (id)_contextDictionaryWithCall:(id)a3;
- (void)_registerCallBackgroundedEvent;
- (void)_registerCallForegroundedEventForCall:(id)a3;
- (void)_registerCallStartEventForCall:(id)a3;
- (void)_registerCallStopEvent;
- (void)_registerEventWithContext:(id)a3 status:(id)a4;
- (void)_reportScreeningDurationEventForCall:(id)a3;
- (void)_reportScreeningEventForCall:(id)a3;
- (void)_stopScreeningEventIfNecessaryForCall:(id)a3;
- (void)allCallsBackgroundedForReportingController:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reportingController:(id)a3 callEnteredForeground:(id)a4;
- (void)reportingController:(id)a3 didEndSession:(id)a4 startDate:(id)a5 endDate:(id)a6;
- (void)reportingController:(id)a3 statusChangedForCall:(id)a4 totalCallCount:(unint64_t)a5;
@end

@implementation CSDPowerLogReporter

- (CSDPowerLogReporter)init
{
  v10.receiver = self;
  v10.super_class = CSDPowerLogReporter;
  v2 = [(CSDPowerLogReporter *)&v10 init];
  v3 = v2;
  if (v2)
  {
    eventBlock = v2->_eventBlock;
    v2->_eventBlock = &stru_10061C220;

    v5 = objc_alloc_init(NSMutableDictionary);
    screeningCalls = v3->_screeningCalls;
    v3->_screeningCalls = v5;

    systemTimeProvider = v3->_systemTimeProvider;
    v3->_systemTimeProvider = &stru_10061C280;

    v8 = +[NSUserDefaults tu_defaults];
    [v8 addObserver:v3 forKeyPath:TUCallScreeningDisabledKey options:0 context:&off_10061C2A0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSUserDefaults tu_defaults];
  [v3 removeObserver:self forKeyPath:TUCallScreeningDisabledKey context:&off_10061C2A0];

  v4.receiver = self;
  v4.super_class = CSDPowerLogReporter;
  [(CSDPowerLogReporter *)&v4 dealloc];
}

- (void)reportingController:(id)a3 statusChangedForCall:(id)a4 totalCallCount:(unint64_t)a5
{
  v10 = a4;
  v7 = [v10 status];
  if (!v7 || v7 == 6)
  {
    [(CSDPowerLogReporter *)self _stopScreeningEventIfNecessaryForCall:v10];
    v9 = [(CSDPowerLogReporter *)self callStateContext];

    if (!a5 && v9)
    {
      [(CSDPowerLogReporter *)self _registerCallStopEvent];
    }
  }

  else if (v7 == 1)
  {
    v8 = [(CSDPowerLogReporter *)self callStateContext];

    if (v8)
    {
      [(CSDPowerLogReporter *)self _registerCallStopEvent];
    }

    [(CSDPowerLogReporter *)self _registerCallStartEventForCall:v10];
  }
}

- (void)reportingController:(id)a3 callEnteredForeground:(id)a4
{
  v6 = a4;
  v5 = [(CSDPowerLogReporter *)self visibilityContext];

  if (v5)
  {
    [(CSDPowerLogReporter *)self _registerCallBackgroundedEvent];
  }

  [(CSDPowerLogReporter *)self _registerCallForegroundedEventForCall:v6];
}

- (void)allCallsBackgroundedForReportingController:(id)a3
{
  v4 = [(CSDPowerLogReporter *)self visibilityContext];

  if (v4)
  {

    [(CSDPowerLogReporter *)self _registerCallBackgroundedEvent];
  }
}

- (void)reportingController:(id)a3 didEndSession:(id)a4 startDate:(id)a5 endDate:(id)a6
{
  v16 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [v16 activity];
  v12 = [v11 bundleIdentifier];
  v13 = v12;
  if (v9 && v12)
  {

    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = objc_alloc_init(NSMutableDictionary);
    v14 = [v16 activity];
    v15 = [v14 bundleIdentifier];
    [v11 setObject:v15 forKeyedSubscript:@"bundleID"];

    [v11 setObject:v9 forKeyedSubscript:@"timestamp"];
    [v11 setObject:v10 forKeyedSubscript:@"timestampEnd"];
    v13 = [(CSDPowerLogReporter *)self eventBlock];
    (v13)[2](v13, @"GroupSessionEventEnded", v11);
  }

LABEL_6:
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &off_10061C2A0 && [a3 isEqualToString:{TUCallScreeningDisabledKey, a4, a5}])
  {
    v7 = TUCallScreeningDisabledUserDefault() ^ 1;

    [(CSDPowerLogReporter *)self _reportScreeningEnabledEvent:v7];
  }
}

- (void)_registerEventWithContext:(id)a3 status:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10)
  {
    if (v6)
    {
      v7 = [(CSDPowerLogReporter *)self eventBlock];

      if (v7)
      {
        v8 = [v10 mutableCopy];
        [v8 setObject:v6 forKeyedSubscript:@"status"];
        v9 = [(CSDPowerLogReporter *)self eventBlock];
        (v9)[2](v9, @"CallState", v8);
      }
    }
  }
}

- (void)_registerCallStartEventForCall:(id)a3
{
  v4 = [(CSDPowerLogReporter *)self _contextDictionaryWithCall:a3];
  [(CSDPowerLogReporter *)self setCallStateContext:v4];

  v5 = [(CSDPowerLogReporter *)self callStateContext];
  [(CSDPowerLogReporter *)self _registerEventWithContext:v5 status:@"callStart"];
}

- (void)_registerCallStopEvent
{
  v3 = [(CSDPowerLogReporter *)self callStateContext];
  [(CSDPowerLogReporter *)self _registerEventWithContext:v3 status:@"callStop"];

  [(CSDPowerLogReporter *)self setCallStateContext:0];
}

- (void)_registerCallForegroundedEventForCall:(id)a3
{
  v4 = [(CSDPowerLogReporter *)self _contextDictionaryWithCall:a3];
  [(CSDPowerLogReporter *)self setVisibilityContext:v4];

  v5 = [(CSDPowerLogReporter *)self visibilityContext];
  [(CSDPowerLogReporter *)self _registerEventWithContext:v5 status:@"callForegrounded"];
}

- (void)_registerCallBackgroundedEvent
{
  v3 = [(CSDPowerLogReporter *)self visibilityContext];
  [(CSDPowerLogReporter *)self _registerEventWithContext:v3 status:@"callBackgrounded"];

  [(CSDPowerLogReporter *)self setVisibilityContext:0];
}

- (void)_reportScreeningEventForCall:(id)a3
{
  v7 = a3;
  if ([v7 isScreening])
  {
    v4 = [NSNumber numberWithUnsignedLongLong:(*(self->_systemTimeProvider + 2))()];
    v5 = [(CSDPowerLogReporter *)self screeningCalls];
    v6 = [v7 uniqueProxyIdentifier];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }

  else
  {
    [(CSDPowerLogReporter *)self _reportScreeningDurationEventForCall:v7];
  }
}

- (void)_stopScreeningEventIfNecessaryForCall:(id)a3
{
  v9 = a3;
  v4 = [(CSDPowerLogReporter *)self screeningCalls];
  v5 = [v9 uniqueProxyIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    [(CSDPowerLogReporter *)self _reportScreeningDurationEventForCall:v9];
    v7 = [(CSDPowerLogReporter *)self screeningCalls];
    v8 = [v9 uniqueProxyIdentifier];
    [v7 setObject:0 forKeyedSubscript:v8];
  }
}

- (void)_reportScreeningDurationEventForCall:(id)a3
{
  v15 = a3;
  v4 = [(CSDPowerLogReporter *)self screeningCalls];
  v5 = [v15 uniqueProxyIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = (*(self->_systemTimeProvider + 2))();
    v8 = [(CSDPowerLogReporter *)self screeningCalls];
    v9 = [v15 uniqueProxyIdentifier];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = (v7 - [v10 unsignedLongLongValue]);

    v12 = objc_alloc_init(NSMutableDictionary);
    v13 = [NSNumber numberWithDouble:v11 / 1000000000.0];
    [v12 setObject:v13 forKeyedSubscript:@"Duration"];

    v14 = [(CSDPowerLogReporter *)self eventBlock];
    (v14)[2](v14, @"CallScreeningDuration", v12);
  }
}

- (id)_contextDictionaryWithCall:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(CSDPowerLogReporter *)self _bundleIdentifierForCall:v4];
  [v5 setObject:v6 forKeyedSubscript:@"bundleID"];

  v7 = [v4 provider];
  v8 = [v7 identifier];
  [v5 setObject:v8 forKeyedSubscript:@"providerIdentifier"];

  v9 = [v4 provider];
  LOBYTE(v8) = [v9 isFaceTimeProvider];

  if ((v8 & 1) == 0)
  {
    v10 = [v4 providerContext];
    [v5 setObject:v10 forKeyedSubscript:@"providerContext"];
  }

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isVideo]);
  [v5 setObject:v11 forKeyedSubscript:@"video"];

  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isHostedOnCurrentDevice]);
  [v5 setObject:v12 forKeyedSubscript:@"hostedOnCurrentDevice"];

  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isEndpointOnCurrentDevice]);
  [v5 setObject:v13 forKeyedSubscript:@"endpointOnCurrentDevice"];

  return v5;
}

- (id)_bundleIdentifierForCall:(id)a3
{
  v3 = a3;
  v4 = [v3 provider];
  v5 = [v4 isTelephonyProvider];

  if (v5)
  {
    if (+[TUCallCapabilities supportsPrimaryCalling])
    {
      v6 = TUBundleIdentifierMobilePhoneApplication;
LABEL_6:
      v9 = v6;
      goto LABEL_8;
    }

LABEL_5:
    v6 = TUPreferredFaceTimeBundleIdentifier();
    goto LABEL_6;
  }

  v7 = [v3 provider];
  v8 = [v7 isFaceTimeProvider];

  if (v8)
  {
    goto LABEL_5;
  }

  v10 = [v3 provider];
  v9 = [v10 bundleIdentifier];

LABEL_8:

  return v9;
}

@end