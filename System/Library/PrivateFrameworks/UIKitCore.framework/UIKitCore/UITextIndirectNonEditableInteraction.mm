@interface UITextIndirectNonEditableInteraction
- (BOOL)shouldAllowSelectionGestures:(BOOL)gestures atPoint:(CGPoint)point toBegin:(BOOL)begin;
- (BOOL)shouldAllowWithTouchTypes:(id)types atPoint:(CGPoint)point toBegin:(BOOL)begin;
- (UIKeyboardTaskQueue)taskQueue;
- (UITextIndirectNonEditableInteraction)initWithView:(id)view;
- (void)_setupControllersIfNecessaryWithView:(id)view;
- (void)dealloc;
- (void)didEndGesture;
- (void)finishSetup;
- (void)willBeginGesture;
@end

@implementation UITextIndirectNonEditableInteraction

- (void)finishSetup
{
  v4.receiver = self;
  v4.super_class = UITextIndirectNonEditableInteraction;
  [(UITextInteraction *)&v4 finishSetup];
  view = [(UITextInteraction *)self view];
  [(UITextIndirectNonEditableInteraction *)self _setupControllersIfNecessaryWithView:view];
}

- (void)dealloc
{
  delegate = [(_UIKeyboardTextSelectionGestureController *)self->super._textSelectionGestureController delegate];

  if (delegate == self)
  {
    [(_UIKeyboardTextSelectionGestureController *)self->super._textSelectionGestureController setDelegate:0];
  }

  textSelectionController = self->_textSelectionController;
  self->_textSelectionController = 0;

  v5.receiver = self;
  v5.super_class = UITextIndirectNonEditableInteraction;
  [(UITextIndirectNonEditableInteraction *)&v5 dealloc];
}

- (UITextIndirectNonEditableInteraction)initWithView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = UITextIndirectNonEditableInteraction;
  v5 = [(UITextInteraction *)&v8 init];
  v6 = v5;
  if (viewCopy && v5)
  {
    [(UITextIndirectNonEditableInteraction *)v5 _setupControllersIfNecessaryWithView:viewCopy];
  }

  return v6;
}

- (void)_setupControllersIfNecessaryWithView:(id)view
{
  viewCopy = view;
  if (!self->_textSelectionController || !self->super._textSelectionGestureController)
  {
    v17 = viewCopy;
    if ([viewCopy conformsToProtocol:&unk_1EFE8B2D0])
    {
      textInput = v17;
      if (!textInput)
      {
        goto LABEL_12;
      }
    }

    else
    {
      root = [(UITextInteraction *)self root];
      textInput = [root textInput];

      if (!textInput)
      {
LABEL_12:

        viewCopy = v17;
        goto LABEL_13;
      }
    }

    inputDelegate = [textInput inputDelegate];
    if (!inputDelegate || (v8 = inputDelegate, [textInput inputDelegate], v9 = objc_claimAutoreleasedReturnValue(), +[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v9 == v10))
    {
      _usesAsynchronousProtocol = [v17 _usesAsynchronousProtocol];
      v12 = off_1E70EBA68;
      if (!_usesAsynchronousProtocol)
      {
        v12 = off_1E70EBA98;
      }

      v13 = [objc_alloc(*v12) initWithInputDelegate:textInput];
      textSelectionController = self->_textSelectionController;
      self->_textSelectionController = v13;

      v15 = objc_alloc_init(_UIKeyboardBasedNonEditableTextSelectionGestureController);
      textSelectionGestureController = self->super._textSelectionGestureController;
      self->super._textSelectionGestureController = &v15->super.super;

      [(_UIKeyboardTextSelectionGestureController *)self->super._textSelectionGestureController setDelegate:self];
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (UIKeyboardTaskQueue)taskQueue
{
  v2 = +[UIKeyboardImpl activeInstance];
  taskQueue = [v2 taskQueue];

  return taskQueue;
}

- (void)willBeginGesture
{
  selfCopy = self;
  assistantDelegate = [(UITextInteraction *)selfCopy assistantDelegate];
  inGesture = [(UITextInteraction *)selfCopy inGesture];
  [(UITextInteraction *)selfCopy setInGesture:1];
  [assistantDelegate checkEditabilityAndSetFirstResponderIfNecessary];
  _editMenuAssistant = [assistantDelegate _editMenuAssistant];
  [_editMenuAssistant hideSelectionCommands];

  [(UITextInteraction *)selfCopy setInGesture:inGesture];
}

- (void)didEndGesture
{
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  if ([assistantDelegate needsGestureUpdate])
  {
    _textInput = [(UITextInteraction *)self _textInput];
    isFirstResponder = [_textInput isFirstResponder];

    if (isFirstResponder)
    {
      [assistantDelegate setGestureRecognizers];
      [assistantDelegate setNeedsGestureUpdate:0];
    }
  }
}

- (BOOL)shouldAllowWithTouchTypes:(id)types atPoint:(CGPoint)point toBegin:(BOOL)begin
{
  beginCopy = begin;
  y = point.y;
  x = point.x;
  typesCopy = types;
  root = [(UITextInteraction *)self root];
  LOBYTE(beginCopy) = [root shouldAllowWithTouchTypes:typesCopy atPoint:beginCopy toBegin:{x, y}];

  return beginCopy;
}

- (BOOL)shouldAllowSelectionGestures:(BOOL)gestures atPoint:(CGPoint)point toBegin:(BOOL)begin
{
  beginCopy = begin;
  y = point.y;
  x = point.x;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  textSelectionController = self->_textSelectionController;
  if (beginCopy)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  return [(_UIKeyboardTextSelectionController *)textSelectionController shouldAllowSelectionGestureWithTouchType:0 atPoint:v10 toProgressToState:x, y];
}

@end