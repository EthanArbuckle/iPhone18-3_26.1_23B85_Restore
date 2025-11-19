@interface UITextLayoutPreviewRenderer
@end

@implementation UITextLayoutPreviewRenderer

uint64_t __51___UITextLayoutPreviewRenderer__updateDataIfNeeded__block_invoke(void *a1, double x, double y, double width, double height)
{
  v10 = a1[4];
  v11 = [MEMORY[0x1E696B098] valueWithCGRect:?];
  [v10 addObject:v11];

  v12 = a1[5];
  v13 = [UIBezierPath bezierPathWithRect:x, y, width, height];
  [v12 appendPath:v13];

  if (!CGRectIsEmpty(*(*(a1[6] + 8) + 32)))
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v17 = CGRectUnion(v16, *(*(a1[6] + 8) + 32));
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
  }

  v14 = *(a1[6] + 8);
  v14[4] = x;
  v14[5] = y;
  v14[6] = width;
  v14[7] = height;
  return 1;
}

void __51___UITextLayoutPreviewRenderer__updateDataIfNeeded__block_invoke_2(uint64_t a1, CGContextRef c)
{
  CGContextSaveGState(c);
  v4 = *(a1 + 72);
  *&v5.a = *(a1 + 56);
  *&v5.c = v4;
  *&v5.tx = *(a1 + 88);
  CGContextConcatCTM(c, &v5);
  [*(a1 + 32) addClip];
  _UITextLayoutDrawRangeInContext(*(a1 + 40), *(a1 + 48), c);
  CGContextRestoreGState(c);
}

uint64_t __51___UITextLayoutPreviewRenderer__updateDataIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGContext];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

@end