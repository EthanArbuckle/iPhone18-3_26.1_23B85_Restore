@interface UIKeyShortcutHUDViewController
@end

@implementation UIKeyShortcutHUDViewController

void __86___UIKeyShortcutHUDViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained isCompletelyPresented])
  {
    v4 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) view];
      [v5 size];
      v6 = NSStringFromCGSize(v14);
      v7 = NSStringFromCGSize(*(a1 + 48));
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing HUD due to VC resize: oldSize=%{public}@, newSize=%{public}@", &v9, 0x16u);
    }

    v8 = [v3 delegate];
    [v8 keyShortcutHUDViewControllerDidRequestDismissal:v3];
  }
}

void __63___UIKeyShortcutHUDViewController_setHidden_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 40) == 1)
    {
      v4 = &_UIKeyShortcutHUDAnimationShrunkTransform;
    }

    else
    {
      v4 = MEMORY[0x1E695EFD0];
    }

    v5 = v4[1];
    v10 = *v4;
    v11 = v5;
    v12 = v4[2];
    v6 = [WeakRetained hudContainerView];
    v9[0] = v10;
    v9[1] = v11;
    v9[2] = v12;
    [v6 setTransform:v9];

    if (*(a1 + 40))
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = [v3 hudContainerView];
    [v8 setAlpha:v7];
  }
}

void __63___UIKeyShortcutHUDViewController_setHidden_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      *(WeakRetained + 994) = 1;
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = v3;
      (*(v4 + 16))();
      v3 = v5;
    }
  }
}

void __57___UIKeyShortcutHUDViewController_handleModelKeyCommand___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v7 = [v4 delegate];
    [v7 keyShortcutHUDViewController:*(a1 + 32) didSelectShortcut:*(a1 + 40)];
  }

  else
  {
    v6 = v4[132];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57___UIKeyShortcutHUDViewController_handleModelKeyCommand___block_invoke_2;
    v8[3] = &unk_1E70F3C60;
    v8[4] = v4;
    v9 = *(a1 + 40);
    [v6 flashCategoryAtIndex:a3 completionHandler:v8];
  }
}

void __57___UIKeyShortcutHUDViewController_handleModelKeyCommand___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 keyShortcutHUDViewController:*(a1 + 32) didSelectShortcut:*(a1 + 40)];
}

void __66___UIKeyShortcutHUDViewController__focusTopSearchResultWithDelay___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isSearching])
  {
    [*(*(a1 + 32) + 1136) setNextFocusUpdatePrefersTopSearchResult:1];
    v4 = [*(a1 + 32) toolbarVC];
    v2 = [v4 searchBar];
    v3 = [v2 searchTextField];
    [v3 setNeedsFocusUpdate];
  }
}

void __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = 1.0;
    if (*(a1 + 40) == 1)
    {
      if (*(a1 + 41))
      {
        v3 = 1.0;
      }

      else
      {
        v3 = 0.0;
      }
    }

    v6 = WeakRetained;
    v4 = [WeakRetained menuVC];
    v5 = [v4 view];
    [v5 setAlpha:v3];

    WeakRetained = v6;
  }
}

void __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained view];
    [v4 layoutIfNeeded];

    if (*(a1 + 56) != 1 || *(a1 + 57) == 1 && (v7[0] = MEMORY[0x1E69E9820], v7[1] = 3221225472, v7[2] = __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_3, v7[3] = &unk_1E70F67F8, v7[4] = v3, v9 = 1, v8 = *(a1 + 32), v10 = *(a1 + 58), +[UIView performWithoutAnimation:](UIView, "performWithoutAnimation:", v7), [*(a1 + 40) _focusTopSearchResultWithDelay:1], v8, (*(a1 + 56) & 1) == 0))
    {
      if (*(a1 + 59) == 1)
      {
        v5 = [v3 menuVC];
        [v5 setSearching:*(a1 + 56)];

        [v3 _updateDisplayedMenuForCurrentHeldModifierFlagsAnimated:*(a1 + 58)];
      }
    }

    v6 = [v3 toolbarVC];
    [v6 setSearching:*(a1 + 56)];
  }
}

uint64_t __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) menuVC];
  [v2 setSearching:*(a1 + 48)];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 49);

  return [v3 _setDisplayedMenu:v4 animated:v5];
}

void __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == 1 && (*(a1 + 41) & 1) == 0)
  {
    v7 = WeakRetained;
    if (!a2)
    {
      v5 = [WeakRetained metrics];
      [v5 hiddenMenuPanelHeight];
      [v7 _setMenuHeight:?];
    }

    v6 = [v7 menuVC];
    [v6 setSearching:*(a1 + 40)];

    WeakRetained = v7;
  }
}

void __76___UIKeyShortcutHUDViewController__setSearching_animated_initialSearchText___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained menuVC];
    [v2 didCompleteSearchTransition];

    v3 = [v4 toolbarVC];
    [v3 didCompleteSearchTransition];

    WeakRetained = v4;
  }
}

void __77___UIKeyShortcutHUDViewController_toolbarViewController_didUpdateSearchText___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*(a1 + 40))
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }

    v6 = WeakRetained;
    v4 = [WeakRetained menuVC];
    v5 = [v4 view];
    [v5 setAlpha:v3];

    WeakRetained = v6;
  }
}

void __77___UIKeyShortcutHUDViewController_toolbarViewController_didUpdateSearchText___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!a2 && WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _setMenuHeight:*(a1 + 48)];
    [v5 _setMenuWidth:*(a1 + 56)];
    [v5 _setDisplayedMenu:*(a1 + 32) animated:0];
    WeakRetained = v5;
  }
}

@end