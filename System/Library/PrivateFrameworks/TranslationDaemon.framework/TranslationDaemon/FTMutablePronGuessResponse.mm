@interface FTMutablePronGuessResponse
- (FTMutablePronGuessResponse)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)error_code;
- (void)setApg_id:(id)a3;
- (void)setError_str:(id)a3;
- (void)setHuman_readable_prons:(id)a3;
- (void)setSession_id:(id)a3;
- (void)setSpeech_id:(id)a3;
- (void)setTts_pronunciations:(id)a3;
- (void)setVoc_token:(id)a3;
@end

@implementation FTMutablePronGuessResponse

- (FTMutablePronGuessResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutablePronGuessResponse;
  v2 = [(FTMutablePronGuessResponse *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)setSpeech_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)a3
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

- (void)setError_str:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setApg_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setVoc_token:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTts_pronunciations:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setHuman_readable_prons:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end