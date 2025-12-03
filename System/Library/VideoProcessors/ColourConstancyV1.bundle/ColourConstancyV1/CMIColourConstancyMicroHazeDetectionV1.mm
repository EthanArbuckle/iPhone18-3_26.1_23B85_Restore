@interface CMIColourConstancyMicroHazeDetectionV1
- (CMIColourConstancyMicroHazeDetectionV1)initWithMetalContext:(id)context;
- (int)_encodeClassifierMasksExtraction:(id)extraction inputAmbientIntensityTexture:(id)texture inputFlashIntensityTexture:(id)intensityTexture inputIntensityGainMapTexture:(id)mapTexture outputStrongerGradientsMaskTexture:(id)maskTexture outputPositiveIntensityMaskTexture:(id)intensityMaskTexture;
- (int)_encodeFusionMapExtraction:(id)extraction inputMixMapTexture:(id)texture inputShadowEdgeMaskTexture:(id)maskTexture gaussianFilterSize:(int)size gaussianSigma:(float)sigma outputFusionMapTexture:(id)mapTexture;
- (int)_encodeIntensityGainMapGeneration:(id)generation inputAmbientIntensityTexture:(id)texture inputGridTransformsTexture:(id)transformsTexture outputIntensityGainMapTexture:(id)mapTexture;
- (int)_encodeIntensityGainTransformsGeneration:(id)generation inputAmbientIntensityTexture:(id)texture inputTargetGainTexture:(id)gainTexture inputWeightMapTexture:(id)mapTexture gridRegionScale:(float)scale bandingMinWeight:(float)weight bandingGaussianSigmaScale:(float)sigmaScale filterToSigmaScale:(float)self0 spatialGaussianSigmaScale:(float)self1 outputGridTransformsTexture:(id)self2;
- (int)_encodeIntensityImageGeneration:(id)generation inputAmbientTexture:(id)texture inputFlashTexture:(id)flashTexture outputAmbientIntensityTexture:(id)intensityTexture outputFlashIntensityTexture:(id)flashIntensityTexture outputTargetGainTexture:(id)gainTexture outputWeightMapTexture:(id)mapTexture;
- (int)_encodeMicroHazeFusionMapExtraction:(id)extraction inputAmbientTexture:(id)texture inputFlashTexture:(id)flashTexture outputFusionMapTexture:(id)mapTexture;
- (int)_encodeMixMapGeneration:(id)generation inputAmbientTexture:(id)texture inputFlashTexture:(id)flashTexture inputIntensityGainMapTexture:(id)mapTexture inputStrongerGradientsMaskTexture:(id)maskTexture inputPositiveIntensityMaskTexture:(id)intensityMaskTexture strongGradientsMaskResponseGain:(float)gain strongGradientsMaskResponseBias:(float)self0 strongGradientsMaskResponseExponent:(float)self1 positiveIntensityMaskResponseGain:(float)self2 positiveIntensityMaskResponseBias:(float)self3 positiveIntensityMaskResponseExponent:(float)self4 maskFusionGain:(float)self5 maskFusionMixFactor:(float)self6 ambientQualityMinGain:(float)self7 ambientQualityMaxGain:(float)self8 ambientQualityZeroThreshold:(float)self9 ambientQualityOneThreshold:(float)oneThreshold outputMixMapTexture:(id)mixMapTexture;
- (int)_encodeShadowEdgeMapExtraction:(id)extraction inputIntensityGainMapTexture:(id)texture shadowEdgesResponseGain:(float)gain shadowEdgesResponseExponent:(float)exponent outputShadowEdgeMaskTexture:(id)maskTexture;
- (int)microHazeFusionMapExtraction:(id)extraction inputAmbientTexture:(id)texture inputFlashTexture:(id)flashTexture outputFusionMapTexture:(id)mapTexture;
- (int)prepareToProcessWithConfig:(id)config;
- (int)purgeResources;
@end

@implementation CMIColourConstancyMicroHazeDetectionV1

