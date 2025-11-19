@interface SUOverlayViewController
+ (CGSize)defaultOverlaySize;
- (BOOL)_isControllerLoaded:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)shouldExcludeFromNavigationHistory;
- (CGSize)overlaySize;
- (SUOverlayViewController)initWithOverlayConfiguration:(id)a3;
- (id)_activeViewController;
- (id)_flipTransition;
- (id)_subviewContainerView;
- (id)copyArchivableContext;
- (void)_applyDisplayProperties;
- (void)_applyOverlayConfiguration:(id)a3;
- (void)_enqueueAction:(id)a3;
- (void)_finishFlipAction:(id)a3;
- (void)_overlayActionDidFinish;
- (void)_overlayAnimationDidFinish;
- (void)_performFlipAction:(id)a3;
- (void)_performFlipTransitionAction:(id)a3;
- (void)_performNextAction;
- (void)_setActiveViewController:(id)a3 updateInterface:(BOOL)a4;
- (void)_setShadowVisible:(BOOL)a3;
- (void)_tearDownTouchCaptureView;
- (void)_touchCaptureAction:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)flipWithTransition:(id)a3;
- (void)imagePageViewTapped:(id)a3;
- (void)invalidateForMemoryPurge;
- (void)loadView;
- (void)restoreArchivableContext:(id)a3;
- (void)setBackViewController:(id)a3;
- (void)setFrontViewController:(id)a3;
- (void)setMaskProvider:(id)a3;
- (void)setOverlaySize:(CGSize)a3;
- (void)setScriptWindowContext:(id)a3;
- (void)storePage:(id)a3 finishedWithSuccess:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDismissWithTransition:(id)a3;
@end

@implementation SUOverlayViewController

- (SUOverlayViewController)initWithOverlayConfiguration:(id)a3
{
  v8.receiver = self;
  v8.super_class = SUOverlayViewController;
  v4 = [(SUViewController *)&v8 init];
  if (v4)
  {
    v4->_scriptWindowContext = objc_alloc_init(SUScriptWindowContext);
    v4->_canSwipeToDismiss = 1;
    [objc_opt_class() defaultOverlaySize];
    v4->_overlaySize.width = v5;
    v4->_overlaySize.height = v6;
    v4->_shadowOpacity = 0.670000017;
    v4->_shadowRadius = 15.0;
    if (a3)
    {
      [(SUOverlayViewController *)v4 _applyOverlayConfiguration:a3];
    }
  }

  return v4;
}

- (void)dealloc
{
  [(SUOverlayViewController *)self _setActiveViewController:0 updateInterface:0];
  [(SUOverlayViewController *)self _tearDownTouchCaptureView];

  v3.receiver = self;
  v3.super_class = SUOverlayViewController;
  [(SUViewController *)&v3 dealloc];
}

+ (CGSize)defaultOverlaySize
{
  v2 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  v3 = 256.0;
  if (v2 == 1)
  {
    v3 = 650.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)flipWithTransition:(id)a3
{
  v6 = objc_alloc_init(SUOverlayAction);
  [(SUOverlayAction *)v6 setActionType:3];
  [(SUOverlayAction *)v6 setTransition:a3];
  [(SUOverlayAction *)v6 setViewController:[(SUOverlayViewController *)self _activeViewController]];
  lastFlipTransition = self->_lastFlipTransition;
  if (lastFlipTransition != a3)
  {

    self->_lastFlipTransition = [a3 copy];
  }

  [(SUOverlayViewController *)self _enqueueAction:v6];
}

- (void)setBackViewController:(id)a3
{
  backViewController = self->_backViewController;
  if (backViewController != a3)
  {
    activeViewController = self->_activeViewController;
    if (activeViewController)
    {
      v7 = activeViewController == backViewController;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [(SUOverlayViewController *)self _setActiveViewController:a3 updateInterface:1];
      backViewController = self->_backViewController;
    }

    self->_backViewController = a3;
  }
}

- (void)setFrontViewController:(id)a3
{
  frontViewController = self->_frontViewController;
  if (frontViewController != a3)
  {
    activeViewController = self->_activeViewController;
    if (activeViewController)
    {
      v7 = activeViewController == frontViewController;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [(SUOverlayViewController *)self _setActiveViewController:a3 updateInterface:1];
      frontViewController = self->_frontViewController;
    }

    self->_frontViewController = a3;
  }
}

- (void)setMaskProvider:(id)a3
{
  [-[SUOverlayViewController _subviewContainerView](self "_subviewContainerView")];

  [(SUOverlayViewController *)self _applyDisplayProperties];
}

- (void)setOverlaySize:(CGSize)a3
{
  if (self->_overlaySize.width != a3.width || self->_overlaySize.height != a3.height)
  {
    self->_overlaySize = a3;
    [-[UIViewController overlayBackgroundViewController](self "overlayBackgroundViewController")];

    [(SUOverlayViewController *)self _applyDisplayProperties];
  }
}

- (void)setScriptWindowContext:(id)a3
{
  if (self->_scriptWindowContext != a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      self->_scriptWindowContext = a3;
    }
  }
}

