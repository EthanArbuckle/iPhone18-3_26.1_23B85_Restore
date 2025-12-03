@interface QSSMutableUserParameters
- (QSSMutableUserParameters)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setFork_id:(id)fork_id;
- (void)setSpeech_id:(id)speech_id;
@end

@implementation QSSMutableUserParameters

- (void)setFork_id:(id)fork_id
{
  v4 = [fork_id copy];
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

- (QSSMutableUserParameters)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableUserParameters;
  v2 = [(QSSMutableUserParameters *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end