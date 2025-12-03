@interface NCClickInteractionPresenter
- (BOOL)clickInteractionShouldBegin:(id)begin;
- (BOOL)dismissModalFullScreenIfNeeded;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGRect)_finalPresentedViewFrame;
- (CGRect)_initialPresentedViewFrame;
- (CGRect)sourceViewVisibleRect;
- (NCClickInteractionPresenter)initWithTitle:(id)title sourceView:(id)view materialRecipe:(int64_t)recipe;
- (NCClickInteractionPresenterDelegate)delegate;
- (NCTouchEaterGestureRecognizer)_touchEater;
- (UIView)sourceView;
- (double)_frictionForTransitionPresentation:(BOOL)presentation cancelled:(BOOL)cancelled;
- (double)_tensionForTransitionPresentation:(BOOL)presentation cancelled:(BOOL)cancelled;
- (id)highlightEffectForClickInteraction:(id)interaction;
- (void)_animatePresentation:(BOOL)presentation cancelled:(BOOL)cancelled completion:(id)completion;
- (void)_configureBackgroundMaterialViewIfNecessary;
- (void)_configureContainerViewIfNecessary;
- (void)_configurePortalViewIfNecessary;
- (void)_configurePresentedControlIfNecessaryWithTitle:(id)title;
- (void)_handleEatenTouch:(id)touch;
- (void)_performCancel;
- (void)_performPresentation;
- (void)_setUpBackgroundMaterialView;
- (void)_setUpContainerView;
- (void)_setUpPortalView;
- (void)_setUpPresentationIfNecessary;
- (void)_setUpPresentedControl;
- (void)_setUpSubviews;
- (void)_tearDown;
- (void)clickInteractionDidEnd:(id)end;
- (void)dealloc;
- (void)presentModalFullScreen;
- (void)setOverrideUserInterfaceStyle:(int64_t)style;
@end

@implementation NCClickInteractionPresenter

- (NCClickInteractionPresenter)initWithTitle:(id)title sourceView:(id)view materialRecipe:(int64_t)recipe
{
  titleCopy = title;
  viewCopy = view;
  v19.receiver = self;
  v19.super_class = NCClickInteractionPresenter;
  v10 = [(NCClickInteractionPresenter *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_sourceView, viewCopy);
    [viewCopy bounds];
    v11->_sourceViewVisibleRect.origin.x = v12;
    v11->_sourceViewVisibleRect.origin.y = v13;
    v11->_sourceViewVisibleRect.size.width = v14;
    v11->_sourceViewVisibleRect.size.height = v15;
    v16 = objc_alloc_init(MEMORY[0x277D75E30]);
    clickInteraction = v11->_clickInteraction;
    v11->_clickInteraction = v16;

    [(_UIClickInteraction *)v11->_clickInteraction setDelegate:v11];
    [viewCopy addInteraction:v11->_clickInteraction];
    v11->_materialRecipe = recipe;
    [(NCClickInteractionPresenter *)v11 _configurePresentedControlIfNecessaryWithTitle:titleCopy];
  }

  return v11;
}

- (void)dealloc
{
  [(NCClickInteractionPresenter *)self _tearDown];
  v3.receiver = self;
  v3.super_class = NCClickInteractionPresenter;
  [(NCClickInteractionPresenter *)&v3 dealloc];
}

- (void)setOverrideUserInterfaceStyle:(int64_t)style
{
  if (self->_overrideUserInterfaceStyle != style)
  {
    self->_overrideUserInterfaceStyle = style;
    [(NCClickInteractionPresentedControl *)self->_presentedControl _setOverrideUserInterfaceStyle:?];
  }
}

- (BOOL)dismissModalFullScreenIfNeeded
{
  if (self->_presented)
  {
    [(NCClickInteractionPresenter *)self _performCancel];
    return 1;
  }

  if (self->_hinting)
  {
    [(_UIClickInteraction *)self->_clickInteraction cancelInteraction];
    return 1;
  }

  return 0;
}

- (void)presentModalFullScreen
{
  [(NCClickInteractionPresenter *)self _setUpPresentationIfNecessary];

  [(NCClickInteractionPresenter *)self _performPresentation];
}

