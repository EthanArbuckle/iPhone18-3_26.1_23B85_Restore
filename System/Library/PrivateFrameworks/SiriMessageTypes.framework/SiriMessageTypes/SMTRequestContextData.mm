@interface SMTRequestContextData
- (SMTRequestContextData)initWithBuilder:(id)builder;
- (id)_sanitizeVoiceTriggerEventInfo:(id)info;
@end

@implementation SMTRequestContextData

- (id)_sanitizeVoiceTriggerEventInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v4 = infoCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__SMTRequestContextData__sanitizeVoiceTriggerEventInfo___block_invoke;
    v9[3] = &unk_2784D5BF0;
    v10 = dictionary;
    v6 = dictionary;
    [v4 enumerateKeysAndObjectsUsingBlock:v9];
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __56__SMTRequestContextData__sanitizeVoiceTriggerEventInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 stringValue];

      v6 = v7;
    }

    [*(a1 + 32) setObject:v6 forKey:v8];
  }
}

- (SMTRequestContextData)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v36.receiver = self;
  v36.super_class = SMTRequestContextData;
  v5 = [(SMTRequestContextData *)&v36 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = objc_alloc_init(SMTRequestContextDataMutating);
    builderCopy[2](builderCopy, v7);
    audioSource = [(SMTRequestContextDataMutating *)v7 audioSource];
    v9 = [audioSource copy];
    audioSource = v6->_audioSource;
    v6->_audioSource = v9;

    audioDestination = [(SMTRequestContextDataMutating *)v7 audioDestination];
    v12 = [audioDestination copy];
    audioDestination = v6->_audioDestination;
    v6->_audioDestination = v12;

    responseMode = [(SMTRequestContextDataMutating *)v7 responseMode];
    v15 = [responseMode copy];
    responseMode = v6->_responseMode;
    v6->_responseMode = v15;

    v6->_isEyesFree = [(SMTRequestContextDataMutating *)v7 isEyesFree];
    v6->_isVoiceTriggerEnabled = [(SMTRequestContextDataMutating *)v7 isVoiceTriggerEnabled];
    v6->_isTextToSpeechEnabled = [(SMTRequestContextDataMutating *)v7 isTextToSpeechEnabled];
    v6->_isTriggerlessFollowup = [(SMTRequestContextDataMutating *)v7 isTriggerlessFollowup];
    bargeInModes = [(SMTRequestContextDataMutating *)v7 bargeInModes];
    v18 = [bargeInModes copy];
    bargeInModes = v6->_bargeInModes;
    v6->_bargeInModes = v18;

    approximatePreviousTTSInterval = [(SMTRequestContextDataMutating *)v7 approximatePreviousTTSInterval];
    v21 = [approximatePreviousTTSInterval copy];
    approximatePreviousTTSInterval = v6->_approximatePreviousTTSInterval;
    v6->_approximatePreviousTTSInterval = v21;

    deviceRestrictions = [(SMTRequestContextDataMutating *)v7 deviceRestrictions];
    v24 = [deviceRestrictions copy];
    deviceRestrictions = v6->_deviceRestrictions;
    v6->_deviceRestrictions = v24;

    voiceTriggerEventInfo = [(SMTRequestContextDataMutating *)v7 voiceTriggerEventInfo];
    v27 = [(SMTRequestContextData *)v6 _sanitizeVoiceTriggerEventInfo:voiceTriggerEventInfo];
    voiceTriggerEventInfo = v6->_voiceTriggerEventInfo;
    v6->_voiceTriggerEventInfo = v27;

    v6->_voiceAudioSessionId = [(SMTRequestContextDataMutating *)v7 voiceAudioSessionId];
    v6->_isSystemApertureEnabled = [(SMTRequestContextDataMutating *)v7 isSystemApertureEnabled];
    v6->_isInAmbient = [(SMTRequestContextDataMutating *)v7 isInAmbient];
    v6->_isLiveActivitiesSupported = [(SMTRequestContextDataMutating *)v7 isLiveActivitiesSupported];
    v6->_isDeviceShowingLockScreen = [(SMTRequestContextDataMutating *)v7 isDeviceShowingLockScreen];
    v6->_isDeviceLocked = [(SMTRequestContextDataMutating *)v7 isDeviceLocked];
    userProfileMetadata = [(SMTRequestContextDataMutating *)v7 userProfileMetadata];
    v30 = [userProfileMetadata copy];
    userProfileMetadata = v6->_userProfileMetadata;
    v6->_userProfileMetadata = v30;

    v6->_activationTime = [(SMTRequestContextDataMutating *)v7 activationTime];
    v6->_suggestionRequestType = [(SMTRequestContextDataMutating *)v7 suggestionRequestType];
    location = [(SMTRequestContextDataMutating *)v7 location];
    v33 = [location copy];
    location = v6->_location;
    v6->_location = v33;
  }

  return v6;
}

@end