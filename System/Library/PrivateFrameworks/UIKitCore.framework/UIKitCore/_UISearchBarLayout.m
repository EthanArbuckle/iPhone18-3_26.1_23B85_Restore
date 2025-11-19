@interface _UISearchBarLayout
- ($F24F406B2B787EFB06265DBA3D28CBD5)heightRange;
- (CGRect)promptContainerLayoutFrame;
- (CGRect)scopeBarContainerLayoutFrame;
- (CGRect)searchBarBackgroundLayoutFrame;
- (CGRect)searchFieldContainerLayoutFrame;
- (CGRect)separatorLayoutFrame;
- (NSString)description;
- (UIEdgeInsets)defaultScopeBarInsets;
- (UIEdgeInsets)scopeBarContentInset;
- (UIEdgeInsets)scopeContainerSpecificInsets;
- (UIOffset)searchFieldBackgroundPositionAdjustment;
- (double)idealSearchContainerWidth;
- (double)layout:(id)a3 fontScaledValueForValue:(double)a4;
- (double)naturalPromptContainerHeight;
- (double)naturalScopeContainerHeight;
- (double)naturalSearchFieldContainerHeight;
- (double)naturalSearchFieldHeight;
- (double)naturalTotalHeight;
- (double)prescribedSearchContainerWidth;
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyLayout;
- (void)applyScopeContainerSublayout;
- (void)cleanUpLayout;
- (void)containerLayoutWillUpdateLayout:(id)a3;
- (void)ensureCorrectContainerViewOrdering;
- (void)prepareBaseConfigurationForSublayout:(id)a3;
- (void)prepareScopeContainerLayout;
- (void)prepareSearchContainerLayout;
- (void)prepareSublayouts;
- (void)setAdditionalPaddingForCancelButtonAtLeadingEdge:(double)a3;
- (void)setAdditionalPaddingForSearchFieldAtLeadingEdge:(double)a3;
- (void)setAllowSearchFieldShrinkage:(BOOL)a3;
- (void)setAlwaysForceReadableWidth:(BOOL)a3;
- (void)setBackgroundExtension:(double)a3;
- (void)setCancelButton:(id)a3;
- (void)setDelegateSearchFieldFrameManipulationBlock:(id)a3;
- (void)setDeleteButton:(id)a3;
- (void)setFloating:(BOOL)a3;
- (void)setFloatingSearchIconBackgroundView:(id)a3;
- (void)setFloatingSearchIconView:(id)a3;
- (void)setHasCancelButton:(BOOL)a3;
- (void)setHasDeleteButton:(BOOL)a3;
- (void)setHasFloatingSearchIconBackgroundView:(BOOL)a3;
- (void)setHasLeftButton:(BOOL)a3;
- (void)setHasPromptLabel:(BOOL)a3;
- (void)setHasScopeBar:(BOOL)a3;
- (void)setHasSearchBarBackdrop:(BOOL)a3;
- (void)setHasSearchBarBackground:(BOOL)a3;
- (void)setHasSeparator:(BOOL)a3;
- (void)setHostedInlineByNavigationBar:(BOOL)a3;
- (void)setHostedInlineByToolbar:(BOOL)a3;
- (void)setHostingNavBarTransitionActive:(BOOL)a3;
- (void)setLayoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback:(id)a3;
- (void)setLeftButton:(id)a3;
- (void)setNeedsReconfigurationForScopeBar:(BOOL)a3;
- (void)setProspective:(BOOL)a3;
- (void)setScopeBar:(id)a3;
- (void)setScopeBarContentInset:(UIEdgeInsets)a3;
- (void)setSearchField:(id)a3;
- (void)setSearchFieldBackgroundPositionAdjustment:(UIOffset)a3;
- (void)setSearchFieldEffectivelySupportsDynamicType:(BOOL)a3;
- (void)setSearchFieldFont:(id)a3;
- (void)setSearchFieldUsesCustomBackgroundImage:(BOOL)a3;
- (void)setSearchIconBarButtonItem:(id)a3;
- (void)setTextFieldManagedInNSToolbar:(BOOL)a3;
- (void)setUpScopeContainerLayout;
- (void)setUpSearchContainerLayout;
- (void)updateLayout;
@end

@implementation _UISearchBarLayout

- (void)setUpSearchContainerLayout
{
  if (!self->_searchContainerLayout)
  {
    v3 = objc_alloc_init(_UISearchBarSearchContainerLayout);
    searchContainerLayout = self->_searchContainerLayout;
    self->_searchContainerLayout = v3;

    [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setDelegate:self];
  }

  v5 = [(_UISearchBarLayout *)self searchField];

  v6 = self->_searchContainerLayout;
  if (v5)
  {
    [(_UISearchBarSearchContainerLayout *)v6 searchBarFieldHeight];
    if (v7 == 0.0)
    {
      v8 = [(_UISearchBarLayout *)self searchField];
      [v8 _defaultHeightForBarMetrics:{-[_UISearchBarLayoutBase barMetrics](self, "barMetrics")}];
      [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setSearchBarFieldHeight:?];
    }
  }

  else
  {
    [(_UISearchBarSearchContainerLayout *)v6 setSearchBarFieldHeight:0.0];
  }

  if (![(_UISearchBarLayout *)self isProspective])
  {
    v9 = self->_searchContainerLayout;
    searchFieldContainer = self->_searchFieldContainer;

    [(_UISearchBarSearchContainerView *)searchFieldContainer setLayout:v9];
  }
}

- (void)setUpScopeContainerLayout
{
  if (!self->_scopeContainerLayout)
  {
    v3 = objc_alloc_init(_UISearchBarScopeContainerLayout);
    scopeContainerLayout = self->_scopeContainerLayout;
    self->_scopeContainerLayout = v3;

    [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout setDelegate:self];
  }

  if (![(_UISearchBarLayout *)self isProspective])
  {
    v5 = self->_scopeContainerLayout;
    scopeBarContainer = self->_scopeBarContainer;

    [(_UISearchBarScopeContainerView *)scopeBarContainer setLayout:v5];
  }
}

