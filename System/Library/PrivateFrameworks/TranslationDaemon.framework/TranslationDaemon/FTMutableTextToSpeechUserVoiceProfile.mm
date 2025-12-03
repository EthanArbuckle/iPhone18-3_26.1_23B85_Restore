@interface FTMutableTextToSpeechUserVoiceProfile
- (FTMutableTextToSpeechUserVoiceProfile)init;
- (float)duration_mean;
- (float)duration_std;
- (float)energy_mean;
- (float)energy_std;
- (float)pitch_mean;
- (float)pitch_std;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDuration_mean:(float)duration_mean;
- (void)setDuration_std:(float)duration_std;
- (void)setEnergy_mean:(float)energy_mean;
- (void)setEnergy_std:(float)energy_std;
- (void)setPitch_mean:(float)pitch_mean;
- (void)setPitch_std:(float)pitch_std;
@end

@implementation FTMutableTextToSpeechUserVoiceProfile

- (FTMutableTextToSpeechUserVoiceProfile)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechUserVoiceProfile;
  v2 = [(FTMutableTextToSpeechUserVoiceProfile *)&v6 init];
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

- (float)pitch_mean
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"pitch_mean"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setPitch_mean:(float)pitch_mean
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = pitch_mean;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)pitch_std
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"pitch_std"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setPitch_std:(float)pitch_std
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = pitch_std;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)energy_mean
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"energy_mean"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setEnergy_mean:(float)energy_mean
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = energy_mean;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)energy_std
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"energy_std"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setEnergy_std:(float)energy_std
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = energy_std;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)duration_mean
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"duration_mean"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setDuration_mean:(float)duration_mean
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = duration_mean;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)duration_std
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"duration_std"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setDuration_std:(float)duration_std
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = duration_std;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end