- (CMIColourConstancyMicroHazeDetectionV1)initWithMetalContext:(id)context
{
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = CMIColourConstancyMicroHazeDetectionV1;
  v6 = [(CMIColourConstancyMicroHazeDetectionV1 *)&v24 init];
  v7 = v6;
  if (!v6)
  {
    sub_12D9C();
LABEL_21:
    v22 = 0;
    goto LABEL_11;
  }

  if (!contextCopy)
  {
    sub_12D24();
    goto LABEL_21;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v8 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::intensityImageGeneration" constants:0];
  intensityImageGenerationPipelineState = v7->_intensityImageGenerationPipelineState;
  v7->_intensityImageGenerationPipelineState = v8;

  if (!v7->_intensityImageGenerationPipelineState)
  {
    sub_12CAC();
    goto LABEL_21;
  }

  v10 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::intensityGainTransformsGeneration" constants:0];
  intensityGainTransformsGenerationPipelineState = v7->_intensityGainTransformsGenerationPipelineState;
  v7->_intensityGainTransformsGenerationPipelineState = v10;

  if (!v7->_intensityGainTransformsGenerationPipelineState)
  {
    sub_12C34();
    goto LABEL_21;
  }

  v12 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::intensityGainMapGeneration" constants:0];
  intensityGainMapGenerationPipelineState = v7->_intensityGainMapGenerationPipelineState;
  v7->_intensityGainMapGenerationPipelineState = v12;

  if (!v7->_intensityGainMapGenerationPipelineState)
  {
    sub_12BBC();
    goto LABEL_21;
  }

  v14 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::classifierMasksExtraction" constants:0];
  classifierMasksExtractionPipelineState = v7->_classifierMasksExtractionPipelineState;
  v7->_classifierMasksExtractionPipelineState = v14;

  if (!v7->_classifierMasksExtractionPipelineState)
  {
    sub_12B44();
    goto LABEL_21;
  }

  v16 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::mixMapGeneration" constants:0];
  mixMapGenerationPipelineState = v7->_mixMapGenerationPipelineState;
  v7->_mixMapGenerationPipelineState = v16;

  if (!v7->_mixMapGenerationPipelineState)
  {
    sub_12ACC();
    goto LABEL_21;
  }

  v18 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::shadowEdgeMapExtraction" constants:0];
  shadowEdgeMapExtractionPipelineState = v7->_shadowEdgeMapExtractionPipelineState;
  v7->_shadowEdgeMapExtractionPipelineState = v18;

  if (!v7->_shadowEdgeMapExtractionPipelineState)
  {
    sub_12A54();
    goto LABEL_21;
  }

  v20 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::fusionMapExtraction" constants:0];
  fusionMapExtractionPipelineState = v7->_fusionMapExtractionPipelineState;
  v7->_fusionMapExtractionPipelineState = v20;

  if (!v7->_fusionMapExtractionPipelineState)
  {
    sub_129DC();
    goto LABEL_21;
  }

  v22 = v7;
LABEL_11:

  return v22;
}

- (int)purgeResources
{
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
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
    sub_13310();
    newTextureDescriptor = 0;
    v59 = 8;
    goto LABEL_14;
  }

  objc_storeStrong(&self->_config, config);
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_1329C();
    v59 = 7;
    goto LABEL_14;
  }

  desc = [newTextureDescriptor desc];
  [desc setTextureType:2];

  desc2 = [newTextureDescriptor desc];
  [desc2 setPixelFormat:25];

  v10 = 4 * [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config fusionMapWidth];
  desc3 = [newTextureDescriptor desc];
  [desc3 setWidth:v10];

  v12 = 4 * [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config fusionMapHeight];
  desc4 = [newTextureDescriptor desc];
  [desc4 setHeight:v12];

  [newTextureDescriptor setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->AmbientIntensityTexture"];
  allocator2 = [(FigMetalContext *)self->_metalContext allocator];
  v15 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  ambientIntensityTexture = self->_ambientIntensityTexture;
  self->_ambientIntensityTexture = v15;

  if (!self->_ambientIntensityTexture)
  {
    sub_13228();
LABEL_27:
    v59 = 6;
    goto LABEL_14;
  }

  [newTextureDescriptor setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->FlashIntensityTexture"];
  allocator3 = [(FigMetalContext *)self->_metalContext allocator];
  v18 = [allocator3 newTextureWithDescriptor:newTextureDescriptor];
  flashIntensityTexture = self->_flashIntensityTexture;
  self->_flashIntensityTexture = v18;

  if (!self->_flashIntensityTexture)
  {
    sub_131B4();
    goto LABEL_27;
  }

  [newTextureDescriptor setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->TargetGainTexture"];
  allocator4 = [(FigMetalContext *)self->_metalContext allocator];
  v21 = [allocator4 newTextureWithDescriptor:newTextureDescriptor];
  targetGainTexture = self->_targetGainTexture;
  self->_targetGainTexture = v21;

  if (!self->_targetGainTexture)
  {
    sub_13140();
    goto LABEL_27;
  }

  [newTextureDescriptor setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->WeightMapTexture"];
  allocator5 = [(FigMetalContext *)self->_metalContext allocator];
  v24 = [allocator5 newTextureWithDescriptor:newTextureDescriptor];
  weightMapTexture = self->_weightMapTexture;
  self->_weightMapTexture = v24;

  if (!self->_weightMapTexture)
  {
    sub_130CC();
    goto LABEL_27;
  }

  [newTextureDescriptor setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->StrongerGradientsMaskTexture"];
  allocator6 = [(FigMetalContext *)self->_metalContext allocator];
  v27 = [allocator6 newTextureWithDescriptor:newTextureDescriptor];
  strongerGradientsMaskTexture = self->_strongerGradientsMaskTexture;
  self->_strongerGradientsMaskTexture = v27;

  if (!self->_strongerGradientsMaskTexture)
  {
    sub_13058();
    goto LABEL_27;
  }

  [newTextureDescriptor setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->PositiveIntensityMaskTexture"];
  allocator7 = [(FigMetalContext *)self->_metalContext allocator];
  v30 = [allocator7 newTextureWithDescriptor:newTextureDescriptor];
  positiveIntensityMaskTexture = self->_positiveIntensityMaskTexture;
  self->_positiveIntensityMaskTexture = v30;

  if (!self->_positiveIntensityMaskTexture)
  {
    sub_12FE4();
    goto LABEL_27;
  }

  fusionMapWidth = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config fusionMapWidth];
  desc5 = [newTextureDescriptor desc];
  [desc5 setWidth:fusionMapWidth];

  fusionMapHeight = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config fusionMapHeight];
  desc6 = [newTextureDescriptor desc];
  [desc6 setHeight:fusionMapHeight];

  [newTextureDescriptor setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->MixMapTexture"];
  allocator8 = [(FigMetalContext *)self->_metalContext allocator];
  v37 = [allocator8 newTextureWithDescriptor:newTextureDescriptor];
  mixMapTexture = self->_mixMapTexture;
  self->_mixMapTexture = v37;

  if (!self->_mixMapTexture)
  {
    sub_12F70();
    goto LABEL_27;
  }

  gainMapWidth = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config gainMapWidth];
  desc7 = [newTextureDescriptor desc];
  [desc7 setWidth:gainMapWidth];

  gainMapHeight = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config gainMapHeight];
  desc8 = [newTextureDescriptor desc];
  [desc8 setHeight:gainMapHeight];

  [newTextureDescriptor setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->IntensityGainMapTexture"];
  allocator9 = [(FigMetalContext *)self->_metalContext allocator];
  v44 = [allocator9 newTextureWithDescriptor:newTextureDescriptor];
  intensityGainMapTexture = self->_intensityGainMapTexture;
  self->_intensityGainMapTexture = v44;

  if (!self->_intensityGainMapTexture)
  {
    sub_12EFC();
    goto LABEL_27;
  }

  [newTextureDescriptor setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->ShadowEdgeMaskTexture"];
  allocator10 = [(FigMetalContext *)self->_metalContext allocator];
  v47 = [allocator10 newTextureWithDescriptor:newTextureDescriptor];
  shadowEdgeMaskTexture = self->_shadowEdgeMaskTexture;
  self->_shadowEdgeMaskTexture = v47;

  if (!self->_shadowEdgeMaskTexture)
  {
    sub_12E88();
    goto LABEL_27;
  }

  desc9 = [newTextureDescriptor desc];
  [desc9 setTextureType:3];

  gridWidth = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config gridWidth];
  desc10 = [newTextureDescriptor desc];
  [desc10 setWidth:gridWidth];

  gridHeight = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config gridHeight];
  desc11 = [newTextureDescriptor desc];
  [desc11 setHeight:gridHeight];

  gridBands = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config gridBands];
  desc12 = [newTextureDescriptor desc];
  [desc12 setArrayLength:gridBands];

  [newTextureDescriptor setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->GridTransformsTexture"];
  allocator11 = [(FigMetalContext *)self->_metalContext allocator];
  v57 = [allocator11 newTextureWithDescriptor:newTextureDescriptor];
  gridTransformsTexture = self->_gridTransformsTexture;
  self->_gridTransformsTexture = v57;

  if (!self->_gridTransformsTexture)
  {
    sub_12E14();
    goto LABEL_27;
  }

  v59 = 0;
LABEL_14:

  return v59;
}

- (int)_encodeIntensityImageGeneration:(id)generation inputAmbientTexture:(id)texture inputFlashTexture:(id)flashTexture outputAmbientIntensityTexture:(id)intensityTexture outputFlashIntensityTexture:(id)flashIntensityTexture outputTargetGainTexture:(id)gainTexture outputWeightMapTexture:(id)mapTexture
{
  textureCopy = texture;
  flashTextureCopy = flashTexture;
  intensityTextureCopy = intensityTexture;
  flashIntensityTextureCopy = flashIntensityTexture;
  gainTextureCopy = gainTexture;
  mapTextureCopy = mapTexture;
  computeCommandEncoder = [generation computeCommandEncoder];
  v22 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_intensityImageGenerationPipelineState];
    [v22 setTexture:textureCopy atIndex:0];
    [v22 setTexture:flashTextureCopy atIndex:1];
    [v22 setTexture:intensityTextureCopy atIndex:2];
    [v22 setTexture:flashIntensityTextureCopy atIndex:3];
    [v22 setTexture:gainTextureCopy atIndex:4];
    [v22 setTexture:mapTextureCopy atIndex:5];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_intensityImageGenerationPipelineState threadExecutionWidth];
    v24 = textureCopy;
    v25 = [(MTLComputePipelineState *)self->_intensityImageGenerationPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    v29[0] = [intensityTextureCopy width];
    v29[1] = [intensityTextureCopy height];
    v29[2] = 1;
    v28[0] = threadExecutionWidth;
    v28[1] = v25;
    textureCopy = v24;
    v28[2] = 1;
    [v22 dispatchThreads:v29 threadsPerThreadgroup:v28];
    [v22 endEncoding];
    v26 = 0;
  }

  else
  {
    sub_13384();
    v26 = 10;
  }

  return v26;
}

