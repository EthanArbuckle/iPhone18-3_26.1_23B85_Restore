@interface CMIColourConstancyConfidenceV1
- (CMIColourConstancyConfidenceV1)initWithMetalContext:(id)a3;
- (int)_encodeCenterWeightedConfidenceLevelCalculate:(id)a3 colourAccuracyConfidenceThumbnailTexture:(id)a4 centerWeightingGaussianSigmaScale:(float)a5 centerWeightingSigmaToFilterScale:(float)a6 outputGlobalCenterWeightedConfidenceLevel:(id)a7;
- (int)_encodeCenterWeightedConfidenceThumbnailBoxCalculate:(id)a3 colourAccuracyConfidenceTexture:(id)a4 centerWeightingGaussianSigmaScale:(float)a5 centerWeightingSigmaToFilterScale:(float)a6 outputColourAccuracyConfidenceThumbnailTexture:(id)a7;
- (int)_encodeColourAccuracyConfidenceCalculate:(id)a3 strobeComponentRGBATexture:(id)a4 strobeBalancedThumbnailRGBTexture:(id)a5 strobeReconstructedBalancedThumbnailRGBTexture:(id)a6 strobeIlluminationZeroThreshold:(float)a7 strobeIlluminationOneThreshold:(float)a8 styleTransferAccuracyZeroThreshold:(float)a9 styleTransferAccuracyOneThreshold:(float)a10 styleTransferAccuracyGammaCorrection:(float)a11 outputColourAccuracyConfidenceTexture:(id)a12;
- (int)_encodeStrobeIlluminationConfidenceCalculate:(id)a3 strobeComponentRGBTexture:(id)a4 strobeIlluminationZeroThreshold:(float)a5 strobeIlluminationOneThreshold:(float)a6 outputStrobeIlluminationConfidenceRTexture:(id)a7;
- (int)calculateColourAccuracyConfidence:(id)a3 strobeComponentRGBATexture:(id)a4 strobeBalancedThumbnailRGBTexture:(id)a5 strobeReconstructedBalancedThumbnailRGBTexture:(id)a6 outputColourAccuracyConfidenceTexture:(id)a7;
- (int)calculateStrobeIlluminationConfidence:(id)a3 strobeComponentRGBTexture:(id)a4 outputStrobeIlluminationConfidenceRTexture:(id)a5;
- (int)prepareToProcessWithConfig:(id)a3;
- (int)purgeResources;
@end

@implementation CMIColourConstancyConfidenceV1

- (CMIColourConstancyConfidenceV1)initWithMetalContext:(id)a3
{
  v5 = a3;
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

  if (!v5)
  {
    sub_10740();
    goto LABEL_15;
  }

  objc_storeStrong(&v6->_metalContext, a3);
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

- (int)prepareToProcessWithConfig:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_10A00();
    v12 = 0;
    v7 = 0;
    v22 = 8;
    goto LABEL_7;
  }

  objc_storeStrong(&self->_config, a3);
  v6 = [(FigMetalContext *)self->_metalContext allocator];
  v7 = [v6 newBufferDescriptor];

  if (!v7)
  {
    sub_1098C();
    v12 = 0;
LABEL_12:
    v22 = 7;
    goto LABEL_7;
  }

  [v7 setLength:4];
  [v7 setOptions:0];
  [v7 setLabel:0];
  v8 = [(FigMetalContext *)self->_metalContext allocator];
  v9 = [v8 newBufferWithDescriptor:v7];
  globalCenterWeightedConfidenceLevelBuffer = self->_globalCenterWeightedConfidenceLevelBuffer;
  self->_globalCenterWeightedConfidenceLevelBuffer = v9;

  if (!self->_globalCenterWeightedConfidenceLevelBuffer)
  {
    sub_10918();
    v12 = 0;
LABEL_14:
    v22 = 6;
    goto LABEL_7;
  }

  v11 = [(FigMetalContext *)self->_metalContext allocator];
  v12 = [v11 newTextureDescriptor];

  if (!v12)
  {
    sub_108A4();
    goto LABEL_12;
  }

  v13 = [v12 desc];
  [v13 setTextureType:2];

  v14 = [(CMIColourConstancyConfidenceConfigurationV1 *)self->_config thumbnailConfidenceMapWidth];
  v15 = [v12 desc];
  [v15 setWidth:v14];

  v16 = [(CMIColourConstancyConfidenceConfigurationV1 *)self->_config thumbnailConfidenceMapHeight];
  v17 = [v12 desc];
  [v17 setHeight:v16];

  v18 = [v12 desc];
  [v18 setPixelFormat:25];

  [v12 setLabel:0];
  v19 = [(FigMetalContext *)self->_metalContext allocator];
  v20 = [v19 newTextureWithDescriptor:v12];
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

