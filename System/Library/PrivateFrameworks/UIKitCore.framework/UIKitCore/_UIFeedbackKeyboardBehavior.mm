@interface _UIFeedbackKeyboardBehavior
- (void)userTypedOnKeyWithType:(int64_t)type;
@end

@implementation _UIFeedbackKeyboardBehavior

- (void)userTypedOnKeyWithType:(int64_t)type
{
  if ((type - 1) > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_18A679FB0[type - 1];
  }

  [(_UIKeyboardFeedbackGenerator *)self actionOccurred:v3];
}

@end