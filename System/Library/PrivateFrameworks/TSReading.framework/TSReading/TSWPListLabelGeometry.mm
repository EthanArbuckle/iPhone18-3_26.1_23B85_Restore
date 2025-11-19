@interface TSWPListLabelGeometry
+ (id)listLabelGeometry;
- (BOOL)isEqual:(id)a3;
- (TSWPListLabelGeometry)initWithScale:(double)a3 scaleWithText:(BOOL)a4 baselineOffset:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation TSWPListLabelGeometry

+ (id)listLabelGeometry
{
  v2 = [[a1 alloc] initWithScale:1 scaleWithText:1.0 baselineOffset:0.0];

  return v2;
}

- (TSWPListLabelGeometry)initWithScale:(double)a3 scaleWithText:(BOOL)a4 baselineOffset:(double)a5
{
  v9.receiver = self;
  v9.super_class = TSWPListLabelGeometry;
  result = [(TSWPListLabelGeometry *)&v9 init];
  if (result)
  {
    result->mScaleWithText = a4;
    result->mScale = a3;
    result->mBaselineOffset = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v3 = self;
  v4 = a3 == self;
  LOBYTE(self) = a3 == self;
  if (a3)
  {
    if (!v4)
    {
      LODWORD(self) = [a3 isMemberOfClass:objc_opt_class()];
      if (self)
      {
        mScale = v3->mScale;
        v7 = *(a3 + 1);
        LOBYTE(self) = (mScale == v7 || vabdd_f64(mScale, v7) < fabs(v7 * 0.000000999999997)) && ((mBaselineOffset = v3->mBaselineOffset, v9 = *(a3 + 2), mBaselineOffset == v9) || vabdd_f64(mBaselineOffset, v9) < fabs(v9 * 0.000000999999997)) && v3->mScaleWithText == *(a3 + 24);
      }
    }
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSWPListLabelGeometry alloc];
  mScaleWithText = self->mScaleWithText;
  mScale = self->mScale;
  mBaselineOffset = self->mBaselineOffset;

  return [(TSWPListLabelGeometry *)v4 initWithScale:mScaleWithText scaleWithText:mScale baselineOffset:mBaselineOffset];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->mScaleWithText)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: %p> { scale=%.2f baselineOffset=%.2f scaleWithText=%@ }", v5, self, *&self->mScale, *&self->mBaselineOffset, v6];
}

@end