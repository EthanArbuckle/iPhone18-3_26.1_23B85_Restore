@interface FBCStateTransitionNode
- (void)_initWithState:(void *)a3 transitions:;
@end

@implementation FBCStateTransitionNode

- (void)_initWithState:(void *)a3 transitions:
{
  result = a3;
  v6 = result;
  if (!a1)
  {
    goto LABEL_5;
  }

  if (result)
  {
    v10.receiver = a1;
    v10.super_class = FBCStateTransitionNode;
    v7 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v7;
    if (v7)
    {
      *(v7 + 8) = a2;
      v8 = [v6 copy];
      v9 = a1[2];
      a1[2] = v8;
    }

LABEL_5:

    return a1;
  }

  __break(1u);
  return result;
}

@end