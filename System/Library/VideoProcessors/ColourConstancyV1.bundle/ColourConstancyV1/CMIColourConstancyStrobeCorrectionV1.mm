@interface CMIColourConstancyStrobeCorrectionV1
- (CMIColourConstancyStrobeCorrectionV1)initWithMetalContext:(id)context;
- (int)_encodeStrobeCorrectionCalculate:(id)calculate strobeComponentRGBTexture:(id)texture strobeBeamProfileGainRTexture:(id)rTexture strobeBeamProfileScaleMinimum:(float)minimum strobeBeamProfileScaleMaximum:(float)maximum strobeBeamProfileComponentZeroThreshold:(float)threshold strobeBeamProfileComponentOneThreshold:(float)oneThreshold outputStrobeCorrectedRGBTexture:(id)self0;
- (int)applyStrobeCorrection:(id)correction strobeComponentRGBTexture:(id)texture strobeBeamProfileGainRTexture:(id)rTexture outputStrobeCorrectedRGBTexture:(id)bTexture;
- (int)prepareToProcessWithConfig:(id)config;
@end

@implementation CMIColourConstancyStrobeCorrectionV1

- (CMIColourConstancyStrobeCorrectionV1)initWithMetalContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = CMIColourConstancyStrobeCorrectionV1;
  v6 = [(CMIColourConstancyStrobeCorrectionV1 *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    sub_19E94();
LABEL_9:
    v10 = 0;
    goto LABEL_5;
  }

  if (!contextCopy)
  {
    sub_19E1C();
    goto LABEL_9;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v8 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateStrobeCorrectionV1" constants:0];
  calculateStrobeCorrectionPipelineState = v7->_calculateStrobeCorrectionPipelineState;
  v7->_calculateStrobeCorrectionPipelineState = v8;

  if (!v7->_calculateStrobeCorrectionPipelineState)
  {
    sub_19DA4();
    goto LABEL_9;
  }

  v10 = v7;
LABEL_5:

  return v10;
}

- (int)prepareToProcessWithConfig:(id)config
{
  configCopy = config;
  if (configCopy)
  {
    objc_storeStrong(&self->_config, config);
    v6 = 0;
  }

  else
  {
    sub_19F0C();
    v6 = 8;
  }

  return v6;
}

- (int)_encodeStrobeCorrectionCalculate:(id)calculate strobeComponentRGBTexture:(id)texture strobeBeamProfileGainRTexture:(id)rTexture strobeBeamProfileScaleMinimum:(float)minimum strobeBeamProfileScaleMaximum:(float)maximum strobeBeamProfileComponentZeroThreshold:(float)threshold strobeBeamProfileComponentOneThreshold:(float)oneThreshold outputStrobeCorrectedRGBTexture:(id)self0
{
  calculateCopy = calculate;
  textureCopy = texture;
  rTextureCopy = rTexture;
  maximumCopy = maximum;
  minimumCopy = minimum;
  oneThresholdCopy = oneThreshold;
  thresholdCopy = threshold;
  bTextureCopy = bTexture;
  if (!calculateCopy)
  {
    sub_19FF4();
LABEL_7:
    v26 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [calculateCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_19F80();
    goto LABEL_7;
  }

  v23 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_calculateStrobeCorrectionPipelineState];
  [v23 setTexture:textureCopy atIndex:0];
  [v23 setTexture:rTextureCopy atIndex:1];
  [v23 setTexture:bTextureCopy atIndex:2];
  [v23 setBytes:&minimumCopy length:4 atIndex:0];
  [v23 setBytes:&maximumCopy length:4 atIndex:1];
  [v23 setBytes:&thresholdCopy length:4 atIndex:2];
  [v23 setBytes:&oneThresholdCopy length:4 atIndex:3];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_calculateStrobeCorrectionPipelineState threadExecutionWidth];
  v25 = [(MTLComputePipelineState *)self->_calculateStrobeCorrectionPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v29[0] = [bTextureCopy width];
  v29[1] = [bTextureCopy height];
  v29[2] = 1;
  v28[0] = threadExecutionWidth;
  v28[1] = v25;
  v28[2] = 1;
  [v23 dispatchThreads:v29 threadsPerThreadgroup:v28];
  [v23 endEncoding];

  v26 = 0;
LABEL_4:

  return v26;
}

- (int)applyStrobeCorrection:(id)correction strobeComponentRGBTexture:(id)texture strobeBeamProfileGainRTexture:(id)rTexture outputStrobeCorrectedRGBTexture:(id)bTexture
{
  config = self->_config;
  bTextureCopy = bTexture;
  rTextureCopy = rTexture;
  textureCopy = texture;
  correctionCopy = correction;
  [(CMIColourConstancyStrobeCorrectionConfigurationV1 *)config strobeBeamProfileScaleMinimum];
  v16 = v15;
  [(CMIColourConstancyStrobeCorrectionConfigurationV1 *)self->_config strobeBeamProfileScaleMaximum];
  v18 = v17;
  [(CMIColourConstancyStrobeCorrectionConfigurationV1 *)self->_config strobeBeamProfileComponentZeroThreshold];
  v20 = v19;
  [(CMIColourConstancyStrobeCorrectionConfigurationV1 *)self->_config strobeBeamProfileComponentOneThreshold];
  LODWORD(v22) = v21;
  LODWORD(v23) = v16;
  LODWORD(v24) = v18;
  LODWORD(v25) = v20;
  v26 = [(CMIColourConstancyStrobeCorrectionV1 *)self _encodeStrobeCorrectionCalculate:correctionCopy strobeComponentRGBTexture:textureCopy strobeBeamProfileGainRTexture:rTextureCopy strobeBeamProfileScaleMinimum:bTextureCopy strobeBeamProfileScaleMaximum:v23 strobeBeamProfileComponentZeroThreshold:v24 strobeBeamProfileComponentOneThreshold:v25 outputStrobeCorrectedRGBTexture:v22];

  if (v26)
  {
    sub_1A068();
  }

  return v26;
}

@end