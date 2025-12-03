@interface FTMutablePronGuessResponse
- (FTMutablePronGuessResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)error_code;
- (void)setApg_id:(id)apg_id;
- (void)setError_str:(id)error_str;
- (void)setHuman_readable_prons:(id)human_readable_prons;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setTts_pronunciations:(id)tts_pronunciations;
- (void)setVoc_token:(id)voc_token;
@end

@implementation FTMutablePronGuessResponse

- (FTMutablePronGuessResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutablePronGuessResponse;
  v2 = [(FTMutablePronGuessResponse *)&v6 init];
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

- (void)setSpeech_id:(id)speech_id
{
  v4 = [speech_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)error_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"error_code"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setError_str:(id)error_str
{
  v4 = [error_str copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setApg_id:(id)apg_id
{
  v4 = [apg_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setVoc_token:(id)voc_token
{
  v4 = [voc_token copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTts_pronunciations:(id)tts_pronunciations
{
  v4 = [tts_pronunciations copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setHuman_readable_prons:(id)human_readable_prons
{
  v4 = [human_readable_prons copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end