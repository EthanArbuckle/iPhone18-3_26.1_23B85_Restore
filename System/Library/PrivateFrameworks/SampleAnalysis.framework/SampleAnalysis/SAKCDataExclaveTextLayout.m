@interface SAKCDataExclaveTextLayout
- (void)initWithInfo:(void *)a3 textSegments:;
@end

@implementation SAKCDataExclaveTextLayout

- (void)initWithInfo:(void *)a3 textSegments:
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = SAKCDataExclaveTextLayout;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = v5;
  if (v5)
  {
    v5[1] = a2;
    v7 = [a3 copy];
    v8 = v6[2];
    v6[2] = v7;
  }

  return v6;
}

@end