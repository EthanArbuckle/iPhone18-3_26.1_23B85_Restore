@interface FBCStateTransitionNode
- (void)_initWithState:(void *)state transitions:;
@end

@implementation FBCStateTransitionNode

- (void)_initWithState:(void *)state transitions:
{
  result = state;
  v6 = result;
  if (!self)
  {
    goto LABEL_5;
  }

  if (result)
  {
    v10.receiver = self;
    v10.super_class = FBCStateTransitionNode;
    v7 = objc_msgSendSuper2(&v10, sel_init);
    self = v7;
    if (v7)
    {
      *(v7 + 8) = a2;
      v8 = [v6 copy];
      v9 = self[2];
      self[2] = v8;
    }

LABEL_5:

    return self;
  }

  __break(1u);
  return result;
}

@end