- (double)naturalTotalHeight
{
  [(_UISearchBarLayout *)self naturalSearchFieldContainerHeight];
  v4 = v3;
  searchBarLayoutFlags = self->_searchBarLayoutFlags;
  if ((*&searchBarLayoutFlags & 0x610) == 0x10)
  {
    [(_UISearchBarLayout *)self naturalScopeContainerHeight];
    v4 = v4 + v6;
    searchBarLayoutFlags = self->_searchBarLayoutFlags;
  }

  if ((*&searchBarLayoutFlags & 0x20) != 0)
  {
    [(_UISearchBarLayout *)self naturalPromptContainerHeight];
    return v4 + v7;
  }

  return v4;
}

- (double)naturalSearchFieldContainerHeight
{
  [(_UISearchBarLayout *)self prepareSearchContainerLayout];
  searchContainerLayout = self->_searchContainerLayout;

  [(_UISearchBarSearchContainerLayout *)searchContainerLayout naturalContainerHeight];
  return result;
}

- (void)prepareSearchContainerLayout
{
  [(_UISearchBarLayout *)self setUpSearchContainerLayout];
  [(_UISearchBarLayout *)self prepareBaseConfigurationForSublayout:self->_searchContainerLayout];
  [(_UISearchBarLayoutBase *)self contentInset];
  [(_UISearchBarLayoutBase *)self->_searchContainerLayout setContentInset:?];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setSearchBarReadableWidth:self->_searchBarReadableWidth];
  if (_forceReadableWidthBehaviorPreference_onceToken != -1)
  {
    dispatch_once(&_forceReadableWidthBehaviorPreference_onceToken, &__block_literal_global_75);
  }

  v3 = _forceReadableWidthBehaviorPreference_pref;
  if (_forceReadableWidthBehaviorPreference_pref >= 1 && [(_UISearchBarLayout *)self alwaysForceReadableWidth])
  {
    v4 = 1;
  }

  else if ([(_UISearchBarLayout *)self representedLayoutState]== 3)
  {
    searchBarLayoutFlags = self->_searchBarLayoutFlags;
    v6 = v3 != 0;
    if (v3 < 0)
    {
      v6 = (*&searchBarLayoutFlags >> 4) & 1;
    }

    if ((*&searchBarLayoutFlags & 0x200) != 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setSearchFieldRespectsReadableWidth:v4];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setHostedInlineByNavigationBar:(*&self->_searchBarLayoutFlags >> 9) & 1];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setHostedInlineByToolbar:(*&self->_searchBarLayoutFlags >> 10) & 1];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setTextFieldManagedInNSToolbar:(*&self->_searchBarLayoutFlags >> 12) & 1];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setHasCancelButton:*&self->_searchBarLayoutFlags & 1];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setHasDeleteButton:(*&self->_searchBarLayoutFlags >> 1) & 1];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setDrawsSearchIconOnly:[(_UISearchBarLayout *)self representedLayoutState]== 1];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setHasLeftButton:(*&self->_searchBarLayoutFlags >> 2) & 1];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setHasFloatingSearchIconBackgroundView:(*&self->_searchBarLayoutFlags >> 3) & 1];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setAllowSearchFieldShrinkage:(*&self->_searchBarLayoutFlags >> 13) & 1];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setSearchFieldUsesCustomBackgroundImage:(*&self->_searchBarLayoutFlags >> 14) & 1];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setSearchFieldEffectivelySupportsDynamicType:(*&self->_searchBarLayoutFlags >> 15) & 1];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setSearchFieldBackgroundPositionAdjustment:self->_searchFieldBackgroundPositionAdjustment.horizontal, self->_searchFieldBackgroundPositionAdjustment.vertical];
  [(_UISearchBarLayoutBase *)self->_searchContainerLayout setLayoutSize:self->_searchFieldContainerLayoutFrame.size.width, self->_searchFieldContainerLayoutFrame.size.height];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setRepresentedLayoutState:self->_representedLayoutState];
  [(_UISearchBarLayoutBase *)self->_searchContainerLayout setShouldApplyContainerSafeAreaInsets:[(_UISearchBarLayoutBase *)self shouldApplyContainerSafeAreaInsets]];
  v7 = [(_UISearchBarLayout *)self searchField];

  if (v7)
  {
    v12 = [(_UISearchBarLayout *)self searchField];
    [v12 _defaultHeightForBarMetrics:{-[_UISearchBarLayoutBase barMetrics](self, "barMetrics")}];
    [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setSearchBarFieldHeight:?];
  }

  else
  {
    v8 = +[UITraitCollection _fallbackTraitCollection];
    v9 = +[_UIVisualStyleRegistry registryForIdiom:](_UIVisualStyleRegistry, "registryForIdiom:", [v8 userInterfaceIdiom]);
    v10 = [v9 visualStyleClassForStylableClass:objc_opt_class()];
    if (!v10)
    {
      v10 = objc_opt_class();
    }

    [v10 defaultHeightForBarMetrics:{-[_UISearchBarLayoutBase barMetrics](self, "barMetrics")}];
    searchContainerLayout = self->_searchContainerLayout;

    [(_UISearchBarSearchContainerLayout *)searchContainerLayout setSearchBarFieldHeight:?];
  }
}

- (void)prepareScopeContainerLayout
{
  [(_UISearchBarLayout *)self setUpScopeContainerLayout];
  [(_UISearchBarLayout *)self prepareBaseConfigurationForSublayout:self->_scopeContainerLayout];
  [(_UISearchBarLayout *)self scopeBarContentInset];
  [(_UISearchBarLayoutBase *)self->_scopeContainerLayout setContentInset:0.0, v3 + 0.0, 0.0, v4 + 0.0];
  [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout setHasScopeBar:(*&self->_searchBarLayoutFlags >> 4) & 1];
  [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout setNumberOfScopeTitles:self->_numberOfScopeTitles];
  [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout setDefaultScopeBarInsets:self->_defaultScopeBarInsets.top, self->_defaultScopeBarInsets.left, self->_defaultScopeBarInsets.bottom, self->_defaultScopeBarInsets.right];
  [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout setHostedScopeBarHeightForBarMetrics:self->_hostedScopeBarHeightForBarMetrics];
  [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout setHostedScopeBarTopInsetForBarMetrics:self->_hostedScopeBarTopInsetForBarMetrics];
  if ([(_UISearchBarLayoutBase *)self shouldApplyContainerSafeAreaInsets])
  {
    v5 = +[UIDevice currentDevice];
    -[_UISearchBarLayoutBase setShouldApplyContainerSafeAreaInsets:](self->_scopeContainerLayout, "setShouldApplyContainerSafeAreaInsets:", [v5 userInterfaceIdiom] == 6);
  }

  else
  {
    [(_UISearchBarLayoutBase *)self->_scopeContainerLayout setShouldApplyContainerSafeAreaInsets:0];
  }

  if ((*(&self->_searchBarLayoutFlags + 1) & 6) != 0)
  {
    scopeContainerLayout = self->_scopeContainerLayout;

    [(_UISearchBarScopeContainerLayout *)scopeContainerLayout setNeighboringSearchLayout:0];
  }

  else
  {
    [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout setNeighboringSearchLayout:self->_searchContainerLayout];
    width = self->_scopeBarContainerLayoutFrame.size.width;
    height = self->_scopeBarContainerLayoutFrame.size.height;
    v9 = self->_scopeContainerLayout;

    [(_UISearchBarLayoutBase *)v9 setLayoutSize:width, height];
  }
}

