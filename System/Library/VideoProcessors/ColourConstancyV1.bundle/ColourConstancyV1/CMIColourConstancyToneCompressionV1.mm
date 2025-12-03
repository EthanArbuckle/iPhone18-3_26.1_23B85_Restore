@interface CMIColourConstancyToneCompressionV1
- (CMIColourConstancyToneCompressionV1)initWithMetalContext:(id)context;
- (id)calculateToneCompressionCurve:(double)curve strobeComponentRGBTexture:(double)texture strobeCCM:(uint64_t)m;
- (int)_clearHistogramBuffer:(id)buffer outputHistogramBuffer:(id)histogramBuffer;
- (int)_encodeBalancedIntensityDensityHistogramCalculate:(id)calculate inputIntensityHistogramBuffer:(id)buffer histogramScaleFactor:(float)factor balanceDenseToSparseExponentFactor:(float)exponentFactor minimumProbabilityDensity:(float)density outputBalancedIntensityDensityHistogramTexture:(id)texture;
- (int)_encodeGaussianWeightedSupportApply:(id)apply inputBalancedIntensityDensityHistogramTexture:(id)texture kernelSupportGaussianSigma:(float)sigma sigmaToFilterScale:(float)scale outputKernelWeightedIntensityDensityHistogramTexture:(id)histogramTexture;
- (int)_encodeToneCompressionCurveCalculate:(id)calculate inputKernelWeightedIntensityDensityHistogramTexture:(id)texture outputToneCompressionCurveTexture:(id)curveTexture;
- (int)prepareToProcessWithConfig:(id)config;
- (int)purgeResources;
- (uint64_t)_encodeIntensityHistogramCalculate:(__n128)calculate strobeComponentRGBTexture:(__n128)texture strobeCCM:(uint64_t)m numHistogramBins:(void *)bins outputIntensityHistogramBuffer:(void *)buffer;
@end

@implementation CMIColourConstancyToneCompressionV1