- (int)_encodeStrobeIlluminationConfidenceCalculate:(id)a3 strobeComponentRGBTexture:(id)a4 strobeIlluminationZeroThreshold:(float)a5 strobeIlluminationOneThreshold:(float)a6 outputStrobeIlluminationConfidenceRTexture:(id)a7
{
  v12 = a3;
  v13 = a4;
  v23 = a6;
  v24 = a5;
  v14 = a7;
  if (!v12)
  {
    sub_10AE8();
LABEL_7:
    v19 = 10;
    goto LABEL_4;
  }

  v15 = [v12 computeCommandEncoder];
  if (!v15)
  {
    sub_10A74();
    goto LABEL_7;
  }

  v16 = v15;
  [v15 setComputePipelineState:self->_calculateStrobeIlluminationConfidencePipelineState];
  [v16 setTexture:v13 atIndex:0];
  [v16 setTexture:v14 atIndex:1];
  [v16 setBytes:&v24 length:4 atIndex:0];
  [v16 setBytes:&v23 length:4 atIndex:1];
  v17 = [(MTLComputePipelineState *)self->_calculateStrobeIlluminationConfidencePipelineState threadExecutionWidth];
  v18 = [(MTLComputePipelineState *)self->_calculateStrobeIlluminationConfidencePipelineState maxTotalThreadsPerThreadgroup]/ v17;
  v22[0] = [v14 width];
  v22[1] = [v14 height];
  v22[2] = 1;
  v21[0] = v17;
  v21[1] = v18;
  v21[2] = 1;
  [v16 dispatchThreads:v22 threadsPerThreadgroup:v21];
  [v16 endEncoding];

  v19 = 0;
LABEL_4:

  return v19;
}

- (int)_encodeColourAccuracyConfidenceCalculate:(id)a3 strobeComponentRGBATexture:(id)a4 strobeBalancedThumbnailRGBTexture:(id)a5 strobeReconstructedBalancedThumbnailRGBTexture:(id)a6 strobeIlluminationZeroThreshold:(float)a7 strobeIlluminationOneThreshold:(float)a8 styleTransferAccuracyZeroThreshold:(float)a9 styleTransferAccuracyOneThreshold:(float)a10 styleTransferAccuracyGammaCorrection:(float)a11 outputColourAccuracyConfidenceTexture:(id)a12
{
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v38 = a8;
  v39 = a7;
  v36 = a10;
  v37 = a9;
  v35 = a11;
  v26 = a12;
  if (!v22)
  {
    sub_10BD0();
LABEL_7:
    v31 = 10;
    goto LABEL_4;
  }

  v27 = [v22 computeCommandEncoder];
  if (!v27)
  {
    sub_10B5C();
    goto LABEL_7;
  }

  v28 = v27;
  [v27 setComputePipelineState:self->_calculateColourAccuracyConfidencePipelineState];
  [v28 setTexture:v23 atIndex:0];
  [v28 setTexture:v24 atIndex:1];
  [v28 setTexture:v25 atIndex:2];
  [v28 setTexture:v26 atIndex:3];
  [v28 setBytes:&v39 length:4 atIndex:0];
  [v28 setBytes:&v38 length:4 atIndex:1];
  [v28 setBytes:&v37 length:4 atIndex:2];
  [v28 setBytes:&v36 length:4 atIndex:3];
  [v28 setBytes:&v35 length:4 atIndex:4];
  v29 = [(MTLComputePipelineState *)self->_calculateColourAccuracyConfidencePipelineState threadExecutionWidth];
  v30 = [(MTLComputePipelineState *)self->_calculateColourAccuracyConfidencePipelineState maxTotalThreadsPerThreadgroup]/ v29;
  v34[0] = [v26 width];
  v34[1] = [v26 height];
  v34[2] = 1;
  v33[0] = v29;
  v33[1] = v30;
  v33[2] = 1;
  [v28 dispatchThreads:v34 threadsPerThreadgroup:v33];
  [v28 endEncoding];

  v31 = 0;
LABEL_4:

  return v31;
}

