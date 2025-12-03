@interface CSDPowerLogReporter
- (CSDPowerLogReporter)init;
- (id)_bundleIdentifierForCall:(id)call;
- (id)_contextDictionaryWithCall:(id)call;
- (void)_registerCallBackgroundedEvent;
- (void)_registerCallForegroundedEventForCall:(id)call;
- (void)_registerCallStartEventForCall:(id)call;
- (void)_registerCallStopEvent;
- (void)_registerEventWithContext:(id)context status:(id)status;
- (void)_reportScreeningDurationEventForCall:(id)call;
- (void)_reportScreeningEventForCall:(id)call;
- (void)_stopScreeningEventIfNecessaryForCall:(id)call;
- (void)allCallsBackgroundedForReportingController:(id)controller;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reportingController:(id)controller callEnteredForeground:(id)foreground;
- (void)reportingController:(id)controller didEndSession:(id)session startDate:(id)date endDate:(id)endDate;
- (void)reportingController:(id)controller statusChangedForCall:(id)call totalCallCount:(unint64_t)count;
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

- (void)reportingController:(id)controller statusChangedForCall:(id)call totalCallCount:(unint64_t)count
{
  callCopy = call;
  status = [callCopy status];
  if (!status || status == 6)
  {
    [(CSDPowerLogReporter *)self _stopScreeningEventIfNecessaryForCall:callCopy];
    callStateContext = [(CSDPowerLogReporter *)self callStateContext];

    if (!count && callStateContext)
    {
      [(CSDPowerLogReporter *)self _registerCallStopEvent];
    }
  }

  else if (status == 1)
  {
    callStateContext2 = [(CSDPowerLogReporter *)self callStateContext];

    if (callStateContext2)
    {
      [(CSDPowerLogReporter *)self _registerCallStopEvent];
    }

    [(CSDPowerLogReporter *)self _registerCallStartEventForCall:callCopy];
  }
}

- (void)reportingController:(id)controller callEnteredForeground:(id)foreground
{
  foregroundCopy = foreground;
  visibilityContext = [(CSDPowerLogReporter *)self visibilityContext];

  if (visibilityContext)
  {
    [(CSDPowerLogReporter *)self _registerCallBackgroundedEvent];
  }

  [(CSDPowerLogReporter *)self _registerCallForegroundedEventForCall:foregroundCopy];
}

- (void)allCallsBackgroundedForReportingController:(id)controller
{
  visibilityContext = [(CSDPowerLogReporter *)self visibilityContext];

  if (visibilityContext)
  {

    [(CSDPowerLogReporter *)self _registerCallBackgroundedEvent];
  }
}

- (void)reportingController:(id)controller didEndSession:(id)session startDate:(id)date endDate:(id)endDate
{
  sessionCopy = session;
  dateCopy = date;
  endDateCopy = endDate;
  activity = [sessionCopy activity];
  bundleIdentifier = [activity bundleIdentifier];
  eventBlock = bundleIdentifier;
  if (dateCopy && bundleIdentifier)
  {

    if (!endDateCopy)
    {
      goto LABEL_6;
    }

    activity = objc_alloc_init(NSMutableDictionary);
    activity2 = [sessionCopy activity];
    bundleIdentifier2 = [activity2 bundleIdentifier];
    [activity setObject:bundleIdentifier2 forKeyedSubscript:@"bundleID"];

    [activity setObject:dateCopy forKeyedSubscript:@"timestamp"];
    [activity setObject:endDateCopy forKeyedSubscript:@"timestampEnd"];
    eventBlock = [(CSDPowerLogReporter *)self eventBlock];
    (eventBlock)[2](eventBlock, @"GroupSessionEventEnded", activity);
  }

LABEL_6:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &off_10061C2A0 && [path isEqualToString:{TUCallScreeningDisabledKey, object, change}])
  {
    v7 = TUCallScreeningDisabledUserDefault() ^ 1;

    [(CSDPowerLogReporter *)self _reportScreeningEnabledEvent:v7];
  }
}

- (void)_registerEventWithContext:(id)context status:(id)status
{
  contextCopy = context;
  statusCopy = status;
  if (contextCopy)
  {
    if (statusCopy)
    {
      eventBlock = [(CSDPowerLogReporter *)self eventBlock];

      if (eventBlock)
      {
        v8 = [contextCopy mutableCopy];
        [v8 setObject:statusCopy forKeyedSubscript:@"status"];
        eventBlock2 = [(CSDPowerLogReporter *)self eventBlock];
        (eventBlock2)[2](eventBlock2, @"CallState", v8);
      }
    }
  }
}

- (void)_registerCallStartEventForCall:(id)call
{
  v4 = [(CSDPowerLogReporter *)self _contextDictionaryWithCall:call];
  [(CSDPowerLogReporter *)self setCallStateContext:v4];

  callStateContext = [(CSDPowerLogReporter *)self callStateContext];
  [(CSDPowerLogReporter *)self _registerEventWithContext:callStateContext status:@"callStart"];
}

