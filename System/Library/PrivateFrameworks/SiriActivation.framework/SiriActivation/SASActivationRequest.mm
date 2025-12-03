@interface SASActivationRequest
+ (int64_t)requestSourceForButtonIdentifier:(int64_t)identifier;
- (BOOL)isBluetoothRequest;
- (BOOL)isEyesFreeRequestSource;
- (BOOL)isQuickTypeGestureEnabled;
- (BOOL)isRemoteDisplayVoiceRequest;
- (BOOL)isTestingRequest;
- (BOOL)isUIFreeRequestSource;
- (BOOL)isVoiceRequest;
- (SASActivationRequest)init;
- (SASActivationRequest)initWithBluetoothKeyboardShortcutActivation:(int64_t)activation;
- (SASActivationRequest)initWithBreadcrumbRequest;
- (SASActivationRequest)initWithButtonIdentifier:(int64_t)identifier context:(id)context;
- (SASActivationRequest)initWithContinuityContext:(id)context;
- (SASActivationRequest)initWithContinuousConversationContext:(id)context;
- (SASActivationRequest)initWithContinuousConversationHearstContext:(id)context;
- (SASActivationRequest)initWithContinuousConversationJarvisContext:(id)context;
- (SASActivationRequest)initWithDirectActionContext:(id)context;
- (SASActivationRequest)initWithRemotePresentationBringUpContext:(id)context;
- (SASActivationRequest)initWithSimpleActivation:(int64_t)activation;
- (SASActivationRequest)initWithSpotlightContext:(id)context;
- (SASActivationRequest)initWithTestingContext:(id)context;
- (SASActivationRequest)initWithTostadaContext:(id)context;
- (SASActivationRequest)initWithVocalShortcutContext:(id)context;
- (SASActivationRequest)initWithVoiceTriggerContext:(id)context;
- (SASActivationRequest)initWithVoiceTriggerRequest;
- (double)buttonDownTimestamp;
- (double)computedActivationTime;
- (id)description;
- (id)eventSource;
- (int64_t)longPressBehavior;
- (void)computedActivationTime;
@end

@implementation SASActivationRequest

- (id)eventSource
{
  v2 = SASRequestSourceGetName([(SASActivationRequest *)self requestSource]);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F47C3998;
  }

  v5 = v4;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(SASActivationRequest *)self activationEvent];
  v4 = AFActivationEventGetDescription();
  eventSource = [(SASActivationRequest *)self eventSource];
  context = [(SASActivationRequest *)self context];
  v7 = [v3 stringWithFormat:@"event = AFActivationEvent%@ source = %@; context: %@", v4, eventSource, context];;

  return v7;
}

- (BOOL)isUIFreeRequestSource
{
  if ([(SASActivationRequest *)self activationType]!= 3)
  {
    return 0;
  }

  context = [(SASActivationRequest *)self context];
  requestInfo = [context requestInfo];
  activationEvent = [requestInfo activationEvent];

  if (activationEvent <= 0xA && ((1 << activationEvent) & 0x640) != 0)
  {
    v7 = 1;
  }

  else
  {
    requestInfo = [context requestInfo];
    speechRequestOptions = [requestInfo speechRequestOptions];
    v7 = [speechRequestOptions activationEvent] == 17;
  }

  if (activationEvent > 0xA || ((1 << activationEvent) & 0x640) == 0)
  {
  }

  return v7;
}

