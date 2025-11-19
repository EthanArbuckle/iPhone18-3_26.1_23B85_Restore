@interface ComfortBitUtility
+ (BOOL)computeMotionComfortBitWithMotionAccessorArray:(id)a3 threshold:(float)a4 windowSize:(float)a5 frameRate:(float)a6;
+ (BOOL)computeMotionComfortBitWithMotionScoreArray:(id)a3 motionAccessorArray:(id)a4 thresholdMotionScore:(float)a5 thresholdMotionAccessor:(float)a6 windowSize:(float)a7 frameRate:(float)a8;
+ (BOOL)computeMotionComfortBitWithMotionScoreArray:(id)a3 threshold:(float)a4 windowSize:(float)a5 frameRate:(float)a6;
@end

@implementation ComfortBitUtility

+ (BOOL)computeMotionComfortBitWithMotionScoreArray:(id)a3 threshold:(float)a4 windowSize:(float)a5 frameRate:(float)a6
{
  v9 = sub_26431A694();
  v10 = static ComfortBitUtility.computeMotionComfortBit(motionScoreArray:threshold:windowSize:frameRate:)(v9, a4, a5, a6);

  return v10 & 1;
}

+ (BOOL)computeMotionComfortBitWithMotionAccessorArray:(id)a3 threshold:(float)a4 windowSize:(float)a5 frameRate:(float)a6
{
  type metadata accessor for MotionAssessorScore();
  v9 = sub_26431A694();
  v10 = static ComfortBitUtility.computeMotionComfortBit(motionAccessorArray:threshold:windowSize:frameRate:)(v9, a4, a5, a6);

  return v10 & 1;
}

+ (BOOL)computeMotionComfortBitWithMotionScoreArray:(id)a3 motionAccessorArray:(id)a4 thresholdMotionScore:(float)a5 thresholdMotionAccessor:(float)a6 windowSize:(float)a7 frameRate:(float)a8
{
  v12 = sub_26431A694();
  type metadata accessor for MotionAssessorScore();
  v13 = sub_26431A694();
  v14.n128_f32[0] = a5;
  v15 = static ComfortBitUtility.computeMotionComfortBit(motionScoreArray:motionAccessorArray:thresholdMotionScore:thresholdMotionAccessor:windowSize:frameRate:)(v12, v13, v14, a6, a7, a8);

  return v15 & 1;
}

@end