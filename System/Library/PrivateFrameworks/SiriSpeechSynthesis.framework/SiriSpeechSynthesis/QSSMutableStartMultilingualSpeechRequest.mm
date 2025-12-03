@interface QSSMutableStartMultilingualSpeechRequest
- (QSSMutableStartMultilingualSpeechRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLanguage_parameters_by_id:(id)language_parameters_by_id;
- (void)setStart_speech_request:(id)start_speech_request;
@end

@implementation QSSMutableStartMultilingualSpeechRequest

- (void)setLanguage_parameters_by_id:(id)language_parameters_by_id
{
  v4 = [language_parameters_by_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setStart_speech_request:(id)start_speech_request
{
  v4 = [start_speech_request copy];
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

- (QSSMutableStartMultilingualSpeechRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableStartMultilingualSpeechRequest;
  v2 = [(QSSMutableStartMultilingualSpeechRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end