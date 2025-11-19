@interface SBAmbientTelemetryEmitter
+ (id)_faceDescriptionFromConfiguration:(id)a3;
+ (int64_t)_ambientActiveFaceTypeForConfiguration:(id)a3;
+ (int64_t)_ambientClockFaceDescriptorForConfiguration:(id)a3;
+ (int64_t)_ambientPhotosFaceDescriptorForConfiguration:(id)a3;
+ (int64_t)_ambientTimeOfDay;
+ (void)_ambientCoreAnalyticsActiveFaceDescription:(id)a3 duration:(double)a4 sessionIdString:(id)a5;
+ (void)_ambientCoreAnalyticsActiveFaceDescription:(id)a3 screenOffDuration:(double)a4 sessionIdString:(id)a5;
+ (void)_ambientCoreAnalyticsConfigurationUpdateForEventType:(int64_t)a3 activeFace:(id)a4 metadata:(id)a5 sessionIdString:(id)a6 timeOfDay:(int64_t)a7;
+ (void)_ambientCoreAnalyticsSystemEventForBumpIgnored:(BOOL)a3 sessionIdString:(id)a4;
+ (void)_ambientCoreAnalyticsSystemEventForSleepSuppressionActive:(BOOL)a3 sessionIdString:(id)a4;
+ (void)_ambientCoreAnalyticsTotalAmbientDuration:(double)a3 sessionIdString:(id)a4;
+ (void)_ambientCoreAnalyticsUserSettingsForAmbientDefaults:(id)a3 userTriggered:(BOOL)a4;
+ (void)_ambientPowerLogActiveFaceUpdateWithFaceType:(unint64_t)a3 activeFaceDescriptor:(unint64_t)a4;
+ (void)_ambientPowerLogAmbientModeEnabled:(BOOL)a3;
+ (void)_ambientPowerLogAmbientMotionToWakeEnabled:(BOOL)a3;
+ (void)_ambientPowerLogAmbientPresented:(BOOL)a3 displayStyle:(int64_t)a4;
+ (void)_ambientPowerLogLifetimePresentationCounterUpdate:(unint64_t)a3;
- (SBAmbientTelemetryEmitter)initWithAmbientDefaults:(id)a3;
- (void)_logAmbientEnabled:(BOOL)a3 userTriggered:(BOOL)a4;
- (void)_logAmbientUserSettingsUserTriggered:(BOOL)a3;
- (void)_setupAmbientEnabledDailyTimerForLogging;
- (void)_setupAmbientEnabledLogging;
- (void)_setupUserSettingUpdateLogging;
- (void)_updateActiveFaceDurationForPreviousConfiguration:(id)a3 currentConfiguration:(id)a4 sessionIdString:(id)a5;
- (void)_updateActiveFaceScreenOffForBacklightState:(int64_t)a3 forConfiguration:(id)a4 sessionIdString:(id)a5;
- (void)_updateSessionIdForAmbientPresented:(BOOL)a3;
- (void)_updateTotalDurationLoggingForAmbientPresented:(BOOL)a3 sessionIdString:(id)a4;
- (void)dealloc;
- (void)logTelemetryForAmbientConfigurationUpdate:(id)a3 metadata:(id)a4;
- (void)logTelemetryForAmbientPresented:(BOOL)a3 displayStyle:(int64_t)a4;
- (void)logTelemetryForAmbientPresented:(BOOL)a3 withBacklightState:(int64_t)a4 screenOffWithConfiguration:(id)a5;
- (void)logTelemetryForBumpEventIgnored:(BOOL)a3;
- (void)logTelemetryForMotionToWakeEnabled:(BOOL)a3;
- (void)logTelemetryForSleepSuppressionActive:(BOOL)a3;
@end

@implementation SBAmbientTelemetryEmitter