- (void)viewWillDismissWithTransition:(id)a3
{
  if ([a3 type] == 1)
  {

    [(SUOverlayViewController *)self _setShadowVisible:0];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v9.receiver = self;
  v9.super_class = SUOverlayViewController;
  v6 = [(SUViewController *)&v9 canPerformAction:a3 withSender:a4];
  if (v6)
  {
    if (sel_isEqual(a3, sel_storePage_finishedWithSuccess_))
    {
      state = self->_state;
      if ((state & 6) != 0)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        LOBYTE(v6) = state & 1;
      }
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (id)copyArchivableContext
{
  v9.receiver = self;
  v9.super_class = SUOverlayViewController;
  v3 = [(SUViewController *)&v9 copyArchivableContext];
  [v3 setType:3];
  if (![(SUOverlayViewController *)self shouldExcludeFromNavigationHistory])
  {
    v4 = [(UIViewController *)self->_backViewController copyArchivableContext];
    v5 = v4;
    if (v4 && [v4 type])
    {
      [v3 setValue:v5 forMetadataKey:@"back"];
    }

    v6 = [(UIViewController *)self->_frontViewController copyArchivableContext];
    v7 = v6;
    if (v6 && [v6 type])
    {
      [v3 setValue:v7 forMetadataKey:@"front"];
    }

    [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forMetadataKey:{"numberWithBool:", self->_activeViewController == self->_frontViewController), @"on-front"}];
    [v3 setValue:-[SUOverlayViewController presentationTransition](self forMetadataKey:{"presentationTransition"), @"presentation"}];
  }

  return v3;
}

- (void)invalidateForMemoryPurge
{
  if (![(SUViewController *)self isVisible]&& [(SUOverlayTransition *)self->_presentationTransition type]== 1)
  {
    [(SUOverlayTransition *)self->_presentationTransition setSourceElement:0];
    [(SUOverlayTransition *)self->_presentationTransition setType:2];
  }

  v3.receiver = self;
  v3.super_class = SUOverlayViewController;
  [(SUViewController *)&v3 invalidateForMemoryPurge];
}

- (void)loadView
{
  v3 = [-[SUOverlayViewController _activeViewController](self "_activeViewController")];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v6, v8, v10}];
  [v12 setAutoresizingMask:18];
  v13 = [(SUOverlayViewController *)self _subviewContainerView];
  [v13 setFrame:{v5, v7, v9, v11}];
  [v12 addSubview:v13];
  [(SUOverlayViewController *)self setView:v12];

  [v3 setFrame:{v5, v7, v9, v11}];
  [v13 addSubview:v3];
  [(SUOverlayViewController *)self _setShadowVisible:0];

  [(SUOverlayViewController *)self _applyDisplayProperties];
}

- (void)restoreArchivableContext:(id)a3
{
  v5 = [a3 valueForMetadataKey:@"back"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 copyViewController];
    [(SUOverlayViewController *)self setBackViewController:v6];
  }

  v7 = [a3 valueForMetadataKey:@"front"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 copyViewController];
    [(SUOverlayViewController *)self setFrontViewController:v8];
  }

  v9 = [a3 valueForMetadataKey:@"presentation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUOverlayViewController *)self setPresentationTransition:v9];
  }

  backViewController = self->_backViewController;
  v11 = [a3 valueForMetadataKey:@"on-front"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v11 BOOLValue])
  {
    backViewController = self->_frontViewController;
  }

  [(SUOverlayViewController *)self _setActiveViewController:backViewController updateInterface:1];
  v12.receiver = self;
  v12.super_class = SUOverlayViewController;
  [(SUViewController *)&v12 restoreArchivableContext:a3];
}

