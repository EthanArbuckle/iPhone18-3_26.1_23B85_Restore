@interface CMIColourConstancyCoreV1
- (CMIColourConstancyCoreV1)initWithMetalContext:(id)a3;
- (int)finishProcessing;
- (int)getCenterWeightedColourAccuracyConfidenceLevel:(float *)a3;
- (int)prepareToProcessWithConfig:(id)a3 processingType:(unsigned int)a4;
- (int)purgeResources;
- (unint64_t)applyWithAmbientLumaTexture:(double)a3 ambientChromaTexture:(float)a4 flashLumaTexture:(float)a5 flashChromaTexture:(double)a6 ambientYUVOffsets:(double)a7 flashYUVOffsets:(double)a8 ambientLSCGainsTexture:(float)a9 flashLSCGainsTexture:(uint64_t)a10 ambientLSCMaxGain:(void *)a11 flashLSCMaxGain:(void *)a12 ambientWhitePoint:(void *)a13 flashWhitePoint:(void *)a14 strobeWhitePoint:(void *)a15 ambientIntegrationTime:(void *)a16 flashIntegrationTime:(float)a17 cropRect:(uint64_t)a18 LSCCropRect:(CMIColourConstancyLSCCropRect *)a19 fullSizeDimensions:(_DWORD *)a20 strobeCCM:(id)a21 outputColourAccuracyConfidenceTexture:(uint64_t)a22 outputLumaTexture:(id)a23 outputChromaTexture:(uint64_t)a24 outputLinearRGBTexture:(double)a25;
@end

@implementation CMIColourConstancyCoreV1

- (CMIColourConstancyCoreV1)initWithMetalContext:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = CMIColourConstancyCoreV1;
  v6 = [(CMIColourConstancyCoreV1 *)&v26 init];
  v7 = v6;
  if (!v6)
  {
    sub_11770();
LABEL_23:
    v24 = 0;
    goto LABEL_12;
  }

  if (!v5)
  {
    sub_116F8();
    goto LABEL_23;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  v8 = [objc_opt_new() initWithMetalContext:v7->_metalContext];
  registrationComponent = v7->_registrationComponent;
  v7->_registrationComponent = v8;

  if (!v7->_registrationComponent)
  {
    sub_11680();
    goto LABEL_23;
  }

  v10 = [objc_opt_new() initWithMetalContext:v7->_metalContext];
  sensorSpaceConversionComponent = v7->_sensorSpaceConversionComponent;
  v7->_sensorSpaceConversionComponent = v10;

  if (!v7->_sensorSpaceConversionComponent)
  {
    sub_11608();
    goto LABEL_23;
  }

  v12 = [objc_opt_new() initWithMetalContext:v7->_metalContext];
  strobeDecompositionComponent = v7->_strobeDecompositionComponent;
  v7->_strobeDecompositionComponent = v12;

  if (!v7->_strobeDecompositionComponent)
  {
    sub_11590();
    goto LABEL_23;
  }

  v14 = [objc_opt_new() initWithMetalContext:v7->_metalContext];
  strobeCorrectionComponent = v7->_strobeCorrectionComponent;
  v7->_strobeCorrectionComponent = v14;

  if (!v7->_strobeCorrectionComponent)
  {
    sub_11518();
    goto LABEL_23;
  }

  v16 = [objc_opt_new() initWithMetalContext:v7->_metalContext];
  whiteBalanceStrobeComponent = v7->_whiteBalanceStrobeComponent;
  v7->_whiteBalanceStrobeComponent = v16;

  if (!v7->_whiteBalanceStrobeComponent)
  {
    sub_114A0();
    goto LABEL_23;
  }

  v18 = [objc_opt_new() initWithMetalContext:v7->_metalContext];
  colourAccuracyConfidenceComponent = v7->_colourAccuracyConfidenceComponent;
  v7->_colourAccuracyConfidenceComponent = v18;

  if (!v7->_colourAccuracyConfidenceComponent)
  {
    sub_11428();
    goto LABEL_23;
  }

  v20 = [objc_opt_new() initWithMetalContext:v7->_metalContext];
  toneCompressionComponent = v7->_toneCompressionComponent;
  v7->_toneCompressionComponent = v20;

  if (!v7->_toneCompressionComponent)
  {
    sub_113B0();
    goto LABEL_23;
  }

  v22 = [objc_opt_new() initWithMetalContext:v7->_metalContext];
  styleTransferComponent = v7->_styleTransferComponent;
  v7->_styleTransferComponent = v22;

  if (!v7->_styleTransferComponent)
  {
    sub_11338();
    goto LABEL_23;
  }

  v24 = v7;
LABEL_12:

  return v24;
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
  FigMetalDecRef();
  [(CMIColourConstancyRegistrationV1 *)self->_registrationComponent purgeResources];
  [(CMIColourConstancySensorSpaceConversionV1 *)self->_sensorSpaceConversionComponent purgeResources];
  [(CMIColourConstancyStrobeDecompositionV1 *)self->_strobeDecompositionComponent purgeResources];
  [(CMIColourConstancyStrobeCorrectionV1 *)self->_strobeCorrectionComponent purgeResources];
  [(CMIColourConstancyWhiteBalanceStrobeV1 *)self->_whiteBalanceStrobeComponent purgeResources];
  [(CMIColourConstancyToneCompressionV1 *)self->_toneCompressionComponent purgeResources];
  [(CMIColourConstancyConfidenceV1 *)self->_colourAccuracyConfidenceComponent purgeResources];
  [(CMIColourConstancyStyleTransferV1 *)self->_styleTransferComponent purgeResources];
  clippingRecoveryComponent = self->_clippingRecoveryComponent;
  if (clippingRecoveryComponent)
  {
    [(CMIColourConstancyClippingRecoveryV1 *)clippingRecoveryComponent purgeResources];
  }

  return 0;
}

