@interface TLAlert
+ (BOOL)_stopAllAlerts;
+ (BOOL)_watchPrefersSalientToneAndVibration;
+ (TLAlert)alertWithConfiguration:(id)configuration;
+ (int64_t)_currentOverridePolicyForType:(int64_t)type;
+ (void)_setCurrentOverridePolicy:(int64_t)policy forType:(int64_t)type;
+ (void)playAlertForType:(int64_t)type;
- (BOOL)playWithCompletionHandler:(id)handler targetQueue:(id)queue;
- (TLAlert)initWithType:(int64_t)type;
- (TLAlert)initWithType:(int64_t)type accountIdentifier:(id)identifier;
- (TLAlert)initWithType:(int64_t)type toneIdentifier:(id)identifier vibrationIdentifier:(id)vibrationIdentifier;
- (TLAlertPlaybackObserver)playbackObserver;
- (id)_descriptionForDebugging:(BOOL)debugging;
- (id)_initWithConfiguration:(id)configuration toneIdentifier:(id)identifier vibrationIdentifier:(id)vibrationIdentifier hasSynchronizedVibrationUnmatchedWithTone:(BOOL)tone;
- (void)_updateAudioVolumeDynamicallyToValue:(float)value;
- (void)playWithCompletionHandler:(id)handler;
- (void)preheatWithCompletionHandler:(id)handler;
- (void)stopWithOptions:(id)options;
@end

@implementation TLAlert

- (TLAlert)initWithType:(int64_t)type
{
  v4 = [[TLAlertConfiguration alloc] initWithType:type];
  v5 = [TLAlert alertWithConfiguration:v4];

  return v5;
}

- (TLAlert)initWithType:(int64_t)type accountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [[TLAlertConfiguration alloc] initWithType:type];
  [(TLAlertConfiguration *)v7 setTopic:identifierCopy];

  v8 = [TLAlert alertWithConfiguration:v7];

  return v8;
}

- (TLAlert)initWithType:(int64_t)type toneIdentifier:(id)identifier vibrationIdentifier:(id)vibrationIdentifier
{
  vibrationIdentifierCopy = vibrationIdentifier;
  identifierCopy = identifier;
  v10 = [[TLAlertConfiguration alloc] initWithType:type];
  [(TLAlertConfiguration *)v10 setToneIdentifier:identifierCopy];

  [(TLAlertConfiguration *)v10 setVibrationIdentifier:vibrationIdentifierCopy];
  v11 = [TLAlert alertWithConfiguration:v10];

  return v11;
}

- (BOOL)playWithCompletionHandler:(id)handler targetQueue:(id)queue
{
  handlerCopy = handler;
  queueCopy = queue;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__TLAlert_Deprecated__playWithCompletionHandler_targetQueue___block_invoke;
  v11[3] = &unk_1E8578F30;
  v14 = &v16;
  v15 = &v20;
  v8 = handlerCopy;
  v13 = v8;
  v9 = queueCopy;
  v12 = v9;
  [(TLAlert *)self playWithCompletionHandler:v11];
  *(v17 + 24) = 0;
  LOBYTE(self) = *(v21 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return self;
}

void __61__TLAlert_Deprecated__playWithCompletionHandler_targetQueue___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    if (a2 == 5)
    {
      *(*(a1[7] + 8) + 24) = 0;
    }
  }

  else
  {
    v6 = a1[5];
    if (v6)
    {
      v8 = v5;
      v7 = a1[4];
      if (v7)
      {
        dispatch_async(v7, v6);
      }

      else
      {
        v6[2](v6);
      }

      v5 = v8;
    }
  }
}

+ (void)playAlertForType:(int64_t)type
{
  v4 = [[TLAlertConfiguration alloc] initWithType:type];
  v3 = [TLAlert alertWithConfiguration:v4];
  [v3 playWithCompletionHandler:0];
}

