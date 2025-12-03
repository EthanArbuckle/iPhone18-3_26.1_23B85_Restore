@interface QSSMutableFinalSpeechRecognitionResponse
- (BOOL)has_result;
- (QSSMutableFinalSpeechRecognitionResponse)init;
- (double)watermark_peak_average;
- (id)copyWithZone:(_NSZone *)zone;
- (int)return_code;
- (int64_t)lang_profile_recreate_codes;
- (int64_t)watermark_detection;
- (void)setAudio_analytics:(id)audio_analytics;
- (void)setLang_profile_recreate_codes:(int64_t)lang_profile_recreate_codes;
- (void)setLanguage:(id)language;
- (void)setLatnn_mitigator_result:(id)latnn_mitigator_result;
- (void)setRecognition_result:(id)recognition_result;
- (void)setRequest_locale:(id)request_locale;
- (void)setReturn_str:(id)return_str;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setWatermark_detection:(int64_t)watermark_detection;
- (void)setWatermark_peak_average:(double)watermark_peak_average;
@end

@implementation QSSMutableFinalSpeechRecognitionResponse

- (BOOL)has_result
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"has_result"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setRequest_locale:(id)request_locale
{
  v4 = [request_locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLatnn_mitigator_result:(id)latnn_mitigator_result
{
  v4 = [latnn_mitigator_result copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage:(id)language
{
  v4 = [language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setWatermark_peak_average:(double)watermark_peak_average
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:watermark_peak_average];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)watermark_peak_average
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"watermark_peak_average"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setWatermark_detection:(int64_t)watermark_detection
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:watermark_detection];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)watermark_detection
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"watermark_detection"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setAudio_analytics:(id)audio_analytics
{
  v4 = [audio_analytics copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLang_profile_recreate_codes:(int64_t)lang_profile_recreate_codes
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:lang_profile_recreate_codes];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)lang_profile_recreate_codes
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"lang_profile_recreate_codes"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setRecognition_result:(id)recognition_result
{
  v4 = [recognition_result copy];
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

- (QSSMutableFinalSpeechRecognitionResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableFinalSpeechRecognitionResponse;
  v2 = [(QSSMutableFinalSpeechRecognitionResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end