- (int)prepareToProcessWithConfig:(id)a3 processingType:(unsigned int)a4
{
  v6 = a3;
  if (!v6)
  {
    sub_12190();
    v8 = 0;
    v52 = 8;
    goto LABEL_48;
  }

  objc_storeStrong(&self->_config, a3);
  v7 = [(FigMetalContext *)self->_metalContext allocator];
  v8 = [v7 newTextureDescriptor];

  if (!v8)
  {
    sub_1211C();
    v52 = 7;
    goto LABEL_48;
  }

  v9 = [v8 desc];
  [v9 setTextureType:2];

  v10 = [(CMIColourConstancyCoreConfigurationV1 *)self->_config thumbnailWidth];
  v11 = [v8 desc];
  [v11 setWidth:v10];

  v12 = [(CMIColourConstancyCoreConfigurationV1 *)self->_config thumbnailHeight];
  v13 = [v8 desc];
  [v13 setHeight:v12];

  v14 = [v8 desc];
  [v14 setPixelFormat:115];

  [v8 setLabel:0];
  v15 = [(FigMetalContext *)self->_metalContext allocator];
  v16 = [v15 newTextureWithDescriptor:v8];
  flashThumbnailRGBTexture = self->_flashThumbnailRGBTexture;
  self->_flashThumbnailRGBTexture = v16;

  if (!self->_flashThumbnailRGBTexture)
  {
    sub_120A8();
LABEL_38:
    v52 = 6;
    goto LABEL_48;
  }

  [v8 setLabel:0];
  v18 = [(FigMetalContext *)self->_metalContext allocator];
  v19 = [v18 newTextureWithDescriptor:v8];
  ambientSensorRegisteredThumbnailRGBATexture = self->_ambientSensorRegisteredThumbnailRGBATexture;
  self->_ambientSensorRegisteredThumbnailRGBATexture = v19;

  if (!self->_ambientSensorRegisteredThumbnailRGBATexture)
  {
    sub_12034();
    goto LABEL_38;
  }

  [v8 setLabel:0];
  v21 = [(FigMetalContext *)self->_metalContext allocator];
  v22 = [v21 newTextureWithDescriptor:v8];
  flashSensorThumbnailRGBATexture = self->_flashSensorThumbnailRGBATexture;
  self->_flashSensorThumbnailRGBATexture = v22;

  if (!self->_flashSensorThumbnailRGBATexture)
  {
    sub_11FC0();
    goto LABEL_38;
  }

  [v8 setLabel:0];
  v24 = [(FigMetalContext *)self->_metalContext allocator];
  v25 = [v24 newTextureWithDescriptor:v8];
  ambientScaledLSCThumbnailRGBTexture = self->_ambientScaledLSCThumbnailRGBTexture;
  self->_ambientScaledLSCThumbnailRGBTexture = v25;

  if (!self->_ambientScaledLSCThumbnailRGBTexture)
  {
    sub_11F4C();
    goto LABEL_38;
  }

  [v8 setLabel:0];
  v27 = [(FigMetalContext *)self->_metalContext allocator];
  v28 = [v27 newTextureWithDescriptor:v8];
  flashScaledLSCThumbnailRGBTexture = self->_flashScaledLSCThumbnailRGBTexture;
  self->_flashScaledLSCThumbnailRGBTexture = v28;

  if (!self->_flashScaledLSCThumbnailRGBTexture)
  {
    sub_11ED8();
    goto LABEL_38;
  }

  [v8 setLabel:0];
  v30 = [(FigMetalContext *)self->_metalContext allocator];
  v31 = [v30 newTextureWithDescriptor:v8];
  strobeComponentThumbnailRGBATexture = self->_strobeComponentThumbnailRGBATexture;
  self->_strobeComponentThumbnailRGBATexture = v31;

  if (!self->_strobeComponentThumbnailRGBATexture)
  {
    sub_11E64();
    goto LABEL_38;
  }

  [v8 setLabel:0];
  v33 = [(FigMetalContext *)self->_metalContext allocator];
  v34 = [v33 newTextureWithDescriptor:v8];
  strobeCorrectedThumbnailRGBTexture = self->_strobeCorrectedThumbnailRGBTexture;
  self->_strobeCorrectedThumbnailRGBTexture = v34;

  if (!self->_strobeCorrectedThumbnailRGBTexture)
  {
    sub_11DF0();
    goto LABEL_38;
  }

  v36 = [v8 desc];
  [v36 setPixelFormat:125];

  [v8 setLabel:0];
  v37 = [(FigMetalContext *)self->_metalContext allocator];
  v38 = [v37 newTextureWithDescriptor:v8];
  strobeBalancedThumbnailRGBTexture = self->_strobeBalancedThumbnailRGBTexture;
  self->_strobeBalancedThumbnailRGBTexture = v38;

  if (!self->_strobeBalancedThumbnailRGBTexture)
  {
    sub_11D7C();
    goto LABEL_38;
  }

  [v8 setLabel:0];
  v40 = [(FigMetalContext *)self->_metalContext allocator];
  v41 = [v40 newTextureWithDescriptor:v8];
  strobeReconstructedBalancedThumbnailRGBTexture = self->_strobeReconstructedBalancedThumbnailRGBTexture;
  self->_strobeReconstructedBalancedThumbnailRGBTexture = v41;

  if (!self->_strobeReconstructedBalancedThumbnailRGBTexture)
  {
    sub_11D08();
    goto LABEL_38;
  }

  v43 = [v8 desc];
  [v43 setPixelFormat:25];

  [v8 setLabel:0];
  v44 = [(FigMetalContext *)self->_metalContext allocator];
  v45 = [v44 newTextureWithDescriptor:v8];
  strobeBeamProfileGainRTexture = self->_strobeBeamProfileGainRTexture;
  self->_strobeBeamProfileGainRTexture = v45;

  if (!self->_strobeBeamProfileGainRTexture)
  {
    sub_11C94();
    goto LABEL_38;
  }

  [v8 setLabel:0];
  v47 = [(FigMetalContext *)self->_metalContext allocator];
  v48 = [v47 newTextureWithDescriptor:v8];
  strobeIlluminationConfidenceRTexture = self->_strobeIlluminationConfidenceRTexture;
  self->_strobeIlluminationConfidenceRTexture = v48;

  if (!self->_strobeIlluminationConfidenceRTexture)
  {
    sub_11C20();
    goto LABEL_38;
  }

  sensorSpaceConversionComponent = self->_sensorSpaceConversionComponent;
  v51 = [v6 sensorSpaceConversionConfig];
  v52 = [(CMIColourConstancySensorSpaceConversionV1 *)sensorSpaceConversionComponent prepareToProcessWithConfig:v51];

  if (v52)
  {
    sub_117E8();
    goto LABEL_48;
  }

  v53 = [(CMIColourConstancyRegistrationV1 *)self->_registrationComponent prepareToProcess:0];
  if (v53)
  {
    v52 = v53;
    sub_11860();
    goto LABEL_48;
  }

  strobeCorrectionComponent = self->_strobeCorrectionComponent;
  v55 = [v6 strobeCorrectionConfig];
  v52 = [(CMIColourConstancyStrobeCorrectionV1 *)strobeCorrectionComponent prepareToProcessWithConfig:v55];

  if (v52)
  {
    sub_118D8();
    goto LABEL_48;
  }

  whiteBalanceStrobeComponent = self->_whiteBalanceStrobeComponent;
  v57 = [v6 whiteBalanceStrobeConfig];
  v52 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)whiteBalanceStrobeComponent prepareToProcessWithConfig:v57];

  if (v52)
  {
    sub_11950();
    goto LABEL_48;
  }

  toneCompressionComponent = self->_toneCompressionComponent;
  v59 = [v6 toneCompressionConfig];
  v52 = [(CMIColourConstancyToneCompressionV1 *)toneCompressionComponent prepareToProcessWithConfig:v59];

  if (v52)
  {
    sub_119C8();
    goto LABEL_48;
  }

  colourAccuracyConfidenceComponent = self->_colourAccuracyConfidenceComponent;
  v61 = [v6 colourAccuracyConfidenceConfig];
  v52 = [(CMIColourConstancyConfidenceV1 *)colourAccuracyConfidenceComponent prepareToProcessWithConfig:v61];

  if (v52)
  {
    sub_11A40();
    goto LABEL_48;
  }

  styleTransferComponent = self->_styleTransferComponent;
  v63 = [v6 styleTransferConfig];
  v52 = [(CMIColourConstancyStyleTransferV1 *)styleTransferComponent prepareToProcessWithConfig:v63];

  if (v52)
  {
    sub_11AB8();
    goto LABEL_48;
  }

  if (![(CMIColourConstancyCoreConfigurationV1 *)self->_config clippingRecoveryEnabled])
  {
LABEL_47:
    v52 = 0;
    goto LABEL_48;
  }

  v64 = [objc_opt_new() initWithMetalContext:self->_metalContext];
  clippingRecoveryComponent = self->_clippingRecoveryComponent;
  self->_clippingRecoveryComponent = v64;

  v66 = self->_clippingRecoveryComponent;
  if (!v66)
  {
    sub_11BA8();
    goto LABEL_47;
  }

  v67 = [v6 clippingRecoveryConfig];
  v52 = [(CMIColourConstancyClippingRecoveryV1 *)v66 prepareToProcessWithConfig:v67];

  if (v52)
  {
    sub_11B30();
  }

