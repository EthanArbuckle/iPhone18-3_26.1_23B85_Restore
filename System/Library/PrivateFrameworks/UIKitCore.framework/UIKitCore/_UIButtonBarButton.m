@interface _UIButtonBarButton
+ (BOOL)shouldUseMonochromeTreatmentWithCustomTintColor;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)pointMostlyInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)updatePresentedMenuFrom:(id)a3;
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (CGRect)_buttonBarHitRect;
- (CGRect)accessoryViewAlignmentRect;
- (CGSize)backButtonSystemLayoutSizeFittingSize:(CGSize)a3 horizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (CGSize)backgroundSize;
- (CGSize)imageViewSize;
- (CGSize)intrinsicContentSize;
- (NSLayoutConstraint)heightMinimizingConstraint;
- (NSLayoutConstraint)widthMinimizingConstraint;
- (NSString)description;
- (UIEdgeInsets)alignmentRectInsets;
- (_UIButtonBarButton)init;
- (_UIButtonBarButton)initWithCoder:(id)a3;
- (_UIButtonBarButton)initWithFrame:(CGRect)a3;
- (_UIButtonBarButton)initWithVisualProvider:(id)a3;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)_preferredSender;
- (id)_targetedPreviewForInteraction:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_accessibilitySettingsChanged:(id)a3;
- (void)_applyDeferredSymbolEffects;
- (void)_configureFromBarItem:(id)a3 appearanceDelegate:(id)a4 isBackButton:(BOOL)a5 useBreadcrumbStyle:(BOOL)a6;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)_is_setNeedsLayout;
- (void)_selectionInteractionDidBeginHinting:(id)a3;
- (void)_selectionInteractionDidCancelHinting:(id)a3;
- (void)_selectionInteractionDidSelect:(id)a3;
- (void)_setHasActiveMenuPresentation:(BOOL)a3;
- (void)_setTouchHasHighlighted:(BOOL)a3;
- (void)addSymbolEffect:(id)a3 options:(id)a4 animated:(BOOL)a5;
- (void)applyContentTransition:(id)a3 options:(id)a4;
- (void)configureBackButtonFromBarItem:(id)a3 withAppearanceDelegate:(id)a4;
- (void)configureBreadcrumbBackButtonFromBarItem:(id)a3 withAppearanceDelegate:(id)a4;
- (void)configureFromBarItem:(id)a3 withAppearanceDelegate:(id)a4;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)removeAllSymbolEffectsWithOptions:(id)a3 animated:(BOOL)a4;
- (void)removeSymbolEffectOfType:(id)a3 options:(id)a4 animated:(BOOL)a5;
- (void)setAppearanceData:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setNeedsAppearanceUpdate;
- (void)setSelected:(BOOL)a3;
- (void)setShouldUseButtonPlatters:(BOOL)a3;
- (void)setSpringLoaded:(BOOL)a3;
- (void)willMoveToSuperview:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIButtonBarButton

- (void)_applyDeferredSymbolEffects
{
  v3 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider symbolImageView];
  v4 = v3;
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49___UIButtonBarButton__applyDeferredSymbolEffects__block_invoke;
    aBlock[3] = &unk_1E70F7368;
    v8 = v3;
    v5 = _Block_copy(aBlock);
  }

  else
  {
    v5 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_visualProvider->_barButtonItem);
  [WeakRetained _applyDeferredSymbolEffects:v5];
}

- (void)setNeedsAppearanceUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_visualProvider->_barButtonItem);

  if (WeakRetained)
  {
    [(_UIButtonBarButtonVisualProvider *)self->_visualProvider updateButton:self appearance:self->_appearanceData];
    [(UIView *)self setNeedsLayout];
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {

      [(UIView *)self layoutIfNeeded];
    }
  }
}

+ (BOOL)shouldUseMonochromeTreatmentWithCustomTintColor
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v2 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v5 = _UIInternalPreference_UseMonochromeTreatmentWithCustomTintColor, _UIInternalPreferencesRevisionVar == _UIInternalPreference_UseMonochromeTreatmentWithCustomTintColor))
  {
    v3 = 0;
  }

  else
  {
    do
    {
      v3 = v2 < v5;
      if (v2 < v5)
      {
        break;
      }

      _UIInternalPreferenceSync(v2, &_UIInternalPreference_UseMonochromeTreatmentWithCustomTintColor, @"UseMonochromeTreatmentWithCustomTintColor", _UIInternalPreferenceUpdateBool);
      v5 = _UIInternalPreference_UseMonochromeTreatmentWithCustomTintColor;
    }

    while (v2 != _UIInternalPreference_UseMonochromeTreatmentWithCustomTintColor);
  }

  return byte_1EA95E14C && v3;
}

