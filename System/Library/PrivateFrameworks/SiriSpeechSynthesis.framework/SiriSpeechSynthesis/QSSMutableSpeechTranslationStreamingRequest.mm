@interface QSSMutableSpeechTranslationStreamingRequest
- (QSSAudioPacket)contentAsQSSAudioPacket;
- (QSSFinishAudio)contentAsQSSFinishAudio;
- (QSSLanguageDetected)contentAsQSSLanguageDetected;
- (QSSMutableSpeechTranslationStreamingRequest)init;
- (QSSResetServerEndpointer)contentAsQSSResetServerEndpointer;
- (QSSSetEndpointerState)contentAsQSSSetEndpointerState;
- (QSSSpeechTranslationAudioPacket)contentAsQSSSpeechTranslationAudioPacket;
- (QSSStartSpeechTranslationLoggingRequest)contentAsQSSStartSpeechTranslationLoggingRequest;
- (QSSStartSpeechTranslationRequest)contentAsQSSStartSpeechTranslationRequest;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)content_type;
- (void)setContentAsQSSAudioPacket:(id)packet;
- (void)setContentAsQSSFinishAudio:(id)audio;
- (void)setContentAsQSSLanguageDetected:(id)detected;
- (void)setContentAsQSSResetServerEndpointer:(id)endpointer;
- (void)setContentAsQSSSetEndpointerState:(id)state;
- (void)setContentAsQSSSpeechTranslationAudioPacket:(id)packet;
- (void)setContentAsQSSStartSpeechTranslationLoggingRequest:(id)request;
- (void)setContentAsQSSStartSpeechTranslationRequest:(id)request;
- (void)setContent_type:(int64_t)content_type;
@end

@implementation QSSMutableSpeechTranslationStreamingRequest

- (void)setContentAsQSSStartSpeechTranslationLoggingRequest:(id)request
{
  requestCopy = request;
  [(QSSMutableSpeechTranslationStreamingRequest *)self setContent_type:8];
  v4 = [requestCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSStartSpeechTranslationLoggingRequest)contentAsQSSStartSpeechTranslationLoggingRequest
{
  if ([(QSSMutableSpeechTranslationStreamingRequest *)self content_type]== 8)
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
  [(QSSMutableSpeechTranslationStreamingRequest *)self setContent_type:7];
  v4 = [endpointerCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSResetServerEndpointer)contentAsQSSResetServerEndpointer
{
  if ([(QSSMutableSpeechTranslationStreamingRequest *)self content_type]== 7)
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
  [(QSSMutableSpeechTranslationStreamingRequest *)self setContent_type:6];
  v4 = [stateCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSetEndpointerState)contentAsQSSSetEndpointerState
{
  if ([(QSSMutableSpeechTranslationStreamingRequest *)self content_type]== 6)
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
  [(QSSMutableSpeechTranslationStreamingRequest *)self setContent_type:5];
  v4 = [audioCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSFinishAudio)contentAsQSSFinishAudio
{
  if ([(QSSMutableSpeechTranslationStreamingRequest *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSSpeechTranslationAudioPacket:(id)packet
{
  packetCopy = packet;
  [(QSSMutableSpeechTranslationStreamingRequest *)self setContent_type:4];
  v4 = [packetCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSSpeechTranslationAudioPacket)contentAsQSSSpeechTranslationAudioPacket
{
  if ([(QSSMutableSpeechTranslationStreamingRequest *)self content_type]== 4)
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
  [(QSSMutableSpeechTranslationStreamingRequest *)self setContent_type:3];
  v4 = [packetCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSAudioPacket)contentAsQSSAudioPacket
{
  if ([(QSSMutableSpeechTranslationStreamingRequest *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSLanguageDetected:(id)detected
{
  detectedCopy = detected;
  [(QSSMutableSpeechTranslationStreamingRequest *)self setContent_type:2];
  v4 = [detectedCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSLanguageDetected)contentAsQSSLanguageDetected
{
  if ([(QSSMutableSpeechTranslationStreamingRequest *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSStartSpeechTranslationRequest:(id)request
{
  requestCopy = request;
  [(QSSMutableSpeechTranslationStreamingRequest *)self setContent_type:1];
  v4 = [requestCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSStartSpeechTranslationRequest)contentAsQSSStartSpeechTranslationRequest
{
  if ([(QSSMutableSpeechTranslationStreamingRequest *)self content_type]== 1)
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

- (QSSMutableSpeechTranslationStreamingRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableSpeechTranslationStreamingRequest;
  v2 = [(QSSMutableSpeechTranslationStreamingRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end