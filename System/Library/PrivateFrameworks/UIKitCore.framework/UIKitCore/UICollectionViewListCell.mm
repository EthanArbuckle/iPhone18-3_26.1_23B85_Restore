@interface UICollectionViewListCell
+ (id)_createDefaultContentViewWithFrame:(CGRect)a3;
+ (id)_createVisualProviderForCell:(id)a3;
- (BOOL)_canPerformActionForKey:(id)a3;
- (BOOL)_cellSelectionTogglesExpansionState;
- (BOOL)_contentViewShouldBeIndented;
- (BOOL)_hasCustomSelectionAction;
- (BOOL)_isAccompaniedSidebar;
- (BOOL)_performActionForKey:(id)a3;
- (BOOL)_reorderControlShouldBeginReordering:(id)a3;
- (BOOL)_shouldIncreaseCellLeadingLayoutMarginForIndentation;
- (BOOL)_shouldUseMonochromaticTreatmentForCellAccessory:(id)a3 orConfiguration:(id)a4 sidebarStyle:(int64_t)a5 cellConfigurationState:(id)a6 traitCollection:(id)a7;
- (NSArray)accessories;
- (NSArray)leadingAccessoryConfigurations;
- (NSArray)leadingEditingAccessoryConfigurations;
- (NSArray)trailingAccessoryConfigurations;
- (NSArray)trailingEditingAccessoryConfigurations;
- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsFromContentViewWithDefaultInsets:(NSDirectionalEdgeInsets)a3;
- (NSDirectionalEdgeInsets)_separatorInsetsFromLayoutGuide;
- (NSDirectionalEdgeInsets)_separatorInsetsFromPrimaryTextLayoutFrameWithDefaultInsets:(NSDirectionalEdgeInsets)a3;
- (UICollectionViewListCell)initWithCoder:(id)a3;
- (UICollectionViewListCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)_adjustedRawLayoutMargins:(UIEdgeInsets)a3 withLeadingLayoutMarginAdjustment:(double)a4;
- (UIEdgeInsets)_contentViewInset;
- (UIFocusItem)_parentFocusItem;
- (UILayoutGuide)separatorLayoutGuide;
- (UIListContentConfiguration)defaultContentConfiguration;
- (double)_contentView:(id)a3 inset:(double)a4 convertedToCellInsetOnEdge:(unint64_t)a5;
- (id)_cellAccessoriesForConfigurations:(id)a3 isLeadingEdge:(BOOL)a4;
- (id)_cellAccessoryForConfiguration:(id)a3 isLeadingEdge:(BOOL)a4 usingState:(id)a5;
- (id)_configurationState;
- (id)_createCustomAccessoryViewWithCellAccessory:(id)a3 updatedForState:(id)a4;
- (id)_createSystemTypeAccessoryViewWithCellAccessory:(id)a3 orConfiguration:(id)a4 updatedForState:(id)a5;
- (id)_defaultBackgroundConfiguration;
- (id)_defaultBackgroundConfigurationUsingSpecificStyling;
- (id)_defaultBackgroundView;
- (id)_defaultContentConfigurationUsingSpecificStyling;
- (id)_defaultSelectedBackgroundView;
- (id)_internalAccessoriesForCellAccessories:(id)a3 usingState:(id)a4;
- (id)_popUpMenuAccessory;
- (id)_popUpMenuAccessoryForCustomSelectionAction;
- (id)_preferredLayoutAttributesFittingAttributes:(id)a3 isAnimatingExistingView:(BOOL)a4;
- (id)_viewForMultiSelectAccessory;
- (int64_t)_listCellProminence;
- (int64_t)_listCellStyle;
- (int64_t)_listStyle;
- (int64_t)_tableStyle;
- (unint64_t)_validatedDisclosureActionForKey:(id)a3;
- (void)_applyCellAccessoriesToNormalConfiguration:(id)a3 editingConfiguration:(id)a4;
- (void)_clearChangeHandlersForOldContentView:(id)a3;
- (void)_constantsDidChange;
- (void)_createAccessoryManager;
- (void)_deleteAccessoryTriggered;
- (void)_invalidatePreferredSeparatorInsetsFromContentView;
- (void)_layoutAccessoriesAndContentView;
- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3;
- (void)_performCustomSelectionAction;
- (void)_presentPopUpMenuForAccessory:(id)a3;
- (void)_reorderControl:(id)a3 didReceiveTouchesBegan:(id)a4;
- (void)_reorderControl:(id)a3 didUpdateWithOffset:(CGPoint)a4;
- (void)_reorderControlDidBeginReordering:(id)a3;
- (void)_reorderControlDidEndReordering:(id)a3 cancelled:(BOOL)a4;
- (void)_resetRawLayoutMargins;
- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)a3;
- (void)_setContentView:(id)a3 addToHierarchy:(BOOL)a4;
- (void)_setDefaultIndentationLevel:(int64_t)a3;
- (void)_setExpanded:(BOOL)a3;
- (void)_setIndentationLevel:(int64_t)a3;
- (void)_setIndentationWidth:(double)a3;
- (void)_setLayoutAttributes:(id)a3;
- (void)_setNeedsUpdateAccessories;
- (void)_setRawLayoutMargins:(UIEdgeInsets)a3;
- (void)_setSelected:(BOOL)a3 animated:(BOOL)a4 isUserInitiated:(BOOL)a5;
- (void)_setupChangeHandlersForNewContentView:(id)a3;
- (void)_systemAccessoriesChanged;
- (void)_toggleExpansionState;
- (void)_updateAccessoriesIfNeeded;
- (void)_updateAccessoryLayoutMetrics;
- (void)_updateCellSelectionTogglesExpansionState;
- (void)_updateConfigurationUsingState:(id)a3;
- (void)_updateConstants;
- (void)_updateContentViewConstraintsIfNeeded;
- (void)_updateCurrentSystemTypeAccessoryViewsUsingState:(id)a3;
- (void)_updateCustomAccessoryView:(id)a3 withCellAccessory:(id)a4 orConfiguration:(id)a5 usingState:(id)a6 isUserInitiated:(BOOL)a7;
- (void)_updateDefaultIndentationWidth;
- (void)_updateLeadingLayoutMarginForIndentation;
- (void)_updateSeparatorConfigurationForPreferredAttributes:(id)a3 bounds:(CGRect)a4 isAnimatingExistingView:(BOOL)a5;
- (void)_updateSeparatorLayoutGuideForSectionSeparatorInsets:(NSDirectionalEdgeInsets)a3;
- (void)_updateSeparatorLayoutGuideHeight;
- (void)_updateSystemTypeAccessoryView:(id)a3 withCellAccessory:(id)a4 orConfiguration:(id)a5 usingState:(id)a6 isUserInitiated:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessories:(NSArray *)accessories;
- (void)setEditing:(BOOL)a3;
- (void)setIndentsAccessories:(BOOL)indentsAccessories;
- (void)setLeadingAccessoryConfigurations:(id)a3;
- (void)setLeadingEditingAccessoryConfigurations:(id)a3;
- (void)setSelectionStyle:(int64_t)a3;
- (void)setTrailingAccessoryConfigurations:(id)a3;
- (void)setTrailingEditingAccessoryConfigurations:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UICollectionViewListCell

- (void)_constantsDidChange
{
  [(UICollectionViewCell *)self _updateDefaultBackgroundAppearance];

  [(UICollectionViewListCell *)self _setNeedsUpdateAccessories];
}

- (id)_defaultBackgroundConfiguration
{
  if (dyld_program_sdk_at_least())
  {
    v3 = *(&self->_listCellFlags + 1);
    if ((v3 & 0x28) != 0)
    {
      if ((v3 & 0x10) != 0)
      {
        +[UIBackgroundConfiguration listFooterConfiguration];
      }

      else
      {
        +[UIBackgroundConfiguration listHeaderConfiguration];
      }
      v4 = ;
    }

    else
    {
      v4 = +[UIBackgroundConfiguration listCellConfiguration];
    }
  }

  else
  {
    v4 = [(UICollectionViewListCell *)self _defaultBackgroundConfigurationUsingSpecificStyling];
  }

  return v4;
}

- (id)_configurationState
{
  v5.receiver = self;
  v5.super_class = UICollectionViewListCell;
  v3 = [(UICollectionViewCell *)&v5 _configurationState];
  [v3 setExpanded:(*(&self->_listCellFlags + 1) >> 7) & 1];

  return v3;
}

- (void)_setNeedsUpdateAccessories
{
  *(&self->_listCellFlags + 1) |= 0x100u;
  [(UIView *)self setNeedsLayout];
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {

    [(UIView *)self layoutIfNeeded];
  }
}

- (void)_createAccessoryManager
{
  v3 = [UICellAccessoryManager alloc];
  v4 = [(_UICollectionViewListCellVisualProvider *)self->_visualProvider accessoryManagerContainerView];
  v5 = [(UICellAccessoryManager *)v3 initWithContainerView:v4];

  [(UICellAccessoryManager *)v5 setCurrentConfigurationIdentifier:0x1EFB35F50];
  objc_initWeak(&location, self);
  v6 = objc_alloc_init(UITableCellAccessoryLayout);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__UICollectionViewListCell__createAccessoryManager__block_invoke;
  v10[3] = &unk_1E70FE358;
  objc_copyWeak(&v11, &location);
  [(UITableCellAccessoryLayout *)v6 setSpacingBlock:v10];
  [(UICellAccessoryManager *)v5 setLeadingLayout:v6];
  v7 = objc_alloc_init(UITableCellAccessoryLayout);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__UICollectionViewListCell__createAccessoryManager__block_invoke_2;
  v8[3] = &unk_1E70FE358;
  objc_copyWeak(&v9, &location);
  [(UITableCellAccessoryLayout *)v7 setSpacingBlock:v8];
  [(UICellAccessoryManager *)v5 setTrailingLayout:v7];
  objc_storeStrong(&self->_accessoryManager, v5);
  [(UICollectionViewListCell *)self _updateAccessoryLayoutMetrics];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_updateDefaultIndentationWidth
{
  if ((*(&self->_listCellFlags + 5) & 4) == 0)
  {
    v3 = [(UICollectionViewListCell *)self _constants];
    [v3 defaultIndentationWidthForSidebarStyle:(*(&self->_listCellFlags + 1) & 7) == 3];
    v5 = v4;

    [(UICollectionViewListCell *)self _setIndentationWidth:v5];
  }
}

- (void)_updateContentViewConstraintsIfNeeded
{
  v46[4] = *MEMORY[0x1E69E9840];
  if (self->_separatorLayoutGuide && ![(UICollectionViewCell *)self _usingContentViewConfiguration])
  {
    [(UICollectionViewListCell *)self _contentViewInset];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    contentViewConstraints = self->_contentViewConstraints;
    if (contentViewConstraints)
    {
      if ([(NSArray *)contentViewConstraints count]!= 4)
      {
        v38 = [MEMORY[0x1E696AAA8] currentHandler];
        [v38 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:391 description:{@"The _contentViewConstraints should hold exactly 4 constraints, in order: top, left, bottom, right"}];
      }

      v15 = [(NSArray *)self->_contentViewConstraints objectAtIndexedSubscript:0];
      [v15 setConstant:v7];

      v16 = [(NSArray *)self->_contentViewConstraints objectAtIndexedSubscript:1];
      [v16 setConstant:v9];

      v17 = [(NSArray *)self->_contentViewConstraints objectAtIndexedSubscript:2];
      [v17 setConstant:v11];

      v39 = [(NSArray *)self->_contentViewConstraints objectAtIndexedSubscript:3];
      [v39 setConstant:v13];
    }

    else
    {
      v18 = [(UICollectionViewCell *)self contentView];
      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
      v19 = [v18 topAnchor];
      v20 = [(UIView *)self topAnchor];
      v21 = [v19 constraintEqualToAnchor:v20 constant:v7];

      [v21 setIdentifier:@"UICollectionViewListCell-top-contentView-constraint"];
      v22 = [v18 leftAnchor];
      v23 = [(UIView *)self leftAnchor];
      v24 = [v22 constraintEqualToAnchor:v23 constant:v9];

      [v24 setIdentifier:@"UICollectionViewListCell-left-contentView-constraint"];
      v25 = [(UIView *)self bottomAnchor];
      v26 = [v18 bottomAnchor];
      v27 = [v25 constraintEqualToAnchor:v26 constant:v11];

      [v27 setIdentifier:@"UICollectionViewListCell-bottom-contentView-constraint"];
      v28 = [(UIView *)self rightAnchor];
      v29 = [v18 rightAnchor];
      v30 = [v28 constraintEqualToAnchor:v29 constant:v13];

      [v30 setIdentifier:@"UICollectionViewListCell-right-contentView-constraint"];
      v40 = v21;
      v46[0] = v21;
      v46[1] = v24;
      v46[2] = v27;
      v46[3] = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
      v32 = self->_contentViewConstraints;
      self->_contentViewConstraints = v31;

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v33 = self->_contentViewConstraints;
      v34 = [(NSArray *)v33 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v42;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v42 != v36)
            {
              objc_enumerationMutation(v33);
            }

            [*(*(&v41 + 1) + 8 * i) setShouldBeArchived:1];
          }

          v35 = [(NSArray *)v33 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v35);
      }

      [MEMORY[0x1E69977A0] activateConstraints:self->_contentViewConstraints];
    }
  }

  else if (self->_contentViewConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
    v4 = self->_contentViewConstraints;
    self->_contentViewConstraints = 0;

    v5 = [(UICollectionViewCell *)self contentView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:1];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)_updateConstants
{
  v3 = [(UIView *)self traitCollection];
  obj = _UITableConstantsForTraitCollection(v3);

  v4 = obj;
  if (obj != self->_constants)
  {
    objc_storeStrong(&self->_constants, obj);
    [(UICollectionViewListCell *)self _constantsDidChange];
    v4 = obj;
  }
}

- (void)_updateAccessoryLayoutMetrics
{
  v3 = [(UIView *)self traitCollection];
  v4 = [(UICollectionViewListCell *)self _constants];
  v5 = (*(&self->_listCellFlags + 1) & 7u) - 3 < 2;
  objc_initWeak(&location, self);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0xFFEFFFFFFFFFFFFFLL;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__UICollectionViewListCell__updateAccessoryLayoutMetrics__block_invoke;
  v17[3] = &unk_1E70FE3A8;
  v20 = v22;
  v6 = v3;
  v18 = v6;
  v7 = v4;
  v19 = v7;
  v21 = v5;
  [(UICellAccessoryManager *)self->_accessoryManager setStandardLayoutWidthProvider:v17];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0xFFEFFFFFFFFFFFFFLL;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __57__UICollectionViewListCell__updateAccessoryLayoutMetrics__block_invoke_2;
  v12 = &unk_1E70FE3D0;
  v14 = v16;
  v8 = v7;
  v13 = v8;
  objc_copyWeak(&v15, &location);
  [(UICellAccessoryManager *)self->_accessoryManager setDisclosureLayoutWidthProvider:&v9];
  [(UICellAccessoryManager *)self->_accessoryManager setNeedsLayout:v9];
  objc_destroyWeak(&v15);

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v22, 8);
  objc_destroyWeak(&location);
}

- (void)_updateSeparatorLayoutGuideHeight
{
  if (self->_separatorLayoutGuideHeightConstraint)
  {
    v3 = _ListCellSeparatorLayoutGuideHeightForCell(self);
    separatorLayoutGuideHeightConstraint = self->_separatorLayoutGuideHeightConstraint;

    [(NSLayoutConstraint *)separatorLayoutGuideHeightConstraint setConstant:v3];
  }
}

