@interface CMIColourConstancyConfidenceV1
- (CMIColourConstancyConfidenceV1)initWithMetalContext:(id)context;
- (int)_encodeCenterWeightedConfidenceLevelCalculate:(id)calculate colourAccuracyConfidenceThumbnailTexture:(id)texture centerWeightingGaussianSigmaScale:(float)scale centerWeightingSigmaToFilterScale:(float)filterScale outputGlobalCenterWeightedConfidenceLevel:(id)level;
- (int)_encodeCenterWeightedConfidenceThumbnailBoxCalculate:(id)calculate colourAccuracyConfidenceTexture:(id)texture centerWeightingGaussianSigmaScale:(float)scale centerWeightingSigmaToFilterScale:(float)filterScale outputColourAccuracyConfidenceThumbnailTexture:(id)thumbnailTexture;
- (int)_encodeColourAccuracyConfidenceCalculate:(id)calculate strobeComponentRGBATexture:(id)texture strobeBalancedThumbnailRGBTexture:(id)bTexture strobeReconstructedBalancedThumbnailRGBTexture:(id)gBTexture strobeIlluminationZeroThreshold:(float)threshold strobeIlluminationOneThreshold:(float)oneThreshold styleTransferAccuracyZeroThreshold:(float)zeroThreshold styleTransferAccuracyOneThreshold:(float)self0 styleTransferAccuracyGammaCorrection:(float)self1 outputColourAccuracyConfidenceTexture:(id)self2;
- (int)_encodeStrobeIlluminationConfidenceCalculate:(id)calculate strobeComponentRGBTexture:(id)texture strobeIlluminationZeroThreshold:(float)threshold strobeIlluminationOneThreshold:(float)oneThreshold outputStrobeIlluminationConfidenceRTexture:(id)rTexture;
- (int)calculateColourAccuracyConfidence:(id)confidence strobeComponentRGBATexture:(id)texture strobeBalancedThumbnailRGBTexture:(id)bTexture strobeReconstructedBalancedThumbnailRGBTexture:(id)gBTexture outputColourAccuracyConfidenceTexture:(id)confidenceTexture;
- (int)calculateStrobeIlluminationConfidence:(id)confidence strobeComponentRGBTexture:(id)texture outputStrobeIlluminationConfidenceRTexture:(id)rTexture;
- (int)prepareToProcessWithConfig:(id)config;
- (int)purgeResources;
@end

@implementation CMIColourConstancyConfidenceV1

- (CMIColourConstancyConfidenceV1)initWithMetalContext:(id)context
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = CMIColourConstancyConfidenceV1;
  v6 = [(CMIColourConstancyConfidenceV1 *)&v18 init];
  v7 = v6;
  if (!v6)
  {
    sub_107B8();
LABEL_15:
    v16 = 0;
    goto LABEL_8;
  }

  if (!contextCopy)
  {
    sub_10740();
    goto LABEL_15;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v8 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateStrobeIlluminationConfidenceV1" constants:0];
  calculateStrobeIlluminationConfidencePipelineState = v7->_calculateStrobeIlluminationConfidencePipelineState;
  v7->_calculateStrobeIlluminationConfidencePipelineState = v8;

  if (!v7->_calculateStrobeIlluminationConfidencePipelineState)
  {
    sub_106C8();
    goto LABEL_15;
  }

  v10 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateColourAccuracyConfidenceV1" constants:0];
  calculateColourAccuracyConfidencePipelineState = v7->_calculateColourAccuracyConfidencePipelineState;
  v7->_calculateColourAccuracyConfidencePipelineState = v10;

  if (!v7->_calculateColourAccuracyConfidencePipelineState)
  {
    sub_10650();
    goto LABEL_15;
  }

  v12 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateCenterWeightedConfidenceThumbnailV1" constants:0];
  calculateCenterWeightedConfidenceThumbnailPipelineState = v7->_calculateCenterWeightedConfidenceThumbnailPipelineState;
  v7->_calculateCenterWeightedConfidenceThumbnailPipelineState = v12;

  if (!v7->_calculateCenterWeightedConfidenceThumbnailPipelineState)
  {
    sub_105D8();
    goto LABEL_15;
  }

  v14 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateCenterWeightedConfidenceLevelV1" constants:0];
  calculateCenterWeightedConfidenceLevelPipelineState = v7->_calculateCenterWeightedConfidenceLevelPipelineState;
  v7->_calculateCenterWeightedConfidenceLevelPipelineState = v14;

  if (!v7->_calculateCenterWeightedConfidenceLevelPipelineState)
  {
    sub_10560();
    goto LABEL_15;
  }

  v16 = v7;
LABEL_8:

  return v16;
}

