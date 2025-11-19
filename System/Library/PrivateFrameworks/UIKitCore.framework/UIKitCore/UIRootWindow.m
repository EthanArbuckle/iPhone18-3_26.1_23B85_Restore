@interface UIRootWindow
@end

@implementation UIRootWindow

void __57___UIRootWindow__visibilityLock_enqueueUpdateIfNecessary__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(*(a1 + 32) + 8) + 40) _visibilityLock_enqueueUpdateIfNecessary_body];
  objc_autoreleasePoolPop(v2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___UIRootWindow__visibilityLock_enqueueUpdateIfNecessary__block_invoke_2;
  block[3] = &unk_1E70F2F20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __57___UIRootWindow__visibilityLock_enqueueUpdateIfNecessary__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

@end