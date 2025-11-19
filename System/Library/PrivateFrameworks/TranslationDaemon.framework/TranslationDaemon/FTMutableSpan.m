@interface FTMutableSpan
- (BOOL)do_not_translate;
- (FTMutableSpan)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)end_index;
- (int)start_index;
- (void)setMeta_info:(id)a3;
@end

@implementation FTMutableSpan

- (FTMutableSpan)init
{
  v6.receiver = self;
  v6.super_class = FTMutableSpan;
  v2 = [(FTMutableSpan *)&v6 init];
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

- (int)start_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_index"];
  v3 = [v2 intValue];

  return v3;
}

- (int)end_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"end_index"];
  v3 = [v2 intValue];

  return v3;
}

- (BOOL)do_not_translate
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"do_not_translate"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setMeta_info:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end