- (BOOL)isVoiceRequest
{
  context = [(SASActivationRequest *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    context2 = [(SASActivationRequest *)self context];
    requestInfo = [context2 requestInfo];
    speechRequestOptions = [requestInfo speechRequestOptions];

    if ([speechRequestOptions isVoiceTrigger])
    {
      v8 = [speechRequestOptions activationEvent] == 8 || objc_msgSend(speechRequestOptions, "activationEvent") == 16;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return [(SASActivationRequest *)self activationType]== 1 || v8;
}

- (double)computedActivationTime
{
  v39 = *MEMORY[0x1E69E9840];
  if (![(SASActivationRequest *)self isDeviceButtonRequest]|| !AFDeviceSupportsZLL())
  {
LABEL_15:
    [(SASActivationRequest *)self activationTime];
    v14 = v13;
    goto LABEL_16;
  }

  self->_waketimeMIBSize = 48;
  p_waketimeMIBSize = &self->_waketimeMIBSize;
  v4 = sysctlnametomib("kern.waketime", self->_waketimeMIB, &self->_waketimeMIBSize);
  v5 = MEMORY[0x1E698D0A0];
  if (v4)
  {
    v6 = v4;
    v7 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [(SASActivationRequest *)v7 computedActivationTime];
    }

    *p_waketimeMIBSize = 0;
  }

  v8 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "[SASActivationRequest computedActivationTime]";
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s Device wants Home Button ZLL, checking wake time", buf, 0xCu);
  }

  v33 = 0;
  v34 = 0;
  v32 = 16;
  if (*p_waketimeMIBSize)
  {
    v9 = sysctl(self->_waketimeMIB, *p_waketimeMIBSize, &v33, &v32, 0, 0);
  }

  else
  {
    v9 = sysctlbyname("kern.waketime", &v33, &v32, 0, 0);
  }

  v10 = v9;
  [(SASActivationRequest *)self buttonDownTimestamp];
  if (v10)
  {
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      [(SASActivationRequest *)v12 computedActivationTime];
    }

    goto LABEL_15;
  }

  v14 = v11;
  v17 = v33 + (v34 / 0xF4240uLL);
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v20 = v19 - v17;

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  v23 = v22;

  v24 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[SASActivationRequest computedActivationTime]";
    v37 = 2048;
    v38 = v20;
    _os_log_impl(&dword_1C8137000, v24, OS_LOG_TYPE_DEFAULT, "%s Wake time was %lf seconds ago", buf, 0x16u);
  }

  v25 = v23 - v14;
  v26 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[SASActivationRequest computedActivationTime]";
    v37 = 2048;
    v38 = v25;
    _os_log_impl(&dword_1C8137000, v26, OS_LOG_TYPE_DEFAULT, "%s Button down time was %lf seconds ago", buf, 0x16u);
  }

  v27 = v20 - v25;
  v28 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[SASActivationRequest computedActivationTime]";
    v37 = 2048;
    v38 = v27;
    _os_log_impl(&dword_1C8137000, v28, OS_LOG_TYPE_DEFAULT, "%s Wake -> Button down delta is %lf", buf, 0x16u);
  }

  v29 = *v5;
  v30 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
  if (v27 > 0.0 && v27 < 0.75)
  {
    if (v30)
    {
      *buf = 136315138;
      v36 = "[SASActivationRequest computedActivationTime]";
      _os_log_impl(&dword_1C8137000, v29, OS_LOG_TYPE_DEFAULT, "%s Using Wake Time", buf, 0xCu);
    }

    v14 = v14 - v27;
  }

  else if (v30)
  {
    *buf = 136315138;
    v36 = "[SASActivationRequest computedActivationTime]";
    _os_log_impl(&dword_1C8137000, v29, OS_LOG_TYPE_DEFAULT, "%s Using Button Down Time", buf, 0xCu);
  }

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)isBluetoothRequest
{
  context = [(SASActivationRequest *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isTestingRequest
{
  requestSource = [(SASActivationRequest *)self requestSource];

  return SASRequestSourceIsTesting(requestSource);
}

- (SASActivationRequest)init
{
  v5.receiver = self;
  v5.super_class = SASActivationRequest;
  v2 = [(SASActivationRequest *)&v5 init];
  if (v2)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v2 setActivationTime:?];
  }

  return v2;
}

- (SASActivationRequest)initWithButtonIdentifier:(int64_t)identifier context:(id)context
{
  contextCopy = context;
  v7 = objc_alloc_init(SASButtonActvationRequest);

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [contextCopy buttonDownTimestamp];
      [(SASActivationRequest *)v7 setButtonDownTime:?];
    }

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v7 setActivationTime:?];

    [(SASActivationRequest *)v7 setActivationType:0];
    [(SASButtonActvationRequest *)v7 setButtonIdentifier:identifier];
    [(SASActivationRequest *)v7 setRequestSource:[SASActivationRequest requestSourceForButtonIdentifier:identifier]];
    [(SASActivationRequest *)v7 setContext:contextCopy];
  }

  return &v7->super;
}

- (SASActivationRequest)initWithDirectActionContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v11 init];
  if (v5)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:2];
    [(SASActivationRequest *)v5 setActivationEvent:2];
    bulletin = [contextCopy bulletin];
    if (bulletin)
    {

      v8 = 13;
    }

    else
    {
      notification = [contextCopy notification];

      if (notification)
      {
        v8 = 13;
      }

      else
      {
        v8 = 14;
      }
    }

    [(SASActivationRequest *)v5 setRequestSource:v8];
    [(SASActivationRequest *)v5 setContext:contextCopy];
  }

  return v5;
}

