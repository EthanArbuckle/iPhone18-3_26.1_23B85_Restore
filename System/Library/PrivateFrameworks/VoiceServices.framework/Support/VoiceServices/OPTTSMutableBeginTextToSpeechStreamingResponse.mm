@interface OPTTSMutableBeginTextToSpeechStreamingResponse
- (OPTTSMutableBeginTextToSpeechStreamingResponse)init;
- (float)streaming_playback_buffer_size_in_seconds;
- (id)copyWithZone:(_NSZone *)a3;
- (int)error_code;
- (int64_t)audio_type;
- (void)setAudio_type:(int64_t)a3;
- (void)setDecoder_description:(id)a3;
- (void)setError_str:(id)a3;
- (void)setMeta_info:(id)a3;
- (void)setPlayback_description:(id)a3;
- (void)setSession_id:(id)a3;
- (void)setSpeech_id:(id)a3;
- (void)setStream_id:(id)a3;
- (void)setStreaming_playback_buffer_size_in_seconds:(float)a3;
@end

@implementation OPTTSMutableBeginTextToSpeechStreamingResponse

- (void)setStreaming_playback_buffer_size_in_seconds:(float)a3
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = a3;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)streaming_playback_buffer_size_in_seconds
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"streaming_playback_buffer_size_in_seconds"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setMeta_info:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
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

- (void)setStream_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setError_str:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)error_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"error_code"];
  v3 = [v2 intValue];

  return v3;
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

- (OPTTSMutableBeginTextToSpeechStreamingResponse)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableBeginTextToSpeechStreamingResponse;
  v2 = [(OPTTSMutableBeginTextToSpeechStreamingResponse *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end