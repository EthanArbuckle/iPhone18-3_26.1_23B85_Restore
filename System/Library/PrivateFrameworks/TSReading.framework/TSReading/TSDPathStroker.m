@interface TSDPathStroker
- (TSDPathStroker)initWithProperties:(id)a3 bundle:(id)a4 dataManager:(void *)a5 precedingStroker:(id)a6;
- (void)dealloc;
- (void)strokePath:(CGPath *)a3 inContext:(CGContext *)a4 inColor:(id)a5;
@end

@implementation TSDPathStroker

- (TSDPathStroker)initWithProperties:(id)a3 bundle:(id)a4 dataManager:(void *)a5 precedingStroker:(id)a6
{
  v19.receiver = self;
  v19.super_class = TSDPathStroker;
  v8 = [(TSDPathStroker *)&v19 init:a3];
  if (v8)
  {
    v8->mPrecedingStroker = a6;
    v9 = [a3 objectForKey:@"color"];
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
    v11 = [a3 objectForKey:@"width"];
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

- (void)strokePath:(CGPath *)a3 inContext:(CGContext *)a4 inColor:(id)a5
{
  mPrecedingStroker = self->mPrecedingStroker;
  if (mPrecedingStroker)
  {
    [(TSDPathStroker *)mPrecedingStroker strokePath:a3 inContext:a4 inColor:a5];
  }

  mWidth = self->mWidth;
  if (mWidth > 0.0)
  {
    CGContextSetLineWidth(a4, mWidth);
  }

  mColor = self->mColor;
  if (!mColor)
  {
    mColor = a5;
  }

  CGContextSetStrokeColorWithColor(a4, [mColor CGColor]);
  CGContextAddPath(a4, a3);
  CGContextStrokePath(a4);
  if (self->mWidth > 0.0)
  {

    CGContextSetLineWidth(a4, 1.0);
  }
}

@end