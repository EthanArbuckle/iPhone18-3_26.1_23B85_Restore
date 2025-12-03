@interface _UIButtonBarButton
+ (BOOL)shouldUseMonochromeTreatmentWithCustomTintColor;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointMostlyInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)updatePresentedMenuFrom:(id)from;
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (CGRect)_buttonBarHitRect;
- (CGRect)accessoryViewAlignmentRect;
- (CGSize)backButtonSystemLayoutSizeFittingSize:(CGSize)size horizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (CGSize)backgroundSize;
- (CGSize)imageViewSize;
- (CGSize)intrinsicContentSize;
- (NSLayoutConstraint)heightMinimizingConstraint;
- (NSLayoutConstraint)widthMinimizingConstraint;
- (NSString)description;
- (UIEdgeInsets)alignmentRectInsets;
- (_UIButtonBarButton)init;
- (_UIButtonBarButton)initWithCoder:(id)coder;
- (_UIButtonBarButton)initWithFrame:(CGRect)frame;
- (_UIButtonBarButton)initWithVisualProvider:(id)provider;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)_preferredSender;
- (id)_targetedPreviewForInteraction:(id)interaction;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_accessibilitySettingsChanged:(id)changed;
- (void)_applyDeferredSymbolEffects;
- (void)_configureFromBarItem:(id)item appearanceDelegate:(id)delegate isBackButton:(BOOL)button useBreadcrumbStyle:(BOOL)style;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)_is_setNeedsLayout;
- (void)_selectionInteractionDidBeginHinting:(id)hinting;
- (void)_selectionInteractionDidCancelHinting:(id)hinting;
- (void)_selectionInteractionDidSelect:(id)select;
- (void)_setHasActiveMenuPresentation:(BOOL)presentation;
- (void)_setTouchHasHighlighted:(BOOL)highlighted;
- (void)addSymbolEffect:(id)effect options:(id)options animated:(BOOL)animated;
- (void)applyContentTransition:(id)transition options:(id)options;
- (void)configureBackButtonFromBarItem:(id)item withAppearanceDelegate:(id)delegate;
- (void)configureBreadcrumbBackButtonFromBarItem:(id)item withAppearanceDelegate:(id)delegate;
- (void)configureFromBarItem:(id)item withAppearanceDelegate:(id)delegate;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)removeAllSymbolEffectsWithOptions:(id)options animated:(BOOL)animated;
- (void)removeSymbolEffectOfType:(id)type options:(id)options animated:(BOOL)animated;
- (void)setAppearanceData:(id)data;
- (void)setBounds:(CGRect)bounds;
- (void)setEnabled:(BOOL)enabled;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setNeedsAppearanceUpdate;
- (void)setSelected:(BOOL)selected;
- (void)setShouldUseButtonPlatters:(BOOL)platters;
- (void)setSpringLoaded:(BOOL)loaded;
- (void)willMoveToSuperview:(id)superview;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIButtonBarButton

- (void)_applyDeferredSymbolEffects
{
  symbolImageView = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider symbolImageView];
  v4 = symbolImageView;
  if (symbolImageView)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49___UIButtonBarButton__applyDeferredSymbolEffects__block_invoke;
    aBlock[3] = &unk_1E70F7368;
    v8 = symbolImageView;
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
    widthAnchor = [(UIView *)self widthAnchor];
    v5 = [widthAnchor constraintEqualToConstant:0.0];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIButtonBarButton;
  [(UIView *)&v4 dealloc];
}

- (_UIButtonBarButton)initWithVisualProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = _UIButtonBarButton;
  v5 = [(UIControl *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = [providerCopy copy];
    visualProvider = v5->_visualProvider;
    v5->_visualProvider = v6;

    v5->_visualProvider->_button = v5;
    v8 = objc_opt_new();
    [v8 setDelegate:v5];
    [(UIView *)v5 addInteraction:v8];
    [(_UIButtonBarButton *)v5 set_selectionInteraction:v8];
    [(UIControl *)v5 setShowsMenuFromSource:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__accessibilitySettingsChanged_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];
  }

  return v5;
}

