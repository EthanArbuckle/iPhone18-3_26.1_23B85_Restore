@interface SIPersonDetectorNetworkConfiguration
- (SIPersonDetectorNetworkConfiguration)init;
- (void)setModelConfig:(int64_t)config;
- (void)setNetworkModeEnum:(int64_t)enum;
@end

@implementation SIPersonDetectorNetworkConfiguration

- (SIPersonDetectorNetworkConfiguration)init
{
  v8.receiver = self;
  v8.super_class = SIPersonDetectorNetworkConfiguration;
  v2 = [(SINetworkConfiguration *)&v8 init];
  v3 = v2;
  if (v2)
  {
    algorithmClassName = v2->super._algorithmClassName;
    v2->super._algorithmClassName = @"SIPersonDetectorAlgorithm";

    imageScalerIdentifier = v3->_imageScalerIdentifier;
    v3->_imageScalerIdentifier = @"PersonDetector_input";

    [(SIPersonDetectorNetworkConfiguration *)v3 setModelConfig:0];
    [(SIPersonDetectorNetworkConfiguration *)v3 setNetworkModeEnum:0];
    v6 = v3;
  }

  return v3;
}

- (void)setNetworkModeEnum:(int64_t)enum
{
  networkMode = self->super._networkMode;
  self->super._networkMode = &stru_282F2BE40;

  self->_networkModeEnum = enum;
}

- (void)setModelConfig:(int64_t)config
{
  networkName = self->super._networkName;
  self->super._networkName = @"PersonDetector";

  self->_modelConfig = config;
}

@end