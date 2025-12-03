@interface FTMutableSpeechTranslationStreamingResponse
+ (Class)content_mutableClassForType:(int64_t)type;
+ (int64_t)content_typeForMutableObject:(id)object;
+ (int64_t)content_typeForObject:(id)object;
- (FTAudioLimitExceeded)contentAsFTAudioLimitExceeded;
- (FTClientSetupInfo)contentAsFTClientSetupInfo;
- (FTFinalBlazarResponse)contentAsFTFinalBlazarResponse;
- (FTMutableSpeechTranslationStreamingResponse)init;
- (FTRecognitionCandidate)contentAsFTRecognitionCandidate;
- (FTRecognitionProgress)contentAsFTRecognitionProgress;
- (FTRequestStatsResponse)contentAsFTRequestStatsResponse;
- (FTServerEndpointFeatures)contentAsFTServerEndpointFeatures;
- (FTSpeechTranslationFinalRecognitionResponse)contentAsFTSpeechTranslationFinalRecognitionResponse;
- (FTSpeechTranslationMtResponse)contentAsFTSpeechTranslationMtResponse;
- (FTSpeechTranslationPartialRecognitionResponse)contentAsFTSpeechTranslationPartialRecognitionResponse;
- (FTSpeechTranslationServerEndpointFeatures)contentAsFTSpeechTranslationServerEndpointFeatures;
- (FTSpeechTranslationTextToSpeechResponse)contentAsFTSpeechTranslationTextToSpeechResponse;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)content_type;
- (void)setContent:(id)content;
- (void)setContentAsFTAudioLimitExceeded:(id)exceeded;
- (void)setContentAsFTClientSetupInfo:(id)info;
- (void)setContentAsFTFinalBlazarResponse:(id)response;
- (void)setContentAsFTRecognitionCandidate:(id)candidate;
- (void)setContentAsFTRecognitionProgress:(id)progress;
- (void)setContentAsFTRequestStatsResponse:(id)response;
- (void)setContentAsFTServerEndpointFeatures:(id)features;
- (void)setContentAsFTSpeechTranslationFinalRecognitionResponse:(id)response;
- (void)setContentAsFTSpeechTranslationMtResponse:(id)response;
- (void)setContentAsFTSpeechTranslationPartialRecognitionResponse:(id)response;
- (void)setContentAsFTSpeechTranslationServerEndpointFeatures:(id)features;
- (void)setContentAsFTSpeechTranslationTextToSpeechResponse:(id)response;
- (void)setContent_type:(int64_t)content_type;
@end

@implementation FTMutableSpeechTranslationStreamingResponse

- (FTMutableSpeechTranslationStreamingResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutableSpeechTranslationStreamingResponse;
  v2 = [(FTMutableSpeechTranslationStreamingResponse *)&v6 init];
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

- (int64_t)content_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setContent_type:(int64_t)content_type
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:content_type];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (FTSpeechTranslationPartialRecognitionResponse)contentAsFTSpeechTranslationPartialRecognitionResponse
{
  if ([(FTMutableSpeechTranslationStreamingResponse *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTSpeechTranslationPartialRecognitionResponse:(id)response
{
  responseCopy = response;
  [(FTMutableSpeechTranslationStreamingResponse *)self setContent_type:1];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTSpeechTranslationFinalRecognitionResponse)contentAsFTSpeechTranslationFinalRecognitionResponse
{
  if ([(FTMutableSpeechTranslationStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTSpeechTranslationFinalRecognitionResponse:(id)response
{
  responseCopy = response;
  [(FTMutableSpeechTranslationStreamingResponse *)self setContent_type:2];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTAudioLimitExceeded)contentAsFTAudioLimitExceeded
{
  if ([(FTMutableSpeechTranslationStreamingResponse *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTAudioLimitExceeded:(id)exceeded
{
  exceededCopy = exceeded;
  [(FTMutableSpeechTranslationStreamingResponse *)self setContent_type:3];
  v4 = [exceededCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTSpeechTranslationMtResponse)contentAsFTSpeechTranslationMtResponse
{
  if ([(FTMutableSpeechTranslationStreamingResponse *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTSpeechTranslationMtResponse:(id)response
{
  responseCopy = response;
  [(FTMutableSpeechTranslationStreamingResponse *)self setContent_type:4];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTSpeechTranslationTextToSpeechResponse)contentAsFTSpeechTranslationTextToSpeechResponse
{
  if ([(FTMutableSpeechTranslationStreamingResponse *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTSpeechTranslationTextToSpeechResponse:(id)response
{
  responseCopy = response;
  [(FTMutableSpeechTranslationStreamingResponse *)self setContent_type:5];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTFinalBlazarResponse)contentAsFTFinalBlazarResponse
{
  if ([(FTMutableSpeechTranslationStreamingResponse *)self content_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTFinalBlazarResponse:(id)response
{
  responseCopy = response;
  [(FTMutableSpeechTranslationStreamingResponse *)self setContent_type:6];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTRecognitionProgress)contentAsFTRecognitionProgress
{
  if ([(FTMutableSpeechTranslationStreamingResponse *)self content_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTRecognitionProgress:(id)progress
{
  progressCopy = progress;
  [(FTMutableSpeechTranslationStreamingResponse *)self setContent_type:7];
  v4 = [progressCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTRecognitionCandidate)contentAsFTRecognitionCandidate
{
  if ([(FTMutableSpeechTranslationStreamingResponse *)self content_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTRecognitionCandidate:(id)candidate
{
  candidateCopy = candidate;
  [(FTMutableSpeechTranslationStreamingResponse *)self setContent_type:8];
  v4 = [candidateCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTRequestStatsResponse)contentAsFTRequestStatsResponse
{
  if ([(FTMutableSpeechTranslationStreamingResponse *)self content_type]== 9)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTRequestStatsResponse:(id)response
{
  responseCopy = response;
  [(FTMutableSpeechTranslationStreamingResponse *)self setContent_type:9];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTServerEndpointFeatures)contentAsFTServerEndpointFeatures
{
  if ([(FTMutableSpeechTranslationStreamingResponse *)self content_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTServerEndpointFeatures:(id)features
{
  featuresCopy = features;
  [(FTMutableSpeechTranslationStreamingResponse *)self setContent_type:10];
  v4 = [featuresCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTClientSetupInfo)contentAsFTClientSetupInfo
{
  if ([(FTMutableSpeechTranslationStreamingResponse *)self content_type]== 11)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTClientSetupInfo:(id)info
{
  infoCopy = info;
  [(FTMutableSpeechTranslationStreamingResponse *)self setContent_type:11];
  v4 = [infoCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTSpeechTranslationServerEndpointFeatures)contentAsFTSpeechTranslationServerEndpointFeatures
{
  if ([(FTMutableSpeechTranslationStreamingResponse *)self content_type]== 12)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTSpeechTranslationServerEndpointFeatures:(id)features
{
  featuresCopy = features;
  [(FTMutableSpeechTranslationStreamingResponse *)self setContent_type:12];
  v4 = [featuresCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (void)setContent:(id)content
{
  contentCopy = content;
  -[FTMutableSpeechTranslationStreamingResponse setContent_type:](self, "setContent_type:", [objc_opt_class() content_typeForObject:contentCopy]);
  v4 = [contentCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

+ (Class)content_mutableClassForType:(int64_t)type
{
  if ((type - 1) > 0xB)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B9040[type - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

+ (int64_t)content_typeForMutableObject:(id)object
{
  objectCopy = object;
  if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 1;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 2;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 3;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 4;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 5;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 6;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 7;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 8;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 9;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 10;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 11;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)content_typeForObject:(id)object
{
  objectCopy = object;
  if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 1;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 2;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 3;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 4;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 5;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 6;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 7;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 8;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 9;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 10;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 11;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 12;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end