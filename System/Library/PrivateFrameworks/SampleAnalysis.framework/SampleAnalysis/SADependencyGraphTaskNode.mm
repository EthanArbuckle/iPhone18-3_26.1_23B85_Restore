@interface SADependencyGraphTaskNode
- (id)initWithTask:(void *)task taskState:;
@end

@implementation SADependencyGraphTaskNode

- (id)initWithTask:(void *)task taskState:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = SADependencyGraphTaskNode;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 1, a2);
    objc_storeStrong(v6 + 2, task);
  }

  return v6;
}

@end