- (BOOL)clickInteractionShouldBegin:(id)begin
{
  beginCopy = begin;
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);
  [beginCopy locationInCoordinateSpace:WeakRetained];
  v7 = v6;
  v9 = v8;

  v11.x = v7;
  v11.y = v9;
  LODWORD(beginCopy) = CGRectContainsPoint(self->_sourceViewVisibleRect, v11);

  if (beginCopy)
  {
    [(NCClickInteractionPresenter *)self _setUpPresentationIfNecessary];
  }

  return self->_hinting;
}

- (id)highlightEffectForClickInteraction:(id)interaction
{
  interactionCopy = interaction;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D76150]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__NCClickInteractionPresenter_highlightEffectForClickInteraction___block_invoke;
  v8[3] = &unk_278372980;
  objc_copyWeak(&v9, &location);
  v6 = [v5 initWithProgressBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __66__NCClickInteractionPresenter_highlightEffectForClickInteraction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 progress];
  v6 = v5;

  v27 = v6 * -0.25 / 1.5 + 1.0;
  v7 = [WeakRetained _portalView];
  [v7 bounds];
  v9 = v8;
  v23 = v10;
  v24 = v8;
  v11 = v10;
  v13 = v12;
  rect = v12;
  v26 = v14;
  [WeakRetained sourceViewVisibleRect];
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  memset(&v32, 0, sizeof(v32));
  MidX = CGRectGetMidX(v33);
  v34.origin.x = v9;
  v34.origin.y = v11;
  v34.size.width = v13;
  v34.size.height = v26;
  tx = (1.0 - v27) * (MidX - CGRectGetMidX(v34));
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MidY = CGRectGetMidY(v35);
  v36.origin.y = v23;
  v36.origin.x = v24;
  v36.size.width = rect;
  v36.size.height = v26;
  v21 = CGRectGetMidY(v36);
  CGAffineTransformMakeTranslation(&v32, tx, (1.0 - v27) * (MidY - v21));
  memset(&v31, 0, sizeof(v31));
  CGAffineTransformMakeScale(&v31, v27, v27);
  t1 = v32;
  memset(&v30, 0, sizeof(v30));
  t2 = v31;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1 = v30;
  [v7 setTransform:&t1];
}

- (void)clickInteractionDidEnd:(id)end
{
  [(UIView *)self->_portalView removeFromSuperview];
  portalView = self->_portalView;
  self->_portalView = 0;

  if (self->_hinting)
  {

    [(NCClickInteractionPresenter *)self _performCancel];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_touchEater);

  if (WeakRetained == recognizerCopy)
  {
    presentedControl = self->_presentedControl;
    [touchCopy locationInView:presentedControl];
    v9 = [(NCClickInteractionPresentedControl *)presentedControl pointInside:0 withEvent:?]^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)_setUpPresentationIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || [WeakRetained clickInteractionPresenterShouldBegin:self])
  {
    [(NCClickInteractionPresenter *)self _setUpSubviews];
    [(NCClickInteractionPresentedControl *)self->_presentedControl setUserInteractionEnabled:1];
    self->_hinting = 1;
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained clickInteractionPresenterDidBeginInteraction:self];
    }
  }
}

- (void)_configureContainerViewIfNecessary
{
  if (!self->_containerView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    containerView = self->_containerView;
    self->_containerView = v4;

    [(UIView *)self->_containerView setAutoresizesSubviews:1];
    [(UIView *)self->_containerView setAutoresizingMask:18];
    layer = [(UIView *)self->_containerView layer];
    [layer setHitTestsAsOpaque:1];

    obj = [[NCTouchEaterGestureRecognizer alloc] initWithTarget:self action:sel__handleEatenTouch_];
    [(UIView *)self->_containerView addGestureRecognizer:obj];
    [(NCTouchEaterGestureRecognizer *)obj setDelegate:self];
    objc_storeWeak(&self->_touchEater, obj);
  }
}

- (void)_setUpContainerView
{
  [(NCClickInteractionPresenter *)self _configureContainerViewIfNecessary];
  superview = [(UIView *)self->_containerView superview];

  if (!superview)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained containerViewForClickInteractionPresenter:self], (window = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = objc_loadWeakRetained(&self->_sourceView);
      window = [v6 window];
    }

    [window addSubview:self->_containerView];
  }

  containerView = self->_containerView;
  superview2 = [(UIView *)containerView superview];
  [superview2 bounds];
  [(UIView *)containerView setFrame:?];

  v9 = objc_loadWeakRetained(&self->_touchEater);
  [v9 setEnabled:1];
}

