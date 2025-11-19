@interface CMIColourConstancyStyleTransferV1
- (CMIColourConstancyStyleTransferV1)initWithMetalContext:(id)a3;
- (int)_encodeRGBtoRGBThumbnailGaussianResampleCalculate:(id)a3 inputRGBTexture:(id)a4 sharpness:(float)a5 sigmaToFilterScale:(float)a6 gammaCorrection:(float)a7 thumbnailIntermediateRGBTexture:(id)a8 outputRGBTexture:(id)a9;
- (int)_encodeStyleTargetFromSourceWithQualityModeReconstruct:(id)a3 sourceThumbnailRGBTexture:(id)a4 targetThumbnailRGBTexture:(id)a5 styleEngineCoefficientsTexture:(id)a6 styleEngineLinearSystemStatusFlagBuffer:(id)a7 styleEngineGammaCorrection:(float)a8 outputReconstructedTargetThumbnailRGBTexture:(id)a9;
- (int)_encodeStyleTargetFromSourceWithSpeedModeReconstruct:(id)a3 sourceThumbnailRGBTexture:(id)a4 targetThumbnailRGBTexture:(id)a5 outputReconstructedTargetThumbnailRGBTexture:(id)a6;
- (int)_encodeZeroImage:(id)a3 outputLumaTexture:(id)a4 outputChromaTexture:(id)a5;
- (int)finishProcessing;
- (int)prepareToProcessWithConfig:(id)a3;
- (int)purgeResources;
- (uint64_t)_encodeStyleTransferWithQualityMode:(__n128)a3 inputLumaTexture:(__n128)a4 inputChromaTexture:(float)a5 appliedScaledLSCGainsRGBTexture:(float)a6 sourceThumbnailRGBTexture:(__n128)a7 targetThumbnailRGBTexture:(__n128)a8 toneCompressionCurveTexture:(__n128)a9 styleEngineCoefficientsTexture:(uint64_t)a10 styleEngineLinearSystemStatusFlagBuffer:(void *)a11 styleEngineGammaCorrection:(void *)a12 inputYUVOffsets:(void *)a13 cropRect:(void *)a14 appliedWhitePoint:(void *)a15 clippingCorrectionEnabled:(void *)a16 clippingCorrectionTransitionGain:(id)a17 clippingCorrectionTransitionExponent:(id)a18 strobeCCM:(id)a19 colourSaturationBoostGain:(unint64_t)a20 gammaCorrection:(uint64_t)a21 globalRGBToneCurveEnabled:(BOOL)a22 globalRGBToneCurveBrightnessBoostFactor:(__int16)a23 outputLumaTexture:(char)a24 outputChromaTexture:(uint64_t)a25 outputLinearRGBTexture:(uint64_t)a26;
- (uint64_t)_encodeStyleTransferWithSpeedMode:(__n128)a3 inputLumaTexture:(float)a4 inputChromaTexture:(float)a5 appliedScaledLSCGainsRGBTexture:(__n128)a6 sourceThumbnailRGBTexture:(__n128)a7 targetThumbnailRGBTexture:(__n128)a8 toneCompressionCurveTexture:(float)a9 inputYUVOffsets:(uint64_t)a10 cropRect:(void *)a11 appliedWhitePoint:(void *)a12 clippingCorrectionEnabled:(void *)a13 clippingCorrectionTransitionGain:(void *)a14 clippingCorrectionTransitionExponent:(void *)a15 strobeCCM:(void *)a16 colourSaturationBoostGain:(id)a17 gammaCorrection:(unint64_t)a18 globalRGBToneCurveEnabled:(uint64_t)a19 globalRGBToneCurveBrightnessBoostFactor:(BOOL)a20 outputLumaTexture:(__int16)a21 outputChromaTexture:(char)a22 outputLinearRGBTexture:(__int16)a23;
- (uint64_t)applyStyleTransferWithBufferClearing:(double)a3 inputChromaTexture:(double)a4 appliedScaledLSCGainsRGBTexture:(double)a5 sourceRGBTexture:(double)a6 targetRGBTexture:(uint64_t)a7 toneCompressionCurveTexture:(void *)a8 inputYUVOffsets:(void *)a9 cropRect:(void *)a10 appliedWhitePoint:(void *)a11 strobeCCM:(void *)a12 outputReconstructedTargetRGBTexture:(void *)a13 outputLumaTexture:(uint64_t)a14 outputChromaTexture:(uint64_t)a15 outputLinearRGBTexture:(id)a16;
@end

