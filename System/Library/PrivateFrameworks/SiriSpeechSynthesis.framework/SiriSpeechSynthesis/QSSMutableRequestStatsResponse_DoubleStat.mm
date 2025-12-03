@interface QSSMutableRequestStatsResponse_DoubleStat
- (QSSMutableRequestStatsResponse_DoubleStat)init;
- (double)value;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setName:(id)name;
- (void)setValue:(double)value;
@end

@implementation QSSMutableRequestStatsResponse_DoubleStat

- (void)setValue:(double)value
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:value];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)value
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"value"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
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

- (QSSMutableRequestStatsResponse_DoubleStat)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableRequestStatsResponse_DoubleStat;
  v2 = [(QSSMutableRequestStatsResponse_DoubleStat *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end