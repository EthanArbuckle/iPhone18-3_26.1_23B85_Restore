@interface FTMutableAsrRecognitionMessage
+ (Class)session_message_mutableClassForType:(int64_t)a3;
+ (int64_t)session_message_typeForMutableObject:(id)a3;
+ (int64_t)session_message_typeForObject:(id)a3;
- (FTAudioLimitExceeded)session_messageAsFTAudioLimitExceeded;
- (FTAudioPacket)session_messageAsFTAudioPacket;
- (FTCheckForSpeechRequest)session_messageAsFTCheckForSpeechRequest;
- (FTCheckForSpeechResponse)session_messageAsFTCheckForSpeechResponse;
- (FTClientSetupInfo)session_messageAsFTClientSetupInfo;
- (FTEndPointCandidate)session_messageAsFTEndPointCandidate;
- (FTEndPointLikelihood)session_messageAsFTEndPointLikelihood;
- (FTFinalSpeechRecognitionResponse)session_messageAsFTFinalSpeechRecognitionResponse;
- (FTFinishAudio)session_messageAsFTFinishAudio;
- (FTMultiUserFinalSpeechRecognitionResponse)session_messageAsFTMultiUserFinalSpeechRecognitionResponse;
- (FTMultiUserRecognitionCandidate)session_messageAsFTMultiUserRecognitionCandidate;
- (FTMutableAsrRecognitionMessage)init;
- (FTPartialSpeechRecognitionResponse)session_messageAsFTPartialSpeechRecognitionResponse;
- (FTRecognitionCandidate)session_messageAsFTRecognitionCandidate;
- (FTRecognitionProgress)session_messageAsFTRecognitionProgress;
- (FTRequestStatsResponse)session_messageAsFTRequestStatsResponse;
- (FTResetServerEndpointer)session_messageAsFTResetServerEndpointer;
- (FTServerEndpointFeatures)session_messageAsFTServerEndpointFeatures;
- (FTSetAlternateRecognitionSausage)session_messageAsFTSetAlternateRecognitionSausage;
- (FTSetEndpointerState)session_messageAsFTSetEndpointerState;
- (FTSetRequestOrigin)session_messageAsFTSetRequestOrigin;
- (FTSetSpeechContext)session_messageAsFTSetSpeechContext;
- (FTSetSpeechProfile)session_messageAsFTSetSpeechProfile;
- (FTStartSpeechRequest)session_messageAsFTStartSpeechRequest;
- (FTUpdateAudioInfo)session_messageAsFTUpdateAudioInfo;
- (FTUpdatedAcousticProfile)session_messageAsFTUpdatedAcousticProfile;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)session_message_type;
- (void)setSession_message:(id)a3;
- (void)setSession_messageAsFTAudioLimitExceeded:(id)a3;
- (void)setSession_messageAsFTAudioPacket:(id)a3;
- (void)setSession_messageAsFTCheckForSpeechRequest:(id)a3;
- (void)setSession_messageAsFTCheckForSpeechResponse:(id)a3;
- (void)setSession_messageAsFTClientSetupInfo:(id)a3;
- (void)setSession_messageAsFTEndPointCandidate:(id)a3;
- (void)setSession_messageAsFTEndPointLikelihood:(id)a3;
- (void)setSession_messageAsFTFinalSpeechRecognitionResponse:(id)a3;
- (void)setSession_messageAsFTFinishAudio:(id)a3;
- (void)setSession_messageAsFTMultiUserFinalSpeechRecognitionResponse:(id)a3;
- (void)setSession_messageAsFTMultiUserRecognitionCandidate:(id)a3;
- (void)setSession_messageAsFTPartialSpeechRecognitionResponse:(id)a3;
- (void)setSession_messageAsFTRecognitionCandidate:(id)a3;
- (void)setSession_messageAsFTRecognitionProgress:(id)a3;
- (void)setSession_messageAsFTRequestStatsResponse:(id)a3;
- (void)setSession_messageAsFTResetServerEndpointer:(id)a3;
- (void)setSession_messageAsFTServerEndpointFeatures:(id)a3;
- (void)setSession_messageAsFTSetAlternateRecognitionSausage:(id)a3;
- (void)setSession_messageAsFTSetEndpointerState:(id)a3;
- (void)setSession_messageAsFTSetRequestOrigin:(id)a3;
- (void)setSession_messageAsFTSetSpeechContext:(id)a3;
- (void)setSession_messageAsFTSetSpeechProfile:(id)a3;
- (void)setSession_messageAsFTStartSpeechRequest:(id)a3;
- (void)setSession_messageAsFTUpdateAudioInfo:(id)a3;
- (void)setSession_messageAsFTUpdatedAcousticProfile:(id)a3;
- (void)setSession_message_type:(int64_t)a3;
@end

