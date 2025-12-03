@interface FTMutableAsrTextNormalizationMessage
+ (Class)session_message_mutableClassForType:(int64_t)type;
+ (int64_t)session_message_typeForMutableObject:(id)object;
+ (int64_t)session_message_typeForObject:(id)object;
- (FTMutableAsrTextNormalizationMessage)init;
- (FTTextNormalizationRequest)session_messageAsFTTextNormalizationRequest;
- (FTTextNormalizationResponse)session_messageAsFTTextNormalizationResponse;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)session_message_type;
- (void)setSession_message:(id)session_message;
- (void)setSession_messageAsFTTextNormalizationRequest:(id)request;
- (void)setSession_messageAsFTTextNormalizationResponse:(id)response;
- (void)setSession_message_type:(int64_t)session_message_type;
@end

@implementation FTMutableAsrTextNormalizationMessage

- (FTMutableAsrTextNormalizationMessage)init
{
  v6.receiver = self;
  v6.super_class = FTMutableAsrTextNormalizationMessage;
  v2 = [(FTMutableAsrTextNormalizationMessage *)&v6 init];
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

- (FTTextNormalizationRequest)session_messageAsFTTextNormalizationRequest
{
  if ([(FTMutableAsrTextNormalizationMessage *)self session_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTTextNormalizationRequest:(id)request
{
  requestCopy = request;
  [(FTMutableAsrTextNormalizationMessage *)self setSession_message_type:1];
  v4 = [requestCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTTextNormalizationResponse)session_messageAsFTTextNormalizationResponse
{
  if ([(FTMutableAsrTextNormalizationMessage *)self session_message_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTTextNormalizationResponse:(id)response
{
  responseCopy = response;
  [(FTMutableAsrTextNormalizationMessage *)self setSession_message_type:2];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (void)setSession_message:(id)session_message
{
  session_messageCopy = session_message;
  -[FTMutableAsrTextNormalizationMessage setSession_message_type:](self, "setSession_message_type:", [objc_opt_class() session_message_typeForObject:session_messageCopy]);
  v4 = [session_messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

+ (Class)session_message_mutableClassForType:(int64_t)type
{
  if (type == 1)
  {
    v4 = off_2789B4938;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (type == 2)
  {
    v4 = off_2789B4940;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
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

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 2;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end