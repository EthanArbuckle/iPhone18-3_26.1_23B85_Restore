@interface UICollectionViewListCell
+ (id)_createDefaultContentViewWithFrame:(CGRect)frame;
+ (id)_createVisualProviderForCell:(id)cell;
- (BOOL)_canPerformActionForKey:(id)key;
- (BOOL)_cellSelectionTogglesExpansionState;
- (BOOL)_contentViewShouldBeIndented;
- (BOOL)_hasCustomSelectionAction;
- (BOOL)_isAccompaniedSidebar;
- (BOOL)_performActionForKey:(id)key;
- (BOOL)_reorderControlShouldBeginReordering:(id)reordering;
- (BOOL)_shouldIncreaseCellLeadingLayoutMarginForIndentation;
- (BOOL)_shouldUseMonochromaticTreatmentForCellAccessory:(id)accessory orConfiguration:(id)configuration sidebarStyle:(int64_t)style cellConfigurationState:(id)state traitCollection:(id)collection;
- (NSArray)accessories;
- (NSArray)leadingAccessoryConfigurations;
- (NSArray)leadingEditingAccessoryConfigurations;
- (NSArray)trailingAccessoryConfigurations;
- (NSArray)trailingEditingAccessoryConfigurations;
- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsFromContentViewWithDefaultInsets:(NSDirectionalEdgeInsets)insets;
- (NSDirectionalEdgeInsets)_separatorInsetsFromLayoutGuide;
- (NSDirectionalEdgeInsets)_separatorInsetsFromPrimaryTextLayoutFrameWithDefaultInsets:(NSDirectionalEdgeInsets)insets;
- (UICollectionViewListCell)initWithCoder:(id)coder;
- (UICollectionViewListCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)_adjustedRawLayoutMargins:(UIEdgeInsets)margins withLeadingLayoutMarginAdjustment:(double)adjustment;
- (UIEdgeInsets)_contentViewInset;
- (UIFocusItem)_parentFocusItem;
- (UILayoutGuide)separatorLayoutGuide;
- (UIListContentConfiguration)defaultContentConfiguration;
- (double)_contentView:(id)view inset:(double)inset convertedToCellInsetOnEdge:(unint64_t)edge;
- (id)_cellAccessoriesForConfigurations:(id)configurations isLeadingEdge:(BOOL)edge;
- (id)_cellAccessoryForConfiguration:(id)configuration isLeadingEdge:(BOOL)edge usingState:(id)state;
- (id)_configurationState;
- (id)_createCustomAccessoryViewWithCellAccessory:(id)accessory updatedForState:(id)state;
- (id)_createSystemTypeAccessoryViewWithCellAccessory:(id)accessory orConfiguration:(id)configuration updatedForState:(id)state;
- (id)_defaultBackgroundConfiguration;
- (id)_defaultBackgroundConfigurationUsingSpecificStyling;
- (id)_defaultBackgroundView;
- (id)_defaultContentConfigurationUsingSpecificStyling;
- (id)_defaultSelectedBackgroundView;
- (id)_internalAccessoriesForCellAccessories:(id)accessories usingState:(id)state;
- (id)_popUpMenuAccessory;
- (id)_popUpMenuAccessoryForCustomSelectionAction;
- (id)_preferredLayoutAttributesFittingAttributes:(id)attributes isAnimatingExistingView:(BOOL)view;
- (id)_viewForMultiSelectAccessory;
- (int64_t)_listCellProminence;
- (int64_t)_listCellStyle;
- (int64_t)_listStyle;
- (int64_t)_tableStyle;
- (unint64_t)_validatedDisclosureActionForKey:(id)key;
- (void)_applyCellAccessoriesToNormalConfiguration:(id)configuration editingConfiguration:(id)editingConfiguration;
- (void)_clearChangeHandlersForOldContentView:(id)view;
- (void)_constantsDidChange;
- (void)_createAccessoryManager;
- (void)_deleteAccessoryTriggered;
- (void)_invalidatePreferredSeparatorInsetsFromContentView;
- (void)_layoutAccessoriesAndContentView;
- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)margins;
- (void)_performCustomSelectionAction;
- (void)_presentPopUpMenuForAccessory:(id)accessory;
- (void)_reorderControl:(id)control didReceiveTouchesBegan:(id)began;
- (void)_reorderControl:(id)control didUpdateWithOffset:(CGPoint)offset;
- (void)_reorderControlDidBeginReordering:(id)reordering;
- (void)_reorderControlDidEndReordering:(id)reordering cancelled:(BOOL)cancelled;
- (void)_resetRawLayoutMargins;
- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets;
- (void)_setContentView:(id)view addToHierarchy:(BOOL)hierarchy;
- (void)_setDefaultIndentationLevel:(int64_t)level;
- (void)_setExpanded:(BOOL)expanded;
- (void)_setIndentationLevel:(int64_t)level;
- (void)_setIndentationWidth:(double)width;
- (void)_setLayoutAttributes:(id)attributes;
- (void)_setNeedsUpdateAccessories;
- (void)_setRawLayoutMargins:(UIEdgeInsets)margins;
- (void)_setSelected:(BOOL)selected animated:(BOOL)animated isUserInitiated:(BOOL)initiated;
- (void)_setupChangeHandlersForNewContentView:(id)view;
- (void)_systemAccessoriesChanged;
- (void)_toggleExpansionState;
- (void)_updateAccessoriesIfNeeded;
- (void)_updateAccessoryLayoutMetrics;
- (void)_updateCellSelectionTogglesExpansionState;
- (void)_updateConfigurationUsingState:(id)state;
- (void)_updateConstants;
- (void)_updateContentViewConstraintsIfNeeded;
- (void)_updateCurrentSystemTypeAccessoryViewsUsingState:(id)state;
- (void)_updateCustomAccessoryView:(id)view withCellAccessory:(id)accessory orConfiguration:(id)configuration usingState:(id)state isUserInitiated:(BOOL)initiated;
- (void)_updateDefaultIndentationWidth;
- (void)_updateLeadingLayoutMarginForIndentation;
- (void)_updateSeparatorConfigurationForPreferredAttributes:(id)attributes bounds:(CGRect)bounds isAnimatingExistingView:(BOOL)view;
- (void)_updateSeparatorLayoutGuideForSectionSeparatorInsets:(NSDirectionalEdgeInsets)insets;
- (void)_updateSeparatorLayoutGuideHeight;
- (void)_updateSystemTypeAccessoryView:(id)view withCellAccessory:(id)accessory orConfiguration:(id)configuration usingState:(id)state isUserInitiated:(BOOL)initiated;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessories:(NSArray *)accessories;
- (void)setEditing:(BOOL)editing;
- (void)setIndentsAccessories:(BOOL)indentsAccessories;
- (void)setLeadingAccessoryConfigurations:(id)configurations;
- (void)setLeadingEditingAccessoryConfigurations:(id)configurations;
- (void)setSelectionStyle:(int64_t)style;
- (void)setTrailingAccessoryConfigurations:(id)configurations;
- (void)setTrailingEditingAccessoryConfigurations:(id)configurations;
- (void)traitCollectionDidChange:(id)change;
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
      _defaultBackgroundConfigurationUsingSpecificStyling = ;
    }

    else
    {
      _defaultBackgroundConfigurationUsingSpecificStyling = +[UIBackgroundConfiguration listCellConfiguration];
    }
  }

  else
  {
    _defaultBackgroundConfigurationUsingSpecificStyling = [(UICollectionViewListCell *)self _defaultBackgroundConfigurationUsingSpecificStyling];
  }

  return _defaultBackgroundConfigurationUsingSpecificStyling;
}

- (id)_configurationState
{
  v5.receiver = self;
  v5.super_class = UICollectionViewListCell;
  _configurationState = [(UICollectionViewCell *)&v5 _configurationState];
  [_configurationState setExpanded:(*(&self->_listCellFlags + 1) >> 7) & 1];

  return _configurationState;
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
  accessoryManagerContainerView = [(_UICollectionViewListCellVisualProvider *)self->_visualProvider accessoryManagerContainerView];
  v5 = [(UICellAccessoryManager *)v3 initWithContainerView:accessoryManagerContainerView];

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
    _constants = [(UICollectionViewListCell *)self _constants];
    [_constants defaultIndentationWidthForSidebarStyle:(*(&self->_listCellFlags + 1) & 7) == 3];
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:391 description:{@"The _contentViewConstraints should hold exactly 4 constraints, in order: top, left, bottom, right"}];
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
      contentView = [(UICollectionViewCell *)self contentView];
      [contentView setTranslatesAutoresizingMaskIntoConstraints:0];
      topAnchor = [contentView topAnchor];
      topAnchor2 = [(UIView *)self topAnchor];
      v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v7];

      [v21 setIdentifier:@"UICollectionViewListCell-top-contentView-constraint"];
      leftAnchor = [contentView leftAnchor];
      leftAnchor2 = [(UIView *)self leftAnchor];
      v24 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v9];

      [v24 setIdentifier:@"UICollectionViewListCell-left-contentView-constraint"];
      bottomAnchor = [(UIView *)self bottomAnchor];
      bottomAnchor2 = [contentView bottomAnchor];
      v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v11];

      [v27 setIdentifier:@"UICollectionViewListCell-bottom-contentView-constraint"];
      rightAnchor = [(UIView *)self rightAnchor];
      rightAnchor2 = [contentView rightAnchor];
      v30 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v13];

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

    contentView2 = [(UICollectionViewCell *)self contentView];
    [contentView2 setTranslatesAutoresizingMaskIntoConstraints:1];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)_updateConstants
{
  traitCollection = [(UIView *)self traitCollection];
  obj = _UITableConstantsForTraitCollection(traitCollection);

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
  traitCollection = [(UIView *)self traitCollection];
  _constants = [(UICollectionViewListCell *)self _constants];
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
  v6 = traitCollection;
  v18 = v6;
  v7 = _constants;
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
          style = [objc_claimAutoreleasedReturnValue() style];
          if (style)
          {
            if (style == 1)
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
  _shouldIncreaseCellLeadingLayoutMarginForIndentation = [(UICollectionViewListCell *)self _shouldIncreaseCellLeadingLayoutMarginForIndentation];
  v4 = 0.0;
  if (_shouldIncreaseCellLeadingLayoutMarginForIndentation)
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

  currentConfiguration = [(UICellAccessoryManager *)self->_accessoryManager currentConfiguration];
  leadingAccessories = [currentConfiguration leadingAccessories];
  v3 = [leadingAccessories count] == 0;

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
    _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
    [(UICollectionViewListCell *)self _leadingIndentation];
    v21 = v14 + v20;
    v22 = v18 + v20;
    if (_shouldReverseLayoutDirection)
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

  currentConfiguration = [(UICellAccessoryManager *)self->_accessoryManager currentConfiguration];
  leadingAccessories = [currentConfiguration leadingAccessories];
  v5 = [leadingAccessories count] == 0;

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
      _popUpMenuAccessory = [(UICollectionViewListCell *)self _popUpMenuAccessory];

      if (_popUpMenuAccessory)
      {
        +[UIListContentConfiguration valueCellConfiguration];
      }

      else
      {
        +[UIListContentConfiguration cellConfiguration];
      }
    }
    _defaultContentConfigurationUsingSpecificStyling = ;
  }

  else
  {
    _defaultContentConfigurationUsingSpecificStyling = [(UICollectionViewListCell *)self _defaultContentConfigurationUsingSpecificStyling];
  }

  return _defaultContentConfigurationUsingSpecificStyling;
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
    _collectionView = [(UICollectionReusableView *)self _collectionView];
    [_collectionView _cellPreferredSeparatorInsetsChanged:self];
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

  _popUpMenuAccessoryForCustomSelectionAction = [(UICollectionViewListCell *)self _popUpMenuAccessoryForCustomSelectionAction];

  if (_popUpMenuAccessoryForCustomSelectionAction)
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = UICollectionViewListCell;
  return [(UICollectionViewCell *)&v5 _hasCustomSelectionAction];
}