@implementation CMIColourConstancyStyleTransferV1

- (CMIColourConstancyStyleTransferV1)initWithMetalContext:(id)a3
{
  v5 = a3;
  v38.receiver = self;
  v38.super_class = CMIColourConstancyStyleTransferV1;
  v6 = [(CMIColourConstancyStyleTransferV1 *)&v38 init];
  v7 = v6;
  if (!v6)
  {
    sub_E714();
    goto LABEL_27;
  }

  if (!v5)
  {
    sub_E69C();
    goto LABEL_27;
  }

  objc_storeStrong(&v6->_metalContext, a3);
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
    v24 = [(FigMetalContext *)v7->_metalContext commandQueue];
    v25 = [v23 initWithOptionalMetalCommandQueue:v24];
    styleEngineProcessor = v7->_styleEngineProcessor;
    v7->_styleEngineProcessor = v25;

    if (v7->_styleEngineProcessor)
    {
      v22 = [[NSDictionary alloc] initWithObjects:&off_35780 forKeys:&off_35798];
      [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor setTuningParameters:v22];
      v27 = objc_opt_new();
      [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor setConfiguration:v27];

      v28 = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor configuration];
      [v28 setLinearSystemBuilder:0];

      v29 = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor configuration];
      [v29 setApplicator:0];

      v30 = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor configuration];
      [v30 setLinearSystemType:1];

      v31 = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor configuration];
      [v31 setLinearSystemOrder:1];

      v32 = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor configuration];
      [v32 setLinearSystemSolver:0];

      v33 = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor configuration];
      [v33 setWeightPlaneCount:8];

      v34 = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor configuration];
      [v34 setSpotlightCount:COERCE_DOUBLE(0xC00000010)];

      v35 = [(CMIStyleEngineProcessor *)v7->_styleEngineProcessor setup];
      if (!v35)
      {
        goto LABEL_14;
      }

      sub_E250(v35, v22);
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

- (int)prepareToProcessWithConfig:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_EADC();
    v7 = 0;
    v31 = 8;
    goto LABEL_9;
  }

  objc_storeStrong(&self->_config, a3);
  v6 = [(FigMetalContext *)self->_metalContext allocator];
  v7 = [v6 newTextureDescriptor];

  if (!v7)
  {
    sub_EA68();
    v31 = 7;
    goto LABEL_9;
  }

  v8 = [v7 desc];
  [v8 setTextureType:2];

  v9 = [(CMIColourConstancyStyleTransferConfigurationV1 *)self->_config styleTransferThumbnailWidth];
  v10 = [v7 desc];
  [v10 setWidth:v9];

  v11 = [(CMIColourConstancyStyleTransferConfigurationV1 *)self->_config styleTransferThumbnailHeight];
  v12 = [v7 desc];
  [v12 setHeight:v11];

  v13 = [v7 desc];
  [v13 setPixelFormat:125];

  [v7 setLabel:0];
  v14 = [(FigMetalContext *)self->_metalContext allocator];
  v15 = [v14 newTextureWithDescriptor:v7];
  sourceThumbnailRGBTexture = self->_sourceThumbnailRGBTexture;
  self->_sourceThumbnailRGBTexture = v15;

  if (!self->_sourceThumbnailRGBTexture)
  {
    sub_E9F4();
LABEL_15:
    v31 = 6;
    goto LABEL_9;
  }

  [v7 setLabel:0];
  v17 = [(FigMetalContext *)self->_metalContext allocator];
  v18 = [v17 newTextureWithDescriptor:v7];
  targetThumbnailRGBTexture = self->_targetThumbnailRGBTexture;
  self->_targetThumbnailRGBTexture = v18;

  if (!self->_targetThumbnailRGBTexture)
  {
    sub_E980();
    goto LABEL_15;
  }

  v20 = [(CMIColourConstancyStyleTransferConfigurationV1 *)self->_config sourceThumbnailWidth];
  v21 = [v7 desc];
  [v21 setWidth:v20];

  v22 = [(CMIColourConstancyStyleTransferConfigurationV1 *)self->_config styleTransferThumbnailHeight];
  v23 = [v7 desc];
  [v23 setHeight:v22];

  v24 = [v7 desc];
  [v24 setPixelFormat:125];

  [v7 setLabel:0];
  v25 = [(FigMetalContext *)self->_metalContext allocator];
  v26 = [v25 newTextureWithDescriptor:v7];
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
  v2 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor finishProcessing];
  if (v2)
  {
    v3 = v2 == 13;
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

- (int)_encodeZeroImage:(id)a3 outputLumaTexture:(id)a4 outputChromaTexture:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    sub_EBC4();
LABEL_7:
    v15 = 10;
    goto LABEL_4;
  }

  v11 = [v8 computeCommandEncoder];
  if (!v11)
  {
    sub_EB50();
    goto LABEL_7;
  }

  v12 = v11;
  [v11 setComputePipelineState:self->_zeroImagePipelineState];
  [v12 setTexture:v9 atIndex:0];
  [v12 setTexture:v10 atIndex:1];
  v13 = [(MTLComputePipelineState *)self->_zeroImagePipelineState threadExecutionWidth];
  v14 = [(MTLComputePipelineState *)self->_zeroImagePipelineState maxTotalThreadsPerThreadgroup]/ v13;
  v18[0] = [v10 width];
  v18[1] = [v10 height];
  v18[2] = 1;
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = 1;
  [v12 dispatchThreads:v18 threadsPerThreadgroup:v17];
  [v12 endEncoding];

  v15 = 0;
