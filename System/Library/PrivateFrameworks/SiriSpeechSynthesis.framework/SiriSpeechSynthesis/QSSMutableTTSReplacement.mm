@interface QSSMutableTTSReplacement
- (QSSMutableTTSReplacement)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setOriginal:(id)original;
- (void)setReplacement:(id)replacement;
@end

@implementation QSSMutableTTSReplacement

- (void)setReplacement:(id)replacement
{
  v4 = [replacement copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setOriginal:(id)original
{
  v4 = [original copy];
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

- (QSSMutableTTSReplacement)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTTSReplacement;
  v2 = [(QSSMutableTTSReplacement *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end