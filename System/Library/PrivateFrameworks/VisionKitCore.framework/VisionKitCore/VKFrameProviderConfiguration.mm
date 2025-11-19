@interface VKFrameProviderConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFrameProviderConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VKFrameProviderConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VKFrameProviderConfiguration);
  [(VKFrameProviderConfiguration *)v4 setResolutionPreset:[(VKFrameProviderConfiguration *)self resolutionPreset]];
  [(VKFrameProviderConfiguration *)v4 setCameraPreset:[(VKFrameProviderConfiguration *)self cameraPreset]];
  [(VKFrameProviderConfiguration *)v4 setFrameRatePreset:[(VKFrameProviderConfiguration *)self frameRatePreset]];
  [(VKFrameProviderConfiguration *)v4 setPreferBinning:[(VKFrameProviderConfiguration *)self preferBinning]];
  [(VKFrameProviderConfiguration *)v4 setAllowHeadlessProcessing:[(VKFrameProviderConfiguration *)self allowHeadlessProcessing]];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_opt_class();
      v6 = VKDynamicCast(v5, v4);
      v7 = [(VKFrameProviderConfiguration *)self isEqualToFrameProviderConfiguration:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isEqualToFrameProviderConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 resolutionPreset];
  if (v5 == [(VKFrameProviderConfiguration *)self resolutionPreset])
  {
    v6 = [v4 cameraPreset];
    v7 = v6 == [(VKFrameProviderConfiguration *)self cameraPreset];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end