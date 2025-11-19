@interface PTCinematographyStream
- (BOOL)_detectorDidRunFromFTTrackingResult:(id)a3 time:(id *)a4;
- (BOOL)_hasFusionTrackerMetadata:(id)a3;
- (BOOL)_isFailedTapToTrackFTTapResponse:(id)a3;
- (BOOL)_isFixedFocusFTTapRequest:(id)a3;
- (BOOL)_isFixedFocusFTTapRequestMetadata:(id)a3;
- (BOOL)_isInvalidFTTrack:(id)a3;
- (BOOL)_isSuccessfulTapToTrackFTTapResponse:(id)a3;
- (BOOL)_isTapToTrackFTTapRequest:(id)a3;
- (BOOL)_isUserTap:(id)a3 inFrameDetections:(id)a4;
- (BOOL)_isValidNormalizedPoint:(CGPoint)a3;
- (BOOL)_logUnusualDetection:(id)a3 info:(id)a4;
- (BOOL)_logUnusualDisparity:(float)a3 kind:(id)a4 info:(id)a5;
- (BOOL)_useSyntheticDDR;
- (BOOL)_userTapEndsForBaseFocusDetection:(id)a3;
- (BOOL)_userTapEndsForChangedFocusWithDisparityBuffer:(__CVBuffer *)a3;
- (BOOL)_userTapLockEndsAtTime:(id *)a3;
- (BOOL)getGlobalMetadata:(id)a3;
- (CGRect)_autoFocusRectFromMetadata:(id)a3;
- (CGRect)_defaultFixedFocusRectForPoint:(CGPoint)a3 disparityBuffer:(__CVBuffer *)a4;
- (CGRect)_fixedFocusRectForPoint:(CGPoint)a3 disparityBuffer:(__CVBuffer *)a4;
- (CGRect)_validSensorRectFromMetadata:(id)a3;
- (CGSize)_sensorSizeFromMetadata:(id)a3;
- (NSString)modelVersionString;
- (PTCinematographyStream)initWithOptions:(id)a3;
- (PTCinematographyStreamDelegate)delegate;
- (float)_defaultAperture;
- (float)_floatValueForAssignmentString:(id)a3;
- (float)_focusDistanceForAutoFocusDetection:(id)a3 lockedDisparityBufferAddress:(void *)a4 width:(unint64_t)a5 height:(unint64_t)a6 bytesPerRow:(unint64_t)a7 formatType:(unsigned int)a8 focusBlurMap:(id)a9;
- (float)_focusDistanceForDetection:(id)a3 lockedDisparityBufferAddress:(void *)a4 width:(unint64_t)a5 height:(unint64_t)a6 bytesPerRow:(unint64_t)a7 formatType:(unsigned int)a8;
- (float)_minimumUserTapSeconds;
- (float)_userDefaultFixedFocusDisparity;
- (float)smoothFocusDistance:(float)a3 trackIdentifier:(int64_t)a4 sampleCount:(unint64_t)a5;
- (id)_ANODPoseFromFTTrackMetadata:(id)a3;
- (id)_autoFocusBlurMapFromMetadata:(id)a3;
- (id)_autoFocusDetectionWithTime:(id *)a3 rect:(CGRect)a4;
- (id)_chooseClosestObjectDetection:(id)a3;
- (id)_chooseFocusDetection:(id)a3;
- (id)_chooseLargestAreaDetection:(id)a3;
- (id)_copyInternalState;
- (id)_copyUserFocusDetectionFromDetections:(id)a3;
- (id)_detectionForFixedFocusAtNormalizedPoint:(CGPoint)a3 disparityBuffer:(__CVBuffer *)a4;
- (id)_detectionForFixedFocusDistance:(float)a3 rect:(CGRect)a4;
- (id)_detectionsFromFTTrackingResult:(id)a3 autoFocusRect:(CGRect)a4 focusBlurMap:(id)a5 namedSignalsPerTrack:(id)a6 time:(id *)a7 disparityBuffer:(__CVBuffer *)a8;
- (id)_disparityWeightingValue;
- (id)_frameDetectionsFromFusionTrackerMetadata:(id)a3 time:(id *)a4 disparityBuffer:(__CVBuffer *)a5;
- (id)_frameDetectionsFromMetadata:(id)a3 time:(id *)a4 disparityBuffer:(__CVBuffer *)a5;
- (id)_frameFromDetections:(id)a3 userAperture:(float)a4 snapshotPolicy:(unint64_t)a5 disparityPixelBuffer:(__CVBuffer *)a6;
- (id)_inFocusRegionForFocusBlurMap:(id)a3;
- (id)_mutableDetectionsFromFTTrackingResult:(id)a3 namedSignalsPerTrack:(id)a4 time:(id *)a5;
- (id)_namedSignals:(id)a3 addingANODPoseFromFTTrackMetadata:(id)a4;
- (id)_nextSnapshotForPolicy:(unint64_t)a3;
- (id)_stringValueForAssignmentString:(id)a3;
- (id)_trackingResultFromFusionTrackerMetadata:(id)a3;
- (id)_userDefaultNetworkVersion;
- (id)_userTapFromFTTapResponse:(id)a3 frameDetections:(id)a4 disparityBuffer:(__CVBuffer *)a5;
- (id)_userTapFromMetadata:(id)a3 frameDetections:(id)a4 disparityBuffer:(__CVBuffer *)a5;
- (id)processColorBuffer:(__CVBuffer *)a3 disparityBuffer:(__CVBuffer *)a4 metadataDictionary:(id)a5 presentationTime:(id *)a6;
- (unint64_t)_detectionTypeForFTObjectKind:(unint64_t)a3;
- (unint64_t)_userDefaultFocusStrategy;
- (void)_copyPreviousISPDetections:(id)a3 toDetections:(id)a4 time:(id *)a5;
- (void)_getFocusStrategyIfNeeded;
- (void)_logFocusChangeForFrame:(id)a3;
- (void)_logUserTap:(id)a3;
- (void)_reset;
- (void)_restoreInternalState:(id)a3;
- (void)_setDisparityOfDetections:(id)a3 disparityBuffer:(__CVBuffer *)a4 focusBlurMap:(id)a5;
- (void)_updateDetectionModelFromMetadata:(id)a3;
- (void)_updateDetections:(id)a3 ifMissingISPDetectionsFromTrackingResult:(id)a4 time:(id *)a5;
- (void)_updateFocusBlurMapModeFromMetadata:(id)a3;
- (void)endOfStream;
- (void)setDetectorDidRunNextExpectedTime:(id *)a3;
@end

@implementation PTCinematographyStream

- (PTCinematographyStream)initWithOptions:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PTCinematographyStream;
  v5 = [(PTCinematographyStream *)&v20 init];
  if (!v5)
  {
LABEL_15:
    v17 = v5;
    goto LABEL_19;
  }

  if (v4)
  {
    v6 = [v4 copy];
  }

  else
  {
    v6 = objc_opt_new();
  }

  options = v5->_options;
  v5->_options = v6;

  v8 = [(PTCinematographyStreamOptions *)v5->_options version];
  if (!v8)
  {
    v8 = [objc_opt_class() latestVersion];
  }

  v5->_activeVersion = v8;
  if ([objc_opt_class() isSupportedVersion:v5->_activeVersion])
  {
    v9 = PTDefaultsGetDictionary();
    v10 = [v9 objectForKeyedSubscript:@"CinematographySnapshotEveryFrame"];

    if (v10)
    {
      [(PTCinematographyStreamOptions *)v5->_options _setSnapshotPolicy:1];
    }

    v11 = [v4 cinematographyParameters];
    v12 = [v11 objectForKeyedSubscript:@"detectionModel"];
    v5->_detectionModel = [v12 unsignedIntegerValue];

    v13 = [v4 cinematographyParameters];
    v14 = [v13 objectForKeyedSubscript:@"focusBlurMapMode"];
    v5->_focusBlurMapMode = [v14 unsignedIntegerValue];

    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyStream initWithOptions:?];
    }

    v16 = _PTLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyStream initWithOptions:?];
    }

    [(PTCinematographyStream *)v5 _reset];
    *&v5->_autoFocusUseBlurMap = 256;
    v5->_autoFocusInFocusRegionSelect = 0;
    goto LABEL_15;
  }

  v18 = _PTLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [PTCinematographyStream initWithOptions:?];
  }

  v17 = 0;
LABEL_19:

  return v17;
}

- (void)_updateDetectionModelFromMetadata:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"CinematographyParameters"];
  v5 = [v4 objectForKeyedSubscript:@"detectionModel"];

  v6 = [v5 unsignedIntegerValue];
  if (v6)
  {
    v7 = v6;
    if (self->_detectionModel != v6)
    {
      v8 = _PTLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_detectionModel];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
        v11 = 138412546;
        v12 = v9;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_2243FB000, v8, OS_LOG_TYPE_DEFAULT, "change from detection model %@ to %@", &v11, 0x16u);
      }

      self->_detectionModel = v7;
      [(PTCinematographyStream *)self _reset];
    }
  }
}

