@interface TSDVaryWidthPathManipulation
- (CGPath)manipulatePath:(CGPath *)a3 withLineWidth:(double)a4;
@end

@implementation TSDVaryWidthPathManipulation

- (CGPath)manipulatePath:(CGPath *)a3 withLineWidth:(double)a4
{
  Mutable = CGPathCreateMutable();
  v7 = a4 + a4;
  v8 = 3;
  do
  {
    a3 = sub_2767B2B48(a3, 2uLL, v7);
    CGPathAddPathSafe();
    CFAutorelease(a3);
    --v8;
  }

  while (v8);

  return CFAutorelease(Mutable);
}

@end