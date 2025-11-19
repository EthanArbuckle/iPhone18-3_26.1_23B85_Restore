@interface QSSMutableGraphemeToPhonemeResponse
- (BOOL)is_pron_guessed;
- (QSSMutableGraphemeToPhonemeResponse)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)return_code;
- (void)setAot_token_prons:(id)a3;
- (void)setG2p_model_version:(id)a3;
- (void)setG2p_version:(id)a3;
- (void)setJit_token_prons:(id)a3;
- (void)setPhonemes:(id)a3;
- (void)setPhoneset_version:(id)a3;
- (void)setReturn_str:(id)a3;
- (void)setSession_id:(id)a3;
@end

@implementation QSSMutableGraphemeToPhonemeResponse

- (void)setJit_token_prons:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setAot_token_prons:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPhoneset_version:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setG2p_model_version:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setG2p_version:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)is_pron_guessed
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"is_pron_guessed"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setPhonemes:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setReturn_str:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)return_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_code"];
  v3 = [v2 intValue];

  return v3;
}

- (void)setSession_id:(id)a3
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

- (QSSMutableGraphemeToPhonemeResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableGraphemeToPhonemeResponse;
  v2 = [(QSSMutableGraphemeToPhonemeResponse *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end