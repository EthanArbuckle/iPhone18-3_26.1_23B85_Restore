@interface _UIKeyboardBasedTextSelectionGestureController
+ (id)sharedInstance;
- (BOOL)allowOneFingerDeepPress;
- (void)_cleanupDeadGesturesIfNecessary;
@end

@implementation _UIKeyboardBasedTextSelectionGestureController

+ (id)sharedInstance
{
  if (qword_1ED498FF8 != -1)
  {
    dispatch_once(&qword_1ED498FF8, &__block_literal_global_544);
  }

  v3 = qword_1ED499000;

  return v3;
}

- (void)_cleanupDeadGesturesIfNecessary
{
  [(_UIKeyboardBasedTextSelectionGestureController *)self setDelayForceMagnify:0];
  v3.receiver = self;
  v3.super_class = _UIKeyboardBasedTextSelectionGestureController;
  [(_UIKeyboardTextSelectionGestureController *)&v3 _cleanupDeadGesturesIfNecessary];
}

- (BOOL)allowOneFingerDeepPress
{
  v2 = +[_UITextSelectionSettings sharedInstance];
  v3 = [v2 enableDeepPress];
  v4 = [v3 BOOLValue];

  return v4;
}

@end