@interface SUOverlayBackgroundViewController
- (BOOL)shouldExcludeFromNavigationHistory;
- (CGRect)_centeredFrameForViewController:(id)controller;
- (CGRect)_frameForSlideFromBottomForViewController:(id)controller;
- (SUOverlayBackgroundViewController)init;
- (SUOverlayViewController)selectedViewController;
- (double)_viewControllerHorizontalPadding;
- (double)_viewControllerKeyboardOffset;
- (id)_copyTransitionForTransition:(id)transition action:(id)action;
- (id)_selectedViewController;
- (id)copyArchivableContext;
- (id)copyChildViewControllersForReason:(int64_t)reason;
- (id)viewControllerForScriptWindowContext:(id)context;
- (void)_addViewController:(id)controller;
- (void)_backgroundAnimationDidStop:(id)stop finished:(id)finished context:(void *)context;
- (void)_captureViewAction:(id)action;
- (void)_enqueueAction:(id)action;
- (void)_finishDismissAction:(id)action;
- (void)_finishDismissEverythingAction:(id)action;
- (void)_finishDismissOfViewController:(id)controller animated:(BOOL)animated;
- (void)_finishPresentAction:(id)action;
- (void)_layoutForKeyboardChangeWithInfo:(id)info;
- (void)_overlayActionDidFinish;
- (void)_overlayAnimationDidFinish;
- (void)_performDismissAction:(id)action;
- (void)_performDismissEverythingAction:(id)action;
- (void)_performFlipForAction:(id)action;
- (void)_performNextAction;
- (void)_performPresentAction:(id)action;
- (void)_reloadGestureRecognizers;
- (void)_removeViewController:(id)controller;
- (void)_sendDidDismiss;
- (void)_shouldDismissFinishedWithValue:(id)value;
- (void)_swipe:(id)_swipe;
- (void)_tearDownFlipView;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)animated;
- (void)dismissOverlay:(id)overlay animated:(BOOL)animated;
- (void)keyboardWillHideWithInfo:(id)info;
- (void)keyboardWillShowWithInfo:(id)info;
- (void)layoutViewControllers;
- (void)loadView;
- (void)overlayPageViewTapped:(id)tapped;
- (void)populateNavigationHistoryWithItems:(id)items;
- (void)presentOverlay:(id)overlay withTransition:(id)transition;
- (void)restoreArchivableContext:(id)context;
- (void)scalingFlipViewDidFinish:(id)finish;
- (void)storePage:(id)page finishedWithSuccess:(BOOL)success;
- (void)viewDidAppear:(BOOL)appear;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation SUOverlayBackgroundViewController

- (SUOverlayBackgroundViewController)init
{
  v4.receiver = self;
  v4.super_class = SUOverlayBackgroundViewController;
  v2 = [(SUViewController *)&v4 init];
  if (v2)
  {
    v2->_viewControllers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_selectedViewControllerIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  [(SUOverlayBackgroundViewController *)self _tearDownFlipView];
  if (self->_swipeGestureRecognizer)
  {
    [(SUTouchCaptureView *)self->_captureView removeGestureRecognizer:?];
  }

  [(SUTouchCaptureView *)self->_captureView removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  self->_captureView = 0;
  [(UISwipeGestureRecognizer *)self->_swipeGestureRecognizer setDelegate:0];

  self->_swipeGestureRecognizer = 0;
  self->_actionQueue = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  viewControllers = self->_viewControllers;
  v4 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(viewControllers);
        }

        [(SUOverlayBackgroundViewController *)self removeChildViewController:*(*(&v9 + 1) + 8 * i)];
      }

      v5 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  self->_viewControllers = 0;
  v8.receiver = self;
  v8.super_class = SUOverlayBackgroundViewController;
  [(SUViewController *)&v8 dealloc];
}

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(NSMutableArray *)self->_viewControllers count])
  {
    v8 = objc_alloc_init(SUOverlayAction);
    [(SUOverlayAction *)v8 setActionType:2];
    _selectedViewController = [(SUOverlayBackgroundViewController *)self _selectedViewController];
    [(SUOverlayAction *)v8 setViewController:_selectedViewController];
    if (animatedCopy)
    {
      presentationTransition = [_selectedViewController presentationTransition];
      if (presentationTransition)
      {
        v7 = [(SUOverlayBackgroundViewController *)self _copyTransitionForTransition:presentationTransition action:v8];
      }

      else
      {
        v7 = objc_alloc_init(SUOverlayTransition);
        [(SUOverlayTransition *)v7 setType:2];
      }

      [(SUOverlayAction *)v8 setTransition:v7];
    }

    [(SUOverlayBackgroundViewController *)self _enqueueAction:v8];
  }

  else
  {

    [(SUOverlayBackgroundViewController *)self _sendDidDismiss];
  }
}

- (void)dismissOverlay:(id)overlay animated:(BOOL)animated
{
  animatedCopy = animated;
  v9 = objc_alloc_init(SUOverlayAction);
  [(SUOverlayAction *)v9 setActionType:1];
  [(SUOverlayAction *)v9 setViewController:overlay];
  if (animatedCopy)
  {
    presentationTransition = [overlay presentationTransition];
    if (presentationTransition)
    {
      v8 = [(SUOverlayBackgroundViewController *)self _copyTransitionForTransition:presentationTransition action:v9];
    }

    else
    {
      v8 = objc_alloc_init(SUOverlayTransition);
      [(SUOverlayTransition *)v8 setType:2];
    }

    [(SUOverlayAction *)v9 setTransition:v8];
  }

  [(SUOverlayBackgroundViewController *)self _enqueueAction:v9];
}

