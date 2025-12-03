@interface TSDPathManipulation
- (BOOL)canDecomposeRectIntoParts;
- (CGPath)manipulatePath:(CGPath *)path withLineWidth:(double)width;
- (TSDPathManipulation)initWithProperties:(id)properties bundle:(id)bundle dataManager:(void *)manager precedingManipulation:(id)manipulation;
- (void)dealloc;
@end

@implementation TSDPathManipulation

- (TSDPathManipulation)initWithProperties:(id)properties bundle:(id)bundle dataManager:(void *)manager precedingManipulation:(id)manipulation
{
  v9.receiver = self;
  v9.super_class = TSDPathManipulation;
  v7 = [(TSDPathManipulation *)&v9 init:properties];
  if (v7)
  {
    v7->mPrecedingManipulation = manipulation;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDPathManipulation;
  [(TSDPathManipulation *)&v3 dealloc];
}

- (CGPath)manipulatePath:(CGPath *)path withLineWidth:(double)width
{
  mPrecedingManipulation = self->mPrecedingManipulation;
  if (mPrecedingManipulation)
  {
    return [(TSDPathManipulation *)mPrecedingManipulation manipulatePath:path withLineWidth:width];
  }

  else
  {
    return path;
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