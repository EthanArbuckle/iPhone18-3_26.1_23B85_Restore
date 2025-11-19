@interface SXComponentInsertionResult
- (id)initWithInsert:(void *)a3 marker:;
@end

@implementation SXComponentInsertionResult

- (id)initWithInsert:(void *)a3 marker:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = SXComponentInsertionResult;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

@end