- (SBAmbientTelemetryEmitter)initWithAmbientDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBAmbientTelemetryEmitter;
  v6 = [(SBAmbientTelemetryEmitter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ambientDefaults, a3);
    [(SBAmbientTelemetryEmitter *)v7 _setupAmbientEnabledLogging];
    [(SBAmbientTelemetryEmitter *)v7 _setupUserSettingUpdateLogging];
    [objc_opt_class() _ambientPowerLogLifetimePresentationCounterUpdate:{-[AMAmbientDefaults lifetimePresentationCounter](v7->_ambientDefaults, "lifetimePresentationCounter")}];
  }

  return v7;
}

- (void)dealloc
{
  [(NSTimer *)self->_ambientEnabledDailyTimer invalidate];
  v3.receiver = self;
  v3.super_class = SBAmbientTelemetryEmitter;
  [(SBAmbientTelemetryEmitter *)&v3 dealloc];
}

- (void)logTelemetryForAmbientPresented:(BOOL)a3 displayStyle:(int64_t)a4
{
  v4 = a3;
  [objc_opt_class() _ambientPowerLogAmbientPresented:a3 displayStyle:a4];
  v15 = [(NSUUID *)self->_sessionId UUIDString];
  [(SBAmbientTelemetryEmitter *)self _updateSessionIdForAmbientPresented:v4];
  if (v4)
  {
    v6 = [(NSUUID *)self->_sessionId UUIDString];
    v7 = [objc_opt_class() _ambientTimeOfDay];
    [objc_opt_class() _ambientCoreAnalyticsConfigurationUpdateForEventType:1 activeFace:0 metadata:0 sessionIdString:v6 timeOfDay:v7];
    v8 = objc_opt_class();
    if (AMUIAmbientDisplayStyleIsRedMode())
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }

    [v8 _ambientCoreAnalyticsConfigurationUpdateForEventType:v9 activeFace:0 metadata:0 sessionIdString:v6 timeOfDay:v7];
    [(SBAmbientTelemetryEmitter *)self _updateTotalDurationLoggingForAmbientPresented:1 sessionIdString:v6];
    [objc_opt_class() _ambientPowerLogLifetimePresentationCounterUpdate:{-[AMAmbientDefaults lifetimePresentationCounter](self->_ambientDefaults, "lifetimePresentationCounter")}];
  }

  else
  {
    v6 = v15;
    v10 = [objc_opt_class() _ambientTimeOfDay];
    [objc_opt_class() _ambientCoreAnalyticsConfigurationUpdateForEventType:0 activeFace:0 metadata:0 sessionIdString:v6 timeOfDay:v10];
    v11 = objc_opt_class();
    if (AMUIAmbientDisplayStyleIsRedMode())
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }

    [v11 _ambientCoreAnalyticsConfigurationUpdateForEventType:v12 activeFace:0 metadata:0 sessionIdString:v6 timeOfDay:v10];
    [(SBAmbientTelemetryEmitter *)self _updateTotalDurationLoggingForAmbientPresented:0 sessionIdString:v6];
    [(SBAmbientTelemetryEmitter *)self _updateActiveFaceDurationForPreviousConfiguration:self->_activePosterConfiguration currentConfiguration:0 sessionIdString:v6];
    activePosterConfiguration = self->_activePosterConfiguration;
    self->_activePosterConfiguration = 0;

    ambientActiveFaceTimestamp = self->_ambientActiveFaceTimestamp;
    self->_ambientActiveFaceTimestamp = 0;
  }
}

- (void)logTelemetryForAmbientPresented:(BOOL)a3 withBacklightState:(int64_t)a4 screenOffWithConfiguration:(id)a5
{
  if (a3)
  {
    sessionId = self->_sessionId;
    v8 = a5;
    v9 = [(NSUUID *)sessionId UUIDString];
    [(SBAmbientTelemetryEmitter *)self _updateActiveFaceScreenOffForBacklightState:a4 forConfiguration:v8 sessionIdString:v9];
  }
}