- (void)layoutViewControllers
{
  _selectedViewController = [(SUOverlayBackgroundViewController *)self _selectedViewController];
  if (_selectedViewController)
  {
    v4 = _selectedViewController;
    [(SUOverlayBackgroundViewController *)self _viewControllerKeyboardOffset];
    v6 = v5;
    [(SUOverlayBackgroundViewController *)self _centeredFrameForViewController:v4];
    v8 = v7;
    [objc_msgSend(v4 "view")];
    [-[SUOverlayBackgroundViewController view](self "view")];
    v13 = v12;
    v43 = v15;
    v44 = v14;
    rect = v16;
    [(SUOverlayBackgroundViewController *)self _viewControllerHorizontalPadding];
    v18 = v17;
    v19 = [(NSMutableArray *)self->_viewControllers count];
    selectedViewControllerIndex = self->_selectedViewControllerIndex;
    if (selectedViewControllerIndex >= 1)
    {
      v21 = selectedViewControllerIndex + 1;
      v22 = 0.0;
      do
      {
        v23 = [(NSMutableArray *)self->_viewControllers objectAtIndex:v21 - 2];
        [(SUOverlayBackgroundViewController *)self _centeredFrameForViewController:v23];
        v25 = v24;
        [objc_msgSend(v23 "view")];
        v22 = v22 + v18 + v25;
        --v21;
      }

      while (v21 > 1);
      selectedViewControllerIndex = self->_selectedViewControllerIndex;
    }

    v45 = v6;
    v28 = selectedViewControllerIndex + 1;
    v29 = v43;
    v30 = v44;
    if (selectedViewControllerIndex + 1 < v19)
    {
      v31 = 0.0;
      do
      {
        v32 = [(NSMutableArray *)self->_viewControllers objectAtIndex:v28];
        [(SUOverlayBackgroundViewController *)self _centeredFrameForViewController:v32];
        v34 = v33;
        v36 = v35;
        v47 = v37;
        v48.origin.x = v13;
        v48.origin.y = v30;
        v48.size.width = rect;
        v48.size.height = v29;
        v38 = v29;
        v39 = v30;
        v40 = v18 + v31 + CGRectGetMaxX(v48) + v36;
        view = [v32 view];
        v42 = v40;
        v30 = v39;
        v29 = v38;
        [view setFrame:{v42, v34 - v45, v36, v47}];
        v31 = v31 + v18 + v36;
        ++v28;
      }

      while (v19 != v28);
    }
  }
}

- (void)populateNavigationHistoryWithItems:(id)items
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableArray *)self->_viewControllers count];
  selectedViewControllerIndex = self->_selectedViewControllerIndex;
  if (v5 < selectedViewControllerIndex)
  {
    selectedViewControllerIndex = v5;
  }

  self->_selectedViewControllerIndex = selectedViewControllerIndex;
  clientInterface = [(SUViewController *)self clientInterface];
  viewControllerFactory = [(SUViewController *)self viewControllerFactory];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = items;
  v9 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [viewControllerFactory newStorePageViewControllerWithSection:0];
        [v14 setClientInterface:clientInterface];
        [v14 setTitle:{objc_msgSend(v13, "title")}];
        [v14 setURLRequestProperties:{objc_msgSend(v13, "URLRequestProperties")}];
        if (v14)
        {
          v15 = objc_alloc_init(SUOverlayViewController);
          [(SUOverlayViewController *)v15 setBackViewController:v14];
          [(SUViewController *)v15 setClientInterface:clientInterface];
          v16 = objc_alloc_init(SUOverlayTransition);
          [(SUOverlayTransition *)v16 setType:2];
          [(SUOverlayViewController *)v15 setPresentationTransition:v16];

          [(SUOverlayBackgroundViewController *)self addChildViewController:v15];
          [(NSMutableArray *)self->_viewControllers insertObject:v15 atIndex:self->_selectedViewControllerIndex++];
          [-[SUOverlayBackgroundViewController view](self "view")];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [(SUOverlayBackgroundViewController *)self layoutViewControllers];
}

- (void)presentOverlay:(id)overlay withTransition:(id)transition
{
  v8 = objc_alloc_init(SUOverlayAction);
  [(SUOverlayAction *)v8 setActionType:0];
  [(SUOverlayAction *)v8 setViewController:overlay];
  v7 = [(SUOverlayBackgroundViewController *)self _copyTransitionForTransition:transition action:v8];
  [(SUOverlayAction *)v8 setTransition:v7];

  [(SUOverlayBackgroundViewController *)self _enqueueAction:v8];
}

- (SUOverlayViewController)selectedViewController
{
  selectedViewControllerIndex = self->_selectedViewControllerIndex;
  if (selectedViewControllerIndex >= [(NSMutableArray *)self->_viewControllers count])
  {
    return 0;
  }

  viewControllers = self->_viewControllers;
  v5 = self->_selectedViewControllerIndex;

  return [(NSMutableArray *)viewControllers objectAtIndex:v5];
}

- (id)viewControllerForScriptWindowContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [context tag];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  viewControllers = self->_viewControllers;
  v6 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(viewControllers);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([objc_msgSend(v10 "scriptWindowContext")] == v4)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)copyChildViewControllersForReason:(int64_t)reason
{
  selectedViewControllerIndex = self->_selectedViewControllerIndex;
  v6 = [(NSMutableArray *)self->_viewControllers count];
  if (reason || selectedViewControllerIndex >= v6)
  {
    v9.receiver = self;
    v9.super_class = SUOverlayBackgroundViewController;
    return [(SUViewController *)&v9 copyChildViewControllersForReason:reason];
  }

  else
  {
    v7 = [(NSMutableArray *)self->_viewControllers subarrayWithRange:self->_selectedViewControllerIndex, 1];

    return v7;
  }
}

- (id)copyArchivableContext
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(SUOverlayBackgroundViewController *)self shouldExcludeFromNavigationHistory])
  {
    return 0;
  }

  v3 = objc_alloc_init(SUViewControllerContext);
  [(SUViewControllerContext *)v3 setType:2];
  -[SUViewControllerContext setValue:forMetadataKey:](v3, "setValue:forMetadataKey:", [MEMORY[0x1E696AD98] numberWithInteger:self->_selectedViewControllerIndex], @"selected-index");
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  viewControllers = self->_viewControllers;
  v6 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(viewControllers);
        }

        copyArchivableContext = [*(*(&v13 + 1) + 8 * v9) copyArchivableContext];
        if (copyArchivableContext)
        {
          v11 = copyArchivableContext;
          [v4 addObject:copyArchivableContext];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(SUViewControllerContext *)v3 setValue:v4 forMetadataKey:@"sub-contexts"];

  return v3;
}

- (void)keyboardWillHideWithInfo:(id)info
{
  v5 = *(MEMORY[0x1E695F058] + 16);
  self->_keyboardFrame.origin = *MEMORY[0x1E695F058];
  self->_keyboardFrame.size = v5;
  [(SUOverlayBackgroundViewController *)self _layoutForKeyboardChangeWithInfo:?];
  v6.receiver = self;
  v6.super_class = SUOverlayBackgroundViewController;
  [(UIViewController *)&v6 keyboardWillHideWithInfo:info];
}

- (void)keyboardWillShowWithInfo:(id)info
{
  p_keyboardFrame = &self->_keyboardFrame;
  [objc_msgSend(info objectForKey:{*MEMORY[0x1E69DDFA0]), "CGRectValue"}];
  p_keyboardFrame->origin.x = v6;
  p_keyboardFrame->origin.y = v7;
  p_keyboardFrame->size.width = v8;
  p_keyboardFrame->size.height = v9;
  [MEMORY[0x1E69DCEB0] convertRect:-[SUOverlayBackgroundViewController view](self toView:{"view"), p_keyboardFrame->origin.x, p_keyboardFrame->origin.y, p_keyboardFrame->size.width, p_keyboardFrame->size.height}];
  p_keyboardFrame->origin.x = v10;
  p_keyboardFrame->origin.y = v11;
  p_keyboardFrame->size.width = v12;
  p_keyboardFrame->size.height = v13;
  if (![(SUOverlayBackgroundViewController *)self presentedViewController])
  {
    [(SUOverlayBackgroundViewController *)self _layoutForKeyboardChangeWithInfo:info];
  }

  v14.receiver = self;
  v14.super_class = SUOverlayBackgroundViewController;
  [(UIViewController *)&v14 keyboardWillShowWithInfo:info];
}

- (void)loadView
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(SUTouchCaptureView);
  self->_captureView = v3;
  [(SUTouchCaptureView *)v3 addTarget:self action:sel__captureViewAction_ forControlEvents:64];
  [(SUTouchCaptureView *)self->_captureView setAutoresizingMask:18];
  -[SUTouchCaptureView setBackgroundColor:](self->_captureView, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
  [(SUOverlayBackgroundViewController *)self setView:self->_captureView];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  viewControllers = self->_viewControllers;
  v5 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(viewControllers);
        }

        -[SUTouchCaptureView addSubview:](self->_captureView, "addSubview:", [*(*(&v9 + 1) + 8 * i) view]);
      }

      v6 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  if ([(NSMutableArray *)self->_viewControllers count])
  {
    -[SUTouchCaptureView setBackgroundColor:](self->_captureView, "setBackgroundColor:", [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5]);
  }

  [(SUOverlayBackgroundViewController *)self _reloadGestureRecognizers];
}

- (void)restoreArchivableContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [context valueForMetadataKey:@"sub-contexts"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        copyViewController = [*(*(&v14 + 1) + 8 * v9) copyViewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SUOverlayBackgroundViewController *)self _addViewController:copyViewController];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [context valueForMetadataKey:@"selected-index"];
  if (v11)
  {
    integerValue = [v11 integerValue];
    v13 = [(NSMutableArray *)self->_viewControllers count]- 1;
    if (integerValue < v13)
    {
      v13 = integerValue;
    }

    self->_selectedViewControllerIndex = v13;
  }
}