LABEL_4:

  return v15;
}

- (int)_encodeRGBtoRGBThumbnailGaussianResampleCalculate:(id)a3 inputRGBTexture:(id)a4 sharpness:(float)a5 sigmaToFilterScale:(float)a6 gammaCorrection:(float)a7 thumbnailIntermediateRGBTexture:(id)a8 outputRGBTexture:(id)a9
{
  v16 = a3;
  v17 = a4;
  v37 = a6;
  v38 = a5;
  v36 = a7;
  v18 = a8;
  v19 = a9;
  if (!v16)
  {
    sub_ECAC();
LABEL_7:
    v28 = 10;
    goto LABEL_4;
  }

  v20 = [v16 computeCommandEncoder];
  if (!v20)
  {
    sub_EC38();
    goto LABEL_7;
  }

  v21 = v20;
  [v20 setComputePipelineState:self->_calculateRGBtoRGBThumbnailGaussianResampleHorizonalPassPipelineState];
  [v21 setTexture:v17 atIndex:0];
  [v21 setTexture:v18 atIndex:1];
  [v21 setBytes:&v38 length:4 atIndex:0];
  [v21 setBytes:&v37 length:4 atIndex:1];
  v22 = [(MTLComputePipelineState *)self->_calculateRGBtoRGBThumbnailGaussianResampleHorizonalPassPipelineState threadExecutionWidth];
  v23 = [(MTLComputePipelineState *)self->_calculateRGBtoRGBThumbnailGaussianResampleHorizonalPassPipelineState maxTotalThreadsPerThreadgroup]/ v22;
  v33 = [v18 width];
  v34 = [v18 height];
  v35 = 1;
  v30 = v22;
  v31 = v23;
  v32 = 1;
  [v21 dispatchThreads:&v33 threadsPerThreadgroup:&v30];
  [v21 setComputePipelineState:self->_calculateRGBtoRGBThumbnailGaussianResampleVerticalPassPipelineState];
  [v21 setTexture:v18 atIndex:0];
  [v21 setTexture:v19 atIndex:1];
  [v21 setBytes:&v38 length:4 atIndex:0];
  [v21 setBytes:&v37 length:4 atIndex:1];
  [v21 setBytes:&v36 length:4 atIndex:2];
  v24 = [(MTLComputePipelineState *)self->_calculateRGBtoRGBThumbnailGaussianResampleVerticalPassPipelineState threadExecutionWidth];
  v25 = [(MTLComputePipelineState *)self->_calculateRGBtoRGBThumbnailGaussianResampleVerticalPassPipelineState maxTotalThreadsPerThreadgroup]/ v24;
  v26 = [v19 width];
  v27 = [v19 height];
  v33 = v26;
  v34 = v27;
  v35 = 1;
  v30 = v24;
  v31 = v25;
  v32 = 1;
  [v21 dispatchThreads:&v33 threadsPerThreadgroup:&v30];
  [v21 endEncoding];

  v28 = 0;
LABEL_4:

  return v28;
}

