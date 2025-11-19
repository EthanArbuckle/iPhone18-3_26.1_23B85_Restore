@interface NCNotificationListCell
- (BOOL)_actionHandlerAllowsPerformingClipping;
- (BOOL)_shouldPerformClipping;
- (BOOL)isContentUserInteractionEnabled;
- (BOOL)shouldContinuePresentingActionButtonsForSwipeInteraction:(id)a3;
- (BOOL)shouldVerticallyStackButtonsForSwipeInteraction:(id)a3;
- (BOOL)swipeInteraction:(id)a3 shouldRevealActionsFromLayoutLocation:(unint64_t)a4;
- (CGAffineTransform)contentTransform;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 withTraits:(id)a4;
- (NCNotificationListCell)initWithFrame:(CGRect)a3;
- (NCNotificationListCellActionHandling)actionHandler;
- (NCNotificationListCellActionProviding)actionProvider;
- (NCNotificationListCellDynamicHeightTraits)currentTraits;
- (NCNotificationViewController)notificationViewController;
- (double)buttonsGlassLuminanceForSwipeInteraction:(id)a3;
- (id)_buttonCustomBackgroundColor;
- (id)swipeInteraction:(id)a3 actionsToRevealFromLayoutLocation:(unint64_t)a4;
- (int64_t)buttonsRecipeForSwipeInteraction:(id)a3;
- (void)_configureClippingIfNecessary;
- (void)_layoutContentView;
- (void)_resetClipping;
- (void)_setupClipping;
- (void)_updateDebugViewFrame;
- (void)addSubview:(id)a3;
- (void)bringSubviewToFront:(id)a3;
- (void)configureStackDimmingForTransform:(CGAffineTransform *)a3;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAllowContentToCrossFade:(BOOL)a3;
- (void)setApparentZDistanceToUser:(int64_t)a3;
- (void)setBackgroundAlpha:(double)a3;
- (void)setBackgroundHidden:(BOOL)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCompositeAlpha:(double)a3;
- (void)setContentAlpha:(double)a3;
- (void)setContentTransform:(CGAffineTransform *)a3;
- (void)setContentUserInteractionEnabled:(BOOL)a3;
- (void)setContentViewController:(id)a3;
- (void)setDateAlpha:(double)a3;
- (void)setDisableDimming:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setGlassMode:(unint64_t)a3;
- (void)setHideDate:(BOOL)a3;
- (void)setMaterialGroupNameBase:(id)a3;
- (void)setRootScrollVelocity:(double)a3;
- (void)setUnmanagedBackdropContrast:(BOOL)a3;
- (void)swipeInteraction:(id)a3 didMoveToNewXPosition:(double)a4;
- (void)swipeInteractionDidBeginHidingActions:(id)a3;
- (void)swipeInteractionDidBeginRevealingActions:(id)a3;
- (void)swipeInteractionDidSignificantUserInteraction:(id)a3;
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
  v2 = [(NCNotificationListCell *)self contentViewController];
  v3 = [v2 view];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 currentTraits];
  }

  else
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [(NCDimmableView *)v5 currentTraits];
    }

    v4 = objc_alloc_init(NCNotificationListCellDynamicHeightTraits);
  }

  v6 = v4;

  return v6;
}

- (NCNotificationListCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v10 = [MEMORY[0x277D75348] clearColor];
    [v7 setBackgroundColor:v10];

    v11 = [v7 layer];
    [v11 setAllowsGroupOpacity:0];

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

- (void)setContentViewController:(id)a3
{
  v5 = a3;
  contentViewController = self->_contentViewController;
  if (contentViewController != v5)
  {
    v11 = v5;
    v7 = [(NCNotificationListDimmable *)contentViewController view];
    [v7 removeFromSuperview];

    objc_storeStrong(&self->_contentViewController, a3);
    v8 = [(NCNotificationListCell *)self contentView];
    v9 = [(NCNotificationListDimmable *)v11 view];
    [v8 addSubview:v9];

    [(NCNotificationListCell *)self setOverrideUserInterfaceStyle:[(NCNotificationListDimmable *)self->_contentViewController overrideUserInterfaceStyle]];
    [(PLSwipeInteraction *)self->_swipeInteraction hideActionsAnimated:0 fastAnimation:0 completion:0];
    v10 = [(NCNotificationListCell *)self notificationViewController];
    [v10 setBackgroundAlpha:self->_backgroundAlpha];

    contentViewController = [(NCNotificationListCell *)self setNeedsLayout];
  }

  MEMORY[0x2821F96F8](contentViewController);
}

- (void)setContentUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCNotificationListCell *)self notificationViewController];
  v8 = v5;
  if (v5)
  {
    [v5 setInteractionEnabled:v3];
  }

  else
  {
    v6 = [(NCNotificationListCell *)self contentViewController];
    v7 = [v6 view];
    [v7 setUserInteractionEnabled:v3];
  }
}

