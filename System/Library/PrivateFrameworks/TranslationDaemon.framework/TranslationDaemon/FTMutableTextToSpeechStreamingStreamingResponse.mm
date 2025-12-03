@interface FTMutableTextToSpeechStreamingStreamingResponse
+ (Class)content_mutableClassForType:(int64_t)type;
+ (int64_t)content_typeForMutableObject:(id)object;
+ (int64_t)content_typeForObject:(id)object;
- (FTBeginTextToSpeechStreamingResponse)contentAsFTBeginTextToSpeechStreamingResponse;
- (FTFinalTextToSpeechStreamingResponse)contentAsFTFinalTextToSpeechStreamingResponse;
- (FTMutableTextToSpeechStreamingStreamingResponse)init;
- (FTPartialTextToSpeechStreamingResponse)contentAsFTPartialTextToSpeechStreamingResponse;
- (FTQssAckResponse)contentAsFTQssAckResponse;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)content_type;
- (void)setContent:(id)content;
- (void)setContentAsFTBeginTextToSpeechStreamingResponse:(id)response;
- (void)setContentAsFTFinalTextToSpeechStreamingResponse:(id)response;
- (void)setContentAsFTPartialTextToSpeechStreamingResponse:(id)response;
- (void)setContentAsFTQssAckResponse:(id)response;
- (void)setContent_type:(int64_t)content_type;
@end

@implementation FTMutableTextToSpeechStreamingStreamingResponse

- (FTMutableTextToSpeechStreamingStreamingResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechStreamingStreamingResponse;
  v2 = [(FTMutableTextToSpeechStreamingStreamingResponse *)&v6 init];
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

- (FTQssAckResponse)contentAsFTQssAckResponse
{
  if ([(FTMutableTextToSpeechStreamingStreamingResponse *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTQssAckResponse:(id)response
{
  responseCopy = response;
  [(FTMutableTextToSpeechStreamingStreamingResponse *)self setContent_type:1];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTBeginTextToSpeechStreamingResponse)contentAsFTBeginTextToSpeechStreamingResponse
{
  if ([(FTMutableTextToSpeechStreamingStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTBeginTextToSpeechStreamingResponse:(id)response
{
  responseCopy = response;
  [(FTMutableTextToSpeechStreamingStreamingResponse *)self setContent_type:2];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTPartialTextToSpeechStreamingResponse)contentAsFTPartialTextToSpeechStreamingResponse
{
  if ([(FTMutableTextToSpeechStreamingStreamingResponse *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTPartialTextToSpeechStreamingResponse:(id)response
{
  responseCopy = response;
  [(FTMutableTextToSpeechStreamingStreamingResponse *)self setContent_type:3];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (FTFinalTextToSpeechStreamingResponse)contentAsFTFinalTextToSpeechStreamingResponse
{
  if ([(FTMutableTextToSpeechStreamingStreamingResponse *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTFinalTextToSpeechStreamingResponse:(id)response
{
  responseCopy = response;
  [(FTMutableTextToSpeechStreamingStreamingResponse *)self setContent_type:4];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (void)setContent:(id)content
{
  contentCopy = content;
  -[FTMutableTextToSpeechStreamingStreamingResponse setContent_type:](self, "setContent_type:", [objc_opt_class() content_typeForObject:contentCopy]);
  v4 = [contentCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

+ (Class)content_mutableClassForType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_2789B90F0[type - 1];
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

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 4;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end