- (void)_updateCellSelectionTogglesExpansionState
{
  v3 = *(&self->_listCellFlags + 1);
  if ([(UICollectionViewListCell *)self _cellSelectionTogglesExpansionState])
  {
    v4 = 2048;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->_listCellFlags + 1) & 0xFFFFF7FF | v4;
  *(&self->_listCellFlags + 1) = v5;
  if (((v3 >> 11) & 1) != v4 >> 11)
  {
    [(UICollectionViewListCell *)self _setNeedsUpdateAccessories];
    v5 = *(&self->_listCellFlags + 1);
  }

  if (((v5 ^ v3) & 0x20) != 0)
  {

    [(UICollectionViewCell *)self _updateDefaultBackgroundAppearance];
  }
}

- (BOOL)_cellSelectionTogglesExpansionState
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_accessories;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (([v7 isHidden] & 1) == 0 && objc_msgSend(v7, "_isSystemType") && objc_msgSend(v7, "_systemType") == 6 && _UICellAccessoryOutlineDisclosureBehavesAsDisplayedForCurrentState(v7, -[UICollectionViewCell isEditing](self, "isEditing")))
        {
          v8 = objc_opt_class();
          _accessoryAsClass(v7, v8);
          v9 = [objc_claimAutoreleasedReturnValue() style];
          if (v9)
          {
            if (v9 == 1)
            {
              goto LABEL_18;
            }
          }

          else if ((*(&self->_listCellFlags + 1) & 8) != 0)
          {
LABEL_18:

            LOBYTE(v4) = 1;
            goto LABEL_19;
          }
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  if ((__63__UICollectionViewListCell__cellSelectionTogglesExpansionState__block_invoke(self->_leadingAccessoryConfigurations) & 1) != 0 || (__63__UICollectionViewListCell__cellSelectionTogglesExpansionState__block_invoke(self->_trailingAccessoryConfigurations) & 1) != 0 || (__63__UICollectionViewListCell__cellSelectionTogglesExpansionState__block_invoke(self->_leadingEditingAccessoryConfigurations) & 1) != 0 || __63__UICollectionViewListCell__cellSelectionTogglesExpansionState__block_invoke(self->_trailingEditingAccessoryConfigurations))
  {
    *(&self->_listCellFlags + 1) |= 0x20u;
    LOBYTE(v4) = 1;
  }

  else
  {
    *(&self->_listCellFlags + 1) &= ~0x20u;
  }

  return v4;
}

uint64_t __63__UICollectionViewListCell__cellSelectionTogglesExpansionState__block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        if ([v5 _isSystemType])
        {
          if ([v5 _systemType] == 6)
          {
            v6 = objc_opt_class();
            _accessoryConfigurationAsClass(v5, v6);
            v7 = [objc_claimAutoreleasedReturnValue() cellSelectionTogglesExpansionState];

            if (v7)
            {
              v2 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v2;
}

- (void)_layoutAccessoriesAndContentView
{
  [(UICollectionViewListCell *)self _updateLeadingLayoutMarginForIndentation];
  [(UICollectionViewCell *)self _layoutFocusedFloatingContentView];
  [(UICollectionViewListCell *)self _updateAccessoriesIfNeeded];
  [(UICellAccessoryManager *)self->_accessoryManager layoutIfNeeded];
  [(UICollectionViewListCell *)self _updateContentViewConstraintsIfNeeded];

  [(UICollectionViewCell *)self _layoutContentView];
}

- (void)_updateLeadingLayoutMarginForIndentation
{
  v3 = [(UICollectionViewListCell *)self _shouldIncreaseCellLeadingLayoutMarginForIndentation];
  v4 = 0.0;
  if (v3)
  {
    [(UICollectionViewListCell *)self _leadingIndentation];
  }

  self->_extraLeadingLayoutMarginForIndentation = v4;
  [(UIView *)self _rawLayoutMargins];
  [UICollectionViewListCell _adjustedRawLayoutMargins:"_adjustedRawLayoutMargins:withLeadingLayoutMarginAdjustment:" withLeadingLayoutMarginAdjustment:?];
  v5.receiver = self;
  v5.super_class = UICollectionViewListCell;
  [(UIView *)&v5 _setRawLayoutMargins:?];
}

- (BOOL)_shouldIncreaseCellLeadingLayoutMarginForIndentation
{
  if ([(UICollectionViewListCell *)self indentsAccessories])
  {
    return 1;
  }

  v4 = [(UICellAccessoryManager *)self->_accessoryManager currentConfiguration];
  v5 = [v4 leadingAccessories];
  v3 = [v5 count] == 0;

  return v3;
}

- (void)_updateAccessoriesIfNeeded
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = *(&self->_listCellFlags + 1);
  if ((v2 & 0x100) != 0)
  {
    *(&self->_listCellFlags + 1) = v2 & 0xFFFFFEFF;
    [(UICollectionViewListCell *)self _updateCellSelectionTogglesExpansionState];
    v4 = objc_alloc_init(UICellAccessoryConfiguration);
    v5 = objc_alloc_init(UICellAccessoryConfiguration);
    if ([(NSArray *)self->_accessories count])
    {
      [(UICollectionViewListCell *)self _applyCellAccessoriesToNormalConfiguration:v4 editingConfiguration:v5];
    }

    else
    {
      v6 = [(UICollectionViewListCell *)self _cellAccessoriesForConfigurations:self->_leadingAccessoryConfigurations isLeadingEdge:1];
      [(UICellAccessoryConfiguration *)v4 setLeadingAccessories:v6];

      v7 = [(UICollectionViewListCell *)self _cellAccessoriesForConfigurations:self->_trailingAccessoryConfigurations isLeadingEdge:0];
      [(UICellAccessoryConfiguration *)v4 setTrailingAccessories:v7];

      v8 = [(UICollectionViewListCell *)self _cellAccessoriesForConfigurations:self->_leadingEditingAccessoryConfigurations isLeadingEdge:1];
      [(UICellAccessoryConfiguration *)v5 setLeadingAccessories:v8];

      v9 = [(UICollectionViewListCell *)self _cellAccessoriesForConfigurations:self->_trailingEditingAccessoryConfigurations isLeadingEdge:0];
      [(UICellAccessoryConfiguration *)v5 setTrailingAccessories:v9];
    }

    v11[0] = 0x1EFB35F50;
    v11[1] = 0x1EFBA01F0;
    v12[0] = v4;
    v12[1] = v5;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(UICellAccessoryManager *)self->_accessoryManager setConfigurations:v10];
  }
}

- (UIEdgeInsets)_contentViewInset
{
  [(UICellAccessoryManager *)self->_accessoryManager contentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self safeAreaInsets];
  v12 = UIEdgeInsetsMax(10, v4, v6, v8, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if ([(UICollectionViewListCell *)self _contentViewShouldBeIndented])
  {
    v19 = [(UIView *)self _shouldReverseLayoutDirection];
    [(UICollectionViewListCell *)self _leadingIndentation];
    v21 = v14 + v20;
    v22 = v18 + v20;
    if (v19)
    {
      v18 = v22;
    }

    else
    {
      v14 = v21;
    }
  }

  v23 = v12;
  v24 = v14;
  v25 = v16;
  v26 = v18;
  result.right = v26;
  result.bottom = v25;
  result.left = v24;
  result.top = v23;
  return result;
}

- (BOOL)_contentViewShouldBeIndented
{
  if (![(UICollectionViewListCell *)self indentsAccessories])
  {
    return 1;
  }

  v3 = [(UICellAccessoryManager *)self->_accessoryManager currentConfiguration];
  v4 = [v3 leadingAccessories];
  v5 = [v4 count] == 0;

  return v5;
}

- (void)layoutSubviews
{
  [(UICollectionViewListCell *)self _layoutAccessoriesAndContentView];
  v3.receiver = self;
  v3.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v3 layoutSubviews];
}

double __51__UICollectionViewListCell__createAccessoryManager__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _constants];
  [v8 interspaceBetweenInnerAccessoryIdentifier:v6 outerAccessoryIdentifier:v5 forCell:WeakRetained trailingAccessoryGroup:1];
  v10 = v9;

  return v10;
}

- (UIListContentConfiguration)defaultContentConfiguration
{
  if (dyld_program_sdk_at_least())
  {
    v3 = *(&self->_listCellFlags + 1);
    if ((v3 & 8) != 0)
    {
      if ((v3 & 0x10) != 0)
      {
        +[UIListContentConfiguration footerConfiguration];
      }

      else
      {
        +[UIListContentConfiguration headerConfiguration];
      }
    }

    else
    {
      v4 = [(UICollectionViewListCell *)self _popUpMenuAccessory];

      if (v4)
      {
        +[UIListContentConfiguration valueCellConfiguration];
      }

      else
      {
        +[UIListContentConfiguration cellConfiguration];
      }
    }
    v5 = ;
  }

  else
  {
    v5 = [(UICollectionViewListCell *)self _defaultContentConfigurationUsingSpecificStyling];
  }

  return v5;
}

- (id)_popUpMenuAccessory
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_accessories;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (([v7 isHidden] & 1) == 0 && objc_msgSend(v7, "_isSystemType") && objc_msgSend(v7, "_systemType") == 10)
        {
          v8 = objc_opt_class();
          _accessoryAsClass(v7, v8);
          objc_claimAutoreleasedReturnValue();
          goto LABEL_13;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (NSArray)accessories
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_accessories copyItems:1];

  return v2;
}

- (void)_invalidatePreferredSeparatorInsetsFromContentView
{
  lastPreferredLeadingSeparatorInsetFromContentView = self->_lastPreferredLeadingSeparatorInsetFromContentView;
  lastPreferredTrailingSeparatorInsetFromContentView = self->_lastPreferredTrailingSeparatorInsetFromContentView;
  [(UICollectionViewListCell *)self _preferredSeparatorInsetsFromContentViewWithDefaultInsets:self->_sectionSeparatorInsets.top, self->_sectionSeparatorInsets.leading, self->_sectionSeparatorInsets.bottom, self->_sectionSeparatorInsets.trailing];
  if (v6 != lastPreferredLeadingSeparatorInsetFromContentView || v5 != lastPreferredTrailingSeparatorInsetFromContentView)
  {
    v8 = [(UICollectionReusableView *)self _collectionView];
    [v8 _cellPreferredSeparatorInsetsChanged:self];
  }
}

double __51__UICollectionViewListCell__createAccessoryManager__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _constants];
  [v8 interspaceBetweenInnerAccessoryIdentifier:v6 outerAccessoryIdentifier:v5 forCell:WeakRetained trailingAccessoryGroup:0];
  v10 = v9;

  return v10;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v3 prepareForReuse];
  [(UICollectionViewListCell *)self _setItemIdentifier:0];
  [(UICollectionViewListCell *)self _setDefaultIndentationLevel:0];
  [(UICollectionViewListCell *)self _setDisclosureActionHandler:0];
  [(UICollectionViewListCell *)self _setExpanded:0];
  [(UICollectionViewListCell *)self _resetRawLayoutMargins];
}

- (void)_resetRawLayoutMargins
{
  self->_extraLeadingLayoutMarginForIndentation = 0.0;
  *(&self->_listCellFlags + 1) &= ~0x2000u;
  v2.receiver = self;
  v2.super_class = UICollectionViewListCell;
  [(UIView *)&v2 _setRawLayoutMargins:-1.79769313e308, -1.79769313e308, -1.79769313e308, -1.79769313e308];
}

- (BOOL)_hasCustomSelectionAction
{
  if ((*(&self->_listCellFlags + 5) & 8) != 0)
  {
    return 1;
  }

  v3 = [(UICollectionViewListCell *)self _popUpMenuAccessoryForCustomSelectionAction];

  if (v3)
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = UICollectionViewListCell;
  return [(UICollectionViewCell *)&v5 _hasCustomSelectionAction];
}

- (id)_popUpMenuAccessoryForCustomSelectionAction
{
  v3 = [(UICollectionViewListCell *)self _popUpMenuAccessory];
  if (v3 && [v3 _isDisplayedForEditingState:{-[UICollectionViewCell isEditing](self, "isEditing")}])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_createVisualProviderForCell:(id)a3
{
  v3 = a3;
  v4 = [[_UICollectionViewListCellVisualProvider_iOS alloc] initWithListCell:v3];

  return v4;
}

+ (id)_createDefaultContentViewWithFrame:(CGRect)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___UICollectionViewListCell;
  v3 = objc_msgSendSuper2(&v5, sel__createDefaultContentViewWithFrame_, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  [v3 setEdgesPreservingSuperviewLayoutMargins:15];

  return v3;
}

- (UICollectionViewListCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UICollectionViewListCell;
  v3 = [(UICollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    UICollectionViewListCellCommonInit(v3);
  }

  return v4;
}

- (UICollectionViewListCell)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = UICollectionViewListCell;
  v5 = [(UICollectionViewCell *)&v25 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    UICollectionViewListCellCommonInit(v5);
    v7 = [v4 containsValueForKey:@"UIIndentationLevel"];
    if (v7)
    {
      v8 = 512;
    }

    else
    {
      v8 = 0;
    }

    *(&v6->_listCellFlags + 1) = *(&v6->_listCellFlags + 1) & 0xFFFFFDFF | v8;
    if (v7)
    {
      v6->_indentationLevel = [v4 decodeIntegerForKey:@"UIIndentationLevel"];
    }

    v9 = [v4 containsValueForKey:@"UIIndentationWidth"];
    if (v9)
    {
      v10 = 1024;
    }

    else
    {
      v10 = 0;
    }

    *(&v6->_listCellFlags + 1) = *(&v6->_listCellFlags + 1) & 0xFFFFFBFF | v10;
    if (v9)
    {
      v6->_indentationWidth = [v4 decodeIntegerForKey:@"UIIndentationWidth"];
    }

    if ([v4 decodeBoolForKey:@"UIIndentsAccessories"])
    {
      v11 = 4096;
    }

    else
    {
      v11 = 0;
    }

    *(&v6->_listCellFlags + 1) = *(&v6->_listCellFlags + 1) & 0xFFFFEFFF | v11;
    v12 = [v4 decodeObjectForKey:@"UIAccessories"];
    if ([v12 count])
    {
      [(UICollectionViewListCell *)v6 setAccessories:v12];
    }

    v13 = [v4 decodeObjectForKey:@"UIContentViewConstraints"];
    contentViewConstraints = v6->_contentViewConstraints;
    v6->_contentViewConstraints = v13;

    v15 = [v4 decodeObjectForKey:@"UISeparatorLayoutGuide"];
    separatorLayoutGuide = v6->_separatorLayoutGuide;
    v6->_separatorLayoutGuide = v15;

    if (v6->_separatorLayoutGuide)
    {
      if ([v4 decodeBoolForKey:@"UISeparatorLayoutGuideLeadingReferencesPrimaryText"])
      {
        v17 = 0x8000;
      }

      else
      {
        v17 = 0;
      }

      *(&v6->_listCellFlags + 1) = *(&v6->_listCellFlags + 1) & 0xFFFF7FFF | v17;
      v18 = [v4 decodeObjectForKey:@"UISeparatorLayoutGuideHeightConstraint"];
      separatorLayoutGuideHeightConstraint = v6->_separatorLayoutGuideHeightConstraint;
      v6->_separatorLayoutGuideHeightConstraint = v18;

      v20 = [v4 decodeObjectForKey:@"UISeparatorLayoutGuideLeadingConstraint"];
      separatorLayoutGuideLeadingConstraint = v6->_separatorLayoutGuideLeadingConstraint;
      v6->_separatorLayoutGuideLeadingConstraint = v20;

      v22 = [v4 decodeObjectForKey:@"UISeparatorLayoutGuideTrailingConstraint"];
      separatorLayoutGuideTrailingConstraint = v6->_separatorLayoutGuideTrailingConstraint;
      v6->_separatorLayoutGuideTrailingConstraint = v22;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v7 encodeWithCoder:v4];
  v5 = *(&self->_listCellFlags + 1);
  if ((v5 & 0x200) != 0)
  {
    [v4 encodeInteger:self->_indentationLevel forKey:@"UIIndentationLevel"];
    v5 = *(&self->_listCellFlags + 1);
  }

  if ((v5 & 0x400) != 0)
  {
    [v4 encodeInteger:self->_indentationWidth forKey:@"UIIndentationWidth"];
    v5 = *(&self->_listCellFlags + 1);
  }

  [v4 encodeBool:(v5 >> 12) & 1 forKey:@"UIIndentsAccessories"];
  if ([(NSArray *)self->_accessories count])
  {
    [v4 encodeObject:self->_accessories forKey:@"UIAccessories"];
  }

  [v4 encodeObject:self->_contentViewConstraints forKey:@"UIContentViewConstraints"];
  separatorLayoutGuide = self->_separatorLayoutGuide;
  if (separatorLayoutGuide)
  {
    [v4 encodeObject:separatorLayoutGuide forKey:@"UISeparatorLayoutGuide"];
    [v4 encodeBool:(*(&self->_listCellFlags + 1) >> 15) & 1 forKey:@"UISeparatorLayoutGuideLeadingReferencesPrimaryText"];
    [v4 encodeObject:self->_separatorLayoutGuideHeightConstraint forKey:@"UISeparatorLayoutGuideHeightConstraint"];
    [v4 encodeObject:self->_separatorLayoutGuideLeadingConstraint forKey:@"UISeparatorLayoutGuideLeadingConstraint"];
    [v4 encodeObject:self->_separatorLayoutGuideTrailingConstraint forKey:@"UISeparatorLayoutGuideTrailingConstraint"];
  }
}

- (void)_setContentView:(id)a3 addToHierarchy:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self->_contentViewConstraints)
  {
    v7 = [(UICollectionViewCell *)self contentView];

    if (v7 != v6)
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:self->_contentViewConstraints];
      contentViewConstraints = self->_contentViewConstraints;
      self->_contentViewConstraints = 0;
    }
  }

  v9.receiver = self;
  v9.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v9 _setContentView:v6 addToHierarchy:v4];
  if (v6)
  {
    [(UICollectionViewListCell *)self _updateContentViewConstraintsIfNeeded];
  }
}