- (double)naturalScopeContainerHeight
{
  [(_UISearchBarLayout *)self prepareScopeContainerLayout];
  scopeContainerLayout = self->_scopeContainerLayout;

  [(_UISearchBarScopeContainerLayout *)scopeContainerLayout naturalContainerHeight];
  return result;
}

- (void)applyLayout
{
  v32 = *MEMORY[0x1E69E9840];
  [(_UISearchBarLayoutBase *)self layoutSize];
  representedLayoutState = self->_representedLayoutState;
  [(_UISearchBarLayout *)self searchFieldContainerLayoutFrame];
  [(UIView *)self->_searchFieldContainer setFrame:?];
  if (representedLayoutState != 1)
  {
    if ((*&self->_searchBarLayoutFlags & 0x20) != 0)
    {
      v4 = [(UIView *)self->_promptContainer superview];

      if (!v4)
      {
        if (dyld_program_sdk_at_least())
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Missing or detached view for search bar layout. The application must not remove %@ from the hierarchy.", self->_promptContainer}];
        }

        else if (os_variant_has_internal_diagnostics())
        {
          v21 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            promptContainer = self->_promptContainer;
            *buf = 138412290;
            v31 = promptContainer;
            _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Missing or detached view for search bar layout. The application must not remove %@ from the hierarchy. This will become a hard crash in a future release.", buf, 0xCu);
          }
        }

        else
        {
          v5 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_5_4) + 8);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            v6 = self->_promptContainer;
            *buf = 138412290;
            v31 = v6;
            _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Missing or detached view for search bar layout. The application must not remove %@ from the hierarchy. This will become a hard crash in a future release.", buf, 0xCu);
          }
        }
      }
    }

    [(_UISearchBarLayout *)self promptContainerLayoutFrame];
    [(UIView *)self->_promptContainer setFrame:?];
    searchBarLayoutFlags = self->_searchBarLayoutFlags;
    if ((*&searchBarLayoutFlags & 0x600) == 0)
    {
      if ((*&searchBarLayoutFlags & 0x10) != 0)
      {
        v8 = [(UIView *)self->_scopeBarContainer superview];

        if (!v8)
        {
          if (dyld_program_sdk_at_least())
          {
            [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Missing or detached view for search bar layout. The application must not remove %@ from the hierarchy.", self->_scopeBarContainer}];
          }

          else if (os_variant_has_internal_diagnostics())
          {
            v24 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
            {
              scopeBarContainer = self->_scopeBarContainer;
              *buf = 138412290;
              v31 = scopeBarContainer;
              _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "Missing or detached view for search bar layout. The application must not remove %@ from the hierarchy. This will become a hard crash in a future release.", buf, 0xCu);
            }
          }

          else
          {
            v9 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49A578) + 8);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v10 = self->_scopeBarContainer;
              *buf = 138412290;
              v31 = v10;
              _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Missing or detached view for search bar layout. The application must not remove %@ from the hierarchy. This will become a hard crash in a future release.", buf, 0xCu);
            }
          }
        }
      }

      [(_UISearchBarLayout *)self scopeBarContainerLayoutFrame];
      [(UIView *)self->_scopeBarContainer setFrame:?];
      searchBarLayoutFlags = self->_searchBarLayoutFlags;
    }

    if ((*&searchBarLayoutFlags & 0x40) != 0)
    {
      v11 = [(UIView *)self->_searchBarBackground superview];

      if (!v11)
      {
        if (dyld_program_sdk_at_least())
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Missing or detached view for search bar layout. The application must not remove %@ from the hierarchy.", self->_searchBarBackground}];
        }

        else if (os_variant_has_internal_diagnostics())
        {
          v22 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            searchBarBackground = self->_searchBarBackground;
            *buf = 138412290;
            v31 = searchBarBackground;
            _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Missing or detached view for search bar layout. The application must not remove %@ from the hierarchy. This will become a hard crash in a future release.", buf, 0xCu);
          }
        }

        else
        {
          v12 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49A580) + 8);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = self->_searchBarBackground;
            *buf = 138412290;
            v31 = v13;
            _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Missing or detached view for search bar layout. The application must not remove %@ from the hierarchy. This will become a hard crash in a future release.", buf, 0xCu);
          }
        }
      }
    }

    [(_UISearchBarLayout *)self searchBarBackgroundLayoutFrame];
    [(UIView *)self->_searchBarBackground setFrame:?];
    v14 = self->_searchBarLayoutFlags;
    if ((*&v14 & 0x80) != 0)
    {
      v15 = [(UIView *)self->_searchBarBackdrop superview];
      v16 = self->_searchBarBackground;

      if (v15 != v16)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v29 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_188A29000, v29, OS_LOG_TYPE_FAULT, "Missing _searchBarBackdrop from search bar hierarchy for layout. This is a UIKit bug.", buf, 2u);
          }
        }

        else
        {
          v20 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49A588) + 8);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Missing _searchBarBackdrop from search bar hierarchy for layout. This is a UIKit bug.", buf, 2u);
          }
        }
      }

      [(UIView *)self->_searchBarBackground bounds];
      [(UIView *)self->_searchBarBackdrop setFrame:?];
      v14 = self->_searchBarLayoutFlags;
    }

    if ((*&v14 & 0x100) != 0)
    {
      v17 = [(UIView *)self->_separator superview];

      if (!v17)
      {
        if (dyld_program_sdk_at_least())
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Missing or detached view for search bar layout. The application must not remove %@ from the hierarchy.", self->_separator}];
        }

        else if (os_variant_has_internal_diagnostics())
        {
          v23 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            separator = self->_separator;
            *buf = 138412290;
            v31 = separator;
            _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "Missing or detached view for search bar layout. The application must not remove %@ from the hierarchy. This will become a hard crash in a future release.", buf, 0xCu);
          }
        }

        else
        {
          v18 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49A590) + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = self->_separator;
            *buf = 138412290;
            v31 = v19;
            _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Missing or detached view for search bar layout. The application must not remove %@ from the hierarchy. This will become a hard crash in a future release.", buf, 0xCu);
          }
        }
      }
    }

    [(_UISearchBarLayout *)self separatorLayoutFrame];
    [(UIView *)self->_separator setFrame:?];
    [(_UISearchBarLayout *)self ensureCorrectContainerViewOrdering];
    [(_UISearchBarLayout *)self prepareSublayouts];
  }
}

