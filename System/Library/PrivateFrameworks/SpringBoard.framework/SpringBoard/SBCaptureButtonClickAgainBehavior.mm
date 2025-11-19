@interface SBCaptureButtonClickAgainBehavior
- (unint64_t)cameraLaunchIntentInContext:(id)a3;
- (unint64_t)coachIntentInContext:(id)a3;
- (unint64_t)prewarmIntentInContext:(id)a3;
@end

@implementation SBCaptureButtonClickAgainBehavior

- (unint64_t)prewarmIntentInContext:(id)a3
{
  v3 = a3;
  v4 = [v3 gesture] == 1 && objc_msgSend(v3, "wantsClickAgain") && !objc_msgSend(v3, "isWithinClickAgainTimeout");

  return v4;
}

- (unint64_t)cameraLaunchIntentInContext:(id)a3
{
  v3 = a3;
  v4 = [v3 gesture] == 1 && objc_msgSend(v3, "wantsClickAgain") && !objc_msgSend(v3, "isWithinClickAgainTimeout");

  return v4;
}

- (unint64_t)coachIntentInContext:(id)a3
{
  v3 = a3;
  v4 = [v3 gesture] == 1 && objc_msgSend(v3, "wantsClickAgain") && !objc_msgSend(v3, "isWithinClickAgainTimeout");

  return v4;
}

@end