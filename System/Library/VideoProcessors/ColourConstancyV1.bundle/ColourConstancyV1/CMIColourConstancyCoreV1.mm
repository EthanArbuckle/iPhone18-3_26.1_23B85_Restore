@interface CMIColourConstancyCoreV1
- (CMIColourConstancyCoreV1)initWithMetalContext:(id)context;
- (int)finishProcessing;
- (int)getCenterWeightedColourAccuracyConfidenceLevel:(float *)level;
- (int)prepareToProcessWithConfig:(id)config processingType:(unsigned int)type;
- (int)purgeResources;
- (unint64_t)applyWithAmbientLumaTexture:(double)texture ambientChromaTexture:(float)chromaTexture flashLumaTexture:(float)lumaTexture flashChromaTexture:(double)flashChromaTexture ambientYUVOffsets:(double)offsets flashYUVOffsets:(double)vOffsets ambientLSCGainsTexture:(float)gainsTexture flashLSCGainsTexture:(uint64_t)self0 ambientLSCMaxGain:(void *)self1 flashLSCMaxGain:(void *)self2 ambientWhitePoint:(void *)self3 flashWhitePoint:(void *)self4 strobeWhitePoint:(void *)self5 ambientIntegrationTime:(void *)self6 flashIntegrationTime:(float)self7 cropRect:(uint64_t)self8 LSCCropRect:(CMIColourConstancyLSCCropRect *)self9 fullSizeDimensions:(_DWORD *)dimensions strobeCCM:(id)m outputColourAccuracyConfidenceTexture:(uint64_t)confidenceTexture outputLumaTexture:(id)outputLumaTexture outputChromaTexture:(uint64_t)outputChromaTexture outputLinearRGBTexture:(double)bTexture;
@end

@implementation CMIColourConstancyCoreV1

