@interface UIKeyShortcutHUDMetrics
+ (UIKeyShortcutHUDMetrics)currentMetrics;
+ (void)setCurrentMetrics:(id)a3;
- (BOOL)isHUDShrunkToFitHorizontally;
- (BOOL)shouldAlignShortcutModifiersAndInputInColumn;
- (UIColor)standardHUDTextColor;
- (UIFont)cancelButtonFont;
- (UIFont)categoryHeaderFont;
- (UIFont)keyShortcutInputCharacterFont;
- (UIFont)shortcutSubtitleFont;
- (UIFont)standardHUDFont;
- (UIFont)toolbarCategoryVisibleFont;
- (UIView)selfSizingPlayground;
- (UIVisualEffect)menuSeparatorVisualEffect;
- (UIVisualEffect)platterVisualEffect;
- (_UIKeyShortcutHUDClientTraits)clientTraits;
- (_UIKeyShortcutHUDMenu)baseMenu;
- (_UIKeyShortcutHUDShortcutCell)selfSizingShortcutCell;
- (_UIKeyShortcutHUDToolbarCategoryCell)selfSizingToolbarCategoryCell;
- (_UIKeyShortcutHUDToolbarSearchCell)selfSizingSearchCell;
- (double)_computedWidthForCategoryAtIndex:(unint64_t)a3;
- (double)_shortcutWidthAdjustmentForMetrics:(id)a3 shortcutWidth:(double)a4;
- (double)_toolbarContentToWindowBottomEdgeSpacing;
- (double)_toolbarDistanceFromBottomOfWindow;
- (double)_toolbarHeight;
- (double)cellWidthForShortcut:(id)a3;
- (double)contentSizeScaledMetric:(double)a3;
- (double)headerWidthForCategory:(id)a3;
- (double)horizontalOffsetForCategoryAtIndex:(unint64_t)a3;
- (double)inputWidthForShortcut:(id)a3;
- (double)menuCellCornerRadius;
- (double)menuColumnSpacing;
- (double)menuHorizontalContentInset;
- (double)menuTopContentInset;
- (double)modifiersWidthForShortcut:(id)a3;
- (double)searchModeMaximumMenuPanelHeight;
- (double)searchModeMenuTopContentInset;
- (double)searchModePreferredMenuPanelWidth;
- (double)standardHUDWidth;
- (double)standardMenuPanelHeight;
- (double)toolbarCellCornerRadius;
- (unint64_t)categoryIndexAtHorizontalOffset:(double)a3;
- (unint64_t)contentSizeAdjustedMaxNumberOfCellsPerColumn;
- (unint64_t)maxNumberOfCellsInSearchResults;
- (void)_computeAndStoreCellMetricsForShortcut:(id)a3 indexPath:(id)a4;
- (void)_setDisplayedMenu:(id)a3 searching:(BOOL)a4 combinedShortcutAndAlternateColumnWidths:(BOOL)a5;
- (void)_updateBaseMenuMetrics;
- (void)_updateDisplayedMenuMetrics;
- (void)_updateDisplayedSearchMenuMetrics;
- (void)_updateDisplayedStandardMenuMetrics;
- (void)computeOneTimeMetrics;
- (void)setBaseMenu:(id)a3;
- (void)setDisplayedMenu:(id)a3 searching:(BOOL)a4;
@end

@implementation UIKeyShortcutHUDMetrics

- (_UIKeyShortcutHUDShortcutCell)selfSizingShortcutCell
{
  selfSizingShortcutCell = self->_selfSizingShortcutCell;
  if (!selfSizingShortcutCell)
  {
    v5 = [(UIKeyShortcutHUDMetrics *)self selfSizingPlayground];

    if (!v5)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"UIKeyShortcutHUDMetrics.m" lineNumber:126 description:@"Fatal: attempted to create the self-sizing shortcut cell in the HUD metrics without a self-sizing playground!"];
    }

    v6 = [_UIKeyShortcutHUDShortcutCell alloc];
    [(UIKeyShortcutHUDMetrics *)self menuCellHeight];
    v8 = [(_UIKeyShortcutHUDShortcutCell *)v6 initWithFrame:0.0, 0.0, 0.0, v7];
    v9 = self->_selfSizingShortcutCell;
    self->_selfSizingShortcutCell = v8;

    v10 = [(UIKeyShortcutHUDMetrics *)self selfSizingPlayground];
    [v10 addSubview:self->_selfSizingShortcutCell];

    selfSizingShortcutCell = self->_selfSizingShortcutCell;
  }

  return selfSizingShortcutCell;
}

- (_UIKeyShortcutHUDToolbarSearchCell)selfSizingSearchCell
{
  selfSizingSearchCell = self->_selfSizingSearchCell;
  if (!selfSizingSearchCell)
  {
    v5 = [(UIKeyShortcutHUDMetrics *)self selfSizingPlayground];

    if (!v5)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"UIKeyShortcutHUDMetrics.m" lineNumber:136 description:@"Fatal: attempted to create the self-sizing search cell in the HUD metrics without a self-sizing playground!"];
    }

    v6 = [_UIKeyShortcutHUDToolbarSearchCell alloc];
    [(UIKeyShortcutHUDMetrics *)self menuCellHeight];
    v8 = [(_UIKeyShortcutHUDToolbarSearchCell *)v6 initWithFrame:0.0, 0.0, 0.0, v7];
    v9 = self->_selfSizingSearchCell;
    self->_selfSizingSearchCell = v8;

    v10 = [(UIKeyShortcutHUDMetrics *)self selfSizingPlayground];
    [v10 addSubview:self->_selfSizingSearchCell];

    selfSizingSearchCell = self->_selfSizingSearchCell;
  }

  return selfSizingSearchCell;
}

