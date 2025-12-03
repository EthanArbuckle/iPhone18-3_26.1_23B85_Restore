@interface FTMutableSpeechTranslationFinalRecognitionResponse
- (FTMutableSpeechTranslationFinalRecognitionResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)return_code;
- (void)setConversation_id:(id)conversation_id;
- (void)setRecognition_result:(id)recognition_result;
- (void)setRecognition_text:(id)recognition_text;
- (void)setRequest_id:(id)request_id;
- (void)setReturn_str:(id)return_str;
- (void)setSource_locale:(id)source_locale;
@end

@implementation FTMutableSpeechTranslationFinalRecognitionResponse

- (FTMutableSpeechTranslationFinalRecognitionResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutableSpeechTranslationFinalRecognitionResponse;
  v2 = [(FTMutableSpeechTranslationFinalRecognitionResponse *)&v6 init];
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

- (void)setConversation_id:(id)conversation_id
{
  v4 = [conversation_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRequest_id:(id)request_id
{
  v4 = [request_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)return_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_code"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setReturn_str:(id)return_str
{
  v4 = [return_str copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSource_locale:(id)source_locale
{
  v4 = [source_locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRecognition_text:(id)recognition_text
{
  v4 = [recognition_text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRecognition_result:(id)recognition_result
{
  v4 = [recognition_result copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end