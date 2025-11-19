@interface UIEditMenuContentPresentation
@end

@implementation UIEditMenuContentPresentation

void __54___UIEditMenuContentPresentation__displayMenu_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  v6 = [v5 _editMenuPresentation:*(a1 + 32) titleViewForMenu:*(a1 + 40) configuration:*(a1 + 48)];

  [*(a1 + 32) _displayPreparedMenu:v4 titleView:v6 reason:*(a1 + 56) didDismissMenu:*(a1 + 64) configuration:*(a1 + 48)];
}

void __101___UIEditMenuContentPresentation__displayPreparedMenu_titleView_reason_didDismissMenu_configuration___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = [*(a1 + 40) presentAnimator];
  [v2 runAnimations];
}

uint64_t __101___UIEditMenuContentPresentation__displayPreparedMenu_titleView_reason_didDismissMenu_configuration___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v6[0] = *MEMORY[0x1E695EFD0];
  v6[1] = v3;
  v6[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v6];
  [*(a1 + 32) setAlpha:1.0];
  v4 = [*(a1 + 40) presentAnimator];
  [v4 runAnimations];

  return [*(a1 + 32) layoutIfNeeded];
}

void __53___UIEditMenuContentPresentation_hideMenuWithReason___block_invoke(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) setAlpha:0.0];
  v2 = [*(a1 + 32) dismissAnimator];
  [v2 runAnimations];
}

void __53___UIEditMenuContentPresentation_hideMenuWithReason___block_invoke_2(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.2, 0.2);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v4 = v5;
  [v2 setTransform:&v4];
  [*(*(*(a1 + 40) + 8) + 40) setAlpha:0.0];
  [*(*(*(a1 + 40) + 8) + 40) layoutIfNeeded];
  v3 = [*(a1 + 32) dismissAnimator];
  [v3 runAnimations];
}

uint64_t __53___UIEditMenuContentPresentation_hideMenuWithReason___block_invoke_3(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) removeFromSuperview];
  v2 = *(a1 + 32);

  return [v2 transitionWithEvent:3];
}

void __79___UIEditMenuContentPresentation_editMenuListView_didSelectMenuElement_source___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (([a1[4] attributes] & 8) == 0)
  {
    v2 = [WeakRetained displayedMenu];
    v3 = v2;
    if (v2 == a1[5])
    {
      v4 = [WeakRetained currentState];

      if (v4 == 3)
      {
        [WeakRetained hideMenuWithReason:1];
      }
    }

    else
    {
    }
  }
}

uint64_t __75___UIEditMenuContentPresentation__reloadMenuLayoutWithSourceRect_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setArrowDirection:{objc_msgSend(*(a1 + 40), "arrowDirection")}];
  [*(a1 + 40) anchorPoint];
  [*(a1 + 32) setAnchorPoint:?];
  [*(a1 + 40) containerBounds];
  [*(a1 + 32) setBounds:?];
  [*(a1 + 40) menuPosition];
  v2 = *(a1 + 32);

  return [v2 setCenter:?];
}

@end