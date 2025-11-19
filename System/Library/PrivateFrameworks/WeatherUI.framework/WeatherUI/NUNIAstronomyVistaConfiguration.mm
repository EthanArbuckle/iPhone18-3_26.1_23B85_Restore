@interface NUNIAstronomyVistaConfiguration
- (NUNIAstronomyVistaConfiguration)initWithDevice:(id)a3;
@end

@implementation NUNIAstronomyVistaConfiguration

- (NUNIAstronomyVistaConfiguration)initWithDevice:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = NUNIAstronomyVistaConfiguration;
  v6 = [(NUNIAstronomyVistaConfiguration *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    *&v7->_rendererStyle = xmmword_1BCE3ADB0;
    textureSuffix = v7->_textureSuffix;
    v7->_textureSuffix = @"aegir";
  }

  return v7;
}

@end