- (_UIKeyShortcutHUDToolbarCategoryCell)selfSizingToolbarCategoryCell
{
  selfSizingToolbarCategoryCell = self->_selfSizingToolbarCategoryCell;
  if (!selfSizingToolbarCategoryCell)
  {
    v5 = [(UIKeyShortcutHUDMetrics *)self selfSizingPlayground];

    if (!v5)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"UIKeyShortcutHUDMetrics.m" lineNumber:146 description:@"Fatal: attempted to create the self-sizing toolbar category cell in the HUD metrics without a self-sizing playground!"];
    }

    v6 = [_UIKeyShortcutHUDToolbarCategoryCell alloc];
    [(UIKeyShortcutHUDMetrics *)self menuCellHeight];
    v8 = [(_UIKeyShortcutHUDCell *)v6 initWithFrame:0.0, 0.0, 0.0, v7];
    v9 = self->_selfSizingToolbarCategoryCell;
    self->_selfSizingToolbarCategoryCell = v8;

    v10 = [(UIKeyShortcutHUDMetrics *)self selfSizingPlayground];
    [v10 addSubview:self->_selfSizingToolbarCategoryCell];

    selfSizingToolbarCategoryCell = self->_selfSizingToolbarCategoryCell;
  }

  return selfSizingToolbarCategoryCell;
}

- (void)setBaseMenu:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_baseMenu);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_baseMenu, obj);
    [(UIKeyShortcutHUDMetrics *)self _updateBaseMenuMetrics];
    v5 = obj;
  }
}

- (void)setDisplayedMenu:(id)a3 searching:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(UIKeyShortcutHUDMetrics *)self _setDisplayedMenu:v6 searching:v4 combinedShortcutAndAlternateColumnWidths:[(UIKeyShortcutHUDMetrics *)self isHUDShrunkToFitHorizontally]];
}

- (void)_setDisplayedMenu:(id)a3 searching:(BOOL)a4 combinedShortcutAndAlternateColumnWidths:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  if (self->_displayedMenu != v9 || self->_searching != v6 || self->_combinedShortcutAndAlternateColumnWidths != v5)
  {
    v10 = v9;
    objc_storeStrong(&self->_displayedMenu, a3);
    self->_searching = v6;
    self->_combinedShortcutAndAlternateColumnWidths = v5;
    [(UIKeyShortcutHUDMetrics *)self _updateDisplayedMenuMetrics];
    v9 = v10;
  }
}

- (void)computeOneTimeMetrics
{
  WeakRetained = objc_loadWeakRetained(&self->_clientTraits);
  if ([WeakRetained hasArabicHardwareKeyboard])
  {
    v4 = objc_loadWeakRetained(&self->_clientTraits);
    self->_shouldMirrorShortcutInputs = [v4 layoutDirection] == 1;
  }

  else
  {
    self->_shouldMirrorShortcutInputs = 0;
  }

  self->_shouldDisplayEscShortcutAlternative = 1;
  v5 = objc_loadWeakRetained(&self->_clientTraits);
  self->_shouldDisplayGlobeModiferAsGlobeSymbol = [v5 globeKeyLabelHasGlobeSymbol];
}

