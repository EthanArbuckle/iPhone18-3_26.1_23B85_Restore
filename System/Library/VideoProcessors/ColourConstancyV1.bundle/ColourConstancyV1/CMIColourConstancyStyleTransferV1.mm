@interface CMIColourConstancyStyleTransferV1
- (CMIColourConstancyStyleTransferV1)initWithMetalContext:(id)context;
- (int)_encodeRGBtoRGBThumbnailGaussianResampleCalculate:(id)calculate inputRGBTexture:(id)texture sharpness:(float)sharpness sigmaToFilterScale:(float)scale gammaCorrection:(float)correction thumbnailIntermediateRGBTexture:(id)bTexture outputRGBTexture:(id)gBTexture;
- (int)_encodeStyleTargetFromSourceWithQualityModeReconstruct:(id)reconstruct sourceThumbnailRGBTexture:(id)texture targetThumbnailRGBTexture:(id)bTexture styleEngineCoefficientsTexture:(id)coefficientsTexture styleEngineLinearSystemStatusFlagBuffer:(id)buffer styleEngineGammaCorrection:(float)correction outputReconstructedTargetThumbnailRGBTexture:(id)gBTexture;
- (int)_encodeStyleTargetFromSourceWithSpeedModeReconstruct:(id)reconstruct sourceThumbnailRGBTexture:(id)texture targetThumbnailRGBTexture:(id)bTexture outputReconstructedTargetThumbnailRGBTexture:(id)gBTexture;
- (int)_encodeZeroImage:(id)image outputLumaTexture:(id)texture outputChromaTexture:(id)chromaTexture;
- (int)finishProcessing;
- (int)prepareToProcessWithConfig:(id)config;
- (int)purgeResources;
- (uint64_t)_encodeStyleTransferWithQualityMode:(__n128)mode inputLumaTexture:(__n128)texture inputChromaTexture:(float)chromaTexture appliedScaledLSCGainsRGBTexture:(float)bTexture sourceThumbnailRGBTexture:(__n128)gBTexture targetThumbnailRGBTexture:(__n128)rGBTexture toneCompressionCurveTexture:(__n128)curveTexture styleEngineCoefficientsTexture:(uint64_t)self0 styleEngineLinearSystemStatusFlagBuffer:(void *)self1 styleEngineGammaCorrection:(void *)self2 inputYUVOffsets:(void *)self3 cropRect:(void *)self4 appliedWhitePoint:(void *)self5 clippingCorrectionEnabled:(void *)self6 clippingCorrectionTransitionGain:(id)self7 clippingCorrectionTransitionExponent:(id)self8 strobeCCM:(id)self9 colourSaturationBoostGain:(unint64_t)boostGain gammaCorrection:(uint64_t)gammaCorrection globalRGBToneCurveEnabled:(BOOL)curveEnabled globalRGBToneCurveBrightnessBoostFactor:(__int16)factor outputLumaTexture:(char)lumaTexture outputChromaTexture:(uint64_t)outputChromaTexture outputLinearRGBTexture:(uint64_t)linearRGBTexture;
- (uint64_t)_encodeStyleTransferWithSpeedMode:(__n128)mode inputLumaTexture:(float)texture inputChromaTexture:(float)chromaTexture appliedScaledLSCGainsRGBTexture:(__n128)bTexture sourceThumbnailRGBTexture:(__n128)gBTexture targetThumbnailRGBTexture:(__n128)rGBTexture toneCompressionCurveTexture:(float)curveTexture inputYUVOffsets:(uint64_t)self0 cropRect:(void *)self1 appliedWhitePoint:(void *)self2 clippingCorrectionEnabled:(void *)self3 clippingCorrectionTransitionGain:(void *)self4 clippingCorrectionTransitionExponent:(void *)self5 strobeCCM:(void *)self6 colourSaturationBoostGain:(id)self7 gammaCorrection:(unint64_t)self8 globalRGBToneCurveEnabled:(uint64_t)self9 globalRGBToneCurveBrightnessBoostFactor:(BOOL)factor outputLumaTexture:(__int16)lumaTexture outputChromaTexture:(char)outputChromaTexture outputLinearRGBTexture:(__int16)linearRGBTexture;
- (uint64_t)applyStyleTransferWithBufferClearing:(double)clearing inputChromaTexture:(double)texture appliedScaledLSCGainsRGBTexture:(double)bTexture sourceRGBTexture:(double)gBTexture targetRGBTexture:(uint64_t)rGBTexture toneCompressionCurveTexture:(void *)curveTexture inputYUVOffsets:(void *)offsets cropRect:(void *)self0 appliedWhitePoint:(void *)self1 strobeCCM:(void *)self2 outputReconstructedTargetRGBTexture:(void *)self3 outputLumaTexture:(uint64_t)self4 outputChromaTexture:(uint64_t)self5 outputLinearRGBTexture:(id)self6;
@end

@implementation CMIColourConstancyStyleTransferV1