- (BOOL)shouldExcludeFromNavigationHistory
{
  v4.receiver = self;
  v4.super_class = SUOverlayBackgroundViewController;
  return [(SUViewController *)&v4 shouldExcludeFromNavigationHistory]|| [(NSMutableArray *)self->_viewControllers count]== 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SUOverlayBackgroundViewController *)self layoutViewControllers];
  v5.receiver = self;
  v5.super_class = SUOverlayBackgroundViewController;
  [(SUViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  [(SUOverlayBackgroundViewController *)self layoutViewControllers];
  v7.receiver = self;
  v7.super_class = SUOverlayBackgroundViewController;
  [(SUViewController *)&v7 willAnimateRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)overlayPageViewTapped:(id)tapped
{
  selectedViewController = [(SUOverlayBackgroundViewController *)self selectedViewController];
  if (selectedViewController)
  {
    if (!self->_askingToDismissSelection)
    {
      v6 = selectedViewController;
      if ([(NSMutableArray *)self->_viewControllers containsObject:tapped])
      {
        self->_askingToDismissSelection = 1;
        shouldDismissFunction = [(SUOverlayViewController *)v6 shouldDismissFunction];
        v8 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __59__SUOverlayBackgroundViewController_overlayPageViewTapped___block_invoke;
        v9[3] = &unk_1E8165A10;
        v9[4] = v8;
        if (![(SUScriptFunction *)shouldDismissFunction callWithArguments:0 completionBlock:v9])
        {
          self->_askingToDismissSelection = 0;
          [(SUOverlayBackgroundViewController *)self dismissOverlay:v6 animated:1];
        }
      }
    }
  }
}

uint64_t __59__SUOverlayBackgroundViewController_overlayPageViewTapped___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) object];

  return [v3 _shouldDismissFinishedWithValue:a2];
}

- (void)storePage:(id)page finishedWithSuccess:(BOOL)success
{
  v17 = *MEMORY[0x1E69E9840];
  if (!success)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    viewControllers = self->_viewControllers;
    v7 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(viewControllers);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if ([page isDescendantOfViewController:v11])
          {
            if (v11)
            {
              [(SUOverlayBackgroundViewController *)self dismissOverlay:v11 animated:1];
            }

            return;
          }
        }

        v8 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (void)_captureViewAction:(id)action
{
  if (!self->_askingToDismissEverything)
  {
    self->_askingToDismissEverything = 1;
    _selectedViewController = [-[SUOverlayBackgroundViewController _selectedViewController](self _selectedViewController];
    v5 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__SUOverlayBackgroundViewController__captureViewAction___block_invoke;
    v6[3] = &unk_1E8165A10;
    v6[4] = v5;
    if (([_selectedViewController callWithArguments:0 completionBlock:v6] & 1) == 0)
    {
      self->_askingToDismissEverything = 0;
      [(SUOverlayBackgroundViewController *)self dismissAnimated:1];
    }
  }
}

uint64_t __56__SUOverlayBackgroundViewController__captureViewAction___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) object];

  return [v3 _shouldDismissFinishedWithValue:a2];
}

- (void)_swipe:(id)_swipe
{
  if ([_swipe state] == 3 && -[NSMutableArray count](self->_viewControllers, "count") >= 2)
  {
    v4 = [(NSMutableArray *)self->_viewControllers objectAtIndex:self->_selectedViewControllerIndex];
    if ([v4 canSwipeToDismiss])
    {

      [(SUOverlayBackgroundViewController *)self dismissOverlay:v4 animated:1];
    }
  }
}

- (void)_backgroundAnimationDidStop:(id)stop finished:(id)finished context:(void *)context
{
  [objc_msgSend(MEMORY[0x1E69DC668] sharedApplication];

  [(SUOverlayBackgroundViewController *)self _overlayAnimationDidFinish];
}

- (void)scalingFlipViewDidFinish:(id)finish
{
  if (self->_activeFlipView == finish)
  {
    [(SUOverlayBackgroundViewController *)self _overlayAnimationDidFinish];
  }
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

    [(SUOverlayBackgroundViewController *)self _performNextAction];
  }
}

- (void)_finishDismissAction:(id)action
{
  transition = [action transition];
  [objc_msgSend(transition "sourceElement")];
  viewController = [action viewController];
  v7 = [transition type] != 0;
  [(SUOverlayBackgroundViewController *)self _finishDismissOfViewController:viewController animated:v7];
  [objc_msgSend(action "otherViewController")];
  if ([(NSMutableArray *)self->_viewControllers count])
  {
    selectedViewControllerIndex = self->_selectedViewControllerIndex;
    v9 = [(NSMutableArray *)self->_viewControllers count]- 1;
    if (selectedViewControllerIndex < v9)
    {
      v9 = selectedViewControllerIndex;
    }

    self->_selectedViewControllerIndex = v9;
    [(SUOverlayBackgroundViewController *)self layoutViewControllers];

    [(SUOverlayBackgroundViewController *)self _reloadGestureRecognizers];
  }

  else
  {
    self->_selectedViewControllerIndex = 0x7FFFFFFFFFFFFFFFLL;

    [(SUOverlayBackgroundViewController *)self _sendDidDismiss];
  }
}

