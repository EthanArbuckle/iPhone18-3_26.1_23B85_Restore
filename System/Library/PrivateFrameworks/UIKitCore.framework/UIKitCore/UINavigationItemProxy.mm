@interface UINavigationItemProxy
@end

@implementation UINavigationItemProxy

void __57___UINavigationItemProxy_reloadDestinationItemFromSource__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) title];
  [*(*(a1 + 32) + 8) setTitle:v2];

  v3 = [*(a1 + 40) _attributedTitle];
  [*(*(a1 + 32) + 8) _setAttributedTitle:v3];

  v4 = [*(a1 + 40) titleView];
  [*(*(a1 + 32) + 8) setTitleView:v4];

  v5 = [*(a1 + 40) _weeTitle];
  [*(*(a1 + 32) + 8) _setWeeTitle:v5];

  v6 = [*(a1 + 40) _subtitle];
  [*(*(a1 + 32) + 8) _setSubtitle:v6];

  v7 = [*(a1 + 40) _attributedSubtitle];
  [*(*(a1 + 32) + 8) _setAttributedSubtitle:v7];

  v8 = [*(a1 + 40) _subtitleView];
  [*(*(a1 + 32) + 8) _setSubtitleView:v8];

  v9 = [*(a1 + 40) _largeTitle];
  [*(*(a1 + 32) + 8) _setLargeTitle:v9];

  v10 = [*(a1 + 40) _largeTitleView];
  [*(*(a1 + 32) + 8) _setLargeTitleView:v10];

  v11 = [*(a1 + 40) _largeSubtitle];
  [*(*(a1 + 32) + 8) _setLargeSubtitle:v11];

  v12 = [*(a1 + 40) _largeAttributedSubtitle];
  [*(*(a1 + 32) + 8) _setLargeAttributedSubtitle:v12];

  v13 = [*(a1 + 40) _largeSubtitleView];
  [*(*(a1 + 32) + 8) _setLargeSubtitleView:v13];

  v44 = 0;
  v45 = 0;
  [*(a1 + 40) _getLeadingItems:&v45 groups:&v44];
  if (v45)
  {
    v14 = *(*(a1 + 32) + 8);
LABEL_3:
    [v14 setLeftBarButtonItems:?];
    goto LABEL_6;
  }

  v15 = *(*(a1 + 32) + 8);
  if (v44)
  {
    goto LABEL_5;
  }

  v30 = [v15 leftBarButtonItems];
  if (v30)
  {
    v31 = v30;
    v32 = [*(a1 + 40) leftBarButtonItems];

    if (!v32)
    {
      v14 = *(*(a1 + 32) + 8);
      goto LABEL_3;
    }
  }

  v33 = [*(*(a1 + 32) + 8) leadingItemGroups];
  if ([v33 count])
  {
    v34 = [*(a1 + 40) leadingItemGroups];
    v35 = [v34 count];

    if (!v35)
    {
      v15 = *(*(a1 + 32) + 8);
LABEL_5:
      [v15 setLeadingItemGroups:?];
    }
  }

  else
  {
  }

LABEL_6:
  v42 = 0;
  v43 = 0;
  [*(a1 + 40) _getTrailingItems:&v43 groups:&v42];
  if (v43)
  {
    v16 = *(*(a1 + 32) + 8);
LABEL_8:
    [v16 setRightBarButtonItems:?];
    goto LABEL_11;
  }

  v17 = *(*(a1 + 32) + 8);
  if (v42)
  {
LABEL_10:
    [v17 setTrailingItemGroups:?];
    goto LABEL_11;
  }

  v36 = [v17 rightBarButtonItems];
  if (v36)
  {
    v37 = v36;
    v38 = [*(a1 + 40) rightBarButtonItems];

    if (!v38)
    {
      v16 = *(*(a1 + 32) + 8);
      goto LABEL_8;
    }
  }

  v39 = [*(*(a1 + 32) + 8) trailingItemGroups];
  if (![v39 count])
  {

    goto LABEL_11;
  }

  v40 = [*(a1 + 40) trailingItemGroups];
  v41 = [v40 count];

  if (!v41)
  {
    v17 = *(*(a1 + 32) + 8);
    goto LABEL_10;
  }

