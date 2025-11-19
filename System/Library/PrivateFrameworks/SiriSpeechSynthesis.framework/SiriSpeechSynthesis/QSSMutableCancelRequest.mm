@interface QSSMutableCancelRequest
- (QSSMutableCancelRequest)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setReason:(id)a3;
- (void)setSession_id:(id)a3;
- (void)setSpeech_id:(id)a3;
@end

@implementation QSSMutableCancelRequest

- (void)setReason:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableCancelRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableCancelRequest;
  v2 = [(QSSMutableCancelRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end