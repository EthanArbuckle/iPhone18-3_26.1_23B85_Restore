@interface FLTMutableSSUFile
- (FLTMutableSSUFile)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)format_version;
- (void)setCategories:(id)categories;
- (void)setLocale:(id)locale;
- (void)setMetadata:(id)metadata;
@end

@implementation FLTMutableSSUFile

- (void)setCategories:(id)categories
{
  v4 = [categories copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLocale:(id)locale
{
  v4 = [locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setMetadata:(id)metadata
{
  v4 = [metadata copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)format_version
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"format_version"];
  unsignedShortValue = [v2 unsignedShortValue];

  return unsignedShortValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end