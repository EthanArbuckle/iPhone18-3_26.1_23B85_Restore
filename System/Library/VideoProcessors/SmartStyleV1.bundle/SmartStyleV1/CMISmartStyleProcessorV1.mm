@interface CMISmartStyleProcessorV1
+ (id)getDefaultProcessorConfigurationForStills;
+ (id)getDefaultProcessorConfigurationForStills3x4;
+ (id)getDefaultProcessorConfigurationForStillsReversibility;
+ (id)getDefaultProcessorConfigurationForStillsReversibility3x4;
+ (id)getDefaultProcessorConfigurationForStreaming;
+ (id)getDefaultProcessorConfigurationForStreamingAccelerated;
+ (id)getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatio;
+ (id)getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatioWithFilterType:(unint64_t)a3;
+ (id)getDefaultProcessorConfigurationForStreamingAcceleratedWithFilterType:(unint64_t)a3;
+ (id)getDefaultProcessorConfigurationForStreamingSquareAspectRatio;
+ (id)getDefaultProcessorConfigurationForStreamingSquareAspectRatioWithFilterType:(unint64_t)a3;
+ (id)getDefaultProcessorConfigurationForStreamingWithFilterType:(unint64_t)a3;
+ (unint64_t)getSmartStyleCoefficientsFilterType:(id)a3;
+ (unsigned)getRequiredFilteredCoefficientsPixelBufferPoolSizeForFilterType:(unint64_t)a3;
+ (unsigned)getRequiredInputBufferSizeForFilterType:(unint64_t)a3;
- (BOOL)requiresReconfigurationForConfiguration:(id)a3;
- (CMISmartStyleProcessorV1)init;
- (CMISmartStyleProcessorV1)initWithOptionalMetalCommandQueue:(id)a3 ispSMGProcessingSession:(OpaqueFigCaptureISPProcessingSession *)a4;
- (id)externalMemoryDescriptorForConfiguration:(id)a3;
- (int)_configureInputLinearPixelBufferForPixelBufferRenderer:(__CVBuffer *)a3 withinputLinearCropRect:(CGRect)a4;
- (int)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(__CVBuffer *)a3 withinputUnstyledCropRect:(CGRect)a4 inputUnstyledThumbnailPixelBuffer:(__CVBuffer *)a5 withinputUnstyledThumbnailCropRect:(CGRect)a6;
- (int)_configureOutputStyledThumbnailPixelBufferForPixelBufferRenderer:(__CVBuffer *)a3 unstyledThumbnailPixelBuffer:(__CVBuffer *)a4;
- (int)_configureStyleEngineTargetThumbnailPixelBuffer:(__CVBuffer *)a3 inputTargetThumbnailPixelBuffer:(__CVBuffer *)a4;
- (int)finishProcessing;
- (int)prewarm;
- (int)process;
- (int)purgeResources;
- (int)resetState;
- (int)setup;
- (uint64_t)_configureStyleEngineInputUnstyledThumbnailPixelBuffer:(double)a3 withinputUnstyledCropRect:(double)a4 inputUnstyledThumbnailPixelBuffer:(double)a5 withinputUnstyledThumbnailCropRect:(double)a6 inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:(double)a7 withInputUnstyledThumbnailUsedForTargetGenerationCropRect:(double)a8;
- (uint64_t)finishProcessing;
- (uint64_t)prewarm;
- (uint64_t)process;
- (uint64_t)purgeResources;
- (uint64_t)resetState;
- (uint64_t)setup;
- (void)dealloc;
- (void)setCameraInfoByPortType:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setTuningParameters:(id)a3;
@end

@implementation CMISmartStyleProcessorV1

