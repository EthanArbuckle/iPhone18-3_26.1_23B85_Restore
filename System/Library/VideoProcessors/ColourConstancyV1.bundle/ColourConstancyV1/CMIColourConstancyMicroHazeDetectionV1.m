@interface CMIColourConstancyMicroHazeDetectionV1
- (CMIColourConstancyMicroHazeDetectionV1)initWithMetalContext:(id)a3;
- (int)_encodeClassifierMasksExtraction:(id)a3 inputAmbientIntensityTexture:(id)a4 inputFlashIntensityTexture:(id)a5 inputIntensityGainMapTexture:(id)a6 outputStrongerGradientsMaskTexture:(id)a7 outputPositiveIntensityMaskTexture:(id)a8;
- (int)_encodeFusionMapExtraction:(id)a3 inputMixMapTexture:(id)a4 inputShadowEdgeMaskTexture:(id)a5 gaussianFilterSize:(int)a6 gaussianSigma:(float)a7 outputFusionMapTexture:(id)a8;
- (int)_encodeIntensityGainMapGeneration:(id)a3 inputAmbientIntensityTexture:(id)a4 inputGridTransformsTexture:(id)a5 outputIntensityGainMapTexture:(id)a6;
- (int)_encodeIntensityGainTransformsGeneration:(id)a3 inputAmbientIntensityTexture:(id)a4 inputTargetGainTexture:(id)a5 inputWeightMapTexture:(id)a6 gridRegionScale:(float)a7 bandingMinWeight:(float)a8 bandingGaussianSigmaScale:(float)a9 filterToSigmaScale:(float)a10 spatialGaussianSigmaScale:(float)a11 outputGridTransformsTexture:(id)a12;
- (int)_encodeIntensityImageGeneration:(id)a3 inputAmbientTexture:(id)a4 inputFlashTexture:(id)a5 outputAmbientIntensityTexture:(id)a6 outputFlashIntensityTexture:(id)a7 outputTargetGainTexture:(id)a8 outputWeightMapTexture:(id)a9;
- (int)_encodeMicroHazeFusionMapExtraction:(id)a3 inputAmbientTexture:(id)a4 inputFlashTexture:(id)a5 outputFusionMapTexture:(id)a6;
- (int)_encodeMixMapGeneration:(id)a3 inputAmbientTexture:(id)a4 inputFlashTexture:(id)a5 inputIntensityGainMapTexture:(id)a6 inputStrongerGradientsMaskTexture:(id)a7 inputPositiveIntensityMaskTexture:(id)a8 strongGradientsMaskResponseGain:(float)a9 strongGradientsMaskResponseBias:(float)a10 strongGradientsMaskResponseExponent:(float)a11 positiveIntensityMaskResponseGain:(float)a12 positiveIntensityMaskResponseBias:(float)a13 positiveIntensityMaskResponseExponent:(float)a14 maskFusionGain:(float)a15 maskFusionMixFactor:(float)a16 ambientQualityMinGain:(float)a17 ambientQualityMaxGain:(float)a18 ambientQualityZeroThreshold:(float)a19 ambientQualityOneThreshold:(float)a20 outputMixMapTexture:(id)a21;
- (int)_encodeShadowEdgeMapExtraction:(id)a3 inputIntensityGainMapTexture:(id)a4 shadowEdgesResponseGain:(float)a5 shadowEdgesResponseExponent:(float)a6 outputShadowEdgeMaskTexture:(id)a7;
- (int)microHazeFusionMapExtraction:(id)a3 inputAmbientTexture:(id)a4 inputFlashTexture:(id)a5 outputFusionMapTexture:(id)a6;
- (int)prepareToProcessWithConfig:(id)a3;
- (int)purgeResources;
@end

@implementation CMIColourConstancyMicroHazeDetectionV1