- (void)_clearChangeHandlersForOldContentView:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v5 _clearChangeHandlersForOldContentView:v4];
  if (objc_opt_respondsToSelector())
  {
    [v4 _setPreferredSeparatorInsetsDidChangeHandler:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 _setDefaultListContentConfigurationProvider:0];
  }
}

- (void)_setupChangeHandlersForNewContentView:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v10 _setupChangeHandlersForNewContentView:v4];
  if (objc_opt_respondsToSelector())
  {
    self->_lastPreferredLeadingSeparatorInsetFromContentView = 1.79769313e308;
    self->_lastPreferredTrailingSeparatorInsetFromContentView = 1.79769313e308;
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__UICollectionViewListCell__setupChangeHandlersForNewContentView___block_invoke;
    v7[3] = &unk_1E70F5A28;
    objc_copyWeak(&v8, &location);
    [v4 _setPreferredSeparatorInsetsDidChangeHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__UICollectionViewListCell__setupChangeHandlersForNewContentView___block_invoke_2;
    v5[3] = &unk_1E70FE380;
    objc_copyWeak(&v6, &location);
    [v4 _setDefaultListContentConfigurationProvider:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __66__UICollectionViewListCell__setupChangeHandlersForNewContentView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidatePreferredSeparatorInsetsFromContentView];
}

id __66__UICollectionViewListCell__setupChangeHandlersForNewContentView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained defaultContentConfiguration];
  v3 = [WeakRetained configurationState];
  v4 = [v2 updatedConfigurationForState:v3];

  return v4;
}

double __57__UICollectionViewListCell__updateAccessoryLayoutMetrics__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 48) + 8) + 24);
  if (result == -1.79769313e308)
  {
    v3 = _UITableCellSupportsHorizontalCenteringBehaviorForTraitCollection(*(a1 + 32));
    v4 = 0;
    if (v3)
    {
      [*(a1 + 40) defaultImageViewSymbolImageAndAccessoryLayoutWidthForSidebar:*(a1 + 56) traitCollection:{*(a1 + 32), 0.0}];
    }

    *(*(*(a1 + 48) + 8) + 24) = v4;
    return *(*(*(a1 + 48) + 8) + 24);
  }

  return result;
}

double __57__UICollectionViewListCell__updateAccessoryLayoutMetrics__block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 24);
  if (result == -1.79769313e308)
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [v3 defaultDisclosureLayoutWidthForView:WeakRetained];
    *(*(*(a1 + 40) + 8) + 24) = v5;

    return *(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)a3
{
  v4.receiver = self;
  v4.super_class = UICollectionViewListCell;
  [(UIView *)&v4 _safeAreaInsetsDidChangeFromOldInsets:a3.top, a3.left, a3.bottom, a3.right];
  [(UIView *)self safeAreaInsets];
  [(UICellAccessoryManager *)self->_accessoryManager setSafeAreaInsets:?];
}

- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  left = a3.left;
  v9.receiver = self;
  v9.super_class = UICollectionViewListCell;
  [(UIView *)&v9 _layoutMarginsDidChangeFromOldMargins:a3.top, a3.left, a3.bottom];
  [(UIView *)self layoutMargins];
  if (left != v7 || right != v6)
  {
    [(UICellAccessoryManager *)self->_accessoryManager setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v8 traitCollectionDidChange:v4];
  [(UICollectionViewListCell *)self _updateConstants];
  [(UICollectionViewListCell *)self _updateAccessoryLayoutMetrics];
  [(UICollectionViewListCell *)self _updateSeparatorLayoutGuideHeight];
  v5 = [(UIView *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];
  if (v6 != [v4 userInterfaceIdiom] || (v7 = objc_msgSend(v5, "layoutDirection"), v7 != objc_msgSend(v4, "layoutDirection")) || v5 && (!v4 || v5[13] != v4[13] || v5[15] != v4[15]))
  {
    [(UICollectionViewListCell *)self _setNeedsUpdateAccessories];
  }

  [(UICollectionViewListCell *)self _updateCellSelectionTogglesExpansionState];
}

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  v5 = [(UICollectionViewCell *)self isEditing];
  v9.receiver = self;
  v9.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v9 setEditing:v3];
  if (v5 != [(UICollectionViewCell *)self isEditing])
  {
    v6 = &_UITableCellAccessoryConfigurationIdentifierEditing;
    if (!v3)
    {
      v6 = &_UITableCellAccessoryConfigurationIdentifierNormal;
    }

    [(UICellAccessoryManager *)self->_accessoryManager setCurrentConfigurationIdentifier:*v6];
    [(UICollectionViewListCell *)self _updateCellSelectionTogglesExpansionState];
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v7 = [(UICollectionViewCell *)self contentView];
      v8 = [v7 translatesAutoresizingMaskIntoConstraints];

      if (v8)
      {
        [(UICollectionViewListCell *)self _layoutAccessoriesAndContentView];
      }

      else
      {
        [(UIView *)self layoutIfNeeded];
      }
    }
  }
}

- (void)_setLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = *(&self->_listCellFlags + 1) & 7;
  v6 = [(UICollectionReusableView *)self _styleFromLayoutAttributes:v4];
  v7 = *(&self->_listCellFlags + 1) & 8;
  v8 = [(UICollectionReusableView *)self _isStyledAsHeaderOrFooterFromLayoutAttributes:v4];
  v9 = v8;
  if (v6 != v5 || v8 != v7 >> 3)
  {
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
  }

  if (v9)
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 & 0xFFFFFFF8 | v6 & 7 | *(&self->_listCellFlags + 1) & 0xFFFFFFF0;
  *(&self->_listCellFlags + 1) = v11;
  if (v4 && (v4[36] & 3) == 0)
  {
    v12 = [(_UILabelConfiguration *)v4 _content];
    if ([v12 isEqualToString:@"UICollectionElementKindSectionFooter"])
    {
      v13 = 16;
    }

    else
    {
      v13 = 0;
    }

    *(&self->_listCellFlags + 1) = *(&self->_listCellFlags + 1) & 0xFFFFFFEF | v13;
  }

  else
  {
    *(&self->_listCellFlags + 1) = v11 & 0xFFFFFFEF;
  }

  v15.receiver = self;
  v15.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v15 _setLayoutAttributes:v4];
  if (v6 != v5)
  {
    [(UICollectionViewListCell *)self _updateDefaultIndentationWidth];
    [(UICollectionViewListCell *)self _updateAccessoryLayoutMetrics];
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
    v14 = v7 >> 3;
LABEL_19:
    [(UICollectionViewCell *)self _updateDefaultBackgroundAppearance];
    goto LABEL_20;
  }

  v14 = v7 >> 3;
  if (v7 >> 3 != v9 || ![(UICollectionViewCell *)self _usingBackgroundViewConfiguration])
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v14 != v9)
  {
    [(UICollectionViewListCell *)self _updateCellSelectionTogglesExpansionState];
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (id)_preferredLayoutAttributesFittingAttributes:(id)a3 isAnimatingExistingView:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __96__UICollectionViewListCell__preferredLayoutAttributesFittingAttributes_isAnimatingExistingView___block_invoke;
  v23[3] = &unk_1E70F3590;
  v23[4] = self;
  [UIView _conditionallyPerformWithoutAnimation:v4 ^ 1 layout:v23];
  v7 = [(UICollectionViewLayoutAttributes *)v6 _existingListAttributes];
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    p_sectionSeparatorInsets = &self->_sectionSeparatorInsets;
    goto LABEL_8;
  }

  v11 = v10[1];
  p_sectionSeparatorInsets = &self->_sectionSeparatorInsets;
  if (!v11)
  {
LABEL_8:
    v13 = 0;
    *&p_sectionSeparatorInsets->top = 0u;
    *&p_sectionSeparatorInsets->bottom = 0u;
    v18 = 1;
    goto LABEL_9;
  }

  v13 = v11;
  [v11 bottomSeparatorInsets];
  p_sectionSeparatorInsets->top = v14;
  self->_sectionSeparatorInsets.leading = v15;
  self->_sectionSeparatorInsets.bottom = v16;
  self->_sectionSeparatorInsets.trailing = v17;
  [(UICollectionViewListCell *)self _updateSeparatorLayoutGuideForSectionSeparatorInsets:?];
  v18 = 0;
LABEL_9:
  v22.receiver = self;
  v22.super_class = UICollectionViewListCell;
  v19 = [(UICollectionReusableView *)&v22 _preferredLayoutAttributesFittingAttributes:v6 isAnimatingExistingView:v4];
  if ((v18 & 1) == 0 && ([v13 _ignoreBottomSeparatorInsetsFromCell] & 1) == 0)
  {
    [v19 bounds];
    [(UICollectionViewListCell *)self _updateSeparatorConfigurationForPreferredAttributes:v13 bounds:v4 isAnimatingExistingView:?];
    [(UIViewAnimationContext *)v10 setViewAnimations:v13];
    v20 = [(UICollectionViewLayoutAttributes *)v19 _listAttributesCreatingIfNecessary];
    [(UIContentUnavailableImageProperties *)v20 _setTintColor:v10];
  }

  return v19;
}

uint64_t __96__UICollectionViewListCell__preferredLayoutAttributesFittingAttributes_isAnimatingExistingView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _performConfigurationStateUpdate];
  v2 = *(a1 + 32);

  return [v2 _layoutAccessoriesAndContentView];
}

- (void)_updateSeparatorConfigurationForPreferredAttributes:(id)a3 bounds:(CGRect)a4 isAnimatingExistingView:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  top = self->_sectionSeparatorInsets.top;
  leading = self->_sectionSeparatorInsets.leading;
  bottom = self->_sectionSeparatorInsets.bottom;
  trailing = self->_sectionSeparatorInsets.trailing;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __111__UICollectionViewListCell__updateSeparatorConfigurationForPreferredAttributes_bounds_isAnimatingExistingView___block_invoke;
  v38[3] = &unk_1E70FE3F8;
  v38[4] = self;
  v38[5] = &v39;
  __111__UICollectionViewListCell__updateSeparatorConfigurationForPreferredAttributes_bounds_isAnimatingExistingView___block_invoke(v38);
  v15 = *(&self->_listCellFlags + 1);
  v17 = (v15 & 0x10000) == 0 && v40[3] == 0;
  [(UIView *)self bounds];
  v35 = v19;
  v36 = v18;
  v33 = v21;
  v34 = v20;
  if (!v17)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __111__UICollectionViewListCell__updateSeparatorConfigurationForPreferredAttributes_bounds_isAnimatingExistingView___block_invoke_2;
    v37[3] = &unk_1E70FE420;
    *&v37[6] = x;
    *&v37[7] = y;
    *&v37[8] = width;
    v37[9] = v32;
    v37[4] = self;
    v37[5] = &v39;
    v37[10] = v38;
    [UIView _conditionallyPerformWithoutAnimation:!v5 layout:v37];
  }

  v22 = v40[3];
  switch(v22)
  {
    case 3:
      [(UICollectionViewListCell *)self _separatorInsetsFromPrimaryTextLayoutFrameWithDefaultInsets:top, leading, bottom, trailing];
      break;
    case 2:
      [(UICollectionViewListCell *)self _preferredSeparatorInsetsFromContentViewWithDefaultInsets:top, leading, bottom, trailing];
      break;
    case 1:
      [(UICollectionViewListCell *)self _separatorInsetsFromLayoutGuide];
      break;
    default:
      goto LABEL_16;
  }

  top = v23;
  leading = v24;
  bottom = v25;
  trailing = v26;
LABEL_16:
  if ((v15 & 0x10000) != 0)
  {
    [(UICollectionViewListCell *)self _preferredSeparatorInsetsForProposedInsets:top, leading, bottom, trailing];
    top = v27;
    leading = v28;
    bottom = v29;
    trailing = v30;
  }

  [v10 setBottomSeparatorInsets:{top, leading, bottom, trailing}];
  if (([v10 _ignoreTopSeparatorInsetsFromCell] & 1) == 0)
  {
    [v10 setTopSeparatorInsets:{top, leading, bottom, trailing}];
  }

  if (!v17 && v5)
  {
    [(UIView *)self bounds];
    v44.origin.y = v35;
    v44.origin.x = v36;
    v44.size.height = v33;
    v44.size.width = v34;
    if (!CGRectEqualToRect(v43, v44))
    {
      [(UIView *)self setBounds:v36, v35, v34, v33];
    }
  }

  _Block_object_dispose(&v39, 8);
}

void __111__UICollectionViewListCell__updateSeparatorConfigurationForPreferredAttributes_bounds_isAnimatingExistingView___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[89])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return;
  }

  v6 = [v2 _existingContentView];
  if (objc_opt_respondsToSelector())
  {
    v3 = 2;
    v4 = v6;
LABEL_7:
    *(*(*(a1 + 40) + 8) + 24) = v3;
    goto LABEL_8;
  }

  v5 = objc_opt_respondsToSelector();
  v4 = v6;
  if (v5)
  {
    v3 = 3;
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t __111__UICollectionViewListCell__updateSeparatorConfigurationForPreferredAttributes_bounds_isAnimatingExistingView___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    [*(a1 + 32) layoutIfNeeded];
    v3 = *(*(a1 + 80) + 16);

    return v3();
  }

  return result;
}

- (void)setSelectionStyle:(int64_t)a3
{
  v3 = *(&self->_listCellFlags + 1);
  if (((v3 >> 6) & 1) != a3)
  {
    *(&self->_listCellFlags + 1) = v3 & 0xFFFFFFBF | ((a3 & 1) << 6);
    [(UICollectionViewCell *)self _updateDefaultBackgroundAppearance];
  }
}

- (BOOL)_isAccompaniedSidebar
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 _splitViewControllerContext] == 2;

  return v3;
}

