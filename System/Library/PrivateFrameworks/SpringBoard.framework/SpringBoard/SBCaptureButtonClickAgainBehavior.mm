@interface SBCaptureButtonClickAgainBehavior
- (unint64_t)cameraLaunchIntentInContext:(id)context;
- (unint64_t)coachIntentInContext:(id)context;
- (unint64_t)prewarmIntentInContext:(id)context;
@end

@implementation SBCaptureButtonClickAgainBehavior

- (unint64_t)prewarmIntentInContext:(id)context
{
  contextCopy = context;
  v4 = [contextCopy gesture] == 1 && objc_msgSend(contextCopy, "wantsClickAgain") && !objc_msgSend(contextCopy, "isWithinClickAgainTimeout");

  return v4;
}

- (unint64_t)cameraLaunchIntentInContext:(id)context
{
  contextCopy = context;
  v4 = [contextCopy gesture] == 1 && objc_msgSend(contextCopy, "wantsClickAgain") && !objc_msgSend(contextCopy, "isWithinClickAgainTimeout");

  return v4;
}

- (unint64_t)coachIntentInContext:(id)context
{
  contextCopy = context;
  v4 = [contextCopy gesture] == 1 && objc_msgSend(contextCopy, "wantsClickAgain") && !objc_msgSend(contextCopy, "isWithinClickAgainTimeout");

  return v4;
}

@end