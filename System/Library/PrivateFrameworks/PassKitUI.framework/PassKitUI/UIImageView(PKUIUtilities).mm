@interface UIImageView(PKUIUtilities)
- (double)pkui_alignmentSize;
- (uint64_t)pkui_alignmentRect;
- (uint64_t)pkui_setAlignmentRect:()PKUIUtilities;
@end

@implementation UIImageView(PKUIUtilities)

- (uint64_t)pkui_alignmentRect
{
  [self frame];

  return [self alignmentRectForFrame:?];
}

- (uint64_t)pkui_setAlignmentRect:()PKUIUtilities
{
  [self frameForAlignmentRect:?];

  return [self setFrame:?];
}

- (double)pkui_alignmentSize
{
  [self frame];
  v3 = v2;
  [self alignmentRectInsets];
  return v3 - (v4 + v5);
}

@end