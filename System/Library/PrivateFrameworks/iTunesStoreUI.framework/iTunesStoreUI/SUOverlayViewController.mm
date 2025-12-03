@interface SUOverlayViewController
+ (CGSize)defaultOverlaySize;
- (BOOL)_isControllerLoaded:(id)loaded;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)shouldExcludeFromNavigationHistory;
- (CGSize)overlaySize;
- (SUOverlayViewController)initWithOverlayConfiguration:(id)configuration;
- (id)_activeViewController;
- (id)_flipTransition;
- (id)_subviewContainerView;
- (id)copyArchivableContext;
- (void)_applyDisplayProperties;
- (void)_applyOverlayConfiguration:(id)configuration;
- (void)_enqueueAction:(id)action;
- (void)_finishFlipAction:(id)action;
- (void)_overlayActionDidFinish;
- (void)_overlayAnimationDidFinish;
- (void)_performFlipAction:(id)action;
- (void)_performFlipTransitionAction:(id)action;
- (void)_performNextAction;
- (void)_setActiveViewController:(id)controller updateInterface:(BOOL)interface;
- (void)_setShadowVisible:(BOOL)visible;
- (void)_tearDownTouchCaptureView;
- (void)_touchCaptureAction:(id)action;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)flipWithTransition:(id)transition;
- (void)imagePageViewTapped:(id)tapped;
- (void)invalidateForMemoryPurge;
- (void)loadView;
- (void)restoreArchivableContext:(id)context;
- (void)setBackViewController:(id)controller;
- (void)setFrontViewController:(id)controller;
- (void)setMaskProvider:(id)provider;
- (void)setOverlaySize:(CGSize)size;
- (void)setScriptWindowContext:(id)context;
- (void)storePage:(id)page finishedWithSuccess:(BOOL)success;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDismissWithTransition:(id)transition;
@end

@implementation SUOverlayViewController

- (SUOverlayViewController)initWithOverlayConfiguration:(id)configuration
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
    if (configuration)
    {
      [(SUOverlayViewController *)v4 _applyOverlayConfiguration:configuration];
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

- (void)flipWithTransition:(id)transition
{
  v6 = objc_alloc_init(SUOverlayAction);
  [(SUOverlayAction *)v6 setActionType:3];
  [(SUOverlayAction *)v6 setTransition:transition];
  [(SUOverlayAction *)v6 setViewController:[(SUOverlayViewController *)self _activeViewController]];
  lastFlipTransition = self->_lastFlipTransition;
  if (lastFlipTransition != transition)
  {

    self->_lastFlipTransition = [transition copy];
  }

  [(SUOverlayViewController *)self _enqueueAction:v6];
}

- (void)setBackViewController:(id)controller
{
  backViewController = self->_backViewController;
  if (backViewController != controller)
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
      [(SUOverlayViewController *)self _setActiveViewController:controller updateInterface:1];
      backViewController = self->_backViewController;
    }

    self->_backViewController = controller;
  }
}

- (void)setFrontViewController:(id)controller
{
  frontViewController = self->_frontViewController;
  if (frontViewController != controller)
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
      [(SUOverlayViewController *)self _setActiveViewController:controller updateInterface:1];
      frontViewController = self->_frontViewController;
    }

    self->_frontViewController = controller;
  }
}

- (void)setMaskProvider:(id)provider
{
  [-[SUOverlayViewController _subviewContainerView](self "_subviewContainerView")];

  [(SUOverlayViewController *)self _applyDisplayProperties];
}

- (void)setOverlaySize:(CGSize)size
{
  if (self->_overlaySize.width != size.width || self->_overlaySize.height != size.height)
  {
    self->_overlaySize = size;
    [-[UIViewController overlayBackgroundViewController](self "overlayBackgroundViewController")];

    [(SUOverlayViewController *)self _applyDisplayProperties];
  }
}

- (void)setScriptWindowContext:(id)context
{
  if (self->_scriptWindowContext != context)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      self->_scriptWindowContext = context;
    }
  }
}