- (void)_updateBaseMenuMetrics
{
  v101 = *MEMORY[0x1E69E9840];
  v4 = [(UIKeyShortcutHUDMetrics *)self selfSizingPlayground];

  if (!v4)
  {
    v77 = [MEMORY[0x1E696AAA8] currentHandler];
    [v77 handleFailureInMethod:a2 object:self file:@"UIKeyShortcutHUDMetrics.m" lineNumber:202 description:@"Fatal: attempted to compute base menu metrics for the HUD without a self-sizing playground!"];
  }

  v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  shortcutCellMetricsMap = self->_shortcutCellMetricsMap;
  self->_shortcutCellMetricsMap = v5;

  v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  shortcutCellIndexPathsMap = self->_shortcutCellIndexPathsMap;
  self->_shortcutCellIndexPathsMap = v7;

  WeakRetained = objc_loadWeakRetained(&self->_baseMenu);
  v10 = [WeakRetained children];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = objc_loadWeakRetained(&self->_baseMenu);
      v14 = [v13 children];
      v15 = [v14 objectAtIndexedSubscript:v12];

      v16 = [v15 children];
      v17 = [v16 count];

      if (v17)
      {
        v18 = 0;
        do
        {
          v19 = [v15 children];
          v20 = [v19 objectAtIndexedSubscript:v18];

          v21 = [MEMORY[0x1E696AC88] indexPathForItem:v18 inSection:v12];
          [(UIKeyShortcutHUDMetrics *)self _computeAndStoreCellMetricsForShortcut:v20 indexPath:v21];
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v22 = [v20 shortcutAlternates];
          v23 = [v22 countByEnumeratingWithState:&v86 objects:v100 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v87;
            do
            {
              v26 = 0;
              do
              {
                if (*v87 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                [(UIKeyShortcutHUDMetrics *)self _computeAndStoreCellMetricsForShortcut:*(*(&v86 + 1) + 8 * v26++) indexPath:v21];
              }

              while (v24 != v26);
              v24 = [v22 countByEnumeratingWithState:&v86 objects:v100 count:16];
            }

            while (v24);
          }

          ++v18;
          v27 = [v15 children];
          v28 = [v27 count];
        }

        while (v18 < v28);
      }

      ++v12;
      v29 = objc_loadWeakRetained(&self->_baseMenu);
      v30 = [v29 children];
      v31 = [v30 count];
    }

    while (v12 < v31);
  }

  self->_numCellsPerColumn = 0;
  v32 = COERCE_DOUBLE([(UIKeyShortcutHUDMetrics *)self contentSizeAdjustedMaxNumberOfCellsPerColumn]);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v33 = objc_loadWeakRetained(&self->_baseMenu);
  v34 = [v33 children];

  v35 = [v34 countByEnumeratingWithState:&v82 objects:v99 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v83;
    do
    {
      v38 = 0;
      do
      {
        if (*v83 != v37)
        {
          objc_enumerationMutation(v34);
        }

        numCellsPerColumn = self->_numCellsPerColumn;
        v40 = [*(*(&v82 + 1) + 8 * v38) children];
        self->_numCellsPerColumn = fmax(numCellsPerColumn, fmin([v40 count], *&v32));

        ++v38;
      }

      while (v36 != v38);
      v36 = [v34 countByEnumeratingWithState:&v82 objects:v99 count:16];
    }

    while (v36);
  }

  v41 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = self->_numCellsPerColumn;
    *buf = 134349312;
    v92 = v42;
    v93 = 2050;
    v94 = v32;
    _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_DEFAULT, "HUD metrics: computed numCellsPerColumn = %{public}lu before accounting for available vertical space, with max possible cells = %{public}lu", buf, 0x16u);
  }

  [(UIKeyShortcutHUDMetrics *)self availableVerticalSpace];
  v44 = v43;
  [(UIKeyShortcutHUDMetrics *)self _toolbarDistanceFromBottomOfWindow];
  v46 = v44 - v45;
  [(UIKeyShortcutHUDMetrics *)self _toolbarHeight];
  v48 = v46 - v47;
  [(UIKeyShortcutHUDMetrics *)self standardMenuToolbarSpacing];
  v50 = v48 - v49;
  [(UIKeyShortcutHUDMetrics *)self minimumScreenEdgeDistance];
  v52 = v50 - v51;
  [(UIKeyShortcutHUDMetrics *)self standardMenuPanelHeight];
  v54 = v53;
  if (v53 > v52)
  {
    [(UIKeyShortcutHUDMetrics *)self menuCellHeight];
    v56 = vcvtpd_u64_f64((v54 - v52) / v55);
    v57 = self->_numCellsPerColumn;
    if (v57 - 1 < v56)
    {
      v56 = v57 - 1;
    }

    self->_numCellsPerColumn = v57 - v56;
  }

  v58 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = self->_numCellsPerColumn;
    [(UIKeyShortcutHUDMetrics *)self availableVerticalSpace];
    *&v60 = v60;
    v61 = v52;
    *buf = 134349824;
    v92 = v59;
    v62 = v54;
    v93 = 2050;
    v94 = *&v60;
    v95 = 2050;
    v96 = v61;
    v97 = 2050;
    v98 = v62;
    _os_log_impl(&dword_188A29000, v58, OS_LOG_TYPE_DEFAULT, "HUD metrics: computed numCellsPerColumn = %{public}lu after accounting for available vertical space; availableSpace = %{public}.2f, availableMenuPanelVerticalSpace = %{public}.2f, idealMenuHeight = %{public}.2f", buf, 0x2Au);
  }

  v63 = self->_numCellsPerColumn;
  if (v63 <= 1)
  {
    v63 = 1;
  }

  self->_numCellsPerColumn = v63;
  v64 = objc_loadWeakRetained(&self->_baseMenu);
  [(UIKeyShortcutHUDMetrics *)self _setDisplayedMenu:v64 searching:0 combinedShortcutAndAlternateColumnWidths:1];

  self->_computedHUDWidthForBaseMenu = self->_displayedMenuContentWidth;
  v65 = [(UIKeyShortcutHUDMetrics *)self selfSizingSearchCell];
  [v65 layoutIfNeeded];
  [v65 systemLayoutSizeFittingSize:{0.0, 0.0}];
  self->_searchButtonWidth = v66;
  [(UIKeyShortcutHUDMetrics *)self toolbarContentInset];
  self->_searchButtonWidth = v67 + self->_searchButtonWidth;
  self->_widestToolbarCategoryCellWidth = 0.0;
  v68 = [(UIKeyShortcutHUDMetrics *)self selfSizingToolbarCategoryCell];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v69 = objc_loadWeakRetained(&self->_baseMenu);
  v70 = [v69 children];

  v71 = [v70 countByEnumeratingWithState:&v78 objects:v90 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v79;
    do
    {
      v74 = 0;
      do
      {
        if (*v79 != v73)
        {
          objc_enumerationMutation(v70);
        }

        [v68 configureForMetricsCalculationsWithCategory:*(*(&v78 + 1) + 8 * v74)];
        [v68 layoutIfNeeded];
        widestToolbarCategoryCellWidth = self->_widestToolbarCategoryCellWidth;
        [v68 systemLayoutSizeFittingSize:{0.0, 0.0}];
        if (widestToolbarCategoryCellWidth >= v76)
        {
          v76 = widestToolbarCategoryCellWidth;
        }

        self->_widestToolbarCategoryCellWidth = v76;
        ++v74;
      }

      while (v72 != v74);
      v72 = [v70 countByEnumeratingWithState:&v78 objects:v90 count:16];
    }

    while (v72);
  }
}

- (void)_computeAndStoreCellMetricsForShortcut:(id)a3 indexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v16 = [(UIKeyShortcutHUDMetrics *)self selfSizingShortcutCell];
  v8 = [v16 shortcutInputAccessoryView];
  v9 = [v8 shortcutInputView];

  [v16 configureWithShortcut:v7];
  [v16 layoutIfNeeded];
  [v16 systemLayoutSizeFittingSize:{0.0, 0.0}];
  v11 = v10;
  [v9 modifiersLabelWidth];
  v13 = v12;
  [v9 inputLabelWidth];
  v15 = [_UIKeyShortcutHUDShortcutCellMetrics metricsWithCellWidth:v11 modifiersWidth:v13 inputWidth:v14];
  [(NSMapTable *)self->_shortcutCellMetricsMap setObject:v15 forKey:v7];
  [(NSMapTable *)self->_shortcutCellIndexPathsMap setObject:v6 forKey:v7];
}

- (void)_updateDisplayedMenuMetrics
{
  v3 = MEMORY[0x1E695DF70];
  v4 = [(_UIKeyShortcutHUDMenu *)self->_displayedMenu children];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  displayedMenuColumnMetrics = self->_displayedMenuColumnMetrics;
  self->_displayedMenuColumnMetrics = v5;

  v7 = MEMORY[0x1E695DF70];
  v8 = [(_UIKeyShortcutHUDMenu *)self->_displayedMenu children];
  v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];
  displayedMenuCategoryOffsets = self->_displayedMenuCategoryOffsets;
  self->_displayedMenuCategoryOffsets = v9;

  self->_displayedMenuContentWidth = 0.0;
  displayedSearchColumnMetrics = self->_displayedSearchColumnMetrics;
  self->_displayedSearchColumnMetrics = 0;

  self->_searchModePreferredMenuPanelHeight = 0.0;
  if (self->_searching)
  {

    [(UIKeyShortcutHUDMetrics *)self _updateDisplayedSearchMenuMetrics];
  }

  else
  {

    [(UIKeyShortcutHUDMetrics *)self _updateDisplayedStandardMenuMetrics];
  }
}