- (_UIButtonBarButton)init
{
  [(UIResponder *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_UIButtonBarButton)initWithFrame:(CGRect)frame
{
  [(UIResponder *)self doesNotRecognizeSelector:a2, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return 0;
}

- (_UIButtonBarButton)initWithCoder:(id)coder
{
  [(UIResponder *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setSelected:(BOOL)selected
{
  v4 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonSelectionState:self forRequestedState:selected];
  v5.receiver = self;
  v5.super_class = _UIButtonBarButton;
  [(UIControl *)&v5 setSelected:v4];
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider updateButton:self forSelectedState:[(UIControl *)self isSelected]];
}

- (void)setEnabled:(BOOL)enabled
{
  v4 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonEnabledState:self forRequestedState:enabled];
  v5.receiver = self;
  v5.super_class = _UIButtonBarButton;
  [(UIControl *)&v5 setEnabled:v4];
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider updateButton:self forEnabledState:[(UIControl *)self isEnabled]];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonHighlitedState:self forRequestedState:highlighted];
  v5.receiver = self;
  v5.super_class = _UIButtonBarButton;
  [(UIControl *)&v5 setHighlighted:v4];
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider updateButton:self forHighlightedState:[(UIControl *)self isHighlighted]];
}

- (void)_setHasActiveMenuPresentation:(BOOL)presentation
{
  v4 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonHeldState:self forRequestedState:presentation];
  v5.receiver = self;
  v5.super_class = _UIButtonBarButton;
  [(UIControl *)&v5 _setHasActiveMenuPresentation:v4];
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider updateButton:self forHeldState:[(UIControl *)self _hasActiveMenuPresentation]];
}

- (void)_setTouchHasHighlighted:(BOOL)highlighted
{
  v5.receiver = self;
  v5.super_class = _UIButtonBarButton;
  [(UIControl *)&v5 _setTouchHasHighlighted:?];
  if (!highlighted)
  {
    [(_UIButtonBarButtonVisualProvider *)self->_visualProvider resetButtonHasHighlighted];
  }
}

- (void)configureFromBarItem:(id)item withAppearanceDelegate:(id)delegate
{
  visualProvider = self->_visualProvider;
  delegateCopy = delegate;
  itemCopy = item;
  objc_storeWeak(&visualProvider->_barButtonItem, itemCopy);
  [(_UIButtonBarButton *)self _configureFromBarItem:itemCopy appearanceDelegate:delegateCopy isBackButton:0 useBreadcrumbStyle:0];
}

- (void)configureBackButtonFromBarItem:(id)item withAppearanceDelegate:(id)delegate
{
  visualProvider = self->_visualProvider;
  delegateCopy = delegate;
  obj = item;
  if (![(_UIButtonBarButtonVisualProvider *)visualProvider supportsBackButtons])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIButtonBarButton.m" lineNumber:521 description:{@"Attempt to create a back-button styled bar button from a visual style that does not support back buttons (button=%p, visual style=%@)", self, self->_visualProvider}];
  }

  objc_storeWeak(&self->_visualProvider->_barButtonItem, obj);
  [(_UIButtonBarButton *)self _configureFromBarItem:obj appearanceDelegate:delegateCopy isBackButton:1 useBreadcrumbStyle:0];
}

- (void)configureBreadcrumbBackButtonFromBarItem:(id)item withAppearanceDelegate:(id)delegate
{
  visualProvider = self->_visualProvider;
  delegateCopy = delegate;
  obj = item;
  if (![(_UIButtonBarButtonVisualProvider *)visualProvider supportsBackButtons])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIButtonBarButton.m" lineNumber:528 description:{@"Attempt to create a back-button styled bar button from a visual style that does not support back buttons (button=%p, visual style=%@)", self, self->_visualProvider}];
  }

  objc_storeWeak(&self->_visualProvider->_barButtonItem, obj);
  [(_UIButtonBarButton *)self _configureFromBarItem:obj appearanceDelegate:delegateCopy isBackButton:1 useBreadcrumbStyle:1];
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

- (void)setAppearanceData:(id)data
{
  dataCopy = data;
  v6 = self->_appearanceData;
  v7 = dataCopy;
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
    objc_storeStrong(&self->_appearanceData, data);
    [(_UIButtonBarButton *)self setNeedsAppearanceUpdate];
  }

LABEL_9:
}

- (NSLayoutConstraint)heightMinimizingConstraint
{
  heightMinimizingConstraint = self->_heightMinimizingConstraint;
  if (!heightMinimizingConstraint)
  {
    heightAnchor = [(UIView *)self heightAnchor];
    v5 = [heightAnchor constraintEqualToConstant:0.0];
    v6 = self->_heightMinimizingConstraint;
    self->_heightMinimizingConstraint = v5;

    [(NSLayoutConstraint *)self->_heightMinimizingConstraint setIdentifier:@"_UIButtonBarButton.heightMinimizingConstraint"];
    LODWORD(v7) = 1132068864;
    [(NSLayoutConstraint *)self->_heightMinimizingConstraint setPriority:v7];
    heightMinimizingConstraint = self->_heightMinimizingConstraint;
  }

  return heightMinimizingConstraint;
}

