@interface SAKCDataExclaveSCResult
- (void)initWithInfo:(void *)info callstacks:;
@end

@implementation SAKCDataExclaveSCResult

- (void)initWithInfo:(void *)info callstacks:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = SAKCDataExclaveSCResult;
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