- (CMIColourConstancyStyleTransferV1)initWithMetalContext:(id)context
{
  contextCopy = context;
  v38.receiver = self;
  v38.super_class = CMIColourConstancyStyleTransferV1;
  v6 = [(CMIColourConstancyStyleTransferV1 *)&v38 init];
  v7 = v6;
  if (!v6)
  {
    sub_E714();
    goto LABEL_27;
  }

  if (!contextCopy)
  {
    sub_E69C();
    goto LABEL_27;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v8 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::zeroImageV1" constants:0];
  zeroImagePipelineState = v7->_zeroImagePipelineState;
  v7->_zeroImagePipelineState = v8;

  if (!v7->_zeroImagePipelineState)
  {
    sub_E624();
    goto LABEL_27;
  }

  v10 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateRGBtoRGBThumbnailGaussianResampleHorizonalPassV1" constants:0];
  calculateRGBtoRGBThumbnailGaussianResampleHorizonalPassPipelineState = v7->_calculateRGBtoRGBThumbnailGaussianResampleHorizonalPassPipelineState;
  v7->_calculateRGBtoRGBThumbnailGaussianResampleHorizonalPassPipelineState = v10;

  if (!v7->_calculateRGBtoRGBThumbnailGaussianResampleHorizonalPassPipelineState)
  {
    sub_E5AC();
    goto LABEL_27;
  }

  v12 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateRGBtoRGBThumbnailGaussianResampleVerticalPassV1" constants:0];
  calculateRGBtoRGBThumbnailGaussianResampleVerticalPassPipelineState = v7->_calculateRGBtoRGBThumbnailGaussianResampleVerticalPassPipelineState;
  v7->_calculateRGBtoRGBThumbnailGaussianResampleVerticalPassPipelineState = v12;

  if (!v7->_calculateRGBtoRGBThumbnailGaussianResampleVerticalPassPipelineState)
  {
    sub_E534();
    goto LABEL_27;
  }

  v14 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::transferStyleWithSpeedModeV1" constants:0];
  transferStyleWithSpeedModePipelineState = v7->_transferStyleWithSpeedModePipelineState;
  v7->_transferStyleWithSpeedModePipelineState = v14;

  if (!v7->_transferStyleWithSpeedModePipelineState)
  {
    sub_E4BC();
    goto LABEL_27;
  }

  v16 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::transferStyleWithQualityModeV1" constants:0];
  transferStyleWithQualityModePipelineState = v7->_transferStyleWithQualityModePipelineState;
  v7->_transferStyleWithQualityModePipelineState = v16;

  if (!v7->_transferStyleWithQualityModePipelineState)
  {
    sub_E444();
    goto LABEL_27;
  }

  v18 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::reconstructStyleTargetFromSourceWithSpeedModeV1" constants:0];
  reconstructStyleTargetFromSourceWithSpeedModePipelineState = v7->_reconstructStyleTargetFromSourceWithSpeedModePipelineState;
  v7->_reconstructStyleTargetFromSourceWithSpeedModePipelineState = v18;

  if (!v7->_reconstructStyleTargetFromSourceWithSpeedModePipelineState)
  {
    sub_E3CC();
    goto LABEL_27;
  }

  v20 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::reconstructStyleTargetFromSourceWithQualityModeV1" constants:0];
  reconstructStyleTargetFromSourceWithQualityModePipelineState = v7->_reconstructStyleTargetFromSourceWithQualityModePipelineState;
  v7->_reconstructStyleTargetFromSourceWithQualityModePipelineState = v20;

  if (!v7->_reconstructStyleTargetFromSourceWithQualityModePipelineState)
  {
    sub_E354();
    goto LABEL_27;
  }

  if (!FigGetCFPreferenceNumberWithDefault())
  {
    v23 = [CMIStyleEngineProcessor alloc];
    commandQueue = [(FigMetalContext *)v7->_metalContext commandQueue];
    v25 = [v23 initWithOptionalMetalCommandQueue:commandQueue];
    styleEngineProcessor = v7->_styleEngineProcessor;
    v7->_styleEngineProcessor = v25;

    if (v7->_styleEngineProcessor)
    {
      v22 = [[NSDictionary alloc] initWithObjects:&off_35780 forKeys:&off_35798];
      [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor setTuningParameters:v22];
      v27 = objc_opt_new();
      [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor setConfiguration:v27];

      configuration = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor configuration];
      [configuration setLinearSystemBuilder:0];

      configuration2 = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor configuration];
      [configuration2 setApplicator:0];

      configuration3 = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor configuration];
      [configuration3 setLinearSystemType:1];

      configuration4 = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor configuration];
      [configuration4 setLinearSystemOrder:1];

      configuration5 = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor configuration];
      [configuration5 setLinearSystemSolver:0];

      configuration6 = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor configuration];
      [configuration6 setWeightPlaneCount:8];

      configuration7 = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor configuration];
      [configuration7 setSpotlightCount:COERCE_DOUBLE(0xC00000010)];

      setup = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor setup];
      if (!setup)
      {
        goto LABEL_14;
      }

      sub_E250(setup, v22);
    }

    else
    {
      sub_E2DC();
    }

LABEL_27:
    v36 = 0;
    goto LABEL_15;
  }

  v22 = 0;
LABEL_14:
  v36 = v7;

LABEL_15:
  return v36;
}

