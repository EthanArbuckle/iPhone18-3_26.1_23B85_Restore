@interface QSSMutableCreateLanguageProfileRequest
- (QSSMutableCreateLanguageProfileRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLanguage:(id)language;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setUser_data:(id)user_data;
- (void)setUser_language_profile:(id)user_language_profile;
@end

@implementation QSSMutableCreateLanguageProfileRequest

- (void)setUser_language_profile:(id)user_language_profile
{
  v4 = [user_language_profile copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUser_data:(id)user_data
{
  v4 = [user_data copy];
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

- (QSSMutableCreateLanguageProfileRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableCreateLanguageProfileRequest;
  v2 = [(QSSMutableCreateLanguageProfileRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end