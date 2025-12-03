@interface UICollectionViewCell
+ (BOOL)_subclassOverridesContentViewClass;
+ (id)_createDefaultContentViewWithFrame:(CGRect)frame;
- (BOOL)_allowsHorizontalFocusMovement;
- (BOOL)_appliesLayoutAttributesMaskingToBackgroundConfiguration;
- (BOOL)_appliesLayoutAttributesMaskingToReusableView;
- (BOOL)_backgroundFillIsCustomized;
- (BOOL)_backgroundIsVerticallyInset;
- (BOOL)_descendantsShouldHighlight;
- (BOOL)_forwardsSystemLayoutFittingSizeToContentView:(id)view;
- (BOOL)_gestureRecognizerShouldBegin:(id)begin;
- (BOOL)_hasCustomSelectionAction;
- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)engine;
- (BOOL)_shouldSaveOpaqueStateForView:(id)view;
- (BOOL)_usingBackgroundConfigurationOrDefaultBackgroundConfiguration;
- (BOOL)canBecomeFocused;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isFocused;
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (CGSize)_contentTargetSizeForTargetSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority forUseWithSizeThatFits:(BOOL)fits;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (UIBackgroundConfiguration)backgroundConfiguration;
- (UICellConfigurationState)_configurationState;
- (UICollectionViewCell)initWithCoder:(id)coder;
- (UICollectionViewCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)_contentViewInset;
- (UIView)contentView;
- (id)_backgroundViewConfiguration;
- (id)_backgroundViewConfigurationProvider;
- (id)_contentViewConfiguration;
- (id)_contentViewConfigurationProvider;
- (id)_defaultFocusEffect;
- (id)_defaultFocusOutline;
- (id)_effectiveDefaultBackgroundConfiguration;
- (id)_effectivePopupMenuButton;
- (id)_encodableSubviews;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context;
- (id)_selectionSegueTemplate;
- (id)_stateForUpdatingBackgroundConfigurationWithState:(id)state;
- (id)contentConfiguration;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (int64_t)_systemDefaultFocusGroupPriority;
- (int64_t)focusItemDeferralMode;
- (unint64_t)_effectiveMaskedCornersForSystemBackgroundView;
- (unint64_t)_maskedCornersForSystemBackgroundView;
- (unint64_t)_viewConfigurationState;
- (void)_applyBackgroundViewConfiguration:(id)configuration withState:(id)state;
- (void)_applyContentViewConfiguration:(id)configuration withState:(id)state usingSPI:(BOOL)i;
- (void)_clearChangeHandlersForOldContentView:(id)view;
- (void)_configureFocusedFloatingContentView:(id)view;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_executeConfigurationUpdate;
- (void)_forcePopulateNormalStateConfiguration;
- (void)_handleMenuGesture:(id)gesture;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)_layoutContentView;
- (void)_layoutFocusedFloatingContentView:(id)view;
- (void)_layoutSystemBackgroundView;
- (void)_monitoredView:(id)view didMoveFromSuperview:(id)superview toSuperview:(id)toSuperview;
- (void)_monitoredView:(id)view willMoveFromSuperview:(id)superview toSuperview:(id)toSuperview;
- (void)_notifyIsDisplaying:(BOOL)displaying;
- (void)_performAction:(SEL)action sender:(id)sender;
- (void)_performConfigurationStateModifications:(id)modifications;
- (void)_performConfigurationStateUpdate;
- (void)_performCustomSelectionAction;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_prepareForConfigurationStateUpdate;
- (void)_resetBackgroundViewConfiguration;
- (void)_resetBackgroundViewsAndColor;
- (void)_restoreCurrentDragAppearanceIfNeeded;
- (void)_setAllowsStateUpdatesWhenEvaluatingBackgroundAppearance:(BOOL)appearance;
- (void)_setAutomaticIntrinsicContentSizeInvalidationEnabled:(BOOL)enabled;
- (void)_setBackgroundViewConfiguration:(id)configuration;
- (void)_setBackgroundViewConfigurationProvider:(id)provider;
- (void)_setContentView:(id)view addToHierarchy:(BOOL)hierarchy;
- (void)_setContentViewConfigurationProvider:(id)provider;
- (void)_setContextMenuGroupLocation:(int64_t)location;
- (void)_setDragAppearance:(unint64_t)appearance;
- (void)_setDropState:(int64_t)state;
- (void)_setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)_setLayoutAttributes:(id)attributes;
- (void)_setOpaque:(BOOL)opaque forSubview:(id)subview;
- (void)_setPopupMenuButton:(id)button;
- (void)_setReordering:(BOOL)reordering;
- (void)_setSelected:(BOOL)selected animated:(BOOL)animated isUserInitiated:(BOOL)initiated;
- (void)_setSelectionSegueTemplate:(id)template;
- (void)_setSwiped:(BOOL)swiped;
- (void)_setTypeSelectState:(int64_t)state;
- (void)_setUsesAnyPlainListStyle:(BOOL)style;
- (void)_setupChangeHandlersForNewContentView:(id)view;
- (void)_setupHighlightingSupport;
- (void)_teardownHighlightingSupportIfReady;
- (void)_updateBackgroundView;
- (void)_updateBackgroundViewConfigurationForState:(id)state;
- (void)_updateConfigurationWithObservationTracking;
- (void)_updateContentViewConfigurationForState:(id)state;
- (void)_updateDefaultBackgroundAppearance;
- (void)_updateFocusedFloatingContentControlStateInContext:(id)context withAnimationCoordinator:(id)coordinator animated:(BOOL)animated;
- (void)_updateHighlightColorsForAnimationHalfwayPoint;
- (void)_updateHighlightColorsForView:(id)view highlight:(BOOL)highlight;
- (void)_updatePopupMenuButtonFromContentView;
- (void)_updateProperties;
- (void)_updateUserInterfaceRenderingModeUsingAttributes:(id)attributes;
- (void)_willUpdateFocusInContext:(id)context;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAutomaticallyUpdatesBackgroundConfiguration:(BOOL)automaticallyUpdatesBackgroundConfiguration;
- (void)setAutomaticallyUpdatesContentConfiguration:(BOOL)automaticallyUpdatesContentConfiguration;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundConfiguration:(UIBackgroundConfiguration *)backgroundConfiguration;
- (void)setBackgroundView:(UIView *)backgroundView;
- (void)setConfigurationUpdateHandler:(UICollectionViewCellConfigurationUpdateHandler)configurationUpdateHandler;
- (void)setEditing:(BOOL)editing;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setNeedsUpdateConfiguration;
- (void)setSelected:(BOOL)selected;
- (void)setSelectedBackgroundView:(UIView *)selectedBackgroundView;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UICollectionViewCell

- (BOOL)_usingBackgroundConfigurationOrDefaultBackgroundConfiguration
{
  if ([(UICollectionViewCell *)self _usingBackgroundViewConfiguration])
  {
    return 1;
  }

  if ((*&self->_collectionCellFlags & 0x36000) != 0)
  {
    return 0;
  }

  return (*&self->_collectionCellFlags & 0x8000) == 0;
}

- (void)_updateDefaultBackgroundAppearance
{
  collectionCellFlags = self->_collectionCellFlags;
  if ((*&collectionCellFlags & 0x30000) == 0)
  {
    if ((*&collectionCellFlags & 0xE000) != 0)
    {
      if ((*&collectionCellFlags & 0x4000) == 0)
      {
        _defaultBackgroundView = [(UICollectionViewCell *)self _defaultBackgroundView];
        [(UICollectionViewCell *)self setBackgroundView:_defaultBackgroundView];

        collectionCellFlags = (*&self->_collectionCellFlags & 0xFFFFBFFF);
        self->_collectionCellFlags = collectionCellFlags;
      }

      if ((*&collectionCellFlags & 0x8000) == 0)
      {
        _defaultSelectedBackgroundView = [(UICollectionViewCell *)self _defaultSelectedBackgroundView];
        [(UICollectionViewCell *)self setSelectedBackgroundView:_defaultSelectedBackgroundView];

        *&self->_collectionCellFlags &= ~0x8000u;
      }
    }

    else
    {
      _effectiveDefaultBackgroundConfiguration = [(UICollectionViewCell *)self _effectiveDefaultBackgroundConfiguration];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __58__UICollectionViewCell__updateDefaultBackgroundAppearance__block_invoke;
      v8[3] = &unk_1E70F35B8;
      v8[4] = self;
      v9 = _effectiveDefaultBackgroundConfiguration;
      v7 = _effectiveDefaultBackgroundConfiguration;
      [UIView _performSystemAppearanceModifications:v8];
      *&self->_collectionCellFlags &= ~0x20000u;
    }
  }
}

