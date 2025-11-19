@interface TLAlertConfiguration
- (BOOL)isEqual:(id)a3;
- (TLAlertConfiguration)initWithCoder:(id)a3;
- (TLAlertConfiguration)initWithType:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_throwForFrozenInstance;
- (void)encodeWithCoder:(id)a3;
- (void)setAudioCategory:(id)a3;
- (void)setAudioVolume:(float)a3;
- (void)setExternalToneFileURL:(id)a3;
- (void)setExternalVibrationPattern:(id)a3;
- (void)setExternalVibrationPatternFileURL:(id)a3;
- (void)setShouldRepeat:(BOOL)a3;
- (void)setToneIdentifier:(id)a3;
- (void)setTopic:(id)a3;
- (void)setVibrationIdentifier:(id)a3;
@end

@implementation TLAlertConfiguration

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  v7 = _TLAlertTypeGetHumanReadableDescription(self->_type);
  [v6 appendFormat:@"; type = %@", v7];

  if ([(NSString *)self->_topic length])
  {
    [v6 appendFormat:@"; topic = %@", self->_topic];
  }

  if ([(NSString *)self->_toneIdentifier length])
  {
    [v6 appendFormat:@"; toneIdentifier = %@", self->_toneIdentifier];
  }

  if ([(NSString *)self->_vibrationIdentifier length])
  {
    [v6 appendFormat:@"; vibrationIdentifier = %@", self->_vibrationIdentifier];
  }

  if (self->_externalToneFileURL)
  {
    [v6 appendFormat:@"; externalToneFileURL = %@", self->_externalToneFileURL];
  }

  if (self->_externalToneMediaLibraryItemIdentifier)
  {
    [v6 appendFormat:@"; externalToneMediaLibraryItemIdentifier = %llu", self->_externalToneMediaLibraryItemIdentifier];
  }

  if (self->_externalVibrationPattern)
  {
    [v6 appendString:@"; has externalVibrationPattern"];
  }

  if (self->_externalVibrationPatternFileURL)
  {
    [v6 appendFormat:@"; externalVibrationPatternFileURL = %@", self->_externalVibrationPatternFileURL];
  }

  if ([(NSString *)self->_audioCategory length])
  {
    [v6 appendFormat:@"; audioCategory = %@", self->_audioCategory];
  }

  if (self->_hasCustomAudioVolume)
  {
    [v6 appendFormat:@"; audioVolume = %f", self->_audioVolume];
  }

  if (self->_forPreview)
  {
    [v6 appendString:@"; isForPreview = YES"];
  }

  if (self->_maximumDuration > 0.00000011920929)
  {
    [v6 appendFormat:@"; maximumDuration = %f", *&self->_maximumDuration];
  }

  if (self->_prefersToDisallowExternalPlayback)
  {
    [v6 appendString:@"; prefersToDisallowExternalPlayback = YES"];
  }

  if (self->_shouldRepeat)
  {
    [v6 appendString:@"; shouldRepeat = YES"];
  }

  if (self->_shouldIgnoreRingerSwitch)
  {
    [v6 appendString:@"; shouldIgnoreRingerSwitch = YES"];
  }

  if (self->_shouldForcePlayingAtUserSelectedAudioVolume)
  {
    [v6 appendString:@"; shouldForcePlayingAtUserSelectedAudioVolume = YES"];
  }

  if (self->_shouldIgnoreAccessibilityDisabledVibrationSetting)
  {
    [v6 appendString:@"; shouldIgnoreAccessibilityDisabledVibrationSetting = YES"];
  }

  targetDevice = self->_targetDevice;
  if (targetDevice)
  {
    v9 = _TLAlertTargetDeviceGetHumanReadableDescription(targetDevice);
    [v6 appendFormat:@"; targetDevice = %@", v9];
  }

  if (self->_audioPlaybackInitiationDelay > 0.00000011920929)
  {
    [v6 appendFormat:@"; audioPlaybackInitiationDelay = %f", *&self->_audioPlaybackInitiationDelay];
  }

  if (self->_audioVolumeRampingDuration > 0.00000011920929)
  {
    [v6 appendFormat:@"; audioVolumeRampingDuration = %f", *&self->_audioVolumeRampingDuration];
  }

  [v6 appendString:@">"];

  return v6;
}