- (id)_defaultContentConfigurationUsingSpecificStyling
{
  v3 = *(&self->_listCellFlags + 1);
  v4 = v3 & 7;
  if ((v4 - 1) >= 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        if ((v3 & 8) == 0)
        {
          v5 = +[UIListContentConfiguration _sidebarPlainCellConfiguration];
          goto LABEL_30;
        }

        if ((v3 & 0x10) == 0)
        {
          goto LABEL_19;
        }

LABEL_25:
        v5 = +[UIListContentConfiguration plainFooterConfiguration];
        goto LABEL_30;
      }

      if ((v3 & 8) != 0)
      {
        if ((v3 & 0x10) == 0)
        {
LABEL_19:
          v5 = +[UIListContentConfiguration plainHeaderConfiguration];
          goto LABEL_30;
        }

        goto LABEL_25;
      }

      v7 = [(UICollectionViewListCell *)self _popUpMenuAccessory];

      if (v7)
      {
LABEL_17:
        v5 = +[UIListContentConfiguration valueCellConfiguration];
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if ((v3 & 8) == 0)
    {
      if ([(UICollectionViewListCell *)self _isAccompaniedSidebar])
      {
        +[UIListContentConfiguration accompaniedSidebarCellConfiguration];
      }

      else
      {
        +[UIListContentConfiguration sidebarCellConfiguration];
      }
      v5 = ;
      goto LABEL_30;
    }

    if (!dyld_program_sdk_at_least() || (v3 & 0x10) == 0)
    {
      v5 = +[UIListContentConfiguration sidebarHeaderConfiguration];
      goto LABEL_30;
    }

LABEL_23:
    v5 = +[UIListContentConfiguration groupedFooterConfiguration];
    goto LABEL_30;
  }

  if ((v3 & 8) != 0)
  {
    if ((v3 & 0x10) == 0)
    {
      v5 = +[UIListContentConfiguration groupedHeaderConfiguration];
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  v6 = [(UICollectionViewListCell *)self _popUpMenuAccessory];

  if (v6)
  {
    goto LABEL_17;
  }

  if ((*(&self->_listCellFlags + 1) & 7) == 2)
  {
    v5 = +[UIListContentConfiguration _defaultInsetGroupedCellConfiguration];
    goto LABEL_30;
  }

LABEL_28:
  v5 = +[UIListContentConfiguration cellConfiguration];
LABEL_30:

  return v5;
}

- (id)_defaultBackgroundConfigurationUsingSpecificStyling
{
  v2 = *(&self->_listCellFlags + 1);
  v3 = v2 & 7;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 4)
      {
        if ((v2 & 0x28) == 0)
        {
          v4 = +[UIBackgroundConfiguration _sidebarPlainCellConfiguration];
          goto LABEL_25;
        }

        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if ((v2 & 0x28) == 0)
    {
      if ([(UICollectionViewListCell *)self _isAccompaniedSidebar])
      {
        +[UIBackgroundConfiguration listAccompaniedSidebarCellConfiguration];
      }

      else
      {
        +[UIBackgroundConfiguration listSidebarCellConfiguration];
      }

      goto LABEL_6;
    }

    if (!dyld_program_sdk_at_least() || (v2 & 0x10) == 0)
    {
      v4 = +[UIBackgroundConfiguration listSidebarHeaderConfiguration];
      goto LABEL_25;
    }

LABEL_14:
    v4 = +[UIBackgroundConfiguration listGroupedHeaderFooterConfiguration];
    goto LABEL_25;
  }

  if (v3 == 1)
  {
    if ((v2 & 0x28) == 0)
    {
      v4 = +[UIBackgroundConfiguration listGroupedCellConfiguration];
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  if (v3 == 2)
  {
    if ((v2 & 0x28) != 0)
    {
      +[UIBackgroundConfiguration _listInsetGroupedHeaderFooterConfiguration];
    }

    else
    {
      +[UIBackgroundConfiguration _listInsetGroupedCellConfiguration];
    }

    v4 = LABEL_6:;
    goto LABEL_25;
  }

LABEL_11:
  if ((v2 & 0x28) != 0)
  {
LABEL_12:
    v4 = +[UIBackgroundConfiguration listPlainHeaderFooterConfiguration];
    goto LABEL_25;
  }

  v4 = +[UIBackgroundConfiguration listPlainCellConfiguration];
LABEL_25:

  return v4;
}

- (id)_defaultBackgroundView
{
  v3 = objc_alloc_init(_UICollectionViewListCellBackgroundView);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(UICollectionViewListCell *)self _constants];
  v5 = [(UICollectionViewListCell *)self _tableStyle];
  v6 = [UICellConfigurationState _readonlyCellState:?];
  v7 = [(UIView *)self traitCollection];
  if (v4)
  {
    [v4 defaultCellBackgroundPropertiesForTableViewStyle:v5 state:v6 traitCollection:v7];
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
  }

  [(UIView *)v3 setBackgroundColor:*(&v9 + 1)];
  __destructor_8_s8_s16_s24_s80(&v9);

  return v3;
}

- (id)_defaultSelectedBackgroundView
{
  if ((*(&self->_listCellFlags + 1) & 0x40) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_alloc_init(_UICollectionViewListCellSelectedBackgroundView);
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    if ([(UICollectionViewCell *)self isFocused])
    {
      v4 = 12;
    }

    else
    {
      v4 = 4;
    }

    v14 = 0uLL;
    v15 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    *(&v10 + 1) = 0;
    v11 = 0uLL;
    v5 = [(UICollectionViewListCell *)self _constants];
    v6 = [(UICollectionViewListCell *)self _tableStyle];
    v7 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:v4];
    v8 = [(UIView *)self traitCollection];
    if (v5)
    {
      [v5 defaultCellBackgroundPropertiesForTableViewStyle:v6 state:v7 traitCollection:v8];
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
    }

    [(UIView *)v3 setBackgroundColor:*(&v10 + 1)];
    __destructor_8_s8_s16_s24_s80(&v10);
  }

  return v3;
}

- (void)_setSelected:(BOOL)a3 animated:(BOOL)a4 isUserInitiated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if ([(UICollectionViewCell *)self isSelected]!= a3)
  {
    if (v5)
    {
      v9 = 0x4000;
    }

    else
    {
      v9 = 0;
    }

    *(&self->_listCellFlags + 1) = *(&self->_listCellFlags + 1) & 0xFFFFBFFF | v9;
  }

  v10.receiver = self;
  v10.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v10 _setSelected:v7 animated:v6 isUserInitiated:v5];
}

- (void)_systemAccessoriesChanged
{
  [(UICellAccessoryManager *)self->_accessoryManager setNeedsLayout];
  v3 = [(UICollectionViewCell *)self configurationState];
  [(UICollectionViewListCell *)self _updateCurrentSystemTypeAccessoryViewsUsingState:v3];

  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {

    [(UIView *)self layoutIfNeeded];
  }
}

- (void)_updateCurrentSystemTypeAccessoryViewsUsingState:(id)a3
{
  v4 = a3;
  v5 = *(&self->_listCellFlags + 1);
  *(&self->_listCellFlags + 1) = v5 & 0xFFFFBFFF;
  if ((v5 & 0x100) == 0)
  {
    v6 = (v5 >> 14) & 1;
    v7 = [(UICellAccessoryManager *)self->_accessoryManager configurations];
    if ([(NSArray *)self->_accessories count])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __77__UICollectionViewListCell__updateCurrentSystemTypeAccessoryViewsUsingState___block_invoke;
      aBlock[3] = &unk_1E70FE448;
      aBlock[4] = self;
      v8 = &v32;
      v32 = v4;
      v33 = v6;
      v9 = _Block_copy(aBlock);
      v10 = [v7 objectForKeyedSubscript:0x1EFB35F50];
      v11 = [v10 leadingAccessories];
      v9[2](v9, v11);

      v12 = [v7 objectForKeyedSubscript:0x1EFB35F50];
      v13 = [v12 trailingAccessories];
      v9[2](v9, v13);

      v14 = [v7 objectForKeyedSubscript:0x1EFBA01F0];
      v15 = [v14 leadingAccessories];
      v9[2](v9, v15);

      v16 = [v7 objectForKeyedSubscript:0x1EFBA01F0];
      v17 = [v16 trailingAccessories];
      v9[2](v9, v17);
    }

    else
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __77__UICollectionViewListCell__updateCurrentSystemTypeAccessoryViewsUsingState___block_invoke_2;
      v28[3] = &unk_1E70FE470;
      v28[4] = self;
      v29 = v4;
      v30 = v6;
      v9 = _Block_copy(v28);
      leadingAccessoryConfigurations = self->_leadingAccessoryConfigurations;
      v19 = [v7 objectForKeyedSubscript:0x1EFB35F50];
      v20 = [v19 leadingAccessories];
      (v9[2])(v9, leadingAccessoryConfigurations, v20);

      trailingAccessoryConfigurations = self->_trailingAccessoryConfigurations;
      v22 = [v7 objectForKeyedSubscript:0x1EFB35F50];
      v23 = [v22 trailingAccessories];
      (v9[2])(v9, trailingAccessoryConfigurations, v23);

      leadingEditingAccessoryConfigurations = self->_leadingEditingAccessoryConfigurations;
      v25 = [v7 objectForKeyedSubscript:0x1EFBA01F0];
      v26 = [v25 leadingAccessories];
      (v9[2])(v9, leadingEditingAccessoryConfigurations, v26);

      v8 = &v29;
      trailingEditingAccessoryConfigurations = self->_trailingEditingAccessoryConfigurations;
      v16 = [v7 objectForKeyedSubscript:0x1EFBA01F0];
      v17 = [v16 trailingAccessories];
      (v9[2])(v9, trailingEditingAccessoryConfigurations, v17);
    }
  }
}

void __77__UICollectionViewListCell__updateCurrentSystemTypeAccessoryViewsUsingState___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((*(*(a1 + 32) + 653) & 1) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = *(*(a1 + 32) + 664);
          v11 = [v9 identifier];
          v12 = [v10 objectForKeyedSubscript:v11];

          if (!v12)
          {
            [*(a1 + 32) _setNeedsUpdateAccessories];
            goto LABEL_15;
          }

          v13 = [v12 _isSystemType];
          v14 = *(a1 + 32);
          v15 = [v9 view];
          v16 = *(a1 + 40);
          v17 = *(a1 + 48);
          if (v13)
          {
            [v14 _updateSystemTypeAccessoryView:v15 withCellAccessory:v12 orConfiguration:0 usingState:v16 isUserInitiated:v17];
          }

          else
          {
            [v14 _updateCustomAccessoryView:v15 withCellAccessory:v12 orConfiguration:0 usingState:v16 isUserInitiated:v17];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v3 = v18;
  }
}

void __77__UICollectionViewListCell__updateCurrentSystemTypeAccessoryViewsUsingState___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    v8 = [v5 count];
    v9 = [v6 count];
    if (v8 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = [v5 objectAtIndexedSubscript:v11];
        if ([v12 _isSystemType])
        {
          v13 = [v6 objectAtIndexedSubscript:v11];
          v14 = *(a1 + 32);
          v15 = [v13 view];
          [v14 _updateSystemTypeAccessoryView:v15 withCellAccessory:0 orConfiguration:v12 usingState:*(a1 + 40) isUserInitiated:*(a1 + 48)];
        }

        ++v11;
        v16 = [v5 count];
        v17 = [v6 count];
        if (v16 >= v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = v16;
        }
      }

      while (v11 < v18);
    }
  }

  else
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v20 = [v5 count];
    v21 = [v6 count];
    if (has_internal_diagnostics)
    {
      if (v20 != v21)
      {
        v22 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          v25 = 138412546;
          v26 = v5;
          v27 = 2112;
          v28 = v6;
          _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Configurations are out of sync with accessories! Configurations: %@; Accessories: %@", &v25, 0x16u);
        }
      }
    }

    else if (v20 != v21)
    {
      v23 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_2) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = 138412546;
        v26 = v5;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Configurations are out of sync with accessories! Configurations: %@; Accessories: %@", &v25, 0x16u);
      }
    }

    [*(a1 + 32) _setNeedsUpdateAccessories];
  }
}

- (void)_applyCellAccessoriesToNormalConfiguration:(id)a3 editingConfiguration:(id)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v48 = a3;
  v47 = a4;
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = *(&self->_listCellFlags + 1) & 8;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v46 = self;
  v7 = self->_accessories;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v53 = 0;
    v11 = 0;
    v51 = 0;
    v12 = *v62;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v62 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v61 + 1) + 8 * i);
        v15 = [v14 displayedState];
        v16 = [v14 _defaultPlacementForHeader:v6 != 0];
        if ((v15 & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          v17 = [v14 _isSystemType];
          if (v16)
          {
            if (v17)
            {
              v18 = v52;
            }

            else if (v11)
            {
              v18 = v11;
            }

            else
            {
              v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v11 = v18;
            }
          }

          else if (v17)
          {
            v18 = v49;
          }

          else
          {
            v18 = v51;
            if (!v51)
            {
              v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v51 = v18;
            }
          }

          [v18 addObject:v14];
        }

        if (v15 <= 1)
        {
          v19 = [v14 _isSystemType];
          if (v16)
          {
            if (v19)
            {
              v20 = v54;
            }

            else if (v10)
            {
              v20 = v10;
            }

            else
            {
              v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v10 = v20;
            }
          }

          else if (v19)
          {
            v20 = v50;
          }

          else
          {
            v20 = v53;
            if (!v53)
            {
              v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v53 = v20;
            }
          }

          [v20 addObject:v14];
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v53 = 0;
    v11 = 0;
    v51 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__UICollectionViewListCell__applyCellAccessoriesToNormalConfiguration_editingConfiguration___block_invoke;
  aBlock[3] = &unk_1E70FE498;
  v60 = v6 >> 3;
  aBlock[4] = v46;
  aBlock[5] = a2;
  v44 = _Block_copy(aBlock);
  [v49 sortUsingComparator:v44];
  [v52 sortUsingComparator:v44];
  [v50 sortUsingComparator:v44];
  [v54 sortUsingComparator:v44];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __92__UICollectionViewListCell__applyCellAccessoriesToNormalConfiguration_editingConfiguration___block_invoke_2;
  v58[3] = &unk_1E70FE4C0;
  v58[4] = v46;
  v58[5] = a2;
  v21 = _Block_copy(v58);
  v22 = [v51 objectEnumerator];
  v23 = v21;
  v24 = v21[2];
  v21 += 2;
  v25 = v23;
  v24(v23, v22, v49);

  v26 = [v11 reverseObjectEnumerator];
  (*v21)(v25, v26, v52);

  v27 = [v53 objectEnumerator];
  (*v21)(v25, v27, v50);

  v28 = [v10 reverseObjectEnumerator];
  (*v21)(v25, v28, v54);

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __92__UICollectionViewListCell__applyCellAccessoriesToNormalConfiguration_editingConfiguration___block_invoke_3;
  v57[3] = &unk_1E70F3E78;
  v57[4] = v46;
  v43 = _Block_copy(v57);
  v43[2](v43, v52);
  v43[2](v43, v54);
  v29 = [(UICollectionViewCell *)v46 configurationState];
  v30 = [(UICollectionViewListCell *)v46 _internalAccessoriesForCellAccessories:v49 usingState:v29];
  [v48 setLeadingAccessories:v30];

  v31 = [(UICollectionViewListCell *)v46 _internalAccessoriesForCellAccessories:v52 usingState:v29];
  [v48 setTrailingAccessories:v31];

  v32 = [(UICollectionViewListCell *)v46 _internalAccessoriesForCellAccessories:v50 usingState:v29];
  [v47 setLeadingAccessories:v32];

  v33 = [(UICollectionViewListCell *)v46 _internalAccessoriesForCellAccessories:v54 usingState:v29];
  [v47 setTrailingAccessories:v33];

  v34 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](v46->_accessories, "count")}];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __92__UICollectionViewListCell__applyCellAccessoriesToNormalConfiguration_editingConfiguration___block_invoke_5;
  v55[3] = &unk_1E70FE508;
  v35 = v34;
  v56 = v35;
  v36 = _Block_copy(v55);
  v37 = [v48 leadingAccessories];
  v36[2](v36, v49, v37);

  v38 = [v48 trailingAccessories];
  v36[2](v36, v52, v38);

  v39 = [v47 leadingAccessories];
  v36[2](v36, v50, v39);

  v40 = [v47 trailingAccessories];
  v36[2](v36, v54, v40);

  accessoriesByIdentifier = v46->_accessoriesByIdentifier;
  v46->_accessoriesByIdentifier = v35;
  v42 = v35;
}

