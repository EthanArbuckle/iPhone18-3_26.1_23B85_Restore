@interface QSSMutablePartialTextToSpeechStreamingResponse
- (QSSMutablePartialTextToSpeechStreamingResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)current_pkt_number;
- (int)error_code;
- (void)audio:(id)audio;
- (void)setAudio:(id)audio;
- (void)setError_str:(id)error_str;
- (void)setFeature:(id)feature;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setStream_id:(id)stream_id;
- (void)setWord_timing_info:(id)word_timing_info;
@end

@implementation QSSMutablePartialTextToSpeechStreamingResponse

- (void)setFeature:(id)feature
{
  v4 = [feature copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setWord_timing_info:(id)word_timing_info
{
  v4 = [word_timing_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)audio:(id)audio
{
  audioCopy = audio;
  audio = [(QSSMutablePartialTextToSpeechStreamingResponse *)self audio];
  bytes = [audio bytes];
  audio2 = [(QSSMutablePartialTextToSpeechStreamingResponse *)self audio];
  audioCopy[2](audioCopy, bytes, [audio2 length]);
}

- (void)setAudio:(id)audio
{
  v4 = [audio copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)current_pkt_number
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"current_pkt_number"];
  intValue = [v2 intValue];

  return intValue;
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

- (QSSMutablePartialTextToSpeechStreamingResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutablePartialTextToSpeechStreamingResponse;
  v2 = [(QSSMutablePartialTextToSpeechStreamingResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end