@interface PXUILivePhotoTrimScrubber
+ (double)topAndBottomInsets;
+ (id)_stretchableImageNamed:(id)named withCapInsets:(UIEdgeInsets)insets;
+ (id)createSnappingControllerWithSnappingTarget:(double)target;
+ (id)trimEndHighlightedImageMini;
+ (id)trimEndImageMini;
+ (id)trimStartHighlightedImageMini;
+ (id)trimStartImageMini;
- (CGSize)intrinsicContentSize;
- (PXUILivePhotoTrimScrubber)initWithFilmStripViewClass:(Class)class spec:(id)spec traitCollection:(id)collection;
- (void)_PXUILivePhotoTrimScrubber_commonInit;
- (void)_handleBeginPanGesture:(id)gesture;
- (void)_handleChangePanGesture:(id)gesture;
- (void)_handleLongPress:(id)press;
- (void)_handlePan:(id)pan;
- (void)_handleTap:(id)tap;
- (void)impactOccured;
- (void)prepareForImpact;
- (void)setDisabled:(BOOL)disabled;
@end

@implementation PXUILivePhotoTrimScrubber

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  spec = [(PXLivePhotoTrimScrubber *)self spec];
  [spec handleHeight];
  v5 = v4;

  v6 = v2;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)impactOccured
{
  impactGenerator = [(PXUILivePhotoTrimScrubber *)self impactGenerator];
  [impactGenerator impactOccurred];
}

- (void)prepareForImpact
{
  impactGenerator = [(PXUILivePhotoTrimScrubber *)self impactGenerator];
  [impactGenerator prepare];
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v7.receiver = self;
  v7.super_class = PXUILivePhotoTrimScrubber;
  [(PXLivePhotoTrimScrubber *)&v7 setDisabled:?];
  panGesture = [(PXUILivePhotoTrimScrubber *)self panGesture];
  [panGesture setEnabled:!disabledCopy];

  tapGesture = [(PXUILivePhotoTrimScrubber *)self tapGesture];
  [tapGesture setEnabled:!disabledCopy];
}

- (void)_handleChangePanGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXUILivePhotoTrimScrubber.m" lineNumber:163 description:@"_handleChangePanGesture: called with a recognizer whose state is not .Changed"];
  }

  currentlyInteractingElement = [(PXLivePhotoTrimScrubber *)self currentlyInteractingElement];
  v6 = gestureCopy;
  if (currentlyInteractingElement)
  {
    [gestureCopy locationInView:self];
    v8 = v7;
    v10 = v9;
    [gestureCopy velocityInView:self];
    [(PXLivePhotoTrimScrubber *)self handleChangeTrackingAtLocation:v8 withVelocity:v10, v11, v12];
    v6 = gestureCopy;
  }
}

- (void)_handleBeginPanGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXUILivePhotoTrimScrubber.m" lineNumber:154 description:@"_handleBeginPanGesture: called with a recognizer whose state is not .Began"];
  }

  if ([(PXLivePhotoTrimScrubber *)self currentlyInteractingElement])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXUILivePhotoTrimScrubber.m" lineNumber:155 description:{@"A new tracking gesture began, but we are already tracking one."}];
  }

  [gestureCopy locationInView:self];
  [(PXLivePhotoTrimScrubber *)self handleBeginTrackingAtLocation:?];
}

- (void)_handleLongPress:(id)press
{
  pressCopy = press;
  state = [pressCopy state];
  if ((state - 4) < 2)
  {
    selfCopy2 = self;
    v16 = 0;
LABEL_8:
    [(PXLivePhotoTrimScrubber *)selfCopy2 handleEndTracking:v16];
    goto LABEL_9;
  }

  if (state == 3)
  {
    selfCopy2 = self;
    v16 = 1;
    goto LABEL_8;
  }

  if (state == 1)
  {
    photoLoupe = [(PXLivePhotoTrimScrubber *)self photoLoupe];
    [pressCopy locationInView:photoLoupe];
    v7 = v6;
    v9 = v8;

    photoLoupe2 = [(PXLivePhotoTrimScrubber *)self photoLoupe];
    [photoLoupe2 bounds];
    v21 = CGRectInset(v20, -10.0, -10.0);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;

    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v19.x = v7;
    v19.y = v9;
    if (CGRectContainsPoint(v22, v19))
    {
      [(PXUILivePhotoTrimScrubber *)self prepareForImpact];
      [(PXLivePhotoTrimScrubber *)self handleLongPressWithElement:4];
    }
  }

LABEL_9:
}