- (void)_throwForFrozenInstance
{
  if (self->_isFrozen)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Instances of TLAlertConfiguration cannot be mutated once they've been used to make an instance of TLAlert. Please make a copy of the TLAlertConfiguration instead."];
  }
}

- (unint64_t)hash
{
  type = self->_type;
  v4 = [(NSString *)self->_topic hash]^ type;
  v5 = [(NSString *)self->_toneIdentifier hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_vibrationIdentifier hash];
  v7 = [(NSURL *)self->_externalToneFileURL hash]^ self->_externalToneMediaLibraryItemIdentifier;
  v8 = v6 ^ v7 ^ [(NSDictionary *)self->_externalVibrationPattern hash];
  v9 = [(NSURL *)self->_externalVibrationPatternFileURL hash];
  v10 = [(NSString *)self->_audioCategory hash];
  v11 = llroundf(self->_audioVolume * 1000.0);
  v12 = llround(self->_maximumDuration * 10000.0);
  v13 = llround(self->_audioPlaybackInitiationDelay * 10000.0);
  v14 = 1000;
  if (!self->_forPreview)
  {
    v14 = 0;
  }

  v15 = v8 ^ v9 ^ v10 ^ v14 ^ v11;
  v16 = 100000;
  if (!self->_prefersToDisallowExternalPlayback)
  {
    v16 = 0;
  }

  v17 = v15 ^ v16 ^ v12;
  v18 = 1000000;
  if (!self->_shouldRepeat)
  {
    v18 = 0;
  }

  v19 = 10000000;
  if (!self->_shouldIgnoreRingerSwitch)
  {
    v19 = 0;
  }

  v20 = v18 ^ v19;
  v21 = 100000000;
  if (self->_shouldForcePlayingAtUserSelectedAudioVolume)
  {
    v22 = 100000000;
  }

  else
  {
    v22 = 0;
  }

  v23 = v20 ^ v22;
  if (!self->_shouldIgnoreAccessibilityDisabledVibrationSetting)
  {
    v21 = 0;
  }

  v24 = v23 ^ v21 ^ (1000000000 * self->_targetDevice);
  v25 = 100;
  if (!self->_hasCustomAudioVolume)
  {
    v25 = 0;
  }

  return v17 ^ v24 ^ v25 ^ v13 ^ llround(self->_audioVolumeRampingDuration * 10000.0);
}