- (CMISmartStyleProcessorV1)init
{
  v8.receiver = self;
  v8.super_class = CMISmartStyleProcessorV1;
  v2 = [(CMISmartStyleProcessorV1 *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_previousSRLCurveParameter = -1.0;
    v4 = [CMISmartStyleCommonSettings tuningParametersForVariant:0];
    [v4 srlCurrentValueWeight];
    v3->_srlWeight = v5;

    v6 = v3;
  }

  else
  {
    [CMISmartStyleProcessorV1 init];
  }

  return v3;
}

- (CMISmartStyleProcessorV1)initWithOptionalMetalCommandQueue:(id)a3 ispSMGProcessingSession:(OpaqueFigCaptureISPProcessingSession *)a4
{
  v7 = a3;
  v8 = [(CMISmartStyleProcessorV1 *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_metalCommandQueue, a3);
    ispSMGProcessingSession = v9->_ispSMGProcessingSession;
    v9->_ispSMGProcessingSession = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    if (ispSMGProcessingSession)
    {
      CFRelease(ispSMGProcessingSession);
    }

    v11 = v9;
  }

  else
  {
    [CMISmartStyleProcessorV1 initWithOptionalMetalCommandQueue:ispSMGProcessingSession:];
  }

  return v9;
}

- (void)dealloc
{
  [(CMISmartStyleProcessorV1 *)self finishProcessing];
  [(CMISmartStyleProcessorV1 *)self purgeResources];
  utilities = self->_utilities;
  self->_utilities = 0;

  ispSMGProcessingSession = self->_ispSMGProcessingSession;
  if (ispSMGProcessingSession)
  {
    CFRelease(ispSMGProcessingSession);
    self->_ispSMGProcessingSession = 0;
  }

  v5.receiver = self;
  v5.super_class = CMISmartStyleProcessorV1;
  [(CMISmartStyleProcessorV1 *)&v5 dealloc];
}

- (int)process
{
  v3 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSmartStyle];
  v292 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputMetadataDict];
  v290 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLinearMetadataDict];
  v4 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputUnstyledPixelBuffer];
  v5 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputUnstyledThumbnailPixelBuffer];
  v267 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLearningTargetPixelBuffer];
  v266 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLearningTargetThumbnailPixelBuffer];
  v282 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLinearPixelBuffer];
  v261 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputGainMapPixelBuffer];
  v6 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputPersonMaskPixelBuffer];
  v285 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSkinMaskPixelBuffer];
  v7 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSkyMaskPixelBuffer];
  v224 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSRLPixelBuffer];
  v269 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputStyleCoefficientsPixelBuffer];
  v247 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputDeltaMapPixelBuffer];
  v8 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputReferenceForDeltaMapComputationPixelBuffer];
  v262 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput semanticStyleSceneType];
  v284 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputTuningType];
  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput personMasksValidHint];
  v263 = v9;
  v229 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputWeightPlanePixelBufferScaledForISPSMG];
  v274 = [(CMISmartStyleProcessorV1 *)self _isStreaming];
  v10 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputStyledPixelBuffer];
  v265 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputSmallLightMapPixelBuffer];
  v264 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputSmallLinearLightMapPixelBuffer];
  v11 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputDeltaMapPixelBuffer];
  v270 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputLearnedStyleCoefficientsPixelBuffer];
  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputUnstyledCropRect];
  if (CGRectIsEmpty(v294))
  {
    Width = CVPixelBufferGetWidth(v4);
    Height = CVPixelBufferGetHeight(v4);
    v12 = 0.0;
    v13 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputUnstyledCropRect];
    v12 = v14;
    v13 = v15;
    Height = v17;
    Width = v16;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputUnstyledThumbnailCropRect];
  if (CGRectIsEmpty(v295))
  {
    v281 = CVPixelBufferGetWidth(v5);
    v280 = CVPixelBufferGetHeight(v5);
    v18 = 0.0;
    v19 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputUnstyledThumbnailCropRect];
    v18 = v20;
    v19 = v21;
    v280 = v23;
    v281 = v22;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputPersonMaskCropRect];
  if (CGRectIsEmpty(v296))
  {
    v260 = CVPixelBufferGetWidth(v6);
    v258 = 0.0;
    v259 = CVPixelBufferGetHeight(v6);
    v257 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputPersonMaskCropRect];
    v257 = v25;
    v258 = v24;
    v259 = v27;
    v260 = v26;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSkyMaskCropRect];
  if (CGRectIsEmpty(v297))
  {
    v256 = CVPixelBufferGetWidth(v7);
    v254 = 0.0;
    v255 = CVPixelBufferGetHeight(v7);
    v253 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSkyMaskCropRect];
    v253 = v29;
    v254 = v28;
    v255 = v31;
    v256 = v30;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSkinMaskCropRect];
  if (CGRectIsEmpty(v298))
  {
    v252 = CVPixelBufferGetWidth(v285);
    v250 = 0.0;
    v251 = CVPixelBufferGetHeight(v285);
    v249 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputSkinMaskCropRect];
    v249 = v33;
    v250 = v32;
    v251 = v35;
    v252 = v34;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputStyledCropRect];
  if (CGRectIsEmpty(v299))
  {
    rect = CVPixelBufferGetWidth(v10);
    v246 = 0.0;
    v244 = CVPixelBufferGetHeight(v10);
    v245 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputStyledCropRect];
    v245 = v37;
    v246 = v36;
    rect = v38;
    v244 = v39;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputDeltaMapCropRect];
  if (CGRectIsEmpty(v300))
  {
    CVPixelBufferGetWidth(v11);
    CVPixelBufferGetHeight(v11);
    v222 = 0.0;
    v223 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputDeltaMapCropRect];
    v222 = v41;
    v223 = v40;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputReferenceForDeltaMapComputationCropRect];
  if (CGRectIsEmpty(v301))
  {
    CVPixelBufferGetWidth(v8);
    CVPixelBufferGetHeight(v8);
    v220 = 0.0;
    v221 = 0.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputReferenceForDeltaMapComputationCropRect];
    v220 = v43;
    v221 = v42;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput primaryCaptureRect];
  pixelBuffer = v8;
  if (CGRectIsEmpty(v302))
  {
    v230 = 0.0;
    v238 = 0.0;
    v236 = 1.0;
    v44 = 1.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput primaryCaptureRect];
    v230 = v45;
    v238 = v46;
    v236 = v47;
    v44 = v48;
  }

  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputCropRectWithinPrimaryCaptureRect];
  v237 = v44;
  if (CGRectIsEmpty(v303))
  {
    v241 = 0.0;
    r1 = 1.0;
    v240 = 0.0;
    v239 = 1.0;
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputCropRectWithinPrimaryCaptureRect];
    v240 = v49;
    v241 = v50;
    v239 = v51;
    r1 = v52;
  }

  v53 = v3;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  v56 = CGRectNull.size.width;
  v57 = CGRectNull.size.height;
  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputRenderRect];
  v291 = v57;
  v278 = v56;
  v277 = y;
  v276 = CGRectNull.origin.x;
  if (!CGRectIsEmpty(v304))
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputRenderRect];
    v276 = v58;
    v277 = v59;
    v278 = v60;
    v57 = v61;
  }

  v62 = v6;
  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput deltaMapRegionToRenderRect];
  IsEmpty = CGRectIsEmpty(v305);
  v64 = v291;
  v65 = v56;
  v66 = y;
  v67 = CGRectNull.origin.x;
  v248 = IsEmpty;
  if (!IsEmpty)
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput deltaMapRegionToRenderRect:CGRectNull.origin.x];
  }

  v225 = v67;
  v226 = v66;
  v216 = v65;
  v217 = v64;
  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput spotlightAffineTransform];
  v234 = v69;
  v235 = v68;
  v233 = v70;
  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput globalLinearSystemMixFactor];
  v231 = v71;
  v243 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput residualsCalculationDisabled];
  v232 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput applyDither];
  v72 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput metalSharedEvent];
  v279 = v72;
  if (v72)
  {
    v73 = v72;
    v74 = [(FigMetalContext *)self->_metalContext commandBuffer];
    if (!v74)
    {
      [(CMISmartStyleProcessorV1 *)v293 process];
      v207 = v293[0];
LABEL_155:
      v116 = v284;
      v117 = v53;
      goto LABEL_142;
    }

    v75 = v74;
    [v74 encodeWaitForEvent:v73 value:1];
    [(FigMetalContext *)self->_metalContext commit];
  }

  v227 = v10;
  v228 = v11;
  if (!self->_shouldGenerateTarget)
  {
    v115 = 0;
    v116 = v284;
    v117 = v53;
    goto LABEL_71;
  }

  if (!(v4 | v5))
  {
    [CMISmartStyleProcessorV1 process];
LABEL_154:
    v207 = 1;
    goto LABEL_155;
  }

  if (!v292)
  {
    [CMISmartStyleProcessorV1 process];
    goto LABEL_154;
  }

  if (!v282)
  {
    [CMISmartStyleProcessorV1 process];
    goto LABEL_154;
  }

  v219 = [v292 objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  v76 = v291;
  v77 = v56;
  v78 = y;
  v79 = CGRectNull.origin.x;
  v215 = v7;
  if (v274)
  {
    v80 = [v219 isEqual:{kFigCapturePortType_FrontFacingSuperWideCamera, CGRectNull.origin.x, y, v56, v291}];
    v76 = v291;
    v77 = v56;
    v78 = y;
    v79 = CGRectNull.origin.x;
    if (v80)
    {
      [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration intermediateStyleRendererThumbnailSize:CGRectNull.origin.x];
      v212 = v12;
      v213 = v19;
      v81 = v13;
      v83 = v82;
      v85 = v84;
      FigCaptureMetadataUtilitiesGetFinalCropRect();
      CMIDenormalizeCropRect();
      FigCaptureAspectRatioForDimensions();
      v86 = v57;
      v87 = v81;
      v7 = v85;
      FigCaptureUnityRect();
      v88 = v86;
      x = CGRectNull.origin.x;
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect();
      FigCaptureMetadataUtilitiesRoundRectToMultipleOf();
      v317.origin.x = v89;
      v317.origin.y = v90;
      v317.size.width = v91;
      v317.size.height = v92;
      v306.origin.x = 0.0;
      v306.origin.y = 0.0;
      v306.size.width = v83;
      v306.size.height = v85;
      CGRectIntersection(v306, v317);
      v13 = v87;
      v57 = v88;
      v12 = v212;
      v19 = v213;
      CMINormalizeCropRect();
    }
  }

  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setStatsComputationRect:v79, v78, v77, v76];
  v93 = v62;
  if ([(CMISmartStyleProcessorInputOutput *)self->_inputOutput subjectRelightingEnabled]&& v285 && v62)
  {
    if (!v224)
    {
      [(CMISmartStyleProcessorV1 *)v293 process];
      v207 = v293[0];
      v117 = v53;
      goto LABEL_166;
    }

    v214 = v19;
    v94 = v56;
    v95 = v18;
    v96 = y;
    v97 = x;
    v98 = v13;
    v99 = [v292 objectForKeyedSubscript:kFigCaptureStreamMetadata_DetectedObjectsInfo];
    v100 = [v99 objectForKeyedSubscript:kFigCaptureStreamDetectedObjectsInfoKey_HumanFaces];

    v101 = [v292 objectForKeyedSubscript:kFigCaptureStreamMetadata_ExposureBias];
    [v101 floatValue];
    v103 = v102;

    LODWORD(v211) = 0;
    LODWORD(v104) = v103;
    [(CMISubjectRelightingStage *)self->_subjectRelightingStage runSRLForLivePhotosWithInputBuffer:v224 skinMask:v285 personMask:v62 instanceMasks:0 instanceMaskConfidences:0 skinToneClassification:0 expBias:v104 exifOrientation:v211 srlV2Plist:0 faceDataFromANST:v100];
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSRLCoefficientsBuf:0];
    previousSRLCurveParameter = self->_previousSRLCurveParameter;
    [(CMISubjectRelightingStage *)self->_subjectRelightingStage lastComputedCurveParameter];
    v107 = -1.0;
    v108 = fminf(fmaxf(v106, 0.25), 0.5);
    if (v106 == -1.0)
    {
      v109 = 0;
    }

    else
    {
      v106 = v108;
      v109 = previousSRLCurveParameter == -1.0;
    }

    if (v109)
    {
      v110 = v106;
    }

    else
    {
      v110 = previousSRLCurveParameter;
    }

    if (v110 != -1.0 || v106 != -1.0)
    {
      v107 = (v106 * self->_srlWeight) + ((1.0 - self->_srlWeight) * v110);
    }

    v111 = v107;
    if (v107 <= 0.499)
    {
      v112 = v107;
    }

    else
    {
      v112 = 0.5;
    }

    *&v111 = v112;
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput setOutputSRLCurveParameter:v111];
    *&v113 = v112;
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSRLCurveParameter:v113];
    self->_previousSRLCurveParameter = v112;
    v114 = [(CMISubjectRelightingStage *)self->_subjectRelightingStage lastComputedRelightingStats];
    v7 = [NSData dataWithData:v114];
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput setOutputSRLStats:v7];

    v13 = v98;
    x = v97;
    y = v96;
    v18 = v95;
    v56 = v94;
    v19 = v214;
    v93 = v62;
  }

  else
  {
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSRLCoefficientsBuf:0];
    LODWORD(v118) = -1.0;
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSRLCurveParameter:v118];
    LODWORD(v119) = -1.0;
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput setOutputSRLCurveParameter:v119];
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput setOutputSRLStats:0];
  }

  v117 = v53;
  if (([(CMISmartStyleProcessorInputOutput *)self->_inputOutput computeOnlySubjectRelighting]& 1) != 0)
  {
    v207 = 0;
LABEL_166:

    v116 = v284;
    goto LABEL_142;
  }

  v120 = [(CMISmartStyleProcessorV1 *)self _configureInputUnstyledPixelBufferForPixelBufferRenderer:v4 withinputUnstyledCropRect:v5 inputUnstyledThumbnailPixelBuffer:v12 withinputUnstyledThumbnailCropRect:v13, Width, Height, v18, v19, v281, v280];
  if (v120)
  {
    v207 = v120;
    [CMISmartStyleProcessorV1 process];
    goto LABEL_166;
  }

  v115 = [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer inputPixelBuffer];
  [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLinearCropRect];
  if (CGRectIsEmpty(v307))
  {
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputLinearPixelBuffer:v282];
  }

  else
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLinearCropRect];
    v121 = [(CMISmartStyleProcessorV1 *)self _configureInputLinearPixelBufferForPixelBufferRenderer:v282 withinputLinearCropRect:?];
    if (v121)
    {
      v207 = v121;
      [CMISmartStyleProcessorV1 process];
      goto LABEL_166;
    }
  }

  v122 = [(CMISmartStyleProcessorV1 *)self _configureOutputStyledThumbnailPixelBufferForPixelBufferRenderer:v4 unstyledThumbnailPixelBuffer:v5];
  if (v122)
  {
    v207 = v122;
    [CMISmartStyleProcessorV1 process];
    goto LABEL_166;
  }

  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputStyle:v53];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputMetadataDict:v292];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputLinearMetadataDict:v290];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputGainMapPixelBuffer:v261];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputPersonMaskPixelBuffer:v93];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputPersonMaskCropRect:v258, v257, v260, v259];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSkinMaskPixelBuffer:v285];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSkinMaskCropRect:v250, v249, v252, v251];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSkyMaskPixelBuffer:v215];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputSkyMaskCropRect:v254, v253, v256, v255];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setSemanticStyleSceneType:v262];
  v116 = v284;
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setTuningParameterVariant:v284];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setIsStreaming:v274 & ~self->_shouldFlushCVMTLTextureCacheAfterProcessing & 1];
  LODWORD(v123) = v263;
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setPersonMasksValidHint:v123];
  v124 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputImageStatistics];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setOutputImageStatistics:v124];

  v125 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputImageStatisticsExtended];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setOutputImageStatisticsExtended:v125];

  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setOutputSmallLightMapPixelBuffer:v265];
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setOutputSmallLinearLightMapPixelBuffer:v264];

