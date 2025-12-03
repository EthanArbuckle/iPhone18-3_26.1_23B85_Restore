@interface PRMutablePosterRenderingConfiguration
- (PRMutablePosterRenderingConfiguration)initWithDepthEffectDisabled:(BOOL)disabled motionEffectsDisabled:(BOOL)effectsDisabled;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PRMutablePosterRenderingConfiguration

- (PRMutablePosterRenderingConfiguration)initWithDepthEffectDisabled:(BOOL)disabled motionEffectsDisabled:(BOOL)effectsDisabled
{
  v7.receiver = self;
  v7.super_class = PRMutablePosterRenderingConfiguration;
  result = [PRPosterRenderingConfiguration initWithDepthEffectDisabled:sel_initWithDepthEffectDisabled_motionEffectsDisabled_ motionEffectsDisabled:?];
  if (result)
  {
    result->_depthEffectDisabled = disabled;
    result->_motionEffectsDisabled = effectsDisabled;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [(PRPosterRenderingConfiguration *)PRImmutablePosterRenderingConfiguration allocWithZone:zone];

  return [(PRPosterRenderingConfiguration *)v4 initWithRenderingConfiguration:self];
}

@end