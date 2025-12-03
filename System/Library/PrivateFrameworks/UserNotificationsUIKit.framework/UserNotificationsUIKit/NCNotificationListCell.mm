@interface NCNotificationListCell
- (BOOL)_actionHandlerAllowsPerformingClipping;
- (BOOL)_shouldPerformClipping;
- (BOOL)isContentUserInteractionEnabled;
- (BOOL)shouldContinuePresentingActionButtonsForSwipeInteraction:(id)interaction;
- (BOOL)shouldVerticallyStackButtonsForSwipeInteraction:(id)interaction;
- (BOOL)swipeInteraction:(id)interaction shouldRevealActionsFromLayoutLocation:(unint64_t)location;
- (CGAffineTransform)contentTransform;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits withTraits:(id)traits;
- (NCNotificationListCell)initWithFrame:(CGRect)frame;
- (NCNotificationListCellActionHandling)actionHandler;
- (NCNotificationListCellActionProviding)actionProvider;
- (NCNotificationListCellDynamicHeightTraits)currentTraits;
- (NCNotificationViewController)notificationViewController;
- (double)buttonsGlassLuminanceForSwipeInteraction:(id)interaction;
- (id)_buttonCustomBackgroundColor;
- (id)swipeInteraction:(id)interaction actionsToRevealFromLayoutLocation:(unint64_t)location;
- (int64_t)buttonsRecipeForSwipeInteraction:(id)interaction;
- (void)_configureClippingIfNecessary;
- (void)_layoutContentView;
- (void)_resetClipping;
- (void)_setupClipping;
- (void)_updateDebugViewFrame;
- (void)addSubview:(id)subview;
- (void)bringSubviewToFront:(id)front;
- (void)configureStackDimmingForTransform:(CGAffineTransform *)transform;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAllowContentToCrossFade:(BOOL)fade;
- (void)setApparentZDistanceToUser:(int64_t)user;
- (void)setBackgroundAlpha:(double)alpha;
- (void)setBackgroundHidden:(BOOL)hidden;
- (void)setBounds:(CGRect)bounds;
- (void)setCompositeAlpha:(double)alpha;
- (void)setContentAlpha:(double)alpha;
- (void)setContentTransform:(CGAffineTransform *)transform;
- (void)setContentUserInteractionEnabled:(BOOL)enabled;
- (void)setContentViewController:(id)controller;
- (void)setDateAlpha:(double)alpha;
- (void)setDisableDimming:(BOOL)dimming;
- (void)setFrame:(CGRect)frame;
- (void)setGlassMode:(unint64_t)mode;
- (void)setHideDate:(BOOL)date;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setRootScrollVelocity:(double)velocity;
- (void)setUnmanagedBackdropContrast:(BOOL)contrast;
- (void)swipeInteraction:(id)interaction didMoveToNewXPosition:(double)position;
- (void)swipeInteractionDidBeginHidingActions:(id)actions;
- (void)swipeInteractionDidBeginRevealingActions:(id)actions;
- (void)swipeInteractionDidSignificantUserInteraction:(id)interaction;
@end

@implementation NCNotificationListCell

- (NCNotificationViewController)notificationViewController
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentViewController = self->_contentViewController;
  }

  else
  {
    contentViewController = 0;
  }

  return contentViewController;
}

- (NCNotificationListCellDynamicHeightTraits)currentTraits
{
  contentViewController = [(NCNotificationListCell *)self contentViewController];
  view = [contentViewController view];

  if (objc_opt_respondsToSelector())
  {
    currentTraits = [view currentTraits];
  }

  else
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [(NCDimmableView *)v5 currentTraits];
    }

    currentTraits = objc_alloc_init(NCNotificationListCellDynamicHeightTraits);
  }

  v6 = currentTraits;

  return v6;
}