- (CGRect)searchFieldContainerLayoutFrame
{
  [(_UISearchBarLayoutBase *)self updateLayoutIfNeeded];
  x = self->_searchFieldContainerLayoutFrame.origin.x;
  y = self->_searchFieldContainerLayoutFrame.origin.y;
  width = self->_searchFieldContainerLayoutFrame.size.width;
  height = self->_searchFieldContainerLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)updateLayout
{
  [(_UISearchBarLayoutBase *)self layoutSize];
  v4 = v3;
  v6 = v5;
  if (self->_representedLayoutState == 1)
  {
    p_searchFieldContainerLayoutFrame = &self->_searchFieldContainerLayoutFrame;
    self->_searchFieldContainerLayoutFrame.origin = *MEMORY[0x1E695EFF8];
  }

  else
  {
    searchBarLayoutFlags = self->_searchBarLayoutFlags;
    MaxY = 0.0;
    if ((*&searchBarLayoutFlags & 0x20) != 0)
    {
      [(_UISearchBarPromptContainerView *)self->_promptContainer setBarMetrics:[(_UISearchBarLayoutBase *)self barMetrics]];
      [(_UISearchBarLayoutBase *)self contentInset];
      [(_UISearchBarPromptContainerView *)self->_promptContainer setContentInset:0.0, v10 + 0.0, 0.0, v11 + 0.0];
      [(UIView *)self->_promptContainer frame];
      v13 = v12;
      v15 = v14;
      [(_UISearchBarLayout *)self naturalPromptContainerHeight];
      v17 = v16;
      v36.origin.y = 0.0;
      v36.origin.x = v13;
      v36.size.width = v15;
      v36.size.height = v17;
      MaxY = CGRectGetMaxY(v36);
      self->_promptContainerLayoutFrame.origin.x = v13;
      self->_promptContainerLayoutFrame.origin.y = 0.0;
      self->_promptContainerLayoutFrame.size.width = v15;
      self->_promptContainerLayoutFrame.size.height = v17;
    }

    [(UIView *)self->_searchFieldContainer frame];
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
    MinX = CGRectGetMinX(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v22 = CGRectGetWidth(v38);
    v23 = v6 - MaxY;
    if ((*&searchBarLayoutFlags & 0x10) != 0)
    {
      [(_UISearchBarScopeContainerView *)self->_scopeBarContainer sizeThatFits:v4, v6];
      v24 = v25;
    }

    else
    {
      v24 = 0.0;
    }

    [(_UISearchBarSearchContainerView *)self->_searchFieldContainer sizeThatFits:v4, v6];
    if (v26 >= v23 - v24)
    {
      v27 = v26;
    }

    else
    {
      v27 = v23 - v24;
    }

    if ((*(&self->_searchBarLayoutFlags + 1) & 0x20) != 0 || ![(_UISearchBarLayoutBase *)self isHostedByNavigationBar])
    {
      if (v23 < v27)
      {
        v27 = v6 - MaxY;
      }
    }

    else
    {
      UIFloorToViewScale(self->_searchFieldContainer);
      MaxY = MaxY + v28;
    }

    v29 = 0.0;
    v30 = 0.0;
    v31 = MaxY;
    if ((*(&self->_searchBarLayoutFlags + 1) & 6) == 0)
    {
      v39.origin.x = x;
      v39.origin.y = MaxY;
      v39.size.width = width;
      v39.size.height = v27;
      v30 = CGRectGetMaxY(v39);
      if (v23 - v27 >= v24)
      {
        v29 = v24;
      }

      else
      {
        v29 = v23 - v27;
      }

      v31 = v30;
    }

    self->_searchFieldContainerLayoutFrame.origin.x = x;
    self->_searchFieldContainerLayoutFrame.origin.y = MaxY;
    self->_searchFieldContainerLayoutFrame.size.width = width;
    self->_searchFieldContainerLayoutFrame.size.height = v27;
    self->_scopeBarContainerLayoutFrame.origin.x = MinX;
    self->_scopeBarContainerLayoutFrame.origin.y = v30;
    self->_scopeBarContainerLayoutFrame.size.width = v22;
    self->_scopeBarContainerLayoutFrame.size.height = v29;
    [(UIView *)self->_searchBarBackground frame];
    v4 = v32;
    backgroundExtension = self->_backgroundExtension;
    v6 = v31 + backgroundExtension;
    p_searchFieldContainerLayoutFrame = &self->_searchBarBackgroundLayoutFrame;
    self->_searchBarBackgroundLayoutFrame.origin.x = v34;
    self->_searchBarBackgroundLayoutFrame.origin.y = -backgroundExtension;
  }

  p_searchFieldContainerLayoutFrame->size.width = v4;
  p_searchFieldContainerLayoutFrame->size.height = v6;
}

- (CGRect)promptContainerLayoutFrame
{
  [(_UISearchBarLayoutBase *)self updateLayoutIfNeeded];
  x = self->_promptContainerLayoutFrame.origin.x;
  y = self->_promptContainerLayoutFrame.origin.y;
  width = self->_promptContainerLayoutFrame.size.width;
  height = self->_promptContainerLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)scopeBarContainerLayoutFrame
{
  [(_UISearchBarLayoutBase *)self updateLayoutIfNeeded];
  x = self->_scopeBarContainerLayoutFrame.origin.x;
  y = self->_scopeBarContainerLayoutFrame.origin.y;
  width = self->_scopeBarContainerLayoutFrame.size.width;
  height = self->_scopeBarContainerLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)searchBarBackgroundLayoutFrame
{
  [(_UISearchBarLayoutBase *)self updateLayoutIfNeeded];
  x = self->_searchBarBackgroundLayoutFrame.origin.x;
  y = self->_searchBarBackgroundLayoutFrame.origin.y;
  width = self->_searchBarBackgroundLayoutFrame.size.width;
  height = self->_searchBarBackgroundLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)separatorLayoutFrame
{
  [(_UISearchBarLayoutBase *)self updateLayoutIfNeeded];
  x = self->_separatorLayoutFrame.origin.x;
  y = self->_separatorLayoutFrame.origin.y;
  width = self->_separatorLayoutFrame.size.width;
  height = self->_separatorLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)ensureCorrectContainerViewOrdering
{
  v3 = [(UIView *)self->_searchFieldContainer superview];
  [v3 insertSubview:self->_searchFieldContainer aboveSubview:self->_searchBarBackground];
  if ((*&self->_searchBarLayoutFlags & 0x610) == 0x10)
  {
    [v3 insertSubview:self->_scopeBarContainer aboveSubview:self->_searchBarBackground];
  }
}

- (void)prepareSublayouts
{
  [(_UISearchBarLayout *)self prepareSearchContainerLayout];

  [(_UISearchBarLayout *)self prepareScopeContainerLayout];
}

- (double)naturalSearchFieldHeight
{
  [(_UISearchBarLayout *)self prepareSearchContainerLayout];
  searchContainerLayout = self->_searchContainerLayout;

  [(_UISearchBarSearchContainerLayout *)searchContainerLayout naturalSearchFieldHeight];
  return result;
}

- (double)idealSearchContainerWidth
{
  [(_UISearchBarLayout *)self prepareSearchContainerLayout];
  searchContainerLayout = self->_searchContainerLayout;

  [(_UISearchBarSearchContainerLayout *)searchContainerLayout idealWidth];
  return result;
}

- (double)prescribedSearchContainerWidth
{
  [(_UISearchBarLayout *)self prepareSearchContainerLayout];
  searchContainerLayout = self->_searchContainerLayout;

  [(_UISearchBarSearchContainerLayout *)searchContainerLayout prescribedWidth];
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24.receiver = self;
  v24.super_class = _UISearchBarLayout;
  v4 = [(_UISearchBarLayoutBase *)&v24 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 17, self->_searchBarBackground);
    objc_storeStrong(v5 + 18, self->_searchBarBackdrop);
    objc_storeStrong(v5 + 19, self->_separator);
    objc_storeStrong(v5 + 20, self->_scopeBarContainer);
    objc_storeStrong(v5 + 21, self->_searchFieldContainer);
    objc_storeStrong(v5 + 22, self->_promptContainer);
    v6 = [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout copy];
    v7 = v5[33];
    v5[33] = v6;

    [v5[33] setDelegate:v5];
    v8 = [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout copy];
    v9 = v5[32];
    v5[32] = v8;

    [v5[32] setDelegate:v5];
    if ((*(&self->_searchBarLayoutFlags + 1) & 6) == 0)
    {
      [v5[32] setNeighboringSearchLayout:v5[33]];
    }

    v10 = *&self->_searchBarLayoutFlags;
    v5[14] = v10;
    *(v5 + 28) = v10 & 0xFFFEFFFF;
    *(v5 + 17) = self->_searchFieldBackgroundPositionAdjustment;
    v5[24] = *&self->_searchBarReadableWidth;
    v5[25] = self->_numberOfScopeTitles;
    v11 = *&self->_defaultScopeBarInsets.bottom;
    *(v5 + 31) = *&self->_defaultScopeBarInsets.top;
    *(v5 + 32) = v11;
    v12 = [self->_hostedScopeBarHeightForBarMetrics copy];
    v13 = v5[26];
    v5[26] = v12;

    v14 = [self->_hostedScopeBarTopInsetForBarMetrics copy];
    v15 = v5[27];
    v5[27] = v14;

    v5[31] = self->_representedLayoutState;
    v16 = [(UIFont *)self->_searchFieldFont copy];
    v17 = v5[28];
    v5[28] = v16;

    size = self->_promptContainerLayoutFrame.size;
    *(v5 + 19) = self->_promptContainerLayoutFrame.origin;
    *(v5 + 20) = size;
    v19 = self->_searchFieldContainerLayoutFrame.size;
    *(v5 + 21) = self->_searchFieldContainerLayoutFrame.origin;
    *(v5 + 22) = v19;
    v20 = self->_scopeBarContainerLayoutFrame.size;
    *(v5 + 23) = self->_scopeBarContainerLayoutFrame.origin;
    *(v5 + 24) = v20;
    v21 = self->_searchBarBackgroundLayoutFrame.size;
    *(v5 + 25) = self->_searchBarBackgroundLayoutFrame.origin;
    *(v5 + 26) = v21;
    v22 = self->_separatorLayoutFrame.size;
    *(v5 + 27) = self->_separatorLayoutFrame.origin;
    *(v5 + 28) = v22;
  }

  return v5;
}