- (void)_configureFromBarItem:(id)item appearanceDelegate:(id)delegate isBackButton:(BOOL)button useBreadcrumbStyle:(BOOL)style
{
  itemCopy = item;
  delegateCopy = delegate;
  self->_hasPerformedPostConfigurationLayout = 0;
  self->_backButton = button;
  self->_breadcrumb = button && style;
  if ([itemCopy isSystemItem])
  {
    systemItem = [itemCopy systemItem];
    v13 = systemItem == 1 || systemItem == 24;
    self->_acceptsInauthenticTouches = v13;
  }

  else
  {
    self->_acceptsInauthenticTouches = 0;
  }

  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider configureButton:self withAppearanceDelegate:delegateCopy fromBarItem:itemCopy];
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider updateButton:self toUseButtonShapes:_AXSButtonShapesEnabled() != 0];
  -[_UIButtonBarButton setEnabled:](self, "setEnabled:", [itemCopy isEnabled]);
  -[_UIButtonBarButton setSelected:](self, "setSelected:", [itemCopy isSelected]);
  if ([itemCopy action] == sel_assistantPaste_forEvent_)
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

- (void)setShouldUseButtonPlatters:(BOOL)platters
{
  if (self->_shouldUseButtonPlatters != platters)
  {
    self->_shouldUseButtonPlatters = platters;
    contentView = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider contentView];
    if ([contentView conformsToProtocol:&unk_1EFE79E90])
    {
      contentView2 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider contentView];
      v5 = objc_opt_respondsToSelector();

      if ((v5 & 1) == 0)
      {
        return;
      }

      contentView = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider contentView];
      [contentView setShouldUseButtonPlatters:self->_shouldUseButtonPlatters];
    }
  }
}

- (void)setSpringLoaded:(BOOL)loaded
{
  loadedCopy = loaded;
  v5 = self->_visualProvider;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38___UIButtonBarButton_setSpringLoaded___block_invoke;
  v7[3] = &unk_1E70F7320;
  v8 = v5;
  v6 = v5;
  [(UIView *)self _setSpringLoaded:loadedCopy interactionInitializer:v7];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v5 = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonContextMenuInteractionConfiguration:interaction];
  [v5 setPreferredMenuElementOrder:{-[_UIButtonBarButton preferredMenuElementOrder](self, "preferredMenuElementOrder")}];
  if (dyld_program_sdk_at_least())
  {
    nextResponder = [(UIView *)self nextResponder];
    v7 = _UITreeFindFirstAncestorMatchingCondition(nextResponder, sel_nextResponder, &__block_literal_global_191);

    topViewController = [v7 topViewController];
    [v5 setFirstResponderTarget:topViewController];
  }

  return v5;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  v5 = [(UIView *)self window:interaction];

  if (v5)
  {
    buttonContextMenuTargetedPreview = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonContextMenuTargetedPreview];
  }

  else
  {
    buttonContextMenuTargetedPreview = 0;
  }

  return buttonContextMenuTargetedPreview;
}

- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration
{
  v5 = [(UIView *)self window:interaction];

  if (v5)
  {
    buttonContextMenuTargetedPreview = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider buttonContextMenuTargetedPreview];
  }

  else
  {
    buttonContextMenuTargetedPreview = 0;
  }

  return buttonContextMenuTargetedPreview;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  visualProvider = self->_visualProvider;
  v8.receiver = self;
  v8.super_class = _UIButtonBarButton;
  v5 = [(UIControl *)&v8 _contextMenuInteraction:interaction styleForMenuWithConfiguration:configuration];
  v6 = [(_UIButtonBarButtonVisualProvider *)visualProvider buttonContextMenuStyleFromDefaultStyle:v5];

  return v6;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider menuAnchorPoint];
  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)updatePresentedMenuFrom:(id)from
{
  fromCopy = from;
  canUpdateMenuInPlace = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider canUpdateMenuInPlace];
  if (canUpdateMenuInPlace)
  {
    contextMenuInteraction = [(UIControl *)self contextMenuInteraction];
    WeakRetained = objc_loadWeakRetained(&self->_visualProvider->_barButtonItem);
    menu = [WeakRetained menu];
    _UIControlMenuUpdateVisibleMenu(contextMenuInteraction, fromCopy, menu);

    [(_UIButtonBarButtonVisualProvider *)self->_visualProvider updateMenu];
  }

  return canUpdateMenuInPlace;
}