- (void)_updateFocusBlurMapModeFromMetadata:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"CinematographyParameters"];
  v5 = [v4 objectForKeyedSubscript:@"focusBlurMapMode"];

  v6 = [v5 unsignedIntegerValue];
  if (v6)
  {
    v7 = v6;
    if (self->_focusBlurMapMode != v6)
    {
      v8 = _PTLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_focusBlurMapMode];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
        v11 = 138412546;
        v12 = v9;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_2243FB000, v8, OS_LOG_TYPE_DEFAULT, "change from focus blur map mode %@ to %@", &v11, 0x16u);
      }

      self->_focusBlurMapMode = v7;
    }
  }
}

- (id)processColorBuffer:(__CVBuffer *)a3 disparityBuffer:(__CVBuffer *)a4 metadataDictionary:(id)a5 presentationTime:(id *)a6
{
  v9 = a5;
  [(PTCinematographyStream *)self _updateDetectionModelFromMetadata:v9];
  [(PTCinematographyStream *)self _updateFocusBlurMapModeFromMetadata:v9];
  v20 = *a6;
  v10 = [(PTCinematographyStream *)self _frameDetectionsFromMetadata:v9 time:&v20 disparityBuffer:a4];
  v11 = [(PTCinematographyStream *)self _userTapFromMetadata:v9 frameDetections:v10 disparityBuffer:a4];

  if (v11)
  {
    [(PTCinematographyStream *)self setActiveUserTap:v11];
    [(PTCinematographyStream *)self _logUserTap:v11];
  }

  [(PTCinematographyStream *)self userAperture];
  v13 = v12;
  v14 = [(PTCinematographyStream *)self options];
  v15 = [v14 _snapshotPolicy];
  LODWORD(v16) = v13;
  v17 = [(PTCinematographyStream *)self _frameFromDetections:v10 userAperture:v15 snapshotPolicy:a4 disparityPixelBuffer:v16];

  [(PTCinematographyStream *)self _logFocusChangeForFrame:v17];
  [v17 focusDistance];
  if ([(PTCinematographyStream *)self _logUnusualDisparity:@"frame" kind:@"stream detection" info:?])
  {
    v18 = _PTLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyStream processColorBuffer:disparityBuffer:metadataDictionary:presentationTime:];
    }
  }

  [(PTCinematographyStream *)self setPreviousFrame:v17];

  return v17;
}

- (void)endOfStream
{
  v3 = _PTLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2243FB000, v3, OS_LOG_TYPE_INFO, "end of cinematography stream", v4, 2u);
  }

  PTDefaultsFlush();
  [(PTCinematographyStream *)self _reset];
}

- (NSString)modelVersionString
{
  v2 = [(PTCinematographyStream *)self network];
  v3 = [v2 versionString];

  return v3;
}

- (BOOL)getGlobalMetadata:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    [v4 setFocusPullerAlpha:0.0];
    [v4 setFocusPullerMaxV:0.0];
    [v4 setFocusPullerResistance:0.0];
    v5 = objc_alloc_init(PTCinematographyFocusFramesOptions);
    v6 = [(PTCinematographyFocusFramesOptions *)v5 writeToGlobalMetadata:v4];
  }

  else
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyStream getGlobalMetadata:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)_frameFromDetections:(id)a3 userAperture:(float)a4 snapshotPolicy:(unint64_t)a5 disparityPixelBuffer:(__CVBuffer *)a6
{
  v64[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = v10;
  v62 = 0uLL;
  v63 = 0;
  if (v10)
  {
    [v10 presentationTime];
  }

  v59 = [(PTCinematographyStream *)self _nextSnapshotForPolicy:a5];
  v12 = [(PTCinematographyStream *)self _chooseFocusDetection:v11];
  v13 = [(PTCinematographyStream *)self activeUserTap];

  if (v13)
  {
    v14 = [(PTCinematographyStream *)self activeUserTap];
    v15 = [v14 detection];
    if ([v15 isFixedFocusDetection])
    {
    }

    else
    {
      v16 = [(PTCinematographyStream *)self activeUserTap];
      v17 = [(PTCinematographyStream *)self _isUserTap:v16 inFrameDetections:v11];

      if (!v17)
      {
        v20 = _PTLogSystem();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v21 = "user focus: no longer detected";
          goto LABEL_15;
        }

LABEL_16:
        v13 = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    v18 = [(PTCinematographyStream *)self activeUserTap];
    if ([v18 isStrong])
    {

      goto LABEL_23;
    }

    *buf = v62;
    v61 = v63;
    v19 = [(PTCinematographyStream *)self _userTapLockEndsAtTime:buf];

    if (v19)
    {
      if ([(PTCinematographyStream *)self _userTapEndsForBaseFocusDetection:v12])
      {
        v20 = _PTLogSystem();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v21 = "user focus: base focus changed after user focus lock expired";
LABEL_15:
          _os_log_impl(&dword_2243FB000, v20, OS_LOG_TYPE_INFO, v21, buf, 2u);
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      if ([(PTCinematographyStream *)self _userTapEndsForChangedFocusWithDisparityBuffer:a6])
      {
        v20 = _PTLogSystem();
        v13 = 1;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2243FB000, v20, OS_LOG_TYPE_INFO, "user focus: fixed focus depth changed after lock expired", buf, 2u);
        }

        goto LABEL_17;
      }
    }

LABEL_23:
    v25 = [(PTCinematographyStream *)self activeUserTap];
    v26 = [v25 detection];
    v27 = [v26 isFixedFocusDetection];

    if (v27)
    {
      v28 = [(PTCinematographyStream *)self activeUserTap];
      v29 = [v28 detection];
      v30 = [v29 copy];

      if (v11)
      {
        [v11 presentationTime];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
        v61 = 0;
      }

      v31 = [v30 _detectionByChangingTime:buf];

      [v11 addDetection:v31];
    }

    v22 = [(PTCinematographyStream *)self _copyUserFocusDetectionFromDetections:v11];
    v13 = 0;
    if (!v22)
    {
      goto LABEL_29;
    }

LABEL_19:
    [v22 focusDistance];
    v24 = v23;
    goto LABEL_30;
  }

LABEL_18:
  v22 = v12;
  [(PTCinematographyStream *)self setActiveUserTap:0];
  if (v22)
  {
    goto LABEL_19;
  }

LABEL_29:
  v24 = 0;
LABEL_30:
  previewFocusPuller = self->_previewFocusPuller;
  v33 = v24;
  if (previewFocusPuller)
  {
    *buf = v62;
    v61 = v63;
    [(PTCinematographyFocusPuller *)previewFocusPuller pullTowardFocusDistance:buf time:v22 == 0 missing:COERCE_DOUBLE(__PAIR64__(DWORD1(v62), v24))];
    v33 = v34;
  }

  v35 = objc_alloc_init(PTCinematographyFrame);
  *buf = v62;
  v61 = v63;
  [(PTCinematographyFrame *)v35 setTime:buf];
  v36 = [v11 detections];
  v37 = [v36 copy];
  [(PTCinematographyFrame *)v35 setAllDetections:v37];

  [(PTCinematographyFrame *)v35 setFocusDetection:v22];
  *&v38 = a4;
  [(PTCinematographyFrame *)v35 setAperture:v38];
  LODWORD(v39) = v33;
  [(PTCinematographyFrame *)v35 setFocusDistance:v39];
  LODWORD(v40) = v24;
  [(PTCinematographyFrame *)v35 setRawFocusDistance:v40];
  v41 = [v22 trackNumber];
  [(PTCinematographyFrame *)v35 setFocusTrackNumber:v41];

  if (v12)
  {
    v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "trackIdentifier", v12)}];
    [(PTCinematographyFrame *)v35 setBaseFocusTrackNumber:v42];
  }

  else
  {
    [(PTCinematographyFrame *)v35 setBaseFocusTrackNumber:0, 0];
  }

  v43 = a5;
  v44 = [(PTCinematographyStream *)self activeUserTap];
  if (v44)
  {
    v45 = MEMORY[0x277CCABB0];
    v46 = [(PTCinematographyStream *)self activeUserTap];
    v47 = [v45 numberWithInteger:{objc_msgSend(v46, "trackIdentifier")}];
    [(PTCinematographyFrame *)v35 setUserFocusTrackNumber:v47];
  }

  else
  {
    [(PTCinematographyFrame *)v35 setUserFocusTrackNumber:0];
  }

  v48 = [v11 detectorDidRun];
  [(PTCinematographyFrame *)v35 _setDetectorDidRun:v48];

  v49 = [(PTCinematographyStream *)self activeUserTap];
  -[PTCinematographyFrame setUserFocusStrong:](v35, "setUserFocusStrong:", [v49 isStrong]);

  v50 = [(PTCinematographyStream *)self activeUserTap];
  -[PTCinematographyFrame setUserFocusGroup:](v35, "setUserFocusGroup:", [v50 isGroupTap]);

  [(PTCinematographyFrame *)v35 setUserFocusEnd:v13];
  v51 = MEMORY[0x277CCABB0];
  v52 = [(PTCinematographyStream *)self frameIndex];
  [(PTCinematographyStream *)self setFrameIndex:v52 + 1];
  v53 = [v51 numberWithUnsignedInteger:v52];
  [(PTCinematographyFrame *)v35 _setFrameNumber:v53];

  [(PTCinematographyFrame *)v35 _setSnapshot:v59];
  [(PTCinematographyFrame *)v35 _setSnapshotPolicy:v43];
  v54 = _PTLogSystem();
  v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG);

  if (v55)
  {
    v64[0] = v35;
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1];
    [PTCinematographyFrame _debugLogFrames:v56 label:@"Raw Cinematography"];
  }

  return v35;
}

