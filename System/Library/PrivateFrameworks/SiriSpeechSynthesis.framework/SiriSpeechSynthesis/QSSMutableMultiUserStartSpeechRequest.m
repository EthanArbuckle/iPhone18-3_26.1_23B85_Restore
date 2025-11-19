@interface QSSMutableMultiUserStartSpeechRequest
- (QSSMutableMultiUserStartSpeechRequest)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setPrimary_speech_id:(id)a3;
- (void)setStart_speech_request:(id)a3;
- (void)setUser_parameters:(id)a3;
@end

@implementation QSSMutableMultiUserStartSpeechRequest

- (void)setPrimary_speech_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUser_parameters:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setStart_speech_request:(id)a3
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

- (QSSMutableMultiUserStartSpeechRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableMultiUserStartSpeechRequest;
  v2 = [(QSSMutableMultiUserStartSpeechRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end