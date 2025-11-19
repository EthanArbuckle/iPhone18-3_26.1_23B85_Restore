@interface SBUIAnimationControllerSteppedAnimator
- (SBUIAnimationControllerSteppedAnimator)initWithAnimationController:(id)a3;
- (SBUIAnimationControllerSteppedAnimator)initWithAnimationController:(id)a3 stepper:(id)a4;
- (double)percentComplete;
- (void)cancelTransition:(id)a3 withCompletionSpeed:(double)a4 completionCurve:(int64_t)a5;
- (void)finishInteractiveTransition:(id)a3 withCompletionSpeed:(double)a4 completionCurve:(int64_t)a5;
@end

@implementation SBUIAnimationControllerSteppedAnimator

- (SBUIAnimationControllerSteppedAnimator)initWithAnimationController:(id)a3
{
  v5 = MEMORY[0x277CCA890];
  v6 = a3;
  v7 = [v5 currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"SBUIAnimationControllerSteppedAnimator.m" lineNumber:17 description:@"use the designated initializer"];

  v8 = [(SBUIAnimationControllerSteppedAnimator *)self initWithAnimationController:v6 stepper:0];
  return v8;
}

- (SBUIAnimationControllerSteppedAnimator)initWithAnimationController:(id)a3 stepper:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBUIAnimationControllerSteppedAnimator;
  v8 = [(SBUIAnimationControllerAnimator *)&v11 initWithAnimationController:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stepper, a4);
  }

  return v9;
}

- (void)cancelTransition:(id)a3 withCompletionSpeed:(double)a4 completionCurve:(int64_t)a5
{
  v6 = [(SBUIAnimationControllerAnimator *)self animationController:a3];
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

- (void)finishInteractiveTransition:(id)a3 withCompletionSpeed:(double)a4 completionCurve:(int64_t)a5
{
  v6 = [(SBUIAnimationControllerAnimator *)self animationController:a3];
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
  v2 = [(SBUIAnimationControllerSteppedAnimator *)self stepper];
  [v2 stepPercentage];
  v4 = v3;

  return v4;
}

@end