- (id)_copyUserFocusDetectionFromDetections:(id)a3
{
  v4 = a3;
  v5 = [(PTCinematographyStream *)self activeUserTap];
  v6 = [v5 isGroupTap];

  v7 = [(PTCinematographyStream *)self activeUserTap];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 groupIdentifier];

    v10 = [v4 bestDetectionForGroupIdentifier:v9 options:1];

    if (!v10)
    {
      v11 = _PTLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PTCinematographyStream _copyUserFocusDetectionFromDetections:];
      }

LABEL_8:

      v10 = 0;
    }
  }

  else
  {
    v12 = [v7 trackIdentifier];

    v10 = [v4 detectionForTrackIdentifier:v12];

    if (!v10)
    {
      v11 = _PTLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PTCinematographyStream _copyUserFocusDetectionFromDetections:];
      }

      goto LABEL_8;
    }
  }

  v13 = [v10 copy];

  return v13;
}

- (id)_copyInternalState
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PTCinematographyStream activeVersion](self, "activeVersion")}];
  [v3 setObject:v4 forKeyedSubscript:@"_version"];

  v5 = MEMORY[0x277CCABB0];
  [(PTCinematographyStream *)self userAperture];
  v6 = [v5 numberWithFloat:?];
  [v3 setObject:v6 forKeyedSubscript:@"user_aperture"];

  v7 = [(PTCinematographyStream *)self previewFocusPuller];
  v8 = [v7 _asCinematographyDictionary];
  [v3 setObject:v8 forKeyedSubscript:@"focus_puller"];

  v9 = [(PTCinematographyStream *)self network];
  v10 = [v9 _asCinematographyDictionary];
  [v3 setObject:v10 forKeyedSubscript:@"_network_state"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PTCinematographyStream frameIndex](self, "frameIndex")}];
  [v3 setObject:v11 forKeyedSubscript:@"_frame_index"];

  v12 = [(PTCinematographyStream *)self previousFrame];
  v13 = [v12 _asCinematographyDictionary];
  v14 = [v13 mutableCopy];

  [v14 removeObjectForKey:@"_snapshot"];
  [v3 setObject:v14 forKeyedSubscript:@"_previous_frame_serialized"];
  v15 = [v3 copy];

  return v15;
}

- (void)_restoreInternalState:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 objectForKeyedSubscript:@"_version"];
    v7 = [v6 unsignedIntegerValue];

    if ([objc_opt_class() isSupportedVersion:v7])
    {
      self->_activeVersion = v7;
      v8 = [v5 objectForKeyedSubscript:@"user_aperture"];
      [v8 floatValue];
      [(PTCinematographyStream *)self setUserAperture:?];

      v9 = [v5 objectForKeyedSubscript:@"_frame_index"];
      -[PTCinematographyStream setFrameIndex:](self, "setFrameIndex:", [v9 unsignedIntegerValue]);

      v10 = [v5 objectForKeyedSubscript:@"_previous_frame_serialized"];
      if (v10)
      {
        v11 = [[PTCinematographyFrame alloc] _initWithCinematographyDictionary:v10];
        [(PTCinematographyStream *)self setPreviousFrame:v11];
      }

      else
      {
        [(PTCinematographyStream *)self setPreviousFrame:0];
      }

      v12 = [v5 objectForKeyedSubscript:@"focus_puller"];
      if (v12)
      {
        v13 = [[PTCinematographyFocusPuller alloc] _initWithCinematographyDictionary:v12];
        [(PTCinematographyStream *)self setPreviewFocusPuller:v13];
      }

      else
      {
        [(PTCinematographyStream *)self setPreviewFocusPuller:0];
      }

      v14 = [v5 objectForKeyedSubscript:@"_network_state"];
      if (v14)
      {
        v15 = [[PTCinematographyNetwork alloc] _initWithCinematographyDictionary:v14];
        if (v15)
        {
          objc_storeStrong(&self->_network, v15);
          v16 = _PTLogSystem();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v15 versionString];
            v18 = 138412290;
            v19 = v17;
            _os_log_impl(&dword_2243FB000, v16, OS_LOG_TYPE_INFO, "Cinematography network version %@ (restored)", &v18, 0xCu);
          }
        }

        else
        {
          v16 = _PTLogSystem();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [PTCinematographyStream _restoreInternalState:];
          }
        }
      }

      else
      {
        v15 = _PTLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [PTCinematographyStream _restoreInternalState:];
        }
      }
    }

    else
    {
      v10 = _PTLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PTCinematographyStream _restoreInternalState:];
      }
    }
  }

  else
  {
    v5 = _PTLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyStream _restoreInternalState:];
    }
  }
}

- (id)_nextSnapshotForPolicy:(unint64_t)a3
{
  v5 = [(PTCinematographyStream *)self previousRecordingState];
  if (v5 == 2)
  {
    if ((a3 | 2) != 2)
    {
      goto LABEL_8;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_9;
  }

  if (v5 != 1)
  {
    if (a3 != 2)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a3 == 2)
  {
    goto LABEL_6;
  }

  [(PTCinematographyStream *)self setPreviousRecordingState:2];
LABEL_8:
  v6 = [(PTCinematographyStream *)self _copyInternalState];
LABEL_9:

  return v6;
}

- (float)_defaultAperture
{
  if (_defaultAperture_onceToken != -1)
  {
    [PTCinematographyStream _defaultAperture];
  }

  return *&_defaultAperture_sDefaultAperture;
}

void __42__PTCinematographyStream__defaultAperture__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  _defaultAperture_sDefaultAperture = 1082130432;
  v0 = _PTLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 134217984;
    v2 = 0x4010000000000000;
    _os_log_impl(&dword_2243FB000, v0, OS_LOG_TYPE_DEFAULT, "CinematographyAperture: %g", &v1, 0xCu);
  }
}

- (void)_reset
{
  v19 = *MEMORY[0x277D85DE8];
  [(PTCinematographyStream *)self _defaultAperture];
  self->_userAperture = v3;
  v4 = [[PTCinematographyTrackAllocator alloc] initWithTrackIdentifier:0x1100000000];
  trackAllocator = self->_trackAllocator;
  self->_trackAllocator = v4;

  v6 = objc_alloc_init(PTCinematographyFocusPuller);
  previewFocusPuller = self->_previewFocusPuller;
  self->_previewFocusPuller = v6;

  v8 = [(PTCinematographyStream *)self _userDefaultNetworkVersion];
  if (!v8)
  {
    v8 = [PTCinematographyNetwork defaultVersionStringForDetectionModel:self->_detectionModel];
  }

  v9 = [[PTCinematographyNetwork alloc] initWithVersionString:v8];
  network = self->_network;
  self->_network = v9;

  self->_frameIndex = 0;
  previousFrame = self->_previousFrame;
  self->_previousFrame = 0;

  [(PTCinematographyStream *)self setPreviousRecordingState:0];
  v12 = _PTLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(PTCinematographyStream *)self network];
    v14 = [v13 versionString];
    v17 = 138412290;
    v18 = v14;
    _os_log_impl(&dword_2243FB000, v12, OS_LOG_TYPE_INFO, "Cinematography network version %@", &v17, 0xCu);
  }

  v15 = _PTLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [(PTCinematographyFocusPuller *)self->_previewFocusPuller _asCinematographyDictionary];
    v17 = 138412290;
    v18 = v16;
    _os_log_impl(&dword_2243FB000, v15, OS_LOG_TYPE_INFO, "focus puller: %@", &v17, 0xCu);
  }
}

- (id)_chooseClosestObjectDetection:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        [v10 focusDistance];
        if (v8 < v11)
        {
          v12 = v11;
          v13 = v10;

          v8 = v12;
          v6 = v13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_chooseLargestAreaDetection:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        [v10 rect];
        Area = CGRectGetArea(v11, v12, v13, v14);
        if (v8 < Area)
        {
          v16 = v10;

          v8 = Area;
          v6 = v16;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_detectionForFixedFocusDistance:(float)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = [PTCinematographyDetection alloc];
  v15 = *MEMORY[0x277CC0888];
  v16 = *(MEMORY[0x277CC0888] + 16);
  *&v11 = a3;
  v12 = [(PTCinematographyDetection *)v10 initWithTime:&v15 rect:x focusDistance:y, width, height, v11];
  [(PTCinematographyDetection *)v12 setDetectionType:101];
  v13 = [(PTCinematographyStream *)self trackAllocator];
  -[PTCinematographyDetection setTrackIdentifier:](v12, "setTrackIdentifier:", [v13 nextTrackIdentifier]);

  return v12;
}

- (float)_floatValueForAssignmentString:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"="];
  v4 = 0.0;
  if ([v3 count] >= 2)
  {
    v5 = [v3 objectAtIndexedSubscript:1];
    [v5 floatValue];
    v4 = v6;
  }

  return v4;
}