- (void)_handlePan:(id)pan
{
  panCopy = pan;
  state = [panCopy state];
  if (state > 3)
  {
    if ((state - 4) >= 2)
    {
      goto LABEL_11;
    }

    selfCopy2 = self;
    v6 = 0;
    goto LABEL_8;
  }

  switch(state)
  {
    case 1:
      [(PXUILivePhotoTrimScrubber *)self _handleBeginPanGesture:panCopy];
      break;
    case 2:
      [(PXUILivePhotoTrimScrubber *)self _handleChangePanGesture:panCopy];
      break;
    case 3:
      selfCopy2 = self;
      v6 = 1;
LABEL_8:
      [(PXLivePhotoTrimScrubber *)selfCopy2 handleEndTracking:v6];
      break;
    default:
      break;
  }

LABEL_11:
}

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    if ([(PXLivePhotoTrimScrubber *)self playheadStyle]== 1)
    {
      [tapCopy locationInView:self];
      v20 = 0uLL;
      v21 = 0;
      [(PXLivePhotoTrimScrubber *)self timeAtPoint:?];
      delegate = [(PXLivePhotoTrimScrubber *)self delegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        delegate2 = [(PXLivePhotoTrimScrubber *)self delegate];
        v18 = v20;
        v19 = v21;
        [delegate2 trimScrubber:self didTapTimelineAtTime:&v18];
      }
    }

    else if ([(PXLivePhotoTrimScrubber *)self playheadStyle]== 2)
    {
      photoLoupe = [(PXLivePhotoTrimScrubber *)self photoLoupe];
      [tapCopy locationInView:photoLoupe];
      v10 = v9;
      v12 = v11;

      photoLoupe2 = [(PXLivePhotoTrimScrubber *)self photoLoupe];
      [photoLoupe2 bounds];
      v24 = CGRectInset(v23, -10.0, -10.0);
      x = v24.origin.x;
      y = v24.origin.y;
      width = v24.size.width;
      height = v24.size.height;

      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v22.x = v10;
      v22.y = v12;
      if (CGRectContainsPoint(v25, v22))
      {
        [(PXLivePhotoTrimScrubber *)self handleTapWithElement:3];
      }

      else
      {
        [tapCopy locationInView:self];
        v20 = 0uLL;
        v21 = 0;
        [(PXLivePhotoTrimScrubber *)self timeAtPoint:?];
        v18 = v20;
        v19 = v21;
        [(PXLivePhotoTrimScrubber *)self handleSetKeyTime:&v18];
      }
    }
  }
}

- (void)_PXUILivePhotoTrimScrubber_commonInit
{
  v3 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handlePan_];
  [(UIPanGestureRecognizer *)v3 setDelegate:self];
  [(PXUILivePhotoTrimScrubber *)self addGestureRecognizer:v3];
  panGesture = self->_panGesture;
  self->_panGesture = v3;
  v13 = v3;

  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
  [(UITapGestureRecognizer *)v5 setDelegate:self];
  [(UITapGestureRecognizer *)v5 requireGestureRecognizerToFail:self->_panGesture];
  [(PXUILivePhotoTrimScrubber *)self addGestureRecognizer:v5];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v5;
  v7 = v5;

  v8 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handleLongPress_];
  [(UILongPressGestureRecognizer *)v8 setDelegate:self];
  [(UILongPressGestureRecognizer *)v8 setMinimumPressDuration:0.5];
  [(PXUILivePhotoTrimScrubber *)self addGestureRecognizer:v8];
  longPressGesture = self->_longPressGesture;
  self->_longPressGesture = v8;
  v10 = v8;

  v11 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:0];
  impactGenerator = self->_impactGenerator;
  self->_impactGenerator = v11;
}

