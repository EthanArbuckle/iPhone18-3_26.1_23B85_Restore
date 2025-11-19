@interface _UIPreviewInteractionGestureRecognizerTouchForceProvider
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)locationInCoordinateSpace:(id)a3;
- (_UIPreviewInteractionGestureRecognizerTouchForceProvider)initWithGestureRecognizer:(id)a3;
- (_UIPreviewInteractionGestureRecognizerTouchForceProvider)initWithView:(id)a3 configuration:(id)a4;
- (void)_handleGestureRecognizer:(id)a3;
- (void)cancelInteraction;
- (void)dealloc;
@end

@implementation _UIPreviewInteractionGestureRecognizerTouchForceProvider

- (_UIPreviewInteractionGestureRecognizerTouchForceProvider)initWithGestureRecognizer:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionGestureRecognizerTouchForceProvider.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"gestureRecognizer"}];
  }

  v11.receiver = self;
  v11.super_class = _UIPreviewInteractionGestureRecognizerTouchForceProvider;
  v7 = [(_UIPreviewInteractionGestureRecognizerTouchForceProvider *)&v11 init];
  if (v7)
  {
    [v6 addTarget:v7 action:sel__handleGestureRecognizer_];
    [v6 setDelegate:v7];
    objc_storeStrong(&v7->_gestureRecognizer, a3);
    if ([(UIGestureRecognizer *)v7->_gestureRecognizer state]== UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)v7->_gestureRecognizer state]== UIGestureRecognizerStateChanged)
    {
      [(_UIPreviewInteractionGestureRecognizerTouchForceProvider *)v7 setActive:1];
    }

    v8 = v7;
  }

  return v7;
}

- (_UIPreviewInteractionGestureRecognizerTouchForceProvider)initWithView:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionGestureRecognizerTouchForceProvider.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  v9 = objc_alloc_init(UITouchForceGestureRecognizer);
  v10 = [(_UIPreviewInteractionGestureRecognizerTouchForceProvider *)self initWithGestureRecognizer:v9];
  if (v10)
  {
    [v7 addGestureRecognizer:v9];
    [(UITouchForceGestureRecognizer *)v9 setConfigurationBlock:v8];
    v11 = v10;
  }

  return v10;
}

- (void)dealloc
{
  v3 = [(UIGestureRecognizer *)self->_gestureRecognizer view];
  [v3 removeGestureRecognizer:self->_gestureRecognizer];

  v4.receiver = self;
  v4.super_class = _UIPreviewInteractionGestureRecognizerTouchForceProvider;
  [(_UIPreviewInteractionGestureRecognizerTouchForceProvider *)&v4 dealloc];
}

- (CGPoint)locationInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(UIGestureRecognizer *)self->_gestureRecognizer view];
  [(UIGestureRecognizer *)self->_gestureRecognizer locationInView:v5];
  v8 = v6;
  v9 = v7;
  if (v4 && v5 != v4)
  {
    [v5 convertPoint:v4 toCoordinateSpace:{v6, v7}];
    v8 = v10;
    v9 = v11;
  }

  v12 = v8;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)cancelInteraction
{
  [(UIGestureRecognizer *)self->_gestureRecognizer setEnabled:0];
  gestureRecognizer = self->_gestureRecognizer;

  [(UIGestureRecognizer *)gestureRecognizer setEnabled:1];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v3 = [a3 view];
  if (_UIPreviewInteractionAllowedToBeginForView(v3))
  {
    v4 = [v3 _viewControllerForAncestor];
    v5 = _UIViewControllerIsChildOfTwoColumnSplitViewController(v4) ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_handleGestureRecognizer:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    [(_UIPreviewInteractionGestureRecognizerTouchForceProvider *)self setActive:1];
  }

  if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4 || objc_msgSend(v4, "state") == 5)
  {
    [(_UIPreviewInteractionGestureRecognizerTouchForceProvider *)self setActive:0];
  }
}

@end