@interface FTMutableBlazarSpeechTranslationMessage
+ (Class)session_message_mutableClassForType:(int64_t)type;
+ (int64_t)session_message_typeForMutableObject:(id)object;
+ (int64_t)session_message_typeForObject:(id)object;
- (FTAudioLimitExceeded)session_messageAsFTAudioLimitExceeded;
- (FTAudioPacket)session_messageAsFTAudioPacket;
- (FTClientSetupInfo)session_messageAsFTClientSetupInfo;
- (FTFinalBlazarResponse)session_messageAsFTFinalBlazarResponse;
- (FTFinishAudio)session_messageAsFTFinishAudio;
- (FTLanguageDetected)session_messageAsFTLanguageDetected;
- (FTMutableBlazarSpeechTranslationMessage)init;
- (FTRecognitionCandidate)session_messageAsFTRecognitionCandidate;
- (FTRecognitionProgress)session_messageAsFTRecognitionProgress;
- (FTRequestStatsResponse)session_messageAsFTRequestStatsResponse;
- (FTResetServerEndpointer)session_messageAsFTResetServerEndpointer;
- (FTServerEndpointFeatures)session_messageAsFTServerEndpointFeatures;
- (FTSetEndpointerState)session_messageAsFTSetEndpointerState;
- (FTSpeechTranslationAudioPacket)session_messageAsFTSpeechTranslationAudioPacket;
- (FTSpeechTranslationFinalRecognitionResponse)session_messageAsFTSpeechTranslationFinalRecognitionResponse;
- (FTSpeechTranslationMtResponse)session_messageAsFTSpeechTranslationMtResponse;
- (FTSpeechTranslationPartialRecognitionResponse)session_messageAsFTSpeechTranslationPartialRecognitionResponse;
- (FTSpeechTranslationServerEndpointFeatures)session_messageAsFTSpeechTranslationServerEndpointFeatures;
- (FTSpeechTranslationTextToSpeechResponse)session_messageAsFTSpeechTranslationTextToSpeechResponse;
- (FTStartSpeechTranslationLoggingRequest)session_messageAsFTStartSpeechTranslationLoggingRequest;
- (FTStartSpeechTranslationRequest)session_messageAsFTStartSpeechTranslationRequest;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)session_message_type;
- (void)setSession_message:(id)session_message;
- (void)setSession_messageAsFTAudioLimitExceeded:(id)exceeded;
- (void)setSession_messageAsFTAudioPacket:(id)packet;
- (void)setSession_messageAsFTClientSetupInfo:(id)info;
- (void)setSession_messageAsFTFinalBlazarResponse:(id)response;
- (void)setSession_messageAsFTFinishAudio:(id)audio;
- (void)setSession_messageAsFTLanguageDetected:(id)detected;
- (void)setSession_messageAsFTRecognitionCandidate:(id)candidate;
- (void)setSession_messageAsFTRecognitionProgress:(id)progress;
- (void)setSession_messageAsFTRequestStatsResponse:(id)response;
- (void)setSession_messageAsFTResetServerEndpointer:(id)endpointer;
- (void)setSession_messageAsFTServerEndpointFeatures:(id)features;
- (void)setSession_messageAsFTSetEndpointerState:(id)state;
- (void)setSession_messageAsFTSpeechTranslationAudioPacket:(id)packet;
- (void)setSession_messageAsFTSpeechTranslationFinalRecognitionResponse:(id)response;
- (void)setSession_messageAsFTSpeechTranslationMtResponse:(id)response;
- (void)setSession_messageAsFTSpeechTranslationPartialRecognitionResponse:(id)response;
- (void)setSession_messageAsFTSpeechTranslationServerEndpointFeatures:(id)features;
- (void)setSession_messageAsFTSpeechTranslationTextToSpeechResponse:(id)response;
- (void)setSession_messageAsFTStartSpeechTranslationLoggingRequest:(id)request;
- (void)setSession_messageAsFTStartSpeechTranslationRequest:(id)request;
- (void)setSession_message_type:(int64_t)session_message_type;
@end

@implementation FTMutableBlazarSpeechTranslationMessage

