@interface SATaskThreadCallTrees
- (id)initWithTask:(void *)a3 threadCallTrees:;
@end

@implementation SATaskThreadCallTrees

- (id)initWithTask:(void *)a3 threadCallTrees:
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = SATaskThreadCallTrees;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 1, a2);
    v7 = [a3 copy];
    v8 = v6[2];
    v6[2] = v7;
  }

  return v6;
}

@end