- (void)setHasCancelButton:(BOOL)a3
{
  if ((*&self->_searchBarLayoutFlags & 1) != a3)
  {
    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFFFFE | a3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHasDeleteButton:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 2) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFFFFD | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHasLeftButton:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 4) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFFFFB | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHasFloatingSearchIconBackgroundView:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 8) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 8;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFFFF7 | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHasScopeBar:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 0x10) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 16;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFFFEF | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHasPromptLabel:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 0x20) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 32;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFFFDF | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHasSearchBarBackground:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 0x40) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 64;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFFFBF | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHasSearchBarBackdrop:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 0x80) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 128;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFFF7F | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHasSeparator:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 0x100) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 256;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFFEFF | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setSearchField:(id)a3
{
  v4 = a3;
  [(_UISearchBarLayout *)self setUpSearchContainerLayout];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setSearchField:v4];
}

- (void)setCancelButton:(id)a3
{
  v4 = a3;
  [(_UISearchBarLayout *)self setUpSearchContainerLayout];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setCancelButton:v4];
}

- (void)setDeleteButton:(id)a3
{
  v4 = a3;
  [(_UISearchBarLayout *)self setUpSearchContainerLayout];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setDeleteButton:v4];
}

- (void)setLeftButton:(id)a3
{
  v4 = a3;
  [(_UISearchBarLayout *)self setUpSearchContainerLayout];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setLeftButton:v4];
}

