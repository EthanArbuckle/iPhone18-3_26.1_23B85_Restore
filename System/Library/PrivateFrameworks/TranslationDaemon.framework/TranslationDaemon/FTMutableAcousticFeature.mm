@interface FTMutableAcousticFeature
- (FTMutableAcousticFeature)init;
- (float)frame_duration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAcoustic_feature_per_frame:(id)acoustic_feature_per_frame;
- (void)setFrame_duration:(float)frame_duration;
@end

@implementation FTMutableAcousticFeature

- (FTMutableAcousticFeature)init
{
  v6.receiver = self;
  v6.super_class = FTMutableAcousticFeature;
  v2 = [(FTMutableAcousticFeature *)&v6 init];
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

- (void)setAcoustic_feature_per_frame:(id)acoustic_feature_per_frame
{
  v4 = [acoustic_feature_per_frame copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)frame_duration
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"frame_duration"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setFrame_duration:(float)frame_duration
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = frame_duration;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end