- (void)_registerCallStopEvent
{
  callStateContext = [(CSDPowerLogReporter *)self callStateContext];
  [(CSDPowerLogReporter *)self _registerEventWithContext:callStateContext status:@"callStop"];

  [(CSDPowerLogReporter *)self setCallStateContext:0];
}

- (void)_registerCallForegroundedEventForCall:(id)call
{
  v4 = [(CSDPowerLogReporter *)self _contextDictionaryWithCall:call];
  [(CSDPowerLogReporter *)self setVisibilityContext:v4];

  visibilityContext = [(CSDPowerLogReporter *)self visibilityContext];
  [(CSDPowerLogReporter *)self _registerEventWithContext:visibilityContext status:@"callForegrounded"];
}

- (void)_registerCallBackgroundedEvent
{
  visibilityContext = [(CSDPowerLogReporter *)self visibilityContext];
  [(CSDPowerLogReporter *)self _registerEventWithContext:visibilityContext status:@"callBackgrounded"];

  [(CSDPowerLogReporter *)self setVisibilityContext:0];
}

- (void)_reportScreeningEventForCall:(id)call
{
  callCopy = call;
  if ([callCopy isScreening])
  {
    v4 = [NSNumber numberWithUnsignedLongLong:(*(self->_systemTimeProvider + 2))()];
    screeningCalls = [(CSDPowerLogReporter *)self screeningCalls];
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    [screeningCalls setObject:v4 forKeyedSubscript:uniqueProxyIdentifier];
  }

  else
  {
    [(CSDPowerLogReporter *)self _reportScreeningDurationEventForCall:callCopy];
  }
}

- (void)_stopScreeningEventIfNecessaryForCall:(id)call
{
  callCopy = call;
  screeningCalls = [(CSDPowerLogReporter *)self screeningCalls];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v6 = [screeningCalls objectForKeyedSubscript:uniqueProxyIdentifier];

  if (v6)
  {
    [(CSDPowerLogReporter *)self _reportScreeningDurationEventForCall:callCopy];
    screeningCalls2 = [(CSDPowerLogReporter *)self screeningCalls];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    [screeningCalls2 setObject:0 forKeyedSubscript:uniqueProxyIdentifier2];
  }
}

- (void)_reportScreeningDurationEventForCall:(id)call
{
  callCopy = call;
  screeningCalls = [(CSDPowerLogReporter *)self screeningCalls];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v6 = [screeningCalls objectForKeyedSubscript:uniqueProxyIdentifier];

  if (v6)
  {
    v7 = (*(self->_systemTimeProvider + 2))();
    screeningCalls2 = [(CSDPowerLogReporter *)self screeningCalls];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    v10 = [screeningCalls2 objectForKeyedSubscript:uniqueProxyIdentifier2];
    v11 = (v7 - [v10 unsignedLongLongValue]);

    v12 = objc_alloc_init(NSMutableDictionary);
    v13 = [NSNumber numberWithDouble:v11 / 1000000000.0];
    [v12 setObject:v13 forKeyedSubscript:@"Duration"];

    eventBlock = [(CSDPowerLogReporter *)self eventBlock];
    (eventBlock)[2](eventBlock, @"CallScreeningDuration", v12);
  }
}

- (id)_contextDictionaryWithCall:(id)call
{
  callCopy = call;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(CSDPowerLogReporter *)self _bundleIdentifierForCall:callCopy];
  [v5 setObject:v6 forKeyedSubscript:@"bundleID"];

  provider = [callCopy provider];
  identifier = [provider identifier];
  [v5 setObject:identifier forKeyedSubscript:@"providerIdentifier"];

  provider2 = [callCopy provider];
  LOBYTE(identifier) = [provider2 isFaceTimeProvider];

  if ((identifier & 1) == 0)
  {
    providerContext = [callCopy providerContext];
    [v5 setObject:providerContext forKeyedSubscript:@"providerContext"];
  }

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [callCopy isVideo]);
  [v5 setObject:v11 forKeyedSubscript:@"video"];

  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [callCopy isHostedOnCurrentDevice]);
  [v5 setObject:v12 forKeyedSubscript:@"hostedOnCurrentDevice"];

  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [callCopy isEndpointOnCurrentDevice]);
  [v5 setObject:v13 forKeyedSubscript:@"endpointOnCurrentDevice"];

  return v5;
}

- (id)_bundleIdentifierForCall:(id)call
{
  callCopy = call;
  provider = [callCopy provider];
  isTelephonyProvider = [provider isTelephonyProvider];

  if (isTelephonyProvider)
  {
    if (+[TUCallCapabilities supportsPrimaryCalling])
    {
      v6 = TUBundleIdentifierMobilePhoneApplication;
LABEL_6:
      bundleIdentifier = v6;
      goto LABEL_8;
    }

LABEL_5:
    v6 = TUPreferredFaceTimeBundleIdentifier();
    goto LABEL_6;
  }

  provider2 = [callCopy provider];
  isFaceTimeProvider = [provider2 isFaceTimeProvider];

  if (isFaceTimeProvider)
  {
    goto LABEL_5;
  }

  provider3 = [callCopy provider];
  bundleIdentifier = [provider3 bundleIdentifier];

LABEL_8:

  return bundleIdentifier;
}

@end