- (NCNotificationListCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v17.receiver = self;
  v17.super_class = NCNotificationListCell;
  v7 = [(NCNotificationListCell *)&v17 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
    v9 = *(v7 + 63);
    *(v7 + 63) = v8;

    [v7 setAccessibilityIdentifier:@"ListCell"];
    [*(v7 + 63) setAccessibilityIdentifier:@"ListCell.ContentView"];
    [v7 addSubview:*(v7 + 63)];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v7 setBackgroundColor:clearColor];

    layer = [v7 layer];
    [layer setAllowsGroupOpacity:0];

    v7[417] = 0;
    *(v7 + 65) = 0x3FF0000000000000;
    *(v7 + 66) = 0x3FF0000000000000;
    *(v7 + 67) = 0x3FF0000000000000;
    v12 = MEMORY[0x277CBF2C0];
    *(v7 + 584) = *(MEMORY[0x277CBF2C0] + 32);
    v13 = v12[1];
    *(v7 + 552) = *v12;
    *(v7 + 568) = v13;
    *(v7 + 53) = 0x7FFFFFFFFFFFFFFFLL;
    *(v7 + 54) = 0x7FEFFFFFFFFFFFFFLL;
    v7[420] = 0;
    v14 = [objc_alloc(MEMORY[0x277D3D330]) initWithDelegate:v7];
    v15 = *(v7 + 51);
    *(v7 + 51) = v14;

    [v7 addInteraction:*(v7 + 51)];
  }

  return v7;
}

- (void)dealloc
{
  [(NCNotificationListDimmable *)self->_contentViewController willMoveToParentViewController:0];
  [(NCNotificationListDimmable *)self->_contentViewController removeFromParentViewController];
  [(NCNotificationListDimmable *)self->_contentViewController didMoveToParentViewController:0];
  v3.receiver = self;
  v3.super_class = NCNotificationListCell;
  [(NCNotificationListCell *)&v3 dealloc];
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  contentViewController = self->_contentViewController;
  if (contentViewController != controllerCopy)
  {
    v11 = controllerCopy;
    view = [(NCNotificationListDimmable *)contentViewController view];
    [view removeFromSuperview];

    objc_storeStrong(&self->_contentViewController, controller);
    contentView = [(NCNotificationListCell *)self contentView];
    view2 = [(NCNotificationListDimmable *)v11 view];
    [contentView addSubview:view2];

    [(NCNotificationListCell *)self setOverrideUserInterfaceStyle:[(NCNotificationListDimmable *)self->_contentViewController overrideUserInterfaceStyle]];
    [(PLSwipeInteraction *)self->_swipeInteraction hideActionsAnimated:0 fastAnimation:0 completion:0];
    notificationViewController = [(NCNotificationListCell *)self notificationViewController];
    [notificationViewController setBackgroundAlpha:self->_backgroundAlpha];

    contentViewController = [(NCNotificationListCell *)self setNeedsLayout];
  }

  MEMORY[0x2821F96F8](contentViewController);
}

- (void)setContentUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  notificationViewController = [(NCNotificationListCell *)self notificationViewController];
  v8 = notificationViewController;
  if (notificationViewController)
  {
    [notificationViewController setInteractionEnabled:enabledCopy];
  }

  else
  {
    contentViewController = [(NCNotificationListCell *)self contentViewController];
    view = [contentViewController view];
    [view setUserInteractionEnabled:enabledCopy];
  }
}