- (int)_encodeIntensityGainTransformsGeneration:(id)generation inputAmbientIntensityTexture:(id)texture inputTargetGainTexture:(id)gainTexture inputWeightMapTexture:(id)mapTexture gridRegionScale:(float)scale bandingMinWeight:(float)weight bandingGaussianSigmaScale:(float)sigmaScale filterToSigmaScale:(float)self0 spatialGaussianSigmaScale:(float)self1 outputGridTransformsTexture:(id)self2
{
  textureCopy = texture;
  gainTextureCopy = gainTexture;
  mapTextureCopy = mapTexture;
  weightCopy = weight;
  scaleCopy = scale;
  toSigmaScaleCopy = toSigmaScale;
  sigmaScaleCopy = sigmaScale;
  gaussianSigmaScaleCopy = gaussianSigmaScale;
  transformsTextureCopy = transformsTexture;
  computeCommandEncoder = [generation computeCommandEncoder];
  v27 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_intensityGainTransformsGenerationPipelineState];
    [v27 setTexture:textureCopy atIndex:0];
    [v27 setTexture:gainTextureCopy atIndex:1];
    [v27 setTexture:mapTextureCopy atIndex:2];
    [v27 setTexture:transformsTextureCopy atIndex:3];
    [v27 setBytes:&scaleCopy length:4 atIndex:0];
    [v27 setBytes:&weightCopy length:4 atIndex:1];
    [v27 setBytes:&sigmaScaleCopy length:4 atIndex:2];
    [v27 setBytes:&toSigmaScaleCopy length:4 atIndex:3];
    [v27 setBytes:&gaussianSigmaScaleCopy length:4 atIndex:4];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_intensityGainTransformsGenerationPipelineState threadExecutionWidth];
    v29 = [(MTLComputePipelineState *)self->_intensityGainTransformsGenerationPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    v33[0] = [transformsTextureCopy width];
    v33[1] = [transformsTextureCopy height];
    v33[2] = 1;
    v32[0] = threadExecutionWidth;
    v32[1] = v29;
    v32[2] = 1;
    [v27 dispatchThreads:v33 threadsPerThreadgroup:v32];
    [v27 endEncoding];
    v30 = 0;
  }

  else
  {
    sub_133F8();
    v30 = 10;
  }

  return v30;
}