- (CGSize)intrinsicContentSize
{
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonIntrinsicContentSize:self];
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSLayoutConstraint)widthMinimizingConstraint
{
  widthMinimizingConstraint = self->_widthMinimizingConstraint;
  if (!widthMinimizingConstraint)
  {
    v4 = [(UIView *)self widthAnchor];
    v5 = [v4 constraintEqualToConstant:0.0];
    v6 = self->_widthMinimizingConstraint;
    self->_widthMinimizingConstraint = v5;

    [(NSLayoutConstraint *)self->_widthMinimizingConstraint setIdentifier:@"_UIButtonBarButton.widthMinimizingConstraint"];
    LODWORD(v7) = 1132068864;
    [(NSLayoutConstraint *)self->_widthMinimizingConstraint setPriority:v7];
    widthMinimizingConstraint = self->_widthMinimizingConstraint;
  }

  return widthMinimizingConstraint;
}

- (void)_is_setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = _UIButtonBarButton;
  [(UIView *)&v3 _is_setNeedsLayout];
  self->_autolayoutIsCleanForBoundsChange = 0;
}

- (UIEdgeInsets)alignmentRectInsets
{
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonAlignmentRectInsets:self];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)layoutSubviews
{
  v3 = +[UIView areAnimationsEnabled];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [UIView setAnimationsEnabled:0];
  }

  if (!self->_hasPerformedPostConfigurationLayout)
  {
    if (_UISolariumEnabled())
    {
      [UIView setAnimationsEnabled:0];
    }

    self->_hasPerformedPostConfigurationLayout = 1;
  }

  visualProvider = self->_visualProvider;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36___UIButtonBarButton_layoutSubviews__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [(_UIButtonBarButtonVisualProvider *)visualProvider buttonLayoutSubviews:self baseImplementation:v5];
  [UIView setAnimationsEnabled:v3];
}

- (void)dealloc
{
  self->_visualProvider->_button = 0;
  objc_storeWeak(&self->_visualProvider->_barButtonItem, 0);
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIButtonBarButton;
  [(UIView *)&v4 dealloc];
}

- (_UIButtonBarButton)initWithVisualProvider:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIButtonBarButton;
  v5 = [(UIControl *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = [v4 copy];
    visualProvider = v5->_visualProvider;
    v5->_visualProvider = v6;

    v5->_visualProvider->_button = v5;
    v8 = objc_opt_new();
    [v8 setDelegate:v5];
    [(UIView *)v5 addInteraction:v8];
    [(_UIButtonBarButton *)v5 set_selectionInteraction:v8];
    [(UIControl *)v5 setShowsMenuFromSource:1];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v5 selector:sel__accessibilitySettingsChanged_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];
  }

  return v5;
}

- (_UIButtonBarButton)init
{
  [(UIResponder *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_UIButtonBarButton)initWithFrame:(CGRect)a3
{
  [(UIResponder *)self doesNotRecognizeSelector:a2, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  return 0;
}

- (_UIButtonBarButton)initWithCoder:(id)a3
{
  [(UIResponder *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setSelected:(BOOL)a3
{
  v4 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonSelectionState:self forRequestedState:a3];
  v5.receiver = self;
  v5.super_class = _UIButtonBarButton;
  [(UIControl *)&v5 setSelected:v4];
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider updateButton:self forSelectedState:[(UIControl *)self isSelected]];
}

- (void)setEnabled:(BOOL)a3
{
  v4 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonEnabledState:self forRequestedState:a3];
  v5.receiver = self;
  v5.super_class = _UIButtonBarButton;
  [(UIControl *)&v5 setEnabled:v4];
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider updateButton:self forEnabledState:[(UIControl *)self isEnabled]];
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonHighlitedState:self forRequestedState:a3];
  v5.receiver = self;
  v5.super_class = _UIButtonBarButton;
  [(UIControl *)&v5 setHighlighted:v4];
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider updateButton:self forHighlightedState:[(UIControl *)self isHighlighted]];
}

