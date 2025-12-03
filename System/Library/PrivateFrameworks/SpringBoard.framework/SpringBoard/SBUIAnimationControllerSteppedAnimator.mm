@interface SBUIAnimationControllerSteppedAnimator
- (SBUIAnimationControllerSteppedAnimator)initWithAnimationController:(id)controller;
- (SBUIAnimationControllerSteppedAnimator)initWithAnimationController:(id)controller stepper:(id)stepper;
- (double)percentComplete;
- (void)cancelTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve;
- (void)finishInteractiveTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve;
@end

@implementation SBUIAnimationControllerSteppedAnimator

- (SBUIAnimationControllerSteppedAnimator)initWithAnimationController:(id)controller
{
  v5 = MEMORY[0x277CCA890];
  controllerCopy = controller;
  currentHandler = [v5 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBUIAnimationControllerSteppedAnimator.m" lineNumber:17 description:@"use the designated initializer"];

  v8 = [(SBUIAnimationControllerSteppedAnimator *)self initWithAnimationController:controllerCopy stepper:0];
  return v8;
}

- (SBUIAnimationControllerSteppedAnimator)initWithAnimationController:(id)controller stepper:(id)stepper
{
  stepperCopy = stepper;
  v11.receiver = self;
  v11.super_class = SBUIAnimationControllerSteppedAnimator;
  v8 = [(SBUIAnimationControllerAnimator *)&v11 initWithAnimationController:controller];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stepper, stepper);
  }

  return v9;
}

- (void)cancelTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve
{
  v6 = [(SBUIAnimationControllerAnimator *)self animationController:transition];
  [v6 _addAuditHistoryItem:@"finishSteppingBackwardToStart"];
  stepper = self->_stepper;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__SBUIAnimationControllerSteppedAnimator_cancelTransition_withCompletionSpeed_completionCurve___block_invoke;
  v9[3] = &unk_2783A9398;
  v10 = v6;
  v8 = v6;
  [(SBAnimationStepper *)stepper finishSteppingBackwardToStartWithCompletion:v9];
}

uint64_t __95__SBUIAnimationControllerSteppedAnimator_cancelTransition_withCompletionSpeed_completionCurve___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _addAuditHistoryItem:@"finishSteppingBackwardToStart didn't complete!"];
  }

  v3 = *(a1 + 32);

  return [v3 _noteAnimationDidFail];
}

- (void)finishInteractiveTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve
{
  v6 = [(SBUIAnimationControllerAnimator *)self animationController:transition];
  [v6 _addAuditHistoryItem:@"finishSteppingForwardToEnd"];
  stepper = self->_stepper;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __106__SBUIAnimationControllerSteppedAnimator_finishInteractiveTransition_withCompletionSpeed_completionCurve___block_invoke;
  v9[3] = &unk_2783A9398;
  v10 = v6;
  v8 = v6;
  [(SBAnimationStepper *)stepper finishSteppingForwardToEndWithCompletion:v9];
}

uint64_t __106__SBUIAnimationControllerSteppedAnimator_finishInteractiveTransition_withCompletionSpeed_completionCurve___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _addAuditHistoryItem:@"finishSteppingForwardToEnd didn't complete!"];
  }

  v3 = *(a1 + 32);

  return [v3 _noteAnimationDidFinish];
}

- (double)percentComplete
{
  stepper = [(SBUIAnimationControllerSteppedAnimator *)self stepper];
  [stepper stepPercentage];
  v4 = v3;

  return v4;
}

@end