- (int)_encodeIntensityGainMapGeneration:(id)generation inputAmbientIntensityTexture:(id)texture inputGridTransformsTexture:(id)transformsTexture outputIntensityGainMapTexture:(id)mapTexture
{
  textureCopy = texture;
  transformsTextureCopy = transformsTexture;
  mapTextureCopy = mapTexture;
  computeCommandEncoder = [generation computeCommandEncoder];
  v14 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_intensityGainMapGenerationPipelineState];
    [v14 setTexture:textureCopy atIndex:0];
    [v14 setTexture:transformsTextureCopy atIndex:1];
    [v14 setTexture:mapTextureCopy atIndex:2];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_intensityGainMapGenerationPipelineState threadExecutionWidth];
    v16 = [(MTLComputePipelineState *)self->_intensityGainMapGenerationPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    v20[0] = [mapTextureCopy width];
    v20[1] = [mapTextureCopy height];
    v20[2] = 1;
    v19[0] = threadExecutionWidth;
    v19[1] = v16;
    v19[2] = 1;
    [v14 dispatchThreads:v20 threadsPerThreadgroup:v19];
    [v14 endEncoding];
    v17 = 0;
  }

  else
  {
    sub_1346C();
    v17 = 10;
  }

  return v17;
}

- (int)_encodeClassifierMasksExtraction:(id)extraction inputAmbientIntensityTexture:(id)texture inputFlashIntensityTexture:(id)intensityTexture inputIntensityGainMapTexture:(id)mapTexture outputStrongerGradientsMaskTexture:(id)maskTexture outputPositiveIntensityMaskTexture:(id)intensityMaskTexture
{
  textureCopy = texture;
  intensityTextureCopy = intensityTexture;
  mapTextureCopy = mapTexture;
  maskTextureCopy = maskTexture;
  intensityMaskTextureCopy = intensityMaskTexture;
  computeCommandEncoder = [extraction computeCommandEncoder];
  v20 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_classifierMasksExtractionPipelineState];
    [v20 setTexture:textureCopy atIndex:0];
    [v20 setTexture:intensityTextureCopy atIndex:1];
    [v20 setTexture:mapTextureCopy atIndex:2];
    [v20 setTexture:maskTextureCopy atIndex:3];
    [v20 setTexture:intensityMaskTextureCopy atIndex:4];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_classifierMasksExtractionPipelineState threadExecutionWidth];
    v22 = [(MTLComputePipelineState *)self->_classifierMasksExtractionPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    v26[0] = [intensityMaskTextureCopy width];
    v26[1] = [intensityMaskTextureCopy height];
    v26[2] = 1;
    v25[0] = threadExecutionWidth;
    v25[1] = v22;
    v25[2] = 1;
    [v20 dispatchThreads:v26 threadsPerThreadgroup:v25];
    [v20 endEncoding];
    v23 = 0;
  }

  else
  {
    sub_134E0();
    v23 = 10;
  }

  return v23;
}

