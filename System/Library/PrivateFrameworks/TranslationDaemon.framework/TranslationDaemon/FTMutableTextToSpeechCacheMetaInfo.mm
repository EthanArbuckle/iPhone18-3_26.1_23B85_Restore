@interface FTMutableTextToSpeechCacheMetaInfo
- (BOOL)enable_word_timing_info;
- (FTMutableTextToSpeechCacheMetaInfo)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)audio_length;
- (int64_t)audio_type;
- (void)setAudio_type:(int64_t)audio_type;
- (void)setDecoder_description:(id)decoder_description;
- (void)setMeta_info:(id)meta_info;
- (void)setOriginal_session_id:(id)original_session_id;
- (void)setPlayback_description:(id)playback_description;
- (void)setText:(id)text;
@end

@implementation FTMutableTextToSpeechCacheMetaInfo

- (FTMutableTextToSpeechCacheMetaInfo)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechCacheMetaInfo;
  v2 = [(FTMutableTextToSpeechCacheMetaInfo *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)setMeta_info:(id)meta_info
{
  v4 = [meta_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)audio_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"audio_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setAudio_type:(int64_t)audio_type
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:audio_type];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)enable_word_timing_info
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_word_timing_info"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setDecoder_description:(id)decoder_description
{
  v4 = [decoder_description copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPlayback_description:(id)playback_description
{
  v4 = [playback_description copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)audio_length
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"audio_length"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setText:(id)text
{
  v4 = [text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setOriginal_session_id:(id)original_session_id
{
  v4 = [original_session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end