@interface UIDynamicAnimatorTicker
- (UIDynamicAnimator)animator;
- (void)_displayLinkTick:(id)a3;
- (void)_uiUpdateSequenceTick:(double)a3;
@end

@implementation UIDynamicAnimatorTicker

- (void)_displayLinkTick:(id)a3
{
  [a3 timestamp];
  v5 = v4;
  v6 = [(UIDynamicAnimatorTicker *)self animator];
  [v6 _performAnimationTickForTimestamp:v5];
}

- (void)_uiUpdateSequenceTick:(double)a3
{
  v4 = [(UIDynamicAnimatorTicker *)self animator];
  [v4 _performAnimationTickForTimestamp:a3];
}

- (UIDynamicAnimator)animator
{
  WeakRetained = objc_loadWeakRetained(&self->_animator);

  return WeakRetained;
}

@end