- (CMIColourConstancyMicroHazeDetectionV1)initWithMetalContext:(id)a3
{
  v5 = a3;
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

  if (!v5)
  {
    sub_12D24();
    goto LABEL_21;
  }

  objc_storeStrong(&v6->_metalContext, a3);
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

- (int)prepareToProcessWithConfig:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_13310();
    v7 = 0;
    v59 = 8;
    goto LABEL_14;
  }

  objc_storeStrong(&self->_config, a3);
  v6 = [(FigMetalContext *)self->_metalContext allocator];
  v7 = [v6 newTextureDescriptor];

  if (!v7)
  {
    sub_1329C();
    v59 = 7;
    goto LABEL_14;
  }

  v8 = [v7 desc];
  [v8 setTextureType:2];

  v9 = [v7 desc];
  [v9 setPixelFormat:25];

  v10 = 4 * [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config fusionMapWidth];
  v11 = [v7 desc];
  [v11 setWidth:v10];

  v12 = 4 * [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config fusionMapHeight];
  v13 = [v7 desc];
  [v13 setHeight:v12];

  [v7 setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->AmbientIntensityTexture"];
  v14 = [(FigMetalContext *)self->_metalContext allocator];
  v15 = [v14 newTextureWithDescriptor:v7];
  ambientIntensityTexture = self->_ambientIntensityTexture;
  self->_ambientIntensityTexture = v15;

  if (!self->_ambientIntensityTexture)
  {
    sub_13228();
LABEL_27:
    v59 = 6;
    goto LABEL_14;
  }

  [v7 setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->FlashIntensityTexture"];
  v17 = [(FigMetalContext *)self->_metalContext allocator];
  v18 = [v17 newTextureWithDescriptor:v7];
  flashIntensityTexture = self->_flashIntensityTexture;
  self->_flashIntensityTexture = v18;

  if (!self->_flashIntensityTexture)
  {
    sub_131B4();
    goto LABEL_27;
  }

  [v7 setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->TargetGainTexture"];
  v20 = [(FigMetalContext *)self->_metalContext allocator];
  v21 = [v20 newTextureWithDescriptor:v7];
  targetGainTexture = self->_targetGainTexture;
  self->_targetGainTexture = v21;

  if (!self->_targetGainTexture)
  {
    sub_13140();
    goto LABEL_27;
  }

  [v7 setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->WeightMapTexture"];
  v23 = [(FigMetalContext *)self->_metalContext allocator];
  v24 = [v23 newTextureWithDescriptor:v7];
  weightMapTexture = self->_weightMapTexture;
  self->_weightMapTexture = v24;

  if (!self->_weightMapTexture)
  {
    sub_130CC();
    goto LABEL_27;
  }

  [v7 setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->StrongerGradientsMaskTexture"];
  v26 = [(FigMetalContext *)self->_metalContext allocator];
  v27 = [v26 newTextureWithDescriptor:v7];
  strongerGradientsMaskTexture = self->_strongerGradientsMaskTexture;
  self->_strongerGradientsMaskTexture = v27;

  if (!self->_strongerGradientsMaskTexture)
  {
    sub_13058();
    goto LABEL_27;
  }

  [v7 setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->PositiveIntensityMaskTexture"];
  v29 = [(FigMetalContext *)self->_metalContext allocator];
  v30 = [v29 newTextureWithDescriptor:v7];
  positiveIntensityMaskTexture = self->_positiveIntensityMaskTexture;
  self->_positiveIntensityMaskTexture = v30;

  if (!self->_positiveIntensityMaskTexture)
  {
    sub_12FE4();
    goto LABEL_27;
  }

  v32 = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config fusionMapWidth];
  v33 = [v7 desc];
  [v33 setWidth:v32];

  v34 = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config fusionMapHeight];
  v35 = [v7 desc];
  [v35 setHeight:v34];

  [v7 setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->MixMapTexture"];
  v36 = [(FigMetalContext *)self->_metalContext allocator];
  v37 = [v36 newTextureWithDescriptor:v7];
  mixMapTexture = self->_mixMapTexture;
  self->_mixMapTexture = v37;

  if (!self->_mixMapTexture)
  {
    sub_12F70();
    goto LABEL_27;
  }

  v39 = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config gainMapWidth];
  v40 = [v7 desc];
  [v40 setWidth:v39];

  v41 = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config gainMapHeight];
  v42 = [v7 desc];
  [v42 setHeight:v41];

  [v7 setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->IntensityGainMapTexture"];
  v43 = [(FigMetalContext *)self->_metalContext allocator];
  v44 = [v43 newTextureWithDescriptor:v7];
  intensityGainMapTexture = self->_intensityGainMapTexture;
  self->_intensityGainMapTexture = v44;

  if (!self->_intensityGainMapTexture)
  {
    sub_12EFC();
    goto LABEL_27;
  }

  [v7 setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->ShadowEdgeMaskTexture"];
  v46 = [(FigMetalContext *)self->_metalContext allocator];
  v47 = [v46 newTextureWithDescriptor:v7];
  shadowEdgeMaskTexture = self->_shadowEdgeMaskTexture;
  self->_shadowEdgeMaskTexture = v47;

  if (!self->_shadowEdgeMaskTexture)
  {
    sub_12E88();
    goto LABEL_27;
  }

  v49 = [v7 desc];
  [v49 setTextureType:3];

  v50 = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config gridWidth];
  v51 = [v7 desc];
  [v51 setWidth:v50];

  v52 = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config gridHeight];
  v53 = [v7 desc];
  [v53 setHeight:v52];

  v54 = [(CMIColourConstancyMicroHazeDetectionConfigurationV1 *)self->_config gridBands];
  v55 = [v7 desc];
  [v55 setArrayLength:v54];

  [v7 setLabel:@"ColourConstancyV1->Core->MicroHazeDetection->GridTransformsTexture"];
  v56 = [(FigMetalContext *)self->_metalContext allocator];
  v57 = [v56 newTextureWithDescriptor:v7];
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

- (int)_encodeIntensityImageGeneration:(id)a3 inputAmbientTexture:(id)a4 inputFlashTexture:(id)a5 outputAmbientIntensityTexture:(id)a6 outputFlashIntensityTexture:(id)a7 outputTargetGainTexture:(id)a8 outputWeightMapTexture:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [a3 computeCommandEncoder];
  v22 = v21;
  if (v21)
  {
    [v21 setComputePipelineState:self->_intensityImageGenerationPipelineState];
    [v22 setTexture:v15 atIndex:0];
    [v22 setTexture:v16 atIndex:1];
    [v22 setTexture:v17 atIndex:2];
    [v22 setTexture:v18 atIndex:3];
    [v22 setTexture:v19 atIndex:4];
    [v22 setTexture:v20 atIndex:5];
    v23 = [(MTLComputePipelineState *)self->_intensityImageGenerationPipelineState threadExecutionWidth];
    v24 = v15;
    v25 = [(MTLComputePipelineState *)self->_intensityImageGenerationPipelineState maxTotalThreadsPerThreadgroup]/ v23;
    v29[0] = [v17 width];
    v29[1] = [v17 height];
    v29[2] = 1;
    v28[0] = v23;
    v28[1] = v25;
    v15 = v24;
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

- (int)_encodeIntensityGainTransformsGeneration:(id)a3 inputAmbientIntensityTexture:(id)a4 inputTargetGainTexture:(id)a5 inputWeightMapTexture:(id)a6 gridRegionScale:(float)a7 bandingMinWeight:(float)a8 bandingGaussianSigmaScale:(float)a9 filterToSigmaScale:(float)a10 spatialGaussianSigmaScale:(float)a11 outputGridTransformsTexture:(id)a12
{
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v37 = a8;
  v38 = a7;
  v35 = a10;
  v36 = a9;
  v34 = a11;
  v25 = a12;
  v26 = [a3 computeCommandEncoder];
  v27 = v26;
  if (v26)
  {
    [v26 setComputePipelineState:self->_intensityGainTransformsGenerationPipelineState];
    [v27 setTexture:v22 atIndex:0];
    [v27 setTexture:v23 atIndex:1];
    [v27 setTexture:v24 atIndex:2];
    [v27 setTexture:v25 atIndex:3];
    [v27 setBytes:&v38 length:4 atIndex:0];
    [v27 setBytes:&v37 length:4 atIndex:1];
    [v27 setBytes:&v36 length:4 atIndex:2];
    [v27 setBytes:&v35 length:4 atIndex:3];
    [v27 setBytes:&v34 length:4 atIndex:4];
    v28 = [(MTLComputePipelineState *)self->_intensityGainTransformsGenerationPipelineState threadExecutionWidth];
    v29 = [(MTLComputePipelineState *)self->_intensityGainTransformsGenerationPipelineState maxTotalThreadsPerThreadgroup]/ v28;
    v33[0] = [v25 width];
    v33[1] = [v25 height];
    v33[2] = 1;
    v32[0] = v28;
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

- (int)_encodeIntensityGainMapGeneration:(id)a3 inputAmbientIntensityTexture:(id)a4 inputGridTransformsTexture:(id)a5 outputIntensityGainMapTexture:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 computeCommandEncoder];
  v14 = v13;
  if (v13)
  {
    [v13 setComputePipelineState:self->_intensityGainMapGenerationPipelineState];
    [v14 setTexture:v10 atIndex:0];
    [v14 setTexture:v11 atIndex:1];
    [v14 setTexture:v12 atIndex:2];
    v15 = [(MTLComputePipelineState *)self->_intensityGainMapGenerationPipelineState threadExecutionWidth];
    v16 = [(MTLComputePipelineState *)self->_intensityGainMapGenerationPipelineState maxTotalThreadsPerThreadgroup]/ v15;
    v20[0] = [v12 width];
    v20[1] = [v12 height];
    v20[2] = 1;
    v19[0] = v15;
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

- (int)_encodeClassifierMasksExtraction:(id)a3 inputAmbientIntensityTexture:(id)a4 inputFlashIntensityTexture:(id)a5 inputIntensityGainMapTexture:(id)a6 outputStrongerGradientsMaskTexture:(id)a7 outputPositiveIntensityMaskTexture:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [a3 computeCommandEncoder];
  v20 = v19;
  if (v19)
  {
    [v19 setComputePipelineState:self->_classifierMasksExtractionPipelineState];
    [v20 setTexture:v14 atIndex:0];
    [v20 setTexture:v15 atIndex:1];
    [v20 setTexture:v16 atIndex:2];
    [v20 setTexture:v17 atIndex:3];
    [v20 setTexture:v18 atIndex:4];
    v21 = [(MTLComputePipelineState *)self->_classifierMasksExtractionPipelineState threadExecutionWidth];
    v22 = [(MTLComputePipelineState *)self->_classifierMasksExtractionPipelineState maxTotalThreadsPerThreadgroup]/ v21;
    v26[0] = [v18 width];
    v26[1] = [v18 height];
    v26[2] = 1;
    v25[0] = v21;
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

- (int)_encodeMixMapGeneration:(id)a3 inputAmbientTexture:(id)a4 inputFlashTexture:(id)a5 inputIntensityGainMapTexture:(id)a6 inputStrongerGradientsMaskTexture:(id)a7 inputPositiveIntensityMaskTexture:(id)a8 strongGradientsMaskResponseGain:(float)a9 strongGradientsMaskResponseBias:(float)a10 strongGradientsMaskResponseExponent:(float)a11 positiveIntensityMaskResponseGain:(float)a12 positiveIntensityMaskResponseBias:(float)a13 positiveIntensityMaskResponseExponent:(float)a14 maskFusionGain:(float)a15 maskFusionMixFactor:(float)a16 ambientQualityMinGain:(float)a17 ambientQualityMaxGain:(float)a18 ambientQualityZeroThreshold:(float)a19 ambientQualityOneThreshold:(float)a20 outputMixMapTexture:(id)a21
{
  v35 = a21;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v56 = a10;
  v57[0] = a9;
  v54 = a12;
  v55 = a11;
  v52 = a14;
  v53 = a13;
  v50 = a16;
  v51 = a15;
  v41 = v35;
  v42 = [a3 computeCommandEncoder];
  v43 = v42;
  if (v42)
  {
    [v42 setComputePipelineState:self->_mixMapGenerationPipelineState];
    [v43 setTexture:v36 atIndex:0];
    [v43 setTexture:v37 atIndex:1];
    [v43 setTexture:v38 atIndex:2];
    [v43 setTexture:v39 atIndex:3];
    [v43 setTexture:v40 atIndex:4];
    [v43 setTexture:v41 atIndex:5];
    [v43 setBytes:v57 length:4 atIndex:0];
    [v43 setBytes:&v56 length:4 atIndex:1];
    [v43 setBytes:&v55 length:4 atIndex:2];
    [v43 setBytes:&v54 length:4 atIndex:3];
    [v43 setBytes:&v53 length:4 atIndex:4];
    [v43 setBytes:&v52 length:4 atIndex:5];
    [v43 setBytes:&v51 length:4 atIndex:6];
    [v43 setBytes:&v50 length:4 atIndex:7];
    [v43 setBytes:&a17 length:4 atIndex:8];
    [v43 setBytes:&a18 length:4 atIndex:9];
    [v43 setBytes:&a19 length:4 atIndex:10];
    [v43 setBytes:&a20 length:4 atIndex:11];
    v44 = [(MTLComputePipelineState *)self->_mixMapGenerationPipelineState threadExecutionWidth];
    v45 = [(MTLComputePipelineState *)self->_mixMapGenerationPipelineState maxTotalThreadsPerThreadgroup]/ v44;
    v49[0] = [v41 width];
    v49[1] = [v41 height];
    v49[2] = 1;
    v48[0] = v44;
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

- (int)_encodeShadowEdgeMapExtraction:(id)a3 inputIntensityGainMapTexture:(id)a4 shadowEdgesResponseGain:(float)a5 shadowEdgesResponseExponent:(float)a6 outputShadowEdgeMaskTexture:(id)a7
{
  v12 = a4;
  v22 = a6;
  v23 = a5;
  v13 = a7;
  v14 = [a3 computeCommandEncoder];
  v15 = v14;
  if (v14)
  {
    [v14 setComputePipelineState:self->_shadowEdgeMapExtractionPipelineState];
    [v15 setTexture:v12 atIndex:0];
    [v15 setTexture:v13 atIndex:1];
    [v15 setBytes:&v23 length:4 atIndex:0];
    [v15 setBytes:&v22 length:4 atIndex:1];
    v16 = [(MTLComputePipelineState *)self->_shadowEdgeMapExtractionPipelineState threadExecutionWidth];
    v17 = [(MTLComputePipelineState *)self->_shadowEdgeMapExtractionPipelineState maxTotalThreadsPerThreadgroup]/ v16;
    v21[0] = [v13 width];
    v21[1] = [v13 height];
    v21[2] = 1;
    v20[0] = v16;
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

- (int)_encodeFusionMapExtraction:(id)a3 inputMixMapTexture:(id)a4 inputShadowEdgeMaskTexture:(id)a5 gaussianFilterSize:(int)a6 gaussianSigma:(float)a7 outputFusionMapTexture:(id)a8
{
  v14 = a4;
  v15 = a5;
  v26 = a6;
  v25 = a7;
  v16 = a8;
  v17 = [a3 computeCommandEncoder];
  v18 = v17;
  if (v17)
  {
    [v17 setComputePipelineState:self->_fusionMapExtractionPipelineState];
    [v18 setTexture:v14 atIndex:0];
    [v18 setTexture:v15 atIndex:1];
    [v18 setTexture:v16 atIndex:2];
    [v18 setBytes:&v26 length:4 atIndex:0];
    [v18 setBytes:&v25 length:4 atIndex:1];
    v19 = [(MTLComputePipelineState *)self->_fusionMapExtractionPipelineState threadExecutionWidth];
    v20 = [(MTLComputePipelineState *)self->_fusionMapExtractionPipelineState maxTotalThreadsPerThreadgroup]/ v19;
    v24[0] = [v16 width];
    v24[1] = [v16 height];
    v24[2] = 1;
    v23[0] = v19;
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

- (int)_encodeMicroHazeFusionMapExtraction:(id)a3 inputAmbientTexture:(id)a4 inputFlashTexture:(id)a5 outputFusionMapTexture:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeIntensityImageGeneration:v10 inputAmbientTexture:v11 inputFlashTexture:v12 outputAmbientIntensityTexture:self->_ambientIntensityTexture outputFlashIntensityTexture:self->_flashIntensityTexture outputTargetGainTexture:self->_targetGainTexture outputWeightMapTexture:self->_weightMapTexture];
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
      v29 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeIntensityGainTransformsGeneration:v10 inputAmbientIntensityTexture:self->_ambientIntensityTexture inputTargetGainTexture:self->_targetGainTexture inputWeightMapTexture:self->_weightMapTexture gridRegionScale:self->_gridTransformsTexture bandingMinWeight:v25 bandingGaussianSigmaScale:v26 filterToSigmaScale:v27 spatialGaussianSigmaScale:v28 outputGridTransformsTexture:v24];
      if (v29)
      {
        v72 = v29;
        sub_1372C();
      }

      else
      {
        v30 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeIntensityGainMapGeneration:v10 inputAmbientIntensityTexture:self->_ambientIntensityTexture inputGridTransformsTexture:self->_gridTransformsTexture outputIntensityGainMapTexture:self->_intensityGainMapTexture];
        if (v30)
        {
          v72 = v30;
          sub_137A8();
        }

        else
        {
          v31 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeClassifierMasksExtraction:v10 inputAmbientIntensityTexture:self->_ambientIntensityTexture inputFlashIntensityTexture:self->_flashIntensityTexture inputIntensityGainMapTexture:self->_intensityGainMapTexture outputStrongerGradientsMaskTexture:self->_strongerGradientsMaskTexture outputPositiveIntensityMaskTexture:self->_positiveIntensityMaskTexture];
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
            v60 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeMixMapGeneration:v10 inputAmbientTexture:v11 inputFlashTexture:v12 inputIntensityGainMapTexture:self->_intensityGainMapTexture inputStrongerGradientsMaskTexture:self->_strongerGradientsMaskTexture inputPositiveIntensityMaskTexture:self->_positiveIntensityMaskTexture strongGradientsMaskResponseGain:v52 strongGradientsMaskResponseBias:v53 strongGradientsMaskResponseExponent:v54 positiveIntensityMaskResponseGain:v55 positiveIntensityMaskResponseBias:v56 positiveIntensityMaskResponseExponent:v57 maskFusionGain:v58 maskFusionMixFactor:v59 ambientQualityMinGain:__PAIR64__(v48 ambientQualityMaxGain:v46) ambientQualityZeroThreshold:v74 ambientQualityOneThreshold:self->_mixMapTexture outputMixMapTexture:?];
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
              v66 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeShadowEdgeMapExtraction:v10 inputIntensityGainMapTexture:self->_intensityGainMapTexture shadowEdgesResponseGain:self->_shadowEdgeMaskTexture shadowEdgesResponseExponent:v65 outputShadowEdgeMaskTexture:v64];
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
                v72 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeFusionMapExtraction:v10 inputMixMapTexture:self->_mixMapTexture inputShadowEdgeMaskTexture:self->_shadowEdgeMaskTexture gaussianFilterSize:v70 gaussianSigma:v13 outputFusionMapTexture:v71];
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

- (int)microHazeFusionMapExtraction:(id)a3 inputAmbientTexture:(id)a4 inputFlashTexture:(id)a5 outputFusionMapTexture:(id)a6
{
  v6 = [(CMIColourConstancyMicroHazeDetectionV1 *)self _encodeMicroHazeFusionMapExtraction:a3 inputAmbientTexture:a4 inputFlashTexture:a5 outputFusionMapTexture:a6];
  if (v6)
  {
    sub_13A88();
  }

  return v6;
}

@end