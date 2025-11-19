@interface OFRescalableSegment
+ (id)lessRescalableSegmentWithDefaultDuration:(double)a3 minimumDuration:(double)a4 maximumDuration:(double)a5;
+ (id)moreRescalableSegmentWithDefaultDuration:(double)a3 minimumDuration:(double)a4 maximumDuration:(double)a5;
+ (id)nonRescalableSegmentWithDuration:(double)a3;
+ (id)rescalableSegmentWithDefaultDuration:(double)a3 minimumDuration:(double)a4 maximumDuration:(double)a5;
@end

@implementation OFRescalableSegment

+ (id)nonRescalableSegmentWithDuration:(double)a3
{
  result = objc_alloc_init(OFRescalableSegment);
  *(result + 2) = a3;
  *(result + 3) = a3;
  *(result + 1) = a3;
  return result;
}

+ (id)rescalableSegmentWithDefaultDuration:(double)a3 minimumDuration:(double)a4 maximumDuration:(double)a5
{
  result = objc_alloc_init(OFRescalableSegment);
  *(result + 1) = a3;
  *(result + 2) = a4;
  *(result + 3) = a5;
  __asm { FMOV            V0.2D, #1.0 }

  *(result + 2) = _Q0;
  return result;
}

+ (id)moreRescalableSegmentWithDefaultDuration:(double)a3 minimumDuration:(double)a4 maximumDuration:(double)a5
{
  result = objc_alloc_init(OFRescalableSegment);
  *(result + 1) = a3;
  *(result + 2) = a4;
  *(result + 3) = a5;
  __asm { FMOV            V0.2D, #2.0 }

  *(result + 2) = _Q0;
  return result;
}

+ (id)lessRescalableSegmentWithDefaultDuration:(double)a3 minimumDuration:(double)a4 maximumDuration:(double)a5
{
  result = objc_alloc_init(OFRescalableSegment);
  *(result + 1) = a3;
  *(result + 2) = a4;
  *(result + 3) = a5;
  __asm { FMOV            V0.2D, #0.5 }

  *(result + 2) = _Q0;
  return result;
}

@end