- (TLAlertConfiguration)initWithType:(int64_t)a3
{
  v15.receiver = self;
  v15.super_class = TLAlertConfiguration;
  v4 = [(TLAlertConfiguration *)&v15 init];
  v5 = v4;
  if (v4)
  {
    topic = v4->_topic;
    v4->_type = a3;
    v4->_topic = &stru_1F54CFF40;

    toneIdentifier = v5->_toneIdentifier;
    v5->_toneIdentifier = &stru_1F54CFF40;

    vibrationIdentifier = v5->_vibrationIdentifier;
    v5->_vibrationIdentifier = &stru_1F54CFF40;

    audioCategory = v5->_audioCategory;
    v5->_audioCategory = &stru_1F54CFF40;

    type = v5->_type;
    v11 = type >= 0x1C;
    v13 = type == 28;
    v12 = (1 << type) & 0x10006002;
    v13 = !v13 && v11 || v12 == 0;
    if (!v13)
    {
      v5->_shouldRepeat = 1;
    }

    v5->_audioVolume = 1.0;
    v5->_targetDevice = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v13 = self->_type == v5->_type && ((topic = self->_topic, topic == v5->_topic) || [(NSString *)topic isEqualToString:?]) && ((toneIdentifier = self->_toneIdentifier, toneIdentifier == v5->_toneIdentifier) || [(NSString *)toneIdentifier isEqualToString:?]) && ((vibrationIdentifier = self->_vibrationIdentifier, vibrationIdentifier == v5->_vibrationIdentifier) || [(NSString *)vibrationIdentifier isEqualToString:?]) && ((externalToneFileURL = self->_externalToneFileURL, externalToneFileURL == v5->_externalToneFileURL) || [(NSURL *)externalToneFileURL isEqual:?]) && self->_externalToneMediaLibraryItemIdentifier == v5->_externalToneMediaLibraryItemIdentifier && ((externalVibrationPattern = self->_externalVibrationPattern, externalVibrationPattern == v5->_externalVibrationPattern) || [(NSDictionary *)externalVibrationPattern isEqualToDictionary:?]) && ((externalVibrationPatternFileURL = self->_externalVibrationPatternFileURL, externalVibrationPatternFileURL == v5->_externalVibrationPatternFileURL) || [(NSURL *)externalVibrationPatternFileURL isEqual:?]) && ((audioCategory = self->_audioCategory, audioCategory == v5->_audioCategory) || [(NSString *)audioCategory isEqualToString:?]) && self->_forPreview == v5->_forPreview && vabds_f32(self->_audioVolume, v5->_audioVolume) < 0.00000011921 && vabdd_f64(self->_maximumDuration, v5->_maximumDuration) < 0.00000011920929 && self->_prefersToDisallowExternalPlayback == v5->_prefersToDisallowExternalPlayback && self->_shouldRepeat == v5->_shouldRepeat && self->_shouldIgnoreRingerSwitch == v5->_shouldIgnoreRingerSwitch && self->_shouldForcePlayingAtUserSelectedAudioVolume == v5->_shouldForcePlayingAtUserSelectedAudioVolume && self->_shouldIgnoreAccessibilityDisabledVibrationSetting == v5->_shouldIgnoreAccessibilityDisabledVibrationSetting && self->_targetDevice == v5->_targetDevice && self->_hasCustomAudioVolume == v5->_hasCustomAudioVolume && self->_audioPlaybackInitiationDelay == v5->_audioPlaybackInitiationDelay && self->_audioVolumeRampingDuration == v5->_audioVolumeRampingDuration;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TLAlertConfiguration alloc] initWithType:self->_type];
  if (v4)
  {
    v5 = [(NSString *)self->_topic copy];
    topic = v4->_topic;
    v4->_topic = v5;

    v7 = [(NSString *)self->_toneIdentifier copy];
    toneIdentifier = v4->_toneIdentifier;
    v4->_toneIdentifier = v7;

    v9 = [(NSString *)self->_vibrationIdentifier copy];
    vibrationIdentifier = v4->_vibrationIdentifier;
    v4->_vibrationIdentifier = v9;

    v11 = [(NSURL *)self->_externalToneFileURL copy];
    externalToneFileURL = v4->_externalToneFileURL;
    v4->_externalToneFileURL = v11;

    v4->_externalToneMediaLibraryItemIdentifier = self->_externalToneMediaLibraryItemIdentifier;
    v13 = [(NSDictionary *)self->_externalVibrationPattern copy];
    externalVibrationPattern = v4->_externalVibrationPattern;
    v4->_externalVibrationPattern = v13;

    v15 = [(NSURL *)self->_externalVibrationPatternFileURL copy];
    externalVibrationPatternFileURL = v4->_externalVibrationPatternFileURL;
    v4->_externalVibrationPatternFileURL = v15;

    v17 = [(NSString *)self->_audioCategory copy];
    audioCategory = v4->_audioCategory;
    v4->_audioCategory = v17;

    v4->_audioVolume = self->_audioVolume;
    v4->_forPreview = self->_forPreview;
    v4->_maximumDuration = self->_maximumDuration;
    v4->_prefersToDisallowExternalPlayback = self->_prefersToDisallowExternalPlayback;
    v4->_shouldRepeat = self->_shouldRepeat;
    v4->_shouldIgnoreRingerSwitch = self->_shouldIgnoreRingerSwitch;
    v4->_shouldForcePlayingAtUserSelectedAudioVolume = self->_shouldForcePlayingAtUserSelectedAudioVolume;
    v4->_shouldIgnoreAccessibilityDisabledVibrationSetting = self->_shouldIgnoreAccessibilityDisabledVibrationSetting;
    v4->_targetDevice = self->_targetDevice;
    v4->_hasCustomAudioVolume = self->_hasCustomAudioVolume;
    v4->_audioPlaybackInitiationDelay = self->_audioPlaybackInitiationDelay;
    v4->_audioVolumeRampingDuration = self->_audioVolumeRampingDuration;
  }

  return v4;
}

