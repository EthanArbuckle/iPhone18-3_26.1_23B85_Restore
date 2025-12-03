@interface QSSMutableAudioAnalytics_AcousticFeaturesEntry
- (QSSMutableAudioAnalytics_AcousticFeaturesEntry)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setKey:(id)key;
- (void)setValue:(id)value;
@end

@implementation QSSMutableAudioAnalytics_AcousticFeaturesEntry

- (void)setValue:(id)value
{
  v4 = [value copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setKey:(id)key
{
  v4 = [key copy];
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

- (QSSMutableAudioAnalytics_AcousticFeaturesEntry)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableAudioAnalytics_AcousticFeaturesEntry;
  v2 = [(QSSMutableAudioAnalytics_AcousticFeaturesEntry *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end