- (int)_encodeMixMapGeneration:(id)generation inputAmbientTexture:(id)texture inputFlashTexture:(id)flashTexture inputIntensityGainMapTexture:(id)mapTexture inputStrongerGradientsMaskTexture:(id)maskTexture inputPositiveIntensityMaskTexture:(id)intensityMaskTexture strongGradientsMaskResponseGain:(float)gain strongGradientsMaskResponseBias:(float)self0 strongGradientsMaskResponseExponent:(float)self1 positiveIntensityMaskResponseGain:(float)self2 positiveIntensityMaskResponseBias:(float)self3 positiveIntensityMaskResponseExponent:(float)self4 maskFusionGain:(float)self5 maskFusionMixFactor:(float)self6 ambientQualityMinGain:(float)self7 ambientQualityMaxGain:(float)self8 ambientQualityZeroThreshold:(float)self9 ambientQualityOneThreshold:(float)oneThreshold outputMixMapTexture:(id)mixMapTexture
{
  mixMapTextureCopy = mixMapTexture;
  textureCopy = texture;
  flashTextureCopy = flashTexture;
  mapTextureCopy = mapTexture;
  maskTextureCopy = maskTexture;
  intensityMaskTextureCopy = intensityMaskTexture;
  biasCopy = bias;
  v57[0] = gain;
  responseGainCopy = responseGain;
  exponentCopy = exponent;
  responseExponentCopy = responseExponent;
  responseBiasCopy = responseBias;
  factorCopy = factor;
  fusionGainCopy = fusionGain;
  v41 = mixMapTextureCopy;
  computeCommandEncoder = [generation computeCommandEncoder];
  v43 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_mixMapGenerationPipelineState];
    [v43 setTexture:textureCopy atIndex:0];
    [v43 setTexture:flashTextureCopy atIndex:1];
    [v43 setTexture:mapTextureCopy atIndex:2];
    [v43 setTexture:maskTextureCopy atIndex:3];
    [v43 setTexture:intensityMaskTextureCopy atIndex:4];
    [v43 setTexture:v41 atIndex:5];
    [v43 setBytes:v57 length:4 atIndex:0];
    [v43 setBytes:&biasCopy length:4 atIndex:1];
    [v43 setBytes:&exponentCopy length:4 atIndex:2];
    [v43 setBytes:&responseGainCopy length:4 atIndex:3];
    [v43 setBytes:&responseBiasCopy length:4 atIndex:4];
    [v43 setBytes:&responseExponentCopy length:4 atIndex:5];
    [v43 setBytes:&fusionGainCopy length:4 atIndex:6];
    [v43 setBytes:&factorCopy length:4 atIndex:7];
    [v43 setBytes:&minGain length:4 atIndex:8];
    [v43 setBytes:&maxGain length:4 atIndex:9];
    [v43 setBytes:&threshold length:4 atIndex:10];
    [v43 setBytes:&oneThreshold length:4 atIndex:11];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_mixMapGenerationPipelineState threadExecutionWidth];
    v45 = [(MTLComputePipelineState *)self->_mixMapGenerationPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    v49[0] = [v41 width];
    v49[1] = [v41 height];
    v49[2] = 1;
    v48[0] = threadExecutionWidth;
    v48[1] = v45;
    v48[2] = 1;
    [v43 dispatchThreads:v49 threadsPerThreadgroup:v48];
    [v43 endEncoding];
    v46 = 0;
  }

  else
  {
    sub_13554();
    v46 = 10;
  }

  return v46;
}

