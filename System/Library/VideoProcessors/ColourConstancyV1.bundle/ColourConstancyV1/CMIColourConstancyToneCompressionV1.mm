@interface CMIColourConstancyToneCompressionV1
- (CMIColourConstancyToneCompressionV1)initWithMetalContext:(id)a3;
- (id)calculateToneCompressionCurve:(double)a3 strobeComponentRGBTexture:(double)a4 strobeCCM:(uint64_t)a5;
- (int)_clearHistogramBuffer:(id)a3 outputHistogramBuffer:(id)a4;
- (int)_encodeBalancedIntensityDensityHistogramCalculate:(id)a3 inputIntensityHistogramBuffer:(id)a4 histogramScaleFactor:(float)a5 balanceDenseToSparseExponentFactor:(float)a6 minimumProbabilityDensity:(float)a7 outputBalancedIntensityDensityHistogramTexture:(id)a8;
- (int)_encodeGaussianWeightedSupportApply:(id)a3 inputBalancedIntensityDensityHistogramTexture:(id)a4 kernelSupportGaussianSigma:(float)a5 sigmaToFilterScale:(float)a6 outputKernelWeightedIntensityDensityHistogramTexture:(id)a7;
- (int)_encodeToneCompressionCurveCalculate:(id)a3 inputKernelWeightedIntensityDensityHistogramTexture:(id)a4 outputToneCompressionCurveTexture:(id)a5;
- (int)prepareToProcessWithConfig:(id)a3;
- (int)purgeResources;
- (uint64_t)_encodeIntensityHistogramCalculate:(__n128)a3 strobeComponentRGBTexture:(__n128)a4 strobeCCM:(uint64_t)a5 numHistogramBins:(void *)a6 outputIntensityHistogramBuffer:(void *)a7;
@end

@implementation CMIColourConstancyToneCompressionV1

