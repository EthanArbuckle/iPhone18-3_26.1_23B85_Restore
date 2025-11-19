@interface FTMutableRequestStatsResponse_DoubleStat
- (FTMutableRequestStatsResponse_DoubleStat)init;
- (double)value;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setName:(id)a3;
- (void)setValue:(double)a3;
@end

@implementation FTMutableRequestStatsResponse_DoubleStat

- (FTMutableRequestStatsResponse_DoubleStat)init
{
  v6.receiver = self;
  v6.super_class = FTMutableRequestStatsResponse_DoubleStat;
  v2 = [(FTMutableRequestStatsResponse_DoubleStat *)&v6 init];
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

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)value
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"value"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setValue:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end