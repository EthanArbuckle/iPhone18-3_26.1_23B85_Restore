@interface PXUISubjectTrackingView
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (PXUISubjectTrackingView)initWithMediaView:(id)view cineController:(id)controller;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)didAddSubview:(id)subview;
- (void)viewDoubleTapped:(id)tapped;
- (void)viewLongPressed:(id)pressed;
- (void)viewTapped:(id)tapped;
@end

@implementation PXUISubjectTrackingView

- (void)didAddSubview:(id)subview
{
  subviewCopy = subview;
  v13.receiver = self;
  v13.super_class = PXUISubjectTrackingView;
  [(PXUISubjectTrackingView *)&v13 didAddSubview:subviewCopy];
  if ([(PXUISubjectTrackingView *)self needsHDRGainLayer])
  {
    v5 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979918]];
    [v5 setValue:&unk_1F190A030 forKey:*MEMORY[0x1E6979990]];
    [v5 setValue:&unk_1F190A048 forKey:*MEMORY[0x1E6979BF0]];
    [v5 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6979980]];
    [v5 setName:@"modulationFilter"];
    layer = [subviewCopy layer];
    filters = [layer filters];
    v8 = [filters mutableCopy];
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
    layer2 = [subviewCopy layer];
    [layer2 setFilters:v11];
  }
}

- (void)viewLongPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([(PXSubjectTrackingView *)self viewEnabled])
  {
    [(PXSubjectTrackingView *)self handleInteractionBegan];
    if ([pressedCopy state] == 1)
    {
      mediaView = [(PXSubjectTrackingView *)self mediaView];
      [pressedCopy locationInView:mediaView];
      v6 = v5;
      v8 = v7;

      [(PXSubjectTrackingView *)self handleLongSelectOnPoint:v6, v8];
    }
  }
}

- (void)viewDoubleTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([(PXSubjectTrackingView *)self viewEnabled])
  {
    [(PXSubjectTrackingView *)self handleInteractionBegan];
    if ([tappedCopy state] == 3)
    {
      mediaView = [(PXSubjectTrackingView *)self mediaView];
      [tappedCopy locationInView:mediaView];
      v6 = v5;
      v8 = v7;

      [(PXSubjectTrackingView *)self handleDoubleSelectOnPoint:v6, v8];
    }
  }
}

- (void)viewTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([(PXSubjectTrackingView *)self viewEnabled])
  {
    [(PXSubjectTrackingView *)self handleInteractionBegan];
    if ([tappedCopy state] == 3)
    {
      mediaView = [(PXSubjectTrackingView *)self mediaView];
      [tappedCopy locationInView:mediaView];
      v6 = v5;
      v8 = v7;

      [(PXSubjectTrackingView *)self handleSingleSelectOnPoint:v6, v8];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  mediaView = [(PXSubjectTrackingView *)self mediaView];
  [beginCopy locationInView:mediaView];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  mediaView = [(PXSubjectTrackingView *)self mediaView];
  v9 = [mediaView hitTest:eventCopy withEvent:{x, y}];

  return v9;
}

- (PXUISubjectTrackingView)initWithMediaView:(id)view cineController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  v9 = controllerCopy;
  if (viewCopy)
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXUISubjectTrackingView.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXUISubjectTrackingView.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"cineController != nil"}];

LABEL_3:
  v24.receiver = self;
  v24.super_class = PXUISubjectTrackingView;
  v10 = [(PXSubjectTrackingView *)&v24 initWithMediaView:viewCopy cineController:v9];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v10 action:sel_viewTapped_];
    [v11 setDelegate:v10];
    mediaView = [(PXSubjectTrackingView *)v10 mediaView];
    [mediaView addGestureRecognizer:v11];

    v13 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v10 action:sel_viewDoubleTapped_];
    [v13 setNumberOfTapsRequired:2];
    [v13 setDelegate:v10];
    mediaView2 = [(PXSubjectTrackingView *)v10 mediaView];
    [mediaView2 addGestureRecognizer:v13];

    [v11 requireGestureRecognizerToFail:v13];
    v15 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v10 action:sel_viewLongPressed_];
    [v15 setDelegate:v10];
    mediaView3 = [(PXSubjectTrackingView *)v10 mediaView];
    [mediaView3 addGestureRecognizer:v15];

    asset = [v9 asset];
    if (asset)
    {
      v18 = asset;
      asset2 = [v9 asset];
      isHDRVideo = [asset2 isHDRVideo];

      if (isHDRVideo)
      {
        v10->_needsHDRGainLayer = 1;
      }
    }
  }

  return v10;
}

@end