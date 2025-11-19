@interface PXPhotosFeedbackControllerFactory
+ (id)makeFeedbackController;
@end

@implementation PXPhotosFeedbackControllerFactory

+ (id)makeFeedbackController
{
  v2 = NSClassFromString(&cfstr_Photosfeedback.isa);
  if (v2)
  {
    v2 = [v2 makeFeedbackController];
  }

  return v2;
}

@end