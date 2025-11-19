@interface PXUISubjectTrackingView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (PXUISubjectTrackingView)initWithMediaView:(id)a3 cineController:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)didAddSubview:(id)a3;
- (void)viewDoubleTapped:(id)a3;
- (void)viewLongPressed:(id)a3;
- (void)viewTapped:(id)a3;
@end

@implementation PXUISubjectTrackingView

- (void)didAddSubview:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PXUISubjectTrackingView;
  [(PXUISubjectTrackingView *)&v13 didAddSubview:v4];
  if ([(PXUISubjectTrackingView *)self needsHDRGainLayer])
  {
    v5 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979918]];
    [v5 setValue:&unk_1F190A030 forKey:*MEMORY[0x1E6979990]];
    [v5 setValue:&unk_1F190A048 forKey:*MEMORY[0x1E6979BF0]];
    [v5 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6979980]];
    [v5 setName:@"modulationFilter"];
    v6 = [v4 layer];
    v7 = [v6 filters];
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    }

    v11 = v10;

    [v11 addObject:v5];
    v12 = [v4 layer];
    [v12 setFilters:v11];
  }
}

- (void)viewLongPressed:(id)a3
{
  v9 = a3;
  if ([(PXSubjectTrackingView *)self viewEnabled])
  {
    [(PXSubjectTrackingView *)self handleInteractionBegan];
    if ([v9 state] == 1)
    {
      v4 = [(PXSubjectTrackingView *)self mediaView];
      [v9 locationInView:v4];
      v6 = v5;
      v8 = v7;

      [(PXSubjectTrackingView *)self handleLongSelectOnPoint:v6, v8];
    }
  }
}

- (void)viewDoubleTapped:(id)a3
{
  v9 = a3;
  if ([(PXSubjectTrackingView *)self viewEnabled])
  {
    [(PXSubjectTrackingView *)self handleInteractionBegan];
    if ([v9 state] == 3)
    {
      v4 = [(PXSubjectTrackingView *)self mediaView];
      [v9 locationInView:v4];
      v6 = v5;
      v8 = v7;

      [(PXSubjectTrackingView *)self handleDoubleSelectOnPoint:v6, v8];
    }
  }
}

- (void)viewTapped:(id)a3
{
  v9 = a3;
  if ([(PXSubjectTrackingView *)self viewEnabled])
  {
    [(PXSubjectTrackingView *)self handleInteractionBegan];
    if ([v9 state] == 3)
    {
      v4 = [(PXSubjectTrackingView *)self mediaView];
      [v9 locationInView:v4];
      v6 = v5;
      v8 = v7;

      [(PXSubjectTrackingView *)self handleSingleSelectOnPoint:v6, v8];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(PXSubjectTrackingView *)self mediaView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  [(PXSubjectTrackingView *)self normalizedPointForViewPoint:v7, v9];
  v12 = v11 >= 0.0;
  if (v11 > 1.0)
  {
    v12 = 0;
  }

  v13 = v10 >= 0.0;
  if (v10 > 1.0)
  {
    v13 = 0;
  }

  return v12 && v13;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PXSubjectTrackingView *)self mediaView];
  v9 = [v8 hitTest:v7 withEvent:{x, y}];

  return v9;
}

- (PXUISubjectTrackingView)initWithMediaView:(id)a3 cineController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXUISubjectTrackingView.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"PXUISubjectTrackingView.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"cineController != nil"}];

LABEL_3:
  v24.receiver = self;
  v24.super_class = PXUISubjectTrackingView;
  v10 = [(PXSubjectTrackingView *)&v24 initWithMediaView:v7 cineController:v9];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v10 action:sel_viewTapped_];
    [v11 setDelegate:v10];
    v12 = [(PXSubjectTrackingView *)v10 mediaView];
    [v12 addGestureRecognizer:v11];

    v13 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v10 action:sel_viewDoubleTapped_];
    [v13 setNumberOfTapsRequired:2];
    [v13 setDelegate:v10];
    v14 = [(PXSubjectTrackingView *)v10 mediaView];
    [v14 addGestureRecognizer:v13];

    [v11 requireGestureRecognizerToFail:v13];
    v15 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v10 action:sel_viewLongPressed_];
    [v15 setDelegate:v10];
    v16 = [(PXSubjectTrackingView *)v10 mediaView];
    [v16 addGestureRecognizer:v15];

    v17 = [v9 asset];
    if (v17)
    {
      v18 = v17;
      v19 = [v9 asset];
      v20 = [v19 isHDRVideo];

      if (v20)
      {
        v10->_needsHDRGainLayer = 1;
      }
    }
  }

  return v10;
}

@end