- (void)addSymbolEffect:(id)effect options:(id)options animated:(BOOL)animated
{
  animatedCopy = animated;
  effectCopy = effect;
  optionsCopy = options;
  symbolImageView = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider symbolImageView];
  v10 = symbolImageView;
  if (symbolImageView)
  {
    [symbolImageView addSymbolEffect:effectCopy options:optionsCopy animated:animatedCopy];
  }
}

- (void)removeSymbolEffectOfType:(id)type options:(id)options animated:(BOOL)animated
{
  animatedCopy = animated;
  typeCopy = type;
  optionsCopy = options;
  symbolImageView = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider symbolImageView];
  v10 = symbolImageView;
  if (symbolImageView)
  {
    [symbolImageView removeSymbolEffectOfType:typeCopy options:optionsCopy animated:animatedCopy];
  }
}

- (void)removeAllSymbolEffectsWithOptions:(id)options animated:(BOOL)animated
{
  animatedCopy = animated;
  optionsCopy = options;
  symbolImageView = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider symbolImageView];
  v7 = symbolImageView;
  if (symbolImageView)
  {
    [symbolImageView removeAllSymbolEffectsWithOptions:optionsCopy animated:animatedCopy];
  }
}

- (void)applyContentTransition:(id)transition options:(id)options
{
  transitionCopy = transition;
  optionsCopy = options;
  symbolImageView = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider symbolImageView];
  visualProvider = self->_visualProvider;
  if (symbolImageView)
  {
    WeakRetained = objc_loadWeakRetained(&visualProvider->_barButtonItem);
    image = [WeakRetained image];
    [symbolImageView setSymbolImage:image withContentTransition:transitionCopy options:optionsCopy];

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

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  [(_UIButtonBarButton *)self _buttonBarHitRect];
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  if (isKindOfClass)
  {
    [interactionCopy createRegionFromRect:self targetView:@"com.apple.UIKit._UIButtonBarButton" identifier:-[UIControl isSelected](self selected:{"isSelected"), v8, v9, v10, v11}];
  }

  else
  {
    view = [interactionCopy view];
    [(UIView *)self convertRect:view toView:v12, v13, v14, v15];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [UIPointerRegion regionWithRect:0 identifier:v18, v20, v22, v24];
  }
  v25 = ;

  return v25;
}

- (id)_targetedPreviewForInteraction:(id)interaction
{
  interactionCopy = interaction;
  pointerPreviewParameters = [(_UIButtonBarButtonVisualProvider *)self->_visualProvider pointerPreviewParameters];
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider pointerPreviewCenter];
  v7 = v6;
  v9 = v8;
  superview = [(UIView *)self superview];
  [(UIView *)self convertPoint:superview toView:v7, v9];
  v12 = v11;
  v14 = v13;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [interactionCopy createPreviewTargetForView:self center:{v12, v14}];
  }

  else
  {
    v16 = [UIPreviewTarget alloc];
    superview2 = [(UIView *)self superview];
    v15 = [(UIPreviewTarget *)v16 initWithContainer:superview2 center:v12, v14];
  }

  v18 = [[UITargetedPreview alloc] initWithView:self parameters:pointerPreviewParameters target:v15];

  return v18;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  region = [(_UIButtonBarButton *)self _targetedPreviewForInteraction:interaction, region];
  visualProvider = self->_visualProvider;
  target = [region target];
  container = [target container];
  v9 = [(_UIButtonBarButtonVisualProvider *)visualProvider pointerShapeInContainer:container];

  if ([(_UIButtonBarButtonVisualProvider *)self->_visualProvider shouldLift])
  {
    v10 = +[UIColor clearColor];
    parameters = [region parameters];
    [parameters setBackgroundColor:v10];

    v12 = off_1E70EA410;
  }

  else
  {
    v12 = off_1E70EA3F8;
  }

  v13 = [(__objc2_class *)*v12 effectWithPreview:region];
  v14 = [UIPointerStyle styleWithEffect:v13 shape:v9];
  if ([(_UIButtonBarButtonVisualProvider *)self->_visualProvider shouldSuppressPointerSpecularFilter])
  {
    [v14 setOptions:{objc_msgSend(v14, "options") | 0x1000}];
  }

  return v14;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(UIView *)self _willForceLayoutForBoundsChangeToNewBounds:bounds.origin.y, bounds.size.width, bounds.size.height]&& (*(&self->super.super._viewFlags + 7) & 1) != 0)
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

