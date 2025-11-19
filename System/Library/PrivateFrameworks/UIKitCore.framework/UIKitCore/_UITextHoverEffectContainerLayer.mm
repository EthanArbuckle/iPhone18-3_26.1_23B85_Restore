@interface _UITextHoverEffectContainerLayer
+ (id)_hoverEffectRectsInTextContainer:(void *)a3 usingRangeProviderBlock:;
+ (id)hoverEffectRectsForCharacterRanges:(id)a3 inTextContainer:(id)a4;
+ (id)hoverEffectRectsForRanges:(id)a3 inTextContainer:(id)a4;
- (_UITextHoverEffectContainerLayer)init;
@end

@implementation _UITextHoverEffectContainerLayer

- (_UITextHoverEffectContainerLayer)init
{
  v3.receiver = self;
  v3.super_class = _UITextHoverEffectContainerLayer;
  return [(_UITextHoverEffectContainerLayer *)&v3 init];
}

+ (id)hoverEffectRectsForRanges:(id)a3 inTextContainer:(id)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78___UITextHoverEffectContainerLayer_hoverEffectRectsForRanges_inTextContainer___block_invoke;
  v10[3] = &unk_1E711AF68;
  v11 = v6;
  v7 = v6;
  v8 = [(_UITextHoverEffectContainerLayer *)a1 _hoverEffectRectsInTextContainer:a4 usingRangeProviderBlock:v10];

  return v8;
}

+ (id)_hoverEffectRectsInTextContainer:(void *)a3 usingRangeProviderBlock:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93___UITextHoverEffectContainerLayer__hoverEffectRectsInTextContainer_usingRangeProviderBlock___block_invoke;
  v13[3] = &unk_1E70F88B8;
  v14 = v4;
  v7 = v6;
  v15 = v7;
  v8 = v5[2];
  v9 = v4;
  v8(v5, v13);

  v10 = v15;
  v11 = v7;

  return v7;
}

+ (id)hoverEffectRectsForCharacterRanges:(id)a3 inTextContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 textLayoutManager];
  v9 = [v8 textContentManager];

  v10 = [v9 documentRange];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87___UITextHoverEffectContainerLayer_hoverEffectRectsForCharacterRanges_inTextContainer___block_invoke;
  v16[3] = &unk_1E711AFB8;
  v17 = v6;
  v18 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v6;
  v14 = [(_UITextHoverEffectContainerLayer *)a1 _hoverEffectRectsInTextContainer:v7 usingRangeProviderBlock:v16];

  return v14;
}

@end