- (int)_encodeShadowEdgeMapExtraction:(id)extraction inputIntensityGainMapTexture:(id)texture shadowEdgesResponseGain:(float)gain shadowEdgesResponseExponent:(float)exponent outputShadowEdgeMaskTexture:(id)maskTexture
{
  textureCopy = texture;
  exponentCopy = exponent;
  gainCopy = gain;
  maskTextureCopy = maskTexture;
  computeCommandEncoder = [extraction computeCommandEncoder];
  v15 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_shadowEdgeMapExtractionPipelineState];
    [v15 setTexture:textureCopy atIndex:0];
    [v15 setTexture:maskTextureCopy atIndex:1];
    [v15 setBytes:&gainCopy length:4 atIndex:0];
    [v15 setBytes:&exponentCopy length:4 atIndex:1];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_shadowEdgeMapExtractionPipelineState threadExecutionWidth];
    v17 = [(MTLComputePipelineState *)self->_shadowEdgeMapExtractionPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    v21[0] = [maskTextureCopy width];
    v21[1] = [maskTextureCopy height];
    v21[2] = 1;
    v20[0] = threadExecutionWidth;
    v20[1] = v17;
    v20[2] = 1;
    [v15 dispatchThreads:v21 threadsPerThreadgroup:v20];
    [v15 endEncoding];
    v18 = 0;
  }

  else
  {
    sub_135C8();
    v18 = 10;
  }

  return v18;
}

