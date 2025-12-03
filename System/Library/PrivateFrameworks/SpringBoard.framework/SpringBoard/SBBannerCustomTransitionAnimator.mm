@interface SBBannerCustomTransitionAnimator
+ (void)animateInteractive:(BOOL)interactive animations:(id)animations completion:(id)completion;
+ (void)animateWithSettings:(id)settings animations:(id)animations completion:(id)completion;
- (void)_updateCustomContextWithTransitionContext:(id)context;
- (void)actionsForTransition:(id)transition;
- (void)animateTransition:(id)transition;
- (void)animationEnded:(BOOL)ended;
@end

@implementation SBBannerCustomTransitionAnimator

+ (void)animateInteractive:(BOOL)interactive animations:(id)animations completion:(id)completion
{
  interactiveCopy = interactive;
  animationsCopy = animations;
  completionCopy = completion;
  if (interactiveCopy || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___SBBannerCustomTransitionAnimator;
    objc_msgSendSuper2(&v10, sel_animateInteractive_animations_completion_, interactiveCopy, animationsCopy, completionCopy);
  }

  else
  {
    [self performAnimationsForTransition:animationsCopy completion:completionCopy];
  }
}

+ (void)animateWithSettings:(id)settings animations:(id)animations completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  animationsCopy = animations;
  if (objc_opt_respondsToSelector())
  {
    [self performAnimationsForTransition:animationsCopy completion:completionCopy];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___SBBannerCustomTransitionAnimator;
    objc_msgSendSuper2(&v11, sel_animateWithSettings_animations_completion_, settingsCopy, animationsCopy, completionCopy);
  }
}

- (void)_updateCustomContextWithTransitionContext:(id)context
{
  contextCopy = context;
  transitionContext = [(SBBannerCustomTransitionAnimatorContext *)self->_customContext transitionContext];

  if (transitionContext != contextCopy)
  {
    v5 = objc_alloc_init(SBBannerCustomTransitionAnimatorContext);
    customContext = self->_customContext;
    self->_customContext = v5;

    [(SBBannerCustomTransitionAnimatorContext *)self->_customContext setTransitionContext:contextCopy];
    [(SBBannerCustomTransitionAnimatorContext *)self->_customContext setPresentationTransition:[(BNBannerTransitionAnimator *)self isPresenting]];
  }
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  [(SBBannerCustomTransitionAnimator *)self _updateCustomContextWithTransitionContext:transitionCopy];
  if (objc_opt_respondsToSelector())
  {
    [(SBBannerCustomTransitionAnimator *)self prepareForTransition:self->_customContext];
  }

  v5.receiver = self;
  v5.super_class = SBBannerCustomTransitionAnimator;
  [(BNBannerAnimator *)&v5 animateTransition:transitionCopy];
}

- (void)animationEnded:(BOOL)ended
{
  endedCopy = ended;
  if ([objc_opt_class() instancesRespondToSelector:sel_animationEnded_])
  {
    v5.receiver = self;
    v5.super_class = SBBannerCustomTransitionAnimator;
    [(SBBannerCustomTransitionAnimator *)&v5 animationEnded:endedCopy];
  }
}

- (void)actionsForTransition:(id)transition
{
  transitionCopy = transition;
  [(SBBannerCustomTransitionAnimator *)self _updateCustomContextWithTransitionContext:transitionCopy];
  if (objc_opt_respondsToSelector())
  {
    [(SBBannerCustomTransitionAnimator *)self performActionsForTransition:self->_customContext];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBBannerCustomTransitionAnimator;
    [(BNBannerTransitionAnimator *)&v5 actionsForTransition:transitionCopy];
  }
}

@end