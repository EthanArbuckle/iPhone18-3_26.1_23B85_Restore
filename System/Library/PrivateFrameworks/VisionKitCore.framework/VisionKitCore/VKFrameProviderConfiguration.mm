@interface VKFrameProviderConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFrameProviderConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VKFrameProviderConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VKFrameProviderConfiguration);
  [(VKFrameProviderConfiguration *)v4 setResolutionPreset:[(VKFrameProviderConfiguration *)self resolutionPreset]];
  [(VKFrameProviderConfiguration *)v4 setCameraPreset:[(VKFrameProviderConfiguration *)self cameraPreset]];
  [(VKFrameProviderConfiguration *)v4 setFrameRatePreset:[(VKFrameProviderConfiguration *)self frameRatePreset]];
  [(VKFrameProviderConfiguration *)v4 setPreferBinning:[(VKFrameProviderConfiguration *)self preferBinning]];
  [(VKFrameProviderConfiguration *)v4 setAllowHeadlessProcessing:[(VKFrameProviderConfiguration *)self allowHeadlessProcessing]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_opt_class();
      v6 = VKDynamicCast(v5, equalCopy);
      v7 = [(VKFrameProviderConfiguration *)self isEqualToFrameProviderConfiguration:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isEqualToFrameProviderConfiguration:(id)configuration
{
  configurationCopy = configuration;
  resolutionPreset = [configurationCopy resolutionPreset];
  if (resolutionPreset == [(VKFrameProviderConfiguration *)self resolutionPreset])
  {
    cameraPreset = [configurationCopy cameraPreset];
    v7 = cameraPreset == [(VKFrameProviderConfiguration *)self cameraPreset];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end