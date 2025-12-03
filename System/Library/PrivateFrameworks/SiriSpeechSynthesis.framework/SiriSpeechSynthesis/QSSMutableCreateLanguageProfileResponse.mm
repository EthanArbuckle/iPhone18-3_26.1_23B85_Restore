@interface QSSMutableCreateLanguageProfileResponse
- (BOOL)incomplete_profile;
- (BOOL)recreate_apg_prons;
- (QSSMutableCreateLanguageProfileResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)error_code;
- (void)setError_str:(id)error_str;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setUser_language_profile:(id)user_language_profile;
@end

@implementation QSSMutableCreateLanguageProfileResponse

- (BOOL)recreate_apg_prons
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"recreate_apg_prons"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)incomplete_profile
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"incomplete_profile"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setUser_language_profile:(id)user_language_profile
{
  v4 = [user_language_profile copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setError_str:(id)error_str
{
  v4 = [error_str copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)error_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"error_code"];
  intValue = [v2 intValue];

  return intValue;
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

- (QSSMutableCreateLanguageProfileResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableCreateLanguageProfileResponse;
  v2 = [(QSSMutableCreateLanguageProfileResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end