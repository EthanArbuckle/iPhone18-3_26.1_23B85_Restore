@interface QSSMutableFinalSpeechRecognitionResponse
- (BOOL)has_result;
- (QSSMutableFinalSpeechRecognitionResponse)init;
- (double)watermark_peak_average;
- (id)copyWithZone:(_NSZone *)a3;
- (int)return_code;
- (int64_t)lang_profile_recreate_codes;
- (int64_t)watermark_detection;
- (void)setAudio_analytics:(id)a3;
- (void)setLang_profile_recreate_codes:(int64_t)a3;
- (void)setLanguage:(id)a3;
- (void)setLatnn_mitigator_result:(id)a3;
- (void)setRecognition_result:(id)a3;
- (void)setRequest_locale:(id)a3;
- (void)setReturn_str:(id)a3;
- (void)setSession_id:(id)a3;
- (void)setSpeech_id:(id)a3;
- (void)setWatermark_detection:(int64_t)a3;
- (void)setWatermark_peak_average:(double)a3;
@end

@implementation QSSMutableFinalSpeechRecognitionResponse

- (BOOL)has_result
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"has_result"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setRequest_locale:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLatnn_mitigator_result:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setWatermark_peak_average:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)watermark_peak_average
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"watermark_peak_average"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setWatermark_detection:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)watermark_detection
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"watermark_detection"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setAudio_analytics:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLang_profile_recreate_codes:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)lang_profile_recreate_codes
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"lang_profile_recreate_codes"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setRecognition_result:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setReturn_str:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)return_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_code"];
  v3 = [v2 intValue];

  return v3;
}

- (void)setSession_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)a3
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

- (QSSMutableFinalSpeechRecognitionResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableFinalSpeechRecognitionResponse;
  v2 = [(QSSMutableFinalSpeechRecognitionResponse *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end