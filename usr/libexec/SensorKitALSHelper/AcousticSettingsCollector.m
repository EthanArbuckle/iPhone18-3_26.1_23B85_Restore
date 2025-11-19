@interface AcousticSettingsCollector
+ (void)initialize;
- (void)dealloc;
- (void)launchEventRunActivity:(id)a3;
- (void)readAudioLevelAndSamplesLifetimeSettings;
- (void)readBackgroundSoundsSettings;
- (void)readEnvironmentalSoundMeasurementSettings;
- (void)readHeadphoneAccommodationsSettings;
- (void)readLeftRightBalanceSettings;
- (void)readMonoAudioSettings;
- (void)readMusicEQSettings;
- (void)readMusicSoundCheckSettings;
- (void)sensorWriterDidStopMonitoring:(id)a3;
- (void)sensorWriterWillStartMonitoring:(id)a3;
@end

@implementation AcousticSettingsCollector

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_10002B260 = os_log_create("com.apple.SensorKit", "SRLogAcousticSettingsCollector");
  }
}

- (void)dealloc
{
  sub_100003E04(self);

  self->_sensorWriter = 0;
  self->_queue = 0;

  self->_launchEvents = 0;
  v3.receiver = self;
  v3.super_class = AcousticSettingsCollector;
  [(AcousticSettingsCollector *)&v3 dealloc];
}

- (void)readEnvironmentalSoundMeasurementSettings
{
  noiseSettings = self->_noiseSettings;
  if (!noiseSettings)
  {
    noiseSettings = +[HUNoiseSettings sharedInstance];
    self->_noiseSettings = noiseSettings;
  }

  v4 = [(HUNoiseSettings *)noiseSettings noiseEnabled];
  self->_environmentalSoundMeasurementEnabled = v4;
  self->_noiseSettings = 0;
  v5 = qword_10002B260;
  if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Watch > Settings > Noise, environmentalSoundMeasurementEnabled: %d", v6, 8u);
  }
}

- (void)readAudioLevelAndSamplesLifetimeSettings
{
  audioDataManager = self->_audioDataManager;
  if (audioDataManager || (audioDataManager = objc_alloc_init(ADASManager), (self->_audioDataManager = audioDataManager) != 0))
  {
    v4 = ADAFPreferenceKeyVolumeLimitEnabled;
    v5 = ADAFPreferenceKeyVolumeLimitThreshold;
    v17[0] = ADAFPreferenceKeyVolumeLimitEnabled;
    v17[1] = ADAFPreferenceKeyVolumeLimitThreshold;
    v6 = ADAFPreferenceKeyHAESampleTransient;
    v17[2] = ADAFPreferenceKeyHAESampleTransient;
    v7 = [(ADASManager *)audioDataManager getPreferencesFor:[NSArray arrayWithObjects:v17 count:3]];
    if ([v7 objectForKeyedSubscript:v4])
    {
      self->_audioThresholdIsEnabled = [objc_msgSend(v7 objectForKeyedSubscript:{v4), "BOOLValue"}];
    }

    if ([v7 objectForKeyedSubscript:v5])
    {
      self->_audioThreshold = [objc_msgSend(v7 objectForKeyedSubscript:{v5), "intValue"}];
    }

    if ([v7 objectForKeyedSubscript:v6])
    {
      self->_sampleTransientIs8Days = [objc_msgSend(v7 objectForKeyedSubscript:{v6), "BOOLValue"}];
    }

    self->_audioDataManager = 0;
    v8 = qword_10002B260;
    if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEFAULT))
    {
      audioThresholdIsEnabled = self->_audioThresholdIsEnabled;
      audioThreshold = self->_audioThreshold;
      v13 = 67109376;
      v14 = audioThresholdIsEnabled;
      v15 = 2048;
      v16 = audioThreshold;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Settings > Sounds & Haptics > Headphone Safety > Reduce Loud Sounds, audio threshold enabled: %d, audio threshold value:%li", &v13, 0x12u);
      v8 = qword_10002B260;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sampleTransientIs8Days = self->_sampleTransientIs8Days;
      v13 = 67109120;
      v14 = sampleTransientIs8Days;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Settings > Privacy > Health > Headphone Audio Levels, save in health for 8 days = %d", &v13, 8u);
    }
  }

  else
  {
    v12 = qword_10002B260;
    if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to init audio data manager", &v13, 2u);
    }

    self->_audioThresholdIsEnabled = 0;
    self->_audioThreshold = 0;
  }
}