- (BOOL)shouldExcludeFromNavigationHistory
{
  v9.receiver = self;
  v9.super_class = SUOverlayViewController;
  v3 = [(SUViewController *)&v9 shouldExcludeFromNavigationHistory];
  v4 = objc_opt_respondsToSelector();
  v5 = v4 | v3;
  if ((v4 & 1) != 0 && (v3 & 1) == 0)
  {
    v5 = [(UIViewController *)self->_backViewController shouldExcludeFromNavigationHistory];
  }

  v6 = objc_opt_respondsToSelector();
  v7 = v6 | v5;
  if ((v6 & 1) != 0 && (v5 & 1) == 0)
  {
    v7 = [(UIViewController *)self->_frontViewController shouldExcludeFromNavigationHistory];
  }

  return v7 & 1;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(SUOverlayViewController *)self _setShadowVisible:1];
  v5.receiver = self;
  v5.super_class = SUOverlayViewController;
  [(SUViewController *)&v5 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if ([(SUOverlayViewController *)self isViewLoaded])
  {
    subviewContainerView = self->_subviewContainerView;
  }

  else
  {
    subviewContainerView = 0;
  }

  if ([(SUMaskedView *)subviewContainerView window])
  {
    v6 = objc_alloc_init(SUTouchCaptureView);
    self->_touchCaptureView = v6;
    [(SUTouchCaptureView *)v6 addTarget:self action:sel__touchCaptureAction_ forControlEvents:64];
    [(SUTouchCaptureView *)self->_touchCaptureView setAutoresizingMask:18];
    touchCaptureView = self->_touchCaptureView;
    [(SUMaskedView *)subviewContainerView bounds];
    [(SUTouchCaptureView *)touchCaptureView setFrame:?];
    [(SUMaskedView *)subviewContainerView addSubview:self->_touchCaptureView];
  }

  v8.receiver = self;
  v8.super_class = SUOverlayViewController;
  [(SUViewController *)&v8 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(SUOverlayViewController *)self _activeViewController];
  [(SUOverlayViewController *)self _tearDownTouchCaptureView];
  v5.receiver = self;
  v5.super_class = SUOverlayViewController;
  [(SUViewController *)&v5 viewWillAppear:v3];
}

- (void)imagePageViewTapped:(id)a3
{
  v4 = [(SUOverlayViewController *)self _flipTransition];

  [(SUOverlayViewController *)self flipWithTransition:v4];
}

