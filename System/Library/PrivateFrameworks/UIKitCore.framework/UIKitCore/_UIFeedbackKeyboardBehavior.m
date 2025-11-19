@interface _UIFeedbackKeyboardBehavior
- (void)userTypedOnKeyWithType:(int64_t)a3;
@end

@implementation _UIFeedbackKeyboardBehavior

- (void)userTypedOnKeyWithType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_18A679FB0[a3 - 1];
  }

  [(_UIKeyboardFeedbackGenerator *)self actionOccurred:v3];
}

@end