LABEL_71:
  if (self->_shouldEncodeLinear)
  {
    [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLinearCropRect];
    if (CGRectIsEmpty(v308))
    {
      [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputLinearPixelBuffer:v282];
    }

    else
    {
      [(CMISmartStyleProcessorInputOutput *)self->_inputOutput inputLinearCropRect];
      v126 = [(CMISmartStyleProcessorV1 *)self _configureInputLinearPixelBufferForPixelBufferRenderer:v282 withinputLinearCropRect:?];
      if (v126)
      {
        v207 = v126;
        [CMISmartStyleProcessorV1 process];
        goto LABEL_142;
      }
    }

    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputMetadataDict:v292];
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputLinearMetadataDict:v290];
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setOutputCodedLinearPixelBuffer:[(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputCodedLinearThumbnailPixelBuffer]];
    v127 = [(CMISmartStyleProcessorInputOutput *)self->_inputOutput outputCodedLinearThumbnailMetadata];
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setOutputCodedLinearMetadata:v127];
  }

  if ((self->_shouldGenerateTarget || self->_shouldEncodeLinear) && [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer process])
  {
    [(CMISmartStyleProcessorV1 *)v293 process];
    v207 = v293[0];
    goto LABEL_142;
  }

  if (self->_shouldLearn)
  {
    if (v4 | v5)
    {
      if (self->_shouldIntegrate || self->_shouldApply || v270)
      {
        v128 = [(CMISmartStyleProcessorV1 *)self _configureStyleEngineInputUnstyledThumbnailPixelBuffer:v4 withinputUnstyledCropRect:v5 inputUnstyledThumbnailPixelBuffer:v115 withinputUnstyledThumbnailCropRect:v12 inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:v13 withInputUnstyledThumbnailUsedForTargetGenerationCropRect:Width, Height, v18, v19, v281, v280, *&x, *&y, *&v56, *&v291];
        if (v128)
        {
          v207 = v128;
          [CMISmartStyleProcessorV1 process];
          goto LABEL_142;
        }

        v129 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor inputThumbnailPixelBuffer];
        v130 = [(CMISmartStyleProcessorV1 *)self _configureStyleEngineTargetThumbnailPixelBuffer:v267 inputTargetThumbnailPixelBuffer:v266];
        if (v130)
        {
          v207 = v130;
          [CMISmartStyleProcessorV1 process];
          goto LABEL_142;
        }

        v131 = v5;
        v283 = v56;
        v218 = x;
        v132 = v57;
        v133 = v19;
        v134 = v18;
        v286 = v13;
        v135 = v12;
        [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputWeightPlanePixelBufferScaledForISPSMG:v229];
        [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setOutputLinearSystemCoefficientsPixelBuffer:v270];
        v136 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor tuningParameters];
        v137 = 0.0;
        [v136 cmi_floatValueForKey:@"StylePriorStrength" defaultValue:0 found:0.0];
        v139 = v138;
        v140 = 1.0;
        if (v138 < 1.0)
        {
          v7 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor tuningParameters];
          [(__CVBuffer *)v7 cmi_floatValueForKey:@"StylePriorStrength" defaultValue:0 found:0.0];
          if (v141 <= 0.0)
          {
            goto LABEL_91;
          }
        }

        v142 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor tuningParameters];
        [v142 cmi_floatValueForKey:@"StylePriorStrength" defaultValue:0 found:0.0];
        if (v143 < 1.0)
        {
          v144 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor tuningParameters];
          [v144 cmi_floatValueForKey:@"StylePriorStrength" defaultValue:0 found:0.0];
          v140 = v145;
        }

        v137 = v140;
        if (v139 < 1.0)
        {
LABEL_91:

          v140 = v137;
        }

        p_previousStyle = &self->_previousStyle;
        v147 = [(CMISmartStyle *)self->_previousStyle castType];
        v148 = [v117 castType];
        if (![v147 isEqualToString:v148])
        {
          goto LABEL_96;
        }

        [(CMISmartStyle *)*p_previousStyle toneBias];
        v150 = v149;
        [v117 toneBias];
        if (vabds_f32(v150, v151) > 0.00000011921)
        {
          goto LABEL_96;
        }

        [(CMISmartStyle *)*p_previousStyle colorBias];
        v153 = v152;
        [v117 colorBias];
        if (vabds_f32(v153, v154) <= 0.00000011921 && (-[CMISmartStyle castIntensity](*p_previousStyle, "castIntensity"), v156 = v155, [v117 castIntensity], vabds_f32(v156, v157) <= 0.00000011921))
        {
          v210 = vabds_f32(self->_previousPriorStrength, v140);

          if (v210 <= 0.00000011921)
          {
            goto LABEL_98;
          }
        }

        else
        {
LABEL_96:
        }

        v158 = [v117 castType];
        [v117 toneBias];
        v160 = v159;
        [v117 colorBias];
        v162 = v161;
        [v117 castIntensity];
        LODWORD(v164) = v163;
        LODWORD(v165) = v160;
        LODWORD(v166) = v162;
        *&v167 = v140;
        [CMISmartStyleCCMPriorGenerator calculatePriorCCMforCast:v158 tone:v165 color:v166 intensity:v164 priorStrength:v167];
        v275 = v168;
        v271 = v169;
        v268 = v170;
        v171 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor configuration];
        [v171 setLinearSystemPriorMatrix:{v275, v271, v268}];

LABEL_98:
        objc_storeStrong(&self->_previousStyle, v117);
        self->_previousPriorStrength = v140;
        v172 = v129 == 0;
        v116 = v284;
        v12 = v135;
        v13 = v286;
        v18 = v134;
        v19 = v133;
        v57 = v132;
        x = v218;
        v56 = v283;
        v5 = v131;
        goto LABEL_100;
      }

      [CMISmartStyleProcessorV1 process];
    }

    else
    {
      [CMISmartStyleProcessorV1 process];
    }

    v207 = 1;
    goto LABEL_142;
  }

  v172 = 1;