- (SASActivationRequest)initWithContinuityContext:(id)context
{
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v22 init];
  v6 = v5;
  if (v5)
  {
    [(SASActivationRequest *)v5 setActivationType:3];
    [(SASActivationRequest *)v6 setContext:contextCopy];
    requestInfo = [contextCopy requestInfo];
    speechRequestOptions = [requestInfo speechRequestOptions];
    activationEvent = [speechRequestOptions activationEvent];

    requestInfo2 = [contextCopy requestInfo];
    speechRequestOptions2 = [requestInfo2 speechRequestOptions];
    v12 = speechRequestOptions2;
    if (activationEvent == 17)
    {
      [speechRequestOptions2 activationEventTime];
      [(SASActivationRequest *)v6 setActivationTime:?];

      [(SASActivationRequest *)v6 setRequestSource:27];
      [(SASActivationRequest *)v6 setActivationEvent:3];
    }

    else
    {
      activationEvent2 = [speechRequestOptions2 activationEvent];

      requestInfo3 = [contextCopy requestInfo];
      speechRequestOptions3 = [requestInfo3 speechRequestOptions];
      v16 = speechRequestOptions3;
      if (activationEvent2 == 16)
      {
        [speechRequestOptions3 activationEventTime];
        [(SASActivationRequest *)v6 setActivationTime:?];

        v17 = v6;
        v18 = 45;
      }

      else
      {
        activationEvent3 = [speechRequestOptions3 activationEvent];

        processInfo = [MEMORY[0x1E696AE30] processInfo];
        [processInfo systemUptime];
        [(SASActivationRequest *)v6 setActivationTime:?];

        v17 = v6;
        if (activationEvent3 == 5)
        {
          v18 = 9;
        }

        else
        {
          v18 = 19;
        }
      }

      [(SASActivationRequest *)v17 setRequestSource:v18];
    }
  }

  return v6;
}

- (SASActivationRequest)initWithVoiceTriggerContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v8 init];
  if (v5)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:1];
    [(SASActivationRequest *)v5 setRequestSource:8];
    [(SASActivationRequest *)v5 setContext:contextCopy];
  }

  return v5;
}

- (SASActivationRequest)initWithContinuousConversationContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v8 init];
  if (v5)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:9];
    [(SASActivationRequest *)v5 setRequestSource:39];
    [(SASActivationRequest *)v5 setContext:contextCopy];
  }

  return v5;
}

- (SASActivationRequest)initWithContinuousConversationHearstContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v8 init];
  if (v5)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:9];
    [(SASActivationRequest *)v5 setRequestSource:46];
    [(SASActivationRequest *)v5 setContext:contextCopy];
  }

  return v5;
}

- (SASActivationRequest)initWithContinuousConversationJarvisContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v8 init];
  if (v5)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:9];
    [(SASActivationRequest *)v5 setRequestSource:47];
    [(SASActivationRequest *)v5 setContext:contextCopy];
  }

  return v5;
}

- (SASActivationRequest)initWithRemotePresentationBringUpContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v8 init];
  if (v5)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:10];
    [(SASActivationRequest *)v5 setRequestSource:40];
    [(SASActivationRequest *)v5 setContext:contextCopy];
  }

  return v5;
}

- (SASActivationRequest)initWithBreadcrumbRequest
{
  v5.receiver = self;
  v5.super_class = SASActivationRequest;
  v2 = [(SASActivationRequest *)&v5 init];
  if (v2)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v2 setActivationTime:?];

    [(SASActivationRequest *)v2 setActivationType:4];
    [(SASActivationRequest *)v2 setRequestSource:21];
  }

  return v2;
}

- (SASActivationRequest)initWithSimpleActivation:(int64_t)activation
{
  v7.receiver = self;
  v7.super_class = SASActivationRequest;
  v4 = [(SASActivationRequest *)&v7 init];
  if (v4)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v4 setActivationTime:?];

    [(SASActivationRequest *)v4 setActivationType:5];
    [(SASActivationRequest *)v4 setRequestSource:activation];
  }

  return v4;
}

- (SASActivationRequest)initWithBluetoothKeyboardShortcutActivation:(int64_t)activation
{
  v7.receiver = self;
  v7.super_class = SASActivationRequest;
  v4 = [(SASActivationRequest *)&v7 init];
  if (v4)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v4 setActivationTime:?];

    [(SASActivationRequest *)v4 setActivationType:8];
    [(SASActivationRequest *)v4 setRequestSource:activation];
  }

  return v4;
}

- (SASActivationRequest)initWithSpotlightContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v10 init];
  if (v5)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:6];
    source = [contextCopy source];
    if (source)
    {
      if (source != 1)
      {
LABEL_7:
        [(SASActivationRequest *)v5 setContext:contextCopy];
        goto LABEL_8;
      }

      v8 = 26;
    }

    else
    {
      v8 = 25;
    }

    [(SASActivationRequest *)v5 setRequestSource:v8];
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (SASActivationRequest)initWithVocalShortcutContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v8 init];
  if (v5)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:11];
    [(SASActivationRequest *)v5 setRequestSource:52];
    [(SASActivationRequest *)v5 setContext:contextCopy];
  }

  return v5;
}