- (int)purgeResources
{
  FigMetalDecRef();
  FigMetalDecRef();
  return 0;
}

- (int)prepareToProcessWithConfig:(id)config
{
  configCopy = config;
  if (!configCopy)
  {
    sub_10A00();
    newTextureDescriptor = 0;
    newBufferDescriptor = 0;
    v22 = 8;
    goto LABEL_7;
  }

  objc_storeStrong(&self->_config, config);
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newBufferDescriptor = [allocator newBufferDescriptor];

  if (!newBufferDescriptor)
  {
    sub_1098C();
    newTextureDescriptor = 0;
LABEL_12:
    v22 = 7;
    goto LABEL_7;
  }

  [newBufferDescriptor setLength:4];
  [newBufferDescriptor setOptions:0];
  [newBufferDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metalContext allocator];
  v9 = [allocator2 newBufferWithDescriptor:newBufferDescriptor];
  globalCenterWeightedConfidenceLevelBuffer = self->_globalCenterWeightedConfidenceLevelBuffer;
  self->_globalCenterWeightedConfidenceLevelBuffer = v9;

  if (!self->_globalCenterWeightedConfidenceLevelBuffer)
  {
    sub_10918();
    newTextureDescriptor = 0;
LABEL_14:
    v22 = 6;
    goto LABEL_7;
  }

  allocator3 = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator3 newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_108A4();
    goto LABEL_12;
  }

  desc = [newTextureDescriptor desc];
  [desc setTextureType:2];

  thumbnailConfidenceMapWidth = [(CMIColourConstancyConfidenceConfigurationV1 *)self->_config thumbnailConfidenceMapWidth];
  desc2 = [newTextureDescriptor desc];
  [desc2 setWidth:thumbnailConfidenceMapWidth];

  thumbnailConfidenceMapHeight = [(CMIColourConstancyConfidenceConfigurationV1 *)self->_config thumbnailConfidenceMapHeight];
  desc3 = [newTextureDescriptor desc];
  [desc3 setHeight:thumbnailConfidenceMapHeight];

  desc4 = [newTextureDescriptor desc];
  [desc4 setPixelFormat:25];

  [newTextureDescriptor setLabel:0];
  allocator4 = [(FigMetalContext *)self->_metalContext allocator];
  v20 = [allocator4 newTextureWithDescriptor:newTextureDescriptor];
  colourAccuracyConfidenceThumbnailTexture = self->_colourAccuracyConfidenceThumbnailTexture;
  self->_colourAccuracyConfidenceThumbnailTexture = v20;

  if (!self->_colourAccuracyConfidenceThumbnailTexture)
  {
    sub_10830();
    goto LABEL_14;
  }

  v22 = 0;
LABEL_7:

  return v22;
}

