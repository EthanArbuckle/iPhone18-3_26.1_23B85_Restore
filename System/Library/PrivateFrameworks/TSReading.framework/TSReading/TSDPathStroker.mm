@interface TSDPathStroker
- (TSDPathStroker)initWithProperties:(id)properties bundle:(id)bundle dataManager:(void *)manager precedingStroker:(id)stroker;
- (void)dealloc;
- (void)strokePath:(CGPath *)path inContext:(CGContext *)context inColor:(id)color;
@end

@implementation TSDPathStroker

- (TSDPathStroker)initWithProperties:(id)properties bundle:(id)bundle dataManager:(void *)manager precedingStroker:(id)stroker
{
  v19.receiver = self;
  v19.super_class = TSDPathStroker;
  v8 = [(TSDPathStroker *)&v19 init:properties];
  if (v8)
  {
    v8->mPrecedingStroker = stroker;
    v9 = [properties objectForKey:@"color"];
    if (v9)
    {
      v17 = 0.0;
      v18 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      v10 = [MEMORY[0x277CCAC80] scannerWithString:v9];
      [v10 tsu_scanCGFloat:&v18];
      [v10 tsu_scanCGFloat:&v17];
      [v10 tsu_scanCGFloat:&v16];
      [v10 tsu_scanCGFloat:&v15];
      v9 = [MEMORY[0x277D6C2A8] colorWithRed:v18 green:v17 blue:v16 alpha:v15];
    }

    v8->mColor = v9;
    v11 = [properties objectForKey:@"width"];
    if (v11)
    {
      [v11 floatValue];
      v13 = v12;
    }

    else
    {
      v13 = -1.0;
    }

    v8->mWidth = v13;
  }

  return v8;
}

- (void)dealloc
{
  mColor = self->mColor;
  if (mColor)
  {
  }

  v4.receiver = self;
  v4.super_class = TSDPathStroker;
  [(TSDPathStroker *)&v4 dealloc];
}

- (void)strokePath:(CGPath *)path inContext:(CGContext *)context inColor:(id)color
{
  mPrecedingStroker = self->mPrecedingStroker;
  if (mPrecedingStroker)
  {
    [(TSDPathStroker *)mPrecedingStroker strokePath:path inContext:context inColor:color];
  }

  mWidth = self->mWidth;
  if (mWidth > 0.0)
  {
    CGContextSetLineWidth(context, mWidth);
  }

  mColor = self->mColor;
  if (!mColor)
  {
    mColor = color;
  }

  CGContextSetStrokeColorWithColor(context, [mColor CGColor]);
  CGContextAddPath(context, path);
  CGContextStrokePath(context);
  if (self->mWidth > 0.0)
  {

    CGContextSetLineWidth(context, 1.0);
  }
}

@end