- (void)setBackgroundAlpha:(double)a3
{
  if (self->_backgroundAlpha != a3)
  {
    self->_backgroundAlpha = a3;
    v4 = [(NCNotificationListCell *)self notificationViewController];
    [v4 setBackgroundAlpha:self->_backgroundAlpha];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setContentAlpha:(double)a3
{
  if (self->_contentAlpha != a3)
  {
    self->_contentAlpha = a3;
    v4 = [(NCNotificationListCell *)self notificationViewController];
    [v4 setContentAlpha:self->_contentAlpha];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setDisableDimming:(BOOL)a3
{
  if (self->_disableDimming != a3)
  {
    v4 = a3;
    self->_disableDimming = a3;
    v6 = [(NCNotificationListCell *)self notificationViewController];
    [v6 setDisableDimming:v4];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setHideDate:(BOOL)a3
{
  if (self->_hideDate != a3)
  {
    v4 = a3;
    self->_hideDate = a3;
    v6 = [(NCNotificationListCell *)self notificationViewController];
    [v6 setHideDate:v4];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setAllowContentToCrossFade:(BOOL)a3
{
  if (self->_allowContentToCrossFade != a3)
  {
    v4 = a3;
    self->_allowContentToCrossFade = a3;
    v6 = [(NCNotificationListCell *)self notificationViewController];
    [v6 setAllowContentToCrossFade:v4];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setDateAlpha:(double)a3
{
  if (self->_dateAlpha != a3)
  {
    self->_dateAlpha = a3;
    v5 = [(NCNotificationListCell *)self notificationViewController];
    [v5 setDateAlpha:a3];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setCompositeAlpha:(double)a3
{
  if (self->_compositeAlpha != a3)
  {
    self->_compositeAlpha = a3;
    v5 = [(NCNotificationListCell *)self notificationViewController];
    [v5 setCompositeAlpha:a3];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setContentTransform:(CGAffineTransform *)a3
{
  p_contentTransform = &self->_contentTransform;
  v6 = *&self->_contentTransform.c;
  *&t1.a = *&self->_contentTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_contentTransform.tx;
  v7 = *&a3->c;
  *&v12.a = *&a3->a;
  *&v12.c = v7;
  *&v12.tx = *&a3->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v12))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_contentTransform->c = *&a3->c;
    *&p_contentTransform->tx = v9;
    *&p_contentTransform->a = v8;
    v10 = [(NCNotificationListCell *)self notificationViewController];
    v11 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v11;
    *&t1.tx = *&a3->tx;
    [v10 setContentTransform:&t1];

    [(NCNotificationListCell *)self setNeedsLayout];
  }
}

- (void)setBackgroundHidden:(BOOL)a3
{
  if (self->_backgroundHidden != a3)
  {
    v4 = a3;
    self->_backgroundHidden = a3;
    v5 = [(NCNotificationListCell *)self notificationViewController];
    [v5 setBackgroundHidden:v4];
  }
}

- (BOOL)isContentUserInteractionEnabled
{
  v3 = [(NCNotificationListCell *)self notificationViewController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isInteractionEnabled];
  }

  else
  {
    v6 = [(NCNotificationListCell *)self contentViewController];
    v7 = [v6 view];
    v5 = [v7 isUserInteractionEnabled];
  }

  return v5;
}

- (void)addSubview:(id)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationListCell;
  [(NCNotificationListCell *)&v4 addSubview:a3];
  if (self->_debugView)
  {
    [(NCNotificationListCell *)self bringSubviewToFront:?];
  }
}

- (void)bringSubviewToFront:(id)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationListCell;
  v4 = a3;
  [(NCNotificationListCell *)&v6 bringSubviewToFront:v4];
  debugView = self->_debugView;

  if (debugView != v4)
  {
    [(NCNotificationListCell *)self bringSubviewToFront:debugView, v6.receiver, v6.super_class];
  }
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = NCNotificationListCell;
  [(NCNotificationListCell *)&v4 didMoveToSuperview];
  v3 = [(NCNotificationListCell *)self superview];

  if (v3)
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
  v3 = [(NCNotificationListCell *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 subviewDidLayout];
  }
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationListCell;
  [(NCNotificationListCell *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(NCNotificationListCell *)self _updateDebugViewFrame];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationListCell;
  [(NCNotificationListCell *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(NCNotificationListCell *)self _updateDebugViewFrame];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(NCNotificationListCell *)self contentViewController];
  v6 = [v5 view];
  [v6 sizeThatFits:{width, height}];
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
  v3 = [(NCNotificationListCell *)self notificationViewController];
  [v3 setNotificationContentViewHidden:0];
  [v3 _setNotificationRequest:0];
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
  v9 = [(NCNotificationListDimmable *)self->_contentViewController view];
  [v9 setFrame:{v7, v8, v4, v6}];
}

- (void)configureStackDimmingForTransform:(CGAffineTransform *)a3
{
  contentViewController = self->_contentViewController;
  if (contentViewController)
  {
    v4 = *&a3->c;
    v5[0] = *&a3->a;
    v5[1] = v4;
    v5[2] = *&a3->tx;
    [(NCNotificationListDimmable *)contentViewController configureStackDimmingForTransform:v5];
  }
}

- (void)setApparentZDistanceToUser:(int64_t)a3
{
  if (self->_apparentZDistanceToUser != a3)
  {
    self->_apparentZDistanceToUser = a3;
    [(NCNotificationListDimmable *)self->_contentViewController setApparentZDistanceToUser:?];
  }
}

- (void)setRootScrollVelocity:(double)a3
{
  if (self->_rootScrollVelocity != a3)
  {
    self->_rootScrollVelocity = a3;
    [(NCNotificationListDimmable *)self->_contentViewController setRootScrollVelocity:?];
  }
}

- (void)setGlassMode:(unint64_t)a3
{
  if (self->_glassMode != a3)
  {
    self->_glassMode = a3;
    [(NCNotificationListDimmable *)self->_contentViewController setGlassMode:?];
  }
}

- (void)setUnmanagedBackdropContrast:(BOOL)a3
{
  if (self->_unmanagedBackdropContrast != a3)
  {
    self->_unmanagedBackdropContrast = a3;
    [(NCNotificationListDimmable *)self->_contentViewController setUnmanagedBackdropContrast:?];
  }
}

- (void)setMaterialGroupNameBase:(id)a3
{
  objc_storeStrong(&self->_materialGroupNameBase, a3);
  v5 = a3;
  [(PLSwipeInteraction *)self->_swipeInteraction setMaterialGroupNameBase:v5];
}

- (BOOL)shouldContinuePresentingActionButtonsForSwipeInteraction:(id)a3
{
  v4 = [(NCNotificationListCell *)self actionProvider];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 shouldContinuePresentingActionButtonsForNotificationListCell:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)swipeInteraction:(id)a3 actionsToRevealFromLayoutLocation:(unint64_t)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = [(NCNotificationListCell *)self actionProvider];
  if (a4 == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 supplementaryActionsForNotificationListCell:self];
      goto LABEL_9;
    }
  }

  else if (!a4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v6 defaultActionForNotificationListCell:self];
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

- (BOOL)swipeInteraction:(id)a3 shouldRevealActionsFromLayoutLocation:(unint64_t)a4
{
  v6 = [(NCNotificationListCell *)self actionProvider];
  if (a4 == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 shouldShowSupplementaryActionsForNotificationListCell:self];
      goto LABEL_7;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (a4 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = [v6 shouldShowDefaultActionForNotificationListCell:self];
LABEL_7:
  v8 = v7;
LABEL_9:

  return v8;
}

- (int64_t)buttonsRecipeForSwipeInteraction:(id)a3
{
  v4 = [(NCNotificationListCell *)self _buttonCustomBackgroundColor];
  if (v4)
  {
    materialRecipe = 0;
  }

  else
  {
    materialRecipe = self->_materialRecipe;
  }

  return materialRecipe;
}

- (double)buttonsGlassLuminanceForSwipeInteraction:(id)a3
{
  v3 = [(NCNotificationListCell *)self traitCollection];
  [v3 glassLuminanceValue];
  v5 = v4;

  return v5;
}

- (void)swipeInteractionDidBeginHidingActions:(id)a3
{
  contentView = self->_contentView;
  v5 = a3;
  [(UIView *)contentView setUserInteractionEnabled:1];
  [(NCNotificationListCell *)self setContentUserInteractionEnabled:1];
  v6 = [(NCNotificationListCell *)self actionHandler];
  [v6 notificationListCell:self didBeginHidingActionsForSwipeInteraction:v5];
}

- (void)swipeInteractionDidBeginRevealingActions:(id)a3
{
  contentViewController = self->_contentViewController;
  v5 = a3;
  [(NCNotificationListDimmable *)contentViewController removeLightEffectsIfNeeded];
  [(UIView *)self->_contentView setUserInteractionEnabled:0];
  [(NCNotificationListCell *)self setContentUserInteractionEnabled:0];
  v6 = [(NCNotificationListCell *)self actionHandler];
  [v6 notificationListCell:self didBeginRevealingActionsForSwipeInteraction:v5];
}

- (void)swipeInteractionDidSignificantUserInteraction:(id)a3
{
  v4 = [(NCNotificationListCell *)self actionHandler];
  [v4 notificationListCellDidSignificantUserInteraction:self];
}

- (void)swipeInteraction:(id)a3 didMoveToNewXPosition:(double)a4
{
  v6 = [(NCNotificationListCell *)self actionHandler];
  [v6 notificationListCell:self didMoveToNewXPosition:a4];
  if (a4 == 0.0)
  {
    [(NCNotificationListCell *)self _resetClipping];
  }

  else
  {
    [(NCNotificationListCell *)self _configureClippingIfNecessary];
  }

  [(NCNotificationListCell *)self setSupportsMitosis:a4 != 0.0];
}

- (BOOL)shouldVerticallyStackButtonsForSwipeInteraction:(id)a3
{
  v4 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(v4);

  v6 = [(NCNotificationListCell *)self actionProvider];
  v7 = v6;
  if ((IsAX & 1) == 0 && v6)
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

- (CGSize)sizeThatFits:(CGSize)a3 withTraits:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(NCNotificationListCell *)self contentViewController];
  v9 = [v8 view];
  v10 = NCSizeThatFits(v9, v7, width, height);
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
  v3 = [(NCNotificationListCell *)self layer];
  [v3 setMaskedCorners:15];

  [(NCNotificationListCell *)self _setContinuousCornerRadius:23.5];

  [(NCNotificationListCell *)self setClipsToBounds:1];
}

- (void)_resetClipping
{
  v3 = [(NCNotificationListCell *)self layer];
  [v3 setMaskedCorners:0];

  [(NCNotificationListCell *)self setClipsToBounds:0];
}

- (BOOL)_shouldPerformClipping
{
  v3 = [(NCNotificationListCell *)self traitCollection];
  v4 = _NCShouldPlatterClipped();

  if (!v4)
  {
    return 0;
  }

  return [(NCNotificationListCell *)self _actionHandlerAllowsPerformingClipping];
}

- (BOOL)_actionHandlerAllowsPerformingClipping
{
  v3 = [(NCNotificationListCell *)self actionHandler];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shouldPerformClippingForNotificationListCell:self];
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
  v2 = [(NCNotificationListCell *)self notificationViewController];
  v3 = [v2 _lookView];

  if ([v3 conformsToProtocol:&unk_2830310E0])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 customPlatterBackgroundView];
  v6 = [v5 backgroundColor];

  return v6;
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