@interface QSSMutableAudioAnalytics_AcousticFeaturesEntry
- (QSSMutableAudioAnalytics_AcousticFeaturesEntry)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setKey:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation QSSMutableAudioAnalytics_AcousticFeaturesEntry

- (void)setValue:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setKey:(id)a3
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

- (QSSMutableAudioAnalytics_AcousticFeaturesEntry)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableAudioAnalytics_AcousticFeaturesEntry;
  v2 = [(QSSMutableAudioAnalytics_AcousticFeaturesEntry *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end