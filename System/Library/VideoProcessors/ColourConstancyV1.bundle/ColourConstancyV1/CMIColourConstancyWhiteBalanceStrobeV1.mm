@interface CMIColourConstancyWhiteBalanceStrobeV1
- (CMIColourConstancyWhiteBalanceStrobeV1)initWithMetalContext:(id)a3;
- (int)_encodeBrightnessAndWhiteBalanceMatchingFusionApply:(id)a3 strobeBalancedRGBTexture:(id)a4 flashBalancedRGBTexture:(id)a5 strobeWeightedThumbnailRGBATexture:(id)a6 flashWeightedThumbnailRGBATexture:(id)a7 strobeIlluminationConfidenceRTexture:(id)a8 flashToStrobeIntensityFusionMixFactor:(float)a9 outputStrobeFusedBalancedRGBTexture:(id)a10;
- (int)_encodeGaussianFilteringWithLikelihoodWeightingHorizontalCalculate:(id)a3 inputRGBATexture:(id)a4 gaussianSigma:(float)a5 sigmaToFilterScale:(float)a6 outputRGBATexture:(id)a7;
- (int)_encodeGaussianFilteringWithLikelihoodWeightingVerticalCalculate:(id)a3 inputRGBATexture:(id)a4 gaussianSigma:(float)a5 sigmaToFilterScale:(float)a6 outputRGBATexture:(id)a7;
- (int)_encodeThumbnailBoxWithConfidenceWeightingCalculate:(id)a3 inputRGBTexture:(id)a4 inputConfidenceWeightingRTexture:(id)a5 minimumConfidenceWeight:(float)a6 outputWeightedRGBATexture:(id)a7;
- (int)applyWhiteBalanceAndFlashFusion:(id)a3 strobeSensorRGBTexture:(id)a4 flashBalancedRGBTexture:(id)a5 strobeIlluminationConfidenceRTexture:(id)a6 strobeWhitePoint:(id)a7 outputStrobeBalancedRGBTexture:;
- (int)encodeWhiteBalanceStrobeApply:(id)a3 strobeSensorRGBTexture:(id)a4 strobeWhitePoint:(id)a5 outputStrobeBalancedRGBTexture:;
- (int)prepareToProcessWithConfig:(id)a3;
- (int)purgeResources;
@end

@implementation CMIColourConstancyWhiteBalanceStrobeV1

- (CMIColourConstancyWhiteBalanceStrobeV1)initWithMetalContext:(id)a3
{
  v5 = a3;
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

  if (!v5)
  {
    sub_1C77C();
    goto LABEL_17;
  }

  objc_storeStrong(&v6->_metalContext, a3);
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

- (int)prepareToProcessWithConfig:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_1CAB0();
    v7 = 0;
    v30 = 8;
    goto LABEL_8;
  }

  objc_storeStrong(&self->_config, a3);
  v6 = [(FigMetalContext *)self->_metalContext allocator];
  v7 = [v6 newTextureDescriptor];

  if (!v7)
  {
    sub_1CA3C();
    v30 = 7;
    goto LABEL_8;
  }

  v8 = [v7 desc];
  [v8 setTextureType:2];

  v9 = [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config thumbnailWidth];
  v10 = [v7 desc];
  [v10 setWidth:v9];

  v11 = [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config thumbnailHeight];
  v12 = [v7 desc];
  [v12 setHeight:v11];

  v13 = [v7 desc];
  [v13 setPixelFormat:115];

  [v7 setLabel:0];
  v14 = [(FigMetalContext *)self->_metalContext allocator];
  v15 = [v14 newTextureWithDescriptor:v7];
  strobeBalancedRGBTexture = self->_strobeBalancedRGBTexture;
  self->_strobeBalancedRGBTexture = v15;

  if (!self->_strobeBalancedRGBTexture)
  {
    sub_1C9C8();
LABEL_15:
    v30 = 6;
    goto LABEL_8;
  }

  v17 = [v5 balanceMatchingThumbnailWidth];
  v18 = [v7 desc];
  [v18 setWidth:v17];

  v19 = [v5 balanceMatchingThumbnailHeight];
  v20 = [v7 desc];
  [v20 setHeight:v19];

  [v7 setLabel:0];
  v21 = [(FigMetalContext *)self->_metalContext allocator];
  v22 = [v21 newTextureWithDescriptor:v7];
  strobeWeightedThumbnailRGBATexture = self->_strobeWeightedThumbnailRGBATexture;
  self->_strobeWeightedThumbnailRGBATexture = v22;

  if (!self->_strobeWeightedThumbnailRGBATexture)
  {
    sub_1C954();
    goto LABEL_15;
  }

  [v7 setLabel:0];
  v24 = [(FigMetalContext *)self->_metalContext allocator];
  v25 = [v24 newTextureWithDescriptor:v7];
  flashWeightedThumbnailRGBATexture = self->_flashWeightedThumbnailRGBATexture;
  self->_flashWeightedThumbnailRGBATexture = v25;

  if (!self->_flashWeightedThumbnailRGBATexture)
  {
    sub_1C8E0();
    goto LABEL_15;
  }

  [v7 setLabel:0];
  v27 = [(FigMetalContext *)self->_metalContext allocator];
  v28 = [v27 newTextureWithDescriptor:v7];
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

