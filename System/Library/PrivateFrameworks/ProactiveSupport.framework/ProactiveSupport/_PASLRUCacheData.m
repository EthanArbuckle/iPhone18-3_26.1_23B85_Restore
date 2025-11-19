@interface _PASLRUCacheData
- (_PASLRUCacheData)init;
@end

@implementation _PASLRUCacheData

- (_PASLRUCacheData)init
{
  v8.receiver = self;
  v8.super_class = _PASLRUCacheData;
  v2 = [(_PASLRUCacheData *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    items = v2->items;
    v2->items = v3;

    v5 = objc_opt_new();
    keysMRU = v2->keysMRU;
    v2->keysMRU = v5;
  }

  return v2;
}

@end