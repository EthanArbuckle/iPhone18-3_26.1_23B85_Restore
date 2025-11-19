@interface SXDarkModeConfiguration
- (SXDarkModeConfiguration)initWithAutoDarkModeEnabled:(BOOL)a3 inversionBehavior:(unint64_t)a4 saturationThreshold:(double)a5 colors:(id)a6;
@end

@implementation SXDarkModeConfiguration

- (SXDarkModeConfiguration)initWithAutoDarkModeEnabled:(BOOL)a3 inversionBehavior:(unint64_t)a4 saturationThreshold:(double)a5 colors:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = SXDarkModeConfiguration;
  v11 = [(SXDarkModeConfiguration *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_autoDarkModeEnabled = a3;
    v11->_inversionBehavior = a4;
    v11->_saturationThreshold = a5;
    v13 = [v10 copy];
    colors = v12->_colors;
    v12->_colors = v13;
  }

  return v12;
}

@end