- (void)_finishDismissEverythingAction:(id)action
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(action "transition")];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  viewControllers = self->_viewControllers;
  v6 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(viewControllers);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [objc_msgSend(objc_msgSend(v10 "presentationTransition")];
        [(SUOverlayBackgroundViewController *)self _finishDismissOfViewController:v10 animated:v4 != 0];
      }

      v7 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_viewControllers removeAllObjects];
  self->_selectedViewControllerIndex = 0x7FFFFFFFFFFFFFFFLL;
  [(SUOverlayBackgroundViewController *)self _sendDidDismiss];
}

- (void)_finishDismissOfViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([controller isViewLoaded])
  {
    [objc_msgSend(controller "view")];
  }

  [controller viewDidDisappear:animatedCopy];
  [(SUOverlayBackgroundViewController *)self removeChildViewController:controller];
  [controller invalidate];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"SUOverlayDidDismissNotification" object:controller];
}

- (void)_finishPresentAction:(id)action
{
  viewController = [action viewController];
  view = [(SUOverlayBackgroundViewController *)self view];
  view2 = [viewController view];
  superview = [view2 superview];
  if (superview)
  {
    v9 = superview;
    [view2 frame];
    [view convertRect:v9 fromView:?];
  }

  else
  {
    [(SUOverlayBackgroundViewController *)self _centeredFrameForViewController:viewController];
  }

  [view2 setFrame:?];
  [view addSubview:view2];
  v10 = [objc_msgSend(action "transition")] != 0;
  [objc_msgSend(action "otherViewController")];
  [viewController viewDidAppear:v10];
  if ([viewController isOnFront])
  {
    v11 = [objc_msgSend(action "transition")];
    [v11 setType:1];
    [viewController flipWithTransition:v11];
  }

  self->_selectedViewControllerIndex = [(NSMutableArray *)self->_viewControllers indexOfObjectIdenticalTo:viewController];
  [(SUOverlayBackgroundViewController *)self layoutViewControllers];
  [(SUOverlayBackgroundViewController *)self _reloadGestureRecognizers];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"SUOverlayDidShowNotification" object:viewController];
}

- (void)_overlayActionDidFinish
{
  v3 = [(NSMutableArray *)self->_actionQueue objectAtIndex:0];
  actionType = [v3 actionType];
  if (actionType)
  {
    if (actionType == 2)
    {
      [(SUOverlayBackgroundViewController *)self _finishDismissEverythingAction:v3];
    }

    else if (actionType == 1)
    {
      [(SUOverlayBackgroundViewController *)self _finishDismissAction:v3];
    }
  }

  else
  {
    [(SUOverlayBackgroundViewController *)self _finishPresentAction:v3];
  }

  [(SUScalingFlipView *)self->_activeFlipView removeFromSuperview];
  [(SUOverlayBackgroundViewController *)self _tearDownFlipView];
  [(NSMutableArray *)self->_actionQueue removeObjectAtIndex:0];

  [(SUOverlayBackgroundViewController *)self _performNextAction];
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

    [(SUOverlayBackgroundViewController *)self _overlayActionDidFinish];
  }
}

