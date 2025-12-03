@interface UIDynamicAnimatorTicker
- (UIDynamicAnimator)animator;
- (void)_displayLinkTick:(id)tick;
- (void)_uiUpdateSequenceTick:(double)tick;
@end

@implementation UIDynamicAnimatorTicker

- (void)_displayLinkTick:(id)tick
{
  [tick timestamp];
  v5 = v4;
  animator = [(UIDynamicAnimatorTicker *)self animator];
  [animator _performAnimationTickForTimestamp:v5];
}

- (void)_uiUpdateSequenceTick:(double)tick
{
  animator = [(UIDynamicAnimatorTicker *)self animator];
  [animator _performAnimationTickForTimestamp:tick];
}

- (UIDynamicAnimator)animator
{
  WeakRetained = objc_loadWeakRetained(&self->_animator);

  return WeakRetained;
}

@end