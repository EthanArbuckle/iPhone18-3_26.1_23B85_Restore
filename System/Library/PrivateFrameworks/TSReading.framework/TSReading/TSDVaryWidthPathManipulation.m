@interface TSDVaryWidthPathManipulation
- (CGPath)manipulatePath:(CGPath *)a3 withLineWidth:(double)a4;
@end

@implementation TSDVaryWidthPathManipulation

- (CGPath)manipulatePath:(CGPath *)a3 withLineWidth:(double)a4
{
  v10.receiver = self;
  v10.super_class = TSDVaryWidthPathManipulation;
  v5 = [(TSDPathManipulation *)&v10 manipulatePath:a3 withLineWidth:?];
  Mutable = CGPathCreateMutable();
  v7 = a4 + a4;
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