- (void)logTelemetryForAmbientConfigurationUpdate:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = [objc_opt_class() _faceDescriptionFromConfiguration:v6];
  v8 = [objc_opt_class() _ambientActiveFaceTypeForConfiguration:v6];
  v9 = v8;
  if (v8 == 1)
  {
    v10 = [objc_opt_class() _ambientPhotosFaceDescriptorForConfiguration:v6];
    goto LABEL_5;
  }

  if (v8 == 2)
  {
    v10 = [objc_opt_class() _ambientClockFaceDescriptorForConfiguration:v6];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  [objc_opt_class() _ambientPowerLogActiveFaceUpdateWithFaceType:v9 activeFaceDescriptor:v11];
  v12 = objc_opt_class();
  v13 = [(NSUUID *)self->_sessionId UUIDString];
  [v12 _ambientCoreAnalyticsConfigurationUpdateForEventType:2 activeFace:v17 metadata:v7 sessionIdString:v13 timeOfDay:{objc_msgSend(objc_opt_class(), "_ambientTimeOfDay")}];

  activePosterConfiguration = self->_activePosterConfiguration;
  v15 = [(NSUUID *)self->_sessionId UUIDString];
  [(SBAmbientTelemetryEmitter *)self _updateActiveFaceDurationForPreviousConfiguration:activePosterConfiguration currentConfiguration:v6 sessionIdString:v15];

  v16 = self->_activePosterConfiguration;
  self->_activePosterConfiguration = v6;
}

- (void)logTelemetryForMotionToWakeEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = objc_opt_class();

  [v4 _ambientPowerLogAmbientMotionToWakeEnabled:v3];
}

- (void)logTelemetryForBumpEventIgnored:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  v6 = [(NSUUID *)self->_sessionId UUIDString];
  [v5 _ambientCoreAnalyticsSystemEventForBumpIgnored:v3 sessionIdString:v6];
}

- (void)logTelemetryForSleepSuppressionActive:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  v6 = [(NSUUID *)self->_sessionId UUIDString];
  [v5 _ambientCoreAnalyticsSystemEventForSleepSuppressionActive:v3 sessionIdString:v6];
}

- (void)_setupAmbientEnabledLogging
{
  v15[1] = *MEMORY[0x277D85DE8];
  p_ambientDefaults = &self->_ambientDefaults;
  [(SBAmbientTelemetryEmitter *)self _logAmbientEnabled:[(AMAmbientDefaults *)self->_ambientDefaults enableAmbientMode] userTriggered:0];
  objc_initWeak(&location, self);
  v4 = *p_ambientDefaults;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enableAmbientMode"];
  v15[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v7 = MEMORY[0x277D85CD0];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __56__SBAmbientTelemetryEmitter__setupAmbientEnabledLogging__block_invoke;
  v12 = &unk_2783A8C68;
  objc_copyWeak(&v13, &location);
  v8 = [(AMAmbientDefaults *)v4 observeDefaults:v6 onQueue:MEMORY[0x277D85CD0] withBlock:&v9];

  [(SBAmbientTelemetryEmitter *)self _setupAmbientEnabledDailyTimerForLogging:v9];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __56__SBAmbientTelemetryEmitter__setupAmbientEnabledLogging__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _logAmbientEnabled:objc_msgSend(WeakRetained[2] userTriggered:{"enableAmbientMode"), 1}];
}

