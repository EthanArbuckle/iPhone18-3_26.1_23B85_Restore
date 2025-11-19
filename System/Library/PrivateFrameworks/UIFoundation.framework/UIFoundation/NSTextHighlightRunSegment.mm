@interface NSTextHighlightRunSegment
@end

@implementation NSTextHighlightRunSegment

CGPathRef __45___NSTextHighlightRunSegment_calculateCGPath__block_invoke(uint64_t a1, const CGPath *a2)
{
  result = CGPathCreateCopyByUnioningPath(*(*(*(a1 + 32) + 8) + 24), a2, 1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end