- (void)_performDismissAction:(id)action
{
  viewController = [action viewController];
  transition = [action transition];
  type = [transition type];
  [viewController viewWillDismissWithTransition:transition];
  [viewController viewWillDisappear:type != 0];
  v8 = [(NSMutableArray *)self->_viewControllers count];
  if (v8 != 1)
  {
    selectedViewControllerIndex = self->_selectedViewControllerIndex;
    if (selectedViewControllerIndex == [(NSMutableArray *)self->_viewControllers indexOfObjectIdenticalTo:viewController])
    {
      --self->_selectedViewControllerIndex;
    }
  }

  _selectedViewController = [(SUOverlayBackgroundViewController *)self _selectedViewController];
  if (_selectedViewController == viewController)
  {
    v11 = 0;
  }

  else
  {
    v11 = _selectedViewController;
  }

  [action setOtherViewController:v11];
  [v11 viewWillAppear:type != 0];
  view = [(SUOverlayBackgroundViewController *)self view];
  if (type)
  {
    [transition duration];
    if (v8 != 1 && (type & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      [(SUOverlayBackgroundViewController *)self _removeViewController:viewController];
      goto LABEL_27;
    }

    v15 = v13;
    [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
    [MEMORY[0x1E69DD250] beginAnimations:0 context:0];
    [MEMORY[0x1E69DD250] setAnimationDelegate:self];
    [MEMORY[0x1E69DD250] setAnimationDidStopSelector:sel__backgroundAnimationDidStop_finished_context_];
    [MEMORY[0x1E69DD250] setAnimationDuration:v15];
    if (v8 == 1)
    {
      [view setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
      if (type != 3)
      {
        goto LABEL_26;
      }
    }

    else if (type != 3)
    {
      if (type == 2)
      {
        [(SUOverlayBackgroundViewController *)self layoutViewControllers];
      }

      goto LABEL_26;
    }

    [(SUOverlayBackgroundViewController *)self _removeViewController:viewController];
    [(SUOverlayBackgroundViewController *)self layoutViewControllers];
    view2 = [viewController view];
    [(SUOverlayBackgroundViewController *)self _frameForSlideFromBottomForViewController:viewController];
    [view2 setFrame:?];
LABEL_26:
    [(SUOverlayBackgroundViewController *)self _removeViewController:viewController];
    [action setAnimationCount:{objc_msgSend(action, "animationCount") + 1}];
    [MEMORY[0x1E69DD250] commitAnimations];
LABEL_27:
    if (type == 1)
    {

      [(SUOverlayBackgroundViewController *)self _performFlipForAction:action];
    }

    return;
  }

  [(SUOverlayBackgroundViewController *)self _removeViewController:viewController];
  if (v8 == 1)
  {
    [view setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
  }

  else
  {
    [(SUOverlayBackgroundViewController *)self layoutViewControllers];
  }

  [(SUOverlayBackgroundViewController *)self _overlayActionDidFinish];
}

- (void)_performDismissEverythingAction:(id)action
{
  v35 = *MEMORY[0x1E69E9840];
  viewController = [action viewController];
  actionCopy = action;
  transition = [action transition];
  type = [transition type];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  viewControllers = self->_viewControllers;
  v9 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(viewControllers);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        [v13 viewWillDismissWithTransition:transition];
        [v13 viewWillDisappear:type != 0];
      }

      v10 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  view = [(SUOverlayBackgroundViewController *)self view];
  if (type)
  {
    v23 = view;
    if (type == 1)
    {
      [(SUOverlayBackgroundViewController *)self _performFlipForAction:actionCopy];
    }

    [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
    [MEMORY[0x1E69DD250] beginAnimations:0 context:0];
    [MEMORY[0x1E69DD250] setAnimationDelegate:self];
    [MEMORY[0x1E69DD250] setAnimationDidStopSelector:sel__backgroundAnimationDidStop_finished_context_];
    v15 = MEMORY[0x1E69DD250];
    [transition duration];
    [v15 setAnimationDuration:?];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = self->_viewControllers;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * j);
          if ([v21 isViewLoaded])
          {
            if (v21 != viewController)
            {
              goto LABEL_18;
            }

            if (type != 1)
            {
              if (type != 3)
              {
LABEL_18:
                [objc_msgSend(v21 "view")];
                continue;
              }

              view2 = [v21 view];
              [(SUOverlayBackgroundViewController *)self _frameForSlideFromBottomForViewController:v21];
              [view2 setFrame:?];
            }
          }
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v18);
    }

    [v23 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
    [actionCopy setAnimationCount:{objc_msgSend(actionCopy, "animationCount") + 1}];
    [MEMORY[0x1E69DD250] commitAnimations];
  }

  else
  {
    [view setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
    [(SUOverlayBackgroundViewController *)self _overlayActionDidFinish];
  }
}

- (void)_performNextAction
{
  if ([(NSMutableArray *)self->_actionQueue count])
  {
    v3 = [(NSMutableArray *)self->_actionQueue objectAtIndex:0];
    actionType = [v3 actionType];
    if (actionType > 1)
    {
      if (actionType == 2)
      {

        [(SUOverlayBackgroundViewController *)self _performDismissEverythingAction:v3];
      }

      else if (actionType == 3)
      {

        [(SUOverlayBackgroundViewController *)self _overlayActionDidFinish];
      }
    }

    else if (actionType)
    {
      if (actionType == 1)
      {

        [(SUOverlayBackgroundViewController *)self _performDismissAction:v3];
      }
    }

    else
    {

      [(SUOverlayBackgroundViewController *)self _performPresentAction:v3];
    }
  }
}

- (void)_performPresentAction:(id)action
{
  viewController = [action viewController];
  transition = [action transition];
  type = [transition type];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [viewController setPresentationTransition:transition];
  if (type == 2 && ([viewController isOnFront] & 1) == 0)
  {
    [viewController flipWithTransition:0];
  }

  [viewController viewWillAppear:type != 0];
  [(SUOverlayBackgroundViewController *)self _addViewController:viewController];
  _selectedViewController = [(SUOverlayBackgroundViewController *)self _selectedViewController];
  [action setOtherViewController:_selectedViewController];
  [_selectedViewController viewWillDisappear:type != 0];
  view = [(SUOverlayBackgroundViewController *)self view];
  if (type)
  {
    [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
    view2 = [viewController view];
    if (!_selectedViewController)
    {
      self->_selectedViewControllerIndex = [(NSMutableArray *)self->_viewControllers count]- 1;
      [view2 setAlpha:0.0];
    }

    switch(type)
    {
      case 1:
        [(SUOverlayBackgroundViewController *)self _performFlipForAction:action];
        break;
      case 2:
        [view addSubview:{objc_msgSend(viewController, "view")}];
        [(SUOverlayBackgroundViewController *)self layoutViewControllers];
        break;
      case 3:
        [view addSubview:view2];
        [(SUOverlayBackgroundViewController *)self layoutViewControllers];
        [(SUOverlayBackgroundViewController *)self _frameForSlideFromBottomForViewController:viewController];
        [view2 setFrame:?];
        break;
    }

    self->_selectedViewControllerIndex = [(NSMutableArray *)self->_viewControllers count]- 1;
    [MEMORY[0x1E69DD250] beginAnimations:0 context:0];
    [MEMORY[0x1E69DD250] setAnimationDelegate:self];
    [MEMORY[0x1E69DD250] setAnimationDidStopSelector:sel__backgroundAnimationDidStop_finished_context_];
    v11 = MEMORY[0x1E69DD250];
    [transition duration];
    [v11 setAnimationDuration:?];
    if ((type & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [(SUOverlayBackgroundViewController *)self layoutViewControllers];
    }

    [view setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "colorWithWhite:alpha:", 0.0, 0.5)}];
    [view2 setAlpha:1.0];
    [action setAnimationCount:{objc_msgSend(action, "animationCount") + 1}];
    v12 = MEMORY[0x1E69DD250];

    [v12 commitAnimations];
  }

  else
  {
    [view setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "colorWithWhite:alpha:", 0.0, 0.5)}];

    [(SUOverlayBackgroundViewController *)self _overlayActionDidFinish];
  }
}

- (void)_addViewController:(id)controller
{
  [(NSMutableArray *)self->_viewControllers addObject:?];

  [(SUOverlayBackgroundViewController *)self addChildViewController:controller];
}

- (CGRect)_centeredFrameForViewController:(id)controller
{
  [-[SUOverlayBackgroundViewController view](self "view")];
  v5 = v4;
  v7 = v6;
  [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  v9 = v8;
  v11 = v10;
  if (controller)
  {
    [controller overlaySize];
  }

  else
  {
    +[SUOverlayViewController defaultOverlaySize];
  }

  v14 = v12;
  v15 = v13;
  v16 = floor((v5 - v12) * 0.5);
  if (v11 >= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v11;
  }

  v18 = floor((v7 - v13 - v17) * 0.5);
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v18;
  result.origin.x = v16;
  return result;
}

- (id)_copyTransitionForTransition:(id)transition action:(id)action
{
  v6 = [transition copy];
  if ([v6 type] == 1)
  {
    actionType = [action actionType];
    [objc_msgSend(v6 "sourceElement")];
    v9 = v8;
    v11 = v10;
    viewController = [action viewController];
    if (![objc_msgSend(v6 "sourceElement")] || v11 < 0.00000011920929 || v9 < 0.00000011920929)
    {
      goto LABEL_7;
    }

    if (!actionType)
    {
      if (![(NSMutableArray *)self->_viewControllers count])
      {
        return v6;
      }

      goto LABEL_7;
    }

    if ([viewController isOnFront])
    {
LABEL_7:
      [v6 setType:2];
    }
  }

  return v6;
}

- (CGRect)_frameForSlideFromBottomForViewController:(id)controller
{
  [-[SUOverlayBackgroundViewController view](self "view")];
  v6 = v5;
  [(SUOverlayBackgroundViewController *)self _centeredFrameForViewController:controller];
  v10 = v6 + floor((v6 - v9) * 0.5);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v10;
  result.origin.x = v7;
  return result;
}

- (void)_layoutForKeyboardChangeWithInfo:(id)info
{
  v5 = [objc_msgSend(info objectForKey:{*MEMORY[0x1E69DDF38]), "unsignedIntegerValue"}];
  [objc_msgSend(info objectForKey:{*MEMORY[0x1E69DDF40]), "floatValue"}];
  if (v6 <= 2.2204e-16)
  {

    [(SUOverlayBackgroundViewController *)self layoutViewControllers];
  }

  else
  {
    v7 = v6;
    [MEMORY[0x1E69DD250] beginAnimations:0 context:0];
    [MEMORY[0x1E69DD250] setAnimationCurve:v5];
    [MEMORY[0x1E69DD250] setAnimationDuration:v7];
    [(SUOverlayBackgroundViewController *)self layoutViewControllers];
    v8 = MEMORY[0x1E69DD250];

    [v8 commitAnimations];
  }
}

- (void)_performFlipForAction:(id)action
{
  transition = [action transition];
  viewController = [action viewController];
  sourceElement = [transition sourceElement];
  imageRepresentation = [sourceElement imageRepresentation];
  if (imageRepresentation)
  {
    v9 = imageRepresentation;
    view = [(SUOverlayBackgroundViewController *)self view];
    view2 = [viewController view];
    if ([view2 superview] == view)
    {
      v12 = [objc_msgSend(view "subviews")];
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    [v22 setContentMode:1];
    [sourceElement frame];
    if (v16 >= v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    [view convertRect:0 fromView:{v13 + floor((v15 - v17) * 0.5), v14 + floor((v16 - v17) * 0.5), v17, v17}];
    [v22 setFrame:?];
    if ([action actionType])
    {
      v18 = [[SUScalingFlipView alloc] initWithFrontView:view2 backView:v22];
      self->_activeFlipView = v18;
      [(SUScalingFlipView *)v18 setDirection:1];
      activeFlipView = self->_activeFlipView;
    }

    else
    {
      [(SUOverlayBackgroundViewController *)self _centeredFrameForViewController:viewController];
      [view2 setFrame:?];
      activeFlipView = [[SUScalingFlipView alloc] initWithFrontView:v22 backView:view2];
      self->_activeFlipView = activeFlipView;
    }

    [(SUScalingFlipView *)activeFlipView setDelegate:self];
    v20 = self->_activeFlipView;
    [transition duration];
    [(SUScalingFlipView *)v20 setDuration:?];
    v21 = self->_activeFlipView;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [view addSubview:v21];
    }

    else
    {
      [view insertSubview:v21 atIndex:v12];
    }

    [sourceElement setProperty:@"opacity" value:@"0"];
    [action setAnimationCount:{objc_msgSend(action, "animationCount") + 1}];
    [(SUScalingFlipView *)self->_activeFlipView performFlip];
  }
}

- (void)_reloadGestureRecognizers
{
  v3 = [-[SUOverlayBackgroundViewController _selectedViewController](self "_selectedViewController")];
  swipeGestureRecognizer = self->_swipeGestureRecognizer;
  if (v3)
  {
    if (!swipeGestureRecognizer)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:self action:sel__swipe_];
      self->_swipeGestureRecognizer = v5;
      [(UISwipeGestureRecognizer *)v5 setDelegate:self];
      [(UISwipeGestureRecognizer *)self->_swipeGestureRecognizer setDirection:1];
      swipeGestureRecognizer = self->_swipeGestureRecognizer;
    }

    captureView = self->_captureView;

    [(SUTouchCaptureView *)captureView addGestureRecognizer:swipeGestureRecognizer];
  }

  else
  {
    if (swipeGestureRecognizer)
    {
      [(SUTouchCaptureView *)self->_captureView removeGestureRecognizer:?];
      v7 = self->_swipeGestureRecognizer;
    }

    else
    {
      v7 = 0;
    }

    [(UISwipeGestureRecognizer *)v7 setDelegate:0];

    self->_swipeGestureRecognizer = 0;
  }
}

- (void)_removeViewController:(id)controller
{
  [(SUOverlayBackgroundViewController *)self removeChildViewController:?];
  viewControllers = self->_viewControllers;

  [(NSMutableArray *)viewControllers removeObject:controller];
}

- (id)_selectedViewController
{
  selectedViewControllerIndex = self->_selectedViewControllerIndex;
  if ((selectedViewControllerIndex & 0x8000000000000000) != 0 || selectedViewControllerIndex >= [(NSMutableArray *)self->_viewControllers count])
  {
    return 0;
  }

  viewControllers = self->_viewControllers;
  v5 = self->_selectedViewControllerIndex;

  return [(NSMutableArray *)viewControllers objectAtIndex:v5];
}

- (void)_sendDidDismiss
{
  selfCopy = self;
  delegate = self->_delegate;
  if (delegate)
  {

    [(SUOverlayBackgroundDelegate *)delegate scriptOverlayBackgroundDidDismiss:self];
  }

  else
  {

    [(UIViewController *)self dismissOverlayBackgroundViewController];
  }
}

- (void)_shouldDismissFinishedWithValue:(id)value
{
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [value BOOLValue];
    if (self->_askingToDismissEverything)
    {
      self->_askingToDismissEverything = 0;
      if (!bOOLValue)
      {
        return;
      }

      goto LABEL_7;
    }

    if (!self->_askingToDismissSelection)
    {
      return;
    }

    self->_askingToDismissSelection = 0;
    if (!bOOLValue)
    {
      return;
    }
  }

  else
  {
    if (self->_askingToDismissEverything)
    {
      self->_askingToDismissEverything = 0;
LABEL_7:

      [(SUOverlayBackgroundViewController *)self dismissAnimated:1];
      return;
    }

    if (!self->_askingToDismissSelection)
    {
      return;
    }

    self->_askingToDismissSelection = 0;
  }

  _selectedViewController = [(SUOverlayBackgroundViewController *)self _selectedViewController];

  [(SUOverlayBackgroundViewController *)self dismissOverlay:_selectedViewController animated:1];
}