LABEL_48:

  return v52;
}

- (int)finishProcessing
{
  [(FigMetalContext *)self->_metalContext waitForIdle];
  v3 = [(CMIColourConstancyStyleTransferV1 *)self->_styleTransferComponent finishProcessing];
  if (v3)
  {
    sub_12204();
  }

  return v3;
}

- (unint64_t)applyWithAmbientLumaTexture:(double)a3 ambientChromaTexture:(float)a4 flashLumaTexture:(float)a5 flashChromaTexture:(double)a6 ambientYUVOffsets:(double)a7 flashYUVOffsets:(double)a8 ambientLSCGainsTexture:(float)a9 flashLSCGainsTexture:(uint64_t)a10 ambientLSCMaxGain:(void *)a11 flashLSCMaxGain:(void *)a12 ambientWhitePoint:(void *)a13 flashWhitePoint:(void *)a14 strobeWhitePoint:(void *)a15 ambientIntegrationTime:(void *)a16 flashIntegrationTime:(float)a17 cropRect:(uint64_t)a18 LSCCropRect:(CMIColourConstancyLSCCropRect *)a19 fullSizeDimensions:(_DWORD *)a20 strobeCCM:(id)a21 outputColourAccuracyConfidenceTexture:(uint64_t)a22 outputLumaTexture:(id)a23 outputChromaTexture:(uint64_t)a24 outputLinearRGBTexture:(double)a25
{
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v44 = a14;
  v95 = a15;
  v94 = a16;
  v87 = a29;
  v93 = a30;
  v92 = a31;
  v91 = a32;
  v45 = [*(a1 + 8) commandBuffer];
  if (!v45)
  {
    sub_1289C(&v96);
    v79 = v96;
LABEL_31:
    v81 = v87;
    goto LABEL_17;
  }

  v46 = v45;
  v47 = [*(a1 + 24) registerImage:v41 referenceLumaTexture:v43];
  if (v47)
  {
    v79 = v47;
    sub_1227C(v46);
    goto LABEL_31;
  }

  v49 = *(a1 + 32);
  if (v49)
  {
    [*(a1 + 24) homography];
    v50 = [v49 applyClippedRegionRecovery:v46 inputAmbientLumaTexture:v41 inputAmbientChromaTexture:v42 inoutFlashLumaTexture:v43 inoutFlashChromaTexture:v44 ambientToFlashRegistrationHomography:?];
    if (v50)
    {
      v79 = v50;
      sub_1230C(v46);
      goto LABEL_31;
    }
  }

  v51 = *(a1 + 40);
  v53 = *(a1 + 128);
  v52 = *(a1 + 136);
  v54 = *(a1 + 120);
  v96 = *a20;
  v97 = a20[4];
  *&v48 = a5;
  v55 = [v51 calculateScaledLSCGainsAndStrobeBeamProfile:v46 ambientLSCGainsTexture:v95 flashLSCGainsTexture:v94 cropRect:a18 LSCCropRect:a19 fullSizeDimensions:&v96 ambientLSCMaxGain:*&a21 flashLSCMaxGain:COERCE_DOUBLE(__PAIR64__(DWORD1(v96) outputAmbientScaledLSCGainsRGBTexture:LODWORD(a4))) outputFlashScaledLSCGainsRGBTexture:v48 outputStrobeBeamProfileGainRTexture:{v54, v52, v53}];
  if (v55)
  {
    v79 = v55;
    sub_1239C(v46);
    goto LABEL_31;
  }

  v56 = *(a1 + 40);
  v57 = *(a1 + 120);
  [*(a1 + 24) homography];
  v61 = [v56 convertYUVtoRegisteredNormSensorSpaceThumbnail:v46 inputLumaTexture:v41 inputChromaTexture:v42 appliedScaledLSCGainsRGBTexture:v57 baseScaledLSCGainsRGBTexture:v57 yuvOffsets:a2 cropRect:v58 registrationHomography:v59 appliedWhitePoint:v60 integrationTimeScale:a6 outputWarpedSensorThumbnailRGBATexture:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v60), a17 / fmaxf(a9, 0.00000011921))), a18, a19, *(a1 + 104)}];
  if (v61)
  {
    v79 = v61;
    sub_1241C(v46);
    goto LABEL_31;
  }

  v63 = *(a1 + 96);
  LODWORD(v62) = 1.0;
  v64 = [*(a1 + 40) convertYUVtoNormSensorSpaceThumbnail:v46 inputLumaTexture:v43 inputChromaTexture:v44 appliedScaledLSCGainsRGBTexture:*(a1 + 136) baseScaledLSCGainsRGBTexture:*(a1 + 120) yuvOffsets:a3 cropRect:a7 appliedWhitePoint:v62 integrationTimeScale:a18 outputBalancedThumbnailRGBATexture:a19 outputSensorThumbnailRGBATexture:{v63, *(a1 + 112)}];
  if (v64)
  {
    v79 = v64;
    sub_1249C(v46);
    goto LABEL_31;
  }

  v65 = [*(a1 + 48) encodeStrobeComponentCalculate:v46 flashSensorRGBATexture:*(a1 + 112) ambientSensorRGBATexture:*(a1 + 104) strobeWhitePoint:*(a1 + 144) outputStrobeComponentRGBATexture:a8];
  if (v65)
  {
    v79 = v65;
    sub_1251C(v46);
    goto LABEL_31;
  }

  v66 = [*(a1 + 56) applyStrobeCorrection:v46 strobeComponentRGBTexture:*(a1 + 144) strobeBeamProfileGainRTexture:*(a1 + 128) outputStrobeCorrectedRGBTexture:*(a1 + 152)];
  if (v66)
  {
    v79 = v66;
    sub_1259C(v46);
    goto LABEL_31;
  }

  v67 = [*(a1 + 80) calculateStrobeIlluminationConfidence:v46 strobeComponentRGBTexture:*(a1 + 144) outputStrobeIlluminationConfidenceRTexture:*(a1 + 168)];
  if (v67)
  {
    v79 = v67;
    sub_1261C(v46);
    goto LABEL_31;
  }

  v68 = [*(a1 + 64) applyWhiteBalanceAndFlashFusion:v46 strobeSensorRGBTexture:*(a1 + 152) flashBalancedRGBTexture:*(a1 + 96) strobeIlluminationConfidenceRTexture:*(a1 + 168) strobeWhitePoint:*(a1 + 160) outputStrobeBalancedRGBTexture:a8];
  if (v68)
  {
    v79 = v68;
    sub_1269C(v46);
    goto LABEL_31;
  }

  v69 = [*(a1 + 72) calculateToneCompressionCurve:v46 strobeComponentRGBTexture:*(a1 + 160) strobeCCM:?];
  if (v69)
  {
    v79 = v69;
    sub_1271C(v46);
    goto LABEL_31;
  }

  v83 = v41;
  v84 = v42;
  v70 = *(a1 + 136);
  v72 = *(a1 + 88);
  v71 = *(a1 + 96);
  v73 = *(a1 + 160);
  v74 = [*(a1 + 72) toneCompressionCurveTexture];
  v75 = v44;
  v76 = v74;
  v77 = v72;
  v78 = v75;
  v79 = [v77 applyStyleTransferWithBufferClearing:v43 inputChromaTexture:a3 appliedScaledLSCGainsRGBTexture:a7 sourceRGBTexture:*&a23 targetRGBTexture:a25 toneCompressionCurveTexture:a27 inputYUVOffsets:a18 cropRect:a19 appliedWhitePoint:*(a1 + 176) strobeCCM:v93 outputReconstructedTargetRGBTexture:v92 outputLumaTexture:v91 outputChromaTexture:? outputLinearRGBTexture:?];

  if (v79)
  {
    sub_1279C(v46);
    v41 = v83;
    v42 = v84;
    v44 = v78;
    goto LABEL_31;
  }

  v80 = [*(a1 + 8) commandBuffer];

  v81 = v87;
  v79 = [*(a1 + 80) calculateColourAccuracyConfidence:v80 strobeComponentRGBATexture:*(a1 + 144) strobeBalancedThumbnailRGBTexture:*(a1 + 160) strobeReconstructedBalancedThumbnailRGBTexture:*(a1 + 176) outputColourAccuracyConfidenceTexture:v87];
  v41 = v83;
  v42 = v84;
  if (v79)
  {
    sub_1281C(v80);
  }

  else
  {
    [*(a1 + 8) commit];
  }

  v44 = v78;
LABEL_17:

  return v79;
}

- (int)getCenterWeightedColourAccuracyConfidenceLevel:(float *)a3
{
  if (a3)
  {
    v4 = [(CMIColourConstancyConfidenceV1 *)self->_colourAccuracyConfidenceComponent globalCenterWeightedConfidenceLevelBuffer];
    v5 = [v4 contents];

    result = 0;
    *a3 = *v5;
  }

  else
  {
    sub_12968();
    return 10;
  }

  return result;
}

@end