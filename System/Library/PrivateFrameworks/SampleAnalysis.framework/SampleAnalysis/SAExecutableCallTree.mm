@interface SAExecutableCallTree
- (void)initWithTasks:(void *)tasks rootObjects:(void *)objects;
@end

@implementation SAExecutableCallTree

- (void)initWithTasks:(void *)tasks rootObjects:(void *)objects
{
  if (!tasks)
  {
    return 0;
  }

  v7.receiver = tasks;
  v7.super_class = SAExecutableCallTree;
  v3 = objc_msgSendSuper2(&v7, sel_initWithRootObjects_);
  if (v3)
  {
    v4 = [objects copy];
    v5 = v3[2];
    v3[2] = v4;
  }

  return v3;
}

@end