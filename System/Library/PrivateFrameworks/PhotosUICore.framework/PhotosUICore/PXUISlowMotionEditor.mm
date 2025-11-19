@interface PXUISlowMotionEditor
+ (id)createSnappingControllerWithSnappingTarget:(double)a3;
+ (id)handleImage;
- (PXUISlowMotionEditor)init;
- (void)_PXUISlowMotionEditor_commonInit;
- (void)_handleBeginPanGesture:(id)a3;
- (void)_handleChangePanGesture:(id)a3;
- (void)_handleEndPanGesture:(id)a3;
- (void)_handlePan:(id)a3;
- (void)impactOccured;
- (void)prepareForImpact;
@end

@implementation PXUISlowMotionEditor

- (void)impactOccured
{
  v2 = [(PXUISlowMotionEditor *)self impactGenerator];
  [v2 impactOccurred];
}

- (void)prepareForImpact
{
  v2 = [(PXUISlowMotionEditor *)self impactGenerator];
  [v2 prepare];
}

- (void)_handleEndPanGesture:(id)a3
{
  [a3 locationInView:self];

  [(PXSlowMotionEditor *)self handleEndTrackingAtLocation:?];
}

- (void)_handleChangePanGesture:(id)a3
{
  v6 = a3;
  if ([v6 state] != 2)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXUISlowMotionEditor.m" lineNumber:94 description:@"_handleChangePanGesture: called with a recognizer whose state is not .Changed"];
  }

  [v6 locationInView:self];
  [(PXSlowMotionEditor *)self handleChangeTrackingAtLocation:?];
}

- (void)_handleBeginPanGesture:(id)a3
{
  v6 = a3;
  if ([v6 state] != 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXUISlowMotionEditor.m" lineNumber:85 description:@"_handleBeginPanGesture: called with a recognizer whose state is not .Began"];
  }

  [v6 locationInView:self];
  [(PXSlowMotionEditor *)self handleBeginTrackingAtLocation:?];
}

- (void)_handlePan:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if ((v4 - 3) < 3)
  {
    [(PXUISlowMotionEditor *)self _handleEndPanGesture:v7];
LABEL_8:
    v6 = v7;
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    [(PXUISlowMotionEditor *)self _handleChangePanGesture:v7];
    goto LABEL_8;
  }

  v5 = v4 == 1;
  v6 = v7;
  if (v5)
  {
    [(PXUISlowMotionEditor *)self _handleBeginPanGesture:v7];
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

+ (id)createSnappingControllerWithSnappingTarget:(double)a3
{
  v3 = [[PXUISnappingController alloc] initWithSnappingTarget:a3];

  return v3;
}

+ (id)handleImage
{
  v2 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"UISlowMotionGrabberHandle.png"];
  v3 = [v2 imageWithRenderingMode:2];

  return v3;
}

@end