- (void)_setupUserSettingUpdateLogging
{
  v14[4] = *MEMORY[0x277D85DE8];
  [(SBAmbientTelemetryEmitter *)self _logAmbientUserSettingsUserTriggered:0];
  objc_initWeak(&location, self);
  ambientDefaults = self->_ambientDefaults;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enableAmbientMode"];
  v14[0] = v4;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"alwaysOnMode"];
  v14[1] = v5;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nightModeEnabled"];
  v14[2] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"motionToWakeEnabled"];
  v14[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  v9 = MEMORY[0x277D85CD0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SBAmbientTelemetryEmitter__setupUserSettingUpdateLogging__block_invoke;
  v11[3] = &unk_2783A8C68;
  objc_copyWeak(&v12, &location);
  v10 = [(AMAmbientDefaults *)ambientDefaults observeDefaults:v8 onQueue:MEMORY[0x277D85CD0] withBlock:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __59__SBAmbientTelemetryEmitter__setupUserSettingUpdateLogging__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _logAmbientUserSettingsUserTriggered:1];
}

- (void)_logAmbientEnabled:(BOOL)a3 userTriggered:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [objc_opt_class() _ambientPowerLogAmbientModeEnabled:a3];
  v6 = objc_opt_class();

  [v6 _ambientCoreAnalyticsAmbientEnabled:v5 userTriggered:v4];
}

- (void)_logAmbientUserSettingsUserTriggered:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  ambientDefaults = self->_ambientDefaults;

  [v5 _ambientCoreAnalyticsUserSettingsForAmbientDefaults:ambientDefaults userTriggered:v3];
}

- (void)_setupAmbientEnabledDailyTimerForLogging
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 dateByAddingTimeInterval:5.0];

  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277CBEBB8]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__SBAmbientTelemetryEmitter__setupAmbientEnabledDailyTimerForLogging__block_invoke;
  v8[3] = &unk_2783AA438;
  objc_copyWeak(&v9, &location);
  v6 = [v5 initWithFireDate:v4 interval:1 repeats:v8 block:86400.0];
  ambientEnabledDailyTimer = self->_ambientEnabledDailyTimer;
  self->_ambientEnabledDailyTimer = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __69__SBAmbientTelemetryEmitter__setupAmbientEnabledDailyTimerForLogging__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [objc_opt_class() _ambientCoreAnalyticsAmbientEnabled:objc_msgSend(WeakRetained[2] userTriggered:{"enableAmbientMode"), 0}];
    [objc_opt_class() _ambientCoreAnalyticsUserSettingsForAmbientDefaults:v2[2] userTriggered:0];
    WeakRetained = v2;
  }
}

- (void)_updateSessionIdForAmbientPresented:(BOOL)a3
{
  sessionId = self->_sessionId;
  if (a3)
  {
    if (sessionId)
    {
      return;
    }

    v5 = [MEMORY[0x277CCAD78] UUID];
    sessionId = self->_sessionId;
  }

  else
  {
    if (!sessionId)
    {
      return;
    }

    v5 = 0;
  }

  self->_sessionId = v5;
}

- (void)_updateTotalDurationLoggingForAmbientPresented:(BOOL)a3 sessionIdString:(id)a4
{
  v4 = a3;
  v6 = a4;
  ambientPresentationTimestamp = self->_ambientPresentationTimestamp;
  if (v4)
  {
    if (ambientPresentationTimestamp)
    {
      goto LABEL_7;
    }

    v13 = v6;
    v8 = [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    if (!ambientPresentationTimestamp)
    {
      goto LABEL_7;
    }

    v13 = v6;
    v9 = [MEMORY[0x277CBEAA8] date];
    [v9 timeIntervalSinceDate:self->_ambientPresentationTimestamp];
    v11 = v10;

    [objc_opt_class() _ambientCoreAnalyticsTotalAmbientDuration:v13 sessionIdString:v11];
    v8 = 0;
  }

  v12 = self->_ambientPresentationTimestamp;
  self->_ambientPresentationTimestamp = v8;

  v6 = v13;
LABEL_7:
}

- (void)_updateActiveFaceDurationForPreviousConfiguration:(id)a3 currentConfiguration:(id)a4 sessionIdString:(id)a5
{
  v17 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() _faceDescriptionFromConfiguration:v9];

  v11 = [objc_opt_class() _faceDescriptionFromConfiguration:v8];

  if (([v10 isEqualToString:v11] & 1) == 0)
  {
    if (self->_ambientActiveFaceTimestamp)
    {
      v12 = [MEMORY[0x277CBEAA8] date];
      [v12 timeIntervalSinceDate:self->_ambientActiveFaceTimestamp];
      v14 = v13;

      [objc_opt_class() _ambientCoreAnalyticsActiveFaceDescription:v10 duration:v17 sessionIdString:v14];
    }

    v15 = [MEMORY[0x277CBEAA8] date];
    ambientActiveFaceTimestamp = self->_ambientActiveFaceTimestamp;
    self->_ambientActiveFaceTimestamp = v15;
  }
}

