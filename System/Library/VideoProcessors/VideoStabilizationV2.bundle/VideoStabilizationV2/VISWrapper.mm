@interface VISWrapper
- (VISWrapperDelegate)delegate;
- (int)_updateConfiguration;
- (int)enqueueBufferForProcessing:(opaqueCMSampleBuffer *)processing;
- (int)finishProcessing;
- (int)prepareToProcess;
- (int)purgeResources;
- (void)didCompleteRenderingOfBuffer:(__CVBuffer *)buffer withStatus:(int)status;
@end

@implementation VISWrapper

- (int)enqueueBufferForProcessing:(opaqueCMSampleBuffer *)processing
{
  if (self->_sbpRef)
  {
    if (self->_configuration)
    {
      if (processing)
      {
        _updateConfiguration = [(VISWrapper *)self _updateConfiguration];
        if (_updateConfiguration)
        {
          v6 = _updateConfiguration;
          [VISWrapper enqueueBufferForProcessing:];
        }

        else
        {
          v6 = sbp_gvs_processSampleBuffer(self->_sbpRef, processing);
          if (v6)
          {
            [VISWrapper enqueueBufferForProcessing:];
          }

          else
          {
            self->_buffersEnqueued = 1;
          }
        }
      }

      else
      {
        [VISWrapper enqueueBufferForProcessing:?];
        return v8;
      }
    }

    else
    {
      [VISWrapper enqueueBufferForProcessing:?];
      return v9;
    }
  }

  else
  {
    [VISWrapper enqueueBufferForProcessing:?];
    return v10;
  }

  return v6;
}

- (void)didCompleteRenderingOfBuffer:(__CVBuffer *)buffer withStatus:(int)status
{
  v4 = *&status;
  FigSimpleMutexLock();
  v7 = [(NSMutableArray *)self->_pixelBuffersProcessed indexOfObject:buffer];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_pixelBuffersRendered addObject:buffer];

    FigSimpleMutexUnlock();
  }

  else
  {
    v8 = v7;
    v9 = [(NSMutableArray *)self->_sampleBuffersProcessed objectAtIndexedSubscript:v7];

    if (v9)
    {
      CFRetain(v9);
      [(NSMutableArray *)self->_sampleBuffersProcessed removeObjectAtIndex:v8];
      [(NSMutableArray *)self->_pixelBuffersProcessed removeObjectAtIndex:v8];
      FigSimpleMutexUnlock();
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained didCompleteProcessingOfBuffer:v9 withStatus:v4];

      CFRelease(v9);
    }

    else
    {
      [(NSMutableArray *)self->_sampleBuffersProcessed removeObjectAtIndex:v8];
      [(NSMutableArray *)self->_pixelBuffersProcessed removeObjectAtIndex:v8];
      FigSimpleMutexUnlock();
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 didCompleteProcessingOfBuffer:0 withStatus:v4];
    }
  }
}