LABEL_100:
  if (self->_shouldIntegrate)
  {
    if (!self->_shouldLearn)
    {
      if (!v269)
      {
        [CMISmartStyleProcessorV1 process];
        goto LABEL_169;
      }

      [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputLinearSystemCoefficientsPixelBuffer:?];
    }

    if (v172)
    {
      v173 = [(CMISmartStyleProcessorV1 *)self _configureStyleEngineInputUnstyledThumbnailPixelBuffer:v4 withinputUnstyledCropRect:v5 inputUnstyledThumbnailPixelBuffer:v115 withinputUnstyledThumbnailCropRect:v12 inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:v13 withInputUnstyledThumbnailUsedForTargetGenerationCropRect:Width, Height, v18, v19, v281, v280, *&x, *&y, *&v56, *&v291];
      if (v173)
      {
        v207 = v173;
        [CMISmartStyleProcessorV1 process];
        goto LABEL_142;
      }
    }
  }

  shouldLearn = self->_shouldLearn;
  if (!self->_shouldApply)
  {
    goto LABEL_132;
  }

  if (!self->_shouldLearn)
  {
    if (v269)
    {
      [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputLinearSystemCoefficientsPixelBuffer:?];
      goto LABEL_110;
    }

    [CMISmartStyleProcessorV1 process];
LABEL_169:
    v207 = 7;
    goto LABEL_142;
  }

LABEL_110:
  if (v172)
  {
    v175 = [(CMISmartStyleProcessorV1 *)self _configureStyleEngineInputUnstyledThumbnailPixelBuffer:v4 withinputUnstyledCropRect:v5 inputUnstyledThumbnailPixelBuffer:v115 withinputUnstyledThumbnailCropRect:v12 inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:v13 withInputUnstyledThumbnailUsedForTargetGenerationCropRect:Width, Height, v18, v19, v281, v280, *&x, *&y, *&v56, *&v291];
    if (v175)
    {
      v207 = v175;
      [CMISmartStyleProcessorV1 process];
      goto LABEL_142;
    }
  }

  v176 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor configuration];
  LODWORD(v177) = v231;
  [v176 setGlobalLinearSystemMixFactor:v177];

  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setSpotlightAffineTransform:v235, v234, v233];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setApplyDither:v232];
  v309.origin.x = v230;
  v309.origin.y = v238;
  v309.size.width = v236;
  v309.size.height = v237;
  if (!CGRectIsEmpty(v309))
  {
    v178 = CVPixelBufferGetWidth([(CMIStyleEngineProcessor *)self->_styleEngineProcessor inputThumbnailPixelBuffer]);
    v179 = CVPixelBufferGetHeight([(CMIStyleEngineProcessor *)self->_styleEngineProcessor inputThumbnailPixelBuffer]);
    v287 = v13;
    v180 = v230 * v178;
    v181 = v236 * v178;
    v182 = v12;
    v183 = v238 * v179;
    v184 = v237 * v179;
    v185 = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineConfiguration];
    [v185 thumbnailSize];
    v187 = v186;
    v188 = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineConfiguration];
    [v188 thumbnailSize];
    v318.size.height = v189;
    v318.origin.x = 0.0;
    v318.origin.y = 0.0;
    v310.origin.x = v180;
    v13 = v287;
    v310.origin.y = v183;
    v12 = v182;
    v310.size.width = v181;
    v310.size.height = v184;
    v318.size.width = v187;
    v311 = CGRectIntersection(v310, v318);
    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setSpotlightIntegrationROI:v311.origin.x, v311.origin.y, v311.size.width, v311.size.height];
  }

  v319.origin.x = 0.0;
  v319.origin.y = 0.0;
  v319.size.width = 1.0;
  v319.size.height = 1.0;
  v312.origin.x = v240;
  v312.origin.y = v241;
  v312.size.width = v239;
  v312.size.height = r1;
  v313 = CGRectIntersection(v312, v319);
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setSpotlightZoomROI:v313.origin.x, v313.origin.y, v313.size.width, v313.size.height];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputPixelBuffer:v4];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setOutputPixelBuffer:v227];
  v314.origin.x = v12;
  v314.origin.y = v13;
  v314.size.height = Height;
  v314.size.width = Width;
  if (!CGRectIsEmpty(v314))
  {
    v190 = -v13;
    v191 = v13;
    v192 = CVPixelBufferGetWidth(v4);
    v193 = CVPixelBufferGetHeight(v4);
    if (pixelBuffer)
    {
      v194 = !v248;
    }

    else
    {
      v194 = 0;
    }

    v195 = v225 - v12;
    v196 = v226 - v191;
    if (!v194 || v228 == 0)
    {
      v195 = -v12;
      v196 = v190;
    }

    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputImageRect:v195, v196, v192, v193];
  }

  v315.origin.x = v246;
  v315.origin.y = v245;
  v315.size.width = rect;
  v315.size.height = v244;
  if (!CGRectIsEmpty(v315))
  {
    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setImageSize:rect, v244];
    v197 = CVPixelBufferGetWidth(v227);
    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setOutputImageRect:-v246, -v245, v197, CVPixelBufferGetHeight(v227)];
  }

  if (pixelBuffer)
  {
    if (v228)
    {
      v198 = CVPixelBufferGetWidth(pixelBuffer);
      v199 = CVPixelBufferGetHeight(pixelBuffer);
      [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputOriginalPixelBuffer:pixelBuffer];
      [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputOriginalImageRect:-v221, -v220, v198, v199];
      v200 = CVPixelBufferGetWidth(v228);
      v201 = CVPixelBufferGetHeight(v228);
      [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setOutputDeltaMapPixelBuffer:v228];
      [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setOutputImageRect:-v223, -v222, v200, v201];
      if (!v248)
      {
        [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setRegionToRender:v225, v226, v216, v217];
      }
    }
  }

  v316.origin.x = v276;
  v316.origin.y = v277;
  v316.size.width = v278;
  v316.size.height = v57;
  if (!CGRectIsEmpty(v316))
  {
    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setRegionToRender:v276, v277, v278, v57];
  }

  if (v247)
  {
    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setInputDeltaMapPixelBuffer:?];
  }

  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setResidualsCalculationDisabled:v243];
  shouldLearn = self->_shouldLearn;
LABEL_132:
  if (!shouldLearn && !self->_shouldIntegrate && !self->_shouldApply)
  {
    v207 = 0;
    goto LABEL_142;
  }

  v202 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor tuningParameters];
  if (v116)
  {
    v203 = [v117 castType];

    if (v203)
    {
      v204 = [v117 castType];
      v205 = [CMISmartStyleCommonSettings styleEngineSpecificTuningForTuningVariant:v116 andCast:v204];
      v206 = [v205 cmi_dictionaryMergedWithDefaultDict:v202];
      [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:v206];
    }
  }

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor process])
  {
    [(CMISmartStyleProcessorV1 *)v293 process];
LABEL_148:
    v207 = v293[0];
    goto LABEL_141;
  }

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor resetState])
  {
    [(CMISmartStyleProcessorV1 *)v293 process];
    goto LABEL_148;
  }

  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:v202];
  v207 = 0;
LABEL_141:

LABEL_142:
  inputOutput = self->_inputOutput;
  self->_inputOutput = 0;

  return v207;
}

- (int)finishProcessing
{
  if (!self->_smartStylePixelBufferRenderer || !self->_styleEngineProcessor)
  {
    goto LABEL_5;
  }

  v3 = [(FigMetalContext *)self->_metalContext commandQueue];
  v4 = [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer metalCommandQueue];
  v5 = v4;
  if (v3 != v4)
  {

    goto LABEL_8;
  }

  v6 = [(FigMetalContext *)self->_metalContext commandQueue];
  v7 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor metalCommandQueue];

  if (v6 != v7)
  {
LABEL_8:
    [(CMISmartStyleProcessorV1 *)&v9 finishProcessing];
    return v9;
  }

LABEL_5:
  [(FigMetalContext *)self->_metalContext waitForIdle];
  return 0;
}

