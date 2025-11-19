@interface TSULRUCacheElement
- (TSULRUCacheElement)initWithObject:(id)a3 counter:(unint64_t)a4;
@end

@implementation TSULRUCacheElement

- (TSULRUCacheElement)initWithObject:(id)a3 counter:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSULRUCacheElement;
  v8 = [(TSULRUCacheElement *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_object, a3);
    v9->_counter.__a_.__a_value = a4;
  }

  return v9;
}

@end