- (void)setFloatingSearchIconView:(id)a3
{
  v4 = a3;
  [(_UISearchBarLayout *)self setUpSearchContainerLayout];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setFloatingSearchIconView:v4];
}

- (void)setFloatingSearchIconBackgroundView:(id)a3
{
  v4 = a3;
  [(_UISearchBarLayout *)self setUpSearchContainerLayout];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setFloatingSearchIconBackgroundView:v4];
}

- (void)setSearchIconBarButtonItem:(id)a3
{
  v4 = a3;
  [(_UISearchBarLayout *)self setUpSearchContainerLayout];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setSearchIconBarButtonItem:v4];
}

- (void)setScopeBar:(id)a3
{
  v4 = a3;
  [(_UISearchBarLayout *)self setUpScopeContainerLayout];
  [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout setScopeBar:v4];
}

- (void)setAllowSearchFieldShrinkage:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 0x2000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 0x2000;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFDFFF | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHostedInlineByNavigationBar:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 0x200) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 512;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFFDFF | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHostedInlineByToolbar:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 0x400) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 1024;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFFBFF | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setFloating:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 0x800) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 2048;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFF7FF | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setAlwaysForceReadableWidth:(BOOL)a3
{
  searchBarLayoutFlags = self->_searchBarLayoutFlags;
  if (((((*&searchBarLayoutFlags & 0x40000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 0x40000;
    }

    else
    {
      v4 = 0;
    }

    self->_searchBarLayoutFlags = (*&searchBarLayoutFlags & 0xFFFBFFFF | v4);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setTextFieldManagedInNSToolbar:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 0x1000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 4096;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFEFFF | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setSearchFieldUsesCustomBackgroundImage:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 0x4000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 0x4000;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFFBFFF | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setSearchFieldEffectivelySupportsDynamicType:(BOOL)a3
{
  if (((((*&self->_searchBarLayoutFlags & 0x8000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 0x8000;
    }

    else
    {
      v3 = 0;
    }

    self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFF7FFF | v3);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setNeedsReconfigurationForScopeBar:(BOOL)a3
{
  searchBarLayoutFlags = self->_searchBarLayoutFlags;
  if (((((*&searchBarLayoutFlags & 0x80000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 0x80000;
    }

    else
    {
      v4 = 0;
    }

    self->_searchBarLayoutFlags = (*&searchBarLayoutFlags & 0xFFF7FFFF | v4);
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setSearchFieldFont:(id)a3
{
  v5 = a3;
  if (self->_searchFieldFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_searchFieldFont, a3);
    v5 = v6;
    self->_cachedFontValueBeforeScaling = 0.0;
    self->_cachedFontValueAfterScaling = 0.0;
  }
}

- (void)setProspective:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFEFFFF | v3);
}

- (void)setHostingNavBarTransitionActive:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_searchBarLayoutFlags = (*&self->_searchBarLayoutFlags & 0xFFFDFFFF | v3);
}

- (void)setSearchFieldBackgroundPositionAdjustment:(UIOffset)a3
{
  if (a3.horizontal != self->_searchFieldBackgroundPositionAdjustment.horizontal || a3.vertical != self->_searchFieldBackgroundPositionAdjustment.vertical)
  {
    self->_searchFieldBackgroundPositionAdjustment = a3;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setBackgroundExtension:(double)a3
{
  if (self->_backgroundExtension != a3)
  {
    self->_backgroundExtension = a3;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setScopeBarContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_scopeBarContentInset.top), vceqq_f64(v4, *&self->_scopeBarContentInset.bottom)))) & 1) == 0)
  {
    self->_scopeBarContentInset = a3;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
    scopeContainerLayout = self->_scopeContainerLayout;

    [(_UISearchBarLayoutBase *)scopeContainerLayout invalidateLayout];
  }
}

- (UIEdgeInsets)scopeContainerSpecificInsets
{
  [(_UISearchBarLayout *)self prepareScopeContainerLayout];
  scopeContainerLayout = self->_scopeContainerLayout;

  [(_UISearchBarScopeContainerLayout *)scopeContainerLayout containerSpecificInsets];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (double)naturalPromptContainerHeight
{
  promptContainer = self->_promptContainer;
  [(UIView *)promptContainer bounds];
  [(_UISearchBarPromptContainerView *)promptContainer sizeThatFits:v3, v4];
  return v5;
}

- (void)prepareBaseConfigurationForSublayout:(id)a3
{
  v4 = a3;
  [v4 setBarMetrics:{-[_UISearchBarLayoutBase barMetrics](self, "barMetrics")}];
  [v4 setLayoutRTL:{-[_UISearchBarLayoutBase isLayoutRTL](self, "isLayoutRTL")}];
  [v4 setHostedByNavigationBar:{-[_UISearchBarLayoutBase isHostedByNavigationBar](self, "isHostedByNavigationBar")}];
}

- (void)containerLayoutWillUpdateLayout:(id)a3
{
  v5 = a3;
  [(_UISearchBarLayoutBase *)self updateLayoutIfNeeded];
  v4 = v5;
  if (self->_searchContainerLayout == v5)
  {
    [(_UISearchBarLayout *)self prepareSearchContainerLayout];
  }

  else
  {
    if (self->_scopeContainerLayout != v5)
    {
      goto LABEL_6;
    }

    [(_UISearchBarLayout *)self prepareScopeContainerLayout];
  }

  v4 = v5;
LABEL_6:
}

- (double)layout:(id)a3 fontScaledValueForValue:(double)a4
{
  v4 = a4;
  if (self->_cachedFontValueBeforeScaling == a4)
  {
    return self->_cachedFontValueAfterScaling;
  }

  self->_cachedFontValueBeforeScaling = a4;
  v6 = [(_UISearchBarLayout *)self searchField];
  searchFieldFont = self->_searchFieldFont;
  if (searchFieldFont)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [(UIFont *)searchFieldFont _scaledValueForValue:v4];
    UIRoundToViewScale(v6);
    v4 = v9;
  }

  self->_cachedFontValueAfterScaling = v4;

  return v4;
}

- (void)applyScopeContainerSublayout
{
  [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout applyLayout];
  v3 = [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout scopeBar];
  [v3 layoutIfNeeded];
}

- (void)cleanUpLayout
{
  searchBarLayoutFlags = self->_searchBarLayoutFlags;
  v5 = [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout cancelButton];
  v6 = [v5 superview];

  if ((*&searchBarLayoutFlags & 1) == 0)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout cancelButton];
    [v7 setHidden:1];
    goto LABEL_8;
  }

  if (!v6)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"_UISearchBarLayout.m" lineNumber:678 description:@"Missing or detached view for search bar layout cleanup"];
  }

  v8 = [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout cancelButton];
  [v8 setHidden:0];

  v9 = [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout cancelButton];
  [v9 alpha];
  v11 = v10;

  if (v11 < 0.01)
  {
    v7 = [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout cancelButton];
    [v7 setAlpha:1.0];
LABEL_8:
  }

LABEL_9:
  v12 = self->_searchBarLayoutFlags;
  v13 = [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout deleteButton];
  v14 = [v13 superview];

  if ((*&v12 & 2) == 0)
  {
    if (!v14)
    {
      goto LABEL_17;
    }

    v15 = [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout deleteButton];
    [v15 setHidden:1];
    goto LABEL_16;
  }

  if (!v14)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"_UISearchBarLayout.m" lineNumber:679 description:@"Missing or detached view for search bar layout cleanup"];
  }

  v16 = [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout deleteButton];
  [v16 setHidden:0];

  v17 = [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout deleteButton];
  [v17 alpha];
  v19 = v18;

  if (v19 < 0.01)
  {
    v15 = [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout deleteButton];
    [v15 setAlpha:1.0];
LABEL_16:
  }

LABEL_17:
  v20 = self->_searchBarLayoutFlags;
  v21 = [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout scopeBar];
  v22 = [v21 superview];

  if ((*&v20 & 0x10) == 0)
  {
    if (!v22)
    {
      goto LABEL_25;
    }

    v23 = [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout scopeBar];
    [v23 setHidden:1];
    goto LABEL_24;
  }

  if (!v22)
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"_UISearchBarLayout.m" lineNumber:680 description:@"Missing or detached view for search bar layout cleanup"];
  }

  v24 = [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout scopeBar];
  [v24 setHidden:0];

  v25 = [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout scopeBar];
  [v25 alpha];
  v27 = v26;

  if (v27 < 0.01)
  {
    v23 = [(_UISearchBarScopeContainerLayout *)self->_scopeContainerLayout scopeBar];
    [v23 setAlpha:1.0];
LABEL_24:
  }