- (void)_updateActiveFaceScreenOffForBacklightState:(int64_t)a3 forConfiguration:(id)a4 sessionIdString:(id)a5
{
  v15 = a5;
  v8 = a4;
  v9 = [objc_opt_class() _faceDescriptionFromConfiguration:v8];

  if (a3 == 4)
  {
    v10 = [MEMORY[0x277CBEAA8] date];
    ambientActiveFaceSceenOffTimestamp = self->_ambientActiveFaceSceenOffTimestamp;
    self->_ambientActiveFaceSceenOffTimestamp = v10;
  }

  else
  {
    ambientActiveFaceSceenOffTimestamp = self->_ambientActiveFaceSceenOffTimestamp;
    if (ambientActiveFaceSceenOffTimestamp)
    {
      v12 = [MEMORY[0x277CBEAA8] date];
      [v12 timeIntervalSinceDate:self->_ambientActiveFaceSceenOffTimestamp];
      v14 = v13;

      [objc_opt_class() _ambientCoreAnalyticsActiveFaceDescription:v9 screenOffDuration:v15 sessionIdString:v14];
      ambientActiveFaceSceenOffTimestamp = self->_ambientActiveFaceSceenOffTimestamp;
    }

    self->_ambientActiveFaceSceenOffTimestamp = 0;
  }
}

+ (id)_faceDescriptionFromConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 providerBundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"Unknown";
  }

  v7 = [v3 descriptorIdentifier];

  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v6, v7];

    v6 = v8;
  }

  v9 = v6;

  return v6;
}

+ (void)_ambientPowerLogAmbientPresented:(BOOL)a3 displayStyle:(int64_t)a4
{
  v5 = a3;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v8 setObject:v6 forKeyedSubscript:@"Enabled"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v8 setObject:v7 forKeyedSubscript:@"Mode"];

  [objc_opt_class() _ambientPowerLogWithEventName:@"AmbientMode" dictionary:v8];
}

+ (void)_ambientPowerLogAmbientModeEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  [v5 setObject:v4 forKeyedSubscript:@"Enabled"];

  [objc_opt_class() _ambientPowerLogWithEventName:@"AmbientModeEnabled" dictionary:v5];
}

+ (void)_ambientPowerLogAmbientMotionToWakeEnabled:(BOOL)a3
{
  v3 = a3;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  [v8 setObject:v4 forKeyedSubscript:@"Enabled"];

  v5 = MEMORY[0x277CCABB0];
  v6 = [MEMORY[0x277CBEAA8] now];
  [v6 timeIntervalSince1970];
  v7 = [v5 numberWithDouble:?];
  [v8 setObject:v7 forKeyedSubscript:@"Timestamp"];

  [objc_opt_class() _ambientPowerLogWithEventName:@"AmbientModeMotionToWake" dictionary:v8];
}

