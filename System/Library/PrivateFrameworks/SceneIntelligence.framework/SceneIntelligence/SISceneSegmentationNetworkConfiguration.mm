@interface SISceneSegmentationNetworkConfiguration
- (SISceneSegmentationNetworkConfiguration)init;
- (void)setNetworkModeEnum:(int64_t)enum;
@end

@implementation SISceneSegmentationNetworkConfiguration

- (SISceneSegmentationNetworkConfiguration)init
{
  v9.receiver = self;
  v9.super_class = SISceneSegmentationNetworkConfiguration;
  v2 = [(SINetworkConfiguration *)&v9 init];
  v3 = v2;
  if (v2)
  {
    algorithmClassName = v2->super._algorithmClassName;
    v2->super._algorithmClassName = @"SISceneSegmentationAlgorithm";

    networkName = v3->super._networkName;
    v3->super._networkName = @"SceneSegmentationV9G";

    defaultVisualLoggerName = v3->super._defaultVisualLoggerName;
    v3->super._defaultVisualLoggerName = @"sceneSegmentation";

    [(SISceneSegmentationNetworkConfiguration *)v3 setModelConfig:0];
    [(SISceneSegmentationNetworkConfiguration *)v3 setNetworkModeEnum:0];
    v7 = v3;
  }

  return v3;
}

- (void)setNetworkModeEnum:(int64_t)enum
{
  networkMode = self->super._networkMode;
  v6 = &stru_282F2BE40;
  if (enum == 1)
  {
    v6 = @"res256x192_rgb_landscape";
  }

  if (enum == 2)
  {
    v6 = @"res192x256_rgb_portrait";
  }

  self->super._networkMode = &v6->isa;

  self->_modelConfig = enum;
}

@end