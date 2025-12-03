@interface NSAttributedString(PLKImageRenderableAdditions)
- (uint64_t)plk_renderWithContext:()PLKImageRenderableAdditions;
@end

@implementation NSAttributedString(PLKImageRenderableAdditions)

- (uint64_t)plk_renderWithContext:()PLKImageRenderableAdditions
{
  [a3 contentRect];
  [self boundingRectWithSize:0 options:0 context:{v4, v5}];

  return [self drawInRect:?];
}

@end