- (void)_configureBackgroundMaterialViewIfNecessary
{
  if (!self->_backgroundMaterialView)
  {
    v4 = [MEMORY[0x277D26718] materialViewWithRecipe:6 options:0 initialWeighting:0.0];
    backgroundMaterialView = self->_backgroundMaterialView;
    self->_backgroundMaterialView = v4;

    [(MTMaterialView *)self->_backgroundMaterialView setAutoresizingMask:18];
    [(MTMaterialView *)self->_backgroundMaterialView setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:1];
    v6 = self->_backgroundMaterialView;
    [(UIView *)self->_containerView bounds];

    [(MTMaterialView *)v6 setFrame:?];
  }
}

- (void)_setUpBackgroundMaterialView
{
  [(NCClickInteractionPresenter *)self _configureBackgroundMaterialViewIfNecessary];
  [(UIView *)self->_containerView insertSubview:self->_backgroundMaterialView atIndex:0];
  [(MTMaterialView *)self->_backgroundMaterialView setWeighting:0.0];
  backgroundMaterialView = self->_backgroundMaterialView;

  [(MTMaterialView *)backgroundMaterialView setHidden:1];
}

- (void)_configurePortalViewIfNecessary
{
  if (!self->_portalView)
  {
    v4 = [NCClickInteractionPortalView alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sourceView);
    v6 = [(NCClickInteractionPortalView *)v4 initWithSourceView:WeakRetained];
    portalView = self->_portalView;
    self->_portalView = v6;

    [(NCClickInteractionPresenter *)self _configureContainerViewIfNecessary];
    containerView = self->_containerView;
    v9 = self->_portalView;

    [(UIView *)containerView addSubview:v9];
  }
}

- (void)_setUpPortalView
{
  [(NCClickInteractionPresenter *)self _configurePortalViewIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);
  [WeakRetained frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  containerView = self->_containerView;
  superview = [WeakRetained superview];
  [superview convertRect:0 toView:{v4, v6, v8, v10}];
  [(UIView *)containerView convertRect:0 fromView:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [(UIView *)self->_portalView setFrame:v14, v16, v18, v20];
}

- (void)_configurePresentedControlIfNecessaryWithTitle:(id)title
{
  if (!self->_presentedControl)
  {
    titleCopy = title;
    v6 = [[NCClickInteractionPresentedControl alloc] initWithTitle:titleCopy materialRecipe:self->_materialRecipe];

    presentedControl = self->_presentedControl;
    self->_presentedControl = v6;

    [(NCClickInteractionPresentedControl *)self->_presentedControl _setOverrideUserInterfaceStyle:[(NCClickInteractionPresenter *)self overrideUserInterfaceStyle]];
    WeakRetained = objc_loadWeakRetained(&self->_sourceView);
    if (objc_opt_respondsToSelector())
    {
      adjustsFontForContentSizeCategory = [WeakRetained adjustsFontForContentSizeCategory];
    }

    else
    {
      adjustsFontForContentSizeCategory = 0;
    }

    [(NCClickInteractionPresentedControl *)self->_presentedControl setAdjustsFontForContentSizeCategory:adjustsFontForContentSizeCategory];
  }
}

- (void)_setUpPresentedControl
{
  presentedControl = self->_presentedControl;
  if (presentedControl)
  {
    v4 = presentedControl;
    v5 = MEMORY[0x277D75D18];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __53__NCClickInteractionPresenter__setUpPresentedControl__block_invoke;
    v10 = &unk_27836F560;
    selfCopy = self;
    v12 = v4;
    v6 = v4;
    [v5 performWithoutAnimation:&v7];
    [(UIView *)self->_containerView addSubview:self->_presentedControl, v7, v8, v9, v10, selfCopy];
  }
}

uint64_t __53__NCClickInteractionPresenter__setUpPresentedControl__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _initialPresentedViewFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(a1 + 40) setFrame:?];
  v13.origin.x = v3;
  v13.origin.y = v5;
  v13.size.width = v7;
  v13.size.height = v9;
  [*(a1 + 40) _setCornerRadius:CGRectGetHeight(v13) * 0.5];
  [*(a1 + 40) layoutIfNeeded];
  v10 = *(a1 + 40);

  return [v10 setAlpha:0.0];
}

