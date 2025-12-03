@interface SBHRootFolderSettings
+ (id)settingsControllerModule;
- (CGSize)editModeButtonSize;
- (CGSize)iconImageSizeForGridSizeClass:(id)class;
- (UIEdgeInsets)dockAdditionalIconInsets;
- (UIEdgeInsets)dockPlatterInsets;
- (UIEdgeInsets)landscapeAdditionalWidgetLayoutInsets;
- (UIEdgeInsets)landscapeLayoutInsets;
- (UIEdgeInsets)portraitAdditionalWidgetLayoutInsets;
- (UIEdgeInsets)portraitLayoutInsets;
- (UIOffset)editModeButtonLayoutOffset;
- (double)dockViewHeight;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)setDefaultValues;
@end

@implementation SBHRootFolderSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBHRootFolderSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBHRootFolderSettings *)self setAdjustableLayoutEnabled:0];
  [(SBHRootFolderSettings *)self setPortraitTopLayoutInset:0.0];
  [(SBHRootFolderSettings *)self setPortraitBottomLayoutInset:0.0];
  [(SBHRootFolderSettings *)self setPortraitSideLayoutInset:0.0];
  [(SBHRootFolderSettings *)self setPortraitWidgetOvershoot:0.0];
  [(SBHRootFolderSettings *)self setLandscapeTopLayoutInset:0.0];
  [(SBHRootFolderSettings *)self setLandscapeBottomLayoutInset:0.0];
  [(SBHRootFolderSettings *)self setLandscapeSideLayoutInset:0.0];
  [(SBHRootFolderSettings *)self setLandscapeWidgetOvershoot:0.0];
  [(SBHRootFolderSettings *)self setDockAdditionalIconInset:0.0];
  [(SBHRootFolderSettings *)self setDockCornerRadius:0.0];
  [(SBHRootFolderSettings *)self setDockMargin:0.0];
  [(SBHRootFolderSettings *)self setDockVerticalPadding:0.0];
  [(SBHRootFolderSettings *)self setDefaultIconSize:0.0];
  [(SBHRootFolderSettings *)self setSmallWidgetHeight:0.0];
  [(SBHRootFolderSettings *)self setMediumWidgetWidth:0.0];
  [(SBHRootFolderSettings *)self setLargeIconHeight:0.0];
  [(SBHRootFolderSettings *)self setPageControlVerticalOffset:0.0];
  [(SBHRootFolderSettings *)self setIdleTextVerticalOffset:0.0];
  [(SBHRootFolderSettings *)self setEditModeButtonSizeWidth:0.0];
  [(SBHRootFolderSettings *)self setEditModeButtonSizeHeight:0.0];
  [(SBHRootFolderSettings *)self setEditModeButtonLayoutOffsetHorizontal:0.0];
  [(SBHRootFolderSettings *)self setEditModeButtonLayoutOffsetVertical:0.0];
}

