@interface _UITextHoverEffectContainerLayer
+ (id)_hoverEffectRectsInTextContainer:(void *)container usingRangeProviderBlock:;
+ (id)hoverEffectRectsForCharacterRanges:(id)ranges inTextContainer:(id)container;
+ (id)hoverEffectRectsForRanges:(id)ranges inTextContainer:(id)container;
- (_UITextHoverEffectContainerLayer)init;
@end

@implementation _UITextHoverEffectContainerLayer

- (_UITextHoverEffectContainerLayer)init
{
  v3.receiver = self;
  v3.super_class = _UITextHoverEffectContainerLayer;
  return [(_UITextHoverEffectContainerLayer *)&v3 init];
}

+ (id)hoverEffectRectsForRanges:(id)ranges inTextContainer:(id)container
{
  rangesCopy = ranges;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78___UITextHoverEffectContainerLayer_hoverEffectRectsForRanges_inTextContainer___block_invoke;
  v10[3] = &unk_1E711AF68;
  v11 = rangesCopy;
  v7 = rangesCopy;
  v8 = [(_UITextHoverEffectContainerLayer *)self _hoverEffectRectsInTextContainer:container usingRangeProviderBlock:v10];

  return v8;
}

+ (id)_hoverEffectRectsInTextContainer:(void *)container usingRangeProviderBlock:
{
  v4 = a2;
  containerCopy = container;
  objc_opt_self();
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93___UITextHoverEffectContainerLayer__hoverEffectRectsInTextContainer_usingRangeProviderBlock___block_invoke;
  v13[3] = &unk_1E70F88B8;
  v14 = v4;
  v7 = v6;
  v15 = v7;
  v8 = containerCopy[2];
  v9 = v4;
  v8(containerCopy, v13);

  v10 = v15;
  v11 = v7;

  return v7;
}

+ (id)hoverEffectRectsForCharacterRanges:(id)ranges inTextContainer:(id)container
{
  rangesCopy = ranges;
  containerCopy = container;
  textLayoutManager = [containerCopy textLayoutManager];
  textContentManager = [textLayoutManager textContentManager];

  documentRange = [textContentManager documentRange];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87___UITextHoverEffectContainerLayer_hoverEffectRectsForCharacterRanges_inTextContainer___block_invoke;
  v16[3] = &unk_1E711AFB8;
  v17 = rangesCopy;
  v18 = textContentManager;
  v19 = documentRange;
  v11 = documentRange;
  v12 = textContentManager;
  v13 = rangesCopy;
  v14 = [(_UITextHoverEffectContainerLayer *)self _hoverEffectRectsInTextContainer:containerCopy usingRangeProviderBlock:v16];

  return v14;
}

@end