- (void)_updateDisplayedStandardMenuMetrics
{
  v121 = *MEMORY[0x1E69E9840];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = [(_UIKeyShortcutHUDMenu *)self->_displayedMenu children];
  v3 = [obj countByEnumeratingWithState:&v113 objects:v120 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v114;
    v92 = *v114;
    do
    {
      v6 = 0;
      v93 = v4;
      do
      {
        if (*v114 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v113 + 1) + 8 * v6);
        if ([v7 isEmpty])
        {
          [(UIKeyShortcutHUDMetrics *)self emptyColumnWidth];
          v8 = [_UIKeyShortcutHUDShortcutColumnMetrics metricsWithColumnWidth:"metricsWithColumnWidth:modifiersWidth:inputWidth:" modifiersWidth:? inputWidth:?];
          displayedMenuColumnMetrics = self->_displayedMenuColumnMetrics;
          v119 = v8;
          v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
          [(NSMutableArray *)displayedMenuColumnMetrics addObject:v10];
        }

        else
        {
          v95 = v6;
          v11 = [v7 children];
          v12 = [v11 count] - 1;
          v13 = [(UIKeyShortcutHUDMetrics *)self numCellsPerColumn];
          v14 = v12 / v13 + 1;
          LOBYTE(v12) = v12 / v13 == -1;

          v98 = v14;
          v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14];
          v16 = v7;
          v8 = v15;
          if ((v12 & 1) == 0)
          {
            v17 = 0;
            v99 = 1;
            v103 = v16;
            v96 = v15;
            do
            {
              v18 = [(UIKeyShortcutHUDMetrics *)self numCellsPerColumn]* v17++;
              v19 = [(UIKeyShortcutHUDMetrics *)self numCellsPerColumn];
              v20 = 0.0;
              v21 = 0.0;
              v22 = 0.0;
              if (v18 < v19 * v17)
              {
                v97 = v17;
                v23 = v19 * v99;
                v24 = v18;
                v25 = 0.0;
                v104 = v19 * v99;
                do
                {
                  v26 = [v16 children];
                  v27 = [v26 count];

                  if (v24 >= v27)
                  {
                    break;
                  }

                  v28 = [v16 children];
                  v29 = [v28 objectAtIndexedSubscript:v24];

                  v30 = [(NSMapTable *)self->_shortcutCellMetricsMap objectForKey:v29];
                  [v30 modifiersWidth];
                  if (v20 < v31)
                  {
                    v20 = v31;
                  }

                  [v30 inputWidth];
                  if (v21 < v32)
                  {
                    v21 = v32;
                  }

                  if (self->_combinedShortcutAndAlternateColumnWidths)
                  {
                    v33 = [v29 baseShortcutForAlternate];
                    v34 = [(NSMapTable *)self->_shortcutCellMetricsMap objectForKey:v33];
                    [v34 modifiersWidth];
                    if (v22 < v35)
                    {
                      v22 = v35;
                    }

                    v100 = v34;
                    [v34 inputWidth];
                    if (v25 < v36)
                    {
                      v25 = v36;
                    }

                    v109 = 0u;
                    v110 = 0u;
                    v111 = 0u;
                    v112 = 0u;
                    v101 = v33;
                    v37 = [v33 shortcutAlternates];
                    v38 = [v37 countByEnumeratingWithState:&v109 objects:v118 count:16];
                    if (v38)
                    {
                      v39 = v38;
                      v40 = *v110;
                      do
                      {
                        for (i = 0; i != v39; ++i)
                        {
                          if (*v110 != v40)
                          {
                            objc_enumerationMutation(v37);
                          }

                          v42 = [(NSMapTable *)self->_shortcutCellMetricsMap objectForKey:*(*(&v109 + 1) + 8 * i)];
                          [v42 modifiersWidth];
                          if (v22 < v43)
                          {
                            v22 = v43;
                          }

                          [v42 inputWidth];
                          if (v25 < v44)
                          {
                            v25 = v44;
                          }
                        }

                        v39 = [v37 countByEnumeratingWithState:&v109 objects:v118 count:16];
                      }

                      while (v39);
                    }

                    v16 = v103;
                    v23 = v104;
                  }

                  ++v24;
                }

                while (v24 != v23);
                if (self->_combinedShortcutAndAlternateColumnWidths)
                {
                  v45 = v25 + v22;
                }

                else
                {
                  v45 = v21 + v20;
                }

                v22 = 0.0;
                do
                {
                  v46 = [v16 children];
                  v47 = [v46 count];

                  if (v18 >= v47)
                  {
                    break;
                  }

                  v48 = [v16 children];
                  v49 = [v48 objectAtIndexedSubscript:v18];

                  v50 = [(NSMapTable *)self->_shortcutCellMetricsMap objectForKey:v49];
                  v51 = v50;
                  if (self->_combinedShortcutAndAlternateColumnWidths)
                  {
                    v52 = [v49 baseShortcutForAlternate];
                    v53 = [(NSMapTable *)self->_shortcutCellMetricsMap objectForKey:v52];
                    [v53 cellWidth];
                    v55 = v54;
                    [(UIKeyShortcutHUDMetrics *)self _shortcutWidthAdjustmentForMetrics:v53 shortcutWidth:v45];
                    v57 = v55 + v56;
                    v105 = 0u;
                    v106 = 0u;
                    v107 = 0u;
                    v108 = 0u;
                    v102 = v52;
                    v58 = [v52 shortcutAlternates];
                    v59 = [v58 countByEnumeratingWithState:&v105 objects:v117 count:16];
                    if (v59)
                    {
                      v60 = v59;
                      v61 = *v106;
                      do
                      {
                        for (j = 0; j != v60; ++j)
                        {
                          if (*v106 != v61)
                          {
                            objc_enumerationMutation(v58);
                          }

                          v63 = [(NSMapTable *)self->_shortcutCellMetricsMap objectForKey:*(*(&v105 + 1) + 8 * j)];
                          [v63 cellWidth];
                          v65 = v64;
                          [(UIKeyShortcutHUDMetrics *)self _shortcutWidthAdjustmentForMetrics:v63 shortcutWidth:v45];
                          v67 = v65 + v66;
                          if (v57 < v67)
                          {
                            v57 = v67;
                          }
                        }

                        v60 = [v58 countByEnumeratingWithState:&v105 objects:v117 count:16];
                      }

                      while (v60);
                    }

                    v16 = v103;
                    v23 = v104;
                  }

                  else
                  {
                    [v50 cellWidth];
                    v69 = v68;
                    [(UIKeyShortcutHUDMetrics *)self _shortcutWidthAdjustmentForMetrics:v51 shortcutWidth:v45];
                    v57 = v69 + v70;
                  }

                  if (v22 < v57)
                  {
                    v22 = v57;
                  }

                  ++v18;
                }

                while (v18 != v23);
                v8 = v96;
                v17 = v97;
              }

              v71 = [_UIKeyShortcutHUDShortcutColumnMetrics metricsWithColumnWidth:v22 modifiersWidth:v20 inputWidth:v21];
              [v8 addObject:v71];

              ++v99;
            }

            while (v17 < v98);
          }

          [(NSMutableArray *)self->_displayedMenuColumnMetrics addObject:v8];
          v5 = v92;
          v4 = v93;
          v6 = v95;
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v113 objects:v120 count:16];
    }

    while (v4);
  }

  v72 = [(_UIKeyShortcutHUDMenu *)self->_displayedMenu children];
  v73 = [v72 count];

  if (v73)
  {
    v74 = 0;
    do
    {
      if (v74)
      {
        v75 = [(NSMutableArray *)self->_displayedMenuCategoryOffsets objectAtIndexedSubscript:v74 - 1];
        [v75 doubleValue];
        v77 = v76;

        [(UIKeyShortcutHUDMetrics *)self _computedWidthForCategoryAtIndex:v74 - 1];
        v79 = v77 + v78;
        [(UIKeyShortcutHUDMetrics *)self menuColumnSpacing];
        v81 = v79 + v80;
      }

      else
      {
        [(UIKeyShortcutHUDMetrics *)self menuHorizontalContentInset];
      }

      displayedMenuCategoryOffsets = self->_displayedMenuCategoryOffsets;
      v83 = [MEMORY[0x1E696AD98] numberWithDouble:v81];
      [(NSMutableArray *)displayedMenuCategoryOffsets addObject:v83];

      ++v74;
      v84 = [(_UIKeyShortcutHUDMenu *)self->_displayedMenu children];
      v85 = [v84 count];
    }

    while (v74 < v85);
  }

  if (![(_UIKeyShortcutHUDMenu *)self->_displayedMenu isEmpty])
  {
    v86 = [(_UIKeyShortcutHUDMenu *)self->_displayedMenu children];
    v87 = [v86 count] - 1;

    v88 = [(NSMutableArray *)self->_displayedMenuCategoryOffsets objectAtIndexedSubscript:v87];
    [v88 doubleValue];
    self->_displayedMenuContentWidth = v89;

    [(UIKeyShortcutHUDMetrics *)self _computedWidthForCategoryAtIndex:v87];
    self->_displayedMenuContentWidth = v90 + self->_displayedMenuContentWidth;
    [(UIKeyShortcutHUDMetrics *)self menuHorizontalContentInset];
    self->_displayedMenuContentWidth = v91 + self->_displayedMenuContentWidth;
  }
}

