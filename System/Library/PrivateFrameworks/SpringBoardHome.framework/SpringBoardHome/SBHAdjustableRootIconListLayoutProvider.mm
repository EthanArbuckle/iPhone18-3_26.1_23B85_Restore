@interface SBHAdjustableRootIconListLayoutProvider
- (id)layoutForIconLocation:(id)a3;
@end

@implementation SBHAdjustableRootIconListLayoutProvider

- (id)layoutForIconLocation:(id)a3
{
  v4 = a3;
  if (layoutForIconLocation__onceToken != -1)
  {
    [SBHAdjustableRootIconListLayoutProvider layoutForIconLocation:];
  }

  if (SBIconLocationGroupContainsLocation(layoutForIconLocation__sAdjustableLocationGroup, v4))
  {
    v63.receiver = self;
    v63.super_class = SBHAdjustableRootIconListLayoutProvider;
    v5 = [(SBHDefaultIconListLayoutProvider *)&v63 layoutForIconLocation:v4];
    v6 = [v5 layoutConfiguration];
    v7 = [v6 copy];

    v8 = +[SBHHomeScreenDomain rootSettings];
    v9 = [v8 rootFolderSettings];

    v10 = objc_opt_self();
    objc_opt_isKindOfClass();

    if (([v4 isEqualToString:@"SBIconLocationRoot"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"SBIconLocationRootWithWidgets"))
    {
      [v7 portraitLayoutInsets];
      [v9 portraitLayoutInsets];
      UIEdgeInsetsAdd();
      [v7 setPortraitLayoutInsets:?];
      [v7 landscapeLayoutInsets];
      [v9 landscapeLayoutInsets];
      UIEdgeInsetsAdd();
      [v7 setLandscapeLayoutInsets:?];
      [v7 portraitAdditionalWidgetLayoutInsets];
      [v9 portraitAdditionalWidgetLayoutInsets];
      UIEdgeInsetsAdd();
      [v7 setPortraitAdditionalWidgetLayoutInsets:?];
      [v7 landscapeAdditionalWidgetLayoutInsets];
      [v9 landscapeAdditionalWidgetLayoutInsets];
      UIEdgeInsetsAdd();
      [v7 setLandscapeAdditionalWidgetLayoutInsets:?];
    }

    else if ([v4 isEqualToString:@"SBIconLocationDock"])
    {
      [v7 portraitLayoutInsets];
      [v9 portraitLayoutInsets];
      UIEdgeInsetsAdd();
      [v9 dockAdditionalIconInsets];
      UIEdgeInsetsAdd();
      [v7 setPortraitLayoutInsets:?];
    }

    v11 = +[SBHIconGridSizeClassSet gridSizeClassSetForAllGridSizeClasses];
    v12 = +[SBHIconGridSizeClassDomain builtInDomain];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __65__SBHAdjustableRootIconListLayoutProvider_layoutForIconLocation___block_invoke_2;
    v60[3] = &unk_1E808ED50;
    v13 = v7;
    v61 = v13;
    v14 = v9;
    v62 = v14;
    [v11 enumerateGridSizeClassesInDomain:v12 usingBlock:v60];
    v15 = [v13 rootFolderVisualConfiguration];
    [v14 dockPlatterInsets];
    [v15 dockBackgroundViewInsets];
    UIEdgeInsetsAdd();
    v58 = v16;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [v15 dockListViewInsets];
    UIEdgeInsetsAdd();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [v15 dockViewHeight];
    v32 = v31;
    [v14 dockViewHeight];
    [v15 setDockViewHeight:v32 + v33];
    [v15 dockBackgroundViewCornerRadius];
    v35 = v34;
    [v14 dockCornerRadius];
    [v15 setDockBackgroundViewCornerRadius:v35 + v36];
    [v15 setDockListViewInsets:{v24, v26, v28, v30}];
    [v15 setDockBackgroundViewInsets:{v58, v18, v20, v22}];
    [v15 pageControlVerticalOffset];
    v38 = v37;
    [v14 pageControlVerticalOffset];
    [v15 setPageControlVerticalOffset:v38 + v39];
    [v15 idleTextVerticalOffset];
    v41 = v40;
    [v14 idleTextVerticalOffset];
    [v15 setIdleTextVerticalOffset:v41 + v42];
    [v15 editModeButtonSize];
    v44 = v43;
    v46 = v45;
    [v14 editModeButtonSize];
    [v15 setEditModeButtonSize:{v44 + v47, v46 + v48}];
    [v15 editModeButtonLayoutOffset];
    v50 = v49;
    v52 = v51;
    [v14 editModeButtonLayoutOffset];
    [v15 setEditModeButtonLayoutOffset:{v50 + v53, v52 + v54}];
    v55 = objc_opt_self();

    v56 = [[v55 alloc] initWithLayoutConfiguration:v13];
  }

  else
  {
    v59.receiver = self;
    v59.super_class = SBHAdjustableRootIconListLayoutProvider;
    v56 = [(SBHDefaultIconListLayoutProvider *)&v59 layoutForIconLocation:v4];
  }

  return v56;
}

void __65__SBHAdjustableRootIconListLayoutProvider_layoutForIconLocation___block_invoke()
{
  v0 = layoutForIconLocation__sAdjustableLocationGroup;
  layoutForIconLocation__sAdjustableLocationGroup = @"AdjustableLocationGroup";

  SBIconLocationGroupAddLocation(@"AdjustableLocationGroup", @"SBIconLocationRoot");
  SBIconLocationGroupAddLocation(@"AdjustableLocationGroup", @"SBIconLocationRootWithWidgets");

  SBIconLocationGroupAddLocation(@"AdjustableLocationGroup", @"SBIconLocationDock");
}

void __65__SBHAdjustableRootIconListLayoutProvider_layoutForIconLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v14 = a2;
  [v3 iconImageInfoForGridSizeClass:v14];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(a1 + 40) iconImageSizeForGridSizeClass:v14];
  [*(a1 + 32) setIconImageInfo:v14 forGridSizeClass:{v5 + v12, v7 + v13, v9, v11}];
}

@end