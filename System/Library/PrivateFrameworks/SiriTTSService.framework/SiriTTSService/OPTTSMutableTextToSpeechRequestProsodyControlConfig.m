@interface OPTTSMutableTextToSpeechRequestProsodyControlConfig
- (OPTTSMutableTextToSpeechRequestProsodyControlConfig)init;
- (float)global_energy;
- (float)global_pitch;
- (float)global_rate;
- (float)global_sent_duration;
- (float)global_sent_energy;
- (float)global_sent_pitch;
- (float)global_sent_pitchrange;
- (float)global_sent_tilt;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setGlobal_energy:(float)a3;
- (void)setGlobal_pitch:(float)a3;
- (void)setGlobal_rate:(float)a3;
- (void)setGlobal_sent_duration:(float)a3;
- (void)setGlobal_sent_energy:(float)a3;
- (void)setGlobal_sent_pitch:(float)a3;
- (void)setGlobal_sent_pitchrange:(float)a3;
- (void)setGlobal_sent_tilt:(float)a3;
@end

@implementation OPTTSMutableTextToSpeechRequestProsodyControlConfig

- (void)setGlobal_sent_tilt:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (void)setGlobal_sent_energy:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (void)setGlobal_sent_duration:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (void)setGlobal_sent_pitchrange:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (void)setGlobal_sent_pitch:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (void)setGlobal_energy:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (void)setGlobal_pitch:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (void)setGlobal_rate:(float)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (OPTTSMutableTextToSpeechRequestProsodyControlConfig)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechRequestProsodyControlConfig;
  v2 = [(OPTTSMutableTextToSpeechRequestProsodyControlConfig *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end