- (id)_popUpMenuAccessoryForCustomSelectionAction
{
  _popUpMenuAccessory = [(UICollectionViewListCell *)self _popUpMenuAccessory];
  if (_popUpMenuAccessory && [_popUpMenuAccessory _isDisplayedForEditingState:{-[UICollectionViewCell isEditing](self, "isEditing")}])
  {
    v4 = _popUpMenuAccessory;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_createVisualProviderForCell:(id)cell
{
  cellCopy = cell;
  v4 = [[_UICollectionViewListCellVisualProvider_iOS alloc] initWithListCell:cellCopy];

  return v4;
}

+ (id)_createDefaultContentViewWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___UICollectionViewListCell;
  v3 = objc_msgSendSuper2(&v5, sel__createDefaultContentViewWithFrame_, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
  [v3 setEdgesPreservingSuperviewLayoutMargins:15];

  return v3;
}

- (UICollectionViewListCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UICollectionViewListCell;
  v3 = [(UICollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    UICollectionViewListCellCommonInit(v3);
  }

  return v4;
}

- (UICollectionViewListCell)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = UICollectionViewListCell;
  v5 = [(UICollectionViewCell *)&v25 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    UICollectionViewListCellCommonInit(v5);
    v7 = [coderCopy containsValueForKey:@"UIIndentationLevel"];
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
      v6->_indentationLevel = [coderCopy decodeIntegerForKey:@"UIIndentationLevel"];
    }

    v9 = [coderCopy containsValueForKey:@"UIIndentationWidth"];
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
      v6->_indentationWidth = [coderCopy decodeIntegerForKey:@"UIIndentationWidth"];
    }

    if ([coderCopy decodeBoolForKey:@"UIIndentsAccessories"])
    {
      v11 = 4096;
    }

    else
    {
      v11 = 0;
    }

    *(&v6->_listCellFlags + 1) = *(&v6->_listCellFlags + 1) & 0xFFFFEFFF | v11;
    v12 = [coderCopy decodeObjectForKey:@"UIAccessories"];
    if ([v12 count])
    {
      [(UICollectionViewListCell *)v6 setAccessories:v12];
    }

    v13 = [coderCopy decodeObjectForKey:@"UIContentViewConstraints"];
    contentViewConstraints = v6->_contentViewConstraints;
    v6->_contentViewConstraints = v13;

    v15 = [coderCopy decodeObjectForKey:@"UISeparatorLayoutGuide"];
    separatorLayoutGuide = v6->_separatorLayoutGuide;
    v6->_separatorLayoutGuide = v15;

    if (v6->_separatorLayoutGuide)
    {
      if ([coderCopy decodeBoolForKey:@"UISeparatorLayoutGuideLeadingReferencesPrimaryText"])
      {
        v17 = 0x8000;
      }

      else
      {
        v17 = 0;
      }

      *(&v6->_listCellFlags + 1) = *(&v6->_listCellFlags + 1) & 0xFFFF7FFF | v17;
      v18 = [coderCopy decodeObjectForKey:@"UISeparatorLayoutGuideHeightConstraint"];
      separatorLayoutGuideHeightConstraint = v6->_separatorLayoutGuideHeightConstraint;
      v6->_separatorLayoutGuideHeightConstraint = v18;

      v20 = [coderCopy decodeObjectForKey:@"UISeparatorLayoutGuideLeadingConstraint"];
      separatorLayoutGuideLeadingConstraint = v6->_separatorLayoutGuideLeadingConstraint;
      v6->_separatorLayoutGuideLeadingConstraint = v20;

      v22 = [coderCopy decodeObjectForKey:@"UISeparatorLayoutGuideTrailingConstraint"];
      separatorLayoutGuideTrailingConstraint = v6->_separatorLayoutGuideTrailingConstraint;
      v6->_separatorLayoutGuideTrailingConstraint = v22;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v7 encodeWithCoder:coderCopy];
  v5 = *(&self->_listCellFlags + 1);
  if ((v5 & 0x200) != 0)
  {
    [coderCopy encodeInteger:self->_indentationLevel forKey:@"UIIndentationLevel"];
    v5 = *(&self->_listCellFlags + 1);
  }

  if ((v5 & 0x400) != 0)
  {
    [coderCopy encodeInteger:self->_indentationWidth forKey:@"UIIndentationWidth"];
    v5 = *(&self->_listCellFlags + 1);
  }

  [coderCopy encodeBool:(v5 >> 12) & 1 forKey:@"UIIndentsAccessories"];
  if ([(NSArray *)self->_accessories count])
  {
    [coderCopy encodeObject:self->_accessories forKey:@"UIAccessories"];
  }

  [coderCopy encodeObject:self->_contentViewConstraints forKey:@"UIContentViewConstraints"];
  separatorLayoutGuide = self->_separatorLayoutGuide;
  if (separatorLayoutGuide)
  {
    [coderCopy encodeObject:separatorLayoutGuide forKey:@"UISeparatorLayoutGuide"];
    [coderCopy encodeBool:(*(&self->_listCellFlags + 1) >> 15) & 1 forKey:@"UISeparatorLayoutGuideLeadingReferencesPrimaryText"];
    [coderCopy encodeObject:self->_separatorLayoutGuideHeightConstraint forKey:@"UISeparatorLayoutGuideHeightConstraint"];
    [coderCopy encodeObject:self->_separatorLayoutGuideLeadingConstraint forKey:@"UISeparatorLayoutGuideLeadingConstraint"];
    [coderCopy encodeObject:self->_separatorLayoutGuideTrailingConstraint forKey:@"UISeparatorLayoutGuideTrailingConstraint"];
  }
}

- (void)_setContentView:(id)view addToHierarchy:(BOOL)hierarchy
{
  hierarchyCopy = hierarchy;
  viewCopy = view;
  if (self->_contentViewConstraints)
  {
    contentView = [(UICollectionViewCell *)self contentView];

    if (contentView != viewCopy)
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:self->_contentViewConstraints];
      contentViewConstraints = self->_contentViewConstraints;
      self->_contentViewConstraints = 0;
    }
  }

  v9.receiver = self;
  v9.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v9 _setContentView:viewCopy addToHierarchy:hierarchyCopy];
  if (viewCopy)
  {
    [(UICollectionViewListCell *)self _updateContentViewConstraintsIfNeeded];
  }
}

- (void)_clearChangeHandlersForOldContentView:(id)view
{
  viewCopy = view;
  v5.receiver = self;
  v5.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v5 _clearChangeHandlersForOldContentView:viewCopy];
  if (objc_opt_respondsToSelector())
  {
    [viewCopy _setPreferredSeparatorInsetsDidChangeHandler:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [viewCopy _setDefaultListContentConfigurationProvider:0];
  }
}

- (void)_setupChangeHandlersForNewContentView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v10 _setupChangeHandlersForNewContentView:viewCopy];
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
    [viewCopy _setPreferredSeparatorInsetsDidChangeHandler:v7];
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
    [viewCopy _setDefaultListContentConfigurationProvider:v5];
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

- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets
{
  v4.receiver = self;
  v4.super_class = UICollectionViewListCell;
  [(UIView *)&v4 _safeAreaInsetsDidChangeFromOldInsets:insets.top, insets.left, insets.bottom, insets.right];
  [(UIView *)self safeAreaInsets];
  [(UICellAccessoryManager *)self->_accessoryManager setSafeAreaInsets:?];
}

- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  left = margins.left;
  v9.receiver = self;
  v9.super_class = UICollectionViewListCell;
  [(UIView *)&v9 _layoutMarginsDidChangeFromOldMargins:margins.top, margins.left, margins.bottom];
  [(UIView *)self layoutMargins];
  if (left != v7 || right != v6)
  {
    [(UICellAccessoryManager *)self->_accessoryManager setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v8.receiver = self;
  v8.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v8 traitCollectionDidChange:changeCopy];
  [(UICollectionViewListCell *)self _updateConstants];
  [(UICollectionViewListCell *)self _updateAccessoryLayoutMetrics];
  [(UICollectionViewListCell *)self _updateSeparatorLayoutGuideHeight];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  if (userInterfaceIdiom != [changeCopy userInterfaceIdiom] || (v7 = objc_msgSend(traitCollection, "layoutDirection"), v7 != objc_msgSend(changeCopy, "layoutDirection")) || traitCollection && (!changeCopy || traitCollection[13] != changeCopy[13] || traitCollection[15] != changeCopy[15]))
  {
    [(UICollectionViewListCell *)self _setNeedsUpdateAccessories];
  }

  [(UICollectionViewListCell *)self _updateCellSelectionTogglesExpansionState];
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  isEditing = [(UICollectionViewCell *)self isEditing];
  v9.receiver = self;
  v9.super_class = UICollectionViewListCell;
  [(UICollectionViewCell *)&v9 setEditing:editingCopy];
  if (isEditing != [(UICollectionViewCell *)self isEditing])
  {
    v6 = &_UITableCellAccessoryConfigurationIdentifierEditing;
    if (!editingCopy)
    {
      v6 = &_UITableCellAccessoryConfigurationIdentifierNormal;
    }

    [(UICellAccessoryManager *)self->_accessoryManager setCurrentConfigurationIdentifier:*v6];
    [(UICollectionViewListCell *)self _updateCellSelectionTogglesExpansionState];
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      contentView = [(UICollectionViewCell *)self contentView];
      translatesAutoresizingMaskIntoConstraints = [contentView translatesAutoresizingMaskIntoConstraints];

      if (translatesAutoresizingMaskIntoConstraints)
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

- (void)_setLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = *(&self->_listCellFlags + 1) & 7;
  v6 = [(UICollectionReusableView *)self _styleFromLayoutAttributes:attributesCopy];
  v7 = *(&self->_listCellFlags + 1) & 8;
  v8 = [(UICollectionReusableView *)self _isStyledAsHeaderOrFooterFromLayoutAttributes:attributesCopy];
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
  if (attributesCopy && (attributesCopy[36] & 3) == 0)
  {
    _content = [(_UILabelConfiguration *)attributesCopy _content];
    if ([_content isEqualToString:@"UICollectionElementKindSectionFooter"])
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
  [(UICollectionViewCell *)&v15 _setLayoutAttributes:attributesCopy];
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

- (id)_preferredLayoutAttributesFittingAttributes:(id)attributes isAnimatingExistingView:(BOOL)view
{
  viewCopy = view;
  attributesCopy = attributes;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __96__UICollectionViewListCell__preferredLayoutAttributesFittingAttributes_isAnimatingExistingView___block_invoke;
  v23[3] = &unk_1E70F3590;
  v23[4] = self;
  [UIView _conditionallyPerformWithoutAnimation:viewCopy ^ 1 layout:v23];
  _existingListAttributes = [(UICollectionViewLayoutAttributes *)attributesCopy _existingListAttributes];
  v8 = _existingListAttributes;
  if (_existingListAttributes)
  {
    v9 = *(_existingListAttributes + 32);
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
  v19 = [(UICollectionReusableView *)&v22 _preferredLayoutAttributesFittingAttributes:attributesCopy isAnimatingExistingView:viewCopy];
  if ((v18 & 1) == 0 && ([v13 _ignoreBottomSeparatorInsetsFromCell] & 1) == 0)
  {
    [v19 bounds];
    [(UICollectionViewListCell *)self _updateSeparatorConfigurationForPreferredAttributes:v13 bounds:viewCopy isAnimatingExistingView:?];
    [(UIViewAnimationContext *)v10 setViewAnimations:v13];
    _listAttributesCreatingIfNecessary = [(UICollectionViewLayoutAttributes *)v19 _listAttributesCreatingIfNecessary];
    [(UIContentUnavailableImageProperties *)_listAttributesCreatingIfNecessary _setTintColor:v10];
  }

  return v19;
}

uint64_t __96__UICollectionViewListCell__preferredLayoutAttributesFittingAttributes_isAnimatingExistingView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _performConfigurationStateUpdate];
  v2 = *(a1 + 32);

  return [v2 _layoutAccessoriesAndContentView];
}

- (void)_updateSeparatorConfigurationForPreferredAttributes:(id)attributes bounds:(CGRect)bounds isAnimatingExistingView:(BOOL)view
{
  viewCopy = view;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  attributesCopy = attributes;
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
    [UIView _conditionallyPerformWithoutAnimation:!viewCopy layout:v37];
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

  [attributesCopy setBottomSeparatorInsets:{top, leading, bottom, trailing}];
  if (([attributesCopy _ignoreTopSeparatorInsetsFromCell] & 1) == 0)
  {
    [attributesCopy setTopSeparatorInsets:{top, leading, bottom, trailing}];
  }

  if (!v17 && viewCopy)
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

- (void)setSelectionStyle:(int64_t)style
{
  v3 = *(&self->_listCellFlags + 1);
  if (((v3 >> 6) & 1) != style)
  {
    *(&self->_listCellFlags + 1) = v3 & 0xFFFFFFBF | ((style & 1) << 6);
    [(UICollectionViewCell *)self _updateDefaultBackgroundAppearance];
  }
}

- (BOOL)_isAccompaniedSidebar
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = [traitCollection _splitViewControllerContext] == 2;

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

      _popUpMenuAccessory = [(UICollectionViewListCell *)self _popUpMenuAccessory];

      if (_popUpMenuAccessory)
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

  _popUpMenuAccessory2 = [(UICollectionViewListCell *)self _popUpMenuAccessory];

  if (_popUpMenuAccessory2)
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
  _constants = [(UICollectionViewListCell *)self _constants];
  _tableStyle = [(UICollectionViewListCell *)self _tableStyle];
  v6 = [UICellConfigurationState _readonlyCellState:?];
  traitCollection = [(UIView *)self traitCollection];
  if (_constants)
  {
    [_constants defaultCellBackgroundPropertiesForTableViewStyle:_tableStyle state:v6 traitCollection:traitCollection];
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
    _constants = [(UICollectionViewListCell *)self _constants];
    _tableStyle = [(UICollectionViewListCell *)self _tableStyle];
    v7 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:v4];
    traitCollection = [(UIView *)self traitCollection];
    if (_constants)
    {
      [_constants defaultCellBackgroundPropertiesForTableViewStyle:_tableStyle state:v7 traitCollection:traitCollection];
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

- (void)_setSelected:(BOOL)selected animated:(BOOL)animated isUserInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  animatedCopy = animated;
  selectedCopy = selected;
  if ([(UICollectionViewCell *)self isSelected]!= selected)
  {
    if (initiatedCopy)
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
  [(UICollectionViewCell *)&v10 _setSelected:selectedCopy animated:animatedCopy isUserInitiated:initiatedCopy];
}

- (void)_systemAccessoriesChanged
{
  [(UICellAccessoryManager *)self->_accessoryManager setNeedsLayout];
  configurationState = [(UICollectionViewCell *)self configurationState];
  [(UICollectionViewListCell *)self _updateCurrentSystemTypeAccessoryViewsUsingState:configurationState];

  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {

    [(UIView *)self layoutIfNeeded];
  }
}

- (void)_updateCurrentSystemTypeAccessoryViewsUsingState:(id)state
{
  stateCopy = state;
  v5 = *(&self->_listCellFlags + 1);
  *(&self->_listCellFlags + 1) = v5 & 0xFFFFBFFF;
  if ((v5 & 0x100) == 0)
  {
    v6 = (v5 >> 14) & 1;
    configurations = [(UICellAccessoryManager *)self->_accessoryManager configurations];
    if ([(NSArray *)self->_accessories count])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __77__UICollectionViewListCell__updateCurrentSystemTypeAccessoryViewsUsingState___block_invoke;
      aBlock[3] = &unk_1E70FE448;
      aBlock[4] = self;
      v8 = &v32;
      v32 = stateCopy;
      v33 = v6;
      v9 = _Block_copy(aBlock);
      v10 = [configurations objectForKeyedSubscript:0x1EFB35F50];
      leadingAccessories = [v10 leadingAccessories];
      v9[2](v9, leadingAccessories);

      v12 = [configurations objectForKeyedSubscript:0x1EFB35F50];
      trailingAccessories = [v12 trailingAccessories];
      v9[2](v9, trailingAccessories);

      v14 = [configurations objectForKeyedSubscript:0x1EFBA01F0];
      leadingAccessories2 = [v14 leadingAccessories];
      v9[2](v9, leadingAccessories2);

      v16 = [configurations objectForKeyedSubscript:0x1EFBA01F0];
      trailingAccessories2 = [v16 trailingAccessories];
      v9[2](v9, trailingAccessories2);
    }

    else
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __77__UICollectionViewListCell__updateCurrentSystemTypeAccessoryViewsUsingState___block_invoke_2;
      v28[3] = &unk_1E70FE470;
      v28[4] = self;
      v29 = stateCopy;
      v30 = v6;
      v9 = _Block_copy(v28);
      leadingAccessoryConfigurations = self->_leadingAccessoryConfigurations;
      v19 = [configurations objectForKeyedSubscript:0x1EFB35F50];
      leadingAccessories3 = [v19 leadingAccessories];
      (v9[2])(v9, leadingAccessoryConfigurations, leadingAccessories3);

      trailingAccessoryConfigurations = self->_trailingAccessoryConfigurations;
      v22 = [configurations objectForKeyedSubscript:0x1EFB35F50];
      trailingAccessories3 = [v22 trailingAccessories];
      (v9[2])(v9, trailingAccessoryConfigurations, trailingAccessories3);

      leadingEditingAccessoryConfigurations = self->_leadingEditingAccessoryConfigurations;
      v25 = [configurations objectForKeyedSubscript:0x1EFBA01F0];
      leadingAccessories4 = [v25 leadingAccessories];
      (v9[2])(v9, leadingEditingAccessoryConfigurations, leadingAccessories4);

      v8 = &v29;
      trailingEditingAccessoryConfigurations = self->_trailingEditingAccessoryConfigurations;
      v16 = [configurations objectForKeyedSubscript:0x1EFBA01F0];
      trailingAccessories2 = [v16 trailingAccessories];
      (v9[2])(v9, trailingEditingAccessoryConfigurations, trailingAccessories2);
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

- (void)_applyCellAccessoriesToNormalConfiguration:(id)configuration editingConfiguration:(id)editingConfiguration
{
  v66 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  editingConfigurationCopy = editingConfiguration;
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = *(&self->_listCellFlags + 1) & 8;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  selfCopy = self;
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
        displayedState = [v14 displayedState];
        v16 = [v14 _defaultPlacementForHeader:v6 != 0];
        if ((displayedState & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          _isSystemType = [v14 _isSystemType];
          if (v16)
          {
            if (_isSystemType)
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

          else if (_isSystemType)
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

        if (displayedState <= 1)
        {
          _isSystemType2 = [v14 _isSystemType];
          if (v16)
          {
            if (_isSystemType2)
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

          else if (_isSystemType2)
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
  aBlock[4] = selfCopy;
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
  v58[4] = selfCopy;
  v58[5] = a2;
  v21 = _Block_copy(v58);
  objectEnumerator = [v51 objectEnumerator];
  v23 = v21;
  v24 = v21[2];
  v21 += 2;
  v25 = v23;
  v24(v23, objectEnumerator, v49);

  reverseObjectEnumerator = [v11 reverseObjectEnumerator];
  (*v21)(v25, reverseObjectEnumerator, v52);

  objectEnumerator2 = [v53 objectEnumerator];
  (*v21)(v25, objectEnumerator2, v50);

  reverseObjectEnumerator2 = [v10 reverseObjectEnumerator];
  (*v21)(v25, reverseObjectEnumerator2, v54);

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __92__UICollectionViewListCell__applyCellAccessoriesToNormalConfiguration_editingConfiguration___block_invoke_3;
  v57[3] = &unk_1E70F3E78;
  v57[4] = selfCopy;
  v43 = _Block_copy(v57);
  v43[2](v43, v52);
  v43[2](v43, v54);
  configurationState = [(UICollectionViewCell *)selfCopy configurationState];
  v30 = [(UICollectionViewListCell *)selfCopy _internalAccessoriesForCellAccessories:v49 usingState:configurationState];
  [configurationCopy setLeadingAccessories:v30];

  v31 = [(UICollectionViewListCell *)selfCopy _internalAccessoriesForCellAccessories:v52 usingState:configurationState];
  [configurationCopy setTrailingAccessories:v31];

  v32 = [(UICollectionViewListCell *)selfCopy _internalAccessoriesForCellAccessories:v50 usingState:configurationState];
  [editingConfigurationCopy setLeadingAccessories:v32];

  v33 = [(UICollectionViewListCell *)selfCopy _internalAccessoriesForCellAccessories:v54 usingState:configurationState];
  [editingConfigurationCopy setTrailingAccessories:v33];

  v34 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](selfCopy->_accessories, "count")}];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __92__UICollectionViewListCell__applyCellAccessoriesToNormalConfiguration_editingConfiguration___block_invoke_5;
  v55[3] = &unk_1E70FE508;
  v35 = v34;
  v56 = v35;
  v36 = _Block_copy(v55);
  leadingAccessories = [configurationCopy leadingAccessories];
  v36[2](v36, v49, leadingAccessories);

  trailingAccessories = [configurationCopy trailingAccessories];
  v36[2](v36, v52, trailingAccessories);

  leadingAccessories2 = [editingConfigurationCopy leadingAccessories];
  v36[2](v36, v50, leadingAccessories2);

  trailingAccessories2 = [editingConfigurationCopy trailingAccessories];
  v36[2](v36, v54, trailingAccessories2);

  accessoriesByIdentifier = selfCopy->_accessoriesByIdentifier;
  selfCopy->_accessoriesByIdentifier = v35;
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

- (id)_internalAccessoriesForCellAccessories:(id)accessories usingState:(id)state
{
  v32 = *MEMORY[0x1E69E9840];
  accessoriesCopy = accessories;
  stateCopy = state;
  if ([accessoriesCopy count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(accessoriesCopy, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = accessoriesCopy;
    obj = accessoriesCopy;
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
            v14 = [(UICollectionViewListCell *)self _createSystemTypeAccessoryViewWithCellAccessory:v13 orConfiguration:0 updatedForState:stateCopy];
            v15 = 1;
          }

          else
          {
            v16 = objc_opt_class();
            _accessoryAsClass(v13, v16);
            objc_claimAutoreleasedReturnValue();
            v14 = [(UICollectionViewListCell *)self _createCustomAccessoryViewWithCellAccessory:v13 updatedForState:stateCopy];
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

          _identifier = [v13 _identifier];
          v23 = [_UICellViewAccessory accessoryWithIdentifier:_identifier view:v14 options:v15 reservedLayoutWidth:v17];

          [v8 addObject:v23];
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    accessoriesCopy = v25;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)_cellAccessoriesForConfigurations:(id)configurations isLeadingEdge:(BOOL)edge
{
  edgeCopy = edge;
  v21 = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  if ([configurationsCopy count])
  {
    configurationState = [(UICollectionViewCell *)self configurationState];
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(configurationsCopy, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = configurationsCopy;
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

          v14 = [(UICollectionViewListCell *)self _cellAccessoryForConfiguration:*(*(&v16 + 1) + 8 * i) isLeadingEdge:edgeCopy usingState:configurationState, v16];
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

- (id)_cellAccessoryForConfiguration:(id)configuration isLeadingEdge:(BOOL)edge usingState:(id)state
{
  edgeCopy = edge;
  configurationCopy = configuration;
  stateCopy = state;
  if ([configurationCopy _isSystemType])
  {
    [configurationCopy _systemType];
    customView = [(UICollectionViewListCell *)self _createSystemTypeAccessoryViewWithCellAccessory:0 orConfiguration:configurationCopy updatedForState:stateCopy];
    v11 = 1;
  }

  else
  {
    v12 = objc_opt_class();
    _accessoryConfigurationAsClass(configurationCopy, v12);
    customView = [objc_claimAutoreleasedReturnValue() customView];
    tintColor = [configurationCopy tintColor];

    if (tintColor)
    {
      tintColor2 = [configurationCopy tintColor];
      [customView setTintColor:tintColor2];
    }

    if ([configurationCopy maintainsFixedSize])
    {
      v11 = 12;
    }

    else
    {
      v11 = 14;
    }
  }

  if ([configurationCopy usesDefaultLayoutWidth])
  {
    v15 = -1.79769313e308;
  }

  else
  {
    v15 = 1.79769313e308;
  }

  v16 = MEMORY[0x1E696AEC0];
  if (edgeCopy)
  {
    v17 = @"L";
  }

  else
  {
    v17 = @"T";
  }

  _identifier = [configurationCopy _identifier];
  v19 = [v16 stringWithFormat:@"%@-%@", v17, _identifier];

  v20 = [_UICellViewAccessory accessoryWithIdentifier:v19 view:customView options:v11 reservedLayoutWidth:v15];

  return v20;
}

- (id)_createSystemTypeAccessoryViewWithCellAccessory:(id)accessory orConfiguration:(id)configuration updatedForState:(id)state
{
  accessoryCopy = accessory;
  configurationCopy = configuration;
  stateCopy = state;
  if ([accessoryCopy _isSystemType] & 1) != 0 || (objc_msgSend(configurationCopy, "_isSystemType"))
  {
    if (accessoryCopy)
    {
LABEL_4:
      v12 = accessoryCopy;
      goto LABEL_7;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:1400 description:{@"%@ can only be called for system type accessories", v14}];

    if (accessoryCopy)
    {
      goto LABEL_4;
    }
  }

  v12 = configurationCopy;
LABEL_7:
  _systemType = [v12 _systemType];
  v16 = _systemType;
  if (_systemType <= 4)
  {
    if (_systemType <= 1)
    {
      if (!_systemType)
      {
        v24 = [_UICollectionViewListAccessoryDisclosure alloc];
        _constants = [(UICollectionViewListCell *)self _constants];
        v26 = [(_UICollectionViewListAccessoryDisclosure *)v24 initWithConstants:_constants handlesOwnAction:0];
LABEL_31:
        v23 = v26;

        [(UIView *)v23 setUserInteractionEnabled:0];
        goto LABEL_34;
      }

      if (_systemType == 1)
      {
        v17 = _UICollectionViewListAccessoryCheckmark;
        goto LABEL_33;
      }

LABEL_36:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:1475 description:{@"Unable to create cell accessory for _UICellAccessorySystemType: %ld", v16}];

      v23 = 0;
      goto LABEL_35;
    }

    if (_systemType == 2)
    {
      v32 = [_UICollectionViewListAccessoryControl alloc];
      _constants2 = [(UICollectionViewListCell *)self _constants];
      v28 = v32;
      v29 = 0;
    }

    else
    {
      if (_systemType != 3)
      {
        v18 = [_UICollectionViewListCellReorderControl alloc];
        _constants2 = [(UICollectionViewListCell *)self _constants];
        v20 = [(_UICollectionViewListCellReorderControl *)v18 initWithDelegate:self constants:_constants2];
LABEL_29:
        v23 = v20;

        goto LABEL_34;
      }

      v27 = [_UICollectionViewListAccessoryControl alloc];
      _constants2 = [(UICollectionViewListCell *)self _constants];
      v28 = v27;
      v29 = 1;
    }

LABEL_28:
    v20 = [(_UICollectionViewListAccessoryControl *)v28 initWithType:v29 constants:_constants2];
    goto LABEL_29;
  }

  if (_systemType > 7)
  {
    if (_systemType == 8)
    {
      v17 = _UICollectionViewListAccessoryVerticalSeparator;
      goto LABEL_33;
    }

    if (_systemType != 9)
    {
      if (_systemType == 10)
      {
        v21 = [_UICollectionViewListAccessoryDisclosure alloc];
        _constants3 = [(UICollectionViewListCell *)self _constants];
        v23 = [(_UICollectionViewListAccessoryDisclosure *)v21 initWithConstants:_constants3 handlesOwnAction:0];

        [(UIView *)v23 setUserInteractionEnabled:0];
        [(UIControl *)v23 setShowsMenuAsPrimaryAction:1];
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    v31 = [_UICollectionViewListAccessoryControl alloc];
    _constants2 = [(UICollectionViewListCell *)self _constants];
    v28 = v31;
    v29 = 3;
    goto LABEL_28;
  }

  if (_systemType == 5)
  {
    v33 = [_UICollectionViewListAccessoryControl alloc];
    _constants = [(UICollectionViewListCell *)self _constants];
    v26 = [(_UICollectionViewListAccessoryControl *)v33 initWithType:2 constants:_constants];
    goto LABEL_31;
  }

  if (_systemType == 6)
  {
    v30 = [_UICollectionViewListAccessoryDisclosure alloc];
    _constants2 = [(UICollectionViewListCell *)self _constants];
    v20 = [(_UICollectionViewListAccessoryDisclosure *)v30 initWithConstants:_constants2 handlesOwnAction:(*(&self->_listCellFlags + 1) & 0x800) == 0];
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
  v44 = accessoryCopy;
  v45 = configurationCopy;
  v46 = stateCopy;
  v35 = stateCopy;
  v36 = configurationCopy;
  v37 = accessoryCopy;
  [UIView performWithoutAnimation:v42];
  v38 = v46;
  v39 = v34;

  return v34;
}

- (id)_createCustomAccessoryViewWithCellAccessory:(id)accessory updatedForState:(id)state
{
  accessoryCopy = accessory;
  stateCopy = state;
  customView = [accessoryCopy customView];
  tintColor = [accessoryCopy tintColor];

  if (tintColor)
  {
    tintColor2 = [accessoryCopy tintColor];
    [customView setTintColor:tintColor2];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__UICollectionViewListCell__createCustomAccessoryViewWithCellAccessory_updatedForState___block_invoke;
  v17[3] = &unk_1E70F6B40;
  v17[4] = self;
  v11 = customView;
  v18 = v11;
  v19 = accessoryCopy;
  v20 = stateCopy;
  v12 = stateCopy;
  v13 = accessoryCopy;
  [UIView performWithoutAnimation:v17];
  v14 = v20;
  v15 = v11;

  return v11;
}

- (void)_updateSystemTypeAccessoryView:(id)view withCellAccessory:(id)accessory orConfiguration:(id)configuration usingState:(id)state isUserInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  viewCopy = view;
  accessoryCopy = accessory;
  configurationCopy = configuration;
  stateCopy = state;
  if (([accessoryCopy _isSystemType] & 1) == 0 && (objc_msgSend(configurationCopy, "_isSystemType") & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v111 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:1507 description:{@"%@ can only be called for system type accessories", v111}];
  }

  v117 = a2;
  if (accessoryCopy)
  {
    v15 = accessoryCopy;
  }

  else
  {
    v15 = configurationCopy;
  }

  _systemType = [v15 _systemType];
  v17 = *(&self->_listCellFlags + 1);
  traitCollection = [(UIView *)self traitCollection];
  _splitViewControllerContext = [traitCollection _splitViewControllerContext];

  if ((*(&self->_listCellFlags + 1) & 7) == 4)
  {
    v20 = 3;
  }

  else if ((*(&self->_listCellFlags + 1) & 7) == 3)
  {
    if (_splitViewControllerContext == 2)
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

  traitCollection2 = [(UIView *)self traitCollection];
  selfCopy = self;
  v22 = [(UICollectionViewListCell *)self _shouldUseMonochromaticTreatmentForCellAccessory:accessoryCopy orConfiguration:configurationCopy sidebarStyle:v20 cellConfigurationState:stateCopy traitCollection:traitCollection2];

  if (accessoryCopy)
  {
    v23 = accessoryCopy;
  }

  else
  {
    v23 = configurationCopy;
  }

  tintColor = [v23 tintColor];
  v25 = v17 & 0x28;
  if (tintColor)
  {
    if (accessoryCopy)
    {
LABEL_19:
      v26 = accessoryCopy;
      goto LABEL_22;
    }
  }

  else
  {
    v27 = v25 != 0;
    v28 = v20;
    [(UICollectionViewListCell *)selfCopy _constants];
    v29 = v113 = v17 & 0x28;
    traitCollection3 = [(UIView *)selfCopy traitCollection];
    [(UIView *)selfCopy tintColor];
    v31 = v22;
    v32 = accessoryCopy;
    v33 = configurationCopy;
    v35 = v34 = stateCopy;
    tintColor = [v29 defaultAccessoryTintColorForAccessorySystemType:_systemType header:v27 sidebarStyle:v28 cellConfigurationState:v34 traitCollection:traitCollection3 inheritedTintColor:v35];

    stateCopy = v34;
    configurationCopy = v33;
    accessoryCopy = v32;
    v22 = v31;
    v20 = v28;

    v25 = v113;
    if (accessoryCopy)
    {
      goto LABEL_19;
    }
  }

  v26 = configurationCopy;
LABEL_22:
  _backgroundColor = [v26 _backgroundColor];
  v37 = viewCopy;
  if (!_backgroundColor)
  {
    v38 = v25 != 0;
    [(UICollectionViewListCell *)selfCopy _constants];
    v40 = v39 = stateCopy;
    traitCollection4 = [(UIView *)selfCopy traitCollection];
    _backgroundColor = [v40 defaultAccessoryBackgroundColorForAccessorySystemType:_systemType header:v38 sidebarStyle:v20 cellConfigurationState:v39 traitCollection:traitCollection4];

    stateCopy = v39;
    v37 = viewCopy;
  }

  if (_systemType <= 4)
  {
    if (_systemType > 1)
    {
      if (_systemType == 2)
      {
        v80 = objc_opt_class();
        _accessoryViewAsClass(viewCopy, v80);
        objc_claimAutoreleasedReturnValue();
        v81 = objc_opt_class();
        if (accessoryCopy)
        {
          _accessoryAsClass(accessoryCopy, v81);
          actionHandler = [objc_claimAutoreleasedReturnValue() actionHandler];
          v82 = accessoryCopy;
        }

        else
        {
          _accessoryConfigurationAsClass(configurationCopy, v81);
          actionHandler = [objc_claimAutoreleasedReturnValue() actionHandler];
          v82 = configurationCopy;
        }

        if (actionHandler)
        {
          [viewCopy removeTarget:selfCopy action:sel__deleteAccessoryTriggered forControlEvents:0x2000];
        }

        else
        {
          [viewCopy addTarget:selfCopy action:sel__deleteAccessoryTriggered forControlEvents:0x2000];
        }

        [viewCopy setActionHandler:actionHandler];
        v95 = selfCopy;
      }

      else
      {
        if (_systemType != 3)
        {
          v51 = objc_opt_class();
          _accessoryViewAsClass(viewCopy, v51);
          objc_claimAutoreleasedReturnValue();
          _constants = [(UICollectionViewListCell *)selfCopy _constants];
          [viewCopy setConstants:_constants];

          [viewCopy setAccessoryTintColor:tintColor];
LABEL_85:

          goto LABEL_86;
        }

        v65 = objc_opt_class();
        _accessoryViewAsClass(viewCopy, v65);
        objc_claimAutoreleasedReturnValue();
        v66 = objc_opt_class();
        if (accessoryCopy)
        {
          _accessoryAsClass(accessoryCopy, v66);
          actionHandler = [objc_claimAutoreleasedReturnValue() actionHandler];
          v67 = accessoryCopy;
        }

        else
        {
          _accessoryConfigurationAsClass(configurationCopy, v66);
          actionHandler = [objc_claimAutoreleasedReturnValue() actionHandler];
          v67 = configurationCopy;
        }

        [viewCopy setActionHandler:actionHandler];
        [viewCopy setUserInteractionEnabled:actionHandler != 0];
        v95 = selfCopy;
      }

      _constants2 = [(UICollectionViewListCell *)v95 _constants];
      [viewCopy setConstants:_constants2];

      v92 = viewCopy;
      v93 = tintColor;
      goto LABEL_77;
    }

    if (_systemType)
    {
      if (_systemType != 1)
      {
        goto LABEL_61;
      }

      _constants3 = [(UICollectionViewListCell *)selfCopy _constants];
      v59 = [_constants3 defaultCheckmarkImageForCell:selfCopy];

      if (tintColor)
      {
        v60 = [v59 imageWithTintColor:tintColor renderingMode:1];

        v59 = v60;
      }

      v61 = objc_opt_class();
      _accessoryViewAsClass(viewCopy, v61);
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      _constants4 = [(UICollectionViewListCell *)selfCopy _constants];
      v59 = [_constants4 defaultDisclosureImageForCell:selfCopy withAccessoryBaseColor:tintColor];

      v63 = objc_opt_class();
      _accessoryViewAsClass(viewCopy, v63);
      objc_claimAutoreleasedReturnValue();
      _constants5 = [(UICollectionViewListCell *)selfCopy _constants];
      [viewCopy setConstants:_constants5];
    }

    [viewCopy setImage:v59];
    [viewCopy setAccessoryUsesMonochromaticTreatment:v22];

    goto LABEL_86;
  }

  if (_systemType > 7)
  {
    switch(_systemType)
    {
      case 8:
        [v37 setBackgroundColor:tintColor];
        goto LABEL_86;
      case 9:
        v75 = v37;
        v76 = objc_opt_class();
        _accessoryAsClass(accessoryCopy, v76);
        actionHandler2 = [objc_claimAutoreleasedReturnValue() actionHandler];
        [v75 setActionHandler:actionHandler2];
        [v75 setUserInteractionEnabled:actionHandler2 != 0];
        [(UICollectionViewListCell *)selfCopy _constants];
        v79 = v78 = v22;
        [v75 setConstants:v79];

        [v75 setAccessoryTintColor:tintColor];
        [v75 setAccessoryBackgroundColor:_backgroundColor];
        [v75 setAccessoryUsesMonochromaticTreatment:v78];

        goto LABEL_86;
      case 10:
        v53 = v22;
        v54 = objc_opt_class();
        _accessoryViewAsClass(viewCopy, v54);
        objc_claimAutoreleasedReturnValue();
        actionHandler = [(UICollectionViewListCell *)selfCopy _constants];
        [viewCopy setConstants:actionHandler];
        if (objc_opt_respondsToSelector())
        {
          traitCollection5 = [(UIView *)selfCopy traitCollection];
          v57 = [actionHandler defaultPopUpMenuIndicatorImageForTraitCollection:traitCollection5];
        }

        else
        {
          v57 = 0;
        }

        [viewCopy setImage:v57];
        if (tintColor)
        {
          [viewCopy setAccessoryTintColor:tintColor];
        }

        else
        {
          v100 = +[UIColor secondaryLabelColor];
          [viewCopy setAccessoryTintColor:v100];
        }

        [viewCopy setAccessoryUsesMonochromaticTreatment:v53];
        v101 = objc_opt_class();
        _accessoryAsClass(accessoryCopy, v101);
        selectedElementDidChangeHandler = [objc_claimAutoreleasedReturnValue() selectedElementDidChangeHandler];
        [viewCopy setSelectedElementDidChangeHandler:selectedElementDidChangeHandler];

        _internalMenu = [accessoryCopy _internalMenu];
        [viewCopy setMenu:_internalMenu];

        goto LABEL_84;
    }

LABEL_61:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:v117 object:selfCopy file:@"UICollectionViewListCell.m" lineNumber:1693 description:{@"Invalid _UICellAccessorySystemType value: %ld", _systemType}];

    goto LABEL_86;
  }

  if (_systemType == 5)
  {
    v83 = objc_opt_class();
    _accessoryViewAsClass(viewCopy, v83);
    objc_claimAutoreleasedReturnValue();
    [viewCopy setSelected:-[UICollectionViewCell isSelected](selfCopy isUserInitiated:{"isSelected"), initiatedCopy}];
    _constants6 = [(UICollectionViewListCell *)selfCopy _constants];
    [viewCopy setConstants:_constants6];

    actionHandler = tintColor;
    isSelected = [(UICollectionViewCell *)selfCopy isSelected];
    if (configurationCopy && isSelected)
    {
      v86 = objc_opt_class();
      _accessoryConfigurationAsClass(configurationCopy, v86);
      selectedTintColor = [objc_claimAutoreleasedReturnValue() selectedTintColor];
      v88 = selectedTintColor;
      if (selectedTintColor)
      {
        v89 = selectedTintColor;
      }

      else
      {
        v89 = actionHandler;
      }

      v90 = v22;
      v91 = v89;

      actionHandler = v91;
      v22 = v90;
    }

    v92 = viewCopy;
    v93 = actionHandler;
LABEL_77:
    [v92 setAccessoryTintColor:v93];
    [viewCopy setAccessoryBackgroundColor:_backgroundColor];
    [viewCopy setAccessoryUsesMonochromaticTreatment:v22];
LABEL_84:

    goto LABEL_85;
  }

  if (_systemType == 6)
  {
    v118 = stateCopy;
    v68 = viewCopy;
    v69 = objc_opt_class();
    if (accessoryCopy)
    {
      _accessoryAsClass(accessoryCopy, v69);
      _customImage = [objc_claimAutoreleasedReturnValue() _customImage];
      [accessoryCopy rotationAngle];
      v72 = v71;
      actionHandler3 = [accessoryCopy actionHandler];
      selectedTintColor2 = 0;
      v74 = accessoryCopy;
    }

    else
    {
      _accessoryConfigurationAsClass(configurationCopy, v69);
      _customImage = [objc_claimAutoreleasedReturnValue() _customImage];
      selectedTintColor2 = [configurationCopy selectedTintColor];
      [configurationCopy rotationAngle];
      v72 = v96;
      actionHandler3 = 0;
      v74 = configurationCopy;
    }

    v97 = selfCopy;
    _constants7 = [(UICollectionViewListCell *)selfCopy _constants];
    if (!_customImage)
    {
      if (objc_opt_respondsToSelector())
      {
        v97 = selfCopy;
        _customImage = [_constants7 defaultOutlineDisclosureImageForView:selfCopy];
      }

      else
      {
        _customImage = 0;
        v97 = selfCopy;
      }
    }

    v114 = _constants7;
    v104 = tintColor;
    v116 = selectedTintColor2;
    if ([(UICollectionViewCell *)v97 isSelected])
    {
      if (selectedTintColor2)
      {
        v105 = selectedTintColor2;
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
    _constants8 = [(UICollectionViewListCell *)selfCopy _constants];
    [v68 setConstants:_constants8];

    [v68 setImage:_customImage];
    [v68 setRotationAngle:v72];
    [v68 setRotated:{objc_msgSend(v118, "isExpanded")}];
    control = [v68 control];
    v109 = control;
    if (actionHandler3)
    {
      [control removeTarget:selfCopy action:sel__toggleExpansionState forControlEvents:0x2000];
    }

    else
    {
      [control addTarget:selfCopy action:sel__toggleExpansionState forControlEvents:0x2000];
    }

    [v68 setActionHandler:actionHandler3];
    stateCopy = v118;
  }

  else
  {
    v42 = v22;
    v43 = configurationCopy;
    v44 = stateCopy;
    v45 = objc_opt_class();
    _accessoryViewAsClass(viewCopy, v45);
    objc_claimAutoreleasedReturnValue();
    v46 = objc_opt_class();
    if (accessoryCopy)
    {
      _accessoryAsClass(accessoryCopy, v46);
      text = [objc_claimAutoreleasedReturnValue() text];
      font = [accessoryCopy font];
      adjustsFontForContentSizeCategory = [accessoryCopy adjustsFontForContentSizeCategory];
      v50 = accessoryCopy;
    }

    else
    {
      v50 = v43;
      _accessoryConfigurationAsClass(v43, v46);
      text = [objc_claimAutoreleasedReturnValue() text];
      font = [v43 font];
      adjustsFontForContentSizeCategory = [v43 adjustsFontForContentSizeCategory];
    }

    [(_UITableViewCellBadge *)viewCopy setFont:font];
    if (viewCopy)
    {
      [viewCopy[52] setAdjustsFontForContentSizeCategory:adjustsFontForContentSizeCategory];
      [(_UITableViewCellBadge *)viewCopy setAccessoryUsesMonochromaticTreatment:v42];
      [viewCopy[52] setText:text];
    }

    else
    {
      [(_UITableViewCellBadge *)0 setAccessoryUsesMonochromaticTreatment:v42];
    }

    [(_UITableViewCellBadge *)viewCopy setColor:tintColor];
    [viewCopy setBackgroundColor:_backgroundColor];

    stateCopy = v44;
    configurationCopy = v43;
  }

LABEL_86:
}

- (void)_updateCustomAccessoryView:(id)view withCellAccessory:(id)accessory orConfiguration:(id)configuration usingState:(id)state isUserInitiated:(BOOL)initiated
{
  viewCopy = view;
  stateCopy = state;
  configurationCopy = configuration;
  accessoryCopy = accessory;
  traitCollection = [(UIView *)self traitCollection];
  _splitViewControllerContext = [traitCollection _splitViewControllerContext];

  if ((*(&self->_listCellFlags + 1) & 7) == 4)
  {
    v16 = 3;
  }

  else if ((*(&self->_listCellFlags + 1) & 7) == 3)
  {
    if (_splitViewControllerContext == 2)
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

  traitCollection2 = [(UIView *)self traitCollection];
  v18 = [(UICollectionViewListCell *)self _shouldUseMonochromaticTreatmentForCellAccessory:accessoryCopy orConfiguration:configurationCopy sidebarStyle:v16 cellConfigurationState:stateCopy traitCollection:traitCollection2];

  if (v18)
  {
    [viewCopy _setMonochromaticTreatment:1];
  }

  [viewCopy _setEnableMonochromaticTreatment:v18];
}

- (BOOL)_shouldUseMonochromaticTreatmentForCellAccessory:(id)accessory orConfiguration:(id)configuration sidebarStyle:(int64_t)style cellConfigurationState:(id)state traitCollection:(id)collection
{
  accessoryCopy = accessory;
  configurationCopy = configuration;
  stateCopy = state;
  collectionCopy = collection;
  _monochromaticTreatment = [accessoryCopy _monochromaticTreatment];
  if (_monochromaticTreatment == 1)
  {
    v19 = 1;
    goto LABEL_19;
  }

  if (!_monochromaticTreatment)
  {
LABEL_8:
    v19 = 0;
    goto LABEL_19;
  }

  if (_monochromaticTreatment != -1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:1736 description:{@"UICollectionView internal inconsistency: unknown monochromatic treatment case (%ld)", objc_msgSend(accessoryCopy, "_monochromaticTreatment")}];

    goto LABEL_8;
  }

  if (accessoryCopy)
  {
    v18 = accessoryCopy;
  }

  else
  {
    v18 = configurationCopy;
  }

  tintColor = [v18 tintColor];
  if (!tintColor && (([accessoryCopy _isSystemType] & 1) != 0 || objc_msgSend(configurationCopy, "_isSystemType")))
  {
    if (accessoryCopy)
    {
      v22 = accessoryCopy;
    }

    else
    {
      v22 = configurationCopy;
    }

    _systemType = [v22 _systemType];
    _constants = [(UICollectionViewListCell *)self _constants];
    v19 = [_constants shouldUseMonochromaticTreatmentForCellAccessorySystemType:_systemType sidebarStyle:style cellConfigurationState:stateCopy traitCollection:collectionCopy];
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
    _identifier = [v15 _identifier];
    _identifier2 = [v16 _identifier];
    v19 = [_identifier isEqualToString:_identifier2];

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

- (void)setLeadingAccessoryConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v5 = self->_leadingAccessoryConfigurations;
  v6 = configurationsCopy;
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

- (void)setTrailingAccessoryConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v5 = self->_trailingAccessoryConfigurations;
  v6 = configurationsCopy;
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

- (void)setLeadingEditingAccessoryConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v5 = self->_leadingEditingAccessoryConfigurations;
  v6 = configurationsCopy;
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

- (void)setTrailingEditingAccessoryConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v5 = self->_trailingEditingAccessoryConfigurations;
  v6 = configurationsCopy;
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

- (void)_updateConfigurationUsingState:(id)state
{
  v6.receiver = self;
  v6.super_class = UICollectionViewListCell;
  stateCopy = state;
  [(UICollectionViewCell *)&v6 _updateConfigurationUsingState:stateCopy];
  [(UICollectionViewListCell *)self _updateCurrentSystemTypeAccessoryViewsUsingState:stateCopy, v6.receiver, v6.super_class];

  _existingContentView = [(UICollectionViewCell *)self _existingContentView];
  if (objc_opt_respondsToSelector())
  {
    [_existingContentView _defaultListContentConfigurationMayHaveChanged];
  }
}

- (void)_setExpanded:(BOOL)expanded
{
  if (((((*(&self->_listCellFlags + 1) & 0x80) == 0) ^ expanded) & 1) == 0)
  {
    expandedCopy = expanded;
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    if (expandedCopy)
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
    _popUpMenuAccessoryForCustomSelectionAction = [(UICollectionViewListCell *)self _popUpMenuAccessoryForCustomSelectionAction];
    if (_popUpMenuAccessoryForCustomSelectionAction)
    {
      [(UICollectionViewListCell *)self _presentPopUpMenuForAccessory:_popUpMenuAccessoryForCustomSelectionAction];
    }

    else
    {
      v4.receiver = self;
      v4.super_class = UICollectionViewListCell;
      [(UICollectionViewCell *)&v4 _performCustomSelectionAction];
    }
  }
}

- (void)_presentPopUpMenuForAccessory:(id)accessory
{
  v28 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  selfCopy = self;
  currentConfiguration = [(UICellAccessoryManager *)self->_accessoryManager currentConfiguration];
  trailingAccessories = [currentConfiguration trailingAccessories];
  leadingAccessories = [currentConfiguration leadingAccessories];
  v8 = [trailingAccessories arrayByAddingObjectsFromArray:leadingAccessories];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  view = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (view)
  {
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != view; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        identifier = [v13 identifier];
        _identifier = [accessoryCopy _identifier];
        v16 = [identifier isEqualToString:_identifier];

        if (v16)
        {
          view = [v13 view];
          v17 = objc_opt_class();
          _accessoryViewAsClass(view, v17);
          objc_claimAutoreleasedReturnValue();

          goto LABEL_11;
        }
      }

      view = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (view)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (os_variant_has_internal_diagnostics())
  {
    if (!view)
    {
      v18 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v26 = selfCopy;
        _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Unable to obtain popup menu accessory view in cell: %@", buf, 0xCu);
      }
    }
  }

  else if (!view)
  {
    v19 = *(__UILogGetCategoryCachedImpl("Assert", &_presentPopUpMenuForAccessory____s_category) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = selfCopy;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Unable to obtain popup menu accessory view in cell: %@", buf, 0xCu);
    }
  }

  [view performPrimaryAction];
}

- (unint64_t)_validatedDisclosureActionForKey:(id)key
{
  keyCopy = key;
  _layoutAttributes = [(UICollectionReusableView *)self _layoutAttributes];
  _existingListAttributes = [(UICollectionViewLayoutAttributes *)_layoutAttributes _existingListAttributes];

  if (_existingListAttributes && (-[UICollectionViewListCell _itemIdentifier](self, "_itemIdentifier"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (disclosureActionHandler = self->__disclosureActionHandler, v7, disclosureActionHandler) && ([keyCopy modifierFlags] & 0xFFFFFFFFFFDFFFFFLL) == 0)
  {
    effectiveUserInterfaceLayoutDirection = [(UIView *)self effectiveUserInterfaceLayoutDirection];
    if ([keyCopy keyCode] == 80)
    {
      if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
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
      keyCode = [keyCopy keyCode];
      v13 = 2;
      if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
      {
        v13 = 3;
      }

      if (keyCode == 79)
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

- (BOOL)_canPerformActionForKey:(id)key
{
  selfCopy = self;
  v4 = [(UICollectionViewListCell *)self _validatedDisclosureActionForKey:key];
  if (v4 == 3)
  {
    if ([(UICollectionViewListCell *)selfCopy _expanded])
    {
      LOBYTE(selfCopy) = 1;
    }

    else
    {
      _parentFocusItem = [(UICollectionViewListCell *)selfCopy _parentFocusItem];
      LOBYTE(selfCopy) = _parentFocusItem != 0;
    }
  }

  else if (v4 == 2)
  {
    LODWORD(selfCopy) = ![(UICollectionViewListCell *)selfCopy _expanded];
  }

  else
  {
    LOBYTE(selfCopy) = 0;
  }

  return selfCopy;
}

- (BOOL)_performActionForKey:(id)key
{
  v4 = [(UICollectionViewListCell *)self _validatedDisclosureActionForKey:key];
  if (v4)
  {
    _parentFocusItem = [(UICollectionViewListCell *)self _parentFocusItem];
    _expanded = [(UICollectionViewListCell *)self _expanded];
    if (v4 == 3 && !_expanded && _parentFocusItem)
    {
      _focusSystem = [(UIView *)self _focusSystem];
      v8 = [_focusSystem _updateFocusImmediatelyToEnvironment:_parentFocusItem];
    }

    else
    {
      disclosureActionHandler = self->__disclosureActionHandler;
      _focusSystem = [(UICollectionViewListCell *)self _itemIdentifier];
      v8 = disclosureActionHandler[2](disclosureActionHandler, v4, _focusSystem);
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
    _itemIdentifier = [(UICollectionViewListCell *)self _itemIdentifier];
    if (_itemIdentifier)
    {
      disclosureActionHandler = self->__disclosureActionHandler;
      if (disclosureActionHandler)
      {
        disclosureActionHandler[2](disclosureActionHandler, 1, _itemIdentifier);
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
        actionHandler = [objc_claimAutoreleasedReturnValue() actionHandler];

        if (actionHandler)
        {
          actionHandler2 = [v9 actionHandler];
          actionHandler2[2]();

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

- (void)_setIndentationLevel:(int64_t)level
{
  if (self->_indentationLevel != level)
  {
    self->_indentationLevel = level;
    [(UICollectionViewListCell *)self _updateAccessoryLayoutMetrics];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setDefaultIndentationLevel:(int64_t)level
{
  self->_defaultIndentationLevel = level;
  if ((*(&self->_listCellFlags + 5) & 2) == 0)
  {
    [(UICollectionViewListCell *)self _setIndentationLevel:?];
  }
}

- (void)_setIndentationWidth:(double)width
{
  if (self->_indentationWidth != width)
  {
    self->_indentationWidth = width;
    [(UICollectionViewListCell *)self _updateAccessoryLayoutMetrics];

    [(UIView *)self setNeedsLayout];
  }
}

- (UIEdgeInsets)_adjustedRawLayoutMargins:(UIEdgeInsets)margins withLeadingLayoutMarginAdjustment:(double)adjustment
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  v11 = *(&self->_listCellFlags + 1);
  if (_shouldReverseLayoutDirection)
  {
    if ((v11 & 0x2000) != 0)
    {
      right = right + adjustment;
    }

    else
    {
      [(UICollectionReusableView *)self _concreteDefaultLayoutMargins];
      right = v12 + adjustment;
    }
  }

  else if ((v11 & 0x2000) != 0)
  {
    left = left + adjustment;
  }

  else
  {
    [(UICollectionReusableView *)self _concreteDefaultLayoutMargins];
    left = v13 + adjustment;
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

- (void)_setRawLayoutMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
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
  currentConfiguration = [(UICellAccessoryManager *)self->_accessoryManager currentConfiguration];
  if ([(NSArray *)self->_accessories count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__UICollectionViewListCell__viewForMultiSelectAccessory__block_invoke;
    aBlock[3] = &unk_1E70FE558;
    aBlock[4] = self;
    v4 = _Block_copy(aBlock);
    leadingAccessories = [currentConfiguration leadingAccessories];
    v6 = v4[2](v4, leadingAccessories);

    if (v6)
    {
LABEL_5:

      goto LABEL_15;
    }

    trailingAccessories = [currentConfiguration trailingAccessories];
    v8 = v4[2](v4, trailingAccessories);

    if (v8)
    {
      v6 = v8;

      goto LABEL_5;
    }

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  currentConfigurationIdentifier = [(UICellAccessoryManager *)self->_accessoryManager currentConfigurationIdentifier];
  v10 = [currentConfigurationIdentifier isEqualToString:0x1EFBA01F0];

  if (v10)
  {
    leadingEditingAccessoryConfigurations = self->_leadingEditingAccessoryConfigurations;
    leadingAccessories2 = [currentConfiguration leadingAccessories];
    v6 = __56__UICollectionViewListCell__viewForMultiSelectAccessory__block_invoke_2(leadingEditingAccessoryConfigurations, leadingAccessories2);

    if (v6)
    {
      goto LABEL_15;
    }

    v13 = 800;
  }

  else
  {
    leadingAccessoryConfigurations = self->_leadingAccessoryConfigurations;
    leadingAccessories3 = [currentConfiguration leadingAccessories];
    v6 = __56__UICollectionViewListCell__viewForMultiSelectAccessory__block_invoke_2(leadingAccessoryConfigurations, leadingAccessories3);

    if (v6)
    {
      goto LABEL_15;
    }

    v13 = 784;
  }

  v16 = *(&self->super.super.super.super.super.isa + v13);
  trailingAccessories2 = [currentConfiguration trailingAccessories];
  v6 = __56__UICollectionViewListCell__viewForMultiSelectAccessory__block_invoke_2(v16, trailingAccessories2);

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
  _existingContentView = [(UICollectionViewCell *)self _existingContentView];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  _listCellStyle = [_existingContentView _listCellStyle];
  if ((_listCellStyle + 1) >= 6)
  {
    v5 = _listCellStyle;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIListCellStyle _UIListCellStyleForContentViewCellStyle(_UIContentViewCellStyle)"];
    [currentHandler handleFailureInFunction:v7 file:@"_UIContentViewDefaultStylingObtaining_Internal.h" lineNumber:27 description:{@"UIKit internal inconsistency: unknown content view cell style (%ld)", v5}];

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = qword_18A678EC0[_listCellStyle + 1];
LABEL_6:

  return v4;
}

- (int64_t)_listCellProminence
{
  _existingContentView = [(UICollectionViewCell *)self _existingContentView];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_4;
  }

  _listCellProminence = [_existingContentView _listCellProminence];
  if (_listCellProminence >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIListCellProminence _UIListCellProminenceForContentViewProminence(_UIContentViewCellProminence)"];
    [currentHandler handleFailureInFunction:v5 file:@"_UIContentViewDefaultStylingObtaining_Internal.h" lineNumber:41 description:{@"UIKit internal inconsistency: unknown content view prominence (%ld)", _listCellProminence}];

LABEL_4:
    _listCellProminence = 0;
  }

  return _listCellProminence;
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
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  v3 = [_collectionView indexPathForCell:self];
  if (v3)
  {
    collectionViewLayout = [_collectionView collectionViewLayout];
    v5 = collectionViewLayout;
    if (collectionViewLayout)
    {
      [*(collectionViewLayout + 136) revealTrailingSwipeActionsForIndexPath:v3];
    }
  }
}

- (void)_reorderControl:(id)control didReceiveTouchesBegan:(id)began
{
  anyObject = [began anyObject];
  if (!anyObject)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2286 description:{@"Invalid parameter not satisfying: %@", @"touch != nil"}];
  }

  _collectionView = [(UICollectionReusableView *)self _collectionView];
  [_collectionView _immediatelyBeginDruidBasedReorderIfPossibleWithTouch:anyObject];
}

- (BOOL)_reorderControlShouldBeginReordering:(id)reordering
{
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  v5 = _collectionView;
  if (_collectionView && [_collectionView _canBeginReorderingItem])
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

- (void)_reorderControlDidBeginReordering:(id)reordering
{
  reorderingCopy = reordering;
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  if (!_collectionView)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2300 description:@"List cell cannot reorder without a collection view"];
  }

  v6 = [_collectionView indexPathForCell:self];
  if (v6)
  {
    [_collectionView beginInteractiveMovementForItemAtIndexPath:v6];
  }

  else
  {
    [reorderingCopy cancelReorderingGesture];
  }
}

- (void)_reorderControl:(id)control didUpdateWithOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  controlCopy = control;
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  if (!_collectionView)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2315 description:@"List cell cannot reorder without a collection view"];
  }

  if ([_collectionView _isReordering])
  {
    [(UIView *)self center];
    v10 = v9;
    v12 = v11;
    superview = [(UIView *)self superview];
    [_collectionView convertPoint:superview fromView:{v10, v12}];
    v15 = v14;
    v17 = v16;

    [_collectionView updateInteractiveMovementTargetPosition:{x + v15, y + v17}];
  }

  else
  {
    [controlCopy cancelReorderingGesture];
  }
}

- (void)_reorderControlDidEndReordering:(id)reordering cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  v9 = _collectionView;
  if (_collectionView)
  {
    if (cancelledCopy)
    {
LABEL_3:
      [_collectionView cancelInteractiveMovement];
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2337 description:@"List cell cannot reorder without a collection view"];

    _collectionView = 0;
    if (cancelledCopy)
    {
      goto LABEL_3;
    }
  }

  [_collectionView endInteractiveMovement];
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

    _owningViewForSeparatorLayoutGuide = [(UICollectionViewListCell *)self _owningViewForSeparatorLayoutGuide];
    [_owningViewForSeparatorLayoutGuide addLayoutGuide:self->_separatorLayoutGuide];

    [(UILayoutGuide *)self->_separatorLayoutGuide _setLockedToOwningView:1];
    [(UILayoutGuide *)self->_separatorLayoutGuide _setShouldBeArchived:1];
    [(UILayoutGuide *)self->_separatorLayoutGuide setIdentifier:@"UICollectionViewListCellSeparatorLayoutGuide"];
    heightAnchor = [(UILayoutGuide *)self->_separatorLayoutGuide heightAnchor];
    v8 = [heightAnchor constraintEqualToConstant:_ListCellSeparatorLayoutGuideHeightForCell(self)];

    [(NSLayoutConstraint *)v8 setShouldBeArchived:1];
    [(NSLayoutConstraint *)v8 setIdentifier:@"UICollectionViewListCell-height-separatorLayoutGuide-constraint"];
    separatorLayoutGuideHeightConstraint = self->_separatorLayoutGuideHeightConstraint;
    self->_separatorLayoutGuideHeightConstraint = v8;
    v10 = v8;

    bottomAnchor = [(UILayoutGuide *)self->_separatorLayoutGuide bottomAnchor];
    _owningViewForSeparatorLayoutGuide2 = [(UICollectionViewListCell *)self _owningViewForSeparatorLayoutGuide];
    bottomAnchor2 = [_owningViewForSeparatorLayoutGuide2 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    [v14 setShouldBeArchived:1];
    [v14 setIdentifier:@"UICollectionViewListCell-bottom-separatorLayoutGuide-constraint"];
    leadingAnchor = [(UILayoutGuide *)self->_separatorLayoutGuide leadingAnchor];
    _owningViewForSeparatorLayoutGuide3 = [(UICollectionViewListCell *)self _owningViewForSeparatorLayoutGuide];
    leadingAnchor2 = [_owningViewForSeparatorLayoutGuide3 leadingAnchor];
    v18 = _ListCellCreateSeparatorLayoutGuideLeadingConstraint(leadingAnchor, leadingAnchor2, @"UICollectionViewListCell-leading-separatorLayoutGuide-constraint");

    separatorLayoutGuideLeadingConstraint = self->_separatorLayoutGuideLeadingConstraint;
    self->_separatorLayoutGuideLeadingConstraint = v18;
    v20 = v18;

    trailingAnchor = [(UILayoutGuide *)self->_separatorLayoutGuide trailingAnchor];
    _owningViewForSeparatorLayoutGuide4 = [(UICollectionViewListCell *)self _owningViewForSeparatorLayoutGuide];
    trailingAnchor2 = [_owningViewForSeparatorLayoutGuide4 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

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
    _systemConstraints = [(UILayoutGuide *)self->_separatorLayoutGuide _systemConstraints];
    [v30 activateConstraints:_systemConstraints];

    [(UICollectionViewListCell *)self _updateSeparatorLayoutGuideForSectionSeparatorInsets:self->_sectionSeparatorInsets.top, self->_sectionSeparatorInsets.leading, self->_sectionSeparatorInsets.bottom, self->_sectionSeparatorInsets.trailing];
    [(UICollectionViewListCell *)self _updateContentViewConstraintsIfNeeded];

    separatorLayoutGuide = self->_separatorLayoutGuide;
  }

  return separatorLayoutGuide;
}

- (void)_updateSeparatorLayoutGuideForSectionSeparatorInsets:(NSDirectionalEdgeInsets)insets
{
  if (!self->_separatorLayoutGuide)
  {
    return;
  }

  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  _existingContentView = [(UICollectionViewCell *)self _existingContentView];
  v8 = objc_opt_respondsToSelector();
  if ((v8 & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    _primaryTextLayoutRect = 0;
  }

  else
  {
    _primaryTextLayoutRect = [_existingContentView _primaryTextLayoutRect];
  }

  separatorLayoutGuide = [(UICollectionViewListCell *)self separatorLayoutGuide];
  isActive = [(NSLayoutConstraint *)self->_separatorLayoutGuideLeadingConstraint isActive];
  if (_primaryTextLayoutRect)
  {
    if (!isActive || (*(&self->_listCellFlags + 5) & 0x80) == 0)
    {
      v12 = self->_separatorLayoutGuideLeadingConstraint;
      [(NSLayoutConstraint *)v12 setActive:0];
      leadingAnchor = [separatorLayoutGuide leadingAnchor];
      leadingAnchor2 = [_primaryTextLayoutRect leadingAnchor];
      v15 = _ListCellCreateSeparatorLayoutGuideLeadingConstraint(leadingAnchor, leadingAnchor2, @"UICollectionViewListCell-primaryText-leading-separatorLayoutGuide-constraint");

      _ListCellReplaceSystemConstraintInLayoutGuide(separatorLayoutGuide, v12, v15);
      [(NSLayoutConstraint *)v15 setActive:1];
      separatorLayoutGuideLeadingConstraint = self->_separatorLayoutGuideLeadingConstraint;
      self->_separatorLayoutGuideLeadingConstraint = v15;

      *(&self->_listCellFlags + 1) |= 0x8000u;
LABEL_14:
    }
  }

  else if (!isActive || (*(&self->_listCellFlags + 5) & 0x80) != 0)
  {
    v12 = self->_separatorLayoutGuideLeadingConstraint;
    [(NSLayoutConstraint *)v12 setActive:0];
    leadingAnchor3 = [separatorLayoutGuide leadingAnchor];
    _owningViewForSeparatorLayoutGuide = [(UICollectionViewListCell *)self _owningViewForSeparatorLayoutGuide];
    leadingAnchor4 = [_owningViewForSeparatorLayoutGuide leadingAnchor];
    v20 = _ListCellCreateSeparatorLayoutGuideLeadingConstraint(leadingAnchor3, leadingAnchor4, @"UICollectionViewListCell-leading-separatorLayoutGuide-constraint");

    _ListCellReplaceSystemConstraintInLayoutGuide(separatorLayoutGuide, v12, v20);
    [(NSLayoutConstraint *)v20 setActive:1];
    v21 = self->_separatorLayoutGuideLeadingConstraint;
    self->_separatorLayoutGuideLeadingConstraint = v20;

    *(&self->_listCellFlags + 1) &= ~0x8000u;
    goto LABEL_14;
  }

  _owningViewForSeparatorLayoutGuide2 = [(UICollectionViewListCell *)self _owningViewForSeparatorLayoutGuide];

  if (_owningViewForSeparatorLayoutGuide2 != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2489 description:@"The separatorLayoutGuide is expected to be added directly to the cell"];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2513 description:@"Cannot get insets with a nil _separatorLayoutGuide"];
  }

  _owningViewForSeparatorLayoutGuide = [(UICollectionViewListCell *)self _owningViewForSeparatorLayoutGuide];

  if (_owningViewForSeparatorLayoutGuide != self)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2515 description:@"The separatorLayoutGuide is expected to be added directly to the cell"];
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
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v26 = v24;
  }

  else
  {
    v26 = v22;
  }

  if (_shouldReverseLayoutDirection)
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

- (double)_contentView:(id)view inset:(double)inset convertedToCellInsetOnEdge:(unint64_t)edge
{
  viewCopy = view;
  if (edge != 2 && edge != 8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2531 description:{@"Invalid parameter not satisfying: %@", @"edge == NSDirectionalRectEdgeLeading || edge == NSDirectionalRectEdgeTrailing"}];
  }

  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  [viewCopy bounds];
  if ((edge == 2) != _shouldReverseLayoutDirection)
  {
    insetCopy = inset;
  }

  else
  {
    insetCopy = 0.0;
  }

  [(UIView *)self convertRect:viewCopy fromView:insetCopy + v12, v13 + 0.0, v14 - (inset + 0.0)];
  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = 8;
  if (_shouldReverseLayoutDirection)
  {
    v24 = 2;
  }

  if (v24 == edge)
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

- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsFromContentViewWithDefaultInsets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  if (userInterfaceIdiom != 6)
  {
    _existingContentView = [(UICollectionViewCell *)self _existingContentView];
    if (objc_opt_respondsToSelector())
    {
      [_existingContentView _preferredLeadingSeparatorInset];
      v12 = leading;
      if (v15 != 1.79769313e308)
      {
        [(UICollectionViewListCell *)self _contentView:_existingContentView inset:2 convertedToCellInsetOnEdge:?];
        v12 = v16;
      }
    }

    else
    {
      v12 = leading;
    }

    if (objc_opt_respondsToSelector())
    {
      [_existingContentView _preferredTrailingSeparatorInset];
      if (v17 != 1.79769313e308)
      {
        [(UICollectionViewListCell *)self _contentView:_existingContentView inset:8 convertedToCellInsetOnEdge:?];
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

- (NSDirectionalEdgeInsets)_separatorInsetsFromPrimaryTextLayoutFrameWithDefaultInsets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  if (userInterfaceIdiom != 6)
  {
    if (self->_separatorLayoutGuide)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewListCell.m" lineNumber:2595 description:{@"Invalid parameter not satisfying: %@", @"_separatorLayoutGuide == nil"}];
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