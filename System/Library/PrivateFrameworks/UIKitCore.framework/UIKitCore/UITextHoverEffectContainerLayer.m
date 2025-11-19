@interface UITextHoverEffectContainerLayer
@end

@implementation UITextHoverEffectContainerLayer

void __78___UITextHoverEffectContainerLayer_hoverEffectRectsForRanges_inTextContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78___UITextHoverEffectContainerLayer_hoverEffectRectsForRanges_inTextContainer___block_invoke_2;
  v6[3] = &unk_1E711AF40;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __87___UITextHoverEffectContainerLayer_hoverEffectRectsForCharacterRanges_inTextContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87___UITextHoverEffectContainerLayer_hoverEffectRectsForCharacterRanges_inTextContainer___block_invoke_2;
  v6[3] = &unk_1E711AF90;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __87___UITextHoverEffectContainerLayer_hoverEffectRectsForCharacterRanges_inTextContainer___block_invoke_2(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 rangeValue];
  v5 = v4;
  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = *(a1 + 40);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = [v7 location];
  v9 = [v6 locationFromLocation:v8 withOffset:v3];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [*(a1 + 40) endLocation];
  }

  v12 = v11;

  v13 = [*(a1 + 32) locationFromLocation:v12 withOffset:v5];
  v14 = v13;
  if (!v12 || !v13)
  {

LABEL_11:
    v18 = [_UITextKitTextRange rangeWithRange:v3, v5];
    goto LABEL_12;
  }

  v15 = [[off_1E70ECBF0 alloc] initWithLocation:v12 endLocation:v13];
  v16 = *(a1 + 32);
  v19[0] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v18 = [_UITextKitTextRange rangeWithTextContentManager:v16 textRanges:v17 affinity:0];

  if (!v18)
  {
    goto LABEL_11;
  }

LABEL_12:
  (*(*(a1 + 48) + 16))();
}

void __93___UITextHoverEffectContainerLayer__hoverEffectRectsInTextContainer_usingRangeProviderBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [[_UIBoundingTextRectsSolver alloc] initWithTextContainer:*(a1 + 32) range:v3 unifyRects:0];

  v4 = [(_UIBoundingTextRectsSolver *)v8 rects];
  v5 = [v4 count];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [(_UIBoundingTextRectsSolver *)v8 rects];
    [v6 addObject:v7];
  }
}

@end