- (CMIColourConstancyToneCompressionV1)initWithMetalContext:(id)context
{
  contextCopy = context;
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

  if (!contextCopy)
  {
    sub_FAD8();
    goto LABEL_15;
  }

  objc_storeStrong(&v6->_metalContext, context);
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

- (int)prepareToProcessWithConfig:(id)config
{
  configCopy = config;
  if (!configCopy)
  {
    sub_FE80();
    newTextureDescriptor = 0;
    newBufferDescriptor = 0;
    v29 = 8;
    goto LABEL_9;
  }

  objc_storeStrong(&self->_config, config);
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newBufferDescriptor = [allocator newBufferDescriptor];

  if (!newBufferDescriptor)
  {
    sub_FE0C();
    newTextureDescriptor = 0;
LABEL_14:
    v29 = 7;
    goto LABEL_9;
  }

  [newBufferDescriptor setLength:{4 * -[CMIColourConstancyToneCompressionConfigurationV1 numIntensityHistogramBins](self->_config, "numIntensityHistogramBins")}];
  [newBufferDescriptor setOptions:0];
  [newBufferDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metalContext allocator];
  v9 = [allocator2 newBufferWithDescriptor:newBufferDescriptor];
  intensityHistogramBuffer = self->_intensityHistogramBuffer;
  self->_intensityHistogramBuffer = v9;

  if (!self->_intensityHistogramBuffer)
  {
    sub_FD98();
    newTextureDescriptor = 0;
LABEL_18:
    v29 = 6;
    goto LABEL_9;
  }

  allocator3 = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator3 newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_FD24();
    goto LABEL_14;
  }

  desc = [newTextureDescriptor desc];
  [desc setTextureType:0];

  numIntensityHistogramBins = [(CMIColourConstancyToneCompressionConfigurationV1 *)self->_config numIntensityHistogramBins];
  desc2 = [newTextureDescriptor desc];
  [desc2 setWidth:numIntensityHistogramBins];

  desc3 = [newTextureDescriptor desc];
  [desc3 setHeight:1];

  desc4 = [newTextureDescriptor desc];
  [desc4 setPixelFormat:55];

  [newTextureDescriptor setLabel:0];
  allocator4 = [(FigMetalContext *)self->_metalContext allocator];
  v19 = [allocator4 newTextureWithDescriptor:newTextureDescriptor];
  balancedIntensityDensityHistogramTexture = self->_balancedIntensityDensityHistogramTexture;
  self->_balancedIntensityDensityHistogramTexture = v19;

  if (!self->_balancedIntensityDensityHistogramTexture)
  {
    sub_FCB0();
    goto LABEL_18;
  }

  [newTextureDescriptor setLabel:0];
  allocator5 = [(FigMetalContext *)self->_metalContext allocator];
  v22 = [allocator5 newTextureWithDescriptor:newTextureDescriptor];
  kernelWeightedIntensityDensityHistogramTexture = self->_kernelWeightedIntensityDensityHistogramTexture;
  self->_kernelWeightedIntensityDensityHistogramTexture = v22;

  if (!self->_kernelWeightedIntensityDensityHistogramTexture)
  {
    sub_FC3C();
    goto LABEL_18;
  }

  v24 = [(CMIColourConstancyToneCompressionConfigurationV1 *)self->_config numIntensityHistogramBins]+ 1;
  desc5 = [newTextureDescriptor desc];
  [desc5 setWidth:v24];

  [newTextureDescriptor setLabel:0];
  allocator6 = [(FigMetalContext *)self->_metalContext allocator];
  v27 = [allocator6 newTextureWithDescriptor:newTextureDescriptor];
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

- (int)_clearHistogramBuffer:(id)buffer outputHistogramBuffer:(id)histogramBuffer
{
  histogramBufferCopy = histogramBuffer;
  blitCommandEncoder = [buffer blitCommandEncoder];
  if (blitCommandEncoder)
  {
    [blitCommandEncoder fillBuffer:histogramBufferCopy range:0 value:{objc_msgSend(histogramBufferCopy, "length"), 0}];
    [blitCommandEncoder endEncoding];
    v7 = 0;
  }

  else
  {
    sub_FEF4();
    v7 = 10;
  }

  return v7;
}

- (uint64_t)_encodeIntensityHistogramCalculate:(__n128)calculate strobeComponentRGBTexture:(__n128)texture strobeCCM:(uint64_t)m numHistogramBins:(void *)bins outputIntensityHistogramBuffer:(void *)buffer
{
  v25[0] = a2;
  v25[1] = calculate;
  v25[2] = texture;
  binsCopy = bins;
  bufferCopy = buffer;
  v24 = a8;
  v15 = a9;
  if (!binsCopy)
  {
    sub_FFDC();
LABEL_7:
    v20 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [binsCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_FF68();
    goto LABEL_7;
  }

  v17 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:*(self + 24)];
  [v17 setTexture:bufferCopy atIndex:0];
  [v17 setBytes:v25 length:48 atIndex:0];
  [v17 setBytes:&v24 length:4 atIndex:1];
  [v17 setBuffer:v15 offset:0 atIndex:2];
  threadExecutionWidth = [*(self + 24) threadExecutionWidth];
  v19 = [*(self + 24) maxTotalThreadsPerThreadgroup] / threadExecutionWidth;
  v23[0] = [bufferCopy width];
  v23[1] = [bufferCopy height];
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

- (int)_encodeBalancedIntensityDensityHistogramCalculate:(id)calculate inputIntensityHistogramBuffer:(id)buffer histogramScaleFactor:(float)factor balanceDenseToSparseExponentFactor:(float)exponentFactor minimumProbabilityDensity:(float)density outputBalancedIntensityDensityHistogramTexture:(id)texture
{
  calculateCopy = calculate;
  bufferCopy = buffer;
  exponentFactorCopy = exponentFactor;
  factorCopy = factor;
  densityCopy = density;
  textureCopy = texture;
  if (!calculateCopy)
  {
    sub_100C4();
LABEL_7:
    v21 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [calculateCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_10050();
    goto LABEL_7;
  }

  v18 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_calculateBalancedIntensityDensityHistogramPipelineState];
  [v18 setBuffer:bufferCopy offset:0 atIndex:0];
  [v18 setBytes:&factorCopy length:4 atIndex:1];
  [v18 setBytes:&exponentFactorCopy length:4 atIndex:2];
  [v18 setBytes:&densityCopy length:4 atIndex:3];
  [v18 setTexture:textureCopy atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_calculateBalancedIntensityDensityHistogramPipelineState threadExecutionWidth];
  v20 = [(MTLComputePipelineState *)self->_calculateBalancedIntensityDensityHistogramPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v24[0] = [textureCopy width];
  v24[1] = [textureCopy height];
  v24[2] = 1;
  v23[0] = threadExecutionWidth;
  v23[1] = v20;
  v23[2] = 1;
  [v18 dispatchThreads:v24 threadsPerThreadgroup:v23];
  [v18 endEncoding];

  v21 = 0;
LABEL_4:

  return v21;
}

- (int)_encodeGaussianWeightedSupportApply:(id)apply inputBalancedIntensityDensityHistogramTexture:(id)texture kernelSupportGaussianSigma:(float)sigma sigmaToFilterScale:(float)scale outputKernelWeightedIntensityDensityHistogramTexture:(id)histogramTexture
{
  applyCopy = apply;
  textureCopy = texture;
  scaleCopy = scale;
  sigmaCopy = sigma;
  histogramTextureCopy = histogramTexture;
  if (!applyCopy)
  {
    sub_101AC();
LABEL_7:
    v19 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [applyCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_10138();
    goto LABEL_7;
  }

  v16 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_applyGaussianWeightedSupportPipelineState];
  [v16 setTexture:textureCopy atIndex:0];
  [v16 setTexture:histogramTextureCopy atIndex:1];
  [v16 setBytes:&sigmaCopy length:4 atIndex:0];
  [v16 setBytes:&scaleCopy length:4 atIndex:1];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_applyGaussianWeightedSupportPipelineState threadExecutionWidth];
  v18 = [(MTLComputePipelineState *)self->_applyGaussianWeightedSupportPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v22[0] = [histogramTextureCopy width];
  v22[1] = [histogramTextureCopy height];
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

- (int)_encodeToneCompressionCurveCalculate:(id)calculate inputKernelWeightedIntensityDensityHistogramTexture:(id)texture outputToneCompressionCurveTexture:(id)curveTexture
{
  calculateCopy = calculate;
  textureCopy = texture;
  curveTextureCopy = curveTexture;
  if (!calculateCopy)
  {
    sub_10294();
LABEL_7:
    v15 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [calculateCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_10220();
    goto LABEL_7;
  }

  v12 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_calculateToneCompressionCurvePipelineState];
  [v12 setTexture:textureCopy atIndex:0];
  [v12 setTexture:curveTextureCopy atIndex:1];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_calculateToneCompressionCurvePipelineState threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_calculateToneCompressionCurvePipelineState maxTotalThreadsPerThreadgroup];
  v18 = vdupq_n_s64(1uLL);
  v19 = 1;
  v17[0] = threadExecutionWidth;
  v17[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v17[2] = 1;
  [v12 dispatchThreads:&v18 threadsPerThreadgroup:v17];
  [v12 endEncoding];

  v15 = 0;
LABEL_4:

  return v15;
}

- (id)calculateToneCompressionCurve:(double)curve strobeComponentRGBTexture:(double)texture strobeCCM:(uint64_t)m
{
  v9 = a6;
  v10 = a7;
  v11 = [self _clearHistogramBuffer:v9 outputHistogramBuffer:*(self + 56)];
  if (v11)
  {
    v30 = v11;
    sub_10308();
  }

  else
  {
    v12 = [self _encodeIntensityHistogramCalculate:v9 strobeComponentRGBTexture:v10 strobeCCM:objc_msgSend(*(self + 16) numHistogramBins:"numIntensityHistogramBins") outputIntensityHistogramBuffer:{*(self + 56), a2, curve, texture}];
    if (v12)
    {
      v30 = v12;
      sub_10380();
    }

    else
    {
      width = [v10 width];
      v14 = ([v10 height] * width);
      v15 = *(self + 56);
      [*(self + 16) balanceDenseToSparseExponentFactor];
      v17 = v16;
      [*(self + 16) minimumProbabilityDensity];
      LODWORD(v19) = v18;
      *&v20 = v14;
      LODWORD(v21) = v17;
      v22 = [self _encodeBalancedIntensityDensityHistogramCalculate:v9 inputIntensityHistogramBuffer:v15 histogramScaleFactor:*(self + 64) balanceDenseToSparseExponentFactor:v20 minimumProbabilityDensity:v21 outputBalancedIntensityDensityHistogramTexture:v19];
      if (v22)
      {
        v30 = v22;
        sub_103F8();
      }

      else
      {
        v23 = *(self + 64);
        [*(self + 16) kernelSupportGaussianSigma];
        v25 = v24;
        [*(self + 16) kernelSupportSigmaToFilterScale];
        LODWORD(v27) = v26;
        LODWORD(v28) = v25;
        v29 = [self _encodeGaussianWeightedSupportApply:v9 inputBalancedIntensityDensityHistogramTexture:v23 kernelSupportGaussianSigma:*(self + 72) sigmaToFilterScale:v28 outputKernelWeightedIntensityDensityHistogramTexture:v27];
        if (v29)
        {
          v30 = v29;
          sub_10470();
        }

        else
        {
          v30 = [self _encodeToneCompressionCurveCalculate:v9 inputKernelWeightedIntensityDensityHistogramTexture:*(self + 72) outputToneCompressionCurveTexture:*(self + 80)];
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