- (int)_encodeStyleTargetFromSourceWithSpeedModeReconstruct:(id)a3 sourceThumbnailRGBTexture:(id)a4 targetThumbnailRGBTexture:(id)a5 outputReconstructedTargetThumbnailRGBTexture:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    sub_ED94();
LABEL_7:
    v18 = 10;
    goto LABEL_4;
  }

  v14 = [v10 computeCommandEncoder];
  if (!v14)
  {
    sub_ED20();
    goto LABEL_7;
  }

  v15 = v14;
  [v14 setComputePipelineState:self->_reconstructStyleTargetFromSourceWithSpeedModePipelineState];
  [v15 setTexture:v11 atIndex:0];
  [v15 setTexture:v12 atIndex:1];
  [v15 setTexture:v13 atIndex:2];
  v16 = [(MTLComputePipelineState *)self->_reconstructStyleTargetFromSourceWithSpeedModePipelineState threadExecutionWidth];
  v17 = [(MTLComputePipelineState *)self->_reconstructStyleTargetFromSourceWithSpeedModePipelineState maxTotalThreadsPerThreadgroup]/ v16;
  v21[0] = [v13 width];
  v21[1] = [v13 height];
  v21[2] = 1;
  v20[0] = v16;
  v20[1] = v17;
  v20[2] = 1;
  [v15 dispatchThreads:v21 threadsPerThreadgroup:v20];
  [v15 endEncoding];

  v18 = 0;
LABEL_4:

  return v18;
}

- (int)_encodeStyleTargetFromSourceWithQualityModeReconstruct:(id)a3 sourceThumbnailRGBTexture:(id)a4 targetThumbnailRGBTexture:(id)a5 styleEngineCoefficientsTexture:(id)a6 styleEngineLinearSystemStatusFlagBuffer:(id)a7 styleEngineGammaCorrection:(float)a8 outputReconstructedTargetThumbnailRGBTexture:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v31 = a8;
  v21 = a9;
  if (!v16)
  {
    sub_EE7C();
LABEL_7:
    v27 = 10;
    goto LABEL_4;
  }

  v22 = [v16 computeCommandEncoder];
  if (!v22)
  {
    sub_EE08();
    goto LABEL_7;
  }

  v23 = v22;
  [v22 setComputePipelineState:self->_reconstructStyleTargetFromSourceWithQualityModePipelineState];
  [v23 setTexture:v17 atIndex:0];
  [v23 setTexture:v18 atIndex:1];
  [v23 setTexture:v19 atIndex:2];
  [v23 setTexture:v21 atIndex:3];
  [v23 setBuffer:v20 offset:0 atIndex:0];
  [v23 setBytes:&v31 length:4 atIndex:1];
  v24 = [(MTLComputePipelineState *)self->_reconstructStyleTargetFromSourceWithQualityModePipelineState threadExecutionWidth];
  v25 = v17;
  v26 = [(MTLComputePipelineState *)self->_reconstructStyleTargetFromSourceWithQualityModePipelineState maxTotalThreadsPerThreadgroup]/ v24;
  v30[0] = [v21 width];
  v30[1] = [v21 height];
  v30[2] = 1;
  v29[0] = v24;
  v29[1] = v26;
  v17 = v25;
  v29[2] = 1;
  [v23 dispatchThreads:v30 threadsPerThreadgroup:v29];
  [v23 endEncoding];

  v27 = 0;
LABEL_4:

  return v27;
}

