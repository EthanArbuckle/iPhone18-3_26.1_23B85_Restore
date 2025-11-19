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
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)content_type;
- (void)setContentAsQSSAudioPacket:(id)a3;
- (void)setContentAsQSSFinishAudio:(id)a3;
- (void)setContentAsQSSMultiUserStartSpeechRequest:(id)a3;
- (void)setContentAsQSSResetServerEndpointer:(id)a3;
- (void)setContentAsQSSSetAlternateRecognitionSausage:(id)a3;
- (void)setContentAsQSSSetEndpointerState:(id)a3;
- (void)setContentAsQSSSetRequestOrigin:(id)a3;
- (void)setContentAsQSSSetSpeechContext:(id)a3;
- (void)setContentAsQSSSetSpeechProfile:(id)a3;
- (void)setContentAsQSSUpdateAudioInfo:(id)a3;
- (void)setContent_type:(int64_t)a3;
@end

@implementation QSSMutableMultiUserStreamingRequest

- (void)setContentAsQSSSetAlternateRecognitionSausage:(id)a3
{
  v5 = a3;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:10];
  v4 = [v5 copy];
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

- (void)setContentAsQSSResetServerEndpointer:(id)a3
{
  v5 = a3;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:9];
  v4 = [v5 copy];
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

- (void)setContentAsQSSFinishAudio:(id)a3
{
  v5 = a3;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:8];
  v4 = [v5 copy];
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

- (void)setContentAsQSSAudioPacket:(id)a3
{
  v5 = a3;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:7];
  v4 = [v5 copy];
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

- (void)setContentAsQSSSetEndpointerState:(id)a3
{
  v5 = a3;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:6];
  v4 = [v5 copy];
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

- (void)setContentAsQSSSetSpeechProfile:(id)a3
{
  v5 = a3;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:5];
  v4 = [v5 copy];
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

- (void)setContentAsQSSSetSpeechContext:(id)a3
{
  v5 = a3;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:4];
  v4 = [v5 copy];
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

- (void)setContentAsQSSSetRequestOrigin:(id)a3
{
  v5 = a3;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:3];
  v4 = [v5 copy];
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

- (void)setContentAsQSSUpdateAudioInfo:(id)a3
{
  v5 = a3;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:2];
  v4 = [v5 copy];
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

- (void)setContentAsQSSMultiUserStartSpeechRequest:(id)a3
{
  v5 = a3;
  [(QSSMutableMultiUserStreamingRequest *)self setContent_type:1];
  v4 = [v5 copy];
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

- (QSSMutableMultiUserStreamingRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableMultiUserStreamingRequest;
  v2 = [(QSSMutableMultiUserStreamingRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end