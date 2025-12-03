@interface FTMutableCorrectionsValidatorRequest
- (FTMutableCorrectionsValidatorRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCorrected_utterance:(id)corrected_utterance;
- (void)setLanguage:(id)language;
- (void)setOriginal_utterance:(id)original_utterance;
- (void)setRecognition_result:(id)recognition_result;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
@end

@implementation FTMutableCorrectionsValidatorRequest

- (FTMutableCorrectionsValidatorRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableCorrectionsValidatorRequest;
  v2 = [(FTMutableCorrectionsValidatorRequest *)&v6 init];
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

- (void)setSpeech_id:(id)speech_id
{
  v4 = [speech_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage:(id)language
{
  v4 = [language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRecognition_result:(id)recognition_result
{
  v4 = [recognition_result copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setOriginal_utterance:(id)original_utterance
{
  v4 = [original_utterance copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setCorrected_utterance:(id)corrected_utterance
{
  v4 = [corrected_utterance copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end