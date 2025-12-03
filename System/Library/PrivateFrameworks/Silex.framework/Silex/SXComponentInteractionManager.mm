@interface SXComponentInteractionManager
- (BOOL)accessibilityShouldHandleInteractionForComponentView:(id)view;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasInteractionForLocation:(CGPoint)location;
- (CGPoint)longPressStartLocation;
- (SXComponentInteractionManager)initWithInteractionHandlerManager:(id)manager viewport:(id)viewport;
- (id)previewViewControllerForLocation:(CGPoint)location;
- (void)animateHighlight:(BOOL)highlight forComponentView:(id)view;
- (void)cancelInteractionForComponentView:(id)view;
- (void)commitViewController:(id)controller;
- (void)handleInteraction:(id)interaction withType:(unint64_t)type;
- (void)handleLongPressGesture:(id)gesture;
- (void)handleTapGesture:(id)gesture;
- (void)toggleHighlightForComponentView:(id)view;
@end

@implementation SXComponentInteractionManager

- (SXComponentInteractionManager)initWithInteractionHandlerManager:(id)manager viewport:(id)viewport
{
  managerCopy = manager;
  viewportCopy = viewport;
  v18.receiver = self;
  v18.super_class = SXComponentInteractionManager;
  v9 = [(SXComponentInteractionManager *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_interactionHandlerManager, manager);
    objc_storeStrong(&v10->_viewport, viewport);
    v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v10 action:sel_handleTapGesture_];
    tapGestureRecognizer = v10->_tapGestureRecognizer;
    v10->_tapGestureRecognizer = v11;

    [(UITapGestureRecognizer *)v10->_tapGestureRecognizer setCancelsTouchesInView:0];
    view = [viewportCopy view];
    [view addGestureRecognizer:v10->_tapGestureRecognizer];

    v14 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v10 action:sel_handleLongPressGesture_];
    longPressGestureRecognizer = v10->_longPressGestureRecognizer;
    v10->_longPressGestureRecognizer = v14;

    [(UILongPressGestureRecognizer *)v10->_longPressGestureRecognizer setCancelsTouchesInView:0];
    [(UILongPressGestureRecognizer *)v10->_longPressGestureRecognizer setMinimumPressDuration:0.07];
    [(UILongPressGestureRecognizer *)v10->_longPressGestureRecognizer setDelegate:v10];
    view2 = [viewportCopy view];
    [view2 addGestureRecognizer:v10->_longPressGestureRecognizer];

    [(UITapGestureRecognizer *)v10->_tapGestureRecognizer requireGestureRecognizerToFail:v10->_longPressGestureRecognizer];
  }

  return v10;
}

- (BOOL)hasInteractionForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionHandlerManager = [(SXComponentInteractionManager *)self interactionHandlerManager];
  v6 = [interactionHandlerManager componentViewForLocation:{x, y}];
  v7 = v6 != 0;

  return v7;
}

- (id)previewViewControllerForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v27 = *MEMORY[0x1E69E9840];
  interactionHandlerManager = [(SXComponentInteractionManager *)self interactionHandlerManager];
  v7 = [interactionHandlerManager componentViewForLocation:{x, y}];

  [(SXComponentInteractionManager *)self cancelInteractionForComponentView:v7];
  [(SXComponentInteractionManager *)self animateHighlight:0 forComponentView:v7];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  interactionHandlerManager2 = [(SXComponentInteractionManager *)self interactionHandlerManager];
  v9 = [interactionHandlerManager2 interactionsForComponentView:v7];

  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v13 handlesType:8])
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  handler = [v10 handler];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([handler previewViewController], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = v15;
    v17 = [[SXComponentInteractionPreview alloc] initWithInteraction:v10 viewController:v15];
    [(SXComponentInteractionManager *)self setCurrentPreview:v17];

    v18 = [SXComponentInteractionPreviewContext alloc];
    componentView = [v10 componentView];
    [componentView absoluteFrame];
    v20 = [(SXComponentInteractionPreviewContext *)v18 initWithViewController:v16 sourceRect:?];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)commitViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    currentPreview = [(SXComponentInteractionManager *)self currentPreview];
    if (currentPreview)
    {
      v5 = currentPreview;
      currentPreview2 = [(SXComponentInteractionManager *)self currentPreview];
      viewController = [(SXComponentInteractionPreview *)currentPreview2 viewController];

      if (viewController == controllerCopy)
      {
        currentPreview3 = [(SXComponentInteractionManager *)self currentPreview];
        text = [(SXFullscreenCaption *)currentPreview3 text];
        handler = [text handler];

        if (objc_opt_respondsToSelector())
        {
          [handler commitViewController:controllerCopy];
        }

        [(SXComponentInteractionManager *)self setCurrentPreview:0];
      }
    }
  }
}

