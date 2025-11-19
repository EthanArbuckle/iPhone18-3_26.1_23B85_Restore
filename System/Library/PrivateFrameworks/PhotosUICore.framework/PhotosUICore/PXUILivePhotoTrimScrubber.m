@interface PXUILivePhotoTrimScrubber
+ (double)topAndBottomInsets;
+ (id)_stretchableImageNamed:(id)a3 withCapInsets:(UIEdgeInsets)a4;
+ (id)createSnappingControllerWithSnappingTarget:(double)a3;
+ (id)trimEndHighlightedImageMini;
+ (id)trimEndImageMini;
+ (id)trimStartHighlightedImageMini;
+ (id)trimStartImageMini;
- (CGSize)intrinsicContentSize;
- (PXUILivePhotoTrimScrubber)initWithFilmStripViewClass:(Class)a3 spec:(id)a4 traitCollection:(id)a5;
- (void)_PXUILivePhotoTrimScrubber_commonInit;
- (void)_handleBeginPanGesture:(id)a3;
- (void)_handleChangePanGesture:(id)a3;
- (void)_handleLongPress:(id)a3;
- (void)_handlePan:(id)a3;
- (void)_handleTap:(id)a3;
- (void)impactOccured;
- (void)prepareForImpact;
- (void)setDisabled:(BOOL)a3;
@end

@implementation PXUILivePhotoTrimScrubber

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  v3 = [(PXLivePhotoTrimScrubber *)self spec];
  [v3 handleHeight];
  v5 = v4;

  v6 = v2;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)impactOccured
{
  v2 = [(PXUILivePhotoTrimScrubber *)self impactGenerator];
  [v2 impactOccurred];
}

- (void)prepareForImpact
{
  v2 = [(PXUILivePhotoTrimScrubber *)self impactGenerator];
  [v2 prepare];
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = PXUILivePhotoTrimScrubber;
  [(PXLivePhotoTrimScrubber *)&v7 setDisabled:?];
  v5 = [(PXUILivePhotoTrimScrubber *)self panGesture];
  [v5 setEnabled:!v3];

  v6 = [(PXUILivePhotoTrimScrubber *)self tapGesture];
  [v6 setEnabled:!v3];
}

- (void)_handleChangePanGesture:(id)a3
{
  v14 = a3;
  if ([v14 state] != 2)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXUILivePhotoTrimScrubber.m" lineNumber:163 description:@"_handleChangePanGesture: called with a recognizer whose state is not .Changed"];
  }

  v5 = [(PXLivePhotoTrimScrubber *)self currentlyInteractingElement];
  v6 = v14;
  if (v5)
  {
    [v14 locationInView:self];
    v8 = v7;
    v10 = v9;
    [v14 velocityInView:self];
    [(PXLivePhotoTrimScrubber *)self handleChangeTrackingAtLocation:v8 withVelocity:v10, v11, v12];
    v6 = v14;
  }
}

- (void)_handleBeginPanGesture:(id)a3
{
  v7 = a3;
  if ([v7 state] != 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXUILivePhotoTrimScrubber.m" lineNumber:154 description:@"_handleBeginPanGesture: called with a recognizer whose state is not .Began"];
  }

  if ([(PXLivePhotoTrimScrubber *)self currentlyInteractingElement])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXUILivePhotoTrimScrubber.m" lineNumber:155 description:{@"A new tracking gesture began, but we are already tracking one."}];
  }

  [v7 locationInView:self];
  [(PXLivePhotoTrimScrubber *)self handleBeginTrackingAtLocation:?];
}

