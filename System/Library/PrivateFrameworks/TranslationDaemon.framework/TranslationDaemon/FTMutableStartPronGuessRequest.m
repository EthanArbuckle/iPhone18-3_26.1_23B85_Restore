@interface FTMutableStartPronGuessRequest
- (FTMutableStartPronGuessRequest)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)codec;
- (void)setCodec:(int64_t)a3;
- (void)setLanguage:(id)a3;
- (void)setOrthography:(id)a3;
- (void)setSession_id:(id)a3;
- (void)setSpeech_id:(id)a3;
@end

@implementation FTMutableStartPronGuessRequest

- (FTMutableStartPronGuessRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableStartPronGuessRequest;
  v2 = [(FTMutableStartPronGuessRequest *)&v6 init];
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

- (void)setOrthography:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)codec
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"codec"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setCodec:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end