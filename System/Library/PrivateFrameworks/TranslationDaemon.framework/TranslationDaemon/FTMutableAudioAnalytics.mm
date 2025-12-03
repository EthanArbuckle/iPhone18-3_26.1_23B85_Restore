@interface FTMutableAudioAnalytics
- (FTMutableAudioAnalytics)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAcoustic_features:(id)acoustic_features;
- (void)setSpeech_recognition_features:(id)speech_recognition_features;
@end

@implementation FTMutableAudioAnalytics

- (FTMutableAudioAnalytics)init
{
  v6.receiver = self;
  v6.super_class = FTMutableAudioAnalytics;
  v2 = [(FTMutableAudioAnalytics *)&v6 init];
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

- (void)setSpeech_recognition_features:(id)speech_recognition_features
{
  v4 = [speech_recognition_features copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setAcoustic_features:(id)acoustic_features
{
  v4 = [acoustic_features copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end