@interface OPTTSMutableTextToSpeechUserVoiceProfile
- (OPTTSMutableTextToSpeechUserVoiceProfile)init;
- (float)duration_mean;
- (float)duration_std;
- (float)energy_mean;
- (float)energy_std;
- (float)pitch_mean;
- (float)pitch_std;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDuration_mean:(float)a3;
- (void)setDuration_std:(float)a3;
- (void)setEnergy_mean:(float)a3;
- (void)setEnergy_std:(float)a3;
- (void)setPitch_mean:(float)a3;
- (void)setPitch_std:(float)a3;
@end

@implementation OPTTSMutableTextToSpeechUserVoiceProfile

- (void)setDuration_std:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (void)setDuration_mean:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (void)setEnergy_std:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (void)setEnergy_mean:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (void)setPitch_std:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (void)setPitch_mean:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)pitch_mean
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"pitch_mean"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (OPTTSMutableTextToSpeechUserVoiceProfile)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechUserVoiceProfile;
  v2 = [(OPTTSMutableTextToSpeechUserVoiceProfile *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end