- (int)purgeResources
{
  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor purgeResources])
  {
    [(CMISmartStyleProcessorV1 *)&v11 purgeResources];
    v3 = v11;
  }

  else if ([(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer purgeResources])
  {
    [(CMISmartStyleProcessorV1 *)&v12 purgeResources];
    v3 = v12;
  }

  else
  {
    v3 = 0;
  }

  intermediateRendererInputUnstyledPixelBuffer = self->_intermediateRendererInputUnstyledPixelBuffer;
  if (intermediateRendererInputUnstyledPixelBuffer)
  {
    CFRelease(intermediateRendererInputUnstyledPixelBuffer);
    self->_intermediateRendererInputUnstyledPixelBuffer = 0;
  }

  intermediateRendererInputUnstyledThumbnailPixelBuffer = self->_intermediateRendererInputUnstyledThumbnailPixelBuffer;
  if (intermediateRendererInputUnstyledThumbnailPixelBuffer)
  {
    CFRelease(intermediateRendererInputUnstyledThumbnailPixelBuffer);
    self->_intermediateRendererInputUnstyledThumbnailPixelBuffer = 0;
  }

  styleRendererOutputStyledThumbnailPixelBuffer = self->_styleRendererOutputStyledThumbnailPixelBuffer;
  if (styleRendererOutputStyledThumbnailPixelBuffer)
  {
    CFRelease(styleRendererOutputStyledThumbnailPixelBuffer);
    self->_styleRendererOutputStyledThumbnailPixelBuffer = 0;
  }

  styleEngineInputUnstyledThumbnailPixelBuffer = self->_styleEngineInputUnstyledThumbnailPixelBuffer;
  if (styleEngineInputUnstyledThumbnailPixelBuffer)
  {
    CFRelease(styleEngineInputUnstyledThumbnailPixelBuffer);
    self->_styleEngineInputUnstyledThumbnailPixelBuffer = 0;
  }

  styleEngineInputTargetStyledThumbnailPixelBuffer = self->_styleEngineInputTargetStyledThumbnailPixelBuffer;
  if (styleEngineInputTargetStyledThumbnailPixelBuffer)
  {
    CFRelease(styleEngineInputTargetStyledThumbnailPixelBuffer);
    self->_styleEngineInputTargetStyledThumbnailPixelBuffer = 0;
  }

  styleRendererInputLinearThumbnailPixelBuffer = self->_styleRendererInputLinearThumbnailPixelBuffer;
  if (styleRendererInputLinearThumbnailPixelBuffer)
  {
    CFRelease(styleRendererInputLinearThumbnailPixelBuffer);
    self->_styleRendererInputLinearThumbnailPixelBuffer = 0;
  }

  self->_previousSRLCurveParameter = -1.0;
  return v3;
}

- (id)externalMemoryDescriptorForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[CMIExternalMemoryConfiguration alloc] initWithMaxInputDimensions:0 inputPixelFormat:0 maxOutputDimensions:0 cmiResourceEnabled:0 processorSpecificOptions:&off_209D0];
  if (v5)
  {
    v6 = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineConfiguration];
    [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setConfiguration:v6];

    v7 = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor externalMemoryDescriptorForConfiguration:v5];
    if (v7)
    {
      v8 = [v4 processorSpecificOptions];
      v9 = [v8 objectForKeyedSubscript:@"ProcessingType"];
      processingType = [v9 unsignedIntValue];
      if (!processingType)
      {
        processingType = self->_processingType;
      }

      [v7 setMemSize:{-[CMISmartStyleProcessorV1 _requestedMemSize:](self, "_requestedMemSize:", processingType)}];
    }

    else
    {
      [CMISmartStyleProcessorV1 externalMemoryDescriptorForConfiguration:];
    }
  }

  else
  {
    [CMISmartStyleProcessorV1 externalMemoryDescriptorForConfiguration:];
    v7 = 0;
  }

  return v7;
}

- (int)setup
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  if (!v4)
  {
    [CMISmartStyleProcessorV1 setup];
LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v5 = [[FigMetalContext alloc] initWithbundle:v4 andOptionalCommandQueue:self->_metalCommandQueue];
  metalContext = self->_metalContext;
  self->_metalContext = v5;

  if (!self->_metalContext)
  {
    [CMISmartStyleProcessorV1 setup];
    goto LABEL_12;
  }

  v7 = [FigMetalAllocator alloc];
  v8 = [(FigMetalContext *)self->_metalContext device];
  v9 = [v7 initWithDevice:v8 allocatorType:2];
  cmImagingAllocator = self->_cmImagingAllocator;
  self->_cmImagingAllocator = v9;

  if (!self->_cmImagingAllocator)
  {
    [(CMISmartStyleProcessorV1 *)&v18 setup];
    v14 = v18;
    goto LABEL_13;
  }

  metalCommandQueue = self->_metalCommandQueue;
  if (metalCommandQueue)
  {
    v12 = metalCommandQueue;
  }

  else
  {
    v12 = [(FigMetalContext *)self->_metalContext commandQueue];
  }

  v13 = self->_metalCommandQueue;
  self->_metalCommandQueue = v12;

  if (!self->_metalCommandQueue)
  {
    [CMISmartStyleProcessorV1 setup];
    goto LABEL_12;
  }

  v14 = 0;
  if (!self->_styleEngineProcessor && !CFPreferenceNumberWithDefault)
  {
    v15 = [[CMIStyleEngineProcessor alloc] initWithOptionalMetalCommandQueue:self->_metalCommandQueue withCoefficientSynchronization:1];
    styleEngineProcessor = self->_styleEngineProcessor;
    self->_styleEngineProcessor = v15;

    if (!self->_styleEngineProcessor)
    {
      [CMISmartStyleProcessorV1 setup];
    }

    goto LABEL_12;
  }

LABEL_13:

  return v14;
}

- (int)prewarm
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v4 = [[CMISmartStyleProcessorUtilitiesV1 alloc] initWithStyleEngine:self->_styleEngineProcessor temporalFilterBufferSize:1 withMetalContext:self->_metalContext];
  utilities = self->_utilities;
  self->_utilities = v4;

  if (!self->_utilities)
  {
    [CMISmartStyleProcessorV1 prewarm];
    return 0;
  }

  if (CFPreferenceNumberWithDefault)
  {
    return 0;
  }

  if ([(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer prewarm])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  v7 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:0];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:v7];

  v8 = [CMIStyleEngineCommonSettings configurationForUseCase:0];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setConfiguration:v8];

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor setup])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor prewarm])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  v9 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:1];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:v9];

  v10 = [CMIStyleEngineCommonSettings configurationForUseCase:1];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setConfiguration:v10];

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor setup])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor prewarm])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  v11 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:13];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:v11];

  v12 = [CMIStyleEngineCommonSettings configurationForUseCase:13];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setConfiguration:v12];

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor setup])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor prewarm])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  v13 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:3];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:v13];

  v14 = [CMIStyleEngineCommonSettings configurationForUseCase:3];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setConfiguration:v14];

  if ([(CMIStyleEngineProcessor *)self->_styleEngineProcessor setup])
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  result = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor prewarm];
  if (result)
  {
    [(CMISmartStyleProcessorV1 *)&v15 prewarm];
    return v15;
  }

  return result;
}

- (int)resetState
{
  if ([(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer resetState])
  {
    [(CMISmartStyleProcessorV1 *)&v4 resetState];
    return v4;
  }

  else
  {
    result = [(CMIStyleEngineProcessor *)self->_styleEngineProcessor resetState];
    if (result)
    {
      [(CMISmartStyleProcessorV1 *)&v5 resetState];
      return v5;
    }

    else
    {
      self->_processingType = 0;
    }
  }

  return result;
}

- (void)setTuningParameters:(id)a3
{
  v4 = a3;
  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setTuningParameters:v4];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setTuningParameters:v4];
  tuningParameters = self->_tuningParameters;
  self->_tuningParameters = v4;
}

- (void)setCameraInfoByPortType:(id)a3
{
  smartStylePixelBufferRenderer = self->_smartStylePixelBufferRenderer;
  v5 = a3;
  [(CMISmartStylePixelBufferRenderer *)smartStylePixelBufferRenderer setCameraInfoByPortType:v5];
  [(CMIStyleEngineProcessor *)self->_styleEngineProcessor setCameraInfoByPortType:v5];
}

+ (unint64_t)getSmartStyleCoefficientsFilterType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"iir"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"iir3"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"fir10"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getDefaultProcessorConfigurationForStills
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:1];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:0];
  v4 = [v3 copy];
  [v2 setStyleEngineConfiguration:v4];

  v5 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:0];
  v6 = [v5 copy];
  [v2 setStyleEngineTuningParameters:v6];

  return v2;
}

+ (id)getDefaultProcessorConfigurationForStills3x4
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:4];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:13];
  v4 = [v3 copy];
  [v2 setStyleEngineConfiguration:v4];

  v5 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:13];
  v6 = [v5 copy];
  [v2 setStyleEngineTuningParameters:v6];

  return v2;
}

+ (id)getDefaultProcessorConfigurationForStreaming
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:0];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:1];
  [v2 setStyleEngineConfiguration:v3];

  v4 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:1];
  [v2 setStyleEngineTuningParameters:v4];

  [v2 setTemporalFilterInputBufferSize:0];

  return v2;
}

+ (id)getDefaultProcessorConfigurationForStreamingAccelerated
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:8];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:4];
  [v2 setStyleEngineConfiguration:v3];

  v4 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:4];
  [v2 setStyleEngineTuningParameters:v4];

  [v2 setTemporalFilterInputBufferSize:0];

  return v2;
}

+ (id)getDefaultProcessorConfigurationForStreamingWithFilterType:(unint64_t)a3
{
  v5 = [a1 getDefaultProcessorConfigurationForStreaming];
  [v5 setTemporalFilterInputBufferSize:{objc_msgSend(a1, "getRequiredInputBufferSizeForFilterType:", a3)}];

  return v5;
}

