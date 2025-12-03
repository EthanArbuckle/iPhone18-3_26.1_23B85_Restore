@interface VGUserBodyPoseTarget
+ (id)targetWithIdentifier:(unint64_t)identifier targetDescription:(id)description targetMin:(float)min targetMax:(float)max marginMin:(float)marginMin marginMax:(float)marginMax feedbackTooSmall:(unint64_t)small feedbackTooLarge:(unint64_t)self0 rejectionReasonTooSmall:(int)self1 rejectionReasonTooLarge:(int)self2;
@end

@implementation VGUserBodyPoseTarget

+ (id)targetWithIdentifier:(unint64_t)identifier targetDescription:(id)description targetMin:(float)min targetMax:(float)max marginMin:(float)marginMin marginMax:(float)marginMax feedbackTooSmall:(unint64_t)small feedbackTooLarge:(unint64_t)self0 rejectionReasonTooSmall:(int)self1 rejectionReasonTooLarge:(int)self2
{
  descriptionCopy = description;
  v22 = objc_opt_new();
  v23 = *(v22 + 40);
  *(v22 + 32) = identifier;
  *(v22 + 40) = descriptionCopy;

  *(v22 + 8) = min;
  *(v22 + 12) = max;
  *(v22 + 16) = marginMin;
  *(v22 + 20) = marginMax;
  *(v22 + 48) = small;
  *(v22 + 56) = large;
  *(v22 + 24) = tooSmall;
  *(v22 + 28) = tooLarge;

  return v22;
}

@end