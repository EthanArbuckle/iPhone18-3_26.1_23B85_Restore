@interface QSSMutableAudioAnalytics_SpeechRecognitionFeaturesEntry
- (QSSMutableAudioAnalytics_SpeechRecognitionFeaturesEntry)init;
- (float)value;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setKey:(id)a3;
- (void)setValue:(float)a3;
@end

@implementation QSSMutableAudioAnalytics_SpeechRecognitionFeaturesEntry

- (void)setValue:(float)a3
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = a3;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)value
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"value"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setKey:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableAudioAnalytics_SpeechRecognitionFeaturesEntry)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableAudioAnalytics_SpeechRecognitionFeaturesEntry;
  v2 = [(QSSMutableAudioAnalytics_SpeechRecognitionFeaturesEntry *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end