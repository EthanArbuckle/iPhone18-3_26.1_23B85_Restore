@interface CRLineWrappingContextCache
- (CRLineWrappingContextCache)init;
- (id)contextForLocale:(id)locale;
@end

@implementation CRLineWrappingContextCache

- (CRLineWrappingContextCache)init
{
  v6.receiver = self;
  v6.super_class = CRLineWrappingContextCache;
  v2 = [(CRLineWrappingContextCache *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (id)contextForLocale:(id)locale
{
  localeCopy = locale;
  v5 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:localeCopy];

  if (!v5)
  {
    v6 = [[CRLineWrappingContext alloc] initWithLocale:localeCopy];
    [(NSMutableDictionary *)self->_cache setObject:v6 forKeyedSubscript:localeCopy];
  }

  v7 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:localeCopy];

  return v7;
}

@end