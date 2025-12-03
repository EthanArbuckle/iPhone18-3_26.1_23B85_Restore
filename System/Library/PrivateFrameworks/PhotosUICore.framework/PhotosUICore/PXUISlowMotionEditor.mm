@interface PXUISlowMotionEditor
+ (id)createSnappingControllerWithSnappingTarget:(double)target;
+ (id)handleImage;
- (PXUISlowMotionEditor)init;
- (void)_PXUISlowMotionEditor_commonInit;
- (void)_handleBeginPanGesture:(id)gesture;
- (void)_handleChangePanGesture:(id)gesture;
- (void)_handleEndPanGesture:(id)gesture;
- (void)_handlePan:(id)pan;
- (void)impactOccured;
- (void)prepareForImpact;
@end

@implementation PXUISlowMotionEditor

- (void)impactOccured
{
  impactGenerator = [(PXUISlowMotionEditor *)self impactGenerator];
  [impactGenerator impactOccurred];
}

- (void)prepareForImpact
{
  impactGenerator = [(PXUISlowMotionEditor *)self impactGenerator];
  [impactGenerator prepare];
}

- (void)_handleEndPanGesture:(id)gesture
{
  [gesture locationInView:self];

  [(PXSlowMotionEditor *)self handleEndTrackingAtLocation:?];
}

- (void)_handleChangePanGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXUISlowMotionEditor.m" lineNumber:94 description:@"_handleChangePanGesture: called with a recognizer whose state is not .Changed"];
  }

  [gestureCopy locationInView:self];
  [(PXSlowMotionEditor *)self handleChangeTrackingAtLocation:?];
}

- (void)_handleBeginPanGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXUISlowMotionEditor.m" lineNumber:85 description:@"_handleBeginPanGesture: called with a recognizer whose state is not .Began"];
  }

  [gestureCopy locationInView:self];
  [(PXSlowMotionEditor *)self handleBeginTrackingAtLocation:?];
}

- (void)_handlePan:(id)pan
{
  panCopy = pan;
  state = [panCopy state];
  if ((state - 3) < 3)
  {
    [(PXUISlowMotionEditor *)self _handleEndPanGesture:panCopy];
LABEL_8:
    v6 = panCopy;
    goto LABEL_9;
  }

  if (state == 2)
  {
    [(PXUISlowMotionEditor *)self _handleChangePanGesture:panCopy];
    goto LABEL_8;
  }

  v5 = state == 1;
  v6 = panCopy;
  if (v5)
  {
    [(PXUISlowMotionEditor *)self _handleBeginPanGesture:panCopy];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_PXUISlowMotionEditor_commonInit
{
  v3 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handlePan_];
  [(UIPanGestureRecognizer *)v3 setDelegate:self];
  [(PXUISlowMotionEditor *)self addGestureRecognizer:v3];
  panGesture = self->_panGesture;
  self->_panGesture = v3;
  v10 = v3;

  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
  [(UITapGestureRecognizer *)v5 setDelegate:self];
  [(UITapGestureRecognizer *)v5 requireGestureRecognizerToFail:self->_panGesture];
  [(PXUISlowMotionEditor *)self addGestureRecognizer:v5];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v5;
  v7 = v5;

  v8 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:0];
  impactGenerator = self->_impactGenerator;
  self->_impactGenerator = v8;
}

- (PXUISlowMotionEditor)init
{
  v5.receiver = self;
  v5.super_class = PXUISlowMotionEditor;
  v2 = [(PXUISlowMotionEditor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXUISlowMotionEditor *)v2 _PXUISlowMotionEditor_commonInit];
  }

  return v3;
}

+ (id)createSnappingControllerWithSnappingTarget:(double)target
{
  v3 = [[PXUISnappingController alloc] initWithSnappingTarget:target];

  return v3;
}

+ (id)handleImage
{
  v2 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"UISlowMotionGrabberHandle.png"];
  v3 = [v2 imageWithRenderingMode:2];

  return v3;
}

@end