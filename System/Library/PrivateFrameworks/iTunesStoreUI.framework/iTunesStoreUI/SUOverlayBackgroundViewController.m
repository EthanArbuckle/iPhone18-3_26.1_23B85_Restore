@interface SUOverlayBackgroundViewController
- (BOOL)shouldExcludeFromNavigationHistory;
- (CGRect)_centeredFrameForViewController:(id)a3;
- (CGRect)_frameForSlideFromBottomForViewController:(id)a3;
- (SUOverlayBackgroundViewController)init;
- (SUOverlayViewController)selectedViewController;
- (double)_viewControllerHorizontalPadding;
- (double)_viewControllerKeyboardOffset;
- (id)_copyTransitionForTransition:(id)a3 action:(id)a4;
- (id)_selectedViewController;
- (id)copyArchivableContext;
- (id)copyChildViewControllersForReason:(int64_t)a3;
- (id)viewControllerForScriptWindowContext:(id)a3;
- (void)_addViewController:(id)a3;
- (void)_backgroundAnimationDidStop:(id)a3 finished:(id)a4 context:(void *)a5;
- (void)_captureViewAction:(id)a3;
- (void)_enqueueAction:(id)a3;
- (void)_finishDismissAction:(id)a3;
- (void)_finishDismissEverythingAction:(id)a3;
- (void)_finishDismissOfViewController:(id)a3 animated:(BOOL)a4;
- (void)_finishPresentAction:(id)a3;
- (void)_layoutForKeyboardChangeWithInfo:(id)a3;
- (void)_overlayActionDidFinish;
- (void)_overlayAnimationDidFinish;
- (void)_performDismissAction:(id)a3;
- (void)_performDismissEverythingAction:(id)a3;
- (void)_performFlipForAction:(id)a3;
- (void)_performNextAction;
- (void)_performPresentAction:(id)a3;
- (void)_reloadGestureRecognizers;
- (void)_removeViewController:(id)a3;
- (void)_sendDidDismiss;
- (void)_shouldDismissFinishedWithValue:(id)a3;
- (void)_swipe:(id)a3;
- (void)_tearDownFlipView;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)a3;
- (void)dismissOverlay:(id)a3 animated:(BOOL)a4;
- (void)keyboardWillHideWithInfo:(id)a3;
- (void)keyboardWillShowWithInfo:(id)a3;
- (void)layoutViewControllers;
- (void)loadView;
- (void)overlayPageViewTapped:(id)a3;
- (void)populateNavigationHistoryWithItems:(id)a3;
- (void)presentOverlay:(id)a3 withTransition:(id)a4;
- (void)restoreArchivableContext:(id)a3;
- (void)scalingFlipViewDidFinish:(id)a3;
- (void)storePage:(id)a3 finishedWithSuccess:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
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

