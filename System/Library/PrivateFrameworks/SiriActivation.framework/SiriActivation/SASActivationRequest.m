@interface SASActivationRequest
+ (int64_t)requestSourceForButtonIdentifier:(int64_t)a3;
- (BOOL)isBluetoothRequest;
- (BOOL)isEyesFreeRequestSource;
- (BOOL)isQuickTypeGestureEnabled;
- (BOOL)isRemoteDisplayVoiceRequest;
- (BOOL)isTestingRequest;
- (BOOL)isUIFreeRequestSource;
- (BOOL)isVoiceRequest;
- (SASActivationRequest)init;
- (SASActivationRequest)initWithBluetoothKeyboardShortcutActivation:(int64_t)a3;
- (SASActivationRequest)initWithBreadcrumbRequest;
- (SASActivationRequest)initWithButtonIdentifier:(int64_t)a3 context:(id)a4;
- (SASActivationRequest)initWithContinuityContext:(id)a3;
- (SASActivationRequest)initWithContinuousConversationContext:(id)a3;
- (SASActivationRequest)initWithContinuousConversationHearstContext:(id)a3;
- (SASActivationRequest)initWithContinuousConversationJarvisContext:(id)a3;
- (SASActivationRequest)initWithDirectActionContext:(id)a3;
- (SASActivationRequest)initWithRemotePresentationBringUpContext:(id)a3;
- (SASActivationRequest)initWithSimpleActivation:(int64_t)a3;
- (SASActivationRequest)initWithSpotlightContext:(id)a3;
- (SASActivationRequest)initWithTestingContext:(id)a3;
- (SASActivationRequest)initWithTostadaContext:(id)a3;
- (SASActivationRequest)initWithVocalShortcutContext:(id)a3;
- (SASActivationRequest)initWithVoiceTriggerContext:(id)a3;
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
  v5 = [(SASActivationRequest *)self eventSource];
  v6 = [(SASActivationRequest *)self context];
  v7 = [v3 stringWithFormat:@"event = AFActivationEvent%@ source = %@; context: %@", v4, v5, v6];;

  return v7;
}

- (BOOL)isUIFreeRequestSource
{
  if ([(SASActivationRequest *)self activationType]!= 3)
  {
    return 0;
  }

  v4 = [(SASActivationRequest *)self context];
  v5 = [v4 requestInfo];
  v6 = [v5 activationEvent];

  if (v6 <= 0xA && ((1 << v6) & 0x640) != 0)
  {
    v7 = 1;
  }

  else
  {
    v5 = [v4 requestInfo];
    v2 = [v5 speechRequestOptions];
    v7 = [v2 activationEvent] == 17;
  }

  if (v6 > 0xA || ((1 << v6) & 0x640) == 0)
  {
  }

  return v7;
}

