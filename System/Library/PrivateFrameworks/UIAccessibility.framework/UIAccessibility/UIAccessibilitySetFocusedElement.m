@interface UIAccessibilitySetFocusedElement
@end

@implementation UIAccessibilitySetFocusedElement

uint64_t ___UIAccessibilitySetFocusedElement_block_invoke()
{
  __UIAccessibilityFocusedElements = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

@end