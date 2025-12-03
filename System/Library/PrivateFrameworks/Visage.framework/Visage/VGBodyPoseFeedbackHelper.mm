@interface VGBodyPoseFeedbackHelper
+ (id)feedbackToString:(unint64_t)string;
@end

@implementation VGBodyPoseFeedbackHelper

+ (id)feedbackToString:(unint64_t)string
{
  if (string > 7)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_279E28EC0 + string);
  }
}

@end