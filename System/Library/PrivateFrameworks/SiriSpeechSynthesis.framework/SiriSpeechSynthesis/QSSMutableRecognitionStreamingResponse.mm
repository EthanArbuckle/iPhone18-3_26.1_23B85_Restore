@interface QSSMutableRecognitionStreamingResponse
- (QSSAudioLimitExceeded)contentAsQSSAudioLimitExceeded;
- (QSSCheckForSpeechResponse)contentAsQSSCheckForSpeechResponse;
- (QSSClientSetupInfo)contentAsQSSClientSetupInfo;
- (QSSEndPointCandidate)contentAsQSSEndPointCandidate;
- (QSSEndPointLikelihood)contentAsQSSEndPointLikelihood;
- (QSSFinalSpeechRecognitionResponse)contentAsQSSFinalSpeechRecognitionResponse;
- (QSSMutableRecognitionStreamingResponse)init;
- (QSSPartialSpeechRecognitionResponse)contentAsQSSPartialSpeechRecognitionResponse;
- (QSSRecognitionCandidate)contentAsQSSRecognitionCandidate;
- (QSSRecognitionProgress)contentAsQSSRecognitionProgress;
- (QSSRequestStatsResponse)contentAsQSSRequestStatsResponse;
- (QSSServerEndpointFeatures)contentAsQSSServerEndpointFeatures;
- (QSSUpdatedAcousticProfile)contentAsQSSUpdatedAcousticProfile;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)content_type;
- (void)setContentAsQSSAudioLimitExceeded:(id)exceeded;
- (void)setContentAsQSSCheckForSpeechResponse:(id)response;
- (void)setContentAsQSSClientSetupInfo:(id)info;
- (void)setContentAsQSSEndPointCandidate:(id)candidate;
- (void)setContentAsQSSEndPointLikelihood:(id)likelihood;
- (void)setContentAsQSSFinalSpeechRecognitionResponse:(id)response;
- (void)setContentAsQSSPartialSpeechRecognitionResponse:(id)response;
- (void)setContentAsQSSRecognitionCandidate:(id)candidate;
- (void)setContentAsQSSRecognitionProgress:(id)progress;
- (void)setContentAsQSSRequestStatsResponse:(id)response;
- (void)setContentAsQSSServerEndpointFeatures:(id)features;
- (void)setContentAsQSSUpdatedAcousticProfile:(id)profile;
- (void)setContent_type:(int64_t)content_type;
@end

@implementation QSSMutableRecognitionStreamingResponse

- (void)setContentAsQSSAudioLimitExceeded:(id)exceeded
{
  exceededCopy = exceeded;
  [(QSSMutableRecognitionStreamingResponse *)self setContent_type:12];
  v4 = [exceededCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSAudioLimitExceeded)contentAsQSSAudioLimitExceeded
{
  if ([(QSSMutableRecognitionStreamingResponse *)self content_type]== 12)
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
  [(QSSMutableRecognitionStreamingResponse *)self setContent_type:11];
  v4 = [infoCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSClientSetupInfo)contentAsQSSClientSetupInfo
{
  if ([(QSSMutableRecognitionStreamingResponse *)self content_type]== 11)
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
  [(QSSMutableRecognitionStreamingResponse *)self setContent_type:10];
  v4 = [featuresCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSServerEndpointFeatures)contentAsQSSServerEndpointFeatures
{
  if ([(QSSMutableRecognitionStreamingResponse *)self content_type]== 10)
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
  [(QSSMutableRecognitionStreamingResponse *)self setContent_type:9];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSRequestStatsResponse)contentAsQSSRequestStatsResponse
{
  if ([(QSSMutableRecognitionStreamingResponse *)self content_type]== 9)
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
  [(QSSMutableRecognitionStreamingResponse *)self setContent_type:8];
  v4 = [candidateCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSRecognitionCandidate)contentAsQSSRecognitionCandidate
{
  if ([(QSSMutableRecognitionStreamingResponse *)self content_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSCheckForSpeechResponse:(id)response
{
  responseCopy = response;
  [(QSSMutableRecognitionStreamingResponse *)self setContent_type:7];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSCheckForSpeechResponse)contentAsQSSCheckForSpeechResponse
{
  if ([(QSSMutableRecognitionStreamingResponse *)self content_type]== 7)
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
  [(QSSMutableRecognitionStreamingResponse *)self setContent_type:6];
  v4 = [progressCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSRecognitionProgress)contentAsQSSRecognitionProgress
{
  if ([(QSSMutableRecognitionStreamingResponse *)self content_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSEndPointCandidate:(id)candidate
{
  candidateCopy = candidate;
  [(QSSMutableRecognitionStreamingResponse *)self setContent_type:5];
  v4 = [candidateCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSEndPointCandidate)contentAsQSSEndPointCandidate
{
  if ([(QSSMutableRecognitionStreamingResponse *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSEndPointLikelihood:(id)likelihood
{
  likelihoodCopy = likelihood;
  [(QSSMutableRecognitionStreamingResponse *)self setContent_type:4];
  v4 = [likelihoodCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSEndPointLikelihood)contentAsQSSEndPointLikelihood
{
  if ([(QSSMutableRecognitionStreamingResponse *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSUpdatedAcousticProfile:(id)profile
{
  profileCopy = profile;
  [(QSSMutableRecognitionStreamingResponse *)self setContent_type:3];
  v4 = [profileCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSUpdatedAcousticProfile)contentAsQSSUpdatedAcousticProfile
{
  if ([(QSSMutableRecognitionStreamingResponse *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSPartialSpeechRecognitionResponse:(id)response
{
  responseCopy = response;
  [(QSSMutableRecognitionStreamingResponse *)self setContent_type:2];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSPartialSpeechRecognitionResponse)contentAsQSSPartialSpeechRecognitionResponse
{
  if ([(QSSMutableRecognitionStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSFinalSpeechRecognitionResponse:(id)response
{
  responseCopy = response;
  [(QSSMutableRecognitionStreamingResponse *)self setContent_type:1];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSFinalSpeechRecognitionResponse)contentAsQSSFinalSpeechRecognitionResponse
{
  if ([(QSSMutableRecognitionStreamingResponse *)self content_type]== 1)
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

- (QSSMutableRecognitionStreamingResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableRecognitionStreamingResponse;
  v2 = [(QSSMutableRecognitionStreamingResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end