- (CMIColourConstancyToneCompressionV1)initWithMetalContext:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = CMIColourConstancyToneCompressionV1;
  v6 = [(CMIColourConstancyToneCompressionV1 *)&v18 init];
  v7 = v6;
  if (!v6)
  {
    sub_FB50();
LABEL_15:
    v16 = 0;
    goto LABEL_8;
  }

  if (!v5)
  {
    sub_FAD8();
    goto LABEL_15;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  v8 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateIntensityHistogramV1" constants:0];
  calculateIntensityHistogramPipelineState = v7->_calculateIntensityHistogramPipelineState;
  v7->_calculateIntensityHistogramPipelineState = v8;

  if (!v7->_calculateIntensityHistogramPipelineState)
  {
    sub_FA60();
    goto LABEL_15;
  }

  v10 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateBalancedIntensityDensityHistogramV1" constants:0];
  calculateBalancedIntensityDensityHistogramPipelineState = v7->_calculateBalancedIntensityDensityHistogramPipelineState;
  v7->_calculateBalancedIntensityDensityHistogramPipelineState = v10;

  if (!v7->_calculateBalancedIntensityDensityHistogramPipelineState)
  {
    sub_F9E8();
    goto LABEL_15;
  }

  v12 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::applyGaussianWeightedSupportV1" constants:0];
  applyGaussianWeightedSupportPipelineState = v7->_applyGaussianWeightedSupportPipelineState;
  v7->_applyGaussianWeightedSupportPipelineState = v12;

  if (!v7->_applyGaussianWeightedSupportPipelineState)
  {
    sub_F970();
    goto LABEL_15;
  }

  v14 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateToneCompressionCurveV1" constants:0];
  calculateToneCompressionCurvePipelineState = v7->_calculateToneCompressionCurvePipelineState;
  v7->_calculateToneCompressionCurvePipelineState = v14;

  if (!v7->_calculateToneCompressionCurvePipelineState)
  {
    sub_F8F8();
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
  FigMetalDecRef();
  FigMetalDecRef();
  return 0;
}

- (int)prepareToProcessWithConfig:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_FE80();
    v12 = 0;
    v7 = 0;
    v29 = 8;
    goto LABEL_9;
  }

  objc_storeStrong(&self->_config, a3);
  v6 = [(FigMetalContext *)self->_metalContext allocator];
  v7 = [v6 newBufferDescriptor];

  if (!v7)
  {
    sub_FE0C();
    v12 = 0;
LABEL_14:
    v29 = 7;
    goto LABEL_9;
  }

  [v7 setLength:{4 * -[CMIColourConstancyToneCompressionConfigurationV1 numIntensityHistogramBins](self->_config, "numIntensityHistogramBins")}];
  [v7 setOptions:0];
  [v7 setLabel:0];
  v8 = [(FigMetalContext *)self->_metalContext allocator];
  v9 = [v8 newBufferWithDescriptor:v7];
  intensityHistogramBuffer = self->_intensityHistogramBuffer;
  self->_intensityHistogramBuffer = v9;

  if (!self->_intensityHistogramBuffer)
  {
    sub_FD98();
    v12 = 0;
LABEL_18:
    v29 = 6;
    goto LABEL_9;
  }

  v11 = [(FigMetalContext *)self->_metalContext allocator];
  v12 = [v11 newTextureDescriptor];

  if (!v12)
  {
    sub_FD24();
    goto LABEL_14;
  }

  v13 = [v12 desc];
  [v13 setTextureType:0];

  v14 = [(CMIColourConstancyToneCompressionConfigurationV1 *)self->_config numIntensityHistogramBins];
  v15 = [v12 desc];
  [v15 setWidth:v14];

  v16 = [v12 desc];
  [v16 setHeight:1];

  v17 = [v12 desc];
  [v17 setPixelFormat:55];

  [v12 setLabel:0];
  v18 = [(FigMetalContext *)self->_metalContext allocator];
  v19 = [v18 newTextureWithDescriptor:v12];
  balancedIntensityDensityHistogramTexture = self->_balancedIntensityDensityHistogramTexture;
  self->_balancedIntensityDensityHistogramTexture = v19;

  if (!self->_balancedIntensityDensityHistogramTexture)
  {
    sub_FCB0();
    goto LABEL_18;
  }

  [v12 setLabel:0];
  v21 = [(FigMetalContext *)self->_metalContext allocator];
  v22 = [v21 newTextureWithDescriptor:v12];
  kernelWeightedIntensityDensityHistogramTexture = self->_kernelWeightedIntensityDensityHistogramTexture;
  self->_kernelWeightedIntensityDensityHistogramTexture = v22;

  if (!self->_kernelWeightedIntensityDensityHistogramTexture)
  {
    sub_FC3C();
    goto LABEL_18;
  }

  v24 = [(CMIColourConstancyToneCompressionConfigurationV1 *)self->_config numIntensityHistogramBins]+ 1;
  v25 = [v12 desc];
  [v25 setWidth:v24];

  [v12 setLabel:0];
  v26 = [(FigMetalContext *)self->_metalContext allocator];
  v27 = [v26 newTextureWithDescriptor:v12];
  toneCompressionCurveTexture = self->_toneCompressionCurveTexture;
  self->_toneCompressionCurveTexture = v27;

  if (!self->_toneCompressionCurveTexture)
  {
    sub_FBC8();
    goto LABEL_18;
  }

  v29 = 0;
LABEL_9:

  return v29;
}

- (int)_clearHistogramBuffer:(id)a3 outputHistogramBuffer:(id)a4
{
  v5 = a4;
  v6 = [a3 blitCommandEncoder];
  if (v6)
  {
    [v6 fillBuffer:v5 range:0 value:{objc_msgSend(v5, "length"), 0}];
    [v6 endEncoding];
    v7 = 0;
  }

  else
  {
    sub_FEF4();
    v7 = 10;
  }

  return v7;
}

