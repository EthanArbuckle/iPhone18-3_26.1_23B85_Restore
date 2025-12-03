@interface SBIconListViewSlideInAnimator
- (void)iconListView:(id)view wantsAnimatedLayoutForIconView:(id)iconView withParameters:(SBIconListLayoutAnimationParameters *)parameters alongsideAnimationBlock:(id)block;
@end

@implementation SBIconListViewSlideInAnimator

- (void)iconListView:(id)view wantsAnimatedLayoutForIconView:(id)iconView withParameters:(SBIconListLayoutAnimationParameters *)parameters alongsideAnimationBlock:(id)block
{
  iconViewCopy = iconView;
  blockCopy = block;
  viewCopy = view;
  [viewCopy bounds];
  Width = CGRectGetWidth(v33);
  [viewCopy bounds];
  Height = CGRectGetHeight(v34);
  userInterfaceLayoutDirection = [viewCopy userInterfaceLayoutDirection];
  iconInsertionAnimationOriginatingEdge = [viewCopy iconInsertionAnimationOriginatingEdge];

  v16 = -Width;
  if (userInterfaceLayoutDirection != 1)
  {
    v16 = Width;
  }

  if (iconInsertionAnimationOriginatingEdge == 1)
  {
    v17 = Height;
  }

  else
  {
    v17 = 0.0;
  }

  if (iconInsertionAnimationOriginatingEdge == 1)
  {
    v16 = 0.0;
  }

  [iconViewCopy setCenter:{parameters->var0.x + v16, parameters->var0.y + v17}];
  v18 = MEMORY[0x1E69DD250];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __116__SBIconListViewSlideInAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke;
  v24[3] = &unk_1E808BF90;
  v19 = *&parameters->var2.continuousCornerRadius;
  v29 = *&parameters->var2.size.height;
  v30 = v19;
  v20 = *&parameters->var5;
  var4 = parameters->var4;
  v32 = v20;
  v21 = *&parameters->var1;
  var0 = parameters->var0;
  v28 = v21;
  v25 = iconViewCopy;
  v26 = blockCopy;
  v22 = blockCopy;
  v23 = iconViewCopy;
  [v18 animateWithDuration:v24 animations:0.3];
}

uint64_t __116__SBIconListViewSlideInAnimator_iconListView_wantsAnimatedLayoutForIconView_withParameters_alongsideAnimationBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 48), *(a1 + 56)}];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end