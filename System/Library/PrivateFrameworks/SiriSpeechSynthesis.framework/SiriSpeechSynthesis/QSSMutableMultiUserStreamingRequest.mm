@interface QSSMutableMultiUserStreamingRequest
- (QSSAudioPacket)contentAsQSSAudioPacket;
- (QSSFinishAudio)contentAsQSSFinishAudio;
- (QSSMultiUserStartSpeechRequest)contentAsQSSMultiUserStartSpeechRequest;
- (QSSMutableMultiUserStreamingRequest)init;
- (QSSResetServerEndpointer)contentAsQSSResetServerEndpointer;
- (QSSSetAlternateRecognitionSausage)contentAsQSSSetAlternateRecognitionSausage;
- (QSSSetEndpointerState)contentAsQSSSetEndpointerState;
- (QSSSetRequestOrigin)contentAsQSSSetRequestOrigin;
- (QSSSetSpeechContext)contentAsQSSSetSpeechContext;
- (QSSSetSpeechProfile)contentAsQSSSetSpeechProfile;
- (QSSUpdateAudioInfo)contentAsQSSUpdateAudioInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)content_type;
- (void)setContentAsQSSAudioPacket:(id)packet;
- (void)setContentAsQSSFinishAudio:(id)audio;
- (void)setContentAsQSSMultiUserStartSpeechRequest:(id)request;
- (void)setContentAsQSSResetServerEndpointer:(id)endpointer;
- (void)setContentAsQSSSetAlternateRecognitionSausage:(id)sausage;
- (void)setContentAsQSSSetEndpointerState:(id)state;
- (void)setContentAsQSSSetRequestOrigin:(id)origin;
- (void)setContentAsQSSSetSpeechContext:(id)context;
- (void)setContentAsQSSSetSpeechProfile:(id)profile;
- (void)setContentAsQSSUpdateAudioInfo:(id)info;
- (void)setContent_type:(int64_t)content_type;
@end

@implementation QSSMutableMultiUserStreamingRequest

- (void)setContentAsQSSSetAlternateRecognitionSausage:(id)sausage
{
  sausageCopy = sausage;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:10];
  v4 = [sausageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSetAlternateRecognitionSausage)contentAsQSSSetAlternateRecognitionSausage
{
  if ([(QSSMutableMultiUserStreamingRequest *)self content_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSResetServerEndpointer:(id)endpointer
{
  endpointerCopy = endpointer;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:9];
  v4 = [endpointerCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSResetServerEndpointer)contentAsQSSResetServerEndpointer
{
  if ([(QSSMutableMultiUserStreamingRequest *)self content_type]== 9)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSFinishAudio:(id)audio
{
  audioCopy = audio;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:8];
  v4 = [audioCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSFinishAudio)contentAsQSSFinishAudio
{
  if ([(QSSMutableMultiUserStreamingRequest *)self content_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSAudioPacket:(id)packet
{
  packetCopy = packet;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:7];
  v4 = [packetCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSAudioPacket)contentAsQSSAudioPacket
{
  if ([(QSSMutableMultiUserStreamingRequest *)self content_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSSetEndpointerState:(id)state
{
  stateCopy = state;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:6];
  v4 = [stateCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSetEndpointerState)contentAsQSSSetEndpointerState
{
  if ([(QSSMutableMultiUserStreamingRequest *)self content_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSSetSpeechProfile:(id)profile
{
  profileCopy = profile;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:5];
  v4 = [profileCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSetSpeechProfile)contentAsQSSSetSpeechProfile
{
  if ([(QSSMutableMultiUserStreamingRequest *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSSetSpeechContext:(id)context
{
  contextCopy = context;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:4];
  v4 = [contextCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSetSpeechContext)contentAsQSSSetSpeechContext
{
  if ([(QSSMutableMultiUserStreamingRequest *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSSetRequestOrigin:(id)origin
{
  originCopy = origin;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:3];
  v4 = [originCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSetRequestOrigin)contentAsQSSSetRequestOrigin
{
  if ([(QSSMutableMultiUserStreamingRequest *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSUpdateAudioInfo:(id)info
{
  infoCopy = info;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:2];
  v4 = [infoCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSUpdateAudioInfo)contentAsQSSUpdateAudioInfo
{
  if ([(QSSMutableMultiUserStreamingRequest *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSMultiUserStartSpeechRequest:(id)request
{
  requestCopy = request;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:1];
  v4 = [requestCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSMultiUserStartSpeechRequest)contentAsQSSMultiUserStartSpeechRequest
{
  if ([(QSSMutableMultiUserStreamingRequest *)self content_type]== 1)
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

- (QSSMutableMultiUserStreamingRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableMultiUserStreamingRequest;
  v2 = [(QSSMutableMultiUserStreamingRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end