- (uint64_t)_encodeIntensityHistogramCalculate:(__n128)a3 strobeComponentRGBTexture:(__n128)a4 strobeCCM:(uint64_t)a5 numHistogramBins:(void *)a6 outputIntensityHistogramBuffer:(void *)a7
{
  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v13 = a6;
  v14 = a7;
  v24 = a8;
  v15 = a9;
  if (!v13)
  {
    sub_FFDC();
LABEL_7:
    v20 = 10;
    goto LABEL_4;
  }

  v16 = [v13 computeCommandEncoder];
  if (!v16)
  {
    sub_FF68();
    goto LABEL_7;
  }

  v17 = v16;
  [v16 setComputePipelineState:*(a1 + 24)];
  [v17 setTexture:v14 atIndex:0];
  [v17 setBytes:v25 length:48 atIndex:0];
  [v17 setBytes:&v24 length:4 atIndex:1];
  [v17 setBuffer:v15 offset:0 atIndex:2];
  v18 = [*(a1 + 24) threadExecutionWidth];
  v19 = [*(a1 + 24) maxTotalThreadsPerThreadgroup] / v18;
  v23[0] = [v14 width];
  v23[1] = [v14 height];
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

- (int)_encodeBalancedIntensityDensityHistogramCalculate:(id)a3 inputIntensityHistogramBuffer:(id)a4 histogramScaleFactor:(float)a5 balanceDenseToSparseExponentFactor:(float)a6 minimumProbabilityDensity:(float)a7 outputBalancedIntensityDensityHistogramTexture:(id)a8
{
  v14 = a3;
  v15 = a4;
  v26 = a6;
  v27 = a5;
  v25 = a7;
  v16 = a8;
  if (!v14)
  {
    sub_100C4();
LABEL_7:
    v21 = 10;
    goto LABEL_4;
  }

  v17 = [v14 computeCommandEncoder];
  if (!v17)
  {
    sub_10050();
    goto LABEL_7;
  }

  v18 = v17;
  [v17 setComputePipelineState:self->_calculateBalancedIntensityDensityHistogramPipelineState];
  [v18 setBuffer:v15 offset:0 atIndex:0];
  [v18 setBytes:&v27 length:4 atIndex:1];
  [v18 setBytes:&v26 length:4 atIndex:2];
  [v18 setBytes:&v25 length:4 atIndex:3];
  [v18 setTexture:v16 atIndex:0];
  v19 = [(MTLComputePipelineState *)self->_calculateBalancedIntensityDensityHistogramPipelineState threadExecutionWidth];
  v20 = [(MTLComputePipelineState *)self->_calculateBalancedIntensityDensityHistogramPipelineState maxTotalThreadsPerThreadgroup]/ v19;
  v24[0] = [v16 width];
  v24[1] = [v16 height];
  v24[2] = 1;
  v23[0] = v19;
  v23[1] = v20;
  v23[2] = 1;
  [v18 dispatchThreads:v24 threadsPerThreadgroup:v23];
  [v18 endEncoding];

  v21 = 0;
LABEL_4:

  return v21;
}

- (int)_encodeGaussianWeightedSupportApply:(id)a3 inputBalancedIntensityDensityHistogramTexture:(id)a4 kernelSupportGaussianSigma:(float)a5 sigmaToFilterScale:(float)a6 outputKernelWeightedIntensityDensityHistogramTexture:(id)a7
{
  v12 = a3;
  v13 = a4;
  v23 = a6;
  v24 = a5;
  v14 = a7;
  if (!v12)
  {
    sub_101AC();
LABEL_7:
    v19 = 10;
    goto LABEL_4;
  }

  v15 = [v12 computeCommandEncoder];
  if (!v15)
  {
    sub_10138();
    goto LABEL_7;
  }

  v16 = v15;
  [v15 setComputePipelineState:self->_applyGaussianWeightedSupportPipelineState];
  [v16 setTexture:v13 atIndex:0];
  [v16 setTexture:v14 atIndex:1];
  [v16 setBytes:&v24 length:4 atIndex:0];
  [v16 setBytes:&v23 length:4 atIndex:1];
  v17 = [(MTLComputePipelineState *)self->_applyGaussianWeightedSupportPipelineState threadExecutionWidth];
  v18 = [(MTLComputePipelineState *)self->_applyGaussianWeightedSupportPipelineState maxTotalThreadsPerThreadgroup]/ v17;
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

- (int)_encodeToneCompressionCurveCalculate:(id)a3 inputKernelWeightedIntensityDensityHistogramTexture:(id)a4 outputToneCompressionCurveTexture:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    sub_10294();
LABEL_7:
    v15 = 10;
    goto LABEL_4;
  }

  v11 = [v8 computeCommandEncoder];
  if (!v11)
  {
    sub_10220();
    goto LABEL_7;
  }

  v12 = v11;
  [v11 setComputePipelineState:self->_calculateToneCompressionCurvePipelineState];
  [v12 setTexture:v9 atIndex:0];
  [v12 setTexture:v10 atIndex:1];
  v13 = [(MTLComputePipelineState *)self->_calculateToneCompressionCurvePipelineState threadExecutionWidth];
  v14 = [(MTLComputePipelineState *)self->_calculateToneCompressionCurvePipelineState maxTotalThreadsPerThreadgroup];
  v18 = vdupq_n_s64(1uLL);
  v19 = 1;
  v17[0] = v13;
  v17[1] = v14 / v13;
  v17[2] = 1;
  [v12 dispatchThreads:&v18 threadsPerThreadgroup:v17];
  [v12 endEncoding];

  v15 = 0;
LABEL_4:

  return v15;
}