- (id)_stringValueForAssignmentString:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"="];
  if ([v3 count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:1];
  }

  return v4;
}

- (void)_getFocusStrategyIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  if (![(PTCinematographyStream *)self didReadFocusStrategyDefault])
  {
    [(PTCinematographyStream *)self setDidReadFocusStrategyDefault:1];
    v3 = PTDefaultsGetDictionary();
    v4 = [v3 objectForKeyedSubscript:@"CinematographyFocus"];

    if (v4)
    {
      v5 = _PTLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_2243FB000, v5, OS_LOG_TYPE_INFO, "defaults: CinematographyFocus %@", &v9, 0xCu);
      }

      if ([v4 hasPrefix:@"network"])
      {
        [(PTCinematographyStream *)self setInternalDefaultFocusStrategy:0];
        v6 = [(PTCinematographyStream *)self _stringValueForAssignmentString:v4];
        [(PTCinematographyStream *)self setInternalDefaultNetworkVersion:v6];
      }

      else
      {
        if (![v4 hasPrefix:@"fixed"])
        {
          if ([v4 isEqualToString:@"closest"])
          {
            v7 = self;
            v8 = 2;
          }

          else
          {
            if (![v4 isEqualToString:@"largest"])
            {
              goto LABEL_14;
            }

            v7 = self;
            v8 = 3;
          }

          [(PTCinematographyStream *)v7 setInternalDefaultFocusStrategy:v8];
          goto LABEL_14;
        }

        [(PTCinematographyStream *)self setInternalDefaultFocusStrategy:1];
        [(PTCinematographyStream *)self _floatValueForAssignmentString:v4];
        [(PTCinematographyStream *)self setInternalDefaultFixedFocusDisparity:?];
      }
    }

LABEL_14:
  }
}

- (unint64_t)_userDefaultFocusStrategy
{
  [(PTCinematographyStream *)self _getFocusStrategyIfNeeded];

  return [(PTCinematographyStream *)self internalDefaultFocusStrategy];
}

- (id)_userDefaultNetworkVersion
{
  [(PTCinematographyStream *)self _getFocusStrategyIfNeeded];

  return [(PTCinematographyStream *)self internalDefaultNetworkVersion];
}

- (float)_userDefaultFixedFocusDisparity
{
  [(PTCinematographyStream *)self _getFocusStrategyIfNeeded];

  [(PTCinematographyStream *)self internalDefaultFixedFocusDisparity];
  return result;
}

- (id)_chooseFocusDetection:(id)a3
{
  v4 = a3;
  v5 = [(PTCinematographyStream *)self _userDefaultFocusStrategy];
  v6 = 0;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v7 = [v4 detections];
      v8 = [(PTCinematographyStream *)self _chooseClosestObjectDetection:v7];
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_11;
      }

      v7 = [v4 detections];
      v8 = [(PTCinematographyStream *)self _chooseLargestAreaDetection:v7];
    }

    v6 = v8;
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      [(PTCinematographyStream *)self _userDefaultFixedFocusDisparity];
      v6 = [PTCinematographyStream _detectionForFixedFocusDistance:"_detectionForFixedFocusDistance:rect:" rect:?];
    }
  }

  else
  {
    v9 = [(PTCinematographyStream *)self network];
    v6 = [v9 stepWithFrameDetections:v4];
  }

LABEL_11:
  v10 = [v4 baseFocusTrackNumberOverride];

  if (v10)
  {
    v11 = [v4 baseFocusTrackNumberOverride];
    v12 = [v11 integerValue];

    v13 = [v4 detectionForTrackIdentifier:v12];

    v6 = v13;
  }

  return v6;
}

- (float)_minimumUserTapSeconds
{
  if (_minimumUserTapSeconds_onceToken != -1)
  {
    [PTCinematographyStream _minimumUserTapSeconds];
  }

  return *&_minimumUserTapSeconds_sMinimumUserTapSeconds;
}

- (BOOL)_userTapLockEndsAtTime:(id *)a3
{
  v5 = [(PTCinematographyStream *)self activeUserTap];
  v6 = v5;
  if (v5)
  {
    [v5 time];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  v11 = *a3;
  CMTimeSubtract(&time, &v11, &rhs);
  Seconds = CMTimeGetSeconds(&time);
  [(PTCinematographyStream *)self _minimumUserTapSeconds];
  v9 = Seconds >= v8;

  return v9;
}

- (BOOL)_userTapEndsForChangedFocusWithDisparityBuffer:(__CVBuffer *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  if (_userTapEndsForChangedFocusWithDisparityBuffer__onceToken != -1)
  {
    [PTCinematographyStream _userTapEndsForChangedFocusWithDisparityBuffer:];
    if (a3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

LABEL_3:
  if (0xCCCCCCCCCCCCCCCDLL * [(PTCinematographyStream *)self frameIndex]> 0x3333333333333333)
  {
    return 0;
  }

  v5 = [(PTCinematographyStream *)self activeUserTap];
  v6 = [v5 detection];
  v7 = [v6 isFixedFocusDetection];

  if (!v7)
  {
    return 0;
  }

  v8 = [(PTCinematographyStream *)self activeUserTap];
  v9 = [v8 detection];
  [v9 rect];
  v14 = PTDisparityInNormalizedRectFromPixelBuffer(101, a3, v10, v11, v12, v13);

  v15 = [(PTCinematographyStream *)self activeUserTap];
  v16 = [v15 detection];
  [v16 focusDistance];
  v18 = fabsf((v17 / fmaxf(v14, 0.0001)) + -1.0);

  if (v18 <= *&_userTapEndsForChangedFocusWithDisparityBuffer__sSoftFixedFocusTerminateThreshold)
  {
    return 0;
  }

  v19 = _PTLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v21 = [(PTCinematographyStream *)self activeUserTap];
    v22 = [(PTCinematographyStream *)self activeUserTap];
    v23 = [v22 detection];
    [v23 focusDistance];
    v25 = 138413058;
    v26 = v21;
    v27 = 2048;
    v28 = (v18 * 100.0);
    v29 = 2048;
    v30 = v24;
    v31 = 2048;
    v32 = v14;
    _os_log_debug_impl(&dword_2243FB000, v19, OS_LOG_TYPE_DEBUG, "user tap %@ ends due to depth change of %.1f%% (from disparity %.3f to %.3f)", &v25, 0x2Au);
  }

  return 1;
}

- (BOOL)_userTapEndsForBaseFocusDetection:(id)a3
{
  v4 = a3;
  v5 = [v4 trackNumber];
  v6 = [v4 groupIdentifier];

  if (PTGroupIDIsValid(v6))
  {
    v7 = [(PTCinematographyStream *)self previousFrame];
    v8 = [(PTCinematographyStream *)self previousFrame];
    v9 = [v8 baseFocusTrackNumber];
    v10 = [v7 detectionForTrackNumber:v9];

    if (v6 == [v10 groupIdentifier])
    {

      goto LABEL_6;
    }

    v11 = [(PTCinematographyStream *)self activeUserTap];
    v12 = [v11 groupIdentifier];

    if (v6 == v12)
    {
      goto LABEL_6;
    }
  }

  v13 = [(PTCinematographyStream *)self previousFrame];
  v14 = [v13 baseFocusTrackNumber];
  v15 = [v5 isEqualToNumber:v14];

  if ((v15 & 1) == 0)
  {
    v17 = [(PTCinematographyStream *)self activeUserTap];
    v18 = [v17 trackNumber];
    v19 = [v5 isEqualToNumber:v18];

    v16 = v19 ^ 1;
    goto LABEL_8;
  }

LABEL_6:
  v16 = 0;
LABEL_8:

  return v16;
}

- (id)_userTapFromMetadata:(id)a3 frameDetections:(id)a4 disparityBuffer:(__CVBuffer *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(PTCinematographyStream *)self _hasFusionTrackerMetadata:v8])
  {
    v10 = [(PTCinematographyStream *)self _trackingResultFromFusionTrackerMetadata:v8];
    v11 = [v10 tapResponse];
    v12 = [(PTCinematographyStream *)self _userTapFromFTTapResponse:v11 frameDetections:v9 disparityBuffer:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_isValidNormalizedPoint:(CGPoint)a3
{
  v3 = a3.x >= 0.0;
  if (a3.x > 1.0)
  {
    v3 = 0;
  }

  v4 = a3.y >= 0.0;
  if (a3.y > 1.0)
  {
    v4 = 0;
  }

  return v3 && v4;
}

- (BOOL)_isFixedFocusFTTapRequestMetadata:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:PTCinematographyTapRequestIsFixedPlaneFocus];
  if ([v4 BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"isFixedFocus"];
    v5 = [v6 BOOLValue];
  }

  return v5;
}

- (BOOL)_isFixedFocusFTTapRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 metadata];
  if ([(PTCinematographyStream *)self _isFixedFocusFTTapRequestMetadata:v5])
  {
    [v4 tapPoint];
    v6 = [(PTCinematographyStream *)self _isValidNormalizedPoint:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isTapToTrackFTTapRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 metadata];
  if ([(PTCinematographyStream *)self _isFixedFocusFTTapRequestMetadata:v5])
  {
    v6 = 0;
  }

  else
  {
    [v4 tapPoint];
    v6 = [(PTCinematographyStream *)self _isValidNormalizedPoint:?];
  }

  return v6;
}