+ (id)settingsControllerModule
{
  v59[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Adjustable Layout" valueKeyPath:@"adjustableLayoutEnabled"];
  v59[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
  v51 = [v2 sectionWithRows:v4];

  v5 = [MEMORY[0x1E69C6618] rowWithTitle:@"Portrait Top Inset" valueKeyPath:@"portraitTopLayoutInset"];
  v58[0] = v5;
  v6 = [MEMORY[0x1E69C6618] rowWithTitle:@"Portrait Bottom Inset" valueKeyPath:@"portraitBottomLayoutInset"];
  v58[1] = v6;
  v7 = [MEMORY[0x1E69C6618] rowWithTitle:@"Portrait Side Insets" valueKeyPath:@"portraitSideLayoutInset"];
  v58[2] = v7;
  v8 = [MEMORY[0x1E69C6618] rowWithTitle:@"Portrait Widget Overshoot" valueKeyPath:@"portraitWidgetOvershoot"];
  v58[3] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];

  __49__SBHRootFolderSettings_settingsControllerModule__block_invoke(v10, v9);
  v50 = [MEMORY[0x1E69C6638] sectionWithRows:v9 title:@"Portrait Insets Adjustments"];
  v11 = [MEMORY[0x1E69C6618] rowWithTitle:@"Landscape Top Inset" valueKeyPath:@"landscapeTopLayoutInset"];
  v57[0] = v11;
  v12 = [MEMORY[0x1E69C6618] rowWithTitle:@"Landscape Bottom Inset" valueKeyPath:@"landscapeBottomLayoutInset"];
  v57[1] = v12;
  v13 = [MEMORY[0x1E69C6618] rowWithTitle:@"Landscape Side Insets" valueKeyPath:@"landscapeSideLayoutInset"];
  v57[2] = v13;
  v14 = [MEMORY[0x1E69C6618] rowWithTitle:@"Landscape Widget Overshoot" valueKeyPath:@"landscapeWidgetOvershoot"];
  v57[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:4];

  __49__SBHRootFolderSettings_settingsControllerModule__block_invoke(v16, v15);
  v49 = [MEMORY[0x1E69C6638] sectionWithRows:v15 title:@"Landscape Insets Adjustments"];
  v17 = [MEMORY[0x1E69C6618] rowWithTitle:@"Dock Additional Icon Inset" valueKeyPath:@"dockAdditionalIconInset"];
  v56[0] = v17;
  v18 = [MEMORY[0x1E69C6618] rowWithTitle:@"Dock Corner Radius" valueKeyPath:@"dockCornerRadius"];
  v56[1] = v18;
  v19 = [MEMORY[0x1E69C6618] rowWithTitle:@"Dock External Margin" valueKeyPath:@"dockMargin"];
  v56[2] = v19;
  v20 = [MEMORY[0x1E69C6618] rowWithTitle:@"Dock Vertical Padding" valueKeyPath:@"dockVerticalPadding"];
  v56[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:4];

  __49__SBHRootFolderSettings_settingsControllerModule__block_invoke(v22, v21);
  v48 = [MEMORY[0x1E69C6638] sectionWithRows:v21 title:@"Dock Adjustments"];
  v23 = [MEMORY[0x1E69C6618] rowWithTitle:@"Page Control Vertical Offset" valueKeyPath:@"pageControlVerticalOffset"];
  v55[0] = v23;
  v24 = [MEMORY[0x1E69C6618] rowWithTitle:@"Carrier Text Vertical Offset" valueKeyPath:@"idleTextVerticalOffset"];
  v55[1] = v24;
  v25 = [MEMORY[0x1E69C6618] rowWithTitle:@"Edit Button Width" valueKeyPath:@"editModeButtonSizeWidth"];
  v55[2] = v25;
  v26 = [MEMORY[0x1E69C6618] rowWithTitle:@"Edit Button Height" valueKeyPath:@"editModeButtonSizeHeight"];
  v55[3] = v26;
  v27 = [MEMORY[0x1E69C6618] rowWithTitle:@"Edit Button Horizontal Offset" valueKeyPath:@"editModeButtonLayoutOffsetHorizontal"];
  v55[4] = v27;
  v28 = [MEMORY[0x1E69C6618] rowWithTitle:@"Edit Button Vertical Offset" valueKeyPath:@"editModeButtonLayoutOffsetVertical"];
  v55[5] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:6];

  __49__SBHRootFolderSettings_settingsControllerModule__block_invoke(v30, v29);
  v31 = [MEMORY[0x1E69C6638] sectionWithRows:v29 title:@"Other UI Adjustments"];
  v32 = [MEMORY[0x1E69C6618] rowWithTitle:@"Icon Size" valueKeyPath:@"defaultIconSize"];
  v54[0] = v32;
  v33 = [MEMORY[0x1E69C6618] rowWithTitle:@"Small Widget Height" valueKeyPath:@"smallWidgetHeight"];
  v54[1] = v33;
  v34 = [MEMORY[0x1E69C6618] rowWithTitle:@"Medium Widget Width" valueKeyPath:@"mediumWidgetWidth"];
  v54[2] = v34;
  v35 = [MEMORY[0x1E69C6618] rowWithTitle:@"Large Widget Height" valueKeyPath:@"largeIconHeight"];
  v54[3] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4];

  __49__SBHRootFolderSettings_settingsControllerModule__block_invoke(v37, v36);
  v38 = [MEMORY[0x1E69C6638] sectionWithRows:v36 title:@"Icon Size Adjustments"];
  v39 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v41 = [v39 rowWithTitle:@"Restore Defaults" action:action];
  v53 = v41;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];

  v42 = [MEMORY[0x1E69C6638] sectionWithRows:v47];
  v43 = MEMORY[0x1E69C6638];
  v52[0] = v51;
  v52[1] = v50;
  v52[2] = v48;
  v52[3] = v38;
  v52[4] = v31;
  v52[5] = v49;
  v52[6] = v42;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:7];
  v45 = [v43 moduleWithTitle:@"Root Folder" contents:v44];

  return v45;
}

