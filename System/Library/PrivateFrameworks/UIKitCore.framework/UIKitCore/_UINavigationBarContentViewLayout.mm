@interface _UINavigationBarContentViewLayout
- ($BC0A1C2077D899513996B358CDF2CFD6)currentButtonBarLayoutInfo;
- ($F24F406B2B787EFB06265DBA3D28CBD5)largeTitleHeightRange;
- (BOOL)_augmentedTitleViewIgnoresResolvedHeight;
- (BOOL)_canCustomizeBar;
- (BOOL)_overflowRequired;
- (BOOL)_renameShouldTakeOverContentView;
- (BOOL)_wantsBaselineAlignedTitle;
- (BOOL)_wantsExtendedBarHeightWithTabBar;
- (NSArray)centerBarGroups;
- (NSArray)leadingGroups;
- (NSArray)trailingGroups;
- (NSDirectionalEdgeInsets)layoutMargins;
- (NSString)currentBackButtonTitle;
- (NSString)description;
- (UIBarButtonItem)leadingVisibleItem;
- (UIBarButtonItem)trailingClippingItem;
- (UIBarButtonItem)trailingVisibleItem;
- (UIOffset)titlePositionAdjustment;
- (_UIBarButtonItemSearchBarGroup)centerSearchBarGroup;
- (_UIBarButtonItemSearchBarGroup)trailingSearchBarGroup;
- (_UIButtonBar)centerBar;
- (_UIButtonBar)leadingBar;
- (_UIButtonBar)trailingBar;
- (_UINavigationBarContentViewLayout)initWithContentView:(id)view;
- (_UINavigationBarTitleControl)titleControl;
- (double)_baseTabBarExtension;
- (double)_contentHeight;
- (double)_idealBackButtonWidth;
- (double)_idealTitleWidth;
- (double)_inlineSearchBarGroupExtraLeadingPadding;
- (double)_inlineSearchBarGroupExtraTrailingPadding;
- (double)_inlineTitleBaselineOffset;
- (double)baseHeight;
- (double)baselineOffsetFromTop;
- (double)tabBarExtension;
- (id)_fixedItemsMenu;
- (id)_newButtonBar;
- (id)_overflowItem;
- (id)traitOverridesForChild:(id)child;
- (int64_t)expectedInactiveInlineSearchBarLayoutState;
- (uint64_t)_buttonBarLayoutInfoCalculation;
- (void)_activateAllConstraints;
- (void)_activateConstraintsAndUpdateViewOrderIfNecessary:(id)necessary;
- (void)_createTitleControlIfNecessary;
- (void)_deactivateAllConstraints;
- (void)_deactivateConstraintsIfNecessary:(id)necessary;
- (void)_didTriggerRenameAction;
- (void)_disableLayoutFlushing:(BOOL)flushing onlyViews:(id)views exceptViews:(id)exceptViews;
- (void)_getInitialLeadingFreeSpace:(double *)space trailingFreeSpace:(double *)freeSpace layoutWidth:(double *)width compressibleLeadingAllowance:(double *)allowance;
- (void)_maximumTitleAllowance;
- (void)_prepareForNewContentView;
- (void)_prepareOverflowItem;
- (void)_removeContentAndInvalidateConstraints;
- (void)_resolveContentSizeForced:(BOOL)forced;
- (void)_resolvedButtonBarLayoutInfo;
- (void)_setOverflowGroupHidden:(BOOL)hidden;
- (void)_setOverflowGroupVisibleForCalculation:(BOOL)calculation;
- (void)_updateAlignmentConstraints;
- (void)_updateAugmentedTitleViewConstraints;
- (void)_updateAugmentedTitleViewLayout;
- (void)_updateBackButtonConstraints;
- (void)_updateBackButtonWidthConstraintsAndActivateIfNecessary;
- (void)_updateCenterBarConstraints;
- (void)_updateConditionalGuideConstraintsForActiveLayout:(BOOL)layout;
- (void)_updateDocumentIconViewIfNecessary;
- (void)_updateFixedCenterGroups;
- (void)_updateFixedLeadingGroups;
- (void)_updateFixedTrailingGroups;
- (void)_updateHeightConstraints;
- (void)_updateInlineSearchBarGroupWithLeadingPadding:(double *)padding trailingPadding:;
- (void)_updateLayoutGuideConstraints;
- (void)_updateLeadingBarConstraints;
- (void)_updateMarginConstraints;
- (void)_updateRenamingContentViewConfiguration;
- (void)_updateRenamingContentViewConstraints;
- (void)_updateRenamingContentViewIfNecessary;
- (void)_updateRenamingContentViewVisibilityIfNecessary;
- (void)_updateSearchGroupLocation;
- (void)_updateSubviewOrder;
- (void)_updateTabBarGuideConstraints;
- (void)_updateTitleControl;
- (void)_updateTitleControlVisibility;
- (void)_updateTitleViewConstraints;
- (void)_updateTrailingBarConstraints;
- (void)buttonBarDidLayout:(id)layout;
- (void)cleanupAfterLayoutTransitionCompleted;
- (void)configureWithTitle:(id)title attributes:(id)attributes compressionResistancePriority:(float)priority;
- (void)configureWithTitleView:(id)view compressionResistancePriority:(float)priority;
- (void)configureWithoutTitle;
- (void)deferSearchSuggestionsMenuRefreshForGeometryChange;
- (void)layoutSubviews;
- (void)refreshSearchSuggestionsMenuAfterGeometryChange;
- (void)removeAllSnapshots;
- (void)removeContent;
- (void)replaceLeadingBarWithSnapshot;
- (void)replaceTitleViewWithSnapshot;
- (void)replaceTrailingBarWithSnapshot;
- (void)setActive:(BOOL)active contentView:(id)view;
- (void)setActiveRenamerSession:(id)session;
- (void)setAdditionalOverflowItems:(id)items;
- (void)setAlignment:(int64_t)alignment;
- (void)setAugmentedTitleView:(id)view;
- (void)setBackButton:(id)button;
- (void)setBackButtonAlpha:(double)alpha titleLabelAlpha:(double)labelAlpha titleViewAlpha:(double)viewAlpha barsAlpha:(double)barsAlpha;
- (void)setBackButtonAppearance:(id)appearance;
- (void)setBackButtonHidden:(BOOL)hidden titleLabelHidden:(BOOL)labelHidden titleViewHidden:(BOOL)viewHidden barsHidden:(BOOL)barsHidden;
- (void)setCenterBarGroups:(id)groups;
- (void)setCenterGroupsMode:(int64_t)mode;
- (void)setContentHidden:(BOOL)hidden;
- (void)setCustomizationIdentifier:(id)identifier;
- (void)setDocumentProperties:(id)properties;
- (void)setDoneItemAppearance:(id)appearance;
- (void)setEnableAlternatePopItem:(BOOL)item;
- (void)setFixedTrailingGroup:(id)group;
- (void)setHasFakedBackButton:(BOOL)button;
- (void)setInlineSearchBarGroup:(id)group;
- (void)setLargeTitleHeight:(double)height;
- (void)setLargeTitleHeightRange:(id)range;
- (void)setLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)setLeadingGroups:(id)groups;
- (void)setLeadingGroupsMode:(int64_t)mode;
- (void)setMaximumBackButtonWidth:(double)width;
- (void)setMinimumBackButtonWidth:(double)width;
- (void)setOverrideHeight:(double)height;
- (void)setPlaceInlineSearchBarInCenter:(BOOL)center;
- (void)setPlainItemAppearance:(id)appearance;
- (void)setRenameHandler:(id)handler;
- (void)setRequestedContentSize:(int64_t)size;
- (void)setTabBarContentGuide:(id)guide;
- (void)setTitleAlignment:(int64_t)alignment;
- (void)setTitleMenuProvider:(id)provider;
- (void)setTitlePositionAdjustment:(UIOffset)adjustment;
- (void)setTrailingGroups:(id)groups;
- (void)setTrailingGroupsEnabled:(BOOL)enabled;
- (void)setWantsHostedTabBarMetrics:(BOOL)metrics;
- (void)updateAlphas;
- (void)updateAugmentedTitleViewBackButtonConstraints;
- (void)updateAugmentedTitleViewHeight;
- (void)updateAugmentedTitleViewLayout;
- (void)updateBackButtonGeometry;
- (void)updateLayoutData:(id)data layoutWidth:(double)width;
- (void)updateOverflowItemImage;
- (void)updateRenameForHorizontalSizeClassChangeIfNecessary;
- (void)updateSpacingConstraints;
@end

@implementation _UINavigationBarContentViewLayout

- (BOOL)_wantsExtendedBarHeightWithTabBar
{
  if (_UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar())
  {
    return self->_tabBarContentGuide || self->_wantsHostedTabBarMetrics;
  }

  else
  {
    return 0;
  }
}

- (void)_updateMarginConstraints
{
  isNavItemContentLayoutGuideFlushLeading = [(_UINavigationBarContentView *)self->_contentView isNavItemContentLayoutGuideFlushLeading];
  v4 = 0.0;
  leading = 0.0;
  if (isNavItemContentLayoutGuideFlushLeading)
  {
    leading = self->_layoutMargins.leading;
  }

  [(NSLayoutConstraint *)self->_leadingMarginConstraint setConstant:leading];
  [(_UINavigationBarContentViewLayout *)self _additionalTrailingPadding];
  v7 = v6;
  if ([(_UINavigationBarContentView *)self->_contentView isNavItemContentLayoutGuideFlushTrailing])
  {
    v4 = v7 - self->_layoutMargins.trailing;
  }

  trailingMarginConstraint = self->_trailingMarginConstraint;

  [(NSLayoutConstraint *)trailingMarginConstraint setConstant:v4];
}

- (void)_updateBackButtonWidthConstraintsAndActivateIfNecessary
{
  maximumBackButtonWidth = self->_maximumBackButtonWidth;
  augmentedTitleView = self->_augmentedTitleView;
  if (augmentedTitleView)
  {
    [(_UINavigationBarAugmentedTitleView *)augmentedTitleView _navigationBarBackButtonMaximumWidth];
    if (v5 >= maximumBackButtonWidth)
    {
      v6 = maximumBackButtonWidth;
    }

    else
    {
      v6 = v5;
    }

    if (v5 <= 0.0)
    {
      v6 = maximumBackButtonWidth;
    }

    if (maximumBackButtonWidth == 0.0)
    {
      maximumBackButtonWidth = v5;
    }

    else
    {
      maximumBackButtonWidth = v6;
    }
  }

  [(NSLayoutConstraint *)self->_backButtonMinimumWidthConstraint setConstant:self->_minimumBackButtonWidth];
  [(NSLayoutConstraint *)self->_backButtonMaximumWidthConstraint setConstant:maximumBackButtonWidth];
  if (self->_active)
  {
    if (self->_backButton)
    {
      v7 = self->_minimumBackButtonWidth > 0.0;
    }

    else
    {
      v7 = 0;
    }

    [(NSLayoutConstraint *)self->_backButtonMinimumWidthConstraint setActive:v7];
    v9 = maximumBackButtonWidth > 0.0 && self->_backButton != 0;
    backButtonMaximumWidthConstraint = self->_backButtonMaximumWidthConstraint;

    [(NSLayoutConstraint *)backButtonMaximumWidthConstraint setActive:v9];
  }
}

- (UIBarButtonItem)leadingVisibleItem
{
  if (self->_leadingGroupsMode == 1)
  {
    leadingBar = self->_leadingBar;
    if (leadingBar)
    {
      leadingBar = [leadingBar leadingVisibleItem];
    }
  }

  else
  {
    leadingBar = 0;
  }

  return leadingBar;
}

- (void)_activateAllConstraints
{
  [(_UINavigationBarContentViewLayout *)self _updateSubviewOrder];
  [(UIView *)self->_contentView addLayoutGuide:self->_backButtonGuide];
  [(UIView *)self->_contentView addLayoutGuide:self->_leadingBarGuide];
  [(UIView *)self->_contentView addLayoutGuide:self->_titleViewGuide];
  [(UIView *)self->_contentView addLayoutGuide:self->_centerBarGuide];
  [(UIView *)self->_contentView addLayoutGuide:self->_trailingBarGuide];
  [MEMORY[0x1E69977A0] activateConstraints:self->_layoutGuideConstraints];
  [(_UINavigationBarContentViewLayout *)self _updateTabBarGuideConstraints];
  [(_UINavigationBarContentViewLayout *)self _updateConditionalGuideConstraintsForActiveLayout:1];
  [(_UINavigationBarContentViewLayout *)self _updateAlignmentConstraints];
  [MEMORY[0x1E69977A0] activateConstraints:self->_alignmentConstraints];
  [(_UINavigationBarContentViewLayout *)self _updateHeightConstraints];
  [MEMORY[0x1E69977A0] activateConstraints:self->_heightConstraints];
  [(_UINavigationBarContentViewLayout *)self _updateBackButtonConstraints];
  if (self->_backButtonConstraints)
  {
    [MEMORY[0x1E69977A0] activateConstraints:?];
  }

  [(_UINavigationBarContentViewLayout *)self _updateBackButtonWidthConstraintsAndActivateIfNecessary];
  [(_UINavigationBarContentViewLayout *)self _updateLeadingBarConstraints];
  if (self->_leadingBarConstraints)
  {
    [MEMORY[0x1E69977A0] activateConstraints:?];
  }

  [(_UINavigationBarContentViewLayout *)self _updateTitleViewConstraints];
  if (self->_titleViewConstraints)
  {
    [MEMORY[0x1E69977A0] activateConstraints:?];
  }

  [(_UINavigationBarContentViewLayout *)self _updateRenamingContentViewConfiguration];
  [(_UINavigationBarContentViewLayout *)self _updateRenamingContentViewConstraints];
  if (self->_renamingContentViewConstraints)
  {
    [MEMORY[0x1E69977A0] activateConstraints:?];
  }

  [(_UINavigationBarContentViewLayout *)self _updateCenterBarConstraints];
  if (self->_centerBarConstraints)
  {
    [MEMORY[0x1E69977A0] activateConstraints:?];
  }

  [(_UINavigationBarContentViewLayout *)self _updateTrailingBarConstraints];
  if (self->_trailingBarConstraints)
  {
    [MEMORY[0x1E69977A0] activateConstraints:?];
  }

  [(_UINavigationBarContentViewLayout *)self _updateAugmentedTitleViewConstraints];
  if (self->_augmentedTitleViewConstraints)
  {
    v3 = MEMORY[0x1E69977A0];

    [v3 activateConstraints:?];
  }
}

