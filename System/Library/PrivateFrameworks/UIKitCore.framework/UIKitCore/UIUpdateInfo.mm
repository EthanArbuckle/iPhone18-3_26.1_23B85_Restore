@interface UIUpdateInfo
- (void)initWithUpdateParameters:(void *)a1;
@end

@implementation UIUpdateInfo

- (void)initWithUpdateParameters:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = UIUpdateInfo;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  if (v3)
  {
    UCTimeToSeconds();
    v3[3] = v4;
    UCTimeToSeconds();
    v3[4] = v5;
    UCTimeToSeconds();
    v3[5] = v6;
    *(v3 + 18) = *(a2 + 32);
    *(v3 + 16) = *(a2 + 33);
    v3[1] = *(a2 + 40);
  }

  return v3;
}

@end