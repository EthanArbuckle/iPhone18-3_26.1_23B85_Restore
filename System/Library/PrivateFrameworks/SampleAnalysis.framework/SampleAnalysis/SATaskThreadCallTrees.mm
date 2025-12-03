@interface SATaskThreadCallTrees
- (id)initWithTask:(void *)task threadCallTrees:;
@end

@implementation SATaskThreadCallTrees

- (id)initWithTask:(void *)task threadCallTrees:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = SATaskThreadCallTrees;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 1, a2);
    v7 = [task copy];
    v8 = v6[2];
    v6[2] = v7;
  }

  return v6;
}

@end