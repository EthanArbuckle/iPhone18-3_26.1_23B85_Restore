@interface UICollectionViewCell
+ (BOOL)_subclassOverridesContentViewClass;
+ (id)_createDefaultContentViewWithFrame:(CGRect)a3;
- (BOOL)_allowsHorizontalFocusMovement;
- (BOOL)_appliesLayoutAttributesMaskingToBackgroundConfiguration;
- (BOOL)_appliesLayoutAttributesMaskingToReusableView;
- (BOOL)_backgroundFillIsCustomized;
- (BOOL)_backgroundIsVerticallyInset;
- (BOOL)_descendantsShouldHighlight;
- (BOOL)_forwardsSystemLayoutFittingSizeToContentView:(id)a3;
- (BOOL)_gestureRecognizerShouldBegin:(id)a3;
- (BOOL)_hasCustomSelectionAction;
- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)a3;
- (BOOL)_shouldSaveOpaqueStateForView:(id)a3;
- (BOOL)_usingBackgroundConfigurationOrDefaultBackgroundConfiguration;
- (BOOL)canBecomeFocused;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)isFocused;
- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4;
- (CGSize)_contentTargetSizeForTargetSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5 forUseWithSizeThatFits:(BOOL)a6;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (UIBackgroundConfiguration)backgroundConfiguration;
- (UICellConfigurationState)_configurationState;
- (UICollectionViewCell)initWithCoder:(id)a3;
- (UICollectionViewCell)initWithFrame:(CGRect)a3;
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
- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4;
- (id)_selectionSegueTemplate;
- (id)_stateForUpdatingBackgroundConfigurationWithState:(id)a3;
- (id)contentConfiguration;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (int64_t)_systemDefaultFocusGroupPriority;
- (int64_t)focusItemDeferralMode;
- (unint64_t)_effectiveMaskedCornersForSystemBackgroundView;
- (unint64_t)_maskedCornersForSystemBackgroundView;
- (unint64_t)_viewConfigurationState;
- (void)_applyBackgroundViewConfiguration:(id)a3 withState:(id)a4;
- (void)_applyContentViewConfiguration:(id)a3 withState:(id)a4 usingSPI:(BOOL)a5;
- (void)_clearChangeHandlersForOldContentView:(id)a3;
- (void)_configureFocusedFloatingContentView:(id)a3;
- (void)_didUpdateFocusInContext:(id)a3;
- (void)_executeConfigurationUpdate;
- (void)_forcePopulateNormalStateConfiguration;
- (void)_handleMenuGesture:(id)a3;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)_layoutContentView;
- (void)_layoutFocusedFloatingContentView:(id)a3;
- (void)_layoutSystemBackgroundView;
- (void)_monitoredView:(id)a3 didMoveFromSuperview:(id)a4 toSuperview:(id)a5;
- (void)_monitoredView:(id)a3 willMoveFromSuperview:(id)a4 toSuperview:(id)a5;
- (void)_notifyIsDisplaying:(BOOL)a3;
- (void)_performAction:(SEL)a3 sender:(id)a4;
- (void)_performConfigurationStateModifications:(id)a3;
- (void)_performConfigurationStateUpdate;
- (void)_performCustomSelectionAction;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_prepareForConfigurationStateUpdate;
- (void)_resetBackgroundViewConfiguration;
- (void)_resetBackgroundViewsAndColor;
- (void)_restoreCurrentDragAppearanceIfNeeded;
- (void)_setAllowsStateUpdatesWhenEvaluatingBackgroundAppearance:(BOOL)a3;
- (void)_setAutomaticIntrinsicContentSizeInvalidationEnabled:(BOOL)a3;
- (void)_setBackgroundViewConfiguration:(id)a3;
- (void)_setBackgroundViewConfigurationProvider:(id)a3;
- (void)_setContentView:(id)a3 addToHierarchy:(BOOL)a4;
- (void)_setContentViewConfigurationProvider:(id)a3;
- (void)_setContextMenuGroupLocation:(int64_t)a3;
- (void)_setDragAppearance:(unint64_t)a3;
- (void)_setDropState:(int64_t)a3;
- (void)_setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)_setLayoutAttributes:(id)a3;
- (void)_setOpaque:(BOOL)a3 forSubview:(id)a4;
- (void)_setPopupMenuButton:(id)a3;
- (void)_setReordering:(BOOL)a3;
- (void)_setSelected:(BOOL)a3 animated:(BOOL)a4 isUserInitiated:(BOOL)a5;
- (void)_setSelectionSegueTemplate:(id)a3;
- (void)_setSwiped:(BOOL)a3;
- (void)_setTypeSelectState:(int64_t)a3;
- (void)_setUsesAnyPlainListStyle:(BOOL)a3;
- (void)_setupChangeHandlersForNewContentView:(id)a3;
- (void)_setupHighlightingSupport;
- (void)_teardownHighlightingSupportIfReady;
- (void)_updateBackgroundView;
- (void)_updateBackgroundViewConfigurationForState:(id)a3;
- (void)_updateConfigurationWithObservationTracking;
- (void)_updateContentViewConfigurationForState:(id)a3;
- (void)_updateDefaultBackgroundAppearance;
- (void)_updateFocusedFloatingContentControlStateInContext:(id)a3 withAnimationCoordinator:(id)a4 animated:(BOOL)a5;
- (void)_updateHighlightColorsForAnimationHalfwayPoint;
- (void)_updateHighlightColorsForView:(id)a3 highlight:(BOOL)a4;
- (void)_updatePopupMenuButtonFromContentView;
- (void)_updateProperties;
- (void)_updateUserInterfaceRenderingModeUsingAttributes:(id)a3;
- (void)_willUpdateFocusInContext:(id)a3;
- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)editMenuInteraction:(id)a3 willPresentMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAutomaticallyUpdatesBackgroundConfiguration:(BOOL)automaticallyUpdatesBackgroundConfiguration;
- (void)setAutomaticallyUpdatesContentConfiguration:(BOOL)automaticallyUpdatesContentConfiguration;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundConfiguration:(UIBackgroundConfiguration *)backgroundConfiguration;
- (void)setBackgroundView:(UIView *)backgroundView;
- (void)setConfigurationUpdateHandler:(UICollectionViewCellConfigurationUpdateHandler)configurationUpdateHandler;
- (void)setEditing:(BOOL)a3;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setNeedsUpdateConfiguration;
- (void)setSelected:(BOOL)selected;
- (void)setSelectedBackgroundView:(UIView *)selectedBackgroundView;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
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
        v4 = [(UICollectionViewCell *)self _defaultBackgroundView];
        [(UICollectionViewCell *)self setBackgroundView:v4];

        collectionCellFlags = (*&self->_collectionCellFlags & 0xFFFFBFFF);
        self->_collectionCellFlags = collectionCellFlags;
      }

      if ((*&collectionCellFlags & 0x8000) == 0)
      {
        v5 = [(UICollectionViewCell *)self _defaultSelectedBackgroundView];
        [(UICollectionViewCell *)self setSelectedBackgroundView:v5];

        *&self->_collectionCellFlags &= ~0x8000u;
      }
    }

    else
    {
      v6 = [(UICollectionViewCell *)self _effectiveDefaultBackgroundConfiguration];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __58__UICollectionViewCell__updateDefaultBackgroundAppearance__block_invoke;
      v8[3] = &unk_1E70F35B8;
      v8[4] = self;
      v9 = v6;
      v7 = v6;
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
    v5 = +[UIBackgroundConfiguration clearConfiguration];
    [v5 setCustomView:v4];
  }

  else
  {
    v5 = [(UICollectionViewCell *)self _defaultBackgroundConfiguration];
  }

  return v5;
}

