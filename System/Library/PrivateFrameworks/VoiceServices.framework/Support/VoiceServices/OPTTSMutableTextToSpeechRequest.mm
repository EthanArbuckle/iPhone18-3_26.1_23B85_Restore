@interface OPTTSMutableTextToSpeechRequest
+ (id)genderStringFromGender:(int64_t)a3;
+ (id)requestFromVSRequest:(id)a3;
- (BOOL)enable_word_timing_info;
- (OPTTSMutableTextToSpeechRequest)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)audio_type;
- (int64_t)preferred_voice_type;
- (void)setAudio_type:(int64_t)a3;
- (void)setContext:(id)a3;
- (void)setContext_info:(id)a3;
- (void)setExperiment:(id)a3;
- (void)setFeature_flags:(id)a3;
- (void)setGender:(id)a3;
- (void)setLanguage:(id)a3;
- (void)setMeta_info:(id)a3;
- (void)setPreferred_voice_type:(int64_t)a3;
- (void)setSession_id:(id)a3;
- (void)setSpeech_id:(id)a3;
- (void)setText:(id)a3;
- (void)setVoice_name:(id)a3;
@end

@implementation OPTTSMutableTextToSpeechRequest

- (void)setFeature_flags:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setExperiment:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setContext:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setMeta_info:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPreferred_voice_type:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)preferred_voice_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"preferred_voice_type"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setContext_info:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setVoice_name:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)enable_word_timing_info
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_word_timing_info"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setAudio_type:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)audio_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"audio_type"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setText:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setGender:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

+ (id)requestFromVSRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(OPTTSMutableTextToSpeechRequest);
  v6 = [v4 languageCode];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  [(OPTTSMutableTextToSpeechRequest *)v5 setLanguage:v7];

  v8 = [a1 genderStringFromGender:{objc_msgSend(v4, "gender")}];
  [(OPTTSMutableTextToSpeechRequest *)v5 setGender:v8];

  v9 = [v4 utterance];
  [v4 volume];
  if (v10 != *MEMORY[0x277D79A08])
  {
    [v4 volume];
    if (v11 != 0.0)
    {
      v12 = MEMORY[0x277CCACA8];
      [v4 volume];
      v14 = [v12 stringWithFormat:@"\x1B\\vol=%d\\%@", (v13 * 100.0), v9];

      v9 = v14;
    }
  }

  [v4 rate];
  if (v15 != *MEMORY[0x277D79A00])
  {
    [v4 rate];
    if (v16 != 0.0)
    {
      v17 = MEMORY[0x277CCACA8];
      [v4 rate];
      v19 = [v17 stringWithFormat:@"\x1B\\rate=%d\\%@", (v18 * 100.0), v9];

      v9 = v19;
    }
  }

  [v4 pitch];
  if (v20 != *MEMORY[0x277D799F8])
  {
    [v4 pitch];
    if (v21 != 0.0)
    {
      v22 = MEMORY[0x277CCACA8];
      [v4 pitch];
      v24 = [v22 stringWithFormat:@"\x1B\\pitch=%d\\%@", (v23 * 100.0), v9];

      v9 = v24;
    }
  }

  [(OPTTSMutableTextToSpeechRequest *)v5 setText:v9];
  [(OPTTSMutableTextToSpeechRequest *)v5 setAudio_type:1];
  [(OPTTSMutableTextToSpeechRequest *)v5 setEnable_word_timing_info:1];
  v25 = [v4 voiceName];
  [(OPTTSMutableTextToSpeechRequest *)v5 setVoice_name:v25];

  v26 = objc_alloc_init(OPTTSMutableTextToSpeechRequestMeta);
  v27 = [v4 clientBundleIdentifier];
  [(OPTTSMutableTextToSpeechRequestMeta *)v26 setApp_id:v27];

  [(OPTTSMutableTextToSpeechRequestMeta *)v26 setChannel_type:2];
  [(OPTTSMutableTextToSpeechRequest *)v5 setMeta_info:v26];

  return v5;
}

+ (id)genderStringFromGender:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return &stru_2881CBD18;
  }

  else
  {
    return off_279E4BC48[a3 - 1];
  }
}

@end