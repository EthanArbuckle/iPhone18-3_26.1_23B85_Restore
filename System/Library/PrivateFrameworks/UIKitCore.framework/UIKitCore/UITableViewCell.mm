@interface UITableViewCell
+ (void)_ensureInitializeSystemAppearanceModifications;
+ (void)_initializeForIdiom:(int64_t)idiom;
- (BOOL)_appliesMaskingToBackgroundConfiguration;
- (BOOL)_backgroundFillIsCustomized;
- (BOOL)_backgroundIsVerticallyInset;
- (BOOL)_canDrawContent;
- (BOOL)_forwardsSystemLayoutFittingSizeToContentView:(id)view;
- (BOOL)_gestureRecognizerShouldBegin:(id)begin;
- (BOOL)_grabberBeganReorder:(id)reorder touch:(id)touch;
- (BOOL)_hasCustomSelectionAction;
- (BOOL)_hidesBottomSeparatorWhenUnselected;
- (BOOL)_isInModalViewController;
- (BOOL)_isMultiselecting;
- (BOOL)_isReorderControlActive;
- (BOOL)_isReorderable;
- (BOOL)_shouldApplyReadableWidthInsets;
- (BOOL)_shouldChangeOpaqueStateOfView:(id)view;
- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)engine;
- (BOOL)_shouldMaskToBoundsWhileAnimating;
- (BOOL)_shouldSaveOpaqueStateForView:(id)view;
- (BOOL)_shouldUseHighlightedOrSelectedAppearance;
- (BOOL)_showSeparatorAtTopOfSection;
- (BOOL)_updateExpansionButtonFromType:(int64_t)type toType:(int64_t)toType;
- (BOOL)_usesRoundedGroups;
- (BOOL)_usingBackgroundConfigurationOrDefaultBackgroundConfiguration;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canBecomeFocused;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (CGPoint)center;
- (CGRect)_separatorFrame;
- (CGRect)_topSeparatorFrame;
- (CGRect)_updatedContentViewFrameForTargetWidth:(double)width;
- (CGRect)accessoryRectForBounds:(CGRect)bounds;
- (CGRect)backgroundRectForBounds:(CGRect)bounds;
- (CGRect)contentRectForBounds:(CGRect)bounds;
- (CGRect)contentRectForState:(unint64_t)state;
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (CGRect)frame;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)reorderRectForBounds:(CGRect)bounds;
- (CGRect)textRectForContentRect:(CGRect)rect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
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
- (UIEdgeInsets)_adjustedRawLayoutMargins:(UIEdgeInsets)margins withLeadingLayoutMarginAdjustment:(double)adjustment;
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
- (double)_contentViewInset:(double)inset convertedToCellInsetOnEdge:(unint64_t)edge;
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
- (id)_accessoryView:(BOOL)view;
- (id)_accessoryViewForType:(int64_t)type;
- (id)_addSeparatorWithFrame:(CGRect)frame;
- (id)_backgroundView:(BOOL)view;
- (id)_backgroundViewConfiguration;
- (id)_backgroundViewConfigurationProvider;
- (id)_badge;
- (id)_badge:(BOOL)_badge;
- (id)_badgeBackgroundColor;
- (id)_badgeColor;
- (id)_badgeFont;
- (id)_badgeText;
- (id)_checkmarkImageWithTintColor:(id)color;
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
- (id)_detailTextLabel:(BOOL)label;
- (id)_disclosureChevronImage;
- (id)_disclosureChevronImageWithBaseColor:(id)color;
- (id)_dropAnimationContainerView;
- (id)_editControlAccessoryForStyle:(int64_t)style;
- (id)_editableTextField;
- (id)_editableTextField:(BOOL)field;
- (id)_editingAccessoryView:(BOOL)view;
- (id)_editingControlTintColorForStyle:(int64_t)style;
- (id)_effectivePopupMenuButton;
- (id)_encodableSubviews;
- (id)_existingSystemAccessoryView:(BOOL)view;
- (id)_existingSystemAccessoryViews;
- (id)_imageView;
- (id)_imageView:(BOOL)view;
- (id)_leadingAccessoriesForEditing:(BOOL)editing style:(int64_t)style;
- (id)_multiselectBackgroundColor;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context;
- (id)_previewingSegueTemplateStorageForLocation:(CGPoint)location inView:(id)view;
- (id)_selectedBackgroundView:(BOOL)view;
- (id)_separatorView:(BOOL)view;
- (id)_stateForUpdatingBackgroundConfigurationWithState:(id)state;
- (id)_subviewsForFloatingContentView;
- (id)_swipeContainerView;
- (id)_tableView;
- (id)_textLabel;
- (id)_textLabel:(BOOL)label;
- (id)_trailingAccessoriesForType:(int64_t)type view:(id)view editing:(BOOL)editing style:(int64_t)style;
- (id)backgroundColor;
- (id)contentConfiguration;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)editingData:(BOOL)data;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)preferredFocusedView;
- (int64_t)_currentAccessoryTypeForEditing:(BOOL)editing;
- (int64_t)_listCellProminence;
- (int64_t)_listCellStyle;
- (int64_t)_listStyle;
- (int64_t)_popoverControllerStyle;
- (int64_t)_sanitizedEditingStyleForEditing:(BOOL)editing style:(int64_t)style;
- (int64_t)_systemDefaultFocusGroupPriority;
- (int64_t)focusItemDeferralMode;
- (unint64_t)_maskedCornersForSystemBackgroundView;
- (unint64_t)_viewConfigurationState;
- (unint64_t)currentStateMask;
- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to;
- (void)_animateFloatingSeparatorForInsertion:(BOOL)insertion withRowAnimation:(int64_t)animation;
- (void)_animateInnerShadowForInsertion:(BOOL)insertion withRowAnimation:(int64_t)animation;
- (void)_applyBackgroundViewConfiguration:(id)configuration withState:(id)state;
- (void)_applyContentViewConfiguration:(id)configuration withState:(id)state usingSPI:(BOOL)i;
- (void)_applyLeadingLayoutMarginAdjustment:(double)adjustment;
- (void)_applySelectedStateToSeparators:(BOOL)separators;
- (void)_cancelInternalPerformRequests;
- (void)_clearChangeHandlersForOldContentView:(id)view;
- (void)_clearOpaqueViewState:(id)state;
- (void)_configureFloatingContentView:(id)view;
- (void)_contentViewLabelTextDidChange:(id)change;
- (void)_delayedDeselect;
- (void)_deselectAnimationFinished;
- (void)_didTransitionToState:(unint64_t)state;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_drawSeparatorInRect:(CGRect)rect;
- (void)_encodeBackgroundColorWithCoder:(id)coder;
- (void)_executeConfigurationUpdate;
- (void)_forSpringBoardSetDefaultSelectedBackgroundView:(id)view;
- (void)_grabberDragged:(id)dragged yDelta:(float)delta touch:(id)touch;
- (void)_grabberReleased:(id)released;
- (void)_highlightDidEndForInteraction:(id)interaction;
- (void)_highlightForInteraction:(id)interaction fractionComplete:(double)complete ended:(BOOL)ended;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)_layoutFloatingContentView:(id)view;
- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)margins;
- (void)_layoutSystemBackgroundView:(BOOL)view;
- (void)_longPressGestureRecognized:(id)recognized;
- (void)_macSidebarDefaultIconSizeChanged;
- (void)_monitoredView:(id)view didMoveFromSuperview:(id)superview toSuperview:(id)toSuperview;
- (void)_monitoredView:(id)view willMoveFromSuperview:(id)superview toSuperview:(id)toSuperview;
- (void)_multiselectColorChanged;
- (void)_notifyIsDisplaying:(BOOL)displaying;
- (void)_performAction:(SEL)action sender:(id)sender;
- (void)_performConfigurationStateModifications:(id)modifications;
- (void)_performConfigurationStateUpdate;
- (void)_performCustomSelectionAction;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_prepareForConfigurationStateUpdate;
- (void)_prepareHighlightForInteraction:(id)interaction;
- (void)_prepareToSetDefaultLayoutMargins;
- (void)_releaseDetailTextLabel;
- (void)_releaseTextLabel;
- (void)_removeFloatingSeparator;
- (void)_removeFocusedFloatingContentView;
- (void)_removeFromSuperviewIgnoringFirstResponder:(BOOL)responder;
- (void)_removeInnerShadow;
- (void)_resetBackgroundViewConfiguration;
- (void)_resetBackgroundViewsAndColor;
- (void)_resetContentViews;
- (void)_resetEditControlRotation;
- (void)_resetRawLayoutMargins;
- (void)_resetSelectionTimer;
- (void)_restoreLabelTextAfterSystemTextSizeChangeIfNeeded;
- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets;
- (void)_saveOpaqueViewState:(id)state;
- (void)_setAccessoryAction:(SEL)action;
- (void)_setAccessoryManager:(id)manager;
- (void)_setAccessoryTintColor:(id)color;
- (void)_setAccessoryViewsHidden:(BOOL)hidden;
- (void)_setAllowsReorderingWhenNotEditing:(BOOL)editing;
- (void)_setAnimating:(BOOL)animating clippingAdjacentCells:(BOOL)cells;
- (void)_setAutomaticIntrinsicContentSizeInvalidationEnabled:(BOOL)enabled;
- (void)_setBackgroundInset:(UIEdgeInsets)inset;
- (void)_setBackgroundViewConfigurationProvider:(id)provider;
- (void)_setBadgeBackgroundColor:(id)color;
- (void)_setBadgeColor:(id)color;
- (void)_setBadgeFont:(id)font;
- (void)_setBadgeText:(id)text;
- (void)_setConstants:(id)constants;
- (void)_setContainerView:(id)view;
- (void)_setContentClipCorners:(unint64_t)corners updateCorners:(BOOL)updateCorners;
- (void)_setContentView:(id)view;
- (void)_setContentViewConfigurationProvider:(id)provider;
- (void)_setDefaultBackgroundColor:(id)color;
- (void)_setDefaultLeadingMarginWidth:(double)width;
- (void)_setDefaultTrailingCellMarginWidth:(double)width;
- (void)_setDeleteAnimationInProgress:(BOOL)progress;
- (void)_setDragState:(int64_t)state;
- (void)_setDrawsSeparatorAtBottomOfSection:(BOOL)section;
- (void)_setDrawsSeparatorAtTopOfSection:(BOOL)section;
- (void)_setDrawsTopSeparator:(BOOL)separator;
- (void)_setDrawsTopSeparatorDuringReordering:(BOOL)reordering;
- (void)_setDropAnimationContainerView:(id)view;
- (void)_setDropState:(int64_t)state;
- (void)_setEditing:(BOOL)editing animated:(BOOL)animated cellOrAncestorViewForAnimatedLayout:(id)layout;
- (void)_setEditingControlTintColor:(id)color forStyle:(int64_t)style;
- (void)_setFont:(id)font layout:(BOOL)layout;
- (void)_setFrame:(CGRect)frame skipLayout:(BOOL)layout;
- (void)_setHiddenForReuse:(BOOL)reuse;
- (void)_setIgnoresMultipleSelectionDuringEditing:(BOOL)editing;
- (void)_setIndentationWidth:(double)width;
- (void)_setIndexBarExtentFromEdge:(double)edge;
- (void)_setIndexPath:(id)path;
- (void)_setInsetsContentViewsToSafeArea:(BOOL)area;
- (void)_setMetricsAdapter:(id)adapter;
- (void)_setMultiselecting:(BOOL)multiselecting;
- (void)_setNeedsAccessoriesUpdateForced:(BOOL)forced;
- (void)_setNeedsHeightCalculation:(BOOL)calculation;
- (void)_setNeedsSetup:(BOOL)setup;
- (void)_setOpaque:(BOOL)opaque forSubview:(id)subview;
- (void)_setOverriddenDefaultContentViewLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)_setPopupMenuButton:(id)button;
- (void)_setRawLayoutMargins:(UIEdgeInsets)margins;
- (void)_setReordering:(BOOL)reordering;
- (void)_setSectionLocation:(int)location animated:(BOOL)animated forceBackgroundSetup:(BOOL)setup;
- (void)_setSelectionGrouping:(int)grouping;
- (void)_setSelectionStyle:(int64_t)style selectionTintColor:(id)color;
- (void)_setSeparatorBackdropOverlayBlendMode:(int64_t)mode;
- (void)_setSeparatorDrawsInVibrantLightMode:(BOOL)mode;
- (void)_setSeparatorDrawsInVibrantLightModeUIAppearance:(id)appearance;
- (void)_setSeparatorEffect:(id)effect;
- (void)_setSeparatorHidden:(BOOL)hidden;
- (void)_setSeparatorInsetIsRelativeToCellEdges:(BOOL)edges;
- (void)_setShouldHaveFullLengthBottomSeparator:(BOOL)separator;
- (void)_setShouldHaveFullLengthTopSeparator:(BOOL)separator;
- (void)_setShouldIndentWhileEditing:(BOOL)editing;
- (void)_setShowingCompactContextMenu:(BOOL)menu;
- (void)_setShowsReorderControl:(BOOL)control;
- (void)_setSkipsLayout:(BOOL)layout;
- (void)_setSwipeContainerView:(id)view;
- (void)_setSwiped:(BOOL)swiped;
- (void)_setTopSeparatorFollowsLayoutMargins:(BOOL)margins;
- (void)_setUsesModernAccessoriesLayout:(BOOL)layout;
- (void)_setupChangeHandlersForNewContentView:(id)view;
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
- (void)_updateAndCacheBackgroundColorForHighlightIgnoringSelection:(BOOL)selection;
- (void)_updateBackgroundViewConfigurationForState:(id)state;
- (void)_updateCellForCurrentBackgroundConfiguration;
- (void)_updateCellMaskViewsForView:(id)view backdropView:(id)backdropView;
- (void)_updateConfigurationUsingState:(id)state;
- (void)_updateConfigurationWithObservationTracking;
- (void)_updateContentClip;
- (void)_updateContentViewConfigurationForState:(id)state;
- (void)_updateCurrentSystemTypeAccessoryViewsUsingState:(id)state;
- (void)_updateDefaultAccessoryViewForFocus:(BOOL)focus;
- (void)_updateDefaultBackgroundAppearance;
- (void)_updateDefaultImageSymbolConfiguration;
- (void)_updateDefaultIndentationWidth;
- (void)_updateDefaultLabelsForFocus:(BOOL)focus;
- (void)_updateExpansionButton:(id)button forType:(int64_t)type animated:(BOOL)animated;
- (void)_updateFloatingContentControlStateInContext:(id)context withAnimationCoordinator:(id)coordinator animated:(BOOL)animated;
- (void)_updateHighlightColors;
- (void)_updateHighlightColorsForAnimationHalfwayPoint;
- (void)_updateHighlightColorsForView:(id)view highlighted:(BOOL)highlighted;
- (void)_updateLeadingLayoutMarginForIndentation;
- (void)_updateModernCellAccessoriesForState:(id)state isEditing:(BOOL)editing;
- (void)_updatePopupMenuButtonFromContentView;
- (void)_updateProperties;
- (void)_updateSeparatorContent;
- (void)_updateSeparatorContent:(BOOL)content;
- (void)_updateSeparatorViewAlpha;
- (void)_updateShowingSelectedBackground;
- (void)_updateSystemTypeAccessoryView:(id)view withCellAccessoryType:(int64_t)type forState:(id)state;
- (void)_updateSystemTypeAccessoryView:(id)view withTableViewAccessoryType:(int64_t)type forState:(id)state;
- (void)_updateTopSeparatorViewAlpha;
- (void)_updateUserInteractionEnabledForNewDragState:(int64_t)state;
- (void)_willTransitionToState:(unint64_t)state;
- (void)_willUpdateFocusInContext:(id)context;
- (void)bringSubviewToFront:(id)front;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)dragStateDidChange:(UITableViewCellDragState)dragState;
- (void)editControlWasClicked:(id)clicked;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)encodeWithCoder:(id)coder;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)removeEditingData;
- (void)sendSubviewToBack:(id)back;
- (void)setAccessoryAction:(SEL)accessoryAction;
- (void)setAccessoryActionSegueTemplate:(id)template;
- (void)setAccessoryType:(UITableViewCellAccessoryType)accessoryType;
- (void)setAccessoryView:(UIView *)accessoryView;
- (void)setAutomaticallyUpdatesBackgroundConfiguration:(BOOL)automaticallyUpdatesBackgroundConfiguration;
- (void)setAutomaticallyUpdatesContentConfiguration:(BOOL)automaticallyUpdatesContentConfiguration;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundView:(UIView *)backgroundView;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setClipsToBounds:(BOOL)bounds;
- (void)setConfigurationUpdateHandler:(UITableViewCellConfigurationUpdateHandler)configurationUpdateHandler;
- (void)setDrawingEnabled:(BOOL)enabled;
- (void)setEditAction:(SEL)editAction;
- (void)setEditingAccessoryType:(UITableViewCellAccessoryType)editingAccessoryType;
- (void)setEditingAccessoryView:(UIView *)editingAccessoryView;
- (void)setEditingStyle:(int64_t)style;
- (void)setFocusStyle:(UITableViewCellFocusStyle)focusStyle;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setImage:(UIImage *)image;
- (void)setIndentationLevel:(NSInteger)indentationLevel;
- (void)setLayoutManager:(id)manager;
- (void)setLineBreakMode:(NSLineBreakMode)lineBreakMode;
- (void)setMultipleSelectionBackgroundView:(UIView *)multipleSelectionBackgroundView;
- (void)setNeedsUpdateConfiguration;
- (void)setNeedsUpdateConstraints;
- (void)setPlaceHolderValue:(id)value;
- (void)setReturnAction:(SEL)action;
- (void)setReuseIdentifier:(id)identifier;
- (void)setSectionBorderColor:(id)color;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setSelectedBackgroundView:(id)view animated:(BOOL)animated;
- (void)setSelectedImage:(UIImage *)selectedImage;
- (void)setSelectedTextColor:(UIColor *)selectedTextColor;
- (void)setSelectionSegueTemplate:(id)template;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setSeparatorColor:(id)color;
- (void)setSeparatorInset:(UIEdgeInsets)separatorInset;
- (void)setSeparatorStyle:(int64_t)style;
- (void)setShouldIndentWhileEditing:(BOOL)shouldIndentWhileEditing;
- (void)setShowingDeleteConfirmation:(BOOL)confirmation;
- (void)setShowsReorderControl:(BOOL)showsReorderControl;
- (void)setTableViewStyle:(int64_t)style;
- (void)setText:(NSString *)text;
- (void)setTextAlignment:(NSTextAlignment)textAlignment;
- (void)setTextColor:(UIColor *)textColor;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setUserInteractionEnabledWhileDragging:(BOOL)userInteractionEnabledWhileDragging;
- (void)setWasSwiped:(BOOL)swiped;
- (void)showSelectedBackgroundView:(BOOL)view animated:(BOOL)animated;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToSuperview:(id)superview;
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
    traitCollection = [(UIView *)self traitCollection];
    v3 = _UITableConstantsForTraitCollection(traitCollection);
  }

  return v3;
}

- (void)_updateDefaultIndentationWidth
{
  if ((*(&self->_tableCellFlags + 13) & 0x20) == 0)
  {
    _constants = [(UITableViewCell *)self _constants];
    [_constants defaultIndentationWidthForSidebarStyle:0];
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
  _constants = [(UITableViewCell *)self _constants];
  tableCellFlags = self->_tableCellFlags;
  v10 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:?];
  traitCollection = [(UIView *)self traitCollection];
  if (_constants)
  {
    [_constants defaultCellBackgroundPropertiesForTableViewStyle:HIDWORD(tableCellFlags) & 0x1F state:v10 traitCollection:traitCollection];
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
  block[4] = self;
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
      backgroundColor = [(UITableViewCell *)self backgroundColor];
      [(UIView *)self->_selectedBackgroundView setNoneStyleBackgroundColor:backgroundColor];
    }

    if ([(UIView *)self isOpaque])
    {
      backgroundColor2 = [(UITableViewCell *)self backgroundColor];
      [backgroundColor2 alphaComponent];
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
    backgroundColor = [(UIView *)&v6 backgroundColor];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITableViewCell;
    backgroundColor = [(UIView *)&v5 backgroundColor];
  }

  return backgroundColor;
}

- (void)invalidateIntrinsicContentSize
{
  _tableView = [(UITableViewCell *)self _tableView];
  v4 = _tableView;
  if (_tableView)
  {
    [_tableView _cellDidInvalidateIntrinsicContentSize:self];
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
  _containerView = [(UITableViewCell *)self _containerView];
  if (_containerView)
  {
    v3 = _containerView;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _containerView = v3;
    }

    else
    {
      _containerView = 0;
    }
  }

  return _containerView;
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
  _swipeContainerView = [(UITableViewCell *)self _swipeContainerView];
  v12 = _swipeContainerView;
  if (_swipeContainerView)
  {
    [_swipeContainerView frame];
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
  _swipeContainerView = [(UITableViewCell *)self _swipeContainerView];
  v8 = _swipeContainerView;
  if (_swipeContainerView)
  {
    [_swipeContainerView center];
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
  defaultTableLayoutMargins = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (-[UITableViewCell _usesRoundedGroups](self, "_usesRoundedGroups") || (-[UIView traitCollection](self, "traitCollection"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 userInterfaceIdiom], v11, v12 == 6))
  {
    _metricsAdapter = [(UITableViewCell *)self _metricsAdapter];
    defaultTableLayoutMargins = [(UITableMetricsAdapter *)_metricsAdapter defaultTableLayoutMargins];
    v10 = v14;
    v8 = v15;
    v17 = v16;
    _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
    if (_shouldReverseLayoutDirection)
    {
      v6 = v17;
    }

    else
    {
      v6 = v10;
    }

    if (!_shouldReverseLayoutDirection)
    {
      v10 = v17;
    }
  }

  v19 = defaultTableLayoutMargins;
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
    superview = [(UIView *)self superview];

    if (superview)
    {
      [(UIView *)self safeAreaInsets];
      v6 = v8;
      v5 = v9;
      v4 = v10;
      v3 = v11;
    }

    else
    {
      _tableView = [(UITableViewCell *)self _tableView];
      [_tableView _cellSafeAreaInsets];
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
  _selectionGrouping = [(UITableViewCell *)self _selectionGrouping];
  if ([(UITableViewCell *)self _usesRoundedGroups])
  {
    [(UITableViewCell *)self _roundedGroupCornerRadius];
    if (v4 > 0.0)
    {
      _selectionGrouping = [(UITableViewCell *)self sectionLocation];
    }
  }

  if ((_selectionGrouping - 1) > 2)
  {
    return 15;
  }

  else
  {
    return qword_18A682828[_selectionGrouping - 1];
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
        _defaultBackgroundConfiguration = [(UITableViewCell *)self _defaultBackgroundConfiguration];
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __53__UITableViewCell__updateDefaultBackgroundAppearance__block_invoke;
        v7[3] = &unk_1E70F35B8;
        v7[4] = self;
        v8 = _defaultBackgroundConfiguration;
        v6 = _defaultBackgroundConfiguration;
        [UIView _performSystemAppearanceModifications:v7];
        *(p_tableCellFlags + 1) &= ~0x100000000000uLL;
      }
    }
  }
}

- (BOOL)_shouldMaskToBoundsWhileAnimating
{
  v2 = [(UITableViewCell *)self editingData:0];
  wantsMaskingWhileAnimatingDisabled = [v2 wantsMaskingWhileAnimatingDisabled];

  return wantsMaskingWhileAnimatingDisabled ^ 1;
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
  selfCopy = self;
  v30 = *MEMORY[0x1E69E9840];
  if ((*(&self->_tableCellFlags + 12) & 2) == 0)
  {
    objc_storeWeak(&self->_tableView, 0);
  }

  superview = [(UIView *)selfCopy superview];

  if (superview)
  {
    _tableView = [(UITableViewCell *)selfCopy _tableView];
    if (_tableView)
    {
      if ([(UITableViewCell *)selfCopy _usesModernAccessoriesLayout])
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v16 = selfCopy;
        _accessoryManager = [(UITableViewCell *)selfCopy _accessoryManager];
        configurations = [_accessoryManager configurations];
        allValues = [configurations allValues];

        v18 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v18)
        {
          v17 = *v25;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(allValues);
              }

              v9 = *(*(&v24 + 1) + 8 * i);
              v20 = 0u;
              v21 = 0u;
              v22 = 0u;
              v23 = 0u;
              trailingAccessories = [v9 trailingAccessories];
              v11 = [trailingAccessories countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                      objc_enumerationMutation(trailingAccessories);
                    }

                    view = [*(*(&v20 + 1) + 8 * j) view];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [view addTarget:_tableView action:sel__accessoryButtonAction_ forControlEvents:64];
                    }
                  }

                  v12 = [trailingAccessories countByEnumeratingWithState:&v20 objects:v28 count:16];
                }

                while (v12);
              }
            }

            v18 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
          }

          while (v18);
        }

        selfCopy = v16;
      }

      else
      {
        [(UIControl *)selfCopy->_accessoryView addTarget:_tableView action:sel__accessoryButtonAction_ forControlEvents:64];
        [(UIControl *)selfCopy->_editingAccessoryView addTarget:_tableView action:sel__accessoryButtonAction_ forControlEvents:64];
      }
    }

    [(UITableViewCell *)selfCopy _updateContentClip];
  }

  v19.receiver = selfCopy;
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
    configuration = [(UIView *)self->_contentView configuration];
  }

  else
  {
    configuration = 0;
  }

  return configuration;
}