- (int)_encodeStrobeIlluminationConfidenceCalculate:(id)calculate strobeComponentRGBTexture:(id)texture strobeIlluminationZeroThreshold:(float)threshold strobeIlluminationOneThreshold:(float)oneThreshold outputStrobeIlluminationConfidenceRTexture:(id)rTexture
{
  calculateCopy = calculate;
  textureCopy = texture;
  oneThresholdCopy = oneThreshold;
  thresholdCopy = threshold;
  rTextureCopy = rTexture;
  if (!calculateCopy)
  {
    sub_10AE8();
LABEL_7:
    v19 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [calculateCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_10A74();
    goto LABEL_7;
  }

  v16 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_calculateStrobeIlluminationConfidencePipelineState];
  [v16 setTexture:textureCopy atIndex:0];
  [v16 setTexture:rTextureCopy atIndex:1];
  [v16 setBytes:&thresholdCopy length:4 atIndex:0];
  [v16 setBytes:&oneThresholdCopy length:4 atIndex:1];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_calculateStrobeIlluminationConfidencePipelineState threadExecutionWidth];
  v18 = [(MTLComputePipelineState *)self->_calculateStrobeIlluminationConfidencePipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v22[0] = [rTextureCopy width];
  v22[1] = [rTextureCopy height];
  v22[2] = 1;
  v21[0] = threadExecutionWidth;
  v21[1] = v18;
  v21[2] = 1;
  [v16 dispatchThreads:v22 threadsPerThreadgroup:v21];
  [v16 endEncoding];

  v19 = 0;
LABEL_4:

  return v19;
}

- (int)_encodeColourAccuracyConfidenceCalculate:(id)calculate strobeComponentRGBATexture:(id)texture strobeBalancedThumbnailRGBTexture:(id)bTexture strobeReconstructedBalancedThumbnailRGBTexture:(id)gBTexture strobeIlluminationZeroThreshold:(float)threshold strobeIlluminationOneThreshold:(float)oneThreshold styleTransferAccuracyZeroThreshold:(float)zeroThreshold styleTransferAccuracyOneThreshold:(float)self0 styleTransferAccuracyGammaCorrection:(float)self1 outputColourAccuracyConfidenceTexture:(id)self2
{
  calculateCopy = calculate;
  textureCopy = texture;
  bTextureCopy = bTexture;
  gBTextureCopy = gBTexture;
  oneThresholdCopy = oneThreshold;
  thresholdCopy = threshold;
  accuracyOneThresholdCopy = accuracyOneThreshold;
  zeroThresholdCopy = zeroThreshold;
  correctionCopy = correction;
  confidenceTextureCopy = confidenceTexture;
  if (!calculateCopy)
  {
    sub_10BD0();
LABEL_7:
    v31 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [calculateCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_10B5C();
    goto LABEL_7;
  }

  v28 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_calculateColourAccuracyConfidencePipelineState];
  [v28 setTexture:textureCopy atIndex:0];
  [v28 setTexture:bTextureCopy atIndex:1];
  [v28 setTexture:gBTextureCopy atIndex:2];
  [v28 setTexture:confidenceTextureCopy atIndex:3];
  [v28 setBytes:&thresholdCopy length:4 atIndex:0];
  [v28 setBytes:&oneThresholdCopy length:4 atIndex:1];
  [v28 setBytes:&zeroThresholdCopy length:4 atIndex:2];
  [v28 setBytes:&accuracyOneThresholdCopy length:4 atIndex:3];
  [v28 setBytes:&correctionCopy length:4 atIndex:4];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_calculateColourAccuracyConfidencePipelineState threadExecutionWidth];
  v30 = [(MTLComputePipelineState *)self->_calculateColourAccuracyConfidencePipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v34[0] = [confidenceTextureCopy width];
  v34[1] = [confidenceTextureCopy height];
  v34[2] = 1;
  v33[0] = threadExecutionWidth;
  v33[1] = v30;
  v33[2] = 1;
  [v28 dispatchThreads:v34 threadsPerThreadgroup:v33];
  [v28 endEncoding];

  v31 = 0;
LABEL_4:

  return v31;
}