- (void)_setHasActiveMenuPresentation:(BOOL)a3
{
  v4 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonHeldState:self forRequestedState:a3];
  v5.receiver = self;
  v5.super_class = _UIButtonBarButton;
  [(UIControl *)&v5 _setHasActiveMenuPresentation:v4];
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider updateButton:self forHeldState:[(UIControl *)self _hasActiveMenuPresentation]];
}

- (void)_setTouchHasHighlighted:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _UIButtonBarButton;
  [(UIControl *)&v5 _setTouchHasHighlighted:?];
  if (!a3)
  {
    [(_UIButtonBarButtonVisualProvider *)self->_visualProvider resetButtonHasHighlighted];
  }
}

- (void)configureFromBarItem:(id)a3 withAppearanceDelegate:(id)a4
{
  visualProvider = self->_visualProvider;
  v7 = a4;
  v8 = a3;
  objc_storeWeak(&visualProvider->_barButtonItem, v8);
  [(_UIButtonBarButton *)self _configureFromBarItem:v8 appearanceDelegate:v7 isBackButton:0 useBreadcrumbStyle:0];
}

- (void)configureBackButtonFromBarItem:(id)a3 withAppearanceDelegate:(id)a4
{
  visualProvider = self->_visualProvider;
  v8 = a4;
  obj = a3;
  if (![(_UIButtonBarButtonVisualProvider *)visualProvider supportsBackButtons])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIButtonBarButton.m" lineNumber:521 description:{@"Attempt to create a back-button styled bar button from a visual style that does not support back buttons (button=%p, visual style=%@)", self, self->_visualProvider}];
  }

  objc_storeWeak(&self->_visualProvider->_barButtonItem, obj);
  [(_UIButtonBarButton *)self _configureFromBarItem:obj appearanceDelegate:v8 isBackButton:1 useBreadcrumbStyle:0];
}

- (void)configureBreadcrumbBackButtonFromBarItem:(id)a3 withAppearanceDelegate:(id)a4
{
  visualProvider = self->_visualProvider;
  v8 = a4;
  obj = a3;
  if (![(_UIButtonBarButtonVisualProvider *)visualProvider supportsBackButtons])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIButtonBarButton.m" lineNumber:528 description:{@"Attempt to create a back-button styled bar button from a visual style that does not support back buttons (button=%p, visual style=%@)", self, self->_visualProvider}];
  }

  objc_storeWeak(&self->_visualProvider->_barButtonItem, obj);
  [(_UIButtonBarButton *)self _configureFromBarItem:obj appearanceDelegate:v8 isBackButton:1 useBreadcrumbStyle:1];
}

- (CGRect)accessoryViewAlignmentRect
{
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider accessoryViewAlignmentRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setAppearanceData:(id)a3
{
  v5 = a3;
  v6 = self->_appearanceData;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(_UIBarAppearanceData *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_appearanceData, a3);
    [(_UIButtonBarButton *)self setNeedsAppearanceUpdate];
  }

LABEL_9:
}

- (NSLayoutConstraint)heightMinimizingConstraint
{
  heightMinimizingConstraint = self->_heightMinimizingConstraint;
  if (!heightMinimizingConstraint)
  {
    v4 = [(UIView *)self heightAnchor];
    v5 = [v4 constraintEqualToConstant:0.0];
    v6 = self->_heightMinimizingConstraint;
    self->_heightMinimizingConstraint = v5;

    [(NSLayoutConstraint *)self->_heightMinimizingConstraint setIdentifier:@"_UIButtonBarButton.heightMinimizingConstraint"];
    LODWORD(v7) = 1132068864;
    [(NSLayoutConstraint *)self->_heightMinimizingConstraint setPriority:v7];
    heightMinimizingConstraint = self->_heightMinimizingConstraint;
  }

  return heightMinimizingConstraint;
}