- (SASActivationRequest)initWithVoiceTriggerRequest
{
  v5.receiver = self;
  v5.super_class = SASActivationRequest;
  v2 = [(SASActivationRequest *)&v5 init];
  if (v2)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v2 setActivationTime:?];

    [(SASActivationRequest *)v2 setActivationType:1];
    [(SASActivationRequest *)v2 setRequestSource:8];
  }

  return v2;
}

- (SASActivationRequest)initWithTestingContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v11 init];
  if (v5)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:7];
    testingContext = [contextCopy testingContext];
    v8 = [testingContext objectForKey:@"testName"];

    if ([v8 isEqualToString:@"SiriBringupToTyping"])
    {
      v9 = 16;
    }

    else
    {
      v9 = 15;
    }

    [(SASActivationRequest *)v5 setRequestSource:v9];
    [(SASActivationRequest *)v5 setContext:contextCopy];
  }

  return v5;
}

- (SASActivationRequest)initWithTostadaContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v8 init];
  if (v5)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:12];
    [(SASActivationRequest *)v5 setRequestSource:54];
    [(SASActivationRequest *)v5 setContext:contextCopy];
  }

  return v5;
}

- (double)buttonDownTimestamp
{
  v16 = *MEMORY[0x1E69E9840];
  context = [(SASActivationRequest *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = 0.0;
  if (isKindOfClass)
  {
    context2 = [(SASActivationRequest *)self context];
    [context2 buttonDownTimestamp];
    v8 = v7;

    v5 = SiriSystemUpTimeFromCFAbsoluteCurrentTime(v8);
    if (v5 < 0.0)
    {
      v9 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315138;
        v15 = "[SASActivationRequest buttonDownTimestamp]";
        _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s button down timestamp sent in format where absolute time conversion is invalid", &v14, 0xCu);
      }

      context3 = [(SASActivationRequest *)self context];
      [context3 buttonDownTimestamp];
      v5 = v11;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (int64_t)longPressBehavior
{
  context = [(SASActivationRequest *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return -1;
  }

  context2 = [(SASActivationRequest *)self context];
  longPressBehavior = [context2 longPressBehavior];

  return longPressBehavior;
}

- (BOOL)isRemoteDisplayVoiceRequest
{
  context = [(SASActivationRequest *)self context];
  speechRequestOptions = [context speechRequestOptions];

  if (speechRequestOptions)
  {
    v4 = [speechRequestOptions activationEvent] == 31;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEyesFreeRequestSource
{
  context = [(SASActivationRequest *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  context2 = [(SASActivationRequest *)self context];
  isEyesFree = [context2 isEyesFree];

  return isEyesFree;
}

- (BOOL)isQuickTypeGestureEnabled
{
  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  quickTypeGestureEnabled = [mEMORY[0x1E698D1C0] quickTypeGestureEnabled];

  return quickTypeGestureEnabled;
}

+ (int64_t)requestSourceForButtonIdentifier:(int64_t)identifier
{
  if (identifier <= 6)
  {
    v3 = 10;
    v11 = 44;
    if (identifier != 6)
    {
      v11 = 0;
    }

    if (identifier != 5)
    {
      v3 = v11;
    }

    if (identifier == 4)
    {
      v3 = 4;
    }

    v7 = 5;
    if (identifier != 3)
    {
      v7 = 0;
    }

    if (identifier == 2)
    {
      v7 = 2;
    }

    if (identifier == 1)
    {
      v7 = 1;
    }

    v10 = identifier <= 3;
  }

  else
  {
    v3 = 15;
    v4 = 23;
    if (identifier != 201)
    {
      v4 = 0;
    }

    if (identifier != 200)
    {
      v3 = v4;
    }

    v5 = 1;
    v6 = 10;
    if (identifier != 101)
    {
      v6 = 0;
    }

    if (identifier != 100)
    {
      v5 = v6;
    }

    if (identifier <= 199)
    {
      v3 = v5;
    }

    v7 = 17;
    v8 = 37;
    v9 = 29;
    if (identifier != 9)
    {
      v9 = 0;
    }

    if (identifier != 8)
    {
      v8 = v9;
    }

    if (identifier != 7)
    {
      v7 = v8;
    }

    v10 = identifier <= 99;
  }

  if (v10)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

- (void)computedActivationTime
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  strerror(a2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1C8137000, v4, v5, "%s Failed looking up waketime %{public}s", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

@end