- (int)_encodeCenterWeightedConfidenceThumbnailBoxCalculate:(id)calculate colourAccuracyConfidenceTexture:(id)texture centerWeightingGaussianSigmaScale:(float)scale centerWeightingSigmaToFilterScale:(float)filterScale outputColourAccuracyConfidenceThumbnailTexture:(id)thumbnailTexture
{
  calculateCopy = calculate;
  textureCopy = texture;
  thumbnailTextureCopy = thumbnailTexture;
  if (!calculateCopy)
  {
    sub_10CB8();
LABEL_7:
    v22 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [calculateCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_10C44();
    goto LABEL_7;
  }

  v16 = computeCommandEncoder;
  width = [textureCopy width];
  height = [textureCopy height];
  v18.f32[0] = width;
  v18.f32[1] = height;
  v19 = vsub_f32(vmul_f32(v18, 0x3F0000003F000000), v18);
  v27 = (sqrtf(vaddv_f32(vmul_f32(v19, v19))) / filterScale) * scale;
  [v16 setComputePipelineState:self->_calculateCenterWeightedConfidenceThumbnailPipelineState];
  [v16 setTexture:textureCopy atIndex:0];
  [v16 setTexture:thumbnailTextureCopy atIndex:1];
  [v16 setBytes:&v27 length:4 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_calculateCenterWeightedConfidenceThumbnailPipelineState threadExecutionWidth];
  v21 = [(MTLComputePipelineState *)self->_calculateCenterWeightedConfidenceThumbnailPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v26[0] = [thumbnailTextureCopy width];
  v26[1] = [thumbnailTextureCopy height];
  v26[2] = 1;
  v25[0] = threadExecutionWidth;
  v25[1] = v21;
  v25[2] = 1;
  [v16 dispatchThreads:v26 threadsPerThreadgroup:v25];
  [v16 endEncoding];

  v22 = 0;
LABEL_4:

  return v22;
}

- (int)_encodeCenterWeightedConfidenceLevelCalculate:(id)calculate colourAccuracyConfidenceThumbnailTexture:(id)texture centerWeightingGaussianSigmaScale:(float)scale centerWeightingSigmaToFilterScale:(float)filterScale outputGlobalCenterWeightedConfidenceLevel:(id)level
{
  calculateCopy = calculate;
  textureCopy = texture;
  levelCopy = level;
  if (!calculateCopy)
  {
    sub_10DA0();
LABEL_7:
    v22 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [calculateCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_10D2C();
    goto LABEL_7;
  }

  v16 = computeCommandEncoder;
  width = [textureCopy width];
  height = [textureCopy height];
  v18.f32[0] = width;
  v18.f32[1] = height;
  v19 = vsub_f32(vmul_f32(v18, 0x3F0000003F000000), v18);
  v28 = (sqrtf(vaddv_f32(vmul_f32(v19, v19))) / filterScale) * scale;
  [v16 setComputePipelineState:self->_calculateCenterWeightedConfidenceLevelPipelineState];
  [v16 setTexture:textureCopy atIndex:0];
  [v16 setBuffer:levelCopy offset:0 atIndex:0];
  [v16 setBytes:&v28 length:4 atIndex:1];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_calculateCenterWeightedConfidenceLevelPipelineState threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_calculateCenterWeightedConfidenceLevelPipelineState maxTotalThreadsPerThreadgroup];
  v26 = vdupq_n_s64(1uLL);
  v27 = 1;
  v25[0] = threadExecutionWidth;
  v25[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v25[2] = 1;
  [v16 dispatchThreads:&v26 threadsPerThreadgroup:v25];
  [v16 endEncoding];

  v22 = 0;
LABEL_4:

  return v22;
}

- (int)calculateStrobeIlluminationConfidence:(id)confidence strobeComponentRGBTexture:(id)texture outputStrobeIlluminationConfidenceRTexture:(id)rTexture
{
  config = self->_config;
  rTextureCopy = rTexture;
  textureCopy = texture;
  confidenceCopy = confidence;
  [(CMIColourConstancyConfidenceConfigurationV1 *)config strobeIlluminationZeroThreshold];
  v13 = v12;
  [(CMIColourConstancyConfidenceConfigurationV1 *)self->_config strobeIlluminationOneThreshold];
  LODWORD(v15) = v14;
  LODWORD(v16) = v13;
  v17 = [(CMIColourConstancyConfidenceV1 *)self _encodeStrobeIlluminationConfidenceCalculate:confidenceCopy strobeComponentRGBTexture:textureCopy strobeIlluminationZeroThreshold:rTextureCopy strobeIlluminationOneThreshold:v16 outputStrobeIlluminationConfidenceRTexture:v15];

  if (v17)
  {
    sub_10E14();
  }

  return v17;
}

- (int)calculateColourAccuracyConfidence:(id)confidence strobeComponentRGBATexture:(id)texture strobeBalancedThumbnailRGBTexture:(id)bTexture strobeReconstructedBalancedThumbnailRGBTexture:(id)gBTexture outputColourAccuracyConfidenceTexture:(id)confidenceTexture
{
  confidenceCopy = confidence;
  confidenceTextureCopy = confidenceTexture;
  config = self->_config;
  gBTextureCopy = gBTexture;
  bTextureCopy = bTexture;
  textureCopy = texture;
  [(CMIColourConstancyConfidenceConfigurationV1 *)config strobeIlluminationZeroThreshold];
  v19 = v18;
  [(CMIColourConstancyConfidenceConfigurationV1 *)self->_config strobeIlluminationOneThreshold];
  v21 = v20;
  [(CMIColourConstancyConfidenceConfigurationV1 *)self->_config styleTransferAccuracyZeroThreshold];
  v23 = v22;
  [(CMIColourConstancyConfidenceConfigurationV1 *)self->_config styleTransferAccuracyOneThreshold];
  v25 = v24;
  [(CMIColourConstancyConfidenceConfigurationV1 *)self->_config styleTransferAccuracyGammaCorrection];
  LODWORD(v27) = v26;
  LODWORD(v28) = v19;
  LODWORD(v29) = v21;
  LODWORD(v30) = v23;
  LODWORD(v31) = v25;
  v32 = [(CMIColourConstancyConfidenceV1 *)self _encodeColourAccuracyConfidenceCalculate:confidenceCopy strobeComponentRGBATexture:textureCopy strobeBalancedThumbnailRGBTexture:bTextureCopy strobeReconstructedBalancedThumbnailRGBTexture:gBTextureCopy strobeIlluminationZeroThreshold:confidenceTextureCopy strobeIlluminationOneThreshold:v28 styleTransferAccuracyZeroThreshold:v29 styleTransferAccuracyOneThreshold:v30 styleTransferAccuracyGammaCorrection:v31 outputColourAccuracyConfidenceTexture:v27];

  if (v32)
  {
    sub_10E8C();
  }

  else
  {
    [(CMIColourConstancyConfidenceConfigurationV1 *)self->_config centerWeightingGaussianSigmaScale];
    v34 = v33;
    [(CMIColourConstancyConfidenceConfigurationV1 *)self->_config centerWeightingSigmaToFilterScale];
    LODWORD(v36) = v35;
    LODWORD(v37) = v34;
    v38 = [(CMIColourConstancyConfidenceV1 *)self _encodeCenterWeightedConfidenceThumbnailBoxCalculate:confidenceCopy colourAccuracyConfidenceTexture:confidenceTextureCopy centerWeightingGaussianSigmaScale:self->_colourAccuracyConfidenceThumbnailTexture centerWeightingSigmaToFilterScale:v37 outputColourAccuracyConfidenceThumbnailTexture:v36];
    if (v38)
    {
      v32 = v38;
      sub_10F04();
    }

    else
    {
      colourAccuracyConfidenceThumbnailTexture = self->_colourAccuracyConfidenceThumbnailTexture;
      [(CMIColourConstancyConfidenceConfigurationV1 *)self->_config centerWeightingGaussianSigmaScale];
      v41 = v40;
      [(CMIColourConstancyConfidenceConfigurationV1 *)self->_config centerWeightingSigmaToFilterScale];
      LODWORD(v43) = v42;
      LODWORD(v44) = v41;
      v32 = [(CMIColourConstancyConfidenceV1 *)self _encodeCenterWeightedConfidenceLevelCalculate:confidenceCopy colourAccuracyConfidenceThumbnailTexture:colourAccuracyConfidenceThumbnailTexture centerWeightingGaussianSigmaScale:self->_globalCenterWeightedConfidenceLevelBuffer centerWeightingSigmaToFilterScale:v44 outputGlobalCenterWeightedConfidenceLevel:v43];
      if (v32)
      {
        sub_10F7C();
      }
    }
  }

  return v32;
}

@end