@interface _RBSExpirationWarningClient
- (void)initWithBlock:(void *)block invalidationBlock:;
@end

@implementation _RBSExpirationWarningClient

- (void)initWithBlock:(void *)block invalidationBlock:
{
  v5 = a2;
  blockCopy = block;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = _RBSExpirationWarningClient;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v7 = [v5 copy];
      v8 = self[1];
      self[1] = v7;

      v9 = [blockCopy copy];
      v10 = self[2];
      self[2] = v9;
    }
  }

  return self;
}

@end