- (id)_effectiveDefaultBackgroundConfiguration
{
  if (self->_contentView && (objc_opt_respondsToSelector() & 1) != 0 && ([(UIView *)self->_contentView _containerBackgroundView], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    _defaultBackgroundConfiguration = +[UIBackgroundConfiguration clearConfiguration];
    [_defaultBackgroundConfiguration setCustomView:v4];
  }

  else
  {
    _defaultBackgroundConfiguration = [(UICollectionViewCell *)self _defaultBackgroundConfiguration];
  }

  return _defaultBackgroundConfiguration;
}

- (void)_updatePopupMenuButtonFromContentView
{
  if (objc_opt_respondsToSelector())
  {
    _popupMenuButton = [(UIView *)self->_contentView _popupMenuButton];
    [(UICollectionViewCell *)self _setPopupMenuButton:_popupMenuButton];
  }
}

- (unint64_t)_maskedCornersForSystemBackgroundView
{
  _layoutAttributes = [(UICollectionReusableView *)self _layoutAttributes];
  if (_layoutAttributes)
  {
    v3 = _layoutAttributes[72];
    if ((v3 & 0x10) != 0)
    {
      v4 = (v3 >> 5) & 0xF;
    }

    else
    {
      v4 = 15;
    }
  }

  else
  {
    v4 = 15;
  }

  return v4;
}

- (BOOL)_appliesLayoutAttributesMaskingToReusableView
{
  if ([(UICollectionViewCell *)self _appliesLayoutAttributesMaskingToBackgroundConfiguration])
  {
    return ![(UICollectionViewCell *)self _usingBackgroundViewConfiguration];
  }

  else
  {
    return 1;
  }
}

- (BOOL)_appliesLayoutAttributesMaskingToBackgroundConfiguration
{
  if ((*&self->_collectionCellFlags & 0x10) == 0)
  {
    return (*&self->_collectionCellFlags & 0xE0) != 0;
  }

  traitCollection = [(UIView *)self traitCollection];
  v2 = [traitCollection userInterfaceIdiom] != 6 || (*&self->_collectionCellFlags & 0xE0) != 0;

  return v2;
}

+ (BOOL)_subclassOverridesContentViewClass
{
  if (qword_1ED4964E8 != -1)
  {
    dispatch_once(&qword_1ED4964E8, &__block_literal_global_119);
  }

  v3 = [self methodForSelector:sel__contentViewClass];
  if (v3)
  {
    v4 = v3 == qword_1ED4964E0;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (void)_updateProperties
{
  v3.receiver = self;
  v3.super_class = UICollectionViewCell;
  [(UIView *)&v3 _updateProperties];
  [(UICollectionViewCell *)self _performConfigurationStateUpdate];
}

- (void)_updateConfigurationWithObservationTracking
{
  selfCopy = self;
  sub_188C78D28();
}

- (unint64_t)_viewConfigurationState
{
  configurationState = [(UICollectionViewCell *)self configurationState];
  _viewConfigurationState = [configurationState _viewConfigurationState];

  return _viewConfigurationState;
}

uint64_t __58__UICollectionViewCell__subclassOverridesContentViewClass__block_invoke()
{
  result = [UICollectionViewCell methodForSelector:sel__contentViewClass];
  qword_1ED4964E0 = result;
  return result;
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

    memcpy(v12, __src, sizeof(v12));
    TraitCollectionTSD = GetTraitCollectionTSD();
    memcpy(__dst, TraitCollectionTSD + 16, sizeof(__dst));
    memcpy(TraitCollectionTSD + 16, v12, 0x170uLL);
    v7 = __dst[22] & ~*&__src[11];
    v8 = *&__src[11] & ~__dst[22];
    v9 = __dst[22] & *&__src[11];
    v10 = [self methodForSelector:sel_updateConfigurationUsingState_];
    *&v12[0] = v7;
    *(&v12[0] + 1) = v8;
    *&v12[1] = v9;
    [(UIView *)self _recordTraitUsage:v12 trackedStateDiff:v10 insideMethod:sel_setNeedsUpdateConfiguration withInvalidationAction:?];
    v11 = _UITraitUsageTrackingResultDestroy(__dst);
    self[148] &= ~0x800000u;
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      [self _layoutSystemBackgroundView];
    }

    _UIRestorePreviousFallbackEnvironment(v2);
  }
}

- (id)contentConfiguration
{
  if ((*(&self->_collectionCellFlags + 1) & 0x10) != 0)
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

- (UICellConfigurationState)_configurationState
{
  v3 = [UICellConfigurationState alloc];
  traitCollection = [(UIView *)self traitCollection];
  v5 = [(UIViewConfigurationState *)v3 initWithTraitCollection:traitCollection];

  [(UIViewConfigurationState *)v5 setDisabled:[(UIView *)self isUserInteractionEnabled]^ 1];
  [(UIViewConfigurationState *)v5 setHighlighted:[(UICollectionViewCell *)self isHighlighted]];
  [(UIViewConfigurationState *)v5 setSelected:[(UICollectionViewCell *)self isSelected]];
  [(UIViewConfigurationState *)v5 setFocused:[(UICollectionViewCell *)self isFocused]];
  [(UICellConfigurationState *)v5 setEditing:[(UICollectionViewCell *)self isEditing]];
  [(UICellConfigurationState *)v5 setSwiped:[(UICollectionViewCell *)self _isSwiped]];
  [(UICellConfigurationState *)v5 setReordering:[(UICollectionViewCell *)self _isReordering]];
  [(UICellConfigurationState *)v5 _setTypeSelectState:[(UICollectionViewCell *)self _typeSelectState]];
  _layoutAttributes = [(UICollectionReusableView *)self _layoutAttributes];
  v7 = _layoutAttributes;
  if (_layoutAttributes)
  {
    [(UIViewConfigurationState *)v5 setPinned:(*(_layoutAttributes + 288) >> 15) & 1];
    [(UIViewConfigurationState *)v5 _setContextMenuGroupLocation:[(UICollectionViewCell *)self _contextMenuGroupLocation]];
    [(UICellConfigurationState *)v5 _setUsesAnyPlainListStyle:[(UICollectionViewCell *)self _usesAnyPlainListStyle]];
    v8 = v7[38] > 1uLL;
  }

  else
  {
    [(UIViewConfigurationState *)v5 setPinned:0];
    [(UIViewConfigurationState *)v5 _setContextMenuGroupLocation:[(UICollectionViewCell *)self _contextMenuGroupLocation]];
    [(UICellConfigurationState *)v5 _setUsesAnyPlainListStyle:[(UICollectionViewCell *)self _usesAnyPlainListStyle]];
    v8 = 0;
  }

  [(UICellConfigurationState *)v5 _setInMultiSelectGroup:v8];
  v9 = self->_dragAppearance - 1;
  if (v9 <= 2)
  {
    [(UICellConfigurationState *)v5 setCellDragState:qword_18A679038[v9]];
  }

  [(UICellConfigurationState *)v5 setCellDropState:[(UICollectionViewCell *)self _dropState]];

  return v5;
}

- (unint64_t)_effectiveMaskedCornersForSystemBackgroundView
{
  _layoutAttributes = [(UICollectionReusableView *)self _layoutAttributes];
  _existingListAttributes = [(UICollectionViewLayoutAttributes *)_layoutAttributes _existingListAttributes];
  v5 = _existingListAttributes;
  if (_existingListAttributes && (*(_existingListAttributes + 8) & 2) != 0)
  {
    _maskedCornersForSystemBackgroundView = *(_existingListAttributes + 24);
  }

  else
  {
    _maskedCornersForSystemBackgroundView = [(UICollectionViewCell *)self _maskedCornersForSystemBackgroundView];
  }

  if (_layoutAttributes)
  {
    v7 = *(_layoutAttributes + 288);
    if ((v7 & 0x10) != 0)
    {
      _maskedCornersForSystemBackgroundView |= (v7 >> 5) & 0xF;
    }
  }

  return _maskedCornersForSystemBackgroundView;
}

- (void)_restoreCurrentDragAppearanceIfNeeded
{
  dragAppearance = self->_dragAppearance;
  if (dragAppearance)
  {
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __61__UICollectionViewCell__restoreCurrentDragAppearanceIfNeeded__block_invoke;
      v4[3] = &unk_1E70F32F0;
      v4[4] = self;
      v4[5] = dragAppearance;
      [UIView performWithoutAnimation:v4];
    }

    else
    {

      [(UICollectionViewCell *)self _setDragAppearance:dragAppearance];
    }
  }
}

- (UIEdgeInsets)_contentViewInset
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_performConfigurationStateUpdate
{
  collectionCellFlags = self->_collectionCellFlags;
  if ((*&collectionCellFlags & 0x800) != 0)
  {
    self->_collectionCellFlags = (*&collectionCellFlags & 0xFFFFF7FF);
    if (_UIObservationTrackingEnabled())
    {

      [(UICollectionViewCell *)self _updateConfigurationWithObservationTracking];
    }

    else
    {

      [(UICollectionViewCell *)self _executeConfigurationUpdate];
    }
  }
}

- (BOOL)isFocused
{
  if ((*(&self->_collectionCellFlags + 3) & 0x10) != 0)
  {
    return 0;
  }

  v3.receiver = self;
  v3.super_class = UICollectionViewCell;
  return [(UIView *)&v3 isFocused];
}

- (void)_layoutContentView
{
  if ([(UIView *)self->_contentView translatesAutoresizingMaskIntoConstraints]|| (dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UIView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UICollectionViewCell *)self _contentViewInset];
    contentView = self->_contentView;

    [(UIView *)contentView setFrame:v4 + v12, v6 + v11, v8 - (v12 + v14), v10 - (v11 + v13)];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = UICollectionViewCell;
  [(UIView *)&v5 layoutSubviews];
  if (_UISolariumEnabled() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_CollectionViewCellEagerlyEnsuresFloatingContentView, @"CollectionViewCellEagerlyEnsuresFloatingContentView") & 1) != 0 || byte_1EA95E23C))
  {
    [(UICollectionViewCell *)self _ensureFocusedFloatingContentView];
  }

  [(UICollectionViewCell *)self _layoutSystemBackgroundView];
  [(UICollectionViewCell *)self _layoutFocusedFloatingContentView];
  if (dyld_program_sdk_at_least())
  {
    [(UICollectionViewCell *)self _layoutContentView];
  }

  collectionCellFlags = self->_collectionCellFlags;
  if ((*&collectionCellFlags & 0x4000000) != 0)
  {
    self->_collectionCellFlags = (*&collectionCellFlags & 0xFBFFFFFF);
    _focusSystemSceneComponent = [(UIView *)self _focusSystemSceneComponent];
    [_focusSystemSceneComponent _requestFocusEffectUpdateToEnvironment:self];
  }
}

- (void)_layoutSystemBackgroundView
{
  systemBackgroundView = self->_systemBackgroundView;
  if (systemBackgroundView)
  {
    [(_UISystemBackgroundView *)systemBackgroundView frameInContainerView:self];
    [(_UISystemBackgroundView *)self->_systemBackgroundView setFrame:?];
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v4 = self->_systemBackgroundView;

      [(UIView *)v4 layoutIfNeeded];
    }
  }
}

- (void)_prepareForConfigurationStateUpdate
{
  if ((*&self->_collectionCellFlags & 0x8000800) == 0x800)
  {
    v5[7] = v2;
    v5[8] = v3;
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __59__UICollectionViewCell__prepareForConfigurationStateUpdate__block_invoke;
      v5[3] = &unk_1E70F3590;
      v5[4] = self;
      [UIView performWithoutAnimation:v5];
    }
  }
}

- (void)setNeedsUpdateConfiguration
{
  if (([objc_opt_class() _isInternalCell] & 1) != 0 || dyld_program_sdk_at_least())
  {
    *&self->_collectionCellFlags |= 0x800u;
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {

      [(UICollectionViewCell *)self _performConfigurationStateUpdate];
    }

    else
    {

      [(UIView *)self setNeedsUpdateProperties];
    }
  }
}

- (void)_resetBackgroundViewConfiguration
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__UICollectionViewCell__resetBackgroundViewConfiguration__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView _performSystemAppearanceModifications:v2];
}

uint64_t __57__UICollectionViewCell__resetBackgroundViewConfiguration__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgroundConfiguration:0];
  [*(a1 + 32) _setBackgroundViewConfigurationProvider:0];
  v2 = *(a1 + 32);

  return [v2 _setBackgroundViewConfiguration:0];
}

- (void)_resetBackgroundViewsAndColor
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__UICollectionViewCell__resetBackgroundViewsAndColor__block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [UIView _performSystemAppearanceModifications:v3];
  [(UICollectionViewCell *)self setBackgroundView:0];
  [(UICollectionViewCell *)self setSelectedBackgroundView:0];
}

- (UIView)contentView
{
  if (!self->_contentView && dyld_program_sdk_at_least())
  {
    v3 = objc_opt_class();
    [(UIView *)self bounds];
    v4 = [v3 _createDefaultContentViewWithFrame:?];
    [(UICollectionViewCell *)self _setContentView:v4 addToHierarchy:1];
  }

  contentView = self->_contentView;

  return contentView;
}

- (id)_contentViewConfiguration
{
  if ((*(&self->_collectionCellFlags + 1) & 0x10) != 0 && !self->_viewForContentConfiguration)
  {
    configuration = [(UIView *)self->_contentView configuration];
  }

  else
  {
    configuration = 0;
  }

  return configuration;
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

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = UICollectionViewCell;
  [(UICollectionReusableView *)&v5 prepareForReuse];
  [(UICollectionViewCell *)self setHighlighted:0];
  [(UICollectionViewCell *)self setSelected:0];
  [(UICollectionViewCell *)self _setContextMenuGroupLocation:0];
  [(UICollectionViewCell *)self _setUsesAnyPlainListStyle:0];
  [(UICollectionViewCell *)self _setSwiped:0];
  [(UICollectionViewCell *)self _setReordering:0];
  [(UICollectionViewCell *)self _setTypeSelectState:0];
  [(UICollectionViewCell *)self _setDragAppearance:0];
  [(UICollectionViewCell *)self _setDropState:0];
  if (dyld_program_sdk_at_least())
  {
    [(UIView *)self _removeAllAnimations:1];
  }

  else
  {
    layer = [(UIView *)self layer];
    [layer removeAllAnimations];
  }

  lastNormalBackgroundViewConfiguration = self->_lastNormalBackgroundViewConfiguration;
  self->_lastNormalBackgroundViewConfiguration = 0;

  [(UICollectionViewCell *)self _updateHighlightColorsForView:self highlight:(*&self->_collectionCellFlags >> 1) & 1];
  _UISolariumEnabled();
  [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (void)_teardownHighlightingSupportIfReady
{
  if ((*&self->_collectionCellFlags & 0x200003) == 0)
  {
    highlightingSupport = self->_highlightingSupport;
    self->_highlightingSupport = 0;
  }
}

- (void)_updateBackgroundView
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__updateHighlightColorsForAnimationHalfwayPoint object:0];
  if ((*&self->_collectionCellFlags & 3) != 0)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  _descendantsShouldHighlight = [(UICollectionViewCell *)self _descendantsShouldHighlight];
  if (_descendantsShouldHighlight)
  {
    [(UICollectionViewCell *)self _setupHighlightingSupport];
  }

  selectedBackgroundView = self->_selectedBackgroundView;
  if (selectedBackgroundView)
  {
    [(UIView *)selectedBackgroundView setAlpha:v3];
    _collectionView = [(UICollectionReusableView *)self _collectionView];
    [_collectionView _cellBackgroundChangedForSelectionOrHighlight:self];
  }

  if (+[UIView _isInAnimationBlock])
  {
    v10 = +[UIView _currentAnimationAttributes];
    [v10 _delay];
    v8 = v7;
    [v10 _duration];
    [(UICollectionViewCell *)self performSelector:sel__updateHighlightColorsForAnimationHalfwayPoint withObject:0 afterDelay:(v8 + v9 * 0.5) * UIAnimationDragCoefficient()];
    *&self->_collectionCellFlags |= 0x200000u;
  }

  else
  {
    [(UICollectionViewCell *)self _updateHighlightColorsForView:self highlight:_descendantsShouldHighlight];
    *&self->_collectionCellFlags &= ~0x200000u;
  }
}

