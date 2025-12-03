@interface SATaskCallTree
- (id)initWithTask:(void *)task rootObjects:(void *)objects;
@end

@implementation SATaskCallTree

- (id)initWithTask:(void *)task rootObjects:(void *)objects
{
  if (!task)
  {
    return 0;
  }

  v6.receiver = task;
  v6.super_class = SATaskCallTree;
  v3 = objc_msgSendSuper2(&v6, sel_initWithRootObjects_);
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(v3 + 2, objects);
  }

  return v4;
}

@end