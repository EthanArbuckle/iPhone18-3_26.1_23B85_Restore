@interface SXComponentInsertionCacheItem
- (id)initWithInserter:(void *)inserter validator:(void *)validator results:;
@end

@implementation SXComponentInsertionCacheItem

- (id)initWithInserter:(void *)inserter validator:(void *)validator results:
{
  v8 = a2;
  inserterCopy = inserter;
  validatorCopy = validator;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = SXComponentInsertionCacheItem;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(self + 2, inserter);
      objc_storeStrong(self + 3, validator);
    }
  }

  return self;
}

@end