- (BOOL)_descendantsShouldHighlight
{
  if ((*&self->_collectionCellFlags & 2) != 0)
  {
    LOBYTE(_highlightDescendantsWhenSelected) = 1;
  }

  else
  {
    _highlightDescendantsWhenSelected = [(UICollectionViewCell *)self _highlightDescendantsWhenSelected];
    if (_highlightDescendantsWhenSelected)
    {
      LOBYTE(_highlightDescendantsWhenSelected) = *&self->_collectionCellFlags & 1;
    }
  }

  return _highlightDescendantsWhenSelected;
}

- (void)_setupHighlightingSupport
{
  if (!self->_highlightingSupport)
  {
    v3 = [[UICellHighlightingSupport alloc] initWithCell:self];
    highlightingSupport = self->_highlightingSupport;
    self->_highlightingSupport = v3;

    v5 = self->_highlightingSupport;

    [v5 cacheState:255 forView:self];
  }
}

- (BOOL)_backgroundFillIsCustomized
{
  selfCopy = self;
  selectedBackgroundView = self->_selectedBackgroundView;
  if (!selectedBackgroundView)
  {
    if (![(UICollectionViewCell *)selfCopy isHighlighted]&& ![(UICollectionViewCell *)selfCopy isSelected]&& ![(UICollectionViewCell *)selfCopy isFocused])
    {
      goto LABEL_3;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__UICollectionViewCell__backgroundFillIsCustomized__block_invoke;
    v11[3] = &unk_1E70F3590;
    v11[4] = selfCopy;
    [UIView performWithoutAnimation:v11];
    configuration = [(_UISystemBackgroundView *)selfCopy->_systemBackgroundView configuration];
    v5 = configuration;
    if (configuration && [configuration _hasBackgroundFill])
    {
      lastNormalBackgroundViewConfiguration = selfCopy->_lastNormalBackgroundViewConfiguration;
      if (!lastNormalBackgroundViewConfiguration)
      {
        if ((*(&selfCopy->_collectionCellFlags + 3) & 3) != 0)
        {
          [(UICollectionViewCell *)selfCopy _forcePopulateNormalStateConfiguration];
          configuration2 = [(_UISystemBackgroundView *)selfCopy->_systemBackgroundView configuration];

          if (!configuration2)
          {
            LOBYTE(selfCopy) = 0;
            v5 = 0;
            goto LABEL_13;
          }

          if (![configuration2 _hasBackgroundFill])
          {
            LOBYTE(selfCopy) = 0;
            v5 = configuration2;
            goto LABEL_13;
          }

          lastNormalBackgroundViewConfiguration = selfCopy->_lastNormalBackgroundViewConfiguration;
          v5 = configuration2;
        }

        else
        {
          lastNormalBackgroundViewConfiguration = 0;
        }
      }

      tintColor = [(UIView *)selfCopy tintColor];
      LODWORD(selfCopy) = [v5 _backgroundFillIsEqual:lastNormalBackgroundViewConfiguration withTintColor:tintColor] ^ 1;
    }

    else
    {
      LOBYTE(selfCopy) = 0;
    }

LABEL_13:

    return selfCopy;
  }

  if (![(UIView *)selectedBackgroundView isHidden])
  {
    [(UIView *)selfCopy->_selectedBackgroundView alpha];
    LOBYTE(selfCopy) = v8 > 0.0;
    return selfCopy;
  }

LABEL_3:
  LOBYTE(selfCopy) = 0;
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

- (BOOL)canBecomeFocused
{
  _layoutAttributes = [(UICollectionReusableView *)self _layoutAttributes];
  v4 = [(UICollectionReusableView *)self _isStyledAsHeaderOrFooterFromLayoutAttributes:_layoutAttributes];

  if (v4)
  {
    v4 = ![(UICollectionReusableView *)self _isFocusableWhenStyledAsHeader];
  }

  _existingContentView = [(UICollectionViewCell *)self _existingContentView];
  v6 = _existingContentView;
  if (_existingContentView)
  {
    if (objc_opt_respondsToSelector())
    {
      LODWORD(_existingContentView) = [v6 _preventFocus];
    }

    else
    {
      LODWORD(_existingContentView) = 0;
    }
  }

  if ((v4 | _existingContentView))
  {
    v7 = 0;
  }

  else
  {
    _collectionView = [(UICollectionReusableView *)self _collectionView];
    v7 = [_collectionView _cellCanBecomeFocused:self];
  }

  return v7;
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

- (BOOL)_hasCustomSelectionAction
{
  _effectivePopupMenuButton = [(UICollectionViewCell *)self _effectivePopupMenuButton];
  v3 = _effectivePopupMenuButton != 0;

  return v3;
}

- (id)_selectionSegueTemplate
{
  v2 = self->_selectionSegueTemplate;

  return v2;
}

+ (id)_createDefaultContentViewWithFrame:(CGRect)frame
{
  v3 = [objc_alloc(objc_msgSend(self "_contentViewClass"))];
  if (dyld_program_sdk_at_least())
  {
    [v3 _setHostsLayoutEngine:1];
  }

  return v3;
}

- (UICollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UICollectionViewCell;
  v3 = [(UICollectionReusableView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (!dyld_program_sdk_at_least() || [objc_opt_class() _subclassOverridesContentViewClass])
    {
      v4 = objc_opt_class();
      [(UIView *)v3 bounds];
      v5 = [v4 _createDefaultContentViewWithFrame:?];
      [(UICollectionViewCell *)v3 setContentView:v5];
    }

    *&v3->_collectionCellFlags |= 0x800u;
    *&v3->_collectionCellFlags |= 0x40000u;
    *&v3->_collectionCellFlags |= 0x80000u;
  }

  return v3;
}

- (UICollectionViewCell)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = UICollectionViewCell;
  v5 = [(UICollectionReusableView *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIContentConfigurationIdentifier"];
    v5->_collectionCellFlags = (*&v5->_collectionCellFlags & 0xFFFFEFFF | ((v6 != 0) << 12));

    v7 = [coderCopy decodeObjectForKey:@"UIContentConfigurationView"];
    viewForContentConfiguration = v5->_viewForContentConfiguration;
    v5->_viewForContentConfiguration = v7;

    v9 = [coderCopy decodeObjectForKey:@"UIContentView"];
    contentView = v5->_contentView;
    v5->_contentView = v9;

    if (v5->_contentView)
    {
      [(UIView *)v5 addSubview:?];
    }

    else if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      v11 = objc_opt_class();
      [(UIView *)v5 bounds];
      v12 = [v11 _createDefaultContentViewWithFrame:?];
      [(UICollectionViewCell *)v5 setContentView:v12];
    }

    v13 = [coderCopy decodeObjectForKey:@"UISystemBackgroundView"];
    systemBackgroundView = v5->_systemBackgroundView;
    v5->_systemBackgroundView = v13;

    v15 = v5->_systemBackgroundView;
    if (v15)
    {
      [(UIView *)v5 insertSubview:v15 atIndex:0];
    }

    else
    {
      v16 = [coderCopy decodeObjectForKey:@"UIBackgroundView"];
      backgroundView = v5->_backgroundView;
      v5->_backgroundView = v16;

      v18 = [coderCopy decodeObjectForKey:@"UISelectedBackgroundView"];
      selectedBackgroundView = v5->_selectedBackgroundView;
      v5->_selectedBackgroundView = v18;
    }

    *&v5->_collectionCellFlags |= 0xC0800u;
  }

  return v5;
}

- (void)_applyContentViewConfiguration:(id)configuration withState:(id)state usingSPI:(BOOL)i
{
  iCopy = i;
  configurationCopy = configuration;
  stateCopy = state;
  configurationState = stateCopy;
  collectionCellFlags = self->_collectionCellFlags;
  if (configurationCopy)
  {
    if ((*&collectionCellFlags & 0x80000) != 0 && !self->_contentViewConfigurationProvider)
    {
      if (!stateCopy)
      {
        configurationState = [(UICollectionViewCell *)self configurationState];
      }

      v35 = configurationState;
      if (iCopy)
      {
        _viewConfigurationState = [(UICollectionViewCell *)self _viewConfigurationState];
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
        [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:1093 description:{@"Updated configuration was nil for configuration: %@", configurationCopy}];
      }

      configurationState = v35;
    }

    else
    {
      v13 = configurationCopy;
    }

    v34 = configurationState;
    if ((*&collectionCellFlags & 0x1000) == 0)
    {
      *&self->_collectionCellFlags |= 0x1000u;
      if (!iCopy)
      {
LABEL_43:
        makeContentView = [v13 makeContentView];
        objc_storeStrong(&self->_viewForContentConfiguration, makeContentView);
        if (objc_opt_respondsToSelector())
        {
          _wrappedContentView = [(_UIContentViewInternal *)self->_viewForContentConfiguration _wrappedContentView];

          makeContentView = _wrappedContentView;
        }

        goto LABEL_45;
      }

      goto LABEL_39;
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

    *&self->_collectionCellFlags |= 0x1000u;
    if (!v17)
    {
      if (!iCopy)
      {
        configuration2 = [(_UIContentViewInternal *)self->_viewForContentConfiguration configuration];
        UIContentConfigurationAlertForReplacedContentView(@"cell", self, configuration2, v15, @"Use separate registrations or reuse identifiers for different types of cells to avoid this.");

        goto LABEL_43;
      }

LABEL_39:
      makeContentView = [v13 createContentView];
LABEL_45:
      if (!makeContentView)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:1127 description:{@"Content configuration returned a nil content view: %@", v13}];
      }

      if (([makeContentView translatesAutoresizingMaskIntoConstraints] & 1) == 0)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:1128 description:{@"The content view returned from the content configuration must have translatesAutoresizingMaskIntoConstraints enabled: %@", makeContentView}];
      }

      [(UICollectionViewCell *)self setContentView:makeContentView];

      goto LABEL_50;
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
    self->_collectionCellFlags = (*&collectionCellFlags & 0xFFFFEFFF);
    if ((*&collectionCellFlags & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    v34 = stateCopy;
    [(UICollectionViewCell *)self setContentView:0];
    v13 = self->_viewForContentConfiguration;
    self->_viewForContentConfiguration = 0;
  }

LABEL_50:

  configurationState = v34;
LABEL_51:
}

- (void)setAutomaticallyUpdatesContentConfiguration:(BOOL)automaticallyUpdatesContentConfiguration
{
  if (automaticallyUpdatesContentConfiguration)
  {
    contentViewConfigurationProvider = self->_contentViewConfigurationProvider;
    p_collectionCellFlags = &self->_collectionCellFlags;
    collectionCellFlags = self->_collectionCellFlags;
    if ((contentViewConfigurationProvider == 0) != ((*&collectionCellFlags & 0x80000) == 0))
    {
      return;
    }

    if (!contentViewConfigurationProvider)
    {
      *p_collectionCellFlags = (*&collectionCellFlags | 0x80000);
      [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
      return;
    }
  }

  else
  {
    p_collectionCellFlags = &self->_collectionCellFlags;
    collectionCellFlags = self->_collectionCellFlags;
    if ((*&collectionCellFlags & 0x80000) == 0)
    {
      return;
    }
  }

  *p_collectionCellFlags = (*&collectionCellFlags & 0xFFF7FFFF);
}

- (void)_setContentViewConfigurationProvider:(id)provider
{
  if (self->_contentViewConfigurationProvider != provider)
  {
    if (provider)
    {
      *&self->_collectionCellFlags &= ~0x80000u;
    }

    v4 = [provider copy];
    contentViewConfigurationProvider = self->_contentViewConfigurationProvider;
    self->_contentViewConfigurationProvider = v4;

    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
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
    contentConfiguration = contentViewConfigurationProvider[2](contentViewConfigurationProvider, [(UICollectionViewCell *)self _viewConfigurationState]);
    [(UICollectionViewCell *)self _setContentViewConfiguration:contentConfiguration];
LABEL_3:

    stateCopy = v11;
    goto LABEL_4;
  }

  if ((*(&self->_collectionCellFlags + 2) & 8) != 0)
  {
    v11 = stateCopy;
    if (self->_viewForContentConfiguration)
    {
      contentConfiguration = [(UICollectionViewCell *)self contentConfiguration];
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
      contentConfiguration = [(UICollectionViewCell *)self _contentViewConfiguration];
      if (!contentConfiguration)
      {
        goto LABEL_3;
      }

      selfCopy2 = self;
      v8 = contentConfiguration;
      v9 = v11;
      v10 = 1;
    }

    [(UICollectionViewCell *)selfCopy2 _applyContentViewConfiguration:v8 withState:v9 usingSPI:v10];
    goto LABEL_3;
  }

LABEL_4:
}

- (void)_clearChangeHandlersForOldContentView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    [viewCopy _setPopupMenuButtonDidChangeHandler:0];
    [(UICollectionViewCell *)self _setPopupMenuButton:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [viewCopy _setContainerBackgroundViewDidChangeHandler:0];
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
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__UICollectionViewCell__setupChangeHandlersForNewContentView___block_invoke;
    v7[3] = &unk_1E70F5A28;
    objc_copyWeak(&v8, &location);
    [viewCopy _setPopupMenuButtonDidChangeHandler:v7];
    [(UICollectionViewCell *)self _updatePopupMenuButtonFromContentView];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__UICollectionViewCell__setupChangeHandlersForNewContentView___block_invoke_2;
    v5[3] = &unk_1E70F5A28;
    objc_copyWeak(&v6, &location);
    [viewCopy _setContainerBackgroundViewDidChangeHandler:v5];
    if ([(UICollectionViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
    {
      [(UICollectionViewCell *)self _updateDefaultBackgroundAppearance];
    }

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  if (objc_opt_respondsToSelector())
  {
    [viewCopy _containerViewIsHiddenForReuse:(*&self->super._reusableViewFlags & 0x400) == 0];
  }
}

void __62__UICollectionViewCell__setupChangeHandlersForNewContentView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePopupMenuButtonFromContentView];
}

void __62__UICollectionViewCell__setupChangeHandlersForNewContentView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDefaultBackgroundAppearance];
}

- (void)_setContentView:(id)view addToHierarchy:(BOOL)hierarchy
{
  hierarchyCopy = hierarchy;
  viewCopy = view;
  if (self->_contentView != viewCopy)
  {
    if (hierarchyCopy)
    {
      [(UICollectionViewCell *)self _clearChangeHandlersForOldContentView:?];
      [(UIView *)self->_contentView _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges:0];
      [(UIView *)self->_contentView removeFromSuperview];
      menuGesture = self->_menuGesture;
      self->_menuGesture = 0;
    }

    objc_storeStrong(&self->_contentView, view);
    [(UIView *)viewCopy setSemanticContentAttribute:[(UIView *)self semanticContentAttribute]];
    if (viewCopy && hierarchyCopy)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        [(UIView *)self bounds];
        [(UIView *)viewCopy setFrame:?];
        [(UIView *)viewCopy setAutoresizingMask:18];
      }

      contentView = [(_UIFloatingContentView *)self->_focusedFloatingContentView contentView];
      v9 = contentView;
      if (contentView)
      {
        selfCopy = contentView;
      }

      else
      {
        selfCopy = self;
      }

      v11 = selfCopy;

      [(UIView *)v11 addSubview:viewCopy];
      [(UIView *)viewCopy _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges:*&self->super._reusableViewFlags >> 15];
      [(UICollectionViewCell *)self _setupChangeHandlersForNewContentView:viewCopy];
      if ([objc_opt_class() _wantsLegacyMenuGesture])
      {
        v12 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__handleMenuGesture_];
        v13 = self->_menuGesture;
        self->_menuGesture = v12;

        [(UIGestureRecognizer *)self->_menuGesture setDelegate:self];
        [(UILongPressGestureRecognizer *)self->_menuGesture setMinimumPressDuration:0.5];
        [(UIView *)viewCopy addGestureRecognizer:self->_menuGesture];
      }
    }
  }
}