uint64_t __92__UICollectionViewListCell__applyCellAccessoriesToNormalConfiguration_editingConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 _systemTypePlacementForHeader:*(a1 + 48)];
  v8 = [v6 _systemTypePlacementForHeader:*(a1 + 48)];
  if (v7 >= v8)
  {
    if (v7 <= v8)
    {
      if (v7 == v8)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"UICollectionViewListCell.m" lineNumber:1229 description:{@"Accessories array contains more than one system accessory of the same type. Duplicate accessories: %@ %@", v5, v6}];
      }

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __92__UICollectionViewListCell__applyCellAccessoriesToNormalConfiguration_editingConfiguration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 position];
        v13 = (v12)[2](v12, v6);

        if (v13 > [v6 count])
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          [v14 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"UICollectionViewListCell.m" lineNumber:1244 description:{@"Position returned an invalid index (%llu) to insert accessory: %@ into accessories array: %@", v13, v11, v6}];
        }

        [v6 insertObject:v11 atIndex:v13];
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

void __92__UICollectionViewListCell__applyCellAccessoriesToNormalConfiguration_editingConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 indexOfObjectWithOptions:2 passingTest:&__block_literal_global_132];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v5 = objc_alloc_init(UICellAccessorySeparator);
    v6 = [*(a1 + 32) traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 6)
    {
      [(UICellAccessory *)v5 setHidden:1];
      v8 = [*(a1 + 32) _constants];
      [v8 defaultVerticalAccessorySeparatorReplacementPaddingWidth];
      v10 = v9;

      [(UICellAccessory *)v5 setReservedLayoutWidth:v10];
    }

    v11 = [v13 objectAtIndexedSubscript:v4];
    v12 = [v11 tintColor];
    [(UICellAccessory *)v5 setTintColor:v12];

    [v13 insertObject:v5 atIndex:v4];
  }
}

uint64_t __92__UICollectionViewListCell__applyCellAccessoriesToNormalConfiguration_editingConfiguration___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    if ([v4 _isSystemType] && objc_msgSend(v5, "_systemType") == 4)
    {
      v6 = objc_opt_class();
      _accessoryAsClass(v5, v6);
      a3 = [objc_claimAutoreleasedReturnValue() showsVerticalSeparator];
    }

    else
    {
      a3 = 0;
    }
  }

  return a3;
}

void __92__UICollectionViewListCell__applyCellAccessoriesToNormalConfiguration_editingConfiguration___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v8 = [v5 count];
  v9 = [v6 count];
  if (has_internal_diagnostics)
  {
    if (v8 != v9)
    {
      v21 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v24 = 138412546;
        v25 = v5;
        v26 = 2112;
        v27 = v6;
        _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Cell and internal accessory counts do not match! Cell accessories: %@; Internal accessories: %@", &v24, 0x16u);
      }
    }
  }

  else if (v8 != v9)
  {
    v22 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke_2___s_category_0) + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412546;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Cell and internal accessory counts do not match! Cell accessories: %@; Internal accessories: %@", &v24, 0x16u);
    }
  }

  v10 = [v5 count];
  v11 = [v6 count];
  if (v10 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = *(a1 + 32);
      v15 = [v5 objectAtIndexedSubscript:v13];
      v16 = [v6 objectAtIndexedSubscript:v13];
      v17 = [v16 identifier];
      [v14 setObject:v15 forKey:v17];

      ++v13;
      v18 = [v5 count];
      v19 = [v6 count];
      if (v18 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }
    }

    while (v13 < v20);
  }
}

- (id)_internalAccessoriesForCellAccessories:(id)a3 usingState:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v6;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          if ([v13 _isSystemType])
          {
            [v13 _systemType];
            v14 = [(UICollectionViewListCell *)self _createSystemTypeAccessoryViewWithCellAccessory:v13 orConfiguration:0 updatedForState:v7];
            v15 = 1;
          }

          else
          {
            v16 = objc_opt_class();
            _accessoryAsClass(v13, v16);
            objc_claimAutoreleasedReturnValue();
            v14 = [(UICollectionViewListCell *)self _createCustomAccessoryViewWithCellAccessory:v13 updatedForState:v7];
            if ([v13 maintainsFixedSize])
            {
              v15 = 12;
            }

            else
            {
              v15 = 14;
            }
          }

          [v14 setHidden:{objc_msgSend(v13, "isHidden")}];
          [v13 reservedLayoutWidth];
          v17 = -1.79769313e308;
          if (v18 != -1.79769313e308)
          {
            [v13 reservedLayoutWidth];
            v17 = -1000.0;
            if (v19 != -1000.0)
            {
              [v13 reservedLayoutWidth];
              if (v20 == 0.0)
              {
                v17 = 1.79769313e308;
              }

              else
              {
                [v13 reservedLayoutWidth];
                v17 = v21;
              }
            }
          }

          v22 = [v13 _identifier];
          v23 = [_UICellViewAccessory accessoryWithIdentifier:v22 view:v14 options:v15 reservedLayoutWidth:v17];

          [v8 addObject:v23];
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    v6 = v25;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)_cellAccessoriesForConfigurations:(id)a3 isLeadingEdge:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count])
  {
    v7 = [(UICollectionViewCell *)self configurationState];
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(UICollectionViewListCell *)self _cellAccessoryForConfiguration:*(*(&v16 + 1) + 8 * i) isLeadingEdge:v4 usingState:v7, v16];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)_cellAccessoryForConfiguration:(id)a3 isLeadingEdge:(BOOL)a4 usingState:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if ([v8 _isSystemType])
  {
    [v8 _systemType];
    v10 = [(UICollectionViewListCell *)self _createSystemTypeAccessoryViewWithCellAccessory:0 orConfiguration:v8 updatedForState:v9];
    v11 = 1;
  }

  else
  {
    v12 = objc_opt_class();
    _accessoryConfigurationAsClass(v8, v12);
    v10 = [objc_claimAutoreleasedReturnValue() customView];
    v13 = [v8 tintColor];

    if (v13)
    {
      v14 = [v8 tintColor];
      [v10 setTintColor:v14];
    }

    if ([v8 maintainsFixedSize])
    {
      v11 = 12;
    }

    else
    {
      v11 = 14;
    }
  }

  if ([v8 usesDefaultLayoutWidth])
  {
    v15 = -1.79769313e308;
  }

  else
  {
    v15 = 1.79769313e308;
  }

  v16 = MEMORY[0x1E696AEC0];
  if (v6)
  {
    v17 = @"L";
  }

  else
  {
    v17 = @"T";
  }

  v18 = [v8 _identifier];
  v19 = [v16 stringWithFormat:@"%@-%@", v17, v18];

  v20 = [_UICellViewAccessory accessoryWithIdentifier:v19 view:v10 options:v11 reservedLayoutWidth:v15];

  return v20;
}

