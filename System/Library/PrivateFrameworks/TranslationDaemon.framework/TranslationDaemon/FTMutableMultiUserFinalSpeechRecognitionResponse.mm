@interface FTMutableMultiUserFinalSpeechRecognitionResponse
- (FTMutableMultiUserFinalSpeechRecognitionResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setFinal_speech_recognition_response:(id)final_speech_recognition_response;
@end

@implementation FTMutableMultiUserFinalSpeechRecognitionResponse

- (FTMutableMultiUserFinalSpeechRecognitionResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutableMultiUserFinalSpeechRecognitionResponse;
  v2 = [(FTMutableMultiUserFinalSpeechRecognitionResponse *)&v6 init];
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

- (void)setFinal_speech_recognition_response:(id)final_speech_recognition_response
{
  v4 = [final_speech_recognition_response copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end