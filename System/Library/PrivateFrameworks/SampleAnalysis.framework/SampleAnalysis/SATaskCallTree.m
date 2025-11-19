@interface SATaskCallTree
- (id)initWithTask:(void *)a1 rootObjects:(void *)a2;
@end

@implementation SATaskCallTree

- (id)initWithTask:(void *)a1 rootObjects:(void *)a2
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = SATaskCallTree;
  v3 = objc_msgSendSuper2(&v6, sel_initWithRootObjects_);
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(v3 + 2, a2);
  }

  return v4;
}

@end