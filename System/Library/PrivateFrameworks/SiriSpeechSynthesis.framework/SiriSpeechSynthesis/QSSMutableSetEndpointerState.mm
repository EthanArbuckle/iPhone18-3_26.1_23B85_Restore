@interface QSSMutableSetEndpointerState
- (BOOL)enable_server_side_endpoint;
- (QSSMutableSetEndpointerState)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation QSSMutableSetEndpointerState

- (BOOL)enable_server_side_endpoint
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_server_side_endpoint"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableSetEndpointerState)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableSetEndpointerState;
  v2 = [(QSSMutableSetEndpointerState *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end