- (int)_encodeCenterWeightedConfidenceThumbnailBoxCalculate:(id)a3 colourAccuracyConfidenceTexture:(id)a4 centerWeightingGaussianSigmaScale:(float)a5 centerWeightingSigmaToFilterScale:(float)a6 outputColourAccuracyConfidenceThumbnailTexture:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (!v12)
  {
    sub_10CB8();
LABEL_7:
    v22 = 10;
    goto LABEL_4;
  }

  v15 = [v12 computeCommandEncoder];
  if (!v15)
  {
    sub_10C44();
    goto LABEL_7;
  }

  v16 = v15;
  v24 = [v13 width];
  v17 = [v13 height];
  v18.f32[0] = v24;
  v18.f32[1] = v17;
  v19 = vsub_f32(vmul_f32(v18, 0x3F0000003F000000), v18);
  v27 = (sqrtf(vaddv_f32(vmul_f32(v19, v19))) / a6) * a5;
  [v16 setComputePipelineState:self->_calculateCenterWeightedConfidenceThumbnailPipelineState];
  [v16 setTexture:v13 atIndex:0];
  [v16 setTexture:v14 atIndex:1];
  [v16 setBytes:&v27 length:4 atIndex:0];
  v20 = [(MTLComputePipelineState *)self->_calculateCenterWeightedConfidenceThumbnailPipelineState threadExecutionWidth];
  v21 = [(MTLComputePipelineState *)self->_calculateCenterWeightedConfidenceThumbnailPipelineState maxTotalThreadsPerThreadgroup]/ v20;
  v26[0] = [v14 width];
  v26[1] = [v14 height];
  v26[2] = 1;
  v25[0] = v20;
  v25[1] = v21;
  v25[2] = 1;
  [v16 dispatchThreads:v26 threadsPerThreadgroup:v25];
  [v16 endEncoding];

  v22 = 0;
LABEL_4:

  return v22;
}

- (int)_encodeCenterWeightedConfidenceLevelCalculate:(id)a3 colourAccuracyConfidenceThumbnailTexture:(id)a4 centerWeightingGaussianSigmaScale:(float)a5 centerWeightingSigmaToFilterScale:(float)a6 outputGlobalCenterWeightedConfidenceLevel:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (!v12)
  {
    sub_10DA0();
LABEL_7:
    v22 = 10;
    goto LABEL_4;
  }

  v15 = [v12 computeCommandEncoder];
  if (!v15)
  {
    sub_10D2C();
    goto LABEL_7;
  }

  v16 = v15;
  v24 = [v13 width];
  v17 = [v13 height];
  v18.f32[0] = v24;
  v18.f32[1] = v17;
  v19 = vsub_f32(vmul_f32(v18, 0x3F0000003F000000), v18);
  v28 = (sqrtf(vaddv_f32(vmul_f32(v19, v19))) / a6) * a5;
  [v16 setComputePipelineState:self->_calculateCenterWeightedConfidenceLevelPipelineState];
  [v16 setTexture:v13 atIndex:0];
  [v16 setBuffer:v14 offset:0 atIndex:0];
  [v16 setBytes:&v28 length:4 atIndex:1];
  v20 = [(MTLComputePipelineState *)self->_calculateCenterWeightedConfidenceLevelPipelineState threadExecutionWidth];
  v21 = [(MTLComputePipelineState *)self->_calculateCenterWeightedConfidenceLevelPipelineState maxTotalThreadsPerThreadgroup];
  v26 = vdupq_n_s64(1uLL);
  v27 = 1;
  v25[0] = v20;
  v25[1] = v21 / v20;
  v25[2] = 1;
  [v16 dispatchThreads:&v26 threadsPerThreadgroup:v25];
  [v16 endEncoding];

  v22 = 0;