- (int)purgeResources
{
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor resetState])
  {
    sub_E78C();
    return 9;
  }

  result = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor purgeResources];
  if (result)
  {
    sub_E80C();
    return 9;
  }

  return result;
}

- (int)prepareToProcessWithConfig:(id)config
{
  configCopy = config;
  if (!configCopy)
  {
    sub_EADC();
    newTextureDescriptor = 0;
    v31 = 8;
    goto LABEL_9;
  }

  objc_storeStrong(&self->_config, config);
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_EA68();
    v31 = 7;
    goto LABEL_9;
  }

  desc = [newTextureDescriptor desc];
  [desc setTextureType:2];

  styleTransferThumbnailWidth = [(CMIColourConstancyStyleTransferConfigurationV1 *)self->_config styleTransferThumbnailWidth];
  desc2 = [newTextureDescriptor desc];
  [desc2 setWidth:styleTransferThumbnailWidth];

  styleTransferThumbnailHeight = [(CMIColourConstancyStyleTransferConfigurationV1 *)self->_config styleTransferThumbnailHeight];
  desc3 = [newTextureDescriptor desc];
  [desc3 setHeight:styleTransferThumbnailHeight];

  desc4 = [newTextureDescriptor desc];
  [desc4 setPixelFormat:125];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metalContext allocator];
  v15 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  sourceThumbnailRGBTexture = self->_sourceThumbnailRGBTexture;
  self->_sourceThumbnailRGBTexture = v15;

  if (!self->_sourceThumbnailRGBTexture)
  {
    sub_E9F4();
LABEL_15:
    v31 = 6;
    goto LABEL_9;
  }

  [newTextureDescriptor setLabel:0];
  allocator3 = [(FigMetalContext *)self->_metalContext allocator];
  v18 = [allocator3 newTextureWithDescriptor:newTextureDescriptor];
  targetThumbnailRGBTexture = self->_targetThumbnailRGBTexture;
  self->_targetThumbnailRGBTexture = v18;

  if (!self->_targetThumbnailRGBTexture)
  {
    sub_E980();
    goto LABEL_15;
  }

  sourceThumbnailWidth = [(CMIColourConstancyStyleTransferConfigurationV1 *)self->_config sourceThumbnailWidth];
  desc5 = [newTextureDescriptor desc];
  [desc5 setWidth:sourceThumbnailWidth];

  styleTransferThumbnailHeight2 = [(CMIColourConstancyStyleTransferConfigurationV1 *)self->_config styleTransferThumbnailHeight];
  desc6 = [newTextureDescriptor desc];
  [desc6 setHeight:styleTransferThumbnailHeight2];

  desc7 = [newTextureDescriptor desc];
  [desc7 setPixelFormat:125];

  [newTextureDescriptor setLabel:0];
  allocator4 = [(FigMetalContext *)self->_metalContext allocator];
  v26 = [allocator4 newTextureWithDescriptor:newTextureDescriptor];
  thumbnailIntermediateRGBTexture = self->_thumbnailIntermediateRGBTexture;
  self->_thumbnailIntermediateRGBTexture = v26;

  if (!self->_thumbnailIntermediateRGBTexture)
  {
    sub_E90C();
    goto LABEL_15;
  }

  if (!-[CMIColourConstancyStyleTransferConfigurationV1 speedModeStyleTransferEnabled](self->_config, "speedModeStyleTransferEnabled") && (v28 = -[CMIColourConstancyStyleTransferConfigurationV1 styleTransferThumbnailWidth](self->_config, "styleTransferThumbnailWidth"), v29 = -[CMIColourConstancyStyleTransferConfigurationV1 styleTransferThumbnailHeight](self->_config, "styleTransferThumbnailHeight"), -[CMIStyleEngineProcessor configuration](self->_styleEngineProcessor, "configuration"), v30 = objc_claimAutoreleasedReturnValue(), [v30 setThumbnailSize:{v28, v29}], v30, -[CMIStyleEngineProcessor prepareToProcess:](self->_styleEngineProcessor, "prepareToProcess:", 3)))
  {
    sub_E88C();
    v31 = 9;
  }

  else
  {
    v31 = 0;
  }

LABEL_9:

  return v31;
}

- (int)finishProcessing
{
  finishProcessing = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor finishProcessing];
  if (finishProcessing)
  {
    v3 = finishProcessing == 13;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return 9;
  }
}

- (int)_encodeZeroImage:(id)image outputLumaTexture:(id)texture outputChromaTexture:(id)chromaTexture
{
  imageCopy = image;
  textureCopy = texture;
  chromaTextureCopy = chromaTexture;
  if (!imageCopy)
  {
    sub_EBC4();
LABEL_7:
    v15 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [imageCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_EB50();
    goto LABEL_7;
  }

  v12 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_zeroImagePipelineState];
  [v12 setTexture:textureCopy atIndex:0];
  [v12 setTexture:chromaTextureCopy atIndex:1];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_zeroImagePipelineState threadExecutionWidth];
  v14 = [(MTLComputePipelineState *)self->_zeroImagePipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v18[0] = [chromaTextureCopy width];
  v18[1] = [chromaTextureCopy height];
  v18[2] = 1;
  v17[0] = threadExecutionWidth;
  v17[1] = v14;
  v17[2] = 1;
  [v12 dispatchThreads:v18 threadsPerThreadgroup:v17];
  [v12 endEncoding];

  v15 = 0;
LABEL_4:

  return v15;
}

