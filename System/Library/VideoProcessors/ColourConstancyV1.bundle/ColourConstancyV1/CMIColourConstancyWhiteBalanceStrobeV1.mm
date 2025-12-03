@interface CMIColourConstancyWhiteBalanceStrobeV1
- (CMIColourConstancyWhiteBalanceStrobeV1)initWithMetalContext:(id)context;
- (int)_encodeBrightnessAndWhiteBalanceMatchingFusionApply:(id)apply strobeBalancedRGBTexture:(id)texture flashBalancedRGBTexture:(id)bTexture strobeWeightedThumbnailRGBATexture:(id)aTexture flashWeightedThumbnailRGBATexture:(id)bATexture strobeIlluminationConfidenceRTexture:(id)rTexture flashToStrobeIntensityFusionMixFactor:(float)factor outputStrobeFusedBalancedRGBTexture:(id)self0;
- (int)_encodeGaussianFilteringWithLikelihoodWeightingHorizontalCalculate:(id)calculate inputRGBATexture:(id)texture gaussianSigma:(float)sigma sigmaToFilterScale:(float)scale outputRGBATexture:(id)aTexture;
- (int)_encodeGaussianFilteringWithLikelihoodWeightingVerticalCalculate:(id)calculate inputRGBATexture:(id)texture gaussianSigma:(float)sigma sigmaToFilterScale:(float)scale outputRGBATexture:(id)aTexture;
- (int)_encodeThumbnailBoxWithConfidenceWeightingCalculate:(id)calculate inputRGBTexture:(id)texture inputConfidenceWeightingRTexture:(id)rTexture minimumConfidenceWeight:(float)weight outputWeightedRGBATexture:(id)aTexture;
- (int)applyWhiteBalanceAndFlashFusion:(id)fusion strobeSensorRGBTexture:(id)texture flashBalancedRGBTexture:(id)bTexture strobeIlluminationConfidenceRTexture:(id)rTexture strobeWhitePoint:(id)point outputStrobeBalancedRGBTexture:;
- (int)encodeWhiteBalanceStrobeApply:(id)apply strobeSensorRGBTexture:(id)texture strobeWhitePoint:(id)point outputStrobeBalancedRGBTexture:;
- (int)prepareToProcessWithConfig:(id)config;
- (int)purgeResources;
@end

@implementation CMIColourConstancyWhiteBalanceStrobeV1

- (CMIColourConstancyWhiteBalanceStrobeV1)initWithMetalContext:(id)context
{
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = CMIColourConstancyWhiteBalanceStrobeV1;
  v6 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)&v20 init];
  v7 = v6;
  if (!v6)
  {
    sub_1C7F4();
LABEL_17:
    v18 = 0;
    goto LABEL_9;
  }

  if (!contextCopy)
  {
    sub_1C77C();
    goto LABEL_17;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v8 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::applyWhiteBalanceStrobeV1" constants:0];
  applyWhiteBalanceStrobePipelineState = v7->_applyWhiteBalanceStrobePipelineState;
  v7->_applyWhiteBalanceStrobePipelineState = v8;

  if (!v7->_applyWhiteBalanceStrobePipelineState)
  {
    sub_1C704();
    goto LABEL_17;
  }

  v10 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateThumbnailBoxWithConfidenceWeightingV1" constants:0];
  calculateThumbnailBoxWithConfidenceWeightingPipelineState = v7->_calculateThumbnailBoxWithConfidenceWeightingPipelineState;
  v7->_calculateThumbnailBoxWithConfidenceWeightingPipelineState = v10;

  if (!v7->_calculateThumbnailBoxWithConfidenceWeightingPipelineState)
  {
    sub_1C68C();
    goto LABEL_17;
  }

  v12 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateGaussianFilteringWithLikelihoodWeightingHorizontalV1" constants:0];
  calculateGaussianFilteringWithLikelihoodWeightingHorizontalPipelineState = v7->_calculateGaussianFilteringWithLikelihoodWeightingHorizontalPipelineState;
  v7->_calculateGaussianFilteringWithLikelihoodWeightingHorizontalPipelineState = v12;

  if (!v7->_calculateGaussianFilteringWithLikelihoodWeightingHorizontalPipelineState)
  {
    sub_1C614();
    goto LABEL_17;
  }

  v14 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateGaussianFilteringWithLikelihoodWeightingVerticalV1" constants:0];
  calculateGaussianFilteringWithLikelihoodWeightingVerticalPipelineState = v7->_calculateGaussianFilteringWithLikelihoodWeightingVerticalPipelineState;
  v7->_calculateGaussianFilteringWithLikelihoodWeightingVerticalPipelineState = v14;

  if (!v7->_calculateGaussianFilteringWithLikelihoodWeightingVerticalPipelineState)
  {
    sub_1C59C();
    goto LABEL_17;
  }

  v16 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::applyBrightnessAndWhiteBalanceMatchingFusionV1" constants:0];
  applyBrightnessAndWhiteBalanceMatchingFusionPipelineState = v7->_applyBrightnessAndWhiteBalanceMatchingFusionPipelineState;
  v7->_applyBrightnessAndWhiteBalanceMatchingFusionPipelineState = v16;

  if (!v7->_applyBrightnessAndWhiteBalanceMatchingFusionPipelineState)
  {
    sub_1C524();
    goto LABEL_17;
  }

  v18 = v7;
LABEL_9:

  return v18;
}

