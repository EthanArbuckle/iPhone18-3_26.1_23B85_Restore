@interface SXComponentInteractionManager
- (BOOL)accessibilityShouldHandleInteractionForComponentView:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasInteractionForLocation:(CGPoint)a3;
- (CGPoint)longPressStartLocation;
- (SXComponentInteractionManager)initWithInteractionHandlerManager:(id)a3 viewport:(id)a4;
- (id)previewViewControllerForLocation:(CGPoint)a3;
- (void)animateHighlight:(BOOL)a3 forComponentView:(id)a4;
- (void)cancelInteractionForComponentView:(id)a3;
- (void)commitViewController:(id)a3;
- (void)handleInteraction:(id)a3 withType:(unint64_t)a4;
- (void)handleLongPressGesture:(id)a3;
- (void)handleTapGesture:(id)a3;
- (void)toggleHighlightForComponentView:(id)a3;
@end

@implementation SXComponentInteractionManager

- (SXComponentInteractionManager)initWithInteractionHandlerManager:(id)a3 viewport:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = SXComponentInteractionManager;
  v9 = [(SXComponentInteractionManager *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_interactionHandlerManager, a3);
    objc_storeStrong(&v10->_viewport, a4);
    v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v10 action:sel_handleTapGesture_];
    tapGestureRecognizer = v10->_tapGestureRecognizer;
    v10->_tapGestureRecognizer = v11;

    [(UITapGestureRecognizer *)v10->_tapGestureRecognizer setCancelsTouchesInView:0];
    v13 = [v8 view];
    [v13 addGestureRecognizer:v10->_tapGestureRecognizer];

    v14 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v10 action:sel_handleLongPressGesture_];
    longPressGestureRecognizer = v10->_longPressGestureRecognizer;
    v10->_longPressGestureRecognizer = v14;

    [(UILongPressGestureRecognizer *)v10->_longPressGestureRecognizer setCancelsTouchesInView:0];
    [(UILongPressGestureRecognizer *)v10->_longPressGestureRecognizer setMinimumPressDuration:0.07];
    [(UILongPressGestureRecognizer *)v10->_longPressGestureRecognizer setDelegate:v10];
    v16 = [v8 view];
    [v16 addGestureRecognizer:v10->_longPressGestureRecognizer];

    [(UITapGestureRecognizer *)v10->_tapGestureRecognizer requireGestureRecognizerToFail:v10->_longPressGestureRecognizer];
  }

  return v10;
}

- (BOOL)hasInteractionForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(SXComponentInteractionManager *)self interactionHandlerManager];
  v6 = [v5 componentViewForLocation:{x, y}];
  v7 = v6 != 0;

  return v7;
}

- (id)previewViewControllerForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v27 = *MEMORY[0x1E69E9840];
  v6 = [(SXComponentInteractionManager *)self interactionHandlerManager];
  v7 = [v6 componentViewForLocation:{x, y}];

  [(SXComponentInteractionManager *)self cancelInteractionForComponentView:v7];
  [(SXComponentInteractionManager *)self animateHighlight:0 forComponentView:v7];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(SXComponentInteractionManager *)self interactionHandlerManager];
  v9 = [v8 interactionsForComponentView:v7];

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

  v14 = [v10 handler];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v14 previewViewController], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = v15;
    v17 = [[SXComponentInteractionPreview alloc] initWithInteraction:v10 viewController:v15];
    [(SXComponentInteractionManager *)self setCurrentPreview:v17];

    v18 = [SXComponentInteractionPreviewContext alloc];
    v19 = [v10 componentView];
    [v19 absoluteFrame];
    v20 = [(SXComponentInteractionPreviewContext *)v18 initWithViewController:v16 sourceRect:?];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)commitViewController:(id)a3
{
  v11 = a3;
  if (v11)
  {
    v4 = [(SXComponentInteractionManager *)self currentPreview];
    if (v4)
    {
      v5 = v4;
      v6 = [(SXComponentInteractionManager *)self currentPreview];
      v7 = [(SXComponentInteractionPreview *)v6 viewController];

      if (v7 == v11)
      {
        v8 = [(SXComponentInteractionManager *)self currentPreview];
        v9 = [(SXFullscreenCaption *)v8 text];
        v10 = [v9 handler];

        if (objc_opt_respondsToSelector())
        {
          [v10 commitViewController:v11];
        }

        [(SXComponentInteractionManager *)self setCurrentPreview:0];
      }
    }
  }
}

- (void)handleTapGesture:(id)a3
{
  v24 = a3;
  v4 = [v24 state] == 3;
  v5 = v24;
  if (v4)
  {
    v6 = [v24 view];
    v7 = [v6 superview];
    [v24 locationInView:v7];
    v9 = v8;
    v11 = v10;

    v12 = [v24 view];
    v13 = [v12 superview];
    v14 = [v24 view];
    [v13 convertPoint:v14 toView:{v9, v11}];
    v16 = v15;
    v18 = v17;

    v19 = [(SXComponentInteractionManager *)self interactionHandlerManager];
    v20 = [v19 componentViewForLocation:{v16, v18}];

    v21 = [(SXComponentInteractionManager *)self interactionHandlerManager];
    v22 = [v21 interactionsForComponentView:v20 type:2];

    v23 = [v22 firstObject];
    if (v23)
    {
      [(SXComponentInteractionManager *)self handleInteraction:v23 withType:2];
      [(SXComponentInteractionManager *)self toggleHighlightForComponentView:v20];
    }

    v5 = v24;
  }
}

