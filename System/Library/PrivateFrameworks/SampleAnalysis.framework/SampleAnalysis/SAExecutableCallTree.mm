@interface SAExecutableCallTree
- (void)initWithTasks:(void *)a1 rootObjects:(void *)a2;
@end

@implementation SAExecutableCallTree

- (void)initWithTasks:(void *)a1 rootObjects:(void *)a2
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = SAExecutableCallTree;
  v3 = objc_msgSendSuper2(&v7, sel_initWithRootObjects_);
  if (v3)
  {
    v4 = [a2 copy];
    v5 = v3[2];
    v3[2] = v4;
  }

  return v3;
}

@end