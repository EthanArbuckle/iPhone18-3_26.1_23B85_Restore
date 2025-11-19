@interface UITableViewCell
+ (void)_ensureInitializeSystemAppearanceModifications;
+ (void)_initializeForIdiom:(int64_t)a3;
- (BOOL)_appliesMaskingToBackgroundConfiguration;
- (BOOL)_backgroundFillIsCustomized;
- (BOOL)_backgroundIsVerticallyInset;
- (BOOL)_canDrawContent;
- (BOOL)_forwardsSystemLayoutFittingSizeToContentView:(id)a3;
- (BOOL)_gestureRecognizerShouldBegin:(id)a3;
- (BOOL)_grabberBeganReorder:(id)a3 touch:(id)a4;
- (BOOL)_hasCustomSelectionAction;
- (BOOL)_hidesBottomSeparatorWhenUnselected;
- (BOOL)_isInModalViewController;
- (BOOL)_isMultiselecting;
- (BOOL)_isReorderControlActive;
- (BOOL)_isReorderable;
- (BOOL)_shouldApplyReadableWidthInsets;
- (BOOL)_shouldChangeOpaqueStateOfView:(id)a3;
- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)a3;
- (BOOL)_shouldMaskToBoundsWhileAnimating;
- (BOOL)_shouldSaveOpaqueStateForView:(id)a3;
- (BOOL)_shouldUseHighlightedOrSelectedAppearance;
- (BOOL)_showSeparatorAtTopOfSection;
- (BOOL)_updateExpansionButtonFromType:(int64_t)a3 toType:(int64_t)a4;
- (BOOL)_usesRoundedGroups;
- (BOOL)_usingBackgroundConfigurationOrDefaultBackgroundConfiguration;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canBecomeFocused;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (CGPoint)center;
- (CGRect)_separatorFrame;
- (CGRect)_topSeparatorFrame;
- (CGRect)_updatedContentViewFrameForTargetWidth:(double)a3;
- (CGRect)accessoryRectForBounds:(CGRect)a3;
- (CGRect)backgroundRectForBounds:(CGRect)a3;
- (CGRect)contentRectForBounds:(CGRect)a3;
- (CGRect)contentRectForState:(unint64_t)a3;
- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4;
- (CGRect)frame;
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)reorderRectForBounds:(CGRect)a3;
- (CGRect)textRectForContentRect:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSDirectionalEdgeInsets)_overriddenDefaultContentViewLayoutMargins;
- (NSLineBreakMode)lineBreakMode;
- (NSString)reuseIdentifier;
- (NSString)text;
- (NSTextAlignment)textAlignment;
- (SEL)_accessoryAction;
- (SEL)accessoryAction;
- (SEL)editAction;
- (SEL)returnAction;
- (UIBackgroundConfiguration)backgroundConfiguration;
- (UICellConfigurationState)_configurationState;
- (UIColor)selectedTextColor;
- (UIColor)textColor;
- (UIEdgeInsets)_adjustedRawLayoutMargins:(UIEdgeInsets)a3 withLeadingLayoutMarginAdjustment:(double)a4;
- (UIEdgeInsets)_backgroundInset;
- (UIEdgeInsets)_backgroundSeparatorInset;
- (UIEdgeInsets)_concreteDefaultLayoutMargins;
- (UIEdgeInsets)_effectiveSafeAreaInsets;
- (UIEdgeInsets)_rawSeparatorInset;
- (UIEdgeInsets)separatorInset;
- (UIFont)font;
- (UIImage)image;
- (UIImage)selectedImage;
- (UIListContentConfiguration)defaultContentConfiguration;
- (UITableViewCell)initWithCoder:(NSCoder *)coder;
- (UITableViewCell)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
- (UIView)contentView;
- (UIView)selectedBackgroundView;
- (double)_contentConfigurationPrimaryTextInsetFromCellLeadingEdge;
- (double)_contentViewInset:(double)a3 convertedToCellInsetOnEdge:(unint64_t)a4;
- (double)_imageViewExtentFromCellLeadingEdge;
- (double)_leadingSeparatorInset;
- (double)_marginWidth;
- (double)_preferredLeadingSeparatorInsetFromContentView;
- (double)_preferredTrailingSeparatorInsetFromContentView;
- (double)_rightMarginWidth;
- (double)_roundedGroupCornerRadius;
- (double)_separatorHeight;
- (double)_trailingSeparatorInset;
- (double)_verticalPaddingForSeparator;
- (float)selectionPercent;
- (id)_accessoryView:(BOOL)a3;
- (id)_accessoryViewForType:(int64_t)a3;
- (id)_addSeparatorWithFrame:(CGRect)a3;
- (id)_backgroundView:(BOOL)a3;
- (id)_backgroundViewConfiguration;
- (id)_backgroundViewConfigurationProvider;
- (id)_badge;
- (id)_badge:(BOOL)a3;
- (id)_badgeBackgroundColor;
- (id)_badgeColor;
- (id)_badgeFont;
- (id)_badgeText;
- (id)_checkmarkImageWithTintColor:(id)a3;
- (id)_constants;
- (id)_containerView;
- (id)_contentViewConfiguration;
- (id)_contentViewConfigurationProvider;
- (id)_createDefaultContentView;
- (id)_defaultAccessoryView;
- (id)_defaultBackgroundConfiguration;
- (id)_defaultFocusEffect;
- (id)_defaultFocusOutline;
- (id)_defaultFont;
- (id)_detailTextLabel;
- (id)_detailTextLabel:(BOOL)a3;
- (id)_disclosureChevronImage;
- (id)_disclosureChevronImageWithBaseColor:(id)a3;
- (id)_dropAnimationContainerView;
- (id)_editControlAccessoryForStyle:(int64_t)a3;
- (id)_editableTextField;
- (id)_editableTextField:(BOOL)a3;
- (id)_editingAccessoryView:(BOOL)a3;
- (id)_editingControlTintColorForStyle:(int64_t)a3;
- (id)_effectivePopupMenuButton;
- (id)_encodableSubviews;
- (id)_existingSystemAccessoryView:(BOOL)a3;
- (id)_existingSystemAccessoryViews;
- (id)_imageView;
- (id)_imageView:(BOOL)a3;
- (id)_leadingAccessoriesForEditing:(BOOL)a3 style:(int64_t)a4;
- (id)_multiselectBackgroundColor;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4;
- (id)_previewingSegueTemplateStorageForLocation:(CGPoint)a3 inView:(id)a4;
- (id)_selectedBackgroundView:(BOOL)a3;
- (id)_separatorView:(BOOL)a3;
- (id)_stateForUpdatingBackgroundConfigurationWithState:(id)a3;
- (id)_subviewsForFloatingContentView;
- (id)_swipeContainerView;
- (id)_tableView;
- (id)_textLabel;
- (id)_textLabel:(BOOL)a3;
- (id)_trailingAccessoriesForType:(int64_t)a3 view:(id)a4 editing:(BOOL)a5 style:(int64_t)a6;
- (id)backgroundColor;
- (id)contentConfiguration;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)editingData:(BOOL)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)preferredFocusedView;
- (int64_t)_currentAccessoryTypeForEditing:(BOOL)a3;
- (int64_t)_listCellProminence;
- (int64_t)_listCellStyle;
- (int64_t)_listStyle;
- (int64_t)_popoverControllerStyle;
- (int64_t)_sanitizedEditingStyleForEditing:(BOOL)a3 style:(int64_t)a4;
- (int64_t)_systemDefaultFocusGroupPriority;
- (int64_t)focusItemDeferralMode;
- (unint64_t)_maskedCornersForSystemBackgroundView;
- (unint64_t)_viewConfigurationState;
- (unint64_t)currentStateMask;
- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5;
- (void)_animateFloatingSeparatorForInsertion:(BOOL)a3 withRowAnimation:(int64_t)a4;
- (void)_animateInnerShadowForInsertion:(BOOL)a3 withRowAnimation:(int64_t)a4;
- (void)_applyBackgroundViewConfiguration:(id)a3 withState:(id)a4;
- (void)_applyContentViewConfiguration:(id)a3 withState:(id)a4 usingSPI:(BOOL)a5;
- (void)_applyLeadingLayoutMarginAdjustment:(double)a3;
- (void)_applySelectedStateToSeparators:(BOOL)a3;
- (void)_cancelInternalPerformRequests;
- (void)_clearChangeHandlersForOldContentView:(id)a3;
- (void)_clearOpaqueViewState:(id)a3;
- (void)_configureFloatingContentView:(id)a3;
- (void)_contentViewLabelTextDidChange:(id)a3;
- (void)_delayedDeselect;
- (void)_deselectAnimationFinished;
- (void)_didTransitionToState:(unint64_t)a3;
- (void)_didUpdateFocusInContext:(id)a3;
- (void)_drawSeparatorInRect:(CGRect)a3;
- (void)_encodeBackgroundColorWithCoder:(id)a3;
- (void)_executeConfigurationUpdate;
- (void)_forSpringBoardSetDefaultSelectedBackgroundView:(id)a3;
- (void)_grabberDragged:(id)a3 yDelta:(float)a4 touch:(id)a5;
- (void)_grabberReleased:(id)a3;
- (void)_highlightDidEndForInteraction:(id)a3;
- (void)_highlightForInteraction:(id)a3 fractionComplete:(double)a4 ended:(BOOL)a5;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)_layoutFloatingContentView:(id)a3;
- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3;
- (void)_layoutSystemBackgroundView:(BOOL)a3;
- (void)_longPressGestureRecognized:(id)a3;
- (void)_macSidebarDefaultIconSizeChanged;
- (void)_monitoredView:(id)a3 didMoveFromSuperview:(id)a4 toSuperview:(id)a5;
- (void)_monitoredView:(id)a3 willMoveFromSuperview:(id)a4 toSuperview:(id)a5;
- (void)_multiselectColorChanged;
- (void)_notifyIsDisplaying:(BOOL)a3;
- (void)_performAction:(SEL)a3 sender:(id)a4;
- (void)_performConfigurationStateModifications:(id)a3;
- (void)_performConfigurationStateUpdate;
- (void)_performCustomSelectionAction;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_prepareForConfigurationStateUpdate;
- (void)_prepareHighlightForInteraction:(id)a3;
- (void)_prepareToSetDefaultLayoutMargins;
- (void)_releaseDetailTextLabel;
- (void)_releaseTextLabel;
- (void)_removeFloatingSeparator;
- (void)_removeFocusedFloatingContentView;
- (void)_removeFromSuperviewIgnoringFirstResponder:(BOOL)a3;
- (void)_removeInnerShadow;
- (void)_resetBackgroundViewConfiguration;
- (void)_resetBackgroundViewsAndColor;
- (void)_resetContentViews;
- (void)_resetEditControlRotation;
- (void)_resetRawLayoutMargins;
- (void)_resetSelectionTimer;
- (void)_restoreLabelTextAfterSystemTextSizeChangeIfNeeded;
- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)a3;
- (void)_saveOpaqueViewState:(id)a3;
- (void)_setAccessoryAction:(SEL)a3;
- (void)_setAccessoryManager:(id)a3;
- (void)_setAccessoryTintColor:(id)a3;
- (void)_setAccessoryViewsHidden:(BOOL)a3;
- (void)_setAllowsReorderingWhenNotEditing:(BOOL)a3;
- (void)_setAnimating:(BOOL)a3 clippingAdjacentCells:(BOOL)a4;
- (void)_setAutomaticIntrinsicContentSizeInvalidationEnabled:(BOOL)a3;
- (void)_setBackgroundInset:(UIEdgeInsets)a3;
- (void)_setBackgroundViewConfigurationProvider:(id)a3;
- (void)_setBadgeBackgroundColor:(id)a3;
- (void)_setBadgeColor:(id)a3;
- (void)_setBadgeFont:(id)a3;
- (void)_setBadgeText:(id)a3;
- (void)_setConstants:(id)a3;
- (void)_setContainerView:(id)a3;
- (void)_setContentClipCorners:(unint64_t)a3 updateCorners:(BOOL)a4;
- (void)_setContentView:(id)a3;
- (void)_setContentViewConfigurationProvider:(id)a3;
- (void)_setDefaultBackgroundColor:(id)a3;
- (void)_setDefaultLeadingMarginWidth:(double)a3;
- (void)_setDefaultTrailingCellMarginWidth:(double)a3;
- (void)_setDeleteAnimationInProgress:(BOOL)a3;
- (void)_setDragState:(int64_t)a3;
- (void)_setDrawsSeparatorAtBottomOfSection:(BOOL)a3;
- (void)_setDrawsSeparatorAtTopOfSection:(BOOL)a3;
- (void)_setDrawsTopSeparator:(BOOL)a3;
- (void)_setDrawsTopSeparatorDuringReordering:(BOOL)a3;
- (void)_setDropAnimationContainerView:(id)a3;
- (void)_setDropState:(int64_t)a3;
- (void)_setEditing:(BOOL)a3 animated:(BOOL)a4 cellOrAncestorViewForAnimatedLayout:(id)a5;
- (void)_setEditingControlTintColor:(id)a3 forStyle:(int64_t)a4;
- (void)_setFont:(id)a3 layout:(BOOL)a4;
- (void)_setFrame:(CGRect)a3 skipLayout:(BOOL)a4;
- (void)_setHiddenForReuse:(BOOL)a3;
- (void)_setIgnoresMultipleSelectionDuringEditing:(BOOL)a3;
- (void)_setIndentationWidth:(double)a3;
- (void)_setIndexBarExtentFromEdge:(double)a3;
- (void)_setIndexPath:(id)a3;
- (void)_setInsetsContentViewsToSafeArea:(BOOL)a3;
- (void)_setMetricsAdapter:(id)a3;
- (void)_setMultiselecting:(BOOL)a3;
- (void)_setNeedsAccessoriesUpdateForced:(BOOL)a3;
- (void)_setNeedsHeightCalculation:(BOOL)a3;
- (void)_setNeedsSetup:(BOOL)a3;
- (void)_setOpaque:(BOOL)a3 forSubview:(id)a4;
- (void)_setOverriddenDefaultContentViewLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)_setPopupMenuButton:(id)a3;
- (void)_setRawLayoutMargins:(UIEdgeInsets)a3;
- (void)_setReordering:(BOOL)a3;
- (void)_setSectionLocation:(int)a3 animated:(BOOL)a4 forceBackgroundSetup:(BOOL)a5;
- (void)_setSelectionGrouping:(int)a3;
- (void)_setSelectionStyle:(int64_t)a3 selectionTintColor:(id)a4;
- (void)_setSeparatorBackdropOverlayBlendMode:(int64_t)a3;
- (void)_setSeparatorDrawsInVibrantLightMode:(BOOL)a3;
- (void)_setSeparatorDrawsInVibrantLightModeUIAppearance:(id)a3;
- (void)_setSeparatorEffect:(id)a3;
- (void)_setSeparatorHidden:(BOOL)a3;
- (void)_setSeparatorInsetIsRelativeToCellEdges:(BOOL)a3;
- (void)_setShouldHaveFullLengthBottomSeparator:(BOOL)a3;
- (void)_setShouldHaveFullLengthTopSeparator:(BOOL)a3;
- (void)_setShouldIndentWhileEditing:(BOOL)a3;
- (void)_setShowingCompactContextMenu:(BOOL)a3;
- (void)_setShowsReorderControl:(BOOL)a3;
- (void)_setSkipsLayout:(BOOL)a3;
- (void)_setSwipeContainerView:(id)a3;
- (void)_setSwiped:(BOOL)a3;
- (void)_setTopSeparatorFollowsLayoutMargins:(BOOL)a3;
- (void)_setUsesModernAccessoriesLayout:(BOOL)a3;
- (void)_setupChangeHandlersForNewContentView:(id)a3;
- (void)_setupMenuGesture;
- (void)_setupSelectedBackgroundView;
- (void)_setupTableViewCellCommon;
- (void)_showMenuFromLongPressGesture;
- (void)_startToEditTextField;
- (void)_syncAccessoryViewsIfNecessary;
- (void)_systemTextSizeChanged;
- (void)_tableViewDidUpdateMarginWidth;
- (void)_toggleExpansionButton;
- (void)_updateAccessories;
- (void)_updateAccessoriesIfNeeded;
- (void)_updateAccessoryMetrics;
- (void)_updateAndCacheBackgroundColorForHighlightIgnoringSelection:(BOOL)a3;
- (void)_updateBackgroundViewConfigurationForState:(id)a3;
- (void)_updateCellForCurrentBackgroundConfiguration;
- (void)_updateCellMaskViewsForView:(id)a3 backdropView:(id)a4;
- (void)_updateConfigurationUsingState:(id)a3;
- (void)_updateConfigurationWithObservationTracking;
- (void)_updateContentClip;
- (void)_updateContentViewConfigurationForState:(id)a3;
- (void)_updateCurrentSystemTypeAccessoryViewsUsingState:(id)a3;
- (void)_updateDefaultAccessoryViewForFocus:(BOOL)a3;
- (void)_updateDefaultBackgroundAppearance;
- (void)_updateDefaultImageSymbolConfiguration;
- (void)_updateDefaultIndentationWidth;
- (void)_updateDefaultLabelsForFocus:(BOOL)a3;
- (void)_updateExpansionButton:(id)a3 forType:(int64_t)a4 animated:(BOOL)a5;
- (void)_updateFloatingContentControlStateInContext:(id)a3 withAnimationCoordinator:(id)a4 animated:(BOOL)a5;
- (void)_updateHighlightColors;
- (void)_updateHighlightColorsForAnimationHalfwayPoint;
- (void)_updateHighlightColorsForView:(id)a3 highlighted:(BOOL)a4;
- (void)_updateLeadingLayoutMarginForIndentation;
- (void)_updateModernCellAccessoriesForState:(id)a3 isEditing:(BOOL)a4;
- (void)_updatePopupMenuButtonFromContentView;
- (void)_updateProperties;
- (void)_updateSeparatorContent;
- (void)_updateSeparatorContent:(BOOL)a3;
- (void)_updateSeparatorViewAlpha;
- (void)_updateShowingSelectedBackground;
- (void)_updateSystemTypeAccessoryView:(id)a3 withCellAccessoryType:(int64_t)a4 forState:(id)a5;
- (void)_updateSystemTypeAccessoryView:(id)a3 withTableViewAccessoryType:(int64_t)a4 forState:(id)a5;
- (void)_updateTopSeparatorViewAlpha;
- (void)_updateUserInteractionEnabledForNewDragState:(int64_t)a3;
- (void)_willTransitionToState:(unint64_t)a3;
- (void)_willUpdateFocusInContext:(id)a3;
- (void)bringSubviewToFront:(id)a3;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)dragStateDidChange:(UITableViewCellDragState)dragState;
- (void)editControlWasClicked:(id)a3;
- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)editMenuInteraction:(id)a3 willPresentMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)removeEditingData;
- (void)sendSubviewToBack:(id)a3;
- (void)setAccessoryAction:(SEL)accessoryAction;
- (void)setAccessoryActionSegueTemplate:(id)a3;
- (void)setAccessoryType:(UITableViewCellAccessoryType)accessoryType;
- (void)setAccessoryView:(UIView *)accessoryView;
- (void)setAutomaticallyUpdatesBackgroundConfiguration:(BOOL)automaticallyUpdatesBackgroundConfiguration;
- (void)setAutomaticallyUpdatesContentConfiguration:(BOOL)automaticallyUpdatesContentConfiguration;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundView:(UIView *)backgroundView;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setClipsToBounds:(BOOL)a3;
- (void)setConfigurationUpdateHandler:(UITableViewCellConfigurationUpdateHandler)configurationUpdateHandler;
- (void)setDrawingEnabled:(BOOL)a3;
- (void)setEditAction:(SEL)editAction;
- (void)setEditingAccessoryType:(UITableViewCellAccessoryType)editingAccessoryType;
- (void)setEditingAccessoryView:(UIView *)editingAccessoryView;
- (void)setEditingStyle:(int64_t)a3;
- (void)setFocusStyle:(UITableViewCellFocusStyle)focusStyle;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setImage:(UIImage *)image;
- (void)setIndentationLevel:(NSInteger)indentationLevel;
- (void)setLayoutManager:(id)a3;
- (void)setLineBreakMode:(NSLineBreakMode)lineBreakMode;
- (void)setMultipleSelectionBackgroundView:(UIView *)multipleSelectionBackgroundView;
- (void)setNeedsUpdateConfiguration;
- (void)setNeedsUpdateConstraints;
- (void)setPlaceHolderValue:(id)a3;
- (void)setReturnAction:(SEL)a3;
- (void)setReuseIdentifier:(id)a3;
- (void)setSectionBorderColor:(id)a3;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setSelectedBackgroundView:(id)a3 animated:(BOOL)a4;
- (void)setSelectedImage:(UIImage *)selectedImage;
- (void)setSelectedTextColor:(UIColor *)selectedTextColor;
- (void)setSelectionSegueTemplate:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setSeparatorColor:(id)a3;
- (void)setSeparatorInset:(UIEdgeInsets)separatorInset;
- (void)setSeparatorStyle:(int64_t)a3;
- (void)setShouldIndentWhileEditing:(BOOL)shouldIndentWhileEditing;
- (void)setShowingDeleteConfirmation:(BOOL)a3;
- (void)setShowsReorderControl:(BOOL)showsReorderControl;
- (void)setTableViewStyle:(int64_t)a3;
- (void)setText:(NSString *)text;
- (void)setTextAlignment:(NSTextAlignment)textAlignment;
- (void)setTextColor:(UIColor *)textColor;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setUserInteractionEnabledWhileDragging:(BOOL)userInteractionEnabledWhileDragging;
- (void)setWasSwiped:(BOOL)a3;
- (void)showSelectedBackgroundView:(BOOL)a3 animated:(BOOL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation UITableViewCell

void __65__UITableViewCell__ensureInitializeSystemAppearanceModifications__block_invoke(uint64_t a1)
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v2 = +[UIDevice currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if (((v3 - 1) & 0xFFFFFFFFFFFFFFFBLL) == 0)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __65__UITableViewCell__ensureInitializeSystemAppearanceModifications__block_invoke_2;
      v4[3] = &__block_descriptor_40_e5_v8__0l;
      v4[4] = *(a1 + 32);
      [UIView _performSystemAppearanceModifications:v4];
    }
  }
}

- (id)_constants
{
  constants = self->_constants;
  if (constants)
  {
    v3 = constants;
  }

  else
  {
    v4 = [(UIView *)self traitCollection];
    v3 = _UITableConstantsForTraitCollection(v4);
  }

  return v3;
}

- (void)_updateDefaultIndentationWidth
{
  if ((*(&self->_tableCellFlags + 13) & 0x20) == 0)
  {
    v3 = [(UITableViewCell *)self _constants];
    [v3 defaultIndentationWidthForSidebarStyle:0];
    v5 = v4;

    [(UITableViewCell *)self _setIndentationWidth:v5];
  }
}

- (void)_setupTableViewCellCommon
{
  v24[1] = *MEMORY[0x1E69E9840];
  [objc_opt_class() _ensureInitializeSystemAppearanceModifications];
  [(UITableViewCell *)self setSelectionFadeDuration:0.5];
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_separatorInset.top = _Q0;
  *&self->_separatorInset.bottom = _Q0;
  self->_tableCellFlags = vorrq_s8(self->_tableCellFlags, xmmword_18A682810);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *obj = 0u;
  v16 = 0u;
  v8 = [(UITableViewCell *)self _constants];
  tableCellFlags = self->_tableCellFlags;
  v10 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:?];
  v11 = [(UIView *)self traitCollection];
  if (v8)
  {
    [v8 defaultCellBackgroundPropertiesForTableViewStyle:HIDWORD(tableCellFlags) & 0x1F state:v10 traitCollection:v11];
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *obj = 0u;
    v16 = 0u;
  }

  objc_storeStrong(&self->_selectionTintColor, obj[1]);
  v12 = v16;
  v13 = v12;
  if (v12)
  {
    v24[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  }

  else
  {
    v14 = 0;
  }

  objc_storeStrong(&self->_selectionEffects, v14);
  if (v13)
  {
  }

  *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFFFC7FFFFFFLL | 0x20000000;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UITableViewCell *)self setClipsToBounds:1];
  }

  if (dyld_program_sdk_at_least())
  {
    [(UIView *)self _setHostsLayoutEngine:1];
  }

  [(UIView *)self setEdgesPreservingSuperviewLayoutMargins:10, obj[0]];
  [(UIView *)self setEdgesInsettingLayoutMarginsFromSafeArea:[(UIView *)self edgesInsettingLayoutMarginsFromSafeArea]& 0xA];
  *(&self->_tableCellFlags + 1) |= 0xC02004000000uLL;
  [(UITableViewCell *)self _updateDefaultIndentationWidth];

  __destructor_8_s8_s16_s24_s80(obj);
}

+ (void)_ensureInitializeSystemAppearanceModifications
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__UITableViewCell__ensureInitializeSystemAppearanceModifications__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_ensureInitializeSystemAppearanceModifications_onceToken != -1)
  {
    dispatch_once(&_ensureInitializeSystemAppearanceModifications_onceToken, block);
  }
}

- (void)_setupSelectedBackgroundView
{
  if (self->_selectedBackgroundView || (*&self->_tableCellFlags & 0x70) != 0 && !self->_systemBackgroundView && !self->_backgroundViewConfigurationProvider && (v6 = [UITableViewCellSelectedBackground alloc], -[UITableViewCell layoutManager](self, "layoutManager"), v7 = objc_claimAutoreleasedReturnValue(), [v7 selectedBackgroundEndingRectForCell:self forNewEditingState:{-[UITableViewCell isEditing](self, "isEditing")}], v8 = -[UIView initWithFrame:](v6, "initWithFrame:"), v9 = self->_selectedBackgroundView, self->_selectedBackgroundView = v8, v9, v7, *&self->_tableCellFlags |= 0x8000000000uLL, self->_selectedBackgroundView))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self->_selectedBackgroundView setSelectionStyle:(*&self->_tableCellFlags >> 4) & 7];
      [(UIView *)self->_selectedBackgroundView setSelectionEffects:self->_selectionEffects];
      [(UIView *)self->_selectedBackgroundView setSelectionTintColor:self->_selectionTintColor];
      v3 = [(UITableViewCell *)self backgroundColor];
      [(UIView *)self->_selectedBackgroundView setNoneStyleBackgroundColor:v3];
    }

    if ([(UIView *)self isOpaque])
    {
      v10 = [(UITableViewCell *)self backgroundColor];
      [v10 alphaComponent];
      [(UIView *)self->_selectedBackgroundView setOpaque:v4 == 1.0];
    }

    else
    {
      selectedBackgroundView = self->_selectedBackgroundView;

      [(UIView *)selectedBackgroundView setOpaque:0];
    }
  }
}

- (id)backgroundColor
{
  if (qword_1ED498E68 != -1)
  {
    dispatch_once(&qword_1ED498E68, &__block_literal_global_1363_0);
  }

  if (byte_1ED498E55)
  {
    v6.receiver = self;
    v6.super_class = UITableViewCell;
    v3 = [(UIView *)&v6 backgroundColor];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITableViewCell;
    v3 = [(UIView *)&v5 backgroundColor];
  }

  return v3;
}

- (void)invalidateIntrinsicContentSize
{
  v3 = [(UITableViewCell *)self _tableView];
  v4 = v3;
  if (v3)
  {
    [v3 _cellDidInvalidateIntrinsicContentSize:self];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITableViewCell;
    [(UIView *)&v5 invalidateIntrinsicContentSize];
  }
}

- (BOOL)_usesRoundedGroups
{
  if (objc_opt_respondsToSelector())
  {
    constants = self->_constants;
    top = self->_backgroundInset.top;
    left = self->_backgroundInset.left;
    bottom = self->_backgroundInset.bottom;
    right = self->_backgroundInset.right;
    v8 = *(&self->_tableCellFlags + 1) & 0x1FLL;

    return [(UITableConstants *)constants shouldUseRoundedGroupsForTableViewStyle:v8 backgroundInsets:top, left, bottom, right];
  }

  else
  {
    v10 = *(&self->_tableCellFlags + 1) & 0x1F;
    v11 = v10 > 0x10;
    v12 = (1 << v10) & 0x10006;
    v13 = v11 || v12 == 0;
    return !v13 && self->_backgroundInset.left > 0.0 && self->_backgroundInset.right > 0.0;
  }
}

- (NSString)reuseIdentifier
{
  v2 = [(NSString *)self->_reuseIdentifier copy];

  return v2;
}

- (id)_swipeContainerView
{
  v2 = [(UITableViewCell *)self _containerView];
  if (v2)
  {
    v3 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (CGRect)frame
{
  v18.receiver = self;
  v18.super_class = UITableViewCell;
  [(UIView *)&v18 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UITableViewCell *)self _swipeContainerView];
  v12 = v11;
  if (v11)
  {
    [v11 frame];
    v6 = v13;
  }

  v14 = v4;
  v15 = v6;
  v16 = v8;
  v17 = v10;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGPoint)center
{
  v12.receiver = self;
  v12.super_class = UITableViewCell;
  [(UIView *)&v12 center];
  v4 = v3;
  v6 = v5;
  v7 = [(UITableViewCell *)self _swipeContainerView];
  v8 = v7;
  if (v7)
  {
    [v7 center];
    v6 = v9;
  }

  v10 = v4;
  v11 = v6;
  result.y = v11;
  result.x = v10;
  return result;
}

- (UIEdgeInsets)_concreteDefaultLayoutMargins
{
  v23.receiver = self;
  v23.super_class = UITableViewCell;
  [(UIView *)&v23 _concreteDefaultLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (-[UITableViewCell _usesRoundedGroups](self, "_usesRoundedGroups") || (-[UIView traitCollection](self, "traitCollection"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 userInterfaceIdiom], v11, v12 == 6))
  {
    v13 = [(UITableViewCell *)self _metricsAdapter];
    v4 = [(UITableMetricsAdapter *)v13 defaultTableLayoutMargins];
    v10 = v14;
    v8 = v15;
    v17 = v16;
    v18 = [(UIView *)self _shouldReverseLayoutDirection];
    if (v18)
    {
      v6 = v17;
    }

    else
    {
      v6 = v10;
    }

    if (!v18)
    {
      v10 = v17;
    }
  }

  v19 = v4;
  v20 = v6;
  v21 = v8;
  v22 = v10;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (UIEdgeInsets)_effectiveSafeAreaInsets
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if ([(UITableViewCell *)self _insetsContentViewsToSafeArea])
  {
    v7 = [(UIView *)self superview];

    if (v7)
    {
      [(UIView *)self safeAreaInsets];
      v6 = v8;
      v5 = v9;
      v4 = v10;
      v3 = v11;
    }

    else
    {
      v12 = [(UITableViewCell *)self _tableView];
      [v12 _cellSafeAreaInsets];
      v6 = UIEdgeInsetsAdd(10, 0.0, 0.0, 0.0, 0.0, v13);
      v5 = v14;
      v4 = v15;
      v3 = v16;
    }
  }

  v17 = *(&self->super._viewFlags + 2);
  indexBarExtentFromEdge = self->_indexBarExtentFromEdge;
  v19 = fmax(v5, indexBarExtentFromEdge);
  v20 = fmax(v3, indexBarExtentFromEdge);
  if ((v17 & 0x400000) != 0)
  {
    v21 = v3;
  }

  else
  {
    v21 = v20;
  }

  if ((v17 & 0x400000) == 0)
  {
    v19 = v5;
  }

  v22 = v6;
  v23 = v4;
  result.right = v21;
  result.bottom = v23;
  result.left = v19;
  result.top = v22;
  return result;
}

- (id)_tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  if (!WeakRetained)
  {
    v4 = objc_opt_class();
    WeakRetained = _UIFallbackViewOfClassForReusableView(v4, self);
    if (WeakRetained)
    {
      objc_storeWeak(&self->_tableView, WeakRetained);
    }
  }

  v5 = WeakRetained;

  return v5;
}

- (void)_resetBackgroundViewConfiguration
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52__UITableViewCell__resetBackgroundViewConfiguration__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView _performSystemAppearanceModifications:v2];
}

uint64_t __52__UITableViewCell__resetBackgroundViewConfiguration__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgroundConfiguration:0];
  [*(a1 + 32) _setBackgroundViewConfigurationProvider:0];
  v2 = *(a1 + 32);

  return [v2 _setBackgroundViewConfiguration:0];
}

- (unint64_t)_maskedCornersForSystemBackgroundView
{
  v3 = [(UITableViewCell *)self _selectionGrouping];
  if ([(UITableViewCell *)self _usesRoundedGroups])
  {
    [(UITableViewCell *)self _roundedGroupCornerRadius];
    if (v4 > 0.0)
    {
      v3 = [(UITableViewCell *)self sectionLocation];
    }
  }

  if ((v3 - 1) > 2)
  {
    return 15;
  }

  else
  {
    return qword_18A682828[v3 - 1];
  }
}

- (void)_updateDefaultBackgroundAppearance
{
  if (dyld_program_sdk_at_least())
  {
    p_tableCellFlags = &self->_tableCellFlags;
    v4 = *(&self->_tableCellFlags + 1);
    if ((v4 & 0x180000000000) == 0)
    {
      if ((v4 & 0x78000000000) != 0)
      {
        if ((v4 & 0x10000000000) == 0)
        {
          [(UITableViewCell *)self _setupBackgroundView];
          v4 = *(&self->_tableCellFlags + 1) & 0xFFFFFEFFFFFFFFFFLL;
          *(&self->_tableCellFlags + 1) = v4;
        }

        if ((v4 & 0x20000000000) == 0)
        {
          [(UITableViewCell *)self _setupSelectedBackgroundView];
          *(&self->_tableCellFlags + 1) &= ~0x20000000000uLL;
        }
      }

      else
      {
        v5 = [(UITableViewCell *)self _defaultBackgroundConfiguration];
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __53__UITableViewCell__updateDefaultBackgroundAppearance__block_invoke;
        v7[3] = &unk_1E70F35B8;
        v7[4] = self;
        v8 = v5;
        v6 = v5;
        [UIView _performSystemAppearanceModifications:v7];
        *(p_tableCellFlags + 1) &= ~0x100000000000uLL;
      }
    }
  }
}

- (BOOL)_shouldMaskToBoundsWhileAnimating
{
  v2 = [(UITableViewCell *)self editingData:0];
  v3 = [v2 wantsMaskingWhileAnimatingDisabled];

  return v3 ^ 1;
}

- (void)_prepareToSetDefaultLayoutMargins
{
  extraLeadingLayoutMarginForIndentation = self->_extraLeadingLayoutMarginForIndentation;
  self->_extraLeadingLayoutMarginForIndentation = 0.0;
  if (extraLeadingLayoutMarginForIndentation != 0.0)
  {
    [(UITableViewCell *)self _applyLeadingLayoutMarginAdjustment:-extraLeadingLayoutMarginForIndentation];
  }
}

- (void)didMoveToSuperview
{
  v2 = self;
  v30 = *MEMORY[0x1E69E9840];
  if ((*(&self->_tableCellFlags + 12) & 2) == 0)
  {
    objc_storeWeak(&self->_tableView, 0);
  }

  v3 = [(UIView *)v2 superview];

  if (v3)
  {
    v4 = [(UITableViewCell *)v2 _tableView];
    if (v4)
    {
      if ([(UITableViewCell *)v2 _usesModernAccessoriesLayout])
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v16 = v2;
        v5 = [(UITableViewCell *)v2 _accessoryManager];
        v6 = [v5 configurations];
        v7 = [v6 allValues];

        v18 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v18)
        {
          v17 = *v25;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v7);
              }

              v9 = *(*(&v24 + 1) + 8 * i);
              v20 = 0u;
              v21 = 0u;
              v22 = 0u;
              v23 = 0u;
              v10 = [v9 trailingAccessories];
              v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v21;
                do
                {
                  for (j = 0; j != v12; ++j)
                  {
                    if (*v21 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v15 = [*(*(&v20 + 1) + 8 * j) view];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v15 addTarget:v4 action:sel__accessoryButtonAction_ forControlEvents:64];
                    }
                  }

                  v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
                }

                while (v12);
              }
            }

            v18 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
          }

          while (v18);
        }

        v2 = v16;
      }

      else
      {
        [(UIControl *)v2->_accessoryView addTarget:v4 action:sel__accessoryButtonAction_ forControlEvents:64];
        [(UIControl *)v2->_editingAccessoryView addTarget:v4 action:sel__accessoryButtonAction_ forControlEvents:64];
      }
    }

    [(UITableViewCell *)v2 _updateContentClip];
  }

  v19.receiver = v2;
  v19.super_class = UITableViewCell;
  [(UIView *)&v19 didMoveToSuperview];
}

- (void)_performConfigurationStateUpdate
{
  v2 = *(&self->_tableCellFlags + 1);
  if ((v2 & 0x2000000000) != 0)
  {
    *(&self->_tableCellFlags + 1) = v2 & 0xFFFFFFDFFFFFFFFFLL;
    if (_UIObservationTrackingEnabled())
    {

      [(UITableViewCell *)self _updateConfigurationWithObservationTracking];
    }

    else
    {

      [(UITableViewCell *)self _executeConfigurationUpdate];
    }
  }
}

- (id)_contentViewConfiguration
{
  if ((*(&self->_tableCellFlags + 12) & 0x40) != 0 && !self->_viewForContentConfiguration)
  {
    v4 = [(UIView *)self->_contentView configuration];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_viewConfigurationState
{
  v2 = [(UITableViewCell *)self configurationState];
  v3 = [v2 _viewConfigurationState];

  return v3;
}

- (unint64_t)currentStateMask
{
  if ((*&self->_tableCellFlags & 0x20000000100) == 0x100)
  {
    return ((*&self->_tableCellFlags << 9) & 0x40000000 | (2 * (*&self->_tableCellFlags & 1))) + 1;
  }

  else
  {
    return (*&self->_tableCellFlags << 9) & 0x40000000 | (2 * (*&self->_tableCellFlags & 1));
  }
}

- (void)_updateAccessories
{
  v34[2] = *MEMORY[0x1E69E9840];
  p_tableCellFlags = &self->_tableCellFlags;
  *(&self->_tableCellFlags + 1) &= ~0x8000000uLL;
  v4 = [(UITableViewCell *)self _accessoryManager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 configurations];
    v7 = [v6 objectForKeyedSubscript:?];

    v8 = objc_alloc_init(UICellAccessoryConfiguration);
    v9 = [(UITableViewCell *)self _leadingAccessoriesForEditing:0 style:0];
    [(UICellAccessoryConfiguration *)v8 setLeadingAccessories:v9];

    v10 = [(UITableViewCell *)self _trailingAccessoriesForType:(*p_tableCellFlags >> 15) & 7 view:self->_customAccessoryView editing:0 style:0];
    [(UICellAccessoryConfiguration *)v8 setTrailingAccessories:v10];

    v11 = [v5 configurations];
    v32 = [v11 objectForKeyedSubscript:0x1EFBA01F0];

    v12 = objc_alloc_init(UICellAccessoryConfiguration);
    v13 = 1;
    v14 = [(UITableViewCell *)self _leadingAccessoriesForEditing:1 style:(*p_tableCellFlags >> 12) & 7];
    [(UICellAccessoryConfiguration *)v12 setLeadingAccessories:v14];

    v15 = [(UITableViewCell *)self _trailingAccessoriesForType:(*p_tableCellFlags >> 18) & 7 view:self->_customEditingAccessoryView editing:1 style:(*p_tableCellFlags >> 12) & 7];
    [(UICellAccessoryConfiguration *)v12 setTrailingAccessories:v15];

    v16 = *(p_tableCellFlags + 1);
    if ((v16 & 0x10000000) == 0)
    {
      v17 = v7;
      v18 = v8;
      v19 = v18;
      if (v17 == v18)
      {
        v13 = 0;
      }

      else if (v17 && v18)
      {
        v13 = ![(UICellAccessoryConfiguration *)v17 isEqual:v18];
      }

      v16 = *(p_tableCellFlags + 1);
    }

    v31 = v7;
    if ((v16 & 0x10000000) != 0)
    {
      if (v13)
      {
        v24 = v8;
      }

      else
      {
        v24 = v7;
      }
    }

    else
    {
      v20 = v32;
      v21 = v12;
      v22 = v21;
      if (v20 == v21)
      {
        v23 = 0;
LABEL_18:

        if (((v13 | v23) & 1) == 0)
        {
LABEL_30:
          v30 = [(UITableViewCell *)self configurationState];
          [(UITableViewCell *)self _updateCurrentSystemTypeAccessoryViewsUsingState:v30];

          goto LABEL_31;
        }

        v25 = v31;
        if (v13)
        {
          v25 = v8;
        }

        *(p_tableCellFlags + 1) &= ~0x10000000uLL;
        v26 = v25;
        if ((v23 & 1) == 0)
        {
LABEL_29:
          v33[0] = 0x1EFB35F50;
          v33[1] = 0x1EFBA01F0;
          v34[0] = v26;
          v34[1] = v20;
          v27 = MEMORY[0x1E695DF20];
          v28 = v20;
          v29 = [v27 dictionaryWithObjects:v34 forKeys:v33 count:2];

          [v5 setConfigurations:v29];
          goto LABEL_30;
        }

LABEL_28:
        v20 = v12;
        goto LABEL_29;
      }

      if (v20 && v21)
      {
        v23 = ![(UICellAccessoryConfiguration *)v20 isEqual:v21];
        goto LABEL_18;
      }

      if (v13)
      {
        v24 = v8;
      }

      else
      {
        v24 = v7;
      }

      v16 = *(p_tableCellFlags + 1);
    }

    *(p_tableCellFlags + 1) = v16 & 0xFFFFFFFFEFFFFFFFLL;
    v26 = v24;
    goto LABEL_28;
  }

LABEL_31:
}

- (void)layoutSubviews
{
  [(UITableViewCell *)self _restoreLabelTextAfterSystemTextSizeChangeIfNeeded];
  [(UITableViewCell *)self _layoutFloatingContentView];
  [(UITableViewCell *)self _layoutSystemBackgroundView:0];
  if (![(UITableViewCell *)self _skipsLayout]&& (*(&self->_tableCellFlags + 10) & 0x40) == 0)
  {
    [(UITableViewCell *)self _updateAccessoriesIfNeeded];
    [(UITableViewCell *)self _updateLeadingLayoutMarginForIndentation];
    v3 = [(UITableViewCell *)self layoutManager];
    [v3 layoutSubviewsOfCell:self];
  }

  [(UITableViewCell *)self _updateSeparatorContent];
  v7.receiver = self;
  v7.super_class = UITableViewCell;
  [(UIView *)&v7 layoutSubviews];
  v4 = *(&self->_tableCellFlags + 1);
  if ((v4 & 0x2000000000000) != 0)
  {
    *(&self->_tableCellFlags + 1) = v4 & 0xFFFDFFFFFFFFFFFFLL;
    if ([(UIView *)self isFocused])
    {
      v5 = [(UIView *)self _focusBehavior];
      v6 = [UIFocusRingManager focusRingAvailableInBehavior:v5];

      if (v6)
      {
        +[UIFocusRingManager _updateActiveFocusLayers];
      }
    }
  }
}

- (BOOL)_canDrawContent
{
  tableCellFlags = self->_tableCellFlags;
  if ((tableCellFlags & 0x100000000000) != 0)
  {
    return (tableCellFlags & 0x200000000000) == 0;
  }

  v4.receiver = self;
  v4.super_class = UITableViewCell;
  return [(UIView *)&v4 _canDrawContent];
}

- (id)_dropAnimationContainerView
{
  v2 = [(UITableViewCell *)self _containerView];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_containerView
{
  v2 = [(UIView *)self superview];
  if (v2)
  {
    v3 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)_createDefaultContentView
{
  if (dyld_program_sdk_at_least())
  {
    [(UIView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v11 = [(UITableViewCell *)self layoutManager];
    [v11 contentEndingRectForCell:self forNewEditingState:{-[UITableViewCell isEditing](self, "isEditing")}];
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  v16 = [[UITableViewCellContentView alloc] initWithFrame:v4, v6, v8, v10];

  return v16;
}

- (void)_setupMenuGesture
{
  contentView = self->_contentView;
  if (contentView)
  {
    v4 = [(UIGestureRecognizer *)self->_longPressGesture view];

    if (contentView != v4)
    {
      v5 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__longPressGestureRecognized_];
      longPressGesture = self->_longPressGesture;
      self->_longPressGesture = v5;

      [(UIGestureRecognizer *)self->_longPressGesture setDelegate:self];
      [(UILongPressGestureRecognizer *)self->_longPressGesture setMinimumPressDuration:0.5];
      v7 = self->_contentView;
      v8 = self->_longPressGesture;

      [(UIView *)v7 addGestureRecognizer:v8];
    }
  }
}

- (double)_separatorHeight
{
  v2 = [(UIView *)self traitCollection];
  v3 = _UISeparatorThicknessForTraitCollection(v2);

  return v3;
}

- (void)_updateConfigurationWithObservationTracking
{
  v2 = self;
  sub_188CA312C();
}

- (UICellConfigurationState)_configurationState
{
  v3 = [UICellConfigurationState alloc];
  v4 = [(UIView *)self traitCollection];
  v5 = [(UIViewConfigurationState *)v3 initWithTraitCollection:v4];

  [(UIViewConfigurationState *)v5 setDisabled:[(UIView *)self isUserInteractionEnabled]^ 1];
  [(UIViewConfigurationState *)v5 setHighlighted:[(UITableViewCell *)self isHighlighted]];
  [(UIViewConfigurationState *)v5 setSelected:[(UITableViewCell *)self isSelected]];
  [(UIViewConfigurationState *)v5 setFocused:[(UIView *)self isFocused]];
  [(UICellConfigurationState *)v5 setEditing:[(UITableViewCell *)self isEditing]];
  [(UICellConfigurationState *)v5 setSwiped:[(UITableViewCell *)self _isSwiped]];
  [(UICellConfigurationState *)v5 setReordering:[(UITableViewCell *)self _isReordering]];
  if ([(UITableViewCell *)self _isShowingCompactContextMenu])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  [(UIViewConfigurationState *)v5 _setContextMenuGroupLocation:v6];
  [(UICellConfigurationState *)v5 _setUsesAnyPlainListStyle:[(UITableViewCell *)self tableViewStyle]== 0];
  v7 = [(UITableViewCell *)self _dragState];
  if ((v7 - 1) <= 1)
  {
    [(UICellConfigurationState *)v5 setCellDragState:v7];
  }

  [(UICellConfigurationState *)v5 setCellDropState:[(UITableViewCell *)self _dropState]];

  return v5;
}

- (id)_badgeText
{
  if (![(UITableViewCell *)self _usesModernAccessoriesLayout]|| (*(&self->_tableCellFlags + 11) & 0x20) != 0)
  {
    v4 = [(UITableViewCell *)self _badge];
    v3 = [(_UITableViewCellBadge *)v4 text];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)_verticalPaddingForSeparator
{
  if ((*&self->_tableCellFlags & 0xE) == 0)
  {
    return 0.0;
  }

  [(UITableViewCell *)self _separatorHeight];
  return result;
}

- (void)_updateProperties
{
  v3.receiver = self;
  v3.super_class = UITableViewCell;
  [(UIView *)&v3 _updateProperties];
  [(UITableViewCell *)self _performConfigurationStateUpdate];
}

- (void)_updateSeparatorContent
{
  p_tableCellFlags = &self->_tableCellFlags;
  tableCellFlags = self->_tableCellFlags;
  if ((tableCellFlags & 0x80000000000) == 0)
  {
    return;
  }

  v5 = tableCellFlags & 0x300000000000;
  separatorView = self->_separatorView;
  if ((*&self->_tableCellFlags & 0xELL) == 0 || v5 == 0x100000000000)
  {
    [(UIView *)self->_separatorView removeFromSuperview];
    v8 = self->_separatorView;
    self->_separatorView = 0;
  }

  else
  {
    [(UITableViewCell *)self _separatorFrame];
    if (separatorView)
    {
      [(UIView *)self->_separatorView setFrame:?];
    }

    else
    {
      v10 = [(UITableViewCell *)self _addSeparatorWithFrame:?];
      v11 = self->_separatorView;
      self->_separatorView = v10;
    }

    [(UITableViewCell *)self _updateSeparatorViewAlpha];
    if ((*(p_tableCellFlags + 9) & 4) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(UIView *)self->_separatorView setBackgroundColor:self->_separatorColor];
      }
    }

    if ((*(p_tableCellFlags + 2) & 0x40) != 0 || [(UITableViewCell *)self _showSeparatorAtTopOfSection])
    {
      topSeparatorView = self->_topSeparatorView;
      [(UITableViewCell *)self _topSeparatorFrame];
      if (topSeparatorView)
      {
        [(UIView *)self->_topSeparatorView setFrame:?];
      }

      else
      {
        v13 = [(UITableViewCell *)self _addSeparatorWithFrame:?];
        v14 = self->_topSeparatorView;
        self->_topSeparatorView = v13;
      }

      [(UITableViewCell *)self _updateTopSeparatorViewAlpha];
      if ((*(p_tableCellFlags + 9) & 4) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(UIView *)self->_topSeparatorView setBackgroundColor:self->_separatorColor];
        }
      }

      goto LABEL_23;
    }
  }

  [(UIView *)self->_topSeparatorView removeFromSuperview];
  v9 = self->_topSeparatorView;
  self->_topSeparatorView = 0;

LABEL_23:
  v15 = *p_tableCellFlags;
  if ((*p_tableCellFlags & 0x300000000000) == 0x100000000000)
  {
    [(UIView *)self setNeedsDisplay];
    v15 = *p_tableCellFlags;
  }

  *p_tableCellFlags = v15 & 0xFFFFF7FFFFFFFFFFLL;
}

- (UIView)contentView
{
  if (!self->_contentView && ![(UITableViewCell *)self drawingEnabled]&& dyld_program_sdk_at_least())
  {
    v3 = [(UITableViewCell *)self _createDefaultContentView];
    [(UITableViewCell *)self _setContentView:v3];
  }

  contentView = self->_contentView;

  return contentView;
}

- (void)_updateContentClip
{
  if ([(UITableViewCell *)self _isReordering])
  {
    v3 = [(UIView *)self traitCollection];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 6)
    {
      return;
    }
  }

  if ([(UITableViewCell *)self _usesRoundedGroups]&& (![(UITableViewCell *)self _appliesMaskingToBackgroundConfiguration]|| ![(UITableViewCell *)self _usingBackgroundViewConfiguration]))
  {
    *(&self->_tableCellFlags + 1) |= 0x800000000uLL;
    v10 = [(UITableViewCell *)self sectionLocation];
    if (v10 <= 1)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          return;
        }

        v8 = self;
        v9 = 0;
        goto LABEL_20;
      }
    }

    else if (v10 != 4)
    {
      if (v10 == 3)
      {
        v8 = self;
        v9 = 12;
      }

      else
      {
        if (v10 != 2)
        {
          return;
        }

        v8 = self;
        v9 = 3;
      }

      goto LABEL_20;
    }

    v8 = self;
    v9 = 15;
LABEL_20:
    v11 = 1;
    goto LABEL_21;
  }

  if (objc_opt_respondsToSelector())
  {
    constants = self->_constants;
    v6 = [(UITableViewCell *)self _tableView];
    v7 = [(UITableConstants *)constants contentClipCornersForCell:self inTableView:v6];

    v8 = self;
    v9 = v7;
    goto LABEL_20;
  }

  v11 = (*(&self->_tableCellFlags + 1) >> 35) & 1;
  v8 = self;
  v9 = 0;
LABEL_21:

  [(UITableViewCell *)v8 _setContentClipCorners:v9 updateCorners:v11];
}

- (void)_executeConfigurationUpdate
{
  if (a1)
  {
    v2 = _UISetCurrentFallbackEnvironment(a1);
    v3 = [a1 configurationState];
    memset(__src, 0, sizeof(__src));
    _UIBeginTrackingTraitUsage(a1, 0, __src);
    [a1 _updateBackgroundViewConfigurationForState:v3];
    [a1 _updateContentViewConfigurationForState:v3];
    [a1 _updateConfigurationUsingState:v3];
    [a1 _updateViewConfigurationsWithState:{objc_msgSend(a1, "_viewConfigurationState")}];
    [a1 updateConfigurationUsingState:v3];
    [a1 _bridgedUpdateConfigurationUsingState:v3];
    v4 = [a1 configurationUpdateHandler];
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4, a1, v3);
    }

    [a1 _updateCellForCurrentBackgroundConfiguration];
    memcpy(v11, __src, sizeof(v11));
    TraitCollectionTSD = GetTraitCollectionTSD();
    memcpy(__dst, TraitCollectionTSD + 16, sizeof(__dst));
    memcpy(TraitCollectionTSD + 16, v11, 0x170uLL);
    v7 = __dst[22] & ~*&__src[11];
    v8 = *&__src[11] & ~__dst[22];
    v9 = __dst[22] & *&__src[11];
    v10 = [a1 methodForSelector:sel_updateConfigurationUsingState_];
    *&v11[0] = v7;
    *(&v11[0] + 1) = v8;
    *&v11[1] = v9;
    [(UIView *)a1 _recordTraitUsage:v11 trackedStateDiff:v10 insideMethod:sel_setNeedsUpdateConfiguration withInvalidationAction:?];
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      [a1 _layoutSystemBackgroundView:1];
    }

    _UIRestorePreviousFallbackEnvironment(v2);
  }
}

- (void)_updateCellForCurrentBackgroundConfiguration
{
  if (!dyld_program_sdk_at_least() || self->_selectedBackgroundView || self->_multipleSelectionBackgroundView)
  {
    return;
  }

  v3 = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
  v9 = v3;
  if (v3)
  {
    v4 = [v3 _hasBackgroundFill];
    if ([(UITableViewCell *)self isHighlighted])
    {
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    else if (([(UITableViewCell *)self isSelected]& v4 & 1) == 0)
    {
      goto LABEL_13;
    }

    lastNormalBackgroundViewConfiguration = self->_lastNormalBackgroundViewConfiguration;
    v6 = [(UIView *)self tintColor];
    LOBYTE(lastNormalBackgroundViewConfiguration) = [v9 _backgroundFillIsEqual:lastNormalBackgroundViewConfiguration withTintColor:v6];

    if ((lastNormalBackgroundViewConfiguration & 1) == 0)
    {
      *(&self->_tableCellFlags + 1) |= 0x1000000000000uLL;
      [(UITableViewCell *)self _applySelectedStateToSeparators:1];
      v8 = [(UITableViewCell *)self _tableView];
      [v8 _cellDidShowSelectedBackground:self];
      goto LABEL_16;
    }
  }

  else if (![(UITableViewCell *)self isHighlighted])
  {
    [(UITableViewCell *)self isSelected];
  }

LABEL_13:
  v7 = *(&self->_tableCellFlags + 1);
  if ((v7 & 0x1000000000000) != 0)
  {
    *(&self->_tableCellFlags + 1) = v7 & 0xFFFEFFFFFFFFFFFFLL;
    [(UITableViewCell *)self _applySelectedStateToSeparators:0];
    v8 = [(UITableViewCell *)self _tableView];
    [v8 _cellDidHideSelectedBackground:self];
LABEL_16:
  }
}

- (void)_updateAccessoriesIfNeeded
{
  if ((*(&self->_tableCellFlags + 11) & 8) != 0)
  {
    [(UITableViewCell *)self _updateAccessories];
  }
}

- (void)_updateLeadingLayoutMarginForIndentation
{
  if ((*(&self->_tableCellFlags + 12) & 0x40) != 0)
  {
    extraLeadingLayoutMarginForIndentation = self->_extraLeadingLayoutMarginForIndentation;
    [self->_layoutManager contentIndentationForCell:self];
    self->_extraLeadingLayoutMarginForIndentation = v4;
    if (v4 - extraLeadingLayoutMarginForIndentation != 0.0)
    {

      [(UITableViewCell *)self _applyLeadingLayoutMarginAdjustment:?];
    }
  }
}

- (void)_restoreLabelTextAfterSystemTextSizeChangeIfNeeded
{
  p_tableCellFlags = &self->_tableCellFlags;
  v4 = *(&self->_tableCellFlags + 1);
  if ((v4 & 0x40000000) != 0)
  {
    v5 = [(UILabel *)self->_textLabel attributedText];

    if (!v5)
    {
      v6 = objc_getAssociatedObject(self, &unk_1ED498E52);
      v7 = [(UITableViewCell *)self textLabel];
      [v7 setAttributedText:v6];
    }

    objc_setAssociatedObject(self, &unk_1ED498E52, 0, 1);
    v4 = *(p_tableCellFlags + 1) & 0xFFFFFFFFBFFFFFFFLL;
    *(p_tableCellFlags + 1) = v4;
    if ((v4 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x100000000) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  v8 = [(UILabel *)self->_detailTextLabel attributedText];

  if (!v8)
  {
    v9 = objc_getAssociatedObject(self, &unk_1ED498E53);
    v10 = [(UITableViewCell *)self detailTextLabel];
    [v10 setAttributedText:v9];
  }

  objc_setAssociatedObject(self, &unk_1ED498E53, 0, 1);
  v11 = *(p_tableCellFlags + 1) & 0xFFFFFFFF7FFFFFFFLL;
  *(p_tableCellFlags + 1) = v11;
  if ((v11 & 0x100000000) != 0)
  {
LABEL_11:
    v12 = [(UITextField *)self->_editableTextField attributedText];

    if (!v12)
    {
      v13 = objc_getAssociatedObject(self, &unk_1ED498E54);
      v14 = [(UITableViewCell *)self editableTextField];
      [v14 setAttributedText:v13];
    }

    objc_setAssociatedObject(self, &unk_1ED498E54, 0, 1);
    *(p_tableCellFlags + 1) &= ~0x100000000uLL;
  }
}

- (BOOL)_usingBackgroundConfigurationOrDefaultBackgroundConfiguration
{
  v3 = dyld_program_sdk_at_least();
  if (v3)
  {
    if ([(UITableViewCell *)self _usingBackgroundViewConfiguration])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v4 = *(&self->_tableCellFlags + 1);
      LOBYTE(v3) = (v4 & 0x1B8000000000) == 0 && (v4 & 0x40000000000) == 0;
    }
  }

  return v3;
}

- (void)_updateAccessoryMetrics
{
  v3 = [(UITableViewCell *)self _accessoryManager];
  if (v3)
  {
    [(UITableViewCell *)self _effectiveSafeAreaInsets];
    [v3 setSafeAreaInsets:?];
    v4 = [(UIView *)self traitCollection];
    v5 = [(UITableViewCell *)self _constants];
    objc_initWeak(&location, self);
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = 0xFFEFFFFFFFFFFFFFLL;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__UITableViewCell__updateAccessoryMetrics__block_invoke;
    v20[3] = &unk_1E7122F48;
    v23 = v24;
    v6 = v4;
    v21 = v6;
    v7 = v5;
    v22 = v7;
    [v3 setStandardLayoutWidthProvider:v20];
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0xFFEFFFFFFFFFFFFFLL;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __42__UITableViewCell__updateAccessoryMetrics__block_invoke_2;
    v15[3] = &unk_1E70FE3D0;
    v17 = v19;
    v8 = v7;
    v16 = v8;
    objc_copyWeak(&v18, &location);
    [v3 setDisclosureLayoutWidthProvider:v15];
    v9 = [v3 leadingLayout];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__UITableViewCell__updateAccessoryMetrics__block_invoke_3;
    v13[3] = &unk_1E70FE358;
    objc_copyWeak(&v14, &location);
    [v9 setSpacingBlock:v13];
    v10 = [v3 trailingLayout];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__UITableViewCell__updateAccessoryMetrics__block_invoke_4;
    v11[3] = &unk_1E70FE358;
    objc_copyWeak(&v12, &location);
    [v10 setSpacingBlock:v11];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v18);

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v24, 8);
    objc_destroyWeak(&location);
  }
}

- (void)setNeedsUpdateConfiguration
{
  if (dyld_program_sdk_at_least())
  {
    *(&self->_tableCellFlags + 1) |= 0x2000000000uLL;
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {

      [(UITableViewCell *)self _performConfigurationStateUpdate];
    }

    else
    {

      [(UIView *)self setNeedsUpdateProperties];
    }
  }
}

- (void)_releaseTextLabel
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UILabel *)self->_textLabel setTableCell:0];
  }

  [(UIView *)self->_textLabel removeFromSuperview];
  textLabel = self->_textLabel;
  self->_textLabel = 0;
}

- (void)prepareForReuse
{
  [(UITableViewCell *)self _setDrawsTopSeparator:0];
  [(UIView *)self alpha];
  if (v3 != 1.0)
  {
    [(UIView *)self setAlpha:1.0];
  }

  [(UITableViewCell *)self _resetSelectionTimer];
  [(UITableViewCell *)self _resetEditControlRotation];
  *&self->_tableCellFlags &= 0xFFFFFDFFFFFFFFFELL;
  [(UITableViewCell *)self _setSwiped:0];
  [(UITableViewCell *)self _setSwipeContainerView:0];
  v4 = *(&self->_tableCellFlags + 1) | 0x4000000000000;
  *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFFFC7FFFFFFLL | 0x20000000;
  *(&self->_tableCellFlags + 1) = v4;
  [(UITableViewCell *)self setSelected:0];
  [(UITableViewCell *)self setHighlighted:0];
  [(UITableViewCell *)self _setShowingCompactContextMenu:0];
  [(UITableViewCell *)self _setReordering:0];
  [(UITableViewCell *)self _setDragState:0];
  [(UITableViewCell *)self _setDropState:0];
  [(UITableViewCell *)self setUserInteractionEnabledWhileDragging:0];
  *(&self->_tableCellFlags + 1) &= 0xFFFFFFFFFCFFFFFFLL;
  [(UIView *)self _removeAllAnimations:1];
  [(UITableViewCell *)self _updateHighlightColors];
  [(UITableViewCell *)self _resetRawLayoutMargins];
  if ([(UIView *)self isHidden])
  {
    [(UIView *)self setHidden:0];
  }

  [(UIView *)self->_selectedOverlayView removeFromSuperview];
  selectedOverlayView = self->_selectedOverlayView;
  self->_selectedOverlayView = 0;

  if (![(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    v6 = [(UITableViewCell *)self _existingSystemAccessoryView:0];
    [v6 _setHiddenForReuse:1];

    v7 = [(UITableViewCell *)self _existingSystemAccessoryView:1];
    [v7 _setHiddenForReuse:1];
  }

  [self->_layoutManager prepareCellForReuse:self];
  v8 = *(&self->_tableCellFlags + 1) | 0x8000;
  *&self->_tableCellFlags = *&self->_tableCellFlags & 0x5FFFF7FFFFFFFFFFLL | 0x2000080000000000;
  *(&self->_tableCellFlags + 1) = v8;
  [(UITableViewCell *)self _notifyIsDisplaying:0];
  [(UITableViewCell *)self setNeedsUpdateConfiguration];
  v9 = [(UIView *)self layer];
  [v9 clearHasBeenCommitted];
}

- (void)_resetSelectionTimer
{
  deselectTimer = self->_deselectTimer;
  if (deselectTimer)
  {
    [(NSTimer *)deselectTimer invalidate];
    v4 = self->_deselectTimer;
    self->_deselectTimer = 0;
  }

  self->_lastSelectionTime = -1.79769313e308;
}

- (void)_resetEditControlRotation
{
  v3 = [(UITableViewCell *)self editingData:0];
  v2 = [v3 editControl:0];
  [v2 setRotated:0];
}

- (void)_updateHighlightColors
{
  v3 = [(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance];
  [(UITableViewCell *)self _updateHighlightColorsForView:self highlighted:v3];
  v4 = [(UITableViewCell *)self _tableView];
  [v4 _tableStyle];

  if (!v3 && self->_unhighlightedStates)
  {
    [(UIView *)self _setMonitorsSubtree:0];
    [(UITableViewCell *)self _setOpaque:1 forSubview:self];
    CFRelease(self->_unhighlightedStates);
    self->_unhighlightedStates = 0;
  }

  [(UIView *)self setNeedsLayout];
}

- (BOOL)_shouldUseHighlightedOrSelectedAppearance
{
  if ((*&self->_tableCellFlags & 0x40000000000) != 0)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    return ((*&self->_tableCellFlags & 0x70) != 0) & (*&self->_tableCellFlags >> 7);
  }

  return v2;
}

- (void)_resetRawLayoutMargins
{
  if (dyld_program_sdk_at_least())
  {
    self->_extraLeadingLayoutMarginForIndentation = 0.0;
    v3.receiver = self;
    v3.super_class = UITableViewCell;
    [(UIView *)&v3 _setRawLayoutMargins:-1.79769313e308, -1.79769313e308, -1.79769313e308, -1.79769313e308];
  }
}

- (void)_releaseDetailTextLabel
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UILabel *)self->_detailTextLabel setTableCell:0];
  }

  [(UIView *)self->_detailTextLabel removeFromSuperview];
  detailTextLabel = self->_detailTextLabel;
  self->_detailTextLabel = 0;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[UIAnimator sharedAnimator];
  [v4 removeAnimationsForTarget:self];

  [(UITableViewCell *)self _releaseTextLabel];
  [(UITableViewCell *)self _releaseDetailTextLabel];
  unhighlightedStates = self->_unhighlightedStates;
  if (unhighlightedStates)
  {
    CFRelease(unhighlightedStates);
    self->_unhighlightedStates = 0;
  }

  objc_autoreleasePoolPop(v3);
  v6.receiver = self;
  v6.super_class = UITableViewCell;
  [(UIView *)&v6 dealloc];
}

- (id)_defaultBackgroundConfiguration
{
  if (self->_contentView && (objc_opt_respondsToSelector() & 1) != 0 && ([(UIView *)self->_contentView _containerBackgroundView], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = +[UIBackgroundConfiguration clearConfiguration];
    [v5 setCustomView:v4];
  }

  else
  {
    if (dyld_program_sdk_at_least())
    {
      v6 = +[UIBackgroundConfiguration listCellConfiguration];
    }

    else if ((*(&self->_tableCellFlags + 1) & 0x1F) == 2)
    {
      v6 = +[UIBackgroundConfiguration _listInsetGroupedCellConfiguration];
    }

    else
    {
      if ((*(&self->_tableCellFlags + 1) & 0x1F) != 0)
      {
        +[UIBackgroundConfiguration listGroupedCellConfiguration];
      }

      else
      {
        +[UIBackgroundConfiguration listPlainCellConfiguration];
      }
      v6 = ;
    }

    v5 = v6;
  }

  return v5;
}

- (BOOL)_appliesMaskingToBackgroundConfiguration
{
  tableCellFlags = self->_tableCellFlags;
  if ((tableCellFlags & 0x400) != 0 || (*(&self->_tableCellFlags + 12) & 0x10) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return (tableCellFlags >> 11) & 1;
  }

  return v3;
}

- (void)_resetBackgroundViewsAndColor
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__UITableViewCell__resetBackgroundViewsAndColor__block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [UIView _performSystemAppearanceModifications:v3];
  [(UITableViewCell *)self setBackgroundView:0];
  [(UITableViewCell *)self setSelectedBackgroundView:0];
  [(UITableViewCell *)self setMultipleSelectionBackgroundView:0];
}

uint64_t __48__UITableViewCell__resetBackgroundViewsAndColor__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setBackgroundColor:0];
  *(*(a1 + 32) + 408) &= ~0x1000000000000000uLL;
  return result;
}

- (void)_prepareForConfigurationStateUpdate
{
  if ((*(&self->_tableCellFlags + 1) & 0x20002000000000) == 0x2000000000)
  {
    v5[7] = v2;
    v5[8] = v3;
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __54__UITableViewCell__prepareForConfigurationStateUpdate__block_invoke;
      v5[3] = &unk_1E70F3590;
      v5[4] = self;
      [UIView performWithoutAnimation:v5];
    }
  }
}

- (CGRect)_separatorFrame
{
  if ((*(&self->super._viewFlags + 18) & 0x40) != 0)
  {
    [(UITableViewCell *)self _trailingSeparatorInset];
    v4 = v6;
    [(UITableViewCell *)self _leadingSeparatorInset];
  }

  else
  {
    [(UITableViewCell *)self _leadingSeparatorInset];
    v4 = v3;
    [(UITableViewCell *)self _trailingSeparatorInset];
  }

  if ((*(&self->_tableCellFlags + 1) & 4) != 0)
  {
    v4 = 0.0;
    v7 = 0.0;
  }

  else
  {
    v7 = v5;
  }

  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UITableViewCell *)self _separatorHeight];
  v17 = v16;
  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  v18 = CGRectGetHeight(v23) - v17;
  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  v19 = CGRectGetWidth(v24) - (v4 + v7);
  v20 = v4;
  v21 = v18;
  v22 = v17;
  result.size.height = v22;
  result.size.width = v19;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (double)_leadingSeparatorInset
{
  if (self->_separatorInset.left == -1.0)
  {
    v3 = [(UIView *)self traitCollection];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 6)
    {
      v5 = [(UITableViewCell *)self _tableView];
      v6 = v5;
      if (v5)
      {
        [v5 _rawSeparatorInset];
        if (v7 == -1.0)
        {

          return 0.0;
        }
      }
    }
  }

  [(UITableViewCell *)self _marginWidth];
  return result;
}

- (double)_marginWidth
{
  v3 = [(UITableViewCell *)self _tableView];
  v4 = v3;
  left = self->_separatorInset.left;
  if (left == -1.0 && v3 != 0)
  {
    [v3 _rawSeparatorInset];
    left = v7;
  }

  if (left == -1.0)
  {
    defaultLeadingMarginWidth = self->_defaultLeadingMarginWidth;
    [(UIView *)self directionalLayoutMargins];
    v10 = fmax(defaultLeadingMarginWidth, v9);
    [v4 _sectionContentInset];
    if (v11 > 0.0)
    {
      [v4 _sectionContentInset];
      v10 = v10 - v12;
    }

    if ((*(&self->_tableCellFlags + 12) & 0x40) != 0)
    {
      [(UITableViewCell *)self _preferredLeadingSeparatorInsetFromContentView];
      left = v24;
      if (v24 == 1.79769313e308)
      {
        [(UITableViewCell *)self _contentConfigurationPrimaryTextInsetFromCellLeadingEdge];
        left = fmax(v25, v10);
      }
    }

    else
    {
      v13 = [(UITableViewCell *)self layoutManager];
      v14 = [v13 shouldIncreaseMarginForImageViewInCell:self];

      if (v14)
      {
        v15 = [(UIView *)self traitCollection];
        v16 = [v15 userInterfaceIdiom];

        if (v16 == 3)
        {
          v17 = [(UITableViewCell *)self _imageView:0];
          [(UITableViewCell *)self _imageViewExtentFromCellLeadingEdge];
          v19 = v18;
          v20 = [v17 image];
          v21 = 8.0;
          if (!v20)
          {
            v21 = 12.0;
          }

          left = fmax(v19 + v21, v10);
        }

        else
        {
          [(UITableViewCell *)self _imageViewExtentFromCellLeadingEdge];
          v27 = v26;
          if (v26 != 0.0)
          {
            goto LABEL_27;
          }

          if (qword_1ED498E60 != -1)
          {
            dispatch_once(&qword_1ED498E60, &__block_literal_global_3_13);
          }

          if (byte_1ED498E51 == 1)
          {
            v28 = [(UITableViewCell *)self contentView];
            [v28 directionalLayoutMargins];
            v30 = v29;
          }

          else
          {
LABEL_27:
            v30 = v27 + 15.0;
          }

          left = fmax(v30, v10);
        }
      }

      else
      {
        left = fmax(v10, 15.0);
      }
    }
  }

  else if (![(UITableViewCell *)self _separatorInsetIsRelativeToCellEdges])
  {
    v22 = [(UITableViewCell *)self _shouldApplyReadableWidthInsets];
    if ((dyld_program_sdk_at_least() & 1) != 0 || v22)
    {
      [(UIView *)self directionalLayoutMargins];
      left = left + v23;
    }
  }

  return left;
}

- (double)_imageViewExtentFromCellLeadingEdge
{
  v3 = [(UIImageView *)self->_imageView image];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    [(UIView *)self->_imageView frame];
    IsEmpty = CGRectIsEmpty(v33);

    if (!IsEmpty)
    {
      v7 = *(&self->super._viewFlags + 2);
      [(UIView *)self bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [(UIView *)self->_imageView bounds];
      [(UIView *)self convertRect:self->_imageView fromView:?];
      if ((v7 & 0x400000) != 0)
      {
        v20 = v9;
      }

      else
      {
        v20 = v16;
      }

      if ((v7 & 0x400000) != 0)
      {
        v21 = v11;
      }

      else
      {
        v21 = v17;
      }

      if ((v7 & 0x400000) != 0)
      {
        v22 = v13;
      }

      else
      {
        v22 = v18;
      }

      if ((v7 & 0x400000) != 0)
      {
        v23 = v15;
      }

      else
      {
        v23 = v19;
      }

      if ((v7 & 0x400000) != 0)
      {
        v9 = v16;
        v11 = v17;
        v13 = v18;
        v15 = v19;
      }

      v34.origin.x = v20;
      v34.origin.y = v21;
      v34.size.width = v22;
      v34.size.height = v23;
      MaxX = CGRectGetMaxX(v34);
      v35.origin.x = v9;
      v35.origin.y = v11;
      v35.size.width = v13;
      v35.size.height = v15;
      v4 = MaxX - CGRectGetMinX(v35);
      v25 = [(UIImageView *)self->_imageView image];
      v26 = [(UIView *)self traitCollection];
      ShouldCenterImageHorizontallyForTraitCollection = _UITableCellShouldCenterImageHorizontallyForTraitCollection(v25, v26);

      if (ShouldCenterImageHorizontallyForTraitCollection)
      {
        v28 = [(UITableViewCell *)self _constants];
        v29 = [(UIView *)self traitCollection];
        [v28 defaultImageViewSymbolImageAndAccessoryLayoutWidthForSidebar:0 traitCollection:v29];
        v31 = v30;

        [(UIView *)self->_imageView frame];
        return v4 + (v31 - CGRectGetWidth(v36)) * 0.5;
      }
    }
  }

  return v4;
}

- (double)_trailingSeparatorInset
{
  if (self->_separatorInset.right == -1.0)
  {
    v3 = [(UIView *)self traitCollection];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 6)
    {
      v5 = [(UITableViewCell *)self _tableView];
      v6 = v5;
      if (v5)
      {
        [v5 _rawSeparatorInset];
        if (v7 == -1.0)
        {

          return 0.0;
        }
      }
    }
  }

  [(UITableViewCell *)self _rightMarginWidth];
  return result;
}

- (double)_rightMarginWidth
{
  right = self->_separatorInset.right;
  if (right == -1.0 && ([(UITableViewCell *)self _preferredTrailingSeparatorInsetFromContentView], right = v4, v4 == 1.79769313e308) || right == -1.0)
  {
    v5 = [(UITableViewCell *)self _tableView];
    v6 = v5;
    if (v5)
    {
      [v5 _rawSeparatorInset];
      right = v7;
    }

    else
    {
      right = -1.0;
    }
  }

  v8 = [(UITableViewCell *)self _shouldApplyReadableWidthInsets];
  v9 = v8;
  indexBarExtentFromEdge = self->_indexBarExtentFromEdge;
  if (right == -1.0)
  {
    if (v8 || _UISolariumEnabled())
    {
      [(UIView *)self directionalLayoutMargins];
      return fmax(indexBarExtentFromEdge, v11);
    }

    return indexBarExtentFromEdge;
  }

  else if (![(UITableViewCell *)self _separatorInsetIsRelativeToCellEdges])
  {
    if (v9 || _UISolariumEnabled())
    {
      [(UIView *)self directionalLayoutMargins];
      return right + fmax(v13, indexBarExtentFromEdge);
    }

    else
    {
      return right + indexBarExtentFromEdge;
    }
  }

  return right;
}

- (double)_preferredTrailingSeparatorInsetFromContentView
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1.79769313e308;
  }

  [(UIView *)self->_contentView _preferredTrailingSeparatorInset];
  if (v3 == 1.79769313e308)
  {
    return 1.79769313e308;
  }

  [(UITableViewCell *)self _contentViewInset:8 convertedToCellInsetOnEdge:?];
  return result;
}

- (BOOL)_shouldApplyReadableWidthInsets
{
  v3 = [(UIView *)self layoutMarginsFollowReadableWidth];
  if (v3)
  {
    v4 = [(UITableViewCell *)self _tableView];
    v5 = [v4 _scrollView];
    v6 = [v5 _safeAreaWidthExceedsReadableWidth];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (void)_updateSeparatorViewAlpha
{
  v3 = [(UITableViewCell *)self _shouldHideSeparator];
  v4 = 1.0;
  if (v3)
  {
    v4 = 0.0;
  }

  separatorView = self->_separatorView;

  [(UIView *)separatorView setAlpha:v4];
}

- (BOOL)_hidesBottomSeparatorWhenUnselected
{
  p_tableCellFlags = &self->_tableCellFlags;
  if ((*(&self->_tableCellFlags + 9) & 8) != 0)
  {
    return 1;
  }

  if ((*(&self->_tableCellFlags + 3) & 7u) - 3 > 1)
  {
    return 0;
  }

  if ([(UITableViewCell *)self _usesRoundedGroups])
  {
    return 1;
  }

  return (*(p_tableCellFlags + 8) & 0x40) == 0;
}

- (BOOL)_showSeparatorAtTopOfSection
{
  p_tableCellFlags = &self->_tableCellFlags;
  v3 = *(&self->_tableCellFlags + 3) & 7;
  v4 = v3 == 4 || v3 == 2;
  if (v4 && ![(UITableViewCell *)self _usesRoundedGroups])
  {
    return (*(p_tableCellFlags + 8) >> 5) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (CGRect)_topSeparatorFrame
{
  v3 = 0.0;
  v4 = 0.0;
  if (![(UITableViewCell *)self _showFullLengthTopSeparatorForTopOfSection])
  {
    v5 = *(&self->super._viewFlags + 2);
    if ((*(&self->_tableCellFlags + 8) & 0x10) != 0)
    {
      if (_UISolariumEnabled())
      {
        [(UIView *)self directionalLayoutMargins];
        v4 = v8;
      }

      [(UIView *)self directionalLayoutMargins];
      if ((v5 & 0x400000) != 0)
      {
        v3 = v9;
      }

      else
      {
        v3 = v4;
      }

      if ((v5 & 0x400000) == 0)
      {
        v4 = v9;
      }
    }

    else
    {
      if ((v5 & 0x400000) != 0)
      {
        [(UITableViewCell *)self _trailingSeparatorInset];
        v4 = v10;
        [(UITableViewCell *)self _leadingSeparatorInset];
      }

      else
      {
        [(UITableViewCell *)self _leadingSeparatorInset];
        v4 = v6;
        [(UITableViewCell *)self _trailingSeparatorInset];
      }

      v3 = v7;
    }
  }

  [(UITableViewCell *)self _separatorHeight];
  v12 = v11;
  [(UIView *)self bounds];
  v13 = CGRectGetWidth(v17) - (v3 + v4);
  v14 = 0.0;
  v15 = v4;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v13;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (void)_updateTopSeparatorViewAlpha
{
  v2 = 0.0;
  if ((*(&self->_tableCellFlags + 1) & 0x1000) == 0)
  {
    v2 = 1.0;
  }

  [(UIView *)self->_topSeparatorView setAlpha:v2];
}

- (id)_textLabel
{
  if (!self->_textLabel && (*(&self->_tableCellFlags + 12) & 0x40) == 0)
  {
    v3 = [self->_layoutManager textLabelForCell:self];
    textLabel = self->_textLabel;
    self->_textLabel = v3;

    v5 = self->_textLabel;
    if (v5)
    {
      v6 = [(UIView *)v5 superview];
      v7 = [(UITableViewCell *)self contentView];

      if (v6 != v7)
      {
        v8 = [(UITableViewCell *)self contentView];
        [v8 addSubview:self->_textLabel];
      }
    }
  }

  v9 = self->_textLabel;

  return v9;
}

- (id)_detailTextLabel
{
  if (!self->_detailTextLabel && (*(&self->_tableCellFlags + 12) & 0x40) == 0)
  {
    v3 = [self->_layoutManager detailTextLabelForCell:self];
    detailTextLabel = self->_detailTextLabel;
    self->_detailTextLabel = v3;

    v5 = self->_detailTextLabel;
    if (v5)
    {
      v6 = [(UIView *)v5 superview];
      v7 = [(UITableViewCell *)self contentView];

      if (v6 != v7)
      {
        v8 = [(UITableViewCell *)self contentView];
        [v8 addSubview:self->_detailTextLabel];
      }
    }
  }

  v9 = self->_detailTextLabel;

  return v9;
}

- (UIView)selectedBackgroundView
{
  if (![(UITableViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
  {
    [(UITableViewCell *)self _setupSelectedBackgroundView];
  }

  selectedBackgroundView = self->_selectedBackgroundView;

  return selectedBackgroundView;
}

- (id)_imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    if ((*(&self->_tableCellFlags + 12) & 0x40) != 0 || ([self->_layoutManager imageViewForCell:self], v4 = objc_claimAutoreleasedReturnValue(), v5 = self->_imageView, self->_imageView = v4, v5, -[UITableViewCell _updateDefaultImageSymbolConfiguration](self, "_updateDefaultImageSymbolConfiguration"), !self->_imageView))
    {
      imageView = 0;
    }

    else
    {
      backgroundView = self->_backgroundView;
      v7 = [(UITableViewCell *)self contentView];
      v8 = v7;
      v9 = self->_imageView;
      if (backgroundView)
      {
        [v7 insertSubview:v9 aboveSubview:self->_backgroundView];
      }

      else
      {
        [v7 addSubview:v9];
      }

      v10 = [(UITableViewCell *)self _tableView];
      [v10 _tableStyle];

      imageView = self->_imageView;
    }
  }

  return imageView;
}

- (void)_updateDefaultImageSymbolConfiguration
{
  if (self->_imageView)
  {
    constants = self->_constants;
    v5 = [(UIView *)self traitCollection];
    v4 = [(UITableConstants *)constants defaultImageSymbolConfigurationForTraitCollection:v5];
    [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v4];
  }
}

- (double)_roundedGroupCornerRadius
{
  v3 = [(UITableViewCell *)self _tableView];
  v4 = v3;
  if (!v3 || ([v3 _sectionCornerRadius], v5 == -1.0))
  {
    v8 = [(UIView *)self traitCollection];
    v9 = [v8 userInterfaceIdiom];
    if (v9 == 6)
    {
      v7 = 16.0;
    }

    else if (v9 == 3)
    {
      v7 = 10.0;
    }

    else if (_UISolariumEnabled())
    {
      v7 = 26.0;
    }

    else
    {
      v7 = 10.0;
    }
  }

  else
  {
    [v4 _sectionCornerRadius];
    v7 = v6;
  }

  return v7;
}

- (UIBackgroundConfiguration)backgroundConfiguration
{
  v2 = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)_backgroundViewConfiguration
{
  v2 = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

double __42__UITableViewCell__updateAccessoryMetrics__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _constants];
  [v8 interspaceBetweenInnerAccessoryIdentifier:v6 outerAccessoryIdentifier:v5 forCell:WeakRetained trailingAccessoryGroup:1];
  v10 = v9;

  return v10;
}

- (void)_resetContentViews
{
  [(UIView *)self->_imageView removeFromSuperview];
  imageView = self->_imageView;
  self->_imageView = 0;

  [(UIView *)self->_textLabel removeFromSuperview];
  textLabel = self->_textLabel;
  self->_textLabel = 0;

  [(UIView *)self->_detailTextLabel removeFromSuperview];
  detailTextLabel = self->_detailTextLabel;
  self->_detailTextLabel = 0;

  [(UITextField *)self->_editableTextField removeFromSuperview];
  editableTextField = self->_editableTextField;
  self->_editableTextField = 0;
}

- (void)_updatePopupMenuButtonFromContentView
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UIView *)self->_contentView _popupMenuButton];
    [(UITableViewCell *)self _setPopupMenuButton:v3];
  }
}

- (UIListContentConfiguration)defaultContentConfiguration
{
  v2 = (*&self->_tableCellFlags >> 46) & 0xFFFLL;
  if ((v2 - 1) < 2)
  {
    v3 = +[UIListContentConfiguration valueCellConfiguration];
    goto LABEL_9;
  }

  if (v2 == 3)
  {
    goto LABEL_4;
  }

  if (dyld_program_sdk_at_least())
  {
    v3 = +[UIListContentConfiguration cellConfiguration];
  }

  else
  {
    if (![(UITableViewCell *)self _usesRoundedGroups])
    {
LABEL_4:
      v3 = +[UIListContentConfiguration subtitleCellConfiguration];
      goto LABEL_9;
    }

    v3 = +[UIListContentConfiguration _defaultInsetGroupedCellConfiguration];
  }

LABEL_9:

  return v3;
}

- (id)contentConfiguration
{
  if ((*(&self->_tableCellFlags + 12) & 0x40) != 0)
  {
    viewForContentConfiguration = self->_viewForContentConfiguration;
    if (viewForContentConfiguration)
    {
      viewForContentConfiguration = [viewForContentConfiguration configuration];
    }
  }

  else
  {
    viewForContentConfiguration = 0;
  }

  return viewForContentConfiguration;
}

- (double)_preferredLeadingSeparatorInsetFromContentView
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1.79769313e308;
  }

  [(UIView *)self->_contentView _preferredLeadingSeparatorInset];
  if (v3 == 1.79769313e308)
  {
    return 1.79769313e308;
  }

  [(UITableViewCell *)self _contentViewInset:2 convertedToCellInsetOnEdge:?];
  return result;
}

- (void)_removeFloatingSeparator
{
  [(UIView *)self->_floatingSeparatorView removeFromSuperview];
  floatingSeparatorView = self->_floatingSeparatorView;
  self->_floatingSeparatorView = 0;
}

- (void)_removeInnerShadow
{
  [(UIView *)self->_topShadowAnimationView removeFromSuperview];
  topShadowAnimationView = self->_topShadowAnimationView;
  self->_topShadowAnimationView = 0;

  [(UIView *)self->_bottomShadowAnimationView removeFromSuperview];
  bottomShadowAnimationView = self->_bottomShadowAnimationView;
  self->_bottomShadowAnimationView = 0;
}

- (BOOL)_isMultiselecting
{
  p_tableCellFlags = &self->_tableCellFlags;
  tableCellFlags = self->_tableCellFlags;
  if ((tableCellFlags & 0x100) == 0)
  {
LABEL_2:
    v6 = [(UITableViewCell *)self _tableView];
    v7 = [v6 allowsMultipleSelection];

    if ((tableCellFlags & 0x100) == 0)
    {
      return v7;
    }

    goto LABEL_11;
  }

  if ((*&self->_tableCellFlags & 0x7000) != 0x3000)
  {
    v2 = [(UITableViewCell *)self _tableView];
    if (![v2 allowsMultipleSelectionDuringEditing] || (*(p_tableCellFlags + 12) & 4) != 0)
    {
      if ((*(p_tableCellFlags + 1) & 1) == 0)
      {
        goto LABEL_2;
      }

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

LABEL_11:

    return v7;
  }

  return 1;
}

- (BOOL)_hasCustomSelectionAction
{
  v2 = [(UITableViewCell *)self _effectivePopupMenuButton];
  v3 = v2 != 0;

  return v3;
}

- (id)_effectivePopupMenuButton
{
  v3 = [(UIView *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 5)
  {
    popupMenuButton = 0;
  }

  else
  {
    popupMenuButton = self->__popupMenuButton;
  }

  v5 = popupMenuButton;

  return popupMenuButton;
}

- (void)_cancelInternalPerformRequests
{
  v3 = objc_opt_class();

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel__updateHighlightColorsForAnimationHalfwayPoint object:0];
}

double __42__UITableViewCell__updateAccessoryMetrics__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 48) + 8) + 24);
  if (result == -1.79769313e308)
  {
    v3 = _UITableCellSupportsHorizontalCenteringBehaviorForTraitCollection(*(a1 + 32));
    v4 = 0;
    if (v3)
    {
      [*(a1 + 40) defaultImageViewSymbolImageAndAccessoryLayoutWidthForSidebar:0 traitCollection:{*(a1 + 32), 0.0}];
    }

    *(*(*(a1 + 48) + 8) + 24) = v4;
    return *(*(*(a1 + 48) + 8) + 24);
  }

  return result;
}

- (id)preferredFocusedView
{
  if (![(UITableViewCell *)self isEditing])
  {
    goto LABEL_17;
  }

  v3 = [(UITableViewCell *)self editingData:0];
  v4 = [v3 editControl:0];

  v5 = [(UITableViewCell *)self editingData:0];
  v6 = [v5 reorderControl:0];

  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    IsFocusedOrFocusable = _UIFocusItemIsFocusedOrFocusable(v6);
    v11 = v6;
    if ((IsFocusedOrFocusable & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v7 = _UIFocusItemIsFocusedOrFocusable(v4);
  v8 = v7;
  if (v6)
  {
    v9 = _UIFocusItemIsFocusedOrFocusable(v6);
    v10 = v9;
    if ((v8 & 1) == 0)
    {
      v11 = v6;
      if (!v9)
      {
        goto LABEL_16;
      }

LABEL_15:
      v13 = v11;

      goto LABEL_18;
    }

LABEL_12:
    if (([v4 isFocused] & v10) != 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = v4;
    }

    goto LABEL_15;
  }

  if (v7)
  {
    v10 = 0;
    goto LABEL_12;
  }

LABEL_16:

LABEL_17:
  v15.receiver = self;
  v15.super_class = UITableViewCell;
  v13 = [(UIView *)&v15 preferredFocusedView];
LABEL_18:

  return v13;
}

- (BOOL)canBecomeFocused
{
  v3 = [(UIView *)self _focusBehavior];
  if ([v3 preventsCellFocusabilityWhileEditing] && -[UITableViewCell isEditing](self, "isEditing"))
  {
    v4 = [(UITableViewCell *)self _tableView];
    v5 = [v4 _scrollView];
    v6 = [v5 canBecomeFocused];

    if (!v6)
    {
      return 0;
    }
  }

  else
  {
  }

  v8 = [(UITableViewCell *)self _existingContentView];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0 && ([v8 _preventFocus] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v9 = [(UITableViewCell *)self _tableView];
    v7 = [v9 _canFocusCell:self];
  }

  return v7;
}

- (void)_updateHighlightColorsForAnimationHalfwayPoint
{
  v3 = [(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance];
  [(UITableViewCell *)self _updateHighlightColorsForView:self highlighted:v3];
  if ((*(&self->_tableCellFlags + 5) & 0x10) != 0)
  {
    [(UIView *)self->_selectedOverlayView setSelected:v3];
  }

  if (!v3)
  {
    backgroundView = self->_backgroundView;

    [(UITableViewCell *)self _setOpaque:1 forSubview:backgroundView];
  }
}

- (void)_removeFocusedFloatingContentView
{
  v17 = *MEMORY[0x1E69E9840];
  floatingContentView = self->_floatingContentView;
  if (floatingContentView)
  {
    v4 = floatingContentView;
    v5 = self->_floatingContentView;
    self->_floatingContentView = 0;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(_UIFloatingContentView *)v4 contentView];
    v7 = [v6 subviews];

    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(UIView *)self addSubview:*(*(&v12 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [(UIView *)v4 removeFromSuperview];
  }
}

- (void)_deselectAnimationFinished
{
  *&self->_tableCellFlags &= ~0x800000000000000uLL;
  if (![(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance])
  {
    v3 = [(UITableViewCell *)self _selectedBackgroundView:0];
    [v3 removeFromSuperview];

    if ((*(&self->_tableCellFlags + 5) & 0x10) != 0)
    {
      [(UIView *)self->_selectedOverlayView removeFromSuperview];
      selectedOverlayView = self->_selectedOverlayView;
      self->_selectedOverlayView = 0;
    }

    [(UITableViewCell *)self _updateHighlightColors];
  }
}

void __65__UITableViewCell__ensureInitializeSystemAppearanceModifications__block_invoke_2(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) appearance];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v3 = +[UIColor tableCellBackgroundColor];
    [v2 setBackgroundColor:v3];
  }

  v15[0] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v5 = *(a1 + 32);
  v6 = [UIColor tableSeparatorLightColor:@"_popoverControllerStyle"];
  v14[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:3];
  v8 = [v5 appearanceMatchingProperties:v7 whenContainedInInstancesOfClasses:v4];
  [v8 _setSeparatorDrawsInVibrantLightModeUIAppearance:MEMORY[0x1E695E118]];

  v9 = [*(a1 + 32) appearanceMatchingProperties:&unk_1EFE34A18 whenContainedInInstancesOfClasses:v4];
  v10 = +[UIColor clearColor];
  [v9 setBackgroundColor:v10];

  v11 = [*(a1 + 32) appearanceMatchingProperties:&unk_1EFE34A40 whenContainedInInstancesOfClasses:v4];
  v12 = [UIColor colorWithWhite:1.0 alpha:0.3];
  [v11 setBackgroundColor:v12];
}

+ (void)_initializeForIdiom:(int64_t)a3
{
  if ((dyld_program_sdk_at_least() & 1) == 0 && objc_opt_class() == a1 && (a3 == 8 || a3 == 2))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__UITableViewCell__initializeForIdiom___block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = a3;
    v5[5] = a1;
    [UIView _performSystemAppearanceModifications:v5];
  }
}

void __39__UITableViewCell__initializeForIdiom___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [UITraitCollection traitCollectionWithUserInterfaceIdiom:*(a1 + 32)];
  v3 = _UITableConstantsForTraitCollection(v2);
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = [UICellConfigurationState _readonlyCellState:?];
  if (v3)
  {
    [v3 defaultCellBackgroundPropertiesForTableViewStyle:0 state:v4 traitCollection:{v2, v8}];
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
  }

  v5 = *(a1 + 40);
  v17[0] = _UIAppearanceContainerForUserInterfaceIdiom();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v7 = [v5 appearanceWhenContainedInInstancesOfClasses:v6];
  [v7 setBackgroundColor:*(&v8 + 1)];

  __destructor_8_s8_s16_s24_s80(&v8);
}

- (BOOL)_shouldChangeOpaqueStateOfView:(id)a3
{
  v4 = a3;
  if (![(UITableViewCell *)self _changesOpaqueStateOfSubviews]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || self->_backgroundView == v4 || self->_selectedBackgroundView == v4 || self->_multipleSelectionBackgroundView == v4 || self->_separatorView == v4 || self->_topSeparatorView == v4 || (floatingContentView = self->_floatingContentView, floatingContentView == v4))
  {
    v8 = 0;
  }

  else
  {
    v6 = [(_UIFloatingContentView *)floatingContentView transformView];
    if (v6 == v4)
    {
      v8 = 0;
    }

    else
    {
      v7 = [(_UIFloatingContentView *)self->_floatingContentView highlightView];
      v8 = v7 != v4;
    }
  }

  return v8;
}

- (int64_t)_popoverControllerStyle
{
  v2 = [(UITableViewCell *)self _tableView];
  v3 = [v2 _popoverControllerStyle];

  return v3;
}

- (BOOL)_isInModalViewController
{
  v2 = [(UITableViewCell *)self _tableView];
  v3 = [v2 _isInModalViewController];

  return v3;
}

- (id)_checkmarkImageWithTintColor:(id)a3
{
  v4 = a3;
  if ([(UIView *)self isFocused]&& ([(UITableViewCell *)self _constants], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    v7 = [(UITableViewCell *)self _constants];
    v8 = [(UITableViewCell *)self _tableView];
    v9 = [v7 defaultFocusedCheckmarkImageForCell:self inTableView:v8];
  }

  else
  {
    v7 = [(UITableViewCell *)self _constants];
    v9 = [v7 defaultCheckmarkImageForCell:self];
  }

  if (v4)
  {
    v10 = [v9 imageWithTintColor:v4 renderingMode:1];

    v9 = v10;
  }

  return v9;
}

- (id)_disclosureChevronImage
{
  v3 = [(UITableViewCell *)self _tableView];
  v4 = [v3 _accessoryBaseColor];
  v5 = [(UITableViewCell *)self _disclosureChevronImageWithBaseColor:v4];

  return v5;
}

- (id)_disclosureChevronImageWithBaseColor:(id)a3
{
  v4 = a3;
  if ([(UIView *)self isFocused]&& ([(UITableViewCell *)self _constants], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    v7 = [(UITableViewCell *)self _constants];
    v8 = [(UITableViewCell *)self _tableView];
    v9 = [v7 defaultFocusedDisclosureImageForCell:self inTableView:v8];
  }

  else
  {
    v7 = [(UITableViewCell *)self _constants];
    v9 = [v7 defaultDisclosureImageForCell:self withAccessoryBaseColor:v4];
  }

  return v9;
}

- (void)setNeedsUpdateConstraints
{
  v3 = [(UITableViewCell *)self contentView];
  [v3 setNeedsUpdateConstraints];

  [(UIView *)self _setNeedsUpdateConstraints];
  v4 = [(UIView *)self _layoutEngine];
  if (v4)
  {
  }

  else if ((*(&self->super._viewFlags + 7) & 0x40) == 0)
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if ([(UIView *)self translatesAutoresizingMaskIntoConstraints])
    {
      if (dyld_program_sdk_at_least())
      {
        v5 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &setTranslatesAutoresizingMaskIntoConstraints____s_category_0) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v8 = self;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Changing the translatesAutoresizingMaskIntoConstraints property of a UITableViewCell that is managed by a UITableView is not supported, and will result in incorrect self-sizing. Cell: %@", buf, 0xCu);
        }
      }
    }
  }

  v6.receiver = self;
  v6.super_class = UITableViewCell;
  [(UIView *)&v6 setTranslatesAutoresizingMaskIntoConstraints:v3];
}

- (BOOL)_forwardsSystemLayoutFittingSizeToContentView:(id)a3
{
  contentView = self->_contentView;
  if (contentView == a3)
  {
    return [(UIView *)contentView _wantsAutolayoutOrIsGuardingForEngineHosting];
  }

  else
  {
    return 0;
  }
}

- (CGRect)_updatedContentViewFrameForTargetWidth:(double)a3
{
  layoutManager = self->_layoutManager;
  v6 = [(UITableViewCell *)self currentStateMask];

  [layoutManager contentRectForCell:self forState:v6 rowWidth:a3];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  [(UITableViewCell *)self _performConfigurationStateUpdate];
  [self->_layoutManager contentRectForCell:self forState:-[UITableViewCell currentStateMask](self rowWidth:{"currentStateMask"), width}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(UIView *)self->_contentView setFrame:?];
  [(UITableViewCell *)self _updateLeadingLayoutMarginForIndentation];
  if ((*(&self->_tableCellFlags + 12) & 0x40) != 0 && [(UIView *)self->_contentView translatesAutoresizingMaskIntoConstraints])
  {
    if (a5 >= 1000.0)
    {
      v20 = height;
    }

    else
    {
      v20 = 1.79769313e308;
    }

    *&v18 = a4;
    *&v19 = a5;
    [(UIView *)self->_contentView systemLayoutSizeFittingSize:v15 withHorizontalFittingPriority:v20 verticalFittingPriority:v18, v19];
    v22 = v21;
    v24 = v23;
    v25 = self->_contentView;
    if (a4 != 1000.0 && v22 > 2777777.0 || a5 != 1000.0 && v24 > 2777777.0)
    {
      v47 = [MEMORY[0x1E696AAA8] currentHandler];
      v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIContentViewAssertValidFittingSize(UIView * _Nonnull __strong, CGSize, UILayoutPriority, UILayoutPriority)"}];
      v53.width = v22;
      v53.height = v24;
      v49 = NSStringFromCGSize(v53);
      [v47 handleFailureInFunction:v48 file:@"_UIContentViewShared.h" lineNumber:73 description:{@"Content view returned an invalid size %@ from -systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority: which is not allowed. If you have implemented a custom content view, you need to add constraints inside it so that its size is not ambiguous, or you need to manually compute and return a valid size. Content view: %@", v49, v25}];
    }

    [(UITableViewCell *)self _verticalPaddingForSeparator];
    v27 = v24 + v26;
    if (a4 >= 1000.0)
    {
      v28 = width;
    }

    else
    {
      v28 = v22;
    }

    if (a5 < 1000.0)
    {
      height = v27;
    }
  }

  else if ((-[UIView _wantsAutolayoutOrIsGuardingForEngineHosting](self->_contentView) & 1) != 0 || [objc_opt_class() requiresConstraintBasedLayout])
  {
    if (!_UIEngineHostingViewsShouldGuardWantsAutolayoutFlagPropagation() || ([(UIView *)self->_contentView _usesLayoutEngineHostingConstraints]& 1) == 0)
    {
      [(UIView *)self->_contentView _setWantsAutolayout];
    }

    v52 = 1;
    contentView = self->_contentView;
    v55.origin.x = v11;
    v55.origin.y = v13;
    v55.size.width = v15;
    v55.size.height = v17;
    v32 = CGRectGetWidth(v55);
    if (a5 == 50.0 && height == 0.0)
    {
      v36 = &v52;
    }

    else
    {
      v36 = 0;
    }

    *&v33 = a4;
    *&v34 = a5;
    [(UIView *)contentView _systemLayoutSizeFittingSize:v36 withHorizontalFittingPriority:v32 verticalFittingPriority:height hasIntentionallyCollapsedHeight:v33, v34];
    v28 = v37;
    v39 = v38;
    if (v38 == 0.0 && v52 != 1)
    {
      [(UITableViewCell *)self sizeThatFits:width, height];
      height = v46;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __101__UITableViewCell_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      if (systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority__once != -1)
      {
        dispatch_once(&systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority__once, block);
      }
    }

    else
    {
      [(UITableViewCell *)self _verticalPaddingForSeparator];
      height = v39 + v40;
    }
  }

  else
  {
    v50.receiver = self;
    v50.super_class = UITableViewCell;
    *&v29 = a4;
    *&v30 = a5;
    [(UIView *)&v50 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v29, v30];
    v28 = v43;
    height = v44;
    if (v44 != 0.0 && dyld_program_sdk_at_least())
    {
      [(UITableViewCell *)self _verticalPaddingForSeparator];
      height = height + v45;
    }
  }

  v41 = v28;
  v42 = height;
  result.height = v42;
  result.width = v41;
  return result;
}

void __101__UITableViewCell_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UITableViewCellExpansionAccessoryIdentifier_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Warning once only: Detected a case where constraints ambiguously suggest a height of zero for a table view cell's content view. We're considering the collapse unintentional and using standard height instead. Cell: %@", &v4, 0xCu);
  }
}

- (void)_updateHighlightColorsForView:(id)a3 highlighted:(BOOL)a4
{
  v5 = a4;
  v28 = *MEMORY[0x1E69E9840];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_28;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_28;
  }

  p_tableCellFlags = &self->_tableCellFlags;
  tableCellFlags = self->_tableCellFlags;
  if ((tableCellFlags & 0x100) != 0)
  {
    if ((*&self->_tableCellFlags & 0x7000) == 0x3000)
    {
      goto LABEL_28;
    }

    v4 = [(UITableViewCell *)self _tableView];
    if ([v4 allowsMultipleSelectionDuringEditing])
    {
      v12 = *p_tableCellFlags;
      if ((*(&self->_tableCellFlags + 12) & 4) == 0)
      {

        if ((v12 & 0x100) != 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v5)
        {
          v13 = a3;
          v14 = 1;
        }

        else
        {
          unhighlightedStates = self->_unhighlightedStates;
          if (unhighlightedStates)
          {
            v16 = CFDictionaryGetValue(unhighlightedStates, a3);
            if (v16)
            {
              v17 = v16;
              [a3 setHighlighted:{objc_msgSend(v16, "highlighted")}];

              goto LABEL_28;
            }
          }

          v13 = a3;
          v14 = 0;
        }

        [v13 setHighlighted:v14];
        goto LABEL_28;
      }
    }

    else
    {
      v12 = *p_tableCellFlags;
    }

    if ((v12 & 0x100) != 0)
    {
LABEL_20:

      goto LABEL_21;
    }
  }

  v10 = [(UITableViewCell *)self _tableView];
  if (![v10 allowsMultipleSelection])
  {

    if ((tableCellFlags & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v11 = *p_tableCellFlags;

  if ((tableCellFlags & 0x100) != 0)
  {
  }

  if ((v11 & 0x100) == 0)
  {
    goto LABEL_21;
  }

LABEL_28:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && self->_selectedBackgroundView != a3)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = [a3 subviews];
    v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [(UITableViewCell *)self _updateHighlightColorsForView:*(*(&v23 + 1) + 8 * i) highlighted:v5];
        }

        v20 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v20);
    }
  }
}

- (void)_updateAndCacheBackgroundColorForHighlightIgnoringSelection:(BOOL)a3
{
  v3 = a3;
  if (([(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance]|| v3) && !self->_unhighlightedStates)
  {
    [(UITableViewCell *)self _saveOpaqueViewState:self];

    [(UITableViewCell *)self _setOpaque:0 forSubview:self];
  }
}

- (id)_defaultFont
{
  v3 = [(UITableViewCell *)self _constants];
  v4 = [v3 defaultTextLabelFontForCellStyle:{-[UITableViewCell _cellStyle](self, "_cellStyle")}];

  return v4;
}

- (void)_contentViewLabelTextDidChange:(id)a3
{
  v4 = a3;
  if (self->_detailTextLabel == v4 || self->_textLabel == v4)
  {
    v8 = v4;
    if (v4)
    {
      v5 = [(UIView *)v4 superview];
      v6 = [(UITableViewCell *)self contentView];

      if (v5 != v6)
      {
        v7 = [(UITableViewCell *)self contentView];
        [v7 addSubview:v8];
      }
    }

    [(UIView *)self setNeedsLayout];
    v4 = v8;
  }
}

- (id)_editableTextField
{
  editableTextField = self->_editableTextField;
  if (!editableTextField)
  {
    if ((*(&self->_tableCellFlags + 12) & 0x40) != 0 || ([self->_layoutManager editableTextFieldForCell:self], v4 = objc_claimAutoreleasedReturnValue(), v5 = self->_editableTextField, self->_editableTextField = v4, v5, !self->_editableTextField))
    {
      editableTextField = 0;
    }

    else
    {
      v6 = [(UITableViewCell *)self contentView];
      [v6 addSubview:self->_editableTextField];

      editableTextField = self->_editableTextField;
    }
  }

  return editableTextField;
}

- (id)_badge
{
  badge = self->_badge;
  if (!badge)
  {
    v4 = [self->_layoutManager badgeForCell:self];
    v5 = self->_badge;
    self->_badge = v4;

    badge = self->_badge;
  }

  return badge;
}

- (BOOL)_gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(UITableViewCell *)self _tableView];
  v6 = [v5 _shouldShowMenuForCell:self];
  v7 = 0x400000000000000;
  if (!v6)
  {
    v7 = 0;
  }

  *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFBFFFFFFFFFFFFFFLL | v7;

  longPressGesture = self->_longPressGesture;
  if (longPressGesture == v4)
  {
    return (*(&self->_tableCellFlags + 7) >> 2) & 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)_longPressGestureRecognized:(id)a3
{
  v4 = a3;
  if ((*(&self->_tableCellFlags + 7) & 4) != 0)
  {
    v6 = v4;
    v5 = [v4 state] == 1;
    v4 = v6;
    if (v5)
    {
      [(UITableViewCell *)self _showMenuFromLongPressGesture];
      v4 = v6;
    }
  }
}

- (void)_showMenuFromLongPressGesture
{
  if (!self->_editMenuInteraction)
  {
    v3 = [[UIEditMenuInteraction alloc] initWithDelegate:self];
    editMenuInteraction = self->_editMenuInteraction;
    self->_editMenuInteraction = v3;

    [(UIView *)self addInteraction:self->_editMenuInteraction];
  }

  [(UITableViewCell *)self center];
  v6 = v5;
  v8 = v7;
  v9 = [(UIView *)self superview];
  [(UIView *)self convertPoint:v9 fromView:v6, v8];
  v11 = v10;
  v13 = v12;

  v14 = [UIEditMenuConfiguration configurationWithIdentifier:0 sourcePoint:v11, v13];
  [v14 set_firstResponderTarget:self];
  [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v14];
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a5;
  if (self->_editMenuInteraction == a3)
  {
    v9 = _UIMenuForUIMenuControllerMenuItems();
    if (v9)
    {
      v10 = [v7 arrayByAddingObject:v9];

      v7 = v10;
    }

    v8 = [UIMenu menuWithChildren:v7];
  }

  else
  {
    v8 = [UIMenu menuWithChildren:v7];
  }

  return v8;
}

- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4
{
  if (self->_editMenuInteraction == a3)
  {
    v9 = [(UITableViewCell *)self _tableView];
    [v9 _calloutTargetRectForCell:self];
    v4 = v10;
    v5 = v11;
    v6 = v12;
    v7 = v13;
  }

  else
  {
    v4 = *MEMORY[0x1E695F050];
    v5 = *(MEMORY[0x1E695F050] + 8);
    v6 = *(MEMORY[0x1E695F050] + 16);
    v7 = *(MEMORY[0x1E695F050] + 24);
  }

  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)editMenuInteraction:(id)a3 willPresentMenuForConfiguration:(id)a4 animator:(id)a5
{
  if (self->_editMenuInteraction == a3)
  {
    [(UITableViewCell *)self setSelected:1 animated:0, a5];
  }
}

- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  if (self->_editMenuInteraction == v7)
  {
    v8 = a5;
    [(UITableViewCell *)self setSelected:0 animated:0];
    editMenuInteraction = self->_editMenuInteraction;
    self->_editMenuInteraction = 0;

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__UITableViewCell_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke;
    v10[3] = &unk_1E70F3590;
    v11 = v7;
    [v8 addCompletion:v10];
  }
}

void __80__UITableViewCell_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeInteraction:*(a1 + 32)];
}

- (void)_setContentClipCorners:(unint64_t)a3 updateCorners:(BOOL)a4
{
  v4 = a4;
  v16 = [(UIView *)self layer];
  v7 = [(UITableViewCell *)self _swipeContainerView];
  v8 = [v7 layer];

  if (v8)
  {
    [v16 setCornerRadius:0.0];
    [v16 setMasksToBounds:0];
    v9 = v8;

    v10 = v9;
  }

  else
  {
    v10 = v16;
  }

  v17 = v10;
  if (a3)
  {
    [v10 setMaskedCorners:a3];
    [v17 setMasksToBounds:1];
    [(UITableViewCell *)self _roundedGroupCornerRadius];
    v11 = [UICornerRadius fixedRadius:?];
    v12 = [UICornerConfiguration _configurationWithRadius:v11 mask:a3];
    [(UIView *)self setCornerConfiguration:v12];
  }

  else
  {
    if (v4)
    {
      [v10 setMaskedCorners:0];
      v13 = +[UICornerConfiguration unspecifiedConfiguration];
      [(UIView *)self setCornerConfiguration:v13];

      v10 = v17;
    }

    v14 = *(&self->_tableCellFlags + 1);
    if ((v14 & 0x2002) != 0)
    {
      v15 = 1;
    }

    else if (v14)
    {
      v15 = [(UITableViewCell *)self _shouldMaskToBoundsWhileAnimating];
      v10 = v17;
    }

    else
    {
      v15 = 0;
    }

    [v10 setMasksToBounds:v15];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (!dyld_program_sdk_at_least())
  {
    v9 = [(UITableViewCell *)self _tableView];
    if (![v9 _canPerformAction:a3 forCell:self sender:v6])
    {
      v11 = 0;
      goto LABEL_15;
    }

    v10 = objc_opt_respondsToSelector();
LABEL_13:
    v11 = v10;
LABEL_15:

    goto LABEL_16;
  }

  if (sel_cut_ == a3 || sel_copy_ == a3 || sel_paste_ == a3)
  {
    v9 = [(UITableViewCell *)self _tableView];
    v10 = [v9 _canPerformAction:a3 forCell:self sender:v6];
    goto LABEL_13;
  }

  v13.receiver = self;
  v13.super_class = UITableViewCell;
  v11 = [(UIView *)&v13 canPerformAction:a3 withSender:v6];
LABEL_16:

  return v11 & 1;
}

- (void)_setReordering:(BOOL)a3
{
  p_tableCellFlags = &self->_tableCellFlags;
  if (((((*(&self->_tableCellFlags + 1) & 4) == 0) ^ a3) & 1) == 0)
  {
    v4 = a3;
    [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
    v6 = 1024;
    if (!v4)
    {
      v6 = 0;
    }

    *p_tableCellFlags = *p_tableCellFlags & 0xFFFFFFFFFFFFFBFFLL | v6;
    if (!v4 && [(UITableViewCell *)self _usesRoundedGroups])
    {
      if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
      {
        *(p_tableCellFlags + 1) |= 0x1000000000uLL;
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __34__UITableViewCell__setReordering___block_invoke;
        v7[3] = &unk_1E70F5AC0;
        v7[4] = self;
        [UIView _addCompletion:v7];
      }
    }

    [(UITableViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_setDrawsTopSeparatorDuringReordering:(BOOL)a3
{
  v3 = 0x800000;
  if (a3)
  {
    v3 = 0;
  }

  *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFFFFF7FFFFFLL | v3;
  [(UITableViewCell *)self _updateSeparatorContent];
}

- (void)setAccessoryActionSegueTemplate:(id)a3
{
  v5 = a3;
  if (self->_accessoryActionSegueTemplate != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_accessoryActionSegueTemplate, a3);
    v5 = v6;
  }
}

- (void)setSelectionSegueTemplate:(id)a3
{
  v5 = a3;
  if (self->_selectionSegueTemplate != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_selectionSegueTemplate, a3);
    v5 = v6;
  }
}

- (void)_setShouldHaveFullLengthBottomSeparator:(BOOL)a3
{
  if (((((*(&self->_tableCellFlags + 1) & 4) == 0) ^ a3) & 1) == 0)
  {
    v3 = 4;
    if (!a3)
    {
      v3 = 0;
    }

    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFFFFBLL | v3;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_setShouldHaveFullLengthTopSeparator:(BOOL)a3
{
  if (((((*(&self->_tableCellFlags + 1) & 8) == 0) ^ a3) & 1) == 0)
  {
    v3 = 8;
    if (!a3)
    {
      v3 = 0;
    }

    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFFFF7 | v3;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_setTopSeparatorFollowsLayoutMargins:(BOOL)a3
{
  if (((((*(&self->_tableCellFlags + 1) & 0x10) == 0) ^ a3) & 1) == 0)
  {
    v3 = 16;
    if (!a3)
    {
      v3 = 0;
    }

    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFFFEFLL | v3;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (UIEdgeInsets)_backgroundSeparatorInset
{
  [(UITableViewCell *)self separatorInset];
  if ((*(&self->_tableCellFlags + 1) & 4) != 0)
  {
    v6 = 0.0;
    v4 = 0.0;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)_applySelectedStateToSeparators:(BOOL)a3
{
  v4 = 4096;
  if (!a3)
  {
    v4 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFEFFFLL | v4;
  [(UITableViewCell *)self _updateSeparatorViewAlpha];

  [(UITableViewCell *)self _updateTopSeparatorViewAlpha];
}

- (id)_addSeparatorWithFrame:(CGRect)a3
{
  v4 = [[_UITableViewCellSeparatorView alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v6 = *(&self->_tableCellFlags + 1);
  if ((v6 & 0x400) != 0)
  {
    [(_UITableViewCellSeparatorView *)v4 setDrawsWithVibrantLightMode:1];
  }

  else
  {
    [(UIView *)v4 _setDrawsAsBackdropOverlayWithBlendMode:(v6 >> 7) & 7];
  }

  [(_UITableViewCellSeparatorView *)v5 setSeparatorEffect:self->_separatorEffect];
  [(UIView *)self addSubview:v5];

  return v5;
}

- (void)_setDrawsSeparatorAtTopOfSection:(BOOL)a3
{
  if (((((*(&self->_tableCellFlags + 1) & 0x20) == 0) ^ a3) & 1) == 0)
  {
    v3 = 32;
    if (!a3)
    {
      v3 = 0;
    }

    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFFFDFLL | v3;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_setDrawsSeparatorAtBottomOfSection:(BOOL)a3
{
  if (((((*(&self->_tableCellFlags + 1) & 0x40) == 0) ^ a3) & 1) == 0)
  {
    v3 = 64;
    if (!a3)
    {
      v3 = 0;
    }

    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFFFBFLL | v3;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (self->_floatingContentView)
  {
    v10 = [(UITableViewCell *)self _subviewsForFloatingContentView];
    v11 = [v10 containsObject:v8];

    if (!v11)
    {
      [(UIView *)&v21 _addSubview:v8 positioned:a4 relativeTo:v9, v20.receiver, v20.super_class, self, UITableViewCell];
      goto LABEL_20;
    }

    if (a4 == -3)
    {
      v15 = [v9 superview];
      v16 = [(_UIFloatingContentView *)self->_floatingContentView contentView];

      if (v15 != v16)
      {
        v14 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
        [v14 insertSubview:v8 atIndex:0];
        goto LABEL_19;
      }

      a4 = -3;
    }

    else if (a4 == -2)
    {
      v12 = [v9 superview];
      v13 = [(_UIFloatingContentView *)self->_floatingContentView contentView];

      if (v12 != v13)
      {
        v14 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
        [v14 addSubview:v8];
LABEL_19:

        goto LABEL_20;
      }

      a4 = -2;
    }

    else if (a4 >= 1)
    {
      v17 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
      v18 = [v17 subviews];
      v19 = [v18 count];

      if (v19 < a4)
      {
        a4 = v19;
      }
    }

    v14 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
    [v14 _addSubview:v8 positioned:a4 relativeTo:v9];
    goto LABEL_19;
  }

  [(UIView *)&v20 _addSubview:v8 positioned:a4 relativeTo:v9, self, UITableViewCell, v21.receiver, v21.super_class];
LABEL_20:
}

- (void)sendSubviewToBack:(id)a3
{
  v4 = a3;
  v5 = [v4 superview];
  v6 = [(_UIFloatingContentView *)self->_floatingContentView contentView];

  if (v5 == v6)
  {
    v7 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
    [v7 sendSubviewToBack:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITableViewCell;
    [(UIView *)&v8 sendSubviewToBack:v4];
  }
}

- (void)bringSubviewToFront:(id)a3
{
  v4 = a3;
  v5 = [v4 superview];
  v6 = [(_UIFloatingContentView *)self->_floatingContentView contentView];

  if (v5 == v6)
  {
    v7 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
    [v7 bringSubviewToFront:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITableViewCell;
    [(UIView *)&v8 bringSubviewToFront:v4];
  }
}

- (void)_systemTextSizeChanged
{
  if (!dyld_program_sdk_at_least())
  {
    [(UITableViewCell *)self _releaseTextLabel];
    [(UITableViewCell *)self _releaseDetailTextLabel];
    p_editableTextField = &self->_editableTextField;
    goto LABEL_12;
  }

  textLabel = self->_textLabel;
  if (textLabel && ![(UILabel *)textLabel adjustsFontForContentSizeCategory])
  {
    v4 = [(UILabel *)self->_textLabel attributedText];
    objc_setAssociatedObject(self, &unk_1ED498E52, v4, 1);

    *(&self->_tableCellFlags + 1) |= 0x40000000uLL;
    [(UITableViewCell *)self _releaseTextLabel];
  }

  detailTextLabel = self->_detailTextLabel;
  if (detailTextLabel && ![(UILabel *)detailTextLabel adjustsFontForContentSizeCategory])
  {
    v6 = [(UILabel *)self->_detailTextLabel attributedText];
    objc_setAssociatedObject(self, &unk_1ED498E53, v6, 1);

    *(&self->_tableCellFlags + 1) |= 0x80000000uLL;
    [(UITableViewCell *)self _releaseDetailTextLabel];
  }

  p_editableTextField = &self->_editableTextField;
  editableTextField = self->_editableTextField;
  if (editableTextField && ![(UITextField *)editableTextField adjustsFontForContentSizeCategory])
  {
    v9 = [(UITextField *)*p_editableTextField attributedText];
    objc_setAssociatedObject(self, &unk_1ED498E54, v9, 1);

    *(&self->_tableCellFlags + 1) |= 0x100000000uLL;
LABEL_12:
    [(UITextField *)*p_editableTextField removeFromSuperview];
    v10 = *p_editableTextField;
    *p_editableTextField = 0;
  }

  [(UIView *)self setNeedsLayout];
}

- (void)setClipsToBounds:(BOOL)a3
{
  if (((((*(&self->_tableCellFlags + 1) & 0x2000) == 0) ^ a3) & 1) == 0)
  {
    v3 = 0x2000;
    if (!a3)
    {
      v3 = 0;
    }

    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFDFFFLL | v3;
    [(UITableViewCell *)self _updateContentClip];
  }
}

- (UITableViewCell)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  v4 = style;
  v6 = reuseIdentifier;
  v21.receiver = self;
  v21.super_class = UITableViewCell;
  v7 = [(UIView *)&v21 initWithFrame:0.0, 0.0, 320.0, 44.0];
  v8 = v7;
  if (v7)
  {
    [(UITableViewCell *)v7 _setupTableViewCellCommon];
    p_tableCellFlags = &v8->_tableCellFlags;
    *&v8->_tableCellFlags = *&v8->_tableCellFlags & 0xFC003FFFFFFFFFFFLL | ((v4 & 0xFFF) << 46);
    v10 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v10, sel__drawContentInRect_selected_);
    v12 = objc_opt_class();
    v13 = MethodImplementation != class_getMethodImplementation(v12, sel__drawContentInRect_selected_);
    v14 = (*&v8->_tableCellFlags >> 46) & 0xFFFLL;
    *&v8->_tableCellFlags = *&v8->_tableCellFlags & 0xFFFFEFFFFFFFFFFFLL | (v13 << 44);
    v15 = [UITableViewCellLayoutManager layoutManagerForTableViewCellStyle:v14];
    [(UITableViewCell *)v8 setLayoutManager:v15];

    if ((*(&v8->_tableCellFlags + 5) & 0x10) == 0 && (dyld_program_sdk_at_least() & 1) == 0 && !v8->_contentView)
    {
      v16 = [(UITableViewCell *)v8 _createDefaultContentView];
      [(UITableViewCell *)v8 _setContentView:v16];
    }

    [(UITableViewCell *)v8 _setupModernAccessoriesLayout];
    *p_tableCellFlags = *p_tableCellFlags & 0xFFFFFFFFFFFFFF81 | 0x32;
    v17 = [(NSString *)v6 copy];
    v18 = v8->_reuseIdentifier;
    v8->_reuseIdentifier = v17;

    v8->_returnAction = 0;
    [(UIView *)v8 setNeedsDisplayOnBoundsChange:1];
    *p_tableCellFlags |= 0x80000000000uLL;
    v8->_textFieldOffset = 114.0;
    deselectTimer = v8->_deselectTimer;
    v8->_deselectTimer = 0;

    *(&v8->_tableCellFlags + 1) &= 0xFFFFFFFFFFF8FFFFLL;
  }

  return v8;
}

- (UITableViewCell)initWithCoder:(NSCoder *)coder
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = coder;
  v64.receiver = self;
  v64.super_class = UITableViewCell;
  v5 = [(UIView *)&v64 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(UITableViewCell *)v5 _setupTableViewCellCommon];
    v7 = [(NSCoder *)v4 decodeObjectForKey:@"UIReuseIdentifier"];
    reuseIdentifier = v6->_reuseIdentifier;
    v6->_reuseIdentifier = v7;

    v9 = [(NSCoder *)v4 decodeBoolForKey:@"UIShowsReorderControl"];
    p_tableCellFlags = &v6->_tableCellFlags;
    v11 = 0x200000;
    if (!v9)
    {
      v11 = 0;
    }

    *p_tableCellFlags = *p_tableCellFlags & 0xFFFFFFFFFFDFFFFFLL | v11;
    v12 = [(NSCoder *)v4 decodeIntegerForKey:@"UITableViewCellStyle"];
    *p_tableCellFlags = *p_tableCellFlags & 0xFC003FFFFFFFFFFFLL | ((v12 & 0xFFF) << 46);
    v13 = [UITableViewCellLayoutManager layoutManagerForTableViewCellStyle:v12 & 0xFFF];
    [(UITableViewCell *)v6 setLayoutManager:v13];

    v6->_indentationLevel = [(NSCoder *)v4 decodeIntegerForKey:@"UIIndentationLevel"];
    [(UITableViewCell *)v6 _setupModernAccessoriesLayout];
    *p_tableCellFlags = *p_tableCellFlags & 0xFFFFFFFFFFFFFFF1 | 2;
    if ([(NSCoder *)v4 containsValueForKey:@"UISeparatorStyle"])
    {
      v14 = *p_tableCellFlags & 0xFFFFFFFFFFFFFFF1 | (2 * ([(NSCoder *)v4 decodeIntegerForKey:@"UISeparatorStyle"]& 7));
    }

    else
    {
      v14 = *p_tableCellFlags;
    }

    *p_tableCellFlags = v14 & 0xFFFFFFFFFFFFFF8FLL | 0x30;
    if ([(NSCoder *)v4 containsValueForKey:@"UISelectionStyle"])
    {
      *p_tableCellFlags = *p_tableCellFlags & 0xFFFFFFFFFFFFFF8FLL | (16 * ([(NSCoder *)v4 decodeIntegerForKey:@"UISelectionStyle"]& 7));
    }

    *p_tableCellFlags = *p_tableCellFlags & 0xFFFFFFFFFFFF8FFFLL | (([(NSCoder *)v4 decodeIntegerForKey:@"UIEditingStyle"]& 7) << 12);
    *p_tableCellFlags = *p_tableCellFlags & 0xFFFFFFFFFFFC7FFFLL | (([(NSCoder *)v4 decodeIntegerForKey:@"UIAccessoryType"]& 7) << 15);
    *p_tableCellFlags = *p_tableCellFlags & 0xFFFFFFFFFFE3FFFFLL | (([(NSCoder *)v4 decodeIntegerForKey:@"UIEditingAccessoryType"]& 7) << 18);
    if ([(NSCoder *)v4 containsValueForKey:@"UIIndentationWidth"])
    {
      [(NSCoder *)v4 decodeFloatForKey:@"UIIndentationWidth"];
      [(UITableViewCell *)v6 setIndentationWidth:v15];
    }

    v16 = [(NSCoder *)v4 decodeObjectForKey:@"UIContentConfigurationIdentifier"];
    *(&v6->_tableCellFlags + 1) = *(&v6->_tableCellFlags + 1) & 0xFFFFFFBFFFFFFFFFLL | ((v16 != 0) << 38);

    v17 = [(NSCoder *)v4 decodeObjectForKey:@"UIContentConfigurationView"];
    viewForContentConfiguration = v6->_viewForContentConfiguration;
    v6->_viewForContentConfiguration = v17;

    v19 = [(NSCoder *)v4 decodeObjectForKey:@"UIContentView"];
    contentView = v6->_contentView;
    v6->_contentView = v19;

    if (!v6->_contentView || (*(&v6->_tableCellFlags + 12) & 0x40) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v21 = [UITableViewCellContentView alloc];
      [(UIView *)v6->_contentView frame];
      v22 = [(UITableViewCellContentView *)v21 initWithFrame:?];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v23 = [(UIView *)v6->_contentView subviews];
      v24 = [v23 countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v61;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v61 != v26)
            {
              objc_enumerationMutation(v23);
            }

            [(UIView *)v22 addSubview:*(*(&v60 + 1) + 8 * i)];
          }

          v25 = [v23 countByEnumeratingWithState:&v60 objects:v65 count:16];
        }

        while (v25);
      }

      if (v6->_contentView)
      {
        [(UIView *)v6 insertSubview:v22 belowSubview:?];
        v28 = v6->_contentView;
      }

      else
      {
        v28 = 0;
      }

      [(UIView *)v28 removeFromSuperview];
      v29 = v6->_contentView;
      v6->_contentView = &v22->super;
    }

    v30 = [(UITableViewCell *)v6 layoutManager];
    [v30 contentRectForCell:v6 forState:0];
    [(UIView *)v6->_contentView setFrame:?];

    [(UITableViewCell *)v6 _setupMenuGesture];
    if ((*(&v6->_tableCellFlags + 12) & 0x40) == 0)
    {
      v31 = [(NSCoder *)v4 decodeObjectForKey:@"UITextLabel"];
      textLabel = v6->_textLabel;
      v6->_textLabel = v31;

      v33 = [(UILabel *)v6->_textLabel font];
      v34 = [(UITableViewCell *)v6 _defaultFont];
      v35 = [v33 isEqual:v34];

      if ((v35 & 1) == 0)
      {
        *p_tableCellFlags |= 0x4000000000uLL;
      }

      v36 = [(NSCoder *)v4 decodeObjectForKey:@"UIDetailTextLabel"];
      detailTextLabel = v6->_detailTextLabel;
      v6->_detailTextLabel = v36;

      v38 = [(NSCoder *)v4 decodeObjectForKey:@"UIImageView"];
      imageView = v6->_imageView;
      v6->_imageView = v38;
    }

    v40 = [(NSCoder *)v4 decodeObjectForKey:@"UISystemBackgroundView"];
    systemBackgroundView = v6->_systemBackgroundView;
    v6->_systemBackgroundView = v40;

    v42 = v6->_systemBackgroundView;
    if (v42)
    {
      [(UIView *)v6 insertSubview:v42 atIndex:0];
    }

    else
    {
      v43 = [(NSCoder *)v4 decodeObjectForKey:@"UIBackgroundView"];
      backgroundView = v6->_backgroundView;
      v6->_backgroundView = v43;

      if (v6->_backgroundView)
      {
        *p_tableCellFlags &= ~0x10000000000uLL;
      }

      v45 = [(NSCoder *)v4 decodeObjectForKey:@"UISelectedBackgroundView"];
      selectedBackgroundView = v6->_selectedBackgroundView;
      v6->_selectedBackgroundView = v45;

      v47 = [(NSCoder *)v4 decodeObjectForKey:@"UIMultipleSelectionBackgroundView"];
      multipleSelectionBackgroundView = v6->_multipleSelectionBackgroundView;
      v6->_multipleSelectionBackgroundView = v47;

      if (v6->_selectedBackgroundView)
      {
        *p_tableCellFlags &= ~0x8000000000uLL;
      }
    }

    v49 = [(NSCoder *)v4 decodeObjectForKey:@"UICustomAccessoryView"];
    customAccessoryView = v6->_customAccessoryView;
    v6->_customAccessoryView = v49;

    [(UIView *)v6 setNeedsDisplayOnBoundsChange:1];
    if ([(NSCoder *)v4 decodeBoolForKey:@"UIDidEncodeCompatibilityBackgroundColor"])
    {
      [(UITableViewCell *)v6 setBackgroundColor:0];
      *(&v6->_tableCellFlags + 1) &= ~0x8000000000uLL;
    }

    v51 = [(NSCoder *)v4 decodeBoolForKey:@"UITableCellBackgroundColorSet"];
    v52 = 0x80000000000;
    if (v51)
    {
      v52 = 0x1000080000000000;
    }

    *p_tableCellFlags = *p_tableCellFlags & 0xEFFFFFFFFFFFFFFFLL | v52;
    if ([(NSCoder *)v4 containsValueForKey:@"UISeparatorInset"])
    {
      [(NSCoder *)v4 decodeUIEdgeInsetsForKey:@"UISeparatorInset"];
      v6->_separatorInset.top = v53;
      v6->_separatorInset.left = v54;
      v6->_separatorInset.bottom = v55;
      v6->_separatorInset.right = v56;
    }

    *(&v6->_tableCellFlags + 1) &= 0xFFFFFFFFFFF8FFFFLL;
    if ([(NSCoder *)v4 containsValueForKey:@"UIFocusStyle"])
    {
      *(&v6->_tableCellFlags + 1) = *(&v6->_tableCellFlags + 1) & 0xFFFFFFFFFFF8FFFFLL | (([(NSCoder *)v4 decodeIntegerForKey:@"UIFocusStyle"]& 7) << 16);
    }

    v57 = [(NSCoder *)v4 decodeObjectForKey:@"UIAccessoryActionPreviewingSegueTemplateStorage"];
    accessoryActionPreviewingSegueTemplateStorage = v6->_accessoryActionPreviewingSegueTemplateStorage;
    v6->_accessoryActionPreviewingSegueTemplateStorage = v57;
  }

  return v6;
}

- (id)_encodableSubviews
{
  if (self->_floatingContentView)
  {
    v2 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
    v3 = [v2 subviews];
  }

  else
  {
    v3 = [(UIView *)self subviews];
  }

  return v3;
}

- (void)_populateArchivedSubviews:(id)a3
{
  v7 = a3;
  v4 = [(UITableViewCell *)self _encodableSubviews];
  [v7 addObjectsFromArray:v4];
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    v5 = [(UITableViewCell *)self _existingSystemAccessoryViews];
    [v7 minusSet:v5];
  }

  else
  {
    if (self->_accessoryView)
    {
      [v7 removeObject:?];
    }

    if (self->_editingAccessoryView)
    {
      [v7 removeObject:?];
    }
  }

  if (self->_systemBackgroundView)
  {
    [v7 removeObject:?];
  }

  tableCellFlags = self->_tableCellFlags;
  if ((tableCellFlags & 0x10000000000) != 0)
  {
    [v7 removeObject:self->_backgroundView];
    tableCellFlags = self->_tableCellFlags;
  }

  if ((tableCellFlags & 0x8000000000) != 0)
  {
    [v7 removeObject:self->_selectedBackgroundView];
  }
}

- (void)_encodeBackgroundColorWithCoder:(id)a3
{
  v9 = a3;
  systemBackgroundView = self->_systemBackgroundView;
  if (systemBackgroundView)
  {
    v5 = [(_UISystemBackgroundView *)systemBackgroundView configuration];
    v6 = [(UIView *)self tintColor];
    v7 = [v5 resolvedBackgroundColorForTintColor:v6];

    if (!v7)
    {
      goto LABEL_7;
    }

    [v9 encodeObject:v7 forKey:@"UIBackgroundColor"];
    [v9 encodeBool:1 forKey:@"UIDidEncodeCompatibilityBackgroundColor"];
  }

  else
  {
    v8 = [(UIView *)self _backgroundColor];
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = v8;
    [v9 encodeObject:v8 forKey:@"UIBackgroundColor"];
  }

LABEL_7:
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = UITableViewCell;
  [(UIView *)&v26 encodeWithCoder:v4];
  reuseIdentifier = self->_reuseIdentifier;
  if (reuseIdentifier)
  {
    [v4 encodeObject:reuseIdentifier forKey:@"UIReuseIdentifier"];
  }

  p_tableCellFlags = &self->_tableCellFlags;
  tableCellFlags = self->_tableCellFlags;
  if ((tableCellFlags & 0x200000) != 0)
  {
    [v4 encodeBool:1 forKey:@"UIShowsReorderControl"];
    tableCellFlags = *p_tableCellFlags;
  }

  if ((tableCellFlags & 0x3FFC00000000000) != 0)
  {
    [v4 encodeInteger:(tableCellFlags >> 46) & 0xFFF forKey:@"UITableViewCellStyle"];
  }

  indentationLevel = self->_indentationLevel;
  if (indentationLevel)
  {
    [v4 encodeInteger:indentationLevel forKey:@"UIIndentationLevel"];
  }

  v9 = *p_tableCellFlags;
  v10 = (*p_tableCellFlags >> 1) & 7;
  if (v10 != 1)
  {
    [v4 encodeInteger:v10 forKey:@"UISeparatorStyle"];
    v9 = *p_tableCellFlags;
  }

  v11 = (v9 >> 4) & 7;
  if (v11 != 3)
  {
    [v4 encodeInteger:v11 forKey:@"UISelectionStyle"];
    v9 = *p_tableCellFlags;
  }

  v12 = (v9 >> 12) & 7;
  if (v12)
  {
    [v4 encodeInteger:v12 forKey:@"UIEditingStyle"];
    LODWORD(v9) = *p_tableCellFlags;
  }

  v13 = (v9 >> 15) & 7;
  if (v13)
  {
    [v4 encodeInteger:v13 forKey:@"UIAccessoryType"];
    LODWORD(v9) = *p_tableCellFlags;
  }

  v14 = (v9 >> 18) & 7;
  if (v14)
  {
    [v4 encodeInteger:v14 forKey:@"UIEditingAccessoryType"];
  }

  if ((*(&self->_tableCellFlags + 13) & 0x20) != 0)
  {
    indentationWidth = self->_indentationWidth;
    *&indentationWidth = indentationWidth;
    [v4 encodeFloat:@"UIIndentationWidth" forKey:indentationWidth];
  }

  if ((*(&self->_tableCellFlags + 5) & 1) == 0)
  {
    backgroundView = self->_backgroundView;
    if (backgroundView)
    {
      [v4 encodeObject:backgroundView forKey:@"UIBackgroundView"];
    }
  }

  customAccessoryView = self->_customAccessoryView;
  if (customAccessoryView)
  {
    [v4 encodeObject:customAccessoryView forKey:@"UICustomAccessoryView"];
  }

  if ((*(&self->_tableCellFlags + 4) & 0x80) == 0)
  {
    selectedBackgroundView = self->_selectedBackgroundView;
    if (selectedBackgroundView)
    {
      [v4 encodeObject:selectedBackgroundView forKey:@"UISelectedBackgroundView"];
    }
  }

  multipleSelectionBackgroundView = self->_multipleSelectionBackgroundView;
  if (multipleSelectionBackgroundView && multipleSelectionBackgroundView != self->_selectedBackgroundView)
  {
    [v4 encodeObject:multipleSelectionBackgroundView forKey:@"UIMultipleSelectionBackgroundView"];
  }

  if ((*(&self->_tableCellFlags + 7) & 0x10) != 0)
  {
    [v4 encodeBool:1 forKey:@"UITableCellBackgroundColorSet"];
  }

  if (self->_separatorInset.left != -1.0 || self->_separatorInset.right != -1.0)
  {
    [v4 encodeUIEdgeInsets:@"UISeparatorInset" forKey:self->_separatorInset.top];
  }

  v20 = (*(&self->_tableCellFlags + 1) >> 16) & 7;
  if (v20)
  {
    [v4 encodeInteger:v20 forKey:@"UIFocusStyle"];
  }

  [v4 encodeObject:self->_systemBackgroundView forKey:@"UISystemBackgroundView"];
  if ((*(&self->_tableCellFlags + 12) & 0x40) != 0)
  {
    v21 = [(UITableViewCell *)self contentConfiguration];
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = [(UITableViewCell *)self _contentViewConfiguration];
      if (!v22)
      {
        v24 = 0;
LABEL_47:
        [v4 encodeObject:v24 forKey:@"UIContentConfigurationIdentifier"];

        goto LABEL_48;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [v22 _wrappedConfigurationIdentifier];
    }

    else
    {
      v23 = objc_opt_class();
      NSStringFromClass(v23);
    }
    v24 = ;

    goto LABEL_47;
  }

LABEL_48:
  [v4 encodeObject:self->_viewForContentConfiguration forKey:@"UIContentConfigurationView"];
  [v4 encodeObject:self->_contentView forKey:@"UIContentView"];
  [v4 encodeObject:self->_textLabel forKey:@"UITextLabel"];
  [v4 encodeObject:self->_detailTextLabel forKey:@"UIDetailTextLabel"];
  [v4 encodeObject:self->_imageView forKey:@"UIImageView"];
  accessoryActionPreviewingSegueTemplateStorage = self->_accessoryActionPreviewingSegueTemplateStorage;
  if (accessoryActionPreviewingSegueTemplateStorage)
  {
    [v4 encodeObject:accessoryActionPreviewingSegueTemplateStorage forKey:@"UIAccessoryActionPreviewingSegueTemplateStorage"];
  }
}

- (void)setDrawingEnabled:(BOOL)a3
{
  tableCellFlags = self->_tableCellFlags;
  if ((tableCellFlags & 0x100000000000) != 0 && ((tableCellFlags >> 45) & 1) == a3)
  {
    v11 = v4;
    v12 = v3;
    v9 = 0x200000000000;
    if (a3)
    {
      v9 = 0;
    }

    *&self->_tableCellFlags = tableCellFlags & 0xFFFFDFFFFFFFFFFFLL | v9;
    if (a3)
    {
      if (dyld_program_sdk_at_least())
      {
        [(UITableViewCell *)self _setContentView:0];
      }

      else
      {
        [(UIView *)self->_contentView removeFromSuperview];
      }
    }

    else if (!self->_contentView && (dyld_program_sdk_at_least() & 1) == 0)
    {
      v10 = [(UITableViewCell *)self _createDefaultContentView];
      [(UITableViewCell *)self _setContentView:v10];

      [(UITableViewCell *)self _didCreateContentView];
    }

    [(UITableViewCell *)self _setNeedsSeparatorUpdate:v11];

    [(UIView *)self _updateNeedsDisplayOnBoundsChange];
  }
}

- (void)setText:(NSString *)text
{
  v4 = text;
  v5 = v4;
  v8 = v4;
  if (v4 && (v6 = [(NSString *)v4 isEqualToString:&stru_1EFB14550], v5 = v8, !v6))
  {
    v7 = [(UITableViewCell *)self _textLabel];
    [v7 setText:v8];

    [(UIView *)self setNeedsLayout];
    v5 = v8;
  }

  else if (self->_textLabel)
  {
    [(UITableViewCell *)self _releaseTextLabel];
    v5 = v8;
    *&self->_tableCellFlags &= ~0x4000000000uLL;
  }
}

- (NSString)text
{
  v2 = [(UITableViewCell *)self _textLabel:0];
  v3 = [v2 text];

  return v3;
}

- (void)_setFont:(id)a3 layout:(BOOL)a4
{
  v4 = a4;
  *&self->_tableCellFlags |= 0x4000000000uLL;
  v6 = a3;
  v7 = [(UITableViewCell *)self _textLabel];
  [v7 setFont:v6];

  if (v4)
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (UIFont)font
{
  if ((*(&self->_tableCellFlags + 4) & 0x40) == 0)
  {
    v3 = [(UITableViewCell *)self _defaultFont];
    v4 = [(UITableViewCell *)self _textLabel];
    [v4 setFont:v3];

    *&self->_tableCellFlags |= 0x4000000000uLL;
  }

  v5 = [(UITableViewCell *)self _textLabel];
  v6 = [v5 font];

  return v6;
}

- (void)setTextAlignment:(NSTextAlignment)textAlignment
{
  v4 = [(UITableViewCell *)self _textLabel];
  [v4 setTextAlignment:textAlignment];
}

- (NSTextAlignment)textAlignment
{
  v2 = [(UITableViewCell *)self _textLabel];
  v3 = [v2 textAlignment];

  return v3;
}

- (void)setLineBreakMode:(NSLineBreakMode)lineBreakMode
{
  v5 = [(UITableViewCell *)self _textLabel];
  [v5 setLineBreakMode:lineBreakMode];

  [(UIView *)self setNeedsLayout];
}

- (NSLineBreakMode)lineBreakMode
{
  v2 = [(UITableViewCell *)self _textLabel];
  v3 = [v2 lineBreakMode];

  return v3;
}

- (void)setTextColor:(UIColor *)textColor
{
  v4 = textColor;
  v5 = [(UITableViewCell *)self _textLabel];
  [v5 setTextColor:v4];

  [(UIView *)self setNeedsLayout];
}

- (UIColor)textColor
{
  v2 = [(UITableViewCell *)self _textLabel];
  v3 = [v2 textColor];

  return v3;
}

- (void)setSelectedTextColor:(UIColor *)selectedTextColor
{
  v4 = selectedTextColor;
  v5 = [(UITableViewCell *)self _textLabel];
  [v5 setHighlightedTextColor:v4];
}

- (UIColor)selectedTextColor
{
  v2 = [(UITableViewCell *)self _textLabel];
  v3 = [v2 highlightedTextColor];

  return v3;
}

- (void)setImage:(UIImage *)image
{
  v4 = image;
  v5 = [(UITableViewCell *)self _imageView];
  [v5 setImage:v4];
}

- (UIImage)image
{
  v2 = [(UITableViewCell *)self _imageView];
  v3 = [v2 image];

  return v3;
}

- (void)setSelectedImage:(UIImage *)selectedImage
{
  v4 = selectedImage;
  v5 = [(UITableViewCell *)self _imageView];
  [v5 setHighlightedImage:v4];
}

- (UIImage)selectedImage
{
  v2 = [(UITableViewCell *)self _imageView];
  v3 = [v2 highlightedImage];

  return v3;
}

- (void)_setBadgeText:(id)a3
{
  v18 = a3;
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    v4 = [(UITableViewCell *)self _badgeText];
    v5 = v18;
    v6 = v4;
    v7 = v6;
    if (v6 == v5)
    {

      goto LABEL_20;
    }

    if (v5 && v6)
    {
      v8 = [v5 isEqual:v6];

      if (v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v11 = [v5 length] == 0;
    v12 = [(UITableViewCell *)self _badgeText];
    v13 = v11 ^ ([v12 length] != 0);

    v14 = *(&self->_tableCellFlags + 1);
    if (v5)
    {
      *(&self->_tableCellFlags + 1) = v14 | 0x20000000;
      v15 = [(UITableViewCell *)self _badge];
      v16 = v15;
      if (v15)
      {
        [*(v15 + 416) setText:v5];
      }
    }

    else
    {
      *(&self->_tableCellFlags + 1) = v14 & 0xFFFFFFFFDFFFFFFFLL;
    }

    if (v13)
    {
      v17 = [(UITableViewCell *)self _accessoryManager];
      [v17 setNeedsLayout];
    }

    else
    {
      [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
    }
  }

  else
  {
    v9 = [(UITableViewCell *)self _badge];
    v10 = v9;
    if (v9)
    {
      [*(v9 + 416) setText:v18];
    }

    [self->_badge setNeedsDisplay];
    [(UIView *)self setNeedsLayout];
  }

LABEL_20:
}

- (void)_setBadgeFont:(id)a3
{
  v4 = a3;
  v5 = [(UITableViewCell *)self _badge];
  [(_UITableViewCellBadge *)v5 setFont:v4];

  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    v6 = [(UITableViewCell *)self _accessoryManager];
    [v6 setNeedsLayout];
  }

  else
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (id)_badgeFont
{
  v2 = [(UITableViewCell *)self _badge];
  v3 = [(_UITableViewCellBadge *)v2 font];

  return v3;
}

- (void)_setBadgeColor:(id)a3
{
  v4 = a3;
  v5 = [(UITableViewCell *)self _badge];
  [(_UITableViewCellBadge *)v5 setColor:v4];
}

- (id)_badgeColor
{
  v2 = [(UITableViewCell *)self _badge];
  v3 = [(_UITableViewCellBadge *)v2 color];

  return v3;
}

- (void)_setBadgeBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(UITableViewCell *)self _badge];
  [v5 setBackgroundColor:v4];
}

- (id)_badgeBackgroundColor
{
  v2 = [(UITableViewCell *)self _badge];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)_setContentView:(id)a3
{
  v5 = a3;
  v6 = v5;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v9 = v5;
    if (contentView)
    {
      [(UITableViewCell *)self _clearChangeHandlersForOldContentView:?];
      [(UIView *)self->_contentView _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges:0];
      [(UIView *)self->_contentView removeFromSuperview];
    }

    longPressGesture = self->_longPressGesture;
    self->_longPressGesture = 0;

    objc_storeStrong(&self->_contentView, a3);
    [(UIView *)v9 setSemanticContentAttribute:[(UIView *)self semanticContentAttribute]];
    v6 = v9;
    if (v9)
    {
      [(UIView *)self addSubview:v9];
      [(UIView *)v9 _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges:(*(&self->_tableCellFlags + 1) >> 52) & 1];
      [(UITableViewCell *)self _setupChangeHandlersForNewContentView:v9];
      [(UITableViewCell *)self _setupMenuGesture];
      v6 = v9;
    }
  }
}

- (void)_clearChangeHandlersForOldContentView:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 _setPreferredSeparatorInsetsDidChangeHandler:0];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v4 _setPrimaryTextFrameDidChangeHandler:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 _setPopupMenuButtonDidChangeHandler:0];
    [(UITableViewCell *)self _setPopupMenuButton:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 _setContainerBackgroundViewDidChangeHandler:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 _setDefaultListContentConfigurationProvider:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 _containerViewIsHiddenForReuse:0];
  }
}

- (void)_setupChangeHandlersForNewContentView:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v5 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__UITableViewCell__setupChangeHandlersForNewContentView___block_invoke;
    v17[3] = &unk_1E70F5A28;
    objc_copyWeak(&v18, &location);
    [v4 _setPreferredSeparatorInsetsDidChangeHandler:v17];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    objc_initWeak(&location, self);
    v5 = v15;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__UITableViewCell__setupChangeHandlersForNewContentView___block_invoke_2;
    v15[3] = &unk_1E70F5A28;
    objc_copyWeak(&v16, &location);
    [v4 _setPrimaryTextFrameDidChangeHandler:v15];
  }

  objc_destroyWeak(v5 + 4);
  objc_destroyWeak(&location);
LABEL_6:
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__UITableViewCell__setupChangeHandlersForNewContentView___block_invoke_3;
    v13[3] = &unk_1E70F5A28;
    objc_copyWeak(&v14, &location);
    [v4 _setPopupMenuButtonDidChangeHandler:v13];
    [(UITableViewCell *)self _updatePopupMenuButtonFromContentView];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__UITableViewCell__setupChangeHandlersForNewContentView___block_invoke_4;
    v11[3] = &unk_1E70F5A28;
    objc_copyWeak(&v12, &location);
    [v4 _setContainerBackgroundViewDidChangeHandler:v11];
    if ([(UITableViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
    {
      [(UITableViewCell *)self _updateDefaultBackgroundAppearance];
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __57__UITableViewCell__setupChangeHandlersForNewContentView___block_invoke_5;
    v9 = &unk_1E70FE380;
    objc_copyWeak(&v10, &location);
    [v4 _setDefaultListContentConfigurationProvider:&v6];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 _containerViewIsHiddenForReuse:{(*(&self->_tableCellFlags + 1) & 0x8000000000000) == 0, v6, v7, v8, v9}];
  }
}

void __57__UITableViewCell__setupChangeHandlersForNewContentView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSeparatorContent:1];
}

void __57__UITableViewCell__setupChangeHandlersForNewContentView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSeparatorContent:1];
}

void __57__UITableViewCell__setupChangeHandlersForNewContentView___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePopupMenuButtonFromContentView];
}

void __57__UITableViewCell__setupChangeHandlersForNewContentView___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDefaultBackgroundAppearance];
}

id __57__UITableViewCell__setupChangeHandlersForNewContentView___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained defaultContentConfiguration];
  v3 = [WeakRetained configurationState];
  v4 = [v2 updatedConfigurationForState:v3];

  return v4;
}

- (void)_applyContentViewConfiguration:(id)a3 withState:(id)a4 usingSPI:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v12 = *(&self->_tableCellFlags + 1);
  if (v9)
  {
    if ((v12 & 0x400000000000) != 0 && !self->_contentViewConfigurationProvider)
    {
      if (!v10)
      {
        v11 = [(UITableViewCell *)self configurationState];
      }

      v35 = v11;
      if (v5)
      {
        v19 = [(UITableViewCell *)self _viewConfigurationState];
        v20 = [(UIView *)self traitCollection];
        v13 = [v9 updatedConfigurationForState:v19 traitCollection:v20];
      }

      else
      {
        v13 = [v9 updatedConfigurationForState:v11];
      }

      if (!v13)
      {
        v32 = [MEMORY[0x1E696AAA8] currentHandler];
        [v32 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:2494 description:{@"Updated configuration was nil for configuration: %@", v9}];
      }

      v11 = v35;
    }

    else
    {
      v13 = v9;
    }

    v34 = v11;
    if ((v12 & 0x4000000000) == 0)
    {
      *(&self->_tableCellFlags + 1) |= 0x4000000000uLL;
      [(UITableViewCell *)self _resetContentViews];
      if (!v5)
      {
LABEL_44:
        v27 = [v13 makeContentView];
        objc_storeStrong(&self->_viewForContentConfiguration, v27);
        if (objc_opt_respondsToSelector())
        {
          v29 = [(_UIContentViewInternal *)self->_viewForContentConfiguration _wrappedContentView];

          v27 = v29;
        }

        goto LABEL_46;
      }

      goto LABEL_40;
    }

    viewForContentConfiguration = self->_viewForContentConfiguration;
    if (!viewForContentConfiguration)
    {
      viewForContentConfiguration = self->_contentView;
    }

    v15 = v13;
    v16 = viewForContentConfiguration;
    if (objc_opt_respondsToSelector())
    {
      v17 = [v16 supportsConfiguration:v15];
    }

    else
    {
      v33 = a2;
      v18 = [v16 configuration];

      v16 = v18;
      if (v16)
      {
        if (objc_opt_respondsToSelector())
        {
          [v16 _wrappedConfigurationIdentifier];
        }

        else
        {
          v22 = objc_opt_class();
          NSStringFromClass(v22);
        }
        v21 = ;
      }

      else
      {
        v21 = 0;
      }

      v23 = v15;
      if (v23)
      {
        if (objc_opt_respondsToSelector())
        {
          [v23 _wrappedConfigurationIdentifier];
        }

        else
        {
          v25 = objc_opt_class();
          NSStringFromClass(v25);
        }
        v24 = ;
      }

      else
      {
        v24 = 0;
      }

      v17 = [v21 isEqualToString:v24];
      a2 = v33;
    }

    *(&self->_tableCellFlags + 1) |= 0x4000000000uLL;
    if (!v17)
    {
      if (!v5)
      {
        v28 = [(_UIContentViewInternal *)self->_viewForContentConfiguration configuration];
        UIContentConfigurationAlertForReplacedContentView(@"cell", self, v28, v15, @"Use separate reuse identifiers for different types of cells to avoid this.");

        [(UITableViewCell *)self _resetContentViews];
        goto LABEL_44;
      }

      [(UITableViewCell *)self _resetContentViews];
LABEL_40:
      v27 = [v13 createContentView];
LABEL_46:
      if (!v27)
      {
        v30 = [MEMORY[0x1E696AAA8] currentHandler];
        [v30 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:2529 description:{@"Content configuration returned a nil content view: %@", v13}];
      }

      if (([v27 translatesAutoresizingMaskIntoConstraints] & 1) == 0)
      {
        v31 = [MEMORY[0x1E696AAA8] currentHandler];
        [v31 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:2530 description:{@"The content view returned from the content configuration must have translatesAutoresizingMaskIntoConstraints enabled: %@", v27}];
      }

      [(UITableViewCell *)self _setContentView:v27];

      goto LABEL_51;
    }

    if (v5)
    {
      contentView = self->_contentView;
    }

    else
    {
      contentView = self->_viewForContentConfiguration;
    }

    [contentView setConfiguration:v15];
    v13 = v15;
  }

  else
  {
    *(&self->_tableCellFlags + 1) = v12 & 0xFFFFFFBFFFFFFFFFLL;
    if ((v12 & 0x4000000000) == 0)
    {
      goto LABEL_52;
    }

    v34 = v10;
    [(UITableViewCell *)self _setContentView:0];
    v13 = self->_viewForContentConfiguration;
    self->_viewForContentConfiguration = 0;
  }

LABEL_51:

  v11 = v34;
LABEL_52:
}

- (void)setAutomaticallyUpdatesContentConfiguration:(BOOL)automaticallyUpdatesContentConfiguration
{
  if (automaticallyUpdatesContentConfiguration)
  {
    contentViewConfigurationProvider = self->_contentViewConfigurationProvider;
    v4 = &self->_tableCellFlags + 1;
    v5 = *(&self->_tableCellFlags + 1);
    if ((contentViewConfigurationProvider == 0) != ((v5 & 0x400000000000) == 0))
    {
      return;
    }

    if (!contentViewConfigurationProvider)
    {
      *v4 = v5 | 0x400000000000;
      [(UITableViewCell *)self setNeedsUpdateConfiguration];
      return;
    }
  }

  else
  {
    v4 = &self->_tableCellFlags + 1;
    v5 = *(&self->_tableCellFlags + 1);
    if ((v5 & 0x400000000000) == 0)
    {
      return;
    }
  }

  *v4 = v5 & 0xFFFFBFFFFFFFFFFFLL;
}

- (void)_setContentViewConfigurationProvider:(id)a3
{
  if (self->_contentViewConfigurationProvider != a3)
  {
    if (a3)
    {
      *(&self->_tableCellFlags + 1) &= ~0x400000000000uLL;
    }

    v4 = [a3 copy];
    contentViewConfigurationProvider = self->_contentViewConfigurationProvider;
    self->_contentViewConfigurationProvider = v4;

    [(UITableViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (id)_contentViewConfigurationProvider
{
  v2 = _Block_copy(self->_contentViewConfigurationProvider);

  return v2;
}

- (void)_updateContentViewConfigurationForState:(id)a3
{
  v4 = a3;
  contentViewConfigurationProvider = self->_contentViewConfigurationProvider;
  if (contentViewConfigurationProvider)
  {
    v11 = v4;
    v6 = contentViewConfigurationProvider[2](contentViewConfigurationProvider, [(UITableViewCell *)self _viewConfigurationState]);
    [(UITableViewCell *)self _setContentViewConfiguration:v6];
LABEL_3:

    v4 = v11;
    goto LABEL_4;
  }

  if ((*(&self->_tableCellFlags + 13) & 0x40) != 0)
  {
    v11 = v4;
    if (self->_viewForContentConfiguration)
    {
      v6 = [(UITableViewCell *)self contentConfiguration];
      if (!v6)
      {
        goto LABEL_3;
      }

      v7 = self;
      v8 = v6;
      v9 = v11;
      v10 = 0;
    }

    else
    {
      v6 = [(UITableViewCell *)self _contentViewConfiguration];
      if (!v6)
      {
        goto LABEL_3;
      }

      v7 = self;
      v8 = v6;
      v9 = v11;
      v10 = 1;
    }

    [(UITableViewCell *)v7 _applyContentViewConfiguration:v8 withState:v9 usingSPI:v10];
    goto LABEL_3;
  }

LABEL_4:
}

- (void)setBackgroundView:(UIView *)backgroundView
{
  v5 = backgroundView;
  v6 = v5;
  if (self->_backgroundView != v5)
  {
    v9 = v5;
    if (v5)
    {
      [(UITableViewCell *)self _resetBackgroundViewConfiguration];
      v6 = v9;
    }

    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFEFFFFFFFFFFLL | (((v6 | *(&self->_tableCellFlags + 1) & 0x10000000000) != 0) << 40);
    [(UIView *)self->_backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, backgroundView);
    v7 = self->_backgroundView;
    if (v7)
    {
      [(UIView *)self insertSubview:v7 atIndex:0];
    }

    *&self->_tableCellFlags &= ~0x10000000000uLL;
    v6 = v9;
    if (!self->_backgroundView)
    {
      v8 = [(UITableViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration];
      v6 = v9;
      if (!v8)
      {
        [(UITableViewCell *)self _setupBackgroundView];
        v6 = v9;
      }
    }
  }
}

- (void)setSelectedBackgroundView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = a3;
  v8 = v7;
  if (self->_selectedBackgroundView != v7)
  {
    if (v7)
    {
      [(UITableViewCell *)self _resetBackgroundViewConfiguration];
    }

    p_tableCellFlags = &self->_tableCellFlags;
    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFDFFFFFFFFFFLL | (((v8 | *(&self->_tableCellFlags + 1) & 0x20000000000) != 0) << 41);
    selectedBackgroundView = self->_selectedBackgroundView;
    if (v4)
    {
      v11 = selectedBackgroundView;
    }

    else
    {
      [(UIView *)selectedBackgroundView removeFromSuperview];
      v11 = 0;
    }

    objc_storeStrong(&self->_selectedBackgroundView, v5);
    if (self->_selectedBackgroundView)
    {
      v12 = *p_tableCellFlags & 0xFFFFFF7FFFFFFFFFLL;
    }

    else
    {
      if ([(UITableViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
      {
        goto LABEL_12;
      }

      [(UITableViewCell *)self _setupSelectedBackgroundView];
      v12 = *p_tableCellFlags | 0x8000000000;
    }

    *p_tableCellFlags = v12;
LABEL_12:
    if (![(UITableViewCell *)self isSelected])
    {
      goto LABEL_25;
    }

    v13 = *p_tableCellFlags;
    if ((*p_tableCellFlags & 0x100) == 0)
    {
LABEL_14:
      v14 = [(UITableViewCell *)self _tableView];
      v16 = ([v14 allowsMultipleSelection] & 1) == 0 || (multipleSelectionBackgroundView = self->_multipleSelectionBackgroundView) == 0 || multipleSelectionBackgroundView == self->_selectedBackgroundView;

      if ((v13 & 0x100) != 0)
      {
      }

      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    }

    if ((*p_tableCellFlags & 0x7000) == 0x3000)
    {
      v17 = self->_multipleSelectionBackgroundView;
      if (v17)
      {
        v18 = self->_selectedBackgroundView;
        if (v17 == v18)
        {
LABEL_36:
          if (v18)
          {
            if (!self->_backgroundView)
            {
              [(UIView *)self addSubview:?];
              [(UITableViewCell *)self sendSubviewToBack:self->_selectedBackgroundView];
              if (!v4)
              {
                goto LABEL_26;
              }

              goto LABEL_40;
            }

            [UIView insertSubview:"insertSubview:aboveSubview:" aboveSubview:?];
          }

          if (!v4)
          {
            goto LABEL_26;
          }

LABEL_40:
          [(UIView *)self->_selectedBackgroundView setAlpha:0.0];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __54__UITableViewCell_setSelectedBackgroundView_animated___block_invoke;
          v23[3] = &unk_1E70F35B8;
          v24 = v11;
          v25 = self;
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __54__UITableViewCell_setSelectedBackgroundView_animated___block_invoke_2;
          v21[3] = &unk_1E70F5AC0;
          v22 = v24;
          [UIView animateWithDuration:0 delay:v23 options:v21 animations:0.35 completion:0.0];

          goto LABEL_26;
        }

LABEL_25:
        [(UIView *)self->_selectedBackgroundView removeFromSuperview];
LABEL_26:

        goto LABEL_27;
      }

LABEL_35:
      v18 = self->_selectedBackgroundView;
      goto LABEL_36;
    }

    v5 = [(UITableViewCell *)self _tableView];
    if (![v5 allowsMultipleSelectionDuringEditing] || (*(&self->_tableCellFlags + 12) & 4) != 0)
    {
      if ((*(&self->_tableCellFlags + 1) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v19 = self->_multipleSelectionBackgroundView;
      if (v19)
      {
        v20 = self->_selectedBackgroundView;

        if (v19 != v20)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }
    }

    goto LABEL_35;
  }

LABEL_27:
}

uint64_t __54__UITableViewCell_setSelectedBackgroundView_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(*(a1 + 40) + 568);

  return [v2 setAlpha:1.0];
}

- (void)_forSpringBoardSetDefaultSelectedBackgroundView:(id)a3
{
  v4 = a3;
  if (v4 && !self->_selectedBackgroundView)
  {
    v13 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v13;
      v6 = [v5 effect];
      v7 = [[UIVisualEffectView alloc] initWithEffect:v6];
      v8 = [v5 contentView];
      v9 = [v8 backgroundColor];

      if (v9)
      {
        v10 = [(UIVisualEffectView *)v7 contentView];
        [v10 setBackgroundColor:v9];
      }
    }

    else
    {
      v11 = [UIView alloc];
      v7 = [(UIView *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    v12 = [v13 backgroundColor];
    [(UIView *)v7 setBackgroundColor:v12];

    [(UITableViewCell *)self setSelectedBackgroundView:v7];
    v4 = v13;
  }
}

- (void)setMultipleSelectionBackgroundView:(UIView *)multipleSelectionBackgroundView
{
  v3 = multipleSelectionBackgroundView;
  v5 = multipleSelectionBackgroundView;
  if (self->_multipleSelectionBackgroundView != v5)
  {
    v11 = v5;
    if (v5)
    {
      [(UITableViewCell *)self _resetBackgroundViewConfiguration];
      v5 = v11;
    }

    p_tableCellFlags = &self->_tableCellFlags;
    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFBFFFFFFFFFFLL | (((v5 | *(&self->_tableCellFlags + 1) & 0x40000000000) != 0) << 42);
    [(UIView *)self->_multipleSelectionBackgroundView removeFromSuperview];
    objc_storeStrong(&self->_multipleSelectionBackgroundView, v3);
    if (![(UITableViewCell *)self isSelected])
    {
      goto LABEL_19;
    }

    v7 = *p_tableCellFlags;
    if ((*p_tableCellFlags & 0x100) != 0)
    {
      if ((*p_tableCellFlags & 0x7000) == 0x3000)
      {
        goto LABEL_14;
      }

      v3 = [(UITableViewCell *)self _tableView];
      if ([v3 allowsMultipleSelectionDuringEditing] && (*(&self->_tableCellFlags + 12) & 4) == 0)
      {

        goto LABEL_14;
      }

      if (*(&self->_tableCellFlags + 1))
      {

        goto LABEL_19;
      }
    }

    v8 = [(UITableViewCell *)self _tableView];
    v9 = [v8 allowsMultipleSelection];

    if ((v7 & 0x100) != 0)
    {

      if ((v9 & 1) == 0)
      {
LABEL_19:
        [(UIView *)self->_multipleSelectionBackgroundView removeFromSuperview];
LABEL_20:
        v5 = v11;
        goto LABEL_21;
      }
    }

    else if (!v9)
    {
      goto LABEL_19;
    }

LABEL_14:
    v10 = self->_multipleSelectionBackgroundView;
    if (self->_backgroundView)
    {
      [(UIView *)self insertSubview:v10 aboveSubview:?];
    }

    else
    {
      [(UIView *)self addSubview:v10];
      [(UITableViewCell *)self sendSubviewToBack:self->_multipleSelectionBackgroundView];
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)setSeparatorStyle:(int64_t)a3
{
  tableCellFlags = self->_tableCellFlags;
  if (((tableCellFlags >> 1) & 7) != a3)
  {
    *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFFFFFFFFFF1 | (2 * (a3 & 7));
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_setDefaultBackgroundColor:(id)a3
{
  v4 = a3;
  if ((*(&self->_tableCellFlags + 7) & 0x10) == 0 && ![(UITableViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
  {
    v5 = [(UITableViewCell *)self backgroundColor];
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      if (v6 && v5)
      {
        v8 = [v5 isEqual:v6];

        if (v8)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __46__UITableViewCell__setDefaultBackgroundColor___block_invoke;
      v9[3] = &unk_1E70F35B8;
      v9[4] = self;
      v10 = v7;
      [UIView _performSystemAppearanceModifications:v9];
    }
  }

LABEL_11:
}

uint64_t __46__UITableViewCell__setDefaultBackgroundColor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[52];
  result = [v2 setBackgroundColor:*(a1 + 40)];
  *(*(a1 + 32) + 416) = *(*(a1 + 32) + 416) & 0xFFFFFF7FFFFFFFFFLL | (((v3 >> 39) & 1) << 39);
  return result;
}

- (void)setSeparatorColor:(id)a3
{
  v5 = a3;
  if (self->_separatorColor != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_separatorColor, a3);
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
    separatorColor = self->_separatorColor;
    v7 = +[UIColor tableSeparatorDarkColor];
    if ([(UIColor *)separatorColor isEqual:v7])
    {
    }

    else
    {
      v8 = self->_separatorColor;
      v9 = +[UIColor tableSeparatorLightColor];
      LOBYTE(v8) = [(UIColor *)v8 isEqual:v9];

      v5 = v10;
      if (v8)
      {
        goto LABEL_7;
      }

      [(UITableViewCell *)self _setSeparatorDrawsInVibrantLightModeUIAppearance:MEMORY[0x1E695E110]];
    }

    v5 = v10;
  }

LABEL_7:
}

- (void)setSectionBorderColor:(id)a3
{
  v5 = a3;
  if (self->_sectionBorderColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_sectionBorderColor, a3);
    v5 = v6;
  }
}

- (void)setReuseIdentifier:(id)a3
{
  if (self->_reuseIdentifier != a3)
  {
    v4 = [a3 copy];
    reuseIdentifier = self->_reuseIdentifier;
    self->_reuseIdentifier = v4;
  }
}

- (void)_notifyIsDisplaying:(BOOL)a3
{
  v3 = *(&self->_tableCellFlags + 1);
  if (((((v3 & 0x8000000000000) == 0) ^ a3) & 1) == 0)
  {
    v4 = a3;
    v6 = 0x8000000000000;
    if (!a3)
    {
      v6 = 0;
    }

    *(&self->_tableCellFlags + 1) = v3 & 0xFFF7FFFFFFFFFFFFLL | v6;
    if (objc_opt_respondsToSelector())
    {
      contentView = self->_contentView;

      [(UIView *)contentView _containerViewIsHiddenForReuse:!v4];
    }
  }
}

- (void)_saveOpaqueViewState:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(UITableViewCell *)self _changesOpaqueStateOfSubviews])
  {
    if ([(UITableViewCell *)self _shouldChangeOpaqueStateOfView:v4])
    {
      v5 = objc_alloc_init(UITableViewCellUnhighlightedState);
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && ((*&self->_tableCellFlags & 0x7100) != 0x3100 || self->_multipleSelectionBackgroundView))
        {
          [(UITableViewCellUnhighlightedState *)v5 setHighlighted:[(UIView *)v4 isHighlighted]];
        }
      }

      [(UITableViewCellUnhighlightedState *)v5 setOpaque:[(UIView *)v4 isOpaque]];
      v6 = [(UIView *)v4 backgroundColor];
      [(UITableViewCellUnhighlightedState *)v5 setBackgroundColor:v6];

      unhighlightedStates = self->_unhighlightedStates;
      if (!unhighlightedStates)
      {
        self->_unhighlightedStates = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
        [(UIView *)self _setMonitorsSubtree:1];
        unhighlightedStates = self->_unhighlightedStates;
      }

      CFDictionaryAddValue(unhighlightedStates, v4, v5);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && self->_selectedBackgroundView != v4)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = [(UIView *)v4 subviews];
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [(UITableViewCell *)self _saveOpaqueViewState:*(*(&v13 + 1) + 8 * v12++)];
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)_clearOpaqueViewState:(id)a3
{
  v4 = a3;
  unhighlightedStates = self->_unhighlightedStates;
  if (unhighlightedStates)
  {
    key = v4;
    v6 = CFDictionaryGetValue(unhighlightedStates, v4);
    v7 = v6;
    if (v6)
    {
      [key setOpaque:{objc_msgSend(v6, "opaque")}];
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [key setHighlighted:{objc_msgSend(v7, "highlighted")}];
        }
      }

      v8 = [v7 backgroundColor];
      [key setBackgroundColor:v8];

      CFDictionaryRemoveValue(self->_unhighlightedStates, key);
    }

    v4 = key;
  }
}

- (id)_multiselectBackgroundColor
{
  v3 = [(UITableViewCell *)self _constants];
  v4 = [(UITableViewCell *)self _tableView];
  v5 = [v3 defaultMultiSelectBackgroundColorForCell:self inTableView:v4];

  return v5;
}

- (void)_setIgnoresMultipleSelectionDuringEditing:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)_setOpaque:(BOOL)a3 forSubview:(id)a4
{
  v4 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (![(UITableViewCell *)self _changesOpaqueStateOfSubviews])
  {
    goto LABEL_38;
  }

  if (v4)
  {
    unhighlightedStates = self->_unhighlightedStates;
    if (!unhighlightedStates)
    {
      goto LABEL_38;
    }

    v8 = CFDictionaryGetValue(unhighlightedStates, v6);
    if (v8 && [(UITableViewCell *)self _shouldChangeOpaqueStateOfView:v6])
    {
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && ((*&self->_tableCellFlags & 0x7100) != 0x3100 || self->_multipleSelectionBackgroundView))
        {
          -[UIView setHighlighted:](v6, "setHighlighted:", [v8 highlighted]);
        }
      }

      -[UIView setOpaque:](v6, "setOpaque:", [v8 opaque]);
      v9 = [v8 backgroundColor];
      [(UIView *)v6 setBackgroundColor:v9];
    }

LABEL_27:

    goto LABEL_28;
  }

  if ([(UITableViewCell *)self _shouldChangeOpaqueStateOfView:v6])
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && ((*&self->_tableCellFlags & 0x7100) != 0x3100 || self->_multipleSelectionBackgroundView))
      {
        v10 = CFDictionaryGetValue(self->_unhighlightedStates, v6);
        v11 = v10;
        if (v10)
        {
          v12 = [v10 highlighted];
        }

        else
        {
          v12 = 0;
        }

        [(UIView *)v6 setHighlighted:v12];
      }
    }

    if ((*&self->_tableCellFlags & 0x7100) == 0x3100 && !self->_multipleSelectionBackgroundView)
    {
      if (![(UIView *)v6 isOpaque])
      {
        goto LABEL_28;
      }

      v13 = [(UITableViewCell *)self _multiselectBackgroundColor];
    }

    else
    {
      [(UIView *)v6 setOpaque:0];
      v13 = +[UIColor clearColor];
    }

    v8 = v13;
    [(UIView *)v6 setBackgroundColor:v13];
    goto LABEL_27;
  }

LABEL_28:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && self->_selectedBackgroundView != v6)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = [(UIView *)v6 subviews];
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(UITableViewCell *)self _setOpaque:v4 forSubview:*(*(&v19 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }
  }

LABEL_38:
}

- (void)_setSelectionStyle:(int64_t)a3 selectionTintColor:(id)a4
{
  v7 = a4;
  tableCellFlags = self->_tableCellFlags;
  if (((tableCellFlags >> 4) & 7) != a3 || self->_selectionTintColor != v7)
  {
    v16 = v7;
    *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFFFFFFFFF8FLL | (16 * (a3 & 7));
    objc_storeStrong(&self->_selectionTintColor, a4);
    selectionEffects = self->_selectionEffects;
    self->_selectionEffects = 0;

    [(UITableViewCell *)self _updateDefaultBackgroundAppearance];
    v10 = [(UITableViewCell *)self _selectedBackgroundView:0];
    v11 = v10;
    if (!a3)
    {
      if (v10)
      {
        [v10 removeFromSuperview];
      }

      [(UIView *)self->_backgroundView alpha];
      if (v12 == 0.0)
      {
        [(UIView *)self->_backgroundView setAlpha:1.0];
      }

      [(UITableViewCell *)self _applySelectedStateToSeparators:0];
    }

    if (![(UITableViewCell *)self isSelected]|| v11)
    {
      if (v11)
      {
        if (objc_opt_respondsToSelector())
        {
          [v11 setSelectionStyle:{-[UITableViewCell selectionStyle](self, "selectionStyle")}];
        }

        if (objc_opt_respondsToSelector())
        {
          v13 = [(UITableViewCell *)self selectionTintColor];
          [v11 setSelectionTintColor:v13];
        }
      }
    }

    else
    {
      [(UIView *)self setNeedsDisplay];
    }

    if ([(UITableViewCell *)self isSelected])
    {
      [(UITableViewCell *)self _updateAndCacheBackgroundColorForHighlightIgnoringSelection:0];
      [(UITableViewCell *)self _updateHighlightColors];
      if (!a3)
      {
        selectedOverlayView = self->_selectedOverlayView;
        if (selectedOverlayView)
        {
          [(UIView *)selectedOverlayView removeFromSuperview];
          v15 = self->_selectedOverlayView;
          self->_selectedOverlayView = 0;
        }
      }
    }

    v7 = v16;
  }
}

- (void)_performCustomSelectionAction
{
  v2 = [(UITableViewCell *)self _effectivePopupMenuButton];
  if (v2)
  {
    v3 = v2;
    [v2 performPrimaryAction];
    v2 = v3;
  }
}

- (void)_setShowingCompactContextMenu:(BOOL)a3
{
  if (((((*(&self->_tableCellFlags + 1) & 8) == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
    v5 = 2048;
    if (!v3)
    {
      v5 = 0;
    }

    *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFFFFFFFF7FFLL | v5;

    [(UITableViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (CGRect)backgroundRectForBounds:(CGRect)a3
{
  v4 = [(UITableViewCell *)self layoutManager:a3.origin.x];
  [v4 backgroundEndingRectForCell:self forNewEditingState:{-[UITableViewCell isEditing](self, "isEditing")}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)contentRectForBounds:(CGRect)a3
{
  v4 = [(UITableViewCell *)self layoutManager:a3.origin.x];
  [v4 contentEndingRectForCell:self forNewEditingState:{-[UITableViewCell isEditing](self, "isEditing")}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)textRectForContentRect:(CGRect)a3
{
  v4 = [(UITableViewCell *)self layoutManager:a3.origin.x];
  [(UIView *)self bounds];
  [v4 textRectForCell:self rowWidth:0 forSizing:CGRectGetWidth(v17)];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  v4 = [(UITableViewCell *)self layoutManager:a3.origin.x];
  [v4 standardLayoutImageViewFrameForCell:self forSizing:0];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)accessoryRectForBounds:(CGRect)a3
{
  v4 = [(UITableViewCell *)self layoutManager:a3.origin.x];
  [v4 accessoryEndingRectForCell:self forNewEditingState:-[UITableViewCell isEditing](self showingDeleteConfirmation:{"isEditing"), *&self->_tableCellFlags & 1}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)reorderRectForBounds:(CGRect)a3
{
  v4 = [(UITableViewCell *)self layoutManager:a3.origin.x];
  [v4 reorderControlEndingRectForCell:self forNewEditingState:-[UITableViewCell isEditing](self showingDeleteConfirmation:{"isEditing"), *&self->_tableCellFlags & 1}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_setDragState:(int64_t)a3
{
  if (self->_dragState != a3)
  {
    self->_dragState = a3;
    [(UITableViewCell *)self _updateUserInteractionEnabledForNewDragState:?];

    [(UITableViewCell *)self dragStateDidChange:a3];
  }
}

- (void)dragStateDidChange:(UITableViewCellDragState)dragState
{
  if (dragState != UITableViewCellDragStateLifting)
  {
    if (dragState == UITableViewCellDragStateDragging)
    {
      constants = self->_constants;
      v5 = [(UITableViewCell *)self _tableView];
      [(UITableConstants *)constants defaultAlphaForDraggingCell:self inTableView:v5];
      [(UIView *)self setAlpha:?];
    }

    dragState = UITableViewCellDragStateNone;
  }

  [(UITableViewCell *)self _setDragging:dragState];
}

- (void)_updateUserInteractionEnabledForNewDragState:(int64_t)a3
{
  v5 = [(UITableViewCell *)self userInteractionEnabledWhileDragging];
  v6 = v5;
  if (a3 == 2)
  {
    if ((*(&self->_tableCellFlags + 11) & 3) == 0)
    {
      v8 = [(UIView *)self isUserInteractionEnabled];
      v9 = 0x1000000;
      if (v8)
      {
        v9 = 0x2000000;
      }

      *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFCFFFFFFLL | v9;

      [(UITableViewCell *)self setUserInteractionEnabled:v6];
    }
  }

  else if (!a3)
  {
    v7 = *(&self->_tableCellFlags + 1);
    if ((v7 & 0x3000000) == 0x2000000 && !v5 || (v7 & 0x3000000) == 0x1000000 && v5)
    {
      [(UITableViewCell *)self setUserInteractionEnabled:?];
      v7 = *(&self->_tableCellFlags + 1);
    }

    *(&self->_tableCellFlags + 1) = v7 & 0xFFFFFFFFFCFFFFFFLL;
  }
}

- (void)_setDropState:(int64_t)a3
{
  if (self->_dropState != a3)
  {
    [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
    self->_dropState = a3;

    [(UITableViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)setUserInteractionEnabledWhileDragging:(BOOL)userInteractionEnabledWhileDragging
{
  v3 = 0x800000;
  if (!userInteractionEnabledWhileDragging)
  {
    v3 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIView *)self isUserInteractionEnabled];
  if (v5 != v3)
  {
    [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
  }

  v6.receiver = self;
  v6.super_class = UITableViewCell;
  [(UIView *)&v6 setUserInteractionEnabled:v3];
  if (v5 != [(UIView *)self isUserInteractionEnabled])
  {
    [(UITableViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_updateShowingSelectedBackground
{
  if (self->_selectedBackgroundView || self->_multipleSelectionBackgroundView)
  {
    v3 = [(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance];

    [(UITableViewCell *)self showSelectedBackgroundView:v3 animated:0];
  }

  else
  {

    [(UITableViewCell *)self _updateCellForCurrentBackgroundConfiguration];
  }
}

- (void)showSelectedBackgroundView:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  p_tableCellFlags = &self->_tableCellFlags;
  if ((*&self->_tableCellFlags & 0x100) != 0)
  {
    if ((*&self->_tableCellFlags & 0x7000) == 0x3000)
    {
      v8 = 1;
    }

    else
    {
      v9 = [(UITableViewCell *)self _tableView];
      if ([v9 allowsMultipleSelectionDuringEditing])
      {
        v8 = (*(p_tableCellFlags + 12) & 4) == 0;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = [(UITableViewCell *)self _selectedBackgroundView:0];
  v11 = v10;
  if (v5 && v10)
  {
    if (objc_opt_respondsToSelector())
    {
      [v11 setMultiselect:v8];
      v12 = [(UITableViewCell *)self _multiselectBackgroundColor];
      [v11 setMultiselectBackgroundColor:v12];
    }

    [(UIView *)self insertSubview:v11 atIndex:0];
    if (!v8)
    {
      [(UITableViewCell *)self _applySelectedStateToSeparators:1];
      v13 = [(UITableViewCell *)self _tableView];
      [v13 _cellDidShowSelectedBackground:self];
    }

    if (self->_backgroundView)
    {
      [(UITableViewCell *)self sendSubviewToBack:?];
    }

    if ((*(p_tableCellFlags + 5) & 0x10) != 0 && !self->_selectedOverlayView)
    {
      v14 = [UITableViewCellContentMirror alloc];
      [(UIView *)self bounds];
      v15 = [(UITableViewCellContentMirror *)v14 initWithFrame:?];
      selectedOverlayView = self->_selectedOverlayView;
      self->_selectedOverlayView = v15;

      [(UIView *)self addSubview:self->_selectedOverlayView];
    }

    if (v4)
    {
      goto LABEL_21;
    }
  }

  else
  {
    [(UITableViewCell *)self _applySelectedStateToSeparators:0];
    v22 = [(UITableViewCell *)self _tableView];
    [v22 _cellDidHideSelectedBackground:self];

    if (v4)
    {
LABEL_21:
      [v11 setAlpha:!v5];
      [(UITableViewCell *)self _layoutSystemBackgroundView:1];
      [(UITableViewCell *)self selectionFadeDuration];
      v18 = v17;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __55__UITableViewCell_showSelectedBackgroundView_animated___block_invoke;
      v26[3] = &unk_1E70F5AF0;
      v29 = v5;
      v27 = v11;
      v28 = self;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __55__UITableViewCell_showSelectedBackgroundView_animated___block_invoke_2;
      v24[3] = &unk_1E70FA0F0;
      v25 = v5;
      v24[4] = self;
      [UIView animateWithDuration:0 delay:v26 options:v24 animations:v18 completion:0.0];
      *p_tableCellFlags |= 0x800000000000000uLL;
      if (v5)
      {
        [(UITableViewCell *)self _updateAndCacheBackgroundColorForHighlightIgnoringSelection:0];
      }

      [(UITableViewCell *)self selectionFadeDuration];
      v20 = v19 * 0.5 * UIAnimationDragCoefficient();
      v21 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695DA28]];
      [(UITableViewCell *)self performSelector:sel__updateHighlightColorsForAnimationHalfwayPoint withObject:0 afterDelay:v21 inModes:v20];

      goto LABEL_31;
    }
  }

  if (v5)
  {
    [v11 setAlpha:1.0];
    [(UIView *)self->_selectedOverlayView setSelected:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self->_backgroundView setAlpha:1.0];
    }

    [v11 removeFromSuperview];
    [(UIView *)self->_selectedOverlayView removeFromSuperview];
    v23 = self->_selectedOverlayView;
    self->_selectedOverlayView = 0;
  }

  [(UITableViewCell *)self _updateAndCacheBackgroundColorForHighlightIgnoringSelection:0];
  [(UITableViewCell *)self _updateHighlightColors];
LABEL_31:
}

uint64_t __55__UITableViewCell_showSelectedBackgroundView_animated___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 48);
  [*(a1 + 32) setAlpha:*&a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(*(a1 + 40) + 560) setAlpha:(*(a1 + 48) ^ 1u)];
  }

  v3 = *(a1 + 40);

  return [v3 _performConfigurationStateUpdate];
}

uint64_t __55__UITableViewCell_showSelectedBackgroundView_animated___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) _deselectAnimationFinished];
  }

  return result;
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v4 = animated;
  v5 = highlighted;
  if (!highlighted || [(UIView *)self isUserInteractionEnabled])
  {
    p_tableCellFlags = &self->_tableCellFlags;
    tableCellFlags = self->_tableCellFlags;
    if (((tableCellFlags & 0x40000000000) == 0) == v5)
    {
      if ((tableCellFlags & 0x70) == 0)
      {
        [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
        v9 = 0x40000000000;
        if (!v5)
        {
          v9 = 0;
        }

        *p_tableCellFlags = *p_tableCellFlags & 0xFFFFFBFFFFFFFFFFLL | v9;
        [(UITableViewCell *)self setNeedsUpdateConfiguration];
        goto LABEL_17;
      }

      if (v5)
      {
        if (![(UITableViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
        {
          [(UITableViewCell *)self _setupSelectedBackgroundView];
        }

        [(UITableViewCell *)self _cancelInternalPerformRequests];
        [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
        *p_tableCellFlags |= 0x40000000000uLL;
        [(UITableViewCell *)self setNeedsUpdateConfiguration];
      }

      else
      {
        [(UITableViewCell *)self _cancelInternalPerformRequests];
        [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
        *p_tableCellFlags &= ~0x40000000000uLL;
        [(UITableViewCell *)self setNeedsUpdateConfiguration];
        if ((*(&self->_tableCellFlags + 10) & 0x40) != 0)
        {
LABEL_16:
          v12 = [(UITableViewCell *)self editingData:0];
          v13 = [v12 editControl:0];
          [v13 setHighlighted:v5];

LABEL_17:

          [(UITableViewCell *)self _updateFloatingContentControlStateAnimated:v4];
          return;
        }
      }

      [(UITableViewCell *)self showSelectedBackgroundView:[(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance] animated:v4];
      v10 = [(UIView *)self traitCollection];
      v11 = [v10 userInterfaceIdiom];

      if (v11 == 3)
      {
        [(UITableViewCell *)self _updateDefaultLabelsForFocus:v5];
        [(UITableViewCell *)self _updateDefaultAccessoryViewForFocus:v5];
      }

      goto LABEL_16;
    }
  }
}

- (void)_performConfigurationStateModifications:(id)a3
{
  p_tableCellFlags = &self->_tableCellFlags;
  v4 = *(&self->_tableCellFlags + 1);
  *(&self->_tableCellFlags + 1) = v4 | 0x20000000000000;
  (*(a3 + 2))(a3, a2);
  *(p_tableCellFlags + 1) = *(p_tableCellFlags + 1) & 0xFFDFFFFFFFFFFFFFLL | (((v4 >> 53) & 1) << 53);
}

- (void)_delayedDeselect
{
  [(UITableViewCell *)self setSelected:0 animated:0];
  deselectTimer = self->_deselectTimer;
  self->_deselectTimer = 0;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v4 = animated;
  v5 = selected;
  if (selected)
  {
    if (![(UIView *)self isUserInteractionEnabled])
    {
      return;
    }

    if (self->_deselectTimer)
    {
      self->_lastSelectionTime = 0.0;
      [(UITableViewCell *)self _delayedDeselect];
    }
  }

  if (((*&self->_tableCellFlags & 0x80) == 0) == v5)
  {
    [(NSTimer *)self->_deselectTimer invalidate];
    deselectTimer = self->_deselectTimer;
    self->_deselectTimer = 0;

    Current = CFAbsoluteTimeGetCurrent();
    if (v5)
    {
      self->_lastSelectionTime = Current;
      if ((*&self->_tableCellFlags & 0x70) != 0)
      {
        if (![(UITableViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
        {
          [(UITableViewCell *)self _setupSelectedBackgroundView];
        }

        v9 = 128;
        goto LABEL_13;
      }

      v10 = 128;
      goto LABEL_20;
    }

    if (v4 || (v13 = Current - self->_lastSelectionTime, v13 >= 0.1) || v13 < 0.0)
    {
      v9 = 0;
      v10 = 0;
      if ((*&self->_tableCellFlags & 0x70) != 0)
      {
LABEL_13:
        [(UITableViewCell *)self _cancelInternalPerformRequests];
        [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
        *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFFFFFFFFF7FLL | v9;
        [(UITableViewCell *)self setNeedsUpdateConfiguration];
        [(UITableViewCell *)self showSelectedBackgroundView:[(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance] animated:v4];
        v11 = [(UITableViewCell *)self editingData:0];
        v12 = [v11 editControl:0];
        [v12 setSelected:v5];

LABEL_21:
        [(UITableViewCell *)self _updateFloatingContentControlStateAnimated:v4];
        if ([(UIView *)self isFocused])
        {
          v16 = [(UIView *)self _focusBehavior];
          v17 = [UIFocusRingManager focusRingAvailableInBehavior:v16];

          if (v17)
          {

            +[UIFocusRingManager _updateActiveFocusLayers];
          }
        }

        return;
      }

LABEL_20:
      [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
      *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFFFFFFFFF7FLL | v10;
      [(UITableViewCell *)self setNeedsUpdateConfiguration];
      goto LABEL_21;
    }

    v14 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__delayedDeselect selector:0 userInfo:0 repeats:0.1 - v13];
    v15 = self->_deselectTimer;
    self->_deselectTimer = v14;

    v18 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v18 addTimer:self->_deselectTimer forMode:*MEMORY[0x1E695DA28]];
  }
}

- (float)selectionPercent
{
  result = 1.0;
  if ((*&self->_tableCellFlags & 0x80) == 0)
  {
    return 0.0;
  }

  return result;
}

- (void)_macSidebarDefaultIconSizeChanged
{
  [(UITableViewCell *)self _updateDefaultImageSymbolConfiguration];

  [(UITableViewCell *)self setNeedsUpdateConfiguration];
}

- (BOOL)_backgroundFillIsCustomized
{
  if ((*&self->_tableCellFlags & 0x70) == 0)
  {
    goto LABEL_4;
  }

  v2 = self;
  selectedBackgroundView = self->_selectedBackgroundView;
  if (selectedBackgroundView)
  {
    if (![(UIView *)selectedBackgroundView isHidden])
    {
      [(UIView *)v2->_selectedBackgroundView alpha];
      LOBYTE(v2) = v8 > 0.0;
      return v2;
    }

    goto LABEL_4;
  }

  if (![(UITableViewCell *)v2 isHighlighted]&& ![(UITableViewCell *)v2 isSelected]&& ![(UIView *)v2 isFocused])
  {
LABEL_4:
    LOBYTE(v2) = 0;
    return v2;
  }

  v4 = [(_UISystemBackgroundView *)v2->_systemBackgroundView configuration];
  v5 = v4;
  if (v4 && [v4 _hasBackgroundFill])
  {
    lastNormalBackgroundViewConfiguration = v2->_lastNormalBackgroundViewConfiguration;
    v7 = [(UIView *)v2 tintColor];
    LODWORD(v2) = [v5 _backgroundFillIsEqual:lastNormalBackgroundViewConfiguration withTintColor:v7] ^ 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (BOOL)_backgroundIsVerticallyInset
{
  if (self->_selectedBackgroundView)
  {
    LOBYTE(systemBackgroundView) = 0;
  }

  else
  {
    systemBackgroundView = self->_systemBackgroundView;
    if (systemBackgroundView)
    {
      [(_UISystemBackgroundView *)systemBackgroundView effectiveInsetsInContainerView:self, v2, v3];
      LOBYTE(systemBackgroundView) = v7 > 0.0 && v6 > 0.0;
    }
  }

  return systemBackgroundView;
}

- (void)_setSelectionGrouping:(int)a3
{
  tableCellFlags = self->_tableCellFlags;
  if (((tableCellFlags >> 27) & 7) != a3)
  {
    *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFFFC7FFFFFFLL | ((a3 & 7) << 27);
    v6 = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
    if (v6)
    {
      v7 = v6;
      [(UITableViewCell *)self _applyBackgroundViewConfiguration:v6 withState:0];
      v6 = v7;
    }
  }
}

- (void)_applyBackgroundViewConfiguration:(id)a3 withState:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  systemBackgroundView = self->_systemBackgroundView;
  if (v7)
  {
    if ((*(&self->_tableCellFlags + 13) & 0x80) != 0 && !self->_backgroundViewConfigurationProvider)
    {
      if (!v8)
      {
        v11 = [(UITableViewCell *)self configurationState];
        v9 = [(UITableViewCell *)self _stateForUpdatingBackgroundConfigurationWithState:v11];
      }

      v24 = [v7 _updatedConfigurationForState:v9];
      if (!v24)
      {
        v23 = [MEMORY[0x1E696AAA8] currentHandler];
        [v23 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:3765 description:{@"Updated configuration was nil for configuration: %@", v7}];
      }
    }

    else
    {
      v24 = v7;
    }
  }

  else
  {
    v24 = 0;
  }

  [v24 __setMaskedCorners:{-[UITableViewCell _maskedCornersForSystemBackgroundView](self, "_maskedCornersForSystemBackgroundView")}];
  if (v7)
  {
    if ([(UITableViewCell *)self _appliesMaskingToBackgroundConfiguration])
    {
      if ([(UITableViewCell *)self _usesRoundedGroups])
      {
        [(UITableViewCell *)self _roundedGroupCornerRadius];
        if (v12 > 0.0)
        {
          [(UITableViewCell *)self _roundedGroupCornerRadius];
          [v24 _setCornerRadius:?];
        }
      }
    }

    if (systemBackgroundView)
    {
      [(_UISystemBackgroundView *)self->_systemBackgroundView setConfiguration:v24];
      [(UIView *)self setNeedsLayout];
    }

    else
    {
      [(UITableViewCell *)self _resetBackgroundViewsAndColor];
      v14 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = self;
      }

      v17 = v16;

      v18 = [[_UISystemBackgroundView alloc] initWithConfiguration:v24 containerView:v17];
      v19 = self->_systemBackgroundView;
      self->_systemBackgroundView = v18;

      [(UIView *)v17 insertSubview:self->_systemBackgroundView atIndex:0];
      [(UIView *)self setNeedsLayout];
    }

    if ([(UITableViewCell *)self isHighlighted]|| [(UITableViewCell *)self isSelected]|| [(UIView *)self isFocused])
    {
      goto LABEL_29;
    }

    v20 = [v24 copyWithZone:0];
    lastNormalBackgroundViewConfiguration = self->_lastNormalBackgroundViewConfiguration;
    self->_lastNormalBackgroundViewConfiguration = v20;
  }

  else
  {
    if (!systemBackgroundView)
    {
      [(UITableViewCell *)self _updateContentClip];
      goto LABEL_33;
    }

    [(UIView *)self->_systemBackgroundView removeFromSuperview];
    lastNormalBackgroundViewConfiguration = self->_systemBackgroundView;
    self->_systemBackgroundView = 0;
  }

LABEL_29:
  [(UITableViewCell *)self _updateContentClip];
  if ([(UIView *)self isFocused])
  {
    v21 = [(UIView *)self _focusBehavior];
    v22 = [UIFocusRingManager focusRingAvailableInBehavior:v21];

    if (v22)
    {
      *(&self->_tableCellFlags + 1) |= 0x2000000000000uLL;
      [(UIView *)self setNeedsLayout];
    }
  }

LABEL_33:
}

- (void)setAutomaticallyUpdatesBackgroundConfiguration:(BOOL)automaticallyUpdatesBackgroundConfiguration
{
  if (automaticallyUpdatesBackgroundConfiguration)
  {
    backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
    v4 = &self->_tableCellFlags + 1;
    v5 = *(&self->_tableCellFlags + 1);
    if ((backgroundViewConfigurationProvider == 0) != ((v5 & 0x800000000000) == 0))
    {
      return;
    }

    if (!backgroundViewConfigurationProvider)
    {
      *v4 = v5 | 0x800000000000;
      [(UITableViewCell *)self setNeedsUpdateConfiguration];
      return;
    }
  }

  else
  {
    v4 = &self->_tableCellFlags + 1;
    v5 = *(&self->_tableCellFlags + 1);
    if ((v5 & 0x800000000000) == 0)
    {
      return;
    }
  }

  *v4 = v5 & 0xFFFF7FFFFFFFFFFFLL;
}

- (void)_setBackgroundViewConfigurationProvider:(id)a3
{
  v3 = *(&self->_tableCellFlags + 1) & 0xFFFFF7FFFFFFFFFFLL | (((a3 | *(&self->_tableCellFlags + 1) & 0x80000000000) != 0) << 43);
  *(&self->_tableCellFlags + 1) = v3;
  if (self->_backgroundViewConfigurationProvider != a3)
  {
    if (a3)
    {
      *(&self->_tableCellFlags + 1) = v3 & 0xFFFF7FFFFFFFFFFFLL;
    }

    v5 = a3;
    v6 = [v5 copy];
    backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
    self->_backgroundViewConfigurationProvider = v6;

    [(UITableViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (id)_backgroundViewConfigurationProvider
{
  v2 = _Block_copy(self->_backgroundViewConfigurationProvider);

  return v2;
}

- (id)_stateForUpdatingBackgroundConfigurationWithState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*&self->_tableCellFlags & 0x70) == 0)
  {
    v6 = [v4 copy];

    [v6 setHighlighted:0];
    [v6 setSelected:0];
    v5 = v6;
  }

  v7 = [(UIView *)self traitCollection];
  if ([v7 userInterfaceIdiom] == 3 && (v8 = (*&self->_tableCellFlags >> 4) & 7, v8 != 1))
  {

    if (v8 != 3)
    {
      v10 = [v5 copy];

      [v10 setFocused:0];
      v5 = v10;
    }
  }

  else
  {
  }

  return v5;
}

- (void)_updateBackgroundViewConfigurationForState:(id)a3
{
  v4 = [(UITableViewCell *)self _stateForUpdatingBackgroundConfigurationWithState:a3];
  backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
  if (backgroundViewConfigurationProvider)
  {
    v7 = v4;
    v6 = backgroundViewConfigurationProvider[2](backgroundViewConfigurationProvider, [(UITableViewCell *)self _viewConfigurationState]);
LABEL_3:
    [(UITableViewCell *)self _applyBackgroundViewConfiguration:v6 withState:v7];
LABEL_4:

    v4 = v7;
    goto LABEL_5;
  }

  if ((*(&self->_tableCellFlags + 13) & 0x80) != 0)
  {
    v7 = v4;
    v6 = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

LABEL_5:
}

- (void)setConfigurationUpdateHandler:(UITableViewCellConfigurationUpdateHandler)configurationUpdateHandler
{
  if (self->_configurationUpdateHandler != configurationUpdateHandler)
  {
    v4 = [configurationUpdateHandler copy];
    v5 = self->_configurationUpdateHandler;
    self->_configurationUpdateHandler = v4;

    [(UITableViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_layoutSystemBackgroundView:(BOOL)a3
{
  systemBackgroundView = self->_systemBackgroundView;
  if (systemBackgroundView)
  {
    [(_UISystemBackgroundView *)systemBackgroundView frameInContainerView:self];
    [(_UISystemBackgroundView *)self->_systemBackgroundView setFrame:?];
    if (a3 || +[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v6 = self->_systemBackgroundView;

      [(UIView *)v6 layoutIfNeeded];
    }
  }
}

- (void)_updateSystemTypeAccessoryView:(id)a3 withTableViewAccessoryType:(int64_t)a4 forState:(id)a5
{
  v11 = a3;
  v8 = a5;
  if (a4 > 3)
  {
    if ((a4 - 5) < 4)
    {
      v9 = 6;
LABEL_9:
      v10 = v11;
      goto LABEL_10;
    }

    v10 = v11;
    if (a4 == 4)
    {
      v9 = 9;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if ((a4 - 1) < 2)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (!a4)
  {
    goto LABEL_11;
  }

  v10 = v11;
  if (a4 != 3)
  {
LABEL_16:
    v9 = -1;
    goto LABEL_10;
  }

  v9 = 1;
LABEL_10:
  [(UITableViewCell *)self _updateSystemTypeAccessoryView:v10 withCellAccessoryType:v9 forState:v8];
LABEL_11:
}

- (void)_updateSystemTypeAccessoryView:(id)a3 withCellAccessoryType:(int64_t)a4 forState:(id)a5
{
  v20 = a3;
  v8 = a5;
  v9 = [(UIView *)self traitCollection];
  LODWORD(v10) = [v9 _hasSplitViewControllerContextSidebarColumn];

  v11 = [(UITableViewCell *)self _tableView];
  v12 = [v11 _accessoryBaseColor];

  if (v12)
  {
    v10 = v10;
  }

  else
  {
    constants = self->_constants;
    v10 = v10;
    v14 = [(UIView *)self traitCollection];
    v15 = [(UIView *)self tintColor];
    v12 = [(UITableConstants *)constants defaultAccessoryTintColorForAccessorySystemType:a4 header:0 sidebarStyle:v10 cellConfigurationState:v8 traitCollection:v14 inheritedTintColor:v15];
  }

  v16 = self->_constants;
  v17 = [(UIView *)self traitCollection];
  v18 = [(UITableConstants *)v16 defaultAccessoryBackgroundColorForAccessorySystemType:a4 header:0 sidebarStyle:v10 cellConfigurationState:v8 traitCollection:v17];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v20 setTintColor:v12];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
LABEL_5:
      [v20 setAccessoryTintColor:v12];
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v20;
      [v19 setAccessoryTintColor:v12];
      [v19 setAccessoryBackgroundColor:v18];
      [v19 _updateImageView];
    }
  }

LABEL_8:
}

- (void)_updateModernCellAccessoriesForState:(id)a3 isEditing:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v6 = &_UITableCellAccessoryConfigurationIdentifierEditing;
  v26 = v4;
  if (!v4)
  {
    v6 = &_UITableCellAccessoryConfigurationIdentifierNormal;
  }

  v7 = *v6;
  v8 = [(UITableViewCell *)self _accessoryManager];
  v9 = [v8 configurations];
  v25 = v7;
  v10 = [v9 objectForKeyedSubscript:v7];

  v11 = [v10 leadingAccessories];
  v24 = v10;
  v22 = [v10 trailingAccessories];
  v23 = v11;
  v12 = [v11 arrayByAddingObjectsFromArray:v22];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [v17 identifier];
        if (v18 == @"delete")
        {
          v19 = 2;
        }

        else if (v18 == @"insert")
        {
          v19 = 3;
        }

        else if (v18 == @"multiselect")
        {
          v19 = 5;
        }

        else if (v18 == @"checkmark")
        {
          v19 = 1;
        }

        else if (v18 == @"chevron")
        {
          v19 = 0;
        }

        else if (v18 == @"reorder")
        {
          v19 = 4;
        }

        else if (v18 == @"expand")
        {
          v19 = 6;
        }

        else
        {
          if (v18 != @"info")
          {

            v19 = [(UITableViewCell *)self _currentAccessoryTypeForEditing:v26];
            goto LABEL_26;
          }

          v19 = 9;
        }

LABEL_26:
        v20 = [v17 identifier];

        if (v20 != @"custom")
        {
          v21 = [v17 view];
          [(UITableViewCell *)self _updateSystemTypeAccessoryView:v21 withCellAccessoryType:v19 forState:v27];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }
}

- (void)_updateCurrentSystemTypeAccessoryViewsUsingState:(id)a3
{
  v8 = a3;
  if ((*(&self->_tableCellFlags + 11) & 8) == 0)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v5;
      if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
      {
        [(UITableViewCell *)self _updateModernCellAccessoriesForState:v8 isEditing:v4 & 1];
      }

      else
      {
        v7 = [(UITableViewCell *)self _existingSystemAccessoryView:v4 & 1];
        [(UITableViewCell *)self _updateSystemTypeAccessoryView:v7 withTableViewAccessoryType:[(UITableViewCell *)self _currentAccessoryTypeForEditing:v4 & 1] forState:v8];
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
  }
}

- (void)_updateConfigurationUsingState:(id)a3
{
  [(UITableViewCell *)self _updateCurrentSystemTypeAccessoryViewsUsingState:a3];
  if (objc_opt_respondsToSelector())
  {
    contentView = self->_contentView;

    [(UIView *)contentView _defaultListContentConfigurationMayHaveChanged];
  }
}

- (void)setLayoutManager:(id)a3
{
  v5 = a3;
  if (self->_layoutManager != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_layoutManager, a3);
    if ([objc_opt_class() requiresLegacyLayout])
    {
      [(UITableViewCell *)self _setUsesModernAccessoriesLayout:0];
    }

    else
    {
      [(UITableViewCell *)self _setupModernAccessoriesLayout];
    }

    v5 = v6;
  }
}

- (void)setEditingStyle:(int64_t)a3
{
  tableCellFlags = self->_tableCellFlags;
  if (((tableCellFlags >> 12) & 7) != a3)
  {
    *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFFFFFFF8FFFLL | ((a3 & 7) << 12);
    if ((tableCellFlags & 0x100) != 0)
    {
      [(UITableViewCell *)self removeEditingData];
      [(UITableViewCell *)self setEditing:(*&self->_tableCellFlags >> 8) & 1 animated:0];
    }

    [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
  }
}

- (void)_setShowsReorderControl:(BOOL)a3
{
  if (((((*(&self->_tableCellFlags + 2) & 0x20) == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    v5 = [(UITableViewCell *)self currentStateMask];
    v6 = !v3;
    v7 = 0x200000;
    if (!v3)
    {
      v7 = 0;
    }

    v8 = v5 & 0xFFFFFFFFBFFFFFFFLL;
    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0x40000000;
    }

    *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFFFFFDFFFFFLL | v7;
    if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
    {
      [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
    }

    [(UITableViewCell *)self _willTransitionToState:v8 | v9];
    [(UIView *)self setNeedsLayout];

    [(UITableViewCell *)self _didTransitionToState:v8 | v9];
  }
}

- (void)setShowsReorderControl:(BOOL)showsReorderControl
{
  p_tableCellFlags = &self->_tableCellFlags;
  if (((((*(&self->_tableCellFlags + 2) & 0x20) == 0) ^ showsReorderControl) & 1) == 0)
  {
    [(UITableViewCell *)self _setShowsReorderControl:?];
    if ((*(p_tableCellFlags + 1) & 1) != 0 || (*(p_tableCellFlags + 9) & 0x40) != 0)
    {

      [(UIView *)self setNeedsLayout];
    }
  }
}

- (void)setShouldIndentWhileEditing:(BOOL)shouldIndentWhileEditing
{
  p_tableCellFlags = &self->_tableCellFlags;
  if (((((*(&self->_tableCellFlags + 4) & 0x20) == 0) ^ shouldIndentWhileEditing) & 1) == 0)
  {
    [(UITableViewCell *)self _setShouldIndentWhileEditing:?];
    if (*(p_tableCellFlags + 1))
    {
      [(UITableViewCell *)self setEditing:1 animated:0];

      [(UIView *)self setNeedsLayout];
    }
  }
}

- (void)_syncAccessoryViewsIfNecessary
{
  accessoryView = self->_accessoryView;
  editingAccessoryView = self->_editingAccessoryView;
  if ((((*&self->_tableCellFlags >> 15) ^ (*&self->_tableCellFlags >> 18)) & 7) != 0)
  {
    if (accessoryView != editingAccessoryView)
    {
      return;
    }

    if ([(UITableViewCell *)self isEditing])
    {
      v5 = self->_accessoryView;
      self->_accessoryView = 0;
    }

    else
    {
      v5 = self->_editingAccessoryView;
      self->_editingAccessoryView = 0;
    }
  }

  else
  {
    if (accessoryView == editingAccessoryView)
    {
      return;
    }

    if ([(UITableViewCell *)self isEditing])
    {
      [(UIView *)self->_accessoryView removeFromSuperview];
      v6 = self->_editingAccessoryView;
      v5 = self->_accessoryView;
      self->_accessoryView = v6;
    }

    else
    {
      [(UIView *)self->_editingAccessoryView removeFromSuperview];
      v7 = self->_accessoryView;
      v5 = self->_editingAccessoryView;
      self->_editingAccessoryView = v7;
    }
  }
}

- (BOOL)_updateExpansionButtonFromType:(int64_t)a3 toType:(int64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(UITableViewCell *)self _accessoryManager];
  v6 = [v5 configurations];
  v7 = [v6 objectForKeyedSubscript:0x1EFB35F50];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v7 trailingAccessories];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      v14 = [v13 identifier];
      v15 = [v14 isEqualToString:@"expand"];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = [v13 view];

    if (v16 && (((a4 - 5) | (a3 - 5)) < 2 || ((a4 - 7) | (a3 - 7)) <= 1))
    {
      [UITableViewCell _updateExpansionButton:"_updateExpansionButton:forType:animated:" forType:v16 animated:?];
      v17 = 1;
      goto LABEL_15;
    }
  }

  else
  {
LABEL_9:

    v16 = 0;
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (void)setAccessoryType:(UITableViewCellAccessoryType)accessoryType
{
  tableCellFlags = self->_tableCellFlags;
  v4 = (tableCellFlags >> 15) & 7;
  if (v4 == accessoryType)
  {
    return;
  }

  *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFFFFFFC7FFFLL | ((accessoryType & 7) << 15);
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    if (![(UITableViewCell *)self _updateExpansionButtonFromType:v4 toType:accessoryType])
    {

      [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
    }

    return;
  }

  accessoryView = self->_accessoryView;
  if ((*&self->_tableCellFlags & 0x38000) != 0)
  {
    if (accessoryView)
    {
      if ((accessoryType - 5) > 1 || (v4 - 5) > 1)
      {
        if ((accessoryType - 7) <= 1 && v4 == 7)
        {
          v9 = [(UIControl *)self->_accessoryView accessoryButton];
          [(UITableViewCell *)self _updateExpansionButton:v9 forType:accessoryType animated:(*&self->_tableCellFlags & 0x2000000000000000) == 0];
        }

        else
        {
          [(UIView *)self->_accessoryView removeFromSuperview];
          v10 = self->_accessoryView;
          self->_accessoryView = 0;
        }
      }

      else
      {
        [UITableViewCell _updateExpansionButton:"_updateExpansionButton:forType:animated:" forType:? animated:?];
      }
    }

    [(UITableViewCell *)self _syncAccessoryViewsIfNecessary];
    if (![(UITableViewCell *)self isEditing])
    {
      v11 = [(UITableViewCell *)self _accessoryView:1];
    }

    goto LABEL_24;
  }

  if (accessoryView != self->_editingAccessoryView)
  {
    goto LABEL_16;
  }

  if (![(UITableViewCell *)self isEditing])
  {
    accessoryView = self->_accessoryView;
LABEL_16:
    [(UIView *)accessoryView removeFromSuperview];
  }

  v8 = self->_accessoryView;
  self->_accessoryView = 0;

LABEL_24:
  if (![(UITableViewCell *)self isEditing])
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setAccessoryView:(UIView *)accessoryView
{
  v5 = accessoryView;
  v6 = v5;
  if (self->_customAccessoryView != v5)
  {
    v9 = v5;
    if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
    {
      objc_storeStrong(&self->_customAccessoryView, accessoryView);
      [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
LABEL_8:
      v6 = v9;
      goto LABEL_9;
    }

    [(UIView *)self->_customAccessoryView removeFromSuperview];
    objc_storeStrong(&self->_customAccessoryView, accessoryView);
    if (self->_customAccessoryView)
    {
      [(UIView *)self->_accessoryView removeFromSuperview];
      v7 = self->_accessoryView;
      self->_accessoryView = 0;
    }

    v8 = [(UITableViewCell *)self isEditing];
    v6 = v9;
    if (!v8)
    {
      [(UIView *)self setNeedsLayout];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)_setAccessoryTintColor:(id)a3
{
  v5 = a3;
  if (self->_accessoryTintColor != v5)
  {
    v6 = (*&self->_tableCellFlags >> 15) & 7;
    v7 = v5;
    [(UITableViewCell *)self setAccessoryType:0];
    objc_storeStrong(&self->_accessoryTintColor, a3);
    [(UITableViewCell *)self setAccessoryType:v6];
    v5 = v7;
  }
}

- (void)setEditingAccessoryType:(UITableViewCellAccessoryType)editingAccessoryType
{
  tableCellFlags = self->_tableCellFlags;
  if (((tableCellFlags >> 18) & 7) == editingAccessoryType)
  {
    return;
  }

  *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFFFFFE3FFFFLL | ((editingAccessoryType & 7) << 18);
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {

    [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
    return;
  }

  if ((*(&self->_tableCellFlags + 2) & 0x1C) != 0)
  {
    editingAccessoryView = self->_editingAccessoryView;
    if (editingAccessoryView)
    {
      [(UIView *)editingAccessoryView removeFromSuperview];
      v6 = self->_editingAccessoryView;
      self->_editingAccessoryView = 0;
    }

    [(UITableViewCell *)self _syncAccessoryViewsIfNecessary];
    if ([(UITableViewCell *)self isEditing])
    {
      v7 = [(UITableViewCell *)self _editingAccessoryView:1];
    }

    goto LABEL_17;
  }

  v8 = self->_editingAccessoryView;
  if (self->_accessoryView != v8)
  {
    goto LABEL_15;
  }

  if (![(UITableViewCell *)self isEditing])
  {
    v8 = self->_editingAccessoryView;
LABEL_15:
    [(UIView *)v8 removeFromSuperview];
  }

  v9 = self->_editingAccessoryView;
  self->_editingAccessoryView = 0;

LABEL_17:
  if ([(UITableViewCell *)self isEditing])
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setEditingAccessoryView:(UIView *)editingAccessoryView
{
  v5 = editingAccessoryView;
  if (self->_customEditingAccessoryView != v5)
  {
    v7 = v5;
    if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
    {
      objc_storeStrong(&self->_customEditingAccessoryView, editingAccessoryView);
      [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
LABEL_8:
      v5 = v7;
      goto LABEL_9;
    }

    [(UIView *)self->_customEditingAccessoryView removeFromSuperview];
    objc_storeStrong(&self->_customEditingAccessoryView, editingAccessoryView);
    if (self->_customEditingAccessoryView)
    {
      [(UIView *)self->_editingAccessoryView removeFromSuperview];
      v6 = self->_editingAccessoryView;
      self->_editingAccessoryView = 0;
    }

    v5 = v7;
    if (*(&self->_tableCellFlags + 1))
    {
      [(UIView *)self setNeedsLayout];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)setIndentationLevel:(NSInteger)indentationLevel
{
  if (self->_indentationLevel != indentationLevel)
  {
    self->_indentationLevel = indentationLevel;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setIndentationWidth:(double)a3
{
  if (self->_indentationWidth != a3)
  {
    self->_indentationWidth = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setEditing:(BOOL)a3 animated:(BOOL)a4 cellOrAncestorViewForAnimatedLayout:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  p_tableCellFlags = &self->_tableCellFlags;
  if (((((*(&self->_tableCellFlags + 1) & 1) == 0) ^ v6) & 1) == 0)
  {
    v10 = @"normal";
    v11 = (*p_tableCellFlags << 9) & 0x40000000;
    if (v6)
    {
      if ((*p_tableCellFlags & 0x20000000000) != 0)
      {
        v11 |= 2uLL;
      }

      else
      {
        v11 |= 1uLL;
        v12 = @"editing";

        v10 = v12;
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __76__UITableViewCell__setEditing_animated_cellOrAncestorViewForAnimatedLayout___block_invoke;
    v20[3] = &unk_1E70F32F0;
    v20[4] = self;
    v20[5] = v11;
    [UIView performWithoutAnimation:v20];
    [(UITableViewCell *)self removeEditingData];
    v13 = [(UITableViewCell *)self _accessoryManager];
    [v13 setCurrentConfigurationIdentifier:v10];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__UITableViewCell__setEditing_animated_cellOrAncestorViewForAnimatedLayout___block_invoke_2;
    aBlock[3] = &unk_1E70F5AF0;
    aBlock[4] = self;
    v19 = v6;
    v18 = v8;
    v14 = _Block_copy(aBlock);
    v15 = v14;
    if (v5)
    {
      *(&self->_tableCellFlags + 1) |= 2uLL;
      [(UITableViewCell *)self _updateContentClip];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __76__UITableViewCell__setEditing_animated_cellOrAncestorViewForAnimatedLayout___block_invoke_3;
      v16[3] = &unk_1E70F9B38;
      v16[4] = self;
      v16[5] = v11;
      [(UIView *)0.3 _animateCollectionTableAnimationWithDuration:UIView delay:4 options:v15 animations:v16 completion:?];
    }

    else
    {
      (*(v14 + 2))(v14);
      [(UITableViewCell *)self didTransitionToState:v11];
    }
  }
}

uint64_t __76__UITableViewCell__setEditing_animated_cellOrAncestorViewForAnimatedLayout___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _prepareForConfigurationStateUpdate];
  *(*(a1 + 32) + 408) = *(*(a1 + 32) + 408) & 0xFFFFFFFFFFFFFEFFLL | ((*(a1 + 48) & 1) << 8);
  v2 = *(a1 + 48) == 1 && ([*(a1 + 32) wasSwiped] & 1) != 0;
  [*(a1 + 32) setShowingDeleteConfirmation:v2];
  [*(a1 + 32) setNeedsUpdateConfiguration];
  v3 = *(a1 + 40);
  if (v3 != *(a1 + 32))
  {
    [*(a1 + 32) setNeedsLayout];
    v3 = *(a1 + 40);
  }

  [v3 setNeedsLayout];
  v4 = *(a1 + 40);

  return [v4 layoutBelowIfNeeded];
}

uint64_t __76__UITableViewCell__setEditing_animated_cellOrAncestorViewForAnimatedLayout___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) didTransitionToState:*(a1 + 40)];
  *(*(a1 + 32) + 416) &= ~2uLL;
  v2 = *(a1 + 32);

  return [v2 _updateContentClip];
}

- (void)setShowingDeleteConfirmation:(BOOL)a3
{
  tableCellFlags = self->_tableCellFlags;
  if ((*&self->_tableCellFlags & 1) != a3)
  {
    if ((tableCellFlags & 0x100) != 0)
    {
      v4 = 2;
      if (!a3)
      {
        v4 = 0;
      }

      [(UITableViewCell *)self willTransitionToState:(v4 & 0xFFFFFFFFFFFFFFFELL | (tableCellFlags >> 41) & 1) ^ 1];
    }

    else
    {
      *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFFFFFFFFEFELL | a3;
      [(UIView *)self setNeedsLayout];
    }
  }
}

- (void)_setContainerView:(id)a3
{
  v20 = a3;
  v4 = [(UITableViewCell *)self _containerView];
  if (v4 != v20)
  {
    if (v4)
    {
      [(UITableViewCell *)self frame];
      v6 = v5;
      v8 = v7;
      [v4 frame];
      v10 = v9;
      v12 = v11;
      v13 = [v4 superview];
      [(UITableViewCell *)self _removeFromSuperviewIgnoringFirstResponder:1];
      [v13 insertSubview:self aboveSubview:v4];
      [(UITableViewCell *)self _setFrame:1 skipLayout:v10, v12, v6, v8];
    }

    if (v20)
    {
      [(UITableViewCell *)self frame];
      v15 = v14;
      v17 = v16;
      [v20 setFrame:?];
      [(UIView *)self _removePropertyAnimationsForLayerKeyPath:@"position"];
      [(UITableViewCell *)self _setFrame:1 skipLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v15, v17];
      v18 = [v20 superview];

      if (!v18)
      {
        v19 = [(UIView *)self superview];
        [v19 insertSubview:v20 aboveSubview:self];
      }

      [v20 addSubview:self];
    }
  }
}

- (void)_setDropAnimationContainerView:(id)a3
{
  v10 = a3;
  v5 = [(UITableViewCell *)self _containerView];
  if (v5)
  {
    v6 = v5;
    v7 = [(UITableViewCell *)self _containerView];
    v8 = [(UITableViewCell *)self _dropAnimationContainerView];

    if (v7 != v8)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:4977 description:@"UIKit inconsistency: Unable to add a drop animation container view while another container view is already present."];
    }
  }

  [(UITableViewCell *)self _setContainerView:v10];
}

- (void)_setSwipeContainerView:(id)a3
{
  v10 = a3;
  v5 = [(UITableViewCell *)self _swipeContainerView];
  if (v5 != v10)
  {
    v6 = v10;
    if (v10)
    {
      if (!v5)
      {
        v7 = [(UITableViewCell *)self _containerView];

        v6 = v10;
        if (v7)
        {
          v8 = [MEMORY[0x1E696AAA8] currentHandler];
          v9 = [(UITableViewCell *)self _containerView];
          [v8 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:4996 description:{@"UIKit inconsistency: Can't set a swipe container view when a different type of container view is already present: %@", v9}];

          v6 = v10;
        }
      }
    }

    [(UITableViewCell *)self _setContainerView:v6];
    [v5 removeFromSuperview];
  }
}

- (void)_setFrame:(CGRect)a3 skipLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(UITableViewCell *)self _dropAnimationContainerView];
  v11 = v10;
  if (v10)
  {
    [v10 setFrame:{x, y, width, height}];
    x = *MEMORY[0x1E695EFF8];
    y = *(MEMORY[0x1E695EFF8] + 8);
  }

  v12 = [(UITableViewCell *)self _swipeContainerView];
  v13 = v12;
  if (v12)
  {
    [v12 frame];
    [v13 setFrame:?];
    y = 0.0;
  }

  [(UITableViewCell *)self frame];
  v15 = v14;
  v17 = v16;
  v21.receiver = self;
  v21.super_class = UITableViewCell;
  [(UIView *)&v21 setFrame:x, y, width, height];
  if (!a4 && (v15 != width || v17 != height))
  {
    *&self->_tableCellFlags |= 0x80000000000uLL;
    v18 = [(UIView *)self window];
    if (v18)
    {
      v19 = v18;
      if (self->_contentView || self->_backgroundView)
      {
      }

      else
      {
        v20 = [(UITableViewCell *)self _selectedBackgroundView:0];

        if (!v20)
        {
          goto LABEL_13;
        }
      }

      [(UIView *)self setNeedsLayout];
    }

LABEL_13:
    [(UITableViewCell *)self _updateAccessoryMetrics];
  }
}

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITableViewCell *)self _dropAnimationContainerView];
  v7 = v6;
  if (v6)
  {
    [v6 setCenter:{x, y}];
  }

  else
  {
    v8 = [(UITableViewCell *)self _swipeContainerView];
    v9 = v8;
    if (v8)
    {
      [v8 center];
      [v9 setCenter:?];
      [v9 bounds];
      y = CGRectGetMidY(v11);
    }

    v10.receiver = self;
    v10.super_class = UITableViewCell;
    [(UIView *)&v10 setCenter:x, y];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = UITableViewCell;
  [(UIView *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(UITableViewCell *)self _updateAccessoryMetrics];
  }
}

- (void)_setSkipsLayout:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setEditAction:(SEL)editAction
{
  if (editAction)
  {
    v3 = editAction;
  }

  else
  {
    v3 = 0;
  }

  self->_editAction = v3;
}

- (SEL)editAction
{
  if (self->_editAction)
  {
    return self->_editAction;
  }

  else
  {
    return 0;
  }
}

- (void)setAccessoryAction:(SEL)accessoryAction
{
  if (accessoryAction)
  {
    v3 = accessoryAction;
  }

  else
  {
    v3 = 0;
  }

  self->_accessoryAction = v3;
}

- (SEL)accessoryAction
{
  if (self->_accessoryAction)
  {
    return self->_accessoryAction;
  }

  else
  {
    return 0;
  }
}

- (void)_removeFromSuperviewIgnoringFirstResponder:(BOOL)a3
{
  if (a3 || (*(&self->super._viewFlags + 1) & 0x80) == 0)
  {
    v3.receiver = self;
    v3.super_class = UITableViewCell;
    [(UIView *)&v3 removeFromSuperview];
  }
}

- (void)_updateCellMaskViewsForView:(id)a3 backdropView:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 _backdropMaskViewFlags])
  {
    [v7 updateMaskViewsForView:v6];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [v6 subviews];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(UITableViewCell *)self _updateCellMaskViewsForView:*(*(&v13 + 1) + 8 * v12++) backdropView:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_setHiddenForReuse:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = UITableViewCell;
  [(UIView *)&v7 _setHiddenForReuse:?];
  if (!a3)
  {
    v5 = [(UIView *)self superview];
    if (v5)
    {
      v6 = v5;
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(UIView *)self layoutBelowIfNeeded];
          [(UITableViewCell *)self _updateCellMaskViewsForView:self backdropView:v6];
        }

        v6 = [v6 superview];
      }

      while (v6);
    }
  }
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [(UIControl *)self->_accessoryView removeTarget:WeakRetained action:0 forControlEvents:64];
  [(UIControl *)self->_editingAccessoryView removeTarget:WeakRetained action:0 forControlEvents:64];
  v6.receiver = self;
  v6.super_class = UITableViewCell;
  [(UIView *)&v6 willMoveToSuperview:v4];
}

- (void)_layoutFloatingContentView:(id)a3
{
  if (self->_floatingContentView)
  {
    v4 = [(UITableViewCell *)self layoutManager];
    [v4 backgroundEndingRectForCell:self forNewEditingState:{-[UITableViewCell isEditing](self, "isEditing")}];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [(_UIFloatingContentView *)self->_floatingContentView setFrame:v6, v8, v10, v12];
    floatingContentView = self->_floatingContentView;

    [(UIView *)floatingContentView layoutIfNeeded];
  }
}

- (void)_updateFloatingContentControlStateInContext:(id)a3 withAnimationCoordinator:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v15 = a3;
  v8 = a4;
  if (self->_floatingContentView)
  {
    if (v15)
    {
      v9 = [v15 nextFocusedView];
      v10 = v9 == self;
    }

    else
    {
      v10 = [(UIView *)self isFocused];
    }

    if (v10)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if ([(UITableViewCell *)self isSelected])
    {
      v11 |= 4uLL;
    }

    v12 = [(UITableViewCell *)self isHighlighted];
    floatingContentView = self->_floatingContentView;
    v14 = v11 | v12;
    if (v8)
    {
      [(_UIFloatingContentView *)floatingContentView setControlState:v14 withAnimationCoordinator:v8];
    }

    else
    {
      [(_UIFloatingContentView *)floatingContentView setControlState:v14 animated:v5];
    }
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = UITableViewCell;
  [(UIView *)&v7 setSemanticContentAttribute:?];
  [(UIView *)self->_contentView setSemanticContentAttribute:a3];
  v5 = [(UITableViewCell *)self _existingSystemAccessoryView:0];
  [v5 setSemanticContentAttribute:a3];

  v6 = [(UITableViewCell *)self _existingSystemAccessoryView:1];
  [v6 setSemanticContentAttribute:a3];
}

- (void)_willTransitionToState:(unint64_t)a3
{
  v5 = [(UITableViewCell *)self layoutManager];
  [v5 cell:self willTransitionToState:a3];
}

- (void)_didTransitionToState:(unint64_t)a3
{
  v5 = [(UITableViewCell *)self layoutManager];
  [v5 cell:self didTransitionToState:a3];
}

- (CGRect)contentRectForState:(unint64_t)a3
{
  v5 = [(UITableViewCell *)self layoutManager];
  [v5 contentRectForCell:self forState:a3];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(UITableViewCell *)self _resetBackgroundViewConfiguration];
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFF7FFFFFFFFFLL | (((v4 | *(&self->_tableCellFlags + 1) & 0x8000000000) != 0) << 39);
  if ([(UITableViewCell *)self _changesOpaqueStateOfSubviews])
  {
    v13.receiver = self;
    v13.super_class = UITableViewCell;
    v5 = [(UIView *)&v13 backgroundColor];
    v6 = v5;
    if (v5 == v4)
    {
LABEL_15:

      goto LABEL_16;
    }

    v7 = [v5 CGColor];
    CGColorRetain(v7);
    v12.receiver = self;
    v12.super_class = UITableViewCell;
    [(UIView *)&v12 setBackgroundColor:v4];
    v8 = [(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance];
    [(UIView *)self->_textLabel setOpaque:!v8];
    [(UIView *)self->_detailTextLabel setOpaque:!v8];
    if (v8)
    {
      v9 = +[UIColor clearColor];
      [(UIView *)self->_textLabel setBackgroundColor:v9];
    }

    else
    {
      if (CGColorEqualToColor([(UIView *)self->_textLabel _backgroundCGColor], v7))
      {
        [(UIView *)self->_textLabel setBackgroundColor:v4];
      }

      else
      {
        v10 = +[UIColor clearColor];
        [(UIView *)self->_textLabel setBackgroundColor:v10];
      }

      if (CGColorEqualToColor([(UIView *)self->_detailTextLabel _backgroundCGColor], v7))
      {
        [(UIView *)self->_detailTextLabel setBackgroundColor:v4];
LABEL_14:
        CGColorRelease(v7);
        goto LABEL_15;
      }
    }

    v11 = +[UIColor clearColor];
    [(UIView *)self->_detailTextLabel setBackgroundColor:v11];

    goto LABEL_14;
  }

  v14.receiver = self;
  v14.super_class = UITableViewCell;
  [(UIView *)&v14 setBackgroundColor:v4];
LABEL_16:
  *&self->_tableCellFlags |= 0x1000000000000000uLL;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UITableViewCell *)self _tableView];

  if (v8)
  {
    v16.receiver = self;
    v16.super_class = UITableViewCell;
    [(UIResponder *)&v16 touchesBegan:v6 withEvent:v7];
  }

  else
  {
    v9 = [v7 _firstTouchForView:self];

    if (v9)
    {
      [v9 locationInView:self];
      v11 = v10;
      v13 = v12;
      v14 = [(UITableViewCell *)self layoutManager];
      [v14 backgroundEndingRectForCell:self forNewEditingState:{-[UITableViewCell isEditing](self, "isEditing")}];
      v17.x = v11;
      v17.y = v13;
      v15 = CGRectContainsPoint(v18, v17);

      if (v15)
      {
        [(UITableViewCell *)self setSelected:1];
      }
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UITableViewCell *)self _tableView];

  if (v8)
  {
    v15.receiver = self;
    v15.super_class = UITableViewCell;
    [(UIResponder *)&v15 touchesMoved:v6 withEvent:v7];
  }

  else
  {
    v9 = [v7 _firstTouchForView:self];

    if (v9)
    {
      [v9 locationInView:self];
      v11 = v10;
      v13 = v12;
      v14 = [(UITableViewCell *)self layoutManager];
      [v14 backgroundEndingRectForCell:self forNewEditingState:{-[UITableViewCell isEditing](self, "isEditing")}];
      v16.x = v11;
      v16.y = v13;
      [(UITableViewCell *)self setSelected:CGRectContainsPoint(v17, v16)];
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UITableViewCell *)self _tableView];

  if (v8)
  {
    v10.receiver = self;
    v10.super_class = UITableViewCell;
    [(UIResponder *)&v10 touchesEnded:v6 withEvent:v7];
  }

  else
  {
    v9 = [v7 _firstTouchForView:self];

    if (v9)
    {
      [(UITableViewCell *)self setSelected:0];
    }
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UITableViewCell *)self _tableView];

  if (v8)
  {
    v9.receiver = self;
    v9.super_class = UITableViewCell;
    [(UIResponder *)&v9 touchesCancelled:v6 withEvent:v7];
  }

  else
  {
    [(UITableViewCell *)self setSelected:0];
  }
}

- (void)_setSectionLocation:(int)a3 animated:(BOOL)a4 forceBackgroundSetup:(BOOL)a5
{
  if ((*(&self->_tableCellFlags + 3) & 7) != a3 || a5)
  {
    v6 = a4;
    v7 = a3;
    v9 = [(UITableViewCell *)self _maskedCornersForSystemBackgroundView];
    *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFFFF8FFFFFFLL | ((v7 & 7) << 24);
    v10 = [(UITableViewCell *)self _selectedBackgroundView:0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__UITableViewCell__setSectionLocation_animated_forceBackgroundSetup___block_invoke_2;
    v15[3] = &unk_1E70F3590;
    v15[4] = self;
    [UIView conditionallyAnimate:v6 withAnimation:&__block_literal_global_443 layout:v15 completion:0];
    [(UITableViewCell *)self _updateContentClip];
    if (v9 != [(UITableViewCell *)self _maskedCornersForSystemBackgroundView])
    {
      v11 = [(UITableViewCell *)self backgroundConfiguration];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [(UITableViewCell *)self _backgroundViewConfiguration];
      }

      v14 = v13;

      [(UITableViewCell *)self _applyBackgroundViewConfiguration:v14 withState:0];
    }
  }
}

void __69__UITableViewCell__setSectionLocation_animated_forceBackgroundSetup___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 408) |= 0x80000000000uLL;
  v2 = [*(a1 + 32) superview];

  if (v2)
  {
    v3 = *(a1 + 32);

    [v3 _updateSeparatorContent];
  }
}

- (BOOL)canBecomeFirstResponder
{
  if (_UIDeviceHasExternalTouchInput() || (v5.receiver = self, v5.super_class = UITableViewCell, v3 = [(UIResponder *)&v5 canBecomeFirstResponder]))
  {
    LOBYTE(v3) = ![(UIView *)self isHidden];
  }

  return v3;
}

- (void)_performAction:(SEL)a3 sender:(id)a4
{
  v6 = a4;
  v7 = [(UITableViewCell *)self _tableView];
  [v7 _performAction:a3 forCell:self sender:v6];
}

- (void)_setAutomaticIntrinsicContentSizeInvalidationEnabled:(BOOL)a3
{
  v3 = 0x10000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFEFFFFFFFFFFFFFLL | v3;
  [(UIView *)self->_contentView _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges:?];
}

- (id)_textLabel:(BOOL)a3
{
  textLabel = self->_textLabel;
  if (textLabel)
  {
    v4 = 1;
  }

  else
  {
    v4 = !a3;
  }

  if (v4)
  {
    v5 = textLabel;
  }

  else
  {
    v5 = [(UITableViewCell *)self _textLabel];
  }

  return v5;
}

- (id)_detailTextLabel:(BOOL)a3
{
  detailTextLabel = self->_detailTextLabel;
  if (detailTextLabel)
  {
    v4 = 1;
  }

  else
  {
    v4 = !a3;
  }

  if (v4)
  {
    v5 = detailTextLabel;
  }

  else
  {
    v5 = [(UITableViewCell *)self _detailTextLabel];
  }

  return v5;
}

- (id)_editableTextField:(BOOL)a3
{
  editableTextField = self->_editableTextField;
  if (editableTextField)
  {
    v4 = 1;
  }

  else
  {
    v4 = !a3;
  }

  if (v4)
  {
    v5 = editableTextField;
  }

  else
  {
    v5 = [(UITableViewCell *)self _editableTextField];
  }

  return v5;
}

- (id)_imageView:(BOOL)a3
{
  imageView = self->_imageView;
  if (imageView)
  {
    v4 = 1;
  }

  else
  {
    v4 = !a3;
  }

  if (v4)
  {
    v5 = imageView;
  }

  else
  {
    v5 = [(UITableViewCell *)self _imageView];
  }

  return v5;
}

- (id)_badge:(BOOL)a3
{
  badge = self->_badge;
  if (badge)
  {
    v4 = 1;
  }

  else
  {
    v4 = !a3;
  }

  if (v4)
  {
    v5 = badge;
  }

  else
  {
    v5 = [(UITableViewCell *)self _badge];
  }

  return v5;
}

- (void)_setEditingControlTintColor:(id)a3 forStyle:(int64_t)a4
{
  v6 = a3;
  if (v6 && !self->__editingControlTintColors)
  {
    v7 = objc_opt_new();
    editingControlTintColors = self->__editingControlTintColors;
    self->__editingControlTintColors = v7;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v10 = [(NSMutableDictionary *)self->__editingControlTintColors objectForKeyedSubscript:v9];
  v11 = v6;
  v12 = v11;
  v13 = v10;
  v17 = v11;
  if (v10 == v11)
  {
    goto LABEL_11;
  }

  if (!v6 || !v10)
  {

    goto LABEL_10;
  }

  v14 = [v10 isEqual:v11];

  if ((v14 & 1) == 0)
  {
LABEL_10:
    v15 = self->__editingControlTintColors;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)v15 setObject:v17 forKeyedSubscript:v16];

    v13 = [(UITableViewCell *)self editingData:0];
    v12 = [v13 editControl:0];
    [v12 _updateImageView];
LABEL_11:
  }
}

- (id)_editingControlTintColorForStyle:(int64_t)a3
{
  editingControlTintColors = self->__editingControlTintColors;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)editingControlTintColors objectForKeyedSubscript:v4];

  return v5;
}

- (void)_setShouldIndentWhileEditing:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFDFFFFFFFFFLL | v3;
  [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
}

- (void)_setDrawsTopSeparator:(BOOL)a3
{
  tableCellFlags = self->_tableCellFlags;
  if (((((tableCellFlags & 0x400000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x400000;
    if (!a3)
    {
      v4 = 0;
    }

    *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFFFFFBFFFFFLL | v4;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_drawSeparatorInRect:(CGRect)a3
{
  v3 = (*&self->_tableCellFlags >> 1) & 7;
  if (v3)
  {
    separatorColor = self->_separatorColor;
    [(UITableViewCell *)self _separatorFrame:a3.origin.x];
    if (v3 <= 2)
    {
      v10 = v6;
      v11 = v7;
      v12 = v8;
      v13 = v9;
      [(UIColor *)separatorColor set];
      UIRectFillUsingOperation(1, v10, v11, v12, v13);
    }

    tableCellFlags = self->_tableCellFlags;
    if ((tableCellFlags & 0x400000) != 0)
    {
      v15 = (tableCellFlags >> 1) & 7;
      v16 = self->_separatorColor;
      [(UITableViewCell *)self _topSeparatorFrame];
      if ((v15 - 1) <= 1)
      {
        v21 = v17;
        v22 = v18;
        v23 = v19;
        v24 = v20;
        [(UIColor *)v16 set];

        UIRectFillUsingOperation(1, v21, v22, v23, v24);
      }
    }
  }
}

- (void)_animateFloatingSeparatorForInsertion:(BOOL)a3 withRowAnimation:(int64_t)a4
{
  v5 = a3;
  if ([(UITableViewCell *)self separatorStyle]&& (a4 | 2) == 6)
  {
    [(UITableViewCell *)self _separatorFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(UIView *)self bounds];
    v17 = v15 + v16;
    v33.origin.x = v8;
    v33.origin.y = v10;
    v33.size.width = v12;
    v33.size.height = v14;
    v18 = v17 - CGRectGetHeight(v33);
    v34.origin.x = v8;
    v34.origin.y = v10;
    v34.size.width = v12;
    v34.size.height = v14;
    Height = CGRectGetHeight(v34);
    if (a4 == 6)
    {
      [(UIView *)self bounds];
      v25 = v24 + v23 * 0.5;
      v36.origin.x = v8;
      v36.origin.y = v10;
      v36.size.width = v12;
      v36.size.height = v14;
      v20 = floor(v25 - CGRectGetHeight(v36));
    }

    else
    {
      v20 = 0.0;
      if (a4 == 4)
      {
        [(UIView *)self bounds];
        v22 = v21;
        v35.origin.x = v8;
        v35.origin.y = v10;
        v35.size.width = v12;
        v35.size.height = v14;
        v20 = v22 - CGRectGetHeight(v35);
      }
    }

    v37.origin.x = v8;
    v37.origin.y = v10;
    v37.size.width = v12;
    v37.size.height = v14;
    v26 = CGRectGetHeight(v37);
    if (v5)
    {
      v27 = v26;
    }

    else
    {
      v27 = Height;
    }

    if (v5)
    {
      v28 = v20;
    }

    else
    {
      v28 = v18;
    }

    if (v5)
    {
      v20 = v18;
    }

    else
    {
      Height = v26;
    }

    [(UIView *)self->_floatingSeparatorView removeFromSuperview];
    v29 = [[UIView alloc] initWithFrame:v8, v28, v12, v27];
    floatingSeparatorView = self->_floatingSeparatorView;
    self->_floatingSeparatorView = v29;

    if ((*(&self->_tableCellFlags + 9) & 4) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(UIView *)self->_floatingSeparatorView setBackgroundColor:self->_separatorColor];
      }
    }

    v31 = [(UIView *)self->_floatingSeparatorView layer];
    [v31 setZPosition:1.0];

    [(UIView *)self addSubview:self->_floatingSeparatorView];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __74__UITableViewCell__animateFloatingSeparatorForInsertion_withRowAnimation___block_invoke;
    v32[3] = &unk_1E70F3B20;
    v32[4] = self;
    *&v32[5] = v8;
    *&v32[6] = v20;
    *&v32[7] = v12;
    *&v32[8] = Height;
    [(UIView *)0.3 _animateCollectionTableAnimationWithDuration:UIView delay:0 options:v32 animations:0 completion:?];
  }
}

- (void)_animateInnerShadowForInsertion:(BOOL)a3 withRowAnimation:(int64_t)a4
{
  if (a4 == 6)
  {
    v76[13] = v13;
    v76[14] = v12;
    v76[15] = v11;
    v76[16] = v10;
    v76[17] = v9;
    v76[18] = v8;
    v76[19] = v7;
    v76[20] = v6;
    v76[31] = v4;
    v76[32] = v5;
    if ((*&self->_tableCellFlags & 0x1F00000000) == 0)
    {
      v15 = a3;
      [(UIView *)self->_topShadowAnimationView removeFromSuperview];
      v16 = [UIImageView alloc];
      v17 = [UIImage kitImageNamed:@"UITableInnerShadowTop.png"];
      v18 = [(UIImageView *)v16 initWithImage:v17];
      topShadowAnimationView = self->_topShadowAnimationView;
      self->_topShadowAnimationView = v18;

      [(UIView *)self->_bottomShadowAnimationView removeFromSuperview];
      v20 = [UIImageView alloc];
      v21 = [UIImage kitImageNamed:@"UITableInnerShadowBottom.png"];
      v22 = [(UIImageView *)v20 initWithImage:v21];
      bottomShadowAnimationView = self->_bottomShadowAnimationView;
      self->_bottomShadowAnimationView = v22;

      v24 = [(UITableViewCell *)self layoutManager];
      if ([(UITableViewCell *)self isEditing])
      {
        [v24 backgroundStartingRectForCell:self forNewEditingState:1];
        v73 = v26;
        v74 = v25;
        v28 = v27;
        v30 = v29;
      }

      else
      {
        v31 = [(UITableViewCell *)self _tableView];
        [v24 backgroundStartingRectForCell:self forNewEditingState:{objc_msgSend(v31, "_wasEditing")}];
        v73 = v33;
        v74 = v32;
        v28 = v34;
        v30 = v35;
      }

      v36 = [(UITableViewCell *)self layoutManager];
      if ([(UITableViewCell *)self isEditing])
      {
        [v36 backgroundEndingRectForCell:self forNewEditingState:1];
        v71 = v38;
        v72 = v37;
        v40 = v39;
        v42 = v41;
      }

      else
      {
        v43 = [(UITableViewCell *)self _tableView];
        [v36 backgroundEndingRectForCell:self forNewEditingState:{objc_msgSend(v43, "isEditing")}];
        v71 = v45;
        v72 = v44;
        v40 = v46;
        v42 = v47;
      }

      [(UIView *)self->_topShadowAnimationView bounds];
      v49 = v48;
      v65 = v28 + v30 * 0.5;
      [(UIView *)self->_topShadowAnimationView bounds];
      v51 = v50;
      [(UIView *)self->_bottomShadowAnimationView bounds];
      v53 = v40 + v42 - v52;
      [(UIView *)self->_bottomShadowAnimationView bounds];
      v55 = v54;
      [(UIView *)self->_bottomShadowAnimationView bounds];
      v57 = v40 + v42 * 0.5 - v56;
      [(UIView *)self->_bottomShadowAnimationView bounds];
      if (v15)
      {
        v68 = v53;
        v69 = 0.0;
        v59 = 1.0;
        v67 = v55;
        v55 = v58;
        v53 = v57;
        v70 = 0.15;
        v66 = v49;
        v60 = v28;
        v49 = v51;
        v61 = v65;
      }

      else
      {
        v69 = 1.0;
        v70 = 0.0;
        v67 = v58;
        v68 = v57;
        v59 = 0.0;
        v66 = v51;
        v60 = v65;
        v61 = v28;
      }

      v62 = +[UIView areAnimationsEnabled];
      [UIView setAnimationsEnabled:0];
      [(UIView *)self->_topShadowAnimationView setFrame:v74, v61, v73, v49];
      [(UIView *)self->_bottomShadowAnimationView setFrame:v72, v53, v71, v55];
      [(UIView *)self->_topShadowAnimationView setAlpha:v59];
      [(UIView *)self->_bottomShadowAnimationView setAlpha:v59];
      v63 = [(UIView *)self->_topShadowAnimationView layer];
      [v63 setZPosition:1.0];

      v64 = [(UIView *)self->_bottomShadowAnimationView layer];
      [v64 setZPosition:1.0];

      [UIView setAnimationsEnabled:v62];
      [(UIView *)self addSubview:self->_topShadowAnimationView];
      [(UIView *)self addSubview:self->_bottomShadowAnimationView];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __68__UITableViewCell__animateInnerShadowForInsertion_withRowAnimation___block_invoke;
      v76[3] = &unk_1E70F6C80;
      v76[4] = self;
      *&v76[5] = v74;
      *&v76[6] = v60;
      *&v76[7] = v73;
      *&v76[8] = v66;
      *&v76[9] = v72;
      *&v76[10] = v68;
      *&v76[11] = v71;
      *&v76[12] = v67;
      [(UIView *)0.3 _animateCollectionTableAnimationWithDuration:UIView delay:0 options:v76 animations:0 completion:?];
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __68__UITableViewCell__animateInnerShadowForInsertion_withRowAnimation___block_invoke_2;
      v75[3] = &unk_1E70F32F0;
      v75[4] = self;
      *&v75[5] = v69;
      [(UIView *)0.15 _animateCollectionTableAnimationWithDuration:v70 delay:UIView options:0 animations:v75 completion:0];
    }
  }
}

uint64_t __68__UITableViewCell__animateInnerShadowForInsertion_withRowAnimation___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 672) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(*(a1 + 32) + 680);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);

  return [v4 setFrame:{v2, v3, v5, v6}];
}

uint64_t __68__UITableViewCell__animateInnerShadowForInsertion_withRowAnimation___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 672) setAlpha:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 680);

  return [v3 setAlpha:v2];
}

- (BOOL)_isReorderControlActive
{
  v2 = self;
  v3 = [(UITableViewCell *)self _tableView];
  LOBYTE(v2) = [v3 _isReorderControlActiveForCell:v2];

  return v2;
}

- (BOOL)_grabberBeganReorder:(id)a3 touch:(id)a4
{
  v5 = a4;
  v6 = [(UITableViewCell *)self _tableView];
  LOBYTE(self) = [v6 _beginReorderingForCell:self touch:v5];

  return self;
}

- (void)_grabberDragged:(id)a3 yDelta:(float)a4 touch:(id)a5
{
  v7 = a5;
  v8 = [(UITableViewCell *)self _tableView];
  [v8 _draggingReorderingCell:self yDelta:v7 touch:a4];
}

- (void)_grabberReleased:(id)a3
{
  v4 = [(UITableViewCell *)self _tableView];
  [v4 _endReorderingForCell:self wasCancelled:0 animated:1];
}

- (void)editControlWasClicked:(id)a3
{
  v4 = a3;
  v6 = v4;
  if ((*&self->_tableCellFlags & 0x7000) != 0x1000)
  {
    if ([(UITableViewCell *)self editingStyle]!= UITableViewCellEditingStyleInsert)
    {
      goto LABEL_8;
    }

    v5 = [(UITableViewCell *)self _tableView];
    [v5 _didInsertRowForTableCell:self];
    goto LABEL_6;
  }

  if ([v4 isRotated])
  {
    v5 = [(UITableViewCell *)self _tableView];
    [v5 _swipeToDeleteCell:self];
LABEL_6:

    goto LABEL_8;
  }

  [(UITableViewCell *)self setShowingDeleteConfirmation:0];
LABEL_8:
}

- (BOOL)_isReorderable
{
  v2 = self;
  v3 = [(UITableViewCell *)self _tableView];
  LOBYTE(v2) = [v3 _isCellReorderable:v2];

  return v2;
}

- (id)editingData:(BOOL)a3
{
  if (self->_editingData)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
  }

  if (!v5)
  {
    v6 = [UITableViewCellEditingData alloc];
    v7 = *&self->_tableCellFlags & 0x7000;
    if (v7 == 12288)
    {
      v8 = 3;
    }

    else
    {
      v3 = [(UITableViewCell *)self _tableView];
      if (![v3 allowsMultipleSelectionDuringEditing] || (*(&self->_tableCellFlags + 12) & 4) != 0)
      {
        v8 = (*&self->_tableCellFlags >> 12) & 7;
      }

      else
      {
        v8 = 3;
      }
    }

    v9 = [(UITableViewCellEditingData *)v6 initWithTableViewCell:self editingStyle:v8];
    editingData = self->_editingData;
    self->_editingData = v9;

    if (v7 != 12288)
    {
    }
  }

  v11 = self->_editingData;

  return v11;
}

- (void)removeEditingData
{
  editingData = self->_editingData;
  self->_editingData = 0;

  [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
}

- (void)_toggleExpansionButton
{
  v3 = [(UITableViewCell *)self _existingSystemAccessoryView:0];
  tableCellFlags = self->_tableCellFlags;
  v5 = (tableCellFlags >> 15) & 7;
  switch(v5)
  {
    case 7u:
      v6 = tableCellFlags & 0xFFFFFFFFFFFC7FFFLL;
      v7 = 8;
      break;
    case 6u:
      v6 = tableCellFlags & 0xFFFFFFFFFFFC7FFFLL | 0x28000;
      v7 = 5;
      break;
    case 5u:
      v6 = tableCellFlags & 0xFFFFFFFFFFFC7FFFLL | 0x30000;
      v7 = 6;
      break;
    default:
      goto LABEL_8;
  }

  *&self->_tableCellFlags = v6;
  v8 = v3;
  [(UITableViewCell *)self _updateExpansionButton:v3 forType:v7 animated:1];
  v3 = v8;
LABEL_8:
}

- (void)_updateExpansionButton:(id)a3 forType:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  memset(&v17, 0, sizeof(v17));
  if (a4 == 8 || a4 == 6)
  {
    if ((*(&self->super._viewFlags + 18) & 0x40) != 0)
    {
      v9 = -1.57079633;
    }

    else
    {
      v9 = 1.57079633;
    }

    CGAffineTransformMakeRotation(&v17, v9);
  }

  else
  {
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    *&v17.a = *MEMORY[0x1E695EFD0];
    *&v17.c = v10;
    *&v17.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__UITableViewCell__updateExpansionButton_forType_animated___block_invoke;
  aBlock[3] = &unk_1E70F3DC8;
  v11 = v8;
  v15 = v11;
  v16 = v17;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (v5)
  {
    [(UIView *)0.3 _animateCollectionTableAnimationWithDuration:UIView delay:0 options:v12 animations:0 completion:?];
  }

  else
  {
    v12[2](v12);
  }
}

uint64_t __59__UITableViewCell__updateExpansionButton_forType_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v1;
  v3[2] = *(a1 + 72);
  return [*(a1 + 32) setTransform:v3];
}

- (int64_t)_currentAccessoryTypeForEditing:(BOOL)a3
{
  tableCellFlags = self->_tableCellFlags;
  if (!a3)
  {
    return (tableCellFlags >> 15) & 7;
  }

  result = (tableCellFlags >> 18) & 7;
  if (!result)
  {
    return (tableCellFlags >> 15) & 7;
  }

  return result;
}

- (id)_accessoryViewForType:(int64_t)a3
{
  constants = self->_constants;
  v6 = [(UIView *)self traitCollection];
  v7 = [(UITableConstants *)constants defaultListCellAccessoryImageSymbolConfigurationForTraitCollection:v6 accessoryType:a3];

  switch(a3)
  {
    case 1:
      objc_initWeak(&location, self);
      v11 = [_UITableCellAccessoryButton alloc];
      v9 = v22;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __41__UITableViewCell__accessoryViewForType___block_invoke_2;
      v22[3] = &unk_1E7122EF8;
      objc_copyWeak(&v23, &location);
      v10 = [(_UITableCellAccessoryButton *)v11 initWithFrame:v22 backgroundImageProvider:1 accessoryType:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIButton *)v10 setPreferredSymbolConfiguration:v7 forImageInState:0];
      goto LABEL_7;
    case 4:
      v10 = [UIButton buttonWithType:3];
      [(UIButton *)v10 setPreferredSymbolConfiguration:v7 forImageInState:0];
      goto LABEL_21;
    case 3:
      objc_initWeak(&location, self);
      v8 = [_UITableCellAccessoryButton alloc];
      v9 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __41__UITableViewCell__accessoryViewForType___block_invoke;
      v24[3] = &unk_1E7122EF8;
      objc_copyWeak(&v25, &location);
      v10 = [(_UITableCellAccessoryButton *)v8 initWithFrame:v24 backgroundImageProvider:3 accessoryType:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIButton *)v10 setPreferredSymbolConfiguration:v7 forImageInState:0];
LABEL_7:
      objc_destroyWeak(v9 + 4);
      objc_destroyWeak(&location);
      goto LABEL_21;
  }

  if ((a3 - 5) > 1)
  {
    if ((a3 - 7) > 1)
    {
      if (a3 == 2)
      {
        v14 = [UITableViewCellDetailDisclosureView alloc];
        if (self->_accessoryAction)
        {
          accessoryAction = self->_accessoryAction;
        }

        else
        {
          accessoryAction = 0;
        }

        v10 = [(UITableViewCellDetailDisclosureView *)v14 initWithTarget:self->_target action:accessoryAction cell:self buttonType:4 shouldReverseLayoutDirection:(*(&self->super._viewFlags + 2) >> 22) & 1];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v12 = [UITableViewCellDetailDisclosureView alloc];
      if (self->_accessoryAction)
      {
        v13 = self->_accessoryAction;
      }

      else
      {
        v13 = 0;
      }

      v10 = [(UITableViewCellDetailDisclosureView *)v12 initWithTarget:self->_target action:v13 cell:self buttonType:123 shouldReverseLayoutDirection:(*(&self->super._viewFlags + 2) >> 22) & 1];
      v16 = [(_UITableCellAccessoryButton *)v10 accessoryButton];
      [(UITableViewCell *)self _updateExpansionButton:v16 forType:a3 animated:0];
    }
  }

  else
  {
    v10 = [UIButton buttonWithType:123];
    [(UITableViewCell *)self _updateExpansionButton:v10 forType:a3 animated:0];
  }

LABEL_21:
  v17 = [(UITableViewCell *)self _tableView];
  if (v17)
  {
    [(UIControl *)v10 addTarget:v17 action:sel__accessoryButtonAction_ forControlEvents:64];
  }

  [v10 accessibilitySetIdentification:@"UITableCellViewDisclosure"];
  [(UIButton *)v10 setSemanticContentAttribute:[(UIView *)self semanticContentAttribute]];
  if (objc_opt_respondsToSelector())
  {
    v18 = self->_constants;
    v19 = [(UITableViewCell *)self _tableView];
    v20 = [(UITableConstants *)v18 defaultAccessoryColorForCell:self inTableView:v19];
    [(UIButton *)v10 setTintColor:v20];
  }

  return v10;
}

id __41__UITableViewCell__accessoryViewForType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _checkmarkImageWithTintColor:v3];

  return v5;
}

id __41__UITableViewCell__accessoryViewForType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _disclosureChevronImageWithBaseColor:v3];

  return v5;
}

- (id)_existingSystemAccessoryViews
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    v4 = [(UITableViewCell *)self _accessoryManager];
    v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"custom", @"customEditing", 0}];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__UITableViewCell__existingSystemAccessoryViews__block_invoke;
    aBlock[3] = &unk_1E7105F48;
    v6 = v5;
    v24 = v6;
    v25 = v3;
    v7 = _Block_copy(aBlock);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v4;
    v8 = [v4 configurations];
    v9 = [v8 objectEnumerator];

    v10 = [v9 countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 leadingAccessories];
          v7[2](v7, v15);

          v16 = [v14 trailingAccessories];
          v7[2](v7, v16);
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v11);
    }
  }

  else
  {
    if (self->_accessoryView)
    {
      [v3 addObject:?];
    }

    if (self->_editingAccessoryView)
    {
      [v3 addObject:?];
    }
  }

  return v3;
}

void __48__UITableViewCell__existingSystemAccessoryViews__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [v8 identifier];
        LOBYTE(v9) = [v9 containsObject:v10];

        if ((v9 & 1) == 0)
        {
          v11 = *(a1 + 40);
          v12 = [v8 view];
          [v11 addObject:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (id)_existingSystemAccessoryView:(BOOL)a3
{
  v3 = a3;
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    v5 = 49;
    if (v3)
    {
      v5 = 60;
    }

    v6 = *(&self->super.super.super.isa + OBJC_IVAR___UITableViewCellSelectedBackground__multiselect[v5]);
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      if (v3)
      {
        [(UITableViewCell *)self _editingAccessoryView:0];
      }

      else
      {
        [(UITableViewCell *)self _accessoryView:0];
      }
      v7 = ;
    }
  }

  else
  {
    v8 = 51;
    if (v3)
    {
      v8 = 52;
    }

    v7 = *(&self->super.super.super.isa + OBJC_IVAR___UITableViewCellSelectedBackground__multiselect[v8]);
  }

  return v7;
}

- (id)_defaultAccessoryView
{
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    v3 = [(UITableViewCell *)self _accessoryView:0];
  }

  else
  {
    if (!self->_accessoryView)
    {
      tableCellFlags = self->_tableCellFlags;
      v5 = (tableCellFlags >> 15) & 7;
      if (v5)
      {
        if (v5 == ((tableCellFlags >> 18) & 7) && (editingAccessoryView = self->_editingAccessoryView) != 0)
        {
          objc_storeStrong(&self->_accessoryView, editingAccessoryView);
        }

        else
        {
          v7 = [(UITableViewCell *)self _newAccessoryView:0];
          accessoryView = self->_accessoryView;
          self->_accessoryView = v7;

          [(UIView *)self addSubview:self->_accessoryView];
        }
      }
    }

    v3 = self->_accessoryView;
  }

  return v3;
}

- (id)_accessoryView:(BOOL)a3
{
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    v5 = [(UITableViewCell *)self _accessoryManager];
    v6 = [v5 configurations];
    v7 = [v6 objectForKeyedSubscript:0x1EFB35F50];

    v8 = [v7 trailingAccessories];
    v9 = [v8 firstObject];

    v10 = [v9 view];

    goto LABEL_9;
  }

  customAccessoryView = self->_customAccessoryView;
  if (customAccessoryView)
  {
    goto LABEL_7;
  }

  if (!a3)
  {
    customAccessoryView = self->_accessoryView;
LABEL_7:
    v12 = customAccessoryView;
    goto LABEL_8;
  }

  v12 = [(UITableViewCell *)self _defaultAccessoryView];
LABEL_8:
  v10 = v12;
LABEL_9:

  return v10;
}

- (id)_editingAccessoryView:(BOOL)a3
{
  v3 = a3;
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    v5 = [(UITableViewCell *)self _accessoryManager];
    v6 = [v5 configurations];
    v7 = [v6 objectForKeyedSubscript:0x1EFBA01F0];

    v8 = [v7 trailingAccessories];
    v9 = [v8 firstObject];

    v10 = [v9 view];
  }

  else
  {
    customEditingAccessoryView = self->_customEditingAccessoryView;
    if (!customEditingAccessoryView)
    {
      if (!self->_editingAccessoryView)
      {
        tableCellFlags = self->_tableCellFlags;
        v13 = (tableCellFlags >> 18) & 7;
        if (v13 && v3)
        {
          if (((tableCellFlags >> 15) & 7) == v13 && (accessoryView = self->_accessoryView) != 0)
          {
            objc_storeStrong(&self->_editingAccessoryView, accessoryView);
          }

          else
          {
            v16 = [(UITableViewCell *)self _newAccessoryView:1];
            editingAccessoryView = self->_editingAccessoryView;
            self->_editingAccessoryView = v16;

            if (*(&self->_tableCellFlags + 1))
            {
              [(UIView *)self addSubview:self->_editingAccessoryView];
            }
          }
        }
      }

      customEditingAccessoryView = self->_editingAccessoryView;
    }

    v10 = customEditingAccessoryView;
  }

  return v10;
}

- (id)_separatorView:(BOOL)a3
{
  if (a3)
  {
    [(UITableViewCell *)self _updateSeparatorContent:1];
  }

  separatorView = self->_separatorView;

  return separatorView;
}

- (id)_backgroundView:(BOOL)a3
{
  if (a3 && ![(UITableViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
  {
    [(UITableViewCell *)self _setupBackgroundView];
  }

  backgroundView = self->_backgroundView;

  return backgroundView;
}

- (id)_selectedBackgroundView:(BOOL)a3
{
  if (a3 && ![(UITableViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
  {
    [(UITableViewCell *)self _setupSelectedBackgroundView];
  }

  tableCellFlags = self->_tableCellFlags;
  if ((tableCellFlags & 0x100) == 0)
  {
    goto LABEL_5;
  }

  if ((*&self->_tableCellFlags & 0x7000) != 0x3000)
  {
    v3 = [(UITableViewCell *)self _tableView];
    if ([v3 allowsMultipleSelectionDuringEditing] && (*(&self->_tableCellFlags + 12) & 4) == 0)
    {
      multipleSelectionBackgroundView = self->_multipleSelectionBackgroundView;
      if (!multipleSelectionBackgroundView)
      {
        multipleSelectionBackgroundView = self->_selectedBackgroundView;
      }

      v8 = multipleSelectionBackgroundView;
      goto LABEL_22;
    }

LABEL_5:
    if (*(&self->_tableCellFlags + 1))
    {
      v8 = self->_selectedBackgroundView;
      if ((tableCellFlags & 0x100) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v6 = [(UITableViewCell *)self _tableView];
      if (([v6 allowsMultipleSelection] & 1) == 0 || (selectedBackgroundView = self->_multipleSelectionBackgroundView) == 0)
      {
        selectedBackgroundView = self->_selectedBackgroundView;
      }

      v8 = selectedBackgroundView;

      if ((tableCellFlags & 0x100) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_22:

    goto LABEL_23;
  }

  v9 = self->_multipleSelectionBackgroundView;
  if (!v9)
  {
    v9 = self->_selectedBackgroundView;
  }

  v8 = v9;
LABEL_23:

  return v8;
}

- (void)setWasSwiped:(BOOL)a3
{
  tableCellFlags = self->_tableCellFlags;
  if (((((tableCellFlags & 0x20000000000) == 0) ^ a3) & 1) == 0)
  {
    v5 = 0x20000000000;
    if (!a3)
    {
      v5 = 0;
    }

    *&self->_tableCellFlags = tableCellFlags & 0xFFFFFDFFFFFFFFFFLL | v5;
    if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
    {

      [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
    }
  }
}

- (void)_setSwiped:(BOOL)a3
{
  if (((((*(&self->_tableCellFlags + 1) & 2) == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
    v5 = 512;
    if (!v3)
    {
      v5 = 0;
    }

    *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFFFFFFFFDFFLL | v5;

    [(UITableViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_setAccessoryAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_accessoryAction = v3;
}

- (SEL)_accessoryAction
{
  if (self->_accessoryAction)
  {
    return self->_accessoryAction;
  }

  else
  {
    return 0;
  }
}

- (void)_monitoredView:(id)a3 willMoveFromSuperview:(id)a4 toSuperview:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (self->_unhighlightedStates && [(UIView *)self containsView:v8]&& ![(UIView *)self containsView:v9])
  {
    [(UITableViewCell *)self _clearOpaqueViewState:v10];
  }
}

- (void)_monitoredView:(id)a3 didMoveFromSuperview:(id)a4 toSuperview:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  while (1)
  {
    v11 = v10 == self || v10 == 0;
    v12 = v11;
    if (v11)
    {
      break;
    }

    objc_opt_class();
    v13 = (objc_opt_isKindOfClass() & 1) != 0 || v10 == self->_selectedBackgroundView;
    v14 = [(UIView *)v10 superview];

    v10 = v14;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  v14 = v10;
LABEL_15:
  if (self->_unhighlightedStates && ![(UIView *)self containsView:v8]&& (v12 & [(UIView *)self containsView:v9]) == 1)
  {
    [(UITableViewCell *)self _saveOpaqueViewState:v15];
    [(UITableViewCell *)self _setOpaque:0 forSubview:v15];
    [(UITableViewCell *)self _updateHighlightColorsForView:v15 highlighted:[(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance]];
  }
}

- (void)_setNeedsSetup:(BOOL)a3
{
  v3 = 0x2000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_tableCellFlags = *&self->_tableCellFlags & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)_setNeedsHeightCalculation:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setTableViewStyle:(int64_t)a3
{
  v3 = a3;
  v5 = *(&self->_tableCellFlags + 1) & 0x1FLL;
  if (v5 == a3 || a3 && v5)
  {
    v6 = 0;
  }

  else
  {
    [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
    v6 = 1;
  }

  [(UITableViewCell *)self _usesRoundedGroups];
  tableCellFlags = self->_tableCellFlags;
  *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFE0FFFFFFFFLL | ((v3 & 0x1F) << 32);
  if ((tableCellFlags & 0x1000000000000000) == 0 && ![(UITableViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__UITableViewCell_setTableViewStyle___block_invoke;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    [UIView _performSystemAppearanceModifications:v8];
  }

  if (v5 != (*(&self->_tableCellFlags + 1) & 0x1F) || ![(UITableViewCell *)self _usingBackgroundViewConfiguration])
  {
    [(UITableViewCell *)self _updateDefaultBackgroundAppearance];
  }

  [(UITableViewCell *)self _updateContentClip];
  if (v6)
  {
    [(UITableViewCell *)self setNeedsUpdateConfiguration];
  }
}

void __37__UITableViewCell_setTableViewStyle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[52];
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [v2 _constants];
  v5 = [*(a1 + 32) _tableView];
  v6 = [v5 _tableStyle];
  v7 = [UICellConfigurationState _readonlyCellState:?];
  v8 = [*(a1 + 32) traitCollection];
  if (v4)
  {
    [v4 defaultCellBackgroundPropertiesForTableViewStyle:v6 state:v7 traitCollection:v8];
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

  [*(a1 + 32) setBackgroundColor:*(&v9 + 1)];
  *(*(a1 + 32) + 416) = *(*(a1 + 32) + 416) & 0xFFFFFF7FFFFFFFFFLL | (((v3 >> 39) & 1) << 39);
  __destructor_8_s8_s16_s24_s80(&v9);
}

- (void)_startToEditTextField
{
  v2 = [(UITableViewCell *)self editableTextField];
  if (v2)
  {
    v3 = v2;
    [v2 becomeFirstResponder];
    v2 = v3;
  }
}

- (void)_multiselectColorChanged
{
  v3 = [(UITableViewCell *)self editingData:0];
  v2 = [v3 editControl:0];
  [v2 _multiselectColorChanged];
}

- (void)_setMultiselecting:(BOOL)a3
{
  if (!a3 || !self->_multipleSelectionBackgroundView)
  {
    p_tableCellFlags = &self->_tableCellFlags;
    *&self->_tableCellFlags &= ~0x4000000000000000uLL;
    goto LABEL_7;
  }

  p_tableCellFlags = &self->_tableCellFlags;
  *&self->_tableCellFlags |= 0x4000000000000000uLL;
  p_selectedBackgroundView = &self->_selectedBackgroundView;
  v6 = [(UIView *)self->_selectedBackgroundView superview];

  if (v6)
  {
LABEL_8:
    [(UIView *)*p_selectedBackgroundView removeFromSuperview];
    [(UITableViewCell *)self showSelectedBackgroundView:(*p_tableCellFlags >> 7) & 1 animated:0];
    goto LABEL_9;
  }

  if ((*(&self->_tableCellFlags + 7) & 0x40) == 0)
  {
LABEL_7:
    p_selectedBackgroundView = &self->_multipleSelectionBackgroundView;
    v7 = [(UIView *)self->_multipleSelectionBackgroundView superview];

    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:

  [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
}

- (BOOL)_shouldSaveOpaqueStateForView:(id)a3
{
  v4 = a3;
  if (*(&self->_tableCellFlags + 1))
  {
    v6 = 1;
    v5 = [(UITableViewCell *)self _existingSystemAccessoryView:1];
    if (v5 != v4)
    {
      goto LABEL_8;
    }

    v7 = 0x80000;
    v8 = 1835008;
LABEL_7:
    v6 = (*&self->_tableCellFlags & v8) != v7;
    goto LABEL_8;
  }

  v5 = [(UITableViewCell *)self _existingSystemAccessoryView:0];
  if (v5 == v4)
  {
    v7 = 0x10000;
    v8 = 229376;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_8:

  v9 = [(UITableViewCell *)self _shouldChangeOpaqueStateOfView:v4];
  return v9 && v6;
}

- (void)_setIndexPath:(id)a3
{
  v5 = a3;
  if (self->_representedIndexPath != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_representedIndexPath, a3);
    v5 = v6;
  }
}

- (void)_setSeparatorInsetIsRelativeToCellEdges:(BOOL)a3
{
  v3 = *(&self->_tableCellFlags + 1);
  if (((((v3 & 0x200000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x200000;
    if (!a3)
    {
      v4 = 0;
    }

    *(&self->_tableCellFlags + 1) = v3 & 0xFFFFFFFFFFDFFFFFLL | v4;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_setInsetsContentViewsToSafeArea:(BOOL)a3
{
  if (((((*(&self->_tableCellFlags + 1) & 0x4000000) == 0) ^ a3) & 1) == 0)
  {
    v9 = v3;
    v8 = 0x4000000;
    if (!a3)
    {
      v8 = 0;
    }

    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFBFFFFFFLL | v8;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate:v4];

    [(UITableViewCell *)self _updateAccessoryMetrics];
  }
}

- (UIEdgeInsets)_adjustedRawLayoutMargins:(UIEdgeInsets)a3 withLeadingLayoutMarginAdjustment:(double)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if ([(UIView *)self _shouldReverseLayoutDirection])
  {
    if (right == -1.79769313e308)
    {
      v10 = 0.0;
      if (([(UIView *)self edgesInsettingLayoutMarginsFromSafeArea]& 8) != 0)
      {
        [(UIView *)self safeAreaInsets];
        v10 = v11;
      }

      [(UIView *)self layoutMargins];
      right = v12 - v10 + a4;
    }

    else
    {
      right = right + a4;
    }
  }

  else if (left == -1.79769313e308)
  {
    v13 = 0.0;
    if (([(UIView *)self edgesInsettingLayoutMarginsFromSafeArea]& 2) != 0)
    {
      [(UIView *)self safeAreaInsets];
      v13 = v14;
    }

    [(UIView *)self layoutMargins];
    left = v15 - v13 + a4;
  }

  else
  {
    left = left + a4;
  }

  v16 = top;
  v17 = left;
  v18 = bottom;
  v19 = right;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (void)_applyLeadingLayoutMarginAdjustment:(double)a3
{
  [(UIView *)self _rawLayoutMargins];
  [UITableViewCell _adjustedRawLayoutMargins:"_adjustedRawLayoutMargins:withLeadingLayoutMarginAdjustment:" withLeadingLayoutMarginAdjustment:?];
  v4.receiver = self;
  v4.super_class = UITableViewCell;
  [(UIView *)&v4 _setRawLayoutMargins:?];
}

- (void)_setRawLayoutMargins:(UIEdgeInsets)a3
{
  if (self->_extraLeadingLayoutMarginForIndentation > 0.0)
  {
    [(UITableViewCell *)self _adjustedRawLayoutMargins:a3.top withLeadingLayoutMarginAdjustment:a3.left, a3.bottom, a3.right];
  }

  v4.receiver = self;
  v4.super_class = UITableViewCell;
  [(UIView *)&v4 _setRawLayoutMargins:?];
}

- (NSDirectionalEdgeInsets)_overriddenDefaultContentViewLayoutMargins
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (isKindOfClass)
  {
    [(UIView *)self->_contentView _overriddenDefaultLayoutMargins:0.0];
  }

  result.trailing = v7;
  result.bottom = v6;
  result.leading = v4;
  result.top = v5;
  return result;
}

- (void)_setOverriddenDefaultContentViewLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentView = self->_contentView;

    [(UIView *)contentView _setOverriddenDefaultLayoutMargins:top, leading, bottom, trailing];
  }
}

- (double)_contentViewInset:(double)a3 convertedToCellInsetOnEdge:(unint64_t)a4
{
  if (a4 != 2 && a4 != 8)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:6597 description:{@"Invalid parameter not satisfying: %@", @"edge == NSDirectionalRectEdgeLeading || edge == NSDirectionalRectEdgeTrailing"}];
  }

  v9 = [(UIView *)self _shouldReverseLayoutDirection];
  [(UIView *)self->_contentView bounds];
  if ((a4 == 2) != v9)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0.0;
  }

  [(UIView *)self convertRect:self->_contentView fromView:v13 + v10, v11 + 0.0, v12 - (a3 + 0.0)];
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = 8;
  if (v9)
  {
    v22 = 2;
  }

  if (v22 == a4)
  {
    [(UIView *)self bounds];
    MaxX = CGRectGetMaxX(v26);
    v27.origin.x = v18;
    v27.origin.y = v19;
    v27.size.width = v20;
    v27.size.height = v21;
    return MaxX - CGRectGetMaxX(v27);
  }

  else
  {
    MinX = CGRectGetMinX(*&v14);
    [(UIView *)self bounds];
    return MinX - CGRectGetMinX(v28);
  }
}

- (double)_contentConfigurationPrimaryTextInsetFromCellLeadingEdge
{
  if (objc_opt_respondsToSelector())
  {
    [(UIView *)self->_contentView _primaryTextLayoutFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = *MEMORY[0x1E695F050];
    v6 = *(MEMORY[0x1E695F050] + 8);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v10 = *(MEMORY[0x1E695F050] + 24);
  }

  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  IsNull = CGRectIsNull(v31);
  result = 0.0;
  if (!IsNull)
  {
    [(UIView *)self convertRect:self->_contentView fromView:v4, v6, v8, v10];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(UIView *)self bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    if ([(UIView *)self _shouldReverseLayoutDirection])
    {
      v32.origin.x = v22;
      v32.origin.y = v24;
      v32.size.width = v26;
      v32.size.height = v28;
      MaxX = CGRectGetMaxX(v32);
      v33.origin.x = v14;
      v33.origin.y = v16;
      v33.size.width = v18;
      v33.size.height = v20;
      return MaxX - CGRectGetMaxX(v33);
    }

    else
    {
      v34.origin.x = v14;
      v34.origin.y = v16;
      v34.size.width = v18;
      v34.size.height = v20;
      MinX = CGRectGetMinX(v34);
      v35.origin.x = v22;
      v35.origin.y = v24;
      v35.size.width = v26;
      v35.size.height = v28;
      return MinX - CGRectGetMinX(v35);
    }
  }

  return result;
}

- (void)_setDefaultLeadingMarginWidth:(double)a3
{
  if (self->_defaultLeadingMarginWidth != a3)
  {
    self->_defaultLeadingMarginWidth = a3;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_setDefaultTrailingCellMarginWidth:(double)a3
{
  if (self->_defaultTrailingCellMarginWidth != a3)
  {
    self->_defaultTrailingCellMarginWidth = a3;
    [(UIView *)self setNeedsLayout];

    [(UITableViewCell *)self _updateAccessoryMetrics];
  }
}

- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(UIView *)self safeAreaInsets];
  if (left != v9 || right != v8)
  {
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
    [(UITableViewCell *)self _updateAccessoryMetrics];
  }

  v11.receiver = self;
  v11.super_class = UITableViewCell;
  [(UIView *)&v11 _safeAreaInsetsDidChangeFromOldInsets:top, left, bottom, right];
}

- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(UIView *)self layoutMargins];
  if (left != v9 || right != v8)
  {
    [(UITableViewCell *)self _updateAccessoryMetrics];
  }

  v11.receiver = self;
  v11.super_class = UITableViewCell;
  [(UIView *)&v11 _layoutMarginsDidChangeFromOldMargins:top, left, bottom, right];
}

- (void)_updateSeparatorContent:(BOOL)a3
{
  if (a3)
  {
    *&self->_tableCellFlags |= 0x80000000000uLL;
  }

  [(UITableViewCell *)self _updateSeparatorContent];
}

- (void)_tableViewDidUpdateMarginWidth
{
  if (self->_separatorInset.left == -1.0 || self->_separatorInset.right == -1.0)
  {
    [(UITableViewCell *)self _updateSeparatorContent:1];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v68.receiver = self;
  v68.super_class = UITableViewCell;
  v8 = [(UIView *)&v68 hitTest:v7 withEvent:x, y];
  IsAnimating = _UIViewIsAnimating(self);
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = !IsAnimating;
  }

  if (v10)
  {
    goto LABEL_52;
  }

  if (!dyld_program_sdk_at_least() || ![(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    if ((*(&self->_tableCellFlags + 2) & 0x20) != 0)
    {
LABEL_52:
      v21 = v8;
      goto LABEL_53;
    }

    v31 = [(UITableViewCell *)self _existingSystemAccessoryView:1];
    v32 = [(UITableViewCell *)self _existingSystemAccessoryView:0];
    [(UIView *)self bounds];
    MidY = CGRectGetMidY(v70);
    v34 = *(&self->super._viewFlags + 2);
    if (v31)
    {
      [v31 frame];
      if ((v34 & 0x400000) == 0)
      {
        v39 = x >= CGRectGetMinX(*&v35);
        if (!v32)
        {
          goto LABEL_29;
        }

LABEL_23:
        [v32 frame];
        v40 = 0;
        v41 = x >= CGRectGetMinX(v71);
        goto LABEL_30;
      }

      v39 = x <= CGRectGetMaxX(*&v35);
      if (v32)
      {
LABEL_28:
        [v32 frame];
        v40 = 0;
        v41 = x <= CGRectGetMaxX(v72);
        goto LABEL_30;
      }
    }

    else
    {
      v39 = 0;
      if (v32)
      {
        if ((v34 & 0x400000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }
    }

LABEL_29:
    v41 = 0;
    v40 = 1;
LABEL_30:
    [v31 convertPoint:self fromView:{x, MidY}];
    v43 = v42;
    v45 = v44;
    [v32 convertPoint:self fromView:{x, MidY}];
    v47 = v46;
    v49 = v48;
    tableCellFlags = self->_tableCellFlags;
    if ((tableCellFlags & 0x100) != 0)
    {
      if (v31)
      {
        v53 = (tableCellFlags & 0x1C0000) == 0x100000;
      }

      else
      {
        v53 = 0;
      }

      v54 = !v53;
      if ((v54 | v39))
      {
        v52 = v31;
        if ((v54 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v55 = [v31 hitTest:v7 withEvent:{v43, v45}];

        v52 = v31;
        if (v55)
        {
          goto LABEL_50;
        }

        tableCellFlags = self->_tableCellFlags;
      }
    }

    if ((tableCellFlags & 0x100) == 0)
    {
      if ((tableCellFlags & 0x38000) == 0x20000)
      {
        v51 = v40;
      }

      else
      {
        v51 = 1;
      }

      if ((v51 | v41))
      {
        v52 = v32;
        if (v51)
        {
          goto LABEL_51;
        }

LABEL_50:
        v21 = v52;

        goto LABEL_53;
      }

      v56 = [v32 hitTest:v7 withEvent:{v47, v49}];

      v52 = v32;
      if (v56)
      {
        goto LABEL_50;
      }
    }

LABEL_51:

    goto LABEL_52;
  }

  v11 = [(UITableViewCell *)self _accessoryManager];
  v12 = [v11 currentConfiguration];
  aBlock = MEMORY[0x1E69E9820];
  v60 = 3221225472;
  v61 = __37__UITableViewCell_hitTest_withEvent___block_invoke;
  v62 = &unk_1E7122F20;
  v63 = self;
  v58 = v11;
  v64 = v58;
  v66 = x;
  v67 = y;
  v65 = v7;
  v13 = _Block_copy(&aBlock);
  v14 = [(UIView *)self _shouldReverseLayoutDirection];
  v15 = [v12 leadingAccessories];
  v16 = [v15 count];

  if (v16)
  {
    v17 = 0;
    while (1)
    {
      v18 = [v12 leadingAccessories];
      v19 = [v18 objectAtIndexedSubscript:v17];

      v20 = [v12 leadingAccessories];
      v21 = v13[2](v13, v19, v17 == [v20 count] - 1, v14 ^ 1);

      if (v21)
      {
        break;
      }

      ++v17;
      v22 = [v12 leadingAccessories];
      v23 = [v22 count];

      if (v17 >= v23)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v24 = [v12 trailingAccessories];
    v21 = [v24 count];

    if (!v21)
    {
LABEL_15:
      v29 = 1;
      v30 = v58;
      goto LABEL_25;
    }

    v25 = 0;
    while (1)
    {
      v26 = [v12 trailingAccessories];
      v19 = [v26 objectAtIndexedSubscript:v25];

      v27 = [v12 trailingAccessories];
      v21 = v13[2](v13, v19, v25 == [v27 count] - 1, v14);

      if (v21)
      {
        break;
      }

      ++v25;
      v28 = [v12 trailingAccessories];
      v21 = [v28 count];

      if (v25 >= v21)
      {
        goto LABEL_15;
      }
    }
  }

  v30 = v58;

  v29 = 0;
LABEL_25:

  if (v29)
  {
    goto LABEL_52;
  }

LABEL_53:

  return v21;
}

id __37__UITableViewCell_hitTest_withEvent___block_invoke(uint64_t a1, void *a2, int a3, int a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 view];
  v9 = *(a1 + 32);
  v10 = v8;
  v11 = v9;
  v12 = v11;
  v13 = v10 != 0;
  v14 = v10;
  if (v10 && v10 != v11)
  {
    v14 = v10;
    do
    {
      v15 = v14;
      v14 = [v14 superview];

      v13 = v14 != 0;
    }

    while (v14 != v12 && v14);
  }

  if (!os_variant_has_internal_diagnostics())
  {
    if (v13)
    {
      goto LABEL_8;
    }

    v55 = *(__UILogGetCategoryCachedImpl("Assert", &_UITableViewCellExpansionAccessoryIdentifier_block_invoke_2___s_category) + 8);
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v52 = v55;
    v53 = [v10 superview];
    v56 = *(a1 + 40);
    *buf = 138413058;
    v60 = v7;
    v61 = 2112;
    v62 = v10;
    v63 = 2112;
    v64 = v53;
    v65 = 2112;
    v66 = v56;
    _os_log_impl(&dword_188A29000, v52, OS_LOG_TYPE_ERROR, "Found an accessory in the current configuration that is not in the correct view hierarchy: %@; view: %@; superview: %@; configurations: %@", buf, 0x2Au);
    goto LABEL_32;
  }

  if (!v13)
  {
    v52 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
    {
LABEL_33:

      goto LABEL_34;
    }

    v53 = [v10 superview];
    v54 = *(a1 + 40);
    *buf = 138413058;
    v60 = v7;
    v61 = 2112;
    v62 = v10;
    v63 = 2112;
    v64 = v53;
    v65 = 2112;
    v66 = v54;
    _os_log_fault_impl(&dword_188A29000, v52, OS_LOG_TYPE_FAULT, "Found an accessory in the current configuration that is not in the correct view hierarchy: %@; view: %@; superview: %@; configurations: %@", buf, 0x2Au);
LABEL_32:

    goto LABEL_33;
  }

LABEL_8:
  v16 = *(a1 + 32);
  [v10 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v10 superview];
  [v16 convertRect:v25 fromView:{v18, v20, v22, v24}];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v58 = v32;

  [*(a1 + 32) bounds];
  x = v70.origin.x;
  y = v70.origin.y;
  width = v70.size.width;
  height = v70.size.height;
  v37 = CGRectGetHeight(v70);
  if (a3)
  {
    if (a4)
    {
      v38 = 0.0;
      v71.origin.y = 0.0;
      v71.origin.x = v27;
      v71.size.width = v31;
      v71.size.height = v37;
      v39 = v31 + CGRectGetMinX(v71);
      goto LABEL_14;
    }

    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    v40 = CGRectGetWidth(v72);
    v73.origin.y = 0.0;
    v73.origin.x = v27;
    v73.size.width = v31;
    v73.size.height = v37;
    v39 = v31 + v40 - CGRectGetMaxX(v73);
  }

  else
  {
    v39 = v31;
  }

  v38 = v27;
LABEL_14:
  v41 = 0;
  v42 = v38;
  v43 = v37;
  if (!CGRectContainsPoint(*(&v39 - 2), *(a1 + 56)))
  {
LABEL_34:
    v51 = 0;
    goto LABEL_35;
  }

  v44 = *(a1 + 56);
  v45 = *(a1 + 64);
  v74.origin.x = v27;
  v74.origin.y = v29;
  v74.size.width = v31;
  v74.size.height = v58;
  v69.x = v44;
  v69.y = v45;
  if (!CGRectContainsPoint(v74, v69))
  {
    v46 = v31 + -2.0;
    v75.origin.x = v27 + 1.0;
    v75.origin.y = v29 + 1.0;
    v75.size.width = v46;
    v75.size.height = v58 + -2.0;
    MinX = CGRectGetMinX(v75);
    v76.origin.x = v27 + 1.0;
    v76.origin.y = v29 + 1.0;
    v76.size.width = v46;
    v76.size.height = v58 + -2.0;
    MaxX = CGRectGetMaxX(v76);
    if (v44 < MaxX)
    {
      MaxX = v44;
    }

    if (MinX >= MaxX)
    {
      v44 = MinX;
    }

    else
    {
      v44 = MaxX;
    }

    v77.origin.x = v27 + 1.0;
    v77.origin.y = v29 + 1.0;
    v77.size.width = v46;
    v77.size.height = v58 + -2.0;
    MinY = CGRectGetMinY(v77);
    v78.origin.x = v27 + 1.0;
    v78.origin.y = v29 + 1.0;
    v78.size.width = v46;
    v78.size.height = v58 + -2.0;
    MaxY = CGRectGetMaxY(v78);
    if (v45 < MaxY)
    {
      MaxY = v45;
    }

    if (MinY >= MaxY)
    {
      v45 = MinY;
    }

    else
    {
      v45 = MaxY;
    }
  }

  [v10 convertPoint:*(a1 + 32) fromView:{v44, v45}];
  v51 = [v10 hitTest:*(a1 + 48) withEvent:?];
LABEL_35:

  return v51;
}

- (void)_setDeleteAnimationInProgress:(BOOL)a3
{
  v3 = 0x8000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_tableCellFlags = v3 & 0x8000000000000000 | *&self->_tableCellFlags & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setPlaceHolderValue:(id)a3
{
  v4 = a3;
  v5 = [(UITableViewCell *)self editableTextField];
  [v5 setPlaceholder:v4];
}

- (void)setReturnAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_returnAction = v3;
}

- (SEL)returnAction
{
  if (self->_returnAction)
  {
    return self->_returnAction;
  }

  else
  {
    return 0;
  }
}

- (void)_setPopupMenuButton:(id)a3
{
  v6 = a3;
  if (self->__popupMenuButton != v6)
  {
    v13 = v6;
    if (v6)
    {
      v7 = [(UIButton *)v6 menu];

      if (!v7)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        [v10 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:7069 description:{@"Popup menu button must be configured with a menu: %@", v13}];
      }

      if (![(UIControl *)v13 showsMenuAsPrimaryAction])
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:7070 description:{@"Popup menu button must have showsMenuAsPrimaryAction enabled: %@", v13}];
      }

      if (![(UIButton *)v13 changesSelectionAsPrimaryAction])
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:7071 description:{@"Popup menu button must have changesSelectionAsPrimaryAction enabled: %@", v13}];
      }
    }

    [(UIButton *)self->__popupMenuButton _setWantsAccessibilityUnderline:1];
    [(UIView *)self->__popupMenuButton setUserInteractionEnabled:1];
    objc_storeStrong(&self->__popupMenuButton, a3);
    [(UIButton *)self->__popupMenuButton _setWantsAccessibilityUnderline:0];
    v8 = [(UIView *)self traitCollection];
    v9 = [v8 userInterfaceIdiom];

    v6 = v13;
    if (v9 != 5)
    {
      [(UIView *)v13 setUserInteractionEnabled:0];
      v6 = v13;
    }
  }
}

- (void)_setAnimating:(BOOL)a3 clippingAdjacentCells:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(UITableViewCell *)self _shouldMaskToBoundsWhileAnimating];
  v8 = [(UITableViewCell *)self _usesRoundedGroups];
  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFFFFELL | v5;
  [(UITableViewCell *)self _updateContentClip];
  if (v5)
  {
    if (v8 || !v7 || !v4)
    {
      return;
    }

    if (self->_clearBlendingView)
    {
      [(UIView *)self bounds];
      [(UIView *)self->_clearBlendingView setFrame:?];
    }

    else
    {
      v10 = [UIView alloc];
      [(UIView *)self bounds];
      v11 = [(UIView *)v10 initWithFrame:?];
      clearBlendingView = self->_clearBlendingView;
      self->_clearBlendingView = v11;

      [(UIView *)self->_clearBlendingView setAutoresizingMask:18];
      v13 = [(UIView *)self->_clearBlendingView layer];
      [v13 setMasksToBounds:1];
      [v13 setCompositingFilter:*MEMORY[0x1E69798A8]];
    }

    v14 = [(UITableViewCell *)self backgroundColor];
    [(UIView *)self->_clearBlendingView setBackgroundColor:v14];

    v15 = [(UIView *)self->_clearBlendingView superview];

    if (v15 != self)
    {
      [(UIView *)self insertSubview:self->_clearBlendingView atIndex:0];
    }

    v9 = 0;
  }

  else
  {
    [(UIView *)self->_clearBlendingView removeFromSuperview];
    v9 = (*(&self->_tableCellFlags + 4) & 0x380) == 0;
  }

  v16 = [(UIView *)self layer];
  [v16 setAllowsGroupBlending:v9];
}

- (void)setSeparatorInset:(UIEdgeInsets)separatorInset
{
  v3.f64[0] = separatorInset.top;
  v3.f64[1] = separatorInset.left;
  v4.f64[0] = separatorInset.bottom;
  v4.f64[1] = separatorInset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_separatorInset.top), vceqq_f64(v4, *&self->_separatorInset.bottom)))) & 1) == 0)
  {
    self->_separatorInset = separatorInset;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (UIEdgeInsets)separatorInset
{
  [(UITableViewCell *)self _leadingSeparatorInset];
  v4 = v3;
  [(UITableViewCell *)self _trailingSeparatorInset];
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  v9 = v4;
  result.right = v6;
  result.bottom = v8;
  result.left = v9;
  result.top = v7;
  return result;
}

- (UIEdgeInsets)_rawSeparatorInset
{
  top = self->_separatorInset.top;
  left = self->_separatorInset.left;
  bottom = self->_separatorInset.bottom;
  right = self->_separatorInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_setSeparatorDrawsInVibrantLightModeUIAppearance:(id)a3
{
  v4 = [a3 BOOLValue];

  [(UITableViewCell *)self _setSeparatorDrawsInVibrantLightMode:v4];
}

- (void)_setSeparatorDrawsInVibrantLightMode:(BOOL)a3
{
  p_tableCellFlags = &self->_tableCellFlags;
  v5 = 1024;
  if (!a3)
  {
    v5 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFFBFFLL | v5;
  separatorView = self->_separatorView;
  if (a3)
  {
    [(UIView *)separatorView _setDrawsAsBackdropOverlayWithBlendMode:0];
    [(_UITableViewCellSeparatorView *)self->_separatorView setDrawsWithVibrantLightMode:1];
    [(UIView *)self->_separatorView setBackgroundColor:0];
    p_topSeparatorView = &self->_topSeparatorView;
    [(UIView *)self->_topSeparatorView _setDrawsAsBackdropOverlayWithBlendMode:0];
    [(_UITableViewCellSeparatorView *)self->_topSeparatorView setDrawsWithVibrantLightMode:1];
    separatorColor = 0;
  }

  else
  {
    [(_UITableViewCellSeparatorView *)separatorView setDrawsWithVibrantLightMode:?];
    p_topSeparatorView = &self->_topSeparatorView;
    [(_UITableViewCellSeparatorView *)self->_topSeparatorView setDrawsWithVibrantLightMode:0];
    [(UIView *)self->_separatorView _setDrawsAsBackdropOverlayWithBlendMode:(*(p_tableCellFlags + 1) >> 7) & 7];
    [(UIView *)self->_separatorView setBackgroundColor:self->_separatorColor];
    [(UIView *)self->_topSeparatorView _setDrawsAsBackdropOverlayWithBlendMode:(*(p_tableCellFlags + 1) >> 7) & 7];
    separatorColor = self->_separatorColor;
  }

  v9 = *p_topSeparatorView;

  [(UIView *)v9 setBackgroundColor:separatorColor];
}

- (void)_setSeparatorBackdropOverlayBlendMode:(int64_t)a3
{
  v5 = *(&self->_tableCellFlags + 1);
  *(&self->_tableCellFlags + 1) = v5 & 0xFFFFFFFFFFFFFC7FLL | ((a3 & 7) << 7);
  if ((v5 & 0x400) == 0)
  {
    [(_UITableViewCellSeparatorView *)self->_separatorView setDrawsWithVibrantLightMode:0];
    [(_UITableViewCellSeparatorView *)self->_topSeparatorView setDrawsWithVibrantLightMode:0];
    [(UIView *)self->_separatorView _setDrawsAsBackdropOverlayWithBlendMode:a3];
    [(UIView *)self->_separatorView setBackgroundColor:self->_separatorColor];
    [(UIView *)self->_topSeparatorView _setDrawsAsBackdropOverlayWithBlendMode:a3];
    [(UIView *)self->_topSeparatorView setBackgroundColor:self->_separatorColor];
  }

  v7 = [(UIView *)self layer];
  v6 = a3 == 0;
  [v7 setAllowsGroupBlending:v6];
  [v7 setAllowsGroupOpacity:v6];
}

- (void)_setSeparatorEffect:(id)a3
{
  v5 = a3;
  if (self->_separatorEffect != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_separatorEffect, a3);
    [(_UITableViewCellSeparatorView *)self->_separatorView setSeparatorEffect:self->_separatorEffect];
    [(_UITableViewCellSeparatorView *)self->_topSeparatorView setSeparatorEffect:self->_separatorEffect];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self->_separatorView setBackgroundColor:0];
      separatorColor = 0;
    }

    else
    {
      [(UIView *)self->_separatorView setBackgroundColor:self->_separatorColor];
      separatorColor = self->_separatorColor;
    }

    [(UIView *)self->_topSeparatorView setBackgroundColor:separatorColor];
    v5 = v7;
  }
}

- (void)_setIndexBarExtentFromEdge:(double)a3
{
  if (self->_indexBarExtentFromEdge != a3)
  {
    self->_indexBarExtentFromEdge = a3;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];

    [(UITableViewCell *)self _updateAccessoryMetrics];
  }
}

- (void)_setBackgroundInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(UITableViewCell *)self _usesRoundedGroups];
  self->_backgroundInset.top = top;
  self->_backgroundInset.left = left;
  self->_backgroundInset.bottom = bottom;
  self->_backgroundInset.right = right;
  if (v8 != [(UITableViewCell *)self _usesRoundedGroups])
  {
    [(UITableViewCell *)self _setSectionLocation:*(&self->_tableCellFlags + 3) & 7 animated:0 forceBackgroundSetup:1];

    [(UIView *)self _updateInferredLayoutMargins];
  }
}

- (UIEdgeInsets)_backgroundInset
{
  top = self->_backgroundInset.top;
  left = self->_backgroundInset.left;
  bottom = self->_backgroundInset.bottom;
  right = self->_backgroundInset.right;
  v6 = [(UITableViewCell *)self _tableView];
  [v6 _sectionContentInset];
  v8 = v7;
  v10 = v9;

  if (v8 == -1.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8;
  }

  if (left == -1.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = left;
  }

  if (top == -1.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = top;
  }

  if (v10 == -1.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10;
  }

  if (right != -1.0)
  {
    v14 = right;
  }

  if (bottom == -1.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = bottom;
  }

  result.right = v14;
  result.bottom = v15;
  result.left = v12;
  result.top = v13;
  return result;
}

- (void)_setSeparatorHidden:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFF7FFLL | v3;
  [(UITableViewCell *)self _setNeedsSeparatorUpdate];
}

- (void)_setAccessoryViewsHidden:(BOOL)a3
{
  v3 = a3;
  v4 = 0x80000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFF7FFFFLL | v4;
  v6 = [(UITableViewCell *)self editingData:0];
  v5 = [v6 editControl:0];
  [v5 setHidden:v3];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UITableViewCell *)self _performConfigurationStateUpdate];
  if ((*(&self->_tableCellFlags + 12) & 0x40) != 0)
  {
    [self->_layoutManager contentRectForCell:self forState:-[UITableViewCell currentStateMask](self rowWidth:{"currentStateMask"), width}];
    v12 = v11;
    [(UIView *)self->_contentView setFrame:?];
    [(UITableViewCell *)self _updateLeadingLayoutMarginForIndentation];
    v15 = 1.79769313e308;
    if (width == 0.0)
    {
      v16 = 1.79769313e308;
    }

    else
    {
      v16 = v12;
    }

    if (height != 0.0)
    {
      v15 = height;
    }

    LODWORD(v13) = 1112014848;
    LODWORD(v14) = 1112014848;
    [(UIView *)self->_contentView systemLayoutSizeFittingSize:v16 withHorizontalFittingPriority:v15 verticalFittingPriority:v13, v14];
    v7 = v17;
    v19 = v18;
    [(UITableViewCell *)self _verticalPaddingForSeparator];
    v9 = v19 + v20;
  }

  else
  {
    [self->_layoutManager intrinsicContentSizeForCell:self rowWidth:width];
    v7 = v6;
    v9 = v8;
    if (v8 != 0.0 && dyld_program_sdk_at_least())
    {
      [(UITableViewCell *)self _verticalPaddingForSeparator];
      v9 = v9 - v10;
    }
  }

  v21 = v7;
  v22 = v9;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  v6.receiver = self;
  v6.super_class = UITableViewCell;
  v4 = a3;
  [(UIView *)&v6 _intrinsicContentSizeInvalidatedForChildView:v4];
  contentView = self->_contentView;

  if (contentView == v4)
  {
    [(UITableViewCell *)self invalidateIntrinsicContentSize:v6.receiver];
  }
}

- (void)_setAllowsReorderingWhenNotEditing:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (id)_previewingSegueTemplateStorageForLocation:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UITableViewCell *)self _accessoryView:0];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [(UITableViewCell *)self accessoryActionPreviewingSegueTemplateStorage];
  if (!v9 || ([v8 convertPoint:v7 fromView:{x, y}], (objc_msgSend(v8, "pointInside:withEvent:", 0) & 1) == 0))
  {

LABEL_5:
    v9 = [(UIView *)self _previewingSegueTemplateStorage];
  }

  return v9;
}

- (void)setFocusStyle:(UITableViewCellFocusStyle)focusStyle
{
  v3 = *(&self->_tableCellFlags + 1);
  if (((v3 >> 16) & 7) != focusStyle)
  {
    *(&self->_tableCellFlags + 1) = v3 & 0xFFFFFFFFFFF8FFFFLL | ((focusStyle & 7) << 16);
    if (focusStyle)
    {
      if (focusStyle == UITableViewCellFocusStyleCustom)
      {

        [(UITableViewCell *)self _removeFocusedFloatingContentView];
      }
    }

    else if ([(UIView *)self isFocused])
    {
      [(UITableViewCell *)self _ensureFocusedFloatingContentView];

      [(UITableViewCell *)self _updateFloatingContentControlStateAnimated:0];
    }
  }
}

- (id)_subviewsForFloatingContentView
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:7];
  v4 = v3;
  if (self->_systemBackgroundView)
  {
    [v3 addObject:?];
  }

  if (self->_backgroundView)
  {
    [v4 addObject:?];
  }

  if (self->_selectedBackgroundView)
  {
    [v4 addObject:?];
  }

  if (self->_multipleSelectionBackgroundView)
  {
    [v4 addObject:?];
  }

  if (self->_contentView)
  {
    [v4 addObject:?];
  }

  v5 = [(UITableViewCell *)self _existingSystemAccessoryView:0];
  if (v5)
  {
    [v4 addObject:v5];
  }

  if (self->_customAccessoryView)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (void)_configureFloatingContentView:(id)a3
{
  v14 = a3;
  v4 = [(UIView *)self traitCollection];
  v5 = [v4 _hasSplitViewControllerContextSidebarColumn];

  v6 = [(UITableViewCell *)self _constants];
  p_tableCellFlags = &self->_tableCellFlags;
  v8 = *(&self->_tableCellFlags + 1);
  v9 = [(UIView *)self traitCollection];
  [v6 defaultCellCornerRadiusForTableViewStyle:v8 & 0x1F isSidebarStyle:v5 isHeaderFooter:0 traitCollection:v9];
  v11 = v10;

  v12 = [_UIFocusAnimationConfiguration configurationWithStyle:2];
  [v14 setFocusAnimationConfiguration:v12];

  [v14 setBackgroundColor:0 forState:4];
  [v14 setRoundContentWhenDeselected:_UISolariumEnabled()];
  [v14 setShadowExpansion:{45.0, 25.0}];
  [v14 setUnfocusedShadowVerticalOffset:10.0];
  [v14 setContentMotionRotation:0.0 translation:{0.0, 0.0, 4.0}];
  [v14 setCornerRadius:v11];
  [v14 setContinuousCornerEnabled:1];
  v13 = *(p_tableCellFlags + 1) & 0x1F;
  if (v13 <= 0x10 && ((1 << v13) & 0x10006) != 0)
  {
    [v14 setClipsContentToBounds:0];
  }
}

- (void)_willUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UITableViewCell;
  [(UIView *)&v8 _willUpdateFocusInContext:v4];
  v5 = [v4 previouslyFocusedView];
  v6 = v5;
  if (v5 == self)
  {

LABEL_5:
    [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
    goto LABEL_6;
  }

  v7 = [v4 nextFocusedView];

  if (v7 == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_didUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 previouslyFocusedView];

  if (v5 == self)
  {
    v6 = [(UITableViewCell *)self _tableView];
    [v6 _cellDidBecomeUnfocused:self];
  }

  v7 = [v4 nextFocusedView];

  if (v7 == self)
  {
    v8 = [(UITableViewCell *)self _tableView];
    [v8 _cellDidBecomeFocused:self];
  }

  v12.receiver = self;
  v12.super_class = UITableViewCell;
  [(UIView *)&v12 _didUpdateFocusInContext:v4];
  v9 = [v4 previouslyFocusedView];
  v10 = v9;
  if (v9 == self)
  {

LABEL_9:
    [(UITableViewCell *)self setNeedsUpdateConfiguration];
    goto LABEL_10;
  }

  v11 = [v4 nextFocusedView];

  if (v11 == self)
  {
    goto LABEL_9;
  }

LABEL_10:
}

- (int64_t)_systemDefaultFocusGroupPriority
{
  if ([(UITableViewCell *)self isSelected])
  {
    return 2000;
  }

  else
  {
    return 0;
  }
}

- (void)_updateDefaultLabelsForFocus:(BOOL)a3
{
  v3 = a3;
  v39 = [(UITableViewCell *)self _constants];
  v5 = [(UITableViewCell *)self _tableView];
  if ([v39 supportsUserInterfaceStyles])
  {
    textLabel = self->_textLabel;
    if (v3)
    {
      v7 = [v39 defaultFocusedTextColorForCell:self inTableView:v5];
      [(UILabel *)textLabel _setFallbackTextColor:v7 forUserInterfaceStyle:1];

      v8 = self->_textLabel;
      v9 = [v39 defaultFocusedTextColorForCell:self inTableView:v5];
      [(UILabel *)v8 _setFallbackTextColor:v9 forUserInterfaceStyle:2];

      v10 = self->_textLabel;
      v11 = [v39 defaultFocusedTextColorForCell:self inTableView:v5];
      [(UILabel *)v10 _setFallbackTextColor:v11 forUserInterfaceStyle:1000];

      detailTextLabel = self->_detailTextLabel;
      v13 = [v39 defaultFocusedDetailTextColorForCell:self inTableView:v5];
      [(UILabel *)detailTextLabel _setFallbackTextColor:v13 forUserInterfaceStyle:1];

      v14 = self->_detailTextLabel;
      v15 = [v39 defaultFocusedDetailTextColorForCell:self inTableView:v5];
      [(UILabel *)v14 _setFallbackTextColor:v15 forUserInterfaceStyle:2];

      v16 = self->_detailTextLabel;
      v17 = [v39 defaultFocusedDetailTextColorForCell:self inTableView:v5];
      v18 = v16;
    }

    else
    {
      v22 = [v39 defaultTextColorForUserInterfaceStyle:1];
      [(UILabel *)textLabel _setFallbackTextColor:v22 forUserInterfaceStyle:1];

      v23 = self->_textLabel;
      v24 = [v39 defaultTextColorForUserInterfaceStyle:2];
      [(UILabel *)v23 _setFallbackTextColor:v24 forUserInterfaceStyle:2];

      v25 = self->_textLabel;
      v26 = [v39 defaultTextColorForUserInterfaceStyle:1000];
      [(UILabel *)v25 _setFallbackTextColor:v26 forUserInterfaceStyle:1000];

      v27 = self->_detailTextLabel;
      v28 = [v39 defaultDetailTextColorForUserInterfaceStyle:1];
      [(UILabel *)v27 _setFallbackTextColor:v28 forUserInterfaceStyle:1];

      v29 = self->_detailTextLabel;
      v30 = [v39 defaultDetailTextColorForUserInterfaceStyle:2];
      [(UILabel *)v29 _setFallbackTextColor:v30 forUserInterfaceStyle:2];

      v31 = self->_detailTextLabel;
      v17 = [v39 defaultDetailTextColorForUserInterfaceStyle:1000];
      v18 = v31;
    }

    [(UILabel *)v18 _setFallbackTextColor:v17 forUserInterfaceStyle:1000];
  }

  else
  {
    v19 = [(UIView *)self traitCollection];
    v20 = [v19 userInterfaceIdiom];

    if (v20 != 3)
    {
      goto LABEL_10;
    }

    if (v3)
    {
      v21 = [v39 defaultFocusedTextColorForCell:self inTableView:v5];
      [(UILabel *)self->_textLabel setTextColor:v21];

      v17 = [v39 defaultFocusedDetailTextColorForCell:self inTableView:v5];
      [(UILabel *)self->_detailTextLabel setTextColor:v17];
    }

    else
    {
      v17 = [UICellConfigurationState _readonlyCellState:?];
      v32 = [(UITableViewCell *)self _cellStyle];
      v33 = [(UIView *)self traitCollection];
      v34 = [(UIView *)self _inheritedInteractionTintColor];
      v35 = [v39 defaultTextColorForCellStyle:v32 traitCollection:v33 tintColor:v34 state:v17];
      [(UILabel *)self->_textLabel setTextColor:v35];

      v36 = [(UITableViewCell *)self _cellStyle];
      v37 = [(UIView *)self traitCollection];
      v38 = [v39 defaultDetailTextColorForCellStyle:v36 traitCollection:v37 state:v17];
      [(UILabel *)self->_detailTextLabel setTextColor:v38];
    }
  }

LABEL_10:
}

- (void)_updateDefaultAccessoryViewForFocus:(BOOL)a3
{
  [(UITableViewCell *)self _updateAccessoriesIfNeeded];
  v5 = [(UITableViewCell *)self isEditing];
  if (v5)
  {
    v6 = [(UITableViewCell *)self editingAccessoryType];
    v7 = &OBJC_IVAR___UITableViewCell__customEditingAccessoryView;
  }

  else
  {
    v6 = [(UITableViewCell *)self accessoryType];
    v7 = &OBJC_IVAR___UITableViewCell__customAccessoryView;
  }

  v8 = *(&self->super.super.super.isa + *v7);
  v9 = v8;
  v10 = v6 == UITableViewCellAccessoryCheckmark || v6 == UITableViewCellAccessoryDisclosureIndicator;
  if (v10 && !v8)
  {
    v11 = [(UITableViewCell *)self _existingSystemAccessoryView:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [(UITableViewCell *)self _constants];
    v15 = [(UITableViewCell *)self _tableView];
    if (os_variant_has_internal_diagnostics())
    {
      if (!v13)
      {
        v24 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "expected standard checkmark/chevron accessory view to be a button", buf, 2u);
        }
      }
    }

    else if (!v13)
    {
      v25 = *(__UILogGetCategoryCachedImpl("Assert", &_updateDefaultAccessoryViewForFocus____s_category) + 8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v26 = 0;
        _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "expected standard checkmark/chevron accessory view to be a button", v26, 2u);
      }
    }

    if (v6 == UITableViewCellAccessoryDisclosureIndicator)
    {
      if (!a3)
      {
        v17 = [v15 _accessoryBaseColor];
        v18 = [v14 defaultDisclosureImageForCell:self withAccessoryBaseColor:v17];

LABEL_25:
        [v13 setBackgroundImage:v18 forStates:0];

LABEL_26:
        if (a3)
        {
          if (objc_opt_respondsToSelector())
          {
            constants = self->_constants;
            v20 = [(UITableViewCell *)self _tableView];
            v21 = [(UITableConstants *)constants defaultFocusedAccessoryColorForCell:self inTableView:v20];
LABEL_31:
            v23 = v21;
            [v13 setTintColor:v21];
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          v22 = self->_constants;
          v20 = [(UITableViewCell *)self _tableView];
          v21 = [(UITableConstants *)v22 defaultAccessoryColorForCell:self inTableView:v20];
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      v16 = [v14 defaultFocusedDisclosureImageForCell:self inTableView:v15];
    }

    else
    {
      if (v6 != UITableViewCellAccessoryCheckmark)
      {
        goto LABEL_26;
      }

      if (a3)
      {
        [v14 defaultFocusedCheckmarkImageForCell:self inTableView:v15];
      }

      else
      {
        [v14 defaultCheckmarkImageForCell:self];
      }
      v16 = ;
    }

    v18 = v16;
    goto LABEL_25;
  }

LABEL_33:
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = UITableViewCell;
  [(UIView *)&v12 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [(UIView *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 3)
  {
    v9 = [v6 nextFocusedView];
    v10 = v9 == self;

    v11 = [(UITableViewCell *)self _tableView];
    [v11 _highlightCell:self animated:0 scrollPosition:0 highlight:v10];
  }
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4
{
  if (self->_floatingContentView)
  {
    v4 = [(_UIFloatingContentView *)self->_floatingContentView _preferredConfigurationForFocusAnimation:a3 inContext:a4];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UITableViewCell;
    v4 = [(UIView *)&v6 _preferredConfigurationForFocusAnimation:a3 inContext:a4];
  }

  return v4;
}

- (void)_setConstants:(id)a3
{
  v5 = a3;
  if (self->_constants != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_constants, a3);
    [(UITableViewCell *)self _updateContentClip];
    [(UITableViewCell *)self _updateAccessoryMetrics];
    [(UITableViewCell *)self _updateDefaultBackgroundAppearance];
    [(UITableViewCell *)self _updateDefaultIndentationWidth];
    v5 = v6;
  }
}

- (void)_setMetricsAdapter:(id)a3
{
  v5 = a3;
  if (self->_metricsAdapter != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_metricsAdapter, a3);
    [(UITableViewCell *)self _updateContentClip];
    [(UITableViewCell *)self _updateAccessoryMetrics];
    [(UITableViewCell *)self _updateDefaultBackgroundAppearance];
    [(UITableViewCell *)self _updateDefaultIndentationWidth];
    v5 = v6;
  }
}

- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)a3
{
  if (a3 == 1)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = UITableViewCell;
  return [(UIResponder *)&v6 _shouldForwardMovementToFocusEngine:?];
}

- (id)_defaultFocusOutline
{
  systemBackgroundView = self->_systemBackgroundView;
  if (systemBackgroundView)
  {
    v4 = [(_UISystemBackgroundView *)systemBackgroundView outlinePathInContainerView:self];
  }

  else
  {
    v5 = [(UIView *)self layer];
    [v5 cornerRadius];
    v6 = [v5 maskedCorners];
    [(UIView *)self bounds];
    v4 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:" byRoundingCorners:v6 & 0xF cornerRadii:?];
  }

  return v4;
}

- (id)_defaultFocusEffect
{
  if (self->_systemBackgroundView)
  {
    [(UITableViewCell *)self _performConfigurationStateUpdate];
    v3 = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
    if (([v3 isTintBackgroundColor] & 1) != 0 || (-[UIView traitCollection](self, "traitCollection"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "userInterfaceIdiom"), v4, v5 <= 5) && ((1 << v5) & 0x23) != 0 && -[UITableViewCell _backgroundFillIsCustomized](self, "_backgroundFillIsCustomized"))
    {
      v6 = 0;
      goto LABEL_11;
    }
  }

  v7 = [(UITableViewCell *)self _tableView];
  v8 = [v7 _effectiveDefaultAllowsFocus];

  v9 = off_1E70E9948;
  if (!v8)
  {
    v9 = off_1E70EB810;
  }

  v10 = *v9;
  v3 = [(UITableViewCell *)self _defaultFocusOutline];
  v6 = [(__objc2_class *)v10 effectWithPath:v3];
LABEL_11:

  return v6;
}

- (int64_t)focusItemDeferralMode
{
  v3 = [(UITableViewCell *)self _tableView];
  v4 = [v3 _cellFocusItemDeferral:self];

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UITableViewCell;
  [(UIView *)&v10 traitCollectionDidChange:v4];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UITableViewCell *)self setNeedsUpdateConfiguration];
  }

  v5 = [(UIView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);
  v8 = [v4 preferredContentSizeCategory];
  v9 = UIContentSizeCategoryIsAccessibilityCategory(v8);

  if (IsAccessibilityCategory != v9)
  {
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
    [(UITableViewCell *)self _updateAccessoryMetrics];
    [(UITableViewCell *)self _setNeedsAccessoriesUpdateForced:1];
  }

  [(UIView *)self traitCollection];
}

- (void)_prepareHighlightForInteraction:(id)a3
{
  p_tableCellFlags = &self->_tableCellFlags;
  if ((*(&self->_tableCellFlags + 10) & 0x40) == 0)
  {
    v5 = a3;
    v6 = [(UITableViewCell *)self _tableView];
    [v6 _prepareHighlightForCell:self withInteraction:v5];

    *(p_tableCellFlags + 1) |= 0x400000uLL;
  }
}

- (void)_highlightForInteraction:(id)a3 fractionComplete:(double)a4 ended:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v5)
  {
    v9 = *(MEMORY[0x1E695EFD0] + 16);
    *&v20.a = *MEMORY[0x1E695EFD0];
    *&v20.c = v9;
    *&v20.tx = *(MEMORY[0x1E695EFD0] + 32);
    v10 = 0.0;
  }

  else
  {
    if (![(UITableViewCell *)self isHighlighted])
    {
      goto LABEL_10;
    }

    v11 = *(MEMORY[0x1E695EFD0] + 16);
    *&v20.a = *MEMORY[0x1E695EFD0];
    *&v20.c = v11;
    *&v20.tx = *(MEMORY[0x1E695EFD0] + 32);
    if ((*(&self->_tableCellFlags + 4) & 0x1F) == 0)
    {
      CGAffineTransformMakeScale(&v20, a4 * 0.945 + (1.0 - a4) * 0.99, a4 * 0.945 + (1.0 - a4) * 0.99);
    }

    v12 = a4;
    v13 = powf(v12, 3.0);
    v10 = 1.0 - v13 + v13 * 0.0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__UITableViewCell__highlightForInteraction_fractionComplete_ended___block_invoke;
  v19[3] = &unk_1E70F3590;
  v19[4] = self;
  [UIView performWithoutAnimation:v19];
  v18 = v20;
  v14 = [(UITableViewCell *)self contentView];
  v17 = v18;
  [v14 setTransform:&v17];

  v15 = [(UITableViewCell *)self selectedBackgroundView];
  [v15 setAlpha:v10];

  v16 = [(UITableViewCell *)self backgroundView];
  [v16 setAlpha:1.0 - v10];

  if (v5 && ![(UITableViewCell *)self _hidesBottomSeparatorWhenUnselected])
  {
    [(UIView *)self->_separatorView setAlpha:1.0];
    [(UIView *)self->_topSeparatorView setAlpha:1.0];
  }

LABEL_10:
}

void __67__UITableViewCell__highlightForInteraction_fractionComplete_ended___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) selectedBackgroundView];
  [v1 layoutIfNeeded];
}

- (void)_highlightDidEndForInteraction:(id)a3
{
  v4 = *(&self->_tableCellFlags + 1);
  if ((v4 & 0x400000) != 0)
  {
    *(&self->_tableCellFlags + 1) = v4 & 0xFFFFFFFFFFBFFFFFLL;
    v6 = a3;
    if (![(UITableViewCell *)self isHighlighted])
    {
      v7 = [(UITableViewCell *)self selectedBackgroundView];
      v8 = [v7 superview];

      if (v8)
      {
        [(UITableViewCell *)self showSelectedBackgroundView:0 animated:0];
      }
    }

    v9 = [(UITableViewCell *)self _tableView];
    [v9 _highlightDidEndForCell:self withInteraction:v6];
  }
}

- (void)_setUsesModernAccessoriesLayout:(BOOL)a3
{
  v3 = a3;
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout]!= a3)
  {
    if (v3)
    {
      v7 = [[UICellAccessoryManager alloc] initWithContainerView:self];
      [(UICellAccessoryManager *)v7 setCurrentConfigurationIdentifier:0x1EFB35F50];
      v5 = objc_alloc_init(UITableCellAccessoryLayout);
      [(UICellAccessoryManager *)v7 setLeadingLayout:v5];

      v6 = objc_alloc_init(UITableCellAccessoryLayout);
      [(UICellAccessoryManager *)v7 setTrailingLayout:v6];

      [(UITableViewCell *)self _setAccessoryManager:v7];
    }

    else
    {

      [(UITableViewCell *)self _setAccessoryManager:0];
    }
  }
}

- (void)_setAccessoryManager:(id)a3
{
  v5 = a3;
  if (self->_accessoryManager != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_accessoryManager, a3);
    v5 = v6;
    if (v6)
    {
      [(UITableViewCell *)self _updateAccessoryMetrics];
      [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
      v5 = v6;
    }

    else
    {
      *(&self->_tableCellFlags + 1) &= ~0x8000000uLL;
    }
  }
}

- (int64_t)_sanitizedEditingStyleForEditing:(BOOL)a3 style:(int64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  p_tableCellFlags = &self->_tableCellFlags;
  if ((*&self->_tableCellFlags & 0x7000) != 0x3000)
  {
    v5 = a4;
    v7 = [(UITableViewCell *)self _tableView];
    if (([v7 allowsMultipleSelectionDuringEditing] & 1) == 0)
    {

      return v5;
    }

    v8 = *(p_tableCellFlags + 1);

    if ((v8 & 0x400000000) != 0)
    {
      return v5;
    }
  }

  return 3;
}

- (id)_editControlAccessoryForStyle:(int64_t)a3
{
  if (a3 > 1)
  {
    v7 = @"multiselect";
    if (a3 != 3)
    {
      v7 = 0;
    }

    if (a3 == 2)
    {
      v6 = @"insert";
    }

    else
    {
      v6 = v7;
    }
  }

  else
  {
    if (!a3)
    {
      goto LABEL_14;
    }

    if (a3 == 1)
    {
      v6 = @"delete";
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = [(UITableViewCell *)self editingData:1];
  v9 = [v8 editControl:1];
  v10 = [_UICellViewAccessory accessoryWithIdentifier:v6 view:v9 options:5 reservedLayoutWidth:0.0];

  if (v10)
  {
    goto LABEL_15;
  }

  if (dyld_program_sdk_at_least())
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    WeakRetained = objc_loadWeakRetained(&self->_tableView);
    v14 = [WeakRetained description];
    [v12 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:8195 description:{@"Invalid editing style detected (%tu). This is likely due to an invalid value being returned from the implementation of -tableView:editingStyleForRowAtIndexPath: of this table view's delegate: %@", a3, v14}];
  }

LABEL_14:
  v10 = 0;
LABEL_15:

  return v10;
}

- (id)_leadingAccessoriesForEditing:(BOOL)a3 style:(int64_t)a4
{
  v5 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(UITableViewCell *)self _sanitizedEditingStyleForEditing:v5 style:a4];
  if ([(UITableViewCell *)self _editControlShouldBeOnLeadingSideForStyle:v8])
  {
    v9 = [(UITableViewCell *)self _editControlAccessoryForStyle:v8];
    if (v9)
    {
      [v7 addObject:v9];
    }
  }

  if (v5 && ![v7 count] && (*(&self->_tableCellFlags + 4) & 0x20) != 0)
  {
    v10 = [(UITableViewCell *)self _constants];
    v11 = [(UIView *)self traitCollection];
    [v10 defaultImageViewSymbolImageAndAccessoryLayoutWidthForSidebar:0 traitCollection:v11];
    v13 = v12;

    if (v13 > 0.0)
    {
      v14 = [_UICellSpacingAccessory accessoryWithIdentifier:@"spacing" size:v13, 1.0];
      [v7 addObject:v14];
    }
  }

  return v7;
}

- (id)_trailingAccessoriesForType:(int64_t)a3 view:(id)a4 editing:(BOOL)a5 style:(int64_t)a6
{
  v7 = a5;
  v10 = a4;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [(UITableViewCell *)self _badgeText];
  if ([v12 length])
  {
    v13 = *(&self->_tableCellFlags + 1);

    if ((v13 & 0x20000000) != 0)
    {
      v14 = [(UITableViewCell *)self _badge];
      v15 = [_UICellViewAccessory accessoryWithIdentifier:@"badge" view:v14 options:1];

      v16 = v15 != 0;
      if (a3 != 2 && v15)
      {
        [v11 addObject:v15];
        v16 = 1;
      }

      if (v10)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  v16 = 0;
  v15 = 0;
  if (v10)
  {
LABEL_7:
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v18 = 1.79769313e308;
    if ((isKindOfClass & 1) == 0)
    {
      v18 = 0.0;
    }

    if (v7)
    {
      v19 = @"customEditing";
    }

    else
    {
      v19 = @"custom";
    }

    v20 = [_UICellViewAccessory accessoryWithIdentifier:v19 view:v10 options:12 reservedLayoutWidth:v18];
    [v11 addObject:v20];
    goto LABEL_34;
  }

LABEL_15:
  if (a3 > 3)
  {
    if ((a3 - 5) < 2)
    {
      v20 = [(UITableViewCell *)self _accessoryViewForType:5];
      v24 = @"expand";
    }

    else if ((a3 - 7) >= 2)
    {
      if (a3 != 4)
      {
        goto LABEL_35;
      }

      v20 = [(UITableViewCell *)self _accessoryViewForType:4];
      v24 = @"info";
    }

    else
    {
      v22 = [(UITableViewCell *)self _accessoryViewForType:5];
      v23 = [_UICellViewAccessory accessoryWithIdentifier:@"expand" view:v22 options:1];
      [v11 addObject:v23];

      if (v16)
      {
        [v11 addObject:v15];
      }

      v20 = [(UITableViewCell *)self _accessoryViewForType:1];
      v24 = @"chevron";
    }

    v21 = [_UICellViewAccessory accessoryWithIdentifier:v24 view:v20 options:1];
    goto LABEL_33;
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_35;
      }

      v20 = [(UITableViewCell *)self _accessoryViewForType:3];
      v21 = [_UICellViewAccessory accessoryWithIdentifier:@"checkmark" view:v20 options:1];
      goto LABEL_33;
    }

    v25 = [(UITableViewCell *)self _accessoryViewForType:4];
    v26 = [_UICellViewAccessory accessoryWithIdentifier:@"info" view:v25 options:1];
    [v11 addObject:v26];

    if (v16)
    {
      [v11 addObject:v15];
    }
  }

  v20 = [(UITableViewCell *)self _accessoryViewForType:1];
  v21 = [_UICellViewAccessory accessoryWithIdentifier:@"chevron" view:v20 options:1 reservedLayoutWidth:1.79769313e308];
LABEL_33:
  v27 = v21;
  [v11 addObject:v21];

LABEL_34:
LABEL_35:
  v28 = [(UITableViewCell *)self _sanitizedEditingStyleForEditing:v7 style:a6];
  if (![(UITableViewCell *)self _editControlShouldBeOnLeadingSideForStyle:v28])
  {
    v29 = [(UITableViewCell *)self _editControlAccessoryForStyle:v28];
    if (v29)
    {
      [v11 addObject:v29];
    }
  }

  tableCellFlags = self->_tableCellFlags;
  if ((tableCellFlags & 0x200000) != 0 && ((tableCellFlags & 0x20000000000) == 0 || (*(&self->_tableCellFlags + 9) & 0x40) != 0))
  {
    if (a3 || v10)
    {
      v31 = [(UITableViewCell *)self editingData:1];
      v32 = [v31 reorderSeparatorView:1];
      v33 = [_UICellViewAccessory accessoryWithIdentifier:@"reorderSeparator" view:v32 options:1];
      [v11 addObject:v33];
    }

    v34 = [(UITableViewCell *)self editingData:1];
    v35 = [v34 reorderControl:1];
    v36 = [_UICellViewAccessory accessoryWithIdentifier:@"reorder" view:v35 options:1];
    [v11 addObject:v36];
  }

  return v11;
}

double __42__UITableViewCell__updateAccessoryMetrics__block_invoke_2(uint64_t a1)
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

double __42__UITableViewCell__updateAccessoryMetrics__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _constants];
  [v8 interspaceBetweenInnerAccessoryIdentifier:v6 outerAccessoryIdentifier:v5 forCell:WeakRetained trailingAccessoryGroup:0];
  v10 = v9;

  return v10;
}

- (void)_setNeedsAccessoriesUpdateForced:(BOOL)a3
{
  v3 = *(&self->_tableCellFlags + 1);
  if (a3)
  {
    v3 |= 0x10000000uLL;
  }

  *(&self->_tableCellFlags + 1) = v3 | 0x8000000;
  [(UIView *)self setNeedsLayout];
}

- (int64_t)_listStyle
{
  v2 = *(&self->_tableCellFlags + 1) & 0x1FLL;
  if (v2 >= 3)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIListStyle _UIListStyleForTableViewStyle(UITableViewStyle)"];
    [v3 handleFailureInFunction:v4 file:@"UITableView_Internal.h" lineNumber:101 description:{@"UIKit internal inconsistency: unknown table view style (%ld)", v2}];

    return 0;
  }

  return v2;
}

- (int64_t)_listCellStyle
{
  v4 = [(UITableViewCell *)self _existingContentView];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = [v4 _listCellStyle];
  v6 = v5;
  if (v5 > 2)
  {
    if (v5 == 4)
    {
      v6 = 5;
      goto LABEL_14;
    }

    if (v5 == 3)
    {
      v6 = 4;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v5 >= 3)
  {
    if (v5 == -1)
    {
LABEL_5:
      tableCellFlags = self->_tableCellFlags;
      if ((tableCellFlags & 0x3FF000000000000) == 0)
      {
        v6 = qword_18A682840[(tableCellFlags >> 46) & 3];
        goto LABEL_14;
      }

      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:8438 description:{@"UIKit internal inconsistency: unknown table view cell style (%ld)", (*&self->_tableCellFlags >> 46) & 0xFFFLL}];

      goto LABEL_7;
    }

LABEL_12:
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIListCellStyle _UIListCellStyleForContentViewCellStyle(_UIContentViewCellStyle)"];
    [v9 handleFailureInFunction:v10 file:@"_UIContentViewDefaultStylingObtaining_Internal.h" lineNumber:27 description:{@"UIKit internal inconsistency: unknown content view cell style (%ld)", v6}];

LABEL_7:
    v6 = 0;
  }

LABEL_14:

  return v6;
}

- (int64_t)_listCellProminence
{
  v2 = [(UITableViewCell *)self _existingContentView];
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

@end