- (void)viewWillDismissWithTransition:(id)transition
{
  if ([transition type] == 1)
  {

    [(SUOverlayViewController *)self _setShadowVisible:0];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v9.receiver = self;
  v9.super_class = SUOverlayViewController;
  v6 = [(SUViewController *)&v9 canPerformAction:action withSender:sender];
  if (v6)
  {
    if (sel_isEqual(action, sel_storePage_finishedWithSuccess_))
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
  copyArchivableContext = [(SUViewController *)&v9 copyArchivableContext];
  [copyArchivableContext setType:3];
  if (![(SUOverlayViewController *)self shouldExcludeFromNavigationHistory])
  {
    copyArchivableContext2 = [(UIViewController *)self->_backViewController copyArchivableContext];
    v5 = copyArchivableContext2;
    if (copyArchivableContext2 && [copyArchivableContext2 type])
    {
      [copyArchivableContext setValue:v5 forMetadataKey:@"back"];
    }

    copyArchivableContext3 = [(UIViewController *)self->_frontViewController copyArchivableContext];
    v7 = copyArchivableContext3;
    if (copyArchivableContext3 && [copyArchivableContext3 type])
    {
      [copyArchivableContext setValue:v7 forMetadataKey:@"front"];
    }

    [copyArchivableContext setValue:objc_msgSend(MEMORY[0x1E696AD98] forMetadataKey:{"numberWithBool:", self->_activeViewController == self->_frontViewController), @"on-front"}];
    [copyArchivableContext setValue:-[SUOverlayViewController presentationTransition](self forMetadataKey:{"presentationTransition"), @"presentation"}];
  }

  return copyArchivableContext;
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
  _subviewContainerView = [(SUOverlayViewController *)self _subviewContainerView];
  [_subviewContainerView setFrame:{v5, v7, v9, v11}];
  [v12 addSubview:_subviewContainerView];
  [(SUOverlayViewController *)self setView:v12];

  [v3 setFrame:{v5, v7, v9, v11}];
  [_subviewContainerView addSubview:v3];
  [(SUOverlayViewController *)self _setShadowVisible:0];

  [(SUOverlayViewController *)self _applyDisplayProperties];
}

- (void)restoreArchivableContext:(id)context
{
  v5 = [context valueForMetadataKey:@"back"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    copyViewController = [v5 copyViewController];
    [(SUOverlayViewController *)self setBackViewController:copyViewController];
  }

  v7 = [context valueForMetadataKey:@"front"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    copyViewController2 = [v7 copyViewController];
    [(SUOverlayViewController *)self setFrontViewController:copyViewController2];
  }

  v9 = [context valueForMetadataKey:@"presentation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUOverlayViewController *)self setPresentationTransition:v9];
  }

  backViewController = self->_backViewController;
  v11 = [context valueForMetadataKey:@"on-front"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v11 BOOLValue])
  {
    backViewController = self->_frontViewController;
  }

  [(SUOverlayViewController *)self _setActiveViewController:backViewController updateInterface:1];
  v12.receiver = self;
  v12.super_class = SUOverlayViewController;
  [(SUViewController *)&v12 restoreArchivableContext:context];
}

- (BOOL)shouldExcludeFromNavigationHistory
{
  v9.receiver = self;
  v9.super_class = SUOverlayViewController;
  shouldExcludeFromNavigationHistory = [(SUViewController *)&v9 shouldExcludeFromNavigationHistory];
  v4 = objc_opt_respondsToSelector();
  shouldExcludeFromNavigationHistory2 = v4 | shouldExcludeFromNavigationHistory;
  if ((v4 & 1) != 0 && (shouldExcludeFromNavigationHistory & 1) == 0)
  {
    shouldExcludeFromNavigationHistory2 = [(UIViewController *)self->_backViewController shouldExcludeFromNavigationHistory];
  }

  v6 = objc_opt_respondsToSelector();
  shouldExcludeFromNavigationHistory3 = v6 | shouldExcludeFromNavigationHistory2;
  if ((v6 & 1) != 0 && (shouldExcludeFromNavigationHistory2 & 1) == 0)
  {
    shouldExcludeFromNavigationHistory3 = [(UIViewController *)self->_frontViewController shouldExcludeFromNavigationHistory];
  }

  return shouldExcludeFromNavigationHistory3 & 1;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SUOverlayViewController *)self _setShadowVisible:1];
  v5.receiver = self;
  v5.super_class = SUOverlayViewController;
  [(SUViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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
  [(SUViewController *)&v8 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SUOverlayViewController *)self _activeViewController];
  [(SUOverlayViewController *)self _tearDownTouchCaptureView];
  v5.receiver = self;
  v5.super_class = SUOverlayViewController;
  [(SUViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)imagePageViewTapped:(id)tapped
{
  _flipTransition = [(SUOverlayViewController *)self _flipTransition];

  [(SUOverlayViewController *)self flipWithTransition:_flipTransition];
}

- (void)storePage:(id)page finishedWithSuccess:(BOOL)success
{
  successCopy = success;
  if ([page isDescendantOfViewController:self->_backViewController])
  {
    v7 = self->_state & 0xFFFFFFFFFFFFFFFDLL;
    v8 = 2;
  }

  else
  {
    v9 = [page isDescendantOfViewController:self->_frontViewController];
    state = self->_state;
    if (!v9)
    {
      goto LABEL_8;
    }

    v7 = state & 0xFFFFFFFFFFFFFFFBLL;
    v8 = 4;
  }

  if (successCopy)
  {
    v8 = 0;
  }

  state = v7 | v8;
  self->_state = state;
LABEL_8:
  self->_state = state & 0xFFFFFFFFFFFFFFFELL;
  if (!successCopy)
  {
    _flipTransition = [(SUOverlayViewController *)self _flipTransition];

    [(SUOverlayViewController *)self flipWithTransition:_flipTransition];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  [(SUOverlayViewController *)self _overlayAnimationDidFinish:stop];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];

  [mEMORY[0x1E69DC668] endIgnoringInteractionEvents];
}

- (void)_touchCaptureAction:(id)action
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];

  [mEMORY[0x1E69DC668] sendAction:sel_overlayPageViewTapped_ to:0 from:self forEvent:0];
}

