@interface QSSMutableTextToSpeechSpeechFeatureInputWave
- (QSSMutableTextToSpeechSpeechFeatureInputWave)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)sample_rate;
- (void)pcm_data:(id)pcm_data;
- (void)setPcm_data:(id)pcm_data;
@end

@implementation QSSMutableTextToSpeechSpeechFeatureInputWave

- (void)pcm_data:(id)pcm_data
{
  pcm_dataCopy = pcm_data;
  pcm_data = [(QSSMutableTextToSpeechSpeechFeatureInputWave *)self pcm_data];
  bytes = [pcm_data bytes];
  pcm_data2 = [(QSSMutableTextToSpeechSpeechFeatureInputWave *)self pcm_data];
  pcm_dataCopy[2](pcm_dataCopy, bytes, [pcm_data2 length]);
}

- (void)setPcm_data:(id)pcm_data
{
  v4 = [pcm_data copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)sample_rate
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"sample_rate"];
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

- (QSSMutableTextToSpeechSpeechFeatureInputWave)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechSpeechFeatureInputWave;
  v2 = [(QSSMutableTextToSpeechSpeechFeatureInputWave *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end