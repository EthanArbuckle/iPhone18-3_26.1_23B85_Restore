@interface _RBSExpirationWarningClient
- (void)initWithBlock:(void *)a3 invalidationBlock:;
@end

@implementation _RBSExpirationWarningClient

- (void)initWithBlock:(void *)a3 invalidationBlock:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = _RBSExpirationWarningClient;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v7 = [v5 copy];
      v8 = a1[1];
      a1[1] = v7;

      v9 = [v6 copy];
      v10 = a1[2];
      a1[2] = v9;
    }
  }

  return a1;
}

@end