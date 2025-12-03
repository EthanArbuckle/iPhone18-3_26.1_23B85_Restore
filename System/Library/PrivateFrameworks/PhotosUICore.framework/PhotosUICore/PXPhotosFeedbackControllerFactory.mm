@interface PXPhotosFeedbackControllerFactory
+ (id)makeFeedbackController;
@end

@implementation PXPhotosFeedbackControllerFactory

+ (id)makeFeedbackController
{
  makeFeedbackController = NSClassFromString(&cfstr_Photosfeedback.isa);
  if (makeFeedbackController)
  {
    makeFeedbackController = [makeFeedbackController makeFeedbackController];
  }

  return makeFeedbackController;
}

@end