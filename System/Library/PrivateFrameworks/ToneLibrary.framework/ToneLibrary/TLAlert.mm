@interface TLAlert
+ (BOOL)_stopAllAlerts;
+ (BOOL)_watchPrefersSalientToneAndVibration;
+ (TLAlert)alertWithConfiguration:(id)a3;
+ (int64_t)_currentOverridePolicyForType:(int64_t)a3;
+ (void)_setCurrentOverridePolicy:(int64_t)a3 forType:(int64_t)a4;
+ (void)playAlertForType:(int64_t)a3;
- (BOOL)playWithCompletionHandler:(id)a3 targetQueue:(id)a4;
- (TLAlert)initWithType:(int64_t)a3;
- (TLAlert)initWithType:(int64_t)a3 accountIdentifier:(id)a4;
- (TLAlert)initWithType:(int64_t)a3 toneIdentifier:(id)a4 vibrationIdentifier:(id)a5;
- (TLAlertPlaybackObserver)playbackObserver;
- (id)_descriptionForDebugging:(BOOL)a3;
- (id)_initWithConfiguration:(id)a3 toneIdentifier:(id)a4 vibrationIdentifier:(id)a5 hasSynchronizedVibrationUnmatchedWithTone:(BOOL)a6;
- (void)_updateAudioVolumeDynamicallyToValue:(float)a3;
- (void)playWithCompletionHandler:(id)a3;
- (void)preheatWithCompletionHandler:(id)a3;
- (void)stopWithOptions:(id)a3;
@end

@implementation TLAlert

- (TLAlert)initWithType:(int64_t)a3
{
  v4 = [[TLAlertConfiguration alloc] initWithType:a3];
  v5 = [TLAlert alertWithConfiguration:v4];

  return v5;
}

- (TLAlert)initWithType:(int64_t)a3 accountIdentifier:(id)a4
{
  v6 = a4;
  v7 = [[TLAlertConfiguration alloc] initWithType:a3];
  [(TLAlertConfiguration *)v7 setTopic:v6];

  v8 = [TLAlert alertWithConfiguration:v7];

  return v8;
}

- (TLAlert)initWithType:(int64_t)a3 toneIdentifier:(id)a4 vibrationIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[TLAlertConfiguration alloc] initWithType:a3];
  [(TLAlertConfiguration *)v10 setToneIdentifier:v9];

  [(TLAlertConfiguration *)v10 setVibrationIdentifier:v8];
  v11 = [TLAlert alertWithConfiguration:v10];

  return v11;
}

- (BOOL)playWithCompletionHandler:(id)a3 targetQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v13 = v8;
  v9 = v7;
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

+ (void)playAlertForType:(int64_t)a3
{
  v4 = [[TLAlertConfiguration alloc] initWithType:a3];
  v3 = [TLAlert alertWithConfiguration:v4];
  [v3 playWithCompletionHandler:0];
}

+ (TLAlert)alertWithConfiguration:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 type];
  if ((v5 - 1) > 0x1C)
  {
    v20 = 0;
    goto LABEL_43;
  }

  v6 = v5;
  v48 = a1;
  v7 = [v4 toneIdentifier];
  v8 = [v4 externalToneFileURL];
  v9 = [v4 externalToneMediaLibraryItemIdentifier];
  v10 = [v4 vibrationIdentifier];
  v11 = [v4 externalVibrationPattern];
  v12 = [v4 externalVibrationPatternFileURL];
  v50 = [v4 topic];
  v47 = [v4 targetDevice];
  v13 = +[TLToneManager sharedToneManager];
  v49 = v8;
  v51 = v13;
  if (v8)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v8 path];
    v16 = [MEMORY[0x1E696AFB0] UUID];
    [v16 UUIDString];
    v18 = v17 = v11;
    v19 = [v14 stringWithFormat:@"externalTone:%@-%@", v15, v18];

    v11 = v17;
    v7 = v15;
LABEL_12:

    v7 = v19;
    goto LABEL_13;
  }

  if (v9)
  {
    v21 = [v13 _toneIdentifierForMediaLibraryItemIdentifier:v9];
LABEL_11:
    v19 = v21;
    goto LABEL_12;
  }

  if (![v7 length] || !v47 && (objc_msgSend(v51, "toneWithIdentifierIsValid:", v7) & 1) == 0)
  {
    v21 = [v51 currentToneIdentifierForAlertType:v6 topic:v50];
    goto LABEL_11;
  }