+ (int64_t)_ambientActiveFaceTypeForConfiguration:(id)a3
{
  v3 = [a3 providerBundleIdentifier];
  if ([v3 isEqualToString:@"com.apple.ambient.AmbientUI.InfographPoster"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"com.apple.ClockPoster.ClockPosterExtension"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosAmbientPosterProvider"])
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (int64_t)_ambientClockFaceDescriptorForConfiguration:(id)a3
{
  v3 = [a3 descriptorIdentifier];
  if ([v3 isEqualToString:@"digital"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"analog"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"play"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"solar"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"world"])
  {
    v4 = 2;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (int64_t)_ambientPhotosFaceDescriptorForConfiguration:(id)a3
{
  v3 = [a3 descriptorIdentifier];
  if ([v3 isEqualToString:@"featured"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"pets"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"people"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"nature"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"cities"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"album"])
  {
    v4 = 5;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (void)_ambientPowerLogActiveFaceUpdateWithFaceType:(unint64_t)a3 activeFaceDescriptor:(unint64_t)a4
{
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v8 setObject:v6 forKeyedSubscript:@"ActiveFaceType"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v8 setObject:v7 forKeyedSubscript:@"ActiveFaceDescriptor"];

  [objc_opt_class() _ambientPowerLogWithEventName:@"AmbientModeActiveFace" dictionary:v8];
}

+ (void)_ambientPowerLogLifetimePresentationCounterUpdate:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forKeyedSubscript:@"LifetimePresentationCounter"];

  [objc_opt_class() _ambientPowerLogWithEventName:@"AmbientModeLifetimePresentationCounter" dictionary:v5];
}

id __79__SBAmbientTelemetryEmitter__ambientCoreAnalyticsAmbientEnabled_userTriggered___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"enabledSetting";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[1] = @"userTriggered";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 33)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (void)_ambientCoreAnalyticsActiveFaceDescription:(id)a3 duration:(double)a4 sessionIdString:(id)a5
{
  v8 = a3;
  v9 = a5;
  v6 = v9;
  v7 = v8;
  AnalyticsSendEventLazy();
}

id __97__SBAmbientTelemetryEmitter__ambientCoreAnalyticsActiveFaceDescription_duration_sessionIdString___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v7[0] = *(a1 + 32);
  v6[0] = @"activeFaceType";
  v6[1] = @"activeFaceDuration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v6[2] = @"sessionId";
  v3 = *(a1 + 40);
  v7[1] = v2;
  v7[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

+ (void)_ambientCoreAnalyticsActiveFaceDescription:(id)a3 screenOffDuration:(double)a4 sessionIdString:(id)a5
{
  v8 = a3;
  v9 = a5;
  v6 = v9;
  v7 = v8;
  AnalyticsSendEventLazy();
}

id __106__SBAmbientTelemetryEmitter__ambientCoreAnalyticsActiveFaceDescription_screenOffDuration_sessionIdString___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v7[0] = *(a1 + 32);
  v6[0] = @"activeFaceType";
  v6[1] = @"activeFaceScreenOffDuration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v6[2] = @"sessionId";
  v3 = *(a1 + 40);
  v7[1] = v2;
  v7[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

+ (void)_ambientCoreAnalyticsTotalAmbientDuration:(double)a3 sessionIdString:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

id __87__SBAmbientTelemetryEmitter__ambientCoreAnalyticsTotalAmbientDuration_sessionIdString___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"totalDuration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v5[1] = @"sessionId";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

+ (void)_ambientCoreAnalyticsConfigurationUpdateForEventType:(int64_t)a3 activeFace:(id)a4 metadata:(id)a5 sessionIdString:(id)a6 timeOfDay:(int64_t)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __128__SBAmbientTelemetryEmitter__ambientCoreAnalyticsConfigurationUpdateForEventType_activeFace_metadata_sessionIdString_timeOfDay___block_invoke;
  v24 = &unk_2783B1188;
  v27 = a3;
  v14 = v13;
  v25 = v14;
  v15 = v11;
  v26 = v15;
  v28 = a7;
  AnalyticsSendEventLazy();
  if (a3 == 2 && v12)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __128__SBAmbientTelemetryEmitter__ambientCoreAnalyticsConfigurationUpdateForEventType_activeFace_metadata_sessionIdString_timeOfDay___block_invoke_2;
    v16[3] = &unk_2783B11D8;
    v19 = 2;
    v17 = v15;
    v18 = v14;
    v20 = a7;
    [v12 enumerateKeysAndObjectsUsingBlock:v16];
  }
}

id __128__SBAmbientTelemetryEmitter__ambientCoreAnalyticsConfigurationUpdateForEventType_activeFace_metadata_sessionIdString_timeOfDay___block_invoke(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  [v2 setObject:v3 forKeyedSubscript:@"eventType"];

  [v2 setObject:a1[4] forKeyedSubscript:@"sessionId"];
  v4 = a1[5];
  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:@"activeFaceType"];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1[7]];
  [v2 setObject:v5 forKeyedSubscript:@"timeOfDay"];

  return v2;
}

void __128__SBAmbientTelemetryEmitter__ambientCoreAnalyticsConfigurationUpdateForEventType_activeFace_metadata_sessionIdString_timeOfDay___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = *(a1 + 32);
  v10 = v6;
  v11 = *(a1 + 40);
  v7 = v6;
  v8 = v5;
  AnalyticsSendEventLazy();
}

