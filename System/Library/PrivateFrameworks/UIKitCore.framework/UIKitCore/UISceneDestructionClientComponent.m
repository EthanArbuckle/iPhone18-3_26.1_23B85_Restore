@interface UISceneDestructionClientComponent
@end

@implementation UISceneDestructionClientComponent

void __63___UISceneDestructionClientComponent_setDestructionConditions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  v5 = [v3 destructionConditions];
  v6 = [v5 object];
  v7 = v4;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

LABEL_9:
    goto LABEL_10;
  }

  if (!v7 || !v8)
  {

    goto LABEL_8;
  }

  v10 = [v7 isEqual:v8];

  if ((v10 & 1) == 0)
  {
LABEL_8:
    v11 = [*(a1 + 32) copy];
    v5 = [(_UIAbstractBSXPCCodingAdapter *)_UIDestructionConditionSetBSXPCCodingAdapter adapterWithObject:v11];

    [v12 setDestructionConditions:v5];
    goto LABEL_9;
  }

LABEL_10:
}

@end