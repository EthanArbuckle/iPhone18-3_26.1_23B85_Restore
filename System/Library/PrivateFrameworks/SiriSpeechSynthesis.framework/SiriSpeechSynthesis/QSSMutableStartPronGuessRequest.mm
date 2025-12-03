@interface QSSMutableStartPronGuessRequest
- (QSSMutableStartPronGuessRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)codec;
- (void)setCodec:(int64_t)codec;
- (void)setLanguage:(id)language;
- (void)setOrthography:(id)orthography;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
@end

@implementation QSSMutableStartPronGuessRequest

- (void)setCodec:(int64_t)codec
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:codec];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)codec
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"codec"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setLanguage:(id)language
{
  v4 = [language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setOrthography:(id)orthography
{
  v4 = [orthography copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
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

- (QSSMutableStartPronGuessRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableStartPronGuessRequest;
  v2 = [(QSSMutableStartPronGuessRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end