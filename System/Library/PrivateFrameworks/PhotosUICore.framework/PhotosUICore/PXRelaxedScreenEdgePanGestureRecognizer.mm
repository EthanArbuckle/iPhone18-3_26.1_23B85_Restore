@interface PXRelaxedScreenEdgePanGestureRecognizer
- (PXRelaxedScreenEdgePanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (UIEdgeInsets)edgeAllowances;
- (double)translationDistanceInView:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

- (double)translationDistanceInView:(id)a3
{
  [(PXRelaxedScreenEdgePanGestureRecognizer *)self translationInView:a3];

  return hypot(v3, v4);
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(PXRelaxedScreenEdgePanGestureRecognizer *)self state])
  {
    v21 = v7;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v6;
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
          v14 = [(PXRelaxedScreenEdgePanGestureRecognizer *)self view];
          [v13 locationInView:v14];
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

    v7 = v21;
  }

  v22.receiver = self;
  v22.super_class = PXRelaxedScreenEdgePanGestureRecognizer;
  [(PXRelaxedScreenEdgePanGestureRecognizer *)&v22 touchesMoved:v6 withEvent:v7];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXRelaxedScreenEdgePanGestureRecognizer *)self view];
  v9 = [v8 window];
  [v9 screen];
  objc_claimAutoreleasedReturnValue();

  [(PXRelaxedScreenEdgePanGestureRecognizer *)self edgeAllowances];
  [(PXRelaxedScreenEdgePanGestureRecognizer *)self edges];
  sub_1A524D1D4();
}

- (PXRelaxedScreenEdgePanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v5.receiver = self;
  v5.super_class = PXRelaxedScreenEdgePanGestureRecognizer;
  if ([(PXRelaxedScreenEdgePanGestureRecognizer *)&v5 initWithTarget:a3 action:a4])
  {
    PXEdgeInsetsMake();
  }

  return 0;
}

@end