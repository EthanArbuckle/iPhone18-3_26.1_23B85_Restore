@interface FLTMutableSSUFile
- (FLTMutableSSUFile)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)format_version;
- (void)setCategories:(id)a3;
- (void)setLocale:(id)a3;
- (void)setMetadata:(id)a3;
@end

@implementation FLTMutableSSUFile

- (void)setCategories:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLocale:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setMetadata:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)format_version
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"format_version"];
  v3 = [v2 unsignedShortValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (FLTMutableSSUFile)init
{
  v6.receiver = self;
  v6.super_class = FLTMutableSSUFile;
  v2 = [(FLTMutableSSUFile *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end