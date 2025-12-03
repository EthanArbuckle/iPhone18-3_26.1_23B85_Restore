@interface TSDPathFiller
- (TSDPathFiller)initWithProperties:(id)properties bundle:(id)bundle dataManager:(void *)manager precedingStroker:(id)stroker;
- (void)strokePath:(CGPath *)path inContext:(CGContext *)context inColor:(id)color;
@end

@implementation TSDPathFiller

- (TSDPathFiller)initWithProperties:(id)properties bundle:(id)bundle dataManager:(void *)manager precedingStroker:(id)stroker
{
  v7.receiver = self;
  v7.super_class = TSDPathFiller;
  return [(TSDPathStroker *)&v7 initWithProperties:properties bundle:bundle dataManager:manager precedingStroker:stroker];
}

- (void)strokePath:(CGPath *)path inContext:(CGContext *)context inColor:(id)color
{
  mPrecedingStroker = self->super.mPrecedingStroker;
  if (mPrecedingStroker)
  {
    [(TSDPathStroker *)mPrecedingStroker strokePath:path inContext:context inColor:color];
  }

  CGContextSetFillColorWithColor(context, [color CGColor]);
  CGContextAddPath(context, path);

  CGContextFillPath(context);
}

@end