- (int)_encodeFusionMapExtraction:(id)extraction inputMixMapTexture:(id)texture inputShadowEdgeMaskTexture:(id)maskTexture gaussianFilterSize:(int)size gaussianSigma:(float)sigma outputFusionMapTexture:(id)mapTexture
{
  textureCopy = texture;
  maskTextureCopy = maskTexture;
  sizeCopy = size;
  sigmaCopy = sigma;
  mapTextureCopy = mapTexture;
  computeCommandEncoder = [extraction computeCommandEncoder];
  v18 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_fusionMapExtractionPipelineState];
    [v18 setTexture:textureCopy atIndex:0];
    [v18 setTexture:maskTextureCopy atIndex:1];
    [v18 setTexture:mapTextureCopy atIndex:2];
    [v18 setBytes:&sizeCopy length:4 atIndex:0];
    [v18 setBytes:&sigmaCopy length:4 atIndex:1];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_fusionMapExtractionPipelineState threadExecutionWidth];
    v20 = [(MTLComputePipelineState *)self->_fusionMapExtractionPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    v24[0] = [mapTextureCopy width];
    v24[1] = [mapTextureCopy height];
    v24[2] = 1;
    v23[0] = threadExecutionWidth;
    v23[1] = v20;
    v23[2] = 1;
    [v18 dispatchThreads:v24 threadsPerThreadgroup:v23];
    [v18 endEncoding];
    v21 = 0;
  }

  else
  {
    sub_1363C();
    v21 = 10;
  }

  return v21;
}