- (void)_setAutomaticIntrinsicContentSizeInvalidationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = UICollectionViewCell;
  [(UICollectionReusableView *)&v5 _setAutomaticIntrinsicContentSizeInvalidationEnabled:?];
  [(UIView *)self->_contentView _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges:enabledCopy];
}

- (id)_encodableSubviews
{
  contentView = [(_UIFloatingContentView *)self->_focusedFloatingContentView contentView];
  subviews = [contentView subviews];
  v5 = subviews;
  if (subviews)
  {
    subviews2 = subviews;
  }

  else
  {
    subviews2 = [(UIView *)self subviews];
  }

  v7 = subviews2;

  return v7;
}

- (void)_populateArchivedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v5.receiver = self;
  v5.super_class = UICollectionViewCell;
  [(UIView *)&v5 _populateArchivedSubviews:subviewsCopy];
  if (self->_systemBackgroundView)
  {
    [subviewsCopy removeObject:?];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = UICollectionViewCell;
  [(UICollectionReusableView *)&v12 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_systemBackgroundView forKey:@"UISystemBackgroundView"];
  if ((*(&self->_collectionCellFlags + 1) & 0x10) != 0)
  {
    contentConfiguration = [(UICollectionViewCell *)self contentConfiguration];
    if (contentConfiguration)
    {
      _contentViewConfiguration = contentConfiguration;
    }

    else
    {
      _contentViewConfiguration = [(UICollectionViewCell *)self _contentViewConfiguration];
      if (!_contentViewConfiguration)
      {
        v8 = 0;
LABEL_9:
        [coderCopy encodeObject:v8 forKey:@"UIContentConfigurationIdentifier"];

        goto LABEL_10;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [_contentViewConfiguration _wrappedConfigurationIdentifier];
    }

    else
    {
      v7 = objc_opt_class();
      NSStringFromClass(v7);
    }
    v8 = ;

    goto LABEL_9;
  }

LABEL_10:
  [coderCopy encodeObject:self->_viewForContentConfiguration forKey:@"UIContentConfigurationView"];
  contentView = self->_contentView;
  if (contentView)
  {
    [coderCopy encodeObject:contentView forKey:@"UIContentView"];
  }

  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [coderCopy encodeObject:backgroundView forKey:@"UIBackgroundView"];
  }

  selectedBackgroundView = self->_selectedBackgroundView;
  if (selectedBackgroundView)
  {
    [coderCopy encodeObject:selectedBackgroundView forKey:@"UISelectedBackgroundView"];
  }
}

- (void)_notifyIsDisplaying:(BOOL)displaying
{
  displayingCopy = displaying;
  reusableViewFlags = self->super._reusableViewFlags;
  v6.receiver = self;
  v6.super_class = UICollectionViewCell;
  [(UICollectionReusableView *)&v6 _notifyIsDisplaying:?];
  if ((((reusableViewFlags & 0x400) == 0) ^ displayingCopy) & 1) == 0 && (objc_opt_respondsToSelector())
  {
    [(UIView *)self->_contentView _containerViewIsHiddenForReuse:!displayingCopy];
  }
}

- (void)_updateHighlightColorsForView:(id)view highlight:(BOOL)highlight
{
  if (highlight)
  {
    viewCopy = view;
    [(UICollectionViewCell *)self _setupHighlightingSupport];
    [self->_highlightingSupport highlightView:viewCopy];
  }

  else
  {
    [self->_highlightingSupport applyState:1 toView:view];
  }

  [(UICollectionViewCell *)self _teardownHighlightingSupportIfReady];
}

- (void)_updateHighlightColorsForAnimationHalfwayPoint
{
  *&self->_collectionCellFlags &= ~0x200000u;
  _descendantsShouldHighlight = [(UICollectionViewCell *)self _descendantsShouldHighlight];

  [(UICollectionViewCell *)self _updateHighlightColorsForView:self highlight:_descendantsShouldHighlight];
}

- (void)_setOpaque:(BOOL)opaque forSubview:(id)subview
{
  opaqueCopy = opaque;
  v19 = *MEMORY[0x1E69E9840];
  subviewCopy = subview;
  highlightingSupport = self->_highlightingSupport;
  if (opaqueCopy)
  {
    [highlightingSupport applyState:255 toView:subviewCopy];
  }

  else
  {
    [highlightingSupport applyState:1 toView:subviewCopy];
    [(UIView *)subviewCopy setOpaque:0];
    v8 = +[UIColor clearColor];
    [(UIView *)subviewCopy setBackgroundColor:v8];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && self->_selectedBackgroundView != subviewCopy && self->_systemBackgroundView != subviewCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    subviews = [(UIView *)subviewCopy subviews];
    v10 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(subviews);
          }

          [(UICollectionViewCell *)self _setOpaque:opaqueCopy forSubview:*(*(&v14 + 1) + 8 * i)];
        }

        v11 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)_monitoredView:(id)view willMoveFromSuperview:(id)superview toSuperview:(id)toSuperview
{
  toSuperviewCopy = toSuperview;
  if ([(UIView *)self containsView:superview]&& ![(UIView *)self containsView:toSuperviewCopy])
  {
    [self->_highlightingSupport applyState:255 toView:self];
  }
}

- (void)_monitoredView:(id)view didMoveFromSuperview:(id)superview toSuperview:(id)toSuperview
{
  viewCopy = view;
  superviewCopy = superview;
  toSuperviewCopy = toSuperview;
  v10 = toSuperviewCopy;
  while (v10 != self && v10)
  {
    objc_opt_class();
    v11 = (objc_opt_isKindOfClass() & 1) != 0 || self->_selectedBackgroundView == viewCopy || self->_systemBackgroundView == viewCopy;
    superview = [(UIView *)v10 superview];

    v10 = superview;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  if (![(UIView *)self containsView:superviewCopy]&& [(UIView *)self containsView:toSuperviewCopy])
  {
    [self->_highlightingSupport cacheState:255 forView:viewCopy];
    [(UICollectionViewCell *)self _updateHighlightColorsForView:viewCopy highlight:(*&self->_collectionCellFlags >> 1) & 1];
    [(UICollectionViewCell *)self _setOpaque:0 forSubview:viewCopy];
  }

  superview = v10;
LABEL_14:
}

- (void)_setSelected:(BOOL)selected animated:(BOOL)animated isUserInitiated:(BOOL)initiated
{
  animatedCopy = animated;
  selectedCopy = selected;
  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_CollectionViewCellContextMenuSuppressesSelectionState, @"CollectionViewCellContextMenuSuppressesSelectionState") & 1) != 0 || byte_1ED48AAE4)
  {
    if ((*&self->_collectionCellFlags & 0xE0) != 0)
    {
      selectedCopy = 0;
    }

    else
    {
      selectedCopy = selectedCopy;
    }

    if (animatedCopy)
    {
      goto LABEL_4;
    }
  }

  else if (animatedCopy)
  {
LABEL_4:
    v8 = dyld_program_sdk_at_least() == 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__UICollectionViewCell__setSelected_animated_isUserInitiated___block_invoke;
    v10[3] = &unk_1E70F35E0;
    if (v8)
    {
      v9 = 4;
    }

    else
    {
      v9 = 6;
    }

    v10[4] = self;
    v11 = selectedCopy;
    [(UIView *)0.3 _animateCollectionTableAnimationWithDuration:UIView delay:v9 options:v10 animations:0 completion:?];
    return;
  }

  [(UICollectionViewCell *)self setSelected:selectedCopy];
}