- (void)willMoveToSuperview:(id)superview
{
  visualProvider = self->_visualProvider;
  superviewCopy = superview;
  [(_UIButtonBarButtonVisualProvider *)visualProvider buttonWillMoveToSuperview:superviewCopy];
  v6.receiver = self;
  v6.super_class = _UIButtonBarButton;
  [(UIView *)&v6 willMoveToSuperview:superviewCopy];
}

- (void)willMoveToWindow:(id)window
{
  visualProvider = self->_visualProvider;
  windowCopy = window;
  [(_UIButtonBarButtonVisualProvider *)visualProvider buttonWillMoveToWindow:windowCopy];
  v6.receiver = self;
  v6.super_class = _UIButtonBarButton;
  [(UIView *)&v6 willMoveToWindow:windowCopy];
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  v4.receiver = self;
  v4.super_class = _UIButtonBarButton;
  [(UIView *)&v4 _intrinsicContentSizeInvalidatedForChildView:view];
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

- (BOOL)pointMostlyInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(_UIButtonBarButton *)self _buttonBarHitRect];
  v11 = CGRectInset(v10, -15.0, -15.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (void)_accessibilitySettingsChanged:(id)changed
{
  visualProvider = self->_visualProvider;
  v5 = _AXSButtonShapesEnabled() != 0;

  [(_UIButtonBarButtonVisualProvider *)visualProvider updateButton:self toUseButtonShapes:v5];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  v6 = view == self || ![beginCopy _isGestureType:0] || objc_msgSend(beginCopy, "numberOfTouchesRequired") != 1 || objc_msgSend(beginCopy, "numberOfTapsRequired") != 1;

  return v6;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = _UIButtonBarButton;
  [(UIView *)&v12 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedView = [contextCopy nextFocusedView];
  v8 = nextFocusedView;
  if (nextFocusedView == self)
  {

LABEL_5:
    visualProvider = self->_visualProvider;
    nextFocusedView2 = [contextCopy nextFocusedView];
    [(_UIButtonBarButtonVisualProvider *)visualProvider updateButton:self forFocusedState:nextFocusedView2 == self];

    goto LABEL_6;
  }

  previouslyFocusedView = [contextCopy previouslyFocusedView];

  if (previouslyFocusedView == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_selectionInteractionDidBeginHinting:(id)hinting
{
  selfCopy = self;
  _focusBehavior = [(UIView *)selfCopy _focusBehavior];
  buttonSelectionMode = [_focusBehavior buttonSelectionMode];

  if ((buttonSelectionMode & 2) != 0 && [(UIControl *)selfCopy isEnabled])
  {
    [(_UIButtonBarButton *)selfCopy setHighlighted:1];
  }
}

- (void)_selectionInteractionDidCancelHinting:(id)hinting
{
  selfCopy = self;
  _focusBehavior = [(UIView *)selfCopy _focusBehavior];
  buttonSelectionMode = [_focusBehavior buttonSelectionMode];

  if ((buttonSelectionMode & 2) != 0 && [(UIControl *)selfCopy isHighlighted])
  {
    [(_UIButtonBarButton *)selfCopy setHighlighted:0];
    [(_UIButtonBarButton *)selfCopy _setTouchHasHighlighted:0];
  }
}

- (void)_selectionInteractionDidSelect:(id)select
{
  selfCopy = self;
  _focusBehavior = [(UIView *)selfCopy _focusBehavior];
  buttonSelectionMode = [_focusBehavior buttonSelectionMode];

  if ((buttonSelectionMode & 2) != 0 && [(UIControl *)selfCopy isHighlighted])
  {
    [(_UIButtonBarButton *)selfCopy setHighlighted:0];
    [(_UIButtonBarButton *)selfCopy _setTouchHasHighlighted:0];
  }

  _focusBehavior2 = [(UIView *)selfCopy _focusBehavior];
  buttonSelectionMode2 = [_focusBehavior2 buttonSelectionMode];

  if (buttonSelectionMode2)
  {
    [(UIControl *)selfCopy sendActionsForControlEvents:1];
    v8 = 64;
  }

  else
  {
    v8 = 0x2000;
  }

  [(UIControl *)selfCopy sendActionsForControlEvents:v8];
}

- (CGSize)backButtonSystemLayoutSizeFittingSize:(CGSize)size horizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  [(_UIButtonBarButtonVisualProvider *)self->_visualProvider backButtonSystemLayoutSizeFittingSize:size.width horizontalFittingPriority:size.height verticalFittingPriority:?];
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
  weakRetained = [v5 stringWithFormat:@"<%@ %p frame: %@; barButtonItem: %@>", v6, self, v7, WeakRetained];;

  return weakRetained;
}

@end