LABEL_25:
  v28 = self->_searchBarLayoutFlags;
  v29 = [(UIView *)self->_promptContainer superview];

  if ((*&v28 & 0x20) != 0)
  {
    if (!v29)
    {
      v45 = [MEMORY[0x1E696AAA8] currentHandler];
      [v45 handleFailureInMethod:a2 object:self file:@"_UISearchBarLayout.m" lineNumber:681 description:@"Missing or detached view for search bar layout cleanup"];
    }

    [(UIView *)self->_promptContainer setHidden:0];
    [(UIView *)self->_promptContainer alpha];
    if (v30 < 0.01)
    {
      [(UIView *)self->_promptContainer setAlpha:1.0];
    }
  }

  else if (v29)
  {
    [(UIView *)self->_promptContainer setHidden:1];
  }

  v31 = self->_searchBarLayoutFlags;
  v32 = [(UIView *)self->_searchBarBackground superview];

  if ((*&v31 & 0x40) != 0)
  {
    if (!v32)
    {
      v46 = [MEMORY[0x1E696AAA8] currentHandler];
      [v46 handleFailureInMethod:a2 object:self file:@"_UISearchBarLayout.m" lineNumber:682 description:@"Missing or detached view for search bar layout cleanup"];
    }

    [(UIView *)self->_searchBarBackground setHidden:0];
    [(UIView *)self->_searchBarBackground alpha];
    if (v33 < 0.01)
    {
      [(UIView *)self->_searchBarBackground setAlpha:1.0];
    }
  }

  else if (v32)
  {
    [(UIView *)self->_searchBarBackground setHidden:1];
  }

  v34 = self->_searchBarLayoutFlags;
  v35 = [(UIView *)self->_searchBarBackdrop superview];

  if ((*&v34 & 0x80) != 0)
  {
    if (!v35)
    {
      v47 = [MEMORY[0x1E696AAA8] currentHandler];
      [v47 handleFailureInMethod:a2 object:self file:@"_UISearchBarLayout.m" lineNumber:683 description:@"Missing or detached view for search bar layout cleanup"];
    }

    [(UIView *)self->_searchBarBackdrop setHidden:0];
    [(UIView *)self->_searchBarBackdrop alpha];
    if (v36 < 0.01)
    {
      [(UIView *)self->_searchBarBackdrop setAlpha:1.0];
    }
  }

  else if (v35)
  {
    [(UIView *)self->_searchBarBackdrop setHidden:1];
  }

  v37 = self->_searchBarLayoutFlags;
  v38 = [(UIView *)self->_separator superview];

  if ((*&v37 & 0x100) != 0)
  {
    if (!v38)
    {
      v48 = [MEMORY[0x1E696AAA8] currentHandler];
      [v48 handleFailureInMethod:a2 object:self file:@"_UISearchBarLayout.m" lineNumber:684 description:@"Missing or detached view for search bar layout cleanup"];
    }

    [(UIView *)self->_separator setHidden:0];
    [(UIView *)self->_separator alpha];
    if (v40 < 0.01)
    {
      separator = self->_separator;

      [(UIView *)separator setAlpha:1.0];
    }
  }

  else if (v38)
  {
    v39 = self->_separator;

    [(UIView *)v39 setHidden:1];
  }
}