- (void)_configureFromBarItem:(id)a3 appearanceDelegate:(id)a4 isBackButton:(BOOL)a5 useBreadcrumbStyle:(BOOL)a6
{
  v16 = a3;
  v10 = a4;
  self->_hasPerformedPostConfigurationLayout = 0;
  self->_backButton = a5;
  self->_breadcrumb = a5 && a6;
  if ([v16 isSystemItem])
  {
    v11 = [v16 systemItem];
    v13 = v11 == 1 || v11 == 24;
    self->_acceptsInauthenticTouches = v13;
  }

  else
  {
    self->_acceptsInauthenticTouches = 0;
  }

  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider configureButton:self withAppearanceDelegate:v10 fromBarItem:v16];
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider updateButton:self toUseButtonShapes:_AXSButtonShapesEnabled() != 0];
  -[_UIButtonBarButton setEnabled:](self, "setEnabled:", [v16 isEnabled]);
  -[_UIButtonBarButton setSelected:](self, "setSelected:", [v16 isSelected]);
  if ([v16 action] == sel_assistantPaste_forEvent_)
  {
    [(UIControl *)self addTarget:self action:sel_pasteTouchDown forControlEvents:1];
    v14 = [MEMORY[0x1E695DF00] now];
    appearanceDate = self->_appearanceDate;
    self->_appearanceDate = v14;
  }

  [(_UIButtonBarButton *)self _applyDeferredSymbolEffects];
}

- (CGSize)backgroundSize
{
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonBackgroundSize:self];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)imageViewSize
{
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonImageViewSize:self];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setShouldUseButtonPlatters:(BOOL)a3
{
  if (self->_shouldUseButtonPlatters != a3)
  {
    self->_shouldUseButtonPlatters = a3;
    v6 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider contentView];
    if ([v6 conformsToProtocol:&unk_1EFE79E90])
    {
      v4 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider contentView];
      v5 = objc_opt_respondsToSelector();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider contentView];
      [v6 setShouldUseButtonPlatters:self->_shouldUseButtonPlatters];
    }
  }
}

- (void)setSpringLoaded:(BOOL)a3
{
  v3 = a3;
  v5 = self->_visualProvider;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38___UIButtonBarButton_setSpringLoaded___block_invoke;
  v7[3] = &unk_1E70F7320;
  v8 = v5;
  v6 = v5;
  [(UIView *)self _setSpringLoaded:v3 interactionInitializer:v7];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonContextMenuInteractionConfiguration:a3];
  [v5 setPreferredMenuElementOrder:{-[_UIButtonBarButton preferredMenuElementOrder](self, "preferredMenuElementOrder")}];
  if (dyld_program_sdk_at_least())
  {
    v6 = [(UIView *)self nextResponder];
    v7 = _UITreeFindFirstAncestorMatchingCondition(v6, sel_nextResponder, &__block_literal_global_191);

    v8 = [v7 topViewController];
    [v5 setFirstResponderTarget:v8];
  }

  return v5;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v5 = [(UIView *)self window:a3];

  if (v5)
  {
    v6 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonContextMenuTargetedPreview];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4
{
  v5 = [(UIView *)self window:a3];

  if (v5)
  {
    v6 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonContextMenuTargetedPreview];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  visualProvider = self->_visualProvider;
  v8.receiver = self;
  v8.super_class = _UIButtonBarButton;
  v5 = [(UIControl *)&v8 _contextMenuInteraction:a3 styleForMenuWithConfiguration:a4];
  v6 = [(_UIButtonBarButtonVisualProvider *)visualProvider buttonContextMenuStyleFromDefaultStyle:v5];

  return v6;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider menuAnchorPoint];
  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)updatePresentedMenuFrom:(id)a3
{
  v4 = a3;
  v5 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider canUpdateMenuInPlace];
  if (v5)
  {
    v6 = [(UIControl *)self contextMenuInteraction];
    WeakRetained = objc_loadWeakRetained(&self->_visualProvider->_barButtonItem);
    v8 = [WeakRetained menu];
    _UIControlMenuUpdateVisibleMenu(v6, v4, v8);

    [(_UIButtonBarButtonVisualProvider *)self->_visualProvider updateMenu];
  }

  return v5;
}

- (void)addSymbolEffect:(id)a3 options:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  v9 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider symbolImageView];
  v10 = v9;
  if (v9)
  {
    [v9 addSymbolEffect:v11 options:v8 animated:v5];
  }
}

- (void)removeSymbolEffectOfType:(id)a3 options:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  v9 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider symbolImageView];
  v10 = v9;
  if (v9)
  {
    [v9 removeSymbolEffectOfType:v11 options:v8 animated:v5];
  }
}

- (void)removeAllSymbolEffectsWithOptions:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider symbolImageView];
  v7 = v6;
  if (v6)
  {
    [v6 removeAllSymbolEffectsWithOptions:v8 animated:v4];
  }
}

