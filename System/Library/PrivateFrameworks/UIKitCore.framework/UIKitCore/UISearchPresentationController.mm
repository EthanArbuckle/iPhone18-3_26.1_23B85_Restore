@interface UISearchPresentationController
@end

@implementation UISearchPresentationController

uint64_t __97___UISearchPresentationController__presentationTransitionWithSearchBarNotHostedByNavBarWillBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) edgeForHidingNavigationBar];
  [a2 transitionDuration];
  result = [v4 _setNavigationBarHidden:1 edgeIfNotNavigating:v5 duration:?];
  if (*(a1 + 88) == 1)
  {
    [objc_msgSend(*(a1 + 40) "searchBarContainerView")];
    v7 = *(a1 + 48);

    return [v7 endRefreshing];
  }

  return result;
}

_BYTE *__94___UISearchPresentationController__dismissalTransitionWithSearchBarNotHostedByNavBarWillBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) edgeForHidingNavigationBar];
  [a2 transitionDuration];
  [v4 _setNavigationBarHidden:0 edgeIfNotNavigating:v5 duration:?];
  result = *(a1 + 40);
  if ((result[464] & 2) != 0)
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = [result searchBarContainerView];

    return [v11 setFrame:{v7, v8, v9, v10}];
  }

  return result;
}

uint64_t __94___UISearchPresentationController__dismissalTransitionWithSearchBarNotHostedByNavBarWillBegin__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setNavigationBarHidesCompletelyOffscreen:0];
  v2 = *(a1 + 32);

  return [v2 _setSearchHidNavigationBar:0];
}

uint64_t __94___UISearchPresentationController__presentationTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  [a2 _presentHostedSearchWithTransitionCoordinator:*(a1 + 32)];
  v4 = [a2 topItem];
  if (([objc_msgSend(v4 "_stackEntry")] & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v15 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v18 = [v4 _stackEntry];
        _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "stackEntry should register searchActive. %@", buf, 0xCu);
      }
    }

    else
    {
      v14 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_VisualizeMaterials_block_invoke___s_category_5) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = [v4 _stackEntry];
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "stackEntry should register searchActive. %@", buf, 0xCu);
      }
    }
  }

  v5 = (*(a1 + 40) + 424);
  [*(a1 + 48) frame];
  *v5 = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  v10 = -[_UINavigationBarLayout layoutHeights]([objc_msgSend(v4 "_stackEntry")]);
  *(*(a1 + 40) + 448) = v11;
  if (![*(a1 + 32) isAnimated])
  {
    return [*(a1 + 56) _layoutTopViewController];
  }

  v12 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94___UISearchPresentationController__presentationTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke_22;
  v16[3] = &unk_1E711EC78;
  v16[4] = *(a1 + 56);
  return [v12 animateAlongsideTransition:v16 completion:0];
}

uint64_t __91___UISearchPresentationController__dismissalTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  [a2 _dismissHostedSearchWithTransitionCoordinator:*(a1 + 32)];
  if ([*(a1 + 32) isAnimated])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __91___UISearchPresentationController__dismissalTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke_3;
    v8[3] = &unk_1E711ED18;
    v5 = *(a1 + 32);
    v8[4] = *(a1 + 40);
    v8[5] = a3;
    return [v5 animateAlongsideTransition:v8 completion:0];
  }

  else
  {
    [*(a1 + 40) _layoutTopViewController];
    v7 = [a3 _stackEntry];

    return [v7 setSearchActive:0];
  }
}

uint64_t __91___UISearchPresentationController__dismissalTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _layoutTopViewController];
  v2 = [*(a1 + 40) _stackEntry];

  return [v2 setSearchActive:0];
}

uint64_t __91___UISearchPresentationController__dismissalTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke_4(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "_stackEntry")];
  v2 = *(a1 + 40);
  if (v2 != *(a1 + 32))
  {
    [objc_msgSend(v2 "_stackEntry")];
  }

  v3 = [*(*(a1 + 48) + 384) searchBar];

  return [v3 _driveTransitionToSearchLayoutState:2];
}

uint64_t __69___UISearchPresentationController__exciseSearchBarFromCurrentContext__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != a2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [a2 constraints];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * v8);
          if (v9)
          {
            v10 = [objc_msgSend(*(*(&v17 + 1) + 8 * v8) "firstItem")];
            v11 = *(a1 + 32);
            v12 = [objc_msgSend(v9 "secondItem")];
            if (v10 != v11)
            {
              v13 = *(a1 + 32);
              goto LABEL_10;
            }
          }

          else
          {
            v13 = *(a1 + 32);
            if (v13)
            {
              v12 = 0;
LABEL_10:
              if (v12 != v13)
              {
                goto LABEL_14;
              }
            }
          }

          v14 = [*(*(a1 + 40) + 408) objectForKey:a2];
          if (!v14)
          {
            v14 = [MEMORY[0x1E695DF70] array];
            [*(*(a1 + 40) + 408) setObject:v14 forKey:a2];
          }

          [v14 addObject:{objc_msgSend(*(a1 + 40), "_constraintCopyOfConstraint:replaceItem:withItem:", v9, *(*(a1 + 40) + 400), *(a1 + 32))}];
LABEL_14:
          ++v8;
        }

        while (v6 != v8);
        v15 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v6 = v15;
      }

      while (v15);
    }
  }

  return 1;
}

uint64_t __117___UISearchPresentationController__updatePresentingViewControllerContentScrollViewWithOffsets_transitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) contentInset];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(a1 + 32) contentOffset];
  v11 = v10;
  v12 = *(a1 + 48);
  v13 = v3 + v12;
  v15 = v14 - v12;
  [*(a1 + 32) setContentInset:{v13, v5, v7, v9}];
  v16 = *(a1 + 32);

  return [v16 setContentOffset:{v11, v15}];
}

@end