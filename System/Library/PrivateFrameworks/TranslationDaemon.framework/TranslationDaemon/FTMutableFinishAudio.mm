@interface FTMutableFinishAudio
- (FTMutableFinishAudio)init;
- (float)total_audio_recorded_seconds;
- (id)copyWithZone:(_NSZone *)a3;
- (int)packet_count;
- (void)setFeatures_at_endpoint:(id)a3;
- (void)setServer_feature_latency_distribution:(id)a3;
- (void)setTotal_audio_recorded_seconds:(float)a3;
@end

@implementation FTMutableFinishAudio

- (FTMutableFinishAudio)init
{
  v6.receiver = self;
  v6.super_class = FTMutableFinishAudio;
  v2 = [(FTMutableFinishAudio *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (int)packet_count
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"packet_count"];
  v3 = [v2 intValue];

  return v3;
}

- (float)total_audio_recorded_seconds
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"total_audio_recorded_seconds"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setTotal_audio_recorded_seconds:(float)a3
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = a3;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setFeatures_at_endpoint:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setServer_feature_latency_distribution:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end