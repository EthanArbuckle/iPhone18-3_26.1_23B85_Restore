@interface SBFBarSwipeBehavior
- (SBFBarSwipeBehavior)initWithGrabberView:(id)view settleAffordanceAnimationBehaviorDescription:(id)description;
- (SBFBarSwipeBehaviorDelegate)delegate;
- (id)_grabberViewContainerView;
- (id)_settleAffordanceAnimationBehaviorDescription;
- (void)_createFeedbackGenerator;
- (void)_fireAction;
- (void)_setGrabberAdditionalEdgeSpacing:(double)spacing;
- (void)_settleGrabber;
- (void)barSwipeInteractionChanged:(id)changed;
- (void)barSwipeInteractionEnded:(id)ended;
- (void)setFeedbackType:(int64_t)type;
@end

@implementation SBFBarSwipeBehavior

- (void)_createFeedbackGenerator
{
  v3 = objc_alloc(MEMORY[0x1E69DCCF0]);
  v4 = MEMORY[0x1E69DD600];
  v5 = MEMORY[0x1E695DFD8];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_feedbackType];
  v6 = [v5 setWithObject:v10];
  v7 = [v4 privateConfigurationForTypes:v6];
  v8 = [v3 initWithConfiguration:v7];
  dismissalFeedbackGenerator = self->_dismissalFeedbackGenerator;
  self->_dismissalFeedbackGenerator = v8;
}

- (SBFBarSwipeBehavior)initWithGrabberView:(id)view settleAffordanceAnimationBehaviorDescription:(id)description
{
  viewCopy = view;
  descriptionCopy = description;
  if (!viewCopy)
  {
    [SBFBarSwipeBehavior initWithGrabberView:a2 settleAffordanceAnimationBehaviorDescription:self];
  }

  v13.receiver = self;
  v13.super_class = SBFBarSwipeBehavior;
  v10 = [(SBFBarSwipeBehavior *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_grabberView, view);
    objc_storeStrong(&v11->_settleAffordanceAnimationBehaviorDescription, description);
    v11->_feedbackType = 1010;
    [(SBFBarSwipeBehavior *)v11 _createFeedbackGenerator];
  }

  return v11;
}

- (void)setFeedbackType:(int64_t)type
{
  if (self->_feedbackType != type)
  {
    self->_feedbackType = type;
    [(SBFBarSwipeBehavior *)self _createFeedbackGenerator];
  }
}

- (void)barSwipeInteractionChanged:(id)changed
{
  changedCopy = changed;
  _grabberViewContainerView = [(SBFBarSwipeBehavior *)self _grabberViewContainerView];
  [changedCopy translationInView:?];
  v6 = v5;
  v8 = v7;

  [(SBFBarSwipeBehavior *)self _progressWithTranslation:v6 liftoffVelocity:v8, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  [(SBFBarSwipeBehavior *)self _offsetGrabberForProgress:?];
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    [(SBFBarSwipeBehavior *)self _fireAction];
  }
}

- (void)barSwipeInteractionEnded:(id)ended
{
  endedCopy = ended;
  _grabberViewContainerView = [(SBFBarSwipeBehavior *)self _grabberViewContainerView];
  [endedCopy translationInView:_grabberViewContainerView];
  v6 = v5;
  v8 = v7;
  [endedCopy velocityInView:_grabberViewContainerView];
  v10 = v9;
  v12 = v11;

  [(SBFBarSwipeBehavior *)self _progressWithTranslation:v6 liftoffVelocity:v8, v10, v12];
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    [(SBFBarSwipeBehavior *)self _fireAction];
  }

  [(SBFBarSwipeBehavior *)self _settleGrabber];
}

- (id)_settleAffordanceAnimationBehaviorDescription
{
  settleAffordanceAnimationBehaviorDescription = self->_settleAffordanceAnimationBehaviorDescription;
  if (!settleAffordanceAnimationBehaviorDescription)
  {
    v4 = objc_alloc_init(SBFFluidBehaviorSettings);
    [(SBFFluidBehaviorSettings *)v4 setDefaultValues];
    [(SBFFluidBehaviorSettings *)v4 setDampingRatio:0.471];
    [(SBFFluidBehaviorSettings *)v4 setResponse:0.299];
    v5 = self->_settleAffordanceAnimationBehaviorDescription;
    self->_settleAffordanceAnimationBehaviorDescription = v4;

    settleAffordanceAnimationBehaviorDescription = self->_settleAffordanceAnimationBehaviorDescription;
  }

  return settleAffordanceAnimationBehaviorDescription;
}

- (id)_grabberViewContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained barSwipeBehaviorGrabberViewContainer:self], (superview = objc_claimAutoreleasedReturnValue()) == 0))
  {
    superview = [(UIView *)self->_grabberView superview];
  }

  return superview;
}

- (void)_settleGrabber
{
  _settleAffordanceAnimationBehaviorDescription = [(SBFBarSwipeBehavior *)self _settleAffordanceAnimationBehaviorDescription];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__SBFBarSwipeBehavior__settleGrabber__block_invoke;
  v4[3] = &unk_1E807F178;
  v4[4] = self;
  [MEMORY[0x1E69DD250] _animateUsingSpringBehavior:_settleAffordanceAnimationBehaviorDescription tracking:0 animations:v4 completion:0];
}

- (void)_setGrabberAdditionalEdgeSpacing:(double)spacing
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_grabberViewAdditionalEdgeSpacing = spacing;
    [(UIView *)self->_grabberView setNeedsLayout];
    [(UIView *)self->_grabberView layoutIfNeeded];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained barSwipeBehavior:self didUpdateAdditionalEdgeSpacing:self->_grabberViewAdditionalEdgeSpacing];
    }
  }
}

- (void)_fireAction
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  selfCopy = self;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1BEA11000, log, OS_LOG_TYPE_ERROR, "%{public}@: Delegate (%{public}@) doesn't implement required method 'barSwipeBehaviorActionPerformed:'", &v3, 0x16u);
}

- (SBFBarSwipeBehaviorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithGrabberView:(uint64_t)a1 settleAffordanceAnimationBehaviorDescription:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFBarSwipeBehavior.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"grabberView"}];
}

@end