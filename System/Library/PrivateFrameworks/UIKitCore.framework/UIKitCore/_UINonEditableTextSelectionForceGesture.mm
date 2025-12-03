@interface _UINonEditableTextSelectionForceGesture
- (_UINonEditableTextSelectionForceGesture)initWithTextInput:(id)input;
- (_UINonEditableTextSelectionForceGestureDelegate)forceGestureDelegate;
- (void)dealloc;
- (void)willBeginGesture;
@end

@implementation _UINonEditableTextSelectionForceGesture

- (_UINonEditableTextSelectionForceGesture)initWithTextInput:(id)input
{
  inputCopy = input;
  if (inputCopy)
  {
    v11.receiver = self;
    v11.super_class = _UINonEditableTextSelectionForceGesture;
    v5 = [(UIGestureRecognizer *)&v11 init];
    if (v5)
    {
      v6 = [[_UIKeyboardTextSelectionController alloc] initWithInputDelegate:inputCopy];
      textSelectionController = v5->_textSelectionController;
      v5->_textSelectionController = v6;

      v8 = objc_alloc_init(_UIKeyboardBasedNonEditableTextSelectionGestureController);
      gestureController = v5->_gestureController;
      v5->_gestureController = &v8->super.super;

      [(_UIKeyboardTextSelectionGestureController *)v5->_gestureController setDelegate:v5];
      [(_UIKeyboardTextSelectionGestureController *)v5->_gestureController configureOneFingerForcePressRecognizer:v5];
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  [(_UIKeyboardTextSelectionGestureController *)self->_gestureController willRemoveSelectionController];
  textSelectionController = self->_textSelectionController;
  self->_textSelectionController = 0;

  [(_UIKeyboardTextSelectionGestureController *)self->_gestureController didRemoveSelectionController];
  [(_UIKeyboardTextSelectionGestureController *)self->_gestureController setDelegate:0];
  gestureController = self->_gestureController;
  self->_gestureController = 0;

  v5.receiver = self;
  v5.super_class = _UINonEditableTextSelectionForceGesture;
  [(UIGestureRecognizer *)&v5 dealloc];
}

- (void)willBeginGesture
{
  forceGestureDelegate = [(_UINonEditableTextSelectionForceGesture *)self forceGestureDelegate];
  if (forceGestureDelegate)
  {
    v4 = forceGestureDelegate;
    forceGestureDelegate2 = [(_UINonEditableTextSelectionForceGesture *)self forceGestureDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      forceGestureDelegate3 = [(_UINonEditableTextSelectionForceGesture *)self forceGestureDelegate];
      [forceGestureDelegate3 willBeginGesture];
    }
  }
}

- (_UINonEditableTextSelectionForceGestureDelegate)forceGestureDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->forceGestureDelegate);

  return WeakRetained;
}

@end