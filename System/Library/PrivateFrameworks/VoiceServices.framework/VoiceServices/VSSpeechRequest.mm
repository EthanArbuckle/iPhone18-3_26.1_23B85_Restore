@interface VSSpeechRequest
- (BOOL)canLogRequestText;
- (BOOL)isSimilarTo:(id)a3;
- (VSSpeechRequest)init;
- (VSSpeechRequest)initWithCoder:(id)a3;
- (id)contextInfoString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)logText;
- (id)logUtterance;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VSSpeechRequest

- (BOOL)canLogRequestText
{
  if (self->_canUseServerTTS)
  {
    return 1;
  }

  v3 = +[VSSpeechInternalSettings standardInstance];
  v4 = [v3 logSensitiveText];

  return v4;
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

- (VSSpeechRequest)initWithCoder:(id)a3
{
  v45[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = VSSpeechRequest;
  v5 = [(VSSpeechRequest *)&v43 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_languageCode"];
    languageCode = v5->_languageCode;
    v5->_languageCode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_voiceName"];
    voiceName = v5->_voiceName;
    v5->_voiceName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientBundleIdentifier"];
    clientBundleIdentifier = v5->_clientBundleIdentifier;
    v5->_clientBundleIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_accessoryID"];
    accessoryID = v5->_accessoryID;
    v5->_accessoryID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_siriRequestId"];
    siriRequestId = v5->_siriRequestId;
    v5->_siriRequestId = v16;

    v5->_footprint = [v4 decodeIntegerForKey:@"_footprint"];
    v5->_voiceType = [v4 decodeIntegerForKey:@"_voiceType"];
    v5->_gender = [v4 decodeIntegerForKey:@"_gender"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_outputPath"];
    outputPath = v5->_outputPath;
    v5->_outputPath = v18;

    [v4 decodeDoubleForKey:@"_rate"];
    v5->_rate = v20;
    [v4 decodeDoubleForKey:@"_pitch"];
    v5->_pitch = v21;
    [v4 decodeDoubleForKey:@"_volume"];
    v5->_volume = v22;
    v5->_shouldWhisper = [v4 decodeBoolForKey:@"_shouldWhisper"];
    v5->_shouldCache = [v4 decodeBoolForKey:@"_shouldCache"];
    v5->_disableCompactVoiceFallback = [v4 decodeBoolForKey:@"_disableCompactVoiceFallback"];
    v5->_disableDeviceRacing = [v4 decodeBoolForKey:@"_disableDeviceRacing"];
    v5->_forceServerTTS = [v4 decodeBoolForKey:@"_forceServerTTS"];
    v5->_canUseServerTTS = [v4 decodeBoolForKey:@"_canUseServerTTS"];
    v5->_retryDeviceOnNetworkStall = [v4 decodeBoolForKey:@"_retryDeviceOnNetworkStall"];
    v5->_shouldStreamAudioData = [v4 decodeBoolForKey:@"_shouldStreamAudioData"];
    v5->_shouldWaitCurrentSpeaking = [v4 decodeBoolForKey:@"_shouldWaitCurrentSpeaking"];
    v5->_audioSessionID = [v4 decodeInt32ForKey:@"_audioSessionID"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_resourceListURL"];
    resourceListURL = v5->_resourceListURL;
    v5->_resourceListURL = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_resourceSearchPathURL"];
    resourceSearchPathURL = v5->_resourceSearchPathURL;
    v5->_resourceSearchPathURL = v25;

    v27 = MEMORY[0x277CBEB98];
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v29 = [v27 setWithArray:v28];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"_customResourceURLs"];
    customResourceURLs = v5->_customResourceURLs;
    v5->_customResourceURLs = v30;

    v32 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v44[2] = objc_opt_class();
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
    v34 = [v32 setWithArray:v33];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"_contextInfo"];
    contextInfo = v5->_contextInfo;
    v5->_contextInfo = v35;

    v5->_requestCreatedTimestamp = [v4 decodeInt64ForKey:@"_requestCreatedTimestamp"];
    v5->_pointer = [v4 decodeIntegerForKey:@"_pointer"];
    v5->_powerProfile = [v4 decodeIntegerForKey:@"_powerProfile"];
    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textForAttributes"];
    if (v37)
    {
      v38 = [v4 decodePropertyListForKey:@"attributes"];
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

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"_text"];
  [v5 encodeObject:self->_languageCode forKey:@"_languageCode"];
  [v5 encodeObject:self->_voiceName forKey:@"_voiceName"];
  [v5 encodeObject:self->_clientBundleIdentifier forKey:@"_clientBundleIdentifier"];
  [v5 encodeObject:self->_accessoryID forKey:@"_accessoryID"];
  [v5 encodeObject:self->_siriRequestId forKey:@"_siriRequestId"];
  [v5 encodeInteger:self->_footprint forKey:@"_footprint"];
  [v5 encodeInteger:self->_voiceType forKey:@"_voiceType"];
  [v5 encodeInteger:self->_gender forKey:@"_gender"];
  [v5 encodeObject:self->_outputPath forKey:@"_outputPath"];
  [v5 encodeDouble:@"_rate" forKey:self->_rate];
  [v5 encodeDouble:@"_pitch" forKey:self->_pitch];
  [v5 encodeDouble:@"_volume" forKey:self->_volume];
  [v5 encodeBool:self->_shouldWhisper forKey:@"_shouldWhisper"];
  [v5 encodeBool:self->_shouldCache forKey:@"_shouldCache"];
  [v5 encodeBool:self->_disableCompactVoiceFallback forKey:@"_disableCompactVoiceFallback"];
  [v5 encodeBool:self->_disableDeviceRacing forKey:@"_disableDeviceRacing"];
  [v5 encodeBool:self->_forceServerTTS forKey:@"_forceServerTTS"];
  [v5 encodeBool:self->_canUseServerTTS forKey:@"_canUseServerTTS"];
  [v5 encodeBool:self->_retryDeviceOnNetworkStall forKey:@"_retryDeviceOnNetworkStall"];
  [v5 encodeBool:self->_shouldStreamAudioData forKey:@"_shouldStreamAudioData"];
  [v5 encodeBool:self->_shouldWaitCurrentSpeaking forKey:@"_shouldWaitCurrentSpeaking"];
  [v5 encodeInt32:self->_audioSessionID forKey:@"_audioSessionID"];
  [v5 encodeObject:self->_resourceListURL forKey:@"_resourceListURL"];
  [v5 encodeObject:self->_resourceSearchPathURL forKey:@"_resourceSearchPathURL"];
  [v5 encodeObject:self->_customResourceURLs forKey:@"_customResourceURLs"];
  [v5 encodeObject:self->_contextInfo forKey:@"_contextInfo"];
  [v5 encodeInt64:self->_requestCreatedTimestamp forKey:@"_requestCreatedTimestamp"];
  [v5 encodeInteger:self->_pointer forKey:@"_pointer"];
  [v5 encodeInteger:self->_powerProfile forKey:@"_powerProfile"];
  v6 = [(NSAttributedString *)self->_attributedText string];
  [v5 encodeObject:v6 forKey:@"textForAttributes"];

  SerializedAttributes = VSAttributedStringCreateSerializedAttributes(0, self->_attributedText);
  [v5 encodeObject:SerializedAttributes forKey:@"attributes"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[VSSpeechRequest allocWithZone:](VSSpeechRequest init];
  v6 = [(VSSpeechRequest *)self text];
  v7 = [v6 copyWithZone:a3];
  [(VSSpeechRequest *)v5 setText:v7];

  v8 = [(VSSpeechRequest *)self languageCode];
  v9 = [v8 copyWithZone:a3];
  [(VSSpeechRequest *)v5 setLanguageCode:v9];

  [(VSSpeechRequest *)v5 setFootprint:[(VSSpeechRequest *)self footprint]];
  [(VSSpeechRequest *)v5 setVoiceType:[(VSSpeechRequest *)self voiceType]];
  [(VSSpeechRequest *)v5 setGender:[(VSSpeechRequest *)self gender]];
  v10 = [(VSSpeechRequest *)self voiceName];
  [(VSSpeechRequest *)v5 setVoiceName:v10];

  v11 = [(VSSpeechRequest *)self outputPath];
  v12 = [v11 copyWithZone:a3];
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
  v13 = [(VSSpeechRequest *)self contextInfo];
  v14 = [v13 copyWithZone:a3];
  [(VSSpeechRequest *)v5 setContextInfo:v14];

  [(VSSpeechRequest *)v5 setDisableCompactVoiceFallback:[(VSSpeechRequest *)self disableCompactVoiceFallback]];
  [(VSSpeechRequest *)v5 setDisableDeviceRacing:[(VSSpeechRequest *)self disableDeviceRacing]];
  [(VSSpeechRequest *)v5 setAudioSessionID:[(VSSpeechRequest *)self audioSessionID]];
  v15 = [(VSSpeechRequest *)self accessoryID];
  [(VSSpeechRequest *)v5 setAccessoryID:v15];

  [(VSSpeechRequest *)v5 setForceServerTTS:[(VSSpeechRequest *)self forceServerTTS]];
  [(VSSpeechRequest *)v5 setCanUseServerTTS:[(VSSpeechRequest *)self canUseServerTTS]];
  v16 = [(VSSpeechRequest *)self resourceListURL];
  v17 = [v16 copyWithZone:a3];
  [(VSSpeechRequest *)v5 setResourceListURL:v17];

  v18 = [(VSSpeechRequest *)self resourceSearchPathURL];
  v19 = [v18 copyWithZone:a3];
  [(VSSpeechRequest *)v5 setResourceSearchPathURL:v19];

  v20 = [(VSSpeechRequest *)self customResourceURLs];
  v21 = [v20 copyWithZone:a3];
  [(VSSpeechRequest *)v5 setCustomResourceURLs:v21];

  [(VSSpeechRequest *)v5 setPowerProfile:[(VSSpeechRequest *)self powerProfile]];
  return v5;
}

- (BOOL)isSimilarTo:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = [(VSSpeechRequest *)v4 languageCode];
      if ([v7 isEqualToString:self->_languageCode])
      {
        v8 = [(VSSpeechRequest *)v4 text];
        if ([v8 isEqualToString:self->_text])
        {
          v9 = [(VSSpeechRequest *)v4 contextInfo];
          if ([v9 isEqualToDictionary:self->_contextInfo] && -[VSSpeechRequest footprint](v4, "footprint") == self->_footprint && -[VSSpeechRequest voiceType](v4, "voiceType") == self->_voiceType && -[VSSpeechRequest gender](v4, "gender") == self->_gender)
          {
            v10 = [(VSSpeechRequest *)v4 voiceName];
            v11 = v10;
            if (self->_voiceName)
            {
              voiceName = self->_voiceName;
            }

            else
            {
              voiceName = &stru_2881D71A8;
            }

            if ([v10 isEqualToString:voiceName] && (-[VSSpeechRequest rate](v4, "rate"), v13 == self->_rate) && (-[VSSpeechRequest pitch](v4, "pitch"), v14 == self->_pitch) && (-[VSSpeechRequest volume](v4, "volume"), v15 == self->_volume) && self->_shouldWhisper == -[VSSpeechRequest shouldWhisper](v4, "shouldWhisper") && self->_canUseServerTTS == -[VSSpeechRequest canUseServerTTS](v4, "canUseServerTTS"))
            {
              v16 = [(VSSpeechRequest *)v4 customResourceURLs];
              v6 = [v16 isEqualToArray:self->_customResourceURLs];
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
  v9 = [(VSSpeechRequest *)self contextInfoString];
  customResourceURLs = self->_customResourceURLs;
  accessoryID = self->_accessoryID;
  audioSessionID = self->_audioSessionID;
  v13 = [(VSSpeechRequest *)self logText];
  v14 = [v24 stringWithFormat:@"startTime: %llu, language:%@, name:%@, gender:%@, type:%@, footprint:%@, rate:%.2f, pitch:%.2f, volume:%.2f, shouldWhisper:%d, canUseServerTTS:%d, disableCompactFallback:%d, disableDeviceRacing:%d, shouldWaitCurrentSpeaking:%d, shouldCache:%d, contextInfo:%@, customResourceURLs:%@, session:%d, accessoryID:%@, text:'%@'", requestCreatedTimestamp, languageCode, voiceName, v20, v19, v18, v17, *&volume, shouldWhisper, canUseServerTTS, disableCompactVoiceFallback, disableDeviceRacing, shouldWaitCurrentSpeaking, shouldCache, v9, customResourceURLs, audioSessionID, accessoryID, v13];

  return v14;
}

- (id)logUtterance
{
  utterance = self->_utterance;
  v3 = [(VSSpeechRequest *)self canLogRequestText];

  return VSLoggingStringForUtterance(utterance, v3);
}

- (id)logText
{
  text = self->_text;
  v3 = [(VSSpeechRequest *)self canLogRequestText];

  return VSLoggingStringForUtterance(text, v3);
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