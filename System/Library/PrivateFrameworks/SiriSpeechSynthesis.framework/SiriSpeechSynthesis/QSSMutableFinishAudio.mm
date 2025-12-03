@interface QSSMutableFinishAudio
- (QSSMutableFinishAudio)init;
- (float)total_audio_recorded_seconds;
- (id)copyWithZone:(_NSZone *)zone;
- (int)packet_count;
- (void)setFeatures_at_endpoint:(id)features_at_endpoint;
- (void)setServer_feature_latency_distribution:(id)server_feature_latency_distribution;
- (void)setTotal_audio_recorded_seconds:(float)total_audio_recorded_seconds;
@end

@implementation QSSMutableFinishAudio

- (void)setServer_feature_latency_distribution:(id)server_feature_latency_distribution
{
  v4 = [server_feature_latency_distribution copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setFeatures_at_endpoint:(id)features_at_endpoint
{
  v4 = [features_at_endpoint copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTotal_audio_recorded_seconds:(float)total_audio_recorded_seconds
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = total_audio_recorded_seconds;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)total_audio_recorded_seconds
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"total_audio_recorded_seconds"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (int)packet_count
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"packet_count"];
  intValue = [v2 intValue];

  return intValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableFinishAudio)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableFinishAudio;
  v2 = [(QSSMutableFinishAudio *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end