- (void)_updateSubviewOrder
{
  v15[8] = *MEMORY[0x1E69E9840];
  if (self->_active)
  {
    v15[0] = self->_augmentedTitleView;
    if (self->_leadingGroupsMode == 1)
    {
      leadingBarSnapshot = self->_leadingBarSnapshot;
      if (leadingBarSnapshot)
      {
        v7 = 0;
      }

      else
      {
        leadingBar = [(_UINavigationBarContentViewLayout *)self leadingBar];
        leadingBarSnapshot = [leadingBar view];
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
      leadingBarSnapshot = 0;
    }

    v15[1] = leadingBarSnapshot;
    centerGroupsMode = self->_centerGroupsMode;
    if (centerGroupsMode == 1)
    {
      centerBar = [(_UINavigationBarContentViewLayout *)self centerBar];
      view = [centerBar view];
    }

    else
    {
      view = 0;
    }

    v15[2] = view;
    trailingBarSnapshot = self->_trailingBarSnapshot;
    view2 = trailingBarSnapshot;
    if (!trailingBarSnapshot)
    {
      trailingBar = [(_UINavigationBarContentViewLayout *)self trailingBar];
      view2 = [trailingBar view];
    }

    backButton = self->_backButton;
    v15[3] = view2;
    v15[4] = backButton;
    v15[5] = self->_titleIconView;
    titleViewSnapshot = self->_titleViewSnapshot;
    if (!titleViewSnapshot)
    {
      titleViewSnapshot = self->_titleControl;
    }

    renamingContentView = self->_renamingContentView;
    v15[6] = titleViewSnapshot;
    v15[7] = renamingContentView;
    if (!trailingBarSnapshot)
    {
    }

    if (centerGroupsMode == 1)
    {
    }

    if (v7)
    {
    }

    [(UIView *)self->_contentView _ensureViewsAreInstalledInRelativeOrder:v15 viewCount:8 insertionStartIndex:0];
  }
}

- (_UIButtonBar)centerBar
{
  if (self->_centerGroupsMode)
  {
    centerBar = self->_centerBar;
    if (!centerBar)
    {
      _newButtonBar = [(_UINavigationBarContentViewLayout *)self _newButtonBar];
      v6 = self->_centerBar;
      self->_centerBar = _newButtonBar;

      [(_UIButtonBar *)self->_centerBar setForceFixedSpacing:1];
      [(_UIButtonBar *)self->_centerBar setSupportsOverflow:1];
      [(_UIButtonBar *)self->_centerBar setSupportsAlwaysOverflowGroups:1];
      if (self->_customizationIdentifier)
      {
        v7 = [_UIButtonBarGroupOrderer groupOrdererForCustomizationIdentifier:?];
        [(_UIButtonBar *)self->_centerBar setGroupOrderer:v7];
      }

      else
      {
        [(_UIButtonBar *)self->_centerBar setGroupOrderer:?];
      }

      [(_UIButtonBar *)self->_centerBar setDelegate:self];
      [(_UINavigationBarContentViewLayout *)self _updateFixedCenterGroups];
      centerBar = self->_centerBar;
    }

    v8 = centerBar;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- ($BC0A1C2077D899513996B358CDF2CFD6)currentButtonBarLayoutInfo
{
  v3 = *&self[10].var5;
  *&retstr->var0 = *&self[10].var3;
  *&retstr->var2 = v3;
  v4 = *&self[11].var1;
  *&retstr->var4 = *&self[10].var7;
  *&retstr->var6 = v4;
  return self;
}

- (void)configureWithoutTitle
{
  titleEnabled = self->_titleEnabled;
  self->_titleEnabled = 0;
  [(_UINavigationBarTitleControl *)self->_titleControl setTitle:0];
  [(_UINavigationBarTitleControl *)self->_titleControl setTitleAttributes:0];
  [(_UINavigationBarTitleControl *)self->_titleControl setTitleView:0];
  [(_UINavigationBarTitleControl *)self->_titleControl setTitleMenuProvider:0];
  [(_UINavigationBarTitleControl *)self->_titleControl setDocumentProperties:0];
  self->_currentButtonBarLayoutInfo.isInitialized = 0;
  if (titleEnabled)
  {
    [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_titleViewConstraints];
    [(UIView *)self->_titleControl removeFromSuperview];
    titleViewConstraints = self->_titleViewConstraints;
    self->_titleViewConstraints = 0;
  }
}

- (_UIBarButtonItemSearchBarGroup)centerSearchBarGroup
{
  if (self->_placeInlineSearchBarInCenter)
  {
    return self->_inlineSearchBarGroup;
  }

  else
  {
    return 0;
  }
}

- (void)_updateFixedTrailingGroups
{
  if (self)
  {
    v2 = *(self + 290);
    v3 = *(self + 320);
    if (v2 == 1 && v3)
    {
      array = [MEMORY[0x1E695DF70] array];
      [array addObject:*(self + 224)];
      if ((*(self + 291) & 1) == 0 && *(self + 240))
      {
        [array addObject:?];
      }

      v4 = array;
      if (*(self + 552))
      {
        [array addObject:?];
        v4 = array;
      }

      [*(self + 320) setFixedTrailingGroups:v4];
    }

    else
    {
      v5 = MEMORY[0x1E695E0F0];

      [v3 setFixedTrailingGroups:v5];
    }
  }
}

- (void)updateBackButtonGeometry
{
  if (-[_UINavigationBarContentView hasLeadingInsetFromTideBar](self->_contentView, "hasLeadingInsetFromTideBar") || (-[UIView traitCollection](self->_contentView, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 userInterfaceIdiom], v3, v5 = 0.0, v4 == 6))
  {
    [(UIView *)self->_contentView safeAreaInsets];
    v7 = v6;
    v9 = v8;
    if ([(UIView *)self->_contentView effectiveUserInterfaceLayoutDirection])
    {
      v5 = v9;
    }

    else
    {
      v5 = v7;
    }
  }

  edgeToBackButtonSpacer = self->_edgeToBackButtonSpacer;

  [(NSLayoutConstraint *)edgeToBackButtonSpacer setConstant:v5];
}

- (double)baseHeight
{
  visualProvider = [(_UINavigationBarContentView *)self->_contentView visualProvider];

  contentView = self->_contentView;
  if (visualProvider)
  {
    visualProvider2 = [(_UINavigationBarContentView *)contentView visualProvider];
    [visualProvider2 baseHeightForContentSize:self->_resolvedContentSize];
    v7 = v6;

    return v7;
  }

  else
  {
    traitCollection = [(UIView *)contentView traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    resolvedContentSize = self->_resolvedContentSize;
    if (resolvedContentSize == 3)
    {
      v12 = 56.0;
      if (userInterfaceIdiom == 5)
      {
        v16 = 43.0;
      }

      else
      {
        v16 = 56.0;
      }
    }

    else
    {
      if (resolvedContentSize == 2)
      {
        v15 = _UIBarsUseNewPadHeights();
        v12 = 50.0;
        if (userInterfaceIdiom == 5)
        {
          v12 = 38.0;
        }

        v14 = v15 == 0;
        v13 = 44.0;
      }

      else
      {
        v12 = 0.0;
        v13 = 32.0;
        if (userInterfaceIdiom == 5)
        {
          v13 = 25.0;
        }

        v14 = resolvedContentSize == 1;
      }

      if (v14)
      {
        v16 = v13;
      }

      else
      {
        v16 = v12;
      }
    }

    _wantsExtendedBarHeightWithTabBar = [(_UINavigationBarContentViewLayout *)self _wantsExtendedBarHeightWithTabBar];
    result = v16 + 14.0;
    if (!_wantsExtendedBarHeightWithTabBar)
    {
      return v16;
    }
  }

  return result;
}

- (void)_updateLayoutGuideConstraints
{
  v82 = *MEMORY[0x1E69E9840];
  if (!self->_layoutGuideConstraints)
  {
    leadingAnchor = [(UILayoutGuide *)self->_backButtonGuide leadingAnchor];
    navItemContentLayoutGuide = [(_UINavigationBarContentView *)self->_contentView navItemContentLayoutGuide];
    leadingAnchor2 = [navItemContentLayoutGuide leadingAnchor];
    v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    edgeToBackButtonSpacer = self->_edgeToBackButtonSpacer;
    self->_edgeToBackButtonSpacer = v6;

    trailingAnchor = [(UILayoutGuide *)self->_backButtonGuide trailingAnchor];
    navItemContentLayoutGuide2 = [(_UINavigationBarContentView *)self->_contentView navItemContentLayoutGuide];
    leadingAnchor3 = [navItemContentLayoutGuide2 leadingAnchor];
    v11 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor3];
    leadingMarginConstraint = self->_leadingMarginConstraint;
    self->_leadingMarginConstraint = v11;

    leadingAnchor4 = [(UILayoutGuide *)self->_leadingBarGuide leadingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self->_backButtonGuide trailingAnchor];
    v15 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2];
    backButtonToLeadingBarSpacer = self->_backButtonToLeadingBarSpacer;
    self->_backButtonToLeadingBarSpacer = v15;

    leadingAnchor5 = [(UILayoutGuide *)self->_titleViewGuide leadingAnchor];
    trailingAnchor3 = [(UILayoutGuide *)self->_leadingBarGuide trailingAnchor];
    v19 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3];
    leadingBarToTitleSpacer = self->_leadingBarToTitleSpacer;
    self->_leadingBarToTitleSpacer = v19;

    leadingAnchor6 = [(UILayoutGuide *)self->_centerBarGuide leadingAnchor];
    trailingAnchor4 = [(UILayoutGuide *)self->_titleViewGuide trailingAnchor];
    v23 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4];
    titleToCenterBarSpacer = self->_titleToCenterBarSpacer;
    self->_titleToCenterBarSpacer = v23;

    leadingAnchor7 = [(UILayoutGuide *)self->_trailingBarGuide leadingAnchor];
    trailingAnchor5 = [(UILayoutGuide *)self->_centerBarGuide trailingAnchor];
    v27 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:trailingAnchor5];
    centerBarToTrailingBarSpacer = self->_centerBarToTrailingBarSpacer;
    self->_centerBarToTrailingBarSpacer = v27;

    leadingAnchor8 = [(UILayoutGuide *)self->_trailingBarGuide leadingAnchor];
    trailingAnchor6 = [(UILayoutGuide *)self->_titleViewGuide trailingAnchor];
    v31 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor6];
    titleToTrailingBarSpacer = self->_titleToTrailingBarSpacer;
    self->_titleToTrailingBarSpacer = v31;

    trailingAnchor7 = [(UILayoutGuide *)self->_trailingBarGuide trailingAnchor];
    navItemContentLayoutGuide3 = [(_UINavigationBarContentView *)self->_contentView navItemContentLayoutGuide];
    trailingAnchor8 = [navItemContentLayoutGuide3 trailingAnchor];
    v36 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    trailingMarginConstraint = self->_trailingMarginConstraint;
    self->_trailingMarginConstraint = v36;

    LODWORD(v38) = 1148829696;
    [(NSLayoutConstraint *)self->_trailingMarginConstraint setPriority:v38];
    widthAnchor = [(UILayoutGuide *)self->_backButtonGuide widthAnchor];
    v40 = CreateWidthMinimizingConstraint(widthAnchor);

    if (!self->_backButtonMinimumWidthConstraint)
    {
      widthAnchor2 = [(UILayoutGuide *)self->_backButtonGuide widthAnchor];
      v42 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:0.0];
      backButtonMinimumWidthConstraint = self->_backButtonMinimumWidthConstraint;
      self->_backButtonMinimumWidthConstraint = v42;

      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BackButtonGuide(%p).minimumWidth", self];
      [(NSLayoutConstraint *)self->_backButtonMinimumWidthConstraint setIdentifier:v44];
    }

    if (!self->_backButtonMaximumWidthConstraint)
    {
      widthAnchor3 = [(UILayoutGuide *)self->_backButtonGuide widthAnchor];
      v46 = [widthAnchor3 constraintLessThanOrEqualToConstant:0.0];
      backButtonMaximumWidthConstraint = self->_backButtonMaximumWidthConstraint;
      self->_backButtonMaximumWidthConstraint = v46;

      LODWORD(v48) = 1144750080;
      [(NSLayoutConstraint *)self->_backButtonMaximumWidthConstraint setPriority:v48];
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BackButtonGuide(%p).maximumWidth", self];
      [(NSLayoutConstraint *)self->_backButtonMaximumWidthConstraint setIdentifier:v49];
    }

    widthAnchor4 = [(UILayoutGuide *)self->_leadingBarGuide widthAnchor];
    v51 = CreateWidthMinimizingConstraint(widthAnchor4);

    widthAnchor5 = [(UILayoutGuide *)self->_titleViewGuide widthAnchor];
    layoutMarginsGuide = [(UIView *)self->_contentView layoutMarginsGuide];
    widthAnchor6 = [layoutMarginsGuide widthAnchor];
    v55 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
    LODWORD(v56) = 1112014848;
    [v55 setPriority:v56];

    leadingAnchor9 = [(UILayoutGuide *)self->_titleViewGuide leadingAnchor];
    layoutMarginsGuide2 = [(UIView *)self->_contentView layoutMarginsGuide];
    leadingAnchor10 = [layoutMarginsGuide2 leadingAnchor];
    v60 = [leadingAnchor9 constraintGreaterThanOrEqualToAnchor:leadingAnchor10];

    trailingAnchor9 = [(UILayoutGuide *)self->_titleViewGuide trailingAnchor];
    layoutMarginsGuide3 = [(UIView *)self->_contentView layoutMarginsGuide];
    trailingAnchor10 = [layoutMarginsGuide3 trailingAnchor];
    v64 = [trailingAnchor9 constraintLessThanOrEqualToAnchor:trailingAnchor10];

    widthAnchor7 = [(UILayoutGuide *)self->_centerBarGuide widthAnchor];
    v66 = CreateWidthMinimizingConstraint(widthAnchor7);

    widthAnchor8 = [(UILayoutGuide *)self->_trailingBarGuide widthAnchor];
    v68 = CreateWidthMinimizingConstraint(widthAnchor8);

    v69 = self->_trailingMarginConstraint;
    v72[0] = self->_leadingMarginConstraint;
    v72[1] = v69;
    v73 = *&self->_edgeToBackButtonSpacer;
    v74 = self->_leadingBarToTitleSpacer;
    v75 = v40;
    v76 = v51;
    v77 = v55;
    v78 = v60;
    v79 = v64;
    v80 = v66;
    v81 = v68;
    v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:12];
    layoutGuideConstraints = self->_layoutGuideConstraints;
    self->_layoutGuideConstraints = v70;
  }

  if (self->_active)
  {
    [MEMORY[0x1E69977A0] activateConstraints:self->_layoutGuideConstraints];
  }

  [(_UINavigationBarContentViewLayout *)self updateSpacingConstraints];
  [(_UINavigationBarContentViewLayout *)self updateBackButtonGeometry];
}

