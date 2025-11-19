@interface FTMutableServerEndpointFeatures
- (FTMutableServerEndpointFeatures)init;
- (double)eos_likelihood;
- (double)silence_posterior;
- (id)copyWithZone:(_NSZone *)a3;
- (int)num_of_words;
- (int)processed_audio_duration_ms;
- (int)trailing_silence_duration;
- (void)setEos_likelihood:(double)a3;
- (void)setPause_counts:(id)a3;
- (void)setSilence_posterior:(double)a3;
- (void)setSpeech_id:(id)a3;
- (void)setTask_name:(id)a3;
@end

@implementation FTMutableServerEndpointFeatures

- (FTMutableServerEndpointFeatures)init
{
  v6.receiver = self;
  v6.super_class = FTMutableServerEndpointFeatures;
  v2 = [(FTMutableServerEndpointFeatures *)&v6 init];
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

- (int)processed_audio_duration_ms
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"processed_audio_duration_ms"];
  v3 = [v2 intValue];

  return v3;
}

- (int)num_of_words
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"num_of_words"];
  v3 = [v2 intValue];

  return v3;
}

- (int)trailing_silence_duration
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"trailing_silence_duration"];
  v3 = [v2 intValue];

  return v3;
}

- (double)eos_likelihood
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"eos_likelihood"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setEos_likelihood:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPause_counts:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)silence_posterior
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"silence_posterior"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setSilence_posterior:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTask_name:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end