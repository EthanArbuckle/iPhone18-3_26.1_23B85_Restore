@interface QSSMutableBatchRecoverStreamingRequest
- (QSSMutableBatchRecoverStreamingRequest)init;
- (QSSStartBatchRecoverRequest)contentAsQSSStartBatchRecoverRequest;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)content_type;
- (void)setContentAsQSSStartBatchRecoverRequest:(id)request;
- (void)setContent_type:(int64_t)content_type;
@end

@implementation QSSMutableBatchRecoverStreamingRequest

- (void)setContentAsQSSStartBatchRecoverRequest:(id)request
{
  requestCopy = request;
  [(QSSMutableBatchRecoverStreamingRequest *)self setContent_type:1];
  v4 = [requestCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSStartBatchRecoverRequest)contentAsQSSStartBatchRecoverRequest
{
  if ([(QSSMutableBatchRecoverStreamingRequest *)self content_type]== 1)
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

- (QSSMutableBatchRecoverStreamingRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableBatchRecoverStreamingRequest;
  v2 = [(QSSMutableBatchRecoverStreamingRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end