@implementation FTMutableAsrRecognitionMessage

- (FTMutableAsrRecognitionMessage)init
{
  v6.receiver = self;
  v6.super_class = FTMutableAsrRecognitionMessage;
  v2 = [(FTMutableAsrRecognitionMessage *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (int64_t)session_message_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message_type"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setSession_message_type:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (FTStartSpeechRequest)session_messageAsFTStartSpeechRequest
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTStartSpeechRequest:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:1];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTUpdateAudioInfo)session_messageAsFTUpdateAudioInfo
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTUpdateAudioInfo:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:2];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTSetRequestOrigin)session_messageAsFTSetRequestOrigin
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTSetRequestOrigin:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:3];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTSetSpeechContext)session_messageAsFTSetSpeechContext
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTSetSpeechContext:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:4];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTSetSpeechProfile)session_messageAsFTSetSpeechProfile
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTSetSpeechProfile:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:5];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTSetEndpointerState)session_messageAsFTSetEndpointerState
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTSetEndpointerState:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:6];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTAudioPacket)session_messageAsFTAudioPacket
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTAudioPacket:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:7];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTFinishAudio)session_messageAsFTFinishAudio
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTFinishAudio:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:8];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTResetServerEndpointer)session_messageAsFTResetServerEndpointer
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 9)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTResetServerEndpointer:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:9];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTCheckForSpeechRequest)session_messageAsFTCheckForSpeechRequest
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTCheckForSpeechRequest:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:10];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTSetAlternateRecognitionSausage)session_messageAsFTSetAlternateRecognitionSausage
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 11)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTSetAlternateRecognitionSausage:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:11];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTFinalSpeechRecognitionResponse)session_messageAsFTFinalSpeechRecognitionResponse
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 12)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTFinalSpeechRecognitionResponse:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:12];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTMultiUserFinalSpeechRecognitionResponse)session_messageAsFTMultiUserFinalSpeechRecognitionResponse
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 13)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTMultiUserFinalSpeechRecognitionResponse:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:13];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTPartialSpeechRecognitionResponse)session_messageAsFTPartialSpeechRecognitionResponse
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 14)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTPartialSpeechRecognitionResponse:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:14];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTUpdatedAcousticProfile)session_messageAsFTUpdatedAcousticProfile
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 15)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTUpdatedAcousticProfile:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:15];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTEndPointLikelihood)session_messageAsFTEndPointLikelihood
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 16)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTEndPointLikelihood:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:16];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTEndPointCandidate)session_messageAsFTEndPointCandidate
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 17)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTEndPointCandidate:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:17];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTRecognitionProgress)session_messageAsFTRecognitionProgress
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 18)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTRecognitionProgress:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:18];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTCheckForSpeechResponse)session_messageAsFTCheckForSpeechResponse
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 19)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTCheckForSpeechResponse:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:19];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTRecognitionCandidate)session_messageAsFTRecognitionCandidate
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 20)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTRecognitionCandidate:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:20];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTMultiUserRecognitionCandidate)session_messageAsFTMultiUserRecognitionCandidate
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 21)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTMultiUserRecognitionCandidate:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:21];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTRequestStatsResponse)session_messageAsFTRequestStatsResponse
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 22)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTRequestStatsResponse:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:22];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTServerEndpointFeatures)session_messageAsFTServerEndpointFeatures
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 23)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTServerEndpointFeatures:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:23];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTClientSetupInfo)session_messageAsFTClientSetupInfo
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 24)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTClientSetupInfo:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:24];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTAudioLimitExceeded)session_messageAsFTAudioLimitExceeded
{
  if ([(FTMutableAsrRecognitionMessage *)self session_message_type]== 25)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTAudioLimitExceeded:(id)a3
{
  v5 = a3;
  [(FTMutableAsrRecognitionMessage *)self setSession_message_type:25];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (void)setSession_message:(id)a3
{
  v5 = a3;
  -[FTMutableAsrRecognitionMessage setSession_message_type:](self, "setSession_message_type:", [objc_opt_class() session_message_typeForObject:v5]);
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

+ (Class)session_message_mutableClassForType:(int64_t)a3
{
  if ((a3 - 1) > 0x18)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B86D8[a3 - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

+ (int64_t)session_message_typeForMutableObject:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 1;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 2;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 3;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 4;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 5;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 6;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 7;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 8;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 9;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 10;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 11;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 12;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 13;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 14;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 15;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 16;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 17;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 18;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 19;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 20;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 21;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 22;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 23;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 24;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 25;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)session_message_typeForObject:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 1;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 2;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 3;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 4;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 5;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 6;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 7;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 8;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 9;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 10;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 11;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 12;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 13;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 14;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 15;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 16;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 17;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 18;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 19;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 20;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 21;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 22;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 23;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 24;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 25;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 25;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end