- (TLAlertConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[TLAlertConfiguration initWithType:](self, "initWithType:", [v4 decodeIntegerForKey:@"type"]);
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
    v7 = [v6 copy];
    topic = v5->_topic;
    v5->_topic = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"toneIdentifier"];
    v10 = [v9 copy];
    toneIdentifier = v5->_toneIdentifier;
    v5->_toneIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vibrationIdentifier"];
    v13 = [v12 copy];
    vibrationIdentifier = v5->_vibrationIdentifier;
    v5->_vibrationIdentifier = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalToneFileURL"];
    v16 = [v15 copy];
    externalToneFileURL = v5->_externalToneFileURL;
    v5->_externalToneFileURL = v16;

    v5->_externalToneMediaLibraryItemIdentifier = [v4 decodeInt64ForKey:@"externalToneMediaLibraryItemIdentifier"];
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v18 setWithObjects:{v19, v20, v21, v22, v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"externalVibrationPattern"];
    v26 = [v25 copy];
    externalVibrationPattern = v5->_externalVibrationPattern;
    v5->_externalVibrationPattern = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalVibrationPatternFileURL"];
    v29 = [v28 copy];
    externalVibrationPatternFileURL = v5->_externalVibrationPatternFileURL;
    v5->_externalVibrationPatternFileURL = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioCategory"];
    v32 = [v31 copy];
    audioCategory = v5->_audioCategory;
    v5->_audioCategory = v32;

    [v4 decodeFloatForKey:@"audioVolume"];
    v5->_audioVolume = v34;
    v5->_forPreview = [v4 decodeBoolForKey:@"isForPreview"];
    [v4 decodeDoubleForKey:@"maximumDuration"];
    v5->_maximumDuration = v35;
    v5->_prefersToDisallowExternalPlayback = [v4 decodeBoolForKey:@"prefersToDisallowExternalPlayback"];
    v5->_shouldRepeat = [v4 decodeBoolForKey:@"shouldRepeat"];
    v5->_shouldIgnoreRingerSwitch = [v4 decodeBoolForKey:@"shouldIgnoreRingerSwitch"];
    v5->_shouldForcePlayingAtUserSelectedAudioVolume = [v4 decodeBoolForKey:@"shouldForcePlayingAtUserSelectedAudioVolume"];
    v5->_shouldIgnoreAccessibilityDisabledVibrationSetting = [v4 decodeBoolForKey:@"shouldIgnoreAccessibilityDisabledVibrationSetting"];
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetDevice"];
    v5->_targetDevice = TLAlertTargetDeviceFromString(v36);
    v5->_hasCustomAudioVolume = [v4 decodeBoolForKey:@"hasCustomAudioVolume"];
    [v4 decodeDoubleForKey:@"audioPlaybackInitiationDelay"];
    v5->_audioPlaybackInitiationDelay = v37;
    [v4 decodeDoubleForKey:@"audioVolumeRampingDuration"];
    v5->_audioVolumeRampingDuration = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_topic forKey:@"topic"];
  [v5 encodeObject:self->_toneIdentifier forKey:@"toneIdentifier"];
  [v5 encodeObject:self->_vibrationIdentifier forKey:@"vibrationIdentifier"];
  [v5 encodeObject:self->_externalToneFileURL forKey:@"externalToneFileURL"];
  [v5 encodeInt64:self->_externalToneMediaLibraryItemIdentifier forKey:@"externalToneMediaLibraryItemIdentifier"];
  [v5 encodeObject:self->_externalVibrationPattern forKey:@"externalVibrationPattern"];
  [v5 encodeObject:self->_externalVibrationPatternFileURL forKey:@"externalVibrationPatternFileURL"];
  [v5 encodeObject:self->_audioCategory forKey:@"audioCategory"];
  *&v6 = self->_audioVolume;
  [v5 encodeFloat:@"audioVolume" forKey:v6];
  [v5 encodeBool:self->_forPreview forKey:@"isForPreview"];
  [v5 encodeDouble:@"maximumDuration" forKey:self->_maximumDuration];
  [v5 encodeBool:self->_prefersToDisallowExternalPlayback forKey:@"prefersToDisallowExternalPlayback"];
  [v5 encodeBool:self->_shouldRepeat forKey:@"shouldRepeat"];
  [v5 encodeBool:self->_shouldIgnoreRingerSwitch forKey:@"shouldIgnoreRingerSwitch"];
  [v5 encodeBool:self->_shouldForcePlayingAtUserSelectedAudioVolume forKey:@"shouldForcePlayingAtUserSelectedAudioVolume"];
  [v5 encodeBool:self->_shouldIgnoreAccessibilityDisabledVibrationSetting forKey:@"shouldIgnoreAccessibilityDisabledVibrationSetting"];
  v7 = NSStringFromTLAlertTargetDevice(self->_targetDevice);
  [v5 encodeObject:v7 forKey:@"targetDevice"];
  [v5 encodeBool:self->_hasCustomAudioVolume forKey:@"hasCustomAudioVolume"];
  [v5 encodeDouble:@"audioPlaybackInitiationDelay" forKey:self->_audioPlaybackInitiationDelay];
  [v5 encodeDouble:@"audioVolumeRampingDuration" forKey:self->_audioVolumeRampingDuration];
}

