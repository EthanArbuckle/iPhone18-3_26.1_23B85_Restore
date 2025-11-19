@interface CMIColourConstancySensorSpaceConversionV1
- (CMIColourConstancySensorSpaceConversionV1)initWithMetalContext:(id)a3;
- (id)convertYUVtoRegisteredNormSensorSpaceThumbnail:(double)a3 inputLumaTexture:(double)a4 inputChromaTexture:(double)a5 appliedScaledLSCGainsRGBTexture:(double)a6 baseScaledLSCGainsRGBTexture:(float)a7 yuvOffsets:(uint64_t)a8 cropRect:(void *)a9 registrationHomography:(void *)a10 appliedWhitePoint:(void *)a11 integrationTimeScale:(void *)a12 outputWarpedSensorThumbnailRGBATexture:(void *)a13;
- (int)calculateScaledLSCGainsAndStrobeBeamProfile:(id)a3 ambientLSCGainsTexture:(id)a4 flashLSCGainsTexture:(id)a5 cropRect:(CMIColourConstancyCropRect)a6 LSCCropRect:(CMIColourConstancyLSCCropRect *)a7 fullSizeDimensions:(float)a8 ambientLSCMaxGain:(float)a9 flashLSCMaxGain:(id)a10 outputAmbientScaledLSCGainsRGBTexture:(id)a11 outputFlashScaledLSCGainsRGBTexture:(id)a12 outputStrobeBeamProfileGainRTexture:;
- (int)prepareToProcessWithConfig:(id)a3;
- (uint64_t)_encodeYUVtoRegisteredNormSensorSpaceThumbnail:(__n128)a3 inputLumaTexture:(__n128)a4 inputChromaTexture:(__n128)a5 appliedScaledLSCGainsRGBTexture:(__n128)a6 baseScaledLSCGainsRGBTexture:(float)a7 yuvOffsets:(float)a8 cropRect:(float)a9 registrationHomography:(uint64_t)a10 appliedWhitePoint:(void *)a11 integrationTimeScale:(void *)a12 clippedLikelihoodScale:(void *)a13 clippedLikelihoodExponent:(void *)a14 outputWarpedSensorThumbnailRGBATexture:(void *)a15;
@end

@implementation CMIColourConstancySensorSpaceConversionV1

- (CMIColourConstancySensorSpaceConversionV1)initWithMetalContext:(id)a3
{
  v5 = a3;
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

  if (!v5)
  {
    sub_1BFA0();
    goto LABEL_13;
  }

  objc_storeStrong(&v6->_metalContext, a3);
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

- (int)prepareToProcessWithConfig:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_config, a3);
    v6 = 0;
  }

  else
  {
    sub_1C090();
    v6 = 8;
  }

  return v6;
}

- (uint64_t)_encodeYUVtoRegisteredNormSensorSpaceThumbnail:(__n128)a3 inputLumaTexture:(__n128)a4 inputChromaTexture:(__n128)a5 appliedScaledLSCGainsRGBTexture:(__n128)a6 baseScaledLSCGainsRGBTexture:(float)a7 yuvOffsets:(float)a8 cropRect:(float)a9 registrationHomography:(uint64_t)a10 appliedWhitePoint:(void *)a11 integrationTimeScale:(void *)a12 clippedLikelihoodScale:(void *)a13 clippedLikelihoodExponent:(void *)a14 outputWarpedSensorThumbnailRGBATexture:(void *)a15
{
  v53[0] = a17;
  v53[1] = a18;
  v52[0] = a3;
  v52[1] = a4;
  v52[2] = a5;
  v27 = a11;
  v28 = a12;
  v29 = a13;
  v30 = a14;
  v31 = a15;
  v50 = a6;
  v51 = a2;
  v48 = a8;
  v49 = a7;
  v47 = a9;
  v32 = a19;
  if (!v27)
  {
    sub_1C260();
LABEL_7:
    v39 = 10;
    goto LABEL_4;
  }

  v33 = [v27 computeCommandEncoder];
  if (!v33)
  {
    sub_1C1EC();
    goto LABEL_7;
  }

  v34 = v33;
  v43 = a17 / [v32 width];
  v35 = [v32 height];
  *&v36 = v43;
  *(&v36 + 1) = SHIDWORD(a17) / v35;
  v46 = v36;
  [v34 setComputePipelineState:*(a1 + 32)];
  [v34 setTexture:v28 atIndex:0];
  [v34 setTexture:v29 atIndex:1];
  [v34 setTexture:v30 atIndex:2];
  [v34 setTexture:v31 atIndex:3];
  [v34 setTexture:v32 atIndex:4];
  [v34 setBytes:&v51 length:16 atIndex:0];
  [v34 setBytes:&v46 length:8 atIndex:1];
  [v34 setBytes:v53 length:16 atIndex:2];
  [v34 setBytes:v52 length:48 atIndex:3];
  [v34 setBytes:&v50 length:16 atIndex:4];
  [v34 setBytes:&v49 length:4 atIndex:5];
  [v34 setBytes:&v48 length:4 atIndex:6];
  [v34 setBytes:&v47 length:4 atIndex:7];
  v37 = [*(a1 + 32) threadExecutionWidth];
  v38 = [*(a1 + 32) maxTotalThreadsPerThreadgroup] / v37;
  v45[0] = [v32 width];
  v45[1] = [v32 height];
  v45[2] = 1;
  v44[0] = v37;
  v44[1] = v38;
  v44[2] = 1;
  [v34 dispatchThreads:v45 threadsPerThreadgroup:v44];
  [v34 endEncoding];

  v39 = 0;
LABEL_4:

  return v39;
}