- (BOOL)_isSuccessfulTapToTrackFTTapResponse:(id)a3
{
  v4 = a3;
  if ([v4 wasSuccessful])
  {
    v5 = [v4 request];
    v6 = [(PTCinematographyStream *)self _isTapToTrackFTTapRequest:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isFailedTapToTrackFTTapResponse:(id)a3
{
  v4 = a3;
  if ([v4 wasSuccessful])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 request];
    v5 = [(PTCinematographyStream *)self _isTapToTrackFTTapRequest:v6];
  }

  return v5;
}

- (CGRect)_fixedFocusRectForPoint:(CGPoint)a3 disparityBuffer:(__CVBuffer *)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(PTCinematographyStream *)self options];
  [v8 fixedFocusNormalizedRectSize];
  v10 = v9;
  v12 = v11;

  v13 = v10 <= 0.0 || v10 > 1.0;
  if (v13 || (v12 > 0.0 ? (v14 = v12 > 1.0) : (v14 = 1), v14))
  {
    [(PTCinematographyStream *)self _defaultFixedFocusRectForPoint:a4 disparityBuffer:x, y];
    v10 = v17;
    v12 = v18;
  }

  else
  {
    v15 = x - v10 * 0.5;
    v16 = y - v12 * 0.5;
  }

  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_defaultFixedFocusRectForPoint:(CGPoint)a3 disparityBuffer:(__CVBuffer *)a4
{
  y = a3.y;
  x = a3.x;
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  v9 = 0.125;
  v10 = 0.125;
  if (Width > Height)
  {
    v10 = Height * 0.125 / Width;
  }

  if (Width < Height)
  {
    v9 = Width * 0.125 / Height;
  }

  v11 = x - v10 * 0.5;
  v12 = y - v9 * 0.5;
  result.size.height = v9;
  result.size.width = v10;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)_detectionForFixedFocusAtNormalizedPoint:(CGPoint)a3 disparityBuffer:(__CVBuffer *)a4
{
  y = a3.y;
  x = a3.x;
  v31 = *MEMORY[0x277D85DE8];
  [PTCinematographyStream _fixedFocusRectForPoint:"_fixedFocusRectForPoint:disparityBuffer:" disparityBuffer:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = PTDisparityInNormalizedRectFromPixelBuffer(101, a4, v8, v10, v12, v14);
  v17 = _PTLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v33.x = x;
    v33.y = y;
    v18 = NSStringFromPoint(v33);
    v34.origin.x = v9;
    v34.origin.y = v11;
    v34.size.width = v13;
    v34.size.height = v15;
    v19 = NSStringFromRect(v34);
    *&v20 = v16;
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    v25 = 138412802;
    v26 = v18;
    v27 = 2112;
    v28 = v19;
    v29 = 2112;
    v30 = v21;
    _os_log_impl(&dword_2243FB000, v17, OS_LOG_TYPE_DEFAULT, "fixed focus user tap at point %@ (rect %@; disparity %@)", &v25, 0x20u);
  }

  *&v22 = v16;
  v23 = [(PTCinematographyStream *)self _detectionForFixedFocusDistance:v22 rect:v9, v11, v13, v15];

  return v23;
}

- (id)_userTapFromFTTapResponse:(id)a3 frameDetections:(id)a4 disparityBuffer:(__CVBuffer *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    goto LABEL_8;
  }

  v10 = [v8 request];
  v11 = v10;
  if (!v10)
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyStream _userTapFromFTTapResponse:frameDetections:disparityBuffer:];
    }

    goto LABEL_7;
  }

  if (([v10 trackId] & 0x8000000000000000) == 0)
  {
    v12 = [v9 detectionForTrackIdentifier:{objc_msgSend(v11, "trackId")}];
    goto LABEL_15;
  }

  if ([(PTCinematographyStream *)self _isSuccessfulTapToTrackFTTapResponse:v8])
  {
    v12 = [v9 customDetection];
    goto LABEL_15;
  }

  if (![(PTCinematographyStream *)self _isFixedFocusFTTapRequest:v11]&& ![(PTCinematographyStream *)self _isFailedTapToTrackFTTapResponse:v8])
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyStream _userTapFromFTTapResponse:frameDetections:disparityBuffer:];
    }

LABEL_7:

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  [v11 tapPoint];
  v12 = [(PTCinematographyStream *)self _detectionForFixedFocusAtNormalizedPoint:a5 disparityBuffer:?];
LABEL_15:
  v14 = v12;

  if (v14)
  {
    v16 = [v8 request];
    v17 = [v16 metadata];
    v18 = [v17 objectForKeyedSubscript:PTCinematographyTapRequestIsHardFocus];
    v19 = [v18 BOOLValue];

    v20 = PTGroupIDIsValid([v14 groupIdentifier]);
    v21 = [PTCinematographyUserTap alloc];
    if (v9)
    {
      [v9 presentationTime];
    }

    else
    {
      memset(v23, 0, sizeof(v23));
    }

    v15 = [(PTCinematographyUserTap *)v21 initWithTime:v23 tappedDetection:v14 strong:v19 group:v20];
    goto LABEL_20;
  }

LABEL_9:
  v15 = 0;
LABEL_20:

  return v15;
}

- (BOOL)_isUserTap:(id)a3 inFrameDetections:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isGroupTap])
  {
    v7 = [v6 bestDetectionForGroupIdentifier:objc_msgSend(v5 options:{"groupIdentifier"), 1}];

    v8 = v7 != 0;
  }

  else
  {
    v7 = [v6 detectionForTrackIdentifier:{objc_msgSend(v5, "trackIdentifier")}];

    if (v7)
    {
      if (![v7 _isExcludedAsCinematicChoice])
      {
        v8 = 1;
        goto LABEL_10;
      }

      v9 = _PTLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PTCinematographyStream _isUserTap:inFrameDetections:];
      }
    }

    v8 = 0;
  }

LABEL_10:

  return v8;
}

- (id)_frameDetectionsFromMetadata:(id)a3 time:(id *)a4 disparityBuffer:(__CVBuffer *)a5
{
  v8 = a3;
  if (![(PTCinematographyStream *)self _hasFusionTrackerMetadata:v8])
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyStream _frameDetectionsFromMetadata:time:disparityBuffer:];
    }
  }

  v13 = *&a4->var0;
  var3 = a4->var3;
  v10 = [(PTCinematographyStream *)self _frameDetectionsFromFusionTrackerMetadata:v8 time:&v13 disparityBuffer:a5];
  v11 = [v8 objectForKeyedSubscript:@"__BaseFocusTrackNumberOverride"];

  [v10 setBaseFocusTrackNumberOverride:v11];

  return v10;
}

- (BOOL)_hasFusionTrackerMetadata:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"FTCinematicTrackingResult"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"FTTrackingResult"];
    v5 = v6 != 0;
  }

  return v5;
}

