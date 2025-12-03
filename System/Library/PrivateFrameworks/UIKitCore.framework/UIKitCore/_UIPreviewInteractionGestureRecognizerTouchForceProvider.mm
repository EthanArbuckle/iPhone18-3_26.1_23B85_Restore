@interface _UIPreviewInteractionGestureRecognizerTouchForceProvider
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)locationInCoordinateSpace:(id)space;
- (_UIPreviewInteractionGestureRecognizerTouchForceProvider)initWithGestureRecognizer:(id)recognizer;
- (_UIPreviewInteractionGestureRecognizerTouchForceProvider)initWithView:(id)view configuration:(id)configuration;
- (void)_handleGestureRecognizer:(id)recognizer;
- (void)cancelInteraction;
- (void)dealloc;
@end

@implementation _UIPreviewInteractionGestureRecognizerTouchForceProvider

- (_UIPreviewInteractionGestureRecognizerTouchForceProvider)initWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (!recognizerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionGestureRecognizerTouchForceProvider.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"gestureRecognizer"}];
  }

  v11.receiver = self;
  v11.super_class = _UIPreviewInteractionGestureRecognizerTouchForceProvider;
  v7 = [(_UIPreviewInteractionGestureRecognizerTouchForceProvider *)&v11 init];
  if (v7)
  {
    [recognizerCopy addTarget:v7 action:sel__handleGestureRecognizer_];
    [recognizerCopy setDelegate:v7];
    objc_storeStrong(&v7->_gestureRecognizer, recognizer);
    if ([(UIGestureRecognizer *)v7->_gestureRecognizer state]== UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)v7->_gestureRecognizer state]== UIGestureRecognizerStateChanged)
    {
      [(_UIPreviewInteractionGestureRecognizerTouchForceProvider *)v7 setActive:1];
    }

    v8 = v7;
  }

  return v7;
}

- (_UIPreviewInteractionGestureRecognizerTouchForceProvider)initWithView:(id)view configuration:(id)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionGestureRecognizerTouchForceProvider.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  v9 = objc_alloc_init(UITouchForceGestureRecognizer);
  v10 = [(_UIPreviewInteractionGestureRecognizerTouchForceProvider *)self initWithGestureRecognizer:v9];
  if (v10)
  {
    [viewCopy addGestureRecognizer:v9];
    [(UITouchForceGestureRecognizer *)v9 setConfigurationBlock:configurationCopy];
    v11 = v10;
  }

  return v10;
}

- (void)dealloc
{
  view = [(UIGestureRecognizer *)self->_gestureRecognizer view];
  [view removeGestureRecognizer:self->_gestureRecognizer];

  v4.receiver = self;
  v4.super_class = _UIPreviewInteractionGestureRecognizerTouchForceProvider;
  [(_UIPreviewInteractionGestureRecognizerTouchForceProvider *)&v4 dealloc];
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  view = [(UIGestureRecognizer *)self->_gestureRecognizer view];
  [(UIGestureRecognizer *)self->_gestureRecognizer locationInView:view];
  v8 = v6;
  v9 = v7;
  if (spaceCopy && view != spaceCopy)
  {
    [view convertPoint:spaceCopy toCoordinateSpace:{v6, v7}];
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  view = [begin view];
  if (_UIPreviewInteractionAllowedToBeginForView(view))
  {
    _viewControllerForAncestor = [view _viewControllerForAncestor];
    v5 = _UIViewControllerIsChildOfTwoColumnSplitViewController(_viewControllerForAncestor) ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_handleGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 1)
  {
    [(_UIPreviewInteractionGestureRecognizerTouchForceProvider *)self setActive:1];
  }

  if ([recognizerCopy state] == 3 || objc_msgSend(recognizerCopy, "state") == 4 || objc_msgSend(recognizerCopy, "state") == 5)
  {
    [(_UIPreviewInteractionGestureRecognizerTouchForceProvider *)self setActive:0];
  }
}

@end