- (void)updateSpacingConstraints
{
  v3 = 0.0;
  v4 = 0.0;
  if (self->_backButton)
  {
    if (self->_leadingGroupsMode == 1)
    {
      leadingBar = self->_leadingBar;
      goto LABEL_4;
    }

    if (self->_titleEnabled)
    {
      goto LABEL_7;
    }

    if (self->_centerGroupsMode == 1)
    {
      leadingBar = self->_centerBar;
LABEL_4:
      needsLeadingSpacer = [(_UIButtonBar *)leadingBar needsLeadingSpacer];
      v4 = 0.0;
      if (!needsLeadingSpacer)
      {
        goto LABEL_8;
      }

LABEL_7:
      [(_UINavigationBarContentView *)self->_contentView buttonBarMinimumInterGroupSpace];
      goto LABEL_8;
    }

    if (self->_trailingGroupsEnabled)
    {
      needsLeadingSpacer2 = [(_UIButtonBar *)self->_trailingBar needsLeadingSpacer];
      v4 = 0.0;
      if (needsLeadingSpacer2)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  [(NSLayoutConstraint *)self->_backButtonToLeadingBarSpacer setConstant:v4];
  if (self->_leadingGroupsMode != 1)
  {
    goto LABEL_22;
  }

  if (self->_titleEnabled)
  {
    if (![(_UIButtonBar *)self->_leadingBar needsTrailingSpacer])
    {
      goto LABEL_22;
    }

LABEL_21:
    [(_UINavigationBarContentView *)self->_contentView buttonBarMinimumInterGroupSpace];
    v3 = v7;
    goto LABEL_22;
  }

  if (self->_centerGroupsMode == 1)
  {
    if ([(_UIButtonBar *)self->_leadingBar needsTrailingSpacer]|| [(_UIButtonBar *)self->_centerBar needsLeadingSpacer])
    {
      goto LABEL_21;
    }
  }

  else if (self->_trailingGroupsEnabled && ([(_UIButtonBar *)self->_leadingBar needsTrailingSpacer]|| [(_UIButtonBar *)self->_trailingBar needsLeadingSpacer]))
  {
    goto LABEL_21;
  }

LABEL_22:
  [(NSLayoutConstraint *)self->_leadingBarToTitleSpacer setConstant:v3];
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  if (self->_titleEnabled)
  {
    if (self->_trailingGroupsEnabled && [(_UIButtonBar *)self->_trailingBar needsLeadingSpacer])
    {
      [(_UINavigationBarContentView *)self->_contentView buttonBarMinimumInterGroupSpace];
      v10 = v11;
    }

    v12 = v10;
    if (self->_centerGroupsMode == 1)
    {
      v12 = 0.0;
      if ([(_UIButtonBar *)self->_centerBar needsLeadingSpacer])
      {
        [(_UINavigationBarContentView *)self->_contentView buttonBarMinimumInterGroupSpace];
        v12 = v13;
      }
    }

    [(_UINavigationBarTitleControl *)self->_titleControl trailingPadding];
    v15 = v14;
    v9 = v12 + v14;
    v10 = v10 + v15;
  }

  [(NSLayoutConstraint *)self->_titleToCenterBarSpacer setConstant:v9];
  [(NSLayoutConstraint *)self->_titleToTrailingBarSpacer setConstant:v10];
  if (self->_centerGroupsMode == 1 && self->_trailingGroupsEnabled && ([(_UIButtonBar *)self->_centerBar needsTrailingSpacer]|| [(_UIButtonBar *)self->_trailingBar needsLeadingSpacer]))
  {
    [(_UINavigationBarContentView *)self->_contentView buttonBarMinimumInterGroupSpace];
    v8 = v16;
  }

  [(NSLayoutConstraint *)self->_centerBarToTrailingBarSpacer setConstant:v8];
  [(_UINavigationBarContentViewLayout *)self _updateConditionalGuideConstraintsForActiveLayout:self->_active];

  [(_UINavigationBarContentViewLayout *)self _updateMarginConstraints];
}

- (UIBarButtonItem)trailingVisibleItem
{
  if (self->_trailingGroupsEnabled)
  {
    trailingBar = self->_trailingBar;
    if (trailingBar)
    {
      trailingBar = [trailingBar trailingVisibleItem];
    }
  }

  else
  {
    trailingBar = 0;
  }

  return trailingBar;
}

- (NSDirectionalEdgeInsets)layoutMargins
{
  top = self->_layoutMargins.top;
  leading = self->_layoutMargins.leading;
  bottom = self->_layoutMargins.bottom;
  trailing = self->_layoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (_UIButtonBar)trailingBar
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (self->_trailingGroupsEnabled)
  {
    trailingBar = self->_trailingBar;
    if (!trailingBar)
    {
      _newButtonBar = [(_UINavigationBarContentViewLayout *)self _newButtonBar];
      v5 = self->_trailingBar;
      self->_trailingBar = _newButtonBar;

      [(_UIButtonBar *)self->_trailingBar setForceFixedSpacing:0];
      [(_UIButtonBar *)self->_trailingBar setSupportsOverflow:_UIBarsDesktopNavigationBarEnabled()];
      [(_UIButtonBar *)self->_trailingBar setGroupOrderer:0];
      [(_UIButtonBar *)self->_trailingBar setDelegate:self];
      if (!self->_overflowGroup)
      {
        v6 = [UIBarButtonItemGroup alloc];
        _overflowItem = [(_UINavigationBarContentViewLayout *)self _overflowItem];
        v14[0] = _overflowItem;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
        v9 = [(UIBarButtonItemGroup *)v6 initWithBarButtonItems:v8 representativeItem:0];
        overflowGroup = self->_overflowGroup;
        self->_overflowGroup = v9;

        [(_UINavigationBarContentViewLayout *)self _setOverflowGroupHidden:1];
        _overflowItem2 = [(_UINavigationBarContentViewLayout *)self _overflowItem];
        [(_UIButtonBar *)self->_trailingBar setPopOverPresentingSourceItem:_overflowItem2];
      }

      [(_UINavigationBarContentViewLayout *)self _updateFixedTrailingGroups];
      trailingBar = self->_trailingBar;
    }

    v12 = trailingBar;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_updateTabBarGuideConstraints
{
  if (self->_tabBarContentGuide)
  {
    titleAlignment = self->_titleAlignment;
    v4 = titleAlignment == 1;
    v5 = titleAlignment != 1;
    [(NSLayoutConstraint *)self->_titleGuideTabBarLeadingConstraint setActive:v5];
    [(NSLayoutConstraint *)self->_titleGuideTabBarTrailingConstraint setActive:v5];
    [(NSLayoutConstraint *)self->_centerBarGuideTabBarLeadingConstraint setActive:v4];
    centerBarGuideTabBarTrailingConstraint = self->_centerBarGuideTabBarTrailingConstraint;

    [(NSLayoutConstraint *)centerBarGuideTabBarTrailingConstraint setActive:v4];
  }
}

- (void)_updateAlignmentConstraints
{
  v50[5] = *MEMORY[0x1E69E9840];
  alignment = self->_alignment;
  augmentedTitleView = self->_augmentedTitleView;
  if (augmentedTitleView)
  {
    _preferredAlignment = [(_UINavigationBarAugmentedTitleView *)augmentedTitleView _preferredAlignment];
    if (_preferredAlignment)
    {
      alignment = _preferredAlignment;
    }
  }

  if (alignment <= 1)
  {
    alignment = 1;
  }

  if (self->_resolvedAlignment != alignment)
  {
    [(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView setNeedsLayout];
    if (self->_alignmentConstraints)
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:?];
      alignmentConstraints = self->_alignmentConstraints;
      self->_alignmentConstraints = 0;
    }
  }

  self->_resolvedAlignment = alignment;
  if (!self->_alignmentConstraints)
  {
    v47 = a2;
    switch(alignment)
    {
      case 3uLL:
        bottomAnchor = [(UILayoutGuide *)self->_backButtonGuide bottomAnchor];
        bottomAnchor2 = [(UIView *)self->_contentView bottomAnchor];
        v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v48[0] = v44;
        bottomAnchor3 = [(UILayoutGuide *)self->_leadingBarGuide bottomAnchor];
        bottomAnchor4 = [(UIView *)self->_contentView bottomAnchor];
        v41 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
        v48[1] = v41;
        bottomAnchor5 = [(UILayoutGuide *)self->_titleViewGuide bottomAnchor];
        bottomAnchor6 = [(UIView *)self->_contentView bottomAnchor];
        v10 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
        v48[2] = v10;
        bottomAnchor7 = [(UILayoutGuide *)self->_centerBarGuide bottomAnchor];
        bottomAnchor8 = [(UIView *)self->_contentView bottomAnchor];
        v13 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
        v48[3] = v13;
        bottomAnchor9 = [(UILayoutGuide *)self->_trailingBarGuide bottomAnchor];
        bottomAnchor10 = [(UIView *)self->_contentView bottomAnchor];
        v21 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
        v48[4] = v21;
        v22 = MEMORY[0x1E695DEC8];
        v23 = v48;
        break;
      case 2uLL:
        bottomAnchor = [(UILayoutGuide *)self->_backButtonGuide centerYAnchor];
        bottomAnchor2 = [(UIView *)self->_contentView centerYAnchor];
        v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v49[0] = v44;
        bottomAnchor3 = [(UILayoutGuide *)self->_leadingBarGuide centerYAnchor];
        bottomAnchor4 = [(UIView *)self->_contentView centerYAnchor];
        v41 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
        v49[1] = v41;
        bottomAnchor5 = [(UILayoutGuide *)self->_titleViewGuide centerYAnchor];
        bottomAnchor6 = [(UIView *)self->_contentView centerYAnchor];
        v10 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
        v49[2] = v10;
        bottomAnchor7 = [(UILayoutGuide *)self->_centerBarGuide centerYAnchor];
        bottomAnchor8 = [(UIView *)self->_contentView centerYAnchor];
        v13 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
        v49[3] = v13;
        bottomAnchor9 = [(UILayoutGuide *)self->_trailingBarGuide centerYAnchor];
        bottomAnchor10 = [(UIView *)self->_contentView centerYAnchor];
        v21 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
        v49[4] = v21;
        v22 = MEMORY[0x1E695DEC8];
        v23 = v49;
        break;
      case 1uLL:
        bottomAnchor = [(UILayoutGuide *)self->_backButtonGuide topAnchor];
        bottomAnchor2 = [(UIView *)self->_contentView topAnchor];
        v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v50[0] = v44;
        bottomAnchor3 = [(UILayoutGuide *)self->_leadingBarGuide topAnchor];
        bottomAnchor4 = [(UIView *)self->_contentView topAnchor];
        v41 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
        v50[1] = v41;
        bottomAnchor5 = [(UILayoutGuide *)self->_titleViewGuide topAnchor];
        bottomAnchor6 = [(UIView *)self->_contentView topAnchor];
        v10 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
        v50[2] = v10;
        bottomAnchor7 = [(UILayoutGuide *)self->_centerBarGuide topAnchor];
        bottomAnchor8 = [(UIView *)self->_contentView topAnchor];
        v13 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
        v50[3] = v13;
        topAnchor = [(UILayoutGuide *)self->_trailingBarGuide topAnchor];
        topAnchor2 = [(UIView *)self->_contentView topAnchor];
        v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v50[4] = v16;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:5];
        v18 = self->_alignmentConstraints;
        self->_alignmentConstraints = v17;

LABEL_17:
        a2 = v47;
LABEL_19:
        alignment = self->_resolvedAlignment;
        goto LABEL_20;
      default:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarContentViewLayout.m" lineNumber:407 description:{@"Unimplemented alignment (%li)", self->_alignment}];

        goto LABEL_19;
    }

    v24 = [v22 arrayWithObjects:v23 count:5];
    v25 = self->_alignmentConstraints;
    self->_alignmentConstraints = v24;

    goto LABEL_17;
  }

LABEL_20:
  v27 = 0.0;
  v28 = 0.0;
  if (alignment - 2 >= 2)
  {
    if (alignment == 1)
    {
      traitCollection = [(UIView *)self->_contentView traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if ((userInterfaceIdiom - 5) >= 2)
      {
        if (self->_resolvedContentSize == 3)
        {
          v31 = ![(_UINavigationBarContentViewLayout *)self _wantsExtendedBarHeightWithTabBar];
          v32 = 6.0;
          v33 = 13.0;
        }

        else
        {
          v31 = _UIBarsUseNewPadHeights() == 0;
          v32 = 0.0;
          v33 = 3.0;
        }

        if (v31)
        {
          v28 = v32;
        }

        else
        {
          v28 = v33;
        }
      }
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UINavigationBarContentViewLayout.m" lineNumber:439 description:{@"Unimplemented alignment (%li)", self->_alignment}];
    }
  }

  v35 = [(NSArray *)self->_alignmentConstraints objectAtIndexedSubscript:0];
  [v35 setConstant:v28];

  v36 = [(NSArray *)self->_alignmentConstraints objectAtIndexedSubscript:1];
  [v36 setConstant:v28];

  if (self->_showTitleWithTabBar)
  {
    [(_UINavigationBarContentViewLayout *)self tabBarExtension];
    v27 = v37;
  }

  v38 = [(NSArray *)self->_alignmentConstraints objectAtIndexedSubscript:2];
  [v38 setConstant:v28 + v27];

  v39 = [(NSArray *)self->_alignmentConstraints objectAtIndexedSubscript:3];
  [v39 setConstant:v28];

  v40 = [(NSArray *)self->_alignmentConstraints objectAtIndexedSubscript:4];
  [v40 setConstant:v28];
}

- (void)_updateHeightConstraints
{
  v47[5] = *MEMORY[0x1E69E9840];
  [(_UINavigationBarContentViewLayout *)self _contentHeight];
  v4 = v3;
  heightConstraints = self->_heightConstraints;
  if (heightConstraints)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    heightAnchor = heightConstraints;
    v7 = [(NSArray *)heightAnchor countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v43;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v43 != v9)
          {
            objc_enumerationMutation(heightAnchor);
          }

          [*(*(&v42 + 1) + 8 * i) setConstant:v4];
        }

        v8 = [(NSArray *)heightAnchor countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v8);
    }
  }

  else
  {
    heightAnchor = [(UILayoutGuide *)self->_backButtonGuide heightAnchor];
    v41 = [(NSArray *)heightAnchor constraintEqualToConstant:v4];
    v47[0] = v41;
    heightAnchor2 = [(UILayoutGuide *)self->_leadingBarGuide heightAnchor];
    v12 = [heightAnchor2 constraintEqualToConstant:v4];
    v47[1] = v12;
    heightAnchor3 = [(UILayoutGuide *)self->_titleViewGuide heightAnchor];
    v14 = [heightAnchor3 constraintEqualToConstant:v4];
    v47[2] = v14;
    heightAnchor4 = [(UILayoutGuide *)self->_centerBarGuide heightAnchor];
    v16 = [heightAnchor4 constraintEqualToConstant:v4];
    v47[3] = v16;
    heightAnchor5 = [(UILayoutGuide *)self->_trailingBarGuide heightAnchor];
    v18 = [heightAnchor5 constraintEqualToConstant:v4];
    v47[4] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:5];
    v20 = self->_heightConstraints;
    self->_heightConstraints = v19;
  }

  [(_UINavigationBarContentViewLayout *)self baseHeight];
  v22 = v21;
  [(_UINavigationBarContentViewLayout *)self _baseTabBarExtension];
  v24 = v23;
  if (self->_showTitleWithTabBar)
  {
    _hideNavigationBarStandardTitle = [(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView _hideNavigationBarStandardTitle];
    v26 = _hideNavigationBarStandardTitle ^ 1;
    if (!_hideNavigationBarStandardTitle)
    {
      v22 = v22 + v24;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v22 >= self->_overrideHeight)
  {
    overrideHeight = v22;
  }

  else
  {
    overrideHeight = self->_overrideHeight;
  }

  augmentedTitleView = self->_augmentedTitleView;
  if (augmentedTitleView)
  {
    [(_UINavigationBarAugmentedTitleView *)augmentedTitleView _navigationBarContentHeight];
    v30 = v29;
    [(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView _navigationBarContentHeightExtension];
    v32 = v31;
    if ([(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView _navigationBarHeightShouldBeIncreasedByTabBarHeight]&& !self->_useInlineLargeTitleMetrics && self->_showTitleWithTabBar)
    {
      v33 = v24 + v30;
      v34 = v24 + v22;
      if (v24 + v30 >= v24 + v22)
      {
        v34 = v24 + v30;
      }

      if (v33 < overrideHeight)
      {
        v33 = overrideHeight;
      }

      if (v26)
      {
        v30 = v33;
      }

      else
      {
        v30 = v34;
      }
    }

    if (v30 > overrideHeight || [(_UINavigationBarContentViewLayout *)self _augmentedTitleViewIgnoresResolvedHeight])
    {
      overrideHeight = v30;
    }

    else
    {
      v32 = fmax(v32 - (overrideHeight - v30), 0.0);
    }
  }

  else
  {
    v32 = 0.0;
  }

  _screen = [(UIView *)self->_contentView _screen];
  [_screen scale];
  v37 = v36;

  UICeilToScale(overrideHeight, v37);
  v39 = v38;
  UICeilToScale(v32, v37);
  if (self->_resolvedHeight != v39 || self->_resolvedExtension != v40)
  {
    self->_resolvedHeight = v39;
    self->_resolvedExtension = v40;
    [(_UINavigationBarContentView *)self->_contentView resolvedHeightDidChange];
  }
}

- (double)_contentHeight
{
  visualProvider = [(_UINavigationBarContentView *)self->_contentView visualProvider];

  contentView = self->_contentView;
  if (visualProvider)
  {
    visualProvider2 = [(_UINavigationBarContentView *)contentView visualProvider];
    [visualProvider2 contentHeightForContentSize:self->_resolvedContentSize];
    v7 = v6;

    return v7;
  }

  else
  {
    traitCollection = [(UIView *)contentView traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    result = 32.0;
    if (userInterfaceIdiom == 5)
    {
      result = 25.0;
    }

    v11 = 44.0;
    if (userInterfaceIdiom == 5)
    {
      v11 = 38.0;
    }

    if (self->_resolvedContentSize != 1)
    {
      return v11;
    }
  }

  return result;
}

- (double)_baseTabBarExtension
{
  if (!self->_augmentedTitleView)
  {
    goto LABEL_5;
  }

  if (_UIBarsExtendContentViewForHostedTabBar_onceToken != -1)
  {
    dispatch_once(&_UIBarsExtendContentViewForHostedTabBar_onceToken, &__block_literal_global_765);
  }

  result = 0.0;
  if (_UIBarsExtendContentViewForHostedTabBar_extendContentViewForHostedTabBar == 1)
  {
LABEL_5:
    result = 0.0;
    if (self->_titleAlignment != 1)
    {
      tabBarContentGuide = self->_tabBarContentGuide;
      if (tabBarContentGuide)
      {
        [(UILayoutGuide *)tabBarContentGuide layoutFrame];
        return v5;
      }
    }
  }

  return result;
}

- (void)_updateBackButtonConstraints
{
  v18[4] = *MEMORY[0x1E69E9840];
  backButton = self->_backButton;
  if (backButton)
  {
    if (!self->_backButtonConstraints)
    {
      leadingAnchor = [(UIView *)backButton leadingAnchor];
      leadingAnchor2 = [(UILayoutGuide *)self->_backButtonGuide leadingAnchor];
      v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v18[0] = v15;
      trailingAnchor = [(UIView *)self->_backButton trailingAnchor];
      trailingAnchor2 = [(UILayoutGuide *)self->_backButtonGuide trailingAnchor];
      v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v18[1] = v6;
      topAnchor = [(UIView *)self->_backButton topAnchor];
      topAnchor2 = [(UILayoutGuide *)self->_backButtonGuide topAnchor];
      v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v18[2] = v9;
      bottomAnchor = [(UIView *)self->_backButton bottomAnchor];
      bottomAnchor2 = [(UILayoutGuide *)self->_backButtonGuide bottomAnchor];
      v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v18[3] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
      backButtonConstraints = self->_backButtonConstraints;
      self->_backButtonConstraints = v13;
    }
  }
}

- (void)_updateLeadingBarConstraints
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (self->_leadingGroupsMode == 1 && !self->_leadingBarConstraints)
  {
    leadingBar = [(_UINavigationBarContentViewLayout *)self leadingBar];
    view = [leadingBar view];

    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [(UILayoutGuide *)self->_leadingBarGuide leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v19[0] = v16;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self->_leadingBarGuide trailingAnchor];
    v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v19[1] = v6;
    topAnchor = [view topAnchor];
    topAnchor2 = [(UILayoutGuide *)self->_leadingBarGuide topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v19[2] = v9;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_leadingBarGuide bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v19[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
    leadingBarConstraints = self->_leadingBarConstraints;
    self->_leadingBarConstraints = v13;
  }
}

- (void)_updateTitleViewConstraints
{
  v73 = *MEMORY[0x1E69E9840];
  if (self->_contentView)
  {
    if (!self->_titleEnabled)
    {
      return;
    }

    titleControl = [(_UINavigationBarContentViewLayout *)self titleControl];
    _wantsBaselineAlignedTitle = [(_UINavigationBarContentViewLayout *)self _wantsBaselineAlignedTitle];
    v5 = _wantsBaselineAlignedTitle;
    titleViewConstraints = self->_titleViewConstraints;
    if (titleViewConstraints)
    {
      v7 = [(NSArray *)titleViewConstraints objectAtIndexedSubscript:[(NSArray *)self->_titleViewConstraints count]- 2];
      v8 = [(NSArray *)self->_titleViewConstraints objectAtIndexedSubscript:[(NSArray *)self->_titleViewConstraints count]- 1];
LABEL_24:
      if (self->_titleAlignment != 1)
      {
        [v7 setConstant:self->_titlePositionAdjustment.horizontal];
      }

      if (v5)
      {
        [(_UINavigationBarContentViewLayout *)self _inlineTitleBaselineOffset];
      }

      else
      {
        vertical = self->_titlePositionAdjustment.vertical;
      }

      [v8 setConstant:vertical];

      return;
    }

    v66 = _wantsBaselineAlignedTitle;
    leadingAnchor = [titleControl leadingAnchor];
    leadingAnchor2 = [(UILayoutGuide *)self->_titleViewGuide leadingAnchor];
    v60 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v70[0] = v60;
    trailingAnchor = [titleControl trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self->_titleViewGuide trailingAnchor];
    [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v12 = v11 = titleControl;
    v70[1] = v12;
    topAnchor = [v11 topAnchor];
    topAnchor2 = [(UILayoutGuide *)self->_titleViewGuide topAnchor];
    v15 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v70[2] = v15;
    v68 = v11;
    bottomAnchor = [v11 bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_titleViewGuide bottomAnchor];
    v18 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v70[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:4];
    v67 = [v19 mutableCopy];

    v20 = self->_titleIconView;
    v21 = v20;
    if (v20)
    {
      leadingAnchor3 = [(UIView *)v20 leadingAnchor];
      leadingAnchor4 = [(UILayoutGuide *)self->_titleViewGuide leadingAnchor];
      v61 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
      v69[0] = v61;
      trailingAnchor3 = [(UIView *)v21 trailingAnchor];
      trailingAnchor4 = [(UILayoutGuide *)self->_titleViewGuide trailingAnchor];
      v56 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
      v69[1] = v56;
      topAnchor3 = [(UIView *)v21 topAnchor];
      topAnchor4 = [(UILayoutGuide *)self->_titleViewGuide topAnchor];
      v53 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
      v69[2] = v53;
      bottomAnchor3 = [(UIView *)v21 bottomAnchor];
      bottomAnchor4 = [(UILayoutGuide *)self->_titleViewGuide bottomAnchor];
      v50 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
      v69[3] = v50;
      leadingAnchor5 = [v68 leadingAnchor];
      trailingAnchor5 = [(UIView *)v21 trailingAnchor];
      v47 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor5 constant:8.0];
      v69[4] = v47;
      centerYAnchor = [v68 centerYAnchor];
      centerYAnchor2 = [(UIView *)v21 centerYAnchor];
      v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v69[5] = v23;
      widthAnchor = [(UIView *)v21 widthAnchor];
      v25 = [widthAnchor constraintLessThanOrEqualToConstant:24.0];
      v69[6] = v25;
      centerYAnchor3 = [(UIView *)v21 centerYAnchor];
      centerYAnchor4 = [(UILayoutGuide *)self->_titleViewGuide centerYAnchor];
      v28 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v69[7] = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:8];
      [v67 addObjectsFromArray:v29];

      if (self->_titleAlignment == 1)
      {
        leadingAnchor6 = [(UIView *)v21 leadingAnchor];
        leadingAnchor7 = [(UILayoutGuide *)self->_titleViewGuide leadingAnchor];
        v7 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:0.0];

        v32 = v67;
        titleControl = v68;
LABEL_20:

        v5 = v66;
        if (v66)
        {
          firstBaselineAnchor = [titleControl firstBaselineAnchor];
          topAnchor5 = [(UILayoutGuide *)self->_titleViewGuide topAnchor];
          [firstBaselineAnchor constraintEqualToAnchor:topAnchor5 constant:0.0];
        }

        else
        {
          firstBaselineAnchor = [titleControl centerYAnchor];
          topAnchor5 = [(UILayoutGuide *)self->_titleViewGuide centerYAnchor];
          [firstBaselineAnchor constraintEqualToAnchor:topAnchor5];
        }
        v8 = ;

        [v32 addObject:v7];
        [v32 addObject:v8];
        v42 = [v32 copy];
        v43 = self->_titleViewConstraints;
        self->_titleViewConstraints = v42;

        goto LABEL_24;
      }

      p_titleAlignment = &self->_titleAlignment;
      v32 = v67;
      titleControl = v68;
    }

    else
    {
      v32 = v67;
      titleControl = v68;
      if (self->_titleAlignment == 1)
      {
        leadingAnchor6 = [v68 leadingAnchor];
        leadingAnchor8 = [(UILayoutGuide *)self->_titleViewGuide leadingAnchor];
        v7 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor8 constant:0.0];

        goto LABEL_20;
      }

      p_titleAlignment = &self->_titleAlignment;
    }

    safeAreaLayoutGuide = [(UIView *)self->_contentView safeAreaLayoutGuide];
    leadingAnchor6 = [safeAreaLayoutGuide centerXAnchor];

    if (v21)
    {
      widthAnchor2 = [(UIView *)v21 widthAnchor];
      v37 = [leadingAnchor6 anchorByOffsettingWithDimension:widthAnchor2 multiplier:0.5 constant:4.0];

      leadingAnchor6 = v37;
    }

    centerXAnchor = [titleControl centerXAnchor];
    v7 = [centerXAnchor constraintEqualToAnchor:leadingAnchor6];

    LODWORD(v39) = 1148846080;
    if (!*p_titleAlignment)
    {
      *&v39 = 275.0;
    }

    [v7 setPriority:v39];
    goto LABEL_20;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v45 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_fault_impl(&dword_188A29000, v45, OS_LOG_TYPE_FAULT, "Unexpected nil _contentView in %@", buf, 0xCu);
    }
  }

  else
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &_updateTitleViewConstraints___s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unexpected nil _contentView in %@", buf, 0xCu);
    }
  }
}

- (void)_updateRenamingContentViewConfiguration
{
  if ([(_UINavigationBarContentViewLayout *)self _renameShouldTakeOverContentView])
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  renamingContentView = self->_renamingContentView;

  [(_UINavigationBarTitleRenamerContentView *)renamingContentView setTextAlignment:v3];
}

- (BOOL)_renameShouldTakeOverContentView
{
  traitCollection = [(UIView *)self->_contentView traitCollection];
  v3 = [traitCollection horizontalSizeClass] == 1;

  return v3;
}

- (void)_updateRenamingContentViewConstraints
{
  v78[8] = *MEMORY[0x1E69E9840];
  if (self->_renamingContentView)
  {
    _renameShouldTakeOverContentView = [(_UINavigationBarContentViewLayout *)self _renameShouldTakeOverContentView];
    renamingContentView = self->_renamingContentView;
    if (_renameShouldTakeOverContentView)
    {
      leadingAnchor = [(_UINavigationBarTitleRenamerContentView *)renamingContentView leadingAnchor];
      layoutMarginsGuide = [(UIView *)self->_contentView layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

      v76 = v8;
      LODWORD(v9) = 1132396544;
      [v8 setPriority:v9];
      trailingAnchor = [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView trailingAnchor];
      layoutMarginsGuide2 = [(UIView *)self->_contentView layoutMarginsGuide];
      trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
      v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

      v74 = v13;
      LODWORD(v14) = 1132396544;
      [v13 setPriority:v14];
      v78[0] = v8;
      v78[1] = v13;
      leadingAnchor3 = [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView leadingAnchor];
      layoutMarginsGuide3 = [(UIView *)self->_contentView layoutMarginsGuide];
      leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
      v66 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
      v78[2] = v66;
      trailingAnchor3 = [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView trailingAnchor];
      layoutMarginsGuide4 = [(UIView *)self->_contentView layoutMarginsGuide];
      trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
      v62 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
      v78[3] = v62;
      leadingAnchor5 = [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView leadingAnchor];
      navItemContentLayoutGuide = [(_UINavigationBarContentView *)self->_contentView navItemContentLayoutGuide];
      leadingAnchor6 = [navItemContentLayoutGuide leadingAnchor];
      v58 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6];
      v78[4] = v58;
      trailingAnchor5 = [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView trailingAnchor];
      navItemContentLayoutGuide2 = [(_UINavigationBarContentView *)self->_contentView navItemContentLayoutGuide];
      trailingAnchor6 = [navItemContentLayoutGuide2 trailingAnchor];
      v15 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
      v78[5] = v15;
      centerYAnchor = [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView centerYAnchor];
      navItemContentLayoutGuide3 = [(_UINavigationBarContentView *)self->_contentView navItemContentLayoutGuide];
      centerYAnchor2 = [navItemContentLayoutGuide3 centerYAnchor];
      v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v78[6] = v19;
      topAnchor = [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView topAnchor];
      navItemContentLayoutGuide4 = [(_UINavigationBarContentView *)self->_contentView navItemContentLayoutGuide];
      topAnchor2 = [navItemContentLayoutGuide4 topAnchor];
      v23 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
      v78[7] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:8];
      renamingContentViewConstraints = self->_renamingContentViewConstraints;
      self->_renamingContentViewConstraints = v24;

      renamingContentViewInsetConstraint = self->_renamingContentViewInsetConstraint;
      self->_renamingContentViewInsetConstraint = 0;
    }

    else
    {
      [(_UINavigationBarTitleRenamerContentView *)renamingContentView horizontalTextInset];
      v30 = v29;
      widthAnchor = [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView widthAnchor];
      v32 = [widthAnchor constraintEqualToConstant:280.0];

      LODWORD(v33) = 1144750080;
      [v32 setPriority:v33];
      leadingAnchor7 = [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView leadingAnchor];
      titleEnabled = self->_titleEnabled;
      if (titleEnabled)
      {
        widthAnchor = [(_UINavigationBarContentViewLayout *)self titleControl];
        [widthAnchor leadingAnchor];
      }

      else
      {
        [(UILayoutGuide *)self->_titleViewGuide leadingAnchor];
      }
      v36 = ;
      v37 = [leadingAnchor7 constraintEqualToAnchor:v36 constant:-v30];
      if (titleEnabled)
      {

        v36 = widthAnchor;
      }

      v75 = v37;
      v77[0] = v37;
      trailingAnchor7 = [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView trailingAnchor];
      trailingAnchor8 = [(UILayoutGuide *)self->_titleViewGuide trailingAnchor];
      v69 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];
      v77[1] = v69;
      v77[2] = v32;
      v76 = v32;
      topAnchor3 = [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView topAnchor];
      topAnchor4 = [(UILayoutGuide *)self->_titleViewGuide topAnchor];
      v39 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
      v77[3] = v39;
      bottomAnchor = [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView bottomAnchor];
      bottomAnchor2 = [(UILayoutGuide *)self->_titleViewGuide bottomAnchor];
      v42 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
      v77[4] = v42;
      centerYAnchor3 = [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView centerYAnchor];
      centerYAnchor4 = [(UILayoutGuide *)self->_titleViewGuide centerYAnchor];
      v45 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v77[5] = v45;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:6];

      if (self->_titleEnabled)
      {
        trailingAnchor9 = [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView trailingAnchor];
        titleControl = [(_UINavigationBarContentViewLayout *)self titleControl];
        trailingAnchor10 = [titleControl trailingAnchor];
        v50 = [trailingAnchor9 constraintGreaterThanOrEqualToAnchor:trailingAnchor10];
        v51 = [(NSArray *)v46 arrayByAddingObject:v50];

        v46 = v51;
      }

      v52 = self->_renamingContentViewInsetConstraint;
      self->_renamingContentViewInsetConstraint = v75;
      v53 = v75;

      v54 = self->_renamingContentViewConstraints;
      self->_renamingContentViewConstraints = v46;
    }
  }

  else
  {
    v27 = self->_renamingContentViewInsetConstraint;
    self->_renamingContentViewInsetConstraint = 0;

    v28 = self->_renamingContentViewConstraints;
    self->_renamingContentViewConstraints = 0;
  }
}

