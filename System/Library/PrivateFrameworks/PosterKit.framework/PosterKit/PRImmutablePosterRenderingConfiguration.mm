@interface PRImmutablePosterRenderingConfiguration
- (PRImmutablePosterRenderingConfiguration)initWithDepthEffectDisabled:(BOOL)a3 motionEffectsDisabled:(BOOL)a4;
@end

@implementation PRImmutablePosterRenderingConfiguration

- (PRImmutablePosterRenderingConfiguration)initWithDepthEffectDisabled:(BOOL)a3 motionEffectsDisabled:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = PRImmutablePosterRenderingConfiguration;
  result = [PRPosterRenderingConfiguration initWithDepthEffectDisabled:sel_initWithDepthEffectDisabled_motionEffectsDisabled_ motionEffectsDisabled:?];
  if (result)
  {
    result->_depthEffectDisabled = a3;
    result->_motionEffectsDisabled = a4;
  }

  return result;
}

@end