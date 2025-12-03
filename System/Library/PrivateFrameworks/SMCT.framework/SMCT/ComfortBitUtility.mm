@interface ComfortBitUtility
+ (BOOL)computeMotionComfortBitWithMotionAccessorArray:(id)array threshold:(float)threshold windowSize:(float)size frameRate:(float)rate;
+ (BOOL)computeMotionComfortBitWithMotionScoreArray:(id)array motionAccessorArray:(id)accessorArray thresholdMotionScore:(float)score thresholdMotionAccessor:(float)accessor windowSize:(float)size frameRate:(float)rate;
+ (BOOL)computeMotionComfortBitWithMotionScoreArray:(id)array threshold:(float)threshold windowSize:(float)size frameRate:(float)rate;
@end

@implementation ComfortBitUtility

+ (BOOL)computeMotionComfortBitWithMotionScoreArray:(id)array threshold:(float)threshold windowSize:(float)size frameRate:(float)rate
{
  v9 = sub_26431A694();
  v10 = static ComfortBitUtility.computeMotionComfortBit(motionScoreArray:threshold:windowSize:frameRate:)(v9, threshold, size, rate);

  return v10 & 1;
}

+ (BOOL)computeMotionComfortBitWithMotionAccessorArray:(id)array threshold:(float)threshold windowSize:(float)size frameRate:(float)rate
{
  type metadata accessor for MotionAssessorScore();
  v9 = sub_26431A694();
  v10 = static ComfortBitUtility.computeMotionComfortBit(motionAccessorArray:threshold:windowSize:frameRate:)(v9, threshold, size, rate);

  return v10 & 1;
}

+ (BOOL)computeMotionComfortBitWithMotionScoreArray:(id)array motionAccessorArray:(id)accessorArray thresholdMotionScore:(float)score thresholdMotionAccessor:(float)accessor windowSize:(float)size frameRate:(float)rate
{
  v12 = sub_26431A694();
  type metadata accessor for MotionAssessorScore();
  v13 = sub_26431A694();
  v14.n128_f32[0] = score;
  v15 = static ComfortBitUtility.computeMotionComfortBit(motionScoreArray:motionAccessorArray:thresholdMotionScore:thresholdMotionAccessor:windowSize:frameRate:)(v12, v13, v14, accessor, size, rate);

  return v15 & 1;
}

@end