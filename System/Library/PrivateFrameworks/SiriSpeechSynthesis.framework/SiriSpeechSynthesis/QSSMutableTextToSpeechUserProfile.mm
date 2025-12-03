@interface QSSMutableTextToSpeechUserProfile
- (QSSMutableTextToSpeechUserProfile)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setResources:(id)resources;
@end

@implementation QSSMutableTextToSpeechUserProfile

- (void)setResources:(id)resources
{
  v4 = [resources copy];
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

- (QSSMutableTextToSpeechUserProfile)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechUserProfile;
  v2 = [(QSSMutableTextToSpeechUserProfile *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end