@interface QSSMutableMultilingualStreamingRequest
- (QSSAudioPacket)contentAsQSSAudioPacket;
- (QSSFinishAudio)contentAsQSSFinishAudio;
- (QSSLanguageDetected)contentAsQSSLanguageDetected;
- (QSSMutableMultilingualStreamingRequest)init;
- (QSSSetRequestOrigin)contentAsQSSSetRequestOrigin;
- (QSSSetSpeechContext)contentAsQSSSetSpeechContext;
- (QSSSetSpeechProfile)contentAsQSSSetSpeechProfile;
- (QSSStartMultilingualSpeechRequest)contentAsQSSStartMultilingualSpeechRequest;
- (QSSUpdateAudioInfo)contentAsQSSUpdateAudioInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)content_type;
- (void)setContentAsQSSAudioPacket:(id)a3;
- (void)setContentAsQSSFinishAudio:(id)a3;
- (void)setContentAsQSSLanguageDetected:(id)a3;
- (void)setContentAsQSSSetRequestOrigin:(id)a3;
- (void)setContentAsQSSSetSpeechContext:(id)a3;
- (void)setContentAsQSSSetSpeechProfile:(id)a3;
- (void)setContentAsQSSStartMultilingualSpeechRequest:(id)a3;
- (void)setContentAsQSSUpdateAudioInfo:(id)a3;
- (void)setContent_type:(int64_t)a3;
@end

@implementation QSSMutableMultilingualStreamingRequest

- (void)setContentAsQSSLanguageDetected:(id)a3
{
  v5 = a3;
  [(QSSMutableMultilingualStreamingRequest *)self setContent_type:8];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSLanguageDetected)contentAsQSSLanguageDetected
{
  if ([(QSSMutableMultilingualStreamingRequest *)self content_type]== 8)
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
  [(QSSMutableMultilingualStreamingRequest *)self setContent_type:7];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSFinishAudio)contentAsQSSFinishAudio
{
  if ([(QSSMutableMultilingualStreamingRequest *)self content_type]== 7)
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
  [(QSSMutableMultilingualStreamingRequest *)self setContent_type:6];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSAudioPacket)contentAsQSSAudioPacket
{
  if ([(QSSMutableMultilingualStreamingRequest *)self content_type]== 6)
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
  [(QSSMutableMultilingualStreamingRequest *)self setContent_type:5];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSetSpeechProfile)contentAsQSSSetSpeechProfile
{
  if ([(QSSMutableMultilingualStreamingRequest *)self content_type]== 5)
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
  [(QSSMutableMultilingualStreamingRequest *)self setContent_type:4];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSetSpeechContext)contentAsQSSSetSpeechContext
{
  if ([(QSSMutableMultilingualStreamingRequest *)self content_type]== 4)
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
  [(QSSMutableMultilingualStreamingRequest *)self setContent_type:3];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSetRequestOrigin)contentAsQSSSetRequestOrigin
{
  if ([(QSSMutableMultilingualStreamingRequest *)self content_type]== 3)
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
  [(QSSMutableMultilingualStreamingRequest *)self setContent_type:2];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSUpdateAudioInfo)contentAsQSSUpdateAudioInfo
{
  if ([(QSSMutableMultilingualStreamingRequest *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSStartMultilingualSpeechRequest:(id)a3
{
  v5 = a3;
  [(QSSMutableMultilingualStreamingRequest *)self setContent_type:1];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSStartMultilingualSpeechRequest)contentAsQSSStartMultilingualSpeechRequest
{
  if ([(QSSMutableMultilingualStreamingRequest *)self content_type]== 1)
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

- (QSSMutableMultilingualStreamingRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableMultilingualStreamingRequest;
  v2 = [(QSSMutableMultilingualStreamingRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end