LABEL_11:
  [*(*(a1 + 32) + 8) setHidesBackButton:{objc_msgSend(*(a1 + 40), "hidesBackButton")}];
  [*(*(a1 + 32) + 8) setLeftItemsSupplementBackButton:{objc_msgSend(*(a1 + 40), "leftItemsSupplementBackButton")}];
  v18 = [*(a1 + 40) backButtonTitle];
  [*(*(a1 + 32) + 8) setBackButtonTitle:v18];

  v19 = [*(a1 + 40) backBarButtonItem];
  [*(*(a1 + 32) + 8) setBackBarButtonItem:v19];

  [*(*(a1 + 32) + 8) setLargeTitleDisplayMode:{objc_msgSend(*(a1 + 40), "largeTitleDisplayMode")}];
  v20 = [*(a1 + 40) _largeTitleAccessoryView];
  [*(*(a1 + 32) + 8) _setLargeTitleAccessoryView:v20];

  [*(*(a1 + 32) + 8) _setLargeTitleTwoLineMode:{objc_msgSend(*(a1 + 40), "_largeTitleTwoLineMode")}];
  v21 = [*(a1 + 40) compactAppearance];
  [*(*(a1 + 32) + 8) setCompactAppearance:v21];

  v22 = [*(a1 + 40) standardAppearance];
  [*(*(a1 + 32) + 8) setStandardAppearance:v22];

  v23 = [*(a1 + 40) scrollEdgeAppearance];
  [*(*(a1 + 32) + 8) setScrollEdgeAppearance:v23];

  [*(*(a1 + 32) + 8) _setBackgroundHidden:{objc_msgSend(*(a1 + 40), "_backgroundHidden")}];
  [*(*(a1 + 32) + 8) _setManualScrollEdgeAppearanceEnabled:{objc_msgSend(*(a1 + 40), "_isManualScrollEdgeAppearanceEnabled")}];
  [*(a1 + 40) _manualScrollEdgeAppearanceProgress];
  [*(*(a1 + 32) + 8) _setManualScrollEdgeAppearanceProgress:?];
  v24 = [*(a1 + 40) prompt];
  [*(*(a1 + 32) + 8) setPrompt:v24];

  v25 = [*(a1 + 40) searchController];
  [*(*(a1 + 32) + 8) setSearchController:v25];

  [*(*(a1 + 32) + 8) setHidesSearchBarWhenScrolling:{objc_msgSend(*(a1 + 40), "hidesSearchBarWhenScrolling")}];
  [*(*(a1 + 32) + 8) setPreferredSearchBarPlacement:{objc_msgSend(*(a1 + 40), "preferredSearchBarPlacement")}];
  [*(*(a1 + 32) + 8) setSearchBarPlacementAllowsToolbarIntegration:{objc_msgSend(*(a1 + 40), "searchBarPlacementAllowsToolbarIntegration")}];
  [*(*(a1 + 32) + 8) setSearchBarPlacementAllowsExternalIntegration:{objc_msgSend(*(a1 + 40), "searchBarPlacementAllowsExternalIntegration")}];
  v26 = [*(a1 + 40) centerItemGroups];
  [*(*(a1 + 32) + 8) setCenterItemGroups:v26];

  v27 = [*(a1 + 40) additionalOverflowItems];
  [*(*(a1 + 32) + 8) setAdditionalOverflowItems:v27];

  [*(*(a1 + 32) + 8) _setPreferredNavigationBarVisibility:{objc_msgSend(*(a1 + 40), "_navigationBarVisibility")}];
  [*(*(a1 + 32) + 8) _setNavigationBarHidden:{objc_msgSend(*(a1 + 40), "_isNavigationBarHidden")}];
  v28 = [*(a1 + 40) _topPalette];
  [*(*(a1 + 32) + 8) _setTopPalette:v28];

  v29 = [*(a1 + 40) _bottomPalette];
  [*(*(a1 + 32) + 8) _setBottomPalette:v29];

  [*(*(a1 + 32) + 8) _setAllowsInteractivePopWhenNavigationBarHidden:{objc_msgSend(*(a1 + 40), "_allowsInteractivePopWhenNavigationBarHidden")}];
  [*(*(a1 + 32) + 8) _setAllowsInteractivePopWhenBackButtonHidden:{objc_msgSend(*(a1 + 40), "_allowsInteractivePopWhenBackButtonHidden")}];
}

@end