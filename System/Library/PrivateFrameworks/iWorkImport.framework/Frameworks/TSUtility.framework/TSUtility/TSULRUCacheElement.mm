@interface TSULRUCacheElement
- (TSULRUCacheElement)initWithObject:(id)object counter:(unint64_t)counter;
@end

@implementation TSULRUCacheElement

- (TSULRUCacheElement)initWithObject:(id)object counter:(unint64_t)counter
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = TSULRUCacheElement;
  v8 = [(TSULRUCacheElement *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_object, object);
    v9->_counter.__a_.__a_value = counter;
  }

  return v9;
}

@end