+ (id)getDefaultProcessorConfigurationForStreamingAcceleratedWithFilterType:(unint64_t)a3
{
  v5 = [a1 getDefaultProcessorConfigurationForStreamingAccelerated];
  [v5 setTemporalFilterInputBufferSize:{objc_msgSend(a1, "getRequiredInputBufferSizeForFilterType:", a3)}];

  return v5;
}

+ (id)getDefaultProcessorConfigurationForStreamingSquareAspectRatio
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:7];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:3];
  [v2 setStyleEngineConfiguration:v3];

  v4 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:3];
  [v2 setStyleEngineTuningParameters:v4];

  [v2 setTemporalFilterInputBufferSize:0];

  return v2;
}

+ (id)getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatio
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:9];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:5];
  [v2 setStyleEngineConfiguration:v3];

  v4 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:5];
  [v2 setStyleEngineTuningParameters:v4];

  [v2 setTemporalFilterInputBufferSize:0];

  return v2;
}

+ (id)getDefaultProcessorConfigurationForStreamingSquareAspectRatioWithFilterType:(unint64_t)a3
{
  v5 = [a1 getDefaultProcessorConfigurationForStreamingSquareAspectRatio];
  [v5 setTemporalFilterInputBufferSize:{objc_msgSend(a1, "getRequiredInputBufferSizeForFilterType:", a3)}];

  return v5;
}

+ (id)getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatioWithFilterType:(unint64_t)a3
{
  v5 = [a1 getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatio];
  [v5 setTemporalFilterInputBufferSize:{objc_msgSend(a1, "getRequiredInputBufferSizeForFilterType:", a3)}];

  return v5;
}

+ (unsigned)getRequiredFilteredCoefficientsPixelBufferPoolSizeForFilterType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_143A0[a3 - 1];
  }
}

+ (unsigned)getRequiredInputBufferSizeForFilterType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_143B0[a3 - 1];
  }
}

+ (id)getDefaultProcessorConfigurationForStillsReversibility
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:3];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:12];
  v4 = [v3 copy];
  [v2 setStyleEngineConfiguration:v4];

  v5 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:12];
  v6 = [v5 copy];
  [v2 setStyleEngineTuningParameters:v6];

  return v2;
}

+ (id)getDefaultProcessorConfigurationForStillsReversibility3x4
{
  v2 = objc_opt_new();
  [CMISmartStyleUtilitiesV1 intermediateStyleRendererThumbnailSizeForUseCase:5];
  [v2 setIntermediateStyleRendererThumbnailSize:?];
  v3 = [CMIStyleEngineCommonSettings configurationForUseCase:14];
  v4 = [v3 copy];
  [v2 setStyleEngineConfiguration:v4];

  v5 = [CMIStyleEngineCommonSettings tuningParametersForUseCase:14];
  v6 = [v5 copy];
  [v2 setStyleEngineTuningParameters:v6];

  return v2;
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  if ([(CMISmartStyleProcessorV1 *)self requiresReconfigurationForConfiguration:?])
  {
    [(CMISmartStyleProcessorV1 *)self purgeResources];
    objc_storeStrong(&self->_configuration, a3);
    self->_isSetupDone = 0;
    self->_processingType = 0;
  }
}