- (uint64_t)_encodeStyleTransferWithSpeedMode:(__n128)a3 inputLumaTexture:(float)a4 inputChromaTexture:(float)a5 appliedScaledLSCGainsRGBTexture:(__n128)a6 sourceThumbnailRGBTexture:(__n128)a7 targetThumbnailRGBTexture:(__n128)a8 toneCompressionCurveTexture:(float)a9 inputYUVOffsets:(uint64_t)a10 cropRect:(void *)a11 appliedWhitePoint:(void *)a12 clippingCorrectionEnabled:(void *)a13 clippingCorrectionTransitionGain:(void *)a14 clippingCorrectionTransitionExponent:(void *)a15 strobeCCM:(void *)a16 colourSaturationBoostGain:(id)a17 gammaCorrection:(unint64_t)a18 globalRGBToneCurveEnabled:(uint64_t)a19 globalRGBToneCurveBrightnessBoostFactor:(BOOL)a20 outputLumaTexture:(__int16)a21 outputChromaTexture:(char)a22 outputLinearRGBTexture:(__int16)a23
{
  v62 = a29;
  v61 = a28;
  v37 = a27;
  v38 = a24;
  v74[0] = a18;
  v74[1] = a19;
  v73[0] = a6;
  v73[1] = a7;
  v73[2] = a8;
  v39 = a11;
  v40 = a12;
  v60 = a13;
  v41 = a14;
  v42 = a15;
  v43 = a16;
  v59 = a17;
  v71 = a3;
  v72 = a2;
  v70 = a20;
  v68 = a5;
  v69 = a4;
  v67 = a9;
  v66 = v38;
  v44 = v37;
  v45 = v61;
  v46 = v62;
  v63 = v39;
  if (!v39)
  {
    sub_EF64();
LABEL_7:
    v53 = 10;
    v51 = v59;
    v49 = v60;
    goto LABEL_4;
  }

  v47 = [v39 computeCommandEncoder];
  if (!v47)
  {
    sub_EEF0();
    goto LABEL_7;
  }

  v48 = v47;
  [v47 setComputePipelineState:*(a1 + 48)];
  [v48 setTexture:v40 atIndex:0];
  v49 = v60;
  [v48 setTexture:v60 atIndex:1];
  [v48 setTexture:v41 atIndex:2];
  v55 = v42;
  [v48 setTexture:v42 atIndex:3];
  [v48 setTexture:v43 atIndex:4];
  [v48 setTexture:v59 atIndex:5];
  [v48 setTexture:v44 atIndex:6];
  [v48 setTexture:v45 atIndex:7];
  [v48 setTexture:v46 atIndex:8];
  [v48 setBytes:&v72 length:16 atIndex:0];
  [v48 setBytes:v74 length:16 atIndex:1];
  [v48 setBytes:&v71 length:16 atIndex:2];
  [v48 setBytes:&v70 length:1 atIndex:3];
  [v48 setBytes:&v69 length:4 atIndex:4];
  [v48 setBytes:&v68 length:4 atIndex:5];
  [v48 setBytes:v73 length:48 atIndex:6];
  [v48 setBytes:&v67 length:4 atIndex:7];
  [v48 setBytes:&a22 length:4 atIndex:8];
  [v48 setBytes:&v66 length:1 atIndex:9];
  [v48 setBytes:&a26 length:4 atIndex:10];
  v50 = [*(a1 + 48) threadExecutionWidth];
  v51 = v59;
  v52 = [*(a1 + 48) maxTotalThreadsPerThreadgroup];
  v65[0] = a18 >> 1;
  v65[1] = a18 >> 33;
  v65[2] = 1;
  v64[0] = v50;
  v64[1] = v52 / v50;
  v42 = v55;
  v64[2] = 1;
  [v48 dispatchThreads:v65 threadsPerThreadgroup:v64];
  [v48 endEncoding];

  v53 = 0;
LABEL_4:

  return v53;
}

