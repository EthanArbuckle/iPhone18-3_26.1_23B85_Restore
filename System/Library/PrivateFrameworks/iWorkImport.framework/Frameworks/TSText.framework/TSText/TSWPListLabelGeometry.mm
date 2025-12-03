@interface TSWPListLabelGeometry
+ (id)listLabelGeometry;
- (BOOL)isEqual:(id)equal;
- (TSWPListLabelGeometry)initWithScale:(double)scale scaleWithText:(BOOL)text baselineOffset:(double)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation TSWPListLabelGeometry

+ (id)listLabelGeometry
{
  v2 = objc_alloc_init(self);

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
  equalCopy = equal;
  v5 = equalCopy;
  v6 = equalCopy == self;
  if (equalCopy && equalCopy != self)
  {
    v7 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(v5, v8, v7))
    {
      v9 = v5;
      mScale = self->mScale;
      v11 = v9[1];
      v6 = (mScale == v11 || vabdd_f64(mScale, v11) < fabs(v11 * 0.000000999999997)) && ((mBaselineOffset = self->mBaselineOffset, v13 = v9[2], mBaselineOffset == v13) || vabdd_f64(mBaselineOffset, v13) < fabs(v13 * 0.000000999999997)) && self->mScaleWithText == *(v9 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  objc_msgSend_addBool_(v3, v4, self->mScaleWithText);
  v7 = objc_msgSend_hashValue(v3, v5, v6);

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSWPListLabelGeometry alloc];
  mScaleWithText = self->mScaleWithText;
  mScale = self->mScale;
  mBaselineOffset = self->mBaselineOffset;

  return objc_msgSend_initWithScale_scaleWithText_baselineOffset_(v4, v5, mScaleWithText, mScale, mBaselineOffset);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = v5;
  mScale = self->mScale;
  mBaselineOffset = self->mBaselineOffset;
  if (self->mScaleWithText)
  {
    objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p> { scale=%.2f baselineOffset=%.2f scaleWithText=%@ }", v5, self, *&mScale, *&mBaselineOffset, @"YES");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p> { scale=%.2f baselineOffset=%.2f scaleWithText=%@ }", v5, self, *&mScale, *&mBaselineOffset, @"NO");
  }
  v10 = ;

  return v10;
}

@end