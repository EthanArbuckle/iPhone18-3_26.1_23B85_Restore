@interface SXComponentInsertionResult
- (id)initWithInsert:(void *)insert marker:;
@end

@implementation SXComponentInsertionResult

- (id)initWithInsert:(void *)insert marker:
{
  v6 = a2;
  insertCopy = insert;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = SXComponentInsertionResult;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, insert);
    }
  }

  return self;
}

@end