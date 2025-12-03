@interface QSSMutableRequestStatsResponse_Int32Stat
- (QSSMutableRequestStatsResponse_Int32Stat)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)value;
- (void)setName:(id)name;
@end

@implementation QSSMutableRequestStatsResponse_Int32Stat

- (int)value
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"value"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setName:(id)name
{
  v4 = [name copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableRequestStatsResponse_Int32Stat)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableRequestStatsResponse_Int32Stat;
  v2 = [(QSSMutableRequestStatsResponse_Int32Stat *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end