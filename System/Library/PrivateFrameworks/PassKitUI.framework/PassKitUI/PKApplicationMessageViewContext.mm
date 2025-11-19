@interface PKApplicationMessageViewContext
- (void)initForNode:(void *)a1;
- (void)setNode:(uint64_t)a1;
@end

@implementation PKApplicationMessageViewContext

- (void)initForNode:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v8.receiver = a1;
    v8.super_class = PKApplicationMessageViewContext;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    if (v5)
    {
      v5[2] = v4;
    }

    a1 = v5;
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setNode:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 16) != v3)
    {
      *(a1 + 16) = v3;
      v4 = *(a1 + 32);
      v6 = v3;
      v5 = [v3 numberOfChildren] + v4;
      v3 = v6;
      if (v5 <= 1)
      {
        *(a1 + 8) = 0;
      }
    }
  }
}

@end