- (void)handleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = [gestureCopy state] == 3;
  v5 = gestureCopy;
  if (v4)
  {
    view = [gestureCopy view];
    superview = [view superview];
    [gestureCopy locationInView:superview];
    v9 = v8;
    v11 = v10;

    view2 = [gestureCopy view];
    superview2 = [view2 superview];
    view3 = [gestureCopy view];
    [superview2 convertPoint:view3 toView:{v9, v11}];
    v16 = v15;
    v18 = v17;

    interactionHandlerManager = [(SXComponentInteractionManager *)self interactionHandlerManager];
    v20 = [interactionHandlerManager componentViewForLocation:{v16, v18}];

    interactionHandlerManager2 = [(SXComponentInteractionManager *)self interactionHandlerManager];
    v22 = [interactionHandlerManager2 interactionsForComponentView:v20 type:2];

    firstObject = [v22 firstObject];
    if (firstObject)
    {
      [(SXComponentInteractionManager *)self handleInteraction:firstObject withType:2];
      [(SXComponentInteractionManager *)self toggleHighlightForComponentView:v20];
    }

    v5 = gestureCopy;
  }
}

- (BOOL)accessibilityShouldHandleInteractionForComponentView:(id)view
{
  viewCopy = view;
  interactionHandlerManager = [(SXComponentInteractionManager *)self interactionHandlerManager];
  v6 = [interactionHandlerManager interactionsForComponentView:viewCopy type:2];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    [(SXComponentInteractionManager *)self handleInteraction:firstObject withType:2];
    [(SXComponentInteractionManager *)self animateHighlight:0 forComponentView:viewCopy];
  }

  return firstObject != 0;
}

