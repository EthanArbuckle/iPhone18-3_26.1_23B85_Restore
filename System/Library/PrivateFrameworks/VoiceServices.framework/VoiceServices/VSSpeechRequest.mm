@interface VSSpeechRequest
- (BOOL)canLogRequestText;
- (BOOL)isSimilarTo:(id)to;
- (VSSpeechRequest)init;
- (VSSpeechRequest)initWithCoder:(id)coder;
- (id)contextInfoString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)logText;
- (id)logUtterance;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSSpeechRequest

- (BOOL)canLogRequestText
{
  if (self->_canUseServerTTS)
  {
    return 1;
  }

  v3 = +[VSSpeechInternalSettings standardInstance];
  logSensitiveText = [v3 logSensitiveText];

  return logSensitiveText;
}

- (id)contextInfoString
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendString:@"{"];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 1;
  contextInfo = self->_contextInfo;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __36__VSSpeechRequest_contextInfoString__block_invoke;
  v10 = &unk_279E4F1F0;
  v5 = v3;
  v11 = v5;
  v12 = v13;
  [(NSDictionary *)contextInfo enumerateKeysAndObjectsUsingBlock:&v7];
  [v5 appendString:{@"}", v7, v8, v9, v10}];

  _Block_object_dispose(v13, 8);

  return v5;
}

uint64_t __36__VSSpeechRequest_contextInfoString__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = &stru_2881D71A8;
  }

  else
  {
    v5 = @"; ";
  }

  result = [v4 appendFormat:@"%@%@: %@", v5, a2, a3];
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return result;
}

