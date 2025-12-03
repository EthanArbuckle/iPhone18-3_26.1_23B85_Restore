@interface FTMutableStartLanguageDetectionRequest
- (FTMutableStartLanguageDetectionRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)codec;
- (void)setCodec:(int64_t)codec;
- (void)setLocales:(id)locales;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
@end

@implementation FTMutableStartLanguageDetectionRequest

- (FTMutableStartLanguageDetectionRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableStartLanguageDetectionRequest;
  v2 = [(FTMutableStartLanguageDetectionRequest *)&v6 init];
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

- (void)setLocales:(id)locales
{
  v4 = [locales copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)codec
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"codec"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setCodec:(int64_t)codec
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:codec];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end