- (uint64_t)_encodeStyleTransferWithQualityMode:(__n128)a3 inputLumaTexture:(__n128)a4 inputChromaTexture:(float)a5 appliedScaledLSCGainsRGBTexture:(float)a6 sourceThumbnailRGBTexture:(__n128)a7 targetThumbnailRGBTexture:(__n128)a8 toneCompressionCurveTexture:(__n128)a9 styleEngineCoefficientsTexture:(uint64_t)a10 styleEngineLinearSystemStatusFlagBuffer:(void *)a11 styleEngineGammaCorrection:(void *)a12 inputYUVOffsets:(void *)a13 cropRect:(void *)a14 appliedWhitePoint:(void *)a15 clippingCorrectionEnabled:(void *)a16 clippingCorrectionTransitionGain:(id)a17 clippingCorrectionTransitionExponent:(id)a18 strobeCCM:(id)a19 colourSaturationBoostGain:(unint64_t)a20 gammaCorrection:(uint64_t)a21 globalRGBToneCurveEnabled:(BOOL)a22 globalRGBToneCurveBrightnessBoostFactor:(__int16)a23 outputLumaTexture:(char)a24 outputChromaTexture:(uint64_t)a25 outputLinearRGBTexture:(uint64_t)a26
{
  v71 = a29;
  v68 = a28;
  v63 = a27;
  v62 = BYTE4(a25);
  v83[0] = a20;
  v83[1] = a21;
  v82[0] = a7;
  v82[1] = a8;
  v82[2] = a9;
  v37 = a11;
  v38 = a12;
  v70 = a13;
  v39 = a14;
  v40 = a15;
  v41 = a16;
  v42 = v37;
  v43 = a17;
  v44 = a18;
  v66 = a19;
  v81 = a2;
  v79 = a4;
  v80 = a3;
  v78 = a22;
  v76 = a6;
  v77 = a5;
  v75 = v62;
  v45 = v63;
  v46 = v68;
  v47 = v71;
  v72 = v42;
  v65 = v39;
  if (!v42)
  {
    sub_F04C();
LABEL_7:
    v59 = 10;
    v51 = v40;
    v52 = v41;
    v53 = v43;
    v54 = v44;
    v55 = v66;
    goto LABEL_4;
  }

  v48 = [v42 computeCommandEncoder];
  if (!v48)
  {
    sub_EFD8();
    goto LABEL_7;
  }

  v49 = v48;
  [v48 setComputePipelineState:*(a1 + 56)];
  v69 = v45;
  v50 = v46;
  [v49 setTexture:v38 atIndex:0];
  [v49 setTexture:v70 atIndex:1];
  [v49 setTexture:v39 atIndex:2];
  v51 = v40;
  [v49 setTexture:v40 atIndex:3];
  v52 = v41;
  [v49 setTexture:v41 atIndex:4];
  v53 = v43;
  [v49 setTexture:v43 atIndex:5];
  v54 = v44;
  [v49 setTexture:v44 atIndex:6];
  [v49 setTexture:v69 atIndex:7];
  [v49 setTexture:v46 atIndex:8];
  [v49 setTexture:v47 atIndex:9];
  [v49 setBytes:&v80 length:16 atIndex:0];
  [v49 setBytes:v83 length:16 atIndex:1];
  [v49 setBytes:&v79 length:16 atIndex:2];
  [v49 setBytes:&v78 length:1 atIndex:3];
  [v49 setBytes:&v77 length:4 atIndex:4];
  [v49 setBytes:&v76 length:4 atIndex:5];
  v55 = v66;
  [v49 setBuffer:v66 offset:0 atIndex:6];
  [v49 setBytes:&v81 length:4 atIndex:7];
  [v49 setBytes:v82 length:48 atIndex:8];
  [v49 setBytes:&a24 length:4 atIndex:9];
  [v49 setBytes:&a25 length:4 atIndex:10];
  [v49 setBytes:&v75 length:1 atIndex:11];
  [v49 setBytes:&a26 length:4 atIndex:12];
  v56 = v38;
  v57 = [*(a1 + 56) threadExecutionWidth];
  v58 = [*(a1 + 56) maxTotalThreadsPerThreadgroup];
  v74[0] = a20 >> 1;
  v74[1] = a20 >> 33;
  v74[2] = 1;
  v73[0] = v57;
  v73[1] = v58 / v57;
  v38 = v56;
  v46 = v50;
  v45 = v69;
  v73[2] = 1;
  [v49 dispatchThreads:v74 threadsPerThreadgroup:v73];
  [v49 endEncoding];

  v59 = 0;
LABEL_4:

  return v59;
}