- (void)readHeadphoneAccommodationsSettings
{
  paSettings = self->_paSettings;
  if (!paSettings)
  {
    paSettings = +[PASettings sharedInstance];
    self->_paSettings = paSettings;
  }

  self->_headphoneAccommodationsEnabled = [(PASettings *)paSettings personalMediaEnabled];
  self->_headphoneAccommodationsTuning = [-[PASettings personalMediaConfiguration](self->_paSettings "personalMediaConfiguration")];
  self->_headphoneAccommodationsBoosting = [-[PASettings personalMediaConfiguration](self->_paSettings "personalMediaConfiguration")];
  v4 = [(PASettings *)self->_paSettings personalAudioAccommodationTypes];
  self->_headphoneAccommodationsApplication = v4;
  self->_paSettings = 0;
  v5 = qword_10002B260;
  if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEFAULT))
  {
    headphoneAccommodationsEnabled = self->_headphoneAccommodationsEnabled;
    headphoneAccommodationsTuning = self->_headphoneAccommodationsTuning;
    headphoneAccommodationsBoosting = self->_headphoneAccommodationsBoosting;
    v9[0] = 67109888;
    v9[1] = headphoneAccommodationsEnabled;
    v10 = 2048;
    v11 = headphoneAccommodationsTuning;
    v12 = 2048;
    v13 = headphoneAccommodationsBoosting;
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Settings > Accessibility > Audio/Visual > Headphone Accommodations, enabled: %d, tunning: %li, boosting: %li, application: %li", v9, 0x26u);
  }
}

- (void)readBackgroundSoundsSettings
{
  comfortSoundsSettings = self->_comfortSoundsSettings;
  if (!comfortSoundsSettings)
  {
    comfortSoundsSettings = +[HUComfortSoundsSettings sharedInstance];
    self->_comfortSoundsSettings = comfortSoundsSettings;
  }

  self->_backgroundSoundsEnabled = [(HUComfortSoundsSettings *)comfortSoundsSettings comfortSoundsEnabled];
  self->_mixesWithMedia = [(HUComfortSoundsSettings *)self->_comfortSoundsSettings mixesWithMedia];
  v4 = [-[HUComfortSoundsSettings selectedComfortSound](self->_comfortSoundsSettings "selectedComfortSound")];
  objc_setProperty_nonatomic_copy(self, v5, v4, 88);
  [(HUComfortSoundsSettings *)self->_comfortSoundsSettings relativeVolume];
  self->_relativeVolume = v6;
  [(HUComfortSoundsSettings *)self->_comfortSoundsSettings mediaVolume];
  self->_relativeVolumeWithMedia = v7;
  v8 = [(HUComfortSoundsSettings *)self->_comfortSoundsSettings stopsOnLock];
  self->_stopOnLock = v8;
  self->_comfortSoundsSettings = 0;
  v9 = qword_10002B260;
  if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEFAULT))
  {
    backgroundSoundsEnabled = self->_backgroundSoundsEnabled;
    backgroundSound = self->_backgroundSound;
    relativeVolume = self->_relativeVolume;
    relativeVolumeWithMedia = self->_relativeVolumeWithMedia;
    mixesWithMedia = self->_mixesWithMedia;
    v15[0] = 67110402;
    v15[1] = backgroundSoundsEnabled;
    v16 = 2112;
    v17 = backgroundSound;
    v18 = 2048;
    v19 = relativeVolume;
    v20 = 2048;
    v21 = relativeVolumeWithMedia;
    v22 = 1024;
    v23 = mixesWithMedia;
    v24 = 1024;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Settings > Accessibility > Audio/Visual > Background Sounds, enabled: %d, sound name: %@, relative volume: %f, relative volume with media: %f, mix with media: %d, stop on lock: %d", v15, 0x32u);
  }
}

