@interface UILabelVerticalTextLayoutManager
@end

@implementation UILabelVerticalTextLayoutManager

uint64_t __84___UILabelVerticalTextLayoutManager__drawWithAttributedString_rect_options_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 layoutFragmentFrame];
  [v3 drawAtPoint:*(a1 + 32) inContext:?];

  return 1;
}

@end