- (void)setSelected:(BOOL)selected
{
  v3 = selected;
  collectionCellFlags = self->_collectionCellFlags;
  v6 = (*&collectionCellFlags & 3) != 0;
  if (!selected)
  {
    v6 = ((*&collectionCellFlags & 3) != 0) ^ ((*&collectionCellFlags & 2) == 0);
    if ((*&collectionCellFlags & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  self->_collectionCellFlags = (*&collectionCellFlags & 0xFFEFFFFF);
  if ((*&collectionCellFlags & 1) == 0)
  {
LABEL_5:
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    self->_collectionCellFlags = (*&self->_collectionCellFlags & 0xFFFFFFFE | v3 | 0x800000);
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }

LABEL_6:
  if ((v6 & 1) == 0)
  {
    [(UICollectionViewCell *)self _updateBackgroundView];
  }

  [(UICollectionViewCell *)self _updateFocusedFloatingContentControlStateAnimated:+[UIView _isInAnimationBlock]];
  if ([(UICollectionViewCell *)self isFocused])
  {
    _focusBehavior = [(UIView *)self _focusBehavior];
    v8 = [UIFocusRingManager focusRingAvailableInBehavior:_focusBehavior];

    if (v8)
    {

      +[UIFocusRingManager _updateActiveFocusLayers];
    }
  }
}

- (void)_setContextMenuGroupLocation:(int64_t)location
{
  if (*&self->_collectionCellFlags >> 5 != location)
  {
    locationCopy = location;
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    self->_collectionCellFlags = (*&self->_collectionCellFlags & 0xFFFFFF1F | (32 * (locationCopy & 7)));

    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_setUsesAnyPlainListStyle:(BOOL)style
{
  if (((((*(&self->_collectionCellFlags + 1) & 1) == 0) ^ style) & 1) == 0)
  {
    styleCopy = style;
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    if (styleCopy)
    {
      v5 = 256;
    }

    else
    {
      v5 = 0;
    }

    self->_collectionCellFlags = (*&self->_collectionCellFlags & 0xFFFFFEFF | v5);

    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_setTypeSelectState:(int64_t)state
{
  if (((self->_collectionCellFlags >> 9) & 3) != state)
  {
    stateCopy = state;
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    self->_collectionCellFlags = (*&self->_collectionCellFlags & 0xFFFFF9FF | ((stateCopy & 3) << 9));

    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_setSwiped:(BOOL)swiped
{
  if (((((*&self->_collectionCellFlags & 8) == 0) ^ swiped) & 1) == 0)
  {
    swipedCopy = swiped;
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    if (swipedCopy)
    {
      v5 = 67108872;
    }

    else
    {
      v5 = 0x4000000;
    }

    self->_collectionCellFlags = (*&self->_collectionCellFlags & 0xFFFFFFF7 | v5);

    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_setReordering:(BOOL)reordering
{
  if (((((*&self->_collectionCellFlags & 0x10) == 0) ^ reordering) & 1) == 0)
  {
    reorderingCopy = reordering;
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    if (reorderingCopy)
    {
      v5 = 16;
    }

    else
    {
      v5 = 0;
    }

    self->_collectionCellFlags = (*&self->_collectionCellFlags & 0xFFFFFFEF | v5);

    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_setDropState:(int64_t)state
{
  if (self->__dropState != state)
  {
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    self->__dropState = state;

    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_setDragAppearance:(unint64_t)appearance
{
  if (self->_dragAppearance | appearance)
  {
    self->_dragAppearance = appearance;
    [(UICollectionViewLayoutAttributes *)self->super._layoutAttributes alpha];
    v6 = fmin(v5, 0.5);
    v7 = 2;
    if (appearance != 2)
    {
      v7 = appearance == 1;
      v6 = v5;
    }

    v8 = appearance == 3;
    if (appearance == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7;
    }

    if (v8)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    v11 = v8;
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled]&& ((v11 | ![(UICollectionReusableView *)self _isHiddenForReordering]) & 1) == 0)
    {
      [(UIView *)self alpha];
      if (v12 > 0.0)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __43__UICollectionViewCell__setDragAppearance___block_invoke;
        v13[3] = &unk_1E70F3590;
        v13[4] = self;
        [UIView performWithoutAnimation:v13];
      }
    }

    [(UIView *)self setAlpha:v10];
    [(UICollectionReusableView *)self _setHiddenForReordering:v11];
    [(UICollectionViewCell *)self dragStateDidChange:v9];
  }
}

- (void)_setLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  _layoutAttributes = [(UICollectionReusableView *)self _layoutAttributes];
  v6 = _layoutAttributes;
  if (_layoutAttributes)
  {
    v7 = *(_layoutAttributes + 289) >> 7;
    if (attributesCopy)
    {
      goto LABEL_3;
    }

LABEL_30:
    v8 = 0;
    if (_layoutAttributes)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  v7 = 0;
  if (!attributesCopy)
  {
    goto LABEL_30;
  }

LABEL_3:
  v8 = *(attributesCopy + 289) >> 7;
  if (_layoutAttributes)
  {
LABEL_4:
    v9 = *(_layoutAttributes + 304) > 1uLL;
    goto LABEL_5;
  }

LABEL_31:
  v9 = 0;
LABEL_5:
  v10 = v7 ^ v8;
  if (attributesCopy)
  {
    v11 = attributesCopy[38] > 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = v10 | v9 ^ v11;
  if (v12 == 1)
  {
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
  }

  _existingListAttributes = [(UICollectionViewLayoutAttributes *)v6 _existingListAttributes];
  v14 = _existingListAttributes;
  if (_existingListAttributes)
  {
    v15 = _UIListEnvironmentFromListStyle(*(_existingListAttributes + 16));
  }

  else
  {
    v15 = 1;
  }

  v24.receiver = self;
  v24.super_class = UICollectionViewCell;
  [(UICollectionReusableView *)&v24 _setLayoutAttributes:attributesCopy];
  [(UICollectionViewCell *)self _restoreCurrentDragAppearanceIfNeeded];
  [(UICollectionViewCell *)self _updateUserInterfaceRenderingModeUsingAttributes:attributesCopy];
  if (v12)
  {
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }

  _existingListAttributes2 = [(UICollectionViewLayoutAttributes *)attributesCopy _existingListAttributes];
  v17 = _existingListAttributes2;
  if (_existingListAttributes2)
  {
    [(UICollectionViewCell *)self _setUsesAnyPlainListStyle:(*(_existingListAttributes2 + 16) < 5uLL) & (0x19u >> *(_existingListAttributes2 + 16))];
    v18 = _UIListEnvironmentFromListStyle(v17[2]);
  }

  else
  {
    [(UICollectionViewCell *)self _setUsesAnyPlainListStyle:0];
    v18 = 1;
  }

  if (v15 == v18)
  {
    if ((*&self->_collectionCellFlags & 0x800) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    lastNormalBackgroundViewConfiguration = self->_lastNormalBackgroundViewConfiguration;
    self->_lastNormalBackgroundViewConfiguration = 0;

    v20 = *&self->_collectionCellFlags | 0x2000000;
    self->_collectionCellFlags = v20;
    if ((v20 & 0x800) != 0)
    {
      goto LABEL_25;
    }
  }

  _effectiveMaskedCornersForSystemBackgroundView = [(UICollectionViewCell *)self _effectiveMaskedCornersForSystemBackgroundView];
  configuration = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
  v23 = configuration;
  if (configuration && [configuration __maskedCorners] != _effectiveMaskedCornersForSystemBackgroundView)
  {
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }

LABEL_25:
  if (dyld_program_sdk_at_least())
  {
    [(UIView *)self->_contentView bounds];
    if (CGRectEqualToRect(v25, *MEMORY[0x1E695F058]))
    {
      [(UICollectionViewCell *)self _layoutContentView];
    }
  }
}

- (void)_updateUserInterfaceRenderingModeUsingAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = _UIMaterialPresentationsEnabled();
  v5 = attributesCopy;
  if ((v4 & 1) == 0)
  {
    _existingListAttributes = [(UICollectionViewLayoutAttributes *)attributesCopy _existingListAttributes];
    if (!_existingListAttributes)
    {
      goto LABEL_6;
    }

    v7 = 0;
    if (!attributesCopy || _existingListAttributes[2] != 2)
    {
      goto LABEL_8;
    }

    if (*(attributesCopy + 288))
    {
      v7 = [(UICollectionReusableView *)self _isStyledAsHeaderOrFooterFromLayoutAttributes:?]^ 1;
    }

    else
    {
LABEL_6:
      v7 = 0;
    }

LABEL_8:
    [(UIView *)self _setOverrideUserInterfaceRenderingMode:v7];

    v5 = attributesCopy;
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  isUserInteractionEnabled = [(UIView *)self isUserInteractionEnabled];
  if (isUserInteractionEnabled != enabledCopy)
  {
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
  }

  v6.receiver = self;
  v6.super_class = UICollectionViewCell;
  [(UIView *)&v6 setUserInteractionEnabled:enabledCopy];
  if (isUserInteractionEnabled != [(UIView *)self isUserInteractionEnabled])
  {
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_performCustomSelectionAction
{
  _effectivePopupMenuButton = [(UICollectionViewCell *)self _effectivePopupMenuButton];
  if (_effectivePopupMenuButton)
  {
    v3 = _effectivePopupMenuButton;
    [_effectivePopupMenuButton performPrimaryAction];
    _effectivePopupMenuButton = v3;
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
        [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:1926 description:{@"Popup menu button must be configured with a menu: %@", v13}];
      }

      if (![(UIControl *)v13 showsMenuAsPrimaryAction])
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:1927 description:{@"Popup menu button must have showsMenuAsPrimaryAction enabled: %@", v13}];
      }

      if (![(UIButton *)v13 changesSelectionAsPrimaryAction])
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:1928 description:{@"Popup menu button must have changesSelectionAsPrimaryAction enabled: %@", v13}];
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

- (void)_setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  if (animated)
  {
    v6 = dyld_program_sdk_at_least() == 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__UICollectionViewCell__setHighlighted_animated___block_invoke;
    v8[3] = &unk_1E70F35E0;
    if (v6)
    {
      v7 = 4;
    }

    else
    {
      v7 = 6;
    }

    v8[4] = self;
    highlightedCopy = highlighted;
    [(UIView *)0.3 _animateCollectionTableAnimationWithDuration:UIView delay:v7 options:v8 animations:0 completion:?];
  }

  else
  {

    [(UICollectionViewCell *)self setHighlighted:?];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v3 = highlighted;
  _highlightDescendantsWhenSelected = [(UICollectionViewCell *)self _highlightDescendantsWhenSelected];
  collectionCellFlags = self->_collectionCellFlags;
  v7 = *&collectionCellFlags & 1;
  if (v3)
  {
    v7 = 1;
  }

  v8 = v7 != ((*&collectionCellFlags & 3) != 0);
  if (_highlightDescendantsWhenSelected)
  {
    v9 = v8;
  }

  else
  {
    v9 = v3 ^ ((*&self->_collectionCellFlags & 2u) >> 1);
  }

  if (((((*&self->_collectionCellFlags & 2) == 0) ^ v3) & 1) == 0)
  {
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    if (v3)
    {
      v10 = 8388610;
    }

    else
    {
      v10 = 0x800000;
    }

    self->_collectionCellFlags = (*&self->_collectionCellFlags & 0xFFFFFFFD | v10);
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }

  if (v9)
  {
    [(UICollectionViewCell *)self _updateBackgroundView];
  }

  v11 = +[UIView _isInAnimationBlock];

  [(UICollectionViewCell *)self _updateFocusedFloatingContentControlStateAnimated:v11];
}

- (void)_performConfigurationStateModifications:(id)modifications
{
  collectionCellFlags = self->_collectionCellFlags;
  self->_collectionCellFlags = (*&collectionCellFlags | 0x8000000);
  (*(modifications + 2))(modifications, a2);
  self->_collectionCellFlags = (*&self->_collectionCellFlags & 0xF7FFFFFF | (((*&collectionCellFlags >> 27) & 1) << 27));
}

- (void)setBackgroundConfiguration:(UIBackgroundConfiguration *)backgroundConfiguration
{
  collectionCellFlags = self->_collectionCellFlags;
  v4 = (*&collectionCellFlags >> 17) & 1;
  if (backgroundConfiguration)
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0x20000;
  }

  else
  {
    v5 = 0;
  }

  self->_collectionCellFlags = (v5 | *&collectionCellFlags & 0xFFFDFFFF);
  [UICollectionViewCell _applyBackgroundViewConfiguration:"_applyBackgroundViewConfiguration:withState:" withState:?];
}

- (void)_setBackgroundViewConfiguration:(id)configuration
{
  collectionCellFlags = self->_collectionCellFlags;
  v4 = (*&collectionCellFlags >> 17) & 1;
  if (configuration)
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0x20000;
  }

  else
  {
    v5 = 0;
  }

  self->_collectionCellFlags = (v5 | *&collectionCellFlags & 0xFFFDFFFF);
  [UICollectionViewCell _applyBackgroundViewConfiguration:"_applyBackgroundViewConfiguration:withState:" withState:?];
}

- (void)_applyBackgroundViewConfiguration:(id)configuration withState:(id)state
{
  configurationCopy = configuration;
  stateCopy = state;
  v9 = stateCopy;
  systemBackgroundView = self->_systemBackgroundView;
  v11 = systemBackgroundView != 0;
  if (configurationCopy)
  {
    if ((*(&self->_collectionCellFlags + 2) & 4) != 0 && !self->_backgroundViewConfigurationProvider)
    {
      if (!stateCopy)
      {
        configurationState = [(UICollectionViewCell *)self configurationState];
        v9 = [(UICollectionViewCell *)self _stateForUpdatingBackgroundConfigurationWithState:configurationState];
      }

      v36 = [configurationCopy _updatedConfigurationForState:v9];
      if (!v36)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:2068 description:{@"Updated configuration was nil for configuration: %@", configurationCopy}];
      }

      v12 = v36;
    }

    else
    {
      v12 = configurationCopy;
    }

    v35 = v12;
    if (systemBackgroundView)
    {
      configuration = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
      tintColor = [(UIView *)self tintColor];
      v11 = [v35 _backgroundFillIsEqual:configuration withTintColor:tintColor] ^ 1;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v35 = 0;
  }

  [v35 __setMaskedCorners:{-[UICollectionViewCell _effectiveMaskedCornersForSystemBackgroundView](self, "_effectiveMaskedCornersForSystemBackgroundView")}];
  if (configurationCopy)
  {
    if (![(UICollectionViewCell *)self _appliesLayoutAttributesMaskingToBackgroundConfiguration])
    {
      goto LABEL_19;
    }

    _layoutAttributes = [(UICollectionReusableView *)self _layoutAttributes];
    v16 = _layoutAttributes;
    if (_layoutAttributes)
    {
      if ((*(_layoutAttributes + 288) & 0x10) != 0)
      {
        _layoutAttributes2 = [(UICollectionReusableView *)self _layoutAttributes];
        if (_layoutAttributes2)
        {
          v18 = _layoutAttributes2[39];

          if (v18 <= 0.0)
          {
            goto LABEL_19;
          }

          _layoutAttributes3 = [(UICollectionReusableView *)self _layoutAttributes];
          v16 = _layoutAttributes3;
          if (_layoutAttributes3)
          {
            v20 = *(_layoutAttributes3 + 312);
          }

          else
          {
            v20 = 0.0;
          }

          [v35 _setCornerRadius:v20];
        }
      }
    }

LABEL_19:
    if (systemBackgroundView)
    {
      [(_UISystemBackgroundView *)self->_systemBackgroundView setConfiguration:v35];
      [(UIView *)self setNeedsLayout];
    }

    else
    {
      [(UICollectionViewCell *)self _resetBackgroundViewsAndColor];
      contentView = [(_UIFloatingContentView *)self->_focusedFloatingContentView contentView];
      v23 = contentView;
      if (contentView)
      {
        selfCopy = contentView;
      }

      else
      {
        selfCopy = self;
      }

      v25 = selfCopy;

      v26 = [[_UISystemBackgroundView alloc] initWithConfiguration:v35 containerView:v25];
      v27 = self->_systemBackgroundView;
      self->_systemBackgroundView = v26;

      [(UIView *)v25 insertSubview:self->_systemBackgroundView atIndex:0];
      [(UIView *)self setNeedsLayout];
    }

    if (![(UICollectionViewCell *)self isHighlighted]&& ![(UICollectionViewCell *)self isSelected]&& ![(UICollectionViewCell *)self isFocused])
    {
      v28 = [v35 copyWithZone:0];
      lastNormalBackgroundViewConfiguration = self->_lastNormalBackgroundViewConfiguration;
      self->_lastNormalBackgroundViewConfiguration = v28;
    }

    goto LABEL_32;
  }

  if (systemBackgroundView)
  {
    [(UIView *)self->_systemBackgroundView removeFromSuperview];
    v21 = self->_systemBackgroundView;
    self->_systemBackgroundView = 0;
  }

LABEL_32:
  if (v11)
  {
    _collectionView = [(UICollectionReusableView *)self _collectionView];
    [_collectionView _cellBackgroundChangedForSelectionOrHighlight:self];
  }

  v31 = configurationCopy | systemBackgroundView;
  _layoutAttributes4 = [(UICollectionReusableView *)self _layoutAttributes];
  [(UICollectionReusableView *)self _updateMaskingUsingAttributes:_layoutAttributes4];

  if (v31)
  {
    *&self->_collectionCellFlags |= 0x4000000u;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_forcePopulateNormalStateConfiguration
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__UICollectionViewCell__forcePopulateNormalStateConfiguration__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

uint64_t __62__UICollectionViewCell__forcePopulateNormalStateConfiguration__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 592) &= ~0x2000000u;
  v2 = [*(a1 + 32) isHighlighted];
  v3 = [*(a1 + 32) isSelected];
  [*(a1 + 32) isFocused];
  if (v3)
  {
    [*(a1 + 32) _setSelected:0 animated:0];
  }

  v4 = *(a1 + 32);
  if (!v2)
  {
    v4[148] |= 0x10000000u;
    [*(a1 + 32) _performConfigurationStateUpdate];
    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [v4 _setHighlighted:0 animated:0];
  *(*(a1 + 32) + 592) |= 0x10000000u;
  [*(a1 + 32) _performConfigurationStateUpdate];
  [*(a1 + 32) _setHighlighted:1 animated:0];
  if (v3)
  {
LABEL_7:
    [*(a1 + 32) _setSelected:1 animated:0];
  }

LABEL_8:
  *(*(a1 + 32) + 592) &= ~0x10000000u;
  v5 = *(a1 + 32);

  return [v5 _performConfigurationStateUpdate];
}

- (void)_setAllowsStateUpdatesWhenEvaluatingBackgroundAppearance:(BOOL)appearance
{
  if (appearance)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_collectionCellFlags = (*&self->_collectionCellFlags & 0xFEFFFFFF | v3);
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

- (void)setAutomaticallyUpdatesBackgroundConfiguration:(BOOL)automaticallyUpdatesBackgroundConfiguration
{
  if (automaticallyUpdatesBackgroundConfiguration)
  {
    backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
    p_collectionCellFlags = &self->_collectionCellFlags;
    collectionCellFlags = self->_collectionCellFlags;
    if ((backgroundViewConfigurationProvider == 0) != ((*&collectionCellFlags & 0x40000) == 0))
    {
      return;
    }

    if (!backgroundViewConfigurationProvider)
    {
      *p_collectionCellFlags = (*&collectionCellFlags | 0x40000);
      [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
      return;
    }
  }

  else
  {
    p_collectionCellFlags = &self->_collectionCellFlags;
    collectionCellFlags = self->_collectionCellFlags;
    if ((*&collectionCellFlags & 0x40000) == 0)
    {
      return;
    }
  }

  *p_collectionCellFlags = (*&collectionCellFlags & 0xFFFBFFFF);
}

- (void)_setBackgroundViewConfigurationProvider:(id)provider
{
  collectionCellFlags = self->_collectionCellFlags;
  v4 = HIWORD(*&collectionCellFlags) & 1;
  if (provider)
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *&collectionCellFlags & 0xFFFEFFFF;
  self->_collectionCellFlags = v6;
  if (self->_backgroundViewConfigurationProvider != provider)
  {
    if (provider)
    {
      self->_collectionCellFlags = (v6 & 0xFFFBFFFF);
    }

    providerCopy = provider;
    v9 = [providerCopy copy];
    backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
    self->_backgroundViewConfigurationProvider = v9;

    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
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
  if ([(UICollectionViewCell *)self _removesHighlightedAndSelectedStatesForBackground])
  {
    v5 = [stateCopy copy];

    [v5 setHighlighted:0];
    [v5 setSelected:0];
    stateCopy = v5;
  }

  return stateCopy;
}

- (void)_updateBackgroundViewConfigurationForState:(id)state
{
  v4 = [(UICollectionViewCell *)self _stateForUpdatingBackgroundConfigurationWithState:state];
  backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
  if (backgroundViewConfigurationProvider)
  {
    v7 = v4;
    configuration = backgroundViewConfigurationProvider[2](backgroundViewConfigurationProvider, [(UICollectionViewCell *)self _viewConfigurationState]);
LABEL_3:
    [(UICollectionViewCell *)self _applyBackgroundViewConfiguration:configuration withState:v7];
LABEL_4:

    v4 = v7;
    goto LABEL_5;
  }

  if ((*(&self->_collectionCellFlags + 2) & 4) != 0)
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

- (void)setConfigurationUpdateHandler:(UICollectionViewCellConfigurationUpdateHandler)configurationUpdateHandler
{
  if (self->_configurationUpdateHandler != configurationUpdateHandler)
  {
    v4 = [configurationUpdateHandler copy];
    v5 = self->_configurationUpdateHandler;
    self->_configurationUpdateHandler = v4;

    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_layoutFocusedFloatingContentView:(id)view
{
  viewCopy = view;
  [(UIView *)self bounds];
  [viewCopy setFrame:?];
}

- (void)setSelectedBackgroundView:(UIView *)selectedBackgroundView
{
  v5 = selectedBackgroundView;
  v6 = v5;
  if (self->_selectedBackgroundView != v5)
  {
    if (v5)
    {
      [(UICollectionViewCell *)self _resetBackgroundViewConfiguration];
    }

    collectionCellFlags = self->_collectionCellFlags;
    v8 = (*&collectionCellFlags >> 15) & 1;
    if (v6)
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = 0x8000;
    }

    else
    {
      v9 = 0;
    }

    self->_collectionCellFlags = (v9 | *&collectionCellFlags & 0xFFFF7FFF);
    [(UIView *)self->_selectedBackgroundView removeFromSuperview];
    objc_storeStrong(&self->_selectedBackgroundView, selectedBackgroundView);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__UICollectionViewCell_setSelectedBackgroundView___block_invoke;
    v15[3] = &unk_1E70F3590;
    v15[4] = self;
    [UIView performWithoutAnimation:v15];
    [(UIView *)self->_selectedBackgroundView setAutoresizingMask:18];
    contentView = [(_UIFloatingContentView *)self->_focusedFloatingContentView contentView];
    v11 = contentView;
    if (contentView)
    {
      selfCopy = contentView;
    }

    else
    {
      selfCopy = self;
    }

    v13 = selfCopy;

    v14 = self->_selectedBackgroundView;
    if (self->_backgroundView)
    {
      [(UIView *)v13 insertSubview:v14 aboveSubview:?];
    }

    else
    {
      [(UIView *)v13 insertSubview:v14 atIndex:?];
    }
  }
}

uint64_t __50__UICollectionViewCell_setSelectedBackgroundView___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 1.0;
  if ((*(v2 + 592) & 1) == 0)
  {
    v3 = 0.0;
  }

  [*(v2 + 512) setAlpha:v3];
  [*(a1 + 32) bounds];
  v4 = *(*(a1 + 32) + 512);

  return [v4 setFrame:?];
}

- (void)setBackgroundView:(UIView *)backgroundView
{
  v5 = backgroundView;
  v6 = v5;
  if (self->_backgroundView != v5)
  {
    if (v5)
    {
      [(UICollectionViewCell *)self _resetBackgroundViewConfiguration];
    }

    collectionCellFlags = self->_collectionCellFlags;
    v8 = (*&collectionCellFlags >> 14) & 1;
    if (v6)
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = 0x4000;
    }

    else
    {
      v9 = 0;
    }

    self->_collectionCellFlags = (v9 | *&collectionCellFlags & 0xFFFFBFFF);
    [(UIView *)self->_backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, backgroundView);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42__UICollectionViewCell_setBackgroundView___block_invoke;
    v14[3] = &unk_1E70F3590;
    v14[4] = self;
    [UIView performWithoutAnimation:v14];
    [(UIView *)self->_backgroundView setAutoresizingMask:18];
    contentView = [(_UIFloatingContentView *)self->_focusedFloatingContentView contentView];
    v11 = contentView;
    if (contentView)
    {
      selfCopy = contentView;
    }

    else
    {
      selfCopy = self;
    }

    v13 = selfCopy;

    [(UIView *)v13 insertSubview:v6 atIndex:0];
  }
}

uint64_t __42__UICollectionViewCell_setBackgroundView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v2 = *(*(a1 + 32) + 504);

  return [v2 setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    [(UICollectionViewCell *)self _resetBackgroundViewConfiguration];
  }

  collectionCellFlags = self->_collectionCellFlags;
  v6 = (*&collectionCellFlags >> 13) & 1;
  if (colorCopy)
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0x2000;
  }

  else
  {
    v7 = 0;
  }

  self->_collectionCellFlags = (v7 | *&collectionCellFlags & 0xFFFFDFFF);
  v8.receiver = self;
  v8.super_class = UICollectionViewCell;
  [(UIView *)&v8 setBackgroundColor:colorCopy];
}

- (BOOL)_shouldSaveOpaqueStateForView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 && self->_backgroundView != viewCopy && self->_selectedBackgroundView != viewCopy;

  return v5;
}

- (BOOL)_gestureRecognizerShouldBegin:(id)begin
{
  if (self->_menuGesture != begin)
  {
    return 1;
  }

  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->super._collectionView);
  LOBYTE(selfCopy) = [WeakRetained _shouldShowMenuForCell:selfCopy];

  return selfCopy;
}

- (void)_handleMenuGesture:(id)gesture
{
  if ([gesture state] == 1)
  {
    if (!self->__editMenuInteraction)
    {
      v4 = [[UIEditMenuInteraction alloc] initWithDelegate:self];
      editMenuInteraction = self->__editMenuInteraction;
      self->__editMenuInteraction = v4;

      [(UIView *)self addInteraction:self->__editMenuInteraction];
    }

    [(UIView *)self center];
    v7 = v6;
    v9 = v8;
    superview = [(UIView *)self superview];
    [(UIView *)self convertPoint:superview fromView:v7, v9];
    v12 = v11;
    v14 = v13;

    v15 = [UIEditMenuConfiguration configurationWithIdentifier:0 sourcePoint:v12, v14];
    [v15 set_firstResponderTarget:self];
    [(UIEditMenuInteraction *)self->__editMenuInteraction presentEditMenuWithConfiguration:v15];
  }
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  actionsCopy = actions;
  if (self->__editMenuInteraction == interaction)
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
    v8 = 0;
  }

  return v8;
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  if (self->__editMenuInteraction == interaction)
  {
    [(UIView *)self bounds:v4];
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v9 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator
{
  if (self->__editMenuInteraction == interaction)
  {
    [(UICollectionViewCell *)self _setSelected:1 animated:0, animator];
    *&self->_collectionCellFlags |= 0x100000u;
  }
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  if (self->__editMenuInteraction == interactionCopy)
  {
    collectionCellFlags = self->_collectionCellFlags;
    if ((*&collectionCellFlags & 0x100000) != 0)
    {
      [(UICollectionViewCell *)self _setSelected:0 animated:0];
      collectionCellFlags = self->_collectionCellFlags;
    }

    self->_collectionCellFlags = (*&collectionCellFlags & 0xFFEFFFFF);
    WeakRetained = objc_loadWeakRetained(&self->super._collectionView);
    [WeakRetained _cellMenuDismissed];

    editMenuInteraction = self->__editMenuInteraction;
    self->__editMenuInteraction = 0;

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85__UICollectionViewCell_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke;
    v14[3] = &unk_1E70F3590;
    v15 = interactionCopy;
    [animatorCopy addCompletion:v14];
  }
}

void __85__UICollectionViewCell_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeInteraction:*(a1 + 32)];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (!dyld_program_sdk_at_least())
  {
    WeakRetained = objc_loadWeakRetained(&self->super._collectionView);
    if (![WeakRetained _canPerformAction:action forCell:self sender:senderCopy])
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
    WeakRetained = objc_loadWeakRetained(&self->super._collectionView);
    v10 = [WeakRetained _canPerformAction:action forCell:self sender:senderCopy];
    goto LABEL_13;
  }

  v13.receiver = self;
  v13.super_class = UICollectionViewCell;
  v11 = [(UIView *)&v13 canPerformAction:action withSender:senderCopy];
LABEL_16:

  return v11 & 1;
}

- (void)_performAction:(SEL)action sender:(id)sender
{
  senderCopy = sender;
  WeakRetained = objc_loadWeakRetained(&self->super._collectionView);
  [WeakRetained _performAction:action forCell:self sender:senderCopy];
}

- (void)_setSelectionSegueTemplate:(id)template
{
  templateCopy = template;
  if (self->_selectionSegueTemplate != templateCopy)
  {
    v6 = templateCopy;
    objc_storeStrong(&self->_selectionSegueTemplate, template);
    templateCopy = v6;
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = UICollectionViewCell;
  [(UIView *)&v4 traitCollectionDidChange:change];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = UICollectionViewCell;
  [(UIView *)&v5 setSemanticContentAttribute:?];
  [(UIView *)self->_contentView setSemanticContentAttribute:attribute];
}

- (BOOL)_forwardsSystemLayoutFittingSizeToContentView:(id)view
{
  viewCopy = view;
  if (((*(&self->_collectionCellFlags + 2) & 0x40) != 0 || (dyld_program_sdk_at_least() & 1) == 0) && (contentView = self->_contentView, contentView == viewCopy))
  {
    IsGuardingForEngine = [(UIView *)contentView _wantsAutolayoutOrIsGuardingForEngineHosting];
  }

  else
  {
    IsGuardingForEngine = 0;
  }

  return IsGuardingForEngine;
}

- (CGSize)_contentTargetSizeForTargetSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority forUseWithSizeThatFits:(BOOL)fits
{
  height = size.height;
  width = size.width;
  v35 = *MEMORY[0x1E69E9840];
  [(UICollectionViewCell *)self _contentViewInset];
  v14 = v13;
  v16 = v15;
  v17 = width - (v11 + v12);
  v25 = height;
  v18 = height - (v13 + v15);
  if (v17 < 0.0)
  {
    v19 = v11;
    v17 = 0.0;
    if (priority >= 1000.0)
    {
      v20 = v12;
      v21 = *(__UILogGetCategoryCachedImpl("CollectionView", &qword_1ED4964F0) + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        v28 = v19;
        v29 = 2048;
        v30 = v20;
        v31 = 2048;
        v32 = width;
        v33 = 2112;
        selfCopy2 = self;
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "The cell's content view insets (left: %g, right: %g) exceed the cell's target width of %g with required fitting priority. Cell: %@", buf, 0x2Au);
      }
    }
  }

  if (v18 < 0.0)
  {
    v18 = 0.0;
    if (fittingPriority >= 1000.0)
    {
      v22 = *(__UILogGetCategoryCachedImpl("CollectionView", &qword_1ED4964F8) + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        v28 = v14;
        v29 = 2048;
        v30 = v16;
        v31 = 2048;
        v32 = v25;
        v33 = 2112;
        selfCopy2 = self;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "The cell's content view insets (top: %g, bottom: %g) exceed the cell's target height of %g with required fitting priority. Cell: %@", buf, 0x2Au);
      }
    }
  }

  v23 = 1.79769313e308;
  if (fittingPriority < 1000.0 && fits)
  {
    v24 = 1.79769313e308;
  }

  else
  {
    v24 = v18;
  }

  if (priority >= 1000.0 || !fits)
  {
    v23 = v17;
  }

  result.height = v24;
  result.width = v23;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  v66 = *MEMORY[0x1E69E9840];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __106__UICollectionViewCell_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke;
  v63[3] = &unk_1E70F3590;
  v63[4] = self;
  [UIView performWithoutAnimation:v63];
  [(UICollectionViewCell *)self _contentViewInset];
  v11 = v10;
  v13 = v12;
  v60 = v14;
  v16 = v15;
  if ((*(&self->_collectionCellFlags + 1) & 0x10) == 0 || ![(UIView *)self->_contentView translatesAutoresizingMaskIntoConstraints])
  {
    v26 = dyld_program_sdk_at_least();
    contentView = self;
    if ((v26 & 1) == 0)
    {
      contentView = self->_contentView;
    }

    v28 = contentView;
    if (([(UIView *)v28 _wantsAutolayoutOrIsGuardingForEngineHosting]& 1) != 0)
    {
      requiresConstraintBasedLayout = 1;
    }

    else
    {
      requiresConstraintBasedLayout = [objc_opt_class() requiresConstraintBasedLayout];
    }

    if (([(UIView *)self->_contentView _wantsAutolayoutOrIsGuardingForEngineHosting]& 1) != 0)
    {
      LOBYTE(v32) = 0;
    }

    else
    {
      v32 = [objc_opt_class() requiresConstraintBasedLayout] ^ 1;
    }

    if (v28 != self || (v32 & 1) != 0)
    {
      if (!requiresConstraintBasedLayout)
      {
        goto LABEL_47;
      }
    }

    else if (!requiresConstraintBasedLayout || [(UIView *)self->_contentView translatesAutoresizingMaskIntoConstraints]&& (![(UIView *)self needsUpdateConstraints]|| dyld_program_sdk_at_least() && [(UIView *)self->_contentView _hostsLayoutEngine]))
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      translatesAutoresizingMaskIntoConstraints = [(UIView *)self->_contentView translatesAutoresizingMaskIntoConstraints];
      if (has_internal_diagnostics)
      {
        if (!translatesAutoresizingMaskIntoConstraints)
        {
          v57 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            selfCopy2 = self;
            _os_log_fault_impl(&dword_188A29000, v57, OS_LOG_TYPE_FAULT, "contentView of collectionViewCell has translatesAutoresizingMaskIntoConstraints false and is missing constraints to the cell, which will cause substandard performance in cell autosizing. Please leave the contentView's translatesAutoresizingMaskIntoConstraints true or else provide constraints between the contentView and the cell. %@", buf, 0xCu);
          }
        }
      }

      else if (!translatesAutoresizingMaskIntoConstraints)
      {
        v58 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED496500) + 8);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy2 = self;
          _os_log_impl(&dword_188A29000, v58, OS_LOG_TYPE_ERROR, "contentView of collectionViewCell has translatesAutoresizingMaskIntoConstraints false and is missing constraints to the cell, which will cause substandard performance in cell autosizing. Please leave the contentView's translatesAutoresizingMaskIntoConstraints true or else provide constraints between the contentView and the cell. %@", buf, 0xCu);
        }
      }

      if ([(UIView *)self->_contentView translatesAutoresizingMaskIntoConstraints])
      {
        [(UIView *)self->_contentView _setHostsLayoutEngine:1];
      }

      v35 = self->_contentView;

      v28 = v35;
    }

    if (dyld_program_sdk_at_least())
    {
      self->_collectionCellFlags = (*&self->_collectionCellFlags & 0xFFBFFFFF | ((v28 == self->_contentView) << 22));
      if (!_UIEngineHostingViewsShouldGuardWantsAutolayoutFlagPropagation() || ([(UIView *)v28 _usesLayoutEngineHostingConstraints]& 1) == 0)
      {
        [(UIView *)v28 _setWantsAutolayout];
      }

      buf[0] = 1;
      if ((dyld_program_sdk_at_least() & 1) == 0 && (!dyld_program_sdk_at_least() || v13 == 0.0 && v11 == 0.0 && v16 == 0.0 && v60 == 0.0))
      {
        [(UIView *)v28 frame];
        v38 = CGRectGetWidth(v69);
      }

      else
      {
        v38 = width;
        if (v28 == self->_contentView)
        {
          *&v36 = priority;
          *&v37 = fittingPriority;
          [(UICollectionViewCell *)self _contentTargetSizeForTargetSize:0 withHorizontalFittingPriority:width verticalFittingPriority:height forUseWithSizeThatFits:v36, v37];
          if (v39 == 0.0 && fittingPriority == 50.0)
          {
            v41 = buf;
          }

          else
          {
            v41 = 0;
          }

          [UIView _systemLayoutSizeFittingSize:v28 withHorizontalFittingPriority:"_systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:hasIntentionallyCollapsedHeight:" verticalFittingPriority:v41 hasIntentionallyCollapsedHeight:?];
          v24 = v42 - (-v16 - v13);
          v25 = v43 - (-v60 - v11);
LABEL_63:
          if (v25 == 0.0 && (buf[0] & 1) == 0)
          {
            [(UICollectionViewCell *)self sizeThatFits:width, height];
            v24 = v52;
            v25 = v53;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __106__UICollectionViewCell_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke_330;
            block[3] = &unk_1E70F3590;
            block[4] = self;
            if (qword_1ED496508[0] != -1)
            {
              dispatch_once(qword_1ED496508, block);
            }
          }

          goto LABEL_48;
        }
      }

      if (fittingPriority == 50.0 && height == 0.0)
      {
        v49 = buf;
      }

      else
      {
        v49 = 0;
      }

      *&v36 = priority;
      *&v37 = fittingPriority;
      [(UIView *)v28 _systemLayoutSizeFittingSize:v49 withHorizontalFittingPriority:v38 verticalFittingPriority:height hasIntentionallyCollapsedHeight:v36, v37];
      v24 = v50;
      v25 = v51;
      goto LABEL_63;
    }

LABEL_47:
    v61.receiver = self;
    v61.super_class = UICollectionViewCell;
    *&v30 = priority;
    *&v31 = fittingPriority;
    [(UIView *)&v61 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v30, v31];
    v24 = v44;
    v25 = v45;
LABEL_48:

    goto LABEL_49;
  }

  v17 = width;
  v18 = v11;
  v59 = v17;
  [UICollectionViewCell _contentTargetSizeForTargetSize:"_contentTargetSizeForTargetSize:withHorizontalFittingPriority:verticalFittingPriority:forUseWithSizeThatFits:" withHorizontalFittingPriority:1 verticalFittingPriority:? forUseWithSizeThatFits:?];
  [UIView systemLayoutSizeFittingSize:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" withHorizontalFittingPriority:? verticalFittingPriority:?];
  v20 = v19;
  v22 = v21;
  v23 = self->_contentView;
  if (priority != 1000.0 && v20 > 2777777.0 || fittingPriority != 1000.0 && v22 > 2777777.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIContentViewAssertValidFittingSize(UIView * _Nonnull __strong, CGSize, UILayoutPriority, UILayoutPriority)"}];
    v67.width = v20;
    v67.height = v22;
    v56 = NSStringFromCGSize(v67);
    [currentHandler handleFailureInFunction:v55 file:@"_UIContentViewShared.h" lineNumber:73 description:{@"Content view returned an invalid size %@ from -systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority: which is not allowed. If you have implemented a custom content view, you need to add constraints inside it so that its size is not ambiguous, or you need to manually compute and return a valid size. Content view: %@", v56, v23}];
  }

  if (priority >= 1000.0)
  {
    v24 = v59;
  }

  else
  {
    v24 = v20 - (-v16 - v13);
  }

  if (fittingPriority >= 1000.0)
  {
    v25 = height;
  }

  else
  {
    v25 = v22 - (-v60 - v18);
  }

LABEL_49:
  v46 = v24;
  v47 = v25;
  result.height = v47;
  result.width = v46;
  return result;
}

uint64_t __106__UICollectionViewCell_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _performConfigurationStateUpdate];
  v2 = *(a1 + 32);

  return [v2 _layoutContentView];
}

void __106__UICollectionViewCell_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke_330(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_CollectionViewCellEagerlyEnsuresFloatingContentView_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Warning once only: Detected a case where constraints ambiguously suggest a size of zero for a collection view cell's content view. We're considering the collapse unintentional and using standard size instead. Cell: %@", &v4, 0xCu);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __37__UICollectionViewCell_sizeThatFits___block_invoke;
  v22[3] = &unk_1E70F3590;
  v22[4] = self;
  [UIView performWithoutAnimation:v22];
  if ((*(&self->_collectionCellFlags + 1) & 0x10) != 0)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __37__UICollectionViewCell_sizeThatFits___block_invoke_2;
    v21[3] = &unk_1E70F3590;
    v21[4] = self;
    [UIView performWithoutAnimation:v21];
    if (width == 0.0)
    {
      *&v8 = 50.0;
    }

    else
    {
      *&v8 = 1000.0;
    }

    if (height == 0.0)
    {
      *&v9 = 50.0;
    }

    else
    {
      *&v9 = 1000.0;
    }

    [(UICollectionViewCell *)self _contentTargetSizeForTargetSize:1 withHorizontalFittingPriority:width verticalFittingPriority:height forUseWithSizeThatFits:v8, v9];
    [UIView systemLayoutSizeFittingSize:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" withHorizontalFittingPriority:? verticalFittingPriority:?];
    v11 = v10;
    v13 = v12;
    [(UICollectionViewCell *)self _contentViewInset];
    width = v11 - (-v15 - v16);
    height = v13 - (-v14 - v17);
  }

  else if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v20.receiver = self;
    v20.super_class = UICollectionViewCell;
    [(UIView *)&v20 sizeThatFits:width, height];
    width = v6;
    height = v7;
  }

  v18 = width;
  v19 = height;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  v6.receiver = self;
  v6.super_class = UICollectionViewCell;
  viewCopy = view;
  [(UIView *)&v6 _intrinsicContentSizeInvalidatedForChildView:viewCopy];
  contentView = self->_contentView;

  if (contentView == viewCopy)
  {
    [(UICollectionReusableView *)self invalidateIntrinsicContentSize:v6.receiver];
  }
}

- (void)setEditing:(BOOL)editing
{
  if (((((*&self->_collectionCellFlags & 4) == 0) ^ editing) & 1) == 0)
  {
    editingCopy = editing;
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    if (editingCopy)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    self->_collectionCellFlags = (*&self->_collectionCellFlags & 0xFFFFFFFB | v5);

    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_configureFocusedFloatingContentView:(id)view
{
  viewCopy = view;
  [viewCopy setBackgroundColor:0 forState:0];
  [viewCopy setBackgroundColor:0 forState:8];
  [viewCopy setBackgroundColor:0 forState:1];
  [viewCopy setBackgroundColor:0 forState:4];
  [viewCopy setFocusedSizeIncrease:70.0];
  [viewCopy setContentMotionRotation:0.2 translation:{0.2, 12.0, 12.0}];
}

- (void)_updateFocusedFloatingContentControlStateInContext:(id)context withAnimationCoordinator:(id)coordinator animated:(BOOL)animated
{
  animatedCopy = animated;
  contextCopy = context;
  coordinatorCopy = coordinator;
  if ([(UICollectionViewCell *)self _canFocusProgrammatically])
  {
    [(UICollectionViewCell *)self _ensureFocusedFloatingContentView];
  }

  if (self->_focusedFloatingContentView)
  {
    if (contextCopy)
    {
      nextFocusedView = [contextCopy nextFocusedView];
      isFocused = nextFocusedView == self;
    }

    else
    {
      isFocused = [(UICollectionViewCell *)self isFocused];
    }

    if (isFocused)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if ([(UICollectionViewCell *)self isSelected])
    {
      v11 |= 4uLL;
    }

    isHighlighted = [(UICollectionViewCell *)self isHighlighted];
    focusedFloatingContentView = self->_focusedFloatingContentView;
    v14 = v11 | isHighlighted;
    if (coordinatorCopy)
    {
      [(_UIFloatingContentView *)focusedFloatingContentView setControlState:v14 withAnimationCoordinator:coordinatorCopy];
    }

    else
    {
      [(_UIFloatingContentView *)focusedFloatingContentView setControlState:v14 animated:animatedCopy];
    }
  }
}

- (void)_willUpdateFocusInContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = UICollectionViewCell;
  [(UIView *)&v8 _willUpdateFocusInContext:contextCopy];
  previouslyFocusedView = [contextCopy previouslyFocusedView];
  v6 = previouslyFocusedView;
  if (previouslyFocusedView == self)
  {

LABEL_5:
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
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
  nextFocusedView = [contextCopy nextFocusedView];

  if (nextFocusedView == self)
  {
    [(UICollectionViewCell *)self _ensureFocusedFloatingContentView];
    if (self->_focusedFloatingContentView)
    {
      superview = [(UIView *)self superview];
      [superview bringSubviewToFront:self];
    }
  }

  v8 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:contextCopy];
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:3274 description:@"Received call to _didUpdateFocusInContext: outside of a focus update."];
  }

  [(UICollectionViewCell *)self _updateFocusedFloatingContentControlStateInContext:contextCopy withAnimationCoordinator:v8 animated:1];
  previouslyFocusedView = [contextCopy previouslyFocusedView];
  v10 = previouslyFocusedView;
  if (previouslyFocusedView == self)
  {
  }

  else
  {
    nextFocusedView2 = [contextCopy nextFocusedView];

    if (nextFocusedView2 != self)
    {
      goto LABEL_11;
    }
  }

  [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
LABEL_11:
  previouslyFocusedView2 = [contextCopy previouslyFocusedView];

  if (previouslyFocusedView2 == self)
  {
    _collectionView = [(UICollectionReusableView *)self _collectionView];
    [_collectionView _cellDidBecomeUnfocused:self];
  }

  nextFocusedView3 = [contextCopy nextFocusedView];

  if (nextFocusedView3 == self)
  {
    _collectionView2 = [(UICollectionReusableView *)self _collectionView];
    [_collectionView2 _cellDidBecomeFocused:self];
  }

  v17.receiver = self;
  v17.super_class = UICollectionViewCell;
  [(UIView *)&v17 _didUpdateFocusInContext:contextCopy];
}

- (int64_t)_systemDefaultFocusGroupPriority
{
  if ([(UICollectionViewCell *)self isSelected])
  {
    return 2000;
  }

  else
  {
    return 0;
  }
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context
{
  contextCopy = context;
  [(UICollectionViewCell *)self _ensureFocusedFloatingContentView];
  focusedFloatingContentView = self->_focusedFloatingContentView;
  if (focusedFloatingContentView)
  {
    v8 = [(_UIFloatingContentView *)focusedFloatingContentView _preferredConfigurationForFocusAnimation:animation inContext:contextCopy];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UICollectionViewCell;
    v8 = [(UIView *)&v11 _preferredConfigurationForFocusAnimation:animation inContext:contextCopy];
  }

  v9 = v8;

  return v9;
}

- (BOOL)_allowsHorizontalFocusMovement
{
  _layoutAttributes = [(UICollectionReusableView *)self _layoutAttributes];
  _existingListAttributes = [(UICollectionViewLayoutAttributes *)_layoutAttributes _existingListAttributes];
  v4 = _existingListAttributes == 0;

  return v4;
}

- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)engine
{
  _allowsHorizontalFocusMovement = [(UICollectionViewCell *)self _allowsHorizontalFocusMovement];
  if (engine != 1 || _allowsHorizontalFocusMovement)
  {
    v7.receiver = self;
    v7.super_class = UICollectionViewCell;
    LOBYTE(_allowsHorizontalFocusMovement) = [(UIResponder *)&v7 _shouldForwardMovementToFocusEngine:engine];
  }

  return _allowsHorizontalFocusMovement;
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
  if ([(UICollectionViewCell *)self _isSwiped])
  {
    v3 = 0;
    goto LABEL_14;
  }

  if (!self->_systemBackgroundView)
  {
    goto LABEL_10;
  }

  [(UICollectionViewCell *)self _performConfigurationStateUpdate];
  configuration = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
  if (([configuration isTintBackgroundColor] & 1) == 0)
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom > 5 || ((1 << userInterfaceIdiom) & 0x23) == 0 || ![(UICollectionViewCell *)self _backgroundFillIsCustomized])
    {

LABEL_10:
      _collectionView = [(UICollectionReusableView *)self _collectionView];
      _effectiveDefaultAllowsFocus = [_collectionView _effectiveDefaultAllowsFocus];

      v9 = off_1E70E9948;
      if (!_effectiveDefaultAllowsFocus)
      {
        v9 = off_1E70EB810;
      }

      v10 = *v9;
      configuration = [(UICollectionViewCell *)self _defaultFocusOutline];
      v3 = [(__objc2_class *)v10 effectWithPath:configuration];
      goto LABEL_13;
    }
  }

  v3 = 0;
LABEL_13:

LABEL_14:

  return v3;
}

- (int64_t)focusItemDeferralMode
{
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  v4 = [_collectionView _cellFocusItemDeferral:self];

  return v4;
}

@end