@interface FTMutableTextToSpeechStreamingStreamingRequest
+ (Class)content_mutableClassForType:(int64_t)a3;
+ (int64_t)content_typeForMutableObject:(id)a3;
+ (int64_t)content_typeForObject:(id)a3;
- (FTMutableTextToSpeechStreamingStreamingRequest)init;
- (FTStartTextToSpeechStreamingRequest)contentAsFTStartTextToSpeechStreamingRequest;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)content_type;
- (void)setContent:(id)a3;
- (void)setContentAsFTStartTextToSpeechStreamingRequest:(id)a3;
- (void)setContent_type:(int64_t)a3;
@end

@implementation FTMutableTextToSpeechStreamingStreamingRequest

- (FTMutableTextToSpeechStreamingStreamingRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechStreamingStreamingRequest;
  v2 = [(FTMutableTextToSpeechStreamingStreamingRequest *)&v6 init];
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

- (int64_t)content_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content_type"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setContent_type:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (FTStartTextToSpeechStreamingRequest)contentAsFTStartTextToSpeechStreamingRequest
{
  if ([(FTMutableTextToSpeechStreamingStreamingRequest *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsFTStartTextToSpeechStreamingRequest:(id)a3
{
  v5 = a3;
  [(FTMutableTextToSpeechStreamingStreamingRequest *)self setContent_type:1];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (void)setContent:(id)a3
{
  v5 = a3;
  -[FTMutableTextToSpeechStreamingStreamingRequest setContent_type:](self, "setContent_type:", [objc_opt_class() content_typeForObject:v5]);
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

+ (Class)content_mutableClassForType:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = objc_opt_class();
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
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

+ (int64_t)content_typeForObject:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isMemberOfClass:objc_opt_class()];
  }

  return v4;
}

@end