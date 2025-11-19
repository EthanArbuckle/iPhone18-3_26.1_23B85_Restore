@interface QSSMutableTextToSpeechCacheMetaInfo
- (BOOL)enable_word_timing_info;
- (QSSMutableTextToSpeechCacheMetaInfo)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)audio_length;
- (int64_t)audio_type;
- (void)setAudio_type:(int64_t)a3;
- (void)setDecoder_description:(id)a3;
- (void)setMeta_info:(id)a3;
- (void)setOriginal_session_id:(id)a3;
- (void)setPlayback_description:(id)a3;
- (void)setText:(id)a3;
@end

@implementation QSSMutableTextToSpeechCacheMetaInfo

- (void)setOriginal_session_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setText:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)audio_length
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"audio_length"];
  v3 = [v2 intValue];

  return v3;
}

- (void)setPlayback_description:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDecoder_description:(id)a3
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

- (void)setMeta_info:(id)a3
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

- (QSSMutableTextToSpeechCacheMetaInfo)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechCacheMetaInfo;
  v2 = [(QSSMutableTextToSpeechCacheMetaInfo *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end