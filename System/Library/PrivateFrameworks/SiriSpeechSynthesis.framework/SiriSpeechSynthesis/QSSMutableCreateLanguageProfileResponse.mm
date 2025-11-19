@interface QSSMutableCreateLanguageProfileResponse
- (BOOL)incomplete_profile;
- (BOOL)recreate_apg_prons;
- (QSSMutableCreateLanguageProfileResponse)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)error_code;
- (void)setError_str:(id)a3;
- (void)setSession_id:(id)a3;
- (void)setSpeech_id:(id)a3;
- (void)setUser_language_profile:(id)a3;
@end

@implementation QSSMutableCreateLanguageProfileResponse

- (BOOL)recreate_apg_prons
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"recreate_apg_prons"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)incomplete_profile
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"incomplete_profile"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setUser_language_profile:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setError_str:(id)a3
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

- (void)setSession_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)a3
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

- (QSSMutableCreateLanguageProfileResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableCreateLanguageProfileResponse;
  v2 = [(QSSMutableCreateLanguageProfileResponse *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end