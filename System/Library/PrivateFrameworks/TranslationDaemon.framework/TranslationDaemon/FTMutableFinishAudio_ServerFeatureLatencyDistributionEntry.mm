@interface FTMutableFinishAudio_ServerFeatureLatencyDistributionEntry
- (FTMutableFinishAudio_ServerFeatureLatencyDistributionEntry)init;
- (float)value;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setKey:(id)key;
- (void)setValue:(float)value;
@end

@implementation FTMutableFinishAudio_ServerFeatureLatencyDistributionEntry

- (FTMutableFinishAudio_ServerFeatureLatencyDistributionEntry)init
{
  v6.receiver = self;
  v6.super_class = FTMutableFinishAudio_ServerFeatureLatencyDistributionEntry;
  v2 = [(FTMutableFinishAudio_ServerFeatureLatencyDistributionEntry *)&v6 init];
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

- (void)setKey:(id)key
{
  v4 = [key copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)value
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"value"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setValue:(float)value
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = value;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end