- (void)_handleLongPress:(id)a3
{
  v17 = a3;
  v4 = [v17 state];
  if ((v4 - 4) < 2)
  {
    v15 = self;
    v16 = 0;
LABEL_8:
    [(PXLivePhotoTrimScrubber *)v15 handleEndTracking:v16];
    goto LABEL_9;
  }

  if (v4 == 3)
  {
    v15 = self;
    v16 = 1;
    goto LABEL_8;
  }

  if (v4 == 1)
  {
    v5 = [(PXLivePhotoTrimScrubber *)self photoLoupe];
    [v17 locationInView:v5];
    v7 = v6;
    v9 = v8;

    v10 = [(PXLivePhotoTrimScrubber *)self photoLoupe];
    [v10 bounds];
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

- (void)_handlePan:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if (v4 > 3)
  {
    if ((v4 - 4) >= 2)
    {
      goto LABEL_11;
    }

    v5 = self;
    v6 = 0;
    goto LABEL_8;
  }

  switch(v4)
  {
    case 1:
      [(PXUILivePhotoTrimScrubber *)self _handleBeginPanGesture:v7];
      break;
    case 2:
      [(PXUILivePhotoTrimScrubber *)self _handleChangePanGesture:v7];
      break;
    case 3:
      v5 = self;
      v6 = 1;
LABEL_8:
      [(PXLivePhotoTrimScrubber *)v5 handleEndTracking:v6];
      break;
    default:
      break;
  }

LABEL_11:
}

- (void)_handleTap:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    if ([(PXLivePhotoTrimScrubber *)self playheadStyle]== 1)
    {
      [v4 locationInView:self];
      v20 = 0uLL;
      v21 = 0;
      [(PXLivePhotoTrimScrubber *)self timeAtPoint:?];
      v5 = [(PXLivePhotoTrimScrubber *)self delegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = [(PXLivePhotoTrimScrubber *)self delegate];
        v18 = v20;
        v19 = v21;
        [v7 trimScrubber:self didTapTimelineAtTime:&v18];
      }
    }

    else if ([(PXLivePhotoTrimScrubber *)self playheadStyle]== 2)
    {
      v8 = [(PXLivePhotoTrimScrubber *)self photoLoupe];
      [v4 locationInView:v8];
      v10 = v9;
      v12 = v11;

      v13 = [(PXLivePhotoTrimScrubber *)self photoLoupe];
      [v13 bounds];
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
        [v4 locationInView:self];
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

- (PXUILivePhotoTrimScrubber)initWithFilmStripViewClass:(Class)a3 spec:(id)a4 traitCollection:(id)a5
{
  v8.receiver = self;
  v8.super_class = PXUILivePhotoTrimScrubber;
  v5 = [(PXLivePhotoTrimScrubber *)&v8 initWithFilmStripViewClass:a3 spec:a4 traitCollection:a5];
  v6 = v5;
  if (v5)
  {
    [(PXUILivePhotoTrimScrubber *)v5 _PXUILivePhotoTrimScrubber_commonInit];
  }

  return v6;
}

+ (id)trimEndHighlightedImageMini
{
  if (MEMORY[0x1A590D320](a1, a2))
  {
    [a1 topAndBottomInsets];
    v4 = v3;
    [a1 topAndBottomInsets];
    v6 = v5;
    v7 = @"PXMovieScrubberEditingRight";
    v8 = 24.0;
    v9 = a1;
    v10 = v4;
  }

  else
  {
    v7 = @"PXMovieScrubberEditingRight_Mini";
    v10 = 0.0;
    v6 = 0.0;
    v8 = 24.0;
    v9 = a1;
  }

  v11 = [v9 _stretchableImageNamed:v7 withCapInsets:{v10, 0.0, v6, v8}];

  return v11;
}

+ (id)trimEndImageMini
{
  if (MEMORY[0x1A590D320](a1, a2))
  {
    [a1 topAndBottomInsets];
    v4 = v3;
    [a1 topAndBottomInsets];
    v6 = v5;
    v7 = @"PXMovieScrubberEditingGlassRight";
    v8 = 24.0;
    v9 = a1;
    v10 = v4;
  }

  else
  {
    v7 = @"PXMovieScrubberEditingGlassRight_Mini";
    v10 = 0.0;
    v6 = 0.0;
    v8 = 24.0;
    v9 = a1;
  }

  v11 = [v9 _stretchableImageNamed:v7 withCapInsets:{v10, 0.0, v6, v8}];

  return v11;
}

+ (id)trimStartHighlightedImageMini
{
  if (MEMORY[0x1A590D320](a1, a2))
  {
    [a1 topAndBottomInsets];
    v4 = v3;
    [a1 topAndBottomInsets];
    v6 = v5;
    v7 = @"PXMovieScrubberEditingLeft";
    v8 = 24.0;
    v9 = a1;
    v10 = v4;
  }

  else
  {
    v7 = @"PXMovieScrubberEditingLeft_Mini";
    v10 = 0.0;
    v8 = 24.0;
    v6 = 0.0;
    v9 = a1;
  }

  v11 = [v9 _stretchableImageNamed:v7 withCapInsets:{v10, v8, v6, 0.0}];

  return v11;
}

+ (id)trimStartImageMini
{
  if (MEMORY[0x1A590D320](a1, a2))
  {
    [a1 topAndBottomInsets];
    v4 = v3;
    [a1 topAndBottomInsets];
    v6 = v5;
    v7 = @"PXMovieScrubberEditingGlassLeft";
    v8 = 24.0;
    v9 = a1;
    v10 = v4;
  }

  else
  {
    v7 = @"PXMovieScrubberEditingGlassLeft_Mini";
    v10 = 0.0;
    v8 = 24.0;
    v6 = 0.0;
    v9 = a1;
  }

  v11 = [v9 _stretchableImageNamed:v7 withCapInsets:{v10, v8, v6, 0.0}];

  return v11;
}

+ (double)topAndBottomInsets
{
  v2 = MEMORY[0x1A590D320](a1, a2);
  result = 25.5;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

+ (id)_stretchableImageNamed:(id)a3 withCapInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v8 = [MEMORY[0x1E69DCAB8] px_imageNamed:a3];
  v9 = [v8 resizableImageWithCapInsets:{top, left, bottom, right}];

  return v9;
}

+ (id)createSnappingControllerWithSnappingTarget:(double)a3
{
  v3 = [[PXUISnappingController alloc] initWithSnappingTarget:a3];

  return v3;
}

@end