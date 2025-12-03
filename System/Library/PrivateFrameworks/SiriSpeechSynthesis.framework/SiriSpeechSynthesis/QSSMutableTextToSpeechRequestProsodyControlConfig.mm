@interface QSSMutableTextToSpeechRequestProsodyControlConfig
- (QSSMutableTextToSpeechRequestProsodyControlConfig)init;
- (float)global_energy;
- (float)global_pitch;
- (float)global_rate;
- (float)global_sent_duration;
- (float)global_sent_energy;
- (float)global_sent_pitch;
- (float)global_sent_pitchrange;
- (float)global_sent_tilt;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setGlobal_energy:(float)global_energy;
- (void)setGlobal_pitch:(float)global_pitch;
- (void)setGlobal_rate:(float)global_rate;
- (void)setGlobal_sent_duration:(float)global_sent_duration;
- (void)setGlobal_sent_energy:(float)global_sent_energy;
- (void)setGlobal_sent_pitch:(float)global_sent_pitch;
- (void)setGlobal_sent_pitchrange:(float)global_sent_pitchrange;
- (void)setGlobal_sent_tilt:(float)global_sent_tilt;
@end

@implementation QSSMutableTextToSpeechRequestProsodyControlConfig

- (void)setGlobal_sent_tilt:(float)global_sent_tilt
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = global_sent_tilt;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)global_sent_tilt
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"global_sent_tilt"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setGlobal_sent_energy:(float)global_sent_energy
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = global_sent_energy;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)global_sent_energy
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"global_sent_energy"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setGlobal_sent_duration:(float)global_sent_duration
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = global_sent_duration;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)global_sent_duration
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"global_sent_duration"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setGlobal_sent_pitchrange:(float)global_sent_pitchrange
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = global_sent_pitchrange;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)global_sent_pitchrange
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"global_sent_pitchrange"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setGlobal_sent_pitch:(float)global_sent_pitch
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = global_sent_pitch;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)global_sent_pitch
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"global_sent_pitch"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setGlobal_energy:(float)global_energy
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = global_energy;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)global_energy
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"global_energy"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setGlobal_pitch:(float)global_pitch
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = global_pitch;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)global_pitch
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"global_pitch"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setGlobal_rate:(float)global_rate
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = global_rate;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)global_rate
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"global_rate"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableTextToSpeechRequestProsodyControlConfig)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechRequestProsodyControlConfig;
  v2 = [(QSSMutableTextToSpeechRequestProsodyControlConfig *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end