- (void)_setUpSubviews
{
  [(NCClickInteractionPresenter *)self _setUpContainerView];
  [(NCClickInteractionPresenter *)self _setUpPortalView];
  [(NCClickInteractionPresenter *)self _setUpBackgroundMaterialView];

  [(NCClickInteractionPresenter *)self _setUpPresentedControl];
}

- (CGRect)_initialPresentedViewFrame
{
  [(NCClickInteractionPresenter *)self _setUpContainerView];
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);
  superview = [WeakRetained superview];
  [WeakRetained convertRect:superview toView:{self->_sourceViewVisibleRect.origin.x, self->_sourceViewVisibleRect.origin.y, self->_sourceViewVisibleRect.size.width, self->_sourceViewVisibleRect.size.height}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  superview2 = [WeakRetained superview];
  [superview2 convertRect:self->_containerView toView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)_finalPresentedViewFrame
{
  [(NCClickInteractionPresenter *)self _configureContainerViewIfNecessary];
  [(NCClickInteractionPresenter *)self _initialPresentedViewFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_containerView bounds];
  v33 = CGRectInset(v32, 8.0, 8.0);
  y = v33.origin.y;
  x = v33.origin.x;
  height = v33.size.height;
  width = v33.size.width;
  [(NCClickInteractionPresentedControl *)self->_presentedControl sizeThatFits:v33.size.width, v33.size.height];
  BSRectWithSize();
  v11 = v6;
  v12 = v8;
  v13 = v10;
  UIRectCenteredYInRect();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (([(UIView *)self->_containerView _shouldReverseLayoutDirection]& 1) == 0)
  {
    v34.origin.x = v4;
    v34.origin.y = v11;
    v34.size.width = v12;
    v34.size.height = v13;
    MaxX = CGRectGetMaxX(v34);
    v35.origin.x = v15;
    v35.origin.y = v17;
    v35.size.width = v19;
    v35.size.height = v21;
    v15 = MaxX - CGRectGetWidth(v35);
  }

  NCRectConfinedToRect(v15, v17, v19, v21, x, y, width, height);
  _NCMainScreenScale();

  UIRectIntegralWithScale();
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (double)_tensionForTransitionPresentation:(BOOL)presentation cancelled:(BOOL)cancelled
{
  result = 500.0;
  if (cancelled)
  {
    return 2000.0;
  }

  return result;
}

- (double)_frictionForTransitionPresentation:(BOOL)presentation cancelled:(BOOL)cancelled
{
  if (cancelled)
  {
    [(NCClickInteractionPresenter *)self _tensionForTransitionPresentation:presentation cancelled:1];

    return NCFrictionForCriticallyDampedSpringWithTension(v4);
  }

  else
  {
    result = 18.0;
    if (presentation)
    {
      return 26.0;
    }
  }

  return result;
}

- (void)_animatePresentation:(BOOL)presentation cancelled:(BOOL)cancelled completion:(id)completion
{
  cancelledCopy = cancelled;
  presentationCopy = presentation;
  completionCopy = completion;
  if (presentationCopy)
  {
    [(NCClickInteractionPresenter *)self _finalPresentedViewFrame];
  }

  else
  {
    [(NCClickInteractionPresenter *)self _initialPresentedViewFrame];
  }

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  objc_initWeak(&location, self);
  v17 = MEMORY[0x277D75D18];
  [(NCClickInteractionPresenter *)self _tensionForTransitionPresentation:presentationCopy cancelled:cancelledCopy];
  v19 = v18;
  [(NCClickInteractionPresenter *)self _frictionForTransitionPresentation:presentationCopy cancelled:cancelledCopy];
  v21 = v20;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __73__NCClickInteractionPresenter__animatePresentation_cancelled_completion___block_invoke;
  v27[3] = &unk_2783729A8;
  objc_copyWeak(v28, &location);
  v29 = presentationCopy;
  v28[1] = v13;
  v28[2] = v14;
  v28[3] = v15;
  v28[4] = v16;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __73__NCClickInteractionPresenter__animatePresentation_cancelled_completion___block_invoke_2;
  v23[3] = &unk_2783729D0;
  v26 = presentationCopy;
  objc_copyWeak(&v25, &location);
  v22 = completionCopy;
  v24 = v22;
  [v17 _animateUsingSpringWithTension:cancelledCopy ^ 1 friction:v27 interactive:v23 animations:v19 completion:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
}

void __73__NCClickInteractionPresenter__animatePresentation_cancelled_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _backgroundMaterialView];
  [v2 setHidden:0];

  v3 = [WeakRetained _backgroundMaterialView];
  v4 = v3;
  v5 = 0.0;
  if (*(a1 + 72))
  {
    v5 = 1.0;
  }

  [v3 setWeighting:v5];

  v6 = [WeakRetained _presentedControl];
  [v6 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  v7 = *(a1 + 72);
  v8 = [WeakRetained _presentedControl];
  v9 = v8;
  if (v7 == 1)
  {
    [v8 _setContinuousCornerRadius:13.0];
  }

  else
  {
    [v8 _setCornerRadius:CGRectGetHeight(*(a1 + 40)) * 0.5];
  }

  v10 = [WeakRetained _presentedControl];
  v11 = v10;
  v12 = 0.0;
  if (*(a1 + 72))
  {
    v12 = 1.0;
  }

  [v10 setAlpha:v12];

  v13 = [WeakRetained _presentedControl];
  [v13 layoutIfNeeded];

  if (*(a1 + 72) == 1)
  {
    v14 = *MEMORY[0x277D76620];
    v15 = [WeakRetained sourceView];
    v16 = [v15 window];
    v17 = [v16 _eventRoutingScene];
    [v14 _cancelAllEventsOfType:0 onEventRoutingScene:v17];
  }
}

uint64_t __73__NCClickInteractionPresenter__animatePresentation_cancelled_completion___block_invoke_2(uint64_t a1, int a2)
{
  if (*(a1 + 48) == 1 && a2 != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 clickInteractionPresenterDidPresent:WeakRetained];
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)_performPresentation
{
  self->_hinting = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained clickInteractionPresenterDidCommitToPresentation:self];
  }

  self->_presented = 1;
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__NCClickInteractionPresenter__performPresentation__block_invoke;
  v4[3] = &unk_278371308;
  objc_copyWeak(&v5, &location);
  [(NCClickInteractionPresenter *)self _animatePresentation:1 cancelled:0 completion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __51__NCClickInteractionPresenter__performPresentation__block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setPresented:a2];
  if ((a2 & 1) == 0 && (a3 & 1) == 0)
  {
    [WeakRetained _performCancel];
  }
}

