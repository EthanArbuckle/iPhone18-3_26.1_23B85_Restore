@interface UITextIndirectKeyboardInteraction
- (UITextIndirectKeyboardInteraction)initWithView:(id)view;
- (void)setDisableTouchesForGestures:(BOOL)gestures;
@end

@implementation UITextIndirectKeyboardInteraction

- (UITextIndirectKeyboardInteraction)initWithView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = UITextIndirectKeyboardInteraction;
  v5 = [(UITextInteraction *)&v11 init];
  v6 = v5;
  if (viewCopy && v5)
  {
    v7 = +[_UIKeyboardBasedTextSelectionGestureController sharedInstance];
    v8 = [v7 addTwoFingerTextSelectionInteractionsToView:viewCopy];

    if (v8)
    {
      [(UITextInteraction *)v6 addChild:v8];
    }

    v9 = [[UITextIndirectEditableInteraction alloc] initWithView:viewCopy];
    [(UITextInteraction *)v6 addChild:v9];
  }

  return v6;
}

- (void)setDisableTouchesForGestures:(BOOL)gestures
{
  gesturesCopy = gestures;
  v14 = *MEMORY[0x1E69E9840];
  self->_disableTouchesForGestures = gestures;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  gesturesForFailureRequirements = [(UITextInteraction *)self gesturesForFailureRequirements];
  v5 = [gesturesForFailureRequirements countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(gesturesForFailureRequirements);
        }

        [*(*(&v9 + 1) + 8 * v8++) setEnabled:!gesturesCopy];
      }

      while (v6 != v8);
      v6 = [gesturesForFailureRequirements countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end