LABEL_13:
  v22 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  v23 = [v22 hasVibratorCapability];

  if (!v23)
  {
    [v7 isEqualToString:@"<none>"];
    v24 = 0;
    v30 = 0;
    v31 = v12;
    goto LABEL_17;
  }

  v24 = +[TLVibrationManager sharedVibrationManager];
  if (!v11)
  {
    v31 = v12;
    if (v12)
    {
      v32 = MEMORY[0x1E696AEC0];
      v33 = [v12 path];
      v34 = [MEMORY[0x1E696AFB0] UUID];
      v35 = [v34 UUIDString];
      v36 = [v32 stringWithFormat:@"externalVibration:%@-%@", v33, v35];

      v31 = v12;
      v30 = 0;
      v10 = v36;
      goto LABEL_37;
    }

    if (!-[NSObject length](v10, "length") || ([v24 vibrationWithIdentifierIsValid:v10] & 1) == 0)
    {
      if (v47 == 1)
      {
        [v24 _synchronizedVibrationIdentifierForToneIdentifier:v7 targetDevice:1];
      }

      else
      {
        [v24 currentVibrationIdentifierForAlertType:v6 topic:v50];
      }
      v37 = ;

      v10 = v37;
    }

    v52 = 1;
    v38 = [v24 _sanitizeVibrationIdentifier:v10 forAlertType:v6 topic:0 targetDevice:v47 correspondingToneIdentifier:v7 didFallbackToCurrentVibrationIdentifier:&v52];
    v30 = [v38 isEqualToString:v10];
    if (v30)
    {
      if (![v10 hasPrefix:@"synchronizedvibration:"]|| v52 != 1)
      {
        v30 = 0;
        goto LABEL_36;
      }

      v39 = TLLogPlayback();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v54 = v10;
        v55 = 2114;
        v56 = v7;
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
        v54 = v10;
        v55 = 2114;
        v56 = v42;
        v57 = 2114;
        v58 = v7;
        v59 = 2114;
        v60 = v38;
        _os_log_impl(&dword_1D9356000, v41, OS_LOG_TYPE_DEFAULT, "Sanitizing vibrationIdentifier: %{public}@, for alert type: %{public}@, toneIdentifier: %{public}@. Using instead vibrationIdentifier: %{public}@.", buf, 0x2Au);

        v40 = v41;
      }

      v39 = v10;
      v10 = v38;
    }

LABEL_36:
    goto LABEL_37;
  }

  v25 = MEMORY[0x1E696AEC0];
  v26 = [v11 hash];
  v27 = [MEMORY[0x1E696AFB0] UUID];
  v28 = [v27 UUIDString];
  v29 = [v25 stringWithFormat:@"externalVibration:%llu-%@", v26, v28];

  v30 = 0;
  v10 = v29;
  v31 = v12;
LABEL_37:
  v43 = [v10 isEqualToString:@"<none>"];
  if ([v7 isEqualToString:@"<none>"] && v43)
  {
    v44 = TLLogPlayback();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v54 = v4;
      _os_log_impl(&dword_1D9356000, v44, OS_LOG_TYPE_DEFAULT, "Nothing to be played for alert configuration: %{public}@. Returning a nil alert.", buf, 0xCu);
    }

    v20 = 0;
    goto LABEL_42;
  }

LABEL_17:
  v20 = [[v48 alloc] _initWithConfiguration:v4 toneIdentifier:v7 vibrationIdentifier:v10 hasSynchronizedVibrationUnmatchedWithTone:v30];
LABEL_42:

LABEL_43:
  v45 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_initWithConfiguration:(id)a3 toneIdentifier:(id)a4 vibrationIdentifier:(id)a5 hasSynchronizedVibrationUnmatchedWithTone:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v22.receiver = self;
  v22.super_class = TLAlert;
  v14 = [(TLAlert *)&v22 init];
  if (v14)
  {
    v15 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    v16 = [v15 isInternalInstall];

    if (v16)
    {
      v14->_instanceIndex = atomic_fetch_add(&_initWithConfiguration_toneIdentifier_vibrationIdentifier_hasSynchronizedVibrationUnmatchedWithTone___TLAlertLastAllocatedInstanceIndex, 1uLL) + 1;
    }

    [v11 _freeze];
    objc_storeStrong(&v14->_configuration, a3);
    v14->_type = [v11 type];
    v17 = [v12 copy];
    toneIdentifier = v14->_toneIdentifier;
    v14->_toneIdentifier = v17;

    v19 = [v13 copy];
    vibrationIdentifier = v14->_vibrationIdentifier;
    v14->_vibrationIdentifier = v19;

    v14->_hasSynchronizedVibrationUnmatchedWithTone = a6;
  }

  return v14;
}

- (void)playWithCompletionHandler:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TLLogPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TLAlert *)self debugDescription];
    v7 = v6;
    v8 = "!= NULL";
    if (!v4)
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
  [v9 playAlert:self withCompletionHandler:v4];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)stopWithOptions:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TLLogPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1D9356000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: -stop…: options = %{public}@.", buf, 0x16u);
  }

  v6 = [v4 copy];
  v7 = +[TLAlertController sharedAlertController];
  v10 = self;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [v7 stopPlayingAlerts:v8 withOptions:v6 playbackCompletionType:2];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)preheatWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[TLAlertController sharedAlertController];
  [v5 preheatForAlert:self completionHandler:v4];
}

+ (BOOL)_watchPrefersSalientToneAndVibration
{
  v2 = +[TLToneManager sharedToneManager];
  v3 = [v2 _watchPrefersSalientNotifications];

  return v3;
}

+ (int64_t)_currentOverridePolicyForType:(int64_t)a3
{
  v4 = +[TLToneManager sharedToneManager];
  v5 = [v4 _currentOverridePolicyForAlertType:a3];

  return v5;
}

+ (void)_setCurrentOverridePolicy:(int64_t)a3 forType:(int64_t)a4
{
  v6 = +[TLToneManager sharedToneManager];
  [v6 _setCurrentOverridePolicy:a3 forAlertType:a4];
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
  v4 = [v3 stopAllAlerts];

  return v4;
}

- (void)_updateAudioVolumeDynamicallyToValue:(float)a3
{
  v6 = +[TLAlertController sharedAlertController];
  *&v5 = a3;
  [v6 updateAudioVolumeDynamicallyForAlert:self toValue:v5];
}

- (id)_descriptionForDebugging:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithFormat:@"<%@: %p", v7, self];

  if (self->_instanceIndex >= 1)
  {
    [v8 appendFormat:@" [%ld]", self->_instanceIndex];
  }

  if (v3)
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