- (void)_updateCenterBarConstraints
{
  v24[5] = *MEMORY[0x1E69E9840];
  if (self->_centerGroupsMode == 1 && !self->_centerBarConstraints)
  {
    centerBar = [(_UINavigationBarContentViewLayout *)self centerBar];
    view = [centerBar view];

    centerXAnchor = [view centerXAnchor];
    safeAreaLayoutGuide = [(UIView *)self->_contentView safeAreaLayoutGuide];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    [v8 setIdentifier:@"UI-center-button-bar"];
    LODWORD(v9) = 1144569856;
    [v8 setPriority:v9];
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [(UILayoutGuide *)self->_centerBarGuide leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v24[0] = v21;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self->_centerBarGuide trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v24[1] = v10;
    topAnchor = [view topAnchor];
    topAnchor2 = [(UILayoutGuide *)self->_centerBarGuide topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[2] = v13;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_centerBarGuide bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v24[3] = v16;
    v24[4] = v8;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];
    centerBarConstraints = self->_centerBarConstraints;
    self->_centerBarConstraints = v17;
  }
}

- (void)_updateTrailingBarConstraints
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (self->_trailingGroupsEnabled && !self->_trailingBarConstraints)
  {
    trailingBar = [(_UINavigationBarContentViewLayout *)self trailingBar];
    view = [trailingBar view];

    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [(UILayoutGuide *)self->_trailingBarGuide leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v19[0] = v16;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self->_trailingBarGuide trailingAnchor];
    v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v19[1] = v6;
    topAnchor = [view topAnchor];
    topAnchor2 = [(UILayoutGuide *)self->_trailingBarGuide topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v19[2] = v9;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_trailingBarGuide bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v19[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
    trailingBarConstraints = self->_trailingBarConstraints;
    self->_trailingBarConstraints = v13;
  }
}

- (void)_updateAugmentedTitleViewConstraints
{
  v18[4] = *MEMORY[0x1E69E9840];
  augmentedTitleView = self->_augmentedTitleView;
  if (augmentedTitleView)
  {
    if (!self->_augmentedTitleViewConstraints)
    {
      leadingAnchor = [(_UINavigationBarAugmentedTitleView *)augmentedTitleView leadingAnchor];
      leadingAnchor2 = [(UIView *)self->_contentView leadingAnchor];
      v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v18[0] = v15;
      trailingAnchor = [(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_contentView trailingAnchor];
      v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v18[1] = v6;
      topAnchor = [(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView topAnchor];
      topAnchor2 = [(UIView *)self->_contentView topAnchor];
      v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v18[2] = v9;
      bottomAnchor = [(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView bottomAnchor];
      bottomAnchor2 = [(UIView *)self->_contentView bottomAnchor];
      v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v18[3] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
      augmentedTitleViewConstraints = self->_augmentedTitleViewConstraints;
      self->_augmentedTitleViewConstraints = v13;
    }
  }
}

- (_UIButtonBar)leadingBar
{
  if (self->_leadingGroupsMode)
  {
    leadingBar = self->_leadingBar;
    if (!leadingBar)
    {
      _newButtonBar = [(_UINavigationBarContentViewLayout *)self _newButtonBar];
      v6 = self->_leadingBar;
      self->_leadingBar = _newButtonBar;

      [(_UIButtonBar *)self->_leadingBar setForceFixedSpacing:0];
      [(_UIButtonBar *)self->_leadingBar setSupportsOverflow:_UIBarsDesktopNavigationBarEnabled()];
      [(_UIButtonBar *)self->_leadingBar setGroupOrderer:0];
      [(_UIButtonBar *)self->_leadingBar setDelegate:self];
      [(_UINavigationBarContentViewLayout *)self _updateFixedLeadingGroups];
      leadingBar = self->_leadingBar;
    }

    v7 = leadingBar;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_UINavigationBarTitleControl)titleControl
{
  if (self->_titleEnabled)
  {
    [(_UINavigationBarContentViewLayout *)self _createTitleControlIfNecessary];
    v4 = self->_titleControl;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_UIBarButtonItemSearchBarGroup)trailingSearchBarGroup
{
  if (self->_placeInlineSearchBarInCenter)
  {
    return 0;
  }

  else
  {
    return self->_inlineSearchBarGroup;
  }
}

- (id)_newButtonBar
{
  v3 = objc_alloc_init(_UIButtonBar);
  [(_UIButtonBar *)v3 setAllowsViewWrappers:1];
  traitCollection = [(UIView *)self->_contentView traitCollection];
  v5 = +[_UIButtonBarButtonVisualProvider visualProviderForIdiom:](_UIButtonBarButtonVisualProvider, "visualProviderForIdiom:", [traitCollection userInterfaceIdiom]);
  objc_opt_class();
  v6 = _UIButtonBarButtonMakerForVisualProvider();
  [(_UIButtonBar *)v3 setViewUpdater:v6];

  [(_UINavigationBarContentView *)self->_contentView buttonBarMinimumInterItemSpace];
  [(_UIButtonBar *)v3 setMinimumInterItemSpace:?];
  view = [(_UIButtonBar *)v3 view];
  [view setLayoutMargins:{0.0, 0.0, 0.0, 0.0}];

  view2 = [(_UIButtonBar *)v3 view];
  [view2 setInsetsLayoutMarginsFromSafeArea:0];

  [(_UIButtonBar *)v3 set_appearanceDelegate:self->_contentView];
  [(_UIButtonBar *)v3 setPlainItemAppearance:self->_plainItemAppearance];
  [(_UIButtonBar *)v3 setDoneItemAppearance:self->_doneItemAppearance];
  return v3;
}

- (id)_overflowItem
{
  v21[1] = *MEMORY[0x1E69E9840];
  overflowItem = self->_overflowItem;
  if (!overflowItem)
  {
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50___UINavigationBarContentViewLayout__overflowItem__block_invoke;
    v18[3] = &unk_1E710C9C8;
    objc_copyWeak(&v19, &location);
    v5 = [UIDeferredMenuElement elementWithUncachedProvider:v18];
    v21[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v7 = [UIMenu menuWithChildren:v6];

    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __50___UINavigationBarContentViewLayout__overflowItem__block_invoke_2;
    v16 = &unk_1E710C9F0;
    objc_copyWeak(v17, &location);
    v17[1] = a2;
    [v7 setHeaderViewProvider:&v13];
    v8 = [UIBarButtonItem alloc];
    v9 = [(UIBarButtonItem *)v8 initWithImage:0 menu:v7, v13, v14, v15, v16];
    v11 = self->_overflowItem;
    p_overflowItem = &self->_overflowItem;
    *p_overflowItem = v9;

    objc_destroyWeak(v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    overflowItem = *p_overflowItem;
  }

  return overflowItem;
}

- (void)updateAlphas
{
  augmentedTitleView = self->_augmentedTitleView;
  if (augmentedTitleView)
  {
    [(_UINavigationBarAugmentedTitleView *)augmentedTitleView _navigationBarBackButtonAlpha];
    [(UIView *)self->_backButton setAlpha:?];
    [(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView _navigationBarLeadingBarButtonsAlpha];
    v5 = v4;
    view = [(_UIButtonBar *)self->_leadingBar view];
    [view setAlpha:v5];

    [(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView _navigationBarTrailingBarButtonsAlpha];
    v8 = v7;
    view2 = [(_UIButtonBar *)self->_trailingBar view];
    v13 = view2;
    v10 = v8;
LABEL_8:
    [view2 setAlpha:v10];

    return;
  }

  if (![(_UINavigationBarContentViewLayout *)self _inActiveRenameSession])
  {
    [(UIView *)self->_backButton setAlpha:1.0];
    view3 = [(_UIButtonBar *)self->_leadingBar view];
    [view3 setAlpha:1.0];

    view2 = [(_UIButtonBar *)self->_trailingBar view];
    v13 = view2;
    v10 = 1.0;
    goto LABEL_8;
  }

  _renameShouldTakeOverContentView = [(_UINavigationBarContentViewLayout *)self _renameShouldTakeOverContentView];

  [(_UINavigationBarContentViewLayout *)self setContentHidden:_renameShouldTakeOverContentView];
}

- (void)removeAllSnapshots
{
  if (!self->_keepsSnapshotsInHierarchy)
  {
    [(UIView *)self->_titleViewSnapshot removeFromSuperview];
    titleViewSnapshot = self->_titleViewSnapshot;
    self->_titleViewSnapshot = 0;

    [(UIView *)self->_leadingBarSnapshot removeFromSuperview];
    leadingBarSnapshot = self->_leadingBarSnapshot;
    self->_leadingBarSnapshot = 0;

    [(UIView *)self->_trailingBarSnapshot removeFromSuperview];
    trailingBarSnapshot = self->_trailingBarSnapshot;
    self->_trailingBarSnapshot = 0;
  }
}

- (NSString)description
{
  v34.receiver = self;
  v34.super_class = _UINavigationBarContentViewLayout;
  v3 = [(_UINavigationBarContentViewLayout *)&v34 description];
  v4 = [v3 mutableCopy];

  if (self->_contentView)
  {
    if (self->_active)
    {
      v5 = @" active";
    }

    else
    {
      v5 = &stru_1EFB14550;
    }

    [v4 appendFormat:@" contentView=%p %@\n", self->_contentView, v5];
    [v4 appendFormat:@" formatting: alignment="];
    resolvedAlignment = self->_resolvedAlignment;
    alignment = self->_alignment;
    v8 = StringForAlignment(resolvedAlignment);
    if (resolvedAlignment == alignment)
    {
      [v4 appendString:v8];
    }

    else
    {
      v9 = StringForAlignment(self->_alignment);
      [v4 appendFormat:@"%@[from %@]", v8, v9];
    }

    v10 = StringForContentSize(self->_resolvedContentSize);
    [v4 appendFormat:@" contentSize=%@", v10];

    requestedContentSize = self->_requestedContentSize;
    if (requestedContentSize != self->_resolvedContentSize)
    {
      v12 = StringForContentSize(requestedContentSize);
      [v4 appendFormat:@"(%@)", v12];
    }

    [v4 appendFormat:@" resolvedHeight=%f", *&self->_resolvedHeight];
    top = self->_layoutMargins.top;
    leading = self->_layoutMargins.leading;
    bottom = self->_layoutMargins.bottom;
    trailing = self->_layoutMargins.trailing;
    if (leading != 0.0 || top != 0.0 || trailing != 0.0 || bottom != 0.0)
    {
      v17 = NSStringFromDirectionalEdgeInsets(*&top);
      [v4 appendFormat:@" layoutMargins=%@", v17];
    }

    if (self->_overrideHeight > 0.0)
    {
      [v4 appendFormat:@" overrideHeight=%f", *&self->_overrideHeight];
    }

    if (self->_hasFakedBackButton)
    {
      [v4 appendString:@" hasFakedBackButton"];
    }

    horizontal = self->_titlePositionAdjustment.horizontal;
    if (horizontal == 0.0)
    {
      vertical = self->_titlePositionAdjustment.vertical;
      if (vertical == 0.0)
      {
        v20 = NSStringFromUIOffset(*&horizontal);
        [v4 appendFormat:@" titlePositionAdjustment=%@", v20];
      }
    }

    [v4 appendFormat:@"\n layoutGuides: backButtonGuide=%p, leadingBarGuide=%p, titleViewGuide=%p, centerBarGuide=%p, trailingBarGuide=%p", self->_backButtonGuide, self->_leadingBarGuide, self->_titleViewGuide, self->_centerBarGuide, self->_trailingBarGuide];
    [v4 appendString:@"\n views:"];
    if (self->_augmentedTitleView)
    {
      [v4 appendFormat:@" augmentedTitleView=%p", self->_augmentedTitleView];
    }

    backButton = self->_backButton;
    if (backButton)
    {
      [v4 appendFormat:@" backButton=%p minimumWidth=%f maximumWidth=%f", backButton, *&self->_minimumBackButtonWidth, *&self->_maximumBackButtonWidth];
    }

    else if (self->_hasFakedBackButton)
    {
      [v4 appendString:@" fakedBackButton"];
    }

    if (self->_leadingGroupsMode)
    {
      leadingBar = self->_leadingBar;
      view = [(_UIButtonBar *)leadingBar view];
      [v4 appendFormat:@" leadingBar=%p view=%p", leadingBar, view];

      if (self->_leadingGroupsMode == 2)
      {
        [v4 appendString:@" autospilling"];
      }
    }

    if (self->_titleEnabled)
    {
      titleControl = self->_titleControl;
      _debugInfo = [(_UINavigationBarTitleControl *)titleControl _debugInfo];
      [v4 appendFormat:@" titleView=%p %@", titleControl, _debugInfo];

      if (self->_inlineTitleViewAlpha < 1.0)
      {
        [v4 appendFormat:@" alpha=%f", *&self->_inlineTitleViewAlpha];
      }
    }

    if (self->_centerGroupsMode)
    {
      centerBar = self->_centerBar;
      view2 = [(_UIButtonBar *)centerBar view];
      [v4 appendFormat:@" centerBar=%p view=%p", centerBar, view2];

      if (self->_centerGroupsMode == 2)
      {
        [v4 appendString:@" autospilling"];
      }
    }

    if (self->_trailingGroupsEnabled)
    {
      trailingBar = self->_trailingBar;
      view3 = [(_UIButtonBar *)trailingBar view];
      [v4 appendFormat:@" trailingBar=%p view=%p", trailingBar, view3];

      [v4 appendFormat:@" overflowGroup=%p", self->_overflowGroup];
      [v4 appendFormat:@" searchGroup=%p", self->_inlineSearchBarGroup];
    }

    [v4 appendString:@"\n constraints:"];
    if (self->_leadingBarConstraints)
    {
      [v4 appendFormat:@" leadingBarConstraints=%p", self->_leadingBarConstraints];
    }

    if (self->_titleViewConstraints)
    {
      [v4 appendFormat:@" titleViewConstraints=%p", self->_titleViewConstraints];
    }

    if (self->_centerBarConstraints)
    {
      [v4 appendFormat:@" centerBarConstraints=%p", self->_centerBarConstraints];
    }

    if (self->_trailingBarConstraints)
    {
      [v4 appendFormat:@" trailingBarConstraints=%p", self->_trailingBarConstraints];
    }

    if (self->_alignmentConstraints)
    {
      [v4 appendFormat:@" alignmentConstraints=%p", self->_alignmentConstraints];
    }

    if (self->_heightConstraints)
    {
      [v4 appendFormat:@" heightConstraints=%p", self->_heightConstraints];
    }

    if (self->_backButtonConstraints)
    {
      [v4 appendFormat:@" backButtonConstraints=%p", self->_backButtonConstraints];
    }

    if ([(NSLayoutConstraint *)self->_backButtonMinimumWidthConstraint isActive])
    {
      v30 = "";
    }

    else
    {
      v30 = "in";
    }

    backButtonMinimumWidthConstraint = self->_backButtonMinimumWidthConstraint;
    if ([(NSLayoutConstraint *)self->_backButtonMaximumWidthConstraint isActive])
    {
      v32 = "";
    }

    else
    {
      v32 = "in";
    }

    [v4 appendFormat:@" backButtonMinimumWidthConstraint[%sactive]=%p backButtonMaximumWidthConstraint[%sactive]=%p", v30, backButtonMinimumWidthConstraint, v32, self->_backButtonMaximumWidthConstraint];
    if (self->_augmentedTitleViewConstraints)
    {
      [v4 appendFormat:@" augmentedTitleViewConstraints=%p", self->_augmentedTitleViewConstraints];
    }
  }

  else
  {
    [v4 appendString:@" invalid"];
  }

  return v4;
}

- (_UINavigationBarContentViewLayout)initWithContentView:(id)view
{
  viewCopy = view;
  v24.receiver = self;
  v24.super_class = _UINavigationBarContentViewLayout;
  v5 = [(_UINavigationBarContentViewLayout *)&v24 init];
  v6 = v5;
  if (v5)
  {
    v5->_contentView = viewCopy;
    *&v5->_requestedContentSize = vdupq_n_s64(2uLL);
    [(_UINavigationBarContentViewLayout *)v5 baseHeight];
    v6->_resolvedHeight = v7;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BackButton(layout=%p)", v6];
    v9 = CreateLayoutGuide(v8, viewCopy);
    backButtonGuide = v6->_backButtonGuide;
    v6->_backButtonGuide = v9;

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LeadingBar(layout=%p)", v6];
    v12 = CreateLayoutGuide(v11, viewCopy);
    leadingBarGuide = v6->_leadingBarGuide;
    v6->_leadingBarGuide = v12;

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TitleView(layout=%p)", v6];
    v15 = CreateLayoutGuide(v14, viewCopy);
    titleViewGuide = v6->_titleViewGuide;
    v6->_titleViewGuide = v15;

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CenterBar(layout=%p)", v6];
    v18 = CreateLayoutGuide(v17, viewCopy);
    centerBarGuide = v6->_centerBarGuide;
    v6->_centerBarGuide = v18;

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TrailingBar(layout=%p)", v6];
    v21 = CreateLayoutGuide(v20, viewCopy);
    trailingBarGuide = v6->_trailingBarGuide;
    v6->_trailingBarGuide = v21;

    [(_UINavigationBarContentViewLayout *)v6 _updateLayoutGuideConstraints];
    v6->_inlineTitleViewAlpha = 1.0;
  }

  return v6;
}

- (BOOL)_augmentedTitleViewIgnoresResolvedHeight
{
  if ([(_UINavigationBarContentView *)self->_contentView toolbarStyle]&& ![(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView _hideNavigationBarCenterBarButtons]|| ![(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView _hideNavigationBarBackButton]|| ![(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView _hideNavigationBarStandardTitle]|| ![(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView _hideNavigationBarLeadingBarButtons])
  {
    return 0;
  }

  augmentedTitleView = self->_augmentedTitleView;

  return [(_UINavigationBarAugmentedTitleView *)augmentedTitleView _hideNavigationBarTrailingBarButtons];
}

- (double)_inlineTitleBaselineOffset
{
  visualProvider = [(_UINavigationBarContentView *)self->_contentView visualProvider];

  contentView = self->_contentView;
  if (visualProvider)
  {
    visualProvider2 = [(_UINavigationBarContentView *)contentView visualProvider];
    [visualProvider2 inlineTitleBaselineOffset];
    v7 = v6;

    return v7;
  }

  else
  {
    traitCollection = [(UIView *)contentView traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    v11 = 21.0;
    if (userInterfaceIdiom == 5)
    {
      v11 = 16.0;
    }

    v12 = 28.0;
    if (userInterfaceIdiom == 5)
    {
      v12 = 22.0;
    }

    if (self->_resolvedContentSize != 1)
    {
      v11 = v12;
    }

    return self->_titlePositionAdjustment.vertical + v11;
  }
}

- (BOOL)_wantsBaselineAlignedTitle
{
  titleControl = [(_UINavigationBarContentViewLayout *)self titleControl];
  hasBaseline = [titleControl hasBaseline];

  return hasBaseline;
}

- (void)_disableLayoutFlushing:(BOOL)flushing onlyViews:(id)views exceptViews:(id)exceptViews
{
  flushingCopy = flushing;
  v23[4] = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  exceptViewsCopy = exceptViews;
  titleViewSnapshot = self->_titleViewSnapshot;
  if (!titleViewSnapshot)
  {
    titleViewSnapshot = self->_titleControl;
  }

  v23[0] = titleViewSnapshot;
  leadingBarSnapshot = self->_leadingBarSnapshot;
  view = leadingBarSnapshot;
  if (!leadingBarSnapshot)
  {
    view = [(_UIButtonBar *)self->_leadingBar view];
  }

  v23[1] = view;
  trailingBarSnapshot = self->_trailingBarSnapshot;
  view2 = trailingBarSnapshot;
  if (!trailingBarSnapshot)
  {
    view2 = [(_UIButtonBar *)self->_trailingBar view];
  }

  v23[2] = view2;
  v23[3] = self->_backButton;
  if (!trailingBarSnapshot)
  {

    if (leadingBarSnapshot)
    {
      goto LABEL_9;
    }

LABEL_30:

    goto LABEL_9;
  }

  if (!leadingBarSnapshot)
  {
    goto LABEL_30;
  }

LABEL_9:
  for (i = 0; i != 4; ++i)
  {
    v16 = v23[i];
    v17 = v16;
    if (!v16)
    {
      goto LABEL_25;
    }

    if (flushingCopy)
    {
      _disableLayoutFlushingCount = [v16 _disableLayoutFlushingCount];
      if (_disableLayoutFlushingCount >= 1)
      {
        v19 = _disableLayoutFlushingCount + 1;
      }

      else
      {
        v19 = 1;
      }

      [v17 _setDisableLayoutFlushingCount:v19];
      [v17 _disableLayoutFlushing];
      goto LABEL_25;
    }

    if (viewsCopy)
    {
      v20 = [viewsCopy containsObject:v16];
      v21 = v20;
      if (!exceptViewsCopy)
      {
        if (v20)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (!exceptViewsCopy)
      {
        goto LABEL_24;
      }

      v21 = 1;
    }

    if (![exceptViewsCopy containsObject:v17] && (v21 & 1) != 0)
    {
LABEL_24:
      [(UIView *)v17 _popDisableLayoutFlushing];
    }

LABEL_25:
  }

  for (j = 3; j != -1; --j)
  {
  }
}

- (void)_updateConditionalGuideConstraintsForActiveLayout:(BOOL)layout
{
  if (layout)
  {
    traitCollection = [(UIView *)self->_contentView traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];
    v6 = horizontalSizeClass == 1;
    v7 = horizontalSizeClass != 1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  [(NSLayoutConstraint *)self->_titleToCenterBarSpacer setActive:v7];
  [(NSLayoutConstraint *)self->_centerBarToTrailingBarSpacer setActive:v7];
  titleToTrailingBarSpacer = self->_titleToTrailingBarSpacer;

  [(NSLayoutConstraint *)titleToTrailingBarSpacer setActive:v6];
}

- (void)_deactivateAllConstraints
{
  [MEMORY[0x1E69977A0] deactivateConstraints:self->_layoutGuideConstraints];
  [(NSLayoutConstraint *)self->_titleGuideTabBarLeadingConstraint setActive:0];
  [(NSLayoutConstraint *)self->_titleGuideTabBarTrailingConstraint setActive:0];
  [(_UINavigationBarContentViewLayout *)self _updateConditionalGuideConstraintsForActiveLayout:0];
  [MEMORY[0x1E69977A0] deactivateConstraints:self->_alignmentConstraints];
  [MEMORY[0x1E69977A0] deactivateConstraints:self->_heightConstraints];
  if (self->_backButtonConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
  }

  [(NSLayoutConstraint *)self->_backButtonMinimumWidthConstraint setActive:0];
  [(NSLayoutConstraint *)self->_backButtonMaximumWidthConstraint setActive:0];
  if (self->_leadingBarConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
  }

  if (self->_titleViewConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
  }

  if (self->_renamingContentViewConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
  }

  if (self->_centerBarConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
  }

  if (self->_trailingBarConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
  }

  if (self->_augmentedTitleViewConstraints)
  {
    v3 = MEMORY[0x1E69977A0];

    [v3 deactivateConstraints:?];
  }
}

- (void)cleanupAfterLayoutTransitionCompleted
{
  [(_UINavigationBarContentViewLayout *)self removeAllSnapshots];
  [(_UINavigationBarContentViewLayout *)self _updateSubviewOrder];
  [(_UINavigationBarContentViewLayout *)self _deactivateAllConstraints];

  [(_UINavigationBarContentViewLayout *)self _activateAllConstraints];
}

- (void)setTabBarContentGuide:(id)guide
{
  guideCopy = guide;
  if (self->_tabBarContentGuide != guideCopy)
  {
    objc_storeStrong(&self->_tabBarContentGuide, guide);
    [(NSLayoutConstraint *)self->_titleGuideTabBarLeadingConstraint setActive:0];
    if (guideCopy)
    {
      leadingAnchor = [(UILayoutGuide *)self->_titleViewGuide leadingAnchor];
      leadingAnchor2 = [(UILayoutGuide *)self->_tabBarContentGuide leadingAnchor];
      v7 = [leadingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor2];
      titleGuideTabBarLeadingConstraint = self->_titleGuideTabBarLeadingConstraint;
      self->_titleGuideTabBarLeadingConstraint = v7;

      LODWORD(v9) = 1144750080;
      [(NSLayoutConstraint *)self->_titleGuideTabBarLeadingConstraint setPriority:v9];
      [(NSLayoutConstraint *)self->_titleGuideTabBarTrailingConstraint setActive:0];
      trailingAnchor = [(UILayoutGuide *)self->_titleViewGuide trailingAnchor];
      trailingAnchor2 = [(UILayoutGuide *)self->_tabBarContentGuide trailingAnchor];
      v12 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
      titleGuideTabBarTrailingConstraint = self->_titleGuideTabBarTrailingConstraint;
      self->_titleGuideTabBarTrailingConstraint = v12;

      [(NSLayoutConstraint *)self->_centerBarGuideTabBarLeadingConstraint setActive:0];
      leadingAnchor3 = [(UILayoutGuide *)self->_centerBarGuide leadingAnchor];
      leadingAnchor4 = [(UILayoutGuide *)self->_tabBarContentGuide leadingAnchor];
      v16 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      centerBarGuideTabBarLeadingConstraint = self->_centerBarGuideTabBarLeadingConstraint;
      self->_centerBarGuideTabBarLeadingConstraint = v16;

      [(NSLayoutConstraint *)self->_centerBarGuideTabBarTrailingConstraint setActive:0];
      trailingAnchor3 = [(UILayoutGuide *)self->_centerBarGuide trailingAnchor];
      trailingAnchor4 = [(UILayoutGuide *)self->_tabBarContentGuide trailingAnchor];
      v20 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      centerBarGuideTabBarTrailingConstraint = self->_centerBarGuideTabBarTrailingConstraint;
      self->_centerBarGuideTabBarTrailingConstraint = v20;

      [(_UINavigationBarContentViewLayout *)self _updateTabBarGuideConstraints];
    }

    else
    {
      v22 = self->_titleGuideTabBarLeadingConstraint;
      self->_titleGuideTabBarLeadingConstraint = 0;

      [(NSLayoutConstraint *)self->_titleGuideTabBarTrailingConstraint setActive:0];
      v23 = self->_titleGuideTabBarTrailingConstraint;
      self->_titleGuideTabBarTrailingConstraint = 0;

      [(NSLayoutConstraint *)self->_centerBarGuideTabBarLeadingConstraint setActive:0];
      v24 = self->_centerBarGuideTabBarLeadingConstraint;
      self->_centerBarGuideTabBarLeadingConstraint = 0;

      [(NSLayoutConstraint *)self->_centerBarGuideTabBarTrailingConstraint setActive:0];
      v25 = self->_centerBarGuideTabBarTrailingConstraint;
      self->_centerBarGuideTabBarTrailingConstraint = 0;
    }
  }

  [(_UINavigationBarContentViewLayout *)self _resolveContentSizeForced:1];
}

- (void)setWantsHostedTabBarMetrics:(BOOL)metrics
{
  if (self->_wantsHostedTabBarMetrics != metrics)
  {
    self->_wantsHostedTabBarMetrics = metrics;
    [(_UINavigationBarContentViewLayout *)self updateTitleHeight];
  }
}

- (void)setBackButtonAlpha:(double)alpha titleLabelAlpha:(double)labelAlpha titleViewAlpha:(double)viewAlpha barsAlpha:(double)barsAlpha
{
  alphaCopy = alpha;
  viewAlphaCopy = 0.0;
  v12 = alpha > 0.0;
  v13 = 0.0;
  if (v12)
  {
    augmentedTitleView = self->_augmentedTitleView;
    v13 = alphaCopy;
    if (augmentedTitleView)
    {
      [(_UINavigationBarAugmentedTitleView *)augmentedTitleView _navigationBarBackButtonAlpha];
    }
  }

  [(UIView *)self->_backButton setAlpha:v13, alphaCopy];
  self->_titleViewHidden = viewAlpha <= 0.0;
  [(UIView *)self->_titleIconView setAlpha:viewAlpha];
  [(UIView *)self->_titleIconView setHidden:[(_UINavigationBarContentViewLayout *)self _inActiveRenameSession]];
  if (!self->_titleViewHidden)
  {
    if ([(_UINavigationBarContentViewLayout *)self _inActiveRenameSession])
    {
      viewAlphaCopy = 0.0;
    }

    else
    {
      viewAlphaCopy = viewAlpha;
    }
  }

  [(_UINavigationBarTitleControl *)self->_titleControl setControlAlpha:viewAlphaCopy];
  [(_UINavigationBarTitleControl *)self->_titleControl setContentAlpha:labelAlpha];
  barsAlphaCopy = 0.0;
  barsAlphaCopy2 = 0.0;
  if (barsAlpha > 0.0)
  {
    v17 = self->_augmentedTitleView;
    barsAlphaCopy = barsAlpha;
    barsAlphaCopy2 = barsAlpha;
    if (v17)
    {
      [(_UINavigationBarAugmentedTitleView *)v17 _navigationBarLeadingBarButtonsAlpha];
      barsAlphaCopy = v18;
      [(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView _navigationBarTrailingBarButtonsAlpha];
      barsAlphaCopy2 = v19;
    }
  }

  view = [(_UIButtonBar *)self->_leadingBar view];
  [view setAlpha:barsAlphaCopy];

  [(UIView *)self->_leadingBarSnapshot setAlpha:barsAlphaCopy];
  [(UIView *)self->_titleViewSnapshot setAlpha:barsAlphaCopy];
  view2 = [(_UIButtonBar *)self->_trailingBar view];
  [view2 setAlpha:barsAlphaCopy2];

  trailingBarSnapshot = self->_trailingBarSnapshot;

  [(UIView *)trailingBarSnapshot setAlpha:barsAlphaCopy2];
}

- (void)setContentHidden:(BOOL)hidden
{
  v3 = 1.0;
  if (hidden)
  {
    v3 = 0.0;
  }

  [(_UINavigationBarContentViewLayout *)self setContentAlpha:v3];
}

- (void)setBackButtonHidden:(BOOL)hidden titleLabelHidden:(BOOL)labelHidden titleViewHidden:(BOOL)viewHidden barsHidden:(BOOL)barsHidden
{
  v6 = 1.0;
  if (hidden)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  if (labelHidden)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  if (viewHidden)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  if (barsHidden)
  {
    v6 = 0.0;
  }

  [(_UINavigationBarContentViewLayout *)self setBackButtonAlpha:v7 titleLabelAlpha:v8 titleViewAlpha:v9 barsAlpha:v6];
}

- (void)_deactivateConstraintsIfNecessary:(id)necessary
{
  if (necessary)
  {
    if (self->_active)
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:?];
    }
  }
}

- (void)_activateConstraintsAndUpdateViewOrderIfNecessary:(id)necessary
{
  if (necessary && self->_active)
  {
    necessaryCopy = necessary;
    [(_UINavigationBarContentViewLayout *)self _updateSubviewOrder];
    [MEMORY[0x1E69977A0] activateConstraints:necessaryCopy];
  }
}

- (void)setAlignment:(int64_t)alignment
{
  if (self->_alignment != alignment)
  {
    [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_alignmentConstraints];
    self->_alignment = alignment;
    alignmentConstraints = self->_alignmentConstraints;
    self->_alignmentConstraints = 0;

    [(_UINavigationBarContentViewLayout *)self _updateAlignmentConstraints];
    v7 = self->_alignmentConstraints;

    [(_UINavigationBarContentViewLayout *)self _activateConstraintsAndUpdateViewOrderIfNecessary:v7];
  }
}

- (void)_resolveContentSizeForced:(BOOL)forced
{
  forcedCopy = forced;
  requestedContentSize = self->_requestedContentSize;
  augmentedTitleView = self->_augmentedTitleView;
  if (augmentedTitleView)
  {
    requestedContentSize = [(_UINavigationBarAugmentedTitleView *)augmentedTitleView _preferredContentSizeForSize:requestedContentSize];
    if (!self->_resolvedContentSize)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarContentViewLayout.m" lineNumber:1163 description:{@"Augmented title view incorrectly returned UIBarPreferredContentSizeAutomatic, return the value passed for automatic behavior"}];
    }
  }

  if (requestedContentSize != self->_resolvedContentSize || forcedCopy)
  {
    self->_resolvedContentSize = requestedContentSize;
    [(_UINavigationBarContentViewLayout *)self _updateAlignmentConstraints];
    [(_UINavigationBarContentViewLayout *)self _updateHeightConstraints];

    [(_UINavigationBarContentViewLayout *)self _updateTitleViewConstraints];
  }
}

- (void)setRequestedContentSize:(int64_t)size
{
  if (!size)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarContentViewLayout.m" lineNumber:1175 description:@"Automatic content size is not valid for layout calculations"];
  }

  self->_requestedContentSize = size;

  [(_UINavigationBarContentViewLayout *)self _resolveContentSizeForced:0];
}

- (void)setLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  v3.f64[0] = margins.top;
  v3.f64[1] = margins.leading;
  v4.f64[0] = margins.bottom;
  v4.f64[1] = margins.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_layoutMargins.top, v3), vceqq_f64(*&self->_layoutMargins.bottom, v4)))) & 1) == 0 || self->_hasFakedBackButton)
  {
    self->_layoutMargins = margins;
    [(_UINavigationBarContentViewLayout *)self _updateMarginConstraints];
  }
}

- (void)setOverrideHeight:(double)height
{
  if (height < 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarContentViewLayout.m" lineNumber:1190 description:@"Negative values are not valid for the override height"];
  }

  if (self->_overrideHeight != height)
  {
    self->_overrideHeight = height;

    [(_UINavigationBarContentViewLayout *)self _updateHeightConstraints];
  }
}

- (void)setBackButton:(id)button
{
  buttonCopy = button;
  if (self->_backButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_backButtonConstraints];
    [(UIView *)self->_backButton removeFromSuperview];
    objc_storeStrong(&self->_backButton, button);
    backButtonConstraints = self->_backButtonConstraints;
    self->_backButtonConstraints = 0;

    [(_UIButtonBarButton *)self->_backButton setAppearanceData:self->_backButtonAppearance];
    [(_UINavigationBarContentViewLayout *)self _updateBackButtonConstraints];
    [(_UINavigationBarContentViewLayout *)self _activateConstraintsAndUpdateViewOrderIfNecessary:self->_backButtonConstraints];
    [(_UINavigationBarContentViewLayout *)self _updateBackButtonWidthConstraintsAndActivateIfNecessary];
    buttonCopy = v7;
  }
}

- (NSString)currentBackButtonTitle
{
  visualProvider = [(_UIButtonBarButton *)self->_backButton visualProvider];
  contentView = [visualProvider contentView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentTitle = [contentView currentTitle];
  }

  else
  {
    currentTitle = 0;
  }

  return currentTitle;
}

- (void)setMinimumBackButtonWidth:(double)width
{
  v3 = fmax(width, 0.0);
  if (self->_minimumBackButtonWidth != v3)
  {
    self->_minimumBackButtonWidth = v3;
    [(_UINavigationBarContentViewLayout *)self _updateBackButtonWidthConstraintsAndActivateIfNecessary];
  }
}

- (void)setMaximumBackButtonWidth:(double)width
{
  v3 = fmax(width, 0.0);
  if (self->_maximumBackButtonWidth != v3)
  {
    self->_maximumBackButtonWidth = v3;
    [(_UINavigationBarContentViewLayout *)self _updateBackButtonWidthConstraintsAndActivateIfNecessary];
  }
}

- (void)setHasFakedBackButton:(BOOL)button
{
  if (self->_hasFakedBackButton != button)
  {
    self->_hasFakedBackButton = button;
  }
}

- (void)_createTitleControlIfNecessary
{
  if (!self->_titleControl)
  {
    v4 = objc_alloc_init(_UINavigationBarTitleControl);
    titleControl = self->_titleControl;
    self->_titleControl = v4;

    [(UIView *)self->_titleControl setTranslatesAutoresizingMaskIntoConstraints:0];
    visualProvider = [(_UINavigationBarContentView *)self->_contentView visualProvider];
    titleControlVisualProvider = [visualProvider titleControlVisualProvider];
    [(_UINavigationBarTitleControl *)self->_titleControl setVisualProvider:titleControlVisualProvider];

    [(_UINavigationBarTitleControl *)self->_titleControl setTitleMenuProvider:self->_titleMenuProvider];
    [(_UINavigationBarTitleControl *)self->_titleControl setDocumentProperties:self->_documentProperties];
    titleViewGuide = self->_titleViewGuide;
    v9 = self->_titleControl;

    [(_UINavigationBarTitleControl *)v9 setTitleLayoutGuide:titleViewGuide];
  }
}

- (void)configureWithTitle:(id)title attributes:(id)attributes compressionResistancePriority:(float)priority
{
  titleCopy = title;
  attributesCopy = attributes;
  v9 = 1;
  if (self->_titleEnabled)
  {
    titleView = [(_UINavigationBarTitleControl *)self->_titleControl titleView];
    v9 = titleView != 0;
  }

  self->_titleEnabled = 1;
  [(_UINavigationBarContentViewLayout *)self _createTitleControlIfNecessary];
  [(_UINavigationBarTitleControl *)self->_titleControl setTitleView:0];
  [(_UINavigationBarTitleControl *)self->_titleControl setTitle:titleCopy];
  [(_UINavigationBarTitleControl *)self->_titleControl setTitleAttributes:attributesCopy];
  *&v11 = priority;
  [(_UINavigationBarTitleControl *)self->_titleControl setTitleViewCompressionResistancePriority:v11];
  [(_UINavigationBarTitleControl *)self->_titleControl setTitleMenuProvider:self->_titleMenuProvider];
  [(_UINavigationBarTitleControl *)self->_titleControl setDocumentProperties:self->_documentProperties];
  self->_currentButtonBarLayoutInfo.isInitialized = 0;
  if (v9)
  {
    [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_titleViewConstraints];
    titleViewConstraints = self->_titleViewConstraints;
    self->_titleViewConstraints = 0;

    [(_UINavigationBarContentViewLayout *)self _updateTitleViewConstraints];
    [(_UINavigationBarContentViewLayout *)self _activateConstraintsAndUpdateViewOrderIfNecessary:self->_titleViewConstraints];
  }
}

- (void)configureWithTitleView:(id)view compressionResistancePriority:(float)priority
{
  viewCopy = view;
  v6 = 1;
  if (self->_titleEnabled)
  {
    title = [(_UINavigationBarTitleControl *)self->_titleControl title];
    if (!title)
    {
      titleView = [(_UINavigationBarTitleControl *)self->_titleControl titleView];
      v6 = titleView != viewCopy;
    }
  }

  self->_titleEnabled = 1;
  [(_UINavigationBarContentViewLayout *)self _createTitleControlIfNecessary];
  [(_UINavigationBarTitleControl *)self->_titleControl setTitle:0];
  [(_UINavigationBarTitleControl *)self->_titleControl setTitleAttributes:0];
  [(_UINavigationBarTitleControl *)self->_titleControl setTitleView:viewCopy];
  *&v9 = priority;
  [(_UINavigationBarTitleControl *)self->_titleControl setTitleViewCompressionResistancePriority:v9];
  [(_UINavigationBarTitleControl *)self->_titleControl setTitleMenuProvider:self->_titleMenuProvider];
  [(_UINavigationBarTitleControl *)self->_titleControl setDocumentProperties:self->_documentProperties];
  self->_currentButtonBarLayoutInfo.isInitialized = 0;
  if (v6)
  {
    [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_titleViewConstraints];
    titleViewConstraints = self->_titleViewConstraints;
    self->_titleViewConstraints = 0;

    [(_UINavigationBarContentViewLayout *)self _updateTitleViewConstraints];
    [(_UINavigationBarContentViewLayout *)self _activateConstraintsAndUpdateViewOrderIfNecessary:self->_titleViewConstraints];
  }
}

- (double)tabBarExtension
{
  [(_UINavigationBarContentViewLayout *)self _baseTabBarExtension];
  v4 = v3;
  if (v3 > 0.0)
  {
    [(UILayoutGuide *)self->_tabBarContentGuide layoutFrame];
    v4 = v4 + v5;
    if (_UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar())
    {
      return v4 + 7.0;
    }
  }

  return v4;
}

- (void)_updateTitleControl
{
  [(_UINavigationBarTitleControl *)self->_titleControl setTitleMenuProvider:self->_titleMenuProvider];
  [(_UINavigationBarTitleControl *)self->_titleControl setDocumentProperties:self->_documentProperties];

  [(_UINavigationBarContentViewLayout *)self _updateTitleControlVisibility];
}

- (void)_updateTitleControlVisibility
{
  v3 = 0.0;
  if (!self->_titleViewHidden)
  {
    _inActiveRenameSession = [(_UINavigationBarContentViewLayout *)self _inActiveRenameSession];
    v3 = 1.0;
    if (_inActiveRenameSession)
    {
      v3 = 0.0;
    }
  }

  [(_UINavigationBarTitleControl *)self->_titleControl setControlAlpha:v3];

  [(_UINavigationBarContentViewLayout *)self _applyInlineTitleViewAlphaImmediately];
}

- (void)_updateDocumentIconViewIfNecessary
{
  activeRenamerSession = self->_activeRenamerSession;
  [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_titleViewConstraints];
  titleViewConstraints = self->_titleViewConstraints;
  self->_titleViewConstraints = 0;

  if (activeRenamerSession)
  {
    [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_renamingContentViewConstraints];
    renamingContentViewConstraints = self->_renamingContentViewConstraints;
    self->_renamingContentViewConstraints = 0;
  }

  [(UIView *)self->_titleIconView removeFromSuperview];
  titleIconView = self->_titleIconView;
  self->_titleIconView = 0;

  if ([(UIDocumentProperties *)self->_documentProperties wantsIconRepresentation])
  {
    _iconView = [(UIDocumentProperties *)self->_documentProperties _iconView];
    [(UIView *)_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = self->_titleIconView;
    self->_titleIconView = _iconView;
  }

  [(_UINavigationBarContentViewLayout *)self _updateTitleViewConstraints];
  [(_UINavigationBarContentViewLayout *)self _activateConstraintsAndUpdateViewOrderIfNecessary:self->_titleViewConstraints];
  if (activeRenamerSession)
  {
    [(_UINavigationBarContentViewLayout *)self _updateRenamingContentViewConfiguration];
    [(_UINavigationBarContentViewLayout *)self _updateRenamingContentViewConstraints];
    [(_UINavigationBarContentViewLayout *)self _activateConstraintsAndUpdateViewOrderIfNecessary:self->_renamingContentViewConstraints];
    _renameShouldTakeOverContentView = [(_UINavigationBarContentViewLayout *)self _renameShouldTakeOverContentView];

    [(_UINavigationBarContentViewLayout *)self setContentHidden:_renameShouldTakeOverContentView];
  }
}

- (void)setTitleMenuProvider:(id)provider
{
  v4 = _Block_copy(provider);
  titleMenuProvider = self->_titleMenuProvider;
  self->_titleMenuProvider = v4;

  v6 = self->_titleMenuProvider;
  titleControl = self->_titleControl;

  [(_UINavigationBarTitleControl *)titleControl setTitleMenuProvider:v6];
}

- (void)setDocumentProperties:(id)properties
{
  propertiesCopy = properties;
  documentProperties = self->_documentProperties;
  if (documentProperties != propertiesCopy)
  {
    [(UIDocumentProperties *)documentProperties _setWantsIconRepresentationChangedHandler:0];
    objc_storeStrong(&self->_documentProperties, properties);
    [(_UINavigationBarTitleControl *)self->_titleControl setDocumentProperties:self->_documentProperties];
    [(_UINavigationBarContentViewLayout *)self _updateDocumentIconViewIfNecessary];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59___UINavigationBarContentViewLayout_setDocumentProperties___block_invoke;
    v7[3] = &unk_1E70F5A28;
    objc_copyWeak(&v8, &location);
    [(UIDocumentProperties *)propertiesCopy _setWantsIconRepresentationChangedHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)setRenameHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_renameHandler != handlerCopy)
  {
    v6 = handlerCopy;
    if (self->_activeRenamerSession)
    {
      [(_UINavigationBarContentViewLayout *)self setActiveRenamerSession:0];
    }

    objc_storeStrong(&self->_renameHandler, handler);
    [(_UINavigationBarContentViewLayout *)self _updateTitleControl];
    handlerCopy = v6;
  }
}

- (void)_updateRenamingContentViewIfNecessary
{
  [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_renamingContentViewConstraints];
  renamingContentView = self->_renamingContentView;
  if (self->_activeRenamerSession)
  {
    [(_UINavigationBarTitleRenamerContentView *)renamingContentView setHorizontalTextInsetDidChangeCallback:0];
    [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView removeFromSuperview];
    renamerContentView = [(_UINavigationBarTitleRenamerSession *)self->_activeRenamerSession renamerContentView];
    [renamerContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&self->_renamingContentView, renamerContentView);
    [(_UINavigationBarContentViewLayout *)self _updateRenamingContentViewConfiguration];
    [(_UINavigationBarContentViewLayout *)self _updateRenamingContentViewConstraints];
    [(_UINavigationBarContentViewLayout *)self _activateConstraintsAndUpdateViewOrderIfNecessary:self->_renamingContentViewConstraints];
    [renamerContentView becomeFirstResponder];
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74___UINavigationBarContentViewLayout__updateRenamingContentViewIfNecessary__block_invoke;
    v8[3] = &unk_1E710C9A0;
    objc_copyWeak(&v11, &location);
    v5 = renamerContentView;
    v9 = v5;
    selfCopy = self;
    [v5 setHorizontalTextInsetDidChangeCallback:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    [(_UINavigationBarTitleRenamerContentView *)renamingContentView removeFromSuperview];
    v6 = self->_renamingContentView;
    self->_renamingContentView = 0;

    renamingContentViewConstraints = self->_renamingContentViewConstraints;
    self->_renamingContentViewConstraints = 0;
  }
}

- (void)_updateRenamingContentViewVisibilityIfNecessary
{
  activeRenamerSession = self->_activeRenamerSession;
  renamingContentView = self->_renamingContentView;
  if (activeRenamerSession)
  {
    [(_UINavigationBarTitleRenamerContentView *)renamingContentView setAlpha:1.0];
    _renameShouldTakeOverContentView = [(_UINavigationBarContentViewLayout *)self _renameShouldTakeOverContentView];
  }

  else
  {
    [(_UINavigationBarTitleRenamerContentView *)renamingContentView setAlpha:0.0];
    _renameShouldTakeOverContentView = 0;
  }

  [(_UINavigationBarContentViewLayout *)self setContentHidden:_renameShouldTakeOverContentView];
}

- (void)setActiveRenamerSession:(id)session
{
  sessionCopy = session;
  if (self->_activeRenamerSession != sessionCopy)
  {
    objc_storeStrong(&self->_activeRenamerSession, session);
    if (sessionCopy)
    {
      [(_UINavigationBarContentViewLayout *)self _updateRenamingContentViewIfNecessary];
      [(_UINavigationBarTitleRenamerContentView *)self->_renamingContentView setAlpha:0.0];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61___UINavigationBarContentViewLayout_setActiveRenamerSession___block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61___UINavigationBarContentViewLayout_setActiveRenamerSession___block_invoke_2;
    v6[3] = &unk_1E70F3C60;
    v7 = sessionCopy;
    selfCopy = self;
    [UIView animateWithDuration:4 delay:v9 options:v6 animations:0.3 completion:0.0];
  }
}

- (void)_didTriggerRenameAction
{
  delegate = [(_UINavigationBarContentView *)self->_contentView delegate];
  [delegate navigationBarContentViewDidTriggerTitleRenameAction:self->_contentView];
}

- (void)setTitlePositionAdjustment:(UIOffset)adjustment
{
  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  if (self->_titlePositionAdjustment.horizontal != adjustment.horizontal || self->_titlePositionAdjustment.vertical != adjustment.vertical)
  {
    [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_titleViewConstraints];
    self->_titlePositionAdjustment.horizontal = horizontal;
    self->_titlePositionAdjustment.vertical = vertical;
    titleViewConstraints = self->_titleViewConstraints;
    self->_titleViewConstraints = 0;

    [(_UINavigationBarContentViewLayout *)self _updateTitleViewConstraints];
    v8 = self->_titleViewConstraints;

    [(_UINavigationBarContentViewLayout *)self _activateConstraintsAndUpdateViewOrderIfNecessary:v8];
  }
}

- (void)setTitleAlignment:(int64_t)alignment
{
  if (self->_titleAlignment != alignment)
  {
    [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_titleViewConstraints];
    self->_titleAlignment = alignment;
    titleViewConstraints = self->_titleViewConstraints;
    self->_titleViewConstraints = 0;

    [(_UINavigationBarContentViewLayout *)self _updateTitleViewConstraints];
    [(_UINavigationBarContentViewLayout *)self _updateTabBarGuideConstraints];
    v7 = self->_titleViewConstraints;

    [(_UINavigationBarContentViewLayout *)self _activateConstraintsAndUpdateViewOrderIfNecessary:v7];
  }
}

- (double)baselineOffsetFromTop
{
  [(_UINavigationBarContentViewLayout *)self _inlineTitleBaselineOffset];
  v4 = v3;
  [(UILayoutGuide *)self->_titleViewGuide layoutFrame];
  return v4 + v5;
}

- (void)setAugmentedTitleView:(id)view
{
  viewCopy = view;
  if (self->_augmentedTitleView != viewCopy)
  {
    v7 = viewCopy;
    [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_augmentedTitleViewConstraints];
    [(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView removeFromSuperview];
    objc_storeStrong(&self->_augmentedTitleView, view);
    augmentedTitleViewConstraints = self->_augmentedTitleViewConstraints;
    self->_augmentedTitleViewConstraints = 0;

    [(_UINavigationBarContentViewLayout *)self _resolveContentSizeForced:0];
    [(_UINavigationBarContentViewLayout *)self _updateAugmentedTitleViewConstraints];
    [(_UINavigationBarContentViewLayout *)self _activateConstraintsAndUpdateViewOrderIfNecessary:self->_augmentedTitleViewConstraints];
    [(_UINavigationBarContentViewLayout *)self _updateAugmentedTitleViewLayout];
    viewCopy = v7;
  }
}

- (void)setLargeTitleHeight:(double)height
{
  if (self->_largeTitleHeight != height)
  {
    self->_largeTitleHeight = height;
    [(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView _contentDidChange];
  }
}

- (void)setLargeTitleHeightRange:(id)range
{
  if (self->_largeTitleHeightRange.minimum != range.var0 || self->_largeTitleHeightRange.maximum != range.var1)
  {
    self->_largeTitleHeightRange = range;
    [(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView _contentDidChange];
  }
}

- (void)updateAugmentedTitleViewHeight
{
  if (self->_augmentedTitleView)
  {
    [(_UINavigationBarContentViewLayout *)self _updateHeightConstraints];
  }
}

- (void)_updateAugmentedTitleViewLayout
{
  [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_alignmentConstraints];
  alignmentConstraints = self->_alignmentConstraints;
  self->_alignmentConstraints = 0;

  [(_UINavigationBarContentViewLayout *)self _updateAlignmentConstraints];
  [(_UINavigationBarContentViewLayout *)self _activateConstraintsAndUpdateViewOrderIfNecessary:self->_alignmentConstraints];
  [(_UINavigationBarContentViewLayout *)self _updateBackButtonWidthConstraintsAndActivateIfNecessary];

  [(_UINavigationBarContentViewLayout *)self _updateHeightConstraints];
}

- (void)updateAugmentedTitleViewLayout
{
  if (self->_augmentedTitleView)
  {
    [(_UINavigationBarContentViewLayout *)self _updateAugmentedTitleViewLayout];
  }
}

- (void)updateAugmentedTitleViewBackButtonConstraints
{
  if (self->_augmentedTitleView)
  {
    [(_UINavigationBarContentViewLayout *)self _updateBackButtonWidthConstraintsAndActivateIfNecessary];
  }
}

- (void)updateRenameForHorizontalSizeClassChangeIfNecessary
{
  if ([(_UINavigationBarContentViewLayout *)self _inActiveRenameSession])
  {

    [(_UINavigationBarContentViewLayout *)self _updateRenamingContentViewIfNecessary];
  }
}

- (void)_updateFixedLeadingGroups
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (val)
  {
    if (*(val + 67) == 1)
    {
      v2 = *(val + 38);
      if (v2)
      {
        if (*(val + 289) == 1)
        {
          v3 = *(val + 31);
          if (!v3)
          {
            objc_initWeak(&location, val);
            v4 = [UIBarButtonItem alloc];
            v5 = [UIImage systemImageNamed:@"sidebar.leading"];
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = 3221225472;
            v14[2] = __62___UINavigationBarContentViewLayout__updateFixedLeadingGroups__block_invoke;
            v14[3] = &unk_1E70F7450;
            objc_copyWeak(&v15, &location);
            v6 = [UIAction actionWithTitle:&stru_1EFB14550 image:v5 identifier:0 handler:v14];
            v7 = [(UIBarButtonItem *)v4 initWithPrimaryAction:v6];

            v8 = [UIBarButtonItemGroup alloc];
            v18[0] = v7;
            v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
            v10 = [(UIBarButtonItemGroup *)v8 initWithBarButtonItems:v9 representativeItem:0];
            v11 = *(val + 31);
            *(val + 31) = v10;

            objc_destroyWeak(&v15);
            objc_destroyWeak(&location);
            v3 = *(val + 31);
          }

          v17 = v3;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
          [*(val + 38) setFixedLeadingGroups:v12];
        }

        else
        {
          v13 = MEMORY[0x1E695E0F0];

          [v2 setFixedLeadingGroups:v13];
        }
      }
    }
  }
}

- (void)setLeadingGroupsMode:(int64_t)mode
{
  leadingGroupsMode = self->_leadingGroupsMode;
  if (leadingGroupsMode != mode)
  {
    self->_leadingGroupsMode = mode;
    if (mode != 1 || leadingGroupsMode == 1)
    {
      if (mode != 1 && leadingGroupsMode == 1)
      {
        [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_leadingBarConstraints];
        view = [(_UIButtonBar *)self->_leadingBar view];
        [view removeFromSuperview];

        leadingBarConstraints = self->_leadingBarConstraints;
        self->_leadingBarConstraints = 0;
      }
    }

    else
    {
      [(_UINavigationBarContentViewLayout *)self _updateLeadingBarConstraints];
      v5 = self->_leadingBarConstraints;

      [(_UINavigationBarContentViewLayout *)self _activateConstraintsAndUpdateViewOrderIfNecessary:v5];
    }
  }
}

- (void)setEnableAlternatePopItem:(BOOL)item
{
  if (self->_enableAlternatePopItem != item)
  {
    self->_enableAlternatePopItem = item;
    [(_UINavigationBarContentViewLayout *)self _updateFixedLeadingGroups];
  }
}

- (NSArray)leadingGroups
{
  leadingBar = self->_leadingBar;
  if (leadingBar)
  {
    barButtonGroups = [(_UIButtonBar *)leadingBar barButtonGroups];
  }

  else
  {
    barButtonGroups = MEMORY[0x1E695E0F0];
  }

  return barButtonGroups;
}

- (void)setLeadingGroups:(id)groups
{
  groupsCopy = groups;
  leadingBar = [(_UINavigationBarContentViewLayout *)self leadingBar];
  [leadingBar setBarButtonGroups:groupsCopy];
}

- (void)_updateFixedCenterGroups
{
  if (self)
  {
    v2 = *(self + 544);
    v3 = *(self + 312);
    if (v2 == 1 && v3)
    {
      array = [MEMORY[0x1E695DF70] array];
      v5 = array;
      v7 = array;
      if (*(self + 291) == 1 && *(self + 240))
      {
        [array addObject:?];
        v5 = v7;
      }

      [*(self + 312) setFixedLeadingGroups:v5];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];

      [v3 setFixedLeadingGroups:v6];
    }
  }
}

- (void)setCenterGroupsMode:(int64_t)mode
{
  centerGroupsMode = self->_centerGroupsMode;
  if (centerGroupsMode != mode)
  {
    self->_centerGroupsMode = mode;
    [(_UINavigationBarContentViewLayout *)self _updateFixedCenterGroups];
    if (mode != 1 || centerGroupsMode == 1)
    {
      if (mode != 1 && centerGroupsMode == 1)
      {
        [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_centerBarConstraints];
        view = [(_UIButtonBar *)self->_centerBar view];
        [view removeFromSuperview];

        centerBarConstraints = self->_centerBarConstraints;
        self->_centerBarConstraints = 0;
      }
    }

    else
    {
      [(_UINavigationBarContentViewLayout *)self _updateCenterBarConstraints];
      v6 = self->_centerBarConstraints;

      [(_UINavigationBarContentViewLayout *)self _activateConstraintsAndUpdateViewOrderIfNecessary:v6];
    }
  }
}

- (NSArray)centerBarGroups
{
  centerBar = self->_centerBar;
  if (centerBar)
  {
    barButtonGroups = [(_UIButtonBar *)centerBar barButtonGroups];
  }

  else
  {
    barButtonGroups = MEMORY[0x1E695E0F0];
  }

  return barButtonGroups;
}

- (void)setCenterBarGroups:(id)groups
{
  groupsCopy = groups;
  centerBar = [(_UINavigationBarContentViewLayout *)self centerBar];
  [centerBar setBarButtonGroups:groupsCopy];
}

- (BOOL)_canCustomizeBar
{
  if (!self->_customizationIdentifier)
  {
    return 0;
  }

  if (self->_centerGroupsMode == 1)
  {
    traitCollection = [(UIView *)self->_contentView traitCollection];
    if ([traitCollection userInterfaceIdiom])
    {
      traitCollection2 = [(UIView *)self->_contentView traitCollection];
      userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

      if (userInterfaceIdiom != 6)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

- (void)_resolvedButtonBarLayoutInfo
{
  *(self + 32) = 0u;
  *(self + 48) = 0u;
  *self = 0u;
  *(self + 16) = 0u;
  if (a2)
  {
    [(_UINavigationBarContentViewLayout *)self _buttonBarLayoutInfoCalculation];
    inlineSearchBarGroup = [a2 inlineSearchBarGroup];
    searchBar = [(_UIBarButtonItemSearchBarGroup *)inlineSearchBarGroup searchBar];

    v5 = searchBar;
    if (searchBar)
    {
      [searchBar _leftInsetForInlineSearch];
      v7 = v6;
      [searchBar _rightInsetForInlineSearch];
      v9 = v7 + v8;
      v10 = *(self + 48);
      v11 = *(self + 40) + v10;
      [searchBar _setLeftInsetForInlineSearch:?];
      [searchBar _setRightInsetForInlineSearch:v10];
      v5 = searchBar;
      if (v9 != v11)
      {
        [(_UINavigationBarContentViewLayout *)self _buttonBarLayoutInfoCalculation];
        v5 = searchBar;
      }
    }
  }
}

- (id)_fixedItemsMenu
{
  v14[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v2 = _UINSLocalizedStringWithDefaultValue(@"Customize Toolbar", @"Customize Toolbar");
  v3 = [UIImage systemImageNamed:@"wrench"];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __52___UINavigationBarContentViewLayout__fixedItemsMenu__block_invoke;
  v11 = &unk_1E70F7450;
  objc_copyWeak(&v12, &location);
  v4 = [UIAction actionWithTitle:v2 image:v3 identifier:0 handler:&v8];

  v14[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:{1, v8, v9, v10, v11}];
  v6 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:0 options:1 children:v5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

- (void)_updateSearchGroupLocation
{
  if (self->_placeInlineSearchBarInCenter)
  {
    [(_UINavigationBarContentViewLayout *)self _updateFixedTrailingGroups];

    [(_UINavigationBarContentViewLayout *)self _updateFixedCenterGroups];
  }

  else
  {
    [(_UINavigationBarContentViewLayout *)self _updateFixedCenterGroups];

    [(_UINavigationBarContentViewLayout *)self _updateFixedTrailingGroups];
  }
}

- (void)setInlineSearchBarGroup:(id)group
{
  groupCopy = group;
  if (self->_inlineSearchBarGroup != groupCopy)
  {
    v6 = groupCopy;
    objc_storeStrong(&self->_inlineSearchBarGroup, group);
    [(_UINavigationBarContentViewLayout *)self _updateSearchGroupLocation];
    groupCopy = v6;
  }
}

- (void)setPlaceInlineSearchBarInCenter:(BOOL)center
{
  if (self->_placeInlineSearchBarInCenter != center)
  {
    self->_placeInlineSearchBarInCenter = center;
    [(_UINavigationBarContentViewLayout *)self _updateSearchGroupLocation];
  }
}

- (void)updateOverflowItemImage
{
  traitCollection = [(UIView *)self->_contentView traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v5 = @"ellipsis.circle";
  if (userInterfaceIdiom == 6)
  {
    v5 = @"ellipsis";
  }

  v6 = v5;

  v7 = [UIImage systemImageNamed:v6];

  [(UIBarButtonItem *)self->_overflowItem setImage:v7];
}

- (void)_prepareOverflowItem
{
  image = [(UIBarButtonItem *)self->_overflowItem image];

  if (!image)
  {
    [(_UINavigationBarContentViewLayout *)self updateOverflowItemImage];
    self->_hasFreshlyCreatedOverflowGroupItemView = 1;
  }
}

- (void)_setOverflowGroupHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if (!hidden)
  {
    [(_UINavigationBarContentViewLayout *)self _prepareOverflowItem];
  }

  overflowGroup = self->_overflowGroup;

  [(UIBarButtonItemGroup *)overflowGroup setHidden:hiddenCopy];
}

- (void)setTrailingGroupsEnabled:(BOOL)enabled
{
  if (self->_trailingGroupsEnabled != enabled)
  {
    self->_trailingGroupsEnabled = enabled;
    [(_UINavigationBarContentViewLayout *)self _updateFixedTrailingGroups];
    if (self->_trailingGroupsEnabled)
    {
      [(_UINavigationBarContentViewLayout *)self _updateTrailingBarConstraints];
      trailingBarConstraints = self->_trailingBarConstraints;

      [(_UINavigationBarContentViewLayout *)self _activateConstraintsAndUpdateViewOrderIfNecessary:trailingBarConstraints];
    }

    else
    {
      [(_UINavigationBarContentViewLayout *)self _deactivateConstraintsIfNecessary:self->_trailingBarConstraints];
      view = [(_UIButtonBar *)self->_trailingBar view];
      [view removeFromSuperview];

      v6 = self->_trailingBarConstraints;
      self->_trailingBarConstraints = 0;
    }
  }
}

- (NSArray)trailingGroups
{
  trailingBar = self->_trailingBar;
  if (trailingBar)
  {
    barButtonGroups = [(_UIButtonBar *)trailingBar barButtonGroups];
  }

  else
  {
    barButtonGroups = MEMORY[0x1E695E0F0];
  }

  return barButtonGroups;
}

- (void)setTrailingGroups:(id)groups
{
  groupsCopy = groups;
  trailingBar = [(_UINavigationBarContentViewLayout *)self trailingBar];
  [trailingBar setBarButtonGroups:groupsCopy];
}

- (void)setFixedTrailingGroup:(id)group
{
  groupCopy = group;
  if (self->_fixedTrailingGroup != groupCopy)
  {
    v6 = groupCopy;
    objc_storeStrong(&self->_fixedTrailingGroup, group);
    [(_UINavigationBarContentViewLayout *)self _updateFixedTrailingGroups];
    groupCopy = v6;
  }
}

- (UIBarButtonItem)trailingClippingItem
{
  if (self->_trailingGroupsEnabled)
  {
    trailingBar = self->_trailingBar;
    if (trailingBar)
    {
      trailingBar = [trailingBar trailingClippingItem];
    }
  }

  else
  {
    trailingBar = 0;
  }

  return trailingBar;
}

- (void)setCustomizationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_customizationIdentifier;
  v6 = identifierCopy;
  v11 = v6;
  if (v5 == v6)
  {

    goto LABEL_10;
  }

  if (!v6 || !v5)
  {

    v8 = v11;
    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqual:v6];

  v8 = v11;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v9 = [(NSString *)v8 copy];
    customizationIdentifier = self->_customizationIdentifier;
    self->_customizationIdentifier = v9;

    if (!self->_customizationIdentifier)
    {
      [(_UIButtonBar *)self->_centerBar setGroupOrderer:?];
      goto LABEL_12;
    }

    v5 = [_UIButtonBarGroupOrderer groupOrdererForCustomizationIdentifier:?];
    [(_UIButtonBar *)self->_centerBar setGroupOrderer:v5];
LABEL_10:

LABEL_12:
    v8 = v11;
  }
}

- (void)setAdditionalOverflowItems:(id)items
{
  itemsCopy = items;
  if (self->_additionalOverflowItems != itemsCopy)
  {
    objc_storeStrong(&self->_additionalOverflowItems, items);
  }

  [(UIBarButtonItem *)self->_overflowItem _updateMenuInPlace];
}

- (void)setPlainItemAppearance:(id)appearance
{
  v4 = [appearance copy];
  plainItemAppearance = self->_plainItemAppearance;
  self->_plainItemAppearance = v4;

  [(_UIButtonBar *)self->_leadingBar setPlainItemAppearance:self->_plainItemAppearance];
  v6 = self->_plainItemAppearance;
  trailingBar = self->_trailingBar;

  [(_UIButtonBar *)trailingBar setPlainItemAppearance:v6];
}

- (void)setDoneItemAppearance:(id)appearance
{
  v4 = [appearance copy];
  doneItemAppearance = self->_doneItemAppearance;
  self->_doneItemAppearance = v4;

  [(_UIButtonBar *)self->_leadingBar setDoneItemAppearance:self->_doneItemAppearance];
  v6 = self->_doneItemAppearance;
  trailingBar = self->_trailingBar;

  [(_UIButtonBar *)trailingBar setDoneItemAppearance:v6];
}

- (void)setBackButtonAppearance:(id)appearance
{
  v4 = [appearance copy];
  backButtonAppearance = self->_backButtonAppearance;
  self->_backButtonAppearance = v4;

  v6 = self->_backButtonAppearance;
  backButton = self->_backButton;

  [(_UIButtonBarButton *)backButton setAppearanceData:v6];
}

- (void)setActive:(BOOL)active contentView:(id)view
{
  activeCopy = active;
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarContentViewLayout.m" lineNumber:2249 description:@"Attempt to activate a layout on a nil contentView"];

    viewCopy = 0;
  }

  active = self->_active;
  if (active == activeCopy)
  {
    v10 = viewCopy;
    if (self->_contentView == viewCopy)
    {
      if (!self->_active)
      {
        goto LABEL_16;
      }
    }

    else
    {
      [(_UINavigationBarContentViewLayout *)self _removeContentAndInvalidateConstraints];
      self->_contentView = v10;
      [(_UINavigationBarContentViewLayout *)self _prepareForNewContentView];
      viewCopy = v10;
      if (!self->_active)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

  if (activeCopy && (active & 1) == 0)
  {
    self->_active = 1;
    v10 = viewCopy;
LABEL_14:
    [(_UINavigationBarContentViewLayout *)self _activateAllConstraints];
    goto LABEL_15;
  }

  if ((activeCopy & 1) == 0 && self->_active)
  {
    self->_active = 0;
    v10 = viewCopy;
    [(_UINavigationBarContentViewLayout *)self _deactivateAllConstraints];
LABEL_15:
    viewCopy = v10;
  }

LABEL_16:
}

- (double)_idealBackButtonWidth
{
  backButton = self->_backButton;
  if (!backButton)
  {
    return 0.0;
  }

  [(UIView *)backButton frame];

  return CGRectGetWidth(*&v3);
}

- (double)_idealTitleWidth
{
  result = 0.0;
  if (self->_titleEnabled)
  {
    titleControl = self->_titleControl;
    [(UILayoutGuide *)self->_titleViewGuide layoutFrame];
    [(UIView *)titleControl systemLayoutSizeFittingSize:0.0, CGRectGetHeight(v8)];
    v6 = v5;
    [(_UINavigationBarTitleControl *)self->_titleControl trailingPadding];
    return v6 + v7;
  }

  return result;
}

- (void)_maximumTitleAllowance
{
  if (self)
  {
    visualProvider = [*(self + 296) visualProvider];
    if (visualProvider)
    {
      v3 = visualProvider;
      visualProvider2 = [*(self + 296) visualProvider];
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        visualProvider3 = [*(self + 296) visualProvider];
        [visualProvider3 maximumTitleAllowance];
      }
    }
  }
}

- (void)_getInitialLeadingFreeSpace:(double *)space trailingFreeSpace:(double *)freeSpace layoutWidth:(double *)width compressibleLeadingAllowance:(double *)allowance
{
  navItemContentLayoutGuide = [(_UINavigationBarContentView *)self->_contentView navItemContentLayoutGuide];
  [navItemContentLayoutGuide layoutFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  layoutMarginsGuide = [(UIView *)self->_contentView layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v65.origin.x = v14;
  v65.origin.y = v16;
  v65.size.width = v18;
  v65.size.height = v20;
  v71.origin.x = v23;
  v71.origin.y = v25;
  v71.size.width = v27;
  v71.size.height = v29;
  v66 = CGRectIntersection(v65, v71);
  x = v66.origin.x;
  y = v66.origin.y;
  width = v66.size.width;
  height = v66.size.height;
  [(UIView *)self->_contentView bounds];
  MidX = CGRectGetMidX(v67);
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  MinX = CGRectGetMinX(v68);
  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  v36 = MidX - MinX;
  v37 = CGRectGetMaxX(v69) - MidX;
  effectiveUserInterfaceLayoutDirection = [(UIView *)self->_contentView effectiveUserInterfaceLayoutDirection];
  titleAlignment = self->_titleAlignment;
  if (titleAlignment == 2)
  {
    if (self->_backButton)
    {
      minimumBackButtonWidth = self->_minimumBackButtonWidth;
    }

    else
    {
      minimumBackButtonWidth = 0.0;
    }

    [(_UINavigationBarContentViewLayout *)self _maximumTitleAllowance];
    v57 = v56;
    [(_UINavigationBarContentViewLayout *)self _idealTitleWidth];
    if (v57 >= v58)
    {
      v57 = v58;
    }

    tabBarContentGuide = self->_tabBarContentGuide;
    if (tabBarContentGuide)
    {
      [(UILayoutGuide *)tabBarContentGuide layoutFrame];
      if (v57 < v60)
      {
        v57 = v60;
      }
    }

    v61 = 0.0;
    if (minimumBackButtonWidth > 0.0 && v57 > 0.0)
    {
      [(_UINavigationBarContentView *)self->_contentView buttonBarMinimumInterGroupSpace];
    }

    v53 = ceil(v57 * 0.5);
    v49 = minimumBackButtonWidth + v53 + v61;
  }

  else if (titleAlignment == 1)
  {
    [(_UINavigationBarContentViewLayout *)self _maximumTitleAllowance];
    v46 = v45;
    [(_UINavigationBarContentViewLayout *)self _idealTitleWidth];
    if (v46 >= v47)
    {
      v46 = v47;
    }

    [(_UINavigationBarContentViewLayout *)self _idealBackButtonWidth];
    v49 = v48 + v46;
    v50 = self->_tabBarContentGuide;
    if (v50)
    {
      [(UILayoutGuide *)v50 layoutFrame];
      v52 = ceil(v51 * 0.5);
      v49 = v49 + v52;
      v53 = v52 + 0.0;
    }

    else
    {
      v53 = 0.0;
    }
  }

  else if (titleAlignment)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarContentViewLayout.m" lineNumber:2352 description:{@"Unimplemented title alignment =%li", self->_titleAlignment}];

    v53 = 0.0;
    v49 = 0.0;
  }

  else
  {
    v40 = 0.0;
    if (self->_backButton)
    {
      v40 = self->_minimumBackButtonWidth;
    }

    [(_UINavigationBarContentViewLayout *)self _maximumTitleAllowance];
    v42 = v41;
    [(_UINavigationBarContentViewLayout *)self _idealTitleWidth];
    if (v42 >= v43)
    {
      v42 = v43;
    }

    if (v40 <= 0.0)
    {
      v44 = 0.0;
    }

    else
    {
      v44 = 0.0;
      if (v42 > 0.0)
      {
        [(_UINavigationBarContentView *)self->_contentView buttonBarMinimumInterGroupSpace];
      }
    }

    v49 = v40 + v42 + v44;
    if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      v62 = v37;
    }

    else
    {
      v62 = v36;
    }

    v53 = fmax(v49 - v62, 0.0);
  }

  if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v63 = v37;
  }

  else
  {
    v63 = v36;
  }

  if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v64 = v36;
  }

  else
  {
    v64 = v37;
  }

  *space = v63 - v49;
  *freeSpace = v64 - v53;
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = height;
  *width = CGRectGetWidth(v70);
  *allowance = v49;
}

- (BOOL)_overflowRequired
{
  centerGroupsMode = self->_centerGroupsMode;
  if (centerGroupsMode == 2)
  {
    if (![(_UIButtonBar *)self->_centerBar hasVisibleContent])
    {
      return self->_additionalOverflowItems != 0;
    }
  }

  else if (centerGroupsMode != 1 || ![(_UINavigationBarContentViewLayout *)self _canCustomizeBar]&& ![(_UIButtonBar *)self->_centerBar hasAlwaysOverflowGroups])
  {
    return self->_additionalOverflowItems != 0;
  }

  return 1;
}

- (int64_t)expectedInactiveInlineSearchBarLayoutState
{
  searchBar = [(_UIBarButtonItemSearchBarGroup *)&self->_inlineSearchBarGroup->super.super.isa searchBar];

  if (!searchBar)
  {
    return -1;
  }

  [(_UIBarButtonItemSearchBarGroup *)self->_inlineSearchBarGroup setProvidesRestingMeasurementValues:?];
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  [(_UINavigationBarContentViewLayout *)&v6 _resolvedButtonBarLayoutInfo];
  v4 = *(&v7 + 1);
  [(_UIBarButtonItemSearchBarGroup *)self->_inlineSearchBarGroup setProvidesRestingMeasurementValues:?];
  return v4;
}

- (void)_setOverflowGroupVisibleForCalculation:(BOOL)calculation
{
  if (calculation)
  {
    [(_UINavigationBarContentViewLayout *)self _prepareOverflowItem];
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  overflowGroup = self->_overflowGroup;

  [(UIBarButtonItemGroup *)overflowGroup _setCalculationVisibility:v4];
}

- (double)_inlineSearchBarGroupExtraLeadingPadding
{
  visualProvider = [(_UINavigationBarContentView *)self->_contentView visualProvider];
  if (!visualProvider)
  {
    return 14.0;
  }

  v4 = visualProvider;
  visualProvider2 = [(_UINavigationBarContentView *)self->_contentView visualProvider];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 14.0;
  }

  visualProvider3 = [(_UINavigationBarContentView *)self->_contentView visualProvider];
  [visualProvider3 inlineSearchBarGroupExtraLeadingPadding];
  v9 = v8;

  return v9;
}

- (double)_inlineSearchBarGroupExtraTrailingPadding
{
  visualProvider = [(_UINavigationBarContentView *)self->_contentView visualProvider];
  if (!visualProvider)
  {
    return 10.0;
  }

  v4 = visualProvider;
  visualProvider2 = [(_UINavigationBarContentView *)self->_contentView visualProvider];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 10.0;
  }

  visualProvider3 = [(_UINavigationBarContentView *)self->_contentView visualProvider];
  [visualProvider3 inlineSearchBarGroupExtraTrailingPadding];
  v9 = v8;

  return v9;
}

- (void)_updateInlineSearchBarGroupWithLeadingPadding:(double *)padding trailingPadding:
{
  [self _inlineSearchBarGroupExtraLeadingPadding];
  v7 = v6;
  [self _inlineSearchBarGroupExtraTrailingPadding];
  v9 = *(self + 240);
  if (v9)
  {
    v10 = v8;
    isHidden = [v9 isHidden];
    v12 = 0.0;
    v13 = 0.0;
    if ((isHidden & 1) == 0)
    {
      v14 = *(self + 224);
      if (v14 && [v14 _calculationVisibility] != 1)
      {
        v19 = 0;
      }

      else
      {
        trailingGroups = [self trailingGroups];
        lastObject = [trailingGroups lastObject];
        _items = [lastObject _items];
        lastObject2 = [_items lastObject];
        v19 = __99___UINavigationBarContentViewLayout__updateInlineSearchBarGroupWithLeadingPadding_trailingPadding___block_invoke(lastObject2);
      }

      v20 = *(self + 552);
      if (v20 && ![v20 isHidden])
      {
        _items2 = [*(self + 552) _items];
        firstObject = [_items2 firstObject];
        v23 = __99___UINavigationBarContentViewLayout__updateInlineSearchBarGroupWithLeadingPadding_trailingPadding___block_invoke(firstObject);

        v12 = 0.0;
        if (v19)
        {
          v13 = v7;
        }

        else
        {
          v13 = 0.0;
        }

        if (v23)
        {
          v12 = v10;
        }
      }

      else
      {
        v12 = 0.0;
        if (v19)
        {
          v13 = v7;
        }

        else
        {
          v13 = 0.0;
        }
      }
    }

    v24 = *(self + 240);
    if (v24)
    {
      *(v24 + 96) = v12 + v13;
    }
  }

  else
  {
    v13 = 0.0;
    v12 = 0.0;
  }

  if (a2)
  {
    *a2 = v13;
  }

  if (padding)
  {
    *padding = v12;
  }
}

- (uint64_t)_buttonBarLayoutInfoCalculation
{
  traitCollection = [*(a2 + 328) traitCollection];
  v5 = [traitCollection userInterfaceIdiom] == 6;

  *(self + 32) = 0u;
  *(self + 48) = 0u;
  *self = vdupq_n_s64(0x412E848000000000uLL);
  *(self + 16) = 0x412E848000000000;
  *(self + 24) = -1;
  *(self + 32) = dword_18A6788F0[v5];
  *(self + 40) = 0;
  *(self + 48) = 0;
  *(self + 56) = 0;
  *(self + 58) = 1;
  v56 = 0.0;
  v57 = 0.0;
  v54 = 0.0;
  v55 = 0.0;
  [a2 _getInitialLeadingFreeSpace:&v57 trailingFreeSpace:&v56 layoutWidth:&v55 compressibleLeadingAllowance:&v54];
  v6 = v56;
  v7 = 0.0;
  if (*(a2 + 536) == 1)
  {
    [*(a2 + 304) widthInfo];
    v9 = v8;
    v57 = v57 - v10;
    v11 = fmax(v57, 0.0);
  }

  else
  {
    v11 = fmax(v57, 0.0);
    v9 = 0.0;
  }

  _overflowRequired = [a2 _overflowRequired];
  v13 = *(a2 + 544);
  v14 = 0.0;
  if (v13 == 1)
  {
    [*(a2 + 312) widthInfo];
    v14 = v15;
    v7 = v16;
  }

  if (_overflowRequired && (*(a2 + 290) & 1) == 0)
  {
    [a2 setTrailingGroupsEnabled:1];
  }

  v17 = 0.0;
  if (*(a2 + 290) == 1)
  {
    if (*(a2 + 504) != 2 && !*(a2 + 456))
    {
      v6 = v6 + v11;
    }

    [a2 _setOverflowGroupVisibleForCalculation:_overflowRequired];
    v52 = 0.0;
    v53 = 0.0;
    [(_UINavigationBarContentViewLayout *)a2 _updateInlineSearchBarGroupWithLeadingPadding:&v52 trailingPadding:?];
    [*(a2 + 320) widthInfo];
    v17 = v18;
    v20 = v19;
    v22 = v21;
    if (v13 == 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = _overflowRequired;
    }

    if ((v23 & 1) != 0 || ([a2 trailingGroups], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v29 > 1) || v20 <= v6 || v17 != 0.0)
    {
      if (_overflowRequired)
      {
        goto LABEL_21;
      }

      if (v17 < v20 && v20 > v6)
      {
        [a2 _setOverflowGroupVisibleForCalculation:1];
        [(_UINavigationBarContentViewLayout *)a2 _updateInlineSearchBarGroupWithLeadingPadding:&v52 trailingPadding:?];
        [*(a2 + 320) widthInfo];
        v17 = v24;
        v20 = v25;
        v22 = v26;
LABEL_21:
        v27 = fmax(v17, fmin(v6, v22));
        LOBYTE(_overflowRequired) = 1;
        if (v13 != 1)
        {
          goto LABEL_39;
        }

LABEL_31:
        v34 = (v11 + v56 - v27) * 0.875;
        if (v34 < 0.0)
        {
          v34 = 0.0;
        }

        if (v27 > v20 && v34 < v7)
        {
          v27 = fmax(v20, fmin(v11 + v56 - v7 * 0.875, v22));
          v34 = 0.0;
          if ((v11 + v56 - v27) * 0.875 >= 0.0)
          {
            v34 = (v11 + v56 - v27) * 0.875;
          }
        }

        *(self + 8) = v34;
        goto LABEL_39;
      }

      if (v13 == 1)
      {
        v30 = (v11 + v56 - v20) * 0.875;
        LOBYTE(_overflowRequired) = v14 > v30;
        v31 = v20;
        if (v14 > v30)
        {
          [a2 _setOverflowGroupVisibleForCalculation:1];
          [(_UINavigationBarContentViewLayout *)a2 _updateInlineSearchBarGroupWithLeadingPadding:&v52 trailingPadding:?];
          [*(a2 + 320) widthInfo];
          v20 = v32;
          v22 = v33;
          v17 = v32;
        }

        v27 = fmax(v20, fmin(v6, v22));
        v20 = v31;
        goto LABEL_31;
      }
    }

    v27 = fmax(v20, fmin(v6, v22));
LABEL_39:
    *(self + 16) = v27;
    v35 = *(a2 + 240);
    if (v35 && ([v35 isHidden] & 1) == 0)
    {
      representativeItem = [*(a2 + 240) representativeItem];

      if (representativeItem)
      {
        if ([*(a2 + 240) _shouldAlwaysCollapse])
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
          if (v27 < v22)
          {
            v37 = 1;
          }
        }
      }

      else
      {
        v37 = 3;
      }

      *(self + 24) = v37;
      if (v53 > 0.0 || v52 > 0.0)
      {
        v38 = v52 <= 0.0 && v27 < v20;
        v39 = !v38 && v37 == 3;
        if (v39 || v27 >= v22)
        {
          if (v27 >= v20)
          {
            v40 = v53;
          }

          else
          {
            v40 = 0.0;
          }

          _shouldReverseLayoutDirection = [*(a2 + 328) _shouldReverseLayoutDirection];
          v42 = v52;
          if (_shouldReverseLayoutDirection)
          {
            v43 = v52;
          }

          else
          {
            v43 = v40;
          }

          if (_shouldReverseLayoutDirection)
          {
            v42 = v40;
          }

          *(self + 40) = v43;
          *(self + 48) = v42;
        }
      }
    }
  }

  v44 = v55;
  if (*(a2 + 281) != 1)
  {
    goto LABEL_74;
  }

  v45 = v17 < 1.79769313e308 && v17 > 2.22507386e-308;
  v46 = 0.0;
  if (v45)
  {
    v46 = v17;
  }

  if (v55 - v46 < v9 + v54)
  {
LABEL_74:
    *(self + 57) = 1;
  }

  if (((v44 < v17) & _overflowRequired) == 1)
  {
    inlineSearchBarGroup = [a2 inlineSearchBarGroup];
    if (inlineSearchBarGroup)
    {
      v48 = inlineSearchBarGroup;
      inlineSearchBarGroup2 = [a2 inlineSearchBarGroup];
      representativeItem2 = [inlineSearchBarGroup2 representativeItem];

      if (!representativeItem2)
      {
        *(self + 32) = 1144897536;
      }
    }
  }

  *(self + 56) = _overflowRequired;
  return [*(a2 + 224) _setCalculationVisibility:0];
}

- (void)layoutSubviews
{
  if (_UIBarsDesktopNavigationBarEnabled())
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    [(_UINavigationBarContentViewLayout *)&v18 _resolvedButtonBarLayoutInfo];
    [(_UINavigationBarContentViewLayout *)self _setOverflowGroupHidden:(BYTE8(v21) & 1) == 0];
    if (self->_leadingGroupsMode == 1)
    {
      [(_UIButtonBar *)self->_leadingBar setTargetLayoutWidth:*&v18];
    }

    if (self->_centerGroupsMode == 1)
    {
      [(_UIButtonBar *)self->_centerBar setTargetLayoutWidth:*(&v18 + 1)];
    }

    if (self->_trailingGroupsEnabled)
    {
      [(_UIButtonBar *)self->_trailingBar setTargetLayoutWidth:*&v19];
    }

    [(UIView *)self->_contentView updateConstraintsIfNeeded];
    if (self->_hasFreshlyCreatedOverflowGroupItemView && +[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __51___UINavigationBarContentViewLayout_layoutSubviews__block_invoke;
      v17[3] = &unk_1E70F3590;
      v17[4] = self;
      [UIView performWithoutAnimation:v17];
    }

    self->_hasFreshlyCreatedOverflowGroupItemView = 0;
    inlineSearchBarGroup = [(_UINavigationBarContentViewLayout *)self inlineSearchBarGroup];
    searchBar = [(_UIBarButtonItemSearchBarGroup *)inlineSearchBarGroup searchBar];

    LODWORD(v5) = v20;
    [searchBar setContentCompressionResistancePriority:0 forAxis:v5];
    [searchBar _setLeftInsetForInlineSearch:*(&v20 + 1)];
    [searchBar _setRightInsetForInlineSearch:*&v21];
    if (self->_titleEnabled)
    {
      v6 = 0.0;
      inlineTitleViewAlpha = 0.0;
      if ((BYTE9(v21) & 1) == 0)
      {
        inlineTitleViewAlpha = self->_inlineTitleViewAlpha;
      }

      [(_UINavigationBarTitleControl *)self->_titleControl setContentAlpha:inlineTitleViewAlpha];
      if (!self->_titleViewHidden)
      {
        if ([(_UINavigationBarContentViewLayout *)self _inActiveRenameSession])
        {
          v6 = 0.0;
        }

        else
        {
          v6 = 1.0;
        }
      }

      [(_UINavigationBarTitleControl *)self->_titleControl setControlAlpha:v6];
      titleIconView = self->_titleIconView;
      if (titleIconView)
      {
        [(UIView *)self->_titleIconView bounds];
        [(UIView *)titleIconView convertRect:self->_titleControl toView:?];
        v10 = v9;
      }

      else
      {
        v10 = 0.0;
      }

      [(_UINavigationBarTitleControl *)self->_titleControl setMenuAlignmentInsets:0.0, v10, 0.0, 0.0];
    }

    v11 = v19;
    *&self->_currentButtonBarLayoutInfo.leadingTargetLayoutWidth = v18;
    *&self->_currentButtonBarLayoutInfo.trailingTargetLayoutWidth = v11;
    v12 = v21;
    *&self->_currentButtonBarLayoutInfo.searchBarHorizontalCCRPriority = v20;
    *&self->_currentButtonBarLayoutInfo.searchBarRightInset = v12;
    inlineSearchBarGroup = self->_inlineSearchBarGroup;
    if (inlineSearchBarGroup && ![(UIBarButtonItemGroup *)inlineSearchBarGroup isHidden])
    {
      searchBar2 = [(_UIBarButtonItemSearchBarGroup *)&self->_inlineSearchBarGroup->super.super.isa searchBar];
      v15 = self->_inlineSearchBarGroup;
      if ([searchBar2 _isEnabled])
      {
        if (v15)
        {
          v15->_disabledExpansion = 0;
        }
      }

      else
      {
        window = [searchBar2 window];
        if (v15)
        {
          v15->_disabledExpansion = window == 0;
        }
      }
    }
  }
}

- (id)traitOverridesForChild:(id)child
{
  augmentedTitleView = self->_augmentedTitleView;
  if (augmentedTitleView)
  {
    v4 = augmentedTitleView == child;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    augmentedTitleNavigationBarTraits = [(_UINavigationBarContentViewLayout *)self augmentedTitleNavigationBarTraits];
    v5 = [(_UINavigationBarAugmentedTitleView *)augmentedTitleView _traitCollectionOverridesForNavigationBarTraitCollection:augmentedTitleNavigationBarTraits];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)replaceTitleViewWithSnapshot
{
  if (self->_titleEnabled)
  {
    v4 = [(UIView *)self->_titleControl snapshotViewAfterScreenUpdates:0];
    if (v4)
    {
      v7 = v4;
      objc_storeStrong(&self->_titleViewSnapshot, v4);
      [(UIView *)self->_contentView insertSubview:v7 belowSubview:self->_titleControl];
      [(UIView *)self->_titleControl frame];
      [(UIView *)self->_titleViewSnapshot setFrame:?];
      [(UIView *)self->_titleControl removeFromSuperview];
      titleViewConstraints = self->_titleViewConstraints;
      self->_titleViewConstraints = 0;

      titleControl = self->_titleControl;
      self->_titleControl = 0;

      v4 = v7;
    }
  }
}

- (void)replaceLeadingBarWithSnapshot
{
  if (self->_leadingGroupsMode == 1)
  {
    view = [(_UIButtonBar *)self->_leadingBar view];
    obj = [view snapshotViewAfterScreenUpdates:0];

    if (obj)
    {
      objc_storeStrong(&self->_leadingBarSnapshot, obj);
      contentView = self->_contentView;
      view2 = [(_UIButtonBar *)self->_leadingBar view];
      [(UIView *)contentView insertSubview:obj belowSubview:view2];

      view3 = [(_UIButtonBar *)self->_leadingBar view];
      [view3 frame];
      [obj setFrame:?];

      widthAnchor = [(UILayoutGuide *)self->_leadingBarGuide widthAnchor];
      widthAnchor2 = [obj widthAnchor];
      v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      [v10 setActive:1];

      view4 = [(_UIButtonBar *)self->_leadingBar view];
      [view4 removeFromSuperview];

      leadingBarConstraints = self->_leadingBarConstraints;
      self->_leadingBarConstraints = 0;

      leadingBar = self->_leadingBar;
      self->_leadingBar = 0;
    }
  }
}

- (void)replaceTrailingBarWithSnapshot
{
  if (self->_trailingGroupsEnabled)
  {
    view = [(_UIButtonBar *)self->_trailingBar view];
    obj = [view snapshotViewAfterScreenUpdates:0];

    if (obj)
    {
      objc_storeStrong(&self->_trailingBarSnapshot, obj);
      contentView = self->_contentView;
      view2 = [(_UIButtonBar *)self->_trailingBar view];
      [(UIView *)contentView insertSubview:obj belowSubview:view2];

      view3 = [(_UIButtonBar *)self->_trailingBar view];
      [view3 frame];
      [(UIView *)self->_trailingBarSnapshot setFrame:?];

      widthAnchor = [(UILayoutGuide *)self->_trailingBarGuide widthAnchor];
      widthAnchor2 = [obj widthAnchor];
      v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      [v10 setActive:1];

      view4 = [(_UIButtonBar *)self->_trailingBar view];
      [view4 removeFromSuperview];

      trailingBarConstraints = self->_trailingBarConstraints;
      self->_trailingBarConstraints = 0;

      trailingBar = self->_trailingBar;
      self->_trailingBar = 0;
    }
  }
}

- (void)removeContent
{
  [(_UINavigationBarContentViewLayout *)self _deactivateAllConstraints];
  [(_UINavigationBarContentViewLayout *)self removeAllSnapshots];
  [(UIView *)self->_backButton removeFromSuperview];
  view = [(_UIButtonBar *)self->_leadingBar view];
  [view removeFromSuperview];

  [(UIView *)self->_titleControl removeFromSuperview];
  [(UIView *)self->_titleIconView removeFromSuperview];
  [(_UINavigationBarAugmentedTitleView *)self->_augmentedTitleView removeFromSuperview];
  view2 = [(_UIButtonBar *)self->_centerBar view];
  [view2 removeFromSuperview];

  view3 = [(_UIButtonBar *)self->_trailingBar view];
  [view3 removeFromSuperview];

  [(UIView *)self->_contentView removeLayoutGuide:self->_backButtonGuide];
  [(UIView *)self->_contentView removeLayoutGuide:self->_leadingBarGuide];
  [(UIView *)self->_contentView removeLayoutGuide:self->_titleViewGuide];
  [(UIView *)self->_contentView removeLayoutGuide:self->_centerBarGuide];
  [(UIView *)self->_contentView removeLayoutGuide:self->_trailingBarGuide];
  self->_active = 0;
}

- (void)_prepareForNewContentView
{
  [(_UINavigationBarContentViewLayout *)self _updateSubviewOrder];
  [(_UINavigationBarContentViewLayout *)self _updateLayoutGuideConstraints];
  [(_UINavigationBarContentViewLayout *)self _updateAlignmentConstraints];
  [(_UINavigationBarContentViewLayout *)self _updateRenamingContentViewIfNecessary];
  [(_UINavigationBarContentViewLayout *)self _updateTitleViewConstraints];

  [(_UINavigationBarContentViewLayout *)self _updateAugmentedTitleViewConstraints];
}

- (void)_removeContentAndInvalidateConstraints
{
  [(_UINavigationBarContentViewLayout *)self removeContent];
  layoutGuideConstraints = self->_layoutGuideConstraints;
  self->_layoutGuideConstraints = 0;

  alignmentConstraints = self->_alignmentConstraints;
  self->_alignmentConstraints = 0;

  renamingContentViewConstraints = self->_renamingContentViewConstraints;
  self->_renamingContentViewConstraints = 0;

  renamingContentViewInsetConstraint = self->_renamingContentViewInsetConstraint;
  self->_renamingContentViewInsetConstraint = 0;

  titleViewConstraints = self->_titleViewConstraints;
  self->_titleViewConstraints = 0;

  augmentedTitleViewConstraints = self->_augmentedTitleViewConstraints;
  self->_augmentedTitleViewConstraints = 0;
}

- (void)updateLayoutData:(id)data layoutWidth:(double)width
{
  resolvedHeight = self->_resolvedHeight;
  dataCopy = data;
  [dataCopy setMinimumHeight:resolvedHeight];
  [dataCopy setPreferredHeight:self->_resolvedHeight + self->_resolvedExtension];
}

- (void)buttonBarDidLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_trailingBar != layoutCopy || (v9 = layoutCopy, v5 = [(UIBarButtonItemGroup *)self->_inlineSearchBarGroup isHidden], layoutCopy = v9, v5) || self->_isDeferringSearchSuggestionsMenuRefreshForGeometryChange)
  {
    if (self->_trailingBar != layoutCopy || (v10 = layoutCopy, v6 = [(UIBarButtonItemGroup *)self->_inlineSearchBarGroup isHidden], layoutCopy = v10, v6))
    {
      self->_isDeferringSearchSuggestionsMenuRefreshForGeometryChange = 0;
    }
  }

  else
  {
    searchBar = [(_UIBarButtonItemSearchBarGroup *)&self->_inlineSearchBarGroup->super.super.isa searchBar];
    _searchController = [searchBar _searchController];
    [_searchController _hostingNavigationBarDidLayoutInlineSearchBar];

    layoutCopy = v9;
  }
}

- (void)deferSearchSuggestionsMenuRefreshForGeometryChange
{
  if (self->_trailingBar)
  {
    inlineSearchBarGroup = self->_inlineSearchBarGroup;
    if (inlineSearchBarGroup)
    {
      if (![(UIBarButtonItemGroup *)inlineSearchBarGroup isHidden])
      {
        self->_isDeferringSearchSuggestionsMenuRefreshForGeometryChange = 1;
      }
    }
  }
}

- (void)refreshSearchSuggestionsMenuAfterGeometryChange
{
  self->_isDeferringSearchSuggestionsMenuRefreshForGeometryChange = 0;
  if (self->_trailingBar)
  {
    inlineSearchBarGroup = self->_inlineSearchBarGroup;
    if (inlineSearchBarGroup)
    {
      if (![(UIBarButtonItemGroup *)inlineSearchBarGroup isHidden])
      {
        searchBar = [(_UIBarButtonItemSearchBarGroup *)&self->_inlineSearchBarGroup->super.super.isa searchBar];
        _searchController = [searchBar _searchController];
        [_searchController _hostingNavigationBarDidLayoutInlineSearchBar];
      }
    }
  }
}

- (UIOffset)titlePositionAdjustment
{
  horizontal = self->_titlePositionAdjustment.horizontal;
  vertical = self->_titlePositionAdjustment.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)largeTitleHeightRange
{
  minimum = self->_largeTitleHeightRange.minimum;
  maximum = self->_largeTitleHeightRange.maximum;
  result.var1 = maximum;
  result.var0 = minimum;
  return result;
}

@end