- (double)_shortcutWidthAdjustmentForMetrics:(id)a3 shortcutWidth:(double)a4
{
  v6 = a3;
  v7 = 0.0;
  if ([(UIKeyShortcutHUDMetrics *)self shouldAlignShortcutModifiersAndInputInColumn])
  {
    [v6 modifiersWidth];
    v9 = v8;
    [v6 inputWidth];
    v7 = a4 - (v9 + v10);
  }

  return v7;
}

- (void)_updateDisplayedSearchMenuMetrics
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ([(UIKeyShortcutHUDMetrics *)self shouldAlignShortcutModifiersAndInputInColumn])
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v6 = [(_UIKeyShortcutHUDMenu *)self->_displayedMenu children];
    v7 = [v6 countByEnumeratingWithState:&v69 objects:v77 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v70;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v70 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v69 + 1) + 8 * i);
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v12 = [v11 children];
          v13 = [v12 countByEnumeratingWithState:&v65 objects:v76 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v66;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v66 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [(NSMapTable *)self->_shortcutCellMetricsMap objectForKey:*(*(&v65 + 1) + 8 * j)];
                [v17 modifiersWidth];
                if (v5 < v18)
                {
                  v5 = v18;
                }

                [v17 inputWidth];
                if (v4 < v19)
                {
                  v4 = v19;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v65 objects:v76 count:16];
            }

            while (v14);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v69 objects:v77 count:16];
      }

      while (v8);
    }
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v20 = [(_UIKeyShortcutHUDMenu *)self->_displayedMenu children];
  v21 = [v20 countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v62;
    v3 = 0.0;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v62 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v61 + 1) + 8 * k);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v26 = [v25 children];
        v27 = [v26 countByEnumeratingWithState:&v57 objects:v74 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v58;
          do
          {
            for (m = 0; m != v28; ++m)
            {
              if (*v58 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = [(NSMapTable *)self->_shortcutCellMetricsMap objectForKey:*(*(&v57 + 1) + 8 * m)];
              v32 = 0.0;
              if ([(UIKeyShortcutHUDMetrics *)self shouldAlignShortcutModifiersAndInputInColumn])
              {
                [v31 modifiersWidth];
                v34 = v33;
                [v31 inputWidth];
                v32 = v4 + v5 - (v34 + v35);
              }

              [v31 cellWidth];
              v37 = v32 + v36;
              if (v3 < v37)
              {
                v3 = v37;
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v57 objects:v74 count:16];
          }

          while (v28);
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v61 objects:v75 count:16];
    }

    while (v22);
  }

  v38 = [_UIKeyShortcutHUDShortcutColumnMetrics metricsWithColumnWidth:v3 modifiersWidth:v5 inputWidth:v4];
  displayedSearchColumnMetrics = self->_displayedSearchColumnMetrics;
  self->_displayedSearchColumnMetrics = v38;

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v40 = [(_UIKeyShortcutHUDMenu *)self->_displayedMenu children];
  v41 = [v40 countByEnumeratingWithState:&v53 objects:v73 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = 0;
    v44 = *v54;
    do
    {
      for (n = 0; n != v42; ++n)
      {
        if (*v54 != v44)
        {
          objc_enumerationMutation(v40);
        }

        v46 = [*(*(&v53 + 1) + 8 * n) children];
        v43 += [v46 count] + 1;
      }

      v42 = [v40 countByEnumeratingWithState:&v53 objects:v73 count:16];
    }

    while (v42);
    v47 = v43;
  }

  else
  {
    v47 = 0.0;
  }

  [(UIKeyShortcutHUDMetrics *)self menuCellHeight];
  v49 = v47 * v48;
  [(UIKeyShortcutHUDMetrics *)self searchModeMenuTopContentInset];
  v51 = v49 + v50;
  [(UIKeyShortcutHUDMetrics *)self searchModeMenuBottomContentInset];
  self->_searchModePreferredMenuPanelHeight = v51 + v52;
}

