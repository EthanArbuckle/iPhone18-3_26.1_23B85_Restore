@interface SADependencyGraphTaskNode
- (id)initWithTask:(void *)a3 taskState:;
@end

@implementation SADependencyGraphTaskNode

- (id)initWithTask:(void *)a3 taskState:
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = SADependencyGraphTaskNode;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 1, a2);
    objc_storeStrong(v6 + 2, a3);
  }

  return v6;
}

@end