- (id)calculateToneCompressionCurve:(double)a3 strobeComponentRGBTexture:(double)a4 strobeCCM:(uint64_t)a5
{
  v9 = a6;
  v10 = a7;
  v11 = [a1 _clearHistogramBuffer:v9 outputHistogramBuffer:*(a1 + 56)];
  if (v11)
  {
    v30 = v11;
    sub_10308();
  }

  else
  {
    v12 = [a1 _encodeIntensityHistogramCalculate:v9 strobeComponentRGBTexture:v10 strobeCCM:objc_msgSend(*(a1 + 16) numHistogramBins:"numIntensityHistogramBins") outputIntensityHistogramBuffer:{*(a1 + 56), a2, a3, a4}];
    if (v12)
    {
      v30 = v12;
      sub_10380();
    }

    else
    {
      v13 = [v10 width];
      v14 = ([v10 height] * v13);
      v15 = *(a1 + 56);
      [*(a1 + 16) balanceDenseToSparseExponentFactor];
      v17 = v16;
      [*(a1 + 16) minimumProbabilityDensity];
      LODWORD(v19) = v18;
      *&v20 = v14;
      LODWORD(v21) = v17;
      v22 = [a1 _encodeBalancedIntensityDensityHistogramCalculate:v9 inputIntensityHistogramBuffer:v15 histogramScaleFactor:*(a1 + 64) balanceDenseToSparseExponentFactor:v20 minimumProbabilityDensity:v21 outputBalancedIntensityDensityHistogramTexture:v19];
      if (v22)
      {
        v30 = v22;
        sub_103F8();
      }

      else
      {
        v23 = *(a1 + 64);
        [*(a1 + 16) kernelSupportGaussianSigma];
        v25 = v24;
        [*(a1 + 16) kernelSupportSigmaToFilterScale];
        LODWORD(v27) = v26;
        LODWORD(v28) = v25;
        v29 = [a1 _encodeGaussianWeightedSupportApply:v9 inputBalancedIntensityDensityHistogramTexture:v23 kernelSupportGaussianSigma:*(a1 + 72) sigmaToFilterScale:v28 outputKernelWeightedIntensityDensityHistogramTexture:v27];
        if (v29)
        {
          v30 = v29;
          sub_10470();
        }

        else
        {
          v30 = [a1 _encodeToneCompressionCurveCalculate:v9 inputKernelWeightedIntensityDensityHistogramTexture:*(a1 + 72) outputToneCompressionCurveTexture:*(a1 + 80)];
          if (v30)
          {
            sub_104E8();
          }
        }
      }
    }
  }

  return v30;
}

@end