- (id)_createSystemTypeAccessoryViewWithCellAccessory:(id)a3 orConfiguration:(id)a4 updatedForState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 _isSystemType] & 1) != 0 || (objc_msgSend(v10, "_isSystemType"))
  {
    if (v9)
    {
LABEL_4:
      v12 = v9;
      goto LABEL_7;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = NSStringFromSelector(a2);
    [v13 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:1400 description:{@"%@ can only be called for system type accessories", v14}];

    if (v9)
    {
      goto LABEL_4;
    }
  }

  v12 = v10;
LABEL_7:
  v15 = [v12 _systemType];
  v16 = v15;
  if (v15 <= 4)
  {
    if (v15 <= 1)
    {
      if (!v15)
      {
        v24 = [_UICollectionViewListAccessoryDisclosure alloc];
        v25 = [(UICollectionViewListCell *)self _constants];
        v26 = [(_UICollectionViewListAccessoryDisclosure *)v24 initWithConstants:v25 handlesOwnAction:0];
LABEL_31:
        v23 = v26;

        [(UIView *)v23 setUserInteractionEnabled:0];
        goto LABEL_34;
      }

      if (v15 == 1)
      {
        v17 = _UICollectionViewListAccessoryCheckmark;
        goto LABEL_33;
      }

LABEL_36:
      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      [v41 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:1475 description:{@"Unable to create cell accessory for _UICellAccessorySystemType: %ld", v16}];

      v23 = 0;
      goto LABEL_35;
    }

    if (v15 == 2)
    {
      v32 = [_UICollectionViewListAccessoryControl alloc];
      v19 = [(UICollectionViewListCell *)self _constants];
      v28 = v32;
      v29 = 0;
    }

    else
    {
      if (v15 != 3)
      {
        v18 = [_UICollectionViewListCellReorderControl alloc];
        v19 = [(UICollectionViewListCell *)self _constants];
        v20 = [(_UICollectionViewListCellReorderControl *)v18 initWithDelegate:self constants:v19];
LABEL_29:
        v23 = v20;

        goto LABEL_34;
      }

      v27 = [_UICollectionViewListAccessoryControl alloc];
      v19 = [(UICollectionViewListCell *)self _constants];
      v28 = v27;
      v29 = 1;
    }

LABEL_28:
    v20 = [(_UICollectionViewListAccessoryControl *)v28 initWithType:v29 constants:v19];
    goto LABEL_29;
  }

  if (v15 > 7)
  {
    if (v15 == 8)
    {
      v17 = _UICollectionViewListAccessoryVerticalSeparator;
      goto LABEL_33;
    }

    if (v15 != 9)
    {
      if (v15 == 10)
      {
        v21 = [_UICollectionViewListAccessoryDisclosure alloc];
        v22 = [(UICollectionViewListCell *)self _constants];
        v23 = [(_UICollectionViewListAccessoryDisclosure *)v21 initWithConstants:v22 handlesOwnAction:0];

        [(UIView *)v23 setUserInteractionEnabled:0];
        [(UIControl *)v23 setShowsMenuAsPrimaryAction:1];
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    v31 = [_UICollectionViewListAccessoryControl alloc];
    v19 = [(UICollectionViewListCell *)self _constants];
    v28 = v31;
    v29 = 3;
    goto LABEL_28;
  }

  if (v15 == 5)
  {
    v33 = [_UICollectionViewListAccessoryControl alloc];
    v25 = [(UICollectionViewListCell *)self _constants];
    v26 = [(_UICollectionViewListAccessoryControl *)v33 initWithType:2 constants:v25];
    goto LABEL_31;
  }

  if (v15 == 6)
  {
    v30 = [_UICollectionViewListAccessoryDisclosure alloc];
    v19 = [(UICollectionViewListCell *)self _constants];
    v20 = [(_UICollectionViewListAccessoryDisclosure *)v30 initWithConstants:v19 handlesOwnAction:(*(&self->_listCellFlags + 1) & 0x800) == 0];
    goto LABEL_29;
  }

  v17 = _UITableViewCellBadge;
LABEL_33:
  v23 = objc_alloc_init(v17);
LABEL_34:
  if (!v23)
  {
    goto LABEL_36;
  }

LABEL_35:
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __108__UICollectionViewListCell__createSystemTypeAccessoryViewWithCellAccessory_orConfiguration_updatedForState___block_invoke;
  v42[3] = &unk_1E70F8868;
  v42[4] = self;
  v34 = v23;
  v43 = v34;
  v44 = v9;
  v45 = v10;
  v46 = v11;
  v35 = v11;
  v36 = v10;
  v37 = v9;
  [UIView performWithoutAnimation:v42];
  v38 = v46;
  v39 = v34;

  return v34;
}

- (id)_createCustomAccessoryViewWithCellAccessory:(id)a3 updatedForState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 customView];
  v9 = [v6 tintColor];

  if (v9)
  {
    v10 = [v6 tintColor];
    [v8 setTintColor:v10];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__UICollectionViewListCell__createCustomAccessoryViewWithCellAccessory_updatedForState___block_invoke;
  v17[3] = &unk_1E70F6B40;
  v17[4] = self;
  v11 = v8;
  v18 = v11;
  v19 = v6;
  v20 = v7;
  v12 = v7;
  v13 = v6;
  [UIView performWithoutAnimation:v17];
  v14 = v20;
  v15 = v11;

  return v11;
}

- (void)_updateSystemTypeAccessoryView:(id)a3 withCellAccessory:(id)a4 orConfiguration:(id)a5 usingState:(id)a6 isUserInitiated:(BOOL)a7
{
  v115 = a7;
  v120 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (([v12 _isSystemType] & 1) == 0 && (objc_msgSend(v13, "_isSystemType") & 1) == 0)
  {
    v110 = [MEMORY[0x1E696AAA8] currentHandler];
    v111 = NSStringFromSelector(a2);
    [v110 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:1507 description:{@"%@ can only be called for system type accessories", v111}];
  }

  v117 = a2;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  v16 = [v15 _systemType];
  v17 = *(&self->_listCellFlags + 1);
  v18 = [(UIView *)self traitCollection];
  v19 = [v18 _splitViewControllerContext];

  if ((*(&self->_listCellFlags + 1) & 7) == 4)
  {
    v20 = 3;
  }

  else if ((*(&self->_listCellFlags + 1) & 7) == 3)
  {
    if (v19 == 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = [(UIView *)self traitCollection];
  v119 = self;
  v22 = [(UICollectionViewListCell *)self _shouldUseMonochromaticTreatmentForCellAccessory:v12 orConfiguration:v13 sidebarStyle:v20 cellConfigurationState:v14 traitCollection:v21];

  if (v12)
  {
    v23 = v12;
  }

  else
  {
    v23 = v13;
  }

  v24 = [v23 tintColor];
  v25 = v17 & 0x28;
  if (v24)
  {
    if (v12)
    {
LABEL_19:
      v26 = v12;
      goto LABEL_22;
    }
  }

  else
  {
    v27 = v25 != 0;
    v28 = v20;
    [(UICollectionViewListCell *)v119 _constants];
    v29 = v113 = v17 & 0x28;
    v30 = [(UIView *)v119 traitCollection];
    [(UIView *)v119 tintColor];
    v31 = v22;
    v32 = v12;
    v33 = v13;
    v35 = v34 = v14;
    v24 = [v29 defaultAccessoryTintColorForAccessorySystemType:v16 header:v27 sidebarStyle:v28 cellConfigurationState:v34 traitCollection:v30 inheritedTintColor:v35];

    v14 = v34;
    v13 = v33;
    v12 = v32;
    v22 = v31;
    v20 = v28;

    v25 = v113;
    if (v12)
    {
      goto LABEL_19;
    }
  }

  v26 = v13;
LABEL_22:
  v36 = [v26 _backgroundColor];
  v37 = v120;
  if (!v36)
  {
    v38 = v25 != 0;
    [(UICollectionViewListCell *)v119 _constants];
    v40 = v39 = v14;
    v41 = [(UIView *)v119 traitCollection];
    v36 = [v40 defaultAccessoryBackgroundColorForAccessorySystemType:v16 header:v38 sidebarStyle:v20 cellConfigurationState:v39 traitCollection:v41];

    v14 = v39;
    v37 = v120;
  }

  if (v16 <= 4)
  {
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v80 = objc_opt_class();
        _accessoryViewAsClass(v120, v80);
        objc_claimAutoreleasedReturnValue();
        v81 = objc_opt_class();
        if (v12)
        {
          _accessoryAsClass(v12, v81);
          v55 = [objc_claimAutoreleasedReturnValue() actionHandler];
          v82 = v12;
        }

        else
        {
          _accessoryConfigurationAsClass(v13, v81);
          v55 = [objc_claimAutoreleasedReturnValue() actionHandler];
          v82 = v13;
        }

        if (v55)
        {
          [v120 removeTarget:v119 action:sel__deleteAccessoryTriggered forControlEvents:0x2000];
        }

        else
        {
          [v120 addTarget:v119 action:sel__deleteAccessoryTriggered forControlEvents:0x2000];
        }

        [v120 setActionHandler:v55];
        v95 = v119;
      }

      else
      {
        if (v16 != 3)
        {
          v51 = objc_opt_class();
          _accessoryViewAsClass(v120, v51);
          objc_claimAutoreleasedReturnValue();
          v52 = [(UICollectionViewListCell *)v119 _constants];
          [v120 setConstants:v52];

          [v120 setAccessoryTintColor:v24];
LABEL_85:

          goto LABEL_86;
        }

        v65 = objc_opt_class();
        _accessoryViewAsClass(v120, v65);
        objc_claimAutoreleasedReturnValue();
        v66 = objc_opt_class();
        if (v12)
        {
          _accessoryAsClass(v12, v66);
          v55 = [objc_claimAutoreleasedReturnValue() actionHandler];
          v67 = v12;
        }

        else
        {
          _accessoryConfigurationAsClass(v13, v66);
          v55 = [objc_claimAutoreleasedReturnValue() actionHandler];
          v67 = v13;
        }

        [v120 setActionHandler:v55];
        [v120 setUserInteractionEnabled:v55 != 0];
        v95 = v119;
      }

      v99 = [(UICollectionViewListCell *)v95 _constants];
      [v120 setConstants:v99];

      v92 = v120;
      v93 = v24;
      goto LABEL_77;
    }

    if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_61;
      }

      v58 = [(UICollectionViewListCell *)v119 _constants];
      v59 = [v58 defaultCheckmarkImageForCell:v119];

      if (v24)
      {
        v60 = [v59 imageWithTintColor:v24 renderingMode:1];

        v59 = v60;
      }

      v61 = objc_opt_class();
      _accessoryViewAsClass(v120, v61);
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      v62 = [(UICollectionViewListCell *)v119 _constants];
      v59 = [v62 defaultDisclosureImageForCell:v119 withAccessoryBaseColor:v24];

      v63 = objc_opt_class();
      _accessoryViewAsClass(v120, v63);
      objc_claimAutoreleasedReturnValue();
      v64 = [(UICollectionViewListCell *)v119 _constants];
      [v120 setConstants:v64];
    }

    [v120 setImage:v59];
    [v120 setAccessoryUsesMonochromaticTreatment:v22];

    goto LABEL_86;
  }

  if (v16 > 7)
  {
    switch(v16)
    {
      case 8:
        [v37 setBackgroundColor:v24];
        goto LABEL_86;
      case 9:
        v75 = v37;
        v76 = objc_opt_class();
        _accessoryAsClass(v12, v76);
        v77 = [objc_claimAutoreleasedReturnValue() actionHandler];
        [v75 setActionHandler:v77];
        [v75 setUserInteractionEnabled:v77 != 0];
        [(UICollectionViewListCell *)v119 _constants];
        v79 = v78 = v22;
        [v75 setConstants:v79];

        [v75 setAccessoryTintColor:v24];
        [v75 setAccessoryBackgroundColor:v36];
        [v75 setAccessoryUsesMonochromaticTreatment:v78];

        goto LABEL_86;
      case 10:
        v53 = v22;
        v54 = objc_opt_class();
        _accessoryViewAsClass(v120, v54);
        objc_claimAutoreleasedReturnValue();
        v55 = [(UICollectionViewListCell *)v119 _constants];
        [v120 setConstants:v55];
        if (objc_opt_respondsToSelector())
        {
          v56 = [(UIView *)v119 traitCollection];
          v57 = [v55 defaultPopUpMenuIndicatorImageForTraitCollection:v56];
        }

        else
        {
          v57 = 0;
        }

        [v120 setImage:v57];
        if (v24)
        {
          [v120 setAccessoryTintColor:v24];
        }

        else
        {
          v100 = +[UIColor secondaryLabelColor];
          [v120 setAccessoryTintColor:v100];
        }

        [v120 setAccessoryUsesMonochromaticTreatment:v53];
        v101 = objc_opt_class();
        _accessoryAsClass(v12, v101);
        v102 = [objc_claimAutoreleasedReturnValue() selectedElementDidChangeHandler];
        [v120 setSelectedElementDidChangeHandler:v102];

        v103 = [v12 _internalMenu];
        [v120 setMenu:v103];

        goto LABEL_84;
    }

LABEL_61:
    v94 = [MEMORY[0x1E696AAA8] currentHandler];
    [v94 handleFailureInMethod:v117 object:v119 file:@"UICollectionViewListCell.m" lineNumber:1693 description:{@"Invalid _UICellAccessorySystemType value: %ld", v16}];

    goto LABEL_86;
  }

  if (v16 == 5)
  {
    v83 = objc_opt_class();
    _accessoryViewAsClass(v120, v83);
    objc_claimAutoreleasedReturnValue();
    [v120 setSelected:-[UICollectionViewCell isSelected](v119 isUserInitiated:{"isSelected"), v115}];
    v84 = [(UICollectionViewListCell *)v119 _constants];
    [v120 setConstants:v84];

    v55 = v24;
    v85 = [(UICollectionViewCell *)v119 isSelected];
    if (v13 && v85)
    {
      v86 = objc_opt_class();
      _accessoryConfigurationAsClass(v13, v86);
      v87 = [objc_claimAutoreleasedReturnValue() selectedTintColor];
      v88 = v87;
      if (v87)
      {
        v89 = v87;
      }

      else
      {
        v89 = v55;
      }

      v90 = v22;
      v91 = v89;

      v55 = v91;
      v22 = v90;
    }

    v92 = v120;
    v93 = v55;
LABEL_77:
    [v92 setAccessoryTintColor:v93];
    [v120 setAccessoryBackgroundColor:v36];
    [v120 setAccessoryUsesMonochromaticTreatment:v22];
LABEL_84:

    goto LABEL_85;
  }

  if (v16 == 6)
  {
    v118 = v14;
    v68 = v120;
    v69 = objc_opt_class();
    if (v12)
    {
      _accessoryAsClass(v12, v69);
      v70 = [objc_claimAutoreleasedReturnValue() _customImage];
      [v12 rotationAngle];
      v72 = v71;
      v112 = [v12 actionHandler];
      v73 = 0;
      v74 = v12;
    }

    else
    {
      _accessoryConfigurationAsClass(v13, v69);
      v70 = [objc_claimAutoreleasedReturnValue() _customImage];
      v73 = [v13 selectedTintColor];
      [v13 rotationAngle];
      v72 = v96;
      v112 = 0;
      v74 = v13;
    }

    v97 = v119;
    v98 = [(UICollectionViewListCell *)v119 _constants];
    if (!v70)
    {
      if (objc_opt_respondsToSelector())
      {
        v97 = v119;
        v70 = [v98 defaultOutlineDisclosureImageForView:v119];
      }

      else
      {
        v70 = 0;
        v97 = v119;
      }
    }

    v114 = v98;
    v104 = v24;
    v116 = v73;
    if ([(UICollectionViewCell *)v97 isSelected])
    {
      if (v73)
      {
        v105 = v73;
      }

      else
      {
        v105 = v104;
      }

      v106 = v105;

      v104 = v106;
    }

    [v68 setAccessoryTintColor:v104];
    [v68 setAccessoryUsesMonochromaticTreatment:v22];
    v107 = [(UICollectionViewListCell *)v119 _constants];
    [v68 setConstants:v107];

    [v68 setImage:v70];
    [v68 setRotationAngle:v72];
    [v68 setRotated:{objc_msgSend(v118, "isExpanded")}];
    v108 = [v68 control];
    v109 = v108;
    if (v112)
    {
      [v108 removeTarget:v119 action:sel__toggleExpansionState forControlEvents:0x2000];
    }

    else
    {
      [v108 addTarget:v119 action:sel__toggleExpansionState forControlEvents:0x2000];
    }

    [v68 setActionHandler:v112];
    v14 = v118;
  }

  else
  {
    v42 = v22;
    v43 = v13;
    v44 = v14;
    v45 = objc_opt_class();
    _accessoryViewAsClass(v120, v45);
    objc_claimAutoreleasedReturnValue();
    v46 = objc_opt_class();
    if (v12)
    {
      _accessoryAsClass(v12, v46);
      v47 = [objc_claimAutoreleasedReturnValue() text];
      v48 = [v12 font];
      v49 = [v12 adjustsFontForContentSizeCategory];
      v50 = v12;
    }

    else
    {
      v50 = v43;
      _accessoryConfigurationAsClass(v43, v46);
      v47 = [objc_claimAutoreleasedReturnValue() text];
      v48 = [v43 font];
      v49 = [v43 adjustsFontForContentSizeCategory];
    }

    [(_UITableViewCellBadge *)v120 setFont:v48];
    if (v120)
    {
      [v120[52] setAdjustsFontForContentSizeCategory:v49];
      [(_UITableViewCellBadge *)v120 setAccessoryUsesMonochromaticTreatment:v42];
      [v120[52] setText:v47];
    }

    else
    {
      [(_UITableViewCellBadge *)0 setAccessoryUsesMonochromaticTreatment:v42];
    }

    [(_UITableViewCellBadge *)v120 setColor:v24];
    [v120 setBackgroundColor:v36];

    v14 = v44;
    v13 = v43;
  }

LABEL_86:
}

- (void)_updateCustomAccessoryView:(id)a3 withCellAccessory:(id)a4 orConfiguration:(id)a5 usingState:(id)a6 isUserInitiated:(BOOL)a7
{
  v19 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [(UIView *)self traitCollection];
  v15 = [v14 _splitViewControllerContext];

  if ((*(&self->_listCellFlags + 1) & 7) == 4)
  {
    v16 = 3;
  }

  else if ((*(&self->_listCellFlags + 1) & 7) == 3)
  {
    if (v15 == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [(UIView *)self traitCollection];
  v18 = [(UICollectionViewListCell *)self _shouldUseMonochromaticTreatmentForCellAccessory:v13 orConfiguration:v12 sidebarStyle:v16 cellConfigurationState:v11 traitCollection:v17];

  if (v18)
  {
    [v19 _setMonochromaticTreatment:1];
  }

  [v19 _setEnableMonochromaticTreatment:v18];
}

- (BOOL)_shouldUseMonochromaticTreatmentForCellAccessory:(id)a3 orConfiguration:(id)a4 sidebarStyle:(int64_t)a5 cellConfigurationState:(id)a6 traitCollection:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = [v13 _monochromaticTreatment];
  if (v17 == 1)
  {
    v19 = 1;
    goto LABEL_19;
  }

  if (!v17)
  {
LABEL_8:
    v19 = 0;
    goto LABEL_19;
  }

  if (v17 != -1)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:1736 description:{@"UICollectionView internal inconsistency: unknown monochromatic treatment case (%ld)", objc_msgSend(v13, "_monochromaticTreatment")}];

    goto LABEL_8;
  }

  if (v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v14;
  }

  v21 = [v18 tintColor];
  if (!v21 && (([v13 _isSystemType] & 1) != 0 || objc_msgSend(v14, "_isSystemType")))
  {
    if (v13)
    {
      v22 = v13;
    }

    else
    {
      v22 = v14;
    }

    v23 = [v22 _systemType];
    v24 = [(UICollectionViewListCell *)self _constants];
    v19 = [v24 shouldUseMonochromaticTreatmentForCellAccessorySystemType:v23 sidebarStyle:a5 cellConfigurationState:v15 traitCollection:v16];
  }

  else
  {
    v19 = 0;
  }

LABEL_19:
  return v19;
}

- (void)setAccessories:(NSArray *)accessories
{
  v4 = accessories;
  v5 = &v37;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  if (*(&self->_listCellFlags + 5))
  {
    v7 = 1;
  }

  else
  {
    v6 = [(NSArray *)self->_accessories count];
    v7 = v6 != [(NSArray *)v4 count];
    v5 = v38;
  }

  v40 = v7;
  if ((v5[3] & 1) == 0)
  {
    v8 = self->_accessories;
    v9 = v4;
    v10 = v9;
    if (v8 == v9)
    {

      goto LABEL_32;
    }

    if (v9 && v8)
    {
      v11 = [(NSArray *)v8 isEqual:v9];

      if (v11)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }
  }

  if (v38[3])
  {
    goto LABEL_29;
  }

  v12 = [(NSArray *)self->_accessories sortedArrayUsingSelector:sel__compare_];
  v13 = [(NSArray *)v4 sortedArrayUsingSelector:sel__compare_];
  for (i = 0; i < [v12 count]; ++i)
  {
    v15 = [v12 objectAtIndexedSubscript:i];
    v16 = [v13 objectAtIndexedSubscript:i];
    v17 = [v15 _identifier];
    v18 = [v16 _identifier];
    v19 = [v17 isEqualToString:v18];

    if ((v19 & 1) == 0)
    {
      goto LABEL_25;
    }

    v20 = v15;
    v21 = v16;
    v22 = v21;
    if (v20 == v21)
    {

      goto LABEL_24;
    }

    if (v20 && v21)
    {
      v23 = [v20 isEqual:v21];

      if (v23)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    if (![v22 _canDirectlyUpdateExistingAccessoryViewFrom:v20])
    {
LABEL_25:
      *(v38 + 24) = 1;

      break;
    }

LABEL_24:
  }

  if ((v38[3] & 1) == 0)
  {
    v24 = [(NSDictionary *)self->_accessoriesByIdentifier mutableCopy];
    accessoriesByIdentifier = self->_accessoriesByIdentifier;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __43__UICollectionViewListCell_setAccessories___block_invoke;
    v32[3] = &unk_1E70FE530;
    v33 = v12;
    v34 = v13;
    v26 = v24;
    v35 = v26;
    v36 = &v37;
    [(NSDictionary *)accessoriesByIdentifier enumerateKeysAndObjectsUsingBlock:v32];
    v27 = self->_accessoriesByIdentifier;
    self->_accessoriesByIdentifier = v26;
    v28 = v26;
  }

LABEL_29:
  v29 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4 copyItems:1];
  v30 = self->_accessories;
  self->_accessories = v29;

  if (*(v38 + 24) == 1)
  {
    v31 = self->_accessoriesByIdentifier;
    self->_accessoriesByIdentifier = 0;

    [(UICollectionViewListCell *)self _setNeedsUpdateAccessories];
  }

  else
  {
    [(UICollectionViewListCell *)self _systemAccessoriesChanged];
  }

LABEL_32:
  _Block_object_dispose(&v37, 8);
}

void __43__UICollectionViewListCell_setAccessories___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [*(a1 + 32) indexOfObject:a3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
  }

  else
  {
    v8 = [*(a1 + 40) objectAtIndexedSubscript:v7];
    [*(a1 + 48) setObject:v8 forKey:v9];
  }
}

- (void)setLeadingAccessoryConfigurations:(id)a3
{
  v4 = a3;
  v5 = self->_leadingAccessoryConfigurations;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSArray *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v10 copyItems:1];
    leadingAccessoryConfigurations = self->_leadingAccessoryConfigurations;
    self->_leadingAccessoryConfigurations = v8;

    [(UICollectionViewListCell *)self _setNeedsUpdateAccessories];
  }

LABEL_9:
}

- (NSArray)leadingAccessoryConfigurations
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_leadingAccessoryConfigurations copyItems:1];

  return v2;
}

