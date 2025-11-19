@interface QSSMutableTextToSpeechSpeechFeatureOutputFeature
- (QSSMutableTextToSpeechSpeechFeatureOutputFeature)init;
- (float)begin_time;
- (float)duration;
- (float)end_time;
- (float)energy;
- (float)pitch;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBegin_time:(float)a3;
- (void)setDuration:(float)a3;
- (void)setEnd_time:(float)a3;
- (void)setEnergy:(float)a3;
- (void)setPhone_name:(id)a3;
- (void)setPitch:(float)a3;
@end

@implementation QSSMutableTextToSpeechSpeechFeatureOutputFeature

- (void)setEnergy:(float)a3
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = a3;
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

- (void)setPitch:(float)a3
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = a3;
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

- (void)setDuration:(float)a3
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = a3;
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

- (void)setEnd_time:(float)a3
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = a3;
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

- (void)setBegin_time:(float)a3
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = a3;
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

- (void)setPhone_name:(id)a3
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

- (QSSMutableTextToSpeechSpeechFeatureOutputFeature)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechSpeechFeatureOutputFeature;
  v2 = [(QSSMutableTextToSpeechSpeechFeatureOutputFeature *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end