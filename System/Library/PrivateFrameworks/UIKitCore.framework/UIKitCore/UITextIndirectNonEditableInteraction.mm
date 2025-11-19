@interface UITextIndirectNonEditableInteraction
- (BOOL)shouldAllowSelectionGestures:(BOOL)a3 atPoint:(CGPoint)a4 toBegin:(BOOL)a5;
- (BOOL)shouldAllowWithTouchTypes:(id)a3 atPoint:(CGPoint)a4 toBegin:(BOOL)a5;
- (UIKeyboardTaskQueue)taskQueue;
- (UITextIndirectNonEditableInteraction)initWithView:(id)a3;
- (void)_setupControllersIfNecessaryWithView:(id)a3;
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
  v3 = [(UITextInteraction *)self view];
  [(UITextIndirectNonEditableInteraction *)self _setupControllersIfNecessaryWithView:v3];
}

- (void)dealloc
{
  v3 = [(_UIKeyboardTextSelectionGestureController *)self->super._textSelectionGestureController delegate];

  if (v3 == self)
  {
    [(_UIKeyboardTextSelectionGestureController *)self->super._textSelectionGestureController setDelegate:0];
  }

  textSelectionController = self->_textSelectionController;
  self->_textSelectionController = 0;

  v5.receiver = self;
  v5.super_class = UITextIndirectNonEditableInteraction;
  [(UITextIndirectNonEditableInteraction *)&v5 dealloc];
}

- (UITextIndirectNonEditableInteraction)initWithView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UITextIndirectNonEditableInteraction;
  v5 = [(UITextInteraction *)&v8 init];
  v6 = v5;
  if (v4 && v5)
  {
    [(UITextIndirectNonEditableInteraction *)v5 _setupControllersIfNecessaryWithView:v4];
  }

  return v6;
}

- (void)_setupControllersIfNecessaryWithView:(id)a3
{
  v4 = a3;
  if (!self->_textSelectionController || !self->super._textSelectionGestureController)
  {
    v17 = v4;
    if ([v4 conformsToProtocol:&unk_1EFE8B2D0])
    {
      v5 = v17;
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v6 = [(UITextInteraction *)self root];
      v5 = [v6 textInput];

      if (!v5)
      {
LABEL_12:

        v4 = v17;
        goto LABEL_13;
      }
    }

    v7 = [v5 inputDelegate];
    if (!v7 || (v8 = v7, [v5 inputDelegate], v9 = objc_claimAutoreleasedReturnValue(), +[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v9 == v10))
    {
      v11 = [v17 _usesAsynchronousProtocol];
      v12 = off_1E70EBA68;
      if (!v11)
      {
        v12 = off_1E70EBA98;
      }

      v13 = [objc_alloc(*v12) initWithInputDelegate:v5];
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
  v3 = [v2 taskQueue];

  return v3;
}

- (void)willBeginGesture
{
  v2 = self;
  v5 = [(UITextInteraction *)v2 assistantDelegate];
  v3 = [(UITextInteraction *)v2 inGesture];
  [(UITextInteraction *)v2 setInGesture:1];
  [v5 checkEditabilityAndSetFirstResponderIfNecessary];
  v4 = [v5 _editMenuAssistant];
  [v4 hideSelectionCommands];

  [(UITextInteraction *)v2 setInGesture:v3];
}

- (void)didEndGesture
{
  v5 = [(UITextInteraction *)self assistantDelegate];
  if ([v5 needsGestureUpdate])
  {
    v3 = [(UITextInteraction *)self _textInput];
    v4 = [v3 isFirstResponder];

    if (v4)
    {
      [v5 setGestureRecognizers];
      [v5 setNeedsGestureUpdate:0];
    }
  }
}

- (BOOL)shouldAllowWithTouchTypes:(id)a3 atPoint:(CGPoint)a4 toBegin:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = [(UITextInteraction *)self root];
  LOBYTE(v5) = [v10 shouldAllowWithTouchTypes:v9 atPoint:v5 toBegin:{x, y}];

  return v5;
}

- (BOOL)shouldAllowSelectionGestures:(BOOL)a3 atPoint:(CGPoint)a4 toBegin:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  textSelectionController = self->_textSelectionController;
  if (v5)
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