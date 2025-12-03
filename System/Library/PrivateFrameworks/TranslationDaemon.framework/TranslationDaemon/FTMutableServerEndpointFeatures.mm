@interface FTMutableServerEndpointFeatures
- (FTMutableServerEndpointFeatures)init;
- (double)eos_likelihood;
- (double)silence_posterior;
- (id)copyWithZone:(_NSZone *)zone;
- (int)num_of_words;
- (int)processed_audio_duration_ms;
- (int)trailing_silence_duration;
- (void)setEos_likelihood:(double)eos_likelihood;
- (void)setPause_counts:(id)pause_counts;
- (void)setSilence_posterior:(double)silence_posterior;
- (void)setSpeech_id:(id)speech_id;
- (void)setTask_name:(id)task_name;
@end

@implementation FTMutableServerEndpointFeatures

- (FTMutableServerEndpointFeatures)init
{
  v6.receiver = self;
  v6.super_class = FTMutableServerEndpointFeatures;
  v2 = [(FTMutableServerEndpointFeatures *)&v6 init];
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

- (int)processed_audio_duration_ms
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"processed_audio_duration_ms"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)num_of_words
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"num_of_words"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)trailing_silence_duration
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"trailing_silence_duration"];
  intValue = [v2 intValue];

  return intValue;
}

- (double)eos_likelihood
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"eos_likelihood"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setEos_likelihood:(double)eos_likelihood
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:eos_likelihood];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPause_counts:(id)pause_counts
{
  v4 = [pause_counts copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)silence_posterior
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"silence_posterior"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setSilence_posterior:(double)silence_posterior
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:silence_posterior];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTask_name:(id)task_name
{
  v4 = [task_name copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)speech_id
{
  v4 = [speech_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end