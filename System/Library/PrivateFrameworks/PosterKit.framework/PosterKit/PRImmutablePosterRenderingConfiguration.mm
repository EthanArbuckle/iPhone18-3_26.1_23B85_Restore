@interface PRImmutablePosterRenderingConfiguration
- (PRImmutablePosterRenderingConfiguration)initWithDepthEffectDisabled:(BOOL)disabled motionEffectsDisabled:(BOOL)effectsDisabled;
@end

@implementation PRImmutablePosterRenderingConfiguration

- (PRImmutablePosterRenderingConfiguration)initWithDepthEffectDisabled:(BOOL)disabled motionEffectsDisabled:(BOOL)effectsDisabled
{
  v7.receiver = self;
  v7.super_class = PRImmutablePosterRenderingConfiguration;
  result = [PRPosterRenderingConfiguration initWithDepthEffectDisabled:sel_initWithDepthEffectDisabled_motionEffectsDisabled_ motionEffectsDisabled:?];
  if (result)
  {
    result->_depthEffectDisabled = disabled;
    result->_motionEffectsDisabled = effectsDisabled;
  }

  return result;
}

@end