@interface OPTTSMutableStartTextToSpeechStreamingRequest
- (BOOL)enable_word_timing_info;
- (OPTTSMutableStartTextToSpeechStreamingRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)audio_type;
- (int64_t)preferred_voice_type;
- (void)setAudio_type:(int64_t)audio_type;
- (void)setContext:(id)context;
- (void)setContext_info:(id)context_info;
- (void)setDebug:(id)debug;
- (void)setDev_config:(id)dev_config;
- (void)setExperiment:(id)experiment;
- (void)setFeature_flags:(id)feature_flags;
- (void)setGender:(id)gender;
- (void)setLanguage:(id)language;
- (void)setMeta_info:(id)meta_info;
- (void)setPreferred_voice_type:(int64_t)preferred_voice_type;
- (void)setProfile:(id)profile;
- (void)setProsody_config:(id)prosody_config;
- (void)setProsody_control_config:(id)prosody_control_config;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setStream_id:(id)stream_id;
- (void)setText:(id)text;
- (void)setVoice_name:(id)voice_name;
@end

@implementation OPTTSMutableStartTextToSpeechStreamingRequest

- (void)setProsody_control_config:(id)prosody_control_config
{
  v4 = [prosody_control_config copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setProsody_config:(id)prosody_config
{
  v4 = [prosody_config copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDev_config:(id)dev_config
{
  v4 = [dev_config copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setProfile:(id)profile
{
  v4 = [profile copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDebug:(id)debug
{
  v4 = [debug copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

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
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:preferred_voice_type];
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
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:audio_type];
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

- (void)setStream_id:(id)stream_id
{
  v4 = [stream_id copy];
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

- (OPTTSMutableStartTextToSpeechStreamingRequest)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableStartTextToSpeechStreamingRequest;
  v2 = [(OPTTSMutableStartTextToSpeechStreamingRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end