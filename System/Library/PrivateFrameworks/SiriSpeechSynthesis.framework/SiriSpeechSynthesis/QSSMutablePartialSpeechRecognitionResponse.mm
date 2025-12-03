@interface QSSMutablePartialSpeechRecognitionResponse
- (BOOL)is_stable_result;
- (QSSMutablePartialSpeechRecognitionResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)audio_duration_ms;
- (int)confidence;
- (int)return_code;
- (void)setLanguage:(id)language;
- (void)setRecognition_text:(id)recognition_text;
- (void)setRequest_locale:(id)request_locale;
- (void)setReturn_str:(id)return_str;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
@end

@implementation QSSMutablePartialSpeechRecognitionResponse

- (void)setRequest_locale:(id)request_locale
{
  v4 = [request_locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage:(id)language
{
  v4 = [language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)confidence
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"confidence"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)audio_duration_ms
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"audio_duration_ms"];
  intValue = [v2 intValue];

  return intValue;
}

- (BOOL)is_stable_result
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"is_stable_result"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setRecognition_text:(id)recognition_text
{
  v4 = [recognition_text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setReturn_str:(id)return_str
{
  v4 = [return_str copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)return_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_code"];
  intValue = [v2 intValue];

  return intValue;
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

- (QSSMutablePartialSpeechRecognitionResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutablePartialSpeechRecognitionResponse;
  v2 = [(QSSMutablePartialSpeechRecognitionResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end