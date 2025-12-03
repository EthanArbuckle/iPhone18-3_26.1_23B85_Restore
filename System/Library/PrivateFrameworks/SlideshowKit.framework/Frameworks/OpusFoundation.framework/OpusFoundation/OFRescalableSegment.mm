@interface OFRescalableSegment
+ (id)lessRescalableSegmentWithDefaultDuration:(double)duration minimumDuration:(double)minimumDuration maximumDuration:(double)maximumDuration;
+ (id)moreRescalableSegmentWithDefaultDuration:(double)duration minimumDuration:(double)minimumDuration maximumDuration:(double)maximumDuration;
+ (id)nonRescalableSegmentWithDuration:(double)duration;
+ (id)rescalableSegmentWithDefaultDuration:(double)duration minimumDuration:(double)minimumDuration maximumDuration:(double)maximumDuration;
@end

@implementation OFRescalableSegment

+ (id)nonRescalableSegmentWithDuration:(double)duration
{
  result = objc_alloc_init(OFRescalableSegment);
  *(result + 2) = duration;
  *(result + 3) = duration;
  *(result + 1) = duration;
  return result;
}

+ (id)rescalableSegmentWithDefaultDuration:(double)duration minimumDuration:(double)minimumDuration maximumDuration:(double)maximumDuration
{
  result = objc_alloc_init(OFRescalableSegment);
  *(result + 1) = duration;
  *(result + 2) = minimumDuration;
  *(result + 3) = maximumDuration;
  __asm { FMOV            V0.2D, #1.0 }

  *(result + 2) = _Q0;
  return result;
}

+ (id)moreRescalableSegmentWithDefaultDuration:(double)duration minimumDuration:(double)minimumDuration maximumDuration:(double)maximumDuration
{
  result = objc_alloc_init(OFRescalableSegment);
  *(result + 1) = duration;
  *(result + 2) = minimumDuration;
  *(result + 3) = maximumDuration;
  __asm { FMOV            V0.2D, #2.0 }

  *(result + 2) = _Q0;
  return result;
}

+ (id)lessRescalableSegmentWithDefaultDuration:(double)duration minimumDuration:(double)minimumDuration maximumDuration:(double)maximumDuration
{
  result = objc_alloc_init(OFRescalableSegment);
  *(result + 1) = duration;
  *(result + 2) = minimumDuration;
  *(result + 3) = maximumDuration;
  __asm { FMOV            V0.2D, #0.5 }

  *(result + 2) = _Q0;
  return result;
}

@end