- (void)applyContentTransition:(id)a3 options:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider symbolImageView];
  visualProvider = self->_visualProvider;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&visualProvider->_barButtonItem);
    v10 = [WeakRetained image];
    [v7 setSymbolImage:v10 withContentTransition:v11 options:v6];

    [(_UIButtonBarButtonVisualProvider *)self->_visualProvider updateImage];
  }

  else
  {
    [(_UIButtonBarButtonVisualProvider *)visualProvider reload];
  }
}

- (id)_preferredSender
{
  WeakRetained = objc_loadWeakRetained(&self->_visualProvider->_barButtonItem);

  return WeakRetained;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  [(_UIButtonBarButton *)self _buttonBarHitRect];
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  if (isKindOfClass)
  {
    [v6 createRegionFromRect:self targetView:@"com.apple.UIKit._UIButtonBarButton" identifier:-[UIControl isSelected](self selected:{"isSelected"), v8, v9, v10, v11}];
  }

  else
  {
    v16 = [v6 view];
    [(UIView *)self convertRect:v16 toView:v12, v13, v14, v15];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [UIPointerRegion regionWithRect:0 identifier:v18, v20, v22, v24];
  }
  v25 = ;

  return v25;
}

- (id)_targetedPreviewForInteraction:(id)a3
{
  v4 = a3;
  v5 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider pointerPreviewParameters];
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider pointerPreviewCenter];
  v7 = v6;
  v9 = v8;
  v10 = [(UIView *)self superview];
  [(UIView *)self convertPoint:v10 toView:v7, v9];
  v12 = v11;
  v14 = v13;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v4 createPreviewTargetForView:self center:{v12, v14}];
  }

  else
  {
    v16 = [UIPreviewTarget alloc];
    v17 = [(UIView *)self superview];
    v15 = [(UIPreviewTarget *)v16 initWithContainer:v17 center:v12, v14];
  }

  v18 = [[UITargetedPreview alloc] initWithView:self parameters:v5 target:v15];

  return v18;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [(_UIButtonBarButton *)self _targetedPreviewForInteraction:a3, a4];
  visualProvider = self->_visualProvider;
  v7 = [v5 target];
  v8 = [v7 container];
  v9 = [(_UIButtonBarButtonVisualProvider *)visualProvider pointerShapeInContainer:v8];

  if ([(_UIButtonBarButtonVisualProvider *)self->_visualProvider shouldLift])
  {
    v10 = +[UIColor clearColor];
    v11 = [v5 parameters];
    [v11 setBackgroundColor:v10];

    v12 = off_1E70EA410;
  }

  else
  {
    v12 = off_1E70EA3F8;
  }

  v13 = [(__objc2_class *)*v12 effectWithPreview:v5];
  v14 = [UIPointerStyle styleWithEffect:v13 shape:v9];
  if ([(_UIButtonBarButtonVisualProvider *)self->_visualProvider shouldSuppressPointerSpecularFilter])
  {
    [v14 setOptions:{objc_msgSend(v14, "options") | 0x1000}];
  }

  return v14;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = _UIButtonBarButton;
  [(UIView *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonDidUpdateBoundsSize];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(UIView *)self _willForceLayoutForBoundsChangeToNewBounds:a3.origin.y, a3.size.width, a3.size.height]&& (*(&self->super.super._viewFlags + 7) & 1) != 0)
  {
    v8 = 1;
    self->_autolayoutIsCleanForBoundsChange = 1;
  }

  else
  {
    v8 = 0;
  }

  [(UIView *)self bounds];
  v10 = v9;
  v12 = v11;
  v15.receiver = self;
  v15.super_class = _UIButtonBarButton;
  [(UIView *)&v15 setBounds:x, y, width, height];
  if (v10 != width || v12 != height)
  {
    [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonDidUpdateBoundsSize];
  }

  if (v8)
  {
    if (!self->_autolayoutIsCleanForBoundsChange)
    {
      v14.receiver = self;
      v14.super_class = _UIButtonBarButton;
      [(UIView *)&v14 _is_setNeedsLayout];
      [(UIView *)self layoutIfNeeded];
      self->_autolayoutIsCleanForBoundsChange = 1;
    }
  }
}

- (void)willMoveToSuperview:(id)a3
{
  visualProvider = self->_visualProvider;
  v5 = a3;
  [(_UIButtonBarButtonVisualProvider *)visualProvider buttonWillMoveToSuperview:v5];
  v6.receiver = self;
  v6.super_class = _UIButtonBarButton;
  [(UIView *)&v6 willMoveToSuperview:v5];
}