- (CMIColourConstancyCoreV1)initWithMetalContext:(id)context
{
  contextCopy = context;
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

  if (!contextCopy)
  {
    sub_116F8();
    goto LABEL_23;
  }

  objc_storeStrong(&v6->_metalContext, context);
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

- (int)prepareToProcessWithConfig:(id)config processingType:(unsigned int)type
{
  configCopy = config;
  if (!configCopy)
  {
    sub_12190();
    newTextureDescriptor = 0;
    v52 = 8;
    goto LABEL_48;
  }

  objc_storeStrong(&self->_config, config);
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_1211C();
    v52 = 7;
    goto LABEL_48;
  }

  desc = [newTextureDescriptor desc];
  [desc setTextureType:2];

  thumbnailWidth = [(CMIColourConstancyCoreConfigurationV1 *)self->_config thumbnailWidth];
  desc2 = [newTextureDescriptor desc];
  [desc2 setWidth:thumbnailWidth];

  thumbnailHeight = [(CMIColourConstancyCoreConfigurationV1 *)self->_config thumbnailHeight];
  desc3 = [newTextureDescriptor desc];
  [desc3 setHeight:thumbnailHeight];

  desc4 = [newTextureDescriptor desc];
  [desc4 setPixelFormat:115];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metalContext allocator];
  v16 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  flashThumbnailRGBTexture = self->_flashThumbnailRGBTexture;
  self->_flashThumbnailRGBTexture = v16;

  if (!self->_flashThumbnailRGBTexture)
  {
    sub_120A8();
LABEL_38:
    v52 = 6;
    goto LABEL_48;
  }

  [newTextureDescriptor setLabel:0];
  allocator3 = [(FigMetalContext *)self->_metalContext allocator];
  v19 = [allocator3 newTextureWithDescriptor:newTextureDescriptor];
  ambientSensorRegisteredThumbnailRGBATexture = self->_ambientSensorRegisteredThumbnailRGBATexture;
  self->_ambientSensorRegisteredThumbnailRGBATexture = v19;

  if (!self->_ambientSensorRegisteredThumbnailRGBATexture)
  {
    sub_12034();
    goto LABEL_38;
  }

  [newTextureDescriptor setLabel:0];
  allocator4 = [(FigMetalContext *)self->_metalContext allocator];
  v22 = [allocator4 newTextureWithDescriptor:newTextureDescriptor];
  flashSensorThumbnailRGBATexture = self->_flashSensorThumbnailRGBATexture;
  self->_flashSensorThumbnailRGBATexture = v22;

  if (!self->_flashSensorThumbnailRGBATexture)
  {
    sub_11FC0();
    goto LABEL_38;
  }

  [newTextureDescriptor setLabel:0];
  allocator5 = [(FigMetalContext *)self->_metalContext allocator];
  v25 = [allocator5 newTextureWithDescriptor:newTextureDescriptor];
  ambientScaledLSCThumbnailRGBTexture = self->_ambientScaledLSCThumbnailRGBTexture;
  self->_ambientScaledLSCThumbnailRGBTexture = v25;

  if (!self->_ambientScaledLSCThumbnailRGBTexture)
  {
    sub_11F4C();
    goto LABEL_38;
  }

  [newTextureDescriptor setLabel:0];
  allocator6 = [(FigMetalContext *)self->_metalContext allocator];
  v28 = [allocator6 newTextureWithDescriptor:newTextureDescriptor];
  flashScaledLSCThumbnailRGBTexture = self->_flashScaledLSCThumbnailRGBTexture;
  self->_flashScaledLSCThumbnailRGBTexture = v28;

  if (!self->_flashScaledLSCThumbnailRGBTexture)
  {
    sub_11ED8();
    goto LABEL_38;
  }

  [newTextureDescriptor setLabel:0];
  allocator7 = [(FigMetalContext *)self->_metalContext allocator];
  v31 = [allocator7 newTextureWithDescriptor:newTextureDescriptor];
  strobeComponentThumbnailRGBATexture = self->_strobeComponentThumbnailRGBATexture;
  self->_strobeComponentThumbnailRGBATexture = v31;

  if (!self->_strobeComponentThumbnailRGBATexture)
  {
    sub_11E64();
    goto LABEL_38;
  }

  [newTextureDescriptor setLabel:0];
  allocator8 = [(FigMetalContext *)self->_metalContext allocator];
  v34 = [allocator8 newTextureWithDescriptor:newTextureDescriptor];
  strobeCorrectedThumbnailRGBTexture = self->_strobeCorrectedThumbnailRGBTexture;
  self->_strobeCorrectedThumbnailRGBTexture = v34;

  if (!self->_strobeCorrectedThumbnailRGBTexture)
  {
    sub_11DF0();
    goto LABEL_38;
  }

  desc5 = [newTextureDescriptor desc];
  [desc5 setPixelFormat:125];

  [newTextureDescriptor setLabel:0];
  allocator9 = [(FigMetalContext *)self->_metalContext allocator];
  v38 = [allocator9 newTextureWithDescriptor:newTextureDescriptor];
  strobeBalancedThumbnailRGBTexture = self->_strobeBalancedThumbnailRGBTexture;
  self->_strobeBalancedThumbnailRGBTexture = v38;

  if (!self->_strobeBalancedThumbnailRGBTexture)
  {
    sub_11D7C();
    goto LABEL_38;
  }

  [newTextureDescriptor setLabel:0];
  allocator10 = [(FigMetalContext *)self->_metalContext allocator];
  v41 = [allocator10 newTextureWithDescriptor:newTextureDescriptor];
  strobeReconstructedBalancedThumbnailRGBTexture = self->_strobeReconstructedBalancedThumbnailRGBTexture;
  self->_strobeReconstructedBalancedThumbnailRGBTexture = v41;

  if (!self->_strobeReconstructedBalancedThumbnailRGBTexture)
  {
    sub_11D08();
    goto LABEL_38;
  }

  desc6 = [newTextureDescriptor desc];
  [desc6 setPixelFormat:25];

  [newTextureDescriptor setLabel:0];
  allocator11 = [(FigMetalContext *)self->_metalContext allocator];
  v45 = [allocator11 newTextureWithDescriptor:newTextureDescriptor];
  strobeBeamProfileGainRTexture = self->_strobeBeamProfileGainRTexture;
  self->_strobeBeamProfileGainRTexture = v45;

  if (!self->_strobeBeamProfileGainRTexture)
  {
    sub_11C94();
    goto LABEL_38;
  }

  [newTextureDescriptor setLabel:0];
  allocator12 = [(FigMetalContext *)self->_metalContext allocator];
  v48 = [allocator12 newTextureWithDescriptor:newTextureDescriptor];
  strobeIlluminationConfidenceRTexture = self->_strobeIlluminationConfidenceRTexture;
  self->_strobeIlluminationConfidenceRTexture = v48;

  if (!self->_strobeIlluminationConfidenceRTexture)
  {
    sub_11C20();
    goto LABEL_38;
  }

  sensorSpaceConversionComponent = self->_sensorSpaceConversionComponent;
  sensorSpaceConversionConfig = [configCopy sensorSpaceConversionConfig];
  v52 = [(CMIColourConstancySensorSpaceConversionV1 *)sensorSpaceConversionComponent prepareToProcessWithConfig:sensorSpaceConversionConfig];

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
  strobeCorrectionConfig = [configCopy strobeCorrectionConfig];
  v52 = [(CMIColourConstancyStrobeCorrectionV1 *)strobeCorrectionComponent prepareToProcessWithConfig:strobeCorrectionConfig];

  if (v52)
  {
    sub_118D8();
    goto LABEL_48;
  }

  whiteBalanceStrobeComponent = self->_whiteBalanceStrobeComponent;
  whiteBalanceStrobeConfig = [configCopy whiteBalanceStrobeConfig];
  v52 = [(CMIColourConstancyWhiteBalanceStrobeV1 *)whiteBalanceStrobeComponent prepareToProcessWithConfig:whiteBalanceStrobeConfig];

  if (v52)
  {
    sub_11950();
    goto LABEL_48;
  }

  toneCompressionComponent = self->_toneCompressionComponent;
  toneCompressionConfig = [configCopy toneCompressionConfig];
  v52 = [(CMIColourConstancyToneCompressionV1 *)toneCompressionComponent prepareToProcessWithConfig:toneCompressionConfig];

  if (v52)
  {
    sub_119C8();
    goto LABEL_48;
  }

  colourAccuracyConfidenceComponent = self->_colourAccuracyConfidenceComponent;
  colourAccuracyConfidenceConfig = [configCopy colourAccuracyConfidenceConfig];
  v52 = [(CMIColourConstancyConfidenceV1 *)colourAccuracyConfidenceComponent prepareToProcessWithConfig:colourAccuracyConfidenceConfig];

  if (v52)
  {
    sub_11A40();
    goto LABEL_48;
  }

  styleTransferComponent = self->_styleTransferComponent;
  styleTransferConfig = [configCopy styleTransferConfig];
  v52 = [(CMIColourConstancyStyleTransferV1 *)styleTransferComponent prepareToProcessWithConfig:styleTransferConfig];

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

  clippingRecoveryConfig = [configCopy clippingRecoveryConfig];
  v52 = [(CMIColourConstancyClippingRecoveryV1 *)v66 prepareToProcessWithConfig:clippingRecoveryConfig];

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
  finishProcessing = [(CMIColourConstancyStyleTransferV1 *)self->_styleTransferComponent finishProcessing];
  if (finishProcessing)
  {
    sub_12204();
  }

  return finishProcessing;
}

