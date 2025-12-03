@interface OPTTSMutableFinalTextToSpeechStreamingResponse
- (OPTTSMutableFinalTextToSpeechStreamingResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)error_code;
- (int)total_pkt_number;
- (void)setError_str:(id)error_str;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setStream_id:(id)stream_id;
@end

@implementation OPTTSMutableFinalTextToSpeechStreamingResponse

- (int)total_pkt_number
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"total_pkt_number"];
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

- (OPTTSMutableFinalTextToSpeechStreamingResponse)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableFinalTextToSpeechStreamingResponse;
  v2 = [(OPTTSMutableFinalTextToSpeechStreamingResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end