- (void)handleLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  tapGestureRecognizer = [(SXComponentInteractionManager *)self tapGestureRecognizer];
  [tapGestureRecognizer cancel];

  view = [gestureCopy view];
  superview = [view superview];
  [gestureCopy locationInView:superview];
  v9 = v8;
  v11 = v10;

  view2 = [gestureCopy view];
  superview2 = [view2 superview];
  view3 = [gestureCopy view];
  [superview2 convertPoint:view3 toView:{v9, v11}];
  v16 = v15;
  v18 = v17;

  interactionHandlerManager = [(SXComponentInteractionManager *)self interactionHandlerManager];
  v20 = [interactionHandlerManager componentViewForLocation:{v16, v18}];

  interactionHandlerManager2 = [(SXComponentInteractionManager *)self interactionHandlerManager];
  v22 = [interactionHandlerManager2 interactionsForComponentView:v20 type:4];
  firstObject = [v22 firstObject];

  interactionHandlerManager3 = [(SXComponentInteractionManager *)self interactionHandlerManager];
  v25 = [interactionHandlerManager3 interactionsForComponentView:v20 type:2];
  firstObject2 = [v25 firstObject];

  if (!v20 || !(firstObject | firstObject2))
  {
    [gestureCopy cancel];
    goto LABEL_31;
  }

  if ([gestureCopy state] == 1)
  {
    [(SXComponentInteractionManager *)self setCurrentComponentView:v20];
    [(SXComponentInteractionManager *)self animateHighlight:1 forComponentView:v20];
    [(SXComponentInteractionManager *)self setLongPressStartLocation:v9, v11];
  }

  else if ([gestureCopy state] == 2 || objc_msgSend(gestureCopy, "state") == 3)
  {
    currentComponentView = [(SXComponentInteractionManager *)self currentComponentView];

    if (currentComponentView != v20)
    {
      [(SXComponentInteractionManager *)self cancelInteractionForComponentView:v20];
      [(SXComponentInteractionManager *)self animateHighlight:0 forComponentView:v20];
      goto LABEL_31;
    }
  }

  if ([gestureCopy state] == 1)
  {
    if (firstObject)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __56__SXComponentInteractionManager_handleLongPressGesture___block_invoke;
      v34[3] = &unk_1E84FECA0;
      v34[4] = self;
      v35 = firstObject;
      v36 = v20;
      v28 = [SXDelayed execute:v34 delay:1.0];
      [(SXComponentInteractionManager *)self setLongPressDelay:v28];
    }

    goto LABEL_27;
  }

  if ([gestureCopy state] == 2)
  {
    [(SXComponentInteractionManager *)self longPressStartLocation];
    v30 = v29 - v9;
    if (v30 < 0.0)
    {
      v30 = -v30;
    }

    if (v30 <= 10.0)
    {
      [(SXComponentInteractionManager *)self longPressStartLocation];
      v32 = v31 - v11;
      v33 = -(v31 - v11);
      if (v32 < 0.0)
      {
        v32 = v33;
      }

      if (v32 <= 10.0)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_25;
  }

  if ([gestureCopy state] == 3)
  {
    [(SXComponentInteractionManager *)self handleInteraction:firstObject2 withType:2];
LABEL_26:
    [(SXComponentInteractionManager *)self animateHighlight:0 forComponentView:v20];
    goto LABEL_27;
  }

  if ([gestureCopy state] == 4 || objc_msgSend(gestureCopy, "state") == 5)
  {
LABEL_25:
    [(SXComponentInteractionManager *)self cancelInteractionForComponentView:v20];
    goto LABEL_26;
  }

LABEL_27:
  if ([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4 || objc_msgSend(gestureCopy, "state") == 5)
  {
    [(SXComponentInteractionManager *)self setLongPressStartLocation:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }

LABEL_31:
}

uint64_t __56__SXComponentInteractionManager_handleLongPressGesture___block_invoke(uint64_t a1)
{
  [*(a1 + 32) handleInteraction:*(a1 + 40) withType:4];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 animateHighlight:0 forComponentView:v3];
}

- (void)handleInteraction:(id)interaction withType:(unint64_t)type
{
  interactionCopy = interaction;
  handler = [interactionCopy handler];
  componentView = [interactionCopy componentView];
  componentView2 = [interactionCopy componentView];
  [componentView2 contentFrame];
  [handler handleInteractionType:type sourceView:componentView sourceRect:?];

  componentView3 = [interactionCopy componentView];

  [(SXComponentInteractionManager *)self cancelInteractionForComponentView:componentView3];
}

- (void)cancelInteractionForComponentView:(id)view
{
  viewCopy = view;
  currentComponentView = [(SXComponentInteractionManager *)self currentComponentView];

  if (currentComponentView == viewCopy)
  {
    longPressDelay = [(SXComponentInteractionManager *)self longPressDelay];
    [longPressDelay cancel];

    tapGestureRecognizer = [(SXComponentInteractionManager *)self tapGestureRecognizer];
    [tapGestureRecognizer cancel];

    longPressGestureRecognizer = [(SXComponentInteractionManager *)self longPressGestureRecognizer];
    [longPressGestureRecognizer cancel];
  }

  [(SXComponentInteractionManager *)self setCurrentComponentView:0];
}

- (void)animateHighlight:(BOOL)highlight forComponentView:(id)view
{
  viewCopy = view;
  v7 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__SXComponentInteractionManager_animateHighlight_forComponentView___block_invoke;
  v9[3] = &unk_1E8501178;
  highlightCopy = highlight;
  v9[4] = self;
  v10 = viewCopy;
  v8 = viewCopy;
  [v7 animateWithDuration:2 delay:v9 options:0 animations:0.1 completion:0.0];
}

- (void)toggleHighlightForComponentView:(id)view
{
  viewCopy = view;
  [(SXComponentInteractionManager *)self animateHighlight:1 forComponentView:viewCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__SXComponentInteractionManager_toggleHighlightForComponentView___block_invoke;
  v7[3] = &unk_1E84FEC78;
  v7[4] = self;
  v8 = viewCopy;
  v5 = viewCopy;
  v6 = [SXDelayed execute:v7 delay:0.2];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  view = [recognizer view];
  [touchCopy locationInView:view];
  v9 = v8;
  v11 = v10;

  viewport = [(SXComponentInteractionManager *)self viewport];
  [viewport dynamicBounds];
  v14.x = v9;
  v14.y = v11;
  LOBYTE(self) = CGRectContainsPoint(v15, v14);

  return self;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  viewport = [(SXComponentInteractionManager *)self viewport];
  view = [viewport view];
  panGestureRecognizer = [view panGestureRecognizer];
  if ([panGestureRecognizer state] == 1)
  {
    v7 = 0;
  }

  else
  {
    viewport2 = [(SXComponentInteractionManager *)self viewport];
    view2 = [viewport2 view];
    panGestureRecognizer2 = [view2 panGestureRecognizer];
    v7 = [panGestureRecognizer2 state] != 2;
  }

  return v7;
}

- (CGPoint)longPressStartLocation
{
  x = self->_longPressStartLocation.x;
  y = self->_longPressStartLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end