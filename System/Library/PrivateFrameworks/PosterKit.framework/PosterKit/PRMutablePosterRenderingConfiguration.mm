@interface PRMutablePosterRenderingConfiguration
- (PRMutablePosterRenderingConfiguration)initWithDepthEffectDisabled:(BOOL)a3 motionEffectsDisabled:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PRMutablePosterRenderingConfiguration

- (PRMutablePosterRenderingConfiguration)initWithDepthEffectDisabled:(BOOL)a3 motionEffectsDisabled:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = PRMutablePosterRenderingConfiguration;
  result = [PRPosterRenderingConfiguration initWithDepthEffectDisabled:sel_initWithDepthEffectDisabled_motionEffectsDisabled_ motionEffectsDisabled:?];
  if (result)
  {
    result->_depthEffectDisabled = a3;
    result->_motionEffectsDisabled = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(PRPosterRenderingConfiguration *)PRImmutablePosterRenderingConfiguration allocWithZone:a3];

  return [(PRPosterRenderingConfiguration *)v4 initWithRenderingConfiguration:self];
}

@end