- (VSSpeechRequest)initWithCoder:(id)coder
{
  v45[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = VSSpeechRequest;
  v5 = [(VSSpeechRequest *)&v43 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_languageCode"];
    languageCode = v5->_languageCode;
    v5->_languageCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_voiceName"];
    voiceName = v5->_voiceName;
    v5->_voiceName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientBundleIdentifier"];
    clientBundleIdentifier = v5->_clientBundleIdentifier;
    v5->_clientBundleIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_accessoryID"];
    accessoryID = v5->_accessoryID;
    v5->_accessoryID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_siriRequestId"];
    siriRequestId = v5->_siriRequestId;
    v5->_siriRequestId = v16;

    v5->_footprint = [coderCopy decodeIntegerForKey:@"_footprint"];
    v5->_voiceType = [coderCopy decodeIntegerForKey:@"_voiceType"];
    v5->_gender = [coderCopy decodeIntegerForKey:@"_gender"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_outputPath"];
    outputPath = v5->_outputPath;
    v5->_outputPath = v18;

    [coderCopy decodeDoubleForKey:@"_rate"];
    v5->_rate = v20;
    [coderCopy decodeDoubleForKey:@"_pitch"];
    v5->_pitch = v21;
    [coderCopy decodeDoubleForKey:@"_volume"];
    v5->_volume = v22;
    v5->_shouldWhisper = [coderCopy decodeBoolForKey:@"_shouldWhisper"];
    v5->_shouldCache = [coderCopy decodeBoolForKey:@"_shouldCache"];
    v5->_disableCompactVoiceFallback = [coderCopy decodeBoolForKey:@"_disableCompactVoiceFallback"];
    v5->_disableDeviceRacing = [coderCopy decodeBoolForKey:@"_disableDeviceRacing"];
    v5->_forceServerTTS = [coderCopy decodeBoolForKey:@"_forceServerTTS"];
    v5->_canUseServerTTS = [coderCopy decodeBoolForKey:@"_canUseServerTTS"];
    v5->_retryDeviceOnNetworkStall = [coderCopy decodeBoolForKey:@"_retryDeviceOnNetworkStall"];
    v5->_shouldStreamAudioData = [coderCopy decodeBoolForKey:@"_shouldStreamAudioData"];
    v5->_shouldWaitCurrentSpeaking = [coderCopy decodeBoolForKey:@"_shouldWaitCurrentSpeaking"];
    v5->_audioSessionID = [coderCopy decodeInt32ForKey:@"_audioSessionID"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_resourceListURL"];
    resourceListURL = v5->_resourceListURL;
    v5->_resourceListURL = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_resourceSearchPathURL"];
    resourceSearchPathURL = v5->_resourceSearchPathURL;
    v5->_resourceSearchPathURL = v25;

    v27 = MEMORY[0x277CBEB98];
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v29 = [v27 setWithArray:v28];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"_customResourceURLs"];
    customResourceURLs = v5->_customResourceURLs;
    v5->_customResourceURLs = v30;

    v32 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v44[2] = objc_opt_class();
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
    v34 = [v32 setWithArray:v33];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"_contextInfo"];
    contextInfo = v5->_contextInfo;
    v5->_contextInfo = v35;

    v5->_requestCreatedTimestamp = [coderCopy decodeInt64ForKey:@"_requestCreatedTimestamp"];
    v5->_pointer = [coderCopy decodeIntegerForKey:@"_pointer"];
    v5->_powerProfile = [coderCopy decodeIntegerForKey:@"_powerProfile"];
    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textForAttributes"];
    if (v37)
    {
      v38 = [coderCopy decodePropertyListForKey:@"attributes"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = VSAttributedStringCreateFromSerializedAttributes(0, v37, v38);
        attributedText = v5->_attributedText;
        v5->_attributedText = v39;
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"_text"];
  [coderCopy encodeObject:self->_languageCode forKey:@"_languageCode"];
  [coderCopy encodeObject:self->_voiceName forKey:@"_voiceName"];
  [coderCopy encodeObject:self->_clientBundleIdentifier forKey:@"_clientBundleIdentifier"];
  [coderCopy encodeObject:self->_accessoryID forKey:@"_accessoryID"];
  [coderCopy encodeObject:self->_siriRequestId forKey:@"_siriRequestId"];
  [coderCopy encodeInteger:self->_footprint forKey:@"_footprint"];
  [coderCopy encodeInteger:self->_voiceType forKey:@"_voiceType"];
  [coderCopy encodeInteger:self->_gender forKey:@"_gender"];
  [coderCopy encodeObject:self->_outputPath forKey:@"_outputPath"];
  [coderCopy encodeDouble:@"_rate" forKey:self->_rate];
  [coderCopy encodeDouble:@"_pitch" forKey:self->_pitch];
  [coderCopy encodeDouble:@"_volume" forKey:self->_volume];
  [coderCopy encodeBool:self->_shouldWhisper forKey:@"_shouldWhisper"];
  [coderCopy encodeBool:self->_shouldCache forKey:@"_shouldCache"];
  [coderCopy encodeBool:self->_disableCompactVoiceFallback forKey:@"_disableCompactVoiceFallback"];
  [coderCopy encodeBool:self->_disableDeviceRacing forKey:@"_disableDeviceRacing"];
  [coderCopy encodeBool:self->_forceServerTTS forKey:@"_forceServerTTS"];
  [coderCopy encodeBool:self->_canUseServerTTS forKey:@"_canUseServerTTS"];
  [coderCopy encodeBool:self->_retryDeviceOnNetworkStall forKey:@"_retryDeviceOnNetworkStall"];
  [coderCopy encodeBool:self->_shouldStreamAudioData forKey:@"_shouldStreamAudioData"];
  [coderCopy encodeBool:self->_shouldWaitCurrentSpeaking forKey:@"_shouldWaitCurrentSpeaking"];
  [coderCopy encodeInt32:self->_audioSessionID forKey:@"_audioSessionID"];
  [coderCopy encodeObject:self->_resourceListURL forKey:@"_resourceListURL"];
  [coderCopy encodeObject:self->_resourceSearchPathURL forKey:@"_resourceSearchPathURL"];
  [coderCopy encodeObject:self->_customResourceURLs forKey:@"_customResourceURLs"];
  [coderCopy encodeObject:self->_contextInfo forKey:@"_contextInfo"];
  [coderCopy encodeInt64:self->_requestCreatedTimestamp forKey:@"_requestCreatedTimestamp"];
  [coderCopy encodeInteger:self->_pointer forKey:@"_pointer"];
  [coderCopy encodeInteger:self->_powerProfile forKey:@"_powerProfile"];
  string = [(NSAttributedString *)self->_attributedText string];
  [coderCopy encodeObject:string forKey:@"textForAttributes"];

  SerializedAttributes = VSAttributedStringCreateSerializedAttributes(0, self->_attributedText);
  [coderCopy encodeObject:SerializedAttributes forKey:@"attributes"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[VSSpeechRequest allocWithZone:](VSSpeechRequest init];
  text = [(VSSpeechRequest *)self text];
  v7 = [text copyWithZone:zone];
  [(VSSpeechRequest *)v5 setText:v7];

  languageCode = [(VSSpeechRequest *)self languageCode];
  v9 = [languageCode copyWithZone:zone];
  [(VSSpeechRequest *)v5 setLanguageCode:v9];

  [(VSSpeechRequest *)v5 setFootprint:[(VSSpeechRequest *)self footprint]];
  [(VSSpeechRequest *)v5 setVoiceType:[(VSSpeechRequest *)self voiceType]];
  [(VSSpeechRequest *)v5 setGender:[(VSSpeechRequest *)self gender]];
  voiceName = [(VSSpeechRequest *)self voiceName];
  [(VSSpeechRequest *)v5 setVoiceName:voiceName];

  outputPath = [(VSSpeechRequest *)self outputPath];
  v12 = [outputPath copyWithZone:zone];
  [(VSSpeechRequest *)v5 setOutputPath:v12];

  [(VSSpeechRequest *)v5 setShouldCache:[(VSSpeechRequest *)self shouldCache]];
  [(VSSpeechRequest *)v5 setShouldWaitCurrentSpeaking:[(VSSpeechRequest *)self shouldWaitCurrentSpeaking]];
  [(VSSpeechRequest *)self rate];
  [(VSSpeechRequest *)v5 setRate:?];
  [(VSSpeechRequest *)self pitch];
  [(VSSpeechRequest *)v5 setPitch:?];
  [(VSSpeechRequest *)self volume];
  [(VSSpeechRequest *)v5 setVolume:?];
  [(VSSpeechRequest *)v5 setShouldWhisper:[(VSSpeechRequest *)self shouldWhisper]];
  contextInfo = [(VSSpeechRequest *)self contextInfo];
  v14 = [contextInfo copyWithZone:zone];
  [(VSSpeechRequest *)v5 setContextInfo:v14];

  [(VSSpeechRequest *)v5 setDisableCompactVoiceFallback:[(VSSpeechRequest *)self disableCompactVoiceFallback]];
  [(VSSpeechRequest *)v5 setDisableDeviceRacing:[(VSSpeechRequest *)self disableDeviceRacing]];
  [(VSSpeechRequest *)v5 setAudioSessionID:[(VSSpeechRequest *)self audioSessionID]];
  accessoryID = [(VSSpeechRequest *)self accessoryID];
  [(VSSpeechRequest *)v5 setAccessoryID:accessoryID];

  [(VSSpeechRequest *)v5 setForceServerTTS:[(VSSpeechRequest *)self forceServerTTS]];
  [(VSSpeechRequest *)v5 setCanUseServerTTS:[(VSSpeechRequest *)self canUseServerTTS]];
  resourceListURL = [(VSSpeechRequest *)self resourceListURL];
  v17 = [resourceListURL copyWithZone:zone];
  [(VSSpeechRequest *)v5 setResourceListURL:v17];

  resourceSearchPathURL = [(VSSpeechRequest *)self resourceSearchPathURL];
  v19 = [resourceSearchPathURL copyWithZone:zone];
  [(VSSpeechRequest *)v5 setResourceSearchPathURL:v19];

  customResourceURLs = [(VSSpeechRequest *)self customResourceURLs];
  v21 = [customResourceURLs copyWithZone:zone];
  [(VSSpeechRequest *)v5 setCustomResourceURLs:v21];

  [(VSSpeechRequest *)v5 setPowerProfile:[(VSSpeechRequest *)self powerProfile]];
  return v5;
}

- (BOOL)isSimilarTo:(id)to
{
  toCopy = to;
  if (self == toCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      languageCode = [(VSSpeechRequest *)toCopy languageCode];
      if ([languageCode isEqualToString:self->_languageCode])
      {
        text = [(VSSpeechRequest *)toCopy text];
        if ([text isEqualToString:self->_text])
        {
          contextInfo = [(VSSpeechRequest *)toCopy contextInfo];
          if ([contextInfo isEqualToDictionary:self->_contextInfo] && -[VSSpeechRequest footprint](toCopy, "footprint") == self->_footprint && -[VSSpeechRequest voiceType](toCopy, "voiceType") == self->_voiceType && -[VSSpeechRequest gender](toCopy, "gender") == self->_gender)
          {
            voiceName = [(VSSpeechRequest *)toCopy voiceName];
            v11 = voiceName;
            if (self->_voiceName)
            {
              voiceName = self->_voiceName;
            }

            else
            {
              voiceName = &stru_2881D71A8;
            }

            if ([voiceName isEqualToString:voiceName] && (-[VSSpeechRequest rate](toCopy, "rate"), v13 == self->_rate) && (-[VSSpeechRequest pitch](toCopy, "pitch"), v14 == self->_pitch) && (-[VSSpeechRequest volume](toCopy, "volume"), v15 == self->_volume) && self->_shouldWhisper == -[VSSpeechRequest shouldWhisper](toCopy, "shouldWhisper") && self->_canUseServerTTS == -[VSSpeechRequest canUseServerTTS](toCopy, "canUseServerTTS"))
            {
              customResourceURLs = [(VSSpeechRequest *)toCopy customResourceURLs];
              v6 = [customResourceURLs isEqualToArray:self->_customResourceURLs];
            }

            else
            {
              v6 = 0;
            }
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  requestCreatedTimestamp = self->_requestCreatedTimestamp;
  v24 = MEMORY[0x277CCACA8];
  voiceName = self->_voiceName;
  languageCode = self->_languageCode;
  v20 = [VSVoiceAsset genderStringFromGender:self->_gender];
  v19 = [VSVoiceAsset typeStringFromType:self->_voiceType];
  v18 = [VSVoiceAsset footprintStringFromFootprint:self->_footprint];
  v17 = *&self->_rate;
  volume = self->_volume;
  shouldWhisper = self->_shouldWhisper;
  canUseServerTTS = self->_canUseServerTTS;
  disableCompactVoiceFallback = self->_disableCompactVoiceFallback;
  disableDeviceRacing = self->_disableDeviceRacing;
  shouldWaitCurrentSpeaking = self->_shouldWaitCurrentSpeaking;
  shouldCache = self->_shouldCache;
  contextInfoString = [(VSSpeechRequest *)self contextInfoString];
  customResourceURLs = self->_customResourceURLs;
  accessoryID = self->_accessoryID;
  audioSessionID = self->_audioSessionID;
  logText = [(VSSpeechRequest *)self logText];
  v14 = [v24 stringWithFormat:@"startTime: %llu, language:%@, name:%@, gender:%@, type:%@, footprint:%@, rate:%.2f, pitch:%.2f, volume:%.2f, shouldWhisper:%d, canUseServerTTS:%d, disableCompactFallback:%d, disableDeviceRacing:%d, shouldWaitCurrentSpeaking:%d, shouldCache:%d, contextInfo:%@, customResourceURLs:%@, session:%d, accessoryID:%@, text:'%@'", requestCreatedTimestamp, languageCode, voiceName, v20, v19, v18, v17, *&volume, shouldWhisper, canUseServerTTS, disableCompactVoiceFallback, disableDeviceRacing, shouldWaitCurrentSpeaking, shouldCache, contextInfoString, customResourceURLs, audioSessionID, accessoryID, logText];

  return v14;
}

- (id)logUtterance
{
  utterance = self->_utterance;
  canLogRequestText = [(VSSpeechRequest *)self canLogRequestText];

  return VSLoggingStringForUtterance(utterance, canLogRequestText);
}

- (id)logText
{
  text = self->_text;
  canLogRequestText = [(VSSpeechRequest *)self canLogRequestText];

  return VSLoggingStringForUtterance(text, canLogRequestText);
}

- (VSSpeechRequest)init
{
  v8.receiver = self;
  v8.super_class = VSSpeechRequest;
  result = [(VSSpeechRequest *)&v8 init];
  if (result)
  {
    result->_shouldCache = 1;
    __asm { FMOV            V0.2D, #1.0 }

    *&result->_rate = _Q0;
    result->_volume = 0.8;
    result->_pointer = result;
    result->_retryDeviceOnNetworkStall = 1;
  }

  return result;
}

@end