- (FTMutableBlazarSpeechTranslationMessage)init
{
  v6.receiver = self;
  v6.super_class = FTMutableBlazarSpeechTranslationMessage;
  v2 = [(FTMutableBlazarSpeechTranslationMessage *)&v6 init];
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

- (int64_t)session_message_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setSession_message_type:(int64_t)session_message_type
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:session_message_type];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (FTStartSpeechTranslationRequest)session_messageAsFTStartSpeechTranslationRequest
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTStartSpeechTranslationRequest:(id)request
{
  requestCopy = request;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:1];
  v4 = [requestCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTLanguageDetected)session_messageAsFTLanguageDetected
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTLanguageDetected:(id)detected
{
  detectedCopy = detected;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:2];
  v4 = [detectedCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTAudioPacket)session_messageAsFTAudioPacket
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTAudioPacket:(id)packet
{
  packetCopy = packet;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:3];
  v4 = [packetCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTSpeechTranslationAudioPacket)session_messageAsFTSpeechTranslationAudioPacket
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTSpeechTranslationAudioPacket:(id)packet
{
  packetCopy = packet;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:4];
  v4 = [packetCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTFinishAudio)session_messageAsFTFinishAudio
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTFinishAudio:(id)audio
{
  audioCopy = audio;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:5];
  v4 = [audioCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTSetEndpointerState)session_messageAsFTSetEndpointerState
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTSetEndpointerState:(id)state
{
  stateCopy = state;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:6];
  v4 = [stateCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTResetServerEndpointer)session_messageAsFTResetServerEndpointer
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTResetServerEndpointer:(id)endpointer
{
  endpointerCopy = endpointer;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:7];
  v4 = [endpointerCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTStartSpeechTranslationLoggingRequest)session_messageAsFTStartSpeechTranslationLoggingRequest
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTStartSpeechTranslationLoggingRequest:(id)request
{
  requestCopy = request;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:8];
  v4 = [requestCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTSpeechTranslationPartialRecognitionResponse)session_messageAsFTSpeechTranslationPartialRecognitionResponse
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 9)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTSpeechTranslationPartialRecognitionResponse:(id)response
{
  responseCopy = response;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:9];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTSpeechTranslationFinalRecognitionResponse)session_messageAsFTSpeechTranslationFinalRecognitionResponse
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTSpeechTranslationFinalRecognitionResponse:(id)response
{
  responseCopy = response;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:10];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTAudioLimitExceeded)session_messageAsFTAudioLimitExceeded
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 11)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTAudioLimitExceeded:(id)exceeded
{
  exceededCopy = exceeded;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:11];
  v4 = [exceededCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTSpeechTranslationMtResponse)session_messageAsFTSpeechTranslationMtResponse
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 12)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTSpeechTranslationMtResponse:(id)response
{
  responseCopy = response;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:12];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTSpeechTranslationTextToSpeechResponse)session_messageAsFTSpeechTranslationTextToSpeechResponse
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 13)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTSpeechTranslationTextToSpeechResponse:(id)response
{
  responseCopy = response;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:13];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTFinalBlazarResponse)session_messageAsFTFinalBlazarResponse
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 14)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTFinalBlazarResponse:(id)response
{
  responseCopy = response;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:14];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTRecognitionProgress)session_messageAsFTRecognitionProgress
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 15)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTRecognitionProgress:(id)progress
{
  progressCopy = progress;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:15];
  v4 = [progressCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTRecognitionCandidate)session_messageAsFTRecognitionCandidate
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 16)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTRecognitionCandidate:(id)candidate
{
  candidateCopy = candidate;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:16];
  v4 = [candidateCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTRequestStatsResponse)session_messageAsFTRequestStatsResponse
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 17)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTRequestStatsResponse:(id)response
{
  responseCopy = response;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:17];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTServerEndpointFeatures)session_messageAsFTServerEndpointFeatures
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 18)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTServerEndpointFeatures:(id)features
{
  featuresCopy = features;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:18];
  v4 = [featuresCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTClientSetupInfo)session_messageAsFTClientSetupInfo
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 19)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTClientSetupInfo:(id)info
{
  infoCopy = info;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:19];
  v4 = [infoCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTSpeechTranslationServerEndpointFeatures)session_messageAsFTSpeechTranslationServerEndpointFeatures
{
  if ([(FTMutableBlazarSpeechTranslationMessage *)self session_message_type]== 20)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTSpeechTranslationServerEndpointFeatures:(id)features
{
  featuresCopy = features;
  [(FTMutableBlazarSpeechTranslationMessage *)self setSession_message_type:20];
  v4 = [featuresCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (void)setSession_message:(id)session_message
{
  session_messageCopy = session_message;
  -[FTMutableBlazarSpeechTranslationMessage setSession_message_type:](self, "setSession_message_type:", [objc_opt_class() session_message_typeForObject:session_messageCopy]);
  v4 = [session_messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

+ (Class)session_message_mutableClassForType:(int64_t)type
{
  if ((type - 1) > 0x13)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B88A8[type - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

+ (int64_t)session_message_typeForMutableObject:(id)object
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

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 13;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 14;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 15;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 16;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 17;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 18;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 19;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)session_message_typeForObject:(id)object
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

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 12;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 13;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 14;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 15;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 16;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 17;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 18;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 19;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 20;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end