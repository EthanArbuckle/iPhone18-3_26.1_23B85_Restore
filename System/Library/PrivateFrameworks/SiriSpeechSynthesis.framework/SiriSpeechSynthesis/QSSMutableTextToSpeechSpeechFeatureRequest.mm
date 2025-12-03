@interface QSSMutableTextToSpeechSpeechFeatureRequest
- (QSSMutableTextToSpeechSpeechFeatureRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setModel_id:(id)model_id;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setText:(id)text;
- (void)setWave_data:(id)wave_data;
@end

@implementation QSSMutableTextToSpeechSpeechFeatureRequest

- (void)setWave_data:(id)wave_data
{
  v4 = [wave_data copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setText:(id)text
{
  v4 = [text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setModel_id:(id)model_id
{
  v4 = [model_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)speech_id
{
  v4 = [speech_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableTextToSpeechSpeechFeatureRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechSpeechFeatureRequest;
  v2 = [(QSSMutableTextToSpeechSpeechFeatureRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end