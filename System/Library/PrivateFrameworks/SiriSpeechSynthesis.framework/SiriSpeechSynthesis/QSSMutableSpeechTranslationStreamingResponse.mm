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
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)content_type;
- (void)setContentAsQSSAudioLimitExceeded:(id)exceeded;
- (void)setContentAsQSSClientSetupInfo:(id)info;
- (void)setContentAsQSSFinalBlazarResponse:(id)response;
- (void)setContentAsQSSRecognitionCandidate:(id)candidate;
- (void)setContentAsQSSRecognitionProgress:(id)progress;
- (void)setContentAsQSSRequestStatsResponse:(id)response;
- (void)setContentAsQSSServerEndpointFeatures:(id)features;
- (void)setContentAsQSSSpeechTranslationFinalRecognitionResponse:(id)response;
- (void)setContentAsQSSSpeechTranslationMtResponse:(id)response;
- (void)setContentAsQSSSpeechTranslationPartialRecognitionResponse:(id)response;
- (void)setContentAsQSSSpeechTranslationServerEndpointFeatures:(id)features;
- (void)setContentAsQSSSpeechTranslationTextToSpeechResponse:(id)response;
- (void)setContent_type:(int64_t)content_type;
@end

@implementation QSSMutableSpeechTranslationStreamingResponse

- (void)setContentAsQSSSpeechTranslationServerEndpointFeatures:(id)features
{
  featuresCopy = features;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:12];
  v4 = [featuresCopy copy];
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

- (void)setContentAsQSSClientSetupInfo:(id)info
{
  infoCopy = info;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:11];
  v4 = [infoCopy copy];
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

- (void)setContentAsQSSServerEndpointFeatures:(id)features
{
  featuresCopy = features;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:10];
  v4 = [featuresCopy copy];
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

- (void)setContentAsQSSRequestStatsResponse:(id)response
{
  responseCopy = response;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:9];
  v4 = [responseCopy copy];
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

- (void)setContentAsQSSRecognitionCandidate:(id)candidate
{
  candidateCopy = candidate;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:8];
  v4 = [candidateCopy copy];
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

- (void)setContentAsQSSRecognitionProgress:(id)progress
{
  progressCopy = progress;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:7];
  v4 = [progressCopy copy];
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

- (void)setContentAsQSSFinalBlazarResponse:(id)response
{
  responseCopy = response;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:6];
  v4 = [responseCopy copy];
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

- (void)setContentAsQSSSpeechTranslationTextToSpeechResponse:(id)response
{
  responseCopy = response;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:5];
  v4 = [responseCopy copy];
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

- (void)setContentAsQSSSpeechTranslationMtResponse:(id)response
{
  responseCopy = response;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:4];
  v4 = [responseCopy copy];
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

- (void)setContentAsQSSAudioLimitExceeded:(id)exceeded
{
  exceededCopy = exceeded;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:3];
  v4 = [exceededCopy copy];
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

- (void)setContentAsQSSSpeechTranslationFinalRecognitionResponse:(id)response
{
  responseCopy = response;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:2];
  v4 = [responseCopy copy];
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

- (void)setContentAsQSSSpeechTranslationPartialRecognitionResponse:(id)response
{
  responseCopy = response;
  [(QSSMutableSpeechTranslationStreamingResponse *)self setContent_type:1];
  v4 = [responseCopy copy];
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

- (void)setContent_type:(int64_t)content_type
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:content_type];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)content_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end