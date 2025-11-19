@interface VGUserBodyPoseTarget
+ (id)targetWithIdentifier:(unint64_t)a3 targetDescription:(id)a4 targetMin:(float)a5 targetMax:(float)a6 marginMin:(float)a7 marginMax:(float)a8 feedbackTooSmall:(unint64_t)a9 feedbackTooLarge:(unint64_t)a10 rejectionReasonTooSmall:(int)a11 rejectionReasonTooLarge:(int)a12;
@end

@implementation VGUserBodyPoseTarget

+ (id)targetWithIdentifier:(unint64_t)a3 targetDescription:(id)a4 targetMin:(float)a5 targetMax:(float)a6 marginMin:(float)a7 marginMax:(float)a8 feedbackTooSmall:(unint64_t)a9 feedbackTooLarge:(unint64_t)a10 rejectionReasonTooSmall:(int)a11 rejectionReasonTooLarge:(int)a12
{
  v21 = a4;
  v22 = objc_opt_new();
  v23 = *(v22 + 40);
  *(v22 + 32) = a3;
  *(v22 + 40) = v21;

  *(v22 + 8) = a5;
  *(v22 + 12) = a6;
  *(v22 + 16) = a7;
  *(v22 + 20) = a8;
  *(v22 + 48) = a9;
  *(v22 + 56) = a10;
  *(v22 + 24) = a11;
  *(v22 + 28) = a12;

  return v22;
}

@end