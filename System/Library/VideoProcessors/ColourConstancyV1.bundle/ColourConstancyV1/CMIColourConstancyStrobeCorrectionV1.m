@interface CMIColourConstancyStrobeCorrectionV1
- (CMIColourConstancyStrobeCorrectionV1)initWithMetalContext:(id)a3;
- (int)_encodeStrobeCorrectionCalculate:(id)a3 strobeComponentRGBTexture:(id)a4 strobeBeamProfileGainRTexture:(id)a5 strobeBeamProfileScaleMinimum:(float)a6 strobeBeamProfileScaleMaximum:(float)a7 strobeBeamProfileComponentZeroThreshold:(float)a8 strobeBeamProfileComponentOneThreshold:(float)a9 outputStrobeCorrectedRGBTexture:(id)a10;
- (int)applyStrobeCorrection:(id)a3 strobeComponentRGBTexture:(id)a4 strobeBeamProfileGainRTexture:(id)a5 outputStrobeCorrectedRGBTexture:(id)a6;
- (int)prepareToProcessWithConfig:(id)a3;
@end

@implementation CMIColourConstancyStrobeCorrectionV1

- (CMIColourConstancyStrobeCorrectionV1)initWithMetalContext:(id)a3
{
  v5 = a3;
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

  if (!v5)
  {
    sub_19E1C();
    goto LABEL_9;
  }

  objc_storeStrong(&v6->_metalContext, a3);
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

- (int)prepareToProcessWithConfig:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_config, a3);
    v6 = 0;
  }

  else
  {
    sub_19F0C();
    v6 = 8;
  }

  return v6;
}

- (int)_encodeStrobeCorrectionCalculate:(id)a3 strobeComponentRGBTexture:(id)a4 strobeBeamProfileGainRTexture:(id)a5 strobeBeamProfileScaleMinimum:(float)a6 strobeBeamProfileScaleMaximum:(float)a7 strobeBeamProfileComponentZeroThreshold:(float)a8 strobeBeamProfileComponentOneThreshold:(float)a9 outputStrobeCorrectedRGBTexture:(id)a10
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v32 = a7;
  v33 = a6;
  v30 = a9;
  v31 = a8;
  v21 = a10;
  if (!v18)
  {
    sub_19FF4();
LABEL_7:
    v26 = 10;
    goto LABEL_4;
  }

  v22 = [v18 computeCommandEncoder];
  if (!v22)
  {
    sub_19F80();
    goto LABEL_7;
  }

  v23 = v22;
  [v22 setComputePipelineState:self->_calculateStrobeCorrectionPipelineState];
  [v23 setTexture:v19 atIndex:0];
  [v23 setTexture:v20 atIndex:1];
  [v23 setTexture:v21 atIndex:2];
  [v23 setBytes:&v33 length:4 atIndex:0];
  [v23 setBytes:&v32 length:4 atIndex:1];
  [v23 setBytes:&v31 length:4 atIndex:2];
  [v23 setBytes:&v30 length:4 atIndex:3];
  v24 = [(MTLComputePipelineState *)self->_calculateStrobeCorrectionPipelineState threadExecutionWidth];
  v25 = [(MTLComputePipelineState *)self->_calculateStrobeCorrectionPipelineState maxTotalThreadsPerThreadgroup]/ v24;
  v29[0] = [v21 width];
  v29[1] = [v21 height];
  v29[2] = 1;
  v28[0] = v24;
  v28[1] = v25;
  v28[2] = 1;
  [v23 dispatchThreads:v29 threadsPerThreadgroup:v28];
  [v23 endEncoding];

  v26 = 0;
LABEL_4:

  return v26;
}

- (int)applyStrobeCorrection:(id)a3 strobeComponentRGBTexture:(id)a4 strobeBeamProfileGainRTexture:(id)a5 outputStrobeCorrectedRGBTexture:(id)a6
{
  config = self->_config;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
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
  v26 = [(CMIColourConstancyStrobeCorrectionV1 *)self _encodeStrobeCorrectionCalculate:v14 strobeComponentRGBTexture:v13 strobeBeamProfileGainRTexture:v12 strobeBeamProfileScaleMinimum:v11 strobeBeamProfileScaleMaximum:v23 strobeBeamProfileComponentZeroThreshold:v24 strobeBeamProfileComponentOneThreshold:v25 outputStrobeCorrectedRGBTexture:v22];

  if (v26)
  {
    sub_1A068();
  }

  return v26;
}

@end