- (int)_encodeMicroHazeFusionMapExtraction:(id)extraction inputAmbientTexture:(id)texture inputFlashTexture:(id)flashTexture outputFusionMapTexture:(id)mapTexture
{
  extractionCopy = extraction;
  textureCopy = texture;
  flashTextureCopy = flashTexture;
  mapTextureCopy = mapTexture;
  if (extractionCopy)
  {
    v14 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeIntensityImageGeneration:extractionCopy inputAmbientTexture:textureCopy inputFlashTexture:flashTextureCopy outputAmbientIntensityTexture:self->_ambientIntensityTexture outputFlashIntensityTexture:self->_flashIntensityTexture outputTargetGainTexture:self->_targetGainTexture outputWeightMapTexture:self->_weightMapTexture];
    if (v14)
    {
      v72 = v14;
      sub_136B0();
    }

    else
    {
      [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config gridRegionScale];
      v16 = v15;
      [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config bandingMinWeight];
      v18 = v17;
      [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config bandingGaussianSigmaScale];
      v20 = v19;
      [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config filterToSigmaScale];
      v22 = v21;
      [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config spatialGaussianSigmaScale];
      LODWORD(v24) = v23;
      LODWORD(v25) = v16;
      LODWORD(v26) = v18;
      LODWORD(v27) = v20;
      LODWORD(v28) = v22;
      v29 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeIntensityGainTransformsGeneration:extractionCopy inputAmbientIntensityTexture:self->_ambientIntensityTexture inputTargetGainTexture:self->_targetGainTexture inputWeightMapTexture:self->_weightMapTexture gridRegionScale:self->_gridTransformsTexture bandingMinWeight:v25 bandingGaussianSigmaScale:v26 filterToSigmaScale:v27 spatialGaussianSigmaScale:v28 outputGridTransformsTexture:v24];
      if (v29)
      {
        v72 = v29;
        sub_1372C();
      }

      else
      {
        v30 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeIntensityGainMapGeneration:extractionCopy inputAmbientIntensityTexture:self->_ambientIntensityTexture inputGridTransformsTexture:self->_gridTransformsTexture outputIntensityGainMapTexture:self->_intensityGainMapTexture];
        if (v30)
        {
          v72 = v30;
          sub_137A8();
        }

        else
        {
          v31 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeClassifierMasksExtraction:extractionCopy inputAmbientIntensityTexture:self->_ambientIntensityTexture inputFlashIntensityTexture:self->_flashIntensityTexture inputIntensityGainMapTexture:self->_intensityGainMapTexture outputStrongerGradientsMaskTexture:self->_strongerGradientsMaskTexture outputPositiveIntensityMaskTexture:self->_positiveIntensityMaskTexture];
          if (v31)
          {
            v72 = v31;
            sub_13824();
          }

          else
          {
            [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config strongGradientsMaskResponseGain];
            v77 = v32;
            [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config strongGradientsMaskResponseBias];
            v76 = v33;
            [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config strongGradientsMaskResponseExponent];
            v75 = v34;
            [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config positiveIntensityMaskResponseGain];
            v36 = v35;
            [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config positiveIntensityMaskResponseBias];
            v38 = v37;
            [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config positiveIntensityMaskResponseExponent];
            v40 = v39;
            [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config maskFusionGain];
            v42 = v41;
            [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config maskFusionMixFactor];
            v44 = v43;
            [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config ambientQualityMinGain];
            v46 = v45;
            [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config ambientQualityMaxGain];
            v48 = v47;
            [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config ambientQualityZeroThreshold];
            v50 = v49;
            [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config ambientQualityOneThreshold];
            v74 = __PAIR64__(v51, v50);
            LODWORD(v53) = v76;
            LODWORD(v52) = v77;
            LODWORD(v54) = v75;
            LODWORD(v55) = v36;
            LODWORD(v56) = v38;
            LODWORD(v57) = v40;
            LODWORD(v58) = v42;
            LODWORD(v59) = v44;
            v60 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeMixMapGeneration:extractionCopy inputAmbientTexture:textureCopy inputFlashTexture:flashTextureCopy inputIntensityGainMapTexture:self->_intensityGainMapTexture inputStrongerGradientsMaskTexture:self->_strongerGradientsMaskTexture inputPositiveIntensityMaskTexture:self->_positiveIntensityMaskTexture strongGradientsMaskResponseGain:v52 strongGradientsMaskResponseBias:v53 strongGradientsMaskResponseExponent:v54 positiveIntensityMaskResponseGain:v55 positiveIntensityMaskResponseBias:v56 positiveIntensityMaskResponseExponent:v57 maskFusionGain:v58 maskFusionMixFactor:v59 ambientQualityMinGain:__PAIR64__(v48 ambientQualityMaxGain:v46) ambientQualityZeroThreshold:v74 ambientQualityOneThreshold:self->_mixMapTexture outputMixMapTexture:?];
            if (v60)
            {
              v72 = v60;
              sub_138A0();
            }

            else
            {
              [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config shadowEdgesResponseGain];
              v62 = v61;
              [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config shadowEdgesResponseExponent];
              LODWORD(v64) = v63;
              LODWORD(v65) = v62;
              v66 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeShadowEdgeMapExtraction:extractionCopy inputIntensityGainMapTexture:self->_intensityGainMapTexture shadowEdgesResponseGain:self->_shadowEdgeMaskTexture shadowEdgesResponseExponent:v65 outputShadowEdgeMaskTexture:v64];
              if (v66)
              {
                v72 = v66;
                sub_1391C();
              }

              else
              {
                [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config fusionDiffuseGaussianSigma];
                v68 = v67;
                [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config fusionDiffuseSigmaToHalfFilterScale];
                v70 = (2 * llroundf(v68 * v69)) | 1;
                *&v71 = v68;
                v72 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeFusionMapExtraction:extractionCopy inputMixMapTexture:self->_mixMapTexture inputShadowEdgeMaskTexture:self->_shadowEdgeMaskTexture gaussianFilterSize:v70 gaussianSigma:mapTextureCopy outputFusionMapTexture:v71];
                if (v72)
                {
                  sub_13998();
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
    sub_13A14();
    v72 = 10;
  }

  return v72;
}

- (int)microHazeFusionMapExtraction:(id)extraction inputAmbientTexture:(id)texture inputFlashTexture:(id)flashTexture outputFusionMapTexture:(id)mapTexture
{
  v6 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeMicroHazeFusionMapExtraction:extraction inputAmbientTexture:texture inputFlashTexture:flashTexture outputFusionMapTexture:mapTexture];
  if (v6)
  {
    sub_13A88();
  }

  return v6;
}

@end