- (BOOL)accessibilityShouldHandleInteractionForComponentView:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentInteractionManager *)self interactionHandlerManager];
  v6 = [v5 interactionsForComponentView:v4 type:2];
  v7 = [v6 firstObject];

  if (v7)
  {
    [(SXComponentInteractionManager *)self handleInteraction:v7 withType:2];
    [(SXComponentInteractionManager *)self animateHighlight:0 forComponentView:v4];
  }

  return v7 != 0;
}

- (void)handleLongPressGesture:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentInteractionManager *)self tapGestureRecognizer];
  [v5 cancel];

  v6 = [v4 view];
  v7 = [v6 superview];
  [v4 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [v4 view];
  v13 = [v12 superview];
  v14 = [v4 view];
  [v13 convertPoint:v14 toView:{v9, v11}];
  v16 = v15;
  v18 = v17;

  v19 = [(SXComponentInteractionManager *)self interactionHandlerManager];
  v20 = [v19 componentViewForLocation:{v16, v18}];

  v21 = [(SXComponentInteractionManager *)self interactionHandlerManager];
  v22 = [v21 interactionsForComponentView:v20 type:4];
  v23 = [v22 firstObject];

  v24 = [(SXComponentInteractionManager *)self interactionHandlerManager];
  v25 = [v24 interactionsForComponentView:v20 type:2];
  v26 = [v25 firstObject];

  if (!v20 || !(v23 | v26))
  {
    [v4 cancel];
    goto LABEL_31;
  }

  if ([v4 state] == 1)
  {
    [(SXComponentInteractionManager *)self setCurrentComponentView:v20];
    [(SXComponentInteractionManager *)self animateHighlight:1 forComponentView:v20];
    [(SXComponentInteractionManager *)self setLongPressStartLocation:v9, v11];
  }

  else if ([v4 state] == 2 || objc_msgSend(v4, "state") == 3)
  {
    v27 = [(SXComponentInteractionManager *)self currentComponentView];

    if (v27 != v20)
    {
      [(SXComponentInteractionManager *)self cancelInteractionForComponentView:v20];
      [(SXComponentInteractionManager *)self animateHighlight:0 forComponentView:v20];
      goto LABEL_31;
    }
  }

  if ([v4 state] == 1)
  {
    if (v23)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __56__SXComponentInteractionManager_handleLongPressGesture___block_invoke;
      v34[3] = &unk_1E84FECA0;
      v34[4] = self;
      v35 = v23;
      v36 = v20;
      v28 = [SXDelayed execute:v34 delay:1.0];
      [(SXComponentInteractionManager *)self setLongPressDelay:v28];
    }

    goto LABEL_27;
  }

  if ([v4 state] == 2)
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

  if ([v4 state] == 3)
  {
    [(SXComponentInteractionManager *)self handleInteraction:v26 withType:2];
LABEL_26:
    [(SXComponentInteractionManager *)self animateHighlight:0 forComponentView:v20];
    goto LABEL_27;
  }

  if ([v4 state] == 4 || objc_msgSend(v4, "state") == 5)
  {
LABEL_25:
    [(SXComponentInteractionManager *)self cancelInteractionForComponentView:v20];
    goto LABEL_26;
  }

LABEL_27:
  if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4 || objc_msgSend(v4, "state") == 5)
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

- (void)handleInteraction:(id)a3 withType:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 handler];
  v8 = [v6 componentView];
  v9 = [v6 componentView];
  [v9 contentFrame];
  [v7 handleInteractionType:a4 sourceView:v8 sourceRect:?];

  v10 = [v6 componentView];

  [(SXComponentInteractionManager *)self cancelInteractionForComponentView:v10];
}

- (void)cancelInteractionForComponentView:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentInteractionManager *)self currentComponentView];

  if (v5 == v4)
  {
    v6 = [(SXComponentInteractionManager *)self longPressDelay];
    [v6 cancel];

    v7 = [(SXComponentInteractionManager *)self tapGestureRecognizer];
    [v7 cancel];

    v8 = [(SXComponentInteractionManager *)self longPressGestureRecognizer];
    [v8 cancel];
  }

  [(SXComponentInteractionManager *)self setCurrentComponentView:0];
}

- (void)animateHighlight:(BOOL)a3 forComponentView:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__SXComponentInteractionManager_animateHighlight_forComponentView___block_invoke;
  v9[3] = &unk_1E8501178;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 animateWithDuration:2 delay:v9 options:0 animations:0.1 completion:0.0];
}

- (void)toggleHighlightForComponentView:(id)a3
{
  v4 = a3;
  [(SXComponentInteractionManager *)self animateHighlight:1 forComponentView:v4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__SXComponentInteractionManager_toggleHighlightForComponentView___block_invoke;
  v7[3] = &unk_1E84FEC78;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  v6 = [SXDelayed execute:v7 delay:0.2];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = [a3 view];
  [v6 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [(SXComponentInteractionManager *)self viewport];
  [v12 dynamicBounds];
  v14.x = v9;
  v14.y = v11;
  LOBYTE(self) = CGRectContainsPoint(v15, v14);

  return self;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = [(SXComponentInteractionManager *)self viewport];
  v5 = [v4 view];
  v6 = [v5 panGestureRecognizer];
  if ([v6 state] == 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(SXComponentInteractionManager *)self viewport];
    v9 = [v8 view];
    v10 = [v9 panGestureRecognizer];
    v7 = [v10 state] != 2;
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