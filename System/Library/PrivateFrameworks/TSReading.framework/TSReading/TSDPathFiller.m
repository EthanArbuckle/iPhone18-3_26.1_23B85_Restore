@interface TSDPathFiller
- (TSDPathFiller)initWithProperties:(id)a3 bundle:(id)a4 dataManager:(void *)a5 precedingStroker:(id)a6;
- (void)strokePath:(CGPath *)a3 inContext:(CGContext *)a4 inColor:(id)a5;
@end

@implementation TSDPathFiller

- (TSDPathFiller)initWithProperties:(id)a3 bundle:(id)a4 dataManager:(void *)a5 precedingStroker:(id)a6
{
  v7.receiver = self;
  v7.super_class = TSDPathFiller;
  return [(TSDPathStroker *)&v7 initWithProperties:a3 bundle:a4 dataManager:a5 precedingStroker:a6];
}

- (void)strokePath:(CGPath *)a3 inContext:(CGContext *)a4 inColor:(id)a5
{
  mPrecedingStroker = self->super.mPrecedingStroker;
  if (mPrecedingStroker)
  {
    [(TSDPathStroker *)mPrecedingStroker strokePath:a3 inContext:a4 inColor:a5];
  }

  CGContextSetFillColorWithColor(a4, [a5 CGColor]);
  CGContextAddPath(a4, a3);

  CGContextFillPath(a4);
}

@end