- (void)storePage:(id)a3 finishedWithSuccess:(BOOL)a4
{
  v4 = a4;
  if ([a3 isDescendantOfViewController:self->_backViewController])
  {
    v7 = self->_state & 0xFFFFFFFFFFFFFFFDLL;
    v8 = 2;
  }

  else
  {
    v9 = [a3 isDescendantOfViewController:self->_frontViewController];
    state = self->_state;
    if (!v9)
    {
      goto LABEL_8;
    }

    v7 = state & 0xFFFFFFFFFFFFFFFBLL;
    v8 = 4;
  }

  if (v4)
  {
    v8 = 0;
  }

  state = v7 | v8;
  self->_state = state;
LABEL_8:
  self->_state = state & 0xFFFFFFFFFFFFFFFELL;
  if (!v4)
  {
    v11 = [(SUOverlayViewController *)self _flipTransition];

    [(SUOverlayViewController *)self flipWithTransition:v11];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  [(SUOverlayViewController *)self _overlayAnimationDidFinish:a3];
  v4 = [MEMORY[0x1E69DC668] sharedApplication];

  [v4 endIgnoringInteractionEvents];
}

- (void)_touchCaptureAction:(id)a3
{
  v4 = [MEMORY[0x1E69DC668] sharedApplication];

  [v4 sendAction:sel_overlayPageViewTapped_ to:0 from:self forEvent:0];
}

- (void)_enqueueAction:(id)a3
{
  actionQueue = self->_actionQueue;
  if (!actionQueue)
  {
    actionQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_actionQueue = actionQueue;
  }

  [(NSMutableArray *)actionQueue addObject:a3];
  if ([(NSMutableArray *)self->_actionQueue count]== 1)
  {

    [(SUOverlayViewController *)self _performNextAction];
  }
}

- (void)_finishFlipAction:(id)a3
{
  v5 = [a3 viewController];
  backViewController = self->_backViewController;
  if (v5 == backViewController)
  {
    backViewController = self->_frontViewController;
  }

  v7 = [objc_msgSend(a3 "transition")];
  if ([(SUOverlayViewController *)self isViewLoaded])
  {
    v8 = v7 == 1;
    [(UIViewController *)v5 viewDidDisappear:v8];
    [(UIViewController *)backViewController viewDidAppear:v8];
    if (self->_touchCaptureView)
    {
      [(SUMaskedView *)self->_subviewContainerView bringSubviewToFront:?];
    }

    [(SUOverlayViewController *)self _setShadowVisible:1];
  }

  v9 = [MEMORY[0x1E696AD88] defaultCenter];

  [v9 postNotificationName:@"SUOverlayDidFlipNotification" object:self];
}

- (void)_overlayActionDidFinish
{
  v3 = [(NSMutableArray *)self->_actionQueue objectAtIndex:0];
  if ([v3 actionType] == 3)
  {
    [(SUOverlayViewController *)self _finishFlipAction:v3];
  }

  [(NSMutableArray *)self->_actionQueue removeObjectAtIndex:0];

  [(SUOverlayViewController *)self _performNextAction];
}

- (void)_overlayAnimationDidFinish
{
  v3 = [(NSMutableArray *)self->_actionQueue objectAtIndex:0];
  v4 = [v3 animationCount];
  v5 = v4 - 1;
  if (v4 >= 1)
  {
    [v3 setAnimationCount:v5];
    v4 = v5;
  }

  if (!v4)
  {

    [(SUOverlayViewController *)self _overlayActionDidFinish];
  }
}

- (void)_performFlipAction:(id)a3
{
  v5 = [a3 viewController];
  frontViewController = self->_frontViewController;
  if (v5 == frontViewController)
  {
    frontViewController = self->_backViewController;
  }

  [(SUOverlayViewController *)self _setActiveViewController:frontViewController updateInterface:0];
  if (([(SUOverlayViewController *)self isViewLoaded]& 1) != 0)
  {

    [(SUOverlayViewController *)self _performFlipTransitionAction:a3];
  }

  else
  {

    [(SUOverlayViewController *)self _overlayActionDidFinish];
  }
}

- (void)_performFlipTransitionAction:(id)a3
{
  v5 = [a3 transition];
  v6 = [a3 viewController];
  frontViewController = self->_frontViewController;
  if (v6 == frontViewController)
  {
    frontViewController = self->_backViewController;
    v8 = @"fromRight";
  }

  else
  {
    v8 = @"fromLeft";
  }

  v9 = [v5 type];
  self->_state = self->_state & 0xFFFFFFFFFFFFFFFELL | [(SUOverlayViewController *)self _isControllerLoaded:frontViewController]^ 1;
  v10 = v9 == 1;
  [(UIViewController *)v6 viewWillDisappear:v10];
  [(UIViewController *)frontViewController viewWillAppear:v10];
  subviewContainerView = self->_subviewContainerView;
  v12 = [(UIViewController *)frontViewController view];
  [(SUMaskedView *)subviewContainerView bounds];
  [(UIView *)v12 setFrame:?];
  if ([v5 type] == 1)
  {
    v13 = [MEMORY[0x1E6979538] animation];
    [v13 setDelegate:self];
    [v5 duration];
    v15 = v14;
    UIAnimationDragCoefficient();
    [v13 setDuration:v15 * v16];
    [v13 setFillMode:*MEMORY[0x1E69797E8]];
    [v13 setSubtype:v8];
    [v13 setType:@"oglFlip"];
    [v13 setTimingFunction:{objc_msgSend(MEMORY[0x1E69793D0], "functionWithName:", *MEMORY[0x1E6979EB8])}];
    [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
    [MEMORY[0x1E6979518] begin];
    [(SUOverlayViewController *)self _setShadowVisible:0];
    [[(UIViewController *)v6 view] removeFromSuperview];
    [-[SUMaskedView layer](subviewContainerView "layer")];
    [(SUMaskedView *)subviewContainerView addSubview:v12];
    [a3 setAnimationCount:1];
    v17 = MEMORY[0x1E6979518];

    [v17 commit];
  }

  else
  {
    [[(UIViewController *)v6 view] removeFromSuperview];
    [(SUMaskedView *)subviewContainerView addSubview:v12];
    [(UIViewController *)v6 viewDidDisappear:0];
    [(UIViewController *)frontViewController viewDidAppear:0];

    [(SUOverlayViewController *)self _overlayActionDidFinish];
  }
}

- (void)_performNextAction
{
  if ([(NSMutableArray *)self->_actionQueue count])
  {
    v3 = [(NSMutableArray *)self->_actionQueue objectAtIndex:0];
    if ([v3 actionType] == 3)
    {

      [(SUOverlayViewController *)self _performFlipAction:v3];
    }

    else
    {

      [(SUOverlayViewController *)self _overlayActionDidFinish];
    }
  }
}

- (id)_activeViewController
{
  result = self->_activeViewController;
  if (!result)
  {
    [(SUOverlayViewController *)self _setActiveViewController:self->_backViewController updateInterface:1];
    return self->_activeViewController;
  }

  return result;
}

- (void)_applyDisplayProperties
{
  if ([(SUOverlayViewController *)self isViewLoaded])
  {
    v3 = [-[SUOverlayViewController view](self "view")];
    [v3 setShadowRadius:self->_shadowRadius];
    [v3 shadowOffset];
    if (v4 > -0.00000011920929)
    {
      shadowOpacity = self->_shadowOpacity;
      *&shadowOpacity = shadowOpacity;
      [v3 setShadowOpacity:shadowOpacity];
    }

    v6 = [(SUMaskedView *)self->_subviewContainerView copyMaskPath];
    [v3 setShadowPath:v6];
    if (v6)
    {

      CGPathRelease(v6);
    }
  }
}

- (void)_applyOverlayConfiguration:(id)a3
{
  v5 = [a3 cornerRadius];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = objc_alloc_init(SURoundedCornersMaskProvider);
    [(SURoundedCornersMaskProvider *)v7 setCornerRadius:v6];
    [(SUOverlayViewController *)self setMaskProvider:v7];
  }

  [a3 size];
  if (v9 > 0.00000011920929)
  {
    self->_overlaySize.height = v9;
  }

  if (v8 > 0.00000011920929)
  {
    self->_overlaySize.width = v8;
  }
}

- (id)_flipTransition
{
  lastFlipTransition = self->_lastFlipTransition;
  if (!lastFlipTransition)
  {
    lastFlipTransition = objc_alloc_init(SUOverlayTransition);
    [(SUOverlayTransition *)lastFlipTransition setType:1];
    v3 = lastFlipTransition;
  }

  return lastFlipTransition;
}

- (BOOL)_isControllerLoaded:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a3 = [a3 navigationController];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a3 isSkLoaded];
}