- (id)_trackingResultFromFusionTrackerMetadata:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"FTCinematicTrackingResult"];
  if (!v4)
  {
    v4 = [v3 objectForKeyedSubscript:@"FTTrackingResult"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_useSyntheticDDR
{
  if (_useSyntheticDDR_onceToken != -1)
  {
    [PTCinematographyStream _useSyntheticDDR];
  }

  return 0;
}

- (BOOL)_detectorDidRunFromFTTrackingResult:(id)a3 time:(id *)a4
{
  v6 = a3;
  if ([(PTCinematographyStream *)self _useSyntheticDDR])
  {
    v7 = [(PTCinematographyStream *)self previousFrame];

    if (v7)
    {
      memset(&v21, 0, sizeof(v21));
      v8 = [(PTCinematographyStream *)self previousFrame];
      v9 = v8;
      if (v8)
      {
        [v8 time];
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      lhs = *a4;
      CMTimeSubtract(&v21, &lhs, &rhs);

      lhs = v21;
      CMTimeMultiplyByRatio(&rhs, &lhs, 1, 4);
      v21 = rhs;
      memset(&rhs, 0, sizeof(rhs));
      [(PTCinematographyStream *)self detectorDidRunNextExpectedTime];
      time2 = v21;
      CMTimeSubtract(&rhs, &lhs, &time2);
      lhs = *a4;
      time2 = rhs;
      if (CMTimeCompare(&lhs, &time2) < 0)
      {
        v10 = 0;
LABEL_17:
        v12 = _PTLogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PTCinematographyStream _detectorDidRunFromFTTrackingResult:time:];
        }

LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v21 = *a4;
      [(PTCinematographyStream *)self setDetectorDidRunNextExpectedTime:&v21];
    }

    v13 = [(PTCinematographyStream *)self network];
    [v13 expectedFPS];
    if (v14 == 0.0)
    {
      v14 = 6.0;
    }

    v15 = v14;

    memset(&v21, 0, sizeof(v21));
    v10 = 1;
    CMTimeMake(&v21, 1, v15);
    [(PTCinematographyStream *)self detectorDidRunNextExpectedTime];
    lhs = v21;
    CMTimeAdd(&v17, &rhs, &lhs);
    rhs = v17;
    [(PTCinematographyStream *)self setDetectorDidRunNextExpectedTime:&rhs];
    goto LABEL_17;
  }

  v10 = [v6 detectorDidRun];
  v11 = [(PTCinematographyStream *)self previousFrame];

  if (!v11 && (v10 & 1) == 0)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyStream _detectorDidRunFromFTTrackingResult:time:];
    }

    v10 = 1;
    goto LABEL_19;
  }

LABEL_20:

  return v10;
}

- (id)_frameDetectionsFromFusionTrackerMetadata:(id)a3 time:(id *)a4 disparityBuffer:(__CVBuffer *)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(PTCinematographyStream *)self _trackingResultFromFusionTrackerMetadata:v8];
  v10 = _PTLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    log = v10;
    v56 = a5;
    v57 = self;
    v58 = a4;
    v59 = v9;
    v60 = v8;
    v27 = v9;
    v63 = objc_opt_new();
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = [v27 tracks];
    v28 = [obj countByEnumeratingWithState:&v64 objects:buf count:16];
    if (v28)
    {
      v29 = v28;
      v62 = *v65;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v65 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v64 + 1) + 8 * i);
          if (v27)
          {
            [v27 sourceFrameTimestamp];
          }

          v32 = v31;
          v33 = PTGroupIDFromFTTrack(v32);
          v34 = &stru_2837D16E8;
          if (PTGroupIDIsValid(v33))
          {
            v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"G%ld", v33];
          }

          v35 = [v32 metadata];
          v36 = [v35 objectForKeyedSubscript:PTCinematographyExcludeAsCinematicChoice];
          v37 = [v36 BOOLValue];
          v38 = @"(excluded)";
          if (!v37)
          {
            v38 = &stru_2837D16E8;
          }

          v39 = v38;

          [v32 box];
          v41 = v40;
          v43 = v42;
          v45 = v44;
          v47 = v46;
          v48 = MEMORY[0x277CCACA8];
          v49 = [v32 identifier];
          v50 = [v32 objectKind];

          v51 = [v48 stringWithFormat:@"T%ld%@(%zd)%@: (%g, %g, %g, %g)", v49, v34, v50, v39, v41, v43, v45, v47];

          [v63 addObject:v51];
        }

        v29 = [obj countByEnumeratingWithState:&v64 objects:buf count:16];
      }

      while (v29);
    }

    v52 = MEMORY[0x277CCACA8];
    v53 = [v27 tracks];
    v54 = [v52 stringWithFormat:@"FTCinematicTrackingResult (%ld) [DDR:%d]: %@", objc_msgSend(v53, "count"), objc_msgSend(v27, "detectorDidRun"), v63];

    *buf = 138412290;
    *&buf[4] = v54;
    v10 = log;
    _os_log_debug_impl(&dword_2243FB000, log, OS_LOG_TYPE_DEBUG, "FusionTracker: %@", buf, 0xCu);

    v9 = v59;
    v8 = v60;
    self = v57;
    a4 = v58;
    a5 = v56;
  }

  v11 = [v8 objectForKeyedSubscript:@"MLSignals"];
  [(PTCinematographyStream *)self _autoFocusRectFromMetadata:v8];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(PTCinematographyStream *)self _autoFocusBlurMapFromMetadata:v8];
  v21 = v20;
  if (v20)
  {
    [v20 setAutoFocusRect:{v13, v15, v17, v19}];
  }

  *buf = *&a4->var0;
  var3 = a4->var3;
  v22 = [(PTCinematographyStream *)self _detectionsFromFTTrackingResult:v9 autoFocusRect:v21 focusBlurMap:v11 namedSignalsPerTrack:buf time:a5 disparityBuffer:v13, v15, v17, v19];
  *buf = *&a4->var0;
  var3 = a4->var3;
  v23 = [(PTCinematographyStream *)self _detectorDidRunFromFTTrackingResult:v9 time:buf];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:v23];
  *buf = *&a4->var0;
  var3 = a4->var3;
  v25 = [PTCinematographyFrameDetections frameDetections:v22 detectorDidRun:v24 presentationTime:buf];

  return v25;
}

- (BOOL)_isInvalidFTTrack:(id)a3
{
  v3 = a3;
  [v3 box];
  IsEmpty = CGRectIsEmpty(v7);
  if (IsEmpty)
  {
    [v3 box];
    v5 = _PTLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyStream _isInvalidFTTrack:v3];
    }
  }

  return IsEmpty;
}

- (CGSize)_sensorSizeFromMetadata:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"RawSensorWidth"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v3 objectForKeyedSubscript:@"RawSensorHeight"];

  [v7 doubleValue];
  v9 = v8;

  v10 = v6;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)_validSensorRectFromMetadata:(id)a3
{
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v10.origin = *MEMORY[0x277CBF3A0];
  v10.size = v3;
  v4 = [a3 objectForKeyedSubscript:@"SensorRawValidBufferRect"];
  v5 = v4;
  if (v4)
  {
    CGRectMakeWithDictionaryRepresentation(v4, &v10);
  }

  y = v10.origin.y;
  x = v10.origin.x;
  height = v10.size.height;
  width = v10.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_autoFocusBlurMapFromMetadata:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_autoFocusUseBlurMap)
  {
    goto LABEL_13;
  }

  if (!self->_focusBlurMapMode)
  {
    goto LABEL_13;
  }

  v6 = [v4 objectForKeyedSubscript:@"FocusMode"];
  v7 = [v6 unsignedIntegerValue];

  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = _PTLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyStream _autoFocusBlurMapFromMetadata:];
  }

  if (v7 == 1)
  {
    v9 = [v5 objectForKeyedSubscript:@"FocusBlurMap"];
    if (v9)
    {
      [(PTCinematographyStream *)self _sensorSizeFromMetadata:v5];
      v12 = 0;
      if (v10 > 0.0)
      {
        v13 = v11;
        if (v11 > 0.0)
        {
          v14 = v10;
          [(PTCinematographyStream *)self _validSensorRectFromMetadata:v5];
          v12 = 0;
          if (v17 > 0.0 && v18 > 0.0)
          {
            v12 = [[PTFocusBlurMap alloc] initWithFocusBlurMapData:v9 sensorSize:v14 validSensorRect:v13, v15, v16, v17, v18];
          }
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_13:
    v12 = 0;
  }

  return v12;
}

- (CGRect)_autoFocusRectFromMetadata:(id)a3
{
  v3 = *(MEMORY[0x277CBF398] + 16);
  v11.origin = *MEMORY[0x277CBF398];
  v11.size = v3;
  v4 = [a3 objectForKeyedSubscript:@"FocusRegion"];
  v5 = v4;
  if (v4)
  {
    CGRectMakeWithDictionaryRepresentation(v4, &v11);
    v6 = _PTLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyStream _autoFocusRectFromMetadata:?];
    }
  }

  y = v11.origin.y;
  x = v11.origin.x;
  height = v11.size.height;
  width = v11.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_autoFocusDetectionWithTime:(id *)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (CGRectIsEmpty(a4))
  {
    x = 0.0;
    y = 0.0;
    width = 1.0;
    height = 1.0;
  }

  v9 = [PTCinematographyDetection alloc];
  v12 = *&a3->var0;
  var3 = a3->var3;
  v10 = [(PTCinematographyDetection *)v9 initWithTime:&v12 rect:x focusDistance:y, width, height, 0.0];
  [(PTCinematographyDetection *)v10 setDetectionType:100];
  [(PTCinematographyDetection *)v10 setTrackIdentifier:0x1000000001];

  return v10;
}

