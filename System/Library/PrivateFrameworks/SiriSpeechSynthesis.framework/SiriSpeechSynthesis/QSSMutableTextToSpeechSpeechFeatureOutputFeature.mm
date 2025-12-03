@interface QSSMutableTextToSpeechSpeechFeatureOutputFeature
- (QSSMutableTextToSpeechSpeechFeatureOutputFeature)init;
- (float)begin_time;
- (float)duration;
- (float)end_time;
- (float)energy;
- (float)pitch;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBegin_time:(float)begin_time;
- (void)setDuration:(float)duration;
- (void)setEnd_time:(float)end_time;
- (void)setEnergy:(float)energy;
- (void)setPhone_name:(id)phone_name;
- (void)setPitch:(float)pitch;
@end

@implementation QSSMutableTextToSpeechSpeechFeatureOutputFeature

- (void)setEnergy:(float)energy
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = energy;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)energy
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"energy"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setPitch:(float)pitch
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = pitch;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)pitch
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"pitch"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setDuration:(float)duration
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = duration;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)duration
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"duration"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setEnd_time:(float)end_time
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = end_time;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)end_time
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"end_time"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setBegin_time:(float)begin_time
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = begin_time;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)begin_time
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"begin_time"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setPhone_name:(id)phone_name
{
  v4 = [phone_name copy];
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

- (QSSMutableTextToSpeechSpeechFeatureOutputFeature)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechSpeechFeatureOutputFeature;
  v2 = [(QSSMutableTextToSpeechSpeechFeatureOutputFeature *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end