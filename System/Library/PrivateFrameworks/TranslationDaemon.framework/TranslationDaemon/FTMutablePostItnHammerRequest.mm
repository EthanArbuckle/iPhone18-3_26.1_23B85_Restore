@interface FTMutablePostItnHammerRequest
- (FTMutablePostItnHammerRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLanguage:(id)language;
- (void)setPost_itn_string:(id)post_itn_string;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setTokens:(id)tokens;
@end

@implementation FTMutablePostItnHammerRequest

- (FTMutablePostItnHammerRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutablePostItnHammerRequest;
  v2 = [(FTMutablePostItnHammerRequest *)&v6 init];
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

- (void)setLanguage:(id)language
{
  v4 = [language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPost_itn_string:(id)post_itn_string
{
  v4 = [post_itn_string copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTokens:(id)tokens
{
  v4 = [tokens copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end