- (int)purgeResources
{
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  return 0;
}

- (int)prepareToProcessWithConfig:(id)config
{
  configCopy = config;
  if (!configCopy)
  {
    sub_1CAB0();
    newTextureDescriptor = 0;
    v30 = 8;
    goto LABEL_8;
  }

  objc_storeStrong(&self->_config, config);
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_1CA3C();
    v30 = 7;
    goto LABEL_8;
  }

  desc = [newTextureDescriptor desc];
  [desc setTextureType:2];

  thumbnailWidth = [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config thumbnailWidth];
  desc2 = [newTextureDescriptor desc];
  [desc2 setWidth:thumbnailWidth];

  thumbnailHeight = [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config thumbnailHeight];
  desc3 = [newTextureDescriptor desc];
  [desc3 setHeight:thumbnailHeight];

  desc4 = [newTextureDescriptor desc];
  [desc4 setPixelFormat:115];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metalContext allocator];
  v15 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  strobeBalancedRGBTexture = self->_strobeBalancedRGBTexture;
  self->_strobeBalancedRGBTexture = v15;

  if (!self->_strobeBalancedRGBTexture)
  {
    sub_1C9C8();
LABEL_15:
    v30 = 6;
    goto LABEL_8;
  }

  balanceMatchingThumbnailWidth = [configCopy balanceMatchingThumbnailWidth];
  desc5 = [newTextureDescriptor desc];
  [desc5 setWidth:balanceMatchingThumbnailWidth];

  balanceMatchingThumbnailHeight = [configCopy balanceMatchingThumbnailHeight];
  desc6 = [newTextureDescriptor desc];
  [desc6 setHeight:balanceMatchingThumbnailHeight];

  [newTextureDescriptor setLabel:0];
  allocator3 = [(FigMetalContext *)self->_metalContext allocator];
  v22 = [allocator3 newTextureWithDescriptor:newTextureDescriptor];
  strobeWeightedThumbnailRGBATexture = self->_strobeWeightedThumbnailRGBATexture;
  self->_strobeWeightedThumbnailRGBATexture = v22;

  if (!self->_strobeWeightedThumbnailRGBATexture)
  {
    sub_1C954();
    goto LABEL_15;
  }

  [newTextureDescriptor setLabel:0];
  allocator4 = [(FigMetalContext *)self->_metalContext allocator];
  v25 = [allocator4 newTextureWithDescriptor:newTextureDescriptor];
  flashWeightedThumbnailRGBATexture = self->_flashWeightedThumbnailRGBATexture;
  self->_flashWeightedThumbnailRGBATexture = v25;

  if (!self->_flashWeightedThumbnailRGBATexture)
  {
    sub_1C8E0();
    goto LABEL_15;
  }

  [newTextureDescriptor setLabel:0];
  allocator5 = [(FigMetalContext *)self->_metalContext allocator];
  v28 = [allocator5 newTextureWithDescriptor:newTextureDescriptor];
  thumbnailBlurIntermediateRGBATexture = self->_thumbnailBlurIntermediateRGBATexture;
  self->_thumbnailBlurIntermediateRGBATexture = v28;

  if (!self->_thumbnailBlurIntermediateRGBATexture)
  {
    sub_1C86C();
    goto LABEL_15;
  }

  v30 = 0;
LABEL_8:

  return v30;
}

