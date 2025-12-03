@interface OPTTSMutableTextToSpeechRequest
+ (id)genderStringFromGender:(int64_t)gender;
+ (id)requestFromVSRequest:(id)request;
- (BOOL)enable_word_timing_info;
- (OPTTSMutableTextToSpeechRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)audio_type;
- (int64_t)preferred_voice_type;
- (void)setAudio_type:(int64_t)audio_type;
- (void)setContext:(id)context;
- (void)setContext_info:(id)context_info;
- (void)setExperiment:(id)experiment;
- (void)setFeature_flags:(id)feature_flags;
- (void)setGender:(id)gender;
- (void)setLanguage:(id)language;
- (void)setMeta_info:(id)meta_info;
- (void)setPreferred_voice_type:(int64_t)preferred_voice_type;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setText:(id)text;
- (void)setVoice_name:(id)voice_name;
@end

@implementation OPTTSMutableTextToSpeechRequest

- (void)setFeature_flags:(id)feature_flags
{
  v4 = [feature_flags copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setExperiment:(id)experiment
{
  v4 = [experiment copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setContext:(id)context
{
  v4 = [context copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setMeta_info:(id)meta_info
{
  v4 = [meta_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPreferred_voice_type:(int64_t)preferred_voice_type
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:preferred_voice_type];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)preferred_voice_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"preferred_voice_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setContext_info:(id)context_info
{
  v4 = [context_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setVoice_name:(id)voice_name
{
  v4 = [voice_name copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)enable_word_timing_info
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_word_timing_info"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setAudio_type:(int64_t)audio_type
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:audio_type];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)audio_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"audio_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setText:(id)text
{
  v4 = [text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setGender:(id)gender
{
  v4 = [gender copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage:(id)language
{
  v4 = [language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)speech_id
{
  v4 = [speech_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (OPTTSMutableTextToSpeechRequest)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechRequest;
  v2 = [(OPTTSMutableTextToSpeechRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

+ (id)requestFromVSRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(OPTTSMutableTextToSpeechRequest);
  languageCode = [requestCopy languageCode];
  v7 = [languageCode stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  [(OPTTSMutableTextToSpeechRequest *)v5 setLanguage:v7];

  v8 = [self genderStringFromGender:{objc_msgSend(requestCopy, "gender")}];
  [(OPTTSMutableTextToSpeechRequest *)v5 setGender:v8];

  utterance = [requestCopy utterance];
  [requestCopy volume];
  if (v10 != *MEMORY[0x277D79A08])
  {
    [requestCopy volume];
    if (v11 != 0.0)
    {
      v12 = MEMORY[0x277CCACA8];
      [requestCopy volume];
      v14 = [v12 stringWithFormat:@"\x1B\\vol=%d\\%@", (v13 * 100.0), utterance];

      utterance = v14;
    }
  }

  [requestCopy rate];
  if (v15 != *MEMORY[0x277D79A00])
  {
    [requestCopy rate];
    if (v16 != 0.0)
    {
      v17 = MEMORY[0x277CCACA8];
      [requestCopy rate];
      v19 = [v17 stringWithFormat:@"\x1B\\rate=%d\\%@", (v18 * 100.0), utterance];

      utterance = v19;
    }
  }

  [requestCopy pitch];
  if (v20 != *MEMORY[0x277D799F8])
  {
    [requestCopy pitch];
    if (v21 != 0.0)
    {
      v22 = MEMORY[0x277CCACA8];
      [requestCopy pitch];
      v24 = [v22 stringWithFormat:@"\x1B\\pitch=%d\\%@", (v23 * 100.0), utterance];

      utterance = v24;
    }
  }

  [(OPTTSMutableTextToSpeechRequest *)v5 setText:utterance];
  [(OPTTSMutableTextToSpeechRequest *)v5 setAudio_type:1];
  [(OPTTSMutableTextToSpeechRequest *)v5 setEnable_word_timing_info:1];
  voiceName = [requestCopy voiceName];
  [(OPTTSMutableTextToSpeechRequest *)v5 setVoice_name:voiceName];

  v26 = objc_alloc_init(OPTTSMutableTextToSpeechRequestMeta);
  clientBundleIdentifier = [requestCopy clientBundleIdentifier];
  [(OPTTSMutableTextToSpeechRequestMeta *)v26 setApp_id:clientBundleIdentifier];

  [(OPTTSMutableTextToSpeechRequestMeta *)v26 setChannel_type:2];
  [(OPTTSMutableTextToSpeechRequest *)v5 setMeta_info:v26];

  return v5;
}

+ (id)genderStringFromGender:(int64_t)gender
{
  if ((gender - 1) > 2)
  {
    return &stru_2881CBD18;
  }

  else
  {
    return off_279E4BC48[gender - 1];
  }
}

@end