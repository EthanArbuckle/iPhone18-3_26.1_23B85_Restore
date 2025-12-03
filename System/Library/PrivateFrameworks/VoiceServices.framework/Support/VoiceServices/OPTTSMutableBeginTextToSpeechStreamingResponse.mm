@interface OPTTSMutableBeginTextToSpeechStreamingResponse
- (OPTTSMutableBeginTextToSpeechStreamingResponse)init;
- (float)streaming_playback_buffer_size_in_seconds;
- (id)copyWithZone:(_NSZone *)zone;
- (int)error_code;
- (int64_t)audio_type;
- (void)setAudio_type:(int64_t)audio_type;
- (void)setDecoder_description:(id)decoder_description;
- (void)setError_str:(id)error_str;
- (void)setMeta_info:(id)meta_info;
- (void)setPlayback_description:(id)playback_description;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setStream_id:(id)stream_id;
- (void)setStreaming_playback_buffer_size_in_seconds:(float)streaming_playback_buffer_size_in_seconds;
@end

@implementation OPTTSMutableBeginTextToSpeechStreamingResponse

- (void)setStreaming_playback_buffer_size_in_seconds:(float)streaming_playback_buffer_size_in_seconds
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = streaming_playback_buffer_size_in_seconds;
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

- (void)setMeta_info:(id)meta_info
{
  v4 = [meta_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPlayback_description:(id)playback_description
{
  v4 = [playback_description copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDecoder_description:(id)decoder_description
{
  v4 = [decoder_description copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
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

- (void)setStream_id:(id)stream_id
{
  v4 = [stream_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setError_str:(id)error_str
{
  v4 = [error_str copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)error_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"error_code"];
  intValue = [v2 intValue];

  return intValue;
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

- (OPTTSMutableBeginTextToSpeechStreamingResponse)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableBeginTextToSpeechStreamingResponse;
  v2 = [(OPTTSMutableBeginTextToSpeechStreamingResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end