- (int)encodeWhiteBalanceStrobeApply:(id)apply strobeSensorRGBTexture:(id)texture strobeWhitePoint:(id)point outputStrobeBalancedRGBTexture:
{
  v18 = v5;
  applyCopy = apply;
  textureCopy = texture;
  v21 = v18;
  pointCopy = point;
  if (!applyCopy)
  {
    sub_1CB98();
LABEL_7:
    v16 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [applyCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_1CB24();
    goto LABEL_7;
  }

  v13 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_applyWhiteBalanceStrobePipelineState];
  [v13 setTexture:textureCopy atIndex:0];
  [v13 setTexture:pointCopy atIndex:1];
  [v13 setBytes:&v21 length:16 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_applyWhiteBalanceStrobePipelineState threadExecutionWidth];
  v15 = [(MTLComputePipelineState *)self->_applyWhiteBalanceStrobePipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v20[0] = [pointCopy width];
  v20[1] = [pointCopy height];
  v20[2] = 1;
  v19[0] = threadExecutionWidth;
  v19[1] = v15;
  v19[2] = 1;
  [v13 dispatchThreads:v20 threadsPerThreadgroup:v19];
  [v13 endEncoding];

  v16 = 0;
LABEL_4:

  return v16;
}

- (int)_encodeThumbnailBoxWithConfidenceWeightingCalculate:(id)calculate inputRGBTexture:(id)texture inputConfidenceWeightingRTexture:(id)rTexture minimumConfidenceWeight:(float)weight outputWeightedRGBATexture:(id)aTexture
{
  calculateCopy = calculate;
  textureCopy = texture;
  rTextureCopy = rTexture;
  weightCopy = weight;
  aTextureCopy = aTexture;
  if (!calculateCopy)
  {
    sub_1CC80();
LABEL_7:
    v20 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [calculateCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_1CC0C();
    goto LABEL_7;
  }

  v17 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_calculateThumbnailBoxWithConfidenceWeightingPipelineState];
  [v17 setTexture:textureCopy atIndex:0];
  [v17 setTexture:rTextureCopy atIndex:1];
  [v17 setTexture:aTextureCopy atIndex:2];
  [v17 setBytes:&weightCopy length:4 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_calculateThumbnailBoxWithConfidenceWeightingPipelineState threadExecutionWidth];
  v19 = [(MTLComputePipelineState *)self->_calculateThumbnailBoxWithConfidenceWeightingPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v23[0] = [aTextureCopy width];
  v23[1] = [aTextureCopy height];
  v23[2] = 1;
  v22[0] = threadExecutionWidth;
  v22[1] = v19;
  v22[2] = 1;
  [v17 dispatchThreads:v23 threadsPerThreadgroup:v22];
  [v17 endEncoding];

  v20 = 0;
LABEL_4:

  return v20;
}

- (int)_encodeGaussianFilteringWithLikelihoodWeightingHorizontalCalculate:(id)calculate inputRGBATexture:(id)texture gaussianSigma:(float)sigma sigmaToFilterScale:(float)scale outputRGBATexture:(id)aTexture
{
  calculateCopy = calculate;
  textureCopy = texture;
  scaleCopy = scale;
  sigmaCopy = sigma;
  aTextureCopy = aTexture;
  if (!calculateCopy)
  {
    sub_1CD68();
LABEL_7:
    v19 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [calculateCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_1CCF4();
    goto LABEL_7;
  }

  v16 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_calculateGaussianFilteringWithLikelihoodWeightingHorizontalPipelineState];
  [v16 setTexture:textureCopy atIndex:0];
  [v16 setTexture:aTextureCopy atIndex:1];
  [v16 setBytes:&sigmaCopy length:4 atIndex:0];
  [v16 setBytes:&scaleCopy length:4 atIndex:1];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_calculateGaussianFilteringWithLikelihoodWeightingHorizontalPipelineState threadExecutionWidth];
  v18 = [(MTLComputePipelineState *)self->_calculateGaussianFilteringWithLikelihoodWeightingHorizontalPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v22[0] = [aTextureCopy width];
  v22[1] = [aTextureCopy height];
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

- (int)_encodeGaussianFilteringWithLikelihoodWeightingVerticalCalculate:(id)calculate inputRGBATexture:(id)texture gaussianSigma:(float)sigma sigmaToFilterScale:(float)scale outputRGBATexture:(id)aTexture
{
  calculateCopy = calculate;
  textureCopy = texture;
  scaleCopy = scale;
  sigmaCopy = sigma;
  aTextureCopy = aTexture;
  if (!calculateCopy)
  {
    sub_1CE50();
LABEL_7:
    v19 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [calculateCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_1CDDC();
    goto LABEL_7;
  }

  v16 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_calculateGaussianFilteringWithLikelihoodWeightingVerticalPipelineState];
  [v16 setTexture:textureCopy atIndex:0];
  [v16 setTexture:aTextureCopy atIndex:1];
  [v16 setBytes:&sigmaCopy length:4 atIndex:0];
  [v16 setBytes:&scaleCopy length:4 atIndex:1];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_calculateGaussianFilteringWithLikelihoodWeightingVerticalPipelineState threadExecutionWidth];
  v18 = [(MTLComputePipelineState *)self->_calculateGaussianFilteringWithLikelihoodWeightingVerticalPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v22[0] = [aTextureCopy width];
  v22[1] = [aTextureCopy height];
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

- (int)_encodeBrightnessAndWhiteBalanceMatchingFusionApply:(id)apply strobeBalancedRGBTexture:(id)texture flashBalancedRGBTexture:(id)bTexture strobeWeightedThumbnailRGBATexture:(id)aTexture flashWeightedThumbnailRGBATexture:(id)bATexture strobeIlluminationConfidenceRTexture:(id)rTexture flashToStrobeIntensityFusionMixFactor:(float)factor outputStrobeFusedBalancedRGBTexture:(id)self0
{
  applyCopy = apply;
  textureCopy = texture;
  bTextureCopy = bTexture;
  aTextureCopy = aTexture;
  bATextureCopy = bATexture;
  rTextureCopy = rTexture;
  factorCopy = factor;
  gBTextureCopy = gBTexture;
  if (!applyCopy)
  {
    sub_1CF38();
LABEL_7:
    v33 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [applyCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_1CEC4();
    goto LABEL_7;
  }

  v25 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_applyBrightnessAndWhiteBalanceMatchingFusionPipelineState];
  [v25 setTexture:textureCopy atIndex:0];
  v35 = textureCopy;
  [v25 setTexture:bTextureCopy atIndex:1];
  [v25 setTexture:aTextureCopy atIndex:2];
  [v25 setTexture:bATextureCopy atIndex:3];
  [v25 setTexture:rTextureCopy atIndex:4];
  [v25 setTexture:gBTextureCopy atIndex:5];
  [v25 setBytes:&factorCopy length:4 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_applyBrightnessAndWhiteBalanceMatchingFusionPipelineState threadExecutionWidth];
  v27 = applyCopy;
  v28 = rTextureCopy;
  v29 = bATextureCopy;
  v30 = aTextureCopy;
  v31 = bTextureCopy;
  v32 = [(MTLComputePipelineState *)self->_applyBrightnessAndWhiteBalanceMatchingFusionPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v37[0] = [gBTextureCopy width];
  v37[1] = [gBTextureCopy height];
  v37[2] = 1;
  v36[0] = threadExecutionWidth;
  v36[1] = v32;
  bTextureCopy = v31;
  aTextureCopy = v30;
  bATextureCopy = v29;
  rTextureCopy = v28;
  applyCopy = v27;
  v36[2] = 1;
  textureCopy = v35;
  [v25 dispatchThreads:v37 threadsPerThreadgroup:v36];
  [v25 endEncoding];

  v33 = 0;
LABEL_4:

  return v33;
}

- (int)applyWhiteBalanceAndFlashFusion:(id)fusion strobeSensorRGBTexture:(id)texture flashBalancedRGBTexture:(id)bTexture strobeIlluminationConfidenceRTexture:(id)rTexture strobeWhitePoint:(id)point outputStrobeBalancedRGBTexture:
{
  v55 = v7;
  fusionCopy = fusion;
  bTextureCopy = bTexture;
  rTextureCopy = rTexture;
  pointCopy = point;
  config = self->_config;
  textureCopy = texture;
  if ([(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)config lowStrobeIlluminationFlashFusionEnabled])
  {
    v19 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self encodeWhiteBalanceStrobeApply:fusionCopy strobeSensorRGBTexture:textureCopy strobeWhitePoint:self->_strobeBalancedRGBTexture outputStrobeBalancedRGBTexture:v55];

    if (v19)
    {
      sub_1D024();
    }

    else
    {
      strobeBalancedRGBTexture = self->_strobeBalancedRGBTexture;
      [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config balanceMatchingMinimumConfidenceWeight];
      v21 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self _encodeThumbnailBoxWithConfidenceWeightingCalculate:fusionCopy inputRGBTexture:strobeBalancedRGBTexture inputConfidenceWeightingRTexture:rTextureCopy minimumConfidenceWeight:self->_strobeWeightedThumbnailRGBATexture outputWeightedRGBATexture:?];
      if (v21)
      {
        v19 = v21;
        sub_1D09C();
      }

      else
      {
        [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config balanceMatchingMinimumConfidenceWeight];
        v22 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self _encodeThumbnailBoxWithConfidenceWeightingCalculate:fusionCopy inputRGBTexture:bTextureCopy inputConfidenceWeightingRTexture:rTextureCopy minimumConfidenceWeight:self->_flashWeightedThumbnailRGBATexture outputWeightedRGBATexture:?];
        if (v22)
        {
          v19 = v22;
          sub_1D114();
        }

        else
        {
          strobeWeightedThumbnailRGBATexture = self->_strobeWeightedThumbnailRGBATexture;
          [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config balanceMatchingGaussianSigma];
          v25 = v24;
          [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config balanceMatchingSigmaToFilterScale];
          LODWORD(v27) = v26;
          LODWORD(v28) = v25;
          v29 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self _encodeGaussianFilteringWithLikelihoodWeightingHorizontalCalculate:fusionCopy inputRGBATexture:strobeWeightedThumbnailRGBATexture gaussianSigma:self->_thumbnailBlurIntermediateRGBATexture sigmaToFilterScale:v28 outputRGBATexture:v27];
          if (v29)
          {
            v19 = v29;
            sub_1D18C();
          }

          else
          {
            thumbnailBlurIntermediateRGBATexture = self->_thumbnailBlurIntermediateRGBATexture;
            [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config balanceMatchingGaussianSigma];
            v32 = v31;
            [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config balanceMatchingSigmaToFilterScale];
            LODWORD(v34) = v33;
            LODWORD(v35) = v32;
            v36 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self _encodeGaussianFilteringWithLikelihoodWeightingVerticalCalculate:fusionCopy inputRGBATexture:thumbnailBlurIntermediateRGBATexture gaussianSigma:self->_strobeWeightedThumbnailRGBATexture sigmaToFilterScale:v35 outputRGBATexture:v34];
            if (v36)
            {
              v19 = v36;
              sub_1D204();
            }

            else
            {
              flashWeightedThumbnailRGBATexture = self->_flashWeightedThumbnailRGBATexture;
              [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config balanceMatchingGaussianSigma];
              v39 = v38;
              [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config balanceMatchingSigmaToFilterScale];
              LODWORD(v41) = v40;
              LODWORD(v42) = v39;
              v43 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self _encodeGaussianFilteringWithLikelihoodWeightingHorizontalCalculate:fusionCopy inputRGBATexture:flashWeightedThumbnailRGBATexture gaussianSigma:self->_thumbnailBlurIntermediateRGBATexture sigmaToFilterScale:v42 outputRGBATexture:v41];
              if (v43)
              {
                v19 = v43;
                sub_1D27C();
              }

              else
              {
                v44 = self->_thumbnailBlurIntermediateRGBATexture;
                [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config balanceMatchingGaussianSigma];
                v46 = v45;
                [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config balanceMatchingSigmaToFilterScale];
                LODWORD(v48) = v47;
                LODWORD(v49) = v46;
                v50 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self _encodeGaussianFilteringWithLikelihoodWeightingVerticalCalculate:fusionCopy inputRGBATexture:v44 gaussianSigma:self->_flashWeightedThumbnailRGBATexture sigmaToFilterScale:v49 outputRGBATexture:v48];
                if (v50)
                {
                  v19 = v50;
                  sub_1D2F4();
                }

                else
                {
                  v51 = self->_strobeBalancedRGBTexture;
                  v52 = self->_strobeWeightedThumbnailRGBATexture;
                  v53 = self->_flashWeightedThumbnailRGBATexture;
                  [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config flashToStrobeIntensityFusionMixFactor];
                  v19 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self _encodeBrightnessAndWhiteBalanceMatchingFusionApply:fusionCopy strobeBalancedRGBTexture:v51 flashBalancedRGBTexture:bTextureCopy strobeWeightedThumbnailRGBATexture:v52 flashWeightedThumbnailRGBATexture:v53 strobeIlluminationConfidenceRTexture:rTextureCopy flashToStrobeIntensityFusionMixFactor:pointCopy outputStrobeFusedBalancedRGBTexture:?];
                  if (v19)
                  {
                    sub_1D36C();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v19 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self encodeWhiteBalanceStrobeApply:fusionCopy strobeSensorRGBTexture:textureCopy strobeWhitePoint:pointCopy outputStrobeBalancedRGBTexture:v55];

    if (v19)
    {
      sub_1CFAC();
    }
  }

  return v19;
}

@end