- (int)calculateScaledLSCGainsAndStrobeBeamProfile:(id)a3 ambientLSCGainsTexture:(id)a4 flashLSCGainsTexture:(id)a5 cropRect:(CMIColourConstancyCropRect)a6 LSCCropRect:(CMIColourConstancyLSCCropRect *)a7 fullSizeDimensions:(float)a8 ambientLSCMaxGain:(float)a9 flashLSCMaxGain:(id)a10 outputAmbientScaledLSCGainsRGBTexture:(id)a11 outputFlashScaledLSCGainsRGBTexture:(id)a12 outputStrobeBeamProfileGainRTexture:
{
  v14 = *a7;
  v12 = [CMIColourConstancySensorSpaceConversionV1 _encodeScaledLSCGainsAndStrobeBeamProfileCalculate:"_encodeScaledLSCGainsAndStrobeBeamProfileCalculate:ambientLSCGainsTexture:flashLSCGainsTexture:cropRect:LSCCropRect:fullSizeDimensions:ambientLSCMaxGain:flashLSCMaxGain:outputAmbientScaledLSCGainsRGBTexture:outputFlashScaledLSCGainsRGBTexture:outputStrobeBeamProfileGainRTexture:" ambientLSCGainsTexture:a3 flashLSCGainsTexture:a4 cropRect:a5 LSCCropRect:*&a6.var0 fullSizeDimensions:*&a6.var2 ambientLSCMaxGain:&v14 flashLSCMaxGain:a10 outputAmbientScaledLSCGainsRGBTexture:a11 outputFlashScaledLSCGainsRGBTexture:a12 outputStrobeBeamProfileGainRTexture:?];
  if (v12)
  {
    sub_1C3BC();
  }

  return v12;
}

- (id)convertYUVtoRegisteredNormSensorSpaceThumbnail:(double)a3 inputLumaTexture:(double)a4 inputChromaTexture:(double)a5 appliedScaledLSCGainsRGBTexture:(double)a6 baseScaledLSCGainsRGBTexture:(float)a7 yuvOffsets:(uint64_t)a8 cropRect:(void *)a9 registrationHomography:(void *)a10 appliedWhitePoint:(void *)a11 integrationTimeScale:(void *)a12 outputWarpedSensorThumbnailRGBATexture:(void *)a13
{
  v24 = a1[2];
  v25 = a17;
  v26 = a13;
  v27 = a12;
  v28 = a11;
  v29 = a10;
  v30 = a9;
  [v24 clippedConfidenceLikelihoodScale];
  v32 = v31;
  [a1[2] clippedConfidenceLikelihoodExponent];
  LODWORD(v34) = v33;
  *&v35 = a7;
  LODWORD(v36) = v32;
  v37 = [a1 _encodeYUVtoRegisteredNormSensorSpaceThumbnail:v30 inputLumaTexture:v29 inputChromaTexture:v28 appliedScaledLSCGainsRGBTexture:v27 baseScaledLSCGainsRGBTexture:v26 yuvOffsets:a2 cropRect:a3 registrationHomography:a4 appliedWhitePoint:a5 integrationTimeScale:a6 clippedLikelihoodScale:v35 clippedLikelihoodExponent:v36 outputWarpedSensorThumbnailRGBATexture:{v34, a15, a16, v25}];

  if (v37)
  {
    sub_1C434();
  }

  return v37;
}

@end