- (void)readLeftRightBalanceSettings
{
  axSettings = self->_axSettings;
  if (!axSettings)
  {
    axSettings = +[AXSettings sharedInstance];
    self->_axSettings = axSettings;
  }

  [(AXSettings *)axSettings leftRightBalanceValue];
  v5 = v4;
  self->_leftRightBalance = v4;
  self->_axSettings = 0;
  v6 = qword_10002B260;
  if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Settings > Accessibility > Audio/Visual > Balance, leftRightBalance: %f", &v7, 0xCu);
  }
}

- (void)readMonoAudioSettings
{
  v3 = _AXSMonoAudioEnabled();
  if (self)
  {
    v4 = v3;
    self->_monoAudioEnabled = v3 != 0;
    v5 = qword_10002B260;
    if (!os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v6 = v4 != 0;
    goto LABEL_4;
  }

  v5 = qword_10002B260;
  if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 0;
LABEL_4:
    v7[0] = 67109120;
    v7[1] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Settings > Accessibility > Audio/Visual, mono audio mode enabled: %d", v7, 8u);
  }
}

- (void)readMusicEQSettings
{
  preferencesSounds = self->_preferencesSounds;
  if (!preferencesSounds)
  {
    preferencesSounds = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.preferences-sounds"];
    self->_preferencesSounds = preferencesSounds;
  }

  self->_lateNightModeEnabled = [(NSUserDefaults *)preferencesSounds BOOLForKey:@"latenightmode"];

  self->_preferencesSounds = 0;
  v4 = qword_10002B260;
  if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEFAULT))
  {
    lateNightModeEnabled = self->_lateNightModeEnabled;
    v6[0] = 67109120;
    v6[1] = lateNightModeEnabled;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Settings > Apps > Music > EQ, late night mode enabled %d", v6, 8u);
  }
}

- (void)readMusicSoundCheckSettings
{
  playbackDefaults = self->_playbackDefaults;
  if (!playbackDefaults)
  {
    playbackDefaults = +[MPPlaybackUserDefaults standardUserDefaults];
    self->_playbackDefaults = playbackDefaults;
  }

  v4 = [(MPPlaybackUserDefaults *)playbackDefaults soundCheckEnabled];
  self->_soundCheckEnabled = v4;
  self->_playbackDefaults = 0;
  v5 = qword_10002B260;
  if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Settings > Apps > Music, sound check enabled %d", v6, 8u);
  }
}