- (void)_copyPreviousISPDetections:(id)a3 toDetections:(id)a4 time:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (([v13 detectionType] - 1) <= 0xB)
        {
          v15 = *&a5->var0;
          var3 = a5->var3;
          v14 = [v13 _detectionByChangingTime:&v15];
          [v8 addObject:v14];
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)_updateDetections:(id)a3 ifMissingISPDetectionsFromTrackingResult:(id)a4 time:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [a4 tracks];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:&v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v18 + 1) + 8 * v13) objectKind] != 912559)
        {

          v17 = 1;
          goto LABEL_14;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:&v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if ([(PTCinematographyStream *)self canCopyISPDetectionsIfMissing])
  {
    v14 = _PTLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyStream _updateDetections:ifMissingISPDetectionsFromTrackingResult:time:];
    }

    v15 = [(PTCinematographyStream *)self previousFrame];
    v16 = [v15 allDetections];
    v22 = *&a5->var0;
    var3 = a5->var3;
    [(PTCinematographyStream *)self _copyPreviousISPDetections:v16 toDetections:v8 time:&v22];

    v17 = 0;
LABEL_14:
    [(PTCinematographyStream *)self setCanCopyISPDetectionsIfMissing:v17];
  }
}

- (id)_detectionsFromFTTrackingResult:(id)a3 autoFocusRect:(CGRect)a4 focusBlurMap:(id)a5 namedSignalsPerTrack:(id)a6 time:(id *)a7 disparityBuffer:(__CVBuffer *)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v23 = *a7;
  v17 = a5;
  v18 = a3;
  v19 = [(PTCinematographyStream *)self _mutableDetectionsFromFTTrackingResult:v18 namedSignalsPerTrack:a6 time:&v23];
  v23 = *a7;
  v20 = [(PTCinematographyStream *)self _autoFocusDetectionWithTime:&v23 rect:x, y, width, height];
  [v19 addObject:v20];
  [(PTCinematographyStream *)self _setDisparityOfDetections:v19 disparityBuffer:a8 focusBlurMap:v17];

  v23 = *a7;
  [(PTCinematographyStream *)self _updateDetections:v19 ifMissingISPDetectionsFromTrackingResult:v18 time:&v23];

  v21 = [v19 copy];

  return v21;
}

- (unint64_t)_detectionTypeForFTObjectKind:(unint64_t)a3
{
  result = 1;
  if (a3 > 1001)
  {
    if (a3 <= 2999)
    {
      if (a3 <= 1999)
      {
        if (a3 == 1002)
        {
          return result;
        }

        if (a3 == 1003)
        {
          return 12;
        }

        return 0;
      }

      if (a3 != 2000)
      {
        if (a3 == 2001)
        {
          return 9;
        }

        return 0;
      }

      return 4;
    }

    if (a3 <= 42000)
    {
      if (a3 != 3000)
      {
        if (a3 == 3001)
        {
          return 10;
        }

        return 0;
      }

      return 5;
    }

    if (a3 == 42001)
    {
      return 11;
    }

    if (a3 == 912559)
    {
      return 102;
    }

    return 0;
  }

  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      return result;
    }

    if (a3 == 2)
    {
      return 2;
    }

    if (a3 != 3)
    {
      return 0;
    }

    return 3;
  }

  if (a3 > 999)
  {
    if (a3 != 1000)
    {
      return 2;
    }

    return 3;
  }

  if (a3 == 4)
  {
    return 4;
  }

  if (a3 == 5)
  {
    return 5;
  }

  return 0;
}

- (id)_ANODPoseFromFTTrackMetadata:(id)a3
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"AngleInfoRoll"];
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"AngleInfoPitch"];
    if (v5)
    {
      v6 = [v3 objectForKeyedSubscript:@"AngleInfoYaw"];
      if (v6)
      {
        [v4 floatValue];
        v8 = v7;
        [v5 floatValue];
        v10 = v9;
        [v6 floatValue];
        v12 = v11;
        LODWORD(v13) = v8;
        v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
        LODWORD(v15) = v10;
        v16 = [MEMORY[0x277CCABB0] numberWithFloat:{v15, v14}];
        v21[1] = v16;
        LODWORD(v17) = v12;
        v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
        v21[2] = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_namedSignals:(id)a3 addingANODPoseFromFTTrackMetadata:(id)a4
{
  v6 = a3;
  v7 = [(PTCinematographyStream *)self _ANODPoseFromFTTrackMetadata:a4];
  if (v7)
  {
    if (!v6)
    {
      v6 = MEMORY[0x277CBEC10];
    }

    v8 = [v6 mutableCopy];
    [v8 setObject:v7 forKeyedSubscript:@"anod_pose"];
    v9 = [v8 copy];
  }

  else
  {
    v6 = v6;
    v9 = v6;
  }

  return v9;
}

- (id)_mutableDetectionsFromFTTrackingResult:(id)a3 namedSignalsPerTrack:(id)a4 time:(id *)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v33 = a4;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = v7;
  obj = [v7 tracks];
  v8 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        if (![(PTCinematographyStream *)self _isInvalidFTTrack:v12])
        {
          v13 = [PTCinematographyDetection alloc];
          [v12 box];
          *buf = *&a5->var0;
          *&buf[16] = a5->var3;
          v14 = [PTCinematographyDetection initWithTime:v13 rect:"initWithTime:rect:focusDistance:" focusDistance:buf];
          -[PTCinematographyDetection setDetectionType:](v14, "setDetectionType:", -[PTCinematographyStream _detectionTypeForFTObjectKind:](self, "_detectionTypeForFTObjectKind:", [v12 objectKind]));
          -[PTCinematographyDetection setTrackIdentifier:](v14, "setTrackIdentifier:", [v12 identifier]);
          [(PTCinematographyDetection *)v14 setGroupIdentifier:PTGroupIDFromFTTrack(v12)];
          v15 = [v12 metadata];
          v16 = [v15 objectForKeyedSubscript:PTCinematographyExcludeAsCinematicChoice];
          -[PTCinematographyDetection _setExcludedAsCinematicChoice:](v14, "_setExcludedAsCinematicChoice:", [v16 BOOLValue]);

          if ([(PTCinematographyDetection *)v14 trackIdentifier]< 0)
          {
            v17 = _PTLogSystem();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [(PTCinematographyStream *)v40 _mutableDetectionsFromFTTrackingResult:v14 namedSignalsPerTrack:&v41 time:v17];
            }
          }

          v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "identifier")}];
          v19 = [v33 objectForKey:v18];

          v20 = [v12 metadata];
          v21 = [(PTCinematographyStream *)self _namedSignals:v19 addingANODPoseFromFTTrackMetadata:v20];
          [(PTCinematographyDetection *)v14 set_namedSignals:v21];

          v22 = [(PTCinematographyDetection *)v14 _namedSignals];
          if (v22)
          {
            v23 = v22;
            v24 = PTDefaultsGetDictionary();
            v25 = [v24 objectForKeyedSubscript:@"CinematographyDebugLogMLSignals"];
            v26 = [v25 BOOLValue];

            if (v26)
            {
              v27 = _PTLogSystem();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                v28 = [(PTCinematographyDetection *)v14 focusIdentifier];
                v29 = [(PTCinematographyDetection *)v14 _namedSignals];
                *buf = 138412546;
                *&buf[4] = v28;
                *&buf[12] = 2112;
                *&buf[14] = v29;
                _os_log_debug_impl(&dword_2243FB000, v27, OS_LOG_TYPE_DEBUG, "%@ named signals: %@", buf, 0x16u);
              }
            }
          }

          [v34 addObject:v14];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v9);
  }

  return v34;
}

- (id)_disparityWeightingValue
{
  if (_disparityWeightingValue_onceToken != -1)
  {
    [PTCinematographyStream _disparityWeightingValue];
  }

  v3 = _disparityWeightingValue_sDisparityWeightingValue;

  return v3;
}

void __50__PTCinematographyStream__disparityWeightingValue__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = PTDefaultsGetDictionary();
  v1 = [v0 objectForKeyedSubscript:@"CinematographyDisparityWeighting"];
  v2 = _disparityWeightingValue_sDisparityWeightingValue;
  _disparityWeightingValue_sDisparityWeightingValue = v1;

  if (!_disparityWeightingValue_sDisparityWeightingValue)
  {
    goto LABEL_5;
  }

  v3 = _PTLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = _disparityWeightingValue_sDisparityWeightingValue;
    _os_log_impl(&dword_2243FB000, v3, OS_LOG_TYPE_INFO, "defaults: CinematographyDisparityWeighting: %@", &v5, 0xCu);
  }

  if (!_disparityWeightingValue_sDisparityWeightingValue)
  {
LABEL_5:
    v4 = _disparityWeightingValue_sDisparityWeightingValue;
    _disparityWeightingValue_sDisparityWeightingValue = &unk_2837F39D0;
  }
}

- (float)_focusDistanceForDetection:(id)a3 lockedDisparityBufferAddress:(void *)a4 width:(unint64_t)a5 height:(unint64_t)a6 bytesPerRow:(unint64_t)a7 formatType:(unsigned int)a8
{
  v14 = a3;
  v15 = [(PTCinematographyStream *)self previousFrame];
  v16 = [v15 detectionForTrackIdentifier:{objc_msgSend(v14, "trackIdentifier")}];

  [v16 focusDistance];
  v27 = v17;
  v18 = [v14 detectionType];
  [v14 rect];
  if (v16)
  {
    v23 = &v27;
  }

  else
  {
    v23 = 0;
  }

  v24 = PTDisparityInNormalizedRectFromLockedPixelBufferInfoWithPrior(v18, a4, a5, a6, a7, a8, v23, v19, v20, v21, v22);
  v25 = _PTLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyStream _focusDistanceForDetection:v14 lockedDisparityBufferAddress:? width:? height:? bytesPerRow:? formatType:?];
  }

  return v24;
}