- (BOOL)isVoiceRequest
{
  v3 = [(SASActivationRequest *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(SASActivationRequest *)self context];
    v6 = [v5 requestInfo];
    v7 = [v6 speechRequestOptions];

    if ([v7 isVoiceTrigger])
    {
      v8 = [v7 activationEvent] == 8 || objc_msgSend(v7, "activationEvent") == 16;
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
  v18 = [MEMORY[0x1E695DF00] date];
  [v18 timeIntervalSince1970];
  v20 = v19 - v17;

  v21 = [MEMORY[0x1E696AE30] processInfo];
  [v21 systemUptime];
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
  v2 = [(SASActivationRequest *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isTestingRequest
{
  v2 = [(SASActivationRequest *)self requestSource];

  return SASRequestSourceIsTesting(v2);
}

- (SASActivationRequest)init
{
  v5.receiver = self;
  v5.super_class = SASActivationRequest;
  v2 = [(SASActivationRequest *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    [v3 systemUptime];
    [(SASActivationRequest *)v2 setActivationTime:?];
  }

  return v2;
}

- (SASActivationRequest)initWithButtonIdentifier:(int64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(SASButtonActvationRequest);

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 buttonDownTimestamp];
      [(SASActivationRequest *)v7 setButtonDownTime:?];
    }

    v8 = [MEMORY[0x1E696AE30] processInfo];
    [v8 systemUptime];
    [(SASActivationRequest *)v7 setActivationTime:?];

    [(SASActivationRequest *)v7 setActivationType:0];
    [(SASButtonActvationRequest *)v7 setButtonIdentifier:a3];
    [(SASActivationRequest *)v7 setRequestSource:[SASActivationRequest requestSourceForButtonIdentifier:a3]];
    [(SASActivationRequest *)v7 setContext:v6];
  }

  return &v7->super;
}

- (SASActivationRequest)initWithDirectActionContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    [v6 systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:2];
    [(SASActivationRequest *)v5 setActivationEvent:2];
    v7 = [v4 bulletin];
    if (v7)
    {

      v8 = 13;
    }

    else
    {
      v9 = [v4 notification];

      if (v9)
      {
        v8 = 13;
      }

      else
      {
        v8 = 14;
      }
    }

    [(SASActivationRequest *)v5 setRequestSource:v8];
    [(SASActivationRequest *)v5 setContext:v4];
  }

  return v5;
}

- (SASActivationRequest)initWithContinuityContext:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v22 init];
  v6 = v5;
  if (v5)
  {
    [(SASActivationRequest *)v5 setActivationType:3];
    [(SASActivationRequest *)v6 setContext:v4];
    v7 = [v4 requestInfo];
    v8 = [v7 speechRequestOptions];
    v9 = [v8 activationEvent];

    v10 = [v4 requestInfo];
    v11 = [v10 speechRequestOptions];
    v12 = v11;
    if (v9 == 17)
    {
      [v11 activationEventTime];
      [(SASActivationRequest *)v6 setActivationTime:?];

      [(SASActivationRequest *)v6 setRequestSource:27];
      [(SASActivationRequest *)v6 setActivationEvent:3];
    }

    else
    {
      v13 = [v11 activationEvent];

      v14 = [v4 requestInfo];
      v15 = [v14 speechRequestOptions];
      v16 = v15;
      if (v13 == 16)
      {
        [v15 activationEventTime];
        [(SASActivationRequest *)v6 setActivationTime:?];

        v17 = v6;
        v18 = 45;
      }

      else
      {
        v19 = [v15 activationEvent];

        v20 = [MEMORY[0x1E696AE30] processInfo];
        [v20 systemUptime];
        [(SASActivationRequest *)v6 setActivationTime:?];

        v17 = v6;
        if (v19 == 5)
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

- (SASActivationRequest)initWithVoiceTriggerContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    [v6 systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:1];
    [(SASActivationRequest *)v5 setRequestSource:8];
    [(SASActivationRequest *)v5 setContext:v4];
  }

  return v5;
}

- (SASActivationRequest)initWithContinuousConversationContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    [v6 systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:9];
    [(SASActivationRequest *)v5 setRequestSource:39];
    [(SASActivationRequest *)v5 setContext:v4];
  }

  return v5;
}

- (SASActivationRequest)initWithContinuousConversationHearstContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    [v6 systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:9];
    [(SASActivationRequest *)v5 setRequestSource:46];
    [(SASActivationRequest *)v5 setContext:v4];
  }

  return v5;
}

- (SASActivationRequest)initWithContinuousConversationJarvisContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    [v6 systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:9];
    [(SASActivationRequest *)v5 setRequestSource:47];
    [(SASActivationRequest *)v5 setContext:v4];
  }

  return v5;
}

- (SASActivationRequest)initWithRemotePresentationBringUpContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    [v6 systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:10];
    [(SASActivationRequest *)v5 setRequestSource:40];
    [(SASActivationRequest *)v5 setContext:v4];
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
    v3 = [MEMORY[0x1E696AE30] processInfo];
    [v3 systemUptime];
    [(SASActivationRequest *)v2 setActivationTime:?];

    [(SASActivationRequest *)v2 setActivationType:4];
    [(SASActivationRequest *)v2 setRequestSource:21];
  }

  return v2;
}

- (SASActivationRequest)initWithSimpleActivation:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SASActivationRequest;
  v4 = [(SASActivationRequest *)&v7 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AE30] processInfo];
    [v5 systemUptime];
    [(SASActivationRequest *)v4 setActivationTime:?];

    [(SASActivationRequest *)v4 setActivationType:5];
    [(SASActivationRequest *)v4 setRequestSource:a3];
  }

  return v4;
}

- (SASActivationRequest)initWithBluetoothKeyboardShortcutActivation:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SASActivationRequest;
  v4 = [(SASActivationRequest *)&v7 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AE30] processInfo];
    [v5 systemUptime];
    [(SASActivationRequest *)v4 setActivationTime:?];

    [(SASActivationRequest *)v4 setActivationType:8];
    [(SASActivationRequest *)v4 setRequestSource:a3];
  }

  return v4;
}

