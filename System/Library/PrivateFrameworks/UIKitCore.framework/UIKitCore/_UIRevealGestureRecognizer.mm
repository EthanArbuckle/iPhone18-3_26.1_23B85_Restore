@interface _UIRevealGestureRecognizer
- (void)setDelegate:(id)a3;
@end

@implementation _UIRevealGestureRecognizer

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5.receiver = self;
    v5.super_class = _UIRevealGestureRecognizer;
    [(UIGestureRecognizer *)&v5 setDelegate:v4];
  }

  else if (dyld_program_sdk_at_least())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"You cannot change the delegate of the UIViewControllerPreviewing failure relationship gesture recognizer"];
  }
}

@end