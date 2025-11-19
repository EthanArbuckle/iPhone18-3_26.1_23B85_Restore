@interface UITextIndirectKeyboardInteraction
- (UITextIndirectKeyboardInteraction)initWithView:(id)a3;
- (void)setDisableTouchesForGestures:(BOOL)a3;
@end

@implementation UITextIndirectKeyboardInteraction

- (UITextIndirectKeyboardInteraction)initWithView:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UITextIndirectKeyboardInteraction;
  v5 = [(UITextInteraction *)&v11 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = +[_UIKeyboardBasedTextSelectionGestureController sharedInstance];
    v8 = [v7 addTwoFingerTextSelectionInteractionsToView:v4];

    if (v8)
    {
      [(UITextInteraction *)v6 addChild:v8];
    }

    v9 = [[UITextIndirectEditableInteraction alloc] initWithView:v4];
    [(UITextInteraction *)v6 addChild:v9];
  }

  return v6;
}

- (void)setDisableTouchesForGestures:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  self->_disableTouchesForGestures = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(UITextInteraction *)self gesturesForFailureRequirements];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setEnabled:!v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end