- (SASActivationRequest)initWithSpotlightContext:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    [v6 systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:6];
    v7 = [v4 source];
    if (v7)
    {
      if (v7 != 1)
      {
LABEL_7:
        [(SASActivationRequest *)v5 setContext:v4];
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

- (SASActivationRequest)initWithVocalShortcutContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    [v6 systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:11];
    [(SASActivationRequest *)v5 setRequestSource:52];
    [(SASActivationRequest *)v5 setContext:v4];
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
    v3 = [MEMORY[0x1E696AE30] processInfo];
    [v3 systemUptime];
    [(SASActivationRequest *)v2 setActivationTime:?];

    [(SASActivationRequest *)v2 setActivationType:1];
    [(SASActivationRequest *)v2 setRequestSource:8];
  }

  return v2;
}

- (SASActivationRequest)initWithTestingContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    [v6 systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:7];
    v7 = [v4 testingContext];
    v8 = [v7 objectForKey:@"testName"];

    if ([v8 isEqualToString:@"SiriBringupToTyping"])
    {
      v9 = 16;
    }

    else
    {
      v9 = 15;
    }

    [(SASActivationRequest *)v5 setRequestSource:v9];
    [(SASActivationRequest *)v5 setContext:v4];
  }

  return v5;
}

- (SASActivationRequest)initWithTostadaContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SASActivationRequest;
  v5 = [(SASActivationRequest *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    [v6 systemUptime];
    [(SASActivationRequest *)v5 setActivationTime:?];

    [(SASActivationRequest *)v5 setActivationType:12];
    [(SASActivationRequest *)v5 setRequestSource:54];
    [(SASActivationRequest *)v5 setContext:v4];
  }

  return v5;
}

- (double)buttonDownTimestamp
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(SASActivationRequest *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = 0.0;
  if (isKindOfClass)
  {
    v6 = [(SASActivationRequest *)self context];
    [v6 buttonDownTimestamp];
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

      v10 = [(SASActivationRequest *)self context];
      [v10 buttonDownTimestamp];
      v5 = v11;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (int64_t)longPressBehavior
{
  v3 = [(SASActivationRequest *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return -1;
  }

  v5 = [(SASActivationRequest *)self context];
  v6 = [v5 longPressBehavior];

  return v6;
}

- (BOOL)isRemoteDisplayVoiceRequest
{
  v2 = [(SASActivationRequest *)self context];
  v3 = [v2 speechRequestOptions];

  if (v3)
  {
    v4 = [v3 activationEvent] == 31;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEyesFreeRequestSource
{
  v3 = [(SASActivationRequest *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(SASActivationRequest *)self context];
  v6 = [v5 isEyesFree];

  return v6;
}

- (BOOL)isQuickTypeGestureEnabled
{
  v2 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v3 = [v2 quickTypeGestureEnabled];

  return v3;
}

+ (int64_t)requestSourceForButtonIdentifier:(int64_t)a3
{
  if (a3 <= 6)
  {
    v3 = 10;
    v11 = 44;
    if (a3 != 6)
    {
      v11 = 0;
    }

    if (a3 != 5)
    {
      v3 = v11;
    }

    if (a3 == 4)
    {
      v3 = 4;
    }

    v7 = 5;
    if (a3 != 3)
    {
      v7 = 0;
    }

    if (a3 == 2)
    {
      v7 = 2;
    }

    if (a3 == 1)
    {
      v7 = 1;
    }

    v10 = a3 <= 3;
  }

  else
  {
    v3 = 15;
    v4 = 23;
    if (a3 != 201)
    {
      v4 = 0;
    }

    if (a3 != 200)
    {
      v3 = v4;
    }

    v5 = 1;
    v6 = 10;
    if (a3 != 101)
    {
      v6 = 0;
    }

    if (a3 != 100)
    {
      v5 = v6;
    }

    if (a3 <= 199)
    {
      v3 = v5;
    }

    v7 = 17;
    v8 = 37;
    v9 = 29;
    if (a3 != 9)
    {
      v9 = 0;
    }

    if (a3 != 8)
    {
      v8 = v9;
    }

    if (a3 != 7)
    {
      v7 = v8;
    }

    v10 = a3 <= 99;
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
  v3 = a1;
  strerror(a2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1C8137000, v4, v5, "%s Failed looking up waketime %{public}s", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

@end