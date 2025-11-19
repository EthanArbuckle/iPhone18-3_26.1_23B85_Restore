@interface UIPointerInteractionHoverDriver
@end

@implementation UIPointerInteractionHoverDriver

void __46___UIPointerInteractionHoverDriver_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*(WeakRetained + 32) == 1)
    {
      *(WeakRetained + 32) = 0;
      v3 = WeakRetained;
      v2 = [*(WeakRetained + 2) state] - 1;
      WeakRetained = v3;
      if (v2 <= 1)
      {
        [v3 _updateHover:v3[2] forced:1];
        WeakRetained = v3;
      }
    }
  }
}

@end