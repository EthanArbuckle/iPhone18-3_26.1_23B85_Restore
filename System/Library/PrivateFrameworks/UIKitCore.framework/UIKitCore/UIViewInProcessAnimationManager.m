@interface UIViewInProcessAnimationManager
+ (id)sharedManager;
@end

@implementation UIViewInProcessAnimationManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__UIViewInProcessAnimationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED4A2AF8 != -1)
  {
    dispatch_once(&qword_1ED4A2AF8, block);
  }

  v2 = _MergedGlobals_1383;

  return v2;
}

void __48__UIViewInProcessAnimationManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_1383;
  _MergedGlobals_1383 = v1;
}

@end