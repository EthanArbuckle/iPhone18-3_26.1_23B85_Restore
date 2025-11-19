@interface UIImageMultiVectorGlyphContent
@end

@implementation UIImageMultiVectorGlyphContent

uint64_t __42___UIImageMultiVectorGlyphContent_CGImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  [*(a1 + 32) _prepareForDrawingWithSize:v3 scale:*(a1 + 40) inContext:{*(a1 + 48), *(a1 + 56)}];
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);

  return [v4 _drawWithSize:v3 scale:0 inContext:v7 renditionContext:{v5, v6}];
}

@end