- (int)encodeWhiteBalanceStrobeApply:(id)a3 strobeSensorRGBTexture:(id)a4 strobeWhitePoint:(id)a5 outputStrobeBalancedRGBTexture:
{
  v18 = v5;
  v9 = a3;
  v10 = a4;
  v21 = v18;
  v11 = a5;
  if (!v9)
  {
    sub_1CB98();
LABEL_7:
    v16 = 10;
    goto LABEL_4;
  }

  v12 = [v9 computeCommandEncoder];
  if (!v12)
  {
    sub_1CB24();
    goto LABEL_7;
  }

  v13 = v12;
  [v12 setComputePipelineState:self->_applyWhiteBalanceStrobePipelineState];
  [v13 setTexture:v10 atIndex:0];
  [v13 setTexture:v11 atIndex:1];
  [v13 setBytes:&v21 length:16 atIndex:0];
  v14 = [(MTLComputePipelineState *)self->_applyWhiteBalanceStrobePipelineState threadExecutionWidth];
  v15 = [(MTLComputePipelineState *)self->_applyWhiteBalanceStrobePipelineState maxTotalThreadsPerThreadgroup]/ v14;
  v20[0] = [v11 width];
  v20[1] = [v11 height];
  v20[2] = 1;
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = 1;
  [v13 dispatchThreads:v20 threadsPerThreadgroup:v19];
  [v13 endEncoding];

  v16 = 0;
LABEL_4:

  return v16;
}

- (int)_encodeThumbnailBoxWithConfidenceWeightingCalculate:(id)a3 inputRGBTexture:(id)a4 inputConfidenceWeightingRTexture:(id)a5 minimumConfidenceWeight:(float)a6 outputWeightedRGBATexture:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v24 = a6;
  v15 = a7;
  if (!v12)
  {
    sub_1CC80();
LABEL_7:
    v20 = 10;
    goto LABEL_4;
  }

  v16 = [v12 computeCommandEncoder];
  if (!v16)
  {
    sub_1CC0C();
    goto LABEL_7;
  }

  v17 = v16;
  [v16 setComputePipelineState:self->_calculateThumbnailBoxWithConfidenceWeightingPipelineState];
  [v17 setTexture:v13 atIndex:0];
  [v17 setTexture:v14 atIndex:1];
  [v17 setTexture:v15 atIndex:2];
  [v17 setBytes:&v24 length:4 atIndex:0];
  v18 = [(MTLComputePipelineState *)self->_calculateThumbnailBoxWithConfidenceWeightingPipelineState threadExecutionWidth];
  v19 = [(MTLComputePipelineState *)self->_calculateThumbnailBoxWithConfidenceWeightingPipelineState maxTotalThreadsPerThreadgroup]/ v18;
  v23[0] = [v15 width];
  v23[1] = [v15 height];
  v23[2] = 1;
  v22[0] = v18;
  v22[1] = v19;
  v22[2] = 1;
  [v17 dispatchThreads:v23 threadsPerThreadgroup:v22];
  [v17 endEncoding];

  v20 = 0;
LABEL_4:

  return v20;
}

