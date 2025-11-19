@interface TSDPathManipulation
- (BOOL)canDecomposeRectIntoParts;
- (CGPath)manipulatePath:(CGPath *)a3 withLineWidth:(double)a4;
- (TSDPathManipulation)initWithProperties:(id)a3 bundle:(id)a4 dataManager:(void *)a5 precedingManipulation:(id)a6;
- (void)dealloc;
@end

@implementation TSDPathManipulation

- (TSDPathManipulation)initWithProperties:(id)a3 bundle:(id)a4 dataManager:(void *)a5 precedingManipulation:(id)a6
{
  v9.receiver = self;
  v9.super_class = TSDPathManipulation;
  v7 = [(TSDPathManipulation *)&v9 init:a3];
  if (v7)
  {
    v7->mPrecedingManipulation = a6;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDPathManipulation;
  [(TSDPathManipulation *)&v3 dealloc];
}

- (CGPath)manipulatePath:(CGPath *)a3 withLineWidth:(double)a4
{
  mPrecedingManipulation = self->mPrecedingManipulation;
  if (mPrecedingManipulation)
  {
    return [(TSDPathManipulation *)mPrecedingManipulation manipulatePath:a3 withLineWidth:a4];
  }

  else
  {
    return a3;
  }
}

- (BOOL)canDecomposeRectIntoParts
{
  mPrecedingManipulation = self->mPrecedingManipulation;
  if (!mPrecedingManipulation || (v3 = [(TSDPathManipulation *)mPrecedingManipulation canDecomposeRectIntoParts]) != 0)
  {
    LOBYTE(v3) = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

@end