id __128__SBAmbientTelemetryEmitter__ambientCoreAnalyticsConfigurationUpdateForEventType_activeFace_metadata_sessionIdString_timeOfDay___block_invoke_3(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1[8]];
  [v2 setObject:v3 forKeyedSubscript:@"eventType"];

  v4 = a1[4];
  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:@"activeFaceType"];
  }

  [v2 setObject:a1[5] forKeyedSubscript:@"activeFacePropertyAttribute"];
  [v2 setObject:a1[6] forKeyedSubscript:@"activeFacePropertyValue"];
  [v2 setObject:a1[7] forKeyedSubscript:@"sessionId"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1[9]];
  [v2 setObject:v5 forKeyedSubscript:@"timeOfDay"];

  return v2;
}

+ (void)_ambientCoreAnalyticsUserSettingsForAmbientDefaults:(id)a3 userTriggered:(BOOL)a4
{
  v5 = a3;
  v4 = v5;
  AnalyticsSendEventLazy();
}

id __95__SBAmbientTelemetryEmitter__ambientCoreAnalyticsUserSettingsForAmbientDefaults_userTriggered___block_invoke(uint64_t a1)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"ambientEnabled";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enableAmbientMode")}];
  v11[0] = v2;
  v10[1] = @"alwaysOnEnabled";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "alwaysOnMode") != 0}];
  v11[1] = v3;
  v10[2] = @"alwaysOnMode";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "alwaysOnMode")}];
  v11[2] = v4;
  v10[3] = @"nightModeEnabled";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "nightModeEnabled")}];
  v11[3] = v5;
  v10[4] = @"motionToWakeEnabled";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "motionToWakeEnabled")}];
  v11[4] = v6;
  v10[5] = @"userTriggered";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v11[5] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

+ (void)_ambientCoreAnalyticsSystemEventForBumpIgnored:(BOOL)a3 sessionIdString:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

id __92__SBAmbientTelemetryEmitter__ambientCoreAnalyticsSystemEventForBumpIgnored_sessionIdString___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"eventType";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v5[1] = @"sessionId";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

+ (void)_ambientCoreAnalyticsSystemEventForSleepSuppressionActive:(BOOL)a3 sessionIdString:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

id __103__SBAmbientTelemetryEmitter__ambientCoreAnalyticsSystemEventForSleepSuppressionActive_sessionIdString___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"eventType";
  if (*(a1 + 40))
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  v6[1] = @"sessionId";
  v7[0] = v3;
  v7[1] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (int64_t)_ambientTimeOfDay
{
  v2 = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 components:32 fromDate:v3];

  v5 = [v4 hour];
  v6 = 2;
  if (v5 - 18 >= 6)
  {
    v6 = -1;
  }

  if (v5 - 12 >= 6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if (v5 - 5 >= 7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v5 >= 5)
  {
    v9 = v8;
  }

  else
  {
    v9 = 3;
  }

  return v9;
}

@end