@interface OPTTSMutableTextToSpeechRouterStreamingStreamingRequest
+ (Class)content_mutableClassForType:(int64_t)type;
+ (int64_t)content_typeForMutableObject:(id)object;
+ (int64_t)content_typeForObject:(id)object;
- (OPTTSMutableTextToSpeechRouterStreamingStreamingRequest)init;
- (OPTTSStartTextToSpeechStreamingRequest)contentAsOPTTSStartTextToSpeechStreamingRequest;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)content_type;
- (void)setContent:(id)content;
- (void)setContentAsOPTTSStartTextToSpeechStreamingRequest:(id)request;
- (void)setContent_type:(int64_t)content_type;
@end

@implementation OPTTSMutableTextToSpeechRouterStreamingStreamingRequest

- (void)setContent:(id)content
{
  contentCopy = content;
  -[OPTTSMutableTextToSpeechRouterStreamingStreamingRequest setContent_type:](self, "setContent_type:", [objc_opt_class() content_typeForObject:contentCopy]);
  v4 = [contentCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (void)setContentAsOPTTSStartTextToSpeechStreamingRequest:(id)request
{
  requestCopy = request;
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingRequest *)self setContent_type:1];
  v4 = [requestCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (OPTTSStartTextToSpeechStreamingRequest)contentAsOPTTSStartTextToSpeechStreamingRequest
{
  if ([(OPTTSMutableTextToSpeechRouterStreamingStreamingRequest *)self content_type]== 1)
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

- (OPTTSMutableTextToSpeechRouterStreamingStreamingRequest)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechRouterStreamingStreamingRequest;
  v2 = [(OPTTSMutableTextToSpeechRouterStreamingStreamingRequest *)&v6 init];
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
  if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 1;
  }

  else
  {
    v4 = [objectCopy isMemberOfClass:objc_opt_class()];
  }

  return v4;
}

+ (int64_t)content_typeForMutableObject:(id)object
{
  objectCopy = object;
  v4 = [objectCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

+ (Class)content_mutableClassForType:(int64_t)type
{
  if (type == 1)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end