- (unint64_t)applyWithAmbientLumaTexture:(double)texture ambientChromaTexture:(float)chromaTexture flashLumaTexture:(float)lumaTexture flashChromaTexture:(double)flashChromaTexture ambientYUVOffsets:(double)offsets flashYUVOffsets:(double)vOffsets ambientLSCGainsTexture:(float)gainsTexture flashLSCGainsTexture:(uint64_t)self0 ambientLSCMaxGain:(void *)self1 flashLSCMaxGain:(void *)self2 ambientWhitePoint:(void *)self3 flashWhitePoint:(void *)self4 strobeWhitePoint:(void *)self5 ambientIntegrationTime:(void *)self6 flashIntegrationTime:(float)self7 cropRect:(uint64_t)self8 LSCCropRect:(CMIColourConstancyLSCCropRect *)self9 fullSizeDimensions:(_DWORD *)dimensions strobeCCM:(id)m outputColourAccuracyConfidenceTexture:(uint64_t)confidenceTexture outputLumaTexture:(id)outputLumaTexture outputChromaTexture:(uint64_t)outputChromaTexture outputLinearRGBTexture:(double)bTexture
{
  gainCopy = gain;
  maxGainCopy = maxGain;
  pointCopy = point;
  whitePointCopy = whitePoint;
  strobeWhitePointCopy = strobeWhitePoint;
  timeCopy = time;
  v87 = a29;
  v93 = a30;
  v92 = a31;
  v91 = a32;
  commandBuffer = [*(self + 8) commandBuffer];
  if (!commandBuffer)
  {
    sub_1289C(&v96);
    v79 = v96;
LABEL_31:
    v81 = v87;
    goto LABEL_17;
  }

  v46 = commandBuffer;
  v47 = [*(self + 24) registerImage:gainCopy referenceLumaTexture:pointCopy];
  if (v47)
  {
    v79 = v47;
    sub_1227C(v46);
    goto LABEL_31;
  }

  v49 = *(self + 32);
  if (v49)
  {
    [*(self + 24) homography];
    v50 = [v49 applyClippedRegionRecovery:v46 inputAmbientLumaTexture:gainCopy inputAmbientChromaTexture:maxGainCopy inoutFlashLumaTexture:pointCopy inoutFlashChromaTexture:whitePointCopy ambientToFlashRegistrationHomography:?];
    if (v50)
    {
      v79 = v50;
      sub_1230C(v46);
      goto LABEL_31;
    }
  }

  v51 = *(self + 40);
  v53 = *(self + 128);
  v52 = *(self + 136);
  v54 = *(self + 120);
  v96 = *dimensions;
  v97 = dimensions[4];
  *&v48 = lumaTexture;
  v55 = [v51 calculateScaledLSCGainsAndStrobeBeamProfile:v46 ambientLSCGainsTexture:strobeWhitePointCopy flashLSCGainsTexture:timeCopy cropRect:rect LSCCropRect:cropRect fullSizeDimensions:&v96 ambientLSCMaxGain:*&m flashLSCMaxGain:COERCE_DOUBLE(__PAIR64__(DWORD1(v96) outputAmbientScaledLSCGainsRGBTexture:LODWORD(chromaTexture))) outputFlashScaledLSCGainsRGBTexture:v48 outputStrobeBeamProfileGainRTexture:{v54, v52, v53}];
  if (v55)
  {
    v79 = v55;
    sub_1239C(v46);
    goto LABEL_31;
  }

  v56 = *(self + 40);
  v57 = *(self + 120);
  [*(self + 24) homography];
  v61 = [v56 convertYUVtoRegisteredNormSensorSpaceThumbnail:v46 inputLumaTexture:gainCopy inputChromaTexture:maxGainCopy appliedScaledLSCGainsRGBTexture:v57 baseScaledLSCGainsRGBTexture:v57 yuvOffsets:a2 cropRect:v58 registrationHomography:v59 appliedWhitePoint:v60 integrationTimeScale:flashChromaTexture outputWarpedSensorThumbnailRGBATexture:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v60), integrationTime / fmaxf(gainsTexture, 0.00000011921))), rect, cropRect, *(self + 104)}];
  if (v61)
  {
    v79 = v61;
    sub_1241C(v46);
    goto LABEL_31;
  }

  v63 = *(self + 96);
  LODWORD(v62) = 1.0;
  v64 = [*(self + 40) convertYUVtoNormSensorSpaceThumbnail:v46 inputLumaTexture:pointCopy inputChromaTexture:whitePointCopy appliedScaledLSCGainsRGBTexture:*(self + 136) baseScaledLSCGainsRGBTexture:*(self + 120) yuvOffsets:texture cropRect:offsets appliedWhitePoint:v62 integrationTimeScale:rect outputBalancedThumbnailRGBATexture:cropRect outputSensorThumbnailRGBATexture:{v63, *(self + 112)}];
  if (v64)
  {
    v79 = v64;
    sub_1249C(v46);
    goto LABEL_31;
  }

  v65 = [*(self + 48) encodeStrobeComponentCalculate:v46 flashSensorRGBATexture:*(self + 112) ambientSensorRGBATexture:*(self + 104) strobeWhitePoint:*(self + 144) outputStrobeComponentRGBATexture:vOffsets];
  if (v65)
  {
    v79 = v65;
    sub_1251C(v46);
    goto LABEL_31;
  }

  v66 = [*(self + 56) applyStrobeCorrection:v46 strobeComponentRGBTexture:*(self + 144) strobeBeamProfileGainRTexture:*(self + 128) outputStrobeCorrectedRGBTexture:*(self + 152)];
  if (v66)
  {
    v79 = v66;
    sub_1259C(v46);
    goto LABEL_31;
  }

  v67 = [*(self + 80) calculateStrobeIlluminationConfidence:v46 strobeComponentRGBTexture:*(self + 144) outputStrobeIlluminationConfidenceRTexture:*(self + 168)];
  if (v67)
  {
    v79 = v67;
    sub_1261C(v46);
    goto LABEL_31;
  }

  v68 = [*(self + 64) applyWhiteBalanceAndFlashFusion:v46 strobeSensorRGBTexture:*(self + 152) flashBalancedRGBTexture:*(self + 96) strobeIlluminationConfidenceRTexture:*(self + 168) strobeWhitePoint:*(self + 160) outputStrobeBalancedRGBTexture:vOffsets];
  if (v68)
  {
    v79 = v68;
    sub_1269C(v46);
    goto LABEL_31;
  }

  v69 = [*(self + 72) calculateToneCompressionCurve:v46 strobeComponentRGBTexture:*(self + 160) strobeCCM:?];
  if (v69)
  {
    v79 = v69;
    sub_1271C(v46);
    goto LABEL_31;
  }

  v83 = gainCopy;
  v84 = maxGainCopy;
  v70 = *(self + 136);
  v72 = *(self + 88);
  v71 = *(self + 96);
  v73 = *(self + 160);
  toneCompressionCurveTexture = [*(self + 72) toneCompressionCurveTexture];
  v75 = whitePointCopy;
  v76 = toneCompressionCurveTexture;
  v77 = v72;
  v78 = v75;
  v79 = [v77 applyStyleTransferWithBufferClearing:pointCopy inputChromaTexture:texture appliedScaledLSCGainsRGBTexture:offsets sourceRGBTexture:*&outputLumaTexture targetRGBTexture:bTexture toneCompressionCurveTexture:a27 inputYUVOffsets:rect cropRect:cropRect appliedWhitePoint:*(self + 176) strobeCCM:v93 outputReconstructedTargetRGBTexture:v92 outputLumaTexture:v91 outputChromaTexture:? outputLinearRGBTexture:?];

  if (v79)
  {
    sub_1279C(v46);
    gainCopy = v83;
    maxGainCopy = v84;
    whitePointCopy = v78;
    goto LABEL_31;
  }

  commandBuffer2 = [*(self + 8) commandBuffer];

  v81 = v87;
  v79 = [*(self + 80) calculateColourAccuracyConfidence:commandBuffer2 strobeComponentRGBATexture:*(self + 144) strobeBalancedThumbnailRGBTexture:*(self + 160) strobeReconstructedBalancedThumbnailRGBTexture:*(self + 176) outputColourAccuracyConfidenceTexture:v87];
  gainCopy = v83;
  maxGainCopy = v84;
  if (v79)
  {
    sub_1281C(commandBuffer2);
  }

  else
  {
    [*(self + 8) commit];
  }

  whitePointCopy = v78;
LABEL_17:

  return v79;
}

- (int)getCenterWeightedColourAccuracyConfidenceLevel:(float *)level
{
  if (level)
  {
    globalCenterWeightedConfidenceLevelBuffer = [(CMIColourConstancyConfidenceV1 *)self->_colourAccuracyConfidenceComponent globalCenterWeightedConfidenceLevelBuffer];
    contents = [globalCenterWeightedConfidenceLevelBuffer contents];

    result = 0;
    *level = *contents;
  }

  else
  {
    sub_12968();
    return 10;
  }

  return result;
}

@end