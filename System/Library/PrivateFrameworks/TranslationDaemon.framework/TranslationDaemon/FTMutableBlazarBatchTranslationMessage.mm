@interface FTMutableBlazarBatchTranslationMessage
+ (Class)session_message_mutableClassForType:(int64_t)type;
+ (int64_t)session_message_typeForMutableObject:(id)object;
+ (int64_t)session_message_typeForObject:(id)object;
- (FTBatchTranslationFeedbackRequest)session_messageAsFTBatchTranslationFeedbackRequest;
- (FTBatchTranslationLoggingRequest)session_messageAsFTBatchTranslationLoggingRequest;
- (FTBatchTranslationRequest)session_messageAsFTBatchTranslationRequest;
- (FTBatchTranslationResponse)session_messageAsFTBatchTranslationResponse;
- (FTFinalBlazarResponse)session_messageAsFTFinalBlazarResponse;
- (FTMutableBlazarBatchTranslationMessage)init;
- (FTTranslationSupportedLanguagesRequest)session_messageAsFTTranslationSupportedLanguagesRequest;
- (FTTranslationSupportedLanguagesResponse)session_messageAsFTTranslationSupportedLanguagesResponse;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)session_message_type;
- (void)setSession_message:(id)session_message;
- (void)setSession_messageAsFTBatchTranslationFeedbackRequest:(id)request;
- (void)setSession_messageAsFTBatchTranslationLoggingRequest:(id)request;
- (void)setSession_messageAsFTBatchTranslationRequest:(id)request;
- (void)setSession_messageAsFTBatchTranslationResponse:(id)response;
- (void)setSession_messageAsFTFinalBlazarResponse:(id)response;
- (void)setSession_messageAsFTTranslationSupportedLanguagesRequest:(id)request;
- (void)setSession_messageAsFTTranslationSupportedLanguagesResponse:(id)response;
- (void)setSession_message_type:(int64_t)session_message_type;
@end

@implementation FTMutableBlazarBatchTranslationMessage

- (FTMutableBlazarBatchTranslationMessage)init
{
  v6.receiver = self;
  v6.super_class = FTMutableBlazarBatchTranslationMessage;
  v2 = [(FTMutableBlazarBatchTranslationMessage *)&v6 init];
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

- (FTBatchTranslationRequest)session_messageAsFTBatchTranslationRequest
{
  if ([(FTMutableBlazarBatchTranslationMessage *)self session_message_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTBatchTranslationRequest:(id)request
{
  requestCopy = request;
  [(FTMutableBlazarBatchTranslationMessage *)self setSession_message_type:1];
  v4 = [requestCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTBatchTranslationFeedbackRequest)session_messageAsFTBatchTranslationFeedbackRequest
{
  if ([(FTMutableBlazarBatchTranslationMessage *)self session_message_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTBatchTranslationFeedbackRequest:(id)request
{
  requestCopy = request;
  [(FTMutableBlazarBatchTranslationMessage *)self setSession_message_type:2];
  v4 = [requestCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTBatchTranslationLoggingRequest)session_messageAsFTBatchTranslationLoggingRequest
{
  if ([(FTMutableBlazarBatchTranslationMessage *)self session_message_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTBatchTranslationLoggingRequest:(id)request
{
  requestCopy = request;
  [(FTMutableBlazarBatchTranslationMessage *)self setSession_message_type:3];
  v4 = [requestCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTTranslationSupportedLanguagesRequest)session_messageAsFTTranslationSupportedLanguagesRequest
{
  if ([(FTMutableBlazarBatchTranslationMessage *)self session_message_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTTranslationSupportedLanguagesRequest:(id)request
{
  requestCopy = request;
  [(FTMutableBlazarBatchTranslationMessage *)self setSession_message_type:4];
  v4 = [requestCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTBatchTranslationResponse)session_messageAsFTBatchTranslationResponse
{
  if ([(FTMutableBlazarBatchTranslationMessage *)self session_message_type]== 5)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTBatchTranslationResponse:(id)response
{
  responseCopy = response;
  [(FTMutableBlazarBatchTranslationMessage *)self setSession_message_type:5];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTFinalBlazarResponse)session_messageAsFTFinalBlazarResponse
{
  if ([(FTMutableBlazarBatchTranslationMessage *)self session_message_type]== 6)
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
  [(FTMutableBlazarBatchTranslationMessage *)self setSession_message_type:6];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (FTTranslationSupportedLanguagesResponse)session_messageAsFTTranslationSupportedLanguagesResponse
{
  if ([(FTMutableBlazarBatchTranslationMessage *)self session_message_type]== 7)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"session_message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSession_messageAsFTTranslationSupportedLanguagesResponse:(id)response
{
  responseCopy = response;
  [(FTMutableBlazarBatchTranslationMessage *)self setSession_message_type:7];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

- (void)setSession_message:(id)session_message
{
  session_messageCopy = session_message;
  -[FTMutableBlazarBatchTranslationMessage setSession_message_type:](self, "setSession_message_type:", [objc_opt_class() session_message_typeForObject:session_messageCopy]);
  v4 = [session_messageCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"session_message"];
}

+ (Class)session_message_mutableClassForType:(int64_t)type
{
  if ((type - 1) > 6)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B8948[type - 1];
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

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 7;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end