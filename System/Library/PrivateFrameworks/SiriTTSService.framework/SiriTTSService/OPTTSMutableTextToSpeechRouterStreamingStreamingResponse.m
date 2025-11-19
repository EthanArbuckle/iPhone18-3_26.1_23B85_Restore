@interface OPTTSMutableTextToSpeechRouterStreamingStreamingResponse
+ (Class)content_mutableClassForType:(int64_t)a3;
+ (int64_t)content_typeForMutableObject:(id)a3;
+ (int64_t)content_typeForObject:(id)a3;
- (OPTTSBeginTextToSpeechStreamingResponse)contentAsOPTTSBeginTextToSpeechStreamingResponse;
- (OPTTSFinalTextToSpeechStreamingResponse)contentAsOPTTSFinalTextToSpeechStreamingResponse;
- (OPTTSMutableTextToSpeechRouterStreamingStreamingResponse)init;
- (OPTTSPartialTextToSpeechStreamingResponse)contentAsOPTTSPartialTextToSpeechStreamingResponse;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)content_type;
- (void)setContent:(id)a3;
- (void)setContentAsOPTTSBeginTextToSpeechStreamingResponse:(id)a3;
- (void)setContentAsOPTTSFinalTextToSpeechStreamingResponse:(id)a3;
- (void)setContentAsOPTTSPartialTextToSpeechStreamingResponse:(id)a3;
- (void)setContent_type:(int64_t)a3;
@end

@implementation OPTTSMutableTextToSpeechRouterStreamingStreamingResponse

- (void)setContent:(id)a3
{
  v5 = a3;
  -[OPTTSMutableTextToSpeechRouterStreamingStreamingResponse setContent_type:](self, "setContent_type:", [objc_opt_class() content_typeForObject:v5]);
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (void)setContentAsOPTTSFinalTextToSpeechStreamingResponse:(id)a3
{
  v5 = a3;
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self setContent_type:3];
  v4 = [v5 copy];
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

- (void)setContentAsOPTTSPartialTextToSpeechStreamingResponse:(id)a3
{
  v5 = a3;
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self setContent_type:2];
  v4 = [v5 copy];
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

- (void)setContentAsOPTTSBeginTextToSpeechStreamingResponse:(id)a3
{
  v5 = a3;
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)self setContent_type:1];
  v4 = [v5 copy];
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

- (void)setContent_type:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a3];
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

- (OPTTSMutableTextToSpeechRouterStreamingStreamingResponse)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechRouterStreamingStreamingResponse;
  v2 = [(OPTTSMutableTextToSpeechRouterStreamingStreamingResponse *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

+ (int64_t)content_typeForObject:(id)a3
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

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 3;
  }

  else if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)content_typeForMutableObject:(id)a3
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

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (Class)content_mutableClassForType:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_1E7AF3848[a3 - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

@end