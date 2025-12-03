@interface TSDVaryWidthPathManipulation
- (CGPath)manipulatePath:(CGPath *)path withLineWidth:(double)width;
@end

@implementation TSDVaryWidthPathManipulation

- (CGPath)manipulatePath:(CGPath *)path withLineWidth:(double)width
{
  v10.receiver = self;
  v10.super_class = TSDVaryWidthPathManipulation;
  v5 = [(TSDPathManipulation *)&v10 manipulatePath:path withLineWidth:?];
  Mutable = CGPathCreateMutable();
  v7 = width + width;
  v8 = 3;
  do
  {
    v5 = TSDCreateWobblyPathWithMaxWobbleAndSubdivisions(v5, 2uLL, v7);
    CGPathAddPath(Mutable, 0, v5);
    --v8;
  }

  while (v8);
  return Mutable;
}

@end