@interface UITextContainerView
@end

@implementation UITextContainerView

void *__76___UITextContainerView__setFrameOrBounds_oldRect_isFrameRect_settingAction___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[64];
  if (v3)
  {
    if (*(a1 + 40) == result[63])
    {
      result = [result setClipsToBounds:v3 == 1];
      *(*(a1 + 32) + 512) = 0;
    }
  }

  return result;
}

void __76___UITextContainerView__setFrameOrBounds_oldRect_isFrameRect_settingAction___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  if (*(a1 + 48) == v2[63])
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    v6 = *(a1 + 80);
    if (*(a1 + 120) == 1)
    {
      if ([v2 isHorizontallyResizable])
      {
        [*(a1 + 32) bounds];
        v6 = v7;
      }

      v8 = [*(a1 + 32) isVerticallyResizable];
      v2 = *(a1 + 32);
      if (v8)
      {
        [v2 bounds];
        v5 = v9;
        v2 = *(a1 + 32);
      }
    }

    _UITextContainerViewResyncNSTextContainer(v2, v3, v4, v5, v6);
    if (*(a1 + 104) != v5 || *(a1 + 112) != v6)
    {
      [*(a1 + 32) invalidateTextContainerOrigin];
      [*(a1 + 32) setNeedsDisplay];
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 postNotificationName:@"_UITextContainerViewSizeDidChange" object:*(a1 + 32)];
    }
  }
}

uint64_t __76___UITextContainerView__setFrameOrBounds_oldRect_isFrameRect_settingAction___block_invoke_3(uint64_t a1)
{
  v1 = 40;
  if (*(a1 + 48))
  {
    v1 = 32;
  }

  return (*(*(a1 + v1) + 16))();
}

id __34___UITextContainerView_setBounds___block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = _UITextContainerView;
  return objc_msgSendSuper2(&v2, sel_setBounds_, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

id __33___UITextContainerView_setFrame___block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = _UITextContainerView;
  return objc_msgSendSuper2(&v2, sel_setFrame_, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

@end