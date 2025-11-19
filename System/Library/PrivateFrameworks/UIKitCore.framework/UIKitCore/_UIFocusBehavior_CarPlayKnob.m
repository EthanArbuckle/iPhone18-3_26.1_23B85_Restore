@interface _UIFocusBehavior_CarPlayKnob
+ (id)sharedInstance;
@end

@implementation _UIFocusBehavior_CarPlayKnob

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___UIFocusBehavior_CarPlayKnob_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED49FAB8 != -1)
  {
    dispatch_once(&qword_1ED49FAB8, block);
  }

  v2 = _MergedGlobals_1223;

  return v2;
}

@end