- (void)setBackgroundAlpha:(double)alpha
{
  if (self->_backgroundAlpha != alpha)
  {
    self->_backgroundAlpha = alpha;
    notificationViewController = [(NCNotificationListCell *)self notificationViewController];
    [notificationViewController setBackgroundAlpha:self->_backgroundAlpha];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setContentAlpha:(double)alpha
{
  if (self->_contentAlpha != alpha)
  {
    self->_contentAlpha = alpha;
    notificationViewController = [(NCNotificationListCell *)self notificationViewController];
    [notificationViewController setContentAlpha:self->_contentAlpha];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setDisableDimming:(BOOL)dimming
{
  if (self->_disableDimming != dimming)
  {
    dimmingCopy = dimming;
    self->_disableDimming = dimming;
    notificationViewController = [(NCNotificationListCell *)self notificationViewController];
    [notificationViewController setDisableDimming:dimmingCopy];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setHideDate:(BOOL)date
{
  if (self->_hideDate != date)
  {
    dateCopy = date;
    self->_hideDate = date;
    notificationViewController = [(NCNotificationListCell *)self notificationViewController];
    [notificationViewController setHideDate:dateCopy];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setAllowContentToCrossFade:(BOOL)fade
{
  if (self->_allowContentToCrossFade != fade)
  {
    fadeCopy = fade;
    self->_allowContentToCrossFade = fade;
    notificationViewController = [(NCNotificationListCell *)self notificationViewController];
    [notificationViewController setAllowContentToCrossFade:fadeCopy];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setDateAlpha:(double)alpha
{
  if (self->_dateAlpha != alpha)
  {
    self->_dateAlpha = alpha;
    notificationViewController = [(NCNotificationListCell *)self notificationViewController];
    [notificationViewController setDateAlpha:alpha];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setCompositeAlpha:(double)alpha
{
  if (self->_compositeAlpha != alpha)
  {
    self->_compositeAlpha = alpha;
    notificationViewController = [(NCNotificationListCell *)self notificationViewController];
    [notificationViewController setCompositeAlpha:alpha];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setContentTransform:(CGAffineTransform *)transform
{
  p_contentTransform = &self->_contentTransform;
  v6 = *&self->_contentTransform.c;
  *&t1.a = *&self->_contentTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_contentTransform.tx;
  v7 = *&transform->c;
  *&v12.a = *&transform->a;
  *&v12.c = v7;
  *&v12.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v12))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_contentTransform->c = *&transform->c;
    *&p_contentTransform->tx = v9;
    *&p_contentTransform->a = v8;
    notificationViewController = [(NCNotificationListCell *)self notificationViewController];
    v11 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v11;
    *&t1.tx = *&transform->tx;
    [notificationViewController setContentTransform:&t1];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setBackgroundHidden:(BOOL)hidden
{
  if (self->_backgroundHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_backgroundHidden = hidden;
    notificationViewController = [(NCNotificationListCell *)self notificationViewController];
    [notificationViewController setBackgroundHidden:hiddenCopy];
  }
}

- (BOOL)isContentUserInteractionEnabled
{
  notificationViewController = [(NCNotificationListCell *)self notificationViewController];
  v4 = notificationViewController;
  if (notificationViewController)
  {
    isInteractionEnabled = [notificationViewController isInteractionEnabled];
  }

  else
  {
    contentViewController = [(NCNotificationListCell *)self contentViewController];
    view = [contentViewController view];
    isInteractionEnabled = [view isUserInteractionEnabled];
  }

  return isInteractionEnabled;
}

- (void)addSubview:(id)subview
{
  v4.receiver = self;
  v4.super_class = NCNotificationListCell;
  [(NCNotificationListCell *)&v4 addSubview:subview];
  if (self->_debugView)
  {
    [(NCNotificationListCell *)self bringSubviewToFront:?];
  }
}

- (void)bringSubviewToFront:(id)front
{
  v6.receiver = self;
  v6.super_class = NCNotificationListCell;
  frontCopy = front;
  [(NCNotificationListCell *)&v6 bringSubviewToFront:frontCopy];
  debugView = self->_debugView;

  if (debugView != frontCopy)
  {
    [(NCNotificationListCell *)self bringSubviewToFront:debugView, v6.receiver, v6.super_class];
  }
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = NCNotificationListCell;
  [(NCNotificationListCell *)&v4 didMoveToSuperview];
  superview = [(NCNotificationListCell *)self superview];

  if (superview)
  {
    [NCNotificationListDebugView configureDebugGuidesIfNecessaryForView:self];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NCNotificationListCell;
  [(NCNotificationListCell *)&v4 layoutSubviews];
  [(NCNotificationListCell *)self _layoutContentView];
  superview = [(NCNotificationListCell *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [superview subviewDidLayout];
  }
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = NCNotificationListCell;
  [(NCNotificationListCell *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(NCNotificationListCell *)self _updateDebugViewFrame];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = NCNotificationListCell;
  [(NCNotificationListCell *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(NCNotificationListCell *)self _updateDebugViewFrame];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  contentViewController = [(NCNotificationListCell *)self contentViewController];
  view = [contentViewController view];
  [view sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)prepareForReuse
{
  [(NCNotificationListCell *)self hideActionButtonsAnimated:0 fastAnimation:0 completion:0];
  [(NCNotificationListCell *)self setBackgroundHidden:0];
  [(NCNotificationListCell *)self setApparentZDistanceToUser:0x7FFFFFFFFFFFFFFFLL];
  [(NCNotificationListCell *)self setGlassMode:0];
  [(NCNotificationListCell *)self setUnmanagedBackdropContrast:0];
  notificationViewController = [(NCNotificationListCell *)self notificationViewController];
  [notificationViewController setNotificationContentViewHidden:0];
  [notificationViewController _setNotificationRequest:0];
}

- (void)_layoutContentView
{
  [(NCNotificationListCell *)self bounds];
  [(UIView *)self->_contentView frame];
  [(UIView *)self->_contentView setFrame:?];
  [(NCNotificationListCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  view = [(NCNotificationListDimmable *)self->_contentViewController view];
  [view setFrame:{v7, v8, v4, v6}];
}

- (void)configureStackDimmingForTransform:(CGAffineTransform *)transform
{
  contentViewController = self->_contentViewController;
  if (contentViewController)
  {
    v4 = *&transform->c;
    v5[0] = *&transform->a;
    v5[1] = v4;
    v5[2] = *&transform->tx;
    [(NCNotificationListDimmable *)contentViewController configureStackDimmingForTransform:v5];
  }
}

- (void)setApparentZDistanceToUser:(int64_t)user
{
  if (self->_apparentZDistanceToUser != user)
  {
    self->_apparentZDistanceToUser = user;
    [(NCNotificationListDimmable *)self->_contentViewController setApparentZDistanceToUser:?];
  }
}

- (void)setRootScrollVelocity:(double)velocity
{
  if (self->_rootScrollVelocity != velocity)
  {
    self->_rootScrollVelocity = velocity;
    [(NCNotificationListDimmable *)self->_contentViewController setRootScrollVelocity:?];
  }
}

- (void)setGlassMode:(unint64_t)mode
{
  if (self->_glassMode != mode)
  {
    self->_glassMode = mode;
    [(NCNotificationListDimmable *)self->_contentViewController setGlassMode:?];
  }
}

- (void)setUnmanagedBackdropContrast:(BOOL)contrast
{
  if (self->_unmanagedBackdropContrast != contrast)
  {
    self->_unmanagedBackdropContrast = contrast;
    [(NCNotificationListDimmable *)self->_contentViewController setUnmanagedBackdropContrast:?];
  }
}

- (void)setMaterialGroupNameBase:(id)base
{
  objc_storeStrong(&self->_materialGroupNameBase, base);
  baseCopy = base;
  [(PLSwipeInteraction *)self->_swipeInteraction setMaterialGroupNameBase:baseCopy];
}

- (BOOL)shouldContinuePresentingActionButtonsForSwipeInteraction:(id)interaction
{
  actionProvider = [(NCNotificationListCell *)self actionProvider];
  if (objc_opt_respondsToSelector())
  {
    v5 = [actionProvider shouldContinuePresentingActionButtonsForNotificationListCell:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)swipeInteraction:(id)interaction actionsToRevealFromLayoutLocation:(unint64_t)location
{
  v11[1] = *MEMORY[0x277D85DE8];
  actionProvider = [(NCNotificationListCell *)self actionProvider];
  if (location == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [actionProvider supplementaryActionsForNotificationListCell:self];
      goto LABEL_9;
    }
  }

  else if (!location && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [actionProvider defaultActionForNotificationListCell:self];
    v8 = v7;
    if (v7)
    {
      v11[0] = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (BOOL)swipeInteraction:(id)interaction shouldRevealActionsFromLayoutLocation:(unint64_t)location
{
  actionProvider = [(NCNotificationListCell *)self actionProvider];
  if (location == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [actionProvider shouldShowSupplementaryActionsForNotificationListCell:self];
      goto LABEL_7;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (location || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = [actionProvider shouldShowDefaultActionForNotificationListCell:self];
LABEL_7:
  v8 = v7;
LABEL_9:

  return v8;
}

- (int64_t)buttonsRecipeForSwipeInteraction:(id)interaction
{
  _buttonCustomBackgroundColor = [(NCNotificationListCell *)self _buttonCustomBackgroundColor];
  if (_buttonCustomBackgroundColor)
  {
    materialRecipe = 0;
  }

  else
  {
    materialRecipe = self->_materialRecipe;
  }

  return materialRecipe;
}

- (double)buttonsGlassLuminanceForSwipeInteraction:(id)interaction
{
  traitCollection = [(NCNotificationListCell *)self traitCollection];
  [traitCollection glassLuminanceValue];
  v5 = v4;

  return v5;
}

- (void)swipeInteractionDidBeginHidingActions:(id)actions
{
  contentView = self->_contentView;
  actionsCopy = actions;
  [(UIView *)contentView setUserInteractionEnabled:1];
  [(NCNotificationListCell *)self setContentUserInteractionEnabled:1];
  actionHandler = [(NCNotificationListCell *)self actionHandler];
  [actionHandler notificationListCell:self didBeginHidingActionsForSwipeInteraction:actionsCopy];
}

- (void)swipeInteractionDidBeginRevealingActions:(id)actions
{
  contentViewController = self->_contentViewController;
  actionsCopy = actions;
  [(NCNotificationListDimmable *)contentViewController removeLightEffectsIfNeeded];
  [(UIView *)self->_contentView setUserInteractionEnabled:0];
  [(NCNotificationListCell *)self setContentUserInteractionEnabled:0];
  actionHandler = [(NCNotificationListCell *)self actionHandler];
  [actionHandler notificationListCell:self didBeginRevealingActionsForSwipeInteraction:actionsCopy];
}

- (void)swipeInteractionDidSignificantUserInteraction:(id)interaction
{
  actionHandler = [(NCNotificationListCell *)self actionHandler];
  [actionHandler notificationListCellDidSignificantUserInteraction:self];
}

- (void)swipeInteraction:(id)interaction didMoveToNewXPosition:(double)position
{
  actionHandler = [(NCNotificationListCell *)self actionHandler];
  [actionHandler notificationListCell:self didMoveToNewXPosition:position];
  if (position == 0.0)
  {
    [(NCNotificationListCell *)self _resetClipping];
  }

  else
  {
    [(NCNotificationListCell *)self _configureClippingIfNecessary];
  }

  [(NCNotificationListCell *)self setSupportsMitosis:position != 0.0];
}

- (BOOL)shouldVerticallyStackButtonsForSwipeInteraction:(id)interaction
{
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

  actionProvider = [(NCNotificationListCell *)self actionProvider];
  v7 = actionProvider;
  if ((IsAX & 1) == 0 && actionProvider)
  {
    if (objc_opt_respondsToSelector())
    {
      IsAX = [v7 shouldVerticallyStackActionButtonsForNotificationListCell:self];
    }

    else
    {
      IsAX = 0;
    }
  }

  return IsAX;
}

- (CGSize)sizeThatFits:(CGSize)fits withTraits:(id)traits
{
  height = fits.height;
  width = fits.width;
  traitsCopy = traits;
  contentViewController = [(NCNotificationListCell *)self contentViewController];
  view = [contentViewController view];
  v10 = NCSizeThatFits(view, traitsCopy, width, height);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)_configureClippingIfNecessary
{
  if ([(NCNotificationListCell *)self _shouldPerformClipping])
  {

    [(NCNotificationListCell *)self _setupClipping];
  }

  else
  {

    [(NCNotificationListCell *)self _resetClipping];
  }
}

- (void)_setupClipping
{
  layer = [(NCNotificationListCell *)self layer];
  [layer setMaskedCorners:15];

  [(NCNotificationListCell *)self _setContinuousCornerRadius:23.5];

  [(NCNotificationListCell *)self setClipsToBounds:1];
}

- (void)_resetClipping
{
  layer = [(NCNotificationListCell *)self layer];
  [layer setMaskedCorners:0];

  [(NCNotificationListCell *)self setClipsToBounds:0];
}

- (BOOL)_shouldPerformClipping
{
  traitCollection = [(NCNotificationListCell *)self traitCollection];
  v4 = _NCShouldPlatterClipped();

  if (!v4)
  {
    return 0;
  }

  return [(NCNotificationListCell *)self _actionHandlerAllowsPerformingClipping];
}

- (BOOL)_actionHandlerAllowsPerformingClipping
{
  actionHandler = [(NCNotificationListCell *)self actionHandler];
  if (objc_opt_respondsToSelector())
  {
    v4 = [actionHandler shouldPerformClippingForNotificationListCell:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_updateDebugViewFrame
{
  debugView = self->_debugView;
  if (debugView)
  {
    [(NCNotificationListCell *)self bounds];

    [(NCNotificationListDebugView *)debugView setFrame:?];
  }
}

- (id)_buttonCustomBackgroundColor
{
  notificationViewController = [(NCNotificationListCell *)self notificationViewController];
  _lookView = [notificationViewController _lookView];

  if ([_lookView conformsToProtocol:&unk_2830310E0])
  {
    v4 = _lookView;
  }

  else
  {
    v4 = 0;
  }

  customPlatterBackgroundView = [v4 customPlatterBackgroundView];
  backgroundColor = [customPlatterBackgroundView backgroundColor];

  return backgroundColor;
}

- (NCNotificationListCellActionHandling)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

- (NCNotificationListCellActionProviding)actionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_actionProvider);

  return WeakRetained;
}

- (CGAffineTransform)contentTransform
{
  v3 = *&self[11].ty;
  *&retstr->a = *&self[11].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[12].b;
  return self;
}

@end