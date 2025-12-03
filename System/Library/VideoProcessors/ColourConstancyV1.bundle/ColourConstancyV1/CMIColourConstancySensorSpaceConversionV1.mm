@interface CMIColourConstancySensorSpaceConversionV1
- (CMIColourConstancySensorSpaceConversionV1)initWithMetalContext:(id)context;
- (id)convertYUVtoRegisteredNormSensorSpaceThumbnail:(double)thumbnail inputLumaTexture:(double)texture inputChromaTexture:(double)chromaTexture appliedScaledLSCGainsRGBTexture:(double)bTexture baseScaledLSCGainsRGBTexture:(float)gBTexture yuvOffsets:(uint64_t)offsets cropRect:(void *)rect registrationHomography:(void *)self0 appliedWhitePoint:(void *)self1 integrationTimeScale:(void *)self2 outputWarpedSensorThumbnailRGBATexture:(void *)self3;
- (int)calculateScaledLSCGainsAndStrobeBeamProfile:(id)profile ambientLSCGainsTexture:(id)texture flashLSCGainsTexture:(id)gainsTexture cropRect:(CMIColourConstancyCropRect)rect LSCCropRect:(CMIColourConstancyLSCCropRect *)cropRect fullSizeDimensions:(float)dimensions ambientLSCMaxGain:(float)gain flashLSCMaxGain:(id)self0 outputAmbientScaledLSCGainsRGBTexture:(id)self1 outputFlashScaledLSCGainsRGBTexture:(id)self2 outputStrobeBeamProfileGainRTexture:;
- (int)prepareToProcessWithConfig:(id)config;
- (uint64_t)_encodeYUVtoRegisteredNormSensorSpaceThumbnail:(__n128)thumbnail inputLumaTexture:(__n128)texture inputChromaTexture:(__n128)chromaTexture appliedScaledLSCGainsRGBTexture:(__n128)bTexture baseScaledLSCGainsRGBTexture:(float)gBTexture yuvOffsets:(float)offsets cropRect:(float)rect registrationHomography:(uint64_t)self0 appliedWhitePoint:(void *)self1 integrationTimeScale:(void *)self2 clippedLikelihoodScale:(void *)self3 clippedLikelihoodExponent:(void *)self4 outputWarpedSensorThumbnailRGBATexture:(void *)self5;
@end

@implementation CMIColourConstancySensorSpaceConversionV1

