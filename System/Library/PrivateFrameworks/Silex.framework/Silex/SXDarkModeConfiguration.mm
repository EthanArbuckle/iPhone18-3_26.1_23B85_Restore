@interface SXDarkModeConfiguration
- (SXDarkModeConfiguration)initWithAutoDarkModeEnabled:(BOOL)enabled inversionBehavior:(unint64_t)behavior saturationThreshold:(double)threshold colors:(id)colors;
@end

@implementation SXDarkModeConfiguration

- (SXDarkModeConfiguration)initWithAutoDarkModeEnabled:(BOOL)enabled inversionBehavior:(unint64_t)behavior saturationThreshold:(double)threshold colors:(id)colors
{
  colorsCopy = colors;
  v16.receiver = self;
  v16.super_class = SXDarkModeConfiguration;
  v11 = [(SXDarkModeConfiguration *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_autoDarkModeEnabled = enabled;
    v11->_inversionBehavior = behavior;
    v11->_saturationThreshold = threshold;
    v13 = [colorsCopy copy];
    colors = v12->_colors;
    v12->_colors = v13;
  }

  return v12;
}

@end