- (NSString)description
{
  v25.receiver = self;
  v25.super_class = _UISearchBarLayout;
  v3 = [(_UISearchBarLayoutBase *)&v25 description];
  if (!os_variant_has_internal_diagnostics())
  {
    goto LABEL_2;
  }

  v5 = _UISearchBarLayoutStateDebugDescription(self->_representedLayoutState);
  [(_UISearchBarLayout *)self naturalTotalHeight];
  v7 = [v3 stringByAppendingFormat:@" %@ naturalHeight=%g", v5, v6];

  minimum = self->_heightRange.minimum;
  maximum = self->_heightRange.maximum;
  if (minimum != maximum)
  {
    v10 = [v7 stringByAppendingFormat:@" (min=%g, max=%g)", *&self->_heightRange.minimum, *&maximum];

    v7 = v10;
  }

  searchBarLayoutFlags = self->_searchBarLayoutFlags;
  if ((*&searchBarLayoutFlags & 0x20) != 0)
  {
    [(_UISearchBarLayout *)self naturalPromptContainerHeight];
    v14 = [v7 stringByAppendingFormat:@" naturalPromptContainerHeight=%g", v13];

    v12 = self->_searchBarLayoutFlags;
    v7 = v14;
  }

  else
  {
    v12 = self->_searchBarLayoutFlags;
  }

  if ((*&v12 & 0x200) != 0)
  {
    v15 = @" in nav bar content";
    goto LABEL_14;
  }

  if ((*&v12 & 0x400) != 0)
  {
    v15 = @" in toolbar content";
LABEL_14:
    v16 = [v7 stringByAppendingString:{v15, minimum}];

    v7 = v16;
  }

  if (self->_searchContainerLayout)
  {
    [v7 stringByAppendingFormat:@" searchContainerLayout=%p", minimum, self->_searchContainerLayout];
  }

  else
  {
    [v7 stringByAppendingString:{@" MISSING searchContainerLayout", minimum}];
  }
  v3 = ;

  if (self->_scopeContainerLayout)
  {
    v17 = [v3 stringByAppendingFormat:@" scopeContainerLayout=%p", self->_scopeContainerLayout];

    v3 = v17;
  }

  if ((*&searchBarLayoutFlags & 0x20) != 0)
  {
    v18 = [v3 stringByAppendingFormat:@" promptContainer=%p", self->_promptContainer];

    v3 = v18;
  }

  if ([(_UISearchBarLayoutBase *)self isLayoutValid])
  {
    v19 = [v3 stringByAppendingString:@" layoutFrames:"];

    if ((*&searchBarLayoutFlags & 0x20) != 0)
    {
      v20 = [v19 stringByAppendingFormat:@" promptContainer=(%g, %g %g, %g)", *&self->_promptContainerLayoutFrame.origin.x, *&self->_promptContainerLayoutFrame.origin.y, *&self->_promptContainerLayoutFrame.size.width, *&self->_promptContainerLayoutFrame.size.height];;

      v19 = v20;
    }

    v3 = [v19 stringByAppendingFormat:@" searchContainer=(%g, %g %g, %g)", *&self->_searchFieldContainerLayoutFrame.origin.x, *&self->_searchFieldContainerLayoutFrame.origin.y, *&self->_searchFieldContainerLayoutFrame.size.width, *&self->_searchFieldContainerLayoutFrame.size.height];;

    v21 = self->_searchBarLayoutFlags;
    if ((*&v21 & 0x10) != 0 && (*&v21 & 0x600) != 0)
    {
      v22 = [v3 stringByAppendingFormat:@" scopeContainer=(%g, %g %g, %g)", *&self->_scopeBarContainerLayoutFrame.origin.x, *&self->_scopeBarContainerLayoutFrame.origin.y, *&self->_scopeBarContainerLayoutFrame.size.width, *&self->_scopeBarContainerLayoutFrame.size.height];;

      v21 = self->_searchBarLayoutFlags;
      v3 = v22;
    }

    if ((*&v21 & 0x40) != 0)
    {
      v23 = [v3 stringByAppendingFormat:@" searchBarBackground=(%g, %g %g, %g)", *&self->_searchBarBackgroundLayoutFrame.origin.x, *&self->_searchBarBackgroundLayoutFrame.origin.y, *&self->_searchBarBackgroundLayoutFrame.size.width, *&self->_searchBarBackgroundLayoutFrame.size.height];;

      v21 = self->_searchBarLayoutFlags;
      v3 = v23;
    }

    if ((*&v21 & 0x100) != 0)
    {
      v24 = [v3 stringByAppendingFormat:@" separator=(%g, %g %g, %g)", *&self->_separatorLayoutFrame.origin.x, *&self->_separatorLayoutFrame.origin.y, *&self->_separatorLayoutFrame.size.width, *&self->_separatorLayoutFrame.size.height];;

      v3 = v24;
    }
  }

LABEL_2:

  return v3;
}

- (void)setDelegateSearchFieldFrameManipulationBlock:(id)a3
{
  v4 = a3;
  [(_UISearchBarLayout *)self setUpSearchContainerLayout];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setDelegateSearchFieldFrameForProposedFrame:v4];
}

- (void)setLayoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback:(id)a3
{
  v4 = a3;
  [(_UISearchBarLayout *)self setUpSearchContainerLayout];
  [(_UISearchBarSearchContainerLayout *)self->_searchContainerLayout setLayoutCustomizationDelegateSearchFieldContainerWillLayoutSubviewsCallback:v4];
}

- (void)setAdditionalPaddingForCancelButtonAtLeadingEdge:(double)a3
{
  [(_UISearchBarLayout *)self setUpSearchContainerLayout];
  searchContainerLayout = self->_searchContainerLayout;

  [(_UISearchBarSearchContainerLayout *)searchContainerLayout setAdditionalPaddingForCancelButtonAtLeadingEdge:a3];
}

- (void)setAdditionalPaddingForSearchFieldAtLeadingEdge:(double)a3
{
  [(_UISearchBarLayout *)self setUpSearchContainerLayout];
  searchContainerLayout = self->_searchContainerLayout;

  [(_UISearchBarSearchContainerLayout *)searchContainerLayout setAdditionalPaddingForSearchFieldAtLeadingEdge:a3];
}

- (UIEdgeInsets)scopeBarContentInset
{
  top = self->_scopeBarContentInset.top;
  left = self->_scopeBarContentInset.left;
  bottom = self->_scopeBarContentInset.bottom;
  right = self->_scopeBarContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIOffset)searchFieldBackgroundPositionAdjustment
{
  horizontal = self->_searchFieldBackgroundPositionAdjustment.horizontal;
  vertical = self->_searchFieldBackgroundPositionAdjustment.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (UIEdgeInsets)defaultScopeBarInsets
{
  top = self->_defaultScopeBarInsets.top;
  left = self->_defaultScopeBarInsets.left;
  bottom = self->_defaultScopeBarInsets.bottom;
  right = self->_defaultScopeBarInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)heightRange
{
  minimum = self->_heightRange.minimum;
  maximum = self->_heightRange.maximum;
  result.var1 = maximum;
  result.var0 = minimum;
  return result;
}

@end