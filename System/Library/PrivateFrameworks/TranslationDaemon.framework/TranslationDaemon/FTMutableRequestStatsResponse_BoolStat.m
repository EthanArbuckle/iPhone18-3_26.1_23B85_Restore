@interface FTMutableRequestStatsResponse_BoolStat
- (BOOL)value;
- (FTMutableRequestStatsResponse_BoolStat)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setName:(id)a3;
@end

@implementation FTMutableRequestStatsResponse_BoolStat

- (FTMutableRequestStatsResponse_BoolStat)init
{
  v6.receiver = self;
  v6.super_class = FTMutableRequestStatsResponse_BoolStat;
  v2 = [(FTMutableRequestStatsResponse_BoolStat *)&v6 init];
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

- (BOOL)value
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"value"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end