- (PXUILivePhotoTrimScrubber)initWithFilmStripViewClass:(Class)class spec:(id)spec traitCollection:(id)collection
{
  v8.receiver = self;
  v8.super_class = PXUILivePhotoTrimScrubber;
  v5 = [(PXLivePhotoTrimScrubber *)&v8 initWithFilmStripViewClass:class spec:spec traitCollection:collection];
  v6 = v5;
  if (v5)
  {
    [(PXUILivePhotoTrimScrubber *)v5 _PXUILivePhotoTrimScrubber_commonInit];
  }

  return v6;
}

+ (id)trimEndHighlightedImageMini
{
  if (MEMORY[0x1A590D320](self, a2))
  {
    [self topAndBottomInsets];
    v4 = v3;
    [self topAndBottomInsets];
    v6 = v5;
    v7 = @"PXMovieScrubberEditingRight";
    v8 = 24.0;
    selfCopy2 = self;
    v10 = v4;
  }

  else
  {
    v7 = @"PXMovieScrubberEditingRight_Mini";
    v10 = 0.0;
    v6 = 0.0;
    v8 = 24.0;
    selfCopy2 = self;
  }

  v11 = [selfCopy2 _stretchableImageNamed:v7 withCapInsets:{v10, 0.0, v6, v8}];

  return v11;
}

+ (id)trimEndImageMini
{
  if (MEMORY[0x1A590D320](self, a2))
  {
    [self topAndBottomInsets];
    v4 = v3;
    [self topAndBottomInsets];
    v6 = v5;
    v7 = @"PXMovieScrubberEditingGlassRight";
    v8 = 24.0;
    selfCopy2 = self;
    v10 = v4;
  }

  else
  {
    v7 = @"PXMovieScrubberEditingGlassRight_Mini";
    v10 = 0.0;
    v6 = 0.0;
    v8 = 24.0;
    selfCopy2 = self;
  }

  v11 = [selfCopy2 _stretchableImageNamed:v7 withCapInsets:{v10, 0.0, v6, v8}];

  return v11;
}

+ (id)trimStartHighlightedImageMini
{
  if (MEMORY[0x1A590D320](self, a2))
  {
    [self topAndBottomInsets];
    v4 = v3;
    [self topAndBottomInsets];
    v6 = v5;
    v7 = @"PXMovieScrubberEditingLeft";
    v8 = 24.0;
    selfCopy2 = self;
    v10 = v4;
  }

  else
  {
    v7 = @"PXMovieScrubberEditingLeft_Mini";
    v10 = 0.0;
    v8 = 24.0;
    v6 = 0.0;
    selfCopy2 = self;
  }

  v11 = [selfCopy2 _stretchableImageNamed:v7 withCapInsets:{v10, v8, v6, 0.0}];

  return v11;
}

+ (id)trimStartImageMini
{
  if (MEMORY[0x1A590D320](self, a2))
  {
    [self topAndBottomInsets];
    v4 = v3;
    [self topAndBottomInsets];
    v6 = v5;
    v7 = @"PXMovieScrubberEditingGlassLeft";
    v8 = 24.0;
    selfCopy2 = self;
    v10 = v4;
  }

  else
  {
    v7 = @"PXMovieScrubberEditingGlassLeft_Mini";
    v10 = 0.0;
    v8 = 24.0;
    v6 = 0.0;
    selfCopy2 = self;
  }

  v11 = [selfCopy2 _stretchableImageNamed:v7 withCapInsets:{v10, v8, v6, 0.0}];

  return v11;
}

+ (double)topAndBottomInsets
{
  v2 = MEMORY[0x1A590D320](self, a2);
  result = 25.5;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

+ (id)_stretchableImageNamed:(id)named withCapInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v8 = [MEMORY[0x1E69DCAB8] px_imageNamed:named];
  v9 = [v8 resizableImageWithCapInsets:{top, left, bottom, right}];

  return v9;
}

+ (id)createSnappingControllerWithSnappingTarget:(double)target
{
  v3 = [[PXUISnappingController alloc] initWithSnappingTarget:target];

  return v3;
}

@end