- (void)setTrailingAccessoryConfigurations:(id)a3
{
  v4 = a3;
  v5 = self->_trailingAccessoryConfigurations;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSArray *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v10 copyItems:1];
    trailingAccessoryConfigurations = self->_trailingAccessoryConfigurations;
    self->_trailingAccessoryConfigurations = v8;

    [(UICollectionViewListCell *)self _setNeedsUpdateAccessories];
  }

LABEL_9:
}

- (NSArray)trailingAccessoryConfigurations
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_trailingAccessoryConfigurations copyItems:1];

  return v2;
}

- (void)setLeadingEditingAccessoryConfigurations:(id)a3
{
  v4 = a3;
  v5 = self->_leadingEditingAccessoryConfigurations;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSArray *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v10 copyItems:1];
    leadingEditingAccessoryConfigurations = self->_leadingEditingAccessoryConfigurations;
    self->_leadingEditingAccessoryConfigurations = v8;

    [(UICollectionViewListCell *)self _setNeedsUpdateAccessories];
  }

LABEL_9:
}

- (NSArray)leadingEditingAccessoryConfigurations
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_leadingEditingAccessoryConfigurations copyItems:1];

  return v2;
}

- (void)setTrailingEditingAccessoryConfigurations:(id)a3
{
  v4 = a3;
  v5 = self->_trailingEditingAccessoryConfigurations;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSArray *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v10 copyItems:1];
    trailingEditingAccessoryConfigurations = self->_trailingEditingAccessoryConfigurations;
    self->_trailingEditingAccessoryConfigurations = v8;

    [(UICollectionViewListCell *)self _setNeedsUpdateAccessories];
  }

LABEL_9:
}

- (NSArray)trailingEditingAccessoryConfigurations
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_trailingEditingAccessoryConfigurations copyItems:1];

  return v2;
}

- (void)_updateConfigurationUsingState:(id)a3
{
  v6.receiver = self;
  v6.super_class = UICollectionViewListCell;
  v4 = a3;
  [(UICollectionViewCell *)&v6 _updateConfigurationUsingState:v4];
  [(UICollectionViewListCell *)self _updateCurrentSystemTypeAccessoryViewsUsingState:v4, v6.receiver, v6.super_class];

  v5 = [(UICollectionViewCell *)self _existingContentView];
  if (objc_opt_respondsToSelector())
  {
    [v5 _defaultListContentConfigurationMayHaveChanged];
  }
}

- (void)_setExpanded:(BOOL)a3
{
  if (((((*(&self->_listCellFlags + 1) & 0x80) == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    if (v3)
    {
      v5 = 128;
    }

    else
    {
      v5 = 0;
    }

    *(&self->_listCellFlags + 1) = *(&self->_listCellFlags + 1) & 0xFFFFFF7F | v5;

    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_performCustomSelectionAction
{
  if ((*(&self->_listCellFlags + 5) & 8) != 0)
  {

    [(UICollectionViewListCell *)self _toggleExpansionState];
  }

  else
  {
    v3 = [(UICollectionViewListCell *)self _popUpMenuAccessoryForCustomSelectionAction];
    if (v3)
    {
      [(UICollectionViewListCell *)self _presentPopUpMenuForAccessory:v3];
    }

    else
    {
      v4.receiver = self;
      v4.super_class = UICollectionViewListCell;
      [(UICollectionViewCell *)&v4 _performCustomSelectionAction];
    }
  }
}

- (void)_presentPopUpMenuForAccessory:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = self;
  v5 = [(UICellAccessoryManager *)self->_accessoryManager currentConfiguration];
  v6 = [v5 trailingAccessories];
  v7 = [v5 leadingAccessories];
  v8 = [v6 arrayByAddingObjectsFromArray:v7];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v10)
  {
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 identifier];
        v15 = [v4 _identifier];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          v10 = [v13 view];
          v17 = objc_opt_class();
          _accessoryViewAsClass(v10, v17);
          objc_claimAutoreleasedReturnValue();

          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (os_variant_has_internal_diagnostics())
  {
    if (!v10)
    {
      v18 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v26 = v20;
        _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Unable to obtain popup menu accessory view in cell: %@", buf, 0xCu);
      }
    }
  }

  else if (!v10)
  {
    v19 = *(__UILogGetCategoryCachedImpl("Assert", &_presentPopUpMenuForAccessory____s_category) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v20;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Unable to obtain popup menu accessory view in cell: %@", buf, 0xCu);
    }
  }

  [v10 performPrimaryAction];
}

- (unint64_t)_validatedDisclosureActionForKey:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionReusableView *)self _layoutAttributes];
  v6 = [(UICollectionViewLayoutAttributes *)v5 _existingListAttributes];

  if (v6 && (-[UICollectionViewListCell _itemIdentifier](self, "_itemIdentifier"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (disclosureActionHandler = self->__disclosureActionHandler, v7, disclosureActionHandler) && ([v4 modifierFlags] & 0xFFFFFFFFFFDFFFFFLL) == 0)
  {
    v11 = [(UIView *)self effectiveUserInterfaceLayoutDirection];
    if ([v4 keyCode] == 80)
    {
      if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
      v12 = [v4 keyCode];
      v13 = 2;
      if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
      {
        v13 = 3;
      }

      if (v12 == 79)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_canPerformActionForKey:(id)a3
{
  v3 = self;
  v4 = [(UICollectionViewListCell *)self _validatedDisclosureActionForKey:a3];
  if (v4 == 3)
  {
    if ([(UICollectionViewListCell *)v3 _expanded])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v5 = [(UICollectionViewListCell *)v3 _parentFocusItem];
      LOBYTE(v3) = v5 != 0;
    }
  }

  else if (v4 == 2)
  {
    LODWORD(v3) = ![(UICollectionViewListCell *)v3 _expanded];
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)_performActionForKey:(id)a3
{
  v4 = [(UICollectionViewListCell *)self _validatedDisclosureActionForKey:a3];
  if (v4)
  {
    v5 = [(UICollectionViewListCell *)self _parentFocusItem];
    v6 = [(UICollectionViewListCell *)self _expanded];
    if (v4 == 3 && !v6 && v5)
    {
      v7 = [(UIView *)self _focusSystem];
      v8 = [v7 _updateFocusImmediatelyToEnvironment:v5];
    }

    else
    {
      disclosureActionHandler = self->__disclosureActionHandler;
      v7 = [(UICollectionViewListCell *)self _itemIdentifier];
      v8 = disclosureActionHandler[2](disclosureActionHandler, v4, v7);
    }

    LOBYTE(v4) = v8;
  }

  return v4;
}

- (void)_toggleExpansionState
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_accessories;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v4)
  {

LABEL_18:
    v13 = [(UICollectionViewListCell *)self _itemIdentifier];
    if (v13)
    {
      disclosureActionHandler = self->__disclosureActionHandler;
      if (disclosureActionHandler)
      {
        disclosureActionHandler[2](disclosureActionHandler, 1, v13);
      }
    }

    return;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v16;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v15 + 1) + 8 * i);
      if (([v9 isHidden] & 1) == 0 && objc_msgSend(v9, "_isSystemType") && objc_msgSend(v9, "_systemType") == 6 && _UICellAccessoryOutlineDisclosureBehavesAsDisplayedForCurrentState(v9, -[UICollectionViewCell isEditing](self, "isEditing")))
      {
        v10 = objc_opt_class();
        _accessoryAsClass(v9, v10);
        v11 = [objc_claimAutoreleasedReturnValue() actionHandler];

        if (v11)
        {
          v12 = [v9 actionHandler];
          v12[2]();

          v6 = 1;
        }
      }
    }

    v5 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v5);

  if ((v6 & 1) == 0)
  {
    goto LABEL_18;
  }
}

- (void)setIndentsAccessories:(BOOL)indentsAccessories
{
  if (((((*(&self->_listCellFlags + 1) & 0x1000) == 0) ^ indentsAccessories) & 1) == 0)
  {
    v9 = v3;
    if (indentsAccessories)
    {
      v8 = 4096;
    }

    else
    {
      v8 = 0;
    }

    *(&self->_listCellFlags + 1) = *(&self->_listCellFlags + 1) & 0xFFFFEFFF | v8;
    [(UICollectionViewListCell *)self _updateAccessoryLayoutMetrics:v4];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setIndentationLevel:(int64_t)a3
{
  if (self->_indentationLevel != a3)
  {
    self->_indentationLevel = a3;
    [(UICollectionViewListCell *)self _updateAccessoryLayoutMetrics];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setDefaultIndentationLevel:(int64_t)a3
{
  self->_defaultIndentationLevel = a3;
  if ((*(&self->_listCellFlags + 5) & 2) == 0)
  {
    [(UICollectionViewListCell *)self _setIndentationLevel:?];
  }
}

- (void)_setIndentationWidth:(double)a3
{
  if (self->_indentationWidth != a3)
  {
    self->_indentationWidth = a3;
    [(UICollectionViewListCell *)self _updateAccessoryLayoutMetrics];

    [(UIView *)self setNeedsLayout];
  }
}

- (UIEdgeInsets)_adjustedRawLayoutMargins:(UIEdgeInsets)a3 withLeadingLayoutMarginAdjustment:(double)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v10 = [(UIView *)self _shouldReverseLayoutDirection];
  v11 = *(&self->_listCellFlags + 1);
  if (v10)
  {
    if ((v11 & 0x2000) != 0)
    {
      right = right + a4;
    }

    else
    {
      [(UICollectionReusableView *)self _concreteDefaultLayoutMargins];
      right = v12 + a4;
    }
  }

  else if ((v11 & 0x2000) != 0)
  {
    left = left + a4;
  }

  else
  {
    [(UICollectionReusableView *)self _concreteDefaultLayoutMargins];
    left = v13 + a4;
  }

  v14 = top;
  v15 = left;
  v16 = bottom;
  v17 = right;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)_setRawLayoutMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  extraLeadingLayoutMarginForIndentation = self->_extraLeadingLayoutMarginForIndentation;
  if ([(UIView *)self _shouldReverseLayoutDirection])
  {
    v9 = right;
  }

  else
  {
    v9 = left;
  }

  *(&self->_listCellFlags + 1) = *(&self->_listCellFlags + 1) & 0xFFFFDFFF | ((v9 != -1.79769313e308) << 13);
  if (extraLeadingLayoutMarginForIndentation > 0.0)
  {
    [(UICollectionViewListCell *)self _adjustedRawLayoutMargins:top withLeadingLayoutMarginAdjustment:left, bottom, right, extraLeadingLayoutMarginForIndentation];
    top = v10;
    left = v11;
    bottom = v12;
    right = v13;
  }

  v14.receiver = self;
  v14.super_class = UICollectionViewListCell;
  [(UIView *)&v14 _setRawLayoutMargins:top, left, bottom, right];
}

- (id)_viewForMultiSelectAccessory
{
  v3 = [(UICellAccessoryManager *)self->_accessoryManager currentConfiguration];
  if ([(NSArray *)self->_accessories count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__UICollectionViewListCell__viewForMultiSelectAccessory__block_invoke;
    aBlock[3] = &unk_1E70FE558;
    aBlock[4] = self;
    v4 = _Block_copy(aBlock);
    v5 = [v3 leadingAccessories];
    v6 = v4[2](v4, v5);

    if (v6)
    {
LABEL_5:

      goto LABEL_15;
    }

    v7 = [v3 trailingAccessories];
    v8 = v4[2](v4, v7);

    if (v8)
    {
      v6 = v8;

      goto LABEL_5;
    }

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v9 = [(UICellAccessoryManager *)self->_accessoryManager currentConfigurationIdentifier];
  v10 = [v9 isEqualToString:0x1EFBA01F0];

  if (v10)
  {
    leadingEditingAccessoryConfigurations = self->_leadingEditingAccessoryConfigurations;
    v12 = [v3 leadingAccessories];
    v6 = __56__UICollectionViewListCell__viewForMultiSelectAccessory__block_invoke_2(leadingEditingAccessoryConfigurations, v12);

    if (v6)
    {
      goto LABEL_15;
    }

    v13 = 800;
  }

  else
  {
    leadingAccessoryConfigurations = self->_leadingAccessoryConfigurations;
    v15 = [v3 leadingAccessories];
    v6 = __56__UICollectionViewListCell__viewForMultiSelectAccessory__block_invoke_2(leadingAccessoryConfigurations, v15);

    if (v6)
    {
      goto LABEL_15;
    }

    v13 = 784;
  }

  v16 = *(&self->super.super.super.super.super.isa + v13);
  v17 = [v3 trailingAccessories];
  v6 = __56__UICollectionViewListCell__viewForMultiSelectAccessory__block_invoke_2(v16, v17);

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v6;
}

id __56__UICollectionViewListCell__viewForMultiSelectAccessory__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = *(*(a1 + 32) + 664);
        v10 = [v8 identifier];
        v11 = [v9 objectForKeyedSubscript:v10];

        if (([v11 isHidden] & 1) == 0 && objc_msgSend(v11, "_isSystemType") && objc_msgSend(v11, "_systemType") == 5)
        {
          v12 = [v8 view];

          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

id __56__UICollectionViewListCell__viewForMultiSelectAccessory__block_invoke_2(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5 == [v4 count] && ((v6 = objc_msgSend(v3, "count"), v7 = objc_msgSend(v4, "count"), v6 >= v7) ? (v8 = v7) : (v8 = v6), v8))
  {
    v9 = 0;
    while (1)
    {
      v10 = [v3 objectAtIndexedSubscript:v9];
      if ([v10 _isSystemType])
      {
        if ([v10 _systemType] == 5)
        {
          break;
        }
      }

      ++v9;
      v11 = [v3 count];
      v12 = [v4 count];
      if (v11 >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      if (v9 >= v13)
      {
        goto LABEL_13;
      }
    }

    v16 = [v4 objectAtIndexedSubscript:v9];
    v14 = [v16 view];
  }

  else
  {
LABEL_13:
    v14 = 0;
  }

  return v14;
}

- (int64_t)_listStyle
{
  v2 = (*(&self->_listCellFlags + 1) & 7u) - 1;
  if (v2 < 4)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_listCellStyle
{
  v2 = [(UICollectionViewCell *)self _existingContentView];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  v3 = [v2 _listCellStyle];
  if ((v3 + 1) >= 6)
  {
    v5 = v3;
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIListCellStyle _UIListCellStyleForContentViewCellStyle(_UIContentViewCellStyle)"];
    [v6 handleFailureInFunction:v7 file:@"_UIContentViewDefaultStylingObtaining_Internal.h" lineNumber:27 description:{@"UIKit internal inconsistency: unknown content view cell style (%ld)", v5}];

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = qword_18A678EC0[v3 + 1];
LABEL_6:

  return v4;
}

- (int64_t)_listCellProminence
{
  v2 = [(UICollectionViewCell *)self _existingContentView];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_4;
  }

  v3 = [v2 _listCellProminence];
  if (v3 >= 3)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIListCellProminence _UIListCellProminenceForContentViewProminence(_UIContentViewCellProminence)"];
    [v4 handleFailureInFunction:v5 file:@"_UIContentViewDefaultStylingObtaining_Internal.h" lineNumber:41 description:{@"UIKit internal inconsistency: unknown content view prominence (%ld)", v3}];

LABEL_4:
    v3 = 0;
  }

  return v3;
}

- (int64_t)_tableStyle
{
  v2 = (*(&self->_listCellFlags + 1) & 7) - 1;
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return qword_18A678EF0[v2];
  }
}

- (void)_deleteAccessoryTriggered
{
  v6 = [(UICollectionReusableView *)self _collectionView];
  v3 = [v6 indexPathForCell:self];
  if (v3)
  {
    v4 = [v6 collectionViewLayout];
    v5 = v4;
    if (v4)
    {
      [*(v4 + 136) revealTrailingSwipeActionsForIndexPath:v3];
    }
  }
}

- (void)_reorderControl:(id)a3 didReceiveTouchesBegan:(id)a4
{
  v8 = [a4 anyObject];
  if (!v8)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2286 description:{@"Invalid parameter not satisfying: %@", @"touch != nil"}];
  }

  v6 = [(UICollectionReusableView *)self _collectionView];
  [v6 _immediatelyBeginDruidBasedReorderIfPossibleWithTouch:v8];
}

- (BOOL)_reorderControlShouldBeginReordering:(id)a3
{
  v4 = [(UICollectionReusableView *)self _collectionView];
  v5 = v4;
  if (v4 && [v4 _canBeginReorderingItem])
  {
    v6 = [v5 indexPathForCell:self];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_reorderControlDidBeginReordering:(id)a3
{
  v8 = a3;
  v5 = [(UICollectionReusableView *)self _collectionView];
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2300 description:@"List cell cannot reorder without a collection view"];
  }

  v6 = [v5 indexPathForCell:self];
  if (v6)
  {
    [v5 beginInteractiveMovementForItemAtIndexPath:v6];
  }

  else
  {
    [v8 cancelReorderingGesture];
  }
}

- (void)_reorderControl:(id)a3 didUpdateWithOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v19 = a3;
  v8 = [(UICollectionReusableView *)self _collectionView];
  if (!v8)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2315 description:@"List cell cannot reorder without a collection view"];
  }

  if ([v8 _isReordering])
  {
    [(UIView *)self center];
    v10 = v9;
    v12 = v11;
    v13 = [(UIView *)self superview];
    [v8 convertPoint:v13 fromView:{v10, v12}];
    v15 = v14;
    v17 = v16;

    [v8 updateInteractiveMovementTargetPosition:{x + v15, y + v17}];
  }

  else
  {
    [v19 cancelReorderingGesture];
  }
}

