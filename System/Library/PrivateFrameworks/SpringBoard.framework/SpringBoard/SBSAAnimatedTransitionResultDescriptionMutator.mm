@interface SBSAAnimatedTransitionResultDescriptionMutator
- (SBSAAnimatedTransitionResultDescriptionMutator)initWithAnimatedTransitionResultDescription:(id)description;
- (void)setTargetedMilestone:(double)milestone;
@end

@implementation SBSAAnimatedTransitionResultDescriptionMutator

- (SBSAAnimatedTransitionResultDescriptionMutator)initWithAnimatedTransitionResultDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = SBSAAnimatedTransitionResultDescriptionMutator;
  v6 = [(SBSAAnimatedTransitionResultDescriptionMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animatedTransitionResultDescription, description);
  }

  return v7;
}

- (void)setTargetedMilestone:(double)milestone
{
  if (milestone != 1.79769313e308 && (milestone < 0.0 || milestone > 1.0))
  {
    [SBSAAnimatedTransitionResultDescriptionMutator setTargetedMilestone:];
  }

  animatedTransitionResultDescription = self->_animatedTransitionResultDescription;

  [(SBSAAnimatedTransitionResultDescription *)animatedTransitionResultDescription _setTargetedMilestone:milestone];
}

- (void)setTargetedMilestone:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBSAAnimatedTransitionDescription.m" lineNumber:396 description:{@"Invalid parameter not satisfying: %@", @"(targetedMilestone == CGFLOAT_MAX) || ((0 <= targetedMilestone) && (targetedMilestone <= 1.0))"}];
}

@end