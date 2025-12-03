@interface _UIPreviewInteractionGestureRecognizer
- (void)cancel;
- (void)recognize;
- (void)setDelegate:(id)delegate;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation _UIPreviewInteractionGestureRecognizer

- (void)recognize
{
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)cancel
{
  state = [(UIGestureRecognizer *)self state];
  if (state <= UIGestureRecognizerStateChanged)
  {
    v4 = qword_18A680C80[state];

    [(UIGestureRecognizer *)self setState:v4];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(UIGestureRecognizer *)self _allActiveTouches:ended];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * v9) phase] < 3)
        {

          return;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(_UIPreviewInteractionGestureRecognizer *)self cancel];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5.receiver = self;
    v5.super_class = _UIPreviewInteractionGestureRecognizer;
    [(UIGestureRecognizer *)&v5 setDelegate:delegateCopy];
  }

  else if (dyld_program_sdk_at_least())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"You cannot change the delegate of the UIViewControllerPreviewing failure relationship gesture recognizer"];
  }
}

@end