LABEL_4:

  return v22;
}

- (int)calculateStrobeIlluminationConfidence:(id)a3 strobeComponentRGBTexture:(id)a4 outputStrobeIlluminationConfidenceRTexture:(id)a5
{
  config = self->_config;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [(CMIColourConstancyConfidenceConfigurationV1 *)config strobeIlluminationZeroThreshold];
  v13 = v12;
  [(CMIColourConstancyConfidenceConfigurationV1 *)self->_config strobeIlluminationOneThreshold];
  LODWORD(v15) = v14;
  LODWORD(v16) = v13;
  v17 = [(CMIColourConstancyConfidenceV1 *)self _encodeStrobeIlluminationConfidenceCalculate:v11 strobeComponentRGBTexture:v10 strobeIlluminationZeroThreshold:v9 strobeIlluminationOneThreshold:v16 outputStrobeIlluminationConfidenceRTexture:v15];

  if (v17)
  {
    sub_10E14();
  }

  return v17;
}

- (int)calculateColourAccuracyConfidence:(id)a3 strobeComponentRGBATexture:(id)a4 strobeBalancedThumbnailRGBTexture:(id)a5 strobeReconstructedBalancedThumbnailRGBTexture:(id)a6 outputColourAccuracyConfidenceTexture:(id)a7
{
  v12 = a3;
  v13 = a7;
  config = self->_config;
  v15 = a6;
  v16 = a5;
  v17 = a4;
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
  v32 = [(CMIColourConstancyConfidenceV1 *)self _encodeColourAccuracyConfidenceCalculate:v12 strobeComponentRGBATexture:v17 strobeBalancedThumbnailRGBTexture:v16 strobeReconstructedBalancedThumbnailRGBTexture:v15 strobeIlluminationZeroThreshold:v13 strobeIlluminationOneThreshold:v28 styleTransferAccuracyZeroThreshold:v29 styleTransferAccuracyOneThreshold:v30 styleTransferAccuracyGammaCorrection:v31 outputColourAccuracyConfidenceTexture:v27];

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
    v38 = [(CMIColourConstancyConfidenceV1 *)self _encodeCenterWeightedConfidenceThumbnailBoxCalculate:v12 colourAccuracyConfidenceTexture:v13 centerWeightingGaussianSigmaScale:self->_colourAccuracyConfidenceThumbnailTexture centerWeightingSigmaToFilterScale:v37 outputColourAccuracyConfidenceThumbnailTexture:v36];
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
      v32 = [(CMIColourConstancyConfidenceV1 *)self _encodeCenterWeightedConfidenceLevelCalculate:v12 colourAccuracyConfidenceThumbnailTexture:colourAccuracyConfidenceThumbnailTexture centerWeightingGaussianSigmaScale:self->_globalCenterWeightedConfidenceLevelBuffer centerWeightingSigmaToFilterScale:v44 outputGlobalCenterWeightedConfidenceLevel:v43];
      if (v32)
      {
        sub_10F7C();
      }
    }
  }

  return v32;
}

@end