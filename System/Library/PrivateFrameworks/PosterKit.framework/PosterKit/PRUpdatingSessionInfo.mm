@interface PRUpdatingSessionInfo
- (id)_initWithInfo:(id *)a1;
@end

@implementation PRUpdatingSessionInfo

- (id)_initWithInfo:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PRUpdatingSessionInfo;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

@end