+ (TLAlert)alertWithConfiguration:(id)configuration
{
  v61 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  type = [configurationCopy type];
  if ((type - 1) > 0x1C)
  {
    v20 = 0;
    goto LABEL_43;
  }

  v6 = type;
  selfCopy = self;
  toneIdentifier = [configurationCopy toneIdentifier];
  externalToneFileURL = [configurationCopy externalToneFileURL];
  externalToneMediaLibraryItemIdentifier = [configurationCopy externalToneMediaLibraryItemIdentifier];
  vibrationIdentifier = [configurationCopy vibrationIdentifier];
  externalVibrationPattern = [configurationCopy externalVibrationPattern];
  externalVibrationPatternFileURL = [configurationCopy externalVibrationPatternFileURL];
  topic = [configurationCopy topic];
  targetDevice = [configurationCopy targetDevice];
  v13 = +[TLToneManager sharedToneManager];
  v49 = externalToneFileURL;
  v51 = v13;
  if (externalToneFileURL)
  {
    v14 = MEMORY[0x1E696AEC0];
    path = [externalToneFileURL path];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [uUID UUIDString];
    v18 = v17 = externalVibrationPattern;
    v19 = [v14 stringWithFormat:@"externalTone:%@-%@", path, v18];

    externalVibrationPattern = v17;
    toneIdentifier = path;
LABEL_12:

    toneIdentifier = v19;
    goto LABEL_13;
  }

  if (externalToneMediaLibraryItemIdentifier)
  {
    v21 = [v13 _toneIdentifierForMediaLibraryItemIdentifier:externalToneMediaLibraryItemIdentifier];
LABEL_11:
    v19 = v21;
    goto LABEL_12;
  }

  if (![toneIdentifier length] || !targetDevice && (objc_msgSend(v51, "toneWithIdentifierIsValid:", toneIdentifier) & 1) == 0)
  {
    v21 = [v51 currentToneIdentifierForAlertType:v6 topic:topic];
    goto LABEL_11;
  }

LABEL_13:
  v22 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  hasVibratorCapability = [v22 hasVibratorCapability];

  if (!hasVibratorCapability)
  {
    [toneIdentifier isEqualToString:@"<none>"];
    v24 = 0;
    v30 = 0;
    v31 = externalVibrationPatternFileURL;
    goto LABEL_17;
  }

  v24 = +[TLVibrationManager sharedVibrationManager];
  if (!externalVibrationPattern)
  {
    v31 = externalVibrationPatternFileURL;
    if (externalVibrationPatternFileURL)
    {
      v32 = MEMORY[0x1E696AEC0];
      path2 = [externalVibrationPatternFileURL path];
      uUID2 = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID2 UUIDString];
      v36 = [v32 stringWithFormat:@"externalVibration:%@-%@", path2, uUIDString];

      v31 = externalVibrationPatternFileURL;
      v30 = 0;
      vibrationIdentifier = v36;
      goto LABEL_37;
    }

    if (!-[NSObject length](vibrationIdentifier, "length") || ([v24 vibrationWithIdentifierIsValid:vibrationIdentifier] & 1) == 0)
    {
      if (targetDevice == 1)
      {
        [v24 _synchronizedVibrationIdentifierForToneIdentifier:toneIdentifier targetDevice:1];
      }

      else
      {
        [v24 currentVibrationIdentifierForAlertType:v6 topic:topic];
      }
      v37 = ;

      vibrationIdentifier = v37;
    }

    v52 = 1;
    v38 = [v24 _sanitizeVibrationIdentifier:vibrationIdentifier forAlertType:v6 topic:0 targetDevice:targetDevice correspondingToneIdentifier:toneIdentifier didFallbackToCurrentVibrationIdentifier:&v52];
    v30 = [v38 isEqualToString:vibrationIdentifier];
    if (v30)
    {
      if (![vibrationIdentifier hasPrefix:@"synchronizedvibration:"]|| v52 != 1)
      {
        v30 = 0;
        goto LABEL_36;
      }

      v39 = TLLogPlayback();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v54 = vibrationIdentifier;
        v55 = 2114;
        v56 = toneIdentifier;
        _os_log_impl(&dword_1D9356000, v39, OS_LOG_TYPE_DEFAULT, "Instantiating alert with synchronized vibration (%{public}@), which does not match the associated tone (%{public}@).", buf, 0x16u);
      }
    }

    else
    {
      v40 = TLLogPlayback();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        NSStringFromTLAlertType(v6);
        v42 = v41 = v40;
        *buf = 138544130;
        v54 = vibrationIdentifier;
        v55 = 2114;
        v56 = v42;
        v57 = 2114;
        v58 = toneIdentifier;
        v59 = 2114;
        v60 = v38;
        _os_log_impl(&dword_1D9356000, v41, OS_LOG_TYPE_DEFAULT, "Sanitizing vibrationIdentifier: %{public}@, for alert type: %{public}@, toneIdentifier: %{public}@. Using instead vibrationIdentifier: %{public}@.", buf, 0x2Au);

        v40 = v41;
      }

      v39 = vibrationIdentifier;
      vibrationIdentifier = v38;
    }

LABEL_36:
    goto LABEL_37;
  }

  v25 = MEMORY[0x1E696AEC0];
  v26 = [externalVibrationPattern hash];
  uUID3 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString2 = [uUID3 UUIDString];
  v29 = [v25 stringWithFormat:@"externalVibration:%llu-%@", v26, uUIDString2];

  v30 = 0;
  vibrationIdentifier = v29;
  v31 = externalVibrationPatternFileURL;
LABEL_37:
  v43 = [vibrationIdentifier isEqualToString:@"<none>"];
  if ([toneIdentifier isEqualToString:@"<none>"] && v43)
  {
    v44 = TLLogPlayback();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v54 = configurationCopy;
      _os_log_impl(&dword_1D9356000, v44, OS_LOG_TYPE_DEFAULT, "Nothing to be played for alert configuration: %{public}@. Returning a nil alert.", buf, 0xCu);
    }

    v20 = 0;
    goto LABEL_42;
  }

LABEL_17:
  v20 = [[selfCopy alloc] _initWithConfiguration:configurationCopy toneIdentifier:toneIdentifier vibrationIdentifier:vibrationIdentifier hasSynchronizedVibrationUnmatchedWithTone:v30];