- (double)_computedWidthForCategoryAtIndex:(unint64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableArray *)self->_displayedMenuColumnMetrics objectAtIndexedSubscript:a3];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        [(UIKeyShortcutHUDMetrics *)self minShortcutCellWidth];
        v12 = v11;
        [v10 columnWidth];
        v14 = v13;
        [(UIKeyShortcutHUDMetrics *)self maxShortcutCellWidth];
        v8 = v8 + fmax(v12, fmin(v14, v15));
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  [(UIKeyShortcutHUDMetrics *)self menuColumnSpacing];
  v17 = v16;
  v18 = [v4 count];

  return v8 + v17 * (v18 - 1);
}

+ (UIKeyShortcutHUDMetrics)currentMetrics
{
  WeakRetained = objc_loadWeakRetained(&_currentMetrics);

  return WeakRetained;
}

+ (void)setCurrentMetrics:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&_currentMetrics);

  v4 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&_currentMetrics, obj);
    v4 = obj;
  }
}

- (double)contentSizeScaledMetric:(double)a3
{
  if (qword_1ED49ECC8 != -1)
  {
    dispatch_once(&qword_1ED49ECC8, &__block_literal_global_327);
  }

  v4 = _MergedGlobals_1157;

  [v4 scaledValueForValue:a3];
  return result;
}

void __51__UIKeyShortcutHUDMetrics_contentSizeScaledMetric___block_invoke()
{
  v0 = [UIFontMetrics metricsForTextStyle:@"UICTFontTextStyleBody"];
  v1 = _MergedGlobals_1157;
  _MergedGlobals_1157 = v0;
}

- (BOOL)isHUDShrunkToFitHorizontally
{
  [(UIKeyShortcutHUDMetrics *)self standardHUDWidth];
  v4 = v3;
  [(UIKeyShortcutHUDMetrics *)self computedHUDWidthForBaseMenu];
  return v4 == v5;
}

