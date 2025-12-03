@interface TSDVaryWidthPathManipulation
- (CGPath)manipulatePath:(CGPath *)path withLineWidth:(double)width;
@end

@implementation TSDVaryWidthPathManipulation

- (CGPath)manipulatePath:(CGPath *)path withLineWidth:(double)width
{
  Mutable = CGPathCreateMutable();
  v7 = width + width;
  v8 = 3;
  do
  {
    path = sub_2767B2B48(path, 2uLL, v7);
    CGPathAddPathSafe();
    CFAutorelease(path);
    --v8;
  }

  while (v8);

  return CFAutorelease(Mutable);
}

@end