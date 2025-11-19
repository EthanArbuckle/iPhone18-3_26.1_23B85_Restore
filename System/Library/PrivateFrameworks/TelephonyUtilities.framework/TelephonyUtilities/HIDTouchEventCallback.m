@interface HIDTouchEventCallback
@end

@implementation HIDTouchEventCallback

void ____HIDTouchEventCallback_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotification:*(a1 + 32)];
}

@end