- (int)_encodeRGBtoRGBThumbnailGaussianResampleCalculate:(id)calculate inputRGBTexture:(id)texture sharpness:(float)sharpness sigmaToFilterScale:(float)scale gammaCorrection:(float)correction thumbnailIntermediateRGBTexture:(id)bTexture outputRGBTexture:(id)gBTexture
{
  calculateCopy = calculate;
  textureCopy = texture;
  scaleCopy = scale;
  sharpnessCopy = sharpness;
  correctionCopy = correction;
  bTextureCopy = bTexture;
  gBTextureCopy = gBTexture;
  if (!calculateCopy)
  {
    sub_ECAC();
LABEL_7:
    v28 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [calculateCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_EC38();
    goto LABEL_7;
  }

  v21 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_calculateRGBtoRGBThumbnailGaussianResampleHorizonalPassPipelineState];
  [v21 setTexture:textureCopy atIndex:0];
  [v21 setTexture:bTextureCopy atIndex:1];
  [v21 setBytes:&sharpnessCopy length:4 atIndex:0];
  [v21 setBytes:&scaleCopy length:4 atIndex:1];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_calculateRGBtoRGBThumbnailGaussianResampleHorizonalPassPipelineState threadExecutionWidth];
  v23 = [(MTLComputePipelineState *)self->_calculateRGBtoRGBThumbnailGaussianResampleHorizonalPassPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  width = [bTextureCopy width];
  height = [bTextureCopy height];
  v35 = 1;
  v30 = threadExecutionWidth;
  v31 = v23;
  v32 = 1;
  [v21 dispatchThreads:&width threadsPerThreadgroup:&v30];
  [v21 setComputePipelineState:self->_calculateRGBtoRGBThumbnailGaussianResampleVerticalPassPipelineState];
  [v21 setTexture:bTextureCopy atIndex:0];
  [v21 setTexture:gBTextureCopy atIndex:1];
  [v21 setBytes:&sharpnessCopy length:4 atIndex:0];
  [v21 setBytes:&scaleCopy length:4 atIndex:1];
  [v21 setBytes:&correctionCopy length:4 atIndex:2];
  threadExecutionWidth2 = [(MTLComputePipelineState *)self->_calculateRGBtoRGBThumbnailGaussianResampleVerticalPassPipelineState threadExecutionWidth];
  v25 = [(MTLComputePipelineState *)self->_calculateRGBtoRGBThumbnailGaussianResampleVerticalPassPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth2;
  width2 = [gBTextureCopy width];
  height2 = [gBTextureCopy height];
  width = width2;
  height = height2;
  v35 = 1;
  v30 = threadExecutionWidth2;
  v31 = v25;
  v32 = 1;
  [v21 dispatchThreads:&width threadsPerThreadgroup:&v30];
  [v21 endEncoding];

  v28 = 0;
LABEL_4:

  return v28;
}

- (int)_encodeStyleTargetFromSourceWithSpeedModeReconstruct:(id)reconstruct sourceThumbnailRGBTexture:(id)texture targetThumbnailRGBTexture:(id)bTexture outputReconstructedTargetThumbnailRGBTexture:(id)gBTexture
{
  reconstructCopy = reconstruct;
  textureCopy = texture;
  bTextureCopy = bTexture;
  gBTextureCopy = gBTexture;
  if (!reconstructCopy)
  {
    sub_ED94();
LABEL_7:
    v18 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [reconstructCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_ED20();
    goto LABEL_7;
  }

  v15 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_reconstructStyleTargetFromSourceWithSpeedModePipelineState];
  [v15 setTexture:textureCopy atIndex:0];
  [v15 setTexture:bTextureCopy atIndex:1];
  [v15 setTexture:gBTextureCopy atIndex:2];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_reconstructStyleTargetFromSourceWithSpeedModePipelineState threadExecutionWidth];
  v17 = [(MTLComputePipelineState *)self->_reconstructStyleTargetFromSourceWithSpeedModePipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v21[0] = [gBTextureCopy width];
  v21[1] = [gBTextureCopy height];
  v21[2] = 1;
  v20[0] = threadExecutionWidth;
  v20[1] = v17;
  v20[2] = 1;
  [v15 dispatchThreads:v21 threadsPerThreadgroup:v20];
  [v15 endEncoding];

  v18 = 0;
LABEL_4:

  return v18;
}

- (int)_encodeStyleTargetFromSourceWithQualityModeReconstruct:(id)reconstruct sourceThumbnailRGBTexture:(id)texture targetThumbnailRGBTexture:(id)bTexture styleEngineCoefficientsTexture:(id)coefficientsTexture styleEngineLinearSystemStatusFlagBuffer:(id)buffer styleEngineGammaCorrection:(float)correction outputReconstructedTargetThumbnailRGBTexture:(id)gBTexture
{
  reconstructCopy = reconstruct;
  textureCopy = texture;
  bTextureCopy = bTexture;
  coefficientsTextureCopy = coefficientsTexture;
  bufferCopy = buffer;
  correctionCopy = correction;
  gBTextureCopy = gBTexture;
  if (!reconstructCopy)
  {
    sub_EE7C();
LABEL_7:
    v27 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [reconstructCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_EE08();
    goto LABEL_7;
  }

  v23 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_reconstructStyleTargetFromSourceWithQualityModePipelineState];
  [v23 setTexture:textureCopy atIndex:0];
  [v23 setTexture:bTextureCopy atIndex:1];
  [v23 setTexture:coefficientsTextureCopy atIndex:2];
  [v23 setTexture:gBTextureCopy atIndex:3];
  [v23 setBuffer:bufferCopy offset:0 atIndex:0];
  [v23 setBytes:&correctionCopy length:4 atIndex:1];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_reconstructStyleTargetFromSourceWithQualityModePipelineState threadExecutionWidth];
  v25 = textureCopy;
  v26 = [(MTLComputePipelineState *)self->_reconstructStyleTargetFromSourceWithQualityModePipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v30[0] = [gBTextureCopy width];
  v30[1] = [gBTextureCopy height];
  v30[2] = 1;
  v29[0] = threadExecutionWidth;
  v29[1] = v26;
  textureCopy = v25;
  v29[2] = 1;
  [v23 dispatchThreads:v30 threadsPerThreadgroup:v29];
  [v23 endEncoding];

  v27 = 0;
LABEL_4:

  return v27;
}

- (uint64_t)_encodeStyleTransferWithSpeedMode:(__n128)mode inputLumaTexture:(float)texture inputChromaTexture:(float)chromaTexture appliedScaledLSCGainsRGBTexture:(__n128)bTexture sourceThumbnailRGBTexture:(__n128)gBTexture targetThumbnailRGBTexture:(__n128)rGBTexture toneCompressionCurveTexture:(float)curveTexture inputYUVOffsets:(uint64_t)self0 cropRect:(void *)self1 appliedWhitePoint:(void *)self2 clippingCorrectionEnabled:(void *)self3 clippingCorrectionTransitionGain:(void *)self4 clippingCorrectionTransitionExponent:(void *)self5 strobeCCM:(void *)self6 colourSaturationBoostGain:(id)self7 gammaCorrection:(unint64_t)self8 globalRGBToneCurveEnabled:(uint64_t)self9 globalRGBToneCurveBrightnessBoostFactor:(BOOL)factor outputLumaTexture:(__int16)lumaTexture outputChromaTexture:(char)outputChromaTexture outputLinearRGBTexture:(__int16)linearRGBTexture
{
  v62 = a29;
  v61 = a28;
  v37 = a27;
  v38 = a24;
  v74[0] = correction;
  v74[1] = curveEnabled;
  v73[0] = bTexture;
  v73[1] = gBTexture;
  v73[2] = rGBTexture;
  rectCopy = rect;
  pointCopy = point;
  enabledCopy = enabled;
  gainCopy = gain;
  exponentCopy = exponent;
  mCopy = m;
  boostGainCopy = boostGain;
  modeCopy = mode;
  v72 = a2;
  factorCopy = factor;
  chromaTextureCopy = chromaTexture;
  textureCopy = texture;
  curveTextureCopy = curveTexture;
  v66 = v38;
  v44 = v37;
  v45 = v61;
  v46 = v62;
  v63 = rectCopy;
  if (!rectCopy)
  {
    sub_EF64();
LABEL_7:
    v53 = 10;
    v51 = boostGainCopy;
    v49 = enabledCopy;
    goto LABEL_4;
  }

  computeCommandEncoder = [rectCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_EEF0();
    goto LABEL_7;
  }

  v48 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:*(self + 48)];
  [v48 setTexture:pointCopy atIndex:0];
  v49 = enabledCopy;
  [v48 setTexture:enabledCopy atIndex:1];
  [v48 setTexture:gainCopy atIndex:2];
  v55 = exponentCopy;
  [v48 setTexture:exponentCopy atIndex:3];
  [v48 setTexture:mCopy atIndex:4];
  [v48 setTexture:boostGainCopy atIndex:5];
  [v48 setTexture:v44 atIndex:6];
  [v48 setTexture:v45 atIndex:7];
  [v48 setTexture:v46 atIndex:8];
  [v48 setBytes:&v72 length:16 atIndex:0];
  [v48 setBytes:v74 length:16 atIndex:1];
  [v48 setBytes:&modeCopy length:16 atIndex:2];
  [v48 setBytes:&factorCopy length:1 atIndex:3];
  [v48 setBytes:&textureCopy length:4 atIndex:4];
  [v48 setBytes:&chromaTextureCopy length:4 atIndex:5];
  [v48 setBytes:v73 length:48 atIndex:6];
  [v48 setBytes:&curveTextureCopy length:4 atIndex:7];
  [v48 setBytes:&outputChromaTexture length:4 atIndex:8];
  [v48 setBytes:&v66 length:1 atIndex:9];
  [v48 setBytes:&a26 length:4 atIndex:10];
  threadExecutionWidth = [*(self + 48) threadExecutionWidth];
  v51 = boostGainCopy;
  maxTotalThreadsPerThreadgroup = [*(self + 48) maxTotalThreadsPerThreadgroup];
  v65[0] = correction >> 1;
  v65[1] = correction >> 33;
  v65[2] = 1;
  v64[0] = threadExecutionWidth;
  v64[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  exponentCopy = v55;
  v64[2] = 1;
  [v48 dispatchThreads:v65 threadsPerThreadgroup:v64];
  [v48 endEncoding];

  v53 = 0;
LABEL_4:

  return v53;
}

- (uint64_t)_encodeStyleTransferWithQualityMode:(__n128)mode inputLumaTexture:(__n128)texture inputChromaTexture:(float)chromaTexture appliedScaledLSCGainsRGBTexture:(float)bTexture sourceThumbnailRGBTexture:(__n128)gBTexture targetThumbnailRGBTexture:(__n128)rGBTexture toneCompressionCurveTexture:(__n128)curveTexture styleEngineCoefficientsTexture:(uint64_t)self0 styleEngineLinearSystemStatusFlagBuffer:(void *)self1 styleEngineGammaCorrection:(void *)self2 inputYUVOffsets:(void *)self3 cropRect:(void *)self4 appliedWhitePoint:(void *)self5 clippingCorrectionEnabled:(void *)self6 clippingCorrectionTransitionGain:(id)self7 clippingCorrectionTransitionExponent:(id)self8 strobeCCM:(id)self9 colourSaturationBoostGain:(unint64_t)boostGain gammaCorrection:(uint64_t)gammaCorrection globalRGBToneCurveEnabled:(BOOL)curveEnabled globalRGBToneCurveBrightnessBoostFactor:(__int16)factor outputLumaTexture:(char)lumaTexture outputChromaTexture:(uint64_t)outputChromaTexture outputLinearRGBTexture:(uint64_t)linearRGBTexture
{
  v71 = a29;
  v68 = a28;
  v63 = a27;
  v62 = BYTE4(outputChromaTexture);
  v83[0] = boostGain;
  v83[1] = gammaCorrection;
  v82[0] = gBTexture;
  v82[1] = rGBTexture;
  v82[2] = curveTexture;
  bufferCopy = buffer;
  correctionCopy = correction;
  offsetsCopy = offsets;
  rectCopy = rect;
  pointCopy = point;
  enabledCopy = enabled;
  v42 = bufferCopy;
  gainCopy = gain;
  exponentCopy = exponent;
  mCopy = m;
  v81 = a2;
  textureCopy = texture;
  modeCopy = mode;
  curveEnabledCopy = curveEnabled;
  bTextureCopy = bTexture;
  chromaTextureCopy = chromaTexture;
  v75 = v62;
  v45 = v63;
  v46 = v68;
  v47 = v71;
  v72 = v42;
  v65 = rectCopy;
  if (!v42)
  {
    sub_F04C();
LABEL_7:
    v59 = 10;
    v51 = pointCopy;
    v52 = enabledCopy;
    v53 = gainCopy;
    v54 = exponentCopy;
    v55 = mCopy;
    goto LABEL_4;
  }

  computeCommandEncoder = [v42 computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_EFD8();
    goto LABEL_7;
  }

  v49 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:*(self + 56)];
  v69 = v45;
  v50 = v46;
  [v49 setTexture:correctionCopy atIndex:0];
  [v49 setTexture:offsetsCopy atIndex:1];
  [v49 setTexture:rectCopy atIndex:2];
  v51 = pointCopy;
  [v49 setTexture:pointCopy atIndex:3];
  v52 = enabledCopy;
  [v49 setTexture:enabledCopy atIndex:4];
  v53 = gainCopy;
  [v49 setTexture:gainCopy atIndex:5];
  v54 = exponentCopy;
  [v49 setTexture:exponentCopy atIndex:6];
  [v49 setTexture:v69 atIndex:7];
  [v49 setTexture:v46 atIndex:8];
  [v49 setTexture:v47 atIndex:9];
  [v49 setBytes:&modeCopy length:16 atIndex:0];
  [v49 setBytes:v83 length:16 atIndex:1];
  [v49 setBytes:&textureCopy length:16 atIndex:2];
  [v49 setBytes:&curveEnabledCopy length:1 atIndex:3];
  [v49 setBytes:&chromaTextureCopy length:4 atIndex:4];
  [v49 setBytes:&bTextureCopy length:4 atIndex:5];
  v55 = mCopy;
  [v49 setBuffer:mCopy offset:0 atIndex:6];
  [v49 setBytes:&v81 length:4 atIndex:7];
  [v49 setBytes:v82 length:48 atIndex:8];
  [v49 setBytes:&lumaTexture length:4 atIndex:9];
  [v49 setBytes:&outputChromaTexture length:4 atIndex:10];
  [v49 setBytes:&v75 length:1 atIndex:11];
  [v49 setBytes:&linearRGBTexture length:4 atIndex:12];
  v56 = correctionCopy;
  threadExecutionWidth = [*(self + 56) threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [*(self + 56) maxTotalThreadsPerThreadgroup];
  v74[0] = boostGain >> 1;
  v74[1] = boostGain >> 33;
  v74[2] = 1;
  v73[0] = threadExecutionWidth;
  v73[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  correctionCopy = v56;
  v46 = v50;
  v45 = v69;
  v73[2] = 1;
  [v49 dispatchThreads:v74 threadsPerThreadgroup:v73];
  [v49 endEncoding];

  v59 = 0;
LABEL_4:

  return v59;
}

- (uint64_t)applyStyleTransferWithBufferClearing:(double)clearing inputChromaTexture:(double)texture appliedScaledLSCGainsRGBTexture:(double)bTexture sourceRGBTexture:(double)gBTexture targetRGBTexture:(uint64_t)rGBTexture toneCompressionCurveTexture:(void *)curveTexture inputYUVOffsets:(void *)offsets cropRect:(void *)self0 appliedWhitePoint:(void *)self1 strobeCCM:(void *)self2 outputReconstructedTargetRGBTexture:(void *)self3 outputLumaTexture:(uint64_t)self4 outputChromaTexture:(uint64_t)self5 outputLinearRGBTexture:(id)self6
{
  curveTextureCopy = curveTexture;
  offsetsCopy = offsets;
  rectCopy = rect;
  pointCopy = point;
  mCopy = m;
  targetRGBTextureCopy = targetRGBTexture;
  linearRGBTextureCopy = linearRGBTexture;
  v28 = a17;
  v29 = a18;
  v103 = a19;
  commandBuffer = [*(self + 8) commandBuffer];
  if (!commandBuffer)
  {
    sub_F5F8(v109);
    v72 = v109[0];
    v33 = curveTextureCopy;
    goto LABEL_15;
  }

  v31 = commandBuffer;
  v32 = [self _encodeZeroImage:commandBuffer outputLumaTexture:v28 outputChromaTexture:v29];
  v33 = curveTextureCopy;
  if (v32)
  {
    v72 = v32;
    sub_F0C0(v31);
    goto LABEL_15;
  }

  v102 = linearRGBTextureCopy;
  if ([*(self + 16) speedModeStyleTransferEnabled])
  {
    v34 = [self _encodeStyleTargetFromSourceWithSpeedModeReconstruct:v31 sourceThumbnailRGBTexture:pointCopy targetThumbnailRGBTexture:mCopy outputReconstructedTargetThumbnailRGBTexture:linearRGBTextureCopy];
    if (v34)
    {
      v72 = v34;
      sub_F4D8(v31);
      goto LABEL_15;
    }

    clippingCorrectionEnabled = [*(self + 16) clippingCorrectionEnabled];
    [*(self + 16) clippingCorrectionTransitionGain];
    v37 = v36;
    [*(self + 16) clippingCorrectionTransitionExponent];
    v39 = v38;
    [*(self + 16) colourSaturationBoostGain];
    v41 = v40;
    [*(self + 16) gammaCorrection];
    v43 = v42;
    globalRGBToneCurveEnabled = [*(self + 16) globalRGBToneCurveEnabled];
    [*(self + 16) globalRGBToneCurveBrightnessBoostFactor];
    HIDWORD(v93) = v45;
    LOBYTE(v93) = globalRGBToneCurveEnabled;
    HIDWORD(v92) = v43;
    LOBYTE(v92) = clippingCorrectionEnabled;
    v33 = curveTextureCopy;
    LODWORD(v46) = v37;
    LODWORD(v47) = v39;
    LODWORD(v48) = v41;
    v49 = [self _encodeStyleTransferWithSpeedMode:v31 inputLumaTexture:curveTextureCopy inputChromaTexture:offsetsCopy appliedScaledLSCGainsRGBTexture:rectCopy sourceThumbnailRGBTexture:pointCopy targetThumbnailRGBTexture:mCopy toneCompressionCurveTexture:a2 inputYUVOffsets:clearing cropRect:v46 appliedWhitePoint:v47 clippingCorrectionEnabled:texture clippingCorrectionTransitionGain:bTexture clippingCorrectionTransitionExponent:gBTexture strobeCCM:v48 colourSaturationBoostGain:targetRGBTextureCopy gammaCorrection:lumaTexture globalRGBToneCurveEnabled:chromaTexture globalRGBToneCurveBrightnessBoostFactor:v92 outputLumaTexture:v93 outputChromaTexture:v28 outputLinearRGBTexture:{v29, v103}];
    if (v49)
    {
      v72 = v49;
      sub_F568(v31);
      goto LABEL_14;
    }

    commandBuffer2 = v31;
  }

  else
  {
    [*(self + 16) styleTransferThumbnailSharpness];
    v52 = v51;
    [*(self + 16) styleTransferThumbnailSigmaToFilterScale];
    v54 = v53;
    [*(self + 16) styleTransferGammaCorrection];
    LODWORD(v56) = v55;
    LODWORD(v57) = v52;
    LODWORD(v58) = v54;
    v59 = [self _encodeRGBtoRGBThumbnailGaussianResampleCalculate:v31 inputRGBTexture:pointCopy sharpness:*(self + 96) sigmaToFilterScale:*(self + 80) gammaCorrection:v57 thumbnailIntermediateRGBTexture:v58 outputRGBTexture:v56];
    if (v59)
    {
      v72 = v59;
      sub_F150(v31);
      goto LABEL_15;
    }

    [*(self + 16) styleTransferThumbnailSharpness];
    v61 = v60;
    [*(self + 16) styleTransferThumbnailSigmaToFilterScale];
    v63 = v62;
    [*(self + 16) styleTransferGammaCorrection];
    LODWORD(v65) = v64;
    LODWORD(v66) = v61;
    LODWORD(v67) = v63;
    v68 = [self _encodeRGBtoRGBThumbnailGaussianResampleCalculate:v31 inputRGBTexture:mCopy sharpness:*(self + 96) sigmaToFilterScale:*(self + 88) gammaCorrection:v66 thumbnailIntermediateRGBTexture:v67 outputRGBTexture:v65];
    if (v68)
    {
      v72 = v68;
      sub_F1E0(v31);
      goto LABEL_15;
    }

    [*(self + 8) commit];
    [*(self + 104) setInputThumbnailTexture:*(self + 80)];
    [*(self + 104) setTargetThumbnailTexture:*(self + 88)];
    process = [*(self + 104) process];
    if (process)
    {
      sub_F270(process, v31);
      v72 = 9;
      goto LABEL_15;
    }

    commandBuffer2 = [*(self + 8) commandBuffer];

    if (!commandBuffer2)
    {
      sub_F428(&v108);
      v72 = v108;
      goto LABEL_14;
    }

    outputIntegratedCoefficients = [*(self + 104) outputIntegratedCoefficients];
    outputLinearSystemStatusFlag = [*(self + 104) outputLinearSystemStatusFlag];
    [*(self + 16) styleTransferGammaCorrection];
    v72 = [self _encodeStyleTargetFromSourceWithQualityModeReconstruct:commandBuffer2 sourceThumbnailRGBTexture:pointCopy targetThumbnailRGBTexture:mCopy styleEngineCoefficientsTexture:outputIntegratedCoefficients styleEngineLinearSystemStatusFlagBuffer:outputLinearSystemStatusFlag styleEngineGammaCorrection:v102 outputReconstructedTargetThumbnailRGBTexture:?];

    if (v72)
    {
      sub_F308(commandBuffer2);
      linearRGBTextureCopy = v102;
      goto LABEL_15;
    }

    outputIntegratedCoefficients2 = [*(self + 104) outputIntegratedCoefficients];
    outputLinearSystemStatusFlag2 = [*(self + 104) outputLinearSystemStatusFlag];
    [*(self + 16) styleTransferGammaCorrection];
    v76 = v75;
    clippingCorrectionEnabled2 = [*(self + 16) clippingCorrectionEnabled];
    [*(self + 16) clippingCorrectionTransitionGain];
    v79 = v78;
    [*(self + 16) clippingCorrectionTransitionExponent];
    v81 = v80;
    [*(self + 16) colourSaturationBoostGain];
    v83 = v82;
    [*(self + 16) gammaCorrection];
    v85 = v84;
    globalRGBToneCurveEnabled2 = [*(self + 16) globalRGBToneCurveEnabled];
    [*(self + 16) globalRGBToneCurveBrightnessBoostFactor];
    LODWORD(v96) = v87;
    BYTE4(v95) = globalRGBToneCurveEnabled2;
    v33 = curveTextureCopy;
    HIDWORD(v94) = v83;
    LODWORD(v95) = v85;
    LOBYTE(v94) = clippingCorrectionEnabled2;
    LODWORD(v88) = v76;
    LODWORD(v89) = v79;
    LODWORD(v90) = v81;
    v72 = [self _encodeStyleTransferWithQualityMode:commandBuffer2 inputLumaTexture:curveTextureCopy inputChromaTexture:offsetsCopy appliedScaledLSCGainsRGBTexture:rectCopy sourceThumbnailRGBTexture:pointCopy targetThumbnailRGBTexture:mCopy toneCompressionCurveTexture:v88 styleEngineCoefficientsTexture:a2 styleEngineLinearSystemStatusFlagBuffer:clearing styleEngineGammaCorrection:v89 inputYUVOffsets:v90 cropRect:texture appliedWhitePoint:bTexture clippingCorrectionEnabled:gBTexture clippingCorrectionTransitionGain:targetRGBTextureCopy clippingCorrectionTransitionExponent:outputIntegratedCoefficients2 strobeCCM:outputLinearSystemStatusFlag2 colourSaturationBoostGain:lumaTexture gammaCorrection:chromaTexture globalRGBToneCurveEnabled:v94 globalRGBToneCurveBrightnessBoostFactor:v95 outputLumaTexture:v96 outputChromaTexture:v28 outputLinearRGBTexture:{v29, v103}];

    if (v72)
    {
      sub_F398(commandBuffer2);
      goto LABEL_14;
    }
  }

  [*(self + 8) commit];

  v72 = 0;
LABEL_14:
  linearRGBTextureCopy = v102;
LABEL_15:

  return v72;
}

@end