- (void)_reorderControlDidEndReordering:(id)a3 cancelled:(BOOL)a4
{
  v4 = a4;
  v7 = [(UICollectionReusableView *)self _collectionView];
  v9 = v7;
  if (v7)
  {
    if (v4)
    {
LABEL_3:
      [v7 cancelInteractiveMovement];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2337 description:@"List cell cannot reorder without a collection view"];

    v7 = 0;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  [v7 endInteractiveMovement];
LABEL_6:
}

- (UILayoutGuide)separatorLayoutGuide
{
  v33[4] = *MEMORY[0x1E69E9840];
  separatorLayoutGuide = self->_separatorLayoutGuide;
  if (!separatorLayoutGuide)
  {
    v4 = objc_alloc_init(UILayoutGuide);
    v5 = self->_separatorLayoutGuide;
    self->_separatorLayoutGuide = v4;

    v6 = [(UICollectionViewListCell *)self _owningViewForSeparatorLayoutGuide];
    [v6 addLayoutGuide:self->_separatorLayoutGuide];

    [(UILayoutGuide *)self->_separatorLayoutGuide _setLockedToOwningView:1];
    [(UILayoutGuide *)self->_separatorLayoutGuide _setShouldBeArchived:1];
    [(UILayoutGuide *)self->_separatorLayoutGuide setIdentifier:@"UICollectionViewListCellSeparatorLayoutGuide"];
    v7 = [(UILayoutGuide *)self->_separatorLayoutGuide heightAnchor];
    v8 = [v7 constraintEqualToConstant:_ListCellSeparatorLayoutGuideHeightForCell(self)];

    [(NSLayoutConstraint *)v8 setShouldBeArchived:1];
    [(NSLayoutConstraint *)v8 setIdentifier:@"UICollectionViewListCell-height-separatorLayoutGuide-constraint"];
    separatorLayoutGuideHeightConstraint = self->_separatorLayoutGuideHeightConstraint;
    self->_separatorLayoutGuideHeightConstraint = v8;
    v10 = v8;

    v11 = [(UILayoutGuide *)self->_separatorLayoutGuide bottomAnchor];
    v12 = [(UICollectionViewListCell *)self _owningViewForSeparatorLayoutGuide];
    v13 = [v12 bottomAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];

    [v14 setShouldBeArchived:1];
    [v14 setIdentifier:@"UICollectionViewListCell-bottom-separatorLayoutGuide-constraint"];
    v15 = [(UILayoutGuide *)self->_separatorLayoutGuide leadingAnchor];
    v16 = [(UICollectionViewListCell *)self _owningViewForSeparatorLayoutGuide];
    v17 = [v16 leadingAnchor];
    v18 = _ListCellCreateSeparatorLayoutGuideLeadingConstraint(v15, v17, @"UICollectionViewListCell-leading-separatorLayoutGuide-constraint");

    separatorLayoutGuideLeadingConstraint = self->_separatorLayoutGuideLeadingConstraint;
    self->_separatorLayoutGuideLeadingConstraint = v18;
    v20 = v18;

    v21 = [(UILayoutGuide *)self->_separatorLayoutGuide trailingAnchor];
    v22 = [(UICollectionViewListCell *)self _owningViewForSeparatorLayoutGuide];
    v23 = [v22 trailingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];

    [(NSLayoutConstraint *)v24 setShouldBeArchived:1];
    LODWORD(v25) = 1132068864;
    [(NSLayoutConstraint *)v24 setPriority:v25];
    [(NSLayoutConstraint *)v24 setIdentifier:@"UICollectionViewListCell-trailing-separatorLayoutGuide-constraint"];
    separatorLayoutGuideTrailingConstraint = self->_separatorLayoutGuideTrailingConstraint;
    self->_separatorLayoutGuideTrailingConstraint = v24;
    v27 = v24;

    v28 = self->_separatorLayoutGuide;
    v33[0] = v10;
    v33[1] = v20;
    v33[2] = v14;
    v33[3] = v27;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [(UILayoutGuide *)v28 _setSystemConstraints:v29];

    v30 = MEMORY[0x1E69977A0];
    v31 = [(UILayoutGuide *)self->_separatorLayoutGuide _systemConstraints];
    [v30 activateConstraints:v31];

    [(UICollectionViewListCell *)self _updateSeparatorLayoutGuideForSectionSeparatorInsets:self->_sectionSeparatorInsets.top, self->_sectionSeparatorInsets.leading, self->_sectionSeparatorInsets.bottom, self->_sectionSeparatorInsets.trailing];
    [(UICollectionViewListCell *)self _updateContentViewConstraintsIfNeeded];

    separatorLayoutGuide = self->_separatorLayoutGuide;
  }

  return separatorLayoutGuide;
}

- (void)_updateSeparatorLayoutGuideForSectionSeparatorInsets:(NSDirectionalEdgeInsets)a3
{
  if (!self->_separatorLayoutGuide)
  {
    return;
  }

  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v28 = [(UICollectionViewCell *)self _existingContentView];
  v8 = objc_opt_respondsToSelector();
  if ((v8 & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v28 _primaryTextLayoutRect];
  }

  v10 = [(UICollectionViewListCell *)self separatorLayoutGuide];
  v11 = [(NSLayoutConstraint *)self->_separatorLayoutGuideLeadingConstraint isActive];
  if (v9)
  {
    if (!v11 || (*(&self->_listCellFlags + 5) & 0x80) == 0)
    {
      v12 = self->_separatorLayoutGuideLeadingConstraint;
      [(NSLayoutConstraint *)v12 setActive:0];
      v13 = [v10 leadingAnchor];
      v14 = [v9 leadingAnchor];
      v15 = _ListCellCreateSeparatorLayoutGuideLeadingConstraint(v13, v14, @"UICollectionViewListCell-primaryText-leading-separatorLayoutGuide-constraint");

      _ListCellReplaceSystemConstraintInLayoutGuide(v10, v12, v15);
      [(NSLayoutConstraint *)v15 setActive:1];
      separatorLayoutGuideLeadingConstraint = self->_separatorLayoutGuideLeadingConstraint;
      self->_separatorLayoutGuideLeadingConstraint = v15;

      *(&self->_listCellFlags + 1) |= 0x8000u;
LABEL_14:
    }
  }

  else if (!v11 || (*(&self->_listCellFlags + 5) & 0x80) != 0)
  {
    v12 = self->_separatorLayoutGuideLeadingConstraint;
    [(NSLayoutConstraint *)v12 setActive:0];
    v17 = [v10 leadingAnchor];
    v18 = [(UICollectionViewListCell *)self _owningViewForSeparatorLayoutGuide];
    v19 = [v18 leadingAnchor];
    v20 = _ListCellCreateSeparatorLayoutGuideLeadingConstraint(v17, v19, @"UICollectionViewListCell-leading-separatorLayoutGuide-constraint");

    _ListCellReplaceSystemConstraintInLayoutGuide(v10, v12, v20);
    [(NSLayoutConstraint *)v20 setActive:1];
    v21 = self->_separatorLayoutGuideLeadingConstraint;
    self->_separatorLayoutGuideLeadingConstraint = v20;

    *(&self->_listCellFlags + 1) &= ~0x8000u;
    goto LABEL_14;
  }

  v22 = [(UICollectionViewListCell *)self _owningViewForSeparatorLayoutGuide];

  if (v22 != self)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2489 description:@"The separatorLayoutGuide is expected to be added directly to the cell"];

    if ((v8 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v8)
  {
LABEL_17:
    [(UICollectionViewListCell *)self _preferredSeparatorInsetsFromContentViewWithDefaultInsets:top, leading, bottom, trailing];
    leading = v23;
    trailing = v24;
  }

LABEL_18:
  v25 = 0.0;
  if ((*(&self->_listCellFlags + 1) & 0x8000) == 0)
  {
    v25 = leading;
  }

  [(NSLayoutConstraint *)self->_separatorLayoutGuideLeadingConstraint setConstant:v25];
  [(NSLayoutConstraint *)self->_separatorLayoutGuideTrailingConstraint setConstant:-trailing];
}

- (NSDirectionalEdgeInsets)_separatorInsetsFromLayoutGuide
{
  if (!self->_separatorLayoutGuide)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2513 description:@"Cannot get insets with a nil _separatorLayoutGuide"];
  }

  v4 = [(UICollectionViewListCell *)self _owningViewForSeparatorLayoutGuide];

  if (v4 != self)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2515 description:@"The separatorLayoutGuide is expected to be added directly to the cell"];
  }

  [(UILayoutGuide *)self->_separatorLayoutGuide layoutFrame];
  v6 = v5;
  v32 = v7;
  v33 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v34.origin.x = v6;
  v34.origin.y = v8;
  v34.size.width = v10;
  v34.size.height = v12;
  MinX = CGRectGetMinX(v34);
  v35.origin.x = v14;
  v35.origin.y = v16;
  v35.size.width = v18;
  v35.size.height = v20;
  v22 = MinX - CGRectGetMinX(v35);
  v36.origin.x = v14;
  v36.origin.y = v16;
  v36.size.width = v18;
  v36.size.height = v20;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.y = v32;
  v37.origin.x = v33;
  v37.size.width = v10;
  v37.size.height = v12;
  v24 = MaxX - CGRectGetMaxX(v37);
  v25 = [(UIView *)self _shouldReverseLayoutDirection];
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = v22;
  }

  if (v25)
  {
    v27 = v22;
  }

  else
  {
    v27 = v24;
  }

  v28 = 0.0;
  v29 = 0.0;
  result.trailing = v27;
  result.bottom = v29;
  result.leading = v26;
  result.top = v28;
  return result;
}

- (double)_contentView:(id)a3 inset:(double)a4 convertedToCellInsetOnEdge:(unint64_t)a5
{
  v9 = a3;
  if (a5 != 2 && a5 != 8)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2531 description:{@"Invalid parameter not satisfying: %@", @"edge == NSDirectionalRectEdgeLeading || edge == NSDirectionalRectEdgeTrailing"}];
  }

  v11 = [(UIView *)self _shouldReverseLayoutDirection];
  [v9 bounds];
  if ((a5 == 2) != v11)
  {
    v15 = a4;
  }

  else
  {
    v15 = 0.0;
  }

  [(UIView *)self convertRect:v9 fromView:v15 + v12, v13 + 0.0, v14 - (a4 + 0.0)];
  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = 8;
  if (v11)
  {
    v24 = 2;
  }

  if (v24 == a5)
  {
    [(UIView *)self bounds];
    MaxX = CGRectGetMaxX(v29);
    v30.origin.x = v20;
    v30.origin.y = v21;
    v30.size.width = v22;
    v30.size.height = v23;
    v26 = MaxX - CGRectGetMaxX(v30);
  }

  else
  {
    MinX = CGRectGetMinX(*&v16);
    [(UIView *)self bounds];
    v26 = MinX - CGRectGetMinX(v31);
  }

  return v26;
}

- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsFromContentViewWithDefaultInsets:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v8 = [(UIView *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  if (v9 != 6)
  {
    v14 = [(UICollectionViewCell *)self _existingContentView];
    if (objc_opt_respondsToSelector())
    {
      [v14 _preferredLeadingSeparatorInset];
      v12 = leading;
      if (v15 != 1.79769313e308)
      {
        [(UICollectionViewListCell *)self _contentView:v14 inset:2 convertedToCellInsetOnEdge:?];
        v12 = v16;
      }
    }

    else
    {
      v12 = leading;
    }

    if (objc_opt_respondsToSelector())
    {
      [v14 _preferredTrailingSeparatorInset];
      if (v17 != 1.79769313e308)
      {
        [(UICollectionViewListCell *)self _contentView:v14 inset:8 convertedToCellInsetOnEdge:?];
        trailing = v18;
      }
    }

    self->_lastPreferredLeadingSeparatorInsetFromContentView = v12;
    self->_lastPreferredTrailingSeparatorInsetFromContentView = trailing;

    v10 = trailing;
    v11 = bottom;
    v13 = top;
  }

  v19 = v12;
  result.trailing = v10;
  result.bottom = v11;
  result.leading = v19;
  result.top = v13;
  return result;
}

- (NSDirectionalEdgeInsets)_separatorInsetsFromPrimaryTextLayoutFrameWithDefaultInsets:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v9 = [(UIView *)self traitCollection];
  v10 = [v9 userInterfaceIdiom];

  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  if (v10 != 6)
  {
    if (self->_separatorLayoutGuide)
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2595 description:{@"Invalid parameter not satisfying: %@", @"_separatorLayoutGuide == nil"}];
    }

    v15 = [(UICollectionViewCell *)self _existingContentView:v14];
    v16 = v15;
    if (v15)
    {
      [v15 _primaryTextLayoutFrame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
    }

    else
    {
      v18 = *MEMORY[0x1E695F050];
      v20 = *(MEMORY[0x1E695F050] + 8);
      v22 = *(MEMORY[0x1E695F050] + 16);
      v24 = *(MEMORY[0x1E695F050] + 24);
    }

    v36.origin.x = v18;
    v36.origin.y = v20;
    v36.size.width = v22;
    v36.size.height = v24;
    if (!CGRectIsNull(v36))
    {
      [(UIView *)self convertRect:v16 fromView:v18, v20, v22, v24];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      if ([(UIView *)self _shouldReverseLayoutDirection])
      {
        [(UIView *)self bounds];
        MaxX = CGRectGetMaxX(v37);
        v38.origin.x = v26;
        v38.origin.y = v28;
        v38.size.width = v30;
        v38.size.height = v32;
        leading = MaxX - CGRectGetMaxX(v38);
      }

      else
      {
        v39.origin.x = v26;
        v39.origin.y = v28;
        v39.size.width = v30;
        v39.size.height = v32;
        MinX = CGRectGetMinX(v39);
        [(UIView *)self bounds];
        leading = MinX - CGRectGetMinX(v40);
      }
    }

    v11 = trailing;
    v12 = bottom;
    v13 = leading;
    v14 = top;
  }

  result.trailing = v11;
  result.bottom = v12;
  result.leading = v13;
  result.top = v14;
  return result;
}

- (UIFocusItem)_parentFocusItem
{
  WeakRetained = objc_loadWeakRetained(&self->__parentFocusItem);

  return WeakRetained;
}

@end