@interface UIView(Utilities)
- (double)vk_backingScaleFactor;
- (double)vk_convertFrameToViewScale:()Utilities shouldRound:;
- (double)vk_safeAreaBounds;
- (id)vk_autoFadeOutLayerWithPath:()Utilities fadeOutDelay:;
- (id)vk_autoFadeOutLayerWithQuad:()Utilities fadeOutDelay:;
- (id)vk_autoFadeOutShapePointLayer;
- (id)vk_autoFadeOutShapeRectLayer;
- (id)vk_constraintsToFillLayoutGuide:()Utilities;
- (id)vk_constraintsToFillView:()Utilities;
- (id)vk_renderImageFromViewBackingStoreWithSubrect:()Utilities;
- (uint64_t)summaryDescription;
- (uint64_t)vk_renderImageFromViewBackingStore;
- (uint64_t)vk_setHidden:()Utilities animated:;
- (void)setVk_backgroundColor:()Utilities;
@end

@implementation UIView(Utilities)

- (void)setVk_backgroundColor:()Utilities
{
  v4 = [a3 copy];
  [a1 setBackgroundColor:v4];
}

- (double)vk_backingScaleFactor
{
  v1 = [a1 window];
  v2 = [v1 screen];
  [v2 scale];
  v4 = v3;

  return v4;
}

- (double)vk_safeAreaBounds
{
  [a1 bounds];
  v3 = v2;
  v5 = v4;
  v25 = v6;
  v8 = v7;
  [a1 safeAreaInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (!vk_isiOS() || ([a1 vk_viewPointRatioFromWindow], v17 == 1.0))
  {
    v18 = v5;
  }

  else
  {
    v18 = v5;
    if (fabs(v17 + -1.0) >= 0.000000999999997)
    {
      v10 = 0.0;
      v12 = 0.0;
      v14 = 0.0;
      v16 = 0.0;
    }
  }

  v19 = v3 + v12;
  v20 = v18 + v10;
  v21 = v25 - (v12 + v16);
  v22 = v8 - (v10 + v14);
  v23 = v18;
  if (([a1 vk_isFlipped] & 1) == 0)
  {
    return VKMFlipRect(v19, v20, v21, v22, v3, v23, v25, v8);
  }

  return v19;
}

- (uint64_t)vk_setHidden:()Utilities animated:
{
  result = [a1 isHidden];
  if (result != a3)
  {
    if (a4)
    {
      v8 = [a1 isHidden];
      v9 = 1.0;
      if (v8)
      {
        v9 = 0.0;
      }

      [a1 setVk_alpha:v9];
      if ((a3 & 1) == 0)
      {
        [a1 setHidden:0];
      }

      v10 = MEMORY[0x1E69DD250];
      [MEMORY[0x1E69DD250] inheritedAnimationDuration];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __43__UIView_Utilities__vk_setHidden_animated___block_invoke;
      v13[3] = &unk_1E7BE41B8;
      v13[4] = a1;
      v14 = a3;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __43__UIView_Utilities__vk_setHidden_animated___block_invoke_2;
      v11[3] = &unk_1E7BE4E38;
      v11[4] = a1;
      v12 = a3;
      return [v10 animateWithDuration:v13 animations:v11 completion:?];
    }

    else
    {

      return [a1 setHidden:a3];
    }
  }

  return result;
}

- (id)vk_autoFadeOutShapeRectLayer
{
  v1 = [a1 layer];
  v2 = [v1 vk_autoFadeOutShapeRectLayer];

  return v2;
}

- (id)vk_autoFadeOutShapePointLayer
{
  v1 = [a1 layer];
  v2 = [v1 vk_autoFadeOutShapePointLayer];

  return v2;
}

- (id)vk_autoFadeOutLayerWithQuad:()Utilities fadeOutDelay:
{
  v6 = [a4 path];
  v7 = [a1 vk_autoFadeOutLayerWithPath:v6 fadeOutDelay:a2];

  return v7;
}

- (id)vk_autoFadeOutLayerWithPath:()Utilities fadeOutDelay:
{
  v6 = MEMORY[0x1E69794A0];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  [a1 bounds];
  [v8 setFrame:?];
  v9 = [v7 vk_CGPath];

  [v8 setPath:v9];
  v10 = [MEMORY[0x1E69DC888] vk_randomColor];
  [v8 setStrokeColor:{objc_msgSend(v10, "CGColor")}];

  [v8 setFillColor:0];
  [v8 setLineWidth:2.0];
  v11 = [MEMORY[0x1E69DC888] clearColor];
  [v8 setBackgroundColor:{objc_msgSend(v11, "CGColor")}];

  v12 = [a1 layer];
  [v12 addSublayer:v8];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__UIView_Utilities__vk_autoFadeOutLayerWithPath_fadeOutDelay___block_invoke;
  v15[3] = &unk_1E7BE4208;
  v13 = v8;
  v16 = v13;
  vk_dispatchMainAfterDelay(v15, a2);

  return v13;
}

- (id)vk_constraintsToFillView:()Utilities
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = a1;
  v7 = v4;
  if (v7)
  {
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v6 leadingAnchor];
    v9 = [v7 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v5 addObject:v10];

    v11 = [v6 trailingAnchor];
    v12 = [v7 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v5 addObject:v13];

    v14 = [v6 topAnchor];
    v15 = [v7 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v5 addObject:v16];

    v17 = [v6 bottomAnchor];
    v18 = [v7 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v5 addObject:v19];
  }

  else
  {
    [VKAssert handleFailedAssertWithCondition:"((v2) != nil)" functionName:"[UIView(Utilities) vk_constraintsToFillView:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "v2"];
  }

  v20 = [v5 copy];

  return v20;
}

- (id)vk_renderImageFromViewBackingStoreWithSubrect:()Utilities
{
  v10 = [MEMORY[0x1E69DCA80] defaultFormat];
  v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v10 format:{a4, a5}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__UIView_Utilities__vk_renderImageFromViewBackingStoreWithSubrect___block_invoke;
  v14[3] = &unk_1E7BE4E60;
  v14[4] = a1;
  *&v14[5] = a2;
  *&v14[6] = a3;
  *&v14[7] = a4;
  *&v14[8] = a5;
  v12 = [v11 imageWithActions:v14];

  return v12;
}

- (uint64_t)vk_renderImageFromViewBackingStore
{
  [a1 bounds];

  return [a1 vk_renderImageFromViewBackingStoreWithSubrect:?];
}

- (id)vk_constraintsToFillLayoutGuide:()Utilities
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = a1;
  v7 = v6;
  if (v4)
  {
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v7 leadingAnchor];
    v9 = [v4 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v5 addObject:v10];

    v11 = [v7 trailingAnchor];
    v12 = [v4 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v5 addObject:v13];

    v14 = [v7 topAnchor];
    v15 = [v4 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v5 addObject:v16];

    v17 = [v7 bottomAnchor];
    v18 = [v4 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v5 addObject:v19];
  }

  else
  {
    [VKAssert handleFailedAssertWithCondition:"((layoutGuide) != nil)" functionName:"[UIView(Utilities) vk_constraintsToFillLayoutGuide:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "layoutGuide"];
  }

  v20 = [v5 copy];

  return v20;
}

- (double)vk_convertFrameToViewScale:()Utilities shouldRound:
{
  v12 = [a1 traitCollection];
  [v12 displayScale];
  v14 = VKMRectForScale(a7, a2, a3, a4, a5, v13);

  return v14;
}

- (uint64_t)summaryDescription
{
  [a1 frame];

  return VKMUIStringForRect(v1, v2, v3, v4);
}

@end