- (void)dismissAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(NSMutableArray *)self->_viewControllers count])
  {
    v8 = objc_alloc_init(SUOverlayAction);
    [(SUOverlayAction *)v8 setActionType:2];
    v5 = [(SUOverlayBackgroundViewController *)self _selectedViewController];
    [(SUOverlayAction *)v8 setViewController:v5];
    if (v3)
    {
      v6 = [v5 presentationTransition];
      if (v6)
      {
        v7 = [(SUOverlayBackgroundViewController *)self _copyTransitionForTransition:v6 action:v8];
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

- (void)dismissOverlay:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = objc_alloc_init(SUOverlayAction);
  [(SUOverlayAction *)v9 setActionType:1];
  [(SUOverlayAction *)v9 setViewController:a3];
  if (v4)
  {
    v7 = [a3 presentationTransition];
    if (v7)
    {
      v8 = [(SUOverlayBackgroundViewController *)self _copyTransitionForTransition:v7 action:v9];
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
  v3 = [(SUOverlayBackgroundViewController *)self _selectedViewController];
  if (v3)
  {
    v4 = v3;
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
        v41 = [v32 view];
        v42 = v40;
        v30 = v39;
        v29 = v38;
        [v41 setFrame:{v42, v34 - v45, v36, v47}];
        v31 = v31 + v18 + v36;
        ++v28;
      }

      while (v19 != v28);
    }
  }
}

- (void)populateNavigationHistoryWithItems:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableArray *)self->_viewControllers count];
  selectedViewControllerIndex = self->_selectedViewControllerIndex;
  if (v5 < selectedViewControllerIndex)
  {
    selectedViewControllerIndex = v5;
  }

  self->_selectedViewControllerIndex = selectedViewControllerIndex;
  v7 = [(SUViewController *)self clientInterface];
  v8 = [(SUViewController *)self viewControllerFactory];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a3;
  v9 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        v14 = [v8 newStorePageViewControllerWithSection:0];
        [v14 setClientInterface:v7];
        [v14 setTitle:{objc_msgSend(v13, "title")}];
        [v14 setURLRequestProperties:{objc_msgSend(v13, "URLRequestProperties")}];
        if (v14)
        {
          v15 = objc_alloc_init(SUOverlayViewController);
          [(SUOverlayViewController *)v15 setBackViewController:v14];
          [(SUViewController *)v15 setClientInterface:v7];
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

- (void)presentOverlay:(id)a3 withTransition:(id)a4
{
  v8 = objc_alloc_init(SUOverlayAction);
  [(SUOverlayAction *)v8 setActionType:0];
  [(SUOverlayAction *)v8 setViewController:a3];
  v7 = [(SUOverlayBackgroundViewController *)self _copyTransitionForTransition:a4 action:v8];
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

- (id)viewControllerForScriptWindowContext:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [a3 tag];
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

- (id)copyChildViewControllersForReason:(int64_t)a3
{
  selectedViewControllerIndex = self->_selectedViewControllerIndex;
  v6 = [(NSMutableArray *)self->_viewControllers count];
  if (a3 || selectedViewControllerIndex >= v6)
  {
    v9.receiver = self;
    v9.super_class = SUOverlayBackgroundViewController;
    return [(SUViewController *)&v9 copyChildViewControllersForReason:a3];
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

        v10 = [*(*(&v13 + 1) + 8 * v9) copyArchivableContext];
        if (v10)
        {
          v11 = v10;
          [v4 addObject:v10];
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

- (void)keyboardWillHideWithInfo:(id)a3
{
  v5 = *(MEMORY[0x1E695F058] + 16);
  self->_keyboardFrame.origin = *MEMORY[0x1E695F058];
  self->_keyboardFrame.size = v5;
  [(SUOverlayBackgroundViewController *)self _layoutForKeyboardChangeWithInfo:?];
  v6.receiver = self;
  v6.super_class = SUOverlayBackgroundViewController;
  [(UIViewController *)&v6 keyboardWillHideWithInfo:a3];
}

- (void)keyboardWillShowWithInfo:(id)a3
{
  p_keyboardFrame = &self->_keyboardFrame;
  [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E69DDFA0]), "CGRectValue"}];
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
    [(SUOverlayBackgroundViewController *)self _layoutForKeyboardChangeWithInfo:a3];
  }

  v14.receiver = self;
  v14.super_class = SUOverlayBackgroundViewController;
  [(UIViewController *)&v14 keyboardWillShowWithInfo:a3];
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

- (void)restoreArchivableContext:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [a3 valueForMetadataKey:@"sub-contexts"];
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

        v10 = [*(*(&v14 + 1) + 8 * v9) copyViewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SUOverlayBackgroundViewController *)self _addViewController:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [a3 valueForMetadataKey:@"selected-index"];
  if (v11)
  {
    v12 = [v11 integerValue];
    v13 = [(NSMutableArray *)self->_viewControllers count]- 1;
    if (v12 < v13)
    {
      v13 = v12;
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

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(SUOverlayBackgroundViewController *)self layoutViewControllers];
  v5.receiver = self;
  v5.super_class = SUOverlayBackgroundViewController;
  [(SUViewController *)&v5 viewDidAppear:v3];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  [(SUOverlayBackgroundViewController *)self layoutViewControllers];
  v7.receiver = self;
  v7.super_class = SUOverlayBackgroundViewController;
  [(SUViewController *)&v7 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
}

- (void)overlayPageViewTapped:(id)a3
{
  v5 = [(SUOverlayBackgroundViewController *)self selectedViewController];
  if (v5)
  {
    if (!self->_askingToDismissSelection)
    {
      v6 = v5;
      if ([(NSMutableArray *)self->_viewControllers containsObject:a3])
      {
        self->_askingToDismissSelection = 1;
        v7 = [(SUOverlayViewController *)v6 shouldDismissFunction];
        v8 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __59__SUOverlayBackgroundViewController_overlayPageViewTapped___block_invoke;
        v9[3] = &unk_1E8165A10;
        v9[4] = v8;
        if (![(SUScriptFunction *)v7 callWithArguments:0 completionBlock:v9])
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

- (void)storePage:(id)a3 finishedWithSuccess:(BOOL)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a4)
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
          if ([a3 isDescendantOfViewController:v11])
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

- (void)_captureViewAction:(id)a3
{
  if (!self->_askingToDismissEverything)
  {
    self->_askingToDismissEverything = 1;
    v4 = [-[SUOverlayBackgroundViewController _selectedViewController](self _selectedViewController];
    v5 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__SUOverlayBackgroundViewController__captureViewAction___block_invoke;
    v6[3] = &unk_1E8165A10;
    v6[4] = v5;
    if (([v4 callWithArguments:0 completionBlock:v6] & 1) == 0)
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

- (void)_swipe:(id)a3
{
  if ([a3 state] == 3 && -[NSMutableArray count](self->_viewControllers, "count") >= 2)
  {
    v4 = [(NSMutableArray *)self->_viewControllers objectAtIndex:self->_selectedViewControllerIndex];
    if ([v4 canSwipeToDismiss])
    {

      [(SUOverlayBackgroundViewController *)self dismissOverlay:v4 animated:1];
    }
  }
}

- (void)_backgroundAnimationDidStop:(id)a3 finished:(id)a4 context:(void *)a5
{
  [objc_msgSend(MEMORY[0x1E69DC668] sharedApplication];

  [(SUOverlayBackgroundViewController *)self _overlayAnimationDidFinish];
}

- (void)scalingFlipViewDidFinish:(id)a3
{
  if (self->_activeFlipView == a3)
  {
    [(SUOverlayBackgroundViewController *)self _overlayAnimationDidFinish];
  }
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

    [(SUOverlayBackgroundViewController *)self _performNextAction];
  }
}

- (void)_finishDismissAction:(id)a3
{
  v5 = [a3 transition];
  [objc_msgSend(v5 "sourceElement")];
  v6 = [a3 viewController];
  v7 = [v5 type] != 0;
  [(SUOverlayBackgroundViewController *)self _finishDismissOfViewController:v6 animated:v7];
  [objc_msgSend(a3 "otherViewController")];
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

- (void)_finishDismissEverythingAction:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(a3 "transition")];
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

- (void)_finishDismissOfViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([a3 isViewLoaded])
  {
    [objc_msgSend(a3 "view")];
  }

  [a3 viewDidDisappear:v4];
  [(SUOverlayBackgroundViewController *)self removeChildViewController:a3];
  [a3 invalidate];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];

  [v7 postNotificationName:@"SUOverlayDidDismissNotification" object:a3];
}

- (void)_finishPresentAction:(id)a3
{
  v5 = [a3 viewController];
  v6 = [(SUOverlayBackgroundViewController *)self view];
  v7 = [v5 view];
  v8 = [v7 superview];
  if (v8)
  {
    v9 = v8;
    [v7 frame];
    [v6 convertRect:v9 fromView:?];
  }

  else
  {
    [(SUOverlayBackgroundViewController *)self _centeredFrameForViewController:v5];
  }

  [v7 setFrame:?];
  [v6 addSubview:v7];
  v10 = [objc_msgSend(a3 "transition")] != 0;
  [objc_msgSend(a3 "otherViewController")];
  [v5 viewDidAppear:v10];
  if ([v5 isOnFront])
  {
    v11 = [objc_msgSend(a3 "transition")];
    [v11 setType:1];
    [v5 flipWithTransition:v11];
  }

  self->_selectedViewControllerIndex = [(NSMutableArray *)self->_viewControllers indexOfObjectIdenticalTo:v5];
  [(SUOverlayBackgroundViewController *)self layoutViewControllers];
  [(SUOverlayBackgroundViewController *)self _reloadGestureRecognizers];
  v12 = [MEMORY[0x1E696AD88] defaultCenter];

  [v12 postNotificationName:@"SUOverlayDidShowNotification" object:v5];
}

- (void)_overlayActionDidFinish
{
  v3 = [(NSMutableArray *)self->_actionQueue objectAtIndex:0];
  v4 = [v3 actionType];
  if (v4)
  {
    if (v4 == 2)
    {
      [(SUOverlayBackgroundViewController *)self _finishDismissEverythingAction:v3];
    }

    else if (v4 == 1)
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
  v4 = [v3 animationCount];
  v5 = v4 - 1;
  if (v4 >= 1)
  {
    [v3 setAnimationCount:v5];
    v4 = v5;
  }

  if (!v4)
  {

    [(SUOverlayBackgroundViewController *)self _overlayActionDidFinish];
  }
}

- (void)_performDismissAction:(id)a3
{
  v5 = [a3 viewController];
  v6 = [a3 transition];
  v7 = [v6 type];
  [v5 viewWillDismissWithTransition:v6];
  [v5 viewWillDisappear:v7 != 0];
  v8 = [(NSMutableArray *)self->_viewControllers count];
  if (v8 != 1)
  {
    selectedViewControllerIndex = self->_selectedViewControllerIndex;
    if (selectedViewControllerIndex == [(NSMutableArray *)self->_viewControllers indexOfObjectIdenticalTo:v5])
    {
      --self->_selectedViewControllerIndex;
    }
  }

  v10 = [(SUOverlayBackgroundViewController *)self _selectedViewController];
  if (v10 == v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  [a3 setOtherViewController:v11];
  [v11 viewWillAppear:v7 != 0];
  v12 = [(SUOverlayBackgroundViewController *)self view];
  if (v7)
  {
    [v6 duration];
    if (v8 != 1 && (v7 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      [(SUOverlayBackgroundViewController *)self _removeViewController:v5];
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
      [v12 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
      if (v7 != 3)
      {
        goto LABEL_26;
      }
    }

    else if (v7 != 3)
    {
      if (v7 == 2)
      {
        [(SUOverlayBackgroundViewController *)self layoutViewControllers];
      }

      goto LABEL_26;
    }

    [(SUOverlayBackgroundViewController *)self _removeViewController:v5];
    [(SUOverlayBackgroundViewController *)self layoutViewControllers];
    v16 = [v5 view];
    [(SUOverlayBackgroundViewController *)self _frameForSlideFromBottomForViewController:v5];
    [v16 setFrame:?];
LABEL_26:
    [(SUOverlayBackgroundViewController *)self _removeViewController:v5];
    [a3 setAnimationCount:{objc_msgSend(a3, "animationCount") + 1}];
    [MEMORY[0x1E69DD250] commitAnimations];
LABEL_27:
    if (v7 == 1)
    {

      [(SUOverlayBackgroundViewController *)self _performFlipForAction:a3];
    }

    return;
  }

  [(SUOverlayBackgroundViewController *)self _removeViewController:v5];
  if (v8 == 1)
  {
    [v12 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
  }

  else
  {
    [(SUOverlayBackgroundViewController *)self layoutViewControllers];
  }

  [(SUOverlayBackgroundViewController *)self _overlayActionDidFinish];
}

- (void)_performDismissEverythingAction:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = [a3 viewController];
  v24 = a3;
  v6 = [a3 transition];
  v7 = [v6 type];
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
        [v13 viewWillDismissWithTransition:v6];
        [v13 viewWillDisappear:v7 != 0];
      }

      v10 = [(NSMutableArray *)viewControllers countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  v14 = [(SUOverlayBackgroundViewController *)self view];
  if (v7)
  {
    v23 = v14;
    if (v7 == 1)
    {
      [(SUOverlayBackgroundViewController *)self _performFlipForAction:v24];
    }

    [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
    [MEMORY[0x1E69DD250] beginAnimations:0 context:0];
    [MEMORY[0x1E69DD250] setAnimationDelegate:self];
    [MEMORY[0x1E69DD250] setAnimationDidStopSelector:sel__backgroundAnimationDidStop_finished_context_];
    v15 = MEMORY[0x1E69DD250];
    [v6 duration];
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
            if (v21 != v5)
            {
              goto LABEL_18;
            }

            if (v7 != 1)
            {
              if (v7 != 3)
              {
LABEL_18:
                [objc_msgSend(v21 "view")];
                continue;
              }

              v22 = [v21 view];
              [(SUOverlayBackgroundViewController *)self _frameForSlideFromBottomForViewController:v21];
              [v22 setFrame:?];
            }
          }
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v18);
    }

    [v23 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
    [v24 setAnimationCount:{objc_msgSend(v24, "animationCount") + 1}];
    [MEMORY[0x1E69DD250] commitAnimations];
  }

  else
  {
    [v14 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
    [(SUOverlayBackgroundViewController *)self _overlayActionDidFinish];
  }
}

- (void)_performNextAction
{
  if ([(NSMutableArray *)self->_actionQueue count])
  {
    v3 = [(NSMutableArray *)self->_actionQueue objectAtIndex:0];
    v4 = [v3 actionType];
    if (v4 > 1)
    {
      if (v4 == 2)
      {

        [(SUOverlayBackgroundViewController *)self _performDismissEverythingAction:v3];
      }

      else if (v4 == 3)
      {

        [(SUOverlayBackgroundViewController *)self _overlayActionDidFinish];
      }
    }

    else if (v4)
    {
      if (v4 == 1)
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

- (void)_performPresentAction:(id)a3
{
  v5 = [a3 viewController];
  v6 = [a3 transition];
  v7 = [v6 type];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [v5 setPresentationTransition:v6];
  if (v7 == 2 && ([v5 isOnFront] & 1) == 0)
  {
    [v5 flipWithTransition:0];
  }

  [v5 viewWillAppear:v7 != 0];
  [(SUOverlayBackgroundViewController *)self _addViewController:v5];
  v8 = [(SUOverlayBackgroundViewController *)self _selectedViewController];
  [a3 setOtherViewController:v8];
  [v8 viewWillDisappear:v7 != 0];
  v9 = [(SUOverlayBackgroundViewController *)self view];
  if (v7)
  {
    [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
    v10 = [v5 view];
    if (!v8)
    {
      self->_selectedViewControllerIndex = [(NSMutableArray *)self->_viewControllers count]- 1;
      [v10 setAlpha:0.0];
    }

    switch(v7)
    {
      case 1:
        [(SUOverlayBackgroundViewController *)self _performFlipForAction:a3];
        break;
      case 2:
        [v9 addSubview:{objc_msgSend(v5, "view")}];
        [(SUOverlayBackgroundViewController *)self layoutViewControllers];
        break;
      case 3:
        [v9 addSubview:v10];
        [(SUOverlayBackgroundViewController *)self layoutViewControllers];
        [(SUOverlayBackgroundViewController *)self _frameForSlideFromBottomForViewController:v5];
        [v10 setFrame:?];
        break;
    }

    self->_selectedViewControllerIndex = [(NSMutableArray *)self->_viewControllers count]- 1;
    [MEMORY[0x1E69DD250] beginAnimations:0 context:0];
    [MEMORY[0x1E69DD250] setAnimationDelegate:self];
    [MEMORY[0x1E69DD250] setAnimationDidStopSelector:sel__backgroundAnimationDidStop_finished_context_];
    v11 = MEMORY[0x1E69DD250];
    [v6 duration];
    [v11 setAnimationDuration:?];
    if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [(SUOverlayBackgroundViewController *)self layoutViewControllers];
    }

    [v9 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "colorWithWhite:alpha:", 0.0, 0.5)}];
    [v10 setAlpha:1.0];
    [a3 setAnimationCount:{objc_msgSend(a3, "animationCount") + 1}];
    v12 = MEMORY[0x1E69DD250];

    [v12 commitAnimations];
  }

  else
  {
    [v9 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "colorWithWhite:alpha:", 0.0, 0.5)}];

    [(SUOverlayBackgroundViewController *)self _overlayActionDidFinish];
  }
}

- (void)_addViewController:(id)a3
{
  [(NSMutableArray *)self->_viewControllers addObject:?];

  [(SUOverlayBackgroundViewController *)self addChildViewController:a3];
}

- (CGRect)_centeredFrameForViewController:(id)a3
{
  [-[SUOverlayBackgroundViewController view](self "view")];
  v5 = v4;
  v7 = v6;
  [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  v9 = v8;
  v11 = v10;
  if (a3)
  {
    [a3 overlaySize];
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

- (id)_copyTransitionForTransition:(id)a3 action:(id)a4
{
  v6 = [a3 copy];
  if ([v6 type] == 1)
  {
    v7 = [a4 actionType];
    [objc_msgSend(v6 "sourceElement")];
    v9 = v8;
    v11 = v10;
    v12 = [a4 viewController];
    if (![objc_msgSend(v6 "sourceElement")] || v11 < 0.00000011920929 || v9 < 0.00000011920929)
    {
      goto LABEL_7;
    }

    if (!v7)
    {
      if (![(NSMutableArray *)self->_viewControllers count])
      {
        return v6;
      }

      goto LABEL_7;
    }

    if ([v12 isOnFront])
    {
LABEL_7:
      [v6 setType:2];
    }
  }

  return v6;
}

- (CGRect)_frameForSlideFromBottomForViewController:(id)a3
{
  [-[SUOverlayBackgroundViewController view](self "view")];
  v6 = v5;
  [(SUOverlayBackgroundViewController *)self _centeredFrameForViewController:a3];
  v10 = v6 + floor((v6 - v9) * 0.5);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v10;
  result.origin.x = v7;
  return result;
}

- (void)_layoutForKeyboardChangeWithInfo:(id)a3
{
  v5 = [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E69DDF38]), "unsignedIntegerValue"}];
  [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E69DDF40]), "floatValue"}];
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

- (void)_performFlipForAction:(id)a3
{
  v5 = [a3 transition];
  v6 = [a3 viewController];
  v7 = [v5 sourceElement];
  v8 = [v7 imageRepresentation];
  if (v8)
  {
    v9 = v8;
    v10 = [(SUOverlayBackgroundViewController *)self view];
    v11 = [v6 view];
    if ([v11 superview] == v10)
    {
      v12 = [objc_msgSend(v10 "subviews")];
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    [v22 setContentMode:1];
    [v7 frame];
    if (v16 >= v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    [v10 convertRect:0 fromView:{v13 + floor((v15 - v17) * 0.5), v14 + floor((v16 - v17) * 0.5), v17, v17}];
    [v22 setFrame:?];
    if ([a3 actionType])
    {
      v18 = [[SUScalingFlipView alloc] initWithFrontView:v11 backView:v22];
      self->_activeFlipView = v18;
      [(SUScalingFlipView *)v18 setDirection:1];
      activeFlipView = self->_activeFlipView;
    }

    else
    {
      [(SUOverlayBackgroundViewController *)self _centeredFrameForViewController:v6];
      [v11 setFrame:?];
      activeFlipView = [[SUScalingFlipView alloc] initWithFrontView:v22 backView:v11];
      self->_activeFlipView = activeFlipView;
    }

    [(SUScalingFlipView *)activeFlipView setDelegate:self];
    v20 = self->_activeFlipView;
    [v5 duration];
    [(SUScalingFlipView *)v20 setDuration:?];
    v21 = self->_activeFlipView;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 addSubview:v21];
    }

    else
    {
      [v10 insertSubview:v21 atIndex:v12];
    }

    [v7 setProperty:@"opacity" value:@"0"];
    [a3 setAnimationCount:{objc_msgSend(a3, "animationCount") + 1}];
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

- (void)_removeViewController:(id)a3
{
  [(SUOverlayBackgroundViewController *)self removeChildViewController:?];
  viewControllers = self->_viewControllers;

  [(NSMutableArray *)viewControllers removeObject:a3];
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
  v3 = self;
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

- (void)_shouldDismissFinishedWithValue:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    v5 = [a3 BOOLValue];
    if (self->_askingToDismissEverything)
    {
      self->_askingToDismissEverything = 0;
      if (!v5)
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
    if (!v5)
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

  v6 = [(SUOverlayBackgroundViewController *)self _selectedViewController];

  [(SUOverlayBackgroundViewController *)self dismissOverlay:v6 animated:1];
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
    v5 = [(SUViewController *)self interfaceOrientation];
    result = 96.0;
    if ((v5 - 1) < 2)
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