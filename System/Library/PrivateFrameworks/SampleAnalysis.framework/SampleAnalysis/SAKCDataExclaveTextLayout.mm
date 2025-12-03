@interface SAKCDataExclaveTextLayout
- (void)initWithInfo:(void *)info textSegments:;
@end

@implementation SAKCDataExclaveTextLayout

- (void)initWithInfo:(void *)info textSegments:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = SAKCDataExclaveTextLayout;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = v5;
  if (v5)
  {
    v5[1] = a2;
    v7 = [info copy];
    v8 = v6[2];
    v6[2] = v7;
  }

  return v6;
}

@end