@interface OPTTSMutablePartialTextToSpeechStreamingResponse
- (OPTTSMutablePartialTextToSpeechStreamingResponse)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)current_pkt_number;
- (int)error_code;
- (void)audio:(id)a3;
- (void)setAudio:(id)a3;
- (void)setError_str:(id)a3;
- (void)setFeature:(id)a3;
- (void)setSession_id:(id)a3;
- (void)setSpeech_id:(id)a3;
- (void)setStream_id:(id)a3;
- (void)setWord_timing_info:(id)a3;
@end

@implementation OPTTSMutablePartialTextToSpeechStreamingResponse

- (void)setFeature:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setWord_timing_info:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)audio:(id)a3
{
  v7 = a3;
  v4 = [(OPTTSMutablePartialTextToSpeechStreamingResponse *)self audio];
  v5 = [v4 bytes];
  v6 = [(OPTTSMutablePartialTextToSpeechStreamingResponse *)self audio];
  v7[2](v7, v5, [v6 length]);
}

- (void)setAudio:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)current_pkt_number
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"current_pkt_number"];
  v3 = [v2 intValue];

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

- (OPTTSMutablePartialTextToSpeechStreamingResponse)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutablePartialTextToSpeechStreamingResponse;
  v2 = [(OPTTSMutablePartialTextToSpeechStreamingResponse *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end