- (void)_performCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_touchEater);
  [WeakRetained setEnabled:0];

  [(NCClickInteractionPresentedControl *)self->_presentedControl setUserInteractionEnabled:0];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__NCClickInteractionPresenter__performCancel__block_invoke;
  v4[3] = &unk_278371308;
  objc_copyWeak(&v5, &location);
  [(NCClickInteractionPresenter *)self _animatePresentation:0 cancelled:1 completion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __45__NCClickInteractionPresenter__performCancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tearDown];
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 clickInteractionPresenterDidDismiss:WeakRetained];
  }
}

- (void)_tearDown
{
  *&self->_presented = 0;
  [(UIView *)self->_containerView removeFromSuperview];
  containerView = self->_containerView;
  self->_containerView = 0;

  backgroundMaterialView = self->_backgroundMaterialView;
  self->_backgroundMaterialView = 0;

  portalView = self->_portalView;
  self->_portalView = 0;
}

- (void)_handleEatenTouch:(id)touch
{
  if ([touch state] == 3)
  {

    [(NCClickInteractionPresenter *)self dismissModalFullScreenIfNeeded];
  }
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (CGRect)sourceViewVisibleRect
{
  x = self->_sourceViewVisibleRect.origin.x;
  y = self->_sourceViewVisibleRect.origin.y;
  width = self->_sourceViewVisibleRect.size.width;
  height = self->_sourceViewVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NCClickInteractionPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NCTouchEaterGestureRecognizer)_touchEater
{
  WeakRetained = objc_loadWeakRetained(&self->_touchEater);

  return WeakRetained;
}

@end