- (VISWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int)prepareToProcess
{
  if (self->_buffersEnqueued)
  {
    v4 = 0;
    v64 = -12782;
    goto LABEL_31;
  }

  if (!self->_configuration)
  {
    v4 = 0;
    v64 = -12780;
    goto LABEL_31;
  }

  p_sbpRef = &self->_sbpRef;
  if (self->_sbpRef)
  {
    sbp_gvs_invalidate();
    if (*p_sbpRef)
    {
      CFRelease(*p_sbpRef);
      *p_sbpRef = 0;
    }
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  if (!v4)
  {
    goto LABEL_32;
  }

  [OUTLINED_FUNCTION_14() extendedOutputRowsToFill];
  v5 = [OUTLINED_FUNCTION_16() numberWithUnsignedInt:?];
  OUTLINED_FUNCTION_22();

  inputPixelBufferAttributes = [(VISConfiguration *)self->_configuration inputPixelBufferAttributes];
  OUTLINED_FUNCTION_22();

  DictionaryRepresentation = [(VISConfiguration *)self->_configuration outputPixelBufferAttributes];
  OUTLINED_FUNCTION_22();

  if ([(VISConfiguration *)self->_configuration generatedTransformsOutputDimensionsOverride]>= 1 && ([(VISConfiguration *)self->_configuration generatedTransformsOutputDimensionsOverride]>> 32) >= 1)
  {
    generatedTransformsOutputDimensionsOverride = [(VISConfiguration *)self->_configuration generatedTransformsOutputDimensionsOverride];
    v70.height = ([(VISConfiguration *)self->_configuration generatedTransformsOutputDimensionsOverride]>> 32);
    v70.width = generatedTransformsOutputDimensionsOverride;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v70);
    OUTLINED_FUNCTION_22();
    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }
  }

  v9 = [DictionaryRepresentation numberWithInt:{dword_43650[objc_msgSend(OUTLINED_FUNCTION_14(), "transformPlatform")]}];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() blurBorderPixels];
  v10 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  v11 = [v10 numberWithInt:{dword_436C8[objc_msgSend(OUTLINED_FUNCTION_14(), "smoothingMethod")]}];
  OUTLINED_FUNCTION_22();

  v12 = [v11 numberWithInt:{dword_436E0[objc_msgSend(OUTLINED_FUNCTION_14(), "motionBlurShimmerMitigationMethod")]}];
  OUTLINED_FUNCTION_22();

  ispProcessingSession = [(VISConfiguration *)self->_configuration ispProcessingSession];
  [v4 setObject:ispProcessingSession forKeyedSubscript:kFigVideoStabilizationSampleBufferProcessorOption_IspProcessingSession];
  [OUTLINED_FUNCTION_14() sphereCorrectionEnabled];
  v14 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() useISPMotionData];
  v15 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() cinematicLookAheadFrameCount];
  v16 = [OUTLINED_FUNCTION_16() numberWithUnsignedInt:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() cinematicLookAheadTime];
  v17 = [v16 numberWithFloat:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() attachStabilizedOutputCameraTrajectory];
  v18 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() attachStabilizedTrajectoryHomography];
  v19 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() attachEstimatedMotionVector];
  v20 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() onlyGenerateTransformsParameters];
  v21 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() minDistanceForBravoParallaxShift];
  v22 = [v21 numberWithFloat:?];
  OUTLINED_FUNCTION_22();

  distortionCorrectionEnabledPortTypes = [(VISConfiguration *)self->_configuration distortionCorrectionEnabledPortTypes];
  v24 = [distortionCorrectionEnabledPortTypes count];

  if (v24)
  {
    distortionCorrectionEnabledPortTypes2 = [(VISConfiguration *)self->_configuration distortionCorrectionEnabledPortTypes];
    OUTLINED_FUNCTION_22();
  }

  distortionCompensationEnabledPortTypes = [(VISConfiguration *)self->_configuration distortionCompensationEnabledPortTypes];
  v27 = [distortionCompensationEnabledPortTypes count];

  if (v27)
  {
    distortionCompensationEnabledPortTypes2 = [(VISConfiguration *)self->_configuration distortionCompensationEnabledPortTypes];
    OUTLINED_FUNCTION_22();
  }

  videoSTFParameters = [(VISConfiguration *)self->_configuration videoSTFParameters];
  OUTLINED_FUNCTION_22();

  videoGreenGhostMitigationParameters = [(VISConfiguration *)self->_configuration videoGreenGhostMitigationParameters];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() gpuPriority];
  v31 = [OUTLINED_FUNCTION_16() numberWithInt:?];
  OUTLINED_FUNCTION_22();

  metalCommandQueue = [(VISConfiguration *)self->_configuration metalCommandQueue];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() metalSubmissionAndCompletionQueuePriority];
  v33 = [OUTLINED_FUNCTION_16() numberWithUnsignedInt:?];
  OUTLINED_FUNCTION_22();

  emitSampleBufferSemaphore = [(VISConfiguration *)self->_configuration emitSampleBufferSemaphore];
  OUTLINED_FUNCTION_22();

  sensorIDDict = [(VISConfiguration *)self->_configuration sensorIDDict];
  OUTLINED_FUNCTION_22();

  cameraInfoByPortType = [(VISConfiguration *)self->_configuration cameraInfoByPortType];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() horizonCorrectionThreshold];
  v37 = [cameraInfoByPortType numberWithFloat:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() horizonCorrectionMode];
  v38 = [OUTLINED_FUNCTION_16() numberWithInt:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() zoomSmoothingEnabled];
  v39 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() applyFrameCropOffset];
  v40 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() enableRollingShutterCorrectionOnly];
  v41 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() disableTransformLimitsForPredeterminedTrajectory];
  v42 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() useCameraGeometry];
  v43 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() smartStyleRenderingEnabled];
  v44 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() smartStyleReversibilityEnabled];
  v45 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  smartStyleConfigurationDict = [(VISConfiguration *)self->_configuration smartStyleConfigurationDict];
  OUTLINED_FUNCTION_22();

  v47 = [smartStyleConfigurationDict numberWithUnsignedLongLong:{objc_msgSend(OUTLINED_FUNCTION_14(), "smartStyleMemoryPoolId")}];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() faceStabilizationEnabled];
  v48 = [OUTLINED_FUNCTION_16() numberWithBool:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() faceStabilizationSigmaMultiplierForFaceFiltering];
  v49 = [v48 numberWithFloat:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() faceStabilizationSigmaMultiplierForBiasTracking];
  v50 = [v49 numberWithFloat:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() faceStabilizationSigmaModulationExponent];
  v51 = [v50 numberWithFloat:?];
  OUTLINED_FUNCTION_22();

  [OUTLINED_FUNCTION_14() faceStabilizationSigmaModulationSmoothTransitionMultiplier];
  v52 = [v51 numberWithFloat:?];
  OUTLINED_FUNCTION_22();

  [(VISConfiguration *)self->_configuration livePhotoCleanOutputRect];
  if (!CGRectIsEmpty(v71))
  {
    [(VISConfiguration *)self->_configuration livePhotoCleanOutputRect];
    v53 = CGRectCreateDictionaryRepresentation(v72);
    [v4 setObject:CFAutorelease(v53) forKeyedSubscript:kFigVideoStabilizationSampleBufferProcessorOption_LivePhotoCleanOutputRect];
  }

  v54 = FigSampleBufferProcessorCreateForGyroVideoStabilization(v4, &self->_sbpRef);
  if (v54)
  {
    goto LABEL_35;
  }

  v55 = objc_alloc_init(NSMutableArray);
  pixelBuffersRendered = self->_pixelBuffersRendered;
  self->_pixelBuffersRendered = v55;

  if (!self->_pixelBuffersRendered || (v57 = objc_alloc_init(NSMutableArray), pixelBuffersProcessed = self->_pixelBuffersProcessed, self->_pixelBuffersProcessed = v57, pixelBuffersProcessed, !self->_pixelBuffersProcessed) || (v59 = objc_alloc_init(NSMutableArray), sampleBuffersProcessed = self->_sampleBuffersProcessed, self->_sampleBuffersProcessed = v59, sampleBuffersProcessed, !self->_sampleBuffersProcessed) || !self->_pixelBuffersLock && (v61 = FigSimpleMutexCreate(), (self->_pixelBuffersLock = v61) == 0))
  {
LABEL_32:
    v64 = -12786;
    goto LABEL_31;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    fig_log_get_emitter();
    v63 = FigSignalErrorAtGM();
    if (v63)
    {
      v64 = v63;
      fig_log_get_emitter();
LABEL_38:
      FigDebugAssert3();
      goto LABEL_31;
    }
  }

  else
  {
    *DerivedStorage = _sampleBufferImagePreStabilizationCallback;
  }

  v54 = sbp_gvs_setPostOutputCallback(self->_sbpRef, _sampleBufferImageReadyCallback, self);
  if (v54)
  {
LABEL_35:
    v64 = v54;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10();
    goto LABEL_38;
  }

  cameraExtrinsicMatrix = [(VISConfiguration *)self->_configuration cameraExtrinsicMatrix];

  if (cameraExtrinsicMatrix)
  {
    cameraExtrinsicMatrix2 = [(VISConfiguration *)self->_configuration cameraExtrinsicMatrix];
    v67 = OUTLINED_FUNCTION_17();
    v64 = sbp_gvs_setProperty(v67, v68, cameraExtrinsicMatrix2);

    if (v64)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10();
      goto LABEL_38;
    }
  }

  v64 = 0;
  *&self->_buffersEnqueued = 0;