- (int)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(__CVBuffer *)a3 withinputUnstyledCropRect:(CGRect)a4 inputUnstyledThumbnailPixelBuffer:(__CVBuffer *)a5 withinputUnstyledThumbnailCropRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = a4.size.height;
  v12 = a4.size.width;
  v13 = a4.origin.y;
  v14 = a4.origin.x;
  if (a3 && !CGRectIsEmpty(a4))
  {
    if (!a5)
    {
      goto LABEL_17;
    }
  }

  else if (!a5 || (v30.origin.x = x, v30.origin.y = y, v30.size.width = width, v30.size.height = height, CGRectIsEmpty(v30)))
  {
    [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
    return v29;
  }

  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  if (!CGRectIsEmpty(v31))
  {
    if (self->_intermediateStyleRendererThumbnailSize.width <= width && self->_intermediateStyleRendererThumbnailSize.height <= height)
    {
      v27 = height;
      v28 = width;
      v23 = [(CMISmartStyleProcessorV1 *)self _pixelFormatCompatibleWithStyleProcessing:CVPixelBufferGetPixelFormatType(a5)];
      if (!self->_intermediateRendererInputUnstyledPixelBuffer && CVPixelBufferCreate(kCFAllocatorDefault, self->_intermediateStyleRendererThumbnailSize.width, self->_intermediateStyleRendererThumbnailSize.height, v23, self->_styleRendererPixelBufferAttributes, &self->_intermediateRendererInputUnstyledPixelBuffer))
      {
        [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
        return v29;
      }

      if (self->_intermediateStyleRendererThumbnailSize.width == v28 && self->_intermediateStyleRendererThumbnailSize.height == v27 && (PixelFormatType = CVPixelBufferGetPixelFormatType(a5), PixelFormatType == CVPixelBufferGetPixelFormatType(self->_intermediateRendererInputUnstyledPixelBuffer)))
      {
        if (x != 0.0 || y != 0.0 || self->_intermediateStyleRendererThumbnailSize.width != v28 || self->_intermediateStyleRendererThumbnailSize.height != v27 || CVPixelBufferGetPixelFormatType(a5) != v23)
        {
          goto LABEL_16;
        }

        [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputPixelBuffer:a5];
        smartStylePixelBufferRenderer = self->_smartStylePixelBufferRenderer;
        intermediateRendererInputUnstyledPixelBuffer = a5;
      }

      else
      {
        if ([(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:a5 toPixelBuffer:self->_intermediateRendererInputUnstyledPixelBuffer inputROI:x, y, width, height])
        {
          [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
          return v29;
        }

        [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputPixelBuffer:self->_intermediateRendererInputUnstyledPixelBuffer];
        intermediateRendererInputUnstyledPixelBuffer = self->_intermediateRendererInputUnstyledPixelBuffer;
        smartStylePixelBufferRenderer = self->_smartStylePixelBufferRenderer;
      }

      [(CMISmartStylePixelBufferRenderer *)smartStylePixelBufferRenderer setInputThumbnailPixelBuffer:intermediateRendererInputUnstyledPixelBuffer];
      return 0;
    }

    intermediateRendererInputUnstyledThumbnailPixelBuffer = self->_intermediateRendererInputUnstyledThumbnailPixelBuffer;
    if (!intermediateRendererInputUnstyledThumbnailPixelBuffer)
    {
      v19 = [(CMISmartStyleProcessorV1 *)self _pixelFormatCompatibleWithStyleProcessing:CVPixelBufferGetPixelFormatType(a5)];
      if (CVPixelBufferCreate(kCFAllocatorDefault, llround(self->_intermediateStyleRendererThumbnailSize.width * 0.5), llround(self->_intermediateStyleRendererThumbnailSize.height * 0.5), v19, self->_styleRendererPixelBufferAttributes, &self->_intermediateRendererInputUnstyledThumbnailPixelBuffer))
      {
        [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
        return v29;
      }

      intermediateRendererInputUnstyledThumbnailPixelBuffer = self->_intermediateRendererInputUnstyledThumbnailPixelBuffer;
    }

    if ([(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:a5 toPixelBuffer:intermediateRendererInputUnstyledThumbnailPixelBuffer inputROI:x, y, width, height])
    {
      [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
      return v29;
    }

    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputThumbnailPixelBuffer:self->_intermediateRendererInputUnstyledThumbnailPixelBuffer];
  }

LABEL_16:
  if (!a3)
  {
    [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
    return v29;
  }

LABEL_17:
  v32.origin.x = v14;
  v32.origin.y = v13;
  v32.size.width = v12;
  v32.size.height = v11;
  if (CGRectIsEmpty(v32))
  {
    [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
    return v29;
  }

  v20 = [(CMISmartStyleProcessorV1 *)self _pixelFormatCompatibleWithStyleProcessing:CVPixelBufferGetPixelFormatType(a3)];
  p_intermediateRendererInputUnstyledPixelBuffer = &self->_intermediateRendererInputUnstyledPixelBuffer;
  v21 = self->_intermediateRendererInputUnstyledPixelBuffer;
  if (!v21)
  {
    goto LABEL_22;
  }

  if (CVPixelBufferGetPixelFormatType(v21) != v20)
  {
    if (*p_intermediateRendererInputUnstyledPixelBuffer)
    {
      CFRelease(*p_intermediateRendererInputUnstyledPixelBuffer);
      *p_intermediateRendererInputUnstyledPixelBuffer = 0;
    }

LABEL_22:
    if (CVPixelBufferCreate(kCFAllocatorDefault, self->_intermediateStyleRendererThumbnailSize.width, self->_intermediateStyleRendererThumbnailSize.height, v20, self->_styleRendererPixelBufferAttributes, &self->_intermediateRendererInputUnstyledPixelBuffer))
    {
      [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
      return v29;
    }
  }

  if ([(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:a3 toPixelBuffer:self->_intermediateRendererInputUnstyledPixelBuffer inputROI:v14, v13, v12, v11])
  {
    [CMISmartStyleProcessorV1 _configureInputUnstyledPixelBufferForPixelBufferRenderer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:?];
    return v29;
  }

  [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputPixelBuffer:self->_intermediateRendererInputUnstyledPixelBuffer];
  return 0;
}

- (int)_configureInputLinearPixelBufferForPixelBufferRenderer:(__CVBuffer *)a3 withinputLinearCropRect:(CGRect)a4
{
  if (!a3)
  {
    [CMISmartStyleProcessorV1 _configureInputLinearPixelBufferForPixelBufferRenderer:? withinputLinearCropRect:?];
    return v20;
  }

  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  p_styleRendererInputLinearThumbnailPixelBuffer = &self->_styleRendererInputLinearThumbnailPixelBuffer;
  if (self->_styleRendererInputLinearThumbnailPixelBuffer)
  {
    v11 = [CMIStyleEngineProcessorUtilities numberOfPixelBufferPlanesThatNeedToBeBoundToMTLTextures:a3];
    v12 = [CMIStyleEngineProcessorUtilities numberOfPixelBufferPlanesThatNeedToBeBoundToMTLTextures:*p_styleRendererInputLinearThumbnailPixelBuffer];
    v13 = *p_styleRendererInputLinearThumbnailPixelBuffer;
    if (v11 == v12)
    {
      if (v13)
      {
        goto LABEL_10;
      }
    }

    else if (v13)
    {
      CFRelease(*p_styleRendererInputLinearThumbnailPixelBuffer);
      *p_styleRendererInputLinearThumbnailPixelBuffer = 0;
    }
  }

  v14 = self->_intermediateStyleRendererThumbnailSize.width;
  v15 = self->_intermediateStyleRendererThumbnailSize.height;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (CVPixelBufferCreate(kCFAllocatorDefault, v14, v15, PixelFormatType, self->_styleRendererPixelBufferAttributes, p_styleRendererInputLinearThumbnailPixelBuffer))
  {
    [CMISmartStyleProcessorV1 _configureInputLinearPixelBufferForPixelBufferRenderer:? withinputLinearCropRect:?];
    return v18;
  }

  v13 = *p_styleRendererInputLinearThumbnailPixelBuffer;
LABEL_10:
  if ([(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:a3 toPixelBuffer:v13 inputROI:x, y, width, height])
  {
    [CMISmartStyleProcessorV1 _configureInputLinearPixelBufferForPixelBufferRenderer:? withinputLinearCropRect:?];
    return v19;
  }

  else
  {
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setInputLinearPixelBuffer:self->_styleRendererInputLinearThumbnailPixelBuffer];
    return 0;
  }
}

- (int)_configureOutputStyledThumbnailPixelBufferForPixelBufferRenderer:(__CVBuffer *)a3 unstyledThumbnailPixelBuffer:(__CVBuffer *)a4
{
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  v8 = [(CMISmartStyleProcessorV1 *)self _pixelFormatCompatibleWithStyleProcessing:CVPixelBufferGetPixelFormatType(v7)];
  if (!self->_styleRendererOutputStyledThumbnailPixelBuffer && CVPixelBufferCreate(kCFAllocatorDefault, self->_intermediateStyleRendererThumbnailSize.width, self->_intermediateStyleRendererThumbnailSize.height, v8, self->_styleRendererPixelBufferAttributes, &self->_styleRendererOutputStyledThumbnailPixelBuffer))
  {
    [CMISmartStyleProcessorV1 _configureOutputStyledThumbnailPixelBufferForPixelBufferRenderer:? unstyledThumbnailPixelBuffer:?];
    return v11;
  }

  else
  {
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = a3;
    }

    CVBufferPropagateAttachments(v9, self->_styleRendererOutputStyledThumbnailPixelBuffer);
    [(CMISmartStylePixelBufferRenderer *)self->_smartStylePixelBufferRenderer setOutputPixelBuffer:self->_styleRendererOutputStyledThumbnailPixelBuffer];
    return 0;
  }
}

- (int)_configureStyleEngineTargetThumbnailPixelBuffer:(__CVBuffer *)a3 inputTargetThumbnailPixelBuffer:(__CVBuffer *)a4
{
  v7 = [(CMISmartStyleProcessorV1 *)self _isStreaming];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 3;
  }

  if (!self->_shouldGenerateTarget)
  {
    if (a4)
    {
      Width = CVPixelBufferGetWidth(a4);
      Height = CVPixelBufferGetHeight(a4);
      if (self->_styleEngineTargetThumbnailSize.width != Width || self->_styleEngineTargetThumbnailSize.height != Height)
      {
        [CMISmartStyleProcessorV1 _configureStyleEngineTargetThumbnailPixelBuffer:? inputTargetThumbnailPixelBuffer:?];
        return v39;
      }

      styleEngineProcessor = self->_styleEngineProcessor;
      styleRendererOutputStyledThumbnailPixelBuffer = a4;
LABEL_40:
      [(CMIStyleEngineProcessor *)styleEngineProcessor setTargetThumbnailPixelBuffer:styleRendererOutputStyledThumbnailPixelBuffer];
      return 0;
    }

    v26 = CVPixelBufferGetWidth(a3);
    v27 = CVPixelBufferGetHeight(a3);
    v28 = self->_styleEngineTargetThumbnailSize.width;
    if (v28 >= v26 && self->_styleEngineTargetThumbnailSize.height >= v27)
    {
      styleEngineProcessor = self->_styleEngineProcessor;
      styleRendererOutputStyledThumbnailPixelBuffer = a3;
      goto LABEL_40;
    }

    styleEngineInputTargetStyledThumbnailPixelBuffer = self->_styleEngineInputTargetStyledThumbnailPixelBuffer;
    if (!styleEngineInputTargetStyledThumbnailPixelBuffer)
    {
      v30 = v28;
      v31 = self->_styleEngineTargetThumbnailSize.height;
      PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
      if (CVPixelBufferCreate(kCFAllocatorDefault, v30, v31, PixelFormatType, self->_styleEnginePixelBufferAttributes, &self->_styleEngineInputTargetStyledThumbnailPixelBuffer))
      {
        [CMISmartStyleProcessorV1 _configureStyleEngineTargetThumbnailPixelBuffer:? inputTargetThumbnailPixelBuffer:?];
        return v39;
      }

      styleEngineInputTargetStyledThumbnailPixelBuffer = self->_styleEngineInputTargetStyledThumbnailPixelBuffer;
    }

    y = CGRectNull.origin.y;
    v34 = CGRectNull.size.width;
    v35 = CGRectNull.size.height;
    v36 = [(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:a3 toPixelBuffer:styleEngineInputTargetStyledThumbnailPixelBuffer inputROI:v8 filterOption:CGRectNull.origin.x, y, v34, v35];
    if (v36)
    {
      v37 = v7;
    }

    else
    {
      v37 = 1;
    }

    if ((v37 & 1) == 0)
    {
      v36 = [(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:a3 toPixelBuffer:self->_styleEngineInputTargetStyledThumbnailPixelBuffer inputROI:0 filterOption:CGRectNull.origin.x, y, v34, v35];
    }

    if (v36)
    {
      [CMISmartStyleProcessorV1 _configureStyleEngineTargetThumbnailPixelBuffer:? inputTargetThumbnailPixelBuffer:?];
      return v39;
    }

    goto LABEL_38;
  }

  v9 = self->_styleEngineTargetThumbnailSize.width;
  v10 = self->_styleEngineTargetThumbnailSize.height;
  if (self->_intermediateStyleRendererThumbnailSize.width == v9 && self->_intermediateStyleRendererThumbnailSize.height == v10)
  {
    styleRendererOutputStyledThumbnailPixelBuffer = self->_styleRendererOutputStyledThumbnailPixelBuffer;
LABEL_39:
    styleEngineProcessor = self->_styleEngineProcessor;
    goto LABEL_40;
  }

  v12 = self->_styleEngineInputTargetStyledThumbnailPixelBuffer;
  if (!v12)
  {
    v13 = v9;
    v14 = v10;
    v15 = CVPixelBufferGetPixelFormatType(self->_styleRendererOutputStyledThumbnailPixelBuffer);
    if (CVPixelBufferCreate(kCFAllocatorDefault, v13, v14, v15, self->_styleEnginePixelBufferAttributes, &self->_styleEngineInputTargetStyledThumbnailPixelBuffer))
    {
      [CMISmartStyleProcessorV1 _configureStyleEngineTargetThumbnailPixelBuffer:? inputTargetThumbnailPixelBuffer:?];
      return v39;
    }

    v12 = self->_styleEngineInputTargetStyledThumbnailPixelBuffer;
  }

  v16 = CGRectNull.origin.y;
  v17 = CGRectNull.size.width;
  v18 = CGRectNull.size.height;
  v19 = [(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:self->_styleRendererOutputStyledThumbnailPixelBuffer toPixelBuffer:v12 inputROI:v8 filterOption:CGRectNull.origin.x, v16, v17, v18];
  if (v19)
  {
    v20 = v7;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v19 = [(CMISmartStyleProcessorUtilities *)self->_utilities downScalePixelBuffer:self->_styleRendererOutputStyledThumbnailPixelBuffer toPixelBuffer:self->_styleEngineInputTargetStyledThumbnailPixelBuffer inputROI:0 filterOption:CGRectNull.origin.x, v16, v17, v18];
  }

  if (!v19)
  {
LABEL_38:
    styleRendererOutputStyledThumbnailPixelBuffer = self->_styleEngineInputTargetStyledThumbnailPixelBuffer;
    goto LABEL_39;
  }

  [CMISmartStyleProcessorV1 _configureStyleEngineTargetThumbnailPixelBuffer:? inputTargetThumbnailPixelBuffer:?];
  return v39;
}

- (uint64_t)_configureStyleEngineInputUnstyledThumbnailPixelBuffer:(double)a3 withinputUnstyledCropRect:(double)a4 inputUnstyledThumbnailPixelBuffer:(double)a5 withinputUnstyledThumbnailCropRect:(double)a6 inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:(double)a7 withInputUnstyledThumbnailUsedForTargetGenerationCropRect:(double)a8
{
  if (a12)
  {
    a5 = a9;
  }

  if (a12)
  {
    a4 = a8;
  }

  if (a12)
  {
    a3 = a7;
  }

  if (a12)
  {
    a2 = a6;
  }

  if (a12)
  {
    a11 = a12;
  }

  if (a13 && *(a1 + 168) < CVPixelBufferGetWidth(a13) && *(a1 + 176) < CVPixelBufferGetHeight(a13))
  {
    a4 = a16;
    a5 = a17;
    a11 = a13;
    a2 = a14;
    a3 = a15;
  }

  v27 = [a1 _isStreaming];
  if (a13)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = 3;
  }

  if (*(a1 + 168) == CVPixelBufferGetWidth(a11))
  {
    Height = CVPixelBufferGetHeight(a11);
    v31 = *(a1 + 176);
    if (v31 == Height && a4 == *(a1 + 168) && a5 == v31)
    {
      v38 = *(a1 + 48);
      v37 = a11;
      goto LABEL_42;
    }
  }

  v33 = *(a1 + 128);
  if (!v33)
  {
    v34 = [a1 _pixelFormatCompatibleWithStyleProcessing:CVPixelBufferGetPixelFormatType(a11)];
    if (CVPixelBufferCreate(kCFAllocatorDefault, *(a1 + 168), *(a1 + 176), v34, *(a1 + 144), (a1 + 128)))
    {
      [CMISmartStyleProcessorV1 _configureStyleEngineInputUnstyledThumbnailPixelBuffer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:? inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:? withInputUnstyledThumbnailUsedForTargetGenerationCropRect:?];
      return v40;
    }

    v33 = *(a1 + 128);
  }

  v35 = [*(a1 + 56) downScalePixelBuffer:a11 toPixelBuffer:v33 inputROI:v29 filterOption:{a2, a3, a4, a5}];
  if (v35)
  {
    v36 = v28;
  }

  else
  {
    v36 = 1;
  }

  if ((v36 & 1) == 0)
  {
    v35 = [*(a1 + 56) downScalePixelBuffer:a11 toPixelBuffer:*(a1 + 128) inputROI:0 filterOption:{a2, a3, a4, a5}];
  }

  if (!v35)
  {
    v37 = *(a1 + 128);
    v38 = *(a1 + 48);
LABEL_42:
    [v38 setInputThumbnailPixelBuffer:v37];
    return 0;
  }

  [CMISmartStyleProcessorV1 _configureStyleEngineInputUnstyledThumbnailPixelBuffer:? withinputUnstyledCropRect:? inputUnstyledThumbnailPixelBuffer:? withinputUnstyledThumbnailCropRect:? inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:? withInputUnstyledThumbnailUsedForTargetGenerationCropRect:?];
  return v41;
}

- (BOOL)requiresReconfigurationForConfiguration:(id)a3
{
  v4 = a3;
  v5 = 1;
  if (v4)
  {
    configuration = self->_configuration;
    if (configuration)
    {
      v7 = [(CMISmartStyleProcessorBaseConfiguration *)configuration styleEngineConfiguration];
      [v7 thumbnailSize];
      v9 = v8;
      v46 = v10;
      v11 = [v4 styleEngineConfiguration];
      [v11 thumbnailSize];
      v13 = v12;
      v15 = v14;

      [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration intermediateStyleRendererThumbnailSize];
      v17 = v16;
      v19 = v18;
      [v4 intermediateStyleRendererThumbnailSize];
      v21 = v20;
      v23 = v22;
      v24 = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineConfiguration];
      [v24 spotlightCount];
      v26 = v25;
      v27 = [v4 styleEngineConfiguration];
      [v27 spotlightCount];
      if (vceq_s32(v26, v28).u8[0])
      {
        v29 = v19 != v23 || v17 != v21;
        v30 = v9 != v13;
        if (v46 != v15)
        {
          v30 = 1;
        }

        v31 = v30 || v29;
        v32 = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineConfiguration];
        [v32 spotlightCount];
        v34 = v33;
        v35 = [v4 styleEngineConfiguration];
        [v35 spotlightCount];
        v37 = v31 | vmvn_s8(vceq_s32(v34, v36)).i32[1];
      }

      else
      {
        LOBYTE(v37) = 1;
      }

      v38 = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineConfiguration];
      v39 = [v38 weightPlaneCount];
      v40 = [v4 styleEngineConfiguration];
      v41 = v37 | (v39 != [v40 weightPlaneCount]);

      v42 = [(CMISmartStyleProcessorBaseConfiguration *)self->_configuration styleEngineConfiguration];
      v43 = [v42 linearSystemOrder];
      v44 = [v4 styleEngineConfiguration];
      v5 = v41 | (v43 != [v44 linearSystemOrder]);
    }
  }

  return v5 & 1;
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:.cold.4()
{
  FigDebugAssert3();

  return FigSignalErrorAtGM();
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:.cold.6()
{
  FigDebugAssert3();

  return FigSignalErrorAtGM();
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.7(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (void)prepareToProcess:(void *)a1 .cold.8(void *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.9(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.12(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.13(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (void)prepareToProcess:(void *)a1 .cold.14(void *a1)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.15(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.16(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)process
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)finishProcessing
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)purgeResources
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setup
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)prewarm
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)resetState
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputUnstyledPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:.cold.9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputLinearPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputLinearCropRect:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputLinearPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputLinearCropRect:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureInputLinearPixelBufferForPixelBufferRenderer:(_DWORD *)a1 withinputLinearCropRect:.cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureOutputStyledThumbnailPixelBufferForPixelBufferRenderer:(_DWORD *)a1 unstyledThumbnailPixelBuffer:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureStyleEngineTargetThumbnailPixelBuffer:(_DWORD *)a1 inputTargetThumbnailPixelBuffer:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureStyleEngineTargetThumbnailPixelBuffer:(_DWORD *)a1 inputTargetThumbnailPixelBuffer:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureStyleEngineTargetThumbnailPixelBuffer:(_DWORD *)a1 inputTargetThumbnailPixelBuffer:.cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureStyleEngineTargetThumbnailPixelBuffer:(_DWORD *)a1 inputTargetThumbnailPixelBuffer:.cold.4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureStyleEngineTargetThumbnailPixelBuffer:(_DWORD *)a1 inputTargetThumbnailPixelBuffer:.cold.5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureStyleEngineInputUnstyledThumbnailPixelBuffer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:withInputUnstyledThumbnailUsedForTargetGenerationCropRect:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_configureStyleEngineInputUnstyledThumbnailPixelBuffer:(_DWORD *)a1 withinputUnstyledCropRect:inputUnstyledThumbnailPixelBuffer:withinputUnstyledThumbnailCropRect:inputUnstyledThumbnailUsedForTargetGenerationPixelBuffer:withInputUnstyledThumbnailUsedForTargetGenerationCropRect:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end