- (uint64_t)applyStyleTransferWithBufferClearing:(double)a3 inputChromaTexture:(double)a4 appliedScaledLSCGainsRGBTexture:(double)a5 sourceRGBTexture:(double)a6 targetRGBTexture:(uint64_t)a7 toneCompressionCurveTexture:(void *)a8 inputYUVOffsets:(void *)a9 cropRect:(void *)a10 appliedWhitePoint:(void *)a11 strobeCCM:(void *)a12 outputReconstructedTargetRGBTexture:(void *)a13 outputLumaTexture:(uint64_t)a14 outputChromaTexture:(uint64_t)a15 outputLinearRGBTexture:(id)a16
{
  v107 = a8;
  v106 = a9;
  v105 = a10;
  v25 = a11;
  v26 = a12;
  v104 = a13;
  v27 = a16;
  v28 = a17;
  v29 = a18;
  v103 = a19;
  v30 = [*(a1 + 8) commandBuffer];
  if (!v30)
  {
    sub_F5F8(v109);
    v72 = v109[0];
    v33 = v107;
    goto LABEL_15;
  }

  v31 = v30;
  v32 = [a1 _encodeZeroImage:v30 outputLumaTexture:v28 outputChromaTexture:v29];
  v33 = v107;
  if (v32)
  {
    v72 = v32;
    sub_F0C0(v31);
    goto LABEL_15;
  }

  v102 = v27;
  if ([*(a1 + 16) speedModeStyleTransferEnabled])
  {
    v34 = [a1 _encodeStyleTargetFromSourceWithSpeedModeReconstruct:v31 sourceThumbnailRGBTexture:v25 targetThumbnailRGBTexture:v26 outputReconstructedTargetThumbnailRGBTexture:v27];
    if (v34)
    {
      v72 = v34;
      sub_F4D8(v31);
      goto LABEL_15;
    }

    v35 = [*(a1 + 16) clippingCorrectionEnabled];
    [*(a1 + 16) clippingCorrectionTransitionGain];
    v37 = v36;
    [*(a1 + 16) clippingCorrectionTransitionExponent];
    v39 = v38;
    [*(a1 + 16) colourSaturationBoostGain];
    v41 = v40;
    [*(a1 + 16) gammaCorrection];
    v43 = v42;
    v44 = [*(a1 + 16) globalRGBToneCurveEnabled];
    [*(a1 + 16) globalRGBToneCurveBrightnessBoostFactor];
    HIDWORD(v93) = v45;
    LOBYTE(v93) = v44;
    HIDWORD(v92) = v43;
    LOBYTE(v92) = v35;
    v33 = v107;
    LODWORD(v46) = v37;
    LODWORD(v47) = v39;
    LODWORD(v48) = v41;
    v49 = [a1 _encodeStyleTransferWithSpeedMode:v31 inputLumaTexture:v107 inputChromaTexture:v106 appliedScaledLSCGainsRGBTexture:v105 sourceThumbnailRGBTexture:v25 targetThumbnailRGBTexture:v26 toneCompressionCurveTexture:a2 inputYUVOffsets:a3 cropRect:v46 appliedWhitePoint:v47 clippingCorrectionEnabled:a4 clippingCorrectionTransitionGain:a5 clippingCorrectionTransitionExponent:a6 strobeCCM:v48 colourSaturationBoostGain:v104 gammaCorrection:a14 globalRGBToneCurveEnabled:a15 globalRGBToneCurveBrightnessBoostFactor:v92 outputLumaTexture:v93 outputChromaTexture:v28 outputLinearRGBTexture:{v29, v103}];
    if (v49)
    {
      v72 = v49;
      sub_F568(v31);
      goto LABEL_14;
    }

    v50 = v31;
  }

  else
  {
    [*(a1 + 16) styleTransferThumbnailSharpness];
    v52 = v51;
    [*(a1 + 16) styleTransferThumbnailSigmaToFilterScale];
    v54 = v53;
    [*(a1 + 16) styleTransferGammaCorrection];
    LODWORD(v56) = v55;
    LODWORD(v57) = v52;
    LODWORD(v58) = v54;
    v59 = [a1 _encodeRGBtoRGBThumbnailGaussianResampleCalculate:v31 inputRGBTexture:v25 sharpness:*(a1 + 96) sigmaToFilterScale:*(a1 + 80) gammaCorrection:v57 thumbnailIntermediateRGBTexture:v58 outputRGBTexture:v56];
    if (v59)
    {
      v72 = v59;
      sub_F150(v31);
      goto LABEL_15;
    }

    [*(a1 + 16) styleTransferThumbnailSharpness];
    v61 = v60;
    [*(a1 + 16) styleTransferThumbnailSigmaToFilterScale];
    v63 = v62;
    [*(a1 + 16) styleTransferGammaCorrection];
    LODWORD(v65) = v64;
    LODWORD(v66) = v61;
    LODWORD(v67) = v63;
    v68 = [a1 _encodeRGBtoRGBThumbnailGaussianResampleCalculate:v31 inputRGBTexture:v26 sharpness:*(a1 + 96) sigmaToFilterScale:*(a1 + 88) gammaCorrection:v66 thumbnailIntermediateRGBTexture:v67 outputRGBTexture:v65];
    if (v68)
    {
      v72 = v68;
      sub_F1E0(v31);
      goto LABEL_15;
    }

    [*(a1 + 8) commit];
    [*(a1 + 104) setInputThumbnailTexture:*(a1 + 80)];
    [*(a1 + 104) setTargetThumbnailTexture:*(a1 + 88)];
    v69 = [*(a1 + 104) process];
    if (v69)
    {
      sub_F270(v69, v31);
      v72 = 9;
      goto LABEL_15;
    }

    v50 = [*(a1 + 8) commandBuffer];

    if (!v50)
    {
      sub_F428(&v108);
      v72 = v108;
      goto LABEL_14;
    }

    v70 = [*(a1 + 104) outputIntegratedCoefficients];
    v71 = [*(a1 + 104) outputLinearSystemStatusFlag];
    [*(a1 + 16) styleTransferGammaCorrection];
    v72 = [a1 _encodeStyleTargetFromSourceWithQualityModeReconstruct:v50 sourceThumbnailRGBTexture:v25 targetThumbnailRGBTexture:v26 styleEngineCoefficientsTexture:v70 styleEngineLinearSystemStatusFlagBuffer:v71 styleEngineGammaCorrection:v102 outputReconstructedTargetThumbnailRGBTexture:?];

    if (v72)
    {
      sub_F308(v50);
      v27 = v102;
      goto LABEL_15;
    }

    v73 = [*(a1 + 104) outputIntegratedCoefficients];
    v74 = [*(a1 + 104) outputLinearSystemStatusFlag];
    [*(a1 + 16) styleTransferGammaCorrection];
    v76 = v75;
    v77 = [*(a1 + 16) clippingCorrectionEnabled];
    [*(a1 + 16) clippingCorrectionTransitionGain];
    v79 = v78;
    [*(a1 + 16) clippingCorrectionTransitionExponent];
    v81 = v80;
    [*(a1 + 16) colourSaturationBoostGain];
    v83 = v82;
    [*(a1 + 16) gammaCorrection];
    v85 = v84;
    v86 = [*(a1 + 16) globalRGBToneCurveEnabled];
    [*(a1 + 16) globalRGBToneCurveBrightnessBoostFactor];
    LODWORD(v96) = v87;
    BYTE4(v95) = v86;
    v33 = v107;
    HIDWORD(v94) = v83;
    LODWORD(v95) = v85;
    LOBYTE(v94) = v77;
    LODWORD(v88) = v76;
    LODWORD(v89) = v79;
    LODWORD(v90) = v81;
    v72 = [a1 _encodeStyleTransferWithQualityMode:v50 inputLumaTexture:v107 inputChromaTexture:v106 appliedScaledLSCGainsRGBTexture:v105 sourceThumbnailRGBTexture:v25 targetThumbnailRGBTexture:v26 toneCompressionCurveTexture:v88 styleEngineCoefficientsTexture:a2 styleEngineLinearSystemStatusFlagBuffer:a3 styleEngineGammaCorrection:v89 inputYUVOffsets:v90 cropRect:a4 appliedWhitePoint:a5 clippingCorrectionEnabled:a6 clippingCorrectionTransitionGain:v104 clippingCorrectionTransitionExponent:v73 strobeCCM:v74 colourSaturationBoostGain:a14 gammaCorrection:a15 globalRGBToneCurveEnabled:v94 globalRGBToneCurveBrightnessBoostFactor:v95 outputLumaTexture:v96 outputChromaTexture:v28 outputLinearRGBTexture:{v29, v103}];

    if (v72)
    {
      sub_F398(v50);
      goto LABEL_14;
    }
  }

  [*(a1 + 8) commit];

  v72 = 0;
LABEL_14:
  v27 = v102;
LABEL_15:

  return v72;
}

@end