@interface FTMutableGraphemeToPhonemeResponse
- (BOOL)is_pron_guessed;
- (FTMutableGraphemeToPhonemeResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)return_code;
- (void)setAot_token_prons:(id)aot_token_prons;
- (void)setG2p_model_version:(id)g2p_model_version;
- (void)setG2p_version:(id)g2p_version;
- (void)setJit_token_prons:(id)jit_token_prons;
- (void)setPhonemes:(id)phonemes;
- (void)setPhoneset_version:(id)phoneset_version;
- (void)setReturn_str:(id)return_str;
- (void)setSession_id:(id)session_id;
@end

@implementation FTMutableGraphemeToPhonemeResponse

- (FTMutableGraphemeToPhonemeResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutableGraphemeToPhonemeResponse;
  v2 = [(FTMutableGraphemeToPhonemeResponse *)&v6 init];
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

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)return_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_code"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setReturn_str:(id)return_str
{
  v4 = [return_str copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPhonemes:(id)phonemes
{
  v4 = [phonemes copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)is_pron_guessed
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"is_pron_guessed"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setG2p_version:(id)g2p_version
{
  v4 = [g2p_version copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setG2p_model_version:(id)g2p_model_version
{
  v4 = [g2p_model_version copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPhoneset_version:(id)phoneset_version
{
  v4 = [phoneset_version copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setAot_token_prons:(id)aot_token_prons
{
  v4 = [aot_token_prons copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setJit_token_prons:(id)jit_token_prons
{
  v4 = [jit_token_prons copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end