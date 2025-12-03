@interface TSWPListLabelGeometry
+ (id)listLabelGeometry;
- (BOOL)isEqual:(id)equal;
- (TSWPListLabelGeometry)initWithScale:(double)scale scaleWithText:(BOOL)text baselineOffset:(double)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TSWPListLabelGeometry

+ (id)listLabelGeometry
{
  v2 = [[self alloc] initWithScale:1 scaleWithText:1.0 baselineOffset:0.0];

  return v2;
}

- (TSWPListLabelGeometry)initWithScale:(double)scale scaleWithText:(BOOL)text baselineOffset:(double)offset
{
  v9.receiver = self;
  v9.super_class = TSWPListLabelGeometry;
  result = [(TSWPListLabelGeometry *)&v9 init];
  if (result)
  {
    result->mScaleWithText = text;
    result->mScale = scale;
    result->mBaselineOffset = offset;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  v4 = equal == self;
  LOBYTE(self) = equal == self;
  if (equal)
  {
    if (!v4)
    {
      LODWORD(self) = [equal isMemberOfClass:objc_opt_class()];
      if (self)
      {
        mScale = selfCopy->mScale;
        v7 = *(equal + 1);
        LOBYTE(self) = (mScale == v7 || vabdd_f64(mScale, v7) < fabs(v7 * 0.000000999999997)) && ((mBaselineOffset = selfCopy->mBaselineOffset, v9 = *(equal + 2), mBaselineOffset == v9) || vabdd_f64(mBaselineOffset, v9) < fabs(v9 * 0.000000999999997)) && selfCopy->mScaleWithText == *(equal + 24);
      }
    }
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
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