- (void)_setActiveViewController:(id)a3 updateInterface:(BOOL)a4
{
  activeViewController = self->_activeViewController;
  if (activeViewController != a3)
  {
    v6 = a4;
    if (a4)
    {
      if ([(UIViewController *)self->_activeViewController isViewLoaded])
      {
        [(UIViewController *)self->_activeViewController viewWillDisappear:0];
        [[(UIViewController *)self->_activeViewController view] removeFromSuperview];
        [(UIViewController *)self->_activeViewController viewDidDisappear:0];
      }

      activeViewController = self->_activeViewController;
    }

    if (activeViewController)
    {
      [(SUOverlayViewController *)self removeChildViewController:?];
    }

    self->_activeViewController = a3;
    if (a3)
    {
      [(SUOverlayViewController *)self addChildViewController:a3];
      if (v6)
      {
        if ([(SUOverlayViewController *)self isViewLoaded])
        {
          [(UIViewController *)self->_activeViewController viewWillAppear:0];
          v8 = [(UIViewController *)self->_activeViewController view];
          subviewContainerView = self->_subviewContainerView;
          [(SUMaskedView *)subviewContainerView bounds];
          [(UIView *)v8 setFrame:?];
          [(SUMaskedView *)subviewContainerView addSubview:v8];
          v10 = self->_activeViewController;

          [(UIViewController *)v10 viewDidAppear:0];
        }
      }
    }
  }
}

- (void)_setShadowVisible:(BOOL)a3
{
  v5 = [-[SUOverlayViewController view](self "view")];
  v6 = v5;
  if (a3)
  {
    [v5 setShadowOffset:{0.0, 10.0}];

    [(SUOverlayViewController *)self _applyDisplayProperties];
  }

  else
  {
    [v5 setShadowOpacity:0.0];

    [v6 setShadowOffset:{0.0, -3.0}];
  }
}

- (id)_subviewContainerView
{
  result = self->_subviewContainerView;
  if (!result)
  {
    v4 = objc_alloc_init(SUMaskedView);
    self->_subviewContainerView = v4;
    [(SUMaskedView *)v4 setAutoresizingMask:18];
    return self->_subviewContainerView;
  }

  return result;
}

- (void)_tearDownTouchCaptureView
{
  [(SUTouchCaptureView *)self->_touchCaptureView removeFromSuperview];
  [(SUTouchCaptureView *)self->_touchCaptureView removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  self->_touchCaptureView = 0;
}

- (CGSize)overlaySize
{
  width = self->_overlaySize.width;
  height = self->_overlaySize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end