- (CMIColourConstancySensorSpaceConversionV1)initWithMetalContext:(id)context
{
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = CMIColourConstancySensorSpaceConversionV1;
  v6 = [(CMIColourConstancySensorSpaceConversionV1 *)&v16 init];
  v7 = v6;
  if (!v6)
  {
    sub_1C018();
LABEL_13:
    v14 = 0;
    goto LABEL_7;
  }

  if (!contextCopy)
  {
    sub_1BFA0();
    goto LABEL_13;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v8 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::calculateScaledLSCGainsAndStrobeBeamProfileV1" constants:0];
  calculateScaledLSCGainsAndStrobeBeamProfilePipelineState = v7->_calculateScaledLSCGainsAndStrobeBeamProfilePipelineState;
  v7->_calculateScaledLSCGainsAndStrobeBeamProfilePipelineState = v8;

  if (!v7->_calculateScaledLSCGainsAndStrobeBeamProfilePipelineState)
  {
    sub_1BF28();
    goto LABEL_13;
  }

  v10 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::convertYUVtoRegisteredNormSensorSpaceThumbnailV1" constants:0];
  convertYUVtoRegisteredNormSensorSpaceThumbnailPipelineState = v7->_convertYUVtoRegisteredNormSensorSpaceThumbnailPipelineState;
  v7->_convertYUVtoRegisteredNormSensorSpaceThumbnailPipelineState = v10;

  if (!v7->_convertYUVtoRegisteredNormSensorSpaceThumbnailPipelineState)
  {
    sub_1BEB0();
    goto LABEL_13;
  }

  v12 = [(FigMetalContext *)v7->_metalContext computePipelineStateFor:@"ColourConstancy::convertYUVtoNormSensorSpaceThumbnailV1" constants:0];
  convertYUVtoNormSensorSpaceThumbnailPipelineState = v7->_convertYUVtoNormSensorSpaceThumbnailPipelineState;
  v7->_convertYUVtoNormSensorSpaceThumbnailPipelineState = v12;

  if (!v7->_convertYUVtoNormSensorSpaceThumbnailPipelineState)
  {
    sub_1BE38();
    goto LABEL_13;
  }

  v14 = v7;
LABEL_7:

  return v14;
}

- (int)prepareToProcessWithConfig:(id)config
{
  configCopy = config;
  if (configCopy)
  {
    objc_storeStrong(&self->_config, config);
    v6 = 0;
  }

  else
  {
    sub_1C090();
    v6 = 8;
  }

  return v6;
}

- (uint64_t)_encodeYUVtoRegisteredNormSensorSpaceThumbnail:(__n128)thumbnail inputLumaTexture:(__n128)texture inputChromaTexture:(__n128)chromaTexture appliedScaledLSCGainsRGBTexture:(__n128)bTexture baseScaledLSCGainsRGBTexture:(float)gBTexture yuvOffsets:(float)offsets cropRect:(float)rect registrationHomography:(uint64_t)self0 appliedWhitePoint:(void *)self1 integrationTimeScale:(void *)self2 clippedLikelihoodScale:(void *)self3 clippedLikelihoodExponent:(void *)self4 outputWarpedSensorThumbnailRGBATexture:(void *)self5
{
  v53[0] = a17;
  v53[1] = a18;
  v52[0] = thumbnail;
  v52[1] = texture;
  v52[2] = chromaTexture;
  pointCopy = point;
  scaleCopy = scale;
  likelihoodScaleCopy = likelihoodScale;
  exponentCopy = exponent;
  aTextureCopy = aTexture;
  bTextureCopy = bTexture;
  v51 = a2;
  offsetsCopy = offsets;
  gBTextureCopy = gBTexture;
  rectCopy = rect;
  v32 = a19;
  if (!pointCopy)
  {
    sub_1C260();
LABEL_7:
    v39 = 10;
    goto LABEL_4;
  }

  computeCommandEncoder = [pointCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_1C1EC();
    goto LABEL_7;
  }

  v34 = computeCommandEncoder;
  v43 = a17 / [v32 width];
  height = [v32 height];
  *&v36 = v43;
  *(&v36 + 1) = SHIDWORD(a17) / height;
  v46 = v36;
  [v34 setComputePipelineState:*(self + 32)];
  [v34 setTexture:scaleCopy atIndex:0];
  [v34 setTexture:likelihoodScaleCopy atIndex:1];
  [v34 setTexture:exponentCopy atIndex:2];
  [v34 setTexture:aTextureCopy atIndex:3];
  [v34 setTexture:v32 atIndex:4];
  [v34 setBytes:&v51 length:16 atIndex:0];
  [v34 setBytes:&v46 length:8 atIndex:1];
  [v34 setBytes:v53 length:16 atIndex:2];
  [v34 setBytes:v52 length:48 atIndex:3];
  [v34 setBytes:&bTextureCopy length:16 atIndex:4];
  [v34 setBytes:&gBTextureCopy length:4 atIndex:5];
  [v34 setBytes:&offsetsCopy length:4 atIndex:6];
  [v34 setBytes:&rectCopy length:4 atIndex:7];
  threadExecutionWidth = [*(self + 32) threadExecutionWidth];
  v38 = [*(self + 32) maxTotalThreadsPerThreadgroup] / threadExecutionWidth;
  v45[0] = [v32 width];
  v45[1] = [v32 height];
  v45[2] = 1;
  v44[0] = threadExecutionWidth;
  v44[1] = v38;
  v44[2] = 1;
  [v34 dispatchThreads:v45 threadsPerThreadgroup:v44];
  [v34 endEncoding];

  v39 = 0;
LABEL_4:

  return v39;
}

- (int)calculateScaledLSCGainsAndStrobeBeamProfile:(id)profile ambientLSCGainsTexture:(id)texture flashLSCGainsTexture:(id)gainsTexture cropRect:(CMIColourConstancyCropRect)rect LSCCropRect:(CMIColourConstancyLSCCropRect *)cropRect fullSizeDimensions:(float)dimensions ambientLSCMaxGain:(float)gain flashLSCMaxGain:(id)self0 outputAmbientScaledLSCGainsRGBTexture:(id)self1 outputFlashScaledLSCGainsRGBTexture:(id)self2 outputStrobeBeamProfileGainRTexture:
{
  v14 = *cropRect;
  v12 = [CMIColourConstancySensorSpaceConversionV1 _encodeScaledLSCGainsAndStrobeBeamProfileCalculate:"_encodeScaledLSCGainsAndStrobeBeamProfileCalculate:ambientLSCGainsTexture:flashLSCGainsTexture:cropRect:LSCCropRect:fullSizeDimensions:ambientLSCMaxGain:flashLSCMaxGain:outputAmbientScaledLSCGainsRGBTexture:outputFlashScaledLSCGainsRGBTexture:outputStrobeBeamProfileGainRTexture:" ambientLSCGainsTexture:profile flashLSCGainsTexture:texture cropRect:gainsTexture LSCCropRect:*&rect.var0 fullSizeDimensions:*&rect.var2 ambientLSCMaxGain:&v14 flashLSCMaxGain:maxGain outputAmbientScaledLSCGainsRGBTexture:bTexture outputFlashScaledLSCGainsRGBTexture:gBTexture outputStrobeBeamProfileGainRTexture:?];
  if (v12)
  {
    sub_1C3BC();
  }

  return v12;
}

- (id)convertYUVtoRegisteredNormSensorSpaceThumbnail:(double)thumbnail inputLumaTexture:(double)texture inputChromaTexture:(double)chromaTexture appliedScaledLSCGainsRGBTexture:(double)bTexture baseScaledLSCGainsRGBTexture:(float)gBTexture yuvOffsets:(uint64_t)offsets cropRect:(void *)rect registrationHomography:(void *)self0 appliedWhitePoint:(void *)self1 integrationTimeScale:(void *)self2 outputWarpedSensorThumbnailRGBATexture:(void *)self3
{
  v24 = self[2];
  v25 = a17;
  aTextureCopy = aTexture;
  scaleCopy = scale;
  pointCopy = point;
  homographyCopy = homography;
  rectCopy = rect;
  [v24 clippedConfidenceLikelihoodScale];
  v32 = v31;
  [self[2] clippedConfidenceLikelihoodExponent];
  LODWORD(v34) = v33;
  *&v35 = gBTexture;
  LODWORD(v36) = v32;
  v37 = [self _encodeYUVtoRegisteredNormSensorSpaceThumbnail:rectCopy inputLumaTexture:homographyCopy inputChromaTexture:pointCopy appliedScaledLSCGainsRGBTexture:scaleCopy baseScaledLSCGainsRGBTexture:aTextureCopy yuvOffsets:a2 cropRect:thumbnail registrationHomography:texture appliedWhitePoint:chromaTexture integrationTimeScale:bTexture clippedLikelihoodScale:v35 clippedLikelihoodExponent:v36 outputWarpedSensorThumbnailRGBATexture:{v34, a15, a16, v25}];

  if (v37)
  {
    sub_1C434();
  }

  return v37;
}

@end