@interface PRUpdatingSessionInfo
- (id)_initWithInfo:(id *)info;
@end

@implementation PRUpdatingSessionInfo

- (id)_initWithInfo:(id *)info
{
  v4 = a2;
  if (info)
  {
    v7.receiver = info;
    v7.super_class = PRUpdatingSessionInfo;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    info = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return info;
}

@end