@interface UIImageCUIVectorGlyphContent
@end

@implementation UIImageCUIVectorGlyphContent

uint64_t __93___UIImageCUIVectorGlyphContent__provideVectorGlyphCGImageWithSize_scale_namedColorResolver___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(a1 + 32) + 16))();
  v5 = [v4 CGColor];
  if (v5)
  {
    a3 = v5;
  }

  return a3;
}

uint64_t __93___UIImageCUIVectorGlyphContent__drawVectorGlyphWithSize_scale_inContext_namedColorResolver___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(a1 + 32) + 16))();
  v5 = [v4 CGColor];
  if (v5)
  {
    a3 = v5;
  }

  return a3;
}

uint64_t __100___UIImageCUIVectorGlyphContent__provideVectorGlyphCGImageWithSize_scale_hierarchicalColorResolver___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 CGColor];

  return v2;
}

uint64_t __100___UIImageCUIVectorGlyphContent__drawVectorGlyphWithSize_scale_inContext_hierarchicalColorResolver___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 CGColor];

  return v2;
}

@end