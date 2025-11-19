@interface QSSMutableSpeechTranslationStreamingResponse
- (QSSAudioLimitExceeded)contentAsQSSAudioLimitExceeded;
- (QSSClientSetupInfo)contentAsQSSClientSetupInfo;
- (QSSFinalBlazarResponse)contentAsQSSFinalBlazarResponse;
- (QSSMutableSpeechTranslationStreamingResponse)init;
- (QSSRecognitionCandidate)contentAsQSSRecognitionCandidate;
- (QSSRecognitionProgress)contentAsQSSRecognitionProgress;
- (QSSRequestStatsResponse)contentAsQSSRequestStatsResponse;
- (QSSServerEndpointFeatures)contentAsQSSServerEndpointFeatures;
- (QSSSpeechTranslationFinalRecognitionResponse)contentAsQSSSpeechTranslationFinalRecognitionResponse;
- (QSSSpeechTranslationMtResponse)contentAsQSSSpeechTranslationMtResponse;
- (QSSSpeechTranslationPartialRecognitionResponse)contentAsQSSSpeechTranslationPartialRecognitionResponse;
- (QSSSpeechTranslationServerEndpointFeatures)contentAsQSSSpeechTranslationServerEndpointFeatures;
- (QSSSpeechTranslationTextToSpeechResponse)contentAsQSSSpeechTranslationTextToSpeechResponse;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)content_type;
- (void)setContentAsQSSAudioLimitExceeded:(id)a3;
- (void)setContentAsQSSClientSetupInfo:(id)a3;
- (void)setContentAsQSSFinalBlazarResponse:(id)a3;
- (void)setContentAsQSSRecognitionCandidate:(id)a3;
- (void)setContentAsQSSRecognitionProgress:(id)a3;
- (void)setContentAsQSSRequestStatsResponse:(id)a3;
- (void)setContentAsQSSServerEndpointFeatures:(id)a3;
- (void)setContentAsQSSSpeechTranslationFinalRecognitionResponse:(id)a3;
- (void)setContentAsQSSSpeechTranslationMtResponse:(id)a3;
- (void)setContentAsQSSSpeechTranslationPartialRecognitionResponse:(id)a3;
- (void)setContentAsQSSSpeechTranslationServerEndpointFeatures:(id)a3;
- (void)setContentAsQSSSpeechTranslationTextToSpeechResponse:(id)a3;
- (void)setContent_type:(int64_t)a3;
@end

@implementation QSSMutableSpeechTranslationStreamingResponse

- (void)setContentAsQSSSpeechTranslationServerEndpointFeatures:(id)a3
{
  v5 = a3;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:12];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSpeechTranslationServerEndpointFeatures)contentAsQSSSpeechTranslationServerEndpointFeatures
{
  if ([(QSSMutableSpeechTranslationStreamingResponse *)self content_type]== 12)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSClientSetupInfo:(id)a3
{
  v5 = a3;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:11];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSClientSetupInfo)contentAsQSSClientSetupInfo
{
  if ([(QSSMutableSpeechTranslationStreamingResponse *)self content_type]== 11)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSServerEndpointFeatures:(id)a3
{
  v5 = a3;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:10];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSServerEndpointFeatures)contentAsQSSServerEndpointFeatures
{
  if ([(QSSMutableSpeechTranslationStreamingResponse *)self content_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSRequestStatsResponse:(id)a3
{
  v5 = a3;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:9];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSRequestStatsResponse)contentAsQSSRequestStatsResponse
{
  if ([(QSSMutableSpeechTranslationStreamingResponse *)self content_type]== 9)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSRecognitionCandidate:(id)a3
{
  v5 = a3;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:8];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSRecognitionCandidate)contentAsQSSRecognitionCandidate
{
  if ([(QSSMutableSpeechTranslationStreamingResponse *)self content_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSRecognitionProgress:(id)a3
{
  v5 = a3;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:7];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSRecognitionProgress)contentAsQSSRecognitionProgress
{
  if ([(QSSMutableSpeechTranslationStreamingResponse *)self content_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSFinalBlazarResponse:(id)a3
{
  v5 = a3;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:6];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSFinalBlazarResponse)contentAsQSSFinalBlazarResponse
{
  if ([(QSSMutableSpeechTranslationStreamingResponse *)self content_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSSpeechTranslationTextToSpeechResponse:(id)a3
{
  v5 = a3;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:5];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSpeechTranslationTextToSpeechResponse)contentAsQSSSpeechTranslationTextToSpeechResponse
{
  if ([(QSSMutableSpeechTranslationStreamingResponse *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSSpeechTranslationMtResponse:(id)a3
{
  v5 = a3;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:4];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSpeechTranslationMtResponse)contentAsQSSSpeechTranslationMtResponse
{
  if ([(QSSMutableSpeechTranslationStreamingResponse *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSAudioLimitExceeded:(id)a3
{
  v5 = a3;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:3];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSAudioLimitExceeded)contentAsQSSAudioLimitExceeded
{
  if ([(QSSMutableSpeechTranslationStreamingResponse *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSSpeechTranslationFinalRecognitionResponse:(id)a3
{
  v5 = a3;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:2];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSpeechTranslationFinalRecognitionResponse)contentAsQSSSpeechTranslationFinalRecognitionResponse
{
  if ([(QSSMutableSpeechTranslationStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSSpeechTranslationPartialRecognitionResponse:(id)a3
{
  v5 = a3;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:1];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSpeechTranslationPartialRecognitionResponse)contentAsQSSSpeechTranslationPartialRecognitionResponse
{
  if ([(QSSMutableSpeechTranslationStreamingResponse *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContent_type:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)content_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content_type"];
  v3 = [v2 integerValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableSpeechTranslationStreamingResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableSpeechTranslationStreamingResponse;
  v2 = [(QSSMutableSpeechTranslationStreamingResponse *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end