- (unint64_t)contentSizeAdjustedMaxNumberOfCellsPerColumn
{
  v3 = [(UIKeyShortcutHUDMetrics *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (UIContentSizeCategoryCompareToCategory(&cfstr_Uictcontentsiz_10.isa, v4) == NSOrderedAscending)
  {
    v5 = -3;
  }

  else if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    v5 = -2;
  }

  else if (UIContentSizeCategoryCompareToCategory(&cfstr_Uictcontentsiz_5.isa, v4) == NSOrderedAscending)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  v6 = fmax(fmin(([(UIKeyShortcutHUDMetrics *)self maxNumberOfCellsPerColumn]+ v5), [(UIKeyShortcutHUDMetrics *)self maxNumberOfCellsPerColumn]), 2.0);

  return v6;
}

- (double)standardHUDWidth
{
  [(UIKeyShortcutHUDMetrics *)self minShortcutCellWidth];
  v4 = v3 * [(UIKeyShortcutHUDMetrics *)self baseNumberOfVisibleColumns];
  [(UIKeyShortcutHUDMetrics *)self menuColumnSpacing];
  v6 = v4 + v5 * ([(UIKeyShortcutHUDMetrics *)self baseNumberOfVisibleColumns]- 1);
  [(UIKeyShortcutHUDMetrics *)self menuHorizontalContentInset];
  v8 = v7 + v7 + v6;
  [(UIKeyShortcutHUDMetrics *)self computedHUDWidthForBaseMenu];
  if (v8 < result)
  {
    return v8;
  }

  return result;
}

- (UIVisualEffect)platterVisualEffect
{
  v2 = [(UIKeyShortcutHUDMetrics *)self hudBlurStyle];

  return [UIBlurEffect effectWithStyle:v2];
}

- (double)standardMenuPanelHeight
{
  [(UIKeyShortcutHUDMetrics *)self menuCellHeight];
  v4 = v3;
  [(UIKeyShortcutHUDMetrics *)self menuCellHeight];
  v6 = v4 + v5 * [(UIKeyShortcutHUDMetrics *)self numCellsPerColumn];
  [(UIKeyShortcutHUDMetrics *)self menuTopContentInset];
  v8 = v7 + v6;
  [(UIKeyShortcutHUDMetrics *)self menuBottomContentInset];
  return v9 + v8;
}

- (double)searchModeMaximumMenuPanelHeight
{
  [(UIKeyShortcutHUDMetrics *)self availableVerticalSpace];
  result = v2 * 0.75;
  if (result > 520.0)
  {
    return 520.0;
  }

  return result;
}

- (double)searchModePreferredMenuPanelWidth
{
  [(UIKeyShortcutHUDMetrics *)self menuHorizontalContentInset];
  v4 = v3;
  [(UIKeyShortcutHUDMetrics *)self searchModeStandardHUDWidth];
  v6 = v5 - v4;
  [(_UIKeyShortcutHUDShortcutColumnMetrics *)self->_displayedSearchColumnMetrics columnWidth];
  v8 = v7;
  [(UIKeyShortcutHUDMetrics *)self maxShortcutCellWidth];
  return v4 + fmax(v6, fmin(v8, v9));
}

- (double)_toolbarContentToWindowBottomEdgeSpacing
{
  [(UIKeyShortcutHUDMetrics *)self minimumBottomScreenEdgeDistance];
  v4 = v3;
  v5 = [(UIKeyShortcutHUDMetrics *)self selfSizingPlayground];
  v6 = [v5 window];
  [v6 safeAreaInsets];
  v8 = fmax(v4, v7);

  return v8;
}

- (double)_toolbarDistanceFromBottomOfWindow
{
  if ([(UIKeyShortcutHUDMetrics *)self shouldExtendToolbarThroughSafeArea])
  {
    return 0.0;
  }

  [(UIKeyShortcutHUDMetrics *)self _toolbarContentToWindowBottomEdgeSpacing];
  return result;
}

- (double)_toolbarHeight
{
  [(UIKeyShortcutHUDMetrics *)self standardToolbarContentHeight];
  v4 = v3;
  if ([(UIKeyShortcutHUDMetrics *)self shouldExtendToolbarThroughSafeArea])
  {
    [(UIKeyShortcutHUDMetrics *)self _toolbarContentToWindowBottomEdgeSpacing];
    return v4 + v5;
  }

  return v4;
}

- (unint64_t)maxNumberOfCellsInSearchResults
{
  [(UIKeyShortcutHUDMetrics *)self searchModeMaximumMenuPanelHeight];
  v4 = v3;
  [(UIKeyShortcutHUDMetrics *)self searchModeMenuTopContentInset];
  v6 = v5;
  [(UIKeyShortcutHUDMetrics *)self searchModeMenuBottomContentInset];
  v8 = v4 - (v6 + v7);
  [(UIKeyShortcutHUDMetrics *)self menuCellHeight];
  return (v8 / v9);
}

- (BOOL)shouldAlignShortcutModifiersAndInputInColumn
{
  WeakRetained = objc_loadWeakRetained(&self->_clientTraits);
  v3 = [WeakRetained layoutDirection] == 1;

  return v3;
}

- (double)menuHorizontalContentInset
{
  [(UIKeyShortcutHUDMetrics *)self standardMenuPadding];
  v4 = v3;
  [(UIKeyShortcutHUDMetrics *)self menuCellHorizontalContentMargin];
  return v4 - v5;
}

- (double)menuTopContentInset
{
  [(UIKeyShortcutHUDMetrics *)self menuBaseVerticalContentInset];
  v4 = v3;
  [(UIKeyShortcutHUDMetrics *)self categoryHeaderVerticalTextAdjustment];
  return v4 - v5;
}

- (double)searchModeMenuTopContentInset
{
  [(UIKeyShortcutHUDMetrics *)self searchModeMenuBaseVerticalContentInset];
  v4 = v3;
  [(UIKeyShortcutHUDMetrics *)self categoryHeaderVerticalTextAdjustment];
  return v4 - v5;
}

- (double)menuColumnSpacing
{
  [(UIKeyShortcutHUDMetrics *)self standardMenuPadding];
  v4 = v3;
  [(UIKeyShortcutHUDMetrics *)self menuCellHorizontalContentMargin];
  return v4 - (v5 + v5);
}

- (UIVisualEffect)menuSeparatorVisualEffect
{
  v2 = [UIBlurEffect effectWithStyle:[(UIKeyShortcutHUDMetrics *)self hudBlurStyle]];
  v3 = [UIVibrancyEffect effectForBlurEffect:v2 style:7];

  return v3;
}

- (unint64_t)categoryIndexAtHorizontalOffset:(double)a3
{
  v5 = [(NSMutableArray *)self->_displayedMenuCategoryOffsets count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = (v6 + v7) >> 1;
      v9 = [(NSMutableArray *)self->_displayedMenuCategoryOffsets objectAtIndexedSubscript:v8];
      [v9 doubleValue];
      v11 = v10;

      if (v11 <= a3)
      {
        if (v8 == [(NSMutableArray *)self->_displayedMenuCategoryOffsets count]- 1)
        {
          return v8;
        }

        v12 = [(NSMutableArray *)self->_displayedMenuCategoryOffsets objectAtIndexedSubscript:v8 + 1];
        [v12 doubleValue];
        v14 = v13;

        if (v14 > a3)
        {
          return v8;
        }
      }

      else
      {
        v6 = (v6 + v7) >> 1;
        v8 = v7;
      }

      v7 = v8;
      v15 = v6 == v8;
      v8 = v6;
      if (v15)
      {
        return v8;
      }
    }
  }

  return 0;
}

- (double)horizontalOffsetForCategoryAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_displayedMenuCategoryOffsets objectAtIndexedSubscript:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)menuCellCornerRadius
{
  [(UIKeyShortcutHUDMetrics *)self menuPlatterCornerRadius];
  v4 = v3;
  [(UIKeyShortcutHUDMetrics *)self menuHorizontalContentInset];
  return v4 - v5;
}

- (double)toolbarCellCornerRadius
{
  [(UIKeyShortcutHUDMetrics *)self toolbarPlatterCornerRadius];
  v4 = v3;
  [(UIKeyShortcutHUDMetrics *)self toolbarContentInset];
  return v4 - v5;
}

- (UIColor)standardHUDTextColor
{
  if (qword_1ED49ECD8 != -1)
  {
    dispatch_once(&qword_1ED49ECD8, &__block_literal_global_29_4);
  }

  v3 = qword_1ED49ECD0;

  return v3;
}

void __47__UIKeyShortcutHUDMetrics_standardHUDTextColor__block_invoke()
{
  v0 = [UIColor colorWithDynamicProvider:&__block_literal_global_32_2];
  v1 = qword_1ED49ECD0;
  qword_1ED49ECD0 = v0;
}

id __47__UIKeyShortcutHUDMetrics_standardHUDTextColor__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityContrast];
  v3 = +[UIColor labelColor];
  v4 = v3;
  if (v2 == 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v3 colorWithAlphaComponent:0.85];
  }

  v6 = v5;

  return v6;
}

- (UIFont)standardHUDFont
{
  if (qword_1ED49ECE8 != -1)
  {
    dispatch_once(&qword_1ED49ECE8, &__block_literal_global_34_2);
  }

  v3 = qword_1ED49ECE0;

  return v3;
}

void __42__UIKeyShortcutHUDMetrics_standardHUDFont__block_invoke()
{
  v0 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
  v1 = qword_1ED49ECE0;
  qword_1ED49ECE0 = v0;
}

