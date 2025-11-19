@interface UILabelVisualStyleAttributedStringContainsForegroundColorAttribute
@end

@implementation UILabelVisualStyleAttributedStringContainsForegroundColorAttribute

uint64_t ___UILabelVisualStyleAttributedStringContainsForegroundColorAttribute_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

@end