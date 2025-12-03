@interface QSSMutableSpan
- (BOOL)do_not_translate;
- (QSSMutableSpan)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)end_index;
- (int)start_index;
- (void)setMeta_info:(id)meta_info;
@end

@implementation QSSMutableSpan

- (void)setMeta_info:(id)meta_info
{
  v4 = [meta_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)do_not_translate
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"do_not_translate"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int)end_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"end_index"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)start_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_index"];
  intValue = [v2 intValue];

  return intValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableSpan)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableSpan;
  v2 = [(QSSMutableSpan *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end