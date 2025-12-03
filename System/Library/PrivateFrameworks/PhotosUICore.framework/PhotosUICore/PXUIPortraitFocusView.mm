@interface PXUIPortraitFocusView
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (PXUIPortraitFocusView)initWithMediaView:(id)view isHDR:(BOOL)r;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_viewTapped:(id)tapped;
- (void)drawRect:(CGRect)rect;
- (void)installAssociatedMediaViewGesture;
- (void)removeAssociatedMediaViewGesture;
- (void)setUpEDRGainLayer;
@end

@implementation PXUIPortraitFocusView

- (void)drawRect:(CGRect)rect
{
  if ([(PXUIPortraitFocusView *)self drawingEnabled:rect.origin.x])
  {
    focusViewDelegate = [(PXPortraitFocusView *)self focusViewDelegate];
    [focusViewDelegate currentFocusRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [(CEKSubjectIndicatorView *)self->_fixedFocusView setFrame:v6, v8, v10, v12];
    layer = [(CEKSubjectIndicatorView *)self->_fixedFocusView layer];
    [layer removeAllAnimations];
    if (self->_animateNextRender)
    {
      self->_animateNextRender = 0;
      v13 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale"];
      [v13 setDuration:0.2];
      v14 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v13 setTimingFunction:v14];

      [v13 setFromValue:&unk_1F190E668];
      [v13 setToValue:&unk_1F190E678];
      [v13 setRepeatCount:0.0];
      [v13 setAutoreverses:0];
      [layer addAnimation:v13 forKey:@"shrink"];
    }
  }
}

- (void)_viewTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([tappedCopy state] == 3)
  {
    [tappedCopy locationInView:self];
    [(PXPortraitFocusView *)self focusPointChanged:?];
  }
}

- (void)removeAssociatedMediaViewGesture
{
  mediaView = [(PXPortraitFocusView *)self mediaView];
  [mediaView removeGestureRecognizer:self->_tapGestureRecognizer];
}

- (void)installAssociatedMediaViewGesture
{
  mediaView = [(PXPortraitFocusView *)self mediaView];
  [mediaView addGestureRecognizer:self->_tapGestureRecognizer];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if (self->_tapGestureRecognizer == beginCopy)
  {
    mediaView = [(PXPortraitFocusView *)self mediaView];

    if (mediaView)
    {
      mediaView2 = [(PXPortraitFocusView *)self mediaView];
      superview = [mediaView2 superview];
      [(UITapGestureRecognizer *)beginCopy locationInView:superview];
      v10 = v9;
      v12 = v11;

      mediaView3 = [(PXPortraitFocusView *)self mediaView];
      [mediaView3 imageFrame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v24.origin.x = v15;
      v24.origin.y = v17;
      v24.size.width = v19;
      v24.size.height = v21;
      v23.x = v10;
      v23.y = v12;
      v5 = CGRectContainsPoint(v24, v23);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  mediaView = [(PXPortraitFocusView *)self mediaView];
  v9 = [mediaView hitTest:eventCopy withEvent:{x, y}];

  return v9;
}

- (void)setUpEDRGainLayer
{
  v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979918]];
  [v10 setValue:&unk_1F190DF18 forKey:*MEMORY[0x1E6979990]];
  [v10 setValue:&unk_1F190DF30 forKey:*MEMORY[0x1E6979BF0]];
  [v10 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6979980]];
  [v10 setName:@"modulationFilter"];
  layer = [(CEKSubjectIndicatorView *)self->_fixedFocusView layer];
  filters = [layer filters];
  v5 = [filters mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  }

  v8 = v7;

  [v8 addObject:v10];
  layer2 = [(CEKSubjectIndicatorView *)self->_fixedFocusView layer];
  [layer2 setFilters:v8];
}

- (PXUIPortraitFocusView)initWithMediaView:(id)view isHDR:(BOOL)r
{
  rCopy = r;
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIPortraitFocusView.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];
  }

  v16.receiver = self;
  v16.super_class = PXUIPortraitFocusView;
  v8 = [(PXPortraitFocusView *)&v16 initWithMediaView:viewCopy isHDR:rCopy];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E6993898]);
    v10 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    fixedFocusView = v8->_fixedFocusView;
    v8->_fixedFocusView = v10;

    [(CEKSubjectIndicatorView *)v8->_fixedFocusView setShape:3];
    [(PXUIPortraitFocusView *)v8 addSubview:v8->_fixedFocusView];
    v12 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v8 action:sel__viewTapped_];
    tapGestureRecognizer = v8->_tapGestureRecognizer;
    v8->_tapGestureRecognizer = v12;

    [(UITapGestureRecognizer *)v8->_tapGestureRecognizer setDelegate:v8];
    if (rCopy)
    {
      [(PXUIPortraitFocusView *)v8 setUpEDRGainLayer];
    }
  }

  return v8;
}

@end