- (void)setTopic:(id)a3
{
  v10 = a3;
  [(TLAlertConfiguration *)self _throwForFrozenInstance];
  v4 = [v10 copy];
  topic = self->_topic;
  self->_topic = v4;

  type = self->_type;
  if (type == 13)
  {
    if (self->_hasCustomRepeatingFlag)
    {
      goto LABEL_15;
    }

    self->_shouldRepeat = [v10 isEqualToString:@"TLAlertTopicAlarmGoToSleep"] ^ 1;
    type = self->_type;
  }

  if (type == 1)
  {
    if (self->_hasCustomRepeatingFlag)
    {
      goto LABEL_15;
    }

    v7 = ([v10 isEqualToString:@"TLAlertTopicIncomingCallFaceTimeGroupInvitation"] & 1) == 0 && !objc_msgSend(v10, "isEqualToString:", @"TLAlertTopicIncomingCallFaceTimeParticipantJoined");
    self->_shouldRepeat = v7;
    type = self->_type;
  }

  if (type == 16)
  {
    v8 = [v10 isEqualToString:@"TLAlertTopicSystemNotificationFindMyDevice"];
    v9 = 0.0;
    if (v8)
    {
      v9 = 5.0;
    }

    self->_audioPlaybackInitiationDelay = v9;
    self->_audioVolumeRampingDuration = v9;
  }

LABEL_15:
}

- (void)setToneIdentifier:(id)a3
{
  v4 = a3;
  [(TLAlertConfiguration *)self _throwForFrozenInstance];
  v5 = [v4 copy];

  toneIdentifier = self->_toneIdentifier;
  self->_toneIdentifier = v5;
}

- (void)setVibrationIdentifier:(id)a3
{
  v4 = a3;
  [(TLAlertConfiguration *)self _throwForFrozenInstance];
  v5 = [v4 copy];

  vibrationIdentifier = self->_vibrationIdentifier;
  self->_vibrationIdentifier = v5;
}

- (void)setExternalToneFileURL:(id)a3
{
  v4 = a3;
  [(TLAlertConfiguration *)self _throwForFrozenInstance];
  v5 = [v4 copy];

  externalToneFileURL = self->_externalToneFileURL;
  self->_externalToneFileURL = v5;
}

- (void)setExternalVibrationPattern:(id)a3
{
  v4 = a3;
  [(TLAlertConfiguration *)self _throwForFrozenInstance];
  v5 = [v4 copy];

  externalVibrationPattern = self->_externalVibrationPattern;
  self->_externalVibrationPattern = v5;
}

- (void)setExternalVibrationPatternFileURL:(id)a3
{
  v4 = a3;
  [(TLAlertConfiguration *)self _throwForFrozenInstance];
  v5 = [v4 copy];

  externalVibrationPatternFileURL = self->_externalVibrationPatternFileURL;
  self->_externalVibrationPatternFileURL = v5;
}

- (void)setAudioCategory:(id)a3
{
  v4 = a3;
  [(TLAlertConfiguration *)self _throwForFrozenInstance];
  v5 = [v4 copy];

  audioCategory = self->_audioCategory;
  self->_audioCategory = v5;
}

- (void)setAudioVolume:(float)a3
{
  [(TLAlertConfiguration *)self _throwForFrozenInstance];
  self->_audioVolume = a3;
  self->_hasCustomAudioVolume = 1;
}

- (void)setShouldRepeat:(BOOL)a3
{
  [(TLAlertConfiguration *)self _throwForFrozenInstance];
  self->_shouldRepeat = a3;
  self->_hasCustomRepeatingFlag = 1;
}

@end