- (void)willMoveToWindow:(id)a3
{
  visualProvider = self->_visualProvider;
  v5 = a3;
  [(_UIButtonBarButtonVisualProvider *)visualProvider buttonWillMoveToWindow:v5];
  v6.receiver = self;
  v6.super_class = _UIButtonBarButton;
  [(UIView *)&v6 willMoveToWindow:v5];
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIButtonBarButton;
  [(UIView *)&v4 _intrinsicContentSizeInvalidatedForChildView:a3];
  if ([(_UIButtonBarButton *)self _allowsFittingSizeCachingWithNilLayoutEngine])
  {
    [(_UIButtonBarButton *)self _invalidateSystemLayoutSizeFittingSize];
  }
}

- (CGRect)_buttonBarHitRect
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self hitTestInsets];
  v12 = v6 + v11;
  v15 = v8 - (v13 + v14);
  v17 = v10 - (v11 + v16);
  v18 = v4 + v13;
  v19 = v12;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (BOOL)pointMostlyInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(_UIButtonBarButton *)self _buttonBarHitRect];
  v11 = CGRectInset(v10, -15.0, -15.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (void)_accessibilitySettingsChanged:(id)a3
{
  visualProvider = self->_visualProvider;
  v5 = _AXSButtonShapesEnabled() != 0;

  [(_UIButtonBarButtonVisualProvider *)visualProvider updateButton:self toUseButtonShapes:v5];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = v5 == self || ![v4 _isGestureType:0] || objc_msgSend(v4, "numberOfTouchesRequired") != 1 || objc_msgSend(v4, "numberOfTapsRequired") != 1;

  return v6;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _UIButtonBarButton;
  [(UIView *)&v12 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedView];
  v8 = v7;
  if (v7 == self)
  {

LABEL_5:
    visualProvider = self->_visualProvider;
    v11 = [v6 nextFocusedView];
    [(_UIButtonBarButtonVisualProvider *)visualProvider updateButton:self forFocusedState:v11 == self];

    goto LABEL_6;
  }

  v9 = [v6 previouslyFocusedView];

  if (v9 == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_selectionInteractionDidBeginHinting:(id)a3
{
  v5 = self;
  v3 = [(UIView *)v5 _focusBehavior];
  v4 = [v3 buttonSelectionMode];

  if ((v4 & 2) != 0 && [(UIControl *)v5 isEnabled])
  {
    [(_UIButtonBarButton *)v5 setHighlighted:1];
  }
}

- (void)_selectionInteractionDidCancelHinting:(id)a3
{
  v5 = self;
  v3 = [(UIView *)v5 _focusBehavior];
  v4 = [v3 buttonSelectionMode];

  if ((v4 & 2) != 0 && [(UIControl *)v5 isHighlighted])
  {
    [(_UIButtonBarButton *)v5 setHighlighted:0];
    [(_UIButtonBarButton *)v5 _setTouchHasHighlighted:0];
  }
}

- (void)_selectionInteractionDidSelect:(id)a3
{
  v3 = self;
  v4 = [(UIView *)v3 _focusBehavior];
  v5 = [v4 buttonSelectionMode];

  if ((v5 & 2) != 0 && [(UIControl *)v3 isHighlighted])
  {
    [(_UIButtonBarButton *)v3 setHighlighted:0];
    [(_UIButtonBarButton *)v3 _setTouchHasHighlighted:0];
  }

  v6 = [(UIView *)v3 _focusBehavior];
  v7 = [v6 buttonSelectionMode];

  if (v7)
  {
    [(UIControl *)v3 sendActionsForControlEvents:1];
    v8 = 64;
  }

  else
  {
    v8 = 0x2000;
  }

  [(UIControl *)v3 sendActionsForControlEvents:v8];
}

- (CGSize)backButtonSystemLayoutSizeFittingSize:(CGSize)a3 horizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider backButtonSystemLayoutSizeFittingSize:a3.width horizontalFittingPriority:a3.height verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (NSString)description
{
  visualProvider = self->_visualProvider;
  if (visualProvider)
  {
    WeakRetained = objc_loadWeakRetained(&visualProvider->_barButtonItem);
  }

  else
  {
    WeakRetained = 0;
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  [(UIView *)self frame];
  v7 = NSStringFromCGRect(v11);
  v8 = [v5 stringWithFormat:@"<%@ %p frame: %@; barButtonItem: %@>", v6, self, v7, WeakRetained];;

  return v8;
}

@end