- (id)_inFocusRegionForFocusBlurMap:(id)a3
{
  if (self->_autoFocusInFocusRegionSelect == 1)
  {
    [a3 largestFocusRegion];
  }

  else
  {
    [a3 inFocusRegion];
  }
  v3 = ;

  return v3;
}

- (float)_focusDistanceForAutoFocusDetection:(id)a3 lockedDisparityBufferAddress:(void *)a4 width:(unint64_t)a5 height:(unint64_t)a6 bytesPerRow:(unint64_t)a7 formatType:(unsigned int)a8 focusBlurMap:(id)a9
{
  v9 = *&a8;
  v15 = a3;
  v16 = a9;
  if (v16)
  {
    v17 = [(PTCinematographyStream *)self _inFocusRegionForFocusBlurMap:v16];
    if (self->_autoFocusUseMask)
    {
      [v16 inputValidNormalizedRect];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = [PTScanlineMask scanlineMaskWithFocusBlurMap:v16 region:v17];
      [v16 validNormalizedRectFromRegion:v17];
      [v15 setRect:?];
    }

    else
    {
      [v16 validNormalizedRectFromRegion:v17];
      v19 = v33;
      v21 = v34;
      v23 = v35;
      v25 = v36;
      [v15 setRect:?];
      v26 = 0;
    }

    v32 = _PTDisparityInNormalizedRectFromLockedPixelBufferInfoWithMask([v15 detectionType], a4, a5, a6, a7, v9, 0, v26, v19, v21, v23, v25);
  }

  else
  {
    v27 = [v15 detectionType];
    [v15 rect];
    v32 = PTDisparityInNormalizedRectFromLockedPixelBufferInfo(v27, a4, a5, a6, a7, v9, v28, v29, v30, v31);
  }

  v37 = _PTLogSystem();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyStream _focusDistanceForAutoFocusDetection:v15 lockedDisparityBufferAddress:? width:? height:? bytesPerRow:? formatType:? focusBlurMap:?];
  }

  return v32;
}

- (void)_setDisparityOfDetections:(id)a3 disparityBuffer:(__CVBuffer *)a4 focusBlurMap:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v20 = a5;
  CVPixelBufferLockBaseAddress(a4, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a4);
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
  pixelBuffer = a4;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v8;
  v14 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if ([v18 isAutoFocusDetection])
        {
          [(PTCinematographyStream *)self _focusDistanceForAutoFocusDetection:v18 lockedDisparityBufferAddress:BaseAddress width:Width height:Height bytesPerRow:BytesPerRow formatType:PixelFormatType focusBlurMap:v20, pixelBuffer];
        }

        else
        {
          [(PTCinematographyStream *)self _focusDistanceForDetection:v18 lockedDisparityBufferAddress:BaseAddress width:Width height:Height bytesPerRow:BytesPerRow formatType:PixelFormatType];
        }

        [v18 setFocusDistance:?];
        [(PTCinematographyStream *)self _logUnusualDetection:v18 info:@"reading disparity buffer"];
      }

      v15 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
}

- (float)smoothFocusDistance:(float)a3 trackIdentifier:(int64_t)a4 sampleCount:(unint64_t)a5
{
  v8 = [(PTCinematographyStream *)self previousFrame];
  v9 = [v8 detectionForTrackIdentifier:a4];

  if (v9)
  {
    [v9 focusDistance];
    a3 = v10 + ((2.0 / (a5 + 1.0)) * (a3 - v10));
  }

  return a3;
}

- (void)_logFocusChangeForFrame:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PTCinematographyStream *)self previousFrame];
  if (!v7 || (v8 = v7, [v6 focusDetection], v9 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v9, "trackIdentifier"), -[PTCinematographyStream previousFrame](self, "previousFrame"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "focusDetection"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "trackIdentifier"), v10, v4, v9, v8, v3 != v11))
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(PTCinematographyStream *)self previousFrame];
      if (v13)
      {
        v14 = MEMORY[0x277CCACA8];
        self = [(PTCinematographyStream *)self previousFrame];
        v3 = [(PTCinematographyStream *)self focusDetection];
        v4 = [v3 focusIdentifier];
        v15 = [v14 stringWithFormat:@" from %@", v4];
      }

      else
      {
        v15 = &stru_2837D16E8;
      }

      v16 = [v6 focusDetection];
      v17 = [v16 focusIdentifier];
      *buf = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&dword_2243FB000, v12, OS_LOG_TYPE_INFO, "cinematography focus change%@ to %@", buf, 0x16u);

      if (v13)
      {
      }
    }
  }
}

- (void)_logUserTap:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 detection];
  v5 = [v4 isFixedFocusDetection];

  if (v5)
  {
    v6 = [v3 detection];
    [v6 rect];
    MidX = CGRectGetMidX(v24);

    v8 = [v3 detection];
    [v8 rect];
    MidY = CGRectGetMidY(v25);

    v10 = [v3 detection];
    [v10 focusDistance];
    v12 = v11;

    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218496;
      v18 = MidX;
      v19 = 2048;
      v20 = MidY;
      v21 = 2048;
      v22 = v12;
      _os_log_impl(&dword_2243FB000, v13, OS_LOG_TYPE_DEFAULT, "user tap at (%g,%g) focus distance %g", &v17, 0x20u);
    }
  }

  else
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "trackIdentifier")}];
      v15 = [v3 isStrong];
      v16 = &stru_2837D16E8;
      if (v15)
      {
        v16 = @" (strong)";
      }

      v17 = 138412546;
      v18 = *&v14;
      v19 = 2112;
      v20 = *&v16;
      _os_log_impl(&dword_2243FB000, v13, OS_LOG_TYPE_DEFAULT, "user tap on track %@%@", &v17, 0x16u);
    }
  }
}

- (BOOL)_logUnusualDisparity:(float)a3 kind:(id)a4 info:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = a3 > 100.0 || a3 < 0.0;
  if (v9)
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *&v11 = a3;
      v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
      v14 = 138412802;
      v15 = v12;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_2243FB000, v10, OS_LOG_TYPE_INFO, "unusual %@ disparity %@ (%@)", &v14, 0x20u);
    }
  }

  return v9;
}

- (BOOL)_logUnusualDetection:(id)a3 info:(id)a4
{
  v6 = a4;
  [a3 focusDistance];
  LOBYTE(a3) = [(PTCinematographyStream *)self _logUnusualDisparity:@"detection" kind:v6 info:?];

  return a3;
}

- (PTCinematographyStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDetectorDidRunNextExpectedTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_detectorDidRunNextExpectedTime.epoch = a3->var3;
  *&self->_detectorDidRunNextExpectedTime.value = v3;
}

- (void)initWithOptions:(void *)a1 .cold.1(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*a1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithOptions:(void *)a1 .cold.2(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*a1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithOptions:(void *)a1 .cold.3(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*a1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)processColorBuffer:disparityBuffer:metadataDictionary:presentationTime:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)getGlobalMetadata:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_copyUserFocusDetectionFromDetections:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v0 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_copyUserFocusDetectionFromDetections:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v0 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_restoreInternalState:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_4();
  v1 = v0;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_restoreInternalState:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_isUserTap:inFrameDetections:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_2243FB000, v1, OS_LOG_TYPE_DEBUG, "user tap %@ abandoned since detection %@ is marked as excluded as cinematic choice", v2, 0x16u);
}

- (void)_detectorDidRunFromFTTrackingResult:time:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_isInvalidFTTrack:(void *)a1 .cold.1(void *a1)
{
  [a1 identifier];
  [a1 objectKind];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Eu);
}

- (void)_autoFocusBlurMapFromMetadata:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_autoFocusRectFromMetadata:(double *)a1 .cold.1(double *a1)
{
  v1 = [MEMORY[0x277CCAE60] valueWithRect:{*a1, a1[1], a1[2], a1[3]}];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_updateDetections:ifMissingISPDetectionsFromTrackingResult:time:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_mutableDetectionsFromFTTrackingResult:(void *)a3 namedSignalsPerTrack:(NSObject *)a4 time:.cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a2, "trackIdentifier")}];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_2243FB000, a4, OS_LOG_TYPE_ERROR, "error: FusionTracker: track with negative identifier (%@)", a1, 0xCu);
}

- (void)_focusDistanceForDetection:(void *)a1 lockedDisparityBufferAddress:width:height:bytesPerRow:formatType:.cold.1(void *a1)
{
  [a1 trackIdentifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_focusDistanceForAutoFocusDetection:(void *)a1 lockedDisparityBufferAddress:width:height:bytesPerRow:formatType:focusBlurMap:.cold.1(void *a1)
{
  [a1 trackIdentifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end