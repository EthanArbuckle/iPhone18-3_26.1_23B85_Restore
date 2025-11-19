@interface StickerAddEffectTransitionAnimator
- (CGRect)frameIncludingStrokeForView:(id)a3;
- (double)transitionScaleForView:(id)a3;
@end

@implementation StickerAddEffectTransitionAnimator

- (double)transitionScaleForView:(id)a3
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return 1.0;
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = a3;

  v8 = [v5 effect];
  v9 = [v8 type];

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    [v5 bounds];
    [v6 extraScaleToIncludeStrokeWithEffectType:v9 bounds:?];
    v12 = v11;

    return v12;
  }

  return result;
}

- (CGRect)frameIncludingStrokeForView:(id)a3
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = *(self->super.isa + 58);
    v8 = a3;

    v9 = v7(v6);
    [v8 frame];
    v14 = sub_26BA8C95C(v10, v11, v12, v13);
    v16 = v15;
    [v8 frame];
    v18 = sub_26BA8C944(v14, v16, v9 * v17);
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = v24;
    v26 = v22;
    v27 = v20;
    v28 = v18;
  }

  else
  {
    [a3 frame];
  }

  result.size.height = v25;
  result.size.width = v26;
  result.origin.y = v27;
  result.origin.x = v28;
  return result;
}

@end