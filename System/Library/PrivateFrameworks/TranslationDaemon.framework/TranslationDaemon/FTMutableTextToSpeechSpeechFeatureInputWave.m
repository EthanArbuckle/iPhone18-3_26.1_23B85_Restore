@interface FTMutableTextToSpeechSpeechFeatureInputWave
- (FTMutableTextToSpeechSpeechFeatureInputWave)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)sample_rate;
- (void)pcm_data:(id)a3;
- (void)setPcm_data:(id)a3;
@end

@implementation FTMutableTextToSpeechSpeechFeatureInputWave

- (FTMutableTextToSpeechSpeechFeatureInputWave)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechSpeechFeatureInputWave;
  v2 = [(FTMutableTextToSpeechSpeechFeatureInputWave *)&v6 init];
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

- (int)sample_rate
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"sample_rate"];
  v3 = [v2 intValue];

  return v3;
}

- (void)setPcm_data:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)pcm_data:(id)a3
{
  v7 = a3;
  v4 = [(FTMutableTextToSpeechSpeechFeatureInputWave *)self pcm_data];
  v5 = [v4 bytes];
  v6 = [(FTMutableTextToSpeechSpeechFeatureInputWave *)self pcm_data];
  v7[2](v7, v5, [v6 length]);
}

@end