- (void)_tearDownFlipView
{
  [(SUScalingFlipView *)self->_activeFlipView setDelegate:0];

  self->_activeFlipView = 0;
}

- (double)_viewControllerHorizontalPadding
{
  v3 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  result = 20.0;
  if (v3 == 1)
  {
    interfaceOrientation = [(SUViewController *)self interfaceOrientation];
    result = 96.0;
    if ((interfaceOrientation - 1) < 2)
    {
      return 34.0;
    }
  }

  return result;
}

- (double)_viewControllerKeyboardOffset
{
  v18 = *MEMORY[0x1E69E9840];
  p_keyboardFrame = &self->_keyboardFrame;
  v3 = 0.0;
  if (self->_keyboardFrame.size.height > 0.00000011920929 && [(NSMutableArray *)self->_viewControllers count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    viewControllers = self->_viewControllers;
    v6 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      v3 = 1.79769313e308;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(viewControllers);
          }

          [(SUOverlayBackgroundViewController *)self _centeredFrameForViewController:*(*(&v13 + 1) + 8 * i)];
          y = v19.origin.y;
          v20 = CGRectIntersection(v19, *p_keyboardFrame);
          if (y >= v20.size.height)
          {
            height = v20.size.height;
          }

          else
          {
            height = y;
          }

          if (v3 >= height)
          {
            v3 = height;
          }
        }

        v7 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      return 1.79769313e308;
    }
  }

  return v3;
}

@end