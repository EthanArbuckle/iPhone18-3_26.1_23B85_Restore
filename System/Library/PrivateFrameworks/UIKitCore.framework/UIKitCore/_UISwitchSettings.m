@interface _UISwitchSettings
+ (id)sharedSettings;
@end

@implementation _UISwitchSettings

+ (id)sharedSettings
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35___UISwitchSettings_sharedSettings__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_17_0 != -1)
  {
    dispatch_once(&_MergedGlobals_17_0, block);
  }

  v2 = qword_1ED499E18;

  return v2;
}

@end