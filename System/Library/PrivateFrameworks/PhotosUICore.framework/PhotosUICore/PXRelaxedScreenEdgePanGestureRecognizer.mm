@interface PXRelaxedScreenEdgePanGestureRecognizer
- (PXRelaxedScreenEdgePanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (UIEdgeInsets)edgeAllowances;
- (double)translationDistanceInView:(id)view;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation PXRelaxedScreenEdgePanGestureRecognizer

- (UIEdgeInsets)edgeAllowances
{
  top = self->_edgeAllowances.top;
  left = self->_edgeAllowances.left;
  bottom = self->_edgeAllowances.bottom;
  right = self->_edgeAllowances.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)translationDistanceInView:(id)view
{
  [(PXRelaxedScreenEdgePanGestureRecognizer *)self translationInView:view];

  return hypot(v3, v4);
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v28 = *MEMORY[0x1E69E9840];
  movedCopy = moved;
  eventCopy = event;
  if (![(PXRelaxedScreenEdgePanGestureRecognizer *)self state])
  {
    v21 = eventCopy;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = movedCopy;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          view = [(PXRelaxedScreenEdgePanGestureRecognizer *)self view];
          [v13 locationInView:view];
          v16 = v15;
          v18 = v17;

          v19 = v16 - self->_initialTouchLocation.x;
          v20 = v18 - self->_initialTouchLocation.y;
          if (hypot(v19, v20) > 0.0)
          {
            MEMORY[0x1A590C810](v20, v19);
            PXRadiansToDegrees();
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    eventCopy = v21;
  }

  v22.receiver = self;
  v22.super_class = PXRelaxedScreenEdgePanGestureRecognizer;
  [(PXRelaxedScreenEdgePanGestureRecognizer *)&v22 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v10 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  eventCopy = event;
  view = [(PXRelaxedScreenEdgePanGestureRecognizer *)self view];
  window = [view window];
  [window screen];
  objc_claimAutoreleasedReturnValue();

  [(PXRelaxedScreenEdgePanGestureRecognizer *)self edgeAllowances];
  [(PXRelaxedScreenEdgePanGestureRecognizer *)self edges];
  sub_1A524D1D4();
}

- (PXRelaxedScreenEdgePanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v5.receiver = self;
  v5.super_class = PXRelaxedScreenEdgePanGestureRecognizer;
  if ([(PXRelaxedScreenEdgePanGestureRecognizer *)&v5 initWithTarget:target action:action])
  {
    PXEdgeInsetsMake();
  }

  return 0;
}

@end