- (UIFont)shortcutSubtitleFont
{
  if (qword_1ED49ECF8 != -1)
  {
    dispatch_once(&qword_1ED49ECF8, &__block_literal_global_37_4);
  }

  v3 = qword_1ED49ECF0;

  return v3;
}

void __47__UIKeyShortcutHUDMetrics_shortcutSubtitleFont__block_invoke()
{
  v0 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption2"];
  v1 = qword_1ED49ECF0;
  qword_1ED49ECF0 = v0;
}

- (UIFont)categoryHeaderFont
{
  if (qword_1ED49ED08 != -1)
  {
    dispatch_once(&qword_1ED49ED08, &__block_literal_global_39_0);
  }

  v3 = qword_1ED49ED00;

  return v3;
}

void __45__UIKeyShortcutHUDMetrics_categoryHeaderFont__block_invoke()
{
  v0 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedTitle2"];
  v1 = qword_1ED49ED00;
  qword_1ED49ED00 = v0;
}

- (UIFont)keyShortcutInputCharacterFont
{
  if (qword_1ED49ED18 != -1)
  {
    dispatch_once(&qword_1ED49ED18, &__block_literal_global_41_1);
  }

  v3 = qword_1ED49ED10;

  return v3;
}

void __56__UIKeyShortcutHUDMetrics_keyShortcutInputCharacterFont__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleBody"];
  v5 = *off_1E70ECC98;
  v6[0] = &unk_1EFE2C118;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = [v0 fontDescriptorByAddingAttributes:v1];

  v3 = [off_1E70ECC18 fontWithDescriptor:v2 size:0.0];
  v4 = qword_1ED49ED10;
  qword_1ED49ED10 = v3;
}

- (UIFont)cancelButtonFont
{
  if (qword_1ED49ED28 != -1)
  {
    dispatch_once(&qword_1ED49ED28, &__block_literal_global_48);
  }

  v3 = qword_1ED49ED20;

  return v3;
}

void __43__UIKeyShortcutHUDMetrics_cancelButtonFont__block_invoke()
{
  v0 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
  v1 = qword_1ED49ED20;
  qword_1ED49ED20 = v0;
}

- (UIFont)toolbarCategoryVisibleFont
{
  if (qword_1ED49ED38 != -1)
  {
    dispatch_once(&qword_1ED49ED38, &__block_literal_global_50);
  }

  v3 = qword_1ED49ED30;

  return v3;
}

void __53__UIKeyShortcutHUDMetrics_toolbarCategoryVisibleFont__block_invoke()
{
  v0 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedBody"];
  v1 = qword_1ED49ED30;
  qword_1ED49ED30 = v0;
}

- (double)cellWidthForShortcut:(id)a3
{
  if (self->_searching)
  {

    [(UIKeyShortcutHUDMetrics *)self minShortcutCellWidth];
  }

  else
  {
    v5 = [(NSMapTable *)self->_shortcutCellIndexPathsMap objectForKey:a3];
    v6 = [v5 item];
    v7 = v6 / [(UIKeyShortcutHUDMetrics *)self numCellsPerColumn];
    v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_displayedMenuColumnMetrics, "objectAtIndexedSubscript:", [v5 section]);
    v9 = [v8 objectAtIndexedSubscript:v7];
    [v9 columnWidth];
    v11 = v10;

    [(UIKeyShortcutHUDMetrics *)self minShortcutCellWidth];
    v13 = v12;
    [(UIKeyShortcutHUDMetrics *)self maxShortcutCellWidth];
    v15 = fmax(v13, fmin(v11, v14));

    return v15;
  }

  return result;
}

- (double)modifiersWidthForShortcut:(id)a3
{
  if (self->_searching)
  {
    displayedSearchColumnMetrics = self->_displayedSearchColumnMetrics;

    [(_UIKeyShortcutHUDShortcutColumnMetrics *)displayedSearchColumnMetrics modifiersWidth];
  }

  else
  {
    v6 = [(NSMapTable *)self->_shortcutCellIndexPathsMap objectForKey:a3];
    v7 = [v6 item];
    v8 = v7 / [(UIKeyShortcutHUDMetrics *)self numCellsPerColumn];
    v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_displayedMenuColumnMetrics, "objectAtIndexedSubscript:", [v6 section]);
    v10 = [v9 objectAtIndexedSubscript:v8];
    [v10 modifiersWidth];
    v12 = v11;

    return v12;
  }

  return result;
}

- (double)inputWidthForShortcut:(id)a3
{
  if (self->_searching)
  {
    displayedSearchColumnMetrics = self->_displayedSearchColumnMetrics;

    [(_UIKeyShortcutHUDShortcutColumnMetrics *)displayedSearchColumnMetrics inputWidth];
  }

  else
  {
    v6 = [(NSMapTable *)self->_shortcutCellIndexPathsMap objectForKey:a3];
    v7 = [v6 item];
    v8 = v7 / [(UIKeyShortcutHUDMetrics *)self numCellsPerColumn];
    v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_displayedMenuColumnMetrics, "objectAtIndexedSubscript:", [v6 section]);
    v10 = [v9 objectAtIndexedSubscript:v8];
    [v10 inputWidth];
    v12 = v11;

    return v12;
  }

  return result;
}

- (double)headerWidthForCategory:(id)a3
{
  v4 = a3;
  if ([v4 isEmpty])
  {
    [(UIKeyShortcutHUDMetrics *)self emptyColumnWidth];
    v6 = v5;
  }

  else
  {
    v7 = [v4 children];
    v8 = [v7 lastObject];
    [(UIKeyShortcutHUDMetrics *)self cellWidthForShortcut:v8];
    v6 = v9;
  }

  return v6;
}

- (_UIKeyShortcutHUDMenu)baseMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_baseMenu);

  return WeakRetained;
}

- (_UIKeyShortcutHUDClientTraits)clientTraits
{
  WeakRetained = objc_loadWeakRetained(&self->_clientTraits);

  return WeakRetained;
}

- (UIView)selfSizingPlayground
{
  WeakRetained = objc_loadWeakRetained(&self->_selfSizingPlayground);

  return WeakRetained;
}

@end