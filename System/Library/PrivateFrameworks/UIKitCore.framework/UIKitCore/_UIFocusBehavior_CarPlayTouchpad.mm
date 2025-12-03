@interface _UIFocusBehavior_CarPlayTouchpad
+ (id)sharedInstance;
@end

@implementation _UIFocusBehavior_CarPlayTouchpad

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___UIFocusBehavior_CarPlayTouchpad_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49C9B8 != -1)
  {
    dispatch_once(&qword_1ED49C9B8, block);
  }

  v2 = _MergedGlobals_1010;

  return v2;
}

@end