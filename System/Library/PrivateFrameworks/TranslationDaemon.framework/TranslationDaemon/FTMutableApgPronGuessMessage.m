@interface FTMutableApgPronGuessMessage
+ (Class)session_message_mutableClassForType:(int64_t)a3;
+ (int64_t)session_message_typeForMutableObject:(id)a3;
+ (int64_t)session_message_typeForObject:(id)a3;
- (FTAudioPacket)session_messageAsFTAudioPacket;
- (FTCancelRequest)session_messageAsFTCancelRequest;
- (FTFinishAudio)session_messageAsFTFinishAudio;
- (FTMutableApgPronGuessMessage)init;
- (FTPronGuessResponse)session_messageAsFTPronGuessResponse;
- (FTStartPronGuessRequest)session_messageAsFTStartPronGuessRequest;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)session_message_type;
- (void)setSession_message:(id)a3;
- (void)setSession_messageAsFTAudioPacket:(id)a3;
- (void)setSession_messageAsFTCancelRequest:(id)a3;
- (void)setSession_messageAsFTFinishAudio:(id)a3;
- (void)setSession_messageAsFTPronGuessResponse:(id)a3;
- (void)setSession_messageAsFTStartPronGuessRequest:(id)a3;
- (void)setSession_message_type:(int64_t)a3;
@end

@implementation FTMutableApgPronGuessMessage

- (FTMutableApgPronGuessMessage)init
{
  v6.receiver = self;
  v6.super_class = FTMutableApgPronGuessMessage;
  v2 = [(FTMutableApgPronGuessMessage *)&v6 init];
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

- (FTStartPronGuessRequest)session_messageAsFTStartPronGuessRequest
{
  if ([(FTMutableApgPronGuessMessage *)self session_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTStartPronGuessRequest:(id)a3
{
  v5 = a3;
  [(FTMutableApgPronGuessMessage *)self setSession_message_type:1];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTAudioPacket)session_messageAsFTAudioPacket
{
  if ([(FTMutableApgPronGuessMessage *)self session_message_type]== 2)
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
  [(FTMutableApgPronGuessMessage *)self setSession_message_type:2];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTFinishAudio)session_messageAsFTFinishAudio
{
  if ([(FTMutableApgPronGuessMessage *)self session_message_type]== 3)
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
  [(FTMutableApgPronGuessMessage *)self setSession_message_type:3];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTCancelRequest)session_messageAsFTCancelRequest
{
  if ([(FTMutableApgPronGuessMessage *)self session_message_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTCancelRequest:(id)a3
{
  v5 = a3;
  [(FTMutableApgPronGuessMessage *)self setSession_message_type:4];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTPronGuessResponse)session_messageAsFTPronGuessResponse
{
  if ([(FTMutableApgPronGuessMessage *)self session_message_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTPronGuessResponse:(id)a3
{
  v5 = a3;
  [(FTMutableApgPronGuessMessage *)self setSession_message_type:5];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (void)setSession_message:(id)a3
{
  v5 = a3;
  -[FTMutableApgPronGuessMessage setSession_message_type:](self, "setSession_message_type:", [objc_opt_class() session_message_typeForObject:v5]);
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

+ (Class)session_message_mutableClassForType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B86B0[a3 - 1];
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

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 5;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end