- (int)_encodeGaussianFilteringWithLikelihoodWeightingHorizontalCalculate:(id)a3 inputRGBATexture:(id)a4 gaussianSigma:(float)a5 sigmaToFilterScale:(float)a6 outputRGBATexture:(id)a7
{
  v12 = a3;
  v13 = a4;
  v23 = a6;
  v24 = a5;
  v14 = a7;
  if (!v12)
  {
    sub_1CD68();
LABEL_7:
    v19 = 10;
    goto LABEL_4;
  }

  v15 = [v12 computeCommandEncoder];
  if (!v15)
  {
    sub_1CCF4();
    goto LABEL_7;
  }

  v16 = v15;
  [v15 setComputePipelineState:self->_calculateGaussianFilteringWithLikelihoodWeightingHorizontalPipelineState];
  [v16 setTexture:v13 atIndex:0];
  [v16 setTexture:v14 atIndex:1];
  [v16 setBytes:&v24 length:4 atIndex:0];
  [v16 setBytes:&v23 length:4 atIndex:1];
  v17 = [(MTLComputePipelineState *)self->_calculateGaussianFilteringWithLikelihoodWeightingHorizontalPipelineState threadExecutionWidth];
  v18 = [(MTLComputePipelineState *)self->_calculateGaussianFilteringWithLikelihoodWeightingHorizontalPipelineState maxTotalThreadsPerThreadgroup]/ v17;
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

- (int)_encodeGaussianFilteringWithLikelihoodWeightingVerticalCalculate:(id)a3 inputRGBATexture:(id)a4 gaussianSigma:(float)a5 sigmaToFilterScale:(float)a6 outputRGBATexture:(id)a7
{
  v12 = a3;
  v13 = a4;
  v23 = a6;
  v24 = a5;
  v14 = a7;
  if (!v12)
  {
    sub_1CE50();
LABEL_7:
    v19 = 10;
    goto LABEL_4;
  }

  v15 = [v12 computeCommandEncoder];
  if (!v15)
  {
    sub_1CDDC();
    goto LABEL_7;
  }

  v16 = v15;
  [v15 setComputePipelineState:self->_calculateGaussianFilteringWithLikelihoodWeightingVerticalPipelineState];
  [v16 setTexture:v13 atIndex:0];
  [v16 setTexture:v14 atIndex:1];
  [v16 setBytes:&v24 length:4 atIndex:0];
  [v16 setBytes:&v23 length:4 atIndex:1];
  v17 = [(MTLComputePipelineState *)self->_calculateGaussianFilteringWithLikelihoodWeightingVerticalPipelineState threadExecutionWidth];
  v18 = [(MTLComputePipelineState *)self->_calculateGaussianFilteringWithLikelihoodWeightingVerticalPipelineState maxTotalThreadsPerThreadgroup]/ v17;
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

- (int)_encodeBrightnessAndWhiteBalanceMatchingFusionApply:(id)a3 strobeBalancedRGBTexture:(id)a4 flashBalancedRGBTexture:(id)a5 strobeWeightedThumbnailRGBATexture:(id)a6 flashWeightedThumbnailRGBATexture:(id)a7 strobeIlluminationConfidenceRTexture:(id)a8 flashToStrobeIntensityFusionMixFactor:(float)a9 outputStrobeFusedBalancedRGBTexture:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v38 = a9;
  v23 = a10;
  if (!v17)
  {
    sub_1CF38();
LABEL_7:
    v33 = 10;
    goto LABEL_4;
  }

  v24 = [v17 computeCommandEncoder];
  if (!v24)
  {
    sub_1CEC4();
    goto LABEL_7;
  }

  v25 = v24;
  [v24 setComputePipelineState:self->_applyBrightnessAndWhiteBalanceMatchingFusionPipelineState];
  [v25 setTexture:v18 atIndex:0];
  v35 = v18;
  [v25 setTexture:v19 atIndex:1];
  [v25 setTexture:v20 atIndex:2];
  [v25 setTexture:v21 atIndex:3];
  [v25 setTexture:v22 atIndex:4];
  [v25 setTexture:v23 atIndex:5];
  [v25 setBytes:&v38 length:4 atIndex:0];
  v26 = [(MTLComputePipelineState *)self->_applyBrightnessAndWhiteBalanceMatchingFusionPipelineState threadExecutionWidth];
  v27 = v17;
  v28 = v22;
  v29 = v21;
  v30 = v20;
  v31 = v19;
  v32 = [(MTLComputePipelineState *)self->_applyBrightnessAndWhiteBalanceMatchingFusionPipelineState maxTotalThreadsPerThreadgroup]/ v26;
  v37[0] = [v23 width];
  v37[1] = [v23 height];
  v37[2] = 1;
  v36[0] = v26;
  v36[1] = v32;
  v19 = v31;
  v20 = v30;
  v21 = v29;
  v22 = v28;
  v17 = v27;
  v36[2] = 1;
  v18 = v35;
  [v25 dispatchThreads:v37 threadsPerThreadgroup:v36];
  [v25 endEncoding];

  v33 = 0;
LABEL_4:

  return v33;
}

- (int)applyWhiteBalanceAndFlashFusion:(id)a3 strobeSensorRGBTexture:(id)a4 flashBalancedRGBTexture:(id)a5 strobeIlluminationConfidenceRTexture:(id)a6 strobeWhitePoint:(id)a7 outputStrobeBalancedRGBTexture:
{
  v55 = v7;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  config = self->_config;
  v18 = a4;
  if ([(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)config lowStrobeIlluminationFlashFusionEnabled])
  {
    v19 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self encodeWhiteBalanceStrobeApply:v13 strobeSensorRGBTexture:v18 strobeWhitePoint:self->_strobeBalancedRGBTexture outputStrobeBalancedRGBTexture:v55];

    if (v19)
    {
      sub_1D024();
    }

    else
    {
      strobeBalancedRGBTexture = self->_strobeBalancedRGBTexture;
      [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config balanceMatchingMinimumConfidenceWeight];
      v21 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self _encodeThumbnailBoxWithConfidenceWeightingCalculate:v13 inputRGBTexture:strobeBalancedRGBTexture inputConfidenceWeightingRTexture:v15 minimumConfidenceWeight:self->_strobeWeightedThumbnailRGBATexture outputWeightedRGBATexture:?];
      if (v21)
      {
        v19 = v21;
        sub_1D09C();
      }

      else
      {
        [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)self->_config balanceMatchingMinimumConfidenceWeight];
        v22 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self _encodeThumbnailBoxWithConfidenceWeightingCalculate:v13 inputRGBTexture:v14 inputConfidenceWeightingRTexture:v15 minimumConfidenceWeight:self->_flashWeightedThumbnailRGBATexture outputWeightedRGBATexture:?];
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
          v29 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self _encodeGaussianFilteringWithLikelihoodWeightingHorizontalCalculate:v13 inputRGBATexture:strobeWeightedThumbnailRGBATexture gaussianSigma:self->_thumbnailBlurIntermediateRGBATexture sigmaToFilterScale:v28 outputRGBATexture:v27];
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
            v36 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self _encodeGaussianFilteringWithLikelihoodWeightingVerticalCalculate:v13 inputRGBATexture:thumbnailBlurIntermediateRGBATexture gaussianSigma:self->_strobeWeightedThumbnailRGBATexture sigmaToFilterScale:v35 outputRGBATexture:v34];
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
              v43 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self _encodeGaussianFilteringWithLikelihoodWeightingHorizontalCalculate:v13 inputRGBATexture:flashWeightedThumbnailRGBATexture gaussianSigma:self->_thumbnailBlurIntermediateRGBATexture sigmaToFilterScale:v42 outputRGBATexture:v41];
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
                v50 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self _encodeGaussianFilteringWithLikelihoodWeightingVerticalCalculate:v13 inputRGBATexture:v44 gaussianSigma:self->_flashWeightedThumbnailRGBATexture sigmaToFilterScale:v49 outputRGBATexture:v48];
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
                  v19 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self _encodeBrightnessAndWhiteBalanceMatchingFusionApply:v13 strobeBalancedRGBTexture:v51 flashBalancedRGBTexture:v14 strobeWeightedThumbnailRGBATexture:v52 flashWeightedThumbnailRGBATexture:v53 strobeIlluminationConfidenceRTexture:v15 flashToStrobeIntensityFusionMixFactor:v16 outputStrobeFusedBalancedRGBTexture:?];
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
    v19 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)self encodeWhiteBalanceStrobeApply:v13 strobeSensorRGBTexture:v18 strobeWhitePoint:v16 outputStrobeBalancedRGBTexture:v55];

    if (v19)
    {
      sub_1CFAC();
    }
  }

  return v19;
}

@end