LABEL_42:

LABEL_43:
  v45 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_initWithConfiguration:(id)configuration toneIdentifier:(id)identifier vibrationIdentifier:(id)vibrationIdentifier hasSynchronizedVibrationUnmatchedWithTone:(BOOL)tone
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  vibrationIdentifierCopy = vibrationIdentifier;
  v22.receiver = self;
  v22.super_class = TLAlert;
  v14 = [(TLAlert *)&v22 init];
  if (v14)
  {
    v15 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    isInternalInstall = [v15 isInternalInstall];

    if (isInternalInstall)
    {
      v14->_instanceIndex = atomic_fetch_add(&_initWithConfiguration_toneIdentifier_vibrationIdentifier_hasSynchronizedVibrationUnmatchedWithTone___TLAlertLastAllocatedInstanceIndex, 1uLL) + 1;
    }

    [configurationCopy _freeze];
    objc_storeStrong(&v14->_configuration, configuration);
    v14->_type = [configurationCopy type];
    v17 = [identifierCopy copy];
    toneIdentifier = v14->_toneIdentifier;
    v14->_toneIdentifier = v17;

    v19 = [vibrationIdentifierCopy copy];
    vibrationIdentifier = v14->_vibrationIdentifier;
    v14->_vibrationIdentifier = v19;

    v14->_hasSynchronizedVibrationUnmatchedWithTone = tone;
  }

  return v14;
}

- (void)playWithCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = TLLogPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TLAlert *)self debugDescription];
    v7 = v6;
    v8 = "!= NULL";
    if (!handlerCopy)
    {
      v8 = "== NULL";
    }

    v11 = 138543618;
    v12 = v6;
    v13 = 2082;
    v14 = v8;
    _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -play…: completionHandler %{public}s.", &v11, 0x16u);
  }

  v9 = +[TLAlertController sharedAlertController];
  [v9 playAlert:self withCompletionHandler:handlerCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)stopWithOptions:(id)options
{
  v15 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = TLLogPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = optionsCopy;
    _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -stop…: options = %{public}@.", buf, 0x16u);
  }

  v6 = [optionsCopy copy];
  v7 = +[TLAlertController sharedAlertController];
  selfCopy2 = self;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy2 count:1];
  [v7 stopPlayingAlerts:v8 withOptions:v6 playbackCompletionType:2];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)preheatWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[TLAlertController sharedAlertController];
  [v5 preheatForAlert:self completionHandler:handlerCopy];
}

+ (BOOL)_watchPrefersSalientToneAndVibration
{
  v2 = +[TLToneManager sharedToneManager];
  _watchPrefersSalientNotifications = [v2 _watchPrefersSalientNotifications];

  return _watchPrefersSalientNotifications;
}

+ (int64_t)_currentOverridePolicyForType:(int64_t)type
{
  v4 = +[TLToneManager sharedToneManager];
  v5 = [v4 _currentOverridePolicyForAlertType:type];

  return v5;
}

+ (void)_setCurrentOverridePolicy:(int64_t)policy forType:(int64_t)type
{
  v6 = +[TLToneManager sharedToneManager];
  [v6 _setCurrentOverridePolicy:policy forAlertType:type];
}

+ (BOOL)_stopAllAlerts
{
  v2 = TLLogPlayback();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D9356000, v2, OS_LOG_TYPE_DEFAULT, "+[TLAlert _stopAllAlerts] was called.", v6, 2u);
  }

  v3 = +[TLAlertController sharedAlertController];
  stopAllAlerts = [v3 stopAllAlerts];

  return stopAllAlerts;
}

- (void)_updateAudioVolumeDynamicallyToValue:(float)value
{
  v6 = +[TLAlertController sharedAlertController];
  *&v5 = value;
  [v6 updateAudioVolumeDynamicallyForAlert:self toValue:v5];
}

- (id)_descriptionForDebugging:(BOOL)debugging
{
  debuggingCopy = debugging;
  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithFormat:@"<%@: %p", v7, self];

  if (self->_instanceIndex >= 1)
  {
    [v8 appendFormat:@" [%ld]", self->_instanceIndex];
  }

  if (debuggingCopy)
  {
    v9 = [(TLAlertConfiguration *)self->_configuration description];
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    configuration = self->_configuration;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = self->_configuration;
    v15 = _TLAlertTypeGetHumanReadableDescription(self->_type);
    v9 = [v10 stringWithFormat:@"<%@: %p type = %@>", v13, v14, v15];;
  }

  [v8 appendFormat:@"; configuration = %@", v9];
  if ([(NSString *)self->_toneIdentifier length])
  {
    [v8 appendFormat:@"; toneIdentifier = %@", self->_toneIdentifier];
  }

  if ([(NSString *)self->_vibrationIdentifier length])
  {
    [v8 appendFormat:@"; vibrationIdentifier = %@", self->_vibrationIdentifier];
  }

  [v8 appendString:@">"];

  return v8;
}

- (TLAlertPlaybackObserver)playbackObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackObserver);

  return WeakRetained;
}

@end