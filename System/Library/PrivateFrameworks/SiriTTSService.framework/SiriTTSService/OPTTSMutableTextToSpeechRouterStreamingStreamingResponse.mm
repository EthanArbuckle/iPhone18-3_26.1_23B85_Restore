@interface OPTTSMutableTextToSpeechRouterStreamingStreamingResponse
+ (Class)content_mutableClassForType:(int64_t)type;
+ (int64_t)content_typeForMutableObject:(id)object;
+ (int64_t)content_typeForObject:(id)object;
- (OPTTSBeginTextToSpeechStreamingResponse)contentAsOPTTSBeginTextToSpeechStreamingResponse;
- (OPTTSFinalTextToSpeechStreamingResponse)contentAsOPTTSFinalTextToSpeechStreamingResponse;
- (OPTTSMutableTextToSpeechRouterStreamingStreamingResponse)init;
- (OPTTSPartialTextToSpeechStreamingResponse)contentAsOPTTSPartialTextToSpeechStreamingResponse;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)content_type;
- (void)setContent:(id)content;
- (void)setContentAsOPTTSBeginTextToSpeechStreamingResponse:(id)response;
- (void)setContentAsOPTTSFinalTextToSpeechStreamingResponse:(id)response;
- (void)setContentAsOPTTSPartialTextToSpeechStreamingResponse:(id)response;
- (void)setContent_type:(int64_t)content_type;
@end

@implementation OPTTSMutableTextToSpeechRouterStreamingStreamingResponse

- (void)setContent:(id)content
{
  contentCopy = content;
  -[OPTTSMutableTextToSpeechRouterStreamingStreamingResponse setContent_type:](self, "setContent_type:", [objc_opt_class() content_typeForObject:contentCopy]);
  v4 = [contentCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (void)setContentAsOPTTSFinalTextToSpeechStreamingResponse:(id)response
{
  responseCopy = response;
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self setContent_type:3];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (OPTTSFinalTextToSpeechStreamingResponse)contentAsOPTTSFinalTextToSpeechStreamingResponse
{
  if ([(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsOPTTSPartialTextToSpeechStreamingResponse:(id)response
{
  responseCopy = response;
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self setContent_type:2];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (OPTTSPartialTextToSpeechStreamingResponse)contentAsOPTTSPartialTextToSpeechStreamingResponse
{
  if ([(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsOPTTSBeginTextToSpeechStreamingResponse:(id)response
{
  responseCopy = response;
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self setContent_type:1];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (OPTTSBeginTextToSpeechStreamingResponse)contentAsOPTTSBeginTextToSpeechStreamingResponse
{
  if ([(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self content_type]== 1)
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
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:content_type];
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

- (OPTTSMutableTextToSpeechRouterStreamingStreamingResponse)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechRouterStreamingStreamingResponse;
  v2 = [(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
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

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 3;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (Class)content_mutableClassForType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_1E7AF3848[type - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

@end