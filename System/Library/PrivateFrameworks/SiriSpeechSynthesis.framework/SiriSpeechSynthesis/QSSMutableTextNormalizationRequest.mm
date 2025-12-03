@interface QSSMutableTextNormalizationRequest
- (QSSMutableTextNormalizationRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)nbest_variants_max;
- (void)setLanguage:(id)language;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setText:(id)text;
@end

@implementation QSSMutableTextNormalizationRequest

- (int)nbest_variants_max
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"nbest_variants_max"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setText:(id)text
{
  v4 = [text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage:(id)language
{
  v4 = [language copy];
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

- (QSSMutableTextNormalizationRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextNormalizationRequest;
  v2 = [(QSSMutableTextNormalizationRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end