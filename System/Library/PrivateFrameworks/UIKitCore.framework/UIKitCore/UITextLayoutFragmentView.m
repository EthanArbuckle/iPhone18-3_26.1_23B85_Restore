@interface UITextLayoutFragmentView
@end

@implementation UITextLayoutFragmentView

void __38___UITextLayoutFragmentView_drawRect___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutFragment];
  [v2 drawAtPoint:*(a1 + 40) inContext:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

@end