LABEL_31:

  return v64;
}

- (int)finishProcessing
{
  sbpRef = self->_sbpRef;
  if (!sbpRef)
  {
    return 0;
  }

  self->_finishProcessing = 1;
  v4 = sbp_gvs_finishPendingProcessing(sbpRef);
  if (v4)
  {
    OUTLINED_FUNCTION_29();
    fig_log_get_emitter();
    FigDebugAssert3();
    OUTLINED_FUNCTION_29();
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  else
  {
    *&self->_buffersEnqueued = 0;
    [(NSMutableArray *)self->_pixelBuffersRendered removeAllObjects];
    [(NSMutableArray *)self->_pixelBuffersProcessed removeAllObjects];
    [(NSMutableArray *)self->_sampleBuffersProcessed removeAllObjects];
  }

  return v4;
}

- (int)purgeResources
{
  if (self->_sbpRef)
  {
    self->_buffersEnqueued = 0;
    sbp_gvs_invalidate();
    sbpRef = self->_sbpRef;
    if (sbpRef)
    {
      CFRelease(sbpRef);
      self->_sbpRef = 0;
    }

    if (self->_pixelBuffersLock)
    {
      FigSimpleMutexDestroy();
      self->_pixelBuffersLock = 0;
    }
  }

  return 0;
}

- (int)_updateConfiguration
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return -12782;
  }

  v4 = DerivedStorage;
  configuration = self->_configuration;
  if (!configuration)
  {
    return -12780;
  }

  if (*(v4 + 32))
  {
    *(v4 + 84) = [(VISConfiguration *)configuration videoStabilizationDisabled];
    if (![(VISConfiguration *)self->_configuration sphereVideoEnabled]|| *(v4 + 28137))
    {
      *(v4 + 28136) = [(VISConfiguration *)self->_configuration sphereVideoEnabled];
      if (!*(v4 + 328))
      {
        goto LABEL_10;
      }

      if (*(v4 + 29504) <= 0.0 || *(v4 + 29512) <= 0.0)
      {
        return -12782;
      }

      v6 = sbp_enableLongPressMode(v4, self->_longPressModeEnabled);
      if (!v6)
      {
LABEL_10:
        [*(v4 + 48) removeAllObjects];
        v7 = objc_alloc_init(NSMutableDictionary);
        v8 = *(v4 + 48);
        *(v4 + 48) = v7;

        if (!*(v4 + 48))
        {
          return -12786;
        }

        [*(v4 + 56) removeAllObjects];
        v9 = objc_alloc_init(NSMutableDictionary);
        v10 = *(v4 + 56);
        *(v4 + 56) = v9;

        if (!*(v4 + 56))
        {
          return -12786;
        }

        outputAttachmentsPixelBufferPools = [(VISConfiguration *)self->_configuration outputAttachmentsPixelBufferPools];

        if (outputAttachmentsPixelBufferPools)
        {
          v12 = *(v4 + 48);
          outputAttachmentsPixelBufferPools2 = [(VISConfiguration *)self->_configuration outputAttachmentsPixelBufferPools];
          [v12 addEntriesFromDictionary:outputAttachmentsPixelBufferPools2];
        }

        outputAttachmentsAuxAttributes = [(VISConfiguration *)self->_configuration outputAttachmentsAuxAttributes];

        if (outputAttachmentsAuxAttributes)
        {
          v15 = *(v4 + 56);
          outputAttachmentsAuxAttributes2 = [(VISConfiguration *)self->_configuration outputAttachmentsAuxAttributes];
          [v15 addEntriesFromDictionary:outputAttachmentsAuxAttributes2];
        }

        if (*(v4 + 29720))
        {
LABEL_27:
          if ([(VISConfiguration *)self->_configuration frameRateConversionEnabled]&& *(v4 + 27148) == 1)
          {
            *(v4 + 29778) = [(VISConfiguration *)self->_configuration frameRateConversionEnabled];
            *(v4 + 29788) = 0;
            *(v4 + 29780) = 0xFFFFFFFFLL;
            *(v4 + 29796) = 1;
          }

          flipHorizontalOrientationEnabled = self->_flipHorizontalOrientationEnabled;
          if (!flipHorizontalOrientationEnabled || !*(v4 + 172))
          {
            *(v4 + 203) = flipHorizontalOrientationEnabled;
            if (*(v4 + 30105))
            {
              *(v4 + 30106) = self->_smartStyleReversibilityProcessingEnabled;
            }

            [(VISConfiguration *)self->_configuration outputPixelBufferPool];
            [(VISConfiguration *)self->_configuration outputDepthPixelBufferPool];
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            outputAttachmentsPixelBufferPools3 = [(VISConfiguration *)self->_configuration outputAttachmentsPixelBufferPools];
            v23 = [outputAttachmentsPixelBufferPools3 countByEnumeratingWithState:&v29 objects:v28 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v30;
              while (1)
              {
                if (*v30 != v25)
                {
                  objc_enumerationMutation(outputAttachmentsPixelBufferPools3);
                }

                if (!--v24)
                {
                  v24 = [outputAttachmentsPixelBufferPools3 countByEnumeratingWithState:&v29 objects:v28 count:16];
                  if (!v24)
                  {
                    break;
                  }
                }
              }
            }

            return 0;
          }

          return -12782;
        }

        if (*(v4 + 172) || (v6 = sbp_enableP3ToBT2020Conversion(v4, [(VISConfiguration *)self->_configuration p3ToBT2020ConversionEnabled])) == 0)
        {
          if ([(VISConfiguration *)self->_configuration outputPixelBufferPool])
          {
            [*(v4 + 48) setObject:-[VISConfiguration outputPixelBufferPool](self->_configuration forKeyedSubscript:{"outputPixelBufferPool"), @"OutputBufferPrimary"}];
          }

          if ([(VISConfiguration *)self->_configuration outputDepthPixelBufferPool])
          {
            [*(v4 + 48) setObject:-[VISConfiguration outputDepthPixelBufferPool](self->_configuration forKeyedSubscript:{"outputDepthPixelBufferPool"), @"OutputBufferDepth"}];
          }

          outputAuxAttributes = [(VISConfiguration *)self->_configuration outputAuxAttributes];

          if (outputAuxAttributes)
          {
            outputAuxAttributes2 = [(VISConfiguration *)self->_configuration outputAuxAttributes];
            [*(v4 + 56) setObject:outputAuxAttributes2 forKeyedSubscript:@"OutputBufferPrimary"];
          }

          outputDepthAuxAttributes = [(VISConfiguration *)self->_configuration outputDepthAuxAttributes];

          if (outputDepthAuxAttributes)
          {
            outputDepthAuxAttributes2 = [(VISConfiguration *)self->_configuration outputDepthAuxAttributes];
            [*(v4 + 56) setObject:outputDepthAuxAttributes2 forKeyedSubscript:@"OutputBufferDepth"];
          }

          goto LABEL_27;
        }
      }

      v26 = v6;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_12();
      FigDebugAssert3();
      return v26;
    }

    return -12780;
  }

  return 0;
}

- (uint64_t)enqueueBufferForProcessing:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_35();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

- (uint64_t)enqueueBufferForProcessing:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_35();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

- (uint64_t)enqueueBufferForProcessing:(_DWORD *)a1 .cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)enqueueBufferForProcessing:(_DWORD *)a1 .cold.4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)enqueueBufferForProcessing:(_DWORD *)a1 .cold.5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end