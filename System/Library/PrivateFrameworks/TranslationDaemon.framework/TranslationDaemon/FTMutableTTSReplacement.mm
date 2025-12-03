@interface FTMutableTTSReplacement
- (FTMutableTTSReplacement)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setOriginal:(id)original;
- (void)setReplacement:(id)replacement;
@end

@implementation FTMutableTTSReplacement

- (FTMutableTTSReplacement)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTTSReplacement;
  v2 = [(FTMutableTTSReplacement *)&v6 init];
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

- (void)setOriginal:(id)original
{
  v4 = [original copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setReplacement:(id)replacement
{
  v4 = [replacement copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end