void __49__SBHRootFolderSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 setMaxValue:1000.0];
        [v7 setMinValue:-1000.0];
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (UIEdgeInsets)portraitLayoutInsets
{
  [(SBHRootFolderSettings *)self portraitTopLayoutInset];
  v4 = v3;
  [(SBHRootFolderSettings *)self portraitBottomLayoutInset];
  v6 = v5;
  [(SBHRootFolderSettings *)self portraitSideLayoutInset];
  v8 = v7;
  v9 = v4;
  v10 = v6;
  v11 = v8;
  result.right = v11;
  result.bottom = v10;
  result.left = v8;
  result.top = v9;
  return result;
}

- (UIEdgeInsets)portraitAdditionalWidgetLayoutInsets
{
  [(SBHRootFolderSettings *)self portraitWidgetOvershoot];
  v3 = -v2;
  v4 = 0.0;
  v5 = 0.0;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v3;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)landscapeLayoutInsets
{
  [(SBHRootFolderSettings *)self landscapeTopLayoutInset];
  v4 = v3;
  [(SBHRootFolderSettings *)self landscapeBottomLayoutInset];
  v6 = v5;
  [(SBHRootFolderSettings *)self landscapeSideLayoutInset];
  v8 = v7;
  v9 = v4;
  v10 = v6;
  v11 = v8;
  result.right = v11;
  result.bottom = v10;
  result.left = v8;
  result.top = v9;
  return result;
}

- (UIEdgeInsets)landscapeAdditionalWidgetLayoutInsets
{
  [(SBHRootFolderSettings *)self landscapeWidgetOvershoot];
  v3 = -v2;
  v4 = 0.0;
  v5 = 0.0;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v3;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)dockAdditionalIconInsets
{
  [(SBHRootFolderSettings *)self dockAdditionalIconInset];
  v3 = v2;
  v4 = 0.0;
  v5 = 0.0;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v3;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)dockPlatterInsets
{
  [(SBHRootFolderSettings *)self dockMargin];
  v3 = v2;
  v4 = 0.0;
  v5 = v3;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v3;
  result.top = v4;
  return result;
}

- (double)dockViewHeight
{
  [(SBHRootFolderSettings *)self dockVerticalPadding];
  v4 = v3;
  [(SBHRootFolderSettings *)self dockMargin];
  return v5 + v4 * 2.0;
}

- (CGSize)iconImageSizeForGridSizeClass:(id)class
{
  classCopy = class;
  [(SBHRootFolderSettings *)self defaultIconSize];
  v6 = v5;
  [(SBHRootFolderSettings *)self smallWidgetHeight];
  v8 = v7;
  [(SBHRootFolderSettings *)self mediumWidgetWidth];
  v10 = v9;
  [(SBHRootFolderSettings *)self largeIconHeight];
  if (@"SBHIconGridSizeClassDefault" == classCopy)
  {
    v13 = v6;
  }

  else
  {
    v12 = v11;
    v13 = v6;
    if (([(__CFString *)classCopy isEqualToString:?]& 1) == 0)
    {
      if (@"SBHIconGridSizeClassSmall" == classCopy || ([(__CFString *)classCopy isEqualToString:?]& 1) != 0)
      {
        v6 = v8;
        v13 = v8;
      }

      else
      {
        if (@"SBHIconGridSizeClassMedium" == classCopy || ([(__CFString *)classCopy isEqualToString:?]& 1) != 0)
        {
          v6 = v8;
        }

        else
        {
          if (@"SBHIconGridSizeClassLarge" != classCopy && ![(__CFString *)classCopy isEqualToString:?])
          {
            v13 = *MEMORY[0x1E695F060];
            v6 = *(MEMORY[0x1E695F060] + 8);
            goto LABEL_7;
          }

          v6 = v12;
        }

        v13 = v10;
      }
    }
  }

LABEL_7:

  v14 = v13;
  v15 = v6;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)editModeButtonSize
{
  [(SBHRootFolderSettings *)self editModeButtonSizeWidth];
  v4 = v3;
  [(SBHRootFolderSettings *)self editModeButtonSizeHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (UIOffset)editModeButtonLayoutOffset
{
  [(SBHRootFolderSettings *)self editModeButtonLayoutOffsetHorizontal];
  v4 = v3;
  [(SBHRootFolderSettings *)self editModeButtonLayoutOffsetVertical];
  v6 = v5;
  v7 = v4;
  result.vertical = v6;
  result.horizontal = v7;
  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHRootFolderSettings *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHRootFolderSettings *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBHRootFolderSettings *)self succinctDescriptionBuilder];
  v6 = SBHScreenTypeForCurrentDevice();
  v7 = SBHStringForScreenType(v6);
  [succinctDescriptionBuilder appendString:v7 withName:@"layout"];

  v8 = [succinctDescriptionBuilder appendBool:-[SBHRootFolderSettings isAdjustableLayoutEnabled](self withName:{"isAdjustableLayoutEnabled"), @"adjustableLayoutEnabled"}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__SBHRootFolderSettings_descriptionBuilderWithMultilinePrefix___block_invoke;
  v12[3] = &unk_1E8088F18;
  v9 = succinctDescriptionBuilder;
  v13 = v9;
  selfCopy = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v12];

  v10 = v9;
  return v9;
}