- (void)_enqueueAction:(id)action
{
  actionQueue = self->_actionQueue;
  if (!actionQueue)
  {
    actionQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_actionQueue = actionQueue;
  }

  [(NSMutableArray *)actionQueue addObject:action];
  if ([(NSMutableArray *)self->_actionQueue count]== 1)
  {

    [(SUOverlayViewController *)self _performNextAction];
  }
}

- (void)_finishFlipAction:(id)action
{
  viewController = [action viewController];
  backViewController = self->_backViewController;
  if (viewController == backViewController)
  {
    backViewController = self->_frontViewController;
  }

  v7 = [objc_msgSend(action "transition")];
  if ([(SUOverlayViewController *)self isViewLoaded])
  {
    v8 = v7 == 1;
    [(UIViewController *)viewController viewDidDisappear:v8];
    [(UIViewController *)backViewController viewDidAppear:v8];
    if (self->_touchCaptureView)
    {
      [(SUMaskedView *)self->_subviewContainerView bringSubviewToFront:?];
    }

    [(SUOverlayViewController *)self _setShadowVisible:1];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"SUOverlayDidFlipNotification" object:self];
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
  animationCount = [v3 animationCount];
  v5 = animationCount - 1;
  if (animationCount >= 1)
  {
    [v3 setAnimationCount:v5];
    animationCount = v5;
  }

  if (!animationCount)
  {

    [(SUOverlayViewController *)self _overlayActionDidFinish];
  }
}

- (void)_performFlipAction:(id)action
{
  viewController = [action viewController];
  frontViewController = self->_frontViewController;
  if (viewController == frontViewController)
  {
    frontViewController = self->_backViewController;
  }

  [(SUOverlayViewController *)self _setActiveViewController:frontViewController updateInterface:0];
  if (([(SUOverlayViewController *)self isViewLoaded]& 1) != 0)
  {

    [(SUOverlayViewController *)self _performFlipTransitionAction:action];
  }

  else
  {

    [(SUOverlayViewController *)self _overlayActionDidFinish];
  }
}

