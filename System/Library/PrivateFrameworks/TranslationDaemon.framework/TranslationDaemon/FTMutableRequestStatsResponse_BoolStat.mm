@interface FTMutableRequestStatsResponse_BoolStat
- (BOOL)value;
- (FTMutableRequestStatsResponse_BoolStat)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setName:(id)name;
@end

@implementation FTMutableRequestStatsResponse_BoolStat

- (FTMutableRequestStatsResponse_BoolStat)init
{
  v6.receiver = self;
  v6.super_class = FTMutableRequestStatsResponse_BoolStat;
  v2 = [(FTMutableRequestStatsResponse_BoolStat *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)setName:(id)name
{
  v4 = [name copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)value
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"value"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end