id __63__SBHRootFolderSettings_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) portraitTopLayoutInset];
  v3 = [v2 appendFloat:@"portraitTopLayoutInset" withName:?];
  v4 = *(a1 + 32);
  [*(a1 + 40) portraitBottomLayoutInset];
  v5 = [v4 appendFloat:@"portraitBottomLayoutInset" withName:?];
  v6 = *(a1 + 32);
  [*(a1 + 40) portraitSideLayoutInset];
  v7 = [v6 appendFloat:@"portraitSideLayoutInset" withName:?];
  v8 = *(a1 + 32);
  [*(a1 + 40) portraitWidgetOvershoot];
  v9 = [v8 appendFloat:@"portraitWidgetOvershoot" withName:?];
  v10 = *(a1 + 32);
  [*(a1 + 40) landscapeTopLayoutInset];
  v11 = [v10 appendFloat:@"landscapeTopLayoutInset" withName:?];
  v12 = *(a1 + 32);
  [*(a1 + 40) landscapeBottomLayoutInset];
  v13 = [v12 appendFloat:@"landscapeBottomLayoutInset" withName:?];
  v14 = *(a1 + 32);
  [*(a1 + 40) landscapeSideLayoutInset];
  v15 = [v14 appendFloat:@"landscapeSideLayoutInset" withName:?];
  v16 = *(a1 + 32);
  [*(a1 + 40) landscapeWidgetOvershoot];
  v17 = [v16 appendFloat:@"landscapeWidgetOvershoot" withName:?];
  v18 = *(a1 + 32);
  [*(a1 + 40) dockAdditionalIconInset];
  v19 = [v18 appendFloat:@"dockAdditionalIconInset" withName:?];
  v20 = *(a1 + 32);
  [*(a1 + 40) dockCornerRadius];
  v21 = [v20 appendFloat:@"dockCornerRadius" withName:?];
  v22 = *(a1 + 32);
  [*(a1 + 40) dockMargin];
  v23 = [v22 appendFloat:@"dockMargin" withName:?];
  v24 = *(a1 + 32);
  [*(a1 + 40) dockVerticalPadding];
  v25 = [v24 appendFloat:@"dockVerticalPadding" withName:?];
  v26 = *(a1 + 32);
  [*(a1 + 40) defaultIconSize];
  v27 = [v26 appendFloat:@"defaultIconSize" withName:?];
  v28 = *(a1 + 32);
  [*(a1 + 40) smallWidgetHeight];
  v29 = [v28 appendFloat:@"smallWidgetHeight" withName:?];
  v30 = *(a1 + 32);
  [*(a1 + 40) mediumWidgetWidth];
  v31 = [v30 appendFloat:@"mediumWidgetWidth" withName:?];
  v32 = *(a1 + 32);
  [*(a1 + 40) largeIconHeight];
  v33 = [v32 appendFloat:@"largeIconHeight" withName:?];
  v34 = *(a1 + 32);
  [*(a1 + 40) pageControlVerticalOffset];
  v35 = [v34 appendFloat:@"pageControlVerticalOffset" withName:?];
  v36 = *(a1 + 32);
  [*(a1 + 40) idleTextVerticalOffset];
  v37 = [v36 appendFloat:@"idleTextVerticalOffset" withName:?];
  v38 = *(a1 + 32);
  [*(a1 + 40) editModeButtonSizeWidth];
  v39 = [v38 appendFloat:@"editModeButtonSizeWidth" withName:?];
  v40 = *(a1 + 32);
  [*(a1 + 40) editModeButtonSizeHeight];
  v41 = [v40 appendFloat:@"editModeButtonSizeHeight" withName:?];
  v42 = *(a1 + 32);
  [*(a1 + 40) editModeButtonLayoutOffsetHorizontal];
  v43 = [v42 appendFloat:@"editModeButtonLayoutOffsetHorizontal" withName:?];
  v44 = *(a1 + 32);
  [*(a1 + 40) editModeButtonLayoutOffsetVertical];
  return [v44 appendFloat:@"editModeButtonLayoutOffsetVertical" withName:?];
}

@end