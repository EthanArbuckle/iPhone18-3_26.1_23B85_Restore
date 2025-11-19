@interface UITableAnimateSwipeDeletion
@end

@implementation UITableAnimateSwipeDeletion

void ___UITableAnimateSwipeDeletion_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 24);
  if (v5 <= 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSSet<UIViewPropertyAnimator *> *_UITableAnimateSwipeDeletion(__strong id<UITable_RowDataSource>, NSIndexPath *__strong, UITableViewCell *__strong, UIView *__strong, UISwipeOccurrence *__strong, UIColor *__strong, void (^__strong)(BOOL), void (^__strong)(BOOL))_block_invoke"}];
    [v16 handleFailureInFunction:v17 file:@"_UITableShared.m" lineNumber:243 description:@"deleteAnimationsRunning is less than or equal to 0 while entering a completion handler. It seems like the initial animation count is incorrect. This is a UIKit bug."];

    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 24);
  }

  *(v4 + 24) = v5 - 1;
  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    [*(a1 + 32) setAutoresizesSubviews:1];
    [*(a1 + 32) _setSkipsLayout:0];
    [*(a1 + 32) setHidden:1];
    [*(a1 + 40) frame];
    [*(a1 + 48) convertRect:0 toView:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = *(a1 + 56);
    if (v14)
    {
      (*(v14 + 16))(v14, a2 == 0);
    }

    [*(a1 + 48) layoutIfNeeded];
    [*(a1 + 48) convertRect:0 fromView:{v7, v9, v11, v13}];
    [*(a1 + 40) setFrame:?];
    [*(a1 + 32) _setDeleteAnimationInProgress:0];
    v15 = *(a1 + 48);

    [v15 setUserInteractionEnabled:1];
  }
}

uint64_t ___UITableAnimateSwipeDeletion_block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 40);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

uint64_t ___UITableAnimateSwipeDeletion_block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setHeight:*(a1 + 40) forRowAtIndexPath:1 usingPresentationValues:0.0];
  [*(a1 + 48) layoutIfNeeded];
  [*(a1 + 56) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  v6 = *(a1 + 64);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

uint64_t ___UITableAnimateSwipeDeletion_block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 48) - *(a1 + 72);
  v3 = *(a1 + 56) + *(a1 + 56);
  v4 = *(a1 + 32);

  return [v4 setFrame:{0.0, v2, v3}];
}

void ___UITableAnimateSwipeDeletion_block_invoke_5(uint64_t a1, uint64_t a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___UITableAnimateSwipeDeletion_block_invoke_6;
  aBlock[3] = &unk_1E70FE248;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (a2)
  {
    (*(v4 + 2))(v4, 0);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___UITableAnimateSwipeDeletion_block_invoke_7;
    v6[3] = &unk_1E70F3590;
    v7 = *(a1 + 32);
    [UIView animateWithDuration:2 delay:v6 usingSpringWithDamping:v5 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
  }
}

uint64_t ___UITableAnimateSwipeDeletion_block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end