- (unint64_t)_viewConfigurationState
{
  configurationState = [(UITableViewCell *)self configurationState];
  _viewConfigurationState = [configurationState _viewConfigurationState];

  return _viewConfigurationState;
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
  _accessoryManager = [(UITableViewCell *)self _accessoryManager];
  v5 = _accessoryManager;
  if (_accessoryManager)
  {
    configurations = [_accessoryManager configurations];
    v7 = [configurations objectForKeyedSubscript:?];

    v8 = objc_alloc_init(UICellAccessoryConfiguration);
    v9 = [(UITableViewCell *)self _leadingAccessoriesForEditing:0 style:0];
    [(UICellAccessoryConfiguration *)v8 setLeadingAccessories:v9];

    v10 = [(UITableViewCell *)self _trailingAccessoriesForType:(*p_tableCellFlags >> 15) & 7 view:self->_customAccessoryView editing:0 style:0];
    [(UICellAccessoryConfiguration *)v8 setTrailingAccessories:v10];

    configurations2 = [v5 configurations];
    v32 = [configurations2 objectForKeyedSubscript:0x1EFBA01F0];

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
          configurationState = [(UITableViewCell *)self configurationState];
          [(UITableViewCell *)self _updateCurrentSystemTypeAccessoryViewsUsingState:configurationState];

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
    layoutManager = [(UITableViewCell *)self layoutManager];
    [layoutManager layoutSubviewsOfCell:self];
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
      _focusBehavior = [(UIView *)self _focusBehavior];
      v6 = [UIFocusRingManager focusRingAvailableInBehavior:_focusBehavior];

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
  _containerView = [(UITableViewCell *)self _containerView];
  if (_containerView && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = _containerView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_containerView
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    v3 = superview;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      superview = v3;
    }

    else
    {
      superview = 0;
    }
  }

  return superview;
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
    layoutManager = [(UITableViewCell *)self layoutManager];
    [layoutManager contentEndingRectForCell:self forNewEditingState:{-[UITableViewCell isEditing](self, "isEditing")}];
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
    view = [(UIGestureRecognizer *)self->_longPressGesture view];

    if (contentView != view)
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
  traitCollection = [(UIView *)self traitCollection];
  v3 = _UISeparatorThicknessForTraitCollection(traitCollection);

  return v3;
}

- (void)_updateConfigurationWithObservationTracking
{
  selfCopy = self;
  sub_188CA312C();
}

- (UICellConfigurationState)_configurationState
{
  v3 = [UICellConfigurationState alloc];
  traitCollection = [(UIView *)self traitCollection];
  v5 = [(UIViewConfigurationState *)v3 initWithTraitCollection:traitCollection];

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
  _dragState = [(UITableViewCell *)self _dragState];
  if ((_dragState - 1) <= 1)
  {
    [(UICellConfigurationState *)v5 setCellDragState:_dragState];
  }

  [(UICellConfigurationState *)v5 setCellDropState:[(UITableViewCell *)self _dropState]];

  return v5;
}

- (id)_badgeText
{
  if (![(UITableViewCell *)self _usesModernAccessoriesLayout]|| (*(&self->_tableCellFlags + 11) & 0x20) != 0)
  {
    _badge = [(UITableViewCell *)self _badge];
    text = [(_UITableViewCellBadge *)_badge text];
  }

  else
  {
    text = 0;
  }

  return text;
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
    _createDefaultContentView = [(UITableViewCell *)self _createDefaultContentView];
    [(UITableViewCell *)self _setContentView:_createDefaultContentView];
  }

  contentView = self->_contentView;

  return contentView;
}

- (void)_updateContentClip
{
  if ([(UITableViewCell *)self _isReordering])
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
    {
      return;
    }
  }

  if ([(UITableViewCell *)self _usesRoundedGroups]&& (![(UITableViewCell *)self _appliesMaskingToBackgroundConfiguration]|| ![(UITableViewCell *)self _usingBackgroundViewConfiguration]))
  {
    *(&self->_tableCellFlags + 1) |= 0x800000000uLL;
    sectionLocation = [(UITableViewCell *)self sectionLocation];
    if (sectionLocation <= 1)
    {
      if (sectionLocation)
      {
        if (sectionLocation != 1)
        {
          return;
        }

        selfCopy6 = self;
        v9 = 0;
        goto LABEL_20;
      }
    }

    else if (sectionLocation != 4)
    {
      if (sectionLocation == 3)
      {
        selfCopy6 = self;
        v9 = 12;
      }

      else
      {
        if (sectionLocation != 2)
        {
          return;
        }

        selfCopy6 = self;
        v9 = 3;
      }

      goto LABEL_20;
    }

    selfCopy6 = self;
    v9 = 15;
LABEL_20:
    v11 = 1;
    goto LABEL_21;
  }

  if (objc_opt_respondsToSelector())
  {
    constants = self->_constants;
    _tableView = [(UITableViewCell *)self _tableView];
    v7 = [(UITableConstants *)constants contentClipCornersForCell:self inTableView:_tableView];

    selfCopy6 = self;
    v9 = v7;
    goto LABEL_20;
  }

  v11 = (*(&self->_tableCellFlags + 1) >> 35) & 1;
  selfCopy6 = self;
  v9 = 0;
LABEL_21:

  [(UITableViewCell *)selfCopy6 _setContentClipCorners:v9 updateCorners:v11];
}

