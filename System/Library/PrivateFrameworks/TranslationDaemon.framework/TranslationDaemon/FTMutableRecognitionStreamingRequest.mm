@interface FTMutableRecognitionStreamingRequest
+ (Class)content_mutableClassForType:(int64_t)type;
+ (int64_t)content_typeForMutableObject:(id)object;
+ (int64_t)content_typeForObject:(id)object;
- (FTAudioPacket)contentAsFTAudioPacket;
- (FTCheckForSpeechRequest)contentAsFTCheckForSpeechRequest;
- (FTFinishAudio)contentAsFTFinishAudio;
- (FTMutableRecognitionStreamingRequest)init;
- (FTResetServerEndpointer)contentAsFTResetServerEndpointer;
- (FTSetAlternateRecognitionSausage)contentAsFTSetAlternateRecognitionSausage;
- (FTSetEndpointerState)contentAsFTSetEndpointerState;
- (FTSetRequestOrigin)contentAsFTSetRequestOrigin;
- (FTSetSpeechContext)contentAsFTSetSpeechContext;
- (FTSetSpeechProfile)contentAsFTSetSpeechProfile;
- (FTStartSpeechRequest)contentAsFTStartSpeechRequest;
- (FTUpdateAudioInfo)contentAsFTUpdateAudioInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)content_type;
- (void)setContent:(id)content;
- (void)setContentAsFTAudioPacket:(id)packet;
- (void)setContentAsFTCheckForSpeechRequest:(id)request;
- (void)setContentAsFTFinishAudio:(id)audio;
- (void)setContentAsFTResetServerEndpointer:(id)endpointer;
- (void)setContentAsFTSetAlternateRecognitionSausage:(id)sausage;
- (void)setContentAsFTSetEndpointerState:(id)state;
- (void)setContentAsFTSetRequestOrigin:(id)origin;
- (void)setContentAsFTSetSpeechContext:(id)context;
- (void)setContentAsFTSetSpeechProfile:(id)profile;
- (void)setContentAsFTStartSpeechRequest:(id)request;
- (void)setContentAsFTUpdateAudioInfo:(id)info;
- (void)setContent_type:(int64_t)content_type;
@end

@implementation FTMutableRecognitionStreamingRequest

- (FTMutableRecognitionStreamingRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableRecognitionStreamingRequest;
  v2 = [(FTMutableRecognitionStreamingRequest *)&v6 init];
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

- (FTStartSpeechRequest)contentAsFTStartSpeechRequest
{
  if ([(FTMutableRecognitionStreamingRequest *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTStartSpeechRequest:(id)request
{
  requestCopy = request;
  [(FTMutableRecognitionStreamingRequest *)self setContent_type:1];
  v4 = [requestCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTUpdateAudioInfo)contentAsFTUpdateAudioInfo
{
  if ([(FTMutableRecognitionStreamingRequest *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTUpdateAudioInfo:(id)info
{
  infoCopy = info;
  [(FTMutableRecognitionStreamingRequest *)self setContent_type:2];
  v4 = [infoCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTSetRequestOrigin)contentAsFTSetRequestOrigin
{
  if ([(FTMutableRecognitionStreamingRequest *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTSetRequestOrigin:(id)origin
{
  originCopy = origin;
  [(FTMutableRecognitionStreamingRequest *)self setContent_type:3];
  v4 = [originCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTSetSpeechContext)contentAsFTSetSpeechContext
{
  if ([(FTMutableRecognitionStreamingRequest *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTSetSpeechContext:(id)context
{
  contextCopy = context;
  [(FTMutableRecognitionStreamingRequest *)self setContent_type:4];
  v4 = [contextCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTSetSpeechProfile)contentAsFTSetSpeechProfile
{
  if ([(FTMutableRecognitionStreamingRequest *)self content_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTSetSpeechProfile:(id)profile
{
  profileCopy = profile;
  [(FTMutableRecognitionStreamingRequest *)self setContent_type:5];
  v4 = [profileCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTSetEndpointerState)contentAsFTSetEndpointerState
{
  if ([(FTMutableRecognitionStreamingRequest *)self content_type]== 6)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTSetEndpointerState:(id)state
{
  stateCopy = state;
  [(FTMutableRecognitionStreamingRequest *)self setContent_type:6];
  v4 = [stateCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTAudioPacket)contentAsFTAudioPacket
{
  if ([(FTMutableRecognitionStreamingRequest *)self content_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTAudioPacket:(id)packet
{
  packetCopy = packet;
  [(FTMutableRecognitionStreamingRequest *)self setContent_type:7];
  v4 = [packetCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTFinishAudio)contentAsFTFinishAudio
{
  if ([(FTMutableRecognitionStreamingRequest *)self content_type]== 8)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTFinishAudio:(id)audio
{
  audioCopy = audio;
  [(FTMutableRecognitionStreamingRequest *)self setContent_type:8];
  v4 = [audioCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTResetServerEndpointer)contentAsFTResetServerEndpointer
{
  if ([(FTMutableRecognitionStreamingRequest *)self content_type]== 9)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTResetServerEndpointer:(id)endpointer
{
  endpointerCopy = endpointer;
  [(FTMutableRecognitionStreamingRequest *)self setContent_type:9];
  v4 = [endpointerCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTCheckForSpeechRequest)contentAsFTCheckForSpeechRequest
{
  if ([(FTMutableRecognitionStreamingRequest *)self content_type]== 10)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTCheckForSpeechRequest:(id)request
{
  requestCopy = request;
  [(FTMutableRecognitionStreamingRequest *)self setContent_type:10];
  v4 = [requestCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTSetAlternateRecognitionSausage)contentAsFTSetAlternateRecognitionSausage
{
  if ([(FTMutableRecognitionStreamingRequest *)self content_type]== 11)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTSetAlternateRecognitionSausage:(id)sausage
{
  sausageCopy = sausage;
  [(FTMutableRecognitionStreamingRequest *)self setContent_type:11];
  v4 = [sausageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (void)setContent:(id)content
{
  contentCopy = content;
  -[FTMutableRecognitionStreamingRequest setContent_type:](self, "setContent_type:", [objc_opt_class() content_typeForObject:contentCopy]);
  v4 = [contentCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

+ (Class)content_mutableClassForType:(int64_t)type
{
  if ((type - 1) > 0xA)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8E30[type - 1];
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

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 11;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end