- (void)_updatePopupMenuButtonFromContentView
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UIView *)self->_contentView _popupMenuButton];
    [(UICollectionViewCell *)self _setPopupMenuButton:v3];
  }
}

- (unint64_t)_maskedCornersForSystemBackgroundView
{
  v2 = [(UICollectionReusableView *)self _layoutAttributes];
  if (v2)
  {
    v3 = v2[72];
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

  v4 = [(UIView *)self traitCollection];
  v2 = [v4 userInterfaceIdiom] != 6 || (*&self->_collectionCellFlags & 0xE0) != 0;

  return v2;
}

+ (BOOL)_subclassOverridesContentViewClass
{
  if (qword_1ED4964E8 != -1)
  {
    dispatch_once(&qword_1ED4964E8, &__block_literal_global_119);
  }

  v3 = [a1 methodForSelector:sel__contentViewClass];
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
  v2 = self;
  sub_188C78D28();
}

- (unint64_t)_viewConfigurationState
{
  v2 = [(UICollectionViewCell *)self configurationState];
  v3 = [v2 _viewConfigurationState];

  return v3;
}

uint64_t __58__UICollectionViewCell__subclassOverridesContentViewClass__block_invoke()
{
  result = [UICollectionViewCell methodForSelector:sel__contentViewClass];
  qword_1ED4964E0 = result;
  return result;
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

    memcpy(v12, __src, sizeof(v12));
    TraitCollectionTSD = GetTraitCollectionTSD();
    memcpy(__dst, TraitCollectionTSD + 16, sizeof(__dst));
    memcpy(TraitCollectionTSD + 16, v12, 0x170uLL);
    v7 = __dst[22] & ~*&__src[11];
    v8 = *&__src[11] & ~__dst[22];
    v9 = __dst[22] & *&__src[11];
    v10 = [a1 methodForSelector:sel_updateConfigurationUsingState_];
    *&v12[0] = v7;
    *(&v12[0] + 1) = v8;
    *&v12[1] = v9;
    [(UIView *)a1 _recordTraitUsage:v12 trackedStateDiff:v10 insideMethod:sel_setNeedsUpdateConfiguration withInvalidationAction:?];
    v11 = _UITraitUsageTrackingResultDestroy(__dst);
    a1[148] &= ~0x800000u;
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      [a1 _layoutSystemBackgroundView];
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
  v4 = [(UIView *)self traitCollection];
  v5 = [(UIViewConfigurationState *)v3 initWithTraitCollection:v4];

  [(UIViewConfigurationState *)v5 setDisabled:[(UIView *)self isUserInteractionEnabled]^ 1];
  [(UIViewConfigurationState *)v5 setHighlighted:[(UICollectionViewCell *)self isHighlighted]];
  [(UIViewConfigurationState *)v5 setSelected:[(UICollectionViewCell *)self isSelected]];
  [(UIViewConfigurationState *)v5 setFocused:[(UICollectionViewCell *)self isFocused]];
  [(UICellConfigurationState *)v5 setEditing:[(UICollectionViewCell *)self isEditing]];
  [(UICellConfigurationState *)v5 setSwiped:[(UICollectionViewCell *)self _isSwiped]];
  [(UICellConfigurationState *)v5 setReordering:[(UICollectionViewCell *)self _isReordering]];
  [(UICellConfigurationState *)v5 _setTypeSelectState:[(UICollectionViewCell *)self _typeSelectState]];
  v6 = [(UICollectionReusableView *)self _layoutAttributes];
  v7 = v6;
  if (v6)
  {
    [(UIViewConfigurationState *)v5 setPinned:(*(v6 + 288) >> 15) & 1];
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
  v3 = [(UICollectionReusableView *)self _layoutAttributes];
  v4 = [(UICollectionViewLayoutAttributes *)v3 _existingListAttributes];
  v5 = v4;
  if (v4 && (*(v4 + 8) & 2) != 0)
  {
    v6 = *(v4 + 24);
  }

  else
  {
    v6 = [(UICollectionViewCell *)self _maskedCornersForSystemBackgroundView];
  }

  if (v3)
  {
    v7 = *(v3 + 288);
    if ((v7 & 0x10) != 0)
    {
      v6 |= (v7 >> 5) & 0xF;
    }
  }

  return v6;
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
    v4 = [(UIView *)self _focusSystemSceneComponent];
    [v4 _requestFocusEffectUpdateToEnvironment:self];
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
    v4 = [(UIView *)self->_contentView configuration];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
    v3 = [(UIView *)self layer];
    [v3 removeAllAnimations];
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

  v4 = [(UICollectionViewCell *)self _descendantsShouldHighlight];
  if (v4)
  {
    [(UICollectionViewCell *)self _setupHighlightingSupport];
  }

  selectedBackgroundView = self->_selectedBackgroundView;
  if (selectedBackgroundView)
  {
    [(UIView *)selectedBackgroundView setAlpha:v3];
    v6 = [(UICollectionReusableView *)self _collectionView];
    [v6 _cellBackgroundChangedForSelectionOrHighlight:self];
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
    [(UICollectionViewCell *)self _updateHighlightColorsForView:self highlight:v4];
    *&self->_collectionCellFlags &= ~0x200000u;
  }
}

- (BOOL)_descendantsShouldHighlight
{
  if ((*&self->_collectionCellFlags & 2) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(UICollectionViewCell *)self _highlightDescendantsWhenSelected];
    if (v3)
    {
      LOBYTE(v3) = *&self->_collectionCellFlags & 1;
    }
  }

  return v3;
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
  v2 = self;
  selectedBackgroundView = self->_selectedBackgroundView;
  if (!selectedBackgroundView)
  {
    if (![(UICollectionViewCell *)v2 isHighlighted]&& ![(UICollectionViewCell *)v2 isSelected]&& ![(UICollectionViewCell *)v2 isFocused])
    {
      goto LABEL_3;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__UICollectionViewCell__backgroundFillIsCustomized__block_invoke;
    v11[3] = &unk_1E70F3590;
    v11[4] = v2;
    [UIView performWithoutAnimation:v11];
    v4 = [(_UISystemBackgroundView *)v2->_systemBackgroundView configuration];
    v5 = v4;
    if (v4 && [v4 _hasBackgroundFill])
    {
      lastNormalBackgroundViewConfiguration = v2->_lastNormalBackgroundViewConfiguration;
      if (!lastNormalBackgroundViewConfiguration)
      {
        if ((*(&v2->_collectionCellFlags + 3) & 3) != 0)
        {
          [(UICollectionViewCell *)v2 _forcePopulateNormalStateConfiguration];
          v10 = [(_UISystemBackgroundView *)v2->_systemBackgroundView configuration];

          if (!v10)
          {
            LOBYTE(v2) = 0;
            v5 = 0;
            goto LABEL_13;
          }

          if (![v10 _hasBackgroundFill])
          {
            LOBYTE(v2) = 0;
            v5 = v10;
            goto LABEL_13;
          }

          lastNormalBackgroundViewConfiguration = v2->_lastNormalBackgroundViewConfiguration;
          v5 = v10;
        }

        else
        {
          lastNormalBackgroundViewConfiguration = 0;
        }
      }

      v7 = [(UIView *)v2 tintColor];
      LODWORD(v2) = [v5 _backgroundFillIsEqual:lastNormalBackgroundViewConfiguration withTintColor:v7] ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }

LABEL_13:

    return v2;
  }

  if (![(UIView *)selectedBackgroundView isHidden])
  {
    [(UIView *)v2->_selectedBackgroundView alpha];
    LOBYTE(v2) = v8 > 0.0;
    return v2;
  }

LABEL_3:
  LOBYTE(v2) = 0;
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

- (BOOL)canBecomeFocused
{
  v3 = [(UICollectionReusableView *)self _layoutAttributes];
  v4 = [(UICollectionReusableView *)self _isStyledAsHeaderOrFooterFromLayoutAttributes:v3];

  if (v4)
  {
    v4 = ![(UICollectionReusableView *)self _isFocusableWhenStyledAsHeader];
  }

  v5 = [(UICollectionViewCell *)self _existingContentView];
  v6 = v5;
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      LODWORD(v5) = [v6 _preventFocus];
    }

    else
    {
      LODWORD(v5) = 0;
    }
  }

  if ((v4 | v5))
  {
    v7 = 0;
  }

  else
  {
    v8 = [(UICollectionReusableView *)self _collectionView];
    v7 = [v8 _cellCanBecomeFocused:self];
  }

  return v7;
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

- (BOOL)_hasCustomSelectionAction
{
  v2 = [(UICollectionViewCell *)self _effectivePopupMenuButton];
  v3 = v2 != 0;

  return v3;
}

- (id)_selectionSegueTemplate
{
  v2 = self->_selectionSegueTemplate;

  return v2;
}

+ (id)_createDefaultContentViewWithFrame:(CGRect)a3
{
  v3 = [objc_alloc(objc_msgSend(a1 "_contentViewClass"))];
  if (dyld_program_sdk_at_least())
  {
    [v3 _setHostsLayoutEngine:1];
  }

  return v3;
}

- (UICollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = UICollectionViewCell;
  v3 = [(UICollectionReusableView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (UICollectionViewCell)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = UICollectionViewCell;
  v5 = [(UICollectionReusableView *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIContentConfigurationIdentifier"];
    v5->_collectionCellFlags = (*&v5->_collectionCellFlags & 0xFFFFEFFF | ((v6 != 0) << 12));

    v7 = [v4 decodeObjectForKey:@"UIContentConfigurationView"];
    viewForContentConfiguration = v5->_viewForContentConfiguration;
    v5->_viewForContentConfiguration = v7;

    v9 = [v4 decodeObjectForKey:@"UIContentView"];
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

    v13 = [v4 decodeObjectForKey:@"UISystemBackgroundView"];
    systemBackgroundView = v5->_systemBackgroundView;
    v5->_systemBackgroundView = v13;

    v15 = v5->_systemBackgroundView;
    if (v15)
    {
      [(UIView *)v5 insertSubview:v15 atIndex:0];
    }

    else
    {
      v16 = [v4 decodeObjectForKey:@"UIBackgroundView"];
      backgroundView = v5->_backgroundView;
      v5->_backgroundView = v16;

      v18 = [v4 decodeObjectForKey:@"UISelectedBackgroundView"];
      selectedBackgroundView = v5->_selectedBackgroundView;
      v5->_selectedBackgroundView = v18;
    }

    *&v5->_collectionCellFlags |= 0xC0800u;
  }

  return v5;
}

- (void)_applyContentViewConfiguration:(id)a3 withState:(id)a4 usingSPI:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  collectionCellFlags = self->_collectionCellFlags;
  if (v9)
  {
    if ((*&collectionCellFlags & 0x80000) != 0 && !self->_contentViewConfigurationProvider)
    {
      if (!v10)
      {
        v11 = [(UICollectionViewCell *)self configurationState];
      }

      v35 = v11;
      if (v5)
      {
        v19 = [(UICollectionViewCell *)self _viewConfigurationState];
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
        [v32 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:1093 description:{@"Updated configuration was nil for configuration: %@", v9}];
      }

      v11 = v35;
    }

    else
    {
      v13 = v9;
    }

    v34 = v11;
    if ((*&collectionCellFlags & 0x1000) == 0)
    {
      *&self->_collectionCellFlags |= 0x1000u;
      if (!v5)
      {
LABEL_43:
        v27 = [v13 makeContentView];
        objc_storeStrong(&self->_viewForContentConfiguration, v27);
        if (objc_opt_respondsToSelector())
        {
          v29 = [(_UIContentViewInternal *)self->_viewForContentConfiguration _wrappedContentView];

          v27 = v29;
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

    *&self->_collectionCellFlags |= 0x1000u;
    if (!v17)
    {
      if (!v5)
      {
        v28 = [(_UIContentViewInternal *)self->_viewForContentConfiguration configuration];
        UIContentConfigurationAlertForReplacedContentView(@"cell", self, v28, v15, @"Use separate registrations or reuse identifiers for different types of cells to avoid this.");

        goto LABEL_43;
      }

LABEL_39:
      v27 = [v13 createContentView];
LABEL_45:
      if (!v27)
      {
        v30 = [MEMORY[0x1E696AAA8] currentHandler];
        [v30 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:1127 description:{@"Content configuration returned a nil content view: %@", v13}];
      }

      if (([v27 translatesAutoresizingMaskIntoConstraints] & 1) == 0)
      {
        v31 = [MEMORY[0x1E696AAA8] currentHandler];
        [v31 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:1128 description:{@"The content view returned from the content configuration must have translatesAutoresizingMaskIntoConstraints enabled: %@", v27}];
      }

      [(UICollectionViewCell *)self setContentView:v27];

      goto LABEL_50;
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
    self->_collectionCellFlags = (*&collectionCellFlags & 0xFFFFEFFF);
    if ((*&collectionCellFlags & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    v34 = v10;
    [(UICollectionViewCell *)self setContentView:0];
    v13 = self->_viewForContentConfiguration;
    self->_viewForContentConfiguration = 0;
  }

LABEL_50:

  v11 = v34;
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

- (void)_setContentViewConfigurationProvider:(id)a3
{
  if (self->_contentViewConfigurationProvider != a3)
  {
    if (a3)
    {
      *&self->_collectionCellFlags &= ~0x80000u;
    }

    v4 = [a3 copy];
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

- (void)_updateContentViewConfigurationForState:(id)a3
{
  v4 = a3;
  contentViewConfigurationProvider = self->_contentViewConfigurationProvider;
  if (contentViewConfigurationProvider)
  {
    v11 = v4;
    v6 = contentViewConfigurationProvider[2](contentViewConfigurationProvider, [(UICollectionViewCell *)self _viewConfigurationState]);
    [(UICollectionViewCell *)self _setContentViewConfiguration:v6];
LABEL_3:

    v4 = v11;
    goto LABEL_4;
  }

  if ((*(&self->_collectionCellFlags + 2) & 8) != 0)
  {
    v11 = v4;
    if (self->_viewForContentConfiguration)
    {
      v6 = [(UICollectionViewCell *)self contentConfiguration];
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
      v6 = [(UICollectionViewCell *)self _contentViewConfiguration];
      if (!v6)
      {
        goto LABEL_3;
      }

      v7 = self;
      v8 = v6;
      v9 = v11;
      v10 = 1;
    }

    [(UICollectionViewCell *)v7 _applyContentViewConfiguration:v8 withState:v9 usingSPI:v10];
    goto LABEL_3;
  }

LABEL_4:
}

- (void)_clearChangeHandlersForOldContentView:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 _setPopupMenuButtonDidChangeHandler:0];
    [(UICollectionViewCell *)self _setPopupMenuButton:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 _setContainerBackgroundViewDidChangeHandler:0];
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
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__UICollectionViewCell__setupChangeHandlersForNewContentView___block_invoke;
    v7[3] = &unk_1E70F5A28;
    objc_copyWeak(&v8, &location);
    [v4 _setPopupMenuButtonDidChangeHandler:v7];
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
    [v4 _setContainerBackgroundViewDidChangeHandler:v5];
    if ([(UICollectionViewCell *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
    {
      [(UICollectionViewCell *)self _updateDefaultBackgroundAppearance];
    }

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 _containerViewIsHiddenForReuse:(*&self->super._reusableViewFlags & 0x400) == 0];
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

- (void)_setContentView:(id)a3 addToHierarchy:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  if (self->_contentView != v14)
  {
    if (v4)
    {
      [(UICollectionViewCell *)self _clearChangeHandlersForOldContentView:?];
      [(UIView *)self->_contentView _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges:0];
      [(UIView *)self->_contentView removeFromSuperview];
      menuGesture = self->_menuGesture;
      self->_menuGesture = 0;
    }

    objc_storeStrong(&self->_contentView, a3);
    [(UIView *)v14 setSemanticContentAttribute:[(UIView *)self semanticContentAttribute]];
    if (v14 && v4)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        [(UIView *)self bounds];
        [(UIView *)v14 setFrame:?];
        [(UIView *)v14 setAutoresizingMask:18];
      }

      v8 = [(_UIFloatingContentView *)self->_focusedFloatingContentView contentView];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = self;
      }

      v11 = v10;

      [(UIView *)v11 addSubview:v14];
      [(UIView *)v14 _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges:*&self->super._reusableViewFlags >> 15];
      [(UICollectionViewCell *)self _setupChangeHandlersForNewContentView:v14];
      if ([objc_opt_class() _wantsLegacyMenuGesture])
      {
        v12 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__handleMenuGesture_];
        v13 = self->_menuGesture;
        self->_menuGesture = v12;

        [(UIGestureRecognizer *)self->_menuGesture setDelegate:self];
        [(UILongPressGestureRecognizer *)self->_menuGesture setMinimumPressDuration:0.5];
        [(UIView *)v14 addGestureRecognizer:self->_menuGesture];
      }
    }
  }
}

- (void)_setAutomaticIntrinsicContentSizeInvalidationEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UICollectionViewCell;
  [(UICollectionReusableView *)&v5 _setAutomaticIntrinsicContentSizeInvalidationEnabled:?];
  [(UIView *)self->_contentView _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges:v3];
}

- (id)_encodableSubviews
{
  v3 = [(_UIFloatingContentView *)self->_focusedFloatingContentView contentView];
  v4 = [v3 subviews];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(UIView *)self subviews];
  }

  v7 = v6;

  return v7;
}

- (void)_populateArchivedSubviews:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = UICollectionViewCell;
  [(UIView *)&v5 _populateArchivedSubviews:v4];
  if (self->_systemBackgroundView)
  {
    [v4 removeObject:?];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UICollectionViewCell;
  [(UICollectionReusableView *)&v12 encodeWithCoder:v4];
  [v4 encodeObject:self->_systemBackgroundView forKey:@"UISystemBackgroundView"];
  if ((*(&self->_collectionCellFlags + 1) & 0x10) != 0)
  {
    v5 = [(UICollectionViewCell *)self contentConfiguration];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = [(UICollectionViewCell *)self _contentViewConfiguration];
      if (!v6)
      {
        v8 = 0;
LABEL_9:
        [v4 encodeObject:v8 forKey:@"UIContentConfigurationIdentifier"];

        goto LABEL_10;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 _wrappedConfigurationIdentifier];
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
  [v4 encodeObject:self->_viewForContentConfiguration forKey:@"UIContentConfigurationView"];
  contentView = self->_contentView;
  if (contentView)
  {
    [v4 encodeObject:contentView forKey:@"UIContentView"];
  }

  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [v4 encodeObject:backgroundView forKey:@"UIBackgroundView"];
  }

  selectedBackgroundView = self->_selectedBackgroundView;
  if (selectedBackgroundView)
  {
    [v4 encodeObject:selectedBackgroundView forKey:@"UISelectedBackgroundView"];
  }
}

- (void)_notifyIsDisplaying:(BOOL)a3
{
  v3 = a3;
  reusableViewFlags = self->super._reusableViewFlags;
  v6.receiver = self;
  v6.super_class = UICollectionViewCell;
  [(UICollectionReusableView *)&v6 _notifyIsDisplaying:?];
  if ((((reusableViewFlags & 0x400) == 0) ^ v3) & 1) == 0 && (objc_opt_respondsToSelector())
  {
    [(UIView *)self->_contentView _containerViewIsHiddenForReuse:!v3];
  }
}

- (void)_updateHighlightColorsForView:(id)a3 highlight:(BOOL)a4
{
  if (a4)
  {
    v6 = a3;
    [(UICollectionViewCell *)self _setupHighlightingSupport];
    [self->_highlightingSupport highlightView:v6];
  }

  else
  {
    [self->_highlightingSupport applyState:1 toView:a3];
  }

  [(UICollectionViewCell *)self _teardownHighlightingSupportIfReady];
}

- (void)_updateHighlightColorsForAnimationHalfwayPoint
{
  *&self->_collectionCellFlags &= ~0x200000u;
  v3 = [(UICollectionViewCell *)self _descendantsShouldHighlight];

  [(UICollectionViewCell *)self _updateHighlightColorsForView:self highlight:v3];
}

- (void)_setOpaque:(BOOL)a3 forSubview:(id)a4
{
  v4 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  highlightingSupport = self->_highlightingSupport;
  if (v4)
  {
    [highlightingSupport applyState:255 toView:v6];
  }

  else
  {
    [highlightingSupport applyState:1 toView:v6];
    [(UIView *)v6 setOpaque:0];
    v8 = +[UIColor clearColor];
    [(UIView *)v6 setBackgroundColor:v8];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && self->_selectedBackgroundView != v6 && self->_systemBackgroundView != v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [(UIView *)v6 subviews];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v9);
          }

          [(UICollectionViewCell *)self _setOpaque:v4 forSubview:*(*(&v14 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)_monitoredView:(id)a3 willMoveFromSuperview:(id)a4 toSuperview:(id)a5
{
  v7 = a5;
  if ([(UIView *)self containsView:a4]&& ![(UIView *)self containsView:v7])
  {
    [self->_highlightingSupport applyState:255 toView:self];
  }
}

- (void)_monitoredView:(id)a3 didMoveFromSuperview:(id)a4 toSuperview:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  while (v10 != self && v10)
  {
    objc_opt_class();
    v11 = (objc_opt_isKindOfClass() & 1) != 0 || self->_selectedBackgroundView == v13 || self->_systemBackgroundView == v13;
    v12 = [(UIView *)v10 superview];

    v10 = v12;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  if (![(UIView *)self containsView:v8]&& [(UIView *)self containsView:v9])
  {
    [self->_highlightingSupport cacheState:255 forView:v13];
    [(UICollectionViewCell *)self _updateHighlightColorsForView:v13 highlight:(*&self->_collectionCellFlags >> 1) & 1];
    [(UICollectionViewCell *)self _setOpaque:0 forSubview:v13];
  }

  v12 = v10;
LABEL_14:
}

- (void)_setSelected:(BOOL)a3 animated:(BOOL)a4 isUserInitiated:(BOOL)a5
{
  v5 = a4;
  v6 = a3;
  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_CollectionViewCellContextMenuSuppressesSelectionState, @"CollectionViewCellContextMenuSuppressesSelectionState") & 1) != 0 || byte_1ED48AAE4)
  {
    if ((*&self->_collectionCellFlags & 0xE0) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = v6;
    }

    if (v5)
    {
      goto LABEL_4;
    }
  }

  else if (v5)
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
    v11 = v6;
    [(UIView *)0.3 _animateCollectionTableAnimationWithDuration:UIView delay:v9 options:v10 animations:0 completion:?];
    return;
  }

  [(UICollectionViewCell *)self setSelected:v6];
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
    v7 = [(UIView *)self _focusBehavior];
    v8 = [UIFocusRingManager focusRingAvailableInBehavior:v7];

    if (v8)
    {

      +[UIFocusRingManager _updateActiveFocusLayers];
    }
  }
}

- (void)_setContextMenuGroupLocation:(int64_t)a3
{
  if (*&self->_collectionCellFlags >> 5 != a3)
  {
    v3 = a3;
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    self->_collectionCellFlags = (*&self->_collectionCellFlags & 0xFFFFFF1F | (32 * (v3 & 7)));

    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_setUsesAnyPlainListStyle:(BOOL)a3
{
  if (((((*(&self->_collectionCellFlags + 1) & 1) == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    if (v3)
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

- (void)_setTypeSelectState:(int64_t)a3
{
  if (((self->_collectionCellFlags >> 9) & 3) != a3)
  {
    v3 = a3;
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    self->_collectionCellFlags = (*&self->_collectionCellFlags & 0xFFFFF9FF | ((v3 & 3) << 9));

    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_setSwiped:(BOOL)a3
{
  if (((((*&self->_collectionCellFlags & 8) == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    if (v3)
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

- (void)_setReordering:(BOOL)a3
{
  if (((((*&self->_collectionCellFlags & 0x10) == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    if (v3)
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

- (void)_setDropState:(int64_t)a3
{
  if (self->__dropState != a3)
  {
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    self->__dropState = a3;

    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_setDragAppearance:(unint64_t)a3
{
  if (self->_dragAppearance | a3)
  {
    self->_dragAppearance = a3;
    [(UICollectionViewLayoutAttributes *)self->super._layoutAttributes alpha];
    v6 = fmin(v5, 0.5);
    v7 = 2;
    if (a3 != 2)
    {
      v7 = a3 == 1;
      v6 = v5;
    }

    v8 = a3 == 3;
    if (a3 == 3)
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

- (void)_setLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionReusableView *)self _layoutAttributes];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 289) >> 7;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_30:
    v8 = 0;
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  v7 = 0;
  if (!v4)
  {
    goto LABEL_30;
  }

LABEL_3:
  v8 = *(v4 + 289) >> 7;
  if (v5)
  {
LABEL_4:
    v9 = *(v5 + 304) > 1uLL;
    goto LABEL_5;
  }

LABEL_31:
  v9 = 0;
LABEL_5:
  v10 = v7 ^ v8;
  if (v4)
  {
    v11 = v4[38] > 1;
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

  v13 = [(UICollectionViewLayoutAttributes *)v6 _existingListAttributes];
  v14 = v13;
  if (v13)
  {
    v15 = _UIListEnvironmentFromListStyle(*(v13 + 16));
  }

  else
  {
    v15 = 1;
  }

  v24.receiver = self;
  v24.super_class = UICollectionViewCell;
  [(UICollectionReusableView *)&v24 _setLayoutAttributes:v4];
  [(UICollectionViewCell *)self _restoreCurrentDragAppearanceIfNeeded];
  [(UICollectionViewCell *)self _updateUserInterfaceRenderingModeUsingAttributes:v4];
  if (v12)
  {
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }

  v16 = [(UICollectionViewLayoutAttributes *)v4 _existingListAttributes];
  v17 = v16;
  if (v16)
  {
    [(UICollectionViewCell *)self _setUsesAnyPlainListStyle:(*(v16 + 16) < 5uLL) & (0x19u >> *(v16 + 16))];
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

  v21 = [(UICollectionViewCell *)self _effectiveMaskedCornersForSystemBackgroundView];
  v22 = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
  v23 = v22;
  if (v22 && [v22 __maskedCorners] != v21)
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

- (void)_updateUserInterfaceRenderingModeUsingAttributes:(id)a3
{
  v8 = a3;
  v4 = _UIMaterialPresentationsEnabled();
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = [(UICollectionViewLayoutAttributes *)v8 _existingListAttributes];
    if (!v6)
    {
      goto LABEL_6;
    }

    v7 = 0;
    if (!v8 || v6[2] != 2)
    {
      goto LABEL_8;
    }

    if (*(v8 + 288))
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

    v5 = v8;
  }
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIView *)self isUserInteractionEnabled];
  if (v5 != v3)
  {
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
  }

  v6.receiver = self;
  v6.super_class = UICollectionViewCell;
  [(UIView *)&v6 setUserInteractionEnabled:v3];
  if (v5 != [(UIView *)self isUserInteractionEnabled])
  {
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)_performCustomSelectionAction
{
  v2 = [(UICollectionViewCell *)self _effectivePopupMenuButton];
  if (v2)
  {
    v3 = v2;
    [v2 performPrimaryAction];
    v2 = v3;
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
        [v10 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:1926 description:{@"Popup menu button must be configured with a menu: %@", v13}];
      }

      if (![(UIControl *)v13 showsMenuAsPrimaryAction])
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:1927 description:{@"Popup menu button must have showsMenuAsPrimaryAction enabled: %@", v13}];
      }

      if (![(UIButton *)v13 changesSelectionAsPrimaryAction])
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:1928 description:{@"Popup menu button must have changesSelectionAsPrimaryAction enabled: %@", v13}];
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

- (void)_setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  if (a4)
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
    v9 = a3;
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
  v5 = [(UICollectionViewCell *)self _highlightDescendantsWhenSelected];
  collectionCellFlags = self->_collectionCellFlags;
  v7 = *&collectionCellFlags & 1;
  if (v3)
  {
    v7 = 1;
  }

  v8 = v7 != ((*&collectionCellFlags & 3) != 0);
  if (v5)
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

- (void)_performConfigurationStateModifications:(id)a3
{
  collectionCellFlags = self->_collectionCellFlags;
  self->_collectionCellFlags = (*&collectionCellFlags | 0x8000000);
  (*(a3 + 2))(a3, a2);
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

- (void)_setBackgroundViewConfiguration:(id)a3
{
  collectionCellFlags = self->_collectionCellFlags;
  v4 = (*&collectionCellFlags >> 17) & 1;
  if (a3)
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

- (void)_applyBackgroundViewConfiguration:(id)a3 withState:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  systemBackgroundView = self->_systemBackgroundView;
  v11 = systemBackgroundView != 0;
  if (v7)
  {
    if ((*(&self->_collectionCellFlags + 2) & 4) != 0 && !self->_backgroundViewConfigurationProvider)
    {
      if (!v8)
      {
        v33 = [(UICollectionViewCell *)self configurationState];
        v9 = [(UICollectionViewCell *)self _stateForUpdatingBackgroundConfigurationWithState:v33];
      }

      v36 = [v7 _updatedConfigurationForState:v9];
      if (!v36)
      {
        v34 = [MEMORY[0x1E696AAA8] currentHandler];
        [v34 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:2068 description:{@"Updated configuration was nil for configuration: %@", v7}];
      }

      v12 = v36;
    }

    else
    {
      v12 = v7;
    }

    v35 = v12;
    if (systemBackgroundView)
    {
      v13 = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
      v14 = [(UIView *)self tintColor];
      v11 = [v35 _backgroundFillIsEqual:v13 withTintColor:v14] ^ 1;
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
  if (v7)
  {
    if (![(UICollectionViewCell *)self _appliesLayoutAttributesMaskingToBackgroundConfiguration])
    {
      goto LABEL_19;
    }

    v15 = [(UICollectionReusableView *)self _layoutAttributes];
    v16 = v15;
    if (v15)
    {
      if ((*(v15 + 288) & 0x10) != 0)
      {
        v17 = [(UICollectionReusableView *)self _layoutAttributes];
        if (v17)
        {
          v18 = v17[39];

          if (v18 <= 0.0)
          {
            goto LABEL_19;
          }

          v19 = [(UICollectionReusableView *)self _layoutAttributes];
          v16 = v19;
          if (v19)
          {
            v20 = *(v19 + 312);
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
      v22 = [(_UIFloatingContentView *)self->_focusedFloatingContentView contentView];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = self;
      }

      v25 = v24;

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
    v30 = [(UICollectionReusableView *)self _collectionView];
    [v30 _cellBackgroundChangedForSelectionOrHighlight:self];
  }

  v31 = v7 | systemBackgroundView;
  v32 = [(UICollectionReusableView *)self _layoutAttributes];
  [(UICollectionReusableView *)self _updateMaskingUsingAttributes:v32];

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

- (void)_setAllowsStateUpdatesWhenEvaluatingBackgroundAppearance:(BOOL)a3
{
  if (a3)
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

- (void)_setBackgroundViewConfigurationProvider:(id)a3
{
  collectionCellFlags = self->_collectionCellFlags;
  v4 = HIWORD(*&collectionCellFlags) & 1;
  if (a3)
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
  if (self->_backgroundViewConfigurationProvider != a3)
  {
    if (a3)
    {
      self->_collectionCellFlags = (v6 & 0xFFFBFFFF);
    }

    v8 = a3;
    v9 = [v8 copy];
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

- (id)_stateForUpdatingBackgroundConfigurationWithState:(id)a3
{
  v4 = a3;
  if ([(UICollectionViewCell *)self _removesHighlightedAndSelectedStatesForBackground])
  {
    v5 = [v4 copy];

    [v5 setHighlighted:0];
    [v5 setSelected:0];
    v4 = v5;
  }

  return v4;
}

- (void)_updateBackgroundViewConfigurationForState:(id)a3
{
  v4 = [(UICollectionViewCell *)self _stateForUpdatingBackgroundConfigurationWithState:a3];
  backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
  if (backgroundViewConfigurationProvider)
  {
    v7 = v4;
    v6 = backgroundViewConfigurationProvider[2](backgroundViewConfigurationProvider, [(UICollectionViewCell *)self _viewConfigurationState]);
LABEL_3:
    [(UICollectionViewCell *)self _applyBackgroundViewConfiguration:v6 withState:v7];
LABEL_4:

    v4 = v7;
    goto LABEL_5;
  }

  if ((*(&self->_collectionCellFlags + 2) & 4) != 0)
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

- (void)_layoutFocusedFloatingContentView:(id)a3
{
  v4 = a3;
  [(UIView *)self bounds];
  [v4 setFrame:?];
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
    v10 = [(_UIFloatingContentView *)self->_focusedFloatingContentView contentView];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = self;
    }

    v13 = v12;

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
    v10 = [(_UIFloatingContentView *)self->_focusedFloatingContentView contentView];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = self;
    }

    v13 = v12;

    [(UIView *)v13 insertSubview:v6 atIndex:0];
  }
}

uint64_t __42__UICollectionViewCell_setBackgroundView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v2 = *(*(a1 + 32) + 504);

  return [v2 setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(UICollectionViewCell *)self _resetBackgroundViewConfiguration];
  }

  collectionCellFlags = self->_collectionCellFlags;
  v6 = (*&collectionCellFlags >> 13) & 1;
  if (v4)
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
  [(UIView *)&v8 setBackgroundColor:v4];
}

- (BOOL)_shouldSaveOpaqueStateForView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 && self->_backgroundView != v4 && self->_selectedBackgroundView != v4;

  return v5;
}

- (BOOL)_gestureRecognizerShouldBegin:(id)a3
{
  if (self->_menuGesture != a3)
  {
    return 1;
  }

  v4 = self;
  WeakRetained = objc_loadWeakRetained(&self->super._collectionView);
  LOBYTE(v4) = [WeakRetained _shouldShowMenuForCell:v4];

  return v4;
}

- (void)_handleMenuGesture:(id)a3
{
  if ([a3 state] == 1)
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
    v10 = [(UIView *)self superview];
    [(UIView *)self convertPoint:v10 fromView:v7, v9];
    v12 = v11;
    v14 = v13;

    v15 = [UIEditMenuConfiguration configurationWithIdentifier:0 sourcePoint:v12, v14];
    [v15 set_firstResponderTarget:self];
    [(UIEditMenuInteraction *)self->__editMenuInteraction presentEditMenuWithConfiguration:v15];
  }
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a5;
  if (self->__editMenuInteraction == a3)
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
    v8 = 0;
  }

  return v8;
}

- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4
{
  if (self->__editMenuInteraction == a3)
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

- (void)editMenuInteraction:(id)a3 willPresentMenuForConfiguration:(id)a4 animator:(id)a5
{
  if (self->__editMenuInteraction == a3)
  {
    [(UICollectionViewCell *)self _setSelected:1 animated:0, a5];
    *&self->_collectionCellFlags |= 0x100000u;
  }
}

- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->__editMenuInteraction == v8)
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
    v15 = v8;
    [v10 addCompletion:v14];
  }
}

void __85__UICollectionViewCell_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeInteraction:*(a1 + 32)];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (!dyld_program_sdk_at_least())
  {
    WeakRetained = objc_loadWeakRetained(&self->super._collectionView);
    if (![WeakRetained _canPerformAction:a3 forCell:self sender:v6])
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
    WeakRetained = objc_loadWeakRetained(&self->super._collectionView);
    v10 = [WeakRetained _canPerformAction:a3 forCell:self sender:v6];
    goto LABEL_13;
  }

  v13.receiver = self;
  v13.super_class = UICollectionViewCell;
  v11 = [(UIView *)&v13 canPerformAction:a3 withSender:v6];
LABEL_16:

  return v11 & 1;
}

- (void)_performAction:(SEL)a3 sender:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->super._collectionView);
  [WeakRetained _performAction:a3 forCell:self sender:v6];
}

- (void)_setSelectionSegueTemplate:(id)a3
{
  v5 = a3;
  if (self->_selectionSegueTemplate != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_selectionSegueTemplate, a3);
    v5 = v6;
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = UICollectionViewCell;
  [(UIView *)&v4 traitCollectionDidChange:a3];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = UICollectionViewCell;
  [(UIView *)&v5 setSemanticContentAttribute:?];
  [(UIView *)self->_contentView setSemanticContentAttribute:a3];
}

- (BOOL)_forwardsSystemLayoutFittingSizeToContentView:(id)a3
{
  v4 = a3;
  if (((*(&self->_collectionCellFlags + 2) & 0x40) != 0 || (dyld_program_sdk_at_least() & 1) == 0) && (contentView = self->_contentView, contentView == v4))
  {
    IsGuardingForEngine = [(UIView *)contentView _wantsAutolayoutOrIsGuardingForEngineHosting];
  }

  else
  {
    IsGuardingForEngine = 0;
  }

  return IsGuardingForEngine;
}

- (CGSize)_contentTargetSizeForTargetSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5 forUseWithSizeThatFits:(BOOL)a6
{
  height = a3.height;
  width = a3.width;
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
    if (a4 >= 1000.0)
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
        v34 = self;
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "The cell's content view insets (left: %g, right: %g) exceed the cell's target width of %g with required fitting priority. Cell: %@", buf, 0x2Au);
      }
    }
  }

  if (v18 < 0.0)
  {
    v18 = 0.0;
    if (a5 >= 1000.0)
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
        v34 = self;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "The cell's content view insets (top: %g, bottom: %g) exceed the cell's target height of %g with required fitting priority. Cell: %@", buf, 0x2Au);
      }
    }
  }

  v23 = 1.79769313e308;
  if (a5 < 1000.0 && a6)
  {
    v24 = 1.79769313e308;
  }

  else
  {
    v24 = v18;
  }

  if (a4 >= 1000.0 || !a6)
  {
    v23 = v17;
  }

  result.height = v24;
  result.width = v23;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
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
      v29 = 1;
    }

    else
    {
      v29 = [objc_opt_class() requiresConstraintBasedLayout];
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
      if (!v29)
      {
        goto LABEL_47;
      }
    }

    else if (!v29 || [(UIView *)self->_contentView translatesAutoresizingMaskIntoConstraints]&& (![(UIView *)self needsUpdateConstraints]|| dyld_program_sdk_at_least() && [(UIView *)self->_contentView _hostsLayoutEngine]))
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      v34 = [(UIView *)self->_contentView translatesAutoresizingMaskIntoConstraints];
      if (has_internal_diagnostics)
      {
        if (!v34)
        {
          v57 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v65 = self;
            _os_log_fault_impl(&dword_188A29000, v57, OS_LOG_TYPE_FAULT, "contentView of collectionViewCell has translatesAutoresizingMaskIntoConstraints false and is missing constraints to the cell, which will cause substandard performance in cell autosizing. Please leave the contentView's translatesAutoresizingMaskIntoConstraints true or else provide constraints between the contentView and the cell. %@", buf, 0xCu);
          }
        }
      }

      else if (!v34)
      {
        v58 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED496500) + 8);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v65 = self;
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
          *&v36 = a4;
          *&v37 = a5;
          [(UICollectionViewCell *)self _contentTargetSizeForTargetSize:0 withHorizontalFittingPriority:width verticalFittingPriority:height forUseWithSizeThatFits:v36, v37];
          if (v39 == 0.0 && a5 == 50.0)
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

      if (a5 == 50.0 && height == 0.0)
      {
        v49 = buf;
      }

      else
      {
        v49 = 0;
      }

      *&v36 = a4;
      *&v37 = a5;
      [(UIView *)v28 _systemLayoutSizeFittingSize:v49 withHorizontalFittingPriority:v38 verticalFittingPriority:height hasIntentionallyCollapsedHeight:v36, v37];
      v24 = v50;
      v25 = v51;
      goto LABEL_63;
    }

LABEL_47:
    v61.receiver = self;
    v61.super_class = UICollectionViewCell;
    *&v30 = a4;
    *&v31 = a5;
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
  if (a4 != 1000.0 && v20 > 2777777.0 || a5 != 1000.0 && v22 > 2777777.0)
  {
    v54 = [MEMORY[0x1E696AAA8] currentHandler];
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIContentViewAssertValidFittingSize(UIView * _Nonnull __strong, CGSize, UILayoutPriority, UILayoutPriority)"}];
    v67.width = v20;
    v67.height = v22;
    v56 = NSStringFromCGSize(v67);
    [v54 handleFailureInFunction:v55 file:@"_UIContentViewShared.h" lineNumber:73 description:{@"Content view returned an invalid size %@ from -systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority: which is not allowed. If you have implemented a custom content view, you need to add constraints inside it so that its size is not ambiguous, or you need to manually compute and return a valid size. Content view: %@", v56, v23}];
  }

  if (a4 >= 1000.0)
  {
    v24 = v59;
  }

  else
  {
    v24 = v20 - (-v16 - v13);
  }

  if (a5 >= 1000.0)
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  v6.receiver = self;
  v6.super_class = UICollectionViewCell;
  v4 = a3;
  [(UIView *)&v6 _intrinsicContentSizeInvalidatedForChildView:v4];
  contentView = self->_contentView;

  if (contentView == v4)
  {
    [(UICollectionReusableView *)self invalidateIntrinsicContentSize:v6.receiver];
  }
}

- (void)setEditing:(BOOL)a3
{
  if (((((*&self->_collectionCellFlags & 4) == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
    if (v3)
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

- (void)_configureFocusedFloatingContentView:(id)a3
{
  v3 = a3;
  [v3 setBackgroundColor:0 forState:0];
  [v3 setBackgroundColor:0 forState:8];
  [v3 setBackgroundColor:0 forState:1];
  [v3 setBackgroundColor:0 forState:4];
  [v3 setFocusedSizeIncrease:70.0];
  [v3 setContentMotionRotation:0.2 translation:{0.2, 12.0, 12.0}];
}

- (void)_updateFocusedFloatingContentControlStateInContext:(id)a3 withAnimationCoordinator:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v15 = a3;
  v8 = a4;
  if ([(UICollectionViewCell *)self _canFocusProgrammatically])
  {
    [(UICollectionViewCell *)self _ensureFocusedFloatingContentView];
  }

  if (self->_focusedFloatingContentView)
  {
    if (v15)
    {
      v9 = [v15 nextFocusedView];
      v10 = v9 == self;
    }

    else
    {
      v10 = [(UICollectionViewCell *)self isFocused];
    }

    if (v10)
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

    v12 = [(UICollectionViewCell *)self isHighlighted];
    focusedFloatingContentView = self->_focusedFloatingContentView;
    v14 = v11 | v12;
    if (v8)
    {
      [(_UIFloatingContentView *)focusedFloatingContentView setControlState:v14 withAnimationCoordinator:v8];
    }

    else
    {
      [(_UIFloatingContentView *)focusedFloatingContentView setControlState:v14 animated:v5];
    }
  }
}

- (void)_willUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UICollectionViewCell;
  [(UIView *)&v8 _willUpdateFocusInContext:v4];
  v5 = [v4 previouslyFocusedView];
  v6 = v5;
  if (v5 == self)
  {

LABEL_5:
    [(UICollectionViewCell *)self _prepareForConfigurationStateUpdate];
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
  v5 = a3;
  v6 = [v5 nextFocusedView];

  if (v6 == self)
  {
    [(UICollectionViewCell *)self _ensureFocusedFloatingContentView];
    if (self->_focusedFloatingContentView)
    {
      v7 = [(UIView *)self superview];
      [v7 bringSubviewToFront:self];
    }
  }

  v8 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:v5];
  if (!v8)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UICollectionViewCell.m" lineNumber:3274 description:@"Received call to _didUpdateFocusInContext: outside of a focus update."];
  }

  [(UICollectionViewCell *)self _updateFocusedFloatingContentControlStateInContext:v5 withAnimationCoordinator:v8 animated:1];
  v9 = [v5 previouslyFocusedView];
  v10 = v9;
  if (v9 == self)
  {
  }

  else
  {
    v11 = [v5 nextFocusedView];

    if (v11 != self)
    {
      goto LABEL_11;
    }
  }

  [(UICollectionViewCell *)self setNeedsUpdateConfiguration];
LABEL_11:
  v12 = [v5 previouslyFocusedView];

  if (v12 == self)
  {
    v13 = [(UICollectionReusableView *)self _collectionView];
    [v13 _cellDidBecomeUnfocused:self];
  }

  v14 = [v5 nextFocusedView];

  if (v14 == self)
  {
    v15 = [(UICollectionReusableView *)self _collectionView];
    [v15 _cellDidBecomeFocused:self];
  }

  v17.receiver = self;
  v17.super_class = UICollectionViewCell;
  [(UIView *)&v17 _didUpdateFocusInContext:v5];
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

- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4
{
  v6 = a4;
  [(UICollectionViewCell *)self _ensureFocusedFloatingContentView];
  focusedFloatingContentView = self->_focusedFloatingContentView;
  if (focusedFloatingContentView)
  {
    v8 = [(_UIFloatingContentView *)focusedFloatingContentView _preferredConfigurationForFocusAnimation:a3 inContext:v6];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UICollectionViewCell;
    v8 = [(UIView *)&v11 _preferredConfigurationForFocusAnimation:a3 inContext:v6];
  }

  v9 = v8;

  return v9;
}

- (BOOL)_allowsHorizontalFocusMovement
{
  v2 = [(UICollectionReusableView *)self _layoutAttributes];
  v3 = [(UICollectionViewLayoutAttributes *)v2 _existingListAttributes];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)_shouldForwardMovementToFocusEngine:(int64_t)a3
{
  v5 = [(UICollectionViewCell *)self _allowsHorizontalFocusMovement];
  if (a3 != 1 || v5)
  {
    v7.receiver = self;
    v7.super_class = UICollectionViewCell;
    LOBYTE(v5) = [(UIResponder *)&v7 _shouldForwardMovementToFocusEngine:a3];
  }

  return v5;
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
  v4 = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
  if (([v4 isTintBackgroundColor] & 1) == 0)
  {
    v5 = [(UIView *)self traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (v6 > 5 || ((1 << v6) & 0x23) == 0 || ![(UICollectionViewCell *)self _backgroundFillIsCustomized])
    {

LABEL_10:
      v7 = [(UICollectionReusableView *)self _collectionView];
      v8 = [v7 _effectiveDefaultAllowsFocus];

      v9 = off_1E70E9948;
      if (!v8)
      {
        v9 = off_1E70EB810;
      }

      v10 = *v9;
      v4 = [(UICollectionViewCell *)self _defaultFocusOutline];
      v3 = [(__objc2_class *)v10 effectWithPath:v4];
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
  v3 = [(UICollectionReusableView *)self _collectionView];
  v4 = [v3 _cellFocusItemDeferral:self];

  return v4;
}

@end