- (void)sensorWriterWillStartMonitoring:(id)a3
{
  v4 = qword_10002B260;
  if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_INFO))
  {
    LOWORD(v24[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Start acoustic setting collection", v24, 2u);
  }

  if (self)
  {
    objc_initWeak(&location, self);
    p_registrationTokenForEnvironmentalSoundMeasurement = &self->_registrationTokenForEnvironmentalSoundMeasurement;
    if (self->_registrationTokenForEnvironmentalSoundMeasurement == -1)
    {
      v6 = [-[HUNoiseSettings notificationForNoiseEnabled](+[HUNoiseSettings sharedInstance](HUNoiseSettings "sharedInstance")];
      queue = self->_queue;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100004084;
      v24[3] = &unk_100024A90;
      objc_copyWeak(v25, &location);
      v8 = notify_register_dispatch(v6, &self->_registrationTokenForEnvironmentalSoundMeasurement, queue, v24);
      if (v8 || *p_registrationTokenForEnvironmentalSoundMeasurement == -1)
      {
        v9 = qword_10002B260;
        if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_ERROR))
        {
          v10 = *p_registrationTokenForEnvironmentalSoundMeasurement;
          *buf = 67109376;
          *&buf[4] = v8;
          LOWORD(v38) = 1024;
          *(&v38 + 2) = v10;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to register for environmental sound measurement settings updates, status: %d, token:%d", buf, 0xEu);
        }
      }

      objc_destroyWeak(v25);
    }

    p_registrationTokenForAudioLevel = &self->_registrationTokenForAudioLevel;
    if (self->_registrationTokenForAudioLevel == -1)
    {
      v12 = [ADAFDarwinNotificationKeyRLSStatusDidChange UTF8String];
      v13 = self->_queue;
      *buf = _NSConcreteStackBlock;
      v38 = 3221225472;
      v39 = sub_1000045A0;
      v40 = &unk_100024A90;
      objc_copyWeak(&v41, &location);
      v14 = notify_register_dispatch(v12, &self->_registrationTokenForAudioLevel, v13, buf);
      if (v14 || *p_registrationTokenForAudioLevel == -1)
      {
        v15 = qword_10002B260;
        if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_ERROR))
        {
          v16 = *p_registrationTokenForAudioLevel;
          *handler = 67109376;
          *&handler[4] = v14;
          LOWORD(v33) = 1024;
          *(&v33 + 2) = v16;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to register for audio level settings updates, status: %d, token:%d", handler, 0xEu);
        }
      }

      objc_destroyWeak(&v41);
    }

    p_registrationTokenForSampleLifetime = &self->_registrationTokenForSampleLifetime;
    if (self->_registrationTokenForSampleLifetime == -1)
    {
      v18 = [ADAFDarwinNotificationKey UTF8String];
      v19 = self->_queue;
      *handler = _NSConcreteStackBlock;
      v33 = 3221225472;
      v34 = sub_100004620;
      v35 = &unk_100024A90;
      objc_copyWeak(v36, &location);
      v20 = notify_register_dispatch(v18, &self->_registrationTokenForSampleLifetime, v19, handler);
      if (v20 || *p_registrationTokenForSampleLifetime == -1)
      {
        v21 = qword_10002B260;
        if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_ERROR))
        {
          v22 = *p_registrationTokenForSampleLifetime;
          *v28 = 67109376;
          v29 = v20;
          v30 = 1024;
          v31 = v22;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to register for sample lifetime settings updates, status: %d, token:%d", v28, 0xEu);
        }
      }

      objc_destroyWeak(v36);
    }

    objc_destroyWeak(&location);
  }

  launchEvents = self->_launchEvents;
  v27 = @"com.apple.sensorkit.launchAcousticSettingsCollector";
  [(RDLaunchEvents *)launchEvents registerForXPCActivities:[NSArray arrayWithObjects:&v27 count:1]];
}

- (void)sensorWriterDidStopMonitoring:(id)a3
{
  v4 = qword_10002B260;
  if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Stop acoustic setting collection", v6, 2u);
  }

  sub_100003E04(self);
  launchEvents = self->_launchEvents;
  v7 = @"com.apple.sensorkit.launchAcousticSettingsCollector";
  [(RDLaunchEvents *)launchEvents unregisterForXPCActivities:[NSArray arrayWithObjects:&v7 count:1]];
}

- (void)launchEventRunActivity:(id)a3
{
  v4 = self;
  if (self)
  {
    self = self->_queue;
  }

  dispatch_assert_queue_V2(&self->super);
  if (a3)
  {
    v5 = *(a3 + 1);
  }

  else
  {
    v5 = 0;
  }

  if ([v5 isEqualToString:@"com.apple.sensorkit.launchAcousticSettingsCollector"])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000055F0;
    v8[3] = &unk_100024A10;
    v8[4] = a3;
    sub_100004104(v4, v8);
  }

  else
  {
    v6 = qword_10002B260;
    if (os_log_type_enabled(qword_10002B260, OS_LOG_TYPE_FAULT))
    {
      if (a3)
      {
        v7 = *(a3 + 1);
      }

      else
      {
        v7 = 0;
      }

      *buf = 138543362;
      v10 = v7;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Told to run unsupported XPC activity %{public}@", buf, 0xCu);
    }

    [a3 markCompleted];
  }
}

@end