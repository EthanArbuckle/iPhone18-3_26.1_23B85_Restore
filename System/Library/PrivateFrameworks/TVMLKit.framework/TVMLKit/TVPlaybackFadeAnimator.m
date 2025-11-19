@interface TVPlaybackFadeAnimator
@end

@implementation TVPlaybackFadeAnimator

void __107___TVPlaybackFadeAnimator__beginFadeAnimationFromViewController_toViewController_containerView_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 40) setHidden:0];
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 48) removeFromSuperview];
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = MEMORY[0x277D75D18];
    v6 = *(a1 + 64);
    if (*(a1 + 73))
    {
      v7 = 0x20000;
    }

    else
    {
      v7 = 0;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __107___TVPlaybackFadeAnimator__beginFadeAnimationFromViewController_toViewController_containerView_completion___block_invoke_3;
    v11[3] = &unk_279D6E7F8;
    v12 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __107___TVPlaybackFadeAnimator__beginFadeAnimationFromViewController_toViewController_containerView_completion___block_invoke_4;
    v8[3] = &unk_279D6F090;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v5 animateWithDuration:v7 delay:v11 options:v8 animations:v6 completion:0.0];
  }
}

uint64_t __107___TVPlaybackFadeAnimator__beginFadeAnimationFromViewController_toViewController_containerView_completion___block_invoke_4(uint64_t a1)
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