- (void)_executeConfigurationUpdate
{
  if (self)
  {
    v2 = _UISetCurrentFallbackEnvironment(self);
    configurationState = [self configurationState];
    memset(__src, 0, sizeof(__src));
    _UIBeginTrackingTraitUsage(self, 0, __src);
    [self _updateBackgroundViewConfigurationForState:configurationState];
    [self _updateContentViewConfigurationForState:configurationState];
    [self _updateConfigurationUsingState:configurationState];
    [self _updateViewConfigurationsWithState:{objc_msgSend(self, "_viewConfigurationState")}];
    [self updateConfigurationUsingState:configurationState];
    [self _bridgedUpdateConfigurationUsingState:configurationState];
    configurationUpdateHandler = [self configurationUpdateHandler];
    v5 = configurationUpdateHandler;
    if (configurationUpdateHandler)
    {
      (*(configurationUpdateHandler + 16))(configurationUpdateHandler, self, configurationState);
    }

    [self _updateCellForCurrentBackgroundConfiguration];
    memcpy(v11, __src, sizeof(v11));
    TraitCollectionTSD = GetTraitCollectionTSD();
    memcpy(__dst, TraitCollectionTSD + 16, sizeof(__dst));
    memcpy(TraitCollectionTSD + 16, v11, 0x170uLL);
    v7 = __dst[22] & ~*&__src[11];
    v8 = *&__src[11] & ~__dst[22];
    v9 = __dst[22] & *&__src[11];
    v10 = [self methodForSelector:sel_updateConfigurationUsingState_];
    *&v11[0] = v7;
    *(&v11[0] + 1) = v8;
    *&v11[1] = v9;
    [(UIView *)self _recordTraitUsage:v11 trackedStateDiff:v10 insideMethod:sel_setNeedsUpdateConfiguration withInvalidationAction:?];
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      [self _layoutSystemBackgroundView:1];
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

  configuration = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
  v9 = configuration;
  if (configuration)
  {
    _hasBackgroundFill = [configuration _hasBackgroundFill];
    if ([(UITableViewCell *)self isHighlighted])
    {
      if (!_hasBackgroundFill)
      {
        goto LABEL_13;
      }
    }

    else if (([(UITableViewCell *)self isSelected]& _hasBackgroundFill & 1) == 0)
    {
      goto LABEL_13;
    }

    lastNormalBackgroundViewConfiguration = self->_lastNormalBackgroundViewConfiguration;
    tintColor = [(UIView *)self tintColor];
    LOBYTE(lastNormalBackgroundViewConfiguration) = [v9 _backgroundFillIsEqual:lastNormalBackgroundViewConfiguration withTintColor:tintColor];

    if ((lastNormalBackgroundViewConfiguration & 1) == 0)
    {
      *(&self->_tableCellFlags + 1) |= 0x1000000000000uLL;
      [(UITableViewCell *)self _applySelectedStateToSeparators:1];
      _tableView = [(UITableViewCell *)self _tableView];
      [_tableView _cellDidShowSelectedBackground:self];
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
    _tableView = [(UITableViewCell *)self _tableView];
    [_tableView _cellDidHideSelectedBackground:self];
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
    attributedText = [(UILabel *)self->_textLabel attributedText];

    if (!attributedText)
    {
      v6 = objc_getAssociatedObject(self, &unk_1ED498E52);
      textLabel = [(UITableViewCell *)self textLabel];
      [textLabel setAttributedText:v6];
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

  attributedText2 = [(UILabel *)self->_detailTextLabel attributedText];

  if (!attributedText2)
  {
    v9 = objc_getAssociatedObject(self, &unk_1ED498E53);
    detailTextLabel = [(UITableViewCell *)self detailTextLabel];
    [detailTextLabel setAttributedText:v9];
  }

  objc_setAssociatedObject(self, &unk_1ED498E53, 0, 1);
  v11 = *(p_tableCellFlags + 1) & 0xFFFFFFFF7FFFFFFFLL;
  *(p_tableCellFlags + 1) = v11;
  if ((v11 & 0x100000000) != 0)
  {
LABEL_11:
    attributedText3 = [(UITextField *)self->_editableTextField attributedText];

    if (!attributedText3)
    {
      v13 = objc_getAssociatedObject(self, &unk_1ED498E54);
      editableTextField = [(UITableViewCell *)self editableTextField];
      [editableTextField setAttributedText:v13];
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
  _accessoryManager = [(UITableViewCell *)self _accessoryManager];
  if (_accessoryManager)
  {
    [(UITableViewCell *)self _effectiveSafeAreaInsets];
    [_accessoryManager setSafeAreaInsets:?];
    traitCollection = [(UIView *)self traitCollection];
    _constants = [(UITableViewCell *)self _constants];
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
    v6 = traitCollection;
    v21 = v6;
    v7 = _constants;
    v22 = v7;
    [_accessoryManager setStandardLayoutWidthProvider:v20];
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
    [_accessoryManager setDisclosureLayoutWidthProvider:v15];
    leadingLayout = [_accessoryManager leadingLayout];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__UITableViewCell__updateAccessoryMetrics__block_invoke_3;
    v13[3] = &unk_1E70FE358;
    objc_copyWeak(&v14, &location);
    [leadingLayout setSpacingBlock:v13];
    trailingLayout = [_accessoryManager trailingLayout];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__UITableViewCell__updateAccessoryMetrics__block_invoke_4;
    v11[3] = &unk_1E70FE358;
    objc_copyWeak(&v12, &location);
    [trailingLayout setSpacingBlock:v11];
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
  layer = [(UIView *)self layer];
  [layer clearHasBeenCommitted];
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
  _shouldUseHighlightedOrSelectedAppearance = [(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance];
  [(UITableViewCell *)self _updateHighlightColorsForView:self highlighted:_shouldUseHighlightedOrSelectedAppearance];
  _tableView = [(UITableViewCell *)self _tableView];
  [_tableView _tableStyle];

  if (!_shouldUseHighlightedOrSelectedAppearance && self->_unhighlightedStates)
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
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
    {
      _tableView = [(UITableViewCell *)self _tableView];
      v6 = _tableView;
      if (_tableView)
      {
        [_tableView _rawSeparatorInset];
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
  _tableView = [(UITableViewCell *)self _tableView];
  v4 = _tableView;
  left = self->_separatorInset.left;
  if (left == -1.0 && _tableView != 0)
  {
    [_tableView _rawSeparatorInset];
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
      layoutManager = [(UITableViewCell *)self layoutManager];
      v14 = [layoutManager shouldIncreaseMarginForImageViewInCell:self];

      if (v14)
      {
        traitCollection = [(UIView *)self traitCollection];
        userInterfaceIdiom = [traitCollection userInterfaceIdiom];

        if (userInterfaceIdiom == 3)
        {
          v17 = [(UITableViewCell *)self _imageView:0];
          [(UITableViewCell *)self _imageViewExtentFromCellLeadingEdge];
          v19 = v18;
          image = [v17 image];
          v21 = 8.0;
          if (!image)
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
            contentView = [(UITableViewCell *)self contentView];
            [contentView directionalLayoutMargins];
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
    _shouldApplyReadableWidthInsets = [(UITableViewCell *)self _shouldApplyReadableWidthInsets];
    if ((dyld_program_sdk_at_least() & 1) != 0 || _shouldApplyReadableWidthInsets)
    {
      [(UIView *)self directionalLayoutMargins];
      left = left + v23;
    }
  }

  return left;
}

- (double)_imageViewExtentFromCellLeadingEdge
{
  image = [(UIImageView *)self->_imageView image];
  v4 = 0.0;
  if (image)
  {
    v5 = image;
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
      image2 = [(UIImageView *)self->_imageView image];
      traitCollection = [(UIView *)self traitCollection];
      ShouldCenterImageHorizontallyForTraitCollection = _UITableCellShouldCenterImageHorizontallyForTraitCollection(image2, traitCollection);

      if (ShouldCenterImageHorizontallyForTraitCollection)
      {
        _constants = [(UITableViewCell *)self _constants];
        traitCollection2 = [(UIView *)self traitCollection];
        [_constants defaultImageViewSymbolImageAndAccessoryLayoutWidthForSidebar:0 traitCollection:traitCollection2];
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
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
    {
      _tableView = [(UITableViewCell *)self _tableView];
      v6 = _tableView;
      if (_tableView)
      {
        [_tableView _rawSeparatorInset];
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
    _tableView = [(UITableViewCell *)self _tableView];
    v6 = _tableView;
    if (_tableView)
    {
      [_tableView _rawSeparatorInset];
      right = v7;
    }

    else
    {
      right = -1.0;
    }
  }

  _shouldApplyReadableWidthInsets = [(UITableViewCell *)self _shouldApplyReadableWidthInsets];
  v9 = _shouldApplyReadableWidthInsets;
  indexBarExtentFromEdge = self->_indexBarExtentFromEdge;
  if (right == -1.0)
  {
    if (_shouldApplyReadableWidthInsets || _UISolariumEnabled())
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
  layoutMarginsFollowReadableWidth = [(UIView *)self layoutMarginsFollowReadableWidth];
  if (layoutMarginsFollowReadableWidth)
  {
    _tableView = [(UITableViewCell *)self _tableView];
    _scrollView = [_tableView _scrollView];
    _safeAreaWidthExceedsReadableWidth = [_scrollView _safeAreaWidthExceedsReadableWidth];

    LOBYTE(layoutMarginsFollowReadableWidth) = _safeAreaWidthExceedsReadableWidth;
  }

  return layoutMarginsFollowReadableWidth;
}

- (void)_updateSeparatorViewAlpha
{
  _shouldHideSeparator = [(UITableViewCell *)self _shouldHideSeparator];
  v4 = 1.0;
  if (_shouldHideSeparator)
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
      superview = [(UIView *)v5 superview];
      contentView = [(UITableViewCell *)self contentView];

      if (superview != contentView)
      {
        contentView2 = [(UITableViewCell *)self contentView];
        [contentView2 addSubview:self->_textLabel];
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
      superview = [(UIView *)v5 superview];
      contentView = [(UITableViewCell *)self contentView];

      if (superview != contentView)
      {
        contentView2 = [(UITableViewCell *)self contentView];
        [contentView2 addSubview:self->_detailTextLabel];
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
      contentView = [(UITableViewCell *)self contentView];
      v8 = contentView;
      v9 = self->_imageView;
      if (backgroundView)
      {
        [contentView insertSubview:v9 aboveSubview:self->_backgroundView];
      }

      else
      {
        [contentView addSubview:v9];
      }

      _tableView = [(UITableViewCell *)self _tableView];
      [_tableView _tableStyle];

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
    traitCollection = [(UIView *)self traitCollection];
    v4 = [(UITableConstants *)constants defaultImageSymbolConfigurationForTraitCollection:traitCollection];
    [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v4];
  }
}

- (double)_roundedGroupCornerRadius
{
  _tableView = [(UITableViewCell *)self _tableView];
  v4 = _tableView;
  if (!_tableView || ([_tableView _sectionCornerRadius], v5 == -1.0))
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    if (userInterfaceIdiom == 6)
    {
      v7 = 16.0;
    }

    else if (userInterfaceIdiom == 3)
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
  configuration = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = configuration;
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
  configuration = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = configuration;
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
    _popupMenuButton = [(UIView *)self->_contentView _popupMenuButton];
    [(UITableViewCell *)self _setPopupMenuButton:_popupMenuButton];
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
    _tableView = [(UITableViewCell *)self _tableView];
    allowsMultipleSelection = [_tableView allowsMultipleSelection];

    if ((tableCellFlags & 0x100) == 0)
    {
      return allowsMultipleSelection;
    }

    goto LABEL_11;
  }

  if ((*&self->_tableCellFlags & 0x7000) != 0x3000)
  {
    _tableView2 = [(UITableViewCell *)self _tableView];
    if (![_tableView2 allowsMultipleSelectionDuringEditing] || (*(p_tableCellFlags + 12) & 4) != 0)
    {
      if ((*(p_tableCellFlags + 1) & 1) == 0)
      {
        goto LABEL_2;
      }

      allowsMultipleSelection = 0;
    }

    else
    {
      allowsMultipleSelection = 1;
    }

LABEL_11:

    return allowsMultipleSelection;
  }

  return 1;
}

- (BOOL)_hasCustomSelectionAction
{
  _effectivePopupMenuButton = [(UITableViewCell *)self _effectivePopupMenuButton];
  v3 = _effectivePopupMenuButton != 0;

  return v3;
}

- (id)_effectivePopupMenuButton
{
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
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
      preferredFocusedView = v11;

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
  preferredFocusedView = [(UIView *)&v15 preferredFocusedView];
LABEL_18:

  return preferredFocusedView;
}

- (BOOL)canBecomeFocused
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  if ([_focusBehavior preventsCellFocusabilityWhileEditing] && -[UITableViewCell isEditing](self, "isEditing"))
  {
    _tableView = [(UITableViewCell *)self _tableView];
    _scrollView = [_tableView _scrollView];
    canBecomeFocused = [_scrollView canBecomeFocused];

    if (!canBecomeFocused)
    {
      return 0;
    }
  }

  else
  {
  }

  _existingContentView = [(UITableViewCell *)self _existingContentView];
  if (_existingContentView && (objc_opt_respondsToSelector() & 1) != 0 && ([_existingContentView _preventFocus] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    _tableView2 = [(UITableViewCell *)self _tableView];
    v7 = [_tableView2 _canFocusCell:self];
  }

  return v7;
}

- (void)_updateHighlightColorsForAnimationHalfwayPoint
{
  _shouldUseHighlightedOrSelectedAppearance = [(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance];
  [(UITableViewCell *)self _updateHighlightColorsForView:self highlighted:_shouldUseHighlightedOrSelectedAppearance];
  if ((*(&self->_tableCellFlags + 5) & 0x10) != 0)
  {
    [(UIView *)self->_selectedOverlayView setSelected:_shouldUseHighlightedOrSelectedAppearance];
  }

  if (!_shouldUseHighlightedOrSelectedAppearance)
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
    contentView = [(_UIFloatingContentView *)v4 contentView];
    subviews = [contentView subviews];

    v8 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(subviews);
          }

          [(UIView *)self addSubview:*(*(&v12 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
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

+ (void)_initializeForIdiom:(int64_t)idiom
{
  if ((dyld_program_sdk_at_least() & 1) == 0 && objc_opt_class() == self && (idiom == 8 || idiom == 2))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__UITableViewCell__initializeForIdiom___block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = idiom;
    v5[5] = self;
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

- (BOOL)_shouldChangeOpaqueStateOfView:(id)view
{
  viewCopy = view;
  if (![(UITableViewCell *)self _changesOpaqueStateOfSubviews]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || self->_backgroundView == viewCopy || self->_selectedBackgroundView == viewCopy || self->_multipleSelectionBackgroundView == viewCopy || self->_separatorView == viewCopy || self->_topSeparatorView == viewCopy || (floatingContentView = self->_floatingContentView, floatingContentView == viewCopy))
  {
    v8 = 0;
  }

  else
  {
    transformView = [(_UIFloatingContentView *)floatingContentView transformView];
    if (transformView == viewCopy)
    {
      v8 = 0;
    }

    else
    {
      highlightView = [(_UIFloatingContentView *)self->_floatingContentView highlightView];
      v8 = highlightView != viewCopy;
    }
  }

  return v8;
}

- (int64_t)_popoverControllerStyle
{
  _tableView = [(UITableViewCell *)self _tableView];
  _popoverControllerStyle = [_tableView _popoverControllerStyle];

  return _popoverControllerStyle;
}

- (BOOL)_isInModalViewController
{
  _tableView = [(UITableViewCell *)self _tableView];
  _isInModalViewController = [_tableView _isInModalViewController];

  return _isInModalViewController;
}

- (id)_checkmarkImageWithTintColor:(id)color
{
  colorCopy = color;
  if ([(UIView *)self isFocused]&& ([(UITableViewCell *)self _constants], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    _constants = [(UITableViewCell *)self _constants];
    _tableView = [(UITableViewCell *)self _tableView];
    v9 = [_constants defaultFocusedCheckmarkImageForCell:self inTableView:_tableView];
  }

  else
  {
    _constants = [(UITableViewCell *)self _constants];
    v9 = [_constants defaultCheckmarkImageForCell:self];
  }

  if (colorCopy)
  {
    v10 = [v9 imageWithTintColor:colorCopy renderingMode:1];

    v9 = v10;
  }

  return v9;
}

- (id)_disclosureChevronImage
{
  _tableView = [(UITableViewCell *)self _tableView];
  _accessoryBaseColor = [_tableView _accessoryBaseColor];
  v5 = [(UITableViewCell *)self _disclosureChevronImageWithBaseColor:_accessoryBaseColor];

  return v5;
}

- (id)_disclosureChevronImageWithBaseColor:(id)color
{
  colorCopy = color;
  if ([(UIView *)self isFocused]&& ([(UITableViewCell *)self _constants], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    _constants = [(UITableViewCell *)self _constants];
    _tableView = [(UITableViewCell *)self _tableView];
    v9 = [_constants defaultFocusedDisclosureImageForCell:self inTableView:_tableView];
  }

  else
  {
    _constants = [(UITableViewCell *)self _constants];
    v9 = [_constants defaultDisclosureImageForCell:self withAccessoryBaseColor:colorCopy];
  }

  return v9;
}

- (void)setNeedsUpdateConstraints
{
  contentView = [(UITableViewCell *)self contentView];
  [contentView setNeedsUpdateConstraints];

  [(UIView *)self _setNeedsUpdateConstraints];
  _layoutEngine = [(UIView *)self _layoutEngine];
  if (_layoutEngine)
  {
  }

  else if ((*(&self->super._viewFlags + 7) & 0x40) == 0)
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints
{
  constraintsCopy = constraints;
  v9 = *MEMORY[0x1E69E9840];
  if (!constraints)
  {
    if ([(UIView *)self translatesAutoresizingMaskIntoConstraints])
    {
      if (dyld_program_sdk_at_least())
      {
        v5 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &setTranslatesAutoresizingMaskIntoConstraints____s_category_0) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Changing the translatesAutoresizingMaskIntoConstraints property of a UITableViewCell that is managed by a UITableView is not supported, and will result in incorrect self-sizing. Cell: %@", buf, 0xCu);
        }
      }
    }
  }

  v6.receiver = self;
  v6.super_class = UITableViewCell;
  [(UIView *)&v6 setTranslatesAutoresizingMaskIntoConstraints:constraintsCopy];
}

- (BOOL)_forwardsSystemLayoutFittingSizeToContentView:(id)view
{
  contentView = self->_contentView;
  if (contentView == view)
  {
    return [(UIView *)contentView _wantsAutolayoutOrIsGuardingForEngineHosting];
  }

  else
  {
    return 0;
  }
}

- (CGRect)_updatedContentViewFrameForTargetWidth:(double)width
{
  layoutManager = self->_layoutManager;
  currentStateMask = [(UITableViewCell *)self currentStateMask];

  [layoutManager contentRectForCell:self forState:currentStateMask rowWidth:width];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
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
    if (fittingPriority >= 1000.0)
    {
      v20 = height;
    }

    else
    {
      v20 = 1.79769313e308;
    }

    *&v18 = priority;
    *&v19 = fittingPriority;
    [(UIView *)self->_contentView systemLayoutSizeFittingSize:v15 withHorizontalFittingPriority:v20 verticalFittingPriority:v18, v19];
    v22 = v21;
    v24 = v23;
    v25 = self->_contentView;
    if (priority != 1000.0 && v22 > 2777777.0 || fittingPriority != 1000.0 && v24 > 2777777.0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIContentViewAssertValidFittingSize(UIView * _Nonnull __strong, CGSize, UILayoutPriority, UILayoutPriority)"}];
      v53.width = v22;
      v53.height = v24;
      v49 = NSStringFromCGSize(v53);
      [currentHandler handleFailureInFunction:v48 file:@"_UIContentViewShared.h" lineNumber:73 description:{@"Content view returned an invalid size %@ from -systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority: which is not allowed. If you have implemented a custom content view, you need to add constraints inside it so that its size is not ambiguous, or you need to manually compute and return a valid size. Content view: %@", v49, v25}];
    }

    [(UITableViewCell *)self _verticalPaddingForSeparator];
    v27 = v24 + v26;
    if (priority >= 1000.0)
    {
      v28 = width;
    }

    else
    {
      v28 = v22;
    }

    if (fittingPriority < 1000.0)
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
    if (fittingPriority == 50.0 && height == 0.0)
    {
      v36 = &v52;
    }

    else
    {
      v36 = 0;
    }

    *&v33 = priority;
    *&v34 = fittingPriority;
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
    *&v29 = priority;
    *&v30 = fittingPriority;
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

- (void)_updateHighlightColorsForView:(id)view highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
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

    _tableView = [(UITableViewCell *)self _tableView];
    if ([_tableView allowsMultipleSelectionDuringEditing])
    {
      v12 = *p_tableCellFlags;
      if ((*(&self->_tableCellFlags + 12) & 4) == 0)
      {

        if ((v12 & 0x100) != 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (highlightedCopy)
        {
          viewCopy2 = view;
          v14 = 1;
        }

        else
        {
          unhighlightedStates = self->_unhighlightedStates;
          if (unhighlightedStates)
          {
            v16 = CFDictionaryGetValue(unhighlightedStates, view);
            if (v16)
            {
              v17 = v16;
              [view setHighlighted:{objc_msgSend(v16, "highlighted")}];

              goto LABEL_28;
            }
          }

          viewCopy2 = view;
          v14 = 0;
        }

        [viewCopy2 setHighlighted:v14];
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

  _tableView2 = [(UITableViewCell *)self _tableView];
  if (![_tableView2 allowsMultipleSelection])
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
  if ((objc_opt_isKindOfClass() & 1) == 0 && self->_selectedBackgroundView != view)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    subviews = [view subviews];
    v19 = [subviews countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(subviews);
          }

          [(UITableViewCell *)self _updateHighlightColorsForView:*(*(&v23 + 1) + 8 * i) highlighted:highlightedCopy];
        }

        v20 = [subviews countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v20);
    }
  }
}

- (void)_updateAndCacheBackgroundColorForHighlightIgnoringSelection:(BOOL)selection
{
  selectionCopy = selection;
  if (([(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance]|| selectionCopy) && !self->_unhighlightedStates)
  {
    [(UITableViewCell *)self _saveOpaqueViewState:self];

    [(UITableViewCell *)self _setOpaque:0 forSubview:self];
  }
}

- (id)_defaultFont
{
  _constants = [(UITableViewCell *)self _constants];
  v4 = [_constants defaultTextLabelFontForCellStyle:{-[UITableViewCell _cellStyle](self, "_cellStyle")}];

  return v4;
}

- (void)_contentViewLabelTextDidChange:(id)change
{
  changeCopy = change;
  if (self->_detailTextLabel == changeCopy || self->_textLabel == changeCopy)
  {
    v8 = changeCopy;
    if (changeCopy)
    {
      superview = [(UIView *)changeCopy superview];
      contentView = [(UITableViewCell *)self contentView];

      if (superview != contentView)
      {
        contentView2 = [(UITableViewCell *)self contentView];
        [contentView2 addSubview:v8];
      }
    }

    [(UIView *)self setNeedsLayout];
    changeCopy = v8;
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
      contentView = [(UITableViewCell *)self contentView];
      [contentView addSubview:self->_editableTextField];

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

- (BOOL)_gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  _tableView = [(UITableViewCell *)self _tableView];
  v6 = [_tableView _shouldShowMenuForCell:self];
  v7 = 0x400000000000000;
  if (!v6)
  {
    v7 = 0;
  }

  *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFBFFFFFFFFFFFFFFLL | v7;

  longPressGesture = self->_longPressGesture;
  if (longPressGesture == beginCopy)
  {
    return (*(&self->_tableCellFlags + 7) >> 2) & 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)_longPressGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if ((*(&self->_tableCellFlags + 7) & 4) != 0)
  {
    v6 = recognizedCopy;
    v5 = [recognizedCopy state] == 1;
    recognizedCopy = v6;
    if (v5)
    {
      [(UITableViewCell *)self _showMenuFromLongPressGesture];
      recognizedCopy = v6;
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
  superview = [(UIView *)self superview];
  [(UIView *)self convertPoint:superview fromView:v6, v8];
  v11 = v10;
  v13 = v12;

  v14 = [UIEditMenuConfiguration configurationWithIdentifier:0 sourcePoint:v11, v13];
  [v14 set_firstResponderTarget:self];
  [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v14];
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  actionsCopy = actions;
  if (self->_editMenuInteraction == interaction)
  {
    v9 = _UIMenuForUIMenuControllerMenuItems();
    if (v9)
    {
      v10 = [actionsCopy arrayByAddingObject:v9];

      actionsCopy = v10;
    }

    v8 = [UIMenu menuWithChildren:actionsCopy];
  }

  else
  {
    v8 = [UIMenu menuWithChildren:actionsCopy];
  }

  return v8;
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  if (self->_editMenuInteraction == interaction)
  {
    _tableView = [(UITableViewCell *)self _tableView];
    [_tableView _calloutTargetRectForCell:self];
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

- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator
{
  if (self->_editMenuInteraction == interaction)
  {
    [(UITableViewCell *)self setSelected:1 animated:0, animator];
  }
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  if (self->_editMenuInteraction == interactionCopy)
  {
    animatorCopy = animator;
    [(UITableViewCell *)self setSelected:0 animated:0];
    editMenuInteraction = self->_editMenuInteraction;
    self->_editMenuInteraction = 0;

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__UITableViewCell_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke;
    v10[3] = &unk_1E70F3590;
    v11 = interactionCopy;
    [animatorCopy addCompletion:v10];
  }
}

void __80__UITableViewCell_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeInteraction:*(a1 + 32)];
}

- (void)_setContentClipCorners:(unint64_t)corners updateCorners:(BOOL)updateCorners
{
  updateCornersCopy = updateCorners;
  layer = [(UIView *)self layer];
  _swipeContainerView = [(UITableViewCell *)self _swipeContainerView];
  layer2 = [_swipeContainerView layer];

  if (layer2)
  {
    [layer setCornerRadius:0.0];
    [layer setMasksToBounds:0];
    v9 = layer2;

    v10 = v9;
  }

  else
  {
    v10 = layer;
  }

  v17 = v10;
  if (corners)
  {
    [v10 setMaskedCorners:corners];
    [v17 setMasksToBounds:1];
    [(UITableViewCell *)self _roundedGroupCornerRadius];
    v11 = [UICornerRadius fixedRadius:?];
    v12 = [UICornerConfiguration _configurationWithRadius:v11 mask:corners];
    [(UIView *)self setCornerConfiguration:v12];
  }

  else
  {
    if (updateCornersCopy)
    {
      [v10 setMaskedCorners:0];
      v13 = +[UICornerConfiguration unspecifiedConfiguration];
      [(UIView *)self setCornerConfiguration:v13];

      v10 = v17;
    }

    v14 = *(&self->_tableCellFlags + 1);
    if ((v14 & 0x2002) != 0)
    {
      _shouldMaskToBoundsWhileAnimating = 1;
    }

    else if (v14)
    {
      _shouldMaskToBoundsWhileAnimating = [(UITableViewCell *)self _shouldMaskToBoundsWhileAnimating];
      v10 = v17;
    }

    else
    {
      _shouldMaskToBoundsWhileAnimating = 0;
    }

    [v10 setMasksToBounds:_shouldMaskToBoundsWhileAnimating];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (!dyld_program_sdk_at_least())
  {
    _tableView = [(UITableViewCell *)self _tableView];
    if (![_tableView _canPerformAction:action forCell:self sender:senderCopy])
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

  if (sel_cut_ == action || sel_copy_ == action || sel_paste_ == action)
  {
    _tableView = [(UITableViewCell *)self _tableView];
    v10 = [_tableView _canPerformAction:action forCell:self sender:senderCopy];
    goto LABEL_13;
  }

  v13.receiver = self;
  v13.super_class = UITableViewCell;
  v11 = [(UIView *)&v13 canPerformAction:action withSender:senderCopy];
LABEL_16:

  return v11 & 1;
}

- (void)_setReordering:(BOOL)reordering
{
  p_tableCellFlags = &self->_tableCellFlags;
  if (((((*(&self->_tableCellFlags + 1) & 4) == 0) ^ reordering) & 1) == 0)
  {
    reorderingCopy = reordering;
    [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
    v6 = 1024;
    if (!reorderingCopy)
    {
      v6 = 0;
    }

    *p_tableCellFlags = *p_tableCellFlags & 0xFFFFFFFFFFFFFBFFLL | v6;
    if (!reorderingCopy && [(UITableViewCell *)self _usesRoundedGroups])
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

- (void)_setDrawsTopSeparatorDuringReordering:(BOOL)reordering
{
  v3 = 0x800000;
  if (reordering)
  {
    v3 = 0;
  }

  *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFFFFF7FFFFFLL | v3;
  [(UITableViewCell *)self _updateSeparatorContent];
}

- (void)setAccessoryActionSegueTemplate:(id)template
{
  templateCopy = template;
  if (self->_accessoryActionSegueTemplate != templateCopy)
  {
    v6 = templateCopy;
    objc_storeStrong(&self->_accessoryActionSegueTemplate, template);
    templateCopy = v6;
  }
}

- (void)setSelectionSegueTemplate:(id)template
{
  templateCopy = template;
  if (self->_selectionSegueTemplate != templateCopy)
  {
    v6 = templateCopy;
    objc_storeStrong(&self->_selectionSegueTemplate, template);
    templateCopy = v6;
  }
}

- (void)_setShouldHaveFullLengthBottomSeparator:(BOOL)separator
{
  if (((((*(&self->_tableCellFlags + 1) & 4) == 0) ^ separator) & 1) == 0)
  {
    v3 = 4;
    if (!separator)
    {
      v3 = 0;
    }

    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFFFFBLL | v3;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_setShouldHaveFullLengthTopSeparator:(BOOL)separator
{
  if (((((*(&self->_tableCellFlags + 1) & 8) == 0) ^ separator) & 1) == 0)
  {
    v3 = 8;
    if (!separator)
    {
      v3 = 0;
    }

    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFFFF7 | v3;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_setTopSeparatorFollowsLayoutMargins:(BOOL)margins
{
  if (((((*(&self->_tableCellFlags + 1) & 0x10) == 0) ^ margins) & 1) == 0)
  {
    v3 = 16;
    if (!margins)
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

- (void)_applySelectedStateToSeparators:(BOOL)separators
{
  v4 = 4096;
  if (!separators)
  {
    v4 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFEFFFLL | v4;
  [(UITableViewCell *)self _updateSeparatorViewAlpha];

  [(UITableViewCell *)self _updateTopSeparatorViewAlpha];
}

- (id)_addSeparatorWithFrame:(CGRect)frame
{
  v4 = [[_UITableViewCellSeparatorView alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)_setDrawsSeparatorAtTopOfSection:(BOOL)section
{
  if (((((*(&self->_tableCellFlags + 1) & 0x20) == 0) ^ section) & 1) == 0)
  {
    v3 = 32;
    if (!section)
    {
      v3 = 0;
    }

    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFFFDFLL | v3;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_setDrawsSeparatorAtBottomOfSection:(BOOL)section
{
  if (((((*(&self->_tableCellFlags + 1) & 0x40) == 0) ^ section) & 1) == 0)
  {
    v3 = 64;
    if (!section)
    {
      v3 = 0;
    }

    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFFFBFLL | v3;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to
{
  subviewCopy = subview;
  toCopy = to;
  if (self->_floatingContentView)
  {
    _subviewsForFloatingContentView = [(UITableViewCell *)self _subviewsForFloatingContentView];
    v11 = [_subviewsForFloatingContentView containsObject:subviewCopy];

    if (!v11)
    {
      [(UIView *)&v21 _addSubview:subviewCopy positioned:positioned relativeTo:toCopy, v20.receiver, v20.super_class, self, UITableViewCell];
      goto LABEL_20;
    }

    if (positioned == -3)
    {
      superview = [toCopy superview];
      contentView = [(_UIFloatingContentView *)self->_floatingContentView contentView];

      if (superview != contentView)
      {
        contentView2 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
        [contentView2 insertSubview:subviewCopy atIndex:0];
        goto LABEL_19;
      }

      positioned = -3;
    }

    else if (positioned == -2)
    {
      superview2 = [toCopy superview];
      contentView3 = [(_UIFloatingContentView *)self->_floatingContentView contentView];

      if (superview2 != contentView3)
      {
        contentView2 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
        [contentView2 addSubview:subviewCopy];
LABEL_19:

        goto LABEL_20;
      }

      positioned = -2;
    }

    else if (positioned >= 1)
    {
      contentView4 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
      subviews = [contentView4 subviews];
      v19 = [subviews count];

      if (v19 < positioned)
      {
        positioned = v19;
      }
    }

    contentView2 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
    [contentView2 _addSubview:subviewCopy positioned:positioned relativeTo:toCopy];
    goto LABEL_19;
  }

  [(UIView *)&v20 _addSubview:subviewCopy positioned:positioned relativeTo:toCopy, self, UITableViewCell, v21.receiver, v21.super_class];
LABEL_20:
}

- (void)sendSubviewToBack:(id)back
{
  backCopy = back;
  superview = [backCopy superview];
  contentView = [(_UIFloatingContentView *)self->_floatingContentView contentView];

  if (superview == contentView)
  {
    contentView2 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
    [contentView2 sendSubviewToBack:backCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITableViewCell;
    [(UIView *)&v8 sendSubviewToBack:backCopy];
  }
}

- (void)bringSubviewToFront:(id)front
{
  frontCopy = front;
  superview = [frontCopy superview];
  contentView = [(_UIFloatingContentView *)self->_floatingContentView contentView];

  if (superview == contentView)
  {
    contentView2 = [(_UIFloatingContentView *)self->_floatingContentView contentView];
    [contentView2 bringSubviewToFront:frontCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITableViewCell;
    [(UIView *)&v8 bringSubviewToFront:frontCopy];
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
    attributedText = [(UILabel *)self->_textLabel attributedText];
    objc_setAssociatedObject(self, &unk_1ED498E52, attributedText, 1);

    *(&self->_tableCellFlags + 1) |= 0x40000000uLL;
    [(UITableViewCell *)self _releaseTextLabel];
  }

  detailTextLabel = self->_detailTextLabel;
  if (detailTextLabel && ![(UILabel *)detailTextLabel adjustsFontForContentSizeCategory])
  {
    attributedText2 = [(UILabel *)self->_detailTextLabel attributedText];
    objc_setAssociatedObject(self, &unk_1ED498E53, attributedText2, 1);

    *(&self->_tableCellFlags + 1) |= 0x80000000uLL;
    [(UITableViewCell *)self _releaseDetailTextLabel];
  }

  p_editableTextField = &self->_editableTextField;
  editableTextField = self->_editableTextField;
  if (editableTextField && ![(UITextField *)editableTextField adjustsFontForContentSizeCategory])
  {
    attributedText3 = [(UITextField *)*p_editableTextField attributedText];
    objc_setAssociatedObject(self, &unk_1ED498E54, attributedText3, 1);

    *(&self->_tableCellFlags + 1) |= 0x100000000uLL;
LABEL_12:
    [(UITextField *)*p_editableTextField removeFromSuperview];
    v10 = *p_editableTextField;
    *p_editableTextField = 0;
  }

  [(UIView *)self setNeedsLayout];
}

- (void)setClipsToBounds:(BOOL)bounds
{
  if (((((*(&self->_tableCellFlags + 1) & 0x2000) == 0) ^ bounds) & 1) == 0)
  {
    v3 = 0x2000;
    if (!bounds)
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
      _createDefaultContentView = [(UITableViewCell *)v8 _createDefaultContentView];
      [(UITableViewCell *)v8 _setContentView:_createDefaultContentView];
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
    0xFFF = [UITableViewCellLayoutManager layoutManagerForTableViewCellStyle:v12 & 0xFFF];
    [(UITableViewCell *)v6 setLayoutManager:0xFFF];

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
      subviews = [(UIView *)v6->_contentView subviews];
      v24 = [subviews countByEnumeratingWithState:&v60 objects:v65 count:16];
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
              objc_enumerationMutation(subviews);
            }

            [(UIView *)v22 addSubview:*(*(&v60 + 1) + 8 * i)];
          }

          v25 = [subviews countByEnumeratingWithState:&v60 objects:v65 count:16];
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

    layoutManager = [(UITableViewCell *)v6 layoutManager];
    [layoutManager contentRectForCell:v6 forState:0];
    [(UIView *)v6->_contentView setFrame:?];

    [(UITableViewCell *)v6 _setupMenuGesture];
    if ((*(&v6->_tableCellFlags + 12) & 0x40) == 0)
    {
      v31 = [(NSCoder *)v4 decodeObjectForKey:@"UITextLabel"];
      textLabel = v6->_textLabel;
      v6->_textLabel = v31;

      font = [(UILabel *)v6->_textLabel font];
      _defaultFont = [(UITableViewCell *)v6 _defaultFont];
      v35 = [font isEqual:_defaultFont];

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
    contentView = [(_UIFloatingContentView *)self->_floatingContentView contentView];
    subviews = [contentView subviews];
  }

  else
  {
    subviews = [(UIView *)self subviews];
  }

  return subviews;
}

- (void)_populateArchivedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  _encodableSubviews = [(UITableViewCell *)self _encodableSubviews];
  [subviewsCopy addObjectsFromArray:_encodableSubviews];
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    _existingSystemAccessoryViews = [(UITableViewCell *)self _existingSystemAccessoryViews];
    [subviewsCopy minusSet:_existingSystemAccessoryViews];
  }

  else
  {
    if (self->_accessoryView)
    {
      [subviewsCopy removeObject:?];
    }

    if (self->_editingAccessoryView)
    {
      [subviewsCopy removeObject:?];
    }
  }

  if (self->_systemBackgroundView)
  {
    [subviewsCopy removeObject:?];
  }

  tableCellFlags = self->_tableCellFlags;
  if ((tableCellFlags & 0x10000000000) != 0)
  {
    [subviewsCopy removeObject:self->_backgroundView];
    tableCellFlags = self->_tableCellFlags;
  }

  if ((tableCellFlags & 0x8000000000) != 0)
  {
    [subviewsCopy removeObject:self->_selectedBackgroundView];
  }
}

- (void)_encodeBackgroundColorWithCoder:(id)coder
{
  coderCopy = coder;
  systemBackgroundView = self->_systemBackgroundView;
  if (systemBackgroundView)
  {
    configuration = [(_UISystemBackgroundView *)systemBackgroundView configuration];
    tintColor = [(UIView *)self tintColor];
    v7 = [configuration resolvedBackgroundColorForTintColor:tintColor];

    if (!v7)
    {
      goto LABEL_7;
    }

    [coderCopy encodeObject:v7 forKey:@"UIBackgroundColor"];
    [coderCopy encodeBool:1 forKey:@"UIDidEncodeCompatibilityBackgroundColor"];
  }

  else
  {
    _backgroundColor = [(UIView *)self _backgroundColor];
    if (!_backgroundColor)
    {
      goto LABEL_7;
    }

    v7 = _backgroundColor;
    [coderCopy encodeObject:_backgroundColor forKey:@"UIBackgroundColor"];
  }

LABEL_7:
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = UITableViewCell;
  [(UIView *)&v26 encodeWithCoder:coderCopy];
  reuseIdentifier = self->_reuseIdentifier;
  if (reuseIdentifier)
  {
    [coderCopy encodeObject:reuseIdentifier forKey:@"UIReuseIdentifier"];
  }

  p_tableCellFlags = &self->_tableCellFlags;
  tableCellFlags = self->_tableCellFlags;
  if ((tableCellFlags & 0x200000) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIShowsReorderControl"];
    tableCellFlags = *p_tableCellFlags;
  }

  if ((tableCellFlags & 0x3FFC00000000000) != 0)
  {
    [coderCopy encodeInteger:(tableCellFlags >> 46) & 0xFFF forKey:@"UITableViewCellStyle"];
  }

  indentationLevel = self->_indentationLevel;
  if (indentationLevel)
  {
    [coderCopy encodeInteger:indentationLevel forKey:@"UIIndentationLevel"];
  }

  v9 = *p_tableCellFlags;
  v10 = (*p_tableCellFlags >> 1) & 7;
  if (v10 != 1)
  {
    [coderCopy encodeInteger:v10 forKey:@"UISeparatorStyle"];
    v9 = *p_tableCellFlags;
  }

  v11 = (v9 >> 4) & 7;
  if (v11 != 3)
  {
    [coderCopy encodeInteger:v11 forKey:@"UISelectionStyle"];
    v9 = *p_tableCellFlags;
  }

  v12 = (v9 >> 12) & 7;
  if (v12)
  {
    [coderCopy encodeInteger:v12 forKey:@"UIEditingStyle"];
    LODWORD(v9) = *p_tableCellFlags;
  }

  v13 = (v9 >> 15) & 7;
  if (v13)
  {
    [coderCopy encodeInteger:v13 forKey:@"UIAccessoryType"];
    LODWORD(v9) = *p_tableCellFlags;
  }

  v14 = (v9 >> 18) & 7;
  if (v14)
  {
    [coderCopy encodeInteger:v14 forKey:@"UIEditingAccessoryType"];
  }

  if ((*(&self->_tableCellFlags + 13) & 0x20) != 0)
  {
    indentationWidth = self->_indentationWidth;
    *&indentationWidth = indentationWidth;
    [coderCopy encodeFloat:@"UIIndentationWidth" forKey:indentationWidth];
  }

  if ((*(&self->_tableCellFlags + 5) & 1) == 0)
  {
    backgroundView = self->_backgroundView;
    if (backgroundView)
    {
      [coderCopy encodeObject:backgroundView forKey:@"UIBackgroundView"];
    }
  }

  customAccessoryView = self->_customAccessoryView;
  if (customAccessoryView)
  {
    [coderCopy encodeObject:customAccessoryView forKey:@"UICustomAccessoryView"];
  }

  if ((*(&self->_tableCellFlags + 4) & 0x80) == 0)
  {
    selectedBackgroundView = self->_selectedBackgroundView;
    if (selectedBackgroundView)
    {
      [coderCopy encodeObject:selectedBackgroundView forKey:@"UISelectedBackgroundView"];
    }
  }

  multipleSelectionBackgroundView = self->_multipleSelectionBackgroundView;
  if (multipleSelectionBackgroundView && multipleSelectionBackgroundView != self->_selectedBackgroundView)
  {
    [coderCopy encodeObject:multipleSelectionBackgroundView forKey:@"UIMultipleSelectionBackgroundView"];
  }

  if ((*(&self->_tableCellFlags + 7) & 0x10) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UITableCellBackgroundColorSet"];
  }

  if (self->_separatorInset.left != -1.0 || self->_separatorInset.right != -1.0)
  {
    [coderCopy encodeUIEdgeInsets:@"UISeparatorInset" forKey:self->_separatorInset.top];
  }

  v20 = (*(&self->_tableCellFlags + 1) >> 16) & 7;
  if (v20)
  {
    [coderCopy encodeInteger:v20 forKey:@"UIFocusStyle"];
  }

  [coderCopy encodeObject:self->_systemBackgroundView forKey:@"UISystemBackgroundView"];
  if ((*(&self->_tableCellFlags + 12) & 0x40) != 0)
  {
    contentConfiguration = [(UITableViewCell *)self contentConfiguration];
    if (contentConfiguration)
    {
      _contentViewConfiguration = contentConfiguration;
    }

    else
    {
      _contentViewConfiguration = [(UITableViewCell *)self _contentViewConfiguration];
      if (!_contentViewConfiguration)
      {
        v24 = 0;
LABEL_47:
        [coderCopy encodeObject:v24 forKey:@"UIContentConfigurationIdentifier"];

        goto LABEL_48;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [_contentViewConfiguration _wrappedConfigurationIdentifier];
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
  [coderCopy encodeObject:self->_viewForContentConfiguration forKey:@"UIContentConfigurationView"];
  [coderCopy encodeObject:self->_contentView forKey:@"UIContentView"];
  [coderCopy encodeObject:self->_textLabel forKey:@"UITextLabel"];
  [coderCopy encodeObject:self->_detailTextLabel forKey:@"UIDetailTextLabel"];
  [coderCopy encodeObject:self->_imageView forKey:@"UIImageView"];
  accessoryActionPreviewingSegueTemplateStorage = self->_accessoryActionPreviewingSegueTemplateStorage;
  if (accessoryActionPreviewingSegueTemplateStorage)
  {
    [coderCopy encodeObject:accessoryActionPreviewingSegueTemplateStorage forKey:@"UIAccessoryActionPreviewingSegueTemplateStorage"];
  }
}

- (void)setDrawingEnabled:(BOOL)enabled
{
  tableCellFlags = self->_tableCellFlags;
  if ((tableCellFlags & 0x100000000000) != 0 && ((tableCellFlags >> 45) & 1) == enabled)
  {
    v11 = v4;
    v12 = v3;
    v9 = 0x200000000000;
    if (enabled)
    {
      v9 = 0;
    }

    *&self->_tableCellFlags = tableCellFlags & 0xFFFFDFFFFFFFFFFFLL | v9;
    if (enabled)
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
      _createDefaultContentView = [(UITableViewCell *)self _createDefaultContentView];
      [(UITableViewCell *)self _setContentView:_createDefaultContentView];

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
    _textLabel = [(UITableViewCell *)self _textLabel];
    [_textLabel setText:v8];

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
  text = [v2 text];

  return text;
}

- (void)_setFont:(id)font layout:(BOOL)layout
{
  layoutCopy = layout;
  *&self->_tableCellFlags |= 0x4000000000uLL;
  fontCopy = font;
  _textLabel = [(UITableViewCell *)self _textLabel];
  [_textLabel setFont:fontCopy];

  if (layoutCopy)
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (UIFont)font
{
  if ((*(&self->_tableCellFlags + 4) & 0x40) == 0)
  {
    _defaultFont = [(UITableViewCell *)self _defaultFont];
    _textLabel = [(UITableViewCell *)self _textLabel];
    [_textLabel setFont:_defaultFont];

    *&self->_tableCellFlags |= 0x4000000000uLL;
  }

  _textLabel2 = [(UITableViewCell *)self _textLabel];
  font = [_textLabel2 font];

  return font;
}

- (void)setTextAlignment:(NSTextAlignment)textAlignment
{
  _textLabel = [(UITableViewCell *)self _textLabel];
  [_textLabel setTextAlignment:textAlignment];
}

- (NSTextAlignment)textAlignment
{
  _textLabel = [(UITableViewCell *)self _textLabel];
  textAlignment = [_textLabel textAlignment];

  return textAlignment;
}

- (void)setLineBreakMode:(NSLineBreakMode)lineBreakMode
{
  _textLabel = [(UITableViewCell *)self _textLabel];
  [_textLabel setLineBreakMode:lineBreakMode];

  [(UIView *)self setNeedsLayout];
}

- (NSLineBreakMode)lineBreakMode
{
  _textLabel = [(UITableViewCell *)self _textLabel];
  lineBreakMode = [_textLabel lineBreakMode];

  return lineBreakMode;
}

- (void)setTextColor:(UIColor *)textColor
{
  v4 = textColor;
  _textLabel = [(UITableViewCell *)self _textLabel];
  [_textLabel setTextColor:v4];

  [(UIView *)self setNeedsLayout];
}

- (UIColor)textColor
{
  _textLabel = [(UITableViewCell *)self _textLabel];
  textColor = [_textLabel textColor];

  return textColor;
}

- (void)setSelectedTextColor:(UIColor *)selectedTextColor
{
  v4 = selectedTextColor;
  _textLabel = [(UITableViewCell *)self _textLabel];
  [_textLabel setHighlightedTextColor:v4];
}

- (UIColor)selectedTextColor
{
  _textLabel = [(UITableViewCell *)self _textLabel];
  highlightedTextColor = [_textLabel highlightedTextColor];

  return highlightedTextColor;
}

- (void)setImage:(UIImage *)image
{
  v4 = image;
  _imageView = [(UITableViewCell *)self _imageView];
  [_imageView setImage:v4];
}

- (UIImage)image
{
  _imageView = [(UITableViewCell *)self _imageView];
  image = [_imageView image];

  return image;
}

- (void)setSelectedImage:(UIImage *)selectedImage
{
  v4 = selectedImage;
  _imageView = [(UITableViewCell *)self _imageView];
  [_imageView setHighlightedImage:v4];
}

- (UIImage)selectedImage
{
  _imageView = [(UITableViewCell *)self _imageView];
  highlightedImage = [_imageView highlightedImage];

  return highlightedImage;
}

- (void)_setBadgeText:(id)text
{
  textCopy = text;
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    _badgeText = [(UITableViewCell *)self _badgeText];
    v5 = textCopy;
    v6 = _badgeText;
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
    _badgeText2 = [(UITableViewCell *)self _badgeText];
    v13 = v11 ^ ([_badgeText2 length] != 0);

    v14 = *(&self->_tableCellFlags + 1);
    if (v5)
    {
      *(&self->_tableCellFlags + 1) = v14 | 0x20000000;
      _badge = [(UITableViewCell *)self _badge];
      v16 = _badge;
      if (_badge)
      {
        [*(_badge + 416) setText:v5];
      }
    }

    else
    {
      *(&self->_tableCellFlags + 1) = v14 & 0xFFFFFFFFDFFFFFFFLL;
    }

    if (v13)
    {
      _accessoryManager = [(UITableViewCell *)self _accessoryManager];
      [_accessoryManager setNeedsLayout];
    }

    else
    {
      [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
    }
  }

  else
  {
    _badge2 = [(UITableViewCell *)self _badge];
    v10 = _badge2;
    if (_badge2)
    {
      [*(_badge2 + 416) setText:textCopy];
    }

    [self->_badge setNeedsDisplay];
    [(UIView *)self setNeedsLayout];
  }

LABEL_20:
}

- (void)_setBadgeFont:(id)font
{
  fontCopy = font;
  _badge = [(UITableViewCell *)self _badge];
  [(_UITableViewCellBadge *)_badge setFont:fontCopy];

  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    _accessoryManager = [(UITableViewCell *)self _accessoryManager];
    [_accessoryManager setNeedsLayout];
  }

  else
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (id)_badgeFont
{
  _badge = [(UITableViewCell *)self _badge];
  font = [(_UITableViewCellBadge *)_badge font];

  return font;
}

- (void)_setBadgeColor:(id)color
{
  colorCopy = color;
  _badge = [(UITableViewCell *)self _badge];
  [(_UITableViewCellBadge *)_badge setColor:colorCopy];
}

- (id)_badgeColor
{
  _badge = [(UITableViewCell *)self _badge];
  color = [(_UITableViewCellBadge *)_badge color];

  return color;
}

- (void)_setBadgeBackgroundColor:(id)color
{
  colorCopy = color;
  _badge = [(UITableViewCell *)self _badge];
  [_badge setBackgroundColor:colorCopy];
}

- (id)_badgeBackgroundColor
{
  _badge = [(UITableViewCell *)self _badge];
  backgroundColor = [_badge backgroundColor];

  return backgroundColor;
}

- (void)_setContentView:(id)view
{
  viewCopy = view;
  v6 = viewCopy;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v9 = viewCopy;
    if (contentView)
    {
      [(UITableViewCell *)self _clearChangeHandlersForOldContentView:?];
      [(UIView *)self->_contentView _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges:0];
      [(UIView *)self->_contentView removeFromSuperview];
    }

    longPressGesture = self->_longPressGesture;
    self->_longPressGesture = 0;

    objc_storeStrong(&self->_contentView, view);
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

- (void)_clearChangeHandlersForOldContentView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    [viewCopy _setPreferredSeparatorInsetsDidChangeHandler:0];
  }

  else if (objc_opt_respondsToSelector())
  {
    [viewCopy _setPrimaryTextFrameDidChangeHandler:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [viewCopy _setPopupMenuButtonDidChangeHandler:0];
    [(UITableViewCell *)self _setPopupMenuButton:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [viewCopy _setContainerBackgroundViewDidChangeHandler:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [viewCopy _setDefaultListContentConfigurationProvider:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [viewCopy _containerViewIsHiddenForReuse:0];
  }
}

- (void)_setupChangeHandlersForNewContentView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v5 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__UITableViewCell__setupChangeHandlersForNewContentView___block_invoke;
    v17[3] = &unk_1E70F5A28;
    objc_copyWeak(&v18, &location);
    [viewCopy _setPreferredSeparatorInsetsDidChangeHandler:v17];
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
    [viewCopy _setPrimaryTextFrameDidChangeHandler:v15];
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
    [viewCopy _setPopupMenuButtonDidChangeHandler:v13];
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
    [viewCopy _setContainerBackgroundViewDidChangeHandler:v11];
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
    [viewCopy _setDefaultListContentConfigurationProvider:&v6];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  if (objc_opt_respondsToSelector())
  {
    [viewCopy _containerViewIsHiddenForReuse:{(*(&self->_tableCellFlags + 1) & 0x8000000000000) == 0, v6, v7, v8, v9}];
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

- (void)_applyContentViewConfiguration:(id)configuration withState:(id)state usingSPI:(BOOL)i
{
  iCopy = i;
  configurationCopy = configuration;
  stateCopy = state;
  configurationState = stateCopy;
  v12 = *(&self->_tableCellFlags + 1);
  if (configurationCopy)
  {
    if ((v12 & 0x400000000000) != 0 && !self->_contentViewConfigurationProvider)
    {
      if (!stateCopy)
      {
        configurationState = [(UITableViewCell *)self configurationState];
      }

      v35 = configurationState;
      if (iCopy)
      {
        _viewConfigurationState = [(UITableViewCell *)self _viewConfigurationState];
        traitCollection = [(UIView *)self traitCollection];
        v13 = [configurationCopy updatedConfigurationForState:_viewConfigurationState traitCollection:traitCollection];
      }

      else
      {
        v13 = [configurationCopy updatedConfigurationForState:configurationState];
      }

      if (!v13)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:2494 description:{@"Updated configuration was nil for configuration: %@", configurationCopy}];
      }

      configurationState = v35;
    }

    else
    {
      v13 = configurationCopy;
    }

    v34 = configurationState;
    if ((v12 & 0x4000000000) == 0)
    {
      *(&self->_tableCellFlags + 1) |= 0x4000000000uLL;
      [(UITableViewCell *)self _resetContentViews];
      if (!iCopy)
      {
LABEL_44:
        makeContentView = [v13 makeContentView];
        objc_storeStrong(&self->_viewForContentConfiguration, makeContentView);
        if (objc_opt_respondsToSelector())
        {
          _wrappedContentView = [(_UIContentViewInternal *)self->_viewForContentConfiguration _wrappedContentView];

          makeContentView = _wrappedContentView;
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
      configuration = [v16 configuration];

      v16 = configuration;
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
      if (!iCopy)
      {
        configuration2 = [(_UIContentViewInternal *)self->_viewForContentConfiguration configuration];
        UIContentConfigurationAlertForReplacedContentView(@"cell", self, configuration2, v15, @"Use separate reuse identifiers for different types of cells to avoid this.");

        [(UITableViewCell *)self _resetContentViews];
        goto LABEL_44;
      }

      [(UITableViewCell *)self _resetContentViews];
LABEL_40:
      makeContentView = [v13 createContentView];
LABEL_46:
      if (!makeContentView)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:2529 description:{@"Content configuration returned a nil content view: %@", v13}];
      }

      if (([makeContentView translatesAutoresizingMaskIntoConstraints] & 1) == 0)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:2530 description:{@"The content view returned from the content configuration must have translatesAutoresizingMaskIntoConstraints enabled: %@", makeContentView}];
      }

      [(UITableViewCell *)self _setContentView:makeContentView];

      goto LABEL_51;
    }

    if (iCopy)
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

    v34 = stateCopy;
    [(UITableViewCell *)self _setContentView:0];
    v13 = self->_viewForContentConfiguration;
    self->_viewForContentConfiguration = 0;
  }

LABEL_51:

  configurationState = v34;
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

- (void)_setContentViewConfigurationProvider:(id)provider
{
  if (self->_contentViewConfigurationProvider != provider)
  {
    if (provider)
    {
      *(&self->_tableCellFlags + 1) &= ~0x400000000000uLL;
    }

    v4 = [provider copy];
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

- (void)_updateContentViewConfigurationForState:(id)state
{
  stateCopy = state;
  contentViewConfigurationProvider = self->_contentViewConfigurationProvider;
  if (contentViewConfigurationProvider)
  {
    v11 = stateCopy;
    contentConfiguration = contentViewConfigurationProvider[2](contentViewConfigurationProvider, [(UITableViewCell *)self _viewConfigurationState]);
    [(UITableViewCell *)self _setContentViewConfiguration:contentConfiguration];
LABEL_3:

    stateCopy = v11;
    goto LABEL_4;
  }

  if ((*(&self->_tableCellFlags + 13) & 0x40) != 0)
  {
    v11 = stateCopy;
    if (self->_viewForContentConfiguration)
    {
      contentConfiguration = [(UITableViewCell *)self contentConfiguration];
      if (!contentConfiguration)
      {
        goto LABEL_3;
      }

      selfCopy2 = self;
      v8 = contentConfiguration;
      v9 = v11;
      v10 = 0;
    }

    else
    {
      contentConfiguration = [(UITableViewCell *)self _contentViewConfiguration];
      if (!contentConfiguration)
      {
        goto LABEL_3;
      }

      selfCopy2 = self;
      v8 = contentConfiguration;
      v9 = v11;
      v10 = 1;
    }

    [(UITableViewCell *)selfCopy2 _applyContentViewConfiguration:v8 withState:v9 usingSPI:v10];
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
      _usingBackgroundConfigurationOrDefaultBackgroundConfiguration = [(UITableViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration];
      v6 = v9;
      if (!_usingBackgroundConfigurationOrDefaultBackgroundConfiguration)
      {
        [(UITableViewCell *)self _setupBackgroundView];
        v6 = v9;
      }
    }
  }
}

- (void)setSelectedBackgroundView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  viewCopy2 = view;
  v8 = viewCopy2;
  if (self->_selectedBackgroundView != viewCopy2)
  {
    if (viewCopy2)
    {
      [(UITableViewCell *)self _resetBackgroundViewConfiguration];
    }

    p_tableCellFlags = &self->_tableCellFlags;
    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFDFFFFFFFFFFLL | (((v8 | *(&self->_tableCellFlags + 1) & 0x20000000000) != 0) << 41);
    selectedBackgroundView = self->_selectedBackgroundView;
    if (animatedCopy)
    {
      v11 = selectedBackgroundView;
    }

    else
    {
      [(UIView *)selectedBackgroundView removeFromSuperview];
      v11 = 0;
    }

    objc_storeStrong(&self->_selectedBackgroundView, viewCopy);
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
      _tableView = [(UITableViewCell *)self _tableView];
      v16 = ([_tableView allowsMultipleSelection] & 1) == 0 || (multipleSelectionBackgroundView = self->_multipleSelectionBackgroundView) == 0 || multipleSelectionBackgroundView == self->_selectedBackgroundView;

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
              if (!animatedCopy)
              {
                goto LABEL_26;
              }

              goto LABEL_40;
            }

            [UIView insertSubview:"insertSubview:aboveSubview:" aboveSubview:?];
          }

          if (!animatedCopy)
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
          selfCopy = self;
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

    viewCopy = [(UITableViewCell *)self _tableView];
    if (![viewCopy allowsMultipleSelectionDuringEditing] || (*(&self->_tableCellFlags + 12) & 4) != 0)
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

- (void)_forSpringBoardSetDefaultSelectedBackgroundView:(id)view
{
  viewCopy = view;
  if (viewCopy && !self->_selectedBackgroundView)
  {
    v13 = viewCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v13;
      effect = [v5 effect];
      v7 = [[UIVisualEffectView alloc] initWithEffect:effect];
      contentView = [v5 contentView];
      backgroundColor = [contentView backgroundColor];

      if (backgroundColor)
      {
        contentView2 = [(UIVisualEffectView *)v7 contentView];
        [contentView2 setBackgroundColor:backgroundColor];
      }
    }

    else
    {
      v11 = [UIView alloc];
      v7 = [(UIView *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    backgroundColor2 = [v13 backgroundColor];
    [(UIView *)v7 setBackgroundColor:backgroundColor2];

    [(UITableViewCell *)self setSelectedBackgroundView:v7];
    viewCopy = v13;
  }
}

- (void)setMultipleSelectionBackgroundView:(UIView *)multipleSelectionBackgroundView
{
  _tableView = multipleSelectionBackgroundView;
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
    objc_storeStrong(&self->_multipleSelectionBackgroundView, _tableView);
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

      _tableView = [(UITableViewCell *)self _tableView];
      if ([_tableView allowsMultipleSelectionDuringEditing] && (*(&self->_tableCellFlags + 12) & 4) == 0)
      {

        goto LABEL_14;
      }

      if (*(&self->_tableCellFlags + 1))
      {

        goto LABEL_19;
      }
    }

    _tableView2 = [(UITableViewCell *)self _tableView];
    allowsMultipleSelection = [_tableView2 allowsMultipleSelection];

    if ((v7 & 0x100) != 0)
    {

      if ((allowsMultipleSelection & 1) == 0)
      {
LABEL_19:
        [(UIView *)self->_multipleSelectionBackgroundView removeFromSuperview];
LABEL_20:
        v5 = v11;
        goto LABEL_21;
      }
    }

    else if (!allowsMultipleSelection)
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

- (void)setSeparatorStyle:(int64_t)style
{
  tableCellFlags = self->_tableCellFlags;
  if (((tableCellFlags >> 1) & 7) != style)
  {
    *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFFFFFFFFFF1 | (2 * (style & 7));
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_setDefaultBackgroundColor:(id)color
{
  colorCopy = color;
  if ((*(&self->_tableCellFlags + 7) & 0x10) == 0 && ![(UITableViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
  {
    backgroundColor = [(UITableViewCell *)self backgroundColor];
    v6 = colorCopy;
    v7 = v6;
    if (backgroundColor == v6)
    {
    }

    else
    {
      if (v6 && backgroundColor)
      {
        v8 = [backgroundColor isEqual:v6];

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

- (void)setSeparatorColor:(id)color
{
  colorCopy = color;
  if (self->_separatorColor != colorCopy)
  {
    v10 = colorCopy;
    objc_storeStrong(&self->_separatorColor, color);
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

      colorCopy = v10;
      if (v8)
      {
        goto LABEL_7;
      }

      [(UITableViewCell *)self _setSeparatorDrawsInVibrantLightModeUIAppearance:MEMORY[0x1E695E110]];
    }

    colorCopy = v10;
  }

LABEL_7:
}

- (void)setSectionBorderColor:(id)color
{
  colorCopy = color;
  if (self->_sectionBorderColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_sectionBorderColor, color);
    colorCopy = v6;
  }
}

- (void)setReuseIdentifier:(id)identifier
{
  if (self->_reuseIdentifier != identifier)
  {
    v4 = [identifier copy];
    reuseIdentifier = self->_reuseIdentifier;
    self->_reuseIdentifier = v4;
  }
}

- (void)_notifyIsDisplaying:(BOOL)displaying
{
  v3 = *(&self->_tableCellFlags + 1);
  if (((((v3 & 0x8000000000000) == 0) ^ displaying) & 1) == 0)
  {
    displayingCopy = displaying;
    v6 = 0x8000000000000;
    if (!displaying)
    {
      v6 = 0;
    }

    *(&self->_tableCellFlags + 1) = v3 & 0xFFF7FFFFFFFFFFFFLL | v6;
    if (objc_opt_respondsToSelector())
    {
      contentView = self->_contentView;

      [(UIView *)contentView _containerViewIsHiddenForReuse:!displayingCopy];
    }
  }
}

- (void)_saveOpaqueViewState:(id)state
{
  v18 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if ([(UITableViewCell *)self _changesOpaqueStateOfSubviews])
  {
    if ([(UITableViewCell *)self _shouldChangeOpaqueStateOfView:stateCopy])
    {
      v5 = objc_alloc_init(UITableViewCellUnhighlightedState);
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && ((*&self->_tableCellFlags & 0x7100) != 0x3100 || self->_multipleSelectionBackgroundView))
        {
          [(UITableViewCellUnhighlightedState *)v5 setHighlighted:[(UIView *)stateCopy isHighlighted]];
        }
      }

      [(UITableViewCellUnhighlightedState *)v5 setOpaque:[(UIView *)stateCopy isOpaque]];
      backgroundColor = [(UIView *)stateCopy backgroundColor];
      [(UITableViewCellUnhighlightedState *)v5 setBackgroundColor:backgroundColor];

      unhighlightedStates = self->_unhighlightedStates;
      if (!unhighlightedStates)
      {
        self->_unhighlightedStates = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
        [(UIView *)self _setMonitorsSubtree:1];
        unhighlightedStates = self->_unhighlightedStates;
      }

      CFDictionaryAddValue(unhighlightedStates, stateCopy, v5);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && self->_selectedBackgroundView != stateCopy)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      subviews = [(UIView *)stateCopy subviews];
      v9 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
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
              objc_enumerationMutation(subviews);
            }

            [(UITableViewCell *)self _saveOpaqueViewState:*(*(&v13 + 1) + 8 * v12++)];
          }

          while (v10 != v12);
          v10 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)_clearOpaqueViewState:(id)state
{
  stateCopy = state;
  unhighlightedStates = self->_unhighlightedStates;
  if (unhighlightedStates)
  {
    key = stateCopy;
    v6 = CFDictionaryGetValue(unhighlightedStates, stateCopy);
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

      backgroundColor = [v7 backgroundColor];
      [key setBackgroundColor:backgroundColor];

      CFDictionaryRemoveValue(self->_unhighlightedStates, key);
    }

    stateCopy = key;
  }
}

- (id)_multiselectBackgroundColor
{
  _constants = [(UITableViewCell *)self _constants];
  _tableView = [(UITableViewCell *)self _tableView];
  v5 = [_constants defaultMultiSelectBackgroundColorForCell:self inTableView:_tableView];

  return v5;
}

- (void)_setIgnoresMultipleSelectionDuringEditing:(BOOL)editing
{
  v3 = 0x400000000;
  if (!editing)
  {
    v3 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)_setOpaque:(BOOL)opaque forSubview:(id)subview
{
  opaqueCopy = opaque;
  v24 = *MEMORY[0x1E69E9840];
  subviewCopy = subview;
  if (![(UITableViewCell *)self _changesOpaqueStateOfSubviews])
  {
    goto LABEL_38;
  }

  if (opaqueCopy)
  {
    unhighlightedStates = self->_unhighlightedStates;
    if (!unhighlightedStates)
    {
      goto LABEL_38;
    }

    v8 = CFDictionaryGetValue(unhighlightedStates, subviewCopy);
    if (v8 && [(UITableViewCell *)self _shouldChangeOpaqueStateOfView:subviewCopy])
    {
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && ((*&self->_tableCellFlags & 0x7100) != 0x3100 || self->_multipleSelectionBackgroundView))
        {
          -[UIView setHighlighted:](subviewCopy, "setHighlighted:", [v8 highlighted]);
        }
      }

      -[UIView setOpaque:](subviewCopy, "setOpaque:", [v8 opaque]);
      backgroundColor = [v8 backgroundColor];
      [(UIView *)subviewCopy setBackgroundColor:backgroundColor];
    }

LABEL_27:

    goto LABEL_28;
  }

  if ([(UITableViewCell *)self _shouldChangeOpaqueStateOfView:subviewCopy])
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && ((*&self->_tableCellFlags & 0x7100) != 0x3100 || self->_multipleSelectionBackgroundView))
      {
        v10 = CFDictionaryGetValue(self->_unhighlightedStates, subviewCopy);
        v11 = v10;
        if (v10)
        {
          highlighted = [v10 highlighted];
        }

        else
        {
          highlighted = 0;
        }

        [(UIView *)subviewCopy setHighlighted:highlighted];
      }
    }

    if ((*&self->_tableCellFlags & 0x7100) == 0x3100 && !self->_multipleSelectionBackgroundView)
    {
      if (![(UIView *)subviewCopy isOpaque])
      {
        goto LABEL_28;
      }

      _multiselectBackgroundColor = [(UITableViewCell *)self _multiselectBackgroundColor];
    }

    else
    {
      [(UIView *)subviewCopy setOpaque:0];
      _multiselectBackgroundColor = +[UIColor clearColor];
    }

    v8 = _multiselectBackgroundColor;
    [(UIView *)subviewCopy setBackgroundColor:_multiselectBackgroundColor];
    goto LABEL_27;
  }

LABEL_28:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && self->_selectedBackgroundView != subviewCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    subviews = [(UIView *)subviewCopy subviews];
    v15 = [subviews countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(subviews);
          }

          [(UITableViewCell *)self _setOpaque:opaqueCopy forSubview:*(*(&v19 + 1) + 8 * i)];
        }

        v16 = [subviews countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }
  }

LABEL_38:
}

- (void)_setSelectionStyle:(int64_t)style selectionTintColor:(id)color
{
  colorCopy = color;
  tableCellFlags = self->_tableCellFlags;
  if (((tableCellFlags >> 4) & 7) != style || self->_selectionTintColor != colorCopy)
  {
    v16 = colorCopy;
    *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFFFFFFFFF8FLL | (16 * (style & 7));
    objc_storeStrong(&self->_selectionTintColor, color);
    selectionEffects = self->_selectionEffects;
    self->_selectionEffects = 0;

    [(UITableViewCell *)self _updateDefaultBackgroundAppearance];
    v10 = [(UITableViewCell *)self _selectedBackgroundView:0];
    v11 = v10;
    if (!style)
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
          selectionTintColor = [(UITableViewCell *)self selectionTintColor];
          [v11 setSelectionTintColor:selectionTintColor];
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
      if (!style)
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

    colorCopy = v16;
  }
}

- (void)_performCustomSelectionAction
{
  _effectivePopupMenuButton = [(UITableViewCell *)self _effectivePopupMenuButton];
  if (_effectivePopupMenuButton)
  {
    v3 = _effectivePopupMenuButton;
    [_effectivePopupMenuButton performPrimaryAction];
    _effectivePopupMenuButton = v3;
  }
}

- (void)_setShowingCompactContextMenu:(BOOL)menu
{
  if (((((*(&self->_tableCellFlags + 1) & 8) == 0) ^ menu) & 1) == 0)
  {
    menuCopy = menu;
    [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
    v5 = 2048;
    if (!menuCopy)
    {
      v5 = 0;
    }

    *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFFFFFFFF7FFLL | v5;

    [(UITableViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (CGRect)backgroundRectForBounds:(CGRect)bounds
{
  v4 = [(UITableViewCell *)self layoutManager:bounds.origin.x];
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

- (CGRect)contentRectForBounds:(CGRect)bounds
{
  v4 = [(UITableViewCell *)self layoutManager:bounds.origin.x];
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

- (CGRect)textRectForContentRect:(CGRect)rect
{
  v4 = [(UITableViewCell *)self layoutManager:rect.origin.x];
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

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  v4 = [(UITableViewCell *)self layoutManager:rect.origin.x];
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

- (CGRect)accessoryRectForBounds:(CGRect)bounds
{
  v4 = [(UITableViewCell *)self layoutManager:bounds.origin.x];
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

- (CGRect)reorderRectForBounds:(CGRect)bounds
{
  v4 = [(UITableViewCell *)self layoutManager:bounds.origin.x];
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

- (void)_setDragState:(int64_t)state
{
  if (self->_dragState != state)
  {
    self->_dragState = state;
    [(UITableViewCell *)self _updateUserInteractionEnabledForNewDragState:?];

    [(UITableViewCell *)self dragStateDidChange:state];
  }
}

- (void)dragStateDidChange:(UITableViewCellDragState)dragState
{
  if (dragState != UITableViewCellDragStateLifting)
  {
    if (dragState == UITableViewCellDragStateDragging)
    {
      constants = self->_constants;
      _tableView = [(UITableViewCell *)self _tableView];
      [(UITableConstants *)constants defaultAlphaForDraggingCell:self inTableView:_tableView];
      [(UIView *)self setAlpha:?];
    }

    dragState = UITableViewCellDragStateNone;
  }

  [(UITableViewCell *)self _setDragging:dragState];
}

- (void)_updateUserInteractionEnabledForNewDragState:(int64_t)state
{
  userInteractionEnabledWhileDragging = [(UITableViewCell *)self userInteractionEnabledWhileDragging];
  v6 = userInteractionEnabledWhileDragging;
  if (state == 2)
  {
    if ((*(&self->_tableCellFlags + 11) & 3) == 0)
    {
      isUserInteractionEnabled = [(UIView *)self isUserInteractionEnabled];
      v9 = 0x1000000;
      if (isUserInteractionEnabled)
      {
        v9 = 0x2000000;
      }

      *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFCFFFFFFLL | v9;

      [(UITableViewCell *)self setUserInteractionEnabled:v6];
    }
  }

  else if (!state)
  {
    v7 = *(&self->_tableCellFlags + 1);
    if ((v7 & 0x3000000) == 0x2000000 && !userInteractionEnabledWhileDragging || (v7 & 0x3000000) == 0x1000000 && userInteractionEnabledWhileDragging)
    {
      [(UITableViewCell *)self setUserInteractionEnabled:?];
      v7 = *(&self->_tableCellFlags + 1);
    }

    *(&self->_tableCellFlags + 1) = v7 & 0xFFFFFFFFFCFFFFFFLL;
  }
}

- (void)_setDropState:(int64_t)state
{
  if (self->_dropState != state)
  {
    [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
    self->_dropState = state;

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

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  isUserInteractionEnabled = [(UIView *)self isUserInteractionEnabled];
  if (isUserInteractionEnabled != enabledCopy)
  {
    [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
  }

  v6.receiver = self;
  v6.super_class = UITableViewCell;
  [(UIView *)&v6 setUserInteractionEnabled:enabledCopy];
  if (isUserInteractionEnabled != [(UIView *)self isUserInteractionEnabled])
  {
    [(UITableViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_updateShowingSelectedBackground
{
  if (self->_selectedBackgroundView || self->_multipleSelectionBackgroundView)
  {
    _shouldUseHighlightedOrSelectedAppearance = [(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance];

    [(UITableViewCell *)self showSelectedBackgroundView:_shouldUseHighlightedOrSelectedAppearance animated:0];
  }

  else
  {

    [(UITableViewCell *)self _updateCellForCurrentBackgroundConfiguration];
  }
}

- (void)showSelectedBackgroundView:(BOOL)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  p_tableCellFlags = &self->_tableCellFlags;
  if ((*&self->_tableCellFlags & 0x100) != 0)
  {
    if ((*&self->_tableCellFlags & 0x7000) == 0x3000)
    {
      v8 = 1;
    }

    else
    {
      _tableView = [(UITableViewCell *)self _tableView];
      if ([_tableView allowsMultipleSelectionDuringEditing])
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
  if (viewCopy && v10)
  {
    if (objc_opt_respondsToSelector())
    {
      [v11 setMultiselect:v8];
      _multiselectBackgroundColor = [(UITableViewCell *)self _multiselectBackgroundColor];
      [v11 setMultiselectBackgroundColor:_multiselectBackgroundColor];
    }

    [(UIView *)self insertSubview:v11 atIndex:0];
    if (!v8)
    {
      [(UITableViewCell *)self _applySelectedStateToSeparators:1];
      _tableView2 = [(UITableViewCell *)self _tableView];
      [_tableView2 _cellDidShowSelectedBackground:self];
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

    if (animatedCopy)
    {
      goto LABEL_21;
    }
  }

  else
  {
    [(UITableViewCell *)self _applySelectedStateToSeparators:0];
    _tableView3 = [(UITableViewCell *)self _tableView];
    [_tableView3 _cellDidHideSelectedBackground:self];

    if (animatedCopy)
    {
LABEL_21:
      [v11 setAlpha:!viewCopy];
      [(UITableViewCell *)self _layoutSystemBackgroundView:1];
      [(UITableViewCell *)self selectionFadeDuration];
      v18 = v17;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __55__UITableViewCell_showSelectedBackgroundView_animated___block_invoke;
      v26[3] = &unk_1E70F5AF0;
      v29 = viewCopy;
      v27 = v11;
      selfCopy = self;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __55__UITableViewCell_showSelectedBackgroundView_animated___block_invoke_2;
      v24[3] = &unk_1E70FA0F0;
      v25 = viewCopy;
      v24[4] = self;
      [UIView animateWithDuration:0 delay:v26 options:v24 animations:v18 completion:0.0];
      *p_tableCellFlags |= 0x800000000000000uLL;
      if (viewCopy)
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

  if (viewCopy)
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
      traitCollection = [(UIView *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 3)
      {
        [(UITableViewCell *)self _updateDefaultLabelsForFocus:v5];
        [(UITableViewCell *)self _updateDefaultAccessoryViewForFocus:v5];
      }

      goto LABEL_16;
    }
  }
}

- (void)_performConfigurationStateModifications:(id)modifications
{
  p_tableCellFlags = &self->_tableCellFlags;
  v4 = *(&self->_tableCellFlags + 1);
  *(&self->_tableCellFlags + 1) = v4 | 0x20000000000000;
  (*(modifications + 2))(modifications, a2);
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
          _focusBehavior = [(UIView *)self _focusBehavior];
          v17 = [UIFocusRingManager focusRingAvailableInBehavior:_focusBehavior];

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

    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [currentRunLoop addTimer:self->_deselectTimer forMode:*MEMORY[0x1E695DA28]];
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

  selfCopy = self;
  selectedBackgroundView = self->_selectedBackgroundView;
  if (selectedBackgroundView)
  {
    if (![(UIView *)selectedBackgroundView isHidden])
    {
      [(UIView *)selfCopy->_selectedBackgroundView alpha];
      LOBYTE(selfCopy) = v8 > 0.0;
      return selfCopy;
    }

    goto LABEL_4;
  }

  if (![(UITableViewCell *)selfCopy isHighlighted]&& ![(UITableViewCell *)selfCopy isSelected]&& ![(UIView *)selfCopy isFocused])
  {
LABEL_4:
    LOBYTE(selfCopy) = 0;
    return selfCopy;
  }

  configuration = [(_UISystemBackgroundView *)selfCopy->_systemBackgroundView configuration];
  v5 = configuration;
  if (configuration && [configuration _hasBackgroundFill])
  {
    lastNormalBackgroundViewConfiguration = selfCopy->_lastNormalBackgroundViewConfiguration;
    tintColor = [(UIView *)selfCopy tintColor];
    LODWORD(selfCopy) = [v5 _backgroundFillIsEqual:lastNormalBackgroundViewConfiguration withTintColor:tintColor] ^ 1;
  }

  else
  {
    LOBYTE(selfCopy) = 0;
  }

  return selfCopy;
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

- (void)_setSelectionGrouping:(int)grouping
{
  tableCellFlags = self->_tableCellFlags;
  if (((tableCellFlags >> 27) & 7) != grouping)
  {
    *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFFFC7FFFFFFLL | ((grouping & 7) << 27);
    configuration = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
    if (configuration)
    {
      v7 = configuration;
      [(UITableViewCell *)self _applyBackgroundViewConfiguration:configuration withState:0];
      configuration = v7;
    }
  }
}

- (void)_applyBackgroundViewConfiguration:(id)configuration withState:(id)state
{
  configurationCopy = configuration;
  stateCopy = state;
  v9 = stateCopy;
  systemBackgroundView = self->_systemBackgroundView;
  if (configurationCopy)
  {
    if ((*(&self->_tableCellFlags + 13) & 0x80) != 0 && !self->_backgroundViewConfigurationProvider)
    {
      if (!stateCopy)
      {
        configurationState = [(UITableViewCell *)self configurationState];
        v9 = [(UITableViewCell *)self _stateForUpdatingBackgroundConfigurationWithState:configurationState];
      }

      v24 = [configurationCopy _updatedConfigurationForState:v9];
      if (!v24)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:3765 description:{@"Updated configuration was nil for configuration: %@", configurationCopy}];
      }
    }

    else
    {
      v24 = configurationCopy;
    }
  }

  else
  {
    v24 = 0;
  }

  [v24 __setMaskedCorners:{-[UITableViewCell _maskedCornersForSystemBackgroundView](self, "_maskedCornersForSystemBackgroundView")}];
  if (configurationCopy)
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
      contentView = [(_UIFloatingContentView *)self->_floatingContentView contentView];
      v15 = contentView;
      if (contentView)
      {
        selfCopy = contentView;
      }

      else
      {
        selfCopy = self;
      }

      v17 = selfCopy;

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
    _focusBehavior = [(UIView *)self _focusBehavior];
    v22 = [UIFocusRingManager focusRingAvailableInBehavior:_focusBehavior];

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

- (void)_setBackgroundViewConfigurationProvider:(id)provider
{
  v3 = *(&self->_tableCellFlags + 1) & 0xFFFFF7FFFFFFFFFFLL | (((provider | *(&self->_tableCellFlags + 1) & 0x80000000000) != 0) << 43);
  *(&self->_tableCellFlags + 1) = v3;
  if (self->_backgroundViewConfigurationProvider != provider)
  {
    if (provider)
    {
      *(&self->_tableCellFlags + 1) = v3 & 0xFFFF7FFFFFFFFFFFLL;
    }

    providerCopy = provider;
    v6 = [providerCopy copy];
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

- (id)_stateForUpdatingBackgroundConfigurationWithState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if ((*&self->_tableCellFlags & 0x70) == 0)
  {
    v6 = [stateCopy copy];

    [v6 setHighlighted:0];
    [v6 setSelected:0];
    v5 = v6;
  }

  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 3 && (v8 = (*&self->_tableCellFlags >> 4) & 7, v8 != 1))
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

- (void)_updateBackgroundViewConfigurationForState:(id)state
{
  v4 = [(UITableViewCell *)self _stateForUpdatingBackgroundConfigurationWithState:state];
  backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
  if (backgroundViewConfigurationProvider)
  {
    v7 = v4;
    configuration = backgroundViewConfigurationProvider[2](backgroundViewConfigurationProvider, [(UITableViewCell *)self _viewConfigurationState]);
LABEL_3:
    [(UITableViewCell *)self _applyBackgroundViewConfiguration:configuration withState:v7];
LABEL_4:

    v4 = v7;
    goto LABEL_5;
  }

  if ((*(&self->_tableCellFlags + 13) & 0x80) != 0)
  {
    v7 = v4;
    configuration = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
    if (!configuration)
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

- (void)_layoutSystemBackgroundView:(BOOL)view
{
  systemBackgroundView = self->_systemBackgroundView;
  if (systemBackgroundView)
  {
    [(_UISystemBackgroundView *)systemBackgroundView frameInContainerView:self];
    [(_UISystemBackgroundView *)self->_systemBackgroundView setFrame:?];
    if (view || +[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v6 = self->_systemBackgroundView;

      [(UIView *)v6 layoutIfNeeded];
    }
  }
}

- (void)_updateSystemTypeAccessoryView:(id)view withTableViewAccessoryType:(int64_t)type forState:(id)state
{
  viewCopy = view;
  stateCopy = state;
  if (type > 3)
  {
    if ((type - 5) < 4)
    {
      v9 = 6;
LABEL_9:
      v10 = viewCopy;
      goto LABEL_10;
    }

    v10 = viewCopy;
    if (type == 4)
    {
      v9 = 9;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if ((type - 1) < 2)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (!type)
  {
    goto LABEL_11;
  }

  v10 = viewCopy;
  if (type != 3)
  {
LABEL_16:
    v9 = -1;
    goto LABEL_10;
  }

  v9 = 1;
LABEL_10:
  [(UITableViewCell *)self _updateSystemTypeAccessoryView:v10 withCellAccessoryType:v9 forState:stateCopy];
LABEL_11:
}

- (void)_updateSystemTypeAccessoryView:(id)view withCellAccessoryType:(int64_t)type forState:(id)state
{
  viewCopy = view;
  stateCopy = state;
  traitCollection = [(UIView *)self traitCollection];
  LODWORD(v10) = [traitCollection _hasSplitViewControllerContextSidebarColumn];

  _tableView = [(UITableViewCell *)self _tableView];
  _accessoryBaseColor = [_tableView _accessoryBaseColor];

  if (_accessoryBaseColor)
  {
    v10 = v10;
  }

  else
  {
    constants = self->_constants;
    v10 = v10;
    traitCollection2 = [(UIView *)self traitCollection];
    tintColor = [(UIView *)self tintColor];
    _accessoryBaseColor = [(UITableConstants *)constants defaultAccessoryTintColorForAccessorySystemType:type header:0 sidebarStyle:v10 cellConfigurationState:stateCopy traitCollection:traitCollection2 inheritedTintColor:tintColor];
  }

  v16 = self->_constants;
  traitCollection3 = [(UIView *)self traitCollection];
  v18 = [(UITableConstants *)v16 defaultAccessoryBackgroundColorForAccessorySystemType:type header:0 sidebarStyle:v10 cellConfigurationState:stateCopy traitCollection:traitCollection3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy setTintColor:_accessoryBaseColor];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
LABEL_5:
      [viewCopy setAccessoryTintColor:_accessoryBaseColor];
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = viewCopy;
      [v19 setAccessoryTintColor:_accessoryBaseColor];
      [v19 setAccessoryBackgroundColor:v18];
      [v19 _updateImageView];
    }
  }

LABEL_8:
}

- (void)_updateModernCellAccessoriesForState:(id)state isEditing:(BOOL)editing
{
  editingCopy = editing;
  v33 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v6 = &_UITableCellAccessoryConfigurationIdentifierEditing;
  v26 = editingCopy;
  if (!editingCopy)
  {
    v6 = &_UITableCellAccessoryConfigurationIdentifierNormal;
  }

  v7 = *v6;
  _accessoryManager = [(UITableViewCell *)self _accessoryManager];
  configurations = [_accessoryManager configurations];
  v25 = v7;
  v10 = [configurations objectForKeyedSubscript:v7];

  leadingAccessories = [v10 leadingAccessories];
  v24 = v10;
  trailingAccessories = [v10 trailingAccessories];
  v23 = leadingAccessories;
  v12 = [leadingAccessories arrayByAddingObjectsFromArray:trailingAccessories];
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
        identifier = [v17 identifier];
        if (identifier == @"delete")
        {
          v19 = 2;
        }

        else if (identifier == @"insert")
        {
          v19 = 3;
        }

        else if (identifier == @"multiselect")
        {
          v19 = 5;
        }

        else if (identifier == @"checkmark")
        {
          v19 = 1;
        }

        else if (identifier == @"chevron")
        {
          v19 = 0;
        }

        else if (identifier == @"reorder")
        {
          v19 = 4;
        }

        else if (identifier == @"expand")
        {
          v19 = 6;
        }

        else
        {
          if (identifier != @"info")
          {

            v19 = [(UITableViewCell *)self _currentAccessoryTypeForEditing:v26];
            goto LABEL_26;
          }

          v19 = 9;
        }

LABEL_26:
        identifier2 = [v17 identifier];

        if (identifier2 != @"custom")
        {
          view = [v17 view];
          [(UITableViewCell *)self _updateSystemTypeAccessoryView:view withCellAccessoryType:v19 forState:stateCopy];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }
}

- (void)_updateCurrentSystemTypeAccessoryViewsUsingState:(id)state
{
  stateCopy = state;
  if ((*(&self->_tableCellFlags + 11) & 8) == 0)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v5;
      if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
      {
        [(UITableViewCell *)self _updateModernCellAccessoriesForState:stateCopy isEditing:v4 & 1];
      }

      else
      {
        v7 = [(UITableViewCell *)self _existingSystemAccessoryView:v4 & 1];
        [(UITableViewCell *)self _updateSystemTypeAccessoryView:v7 withTableViewAccessoryType:[(UITableViewCell *)self _currentAccessoryTypeForEditing:v4 & 1] forState:stateCopy];
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
  }
}

- (void)_updateConfigurationUsingState:(id)state
{
  [(UITableViewCell *)self _updateCurrentSystemTypeAccessoryViewsUsingState:state];
  if (objc_opt_respondsToSelector())
  {
    contentView = self->_contentView;

    [(UIView *)contentView _defaultListContentConfigurationMayHaveChanged];
  }
}

- (void)setLayoutManager:(id)manager
{
  managerCopy = manager;
  if (self->_layoutManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_layoutManager, manager);
    if ([objc_opt_class() requiresLegacyLayout])
    {
      [(UITableViewCell *)self _setUsesModernAccessoriesLayout:0];
    }

    else
    {
      [(UITableViewCell *)self _setupModernAccessoriesLayout];
    }

    managerCopy = v6;
  }
}

- (void)setEditingStyle:(int64_t)style
{
  tableCellFlags = self->_tableCellFlags;
  if (((tableCellFlags >> 12) & 7) != style)
  {
    *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFFFFFFF8FFFLL | ((style & 7) << 12);
    if ((tableCellFlags & 0x100) != 0)
    {
      [(UITableViewCell *)self removeEditingData];
      [(UITableViewCell *)self setEditing:(*&self->_tableCellFlags >> 8) & 1 animated:0];
    }

    [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
  }
}

- (void)_setShowsReorderControl:(BOOL)control
{
  if (((((*(&self->_tableCellFlags + 2) & 0x20) == 0) ^ control) & 1) == 0)
  {
    controlCopy = control;
    currentStateMask = [(UITableViewCell *)self currentStateMask];
    v6 = !controlCopy;
    v7 = 0x200000;
    if (!controlCopy)
    {
      v7 = 0;
    }

    v8 = currentStateMask & 0xFFFFFFFFBFFFFFFFLL;
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

- (BOOL)_updateExpansionButtonFromType:(int64_t)type toType:(int64_t)toType
{
  v26 = *MEMORY[0x1E69E9840];
  _accessoryManager = [(UITableViewCell *)self _accessoryManager];
  configurations = [_accessoryManager configurations];
  v7 = [configurations objectForKeyedSubscript:0x1EFB35F50];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  trailingAccessories = [v7 trailingAccessories];
  v9 = [trailingAccessories countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(trailingAccessories);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      identifier = [v13 identifier];
      v15 = [identifier isEqualToString:@"expand"];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [trailingAccessories countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    view = [v13 view];

    if (view && (((toType - 5) | (type - 5)) < 2 || ((toType - 7) | (type - 7)) <= 1))
    {
      [UITableViewCell _updateExpansionButton:"_updateExpansionButton:forType:animated:" forType:view animated:?];
      v17 = 1;
      goto LABEL_15;
    }
  }

  else
  {
LABEL_9:

    view = 0;
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
          accessoryButton = [(UIControl *)self->_accessoryView accessoryButton];
          [(UITableViewCell *)self _updateExpansionButton:accessoryButton forType:accessoryType animated:(*&self->_tableCellFlags & 0x2000000000000000) == 0];
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

    isEditing = [(UITableViewCell *)self isEditing];
    v6 = v9;
    if (!isEditing)
    {
      [(UIView *)self setNeedsLayout];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)_setAccessoryTintColor:(id)color
{
  colorCopy = color;
  if (self->_accessoryTintColor != colorCopy)
  {
    v6 = (*&self->_tableCellFlags >> 15) & 7;
    v7 = colorCopy;
    [(UITableViewCell *)self setAccessoryType:0];
    objc_storeStrong(&self->_accessoryTintColor, color);
    [(UITableViewCell *)self setAccessoryType:v6];
    colorCopy = v7;
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

- (void)_setIndentationWidth:(double)width
{
  if (self->_indentationWidth != width)
  {
    self->_indentationWidth = width;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setEditing:(BOOL)editing animated:(BOOL)animated cellOrAncestorViewForAnimatedLayout:(id)layout
{
  animatedCopy = animated;
  editingCopy = editing;
  layoutCopy = layout;
  p_tableCellFlags = &self->_tableCellFlags;
  if (((((*(&self->_tableCellFlags + 1) & 1) == 0) ^ editingCopy) & 1) == 0)
  {
    v10 = @"normal";
    v11 = (*p_tableCellFlags << 9) & 0x40000000;
    if (editingCopy)
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
    _accessoryManager = [(UITableViewCell *)self _accessoryManager];
    [_accessoryManager setCurrentConfigurationIdentifier:v10];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__UITableViewCell__setEditing_animated_cellOrAncestorViewForAnimatedLayout___block_invoke_2;
    aBlock[3] = &unk_1E70F5AF0;
    aBlock[4] = self;
    v19 = editingCopy;
    v18 = layoutCopy;
    v14 = _Block_copy(aBlock);
    v15 = v14;
    if (animatedCopy)
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

- (void)setShowingDeleteConfirmation:(BOOL)confirmation
{
  tableCellFlags = self->_tableCellFlags;
  if ((*&self->_tableCellFlags & 1) != confirmation)
  {
    if ((tableCellFlags & 0x100) != 0)
    {
      v4 = 2;
      if (!confirmation)
      {
        v4 = 0;
      }

      [(UITableViewCell *)self willTransitionToState:(v4 & 0xFFFFFFFFFFFFFFFELL | (tableCellFlags >> 41) & 1) ^ 1];
    }

    else
    {
      *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFFFFFFFFEFELL | confirmation;
      [(UIView *)self setNeedsLayout];
    }
  }
}

- (void)_setContainerView:(id)view
{
  viewCopy = view;
  _containerView = [(UITableViewCell *)self _containerView];
  if (_containerView != viewCopy)
  {
    if (_containerView)
    {
      [(UITableViewCell *)self frame];
      v6 = v5;
      v8 = v7;
      [_containerView frame];
      v10 = v9;
      v12 = v11;
      superview = [_containerView superview];
      [(UITableViewCell *)self _removeFromSuperviewIgnoringFirstResponder:1];
      [superview insertSubview:self aboveSubview:_containerView];
      [(UITableViewCell *)self _setFrame:1 skipLayout:v10, v12, v6, v8];
    }

    if (viewCopy)
    {
      [(UITableViewCell *)self frame];
      v15 = v14;
      v17 = v16;
      [viewCopy setFrame:?];
      [(UIView *)self _removePropertyAnimationsForLayerKeyPath:@"position"];
      [(UITableViewCell *)self _setFrame:1 skipLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v15, v17];
      superview2 = [viewCopy superview];

      if (!superview2)
      {
        superview3 = [(UIView *)self superview];
        [superview3 insertSubview:viewCopy aboveSubview:self];
      }

      [viewCopy addSubview:self];
    }
  }
}

- (void)_setDropAnimationContainerView:(id)view
{
  viewCopy = view;
  _containerView = [(UITableViewCell *)self _containerView];
  if (_containerView)
  {
    v6 = _containerView;
    _containerView2 = [(UITableViewCell *)self _containerView];
    _dropAnimationContainerView = [(UITableViewCell *)self _dropAnimationContainerView];

    if (_containerView2 != _dropAnimationContainerView)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:4977 description:@"UIKit inconsistency: Unable to add a drop animation container view while another container view is already present."];
    }
  }

  [(UITableViewCell *)self _setContainerView:viewCopy];
}

- (void)_setSwipeContainerView:(id)view
{
  viewCopy = view;
  _swipeContainerView = [(UITableViewCell *)self _swipeContainerView];
  if (_swipeContainerView != viewCopy)
  {
    v6 = viewCopy;
    if (viewCopy)
    {
      if (!_swipeContainerView)
      {
        _containerView = [(UITableViewCell *)self _containerView];

        v6 = viewCopy;
        if (_containerView)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          _containerView2 = [(UITableViewCell *)self _containerView];
          [currentHandler handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:4996 description:{@"UIKit inconsistency: Can't set a swipe container view when a different type of container view is already present: %@", _containerView2}];

          v6 = viewCopy;
        }
      }
    }

    [(UITableViewCell *)self _setContainerView:v6];
    [_swipeContainerView removeFromSuperview];
  }
}

- (void)_setFrame:(CGRect)frame skipLayout:(BOOL)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _dropAnimationContainerView = [(UITableViewCell *)self _dropAnimationContainerView];
  v11 = _dropAnimationContainerView;
  if (_dropAnimationContainerView)
  {
    [_dropAnimationContainerView setFrame:{x, y, width, height}];
    x = *MEMORY[0x1E695EFF8];
    y = *(MEMORY[0x1E695EFF8] + 8);
  }

  _swipeContainerView = [(UITableViewCell *)self _swipeContainerView];
  v13 = _swipeContainerView;
  if (_swipeContainerView)
  {
    [_swipeContainerView frame];
    [v13 setFrame:?];
    y = 0.0;
  }

  [(UITableViewCell *)self frame];
  v15 = v14;
  v17 = v16;
  v21.receiver = self;
  v21.super_class = UITableViewCell;
  [(UIView *)&v21 setFrame:x, y, width, height];
  if (!layout && (v15 != width || v17 != height))
  {
    *&self->_tableCellFlags |= 0x80000000000uLL;
    window = [(UIView *)self window];
    if (window)
    {
      v19 = window;
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

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  _dropAnimationContainerView = [(UITableViewCell *)self _dropAnimationContainerView];
  v7 = _dropAnimationContainerView;
  if (_dropAnimationContainerView)
  {
    [_dropAnimationContainerView setCenter:{x, y}];
  }

  else
  {
    _swipeContainerView = [(UITableViewCell *)self _swipeContainerView];
    v9 = _swipeContainerView;
    if (_swipeContainerView)
    {
      [_swipeContainerView center];
      [v9 setCenter:?];
      [v9 bounds];
      y = CGRectGetMidY(v11);
    }

    v10.receiver = self;
    v10.super_class = UITableViewCell;
    [(UIView *)&v10 setCenter:x, y];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)_setSkipsLayout:(BOOL)layout
{
  v3 = 0x100000;
  if (!layout)
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

- (void)_removeFromSuperviewIgnoringFirstResponder:(BOOL)responder
{
  if (responder || (*(&self->super._viewFlags + 1) & 0x80) == 0)
  {
    v3.receiver = self;
    v3.super_class = UITableViewCell;
    [(UIView *)&v3 removeFromSuperview];
  }
}

- (void)_updateCellMaskViewsForView:(id)view backdropView:(id)backdropView
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  backdropViewCopy = backdropView;
  if ([viewCopy _backdropMaskViewFlags])
  {
    [backdropViewCopy updateMaskViewsForView:viewCopy];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  subviews = [viewCopy subviews];
  v9 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [(UITableViewCell *)self _updateCellMaskViewsForView:*(*(&v13 + 1) + 8 * v12++) backdropView:backdropViewCopy];
      }

      while (v10 != v12);
      v10 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_setHiddenForReuse:(BOOL)reuse
{
  v7.receiver = self;
  v7.super_class = UITableViewCell;
  [(UIView *)&v7 _setHiddenForReuse:?];
  if (!reuse)
  {
    superview = [(UIView *)self superview];
    if (superview)
    {
      superview2 = superview;
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(UIView *)self layoutBelowIfNeeded];
          [(UITableViewCell *)self _updateCellMaskViewsForView:self backdropView:superview2];
        }

        superview2 = [superview2 superview];
      }

      while (superview2);
    }
  }
}

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [(UIControl *)self->_accessoryView removeTarget:WeakRetained action:0 forControlEvents:64];
  [(UIControl *)self->_editingAccessoryView removeTarget:WeakRetained action:0 forControlEvents:64];
  v6.receiver = self;
  v6.super_class = UITableViewCell;
  [(UIView *)&v6 willMoveToSuperview:superviewCopy];
}

- (void)_layoutFloatingContentView:(id)view
{
  if (self->_floatingContentView)
  {
    layoutManager = [(UITableViewCell *)self layoutManager];
    [layoutManager backgroundEndingRectForCell:self forNewEditingState:{-[UITableViewCell isEditing](self, "isEditing")}];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [(_UIFloatingContentView *)self->_floatingContentView setFrame:v6, v8, v10, v12];
    floatingContentView = self->_floatingContentView;

    [(UIView *)floatingContentView layoutIfNeeded];
  }
}

- (void)_updateFloatingContentControlStateInContext:(id)context withAnimationCoordinator:(id)coordinator animated:(BOOL)animated
{
  animatedCopy = animated;
  contextCopy = context;
  coordinatorCopy = coordinator;
  if (self->_floatingContentView)
  {
    if (contextCopy)
    {
      nextFocusedView = [contextCopy nextFocusedView];
      isFocused = nextFocusedView == self;
    }

    else
    {
      isFocused = [(UIView *)self isFocused];
    }

    if (isFocused)
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

    isHighlighted = [(UITableViewCell *)self isHighlighted];
    floatingContentView = self->_floatingContentView;
    v14 = v11 | isHighlighted;
    if (coordinatorCopy)
    {
      [(_UIFloatingContentView *)floatingContentView setControlState:v14 withAnimationCoordinator:coordinatorCopy];
    }

    else
    {
      [(_UIFloatingContentView *)floatingContentView setControlState:v14 animated:animatedCopy];
    }
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v7.receiver = self;
  v7.super_class = UITableViewCell;
  [(UIView *)&v7 setSemanticContentAttribute:?];
  [(UIView *)self->_contentView setSemanticContentAttribute:attribute];
  v5 = [(UITableViewCell *)self _existingSystemAccessoryView:0];
  [v5 setSemanticContentAttribute:attribute];

  v6 = [(UITableViewCell *)self _existingSystemAccessoryView:1];
  [v6 setSemanticContentAttribute:attribute];
}

- (void)_willTransitionToState:(unint64_t)state
{
  layoutManager = [(UITableViewCell *)self layoutManager];
  [layoutManager cell:self willTransitionToState:state];
}

- (void)_didTransitionToState:(unint64_t)state
{
  layoutManager = [(UITableViewCell *)self layoutManager];
  [layoutManager cell:self didTransitionToState:state];
}

- (CGRect)contentRectForState:(unint64_t)state
{
  layoutManager = [(UITableViewCell *)self layoutManager];
  [layoutManager contentRectForCell:self forState:state];
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

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    [(UITableViewCell *)self _resetBackgroundViewConfiguration];
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFF7FFFFFFFFFLL | (((colorCopy | *(&self->_tableCellFlags + 1) & 0x8000000000) != 0) << 39);
  if ([(UITableViewCell *)self _changesOpaqueStateOfSubviews])
  {
    v13.receiver = self;
    v13.super_class = UITableViewCell;
    backgroundColor = [(UIView *)&v13 backgroundColor];
    v6 = backgroundColor;
    if (backgroundColor == colorCopy)
    {
LABEL_15:

      goto LABEL_16;
    }

    cGColor = [backgroundColor CGColor];
    CGColorRetain(cGColor);
    v12.receiver = self;
    v12.super_class = UITableViewCell;
    [(UIView *)&v12 setBackgroundColor:colorCopy];
    _shouldUseHighlightedOrSelectedAppearance = [(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance];
    [(UIView *)self->_textLabel setOpaque:!_shouldUseHighlightedOrSelectedAppearance];
    [(UIView *)self->_detailTextLabel setOpaque:!_shouldUseHighlightedOrSelectedAppearance];
    if (_shouldUseHighlightedOrSelectedAppearance)
    {
      v9 = +[UIColor clearColor];
      [(UIView *)self->_textLabel setBackgroundColor:v9];
    }

    else
    {
      if (CGColorEqualToColor([(UIView *)self->_textLabel _backgroundCGColor], cGColor))
      {
        [(UIView *)self->_textLabel setBackgroundColor:colorCopy];
      }

      else
      {
        v10 = +[UIColor clearColor];
        [(UIView *)self->_textLabel setBackgroundColor:v10];
      }

      if (CGColorEqualToColor([(UIView *)self->_detailTextLabel _backgroundCGColor], cGColor))
      {
        [(UIView *)self->_detailTextLabel setBackgroundColor:colorCopy];
LABEL_14:
        CGColorRelease(cGColor);
        goto LABEL_15;
      }
    }

    v11 = +[UIColor clearColor];
    [(UIView *)self->_detailTextLabel setBackgroundColor:v11];

    goto LABEL_14;
  }

  v14.receiver = self;
  v14.super_class = UITableViewCell;
  [(UIView *)&v14 setBackgroundColor:colorCopy];
LABEL_16:
  *&self->_tableCellFlags |= 0x1000000000000000uLL;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  _tableView = [(UITableViewCell *)self _tableView];

  if (_tableView)
  {
    v16.receiver = self;
    v16.super_class = UITableViewCell;
    [(UIResponder *)&v16 touchesBegan:beganCopy withEvent:eventCopy];
  }

  else
  {
    v9 = [eventCopy _firstTouchForView:self];

    if (v9)
    {
      [v9 locationInView:self];
      v11 = v10;
      v13 = v12;
      layoutManager = [(UITableViewCell *)self layoutManager];
      [layoutManager backgroundEndingRectForCell:self forNewEditingState:{-[UITableViewCell isEditing](self, "isEditing")}];
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

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  _tableView = [(UITableViewCell *)self _tableView];

  if (_tableView)
  {
    v15.receiver = self;
    v15.super_class = UITableViewCell;
    [(UIResponder *)&v15 touchesMoved:movedCopy withEvent:eventCopy];
  }

  else
  {
    v9 = [eventCopy _firstTouchForView:self];

    if (v9)
    {
      [v9 locationInView:self];
      v11 = v10;
      v13 = v12;
      layoutManager = [(UITableViewCell *)self layoutManager];
      [layoutManager backgroundEndingRectForCell:self forNewEditingState:{-[UITableViewCell isEditing](self, "isEditing")}];
      v16.x = v11;
      v16.y = v13;
      [(UITableViewCell *)self setSelected:CGRectContainsPoint(v17, v16)];
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  _tableView = [(UITableViewCell *)self _tableView];

  if (_tableView)
  {
    v10.receiver = self;
    v10.super_class = UITableViewCell;
    [(UIResponder *)&v10 touchesEnded:endedCopy withEvent:eventCopy];
  }

  else
  {
    v9 = [eventCopy _firstTouchForView:self];

    if (v9)
    {
      [(UITableViewCell *)self setSelected:0];
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  _tableView = [(UITableViewCell *)self _tableView];

  if (_tableView)
  {
    v9.receiver = self;
    v9.super_class = UITableViewCell;
    [(UIResponder *)&v9 touchesCancelled:cancelledCopy withEvent:eventCopy];
  }

  else
  {
    [(UITableViewCell *)self setSelected:0];
  }
}

- (void)_setSectionLocation:(int)location animated:(BOOL)animated forceBackgroundSetup:(BOOL)setup
{
  if ((*(&self->_tableCellFlags + 3) & 7) != location || setup)
  {
    animatedCopy = animated;
    locationCopy = location;
    _maskedCornersForSystemBackgroundView = [(UITableViewCell *)self _maskedCornersForSystemBackgroundView];
    *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFFFF8FFFFFFLL | ((locationCopy & 7) << 24);
    v10 = [(UITableViewCell *)self _selectedBackgroundView:0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__UITableViewCell__setSectionLocation_animated_forceBackgroundSetup___block_invoke_2;
    v15[3] = &unk_1E70F3590;
    v15[4] = self;
    [UIView conditionallyAnimate:animatedCopy withAnimation:&__block_literal_global_443 layout:v15 completion:0];
    [(UITableViewCell *)self _updateContentClip];
    if (_maskedCornersForSystemBackgroundView != [(UITableViewCell *)self _maskedCornersForSystemBackgroundView])
    {
      backgroundConfiguration = [(UITableViewCell *)self backgroundConfiguration];
      v12 = backgroundConfiguration;
      if (backgroundConfiguration)
      {
        _backgroundViewConfiguration = backgroundConfiguration;
      }

      else
      {
        _backgroundViewConfiguration = [(UITableViewCell *)self _backgroundViewConfiguration];
      }

      v14 = _backgroundViewConfiguration;

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

- (void)_performAction:(SEL)action sender:(id)sender
{
  senderCopy = sender;
  _tableView = [(UITableViewCell *)self _tableView];
  [_tableView _performAction:action forCell:self sender:senderCopy];
}

- (void)_setAutomaticIntrinsicContentSizeInvalidationEnabled:(BOOL)enabled
{
  v3 = 0x10000000000000;
  if (!enabled)
  {
    v3 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFEFFFFFFFFFFFFFLL | v3;
  [(UIView *)self->_contentView _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges:?];
}

- (id)_textLabel:(BOOL)label
{
  textLabel = self->_textLabel;
  if (textLabel)
  {
    v4 = 1;
  }

  else
  {
    v4 = !label;
  }

  if (v4)
  {
    _textLabel = textLabel;
  }

  else
  {
    _textLabel = [(UITableViewCell *)self _textLabel];
  }

  return _textLabel;
}

- (id)_detailTextLabel:(BOOL)label
{
  detailTextLabel = self->_detailTextLabel;
  if (detailTextLabel)
  {
    v4 = 1;
  }

  else
  {
    v4 = !label;
  }

  if (v4)
  {
    _detailTextLabel = detailTextLabel;
  }

  else
  {
    _detailTextLabel = [(UITableViewCell *)self _detailTextLabel];
  }

  return _detailTextLabel;
}

- (id)_editableTextField:(BOOL)field
{
  editableTextField = self->_editableTextField;
  if (editableTextField)
  {
    v4 = 1;
  }

  else
  {
    v4 = !field;
  }

  if (v4)
  {
    _editableTextField = editableTextField;
  }

  else
  {
    _editableTextField = [(UITableViewCell *)self _editableTextField];
  }

  return _editableTextField;
}

- (id)_imageView:(BOOL)view
{
  imageView = self->_imageView;
  if (imageView)
  {
    v4 = 1;
  }

  else
  {
    v4 = !view;
  }

  if (v4)
  {
    _imageView = imageView;
  }

  else
  {
    _imageView = [(UITableViewCell *)self _imageView];
  }

  return _imageView;
}

- (id)_badge:(BOOL)_badge
{
  badge = self->_badge;
  if (badge)
  {
    v4 = 1;
  }

  else
  {
    v4 = !_badge;
  }

  if (v4)
  {
    _badge = badge;
  }

  else
  {
    _badge = [(UITableViewCell *)self _badge];
  }

  return _badge;
}

- (void)_setEditingControlTintColor:(id)color forStyle:(int64_t)style
{
  colorCopy = color;
  if (colorCopy && !self->__editingControlTintColors)
  {
    v7 = objc_opt_new();
    editingControlTintColors = self->__editingControlTintColors;
    self->__editingControlTintColors = v7;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  v10 = [(NSMutableDictionary *)self->__editingControlTintColors objectForKeyedSubscript:v9];
  v11 = colorCopy;
  v12 = v11;
  v13 = v10;
  v17 = v11;
  if (v10 == v11)
  {
    goto LABEL_11;
  }

  if (!colorCopy || !v10)
  {

    goto LABEL_10;
  }

  v14 = [v10 isEqual:v11];

  if ((v14 & 1) == 0)
  {
LABEL_10:
    v15 = self->__editingControlTintColors;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:style];
    [(NSMutableDictionary *)v15 setObject:v17 forKeyedSubscript:v16];

    v13 = [(UITableViewCell *)self editingData:0];
    v12 = [v13 editControl:0];
    [v12 _updateImageView];
LABEL_11:
  }
}

- (id)_editingControlTintColorForStyle:(int64_t)style
{
  editingControlTintColors = self->__editingControlTintColors;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  v5 = [(NSMutableDictionary *)editingControlTintColors objectForKeyedSubscript:v4];

  return v5;
}

- (void)_setShouldIndentWhileEditing:(BOOL)editing
{
  v3 = 0x2000000000;
  if (!editing)
  {
    v3 = 0;
  }

  *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFDFFFFFFFFFLL | v3;
  [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
}

- (void)_setDrawsTopSeparator:(BOOL)separator
{
  tableCellFlags = self->_tableCellFlags;
  if (((((tableCellFlags & 0x400000) == 0) ^ separator) & 1) == 0)
  {
    v4 = 0x400000;
    if (!separator)
    {
      v4 = 0;
    }

    *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFFFFFBFFFFFLL | v4;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_drawSeparatorInRect:(CGRect)rect
{
  v3 = (*&self->_tableCellFlags >> 1) & 7;
  if (v3)
  {
    separatorColor = self->_separatorColor;
    [(UITableViewCell *)self _separatorFrame:rect.origin.x];
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

- (void)_animateFloatingSeparatorForInsertion:(BOOL)insertion withRowAnimation:(int64_t)animation
{
  insertionCopy = insertion;
  if ([(UITableViewCell *)self separatorStyle]&& (animation | 2) == 6)
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
    if (animation == 6)
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
      if (animation == 4)
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
    if (insertionCopy)
    {
      v27 = v26;
    }

    else
    {
      v27 = Height;
    }

    if (insertionCopy)
    {
      v28 = v20;
    }

    else
    {
      v28 = v18;
    }

    if (insertionCopy)
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

    layer = [(UIView *)self->_floatingSeparatorView layer];
    [layer setZPosition:1.0];

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

- (void)_animateInnerShadowForInsertion:(BOOL)insertion withRowAnimation:(int64_t)animation
{
  if (animation == 6)
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
      insertionCopy = insertion;
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

      layoutManager = [(UITableViewCell *)self layoutManager];
      if ([(UITableViewCell *)self isEditing])
      {
        [layoutManager backgroundStartingRectForCell:self forNewEditingState:1];
        v73 = v26;
        v74 = v25;
        v28 = v27;
        v30 = v29;
      }

      else
      {
        _tableView = [(UITableViewCell *)self _tableView];
        [layoutManager backgroundStartingRectForCell:self forNewEditingState:{objc_msgSend(_tableView, "_wasEditing")}];
        v73 = v33;
        v74 = v32;
        v28 = v34;
        v30 = v35;
      }

      layoutManager2 = [(UITableViewCell *)self layoutManager];
      if ([(UITableViewCell *)self isEditing])
      {
        [layoutManager2 backgroundEndingRectForCell:self forNewEditingState:1];
        v71 = v38;
        v72 = v37;
        v40 = v39;
        v42 = v41;
      }

      else
      {
        _tableView2 = [(UITableViewCell *)self _tableView];
        [layoutManager2 backgroundEndingRectForCell:self forNewEditingState:{objc_msgSend(_tableView2, "isEditing")}];
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
      if (insertionCopy)
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
      layer = [(UIView *)self->_topShadowAnimationView layer];
      [layer setZPosition:1.0];

      layer2 = [(UIView *)self->_bottomShadowAnimationView layer];
      [layer2 setZPosition:1.0];

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
  selfCopy = self;
  _tableView = [(UITableViewCell *)self _tableView];
  LOBYTE(selfCopy) = [_tableView _isReorderControlActiveForCell:selfCopy];

  return selfCopy;
}

- (BOOL)_grabberBeganReorder:(id)reorder touch:(id)touch
{
  touchCopy = touch;
  _tableView = [(UITableViewCell *)self _tableView];
  LOBYTE(self) = [_tableView _beginReorderingForCell:self touch:touchCopy];

  return self;
}

- (void)_grabberDragged:(id)dragged yDelta:(float)delta touch:(id)touch
{
  touchCopy = touch;
  _tableView = [(UITableViewCell *)self _tableView];
  [_tableView _draggingReorderingCell:self yDelta:touchCopy touch:delta];
}

- (void)_grabberReleased:(id)released
{
  _tableView = [(UITableViewCell *)self _tableView];
  [_tableView _endReorderingForCell:self wasCancelled:0 animated:1];
}

- (void)editControlWasClicked:(id)clicked
{
  clickedCopy = clicked;
  v6 = clickedCopy;
  if ((*&self->_tableCellFlags & 0x7000) != 0x1000)
  {
    if ([(UITableViewCell *)self editingStyle]!= UITableViewCellEditingStyleInsert)
    {
      goto LABEL_8;
    }

    _tableView = [(UITableViewCell *)self _tableView];
    [_tableView _didInsertRowForTableCell:self];
    goto LABEL_6;
  }

  if ([clickedCopy isRotated])
  {
    _tableView = [(UITableViewCell *)self _tableView];
    [_tableView _swipeToDeleteCell:self];
LABEL_6:

    goto LABEL_8;
  }

  [(UITableViewCell *)self setShowingDeleteConfirmation:0];
LABEL_8:
}

- (BOOL)_isReorderable
{
  selfCopy = self;
  _tableView = [(UITableViewCell *)self _tableView];
  LOBYTE(selfCopy) = [_tableView _isCellReorderable:selfCopy];

  return selfCopy;
}

- (id)editingData:(BOOL)data
{
  if (self->_editingData)
  {
    v5 = 1;
  }

  else
  {
    v5 = !data;
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
      _tableView = [(UITableViewCell *)self _tableView];
      if (![_tableView allowsMultipleSelectionDuringEditing] || (*(&self->_tableCellFlags + 12) & 4) != 0)
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

- (void)_updateExpansionButton:(id)button forType:(int64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  buttonCopy = button;
  memset(&v17, 0, sizeof(v17));
  if (type == 8 || type == 6)
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
  v11 = buttonCopy;
  v15 = v11;
  v16 = v17;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (animatedCopy)
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

- (int64_t)_currentAccessoryTypeForEditing:(BOOL)editing
{
  tableCellFlags = self->_tableCellFlags;
  if (!editing)
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

- (id)_accessoryViewForType:(int64_t)type
{
  constants = self->_constants;
  traitCollection = [(UIView *)self traitCollection];
  v7 = [(UITableConstants *)constants defaultListCellAccessoryImageSymbolConfigurationForTraitCollection:traitCollection accessoryType:type];

  switch(type)
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

  if ((type - 5) > 1)
  {
    if ((type - 7) > 1)
    {
      if (type == 2)
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
      accessoryButton = [(_UITableCellAccessoryButton *)v10 accessoryButton];
      [(UITableViewCell *)self _updateExpansionButton:accessoryButton forType:type animated:0];
    }
  }

  else
  {
    v10 = [UIButton buttonWithType:123];
    [(UITableViewCell *)self _updateExpansionButton:v10 forType:type animated:0];
  }

LABEL_21:
  _tableView = [(UITableViewCell *)self _tableView];
  if (_tableView)
  {
    [(UIControl *)v10 addTarget:_tableView action:sel__accessoryButtonAction_ forControlEvents:64];
  }

  [v10 accessibilitySetIdentification:@"UITableCellViewDisclosure"];
  [(UIButton *)v10 setSemanticContentAttribute:[(UIView *)self semanticContentAttribute]];
  if (objc_opt_respondsToSelector())
  {
    v18 = self->_constants;
    _tableView2 = [(UITableViewCell *)self _tableView];
    v20 = [(UITableConstants *)v18 defaultAccessoryColorForCell:self inTableView:_tableView2];
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
    _accessoryManager = [(UITableViewCell *)self _accessoryManager];
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
    v18 = _accessoryManager;
    configurations = [_accessoryManager configurations];
    objectEnumerator = [configurations objectEnumerator];

    v10 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v26 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          leadingAccessories = [v14 leadingAccessories];
          v7[2](v7, leadingAccessories);

          trailingAccessories = [v14 trailingAccessories];
          v7[2](v7, trailingAccessories);
        }

        v11 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v26 count:16];
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

- (id)_existingSystemAccessoryView:(BOOL)view
{
  viewCopy = view;
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    v5 = 49;
    if (viewCopy)
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
      if (viewCopy)
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
    if (viewCopy)
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

- (id)_accessoryView:(BOOL)view
{
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    _accessoryManager = [(UITableViewCell *)self _accessoryManager];
    configurations = [_accessoryManager configurations];
    v7 = [configurations objectForKeyedSubscript:0x1EFB35F50];

    trailingAccessories = [v7 trailingAccessories];
    firstObject = [trailingAccessories firstObject];

    view = [firstObject view];

    goto LABEL_9;
  }

  customAccessoryView = self->_customAccessoryView;
  if (customAccessoryView)
  {
    goto LABEL_7;
  }

  if (!view)
  {
    customAccessoryView = self->_accessoryView;
LABEL_7:
    _defaultAccessoryView = customAccessoryView;
    goto LABEL_8;
  }

  _defaultAccessoryView = [(UITableViewCell *)self _defaultAccessoryView];
LABEL_8:
  view = _defaultAccessoryView;
LABEL_9:

  return view;
}

- (id)_editingAccessoryView:(BOOL)view
{
  viewCopy = view;
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout])
  {
    _accessoryManager = [(UITableViewCell *)self _accessoryManager];
    configurations = [_accessoryManager configurations];
    v7 = [configurations objectForKeyedSubscript:0x1EFBA01F0];

    trailingAccessories = [v7 trailingAccessories];
    firstObject = [trailingAccessories firstObject];

    view = [firstObject view];
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
        if (v13 && viewCopy)
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

    view = customEditingAccessoryView;
  }

  return view;
}

- (id)_separatorView:(BOOL)view
{
  if (view)
  {
    [(UITableViewCell *)self _updateSeparatorContent:1];
  }

  separatorView = self->_separatorView;

  return separatorView;
}

- (id)_backgroundView:(BOOL)view
{
  if (view && ![(UITableViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
  {
    [(UITableViewCell *)self _setupBackgroundView];
  }

  backgroundView = self->_backgroundView;

  return backgroundView;
}

- (id)_selectedBackgroundView:(BOOL)view
{
  if (view && ![(UITableViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
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
    _tableView = [(UITableViewCell *)self _tableView];
    if ([_tableView allowsMultipleSelectionDuringEditing] && (*(&self->_tableCellFlags + 12) & 4) == 0)
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
      _tableView2 = [(UITableViewCell *)self _tableView];
      if (([_tableView2 allowsMultipleSelection] & 1) == 0 || (selectedBackgroundView = self->_multipleSelectionBackgroundView) == 0)
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

- (void)setWasSwiped:(BOOL)swiped
{
  tableCellFlags = self->_tableCellFlags;
  if (((((tableCellFlags & 0x20000000000) == 0) ^ swiped) & 1) == 0)
  {
    v5 = 0x20000000000;
    if (!swiped)
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

- (void)_setSwiped:(BOOL)swiped
{
  if (((((*(&self->_tableCellFlags + 1) & 2) == 0) ^ swiped) & 1) == 0)
  {
    swipedCopy = swiped;
    [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
    v5 = 512;
    if (!swipedCopy)
    {
      v5 = 0;
    }

    *&self->_tableCellFlags = *&self->_tableCellFlags & 0xFFFFFFFFFFFFFDFFLL | v5;

    [(UITableViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_setAccessoryAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_accessoryAction = actionCopy;
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

- (void)_monitoredView:(id)view willMoveFromSuperview:(id)superview toSuperview:(id)toSuperview
{
  viewCopy = view;
  superviewCopy = superview;
  toSuperviewCopy = toSuperview;
  if (self->_unhighlightedStates && [(UIView *)self containsView:superviewCopy]&& ![(UIView *)self containsView:toSuperviewCopy])
  {
    [(UITableViewCell *)self _clearOpaqueViewState:viewCopy];
  }
}

- (void)_monitoredView:(id)view didMoveFromSuperview:(id)superview toSuperview:(id)toSuperview
{
  viewCopy = view;
  superviewCopy = superview;
  toSuperviewCopy = toSuperview;
  v10 = toSuperviewCopy;
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
    superview = [(UIView *)v10 superview];

    v10 = superview;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  superview = v10;
LABEL_15:
  if (self->_unhighlightedStates && ![(UIView *)self containsView:superviewCopy]&& (v12 & [(UIView *)self containsView:toSuperviewCopy]) == 1)
  {
    [(UITableViewCell *)self _saveOpaqueViewState:viewCopy];
    [(UITableViewCell *)self _setOpaque:0 forSubview:viewCopy];
    [(UITableViewCell *)self _updateHighlightColorsForView:viewCopy highlighted:[(UITableViewCell *)self _shouldUseHighlightedOrSelectedAppearance]];
  }
}

- (void)_setNeedsSetup:(BOOL)setup
{
  v3 = 0x2000000000000000;
  if (!setup)
  {
    v3 = 0;
  }

  *&self->_tableCellFlags = *&self->_tableCellFlags & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)_setNeedsHeightCalculation:(BOOL)calculation
{
  v3 = 0x8000;
  if (!calculation)
  {
    v3 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setTableViewStyle:(int64_t)style
{
  styleCopy = style;
  v5 = *(&self->_tableCellFlags + 1) & 0x1FLL;
  if (v5 == style || style && v5)
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
  *&self->_tableCellFlags = tableCellFlags & 0xFFFFFFE0FFFFFFFFLL | ((styleCopy & 0x1F) << 32);
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
  editableTextField = [(UITableViewCell *)self editableTextField];
  if (editableTextField)
  {
    v3 = editableTextField;
    [editableTextField becomeFirstResponder];
    editableTextField = v3;
  }
}

- (void)_multiselectColorChanged
{
  v3 = [(UITableViewCell *)self editingData:0];
  v2 = [v3 editControl:0];
  [v2 _multiselectColorChanged];
}

- (void)_setMultiselecting:(BOOL)multiselecting
{
  if (!multiselecting || !self->_multipleSelectionBackgroundView)
  {
    p_tableCellFlags = &self->_tableCellFlags;
    *&self->_tableCellFlags &= ~0x4000000000000000uLL;
    goto LABEL_7;
  }

  p_tableCellFlags = &self->_tableCellFlags;
  *&self->_tableCellFlags |= 0x4000000000000000uLL;
  p_selectedBackgroundView = &self->_selectedBackgroundView;
  superview = [(UIView *)self->_selectedBackgroundView superview];

  if (superview)
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
    superview2 = [(UIView *)self->_multipleSelectionBackgroundView superview];

    if (!superview2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:

  [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
}

- (BOOL)_shouldSaveOpaqueStateForView:(id)view
{
  viewCopy = view;
  if (*(&self->_tableCellFlags + 1))
  {
    v6 = 1;
    v5 = [(UITableViewCell *)self _existingSystemAccessoryView:1];
    if (v5 != viewCopy)
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
  if (v5 == viewCopy)
  {
    v7 = 0x10000;
    v8 = 229376;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_8:

  v9 = [(UITableViewCell *)self _shouldChangeOpaqueStateOfView:viewCopy];
  return v9 && v6;
}

- (void)_setIndexPath:(id)path
{
  pathCopy = path;
  if (self->_representedIndexPath != pathCopy)
  {
    v6 = pathCopy;
    objc_storeStrong(&self->_representedIndexPath, path);
    pathCopy = v6;
  }
}

- (void)_setSeparatorInsetIsRelativeToCellEdges:(BOOL)edges
{
  v3 = *(&self->_tableCellFlags + 1);
  if (((((v3 & 0x200000) == 0) ^ edges) & 1) == 0)
  {
    v4 = 0x200000;
    if (!edges)
    {
      v4 = 0;
    }

    *(&self->_tableCellFlags + 1) = v3 & 0xFFFFFFFFFFDFFFFFLL | v4;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_setInsetsContentViewsToSafeArea:(BOOL)area
{
  if (((((*(&self->_tableCellFlags + 1) & 0x4000000) == 0) ^ area) & 1) == 0)
  {
    v9 = v3;
    v8 = 0x4000000;
    if (!area)
    {
      v8 = 0;
    }

    *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFBFFFFFFLL | v8;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate:v4];

    [(UITableViewCell *)self _updateAccessoryMetrics];
  }
}

- (UIEdgeInsets)_adjustedRawLayoutMargins:(UIEdgeInsets)margins withLeadingLayoutMarginAdjustment:(double)adjustment
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
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
      right = v12 - v10 + adjustment;
    }

    else
    {
      right = right + adjustment;
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
    left = v15 - v13 + adjustment;
  }

  else
  {
    left = left + adjustment;
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

- (void)_applyLeadingLayoutMarginAdjustment:(double)adjustment
{
  [(UIView *)self _rawLayoutMargins];
  [UITableViewCell _adjustedRawLayoutMargins:"_adjustedRawLayoutMargins:withLeadingLayoutMarginAdjustment:" withLeadingLayoutMarginAdjustment:?];
  v4.receiver = self;
  v4.super_class = UITableViewCell;
  [(UIView *)&v4 _setRawLayoutMargins:?];
}

- (void)_setRawLayoutMargins:(UIEdgeInsets)margins
{
  if (self->_extraLeadingLayoutMarginForIndentation > 0.0)
  {
    [(UITableViewCell *)self _adjustedRawLayoutMargins:margins.top withLeadingLayoutMarginAdjustment:margins.left, margins.bottom, margins.right];
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

- (void)_setOverriddenDefaultContentViewLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentView = self->_contentView;

    [(UIView *)contentView _setOverriddenDefaultLayoutMargins:top, leading, bottom, trailing];
  }
}

- (double)_contentViewInset:(double)inset convertedToCellInsetOnEdge:(unint64_t)edge
{
  if (edge != 2 && edge != 8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:6597 description:{@"Invalid parameter not satisfying: %@", @"edge == NSDirectionalRectEdgeLeading || edge == NSDirectionalRectEdgeTrailing"}];
  }

  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  [(UIView *)self->_contentView bounds];
  if ((edge == 2) != _shouldReverseLayoutDirection)
  {
    insetCopy = inset;
  }

  else
  {
    insetCopy = 0.0;
  }

  [(UIView *)self convertRect:self->_contentView fromView:insetCopy + v10, v11 + 0.0, v12 - (inset + 0.0)];
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = 8;
  if (_shouldReverseLayoutDirection)
  {
    v22 = 2;
  }

  if (v22 == edge)
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

- (void)_setDefaultLeadingMarginWidth:(double)width
{
  if (self->_defaultLeadingMarginWidth != width)
  {
    self->_defaultLeadingMarginWidth = width;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
  }
}

- (void)_setDefaultTrailingCellMarginWidth:(double)width
{
  if (self->_defaultTrailingCellMarginWidth != width)
  {
    self->_defaultTrailingCellMarginWidth = width;
    [(UIView *)self setNeedsLayout];

    [(UITableViewCell *)self _updateAccessoryMetrics];
  }
}

- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
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

- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  [(UIView *)self layoutMargins];
  if (left != v9 || right != v8)
  {
    [(UITableViewCell *)self _updateAccessoryMetrics];
  }

  v11.receiver = self;
  v11.super_class = UITableViewCell;
  [(UIView *)&v11 _layoutMarginsDidChangeFromOldMargins:top, left, bottom, right];
}

- (void)_updateSeparatorContent:(BOOL)content
{
  if (content)
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v68.receiver = self;
  v68.super_class = UITableViewCell;
  v8 = [(UIView *)&v68 hitTest:eventCopy withEvent:x, y];
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
        v55 = [v31 hitTest:eventCopy withEvent:{v43, v45}];

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

      v56 = [v32 hitTest:eventCopy withEvent:{v47, v49}];

      v52 = v32;
      if (v56)
      {
        goto LABEL_50;
      }
    }

LABEL_51:

    goto LABEL_52;
  }

  _accessoryManager = [(UITableViewCell *)self _accessoryManager];
  currentConfiguration = [_accessoryManager currentConfiguration];
  aBlock = MEMORY[0x1E69E9820];
  v60 = 3221225472;
  v61 = __37__UITableViewCell_hitTest_withEvent___block_invoke;
  v62 = &unk_1E7122F20;
  selfCopy = self;
  v58 = _accessoryManager;
  v64 = v58;
  v66 = x;
  v67 = y;
  v65 = eventCopy;
  v13 = _Block_copy(&aBlock);
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  leadingAccessories = [currentConfiguration leadingAccessories];
  v16 = [leadingAccessories count];

  if (v16)
  {
    v17 = 0;
    while (1)
    {
      leadingAccessories2 = [currentConfiguration leadingAccessories];
      v19 = [leadingAccessories2 objectAtIndexedSubscript:v17];

      leadingAccessories3 = [currentConfiguration leadingAccessories];
      v21 = v13[2](v13, v19, v17 == [leadingAccessories3 count] - 1, _shouldReverseLayoutDirection ^ 1);

      if (v21)
      {
        break;
      }

      ++v17;
      leadingAccessories4 = [currentConfiguration leadingAccessories];
      v23 = [leadingAccessories4 count];

      if (v17 >= v23)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    trailingAccessories = [currentConfiguration trailingAccessories];
    v21 = [trailingAccessories count];

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
      trailingAccessories2 = [currentConfiguration trailingAccessories];
      v19 = [trailingAccessories2 objectAtIndexedSubscript:v25];

      trailingAccessories3 = [currentConfiguration trailingAccessories];
      v21 = v13[2](v13, v19, v25 == [trailingAccessories3 count] - 1, _shouldReverseLayoutDirection);

      if (v21)
      {
        break;
      }

      ++v25;
      trailingAccessories4 = [currentConfiguration trailingAccessories];
      v21 = [trailingAccessories4 count];

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

- (void)_setDeleteAnimationInProgress:(BOOL)progress
{
  v3 = 0x8000000000000000;
  if (!progress)
  {
    v3 = 0;
  }

  *&self->_tableCellFlags = v3 & 0x8000000000000000 | *&self->_tableCellFlags & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setPlaceHolderValue:(id)value
{
  valueCopy = value;
  editableTextField = [(UITableViewCell *)self editableTextField];
  [editableTextField setPlaceholder:valueCopy];
}

- (void)setReturnAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_returnAction = actionCopy;
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

- (void)_setPopupMenuButton:(id)button
{
  buttonCopy = button;
  if (self->__popupMenuButton != buttonCopy)
  {
    v13 = buttonCopy;
    if (buttonCopy)
    {
      menu = [(UIButton *)buttonCopy menu];

      if (!menu)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:7069 description:{@"Popup menu button must be configured with a menu: %@", v13}];
      }

      if (![(UIControl *)v13 showsMenuAsPrimaryAction])
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:7070 description:{@"Popup menu button must have showsMenuAsPrimaryAction enabled: %@", v13}];
      }

      if (![(UIButton *)v13 changesSelectionAsPrimaryAction])
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:7071 description:{@"Popup menu button must have changesSelectionAsPrimaryAction enabled: %@", v13}];
      }
    }

    [(UIButton *)self->__popupMenuButton _setWantsAccessibilityUnderline:1];
    [(UIView *)self->__popupMenuButton setUserInteractionEnabled:1];
    objc_storeStrong(&self->__popupMenuButton, button);
    [(UIButton *)self->__popupMenuButton _setWantsAccessibilityUnderline:0];
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    buttonCopy = v13;
    if (userInterfaceIdiom != 5)
    {
      [(UIView *)v13 setUserInteractionEnabled:0];
      buttonCopy = v13;
    }
  }
}

- (void)_setAnimating:(BOOL)animating clippingAdjacentCells:(BOOL)cells
{
  cellsCopy = cells;
  animatingCopy = animating;
  _shouldMaskToBoundsWhileAnimating = [(UITableViewCell *)self _shouldMaskToBoundsWhileAnimating];
  _usesRoundedGroups = [(UITableViewCell *)self _usesRoundedGroups];
  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFFFFELL | animatingCopy;
  [(UITableViewCell *)self _updateContentClip];
  if (animatingCopy)
  {
    if (_usesRoundedGroups || !_shouldMaskToBoundsWhileAnimating || !cellsCopy)
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
      layer = [(UIView *)self->_clearBlendingView layer];
      [layer setMasksToBounds:1];
      [layer setCompositingFilter:*MEMORY[0x1E69798A8]];
    }

    backgroundColor = [(UITableViewCell *)self backgroundColor];
    [(UIView *)self->_clearBlendingView setBackgroundColor:backgroundColor];

    superview = [(UIView *)self->_clearBlendingView superview];

    if (superview != self)
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

  layer2 = [(UIView *)self layer];
  [layer2 setAllowsGroupBlending:v9];
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

- (void)_setSeparatorDrawsInVibrantLightModeUIAppearance:(id)appearance
{
  bOOLValue = [appearance BOOLValue];

  [(UITableViewCell *)self _setSeparatorDrawsInVibrantLightMode:bOOLValue];
}

- (void)_setSeparatorDrawsInVibrantLightMode:(BOOL)mode
{
  p_tableCellFlags = &self->_tableCellFlags;
  v5 = 1024;
  if (!mode)
  {
    v5 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFFBFFLL | v5;
  separatorView = self->_separatorView;
  if (mode)
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

- (void)_setSeparatorBackdropOverlayBlendMode:(int64_t)mode
{
  v5 = *(&self->_tableCellFlags + 1);
  *(&self->_tableCellFlags + 1) = v5 & 0xFFFFFFFFFFFFFC7FLL | ((mode & 7) << 7);
  if ((v5 & 0x400) == 0)
  {
    [(_UITableViewCellSeparatorView *)self->_separatorView setDrawsWithVibrantLightMode:0];
    [(_UITableViewCellSeparatorView *)self->_topSeparatorView setDrawsWithVibrantLightMode:0];
    [(UIView *)self->_separatorView _setDrawsAsBackdropOverlayWithBlendMode:mode];
    [(UIView *)self->_separatorView setBackgroundColor:self->_separatorColor];
    [(UIView *)self->_topSeparatorView _setDrawsAsBackdropOverlayWithBlendMode:mode];
    [(UIView *)self->_topSeparatorView setBackgroundColor:self->_separatorColor];
  }

  layer = [(UIView *)self layer];
  v6 = mode == 0;
  [layer setAllowsGroupBlending:v6];
  [layer setAllowsGroupOpacity:v6];
}

- (void)_setSeparatorEffect:(id)effect
{
  effectCopy = effect;
  if (self->_separatorEffect != effectCopy)
  {
    v7 = effectCopy;
    objc_storeStrong(&self->_separatorEffect, effect);
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
    effectCopy = v7;
  }
}

- (void)_setIndexBarExtentFromEdge:(double)edge
{
  if (self->_indexBarExtentFromEdge != edge)
  {
    self->_indexBarExtentFromEdge = edge;
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];

    [(UITableViewCell *)self _updateAccessoryMetrics];
  }
}

- (void)_setBackgroundInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  _usesRoundedGroups = [(UITableViewCell *)self _usesRoundedGroups];
  self->_backgroundInset.top = top;
  self->_backgroundInset.left = left;
  self->_backgroundInset.bottom = bottom;
  self->_backgroundInset.right = right;
  if (_usesRoundedGroups != [(UITableViewCell *)self _usesRoundedGroups])
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
  _tableView = [(UITableViewCell *)self _tableView];
  [_tableView _sectionContentInset];
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

- (void)_setSeparatorHidden:(BOOL)hidden
{
  v3 = 2048;
  if (!hidden)
  {
    v3 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFF7FFLL | v3;
  [(UITableViewCell *)self _setNeedsSeparatorUpdate];
}

- (void)_setAccessoryViewsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v4 = 0x80000;
  if (!hidden)
  {
    v4 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFF7FFFFLL | v4;
  v6 = [(UITableViewCell *)self editingData:0];
  v5 = [v6 editControl:0];
  [v5 setHidden:hiddenCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  v6.receiver = self;
  v6.super_class = UITableViewCell;
  viewCopy = view;
  [(UIView *)&v6 _intrinsicContentSizeInvalidatedForChildView:viewCopy];
  contentView = self->_contentView;

  if (contentView == viewCopy)
  {
    [(UITableViewCell *)self invalidateIntrinsicContentSize:v6.receiver];
  }
}

- (void)_setAllowsReorderingWhenNotEditing:(BOOL)editing
{
  v3 = 0x4000;
  if (!editing)
  {
    v3 = 0;
  }

  *(&self->_tableCellFlags + 1) = *(&self->_tableCellFlags + 1) & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (id)_previewingSegueTemplateStorageForLocation:(CGPoint)location inView:(id)view
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  v8 = [(UITableViewCell *)self _accessoryView:0];
  if (!v8)
  {
    goto LABEL_5;
  }

  accessoryActionPreviewingSegueTemplateStorage = [(UITableViewCell *)self accessoryActionPreviewingSegueTemplateStorage];
  if (!accessoryActionPreviewingSegueTemplateStorage || ([v8 convertPoint:viewCopy fromView:{x, y}], (objc_msgSend(v8, "pointInside:withEvent:", 0) & 1) == 0))
  {

LABEL_5:
    accessoryActionPreviewingSegueTemplateStorage = [(UIView *)self _previewingSegueTemplateStorage];
  }

  return accessoryActionPreviewingSegueTemplateStorage;
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

- (void)_configureFloatingContentView:(id)view
{
  viewCopy = view;
  traitCollection = [(UIView *)self traitCollection];
  _hasSplitViewControllerContextSidebarColumn = [traitCollection _hasSplitViewControllerContextSidebarColumn];

  _constants = [(UITableViewCell *)self _constants];
  p_tableCellFlags = &self->_tableCellFlags;
  v8 = *(&self->_tableCellFlags + 1);
  traitCollection2 = [(UIView *)self traitCollection];
  [_constants defaultCellCornerRadiusForTableViewStyle:v8 & 0x1F isSidebarStyle:_hasSplitViewControllerContextSidebarColumn isHeaderFooter:0 traitCollection:traitCollection2];
  v11 = v10;

  v12 = [_UIFocusAnimationConfiguration configurationWithStyle:2];
  [viewCopy setFocusAnimationConfiguration:v12];

  [viewCopy setBackgroundColor:0 forState:4];
  [viewCopy setRoundContentWhenDeselected:_UISolariumEnabled()];
  [viewCopy setShadowExpansion:{45.0, 25.0}];
  [viewCopy setUnfocusedShadowVerticalOffset:10.0];
  [viewCopy setContentMotionRotation:0.0 translation:{0.0, 0.0, 4.0}];
  [viewCopy setCornerRadius:v11];
  [viewCopy setContinuousCornerEnabled:1];
  v13 = *(p_tableCellFlags + 1) & 0x1F;
  if (v13 <= 0x10 && ((1 << v13) & 0x10006) != 0)
  {
    [viewCopy setClipsContentToBounds:0];
  }
}

- (void)_willUpdateFocusInContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = UITableViewCell;
  [(UIView *)&v8 _willUpdateFocusInContext:contextCopy];
  previouslyFocusedView = [contextCopy previouslyFocusedView];
  v6 = previouslyFocusedView;
  if (previouslyFocusedView == self)
  {

LABEL_5:
    [(UITableViewCell *)self _prepareForConfigurationStateUpdate];
    goto LABEL_6;
  }

  nextFocusedView = [contextCopy nextFocusedView];

  if (nextFocusedView == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_didUpdateFocusInContext:(id)context
{
  contextCopy = context;
  previouslyFocusedView = [contextCopy previouslyFocusedView];

  if (previouslyFocusedView == self)
  {
    _tableView = [(UITableViewCell *)self _tableView];
    [_tableView _cellDidBecomeUnfocused:self];
  }

  nextFocusedView = [contextCopy nextFocusedView];

  if (nextFocusedView == self)
  {
    _tableView2 = [(UITableViewCell *)self _tableView];
    [_tableView2 _cellDidBecomeFocused:self];
  }

  v12.receiver = self;
  v12.super_class = UITableViewCell;
  [(UIView *)&v12 _didUpdateFocusInContext:contextCopy];
  previouslyFocusedView2 = [contextCopy previouslyFocusedView];
  v10 = previouslyFocusedView2;
  if (previouslyFocusedView2 == self)
  {

LABEL_9:
    [(UITableViewCell *)self setNeedsUpdateConfiguration];
    goto LABEL_10;
  }

  nextFocusedView2 = [contextCopy nextFocusedView];

  if (nextFocusedView2 == self)
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

- (void)_updateDefaultLabelsForFocus:(BOOL)focus
{
  focusCopy = focus;
  _constants = [(UITableViewCell *)self _constants];
  _tableView = [(UITableViewCell *)self _tableView];
  if ([_constants supportsUserInterfaceStyles])
  {
    textLabel = self->_textLabel;
    if (focusCopy)
    {
      v7 = [_constants defaultFocusedTextColorForCell:self inTableView:_tableView];
      [(UILabel *)textLabel _setFallbackTextColor:v7 forUserInterfaceStyle:1];

      v8 = self->_textLabel;
      v9 = [_constants defaultFocusedTextColorForCell:self inTableView:_tableView];
      [(UILabel *)v8 _setFallbackTextColor:v9 forUserInterfaceStyle:2];

      v10 = self->_textLabel;
      v11 = [_constants defaultFocusedTextColorForCell:self inTableView:_tableView];
      [(UILabel *)v10 _setFallbackTextColor:v11 forUserInterfaceStyle:1000];

      detailTextLabel = self->_detailTextLabel;
      v13 = [_constants defaultFocusedDetailTextColorForCell:self inTableView:_tableView];
      [(UILabel *)detailTextLabel _setFallbackTextColor:v13 forUserInterfaceStyle:1];

      v14 = self->_detailTextLabel;
      v15 = [_constants defaultFocusedDetailTextColorForCell:self inTableView:_tableView];
      [(UILabel *)v14 _setFallbackTextColor:v15 forUserInterfaceStyle:2];

      v16 = self->_detailTextLabel;
      v17 = [_constants defaultFocusedDetailTextColorForCell:self inTableView:_tableView];
      v18 = v16;
    }

    else
    {
      v22 = [_constants defaultTextColorForUserInterfaceStyle:1];
      [(UILabel *)textLabel _setFallbackTextColor:v22 forUserInterfaceStyle:1];

      v23 = self->_textLabel;
      v24 = [_constants defaultTextColorForUserInterfaceStyle:2];
      [(UILabel *)v23 _setFallbackTextColor:v24 forUserInterfaceStyle:2];

      v25 = self->_textLabel;
      v26 = [_constants defaultTextColorForUserInterfaceStyle:1000];
      [(UILabel *)v25 _setFallbackTextColor:v26 forUserInterfaceStyle:1000];

      v27 = self->_detailTextLabel;
      v28 = [_constants defaultDetailTextColorForUserInterfaceStyle:1];
      [(UILabel *)v27 _setFallbackTextColor:v28 forUserInterfaceStyle:1];

      v29 = self->_detailTextLabel;
      v30 = [_constants defaultDetailTextColorForUserInterfaceStyle:2];
      [(UILabel *)v29 _setFallbackTextColor:v30 forUserInterfaceStyle:2];

      v31 = self->_detailTextLabel;
      v17 = [_constants defaultDetailTextColorForUserInterfaceStyle:1000];
      v18 = v31;
    }

    [(UILabel *)v18 _setFallbackTextColor:v17 forUserInterfaceStyle:1000];
  }

  else
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom != 3)
    {
      goto LABEL_10;
    }

    if (focusCopy)
    {
      v21 = [_constants defaultFocusedTextColorForCell:self inTableView:_tableView];
      [(UILabel *)self->_textLabel setTextColor:v21];

      v17 = [_constants defaultFocusedDetailTextColorForCell:self inTableView:_tableView];
      [(UILabel *)self->_detailTextLabel setTextColor:v17];
    }

    else
    {
      v17 = [UICellConfigurationState _readonlyCellState:?];
      _cellStyle = [(UITableViewCell *)self _cellStyle];
      traitCollection2 = [(UIView *)self traitCollection];
      _inheritedInteractionTintColor = [(UIView *)self _inheritedInteractionTintColor];
      v35 = [_constants defaultTextColorForCellStyle:_cellStyle traitCollection:traitCollection2 tintColor:_inheritedInteractionTintColor state:v17];
      [(UILabel *)self->_textLabel setTextColor:v35];

      _cellStyle2 = [(UITableViewCell *)self _cellStyle];
      traitCollection3 = [(UIView *)self traitCollection];
      v38 = [_constants defaultDetailTextColorForCellStyle:_cellStyle2 traitCollection:traitCollection3 state:v17];
      [(UILabel *)self->_detailTextLabel setTextColor:v38];
    }
  }

LABEL_10:
}

- (void)_updateDefaultAccessoryViewForFocus:(BOOL)focus
{
  [(UITableViewCell *)self _updateAccessoriesIfNeeded];
  isEditing = [(UITableViewCell *)self isEditing];
  if (isEditing)
  {
    editingAccessoryType = [(UITableViewCell *)self editingAccessoryType];
    v7 = &OBJC_IVAR___UITableViewCell__customEditingAccessoryView;
  }

  else
  {
    editingAccessoryType = [(UITableViewCell *)self accessoryType];
    v7 = &OBJC_IVAR___UITableViewCell__customAccessoryView;
  }

  v8 = *(&self->super.super.super.isa + *v7);
  v9 = v8;
  v10 = editingAccessoryType == UITableViewCellAccessoryCheckmark || editingAccessoryType == UITableViewCellAccessoryDisclosureIndicator;
  if (v10 && !v8)
  {
    v11 = [(UITableViewCell *)self _existingSystemAccessoryView:isEditing];
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
    _constants = [(UITableViewCell *)self _constants];
    _tableView = [(UITableViewCell *)self _tableView];
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

    if (editingAccessoryType == UITableViewCellAccessoryDisclosureIndicator)
    {
      if (!focus)
      {
        _accessoryBaseColor = [_tableView _accessoryBaseColor];
        v18 = [_constants defaultDisclosureImageForCell:self withAccessoryBaseColor:_accessoryBaseColor];

LABEL_25:
        [v13 setBackgroundImage:v18 forStates:0];

LABEL_26:
        if (focus)
        {
          if (objc_opt_respondsToSelector())
          {
            constants = self->_constants;
            _tableView2 = [(UITableViewCell *)self _tableView];
            v21 = [(UITableConstants *)constants defaultFocusedAccessoryColorForCell:self inTableView:_tableView2];
LABEL_31:
            v23 = v21;
            [v13 setTintColor:v21];
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          v22 = self->_constants;
          _tableView2 = [(UITableViewCell *)self _tableView];
          v21 = [(UITableConstants *)v22 defaultAccessoryColorForCell:self inTableView:_tableView2];
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      v16 = [_constants defaultFocusedDisclosureImageForCell:self inTableView:_tableView];
    }

    else
    {
      if (editingAccessoryType != UITableViewCellAccessoryCheckmark)
      {
        goto LABEL_26;
      }

      if (focus)
      {
        [_constants defaultFocusedCheckmarkImageForCell:self inTableView:_tableView];
      }

      else
      {
        [_constants defaultCheckmarkImageForCell:self];
      }
      v16 = ;
    }

    v18 = v16;
    goto LABEL_25;
  }

LABEL_33:
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = UITableViewCell;
  [(UIView *)&v12 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    nextFocusedView = [contextCopy nextFocusedView];
    v10 = nextFocusedView == self;

    _tableView = [(UITableViewCell *)self _tableView];
    [_tableView _highlightCell:self animated:0 scrollPosition:0 highlight:v10];
  }
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context
{
  if (self->_floatingContentView)
  {
    v4 = [(_UIFloatingContentView *)self->_floatingContentView _preferredConfigurationForFocusAnimation:animation inContext:context];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UITableViewCell;
    v4 = [(UIView *)&v6 _preferredConfigurationForFocusAnimation:animation inContext:context];
  }

  return v4;
}

- (void)_setConstants:(id)constants
{
  constantsCopy = constants;
  if (self->_constants != constantsCopy)
  {
    v6 = constantsCopy;
    objc_storeStrong(&self->_constants, constants);
    [(UITableViewCell *)self _updateContentClip];
    [(UITableViewCell *)self _updateAccessoryMetrics];
    [(UITableViewCell *)self _updateDefaultBackgroundAppearance];
    [(UITableViewCell *)self _updateDefaultIndentationWidth];
    constantsCopy = v6;
  }
}

- (void)_setMetricsAdapter:(id)adapter
{
  adapterCopy = adapter;
  if (self->_metricsAdapter != adapterCopy)
  {
    v6 = adapterCopy;
    objc_storeStrong(&self->_metricsAdapter, adapter);
    [(UITableViewCell *)self _updateContentClip];
    [(UITableViewCell *)self _updateAccessoryMetrics];
    [(UITableViewCell *)self _updateDefaultBackgroundAppearance];
    [(UITableViewCell *)self _updateDefaultIndentationWidth];
    adapterCopy = v6;
  }
}

- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)engine
{
  if (engine == 1)
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
    layer = [(UIView *)self layer];
    [layer cornerRadius];
    maskedCorners = [layer maskedCorners];
    [(UIView *)self bounds];
    v4 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:" byRoundingCorners:maskedCorners & 0xF cornerRadii:?];
  }

  return v4;
}

- (id)_defaultFocusEffect
{
  if (self->_systemBackgroundView)
  {
    [(UITableViewCell *)self _performConfigurationStateUpdate];
    configuration = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
    if (([configuration isTintBackgroundColor] & 1) != 0 || (-[UIView traitCollection](self, "traitCollection"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "userInterfaceIdiom"), v4, v5 <= 5) && ((1 << v5) & 0x23) != 0 && -[UITableViewCell _backgroundFillIsCustomized](self, "_backgroundFillIsCustomized"))
    {
      v6 = 0;
      goto LABEL_11;
    }
  }

  _tableView = [(UITableViewCell *)self _tableView];
  _effectiveDefaultAllowsFocus = [_tableView _effectiveDefaultAllowsFocus];

  v9 = off_1E70E9948;
  if (!_effectiveDefaultAllowsFocus)
  {
    v9 = off_1E70EB810;
  }

  v10 = *v9;
  configuration = [(UITableViewCell *)self _defaultFocusOutline];
  v6 = [(__objc2_class *)v10 effectWithPath:configuration];
LABEL_11:

  return v6;
}

- (int64_t)focusItemDeferralMode
{
  _tableView = [(UITableViewCell *)self _tableView];
  v4 = [_tableView _cellFocusItemDeferral:self];

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = UITableViewCell;
  [(UIView *)&v10 traitCollectionDidChange:changeCopy];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UITableViewCell *)self setNeedsUpdateConfiguration];
  }

  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v9 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

  if (IsAccessibilityCategory != v9)
  {
    [(UITableViewCell *)self _setNeedsSeparatorUpdate];
    [(UITableViewCell *)self _updateAccessoryMetrics];
    [(UITableViewCell *)self _setNeedsAccessoriesUpdateForced:1];
  }

  [(UIView *)self traitCollection];
}

- (void)_prepareHighlightForInteraction:(id)interaction
{
  p_tableCellFlags = &self->_tableCellFlags;
  if ((*(&self->_tableCellFlags + 10) & 0x40) == 0)
  {
    interactionCopy = interaction;
    _tableView = [(UITableViewCell *)self _tableView];
    [_tableView _prepareHighlightForCell:self withInteraction:interactionCopy];

    *(p_tableCellFlags + 1) |= 0x400000uLL;
  }
}

- (void)_highlightForInteraction:(id)interaction fractionComplete:(double)complete ended:(BOOL)ended
{
  endedCopy = ended;
  interactionCopy = interaction;
  if (endedCopy)
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
      CGAffineTransformMakeScale(&v20, complete * 0.945 + (1.0 - complete) * 0.99, complete * 0.945 + (1.0 - complete) * 0.99);
    }

    completeCopy = complete;
    v13 = powf(completeCopy, 3.0);
    v10 = 1.0 - v13 + v13 * 0.0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__UITableViewCell__highlightForInteraction_fractionComplete_ended___block_invoke;
  v19[3] = &unk_1E70F3590;
  v19[4] = self;
  [UIView performWithoutAnimation:v19];
  v18 = v20;
  contentView = [(UITableViewCell *)self contentView];
  v17 = v18;
  [contentView setTransform:&v17];

  selectedBackgroundView = [(UITableViewCell *)self selectedBackgroundView];
  [selectedBackgroundView setAlpha:v10];

  backgroundView = [(UITableViewCell *)self backgroundView];
  [backgroundView setAlpha:1.0 - v10];

  if (endedCopy && ![(UITableViewCell *)self _hidesBottomSeparatorWhenUnselected])
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

- (void)_highlightDidEndForInteraction:(id)interaction
{
  v4 = *(&self->_tableCellFlags + 1);
  if ((v4 & 0x400000) != 0)
  {
    *(&self->_tableCellFlags + 1) = v4 & 0xFFFFFFFFFFBFFFFFLL;
    interactionCopy = interaction;
    if (![(UITableViewCell *)self isHighlighted])
    {
      selectedBackgroundView = [(UITableViewCell *)self selectedBackgroundView];
      superview = [selectedBackgroundView superview];

      if (superview)
      {
        [(UITableViewCell *)self showSelectedBackgroundView:0 animated:0];
      }
    }

    _tableView = [(UITableViewCell *)self _tableView];
    [_tableView _highlightDidEndForCell:self withInteraction:interactionCopy];
  }
}

- (void)_setUsesModernAccessoriesLayout:(BOOL)layout
{
  layoutCopy = layout;
  if ([(UITableViewCell *)self _usesModernAccessoriesLayout]!= layout)
  {
    if (layoutCopy)
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

- (void)_setAccessoryManager:(id)manager
{
  managerCopy = manager;
  if (self->_accessoryManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_accessoryManager, manager);
    managerCopy = v6;
    if (v6)
    {
      [(UITableViewCell *)self _updateAccessoryMetrics];
      [(UITableViewCell *)self _setNeedsAccessoriesUpdate];
      managerCopy = v6;
    }

    else
    {
      *(&self->_tableCellFlags + 1) &= ~0x8000000uLL;
    }
  }
}

- (int64_t)_sanitizedEditingStyleForEditing:(BOOL)editing style:(int64_t)style
{
  if (!editing)
  {
    return 0;
  }

  p_tableCellFlags = &self->_tableCellFlags;
  if ((*&self->_tableCellFlags & 0x7000) != 0x3000)
  {
    styleCopy = style;
    _tableView = [(UITableViewCell *)self _tableView];
    if (([_tableView allowsMultipleSelectionDuringEditing] & 1) == 0)
    {

      return styleCopy;
    }

    v8 = *(p_tableCellFlags + 1);

    if ((v8 & 0x400000000) != 0)
    {
      return styleCopy;
    }
  }

  return 3;
}

- (id)_editControlAccessoryForStyle:(int64_t)style
{
  if (style > 1)
  {
    v7 = @"multiselect";
    if (style != 3)
    {
      v7 = 0;
    }

    if (style == 2)
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
    if (!style)
    {
      goto LABEL_14;
    }

    if (style == 1)
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    WeakRetained = objc_loadWeakRetained(&self->_tableView);
    v14 = [WeakRetained description];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:8195 description:{@"Invalid editing style detected (%tu). This is likely due to an invalid value being returned from the implementation of -tableView:editingStyleForRowAtIndexPath: of this table view's delegate: %@", style, v14}];
  }

LABEL_14:
  v10 = 0;
LABEL_15:

  return v10;
}

- (id)_leadingAccessoriesForEditing:(BOOL)editing style:(int64_t)style
{
  editingCopy = editing;
  array = [MEMORY[0x1E695DF70] array];
  v8 = [(UITableViewCell *)self _sanitizedEditingStyleForEditing:editingCopy style:style];
  if ([(UITableViewCell *)self _editControlShouldBeOnLeadingSideForStyle:v8])
  {
    v9 = [(UITableViewCell *)self _editControlAccessoryForStyle:v8];
    if (v9)
    {
      [array addObject:v9];
    }
  }

  if (editingCopy && ![array count] && (*(&self->_tableCellFlags + 4) & 0x20) != 0)
  {
    _constants = [(UITableViewCell *)self _constants];
    traitCollection = [(UIView *)self traitCollection];
    [_constants defaultImageViewSymbolImageAndAccessoryLayoutWidthForSidebar:0 traitCollection:traitCollection];
    v13 = v12;

    if (v13 > 0.0)
    {
      v14 = [_UICellSpacingAccessory accessoryWithIdentifier:@"spacing" size:v13, 1.0];
      [array addObject:v14];
    }
  }

  return array;
}

- (id)_trailingAccessoriesForType:(int64_t)type view:(id)view editing:(BOOL)editing style:(int64_t)style
{
  editingCopy = editing;
  viewCopy = view;
  array = [MEMORY[0x1E695DF70] array];
  _badgeText = [(UITableViewCell *)self _badgeText];
  if ([_badgeText length])
  {
    v13 = *(&self->_tableCellFlags + 1);

    if ((v13 & 0x20000000) != 0)
    {
      _badge = [(UITableViewCell *)self _badge];
      v15 = [_UICellViewAccessory accessoryWithIdentifier:@"badge" view:_badge options:1];

      v16 = v15 != 0;
      if (type != 2 && v15)
      {
        [array addObject:v15];
        v16 = 1;
      }

      if (viewCopy)
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
  if (viewCopy)
  {
LABEL_7:
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v18 = 1.79769313e308;
    if ((isKindOfClass & 1) == 0)
    {
      v18 = 0.0;
    }

    if (editingCopy)
    {
      v19 = @"customEditing";
    }

    else
    {
      v19 = @"custom";
    }

    v20 = [_UICellViewAccessory accessoryWithIdentifier:v19 view:viewCopy options:12 reservedLayoutWidth:v18];
    [array addObject:v20];
    goto LABEL_34;
  }

LABEL_15:
  if (type > 3)
  {
    if ((type - 5) < 2)
    {
      v20 = [(UITableViewCell *)self _accessoryViewForType:5];
      v24 = @"expand";
    }

    else if ((type - 7) >= 2)
    {
      if (type != 4)
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
      [array addObject:v23];

      if (v16)
      {
        [array addObject:v15];
      }

      v20 = [(UITableViewCell *)self _accessoryViewForType:1];
      v24 = @"chevron";
    }

    v21 = [_UICellViewAccessory accessoryWithIdentifier:v24 view:v20 options:1];
    goto LABEL_33;
  }

  if (type != 1)
  {
    if (type != 2)
    {
      if (type != 3)
      {
        goto LABEL_35;
      }

      v20 = [(UITableViewCell *)self _accessoryViewForType:3];
      v21 = [_UICellViewAccessory accessoryWithIdentifier:@"checkmark" view:v20 options:1];
      goto LABEL_33;
    }

    v25 = [(UITableViewCell *)self _accessoryViewForType:4];
    v26 = [_UICellViewAccessory accessoryWithIdentifier:@"info" view:v25 options:1];
    [array addObject:v26];

    if (v16)
    {
      [array addObject:v15];
    }
  }

  v20 = [(UITableViewCell *)self _accessoryViewForType:1];
  v21 = [_UICellViewAccessory accessoryWithIdentifier:@"chevron" view:v20 options:1 reservedLayoutWidth:1.79769313e308];
LABEL_33:
  v27 = v21;
  [array addObject:v21];

LABEL_34:
LABEL_35:
  v28 = [(UITableViewCell *)self _sanitizedEditingStyleForEditing:editingCopy style:style];
  if (![(UITableViewCell *)self _editControlShouldBeOnLeadingSideForStyle:v28])
  {
    v29 = [(UITableViewCell *)self _editControlAccessoryForStyle:v28];
    if (v29)
    {
      [array addObject:v29];
    }
  }

  tableCellFlags = self->_tableCellFlags;
  if ((tableCellFlags & 0x200000) != 0 && ((tableCellFlags & 0x20000000000) == 0 || (*(&self->_tableCellFlags + 9) & 0x40) != 0))
  {
    if (type || viewCopy)
    {
      v31 = [(UITableViewCell *)self editingData:1];
      v32 = [v31 reorderSeparatorView:1];
      v33 = [_UICellViewAccessory accessoryWithIdentifier:@"reorderSeparator" view:v32 options:1];
      [array addObject:v33];
    }

    v34 = [(UITableViewCell *)self editingData:1];
    v35 = [v34 reorderControl:1];
    v36 = [_UICellViewAccessory accessoryWithIdentifier:@"reorder" view:v35 options:1];
    [array addObject:v36];
  }

  return array;
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

- (void)_setNeedsAccessoriesUpdateForced:(BOOL)forced
{
  v3 = *(&self->_tableCellFlags + 1);
  if (forced)
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIListStyle _UIListStyleForTableViewStyle(UITableViewStyle)"];
    [currentHandler handleFailureInFunction:v4 file:@"UITableView_Internal.h" lineNumber:101 description:{@"UIKit internal inconsistency: unknown table view style (%ld)", v2}];

    return 0;
  }

  return v2;
}

- (int64_t)_listCellStyle
{
  _existingContentView = [(UITableViewCell *)self _existingContentView];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  _listCellStyle = [_existingContentView _listCellStyle];
  v6 = _listCellStyle;
  if (_listCellStyle > 2)
  {
    if (_listCellStyle == 4)
    {
      v6 = 5;
      goto LABEL_14;
    }

    if (_listCellStyle == 3)
    {
      v6 = 4;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (_listCellStyle >= 3)
  {
    if (_listCellStyle == -1)
    {
LABEL_5:
      tableCellFlags = self->_tableCellFlags;
      if ((tableCellFlags & 0x3FF000000000000) == 0)
      {
        v6 = qword_18A682840[(tableCellFlags >> 46) & 3];
        goto LABEL_14;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITableViewCell.m" lineNumber:8438 description:{@"UIKit internal inconsistency: unknown table view cell style (%ld)", (*&self->_tableCellFlags >> 46) & 0xFFFLL}];

      goto LABEL_7;
    }

LABEL_12:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIListCellStyle _UIListCellStyleForContentViewCellStyle(_UIContentViewCellStyle)"];
    [currentHandler2 handleFailureInFunction:v10 file:@"_UIContentViewDefaultStylingObtaining_Internal.h" lineNumber:27 description:{@"UIKit internal inconsistency: unknown content view cell style (%ld)", v6}];

LABEL_7:
    v6 = 0;
  }

LABEL_14:

  return v6;
}

- (int64_t)_listCellProminence
{
  _existingContentView = [(UITableViewCell *)self _existingContentView];
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

@end