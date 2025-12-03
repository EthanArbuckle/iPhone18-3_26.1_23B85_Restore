@interface PUIImageTreatmentOptions
+ (PUIImageTreatmentOptions)identity;
- (double)initWithFixedScale:(double *)result;
- (double)initWithOriginalScale:(double)scale reducedScale:;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PUIImageTreatmentOptions

- (double)initWithOriginalScale:(double)scale reducedScale:
{
  if (result)
  {
    result = [result init];
    if (result)
    {
      result[1] = a2;
      result[2] = scale;
    }
  }

  return result;
}

- (double)initWithFixedScale:(double *)result
{
  if (result)
  {
    result = [result init];
    if (result)
    {
      result[1] = a2;
      result[2] = a2;
    }
  }

  return result;
}

+ (PUIImageTreatmentOptions)identity
{
  objc_opt_self();
  v0 = [PUIImageTreatmentOptions alloc];
  if (v0)
  {
    v0 = [(PUIImageTreatmentOptions *)v0 init];
    if (v0)
    {
      __asm { FMOV            V0.2D, #1.0 }

      *&v0->_originalScale = _Q0;
    }
  }

  return v0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [PUIImageTreatmentOptions allocWithZone:zone];
  if (result)
  {
    v5 = *&self->_originalScale;
    result = [result init];
    if (result)
    {
      *(result + 8) = v5;
    }
  }

  return result;
}

@end