- (void)_performFlipTransitionAction:(id)action
{
  transition = [action transition];
  viewController = [action viewController];
  frontViewController = self->_frontViewController;
  if (viewController == frontViewController)
  {
    frontViewController = self->_backViewController;
    v8 = @"fromRight";
  }

  else
  {
    v8 = @"fromLeft";
  }

  type = [transition type];
  self->_state = self->_state & 0xFFFFFFFFFFFFFFFELL | [(SUOverlayViewController *)self _isControllerLoaded:frontViewController]^ 1;
  v10 = type == 1;
  [(UIViewController *)viewController viewWillDisappear:v10];
  [(UIViewController *)frontViewController viewWillAppear:v10];
  subviewContainerView = self->_subviewContainerView;
  view = [(UIViewController *)frontViewController view];
  [(SUMaskedView *)subviewContainerView bounds];
  [(UIView *)view setFrame:?];
  if ([transition type] == 1)
  {
    animation = [MEMORY[0x1E6979538] animation];
    [animation setDelegate:self];
    [transition duration];
    v15 = v14;
    UIAnimationDragCoefficient();
    [animation setDuration:v15 * v16];
    [animation setFillMode:*MEMORY[0x1E69797E8]];
    [animation setSubtype:v8];
    [animation setType:@"oglFlip"];
    [animation setTimingFunction:{objc_msgSend(MEMORY[0x1E69793D0], "functionWithName:", *MEMORY[0x1E6979EB8])}];
    [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
    [MEMORY[0x1E6979518] begin];
    [(SUOverlayViewController *)self _setShadowVisible:0];
    [[(UIViewController *)viewController view] removeFromSuperview];
    [-[SUMaskedView layer](subviewContainerView "layer")];
    [(SUMaskedView *)subviewContainerView addSubview:view];
    [action setAnimationCount:1];
    v17 = MEMORY[0x1E6979518];

    [v17 commit];
  }

  else
  {
    [[(UIViewController *)viewController view] removeFromSuperview];
    [(SUMaskedView *)subviewContainerView addSubview:view];
    [(UIViewController *)viewController viewDidDisappear:0];
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

    copyMaskPath = [(SUMaskedView *)self->_subviewContainerView copyMaskPath];
    [v3 setShadowPath:copyMaskPath];
    if (copyMaskPath)
    {

      CGPathRelease(copyMaskPath);
    }
  }
}

- (void)_applyOverlayConfiguration:(id)configuration
{
  cornerRadius = [configuration cornerRadius];
  if (cornerRadius >= 1)
  {
    v6 = cornerRadius;
    v7 = objc_alloc_init(SURoundedCornersMaskProvider);
    [(SURoundedCornersMaskProvider *)v7 setCornerRadius:v6];
    [(SUOverlayViewController *)self setMaskProvider:v7];
  }

  [configuration size];
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

- (BOOL)_isControllerLoaded:(id)loaded
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    loaded = [loaded navigationController];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [loaded isSkLoaded];
}

- (void)_setActiveViewController:(id)controller updateInterface:(BOOL)interface
{
  activeViewController = self->_activeViewController;
  if (activeViewController != controller)
  {
    interfaceCopy = interface;
    if (interface)
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

    self->_activeViewController = controller;
    if (controller)
    {
      [(SUOverlayViewController *)self addChildViewController:controller];
      if (interfaceCopy)
      {
        if ([(SUOverlayViewController *)self isViewLoaded])
        {
          [(UIViewController *)self->_activeViewController viewWillAppear:0];
          view = [(UIViewController *)self->_activeViewController view];
          subviewContainerView = self->_subviewContainerView;
          [(SUMaskedView *)subviewContainerView bounds];
          [(UIView *)view setFrame:?];
          [(SUMaskedView *)subviewContainerView addSubview:view];
          v10 = self->_activeViewController;

          [(UIViewController *)v10 viewDidAppear:0];
        }
      }
    }
  }
}

- (void)_setShadowVisible:(BOOL)visible
{
  v5 = [-[SUOverlayViewController view](self "view")];
  v6 = v5;
  if (visible)
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