@interface SBHUDHostViewController
@end

@implementation SBHUDHostViewController

void __79___SBHUDHostViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 1000);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) HUDViewController];
        v8 = [v7 view];
        [v8 setFrame:{0.0, 0.0, *(a1 + 40), *(a1 + 48)}];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

uint64_t __50___SBHUDHostViewController_knownHUDForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

uint64_t __59___SBHUDHostViewController_dismissHUD_animated_completion___block_invoke(uint64_t a1, unsigned int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained && (v5 = [*(*(a1 + 32) + 1000) containsObject:WeakRetained], WeakRetained = v8, a2) && v5)
  {
    [*(a1 + 32) _executeDismissHUD:v8 animated:0 completion:*(a1 + 40)];
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, a2, WeakRetained);
    }
  }

  return MEMORY[0x2821F9730]();
}

uint64_t __118___SBHUDHostViewController__buildTransitionContextToPresentHUD_dismissHUD_animated_delegate_containerView_completion___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 == 1)
  {
    [*(result + 32) didMoveToParentViewController:*(result + 48)];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v6 = v2[5];
      v7 = v2[6];
      v8 = v2[7];

      return [v6 hudViewController:v7 didPresentHUD:v8];
    }
  }

  else if (!a2)
  {
    [*(result + 32) removeFromParentViewController];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v3 = v2[5];
      v4 = v2[6];
      v5 = v2[7];

      return [v3 hudViewController:v4 didDismissHUD:v5];
    }
  }

  return result;
}

uint64_t __118___SBHUDHostViewController__buildTransitionContextToPresentHUD_dismissHUD_animated_delegate_containerView_completion___block_invoke_2(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 == 1)
  {
    [*(result + 32) removeFromParentViewController];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v7 = v2[5];
      v6 = v2[6];
      v8 = v2[7];

      return [v6 hudViewController:v7 didDismissHUD:v8];
    }
  }

  else if (!a2)
  {
    [*(result + 32) didMoveToParentViewController:*(result + 40)];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = v2[5];
      v3 = v2[6];
      v5 = v2[7];

      return [v3 hudViewController:v4 didPresentHUD:v5];
    }
  }

  return result;
}

uint64_t __70___SBHUDHostViewController__executePresentNewHUD_animated_completion___block_invoke(void *a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1[4] + 1000) addObject:a1[5]];
  }

  result = a1[6];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __70___SBHUDHostViewController__executePresentNewHUD_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [*(a1 + 40) view];
  [v3 bounds];
  [v2 setFrame:?];

  v4 = [*(a1 + 40) view];
  v5 = [*(a1 + 32) view];
  [v4 addSubview:v5];

  v6 = [*(a1 + 40) view];
  [v6 layoutIfNeeded];
}

uint64_t __67___SBHUDHostViewController__executeDismissHUD_animated_completion___block_invoke(void *a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1[4] + 1000) removeObject:a1[5]];
    [*(a1[4] + 1008) removeObject:a1[5]];
  }

  result = a1[6];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __67___SBHUDHostViewController__executeDismissHUD_animated_completion___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 removeFromSuperview];
}

@end