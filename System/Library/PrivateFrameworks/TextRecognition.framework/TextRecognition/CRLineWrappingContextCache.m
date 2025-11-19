@interface CRLineWrappingContextCache
- (CRLineWrappingContextCache)init;
- (id)contextForLocale:(id)a3;
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

- (id)contextForLocale:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = [[CRLineWrappingContext alloc] initWithLocale:v4];
    [(NSMutableDictionary *)self->_cache setObject:v6 forKeyedSubscript:v4];
  }

  v7 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v4];

  return v7;
}

@end