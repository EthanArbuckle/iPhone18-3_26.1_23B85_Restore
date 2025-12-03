@interface FTMutableRecognitionToken
- (BOOL)add_space_after;
- (FTMutableRecognitionToken)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)confidence;
- (int)end_milli_seconds;
- (int)silence_start_milli_seconds;
- (int)start_milli_seconds;
- (void)setIpa_phone_seq:(id)ipa_phone_seq;
- (void)setPhone_seq:(id)phone_seq;
- (void)setToken_text:(id)token_text;
@end

@implementation FTMutableRecognitionToken

- (FTMutableRecognitionToken)init
{
  v6.receiver = self;
  v6.super_class = FTMutableRecognitionToken;
  v2 = [(FTMutableRecognitionToken *)&v6 init];
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

- (void)setToken_text:(id)token_text
{
  v4 = [token_text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)start_milli_seconds
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_milli_seconds"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)end_milli_seconds
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"end_milli_seconds"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)silence_start_milli_seconds
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"silence_start_milli_seconds"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)confidence
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"confidence"];
  intValue = [v2 intValue];

  return intValue;
}

- (BOOL)add_space_after
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"add_space_after"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setPhone_seq:(id)phone_seq
{
  v4 = [phone_seq copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setIpa_phone_seq:(id)ipa_phone_seq
{
  v4 = [ipa_phone_seq copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end