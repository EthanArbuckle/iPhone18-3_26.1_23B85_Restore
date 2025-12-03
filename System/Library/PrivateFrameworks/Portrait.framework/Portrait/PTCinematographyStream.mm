@interface PTCinematographyStream
- (BOOL)_detectorDidRunFromFTTrackingResult:(id)result time:(id *)time;
- (BOOL)_hasFusionTrackerMetadata:(id)metadata;
- (BOOL)_isFailedTapToTrackFTTapResponse:(id)response;
- (BOOL)_isFixedFocusFTTapRequest:(id)request;
- (BOOL)_isFixedFocusFTTapRequestMetadata:(id)metadata;
- (BOOL)_isInvalidFTTrack:(id)track;
- (BOOL)_isSuccessfulTapToTrackFTTapResponse:(id)response;
- (BOOL)_isTapToTrackFTTapRequest:(id)request;
- (BOOL)_isUserTap:(id)tap inFrameDetections:(id)detections;
- (BOOL)_isValidNormalizedPoint:(CGPoint)point;
- (BOOL)_logUnusualDetection:(id)detection info:(id)info;
- (BOOL)_logUnusualDisparity:(float)disparity kind:(id)kind info:(id)info;
- (BOOL)_useSyntheticDDR;
- (BOOL)_userTapEndsForBaseFocusDetection:(id)detection;
- (BOOL)_userTapEndsForChangedFocusWithDisparityBuffer:(__CVBuffer *)buffer;
- (BOOL)_userTapLockEndsAtTime:(id *)time;
- (BOOL)getGlobalMetadata:(id)metadata;
- (CGRect)_autoFocusRectFromMetadata:(id)metadata;
- (CGRect)_defaultFixedFocusRectForPoint:(CGPoint)point disparityBuffer:(__CVBuffer *)buffer;
- (CGRect)_fixedFocusRectForPoint:(CGPoint)point disparityBuffer:(__CVBuffer *)buffer;
- (CGRect)_validSensorRectFromMetadata:(id)metadata;
- (CGSize)_sensorSizeFromMetadata:(id)metadata;
- (NSString)modelVersionString;
- (PTCinematographyStream)initWithOptions:(id)options;
- (PTCinematographyStreamDelegate)delegate;
- (float)_defaultAperture;
- (float)_floatValueForAssignmentString:(id)string;
- (float)_focusDistanceForAutoFocusDetection:(id)detection lockedDisparityBufferAddress:(void *)address width:(unint64_t)width height:(unint64_t)height bytesPerRow:(unint64_t)row formatType:(unsigned int)type focusBlurMap:(id)map;
- (float)_focusDistanceForDetection:(id)detection lockedDisparityBufferAddress:(void *)address width:(unint64_t)width height:(unint64_t)height bytesPerRow:(unint64_t)row formatType:(unsigned int)type;
- (float)_minimumUserTapSeconds;
- (float)_userDefaultFixedFocusDisparity;
- (float)smoothFocusDistance:(float)distance trackIdentifier:(int64_t)identifier sampleCount:(unint64_t)count;
- (id)_ANODPoseFromFTTrackMetadata:(id)metadata;
- (id)_autoFocusBlurMapFromMetadata:(id)metadata;
- (id)_autoFocusDetectionWithTime:(id *)time rect:(CGRect)rect;
- (id)_chooseClosestObjectDetection:(id)detection;
- (id)_chooseFocusDetection:(id)detection;
- (id)_chooseLargestAreaDetection:(id)detection;
- (id)_copyInternalState;
- (id)_copyUserFocusDetectionFromDetections:(id)detections;
- (id)_detectionForFixedFocusAtNormalizedPoint:(CGPoint)point disparityBuffer:(__CVBuffer *)buffer;
- (id)_detectionForFixedFocusDistance:(float)distance rect:(CGRect)rect;
- (id)_detectionsFromFTTrackingResult:(id)result autoFocusRect:(CGRect)rect focusBlurMap:(id)map namedSignalsPerTrack:(id)track time:(id *)time disparityBuffer:(__CVBuffer *)buffer;
- (id)_disparityWeightingValue;
- (id)_frameDetectionsFromFusionTrackerMetadata:(id)metadata time:(id *)time disparityBuffer:(__CVBuffer *)buffer;
- (id)_frameDetectionsFromMetadata:(id)metadata time:(id *)time disparityBuffer:(__CVBuffer *)buffer;
- (id)_frameFromDetections:(id)detections userAperture:(float)aperture snapshotPolicy:(unint64_t)policy disparityPixelBuffer:(__CVBuffer *)buffer;
- (id)_inFocusRegionForFocusBlurMap:(id)map;
- (id)_mutableDetectionsFromFTTrackingResult:(id)result namedSignalsPerTrack:(id)track time:(id *)time;
- (id)_namedSignals:(id)signals addingANODPoseFromFTTrackMetadata:(id)metadata;
- (id)_nextSnapshotForPolicy:(unint64_t)policy;
- (id)_stringValueForAssignmentString:(id)string;
- (id)_trackingResultFromFusionTrackerMetadata:(id)metadata;
- (id)_userDefaultNetworkVersion;
- (id)_userTapFromFTTapResponse:(id)response frameDetections:(id)detections disparityBuffer:(__CVBuffer *)buffer;
- (id)_userTapFromMetadata:(id)metadata frameDetections:(id)detections disparityBuffer:(__CVBuffer *)buffer;
- (id)processColorBuffer:(__CVBuffer *)buffer disparityBuffer:(__CVBuffer *)disparityBuffer metadataDictionary:(id)dictionary presentationTime:(id *)time;
- (unint64_t)_detectionTypeForFTObjectKind:(unint64_t)kind;
- (unint64_t)_userDefaultFocusStrategy;
- (void)_copyPreviousISPDetections:(id)detections toDetections:(id)toDetections time:(id *)time;
- (void)_getFocusStrategyIfNeeded;
- (void)_logFocusChangeForFrame:(id)frame;
- (void)_logUserTap:(id)tap;
- (void)_reset;
- (void)_restoreInternalState:(id)state;
- (void)_setDisparityOfDetections:(id)detections disparityBuffer:(__CVBuffer *)buffer focusBlurMap:(id)map;
- (void)_updateDetectionModelFromMetadata:(id)metadata;
- (void)_updateDetections:(id)detections ifMissingISPDetectionsFromTrackingResult:(id)result time:(id *)time;
- (void)_updateFocusBlurMapModeFromMetadata:(id)metadata;
- (void)endOfStream;
- (void)setDetectorDidRunNextExpectedTime:(id *)time;
@end

@implementation PTCinematographyStream

- (PTCinematographyStream)initWithOptions:(id)options
{
  optionsCopy = options;
  v20.receiver = self;
  v20.super_class = PTCinematographyStream;
  v5 = [(PTCinematographyStream *)&v20 init];
  if (!v5)
  {
LABEL_15:
    v17 = v5;
    goto LABEL_19;
  }

  if (optionsCopy)
  {
    v6 = [optionsCopy copy];
  }

  else
  {
    v6 = objc_opt_new();
  }

  options = v5->_options;
  v5->_options = v6;

  version = [(PTCinematographyStreamOptions *)v5->_options version];
  if (!version)
  {
    version = [objc_opt_class() latestVersion];
  }

  v5->_activeVersion = version;
  if ([objc_opt_class() isSupportedVersion:v5->_activeVersion])
  {
    v9 = PTDefaultsGetDictionary();
    v10 = [v9 objectForKeyedSubscript:@"CinematographySnapshotEveryFrame"];

    if (v10)
    {
      [(PTCinematographyStreamOptions *)v5->_options _setSnapshotPolicy:1];
    }

    cinematographyParameters = [optionsCopy cinematographyParameters];
    v12 = [cinematographyParameters objectForKeyedSubscript:@"detectionModel"];
    v5->_detectionModel = [v12 unsignedIntegerValue];

    cinematographyParameters2 = [optionsCopy cinematographyParameters];
    v14 = [cinematographyParameters2 objectForKeyedSubscript:@"focusBlurMapMode"];
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

- (void)_updateDetectionModelFromMetadata:(id)metadata
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [metadata objectForKeyedSubscript:@"CinematographyParameters"];
  v5 = [v4 objectForKeyedSubscript:@"detectionModel"];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  if (unsignedIntegerValue)
  {
    v7 = unsignedIntegerValue;
    if (self->_detectionModel != unsignedIntegerValue)
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

- (void)_updateFocusBlurMapModeFromMetadata:(id)metadata
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [metadata objectForKeyedSubscript:@"CinematographyParameters"];
  v5 = [v4 objectForKeyedSubscript:@"focusBlurMapMode"];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  if (unsignedIntegerValue)
  {
    v7 = unsignedIntegerValue;
    if (self->_focusBlurMapMode != unsignedIntegerValue)
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

- (id)processColorBuffer:(__CVBuffer *)buffer disparityBuffer:(__CVBuffer *)disparityBuffer metadataDictionary:(id)dictionary presentationTime:(id *)time
{
  dictionaryCopy = dictionary;
  [(PTCinematographyStream *)self _updateDetectionModelFromMetadata:dictionaryCopy];
  [(PTCinematographyStream *)self _updateFocusBlurMapModeFromMetadata:dictionaryCopy];
  v20 = *time;
  v10 = [(PTCinematographyStream *)self _frameDetectionsFromMetadata:dictionaryCopy time:&v20 disparityBuffer:disparityBuffer];
  v11 = [(PTCinematographyStream *)self _userTapFromMetadata:dictionaryCopy frameDetections:v10 disparityBuffer:disparityBuffer];

  if (v11)
  {
    [(PTCinematographyStream *)self setActiveUserTap:v11];
    [(PTCinematographyStream *)self _logUserTap:v11];
  }

  [(PTCinematographyStream *)self userAperture];
  v13 = v12;
  options = [(PTCinematographyStream *)self options];
  _snapshotPolicy = [options _snapshotPolicy];
  LODWORD(v16) = v13;
  v17 = [(PTCinematographyStream *)self _frameFromDetections:v10 userAperture:_snapshotPolicy snapshotPolicy:disparityBuffer disparityPixelBuffer:v16];

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
  network = [(PTCinematographyStream *)self network];
  versionString = [network versionString];

  return versionString;
}

- (BOOL)getGlobalMetadata:(id)metadata
{
  metadataCopy = metadata;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = metadataCopy;
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

- (id)_frameFromDetections:(id)detections userAperture:(float)aperture snapshotPolicy:(unint64_t)policy disparityPixelBuffer:(__CVBuffer *)buffer
{
  v64[1] = *MEMORY[0x277D85DE8];
  detectionsCopy = detections;
  v11 = detectionsCopy;
  v62 = 0uLL;
  v63 = 0;
  if (detectionsCopy)
  {
    [detectionsCopy presentationTime];
  }

  v59 = [(PTCinematographyStream *)self _nextSnapshotForPolicy:policy];
  v12 = [(PTCinematographyStream *)self _chooseFocusDetection:v11];
  activeUserTap = [(PTCinematographyStream *)self activeUserTap];

  if (activeUserTap)
  {
    activeUserTap2 = [(PTCinematographyStream *)self activeUserTap];
    detection = [activeUserTap2 detection];
    if ([detection isFixedFocusDetection])
    {
    }

    else
    {
      activeUserTap3 = [(PTCinematographyStream *)self activeUserTap];
      v17 = [(PTCinematographyStream *)self _isUserTap:activeUserTap3 inFrameDetections:v11];

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
        activeUserTap = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    activeUserTap4 = [(PTCinematographyStream *)self activeUserTap];
    if ([activeUserTap4 isStrong])
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

      if ([(PTCinematographyStream *)self _userTapEndsForChangedFocusWithDisparityBuffer:buffer])
      {
        v20 = _PTLogSystem();
        activeUserTap = 1;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2243FB000, v20, OS_LOG_TYPE_INFO, "user focus: fixed focus depth changed after lock expired", buf, 2u);
        }

        goto LABEL_17;
      }
    }

LABEL_23:
    activeUserTap5 = [(PTCinematographyStream *)self activeUserTap];
    detection2 = [activeUserTap5 detection];
    isFixedFocusDetection = [detection2 isFixedFocusDetection];

    if (isFixedFocusDetection)
    {
      activeUserTap6 = [(PTCinematographyStream *)self activeUserTap];
      detection3 = [activeUserTap6 detection];
      v30 = [detection3 copy];

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
    activeUserTap = 0;
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
  detections = [v11 detections];
  v37 = [detections copy];
  [(PTCinematographyFrame *)v35 setAllDetections:v37];

  [(PTCinematographyFrame *)v35 setFocusDetection:v22];
  *&v38 = aperture;
  [(PTCinematographyFrame *)v35 setAperture:v38];
  LODWORD(v39) = v33;
  [(PTCinematographyFrame *)v35 setFocusDistance:v39];
  LODWORD(v40) = v24;
  [(PTCinematographyFrame *)v35 setRawFocusDistance:v40];
  trackNumber = [v22 trackNumber];
  [(PTCinematographyFrame *)v35 setFocusTrackNumber:trackNumber];

  if (v12)
  {
    v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "trackIdentifier", v12)}];
    [(PTCinematographyFrame *)v35 setBaseFocusTrackNumber:v42];
  }

  else
  {
    [(PTCinematographyFrame *)v35 setBaseFocusTrackNumber:0, 0];
  }

  policyCopy = policy;
  activeUserTap7 = [(PTCinematographyStream *)self activeUserTap];
  if (activeUserTap7)
  {
    v45 = MEMORY[0x277CCABB0];
    activeUserTap8 = [(PTCinematographyStream *)self activeUserTap];
    v47 = [v45 numberWithInteger:{objc_msgSend(activeUserTap8, "trackIdentifier")}];
    [(PTCinematographyFrame *)v35 setUserFocusTrackNumber:v47];
  }

  else
  {
    [(PTCinematographyFrame *)v35 setUserFocusTrackNumber:0];
  }

  detectorDidRun = [v11 detectorDidRun];
  [(PTCinematographyFrame *)v35 _setDetectorDidRun:detectorDidRun];

  activeUserTap9 = [(PTCinematographyStream *)self activeUserTap];
  -[PTCinematographyFrame setUserFocusStrong:](v35, "setUserFocusStrong:", [activeUserTap9 isStrong]);

  activeUserTap10 = [(PTCinematographyStream *)self activeUserTap];
  -[PTCinematographyFrame setUserFocusGroup:](v35, "setUserFocusGroup:", [activeUserTap10 isGroupTap]);

  [(PTCinematographyFrame *)v35 setUserFocusEnd:activeUserTap];
  v51 = MEMORY[0x277CCABB0];
  frameIndex = [(PTCinematographyStream *)self frameIndex];
  [(PTCinematographyStream *)self setFrameIndex:frameIndex + 1];
  v53 = [v51 numberWithUnsignedInteger:frameIndex];
  [(PTCinematographyFrame *)v35 _setFrameNumber:v53];

  [(PTCinematographyFrame *)v35 _setSnapshot:v59];
  [(PTCinematographyFrame *)v35 _setSnapshotPolicy:policyCopy];
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

- (id)_copyUserFocusDetectionFromDetections:(id)detections
{
  detectionsCopy = detections;
  activeUserTap = [(PTCinematographyStream *)self activeUserTap];
  isGroupTap = [activeUserTap isGroupTap];

  activeUserTap2 = [(PTCinematographyStream *)self activeUserTap];
  v8 = activeUserTap2;
  if (isGroupTap)
  {
    groupIdentifier = [activeUserTap2 groupIdentifier];

    v10 = [detectionsCopy bestDetectionForGroupIdentifier:groupIdentifier options:1];

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
    trackIdentifier = [activeUserTap2 trackIdentifier];

    v10 = [detectionsCopy detectionForTrackIdentifier:trackIdentifier];

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

  previewFocusPuller = [(PTCinematographyStream *)self previewFocusPuller];
  _asCinematographyDictionary = [previewFocusPuller _asCinematographyDictionary];
  [v3 setObject:_asCinematographyDictionary forKeyedSubscript:@"focus_puller"];

  network = [(PTCinematographyStream *)self network];
  _asCinematographyDictionary2 = [network _asCinematographyDictionary];
  [v3 setObject:_asCinematographyDictionary2 forKeyedSubscript:@"_network_state"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PTCinematographyStream frameIndex](self, "frameIndex")}];
  [v3 setObject:v11 forKeyedSubscript:@"_frame_index"];

  previousFrame = [(PTCinematographyStream *)self previousFrame];
  _asCinematographyDictionary3 = [previousFrame _asCinematographyDictionary];
  v14 = [_asCinematographyDictionary3 mutableCopy];

  [v14 removeObjectForKey:@"_snapshot"];
  [v3 setObject:v14 forKeyedSubscript:@"_previous_frame_serialized"];
  v15 = [v3 copy];

  return v15;
}

- (void)_restoreInternalState:(id)state
{
  v20 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = stateCopy;
    v6 = [v5 objectForKeyedSubscript:@"_version"];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    if ([objc_opt_class() isSupportedVersion:unsignedIntegerValue])
    {
      self->_activeVersion = unsignedIntegerValue;
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
            versionString = [v15 versionString];
            v18 = 138412290;
            v19 = versionString;
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

- (id)_nextSnapshotForPolicy:(unint64_t)policy
{
  previousRecordingState = [(PTCinematographyStream *)self previousRecordingState];
  if (previousRecordingState == 2)
  {
    if ((policy | 2) != 2)
    {
      goto LABEL_8;
    }

LABEL_6:
    _copyInternalState = 0;
    goto LABEL_9;
  }

  if (previousRecordingState != 1)
  {
    if (policy != 2)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (policy == 2)
  {
    goto LABEL_6;
  }

  [(PTCinematographyStream *)self setPreviousRecordingState:2];
LABEL_8:
  _copyInternalState = [(PTCinematographyStream *)self _copyInternalState];
LABEL_9:

  return _copyInternalState;
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

  _userDefaultNetworkVersion = [(PTCinematographyStream *)self _userDefaultNetworkVersion];
  if (!_userDefaultNetworkVersion)
  {
    _userDefaultNetworkVersion = [PTCinematographyNetwork defaultVersionStringForDetectionModel:self->_detectionModel];
  }

  v9 = [[PTCinematographyNetwork alloc] initWithVersionString:_userDefaultNetworkVersion];
  network = self->_network;
  self->_network = v9;

  self->_frameIndex = 0;
  previousFrame = self->_previousFrame;
  self->_previousFrame = 0;

  [(PTCinematographyStream *)self setPreviousRecordingState:0];
  v12 = _PTLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    network = [(PTCinematographyStream *)self network];
    versionString = [network versionString];
    v17 = 138412290;
    v18 = versionString;
    _os_log_impl(&dword_2243FB000, v12, OS_LOG_TYPE_INFO, "Cinematography network version %@", &v17, 0xCu);
  }

  v15 = _PTLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    _asCinematographyDictionary = [(PTCinematographyFocusPuller *)self->_previewFocusPuller _asCinematographyDictionary];
    v17 = 138412290;
    v18 = _asCinematographyDictionary;
    _os_log_impl(&dword_2243FB000, v15, OS_LOG_TYPE_INFO, "focus puller: %@", &v17, 0xCu);
  }
}

- (id)_chooseClosestObjectDetection:(id)detection
{
  v20 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [detectionCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(detectionCopy);
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

      v5 = [detectionCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_chooseLargestAreaDetection:(id)detection
{
  v23 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [detectionCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(detectionCopy);
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

      v5 = [detectionCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_detectionForFixedFocusDistance:(float)distance rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = [PTCinematographyDetection alloc];
  v15 = *MEMORY[0x277CC0888];
  v16 = *(MEMORY[0x277CC0888] + 16);
  *&v11 = distance;
  v12 = [(PTCinematographyDetection *)v10 initWithTime:&v15 rect:x focusDistance:y, width, height, v11];
  [(PTCinematographyDetection *)v12 setDetectionType:101];
  trackAllocator = [(PTCinematographyStream *)self trackAllocator];
  -[PTCinematographyDetection setTrackIdentifier:](v12, "setTrackIdentifier:", [trackAllocator nextTrackIdentifier]);

  return v12;
}

- (float)_floatValueForAssignmentString:(id)string
{
  v3 = [string componentsSeparatedByString:@"="];
  v4 = 0.0;
  if ([v3 count] >= 2)
  {
    v5 = [v3 objectAtIndexedSubscript:1];
    [v5 floatValue];
    v4 = v6;
  }

  return v4;
}

- (id)_stringValueForAssignmentString:(id)string
{
  v3 = [string componentsSeparatedByString:@"="];
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
            selfCopy2 = self;
            v8 = 2;
          }

          else
          {
            if (![v4 isEqualToString:@"largest"])
            {
              goto LABEL_14;
            }

            selfCopy2 = self;
            v8 = 3;
          }

          [(PTCinematographyStream *)selfCopy2 setInternalDefaultFocusStrategy:v8];
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

- (id)_chooseFocusDetection:(id)detection
{
  detectionCopy = detection;
  _userDefaultFocusStrategy = [(PTCinematographyStream *)self _userDefaultFocusStrategy];
  v6 = 0;
  if (_userDefaultFocusStrategy > 1)
  {
    if (_userDefaultFocusStrategy == 2)
    {
      detections = [detectionCopy detections];
      v8 = [(PTCinematographyStream *)self _chooseClosestObjectDetection:detections];
    }

    else
    {
      if (_userDefaultFocusStrategy != 3)
      {
        goto LABEL_11;
      }

      detections = [detectionCopy detections];
      v8 = [(PTCinematographyStream *)self _chooseLargestAreaDetection:detections];
    }

    v6 = v8;
  }

  else if (_userDefaultFocusStrategy)
  {
    if (_userDefaultFocusStrategy == 1)
    {
      [(PTCinematographyStream *)self _userDefaultFixedFocusDisparity];
      v6 = [PTCinematographyStream _detectionForFixedFocusDistance:"_detectionForFixedFocusDistance:rect:" rect:?];
    }
  }

  else
  {
    network = [(PTCinematographyStream *)self network];
    v6 = [network stepWithFrameDetections:detectionCopy];
  }

LABEL_11:
  baseFocusTrackNumberOverride = [detectionCopy baseFocusTrackNumberOverride];

  if (baseFocusTrackNumberOverride)
  {
    baseFocusTrackNumberOverride2 = [detectionCopy baseFocusTrackNumberOverride];
    integerValue = [baseFocusTrackNumberOverride2 integerValue];

    v13 = [detectionCopy detectionForTrackIdentifier:integerValue];

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

- (BOOL)_userTapLockEndsAtTime:(id *)time
{
  activeUserTap = [(PTCinematographyStream *)self activeUserTap];
  v6 = activeUserTap;
  if (activeUserTap)
  {
    [activeUserTap time];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  v11 = *time;
  CMTimeSubtract(&time, &v11, &rhs);
  Seconds = CMTimeGetSeconds(&time);
  [(PTCinematographyStream *)self _minimumUserTapSeconds];
  v9 = Seconds >= v8;

  return v9;
}

- (BOOL)_userTapEndsForChangedFocusWithDisparityBuffer:(__CVBuffer *)buffer
{
  v33 = *MEMORY[0x277D85DE8];
  if (_userTapEndsForChangedFocusWithDisparityBuffer__onceToken != -1)
  {
    [PTCinematographyStream _userTapEndsForChangedFocusWithDisparityBuffer:];
    if (buffer)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!buffer)
  {
    return 0;
  }

LABEL_3:
  if (0xCCCCCCCCCCCCCCCDLL * [(PTCinematographyStream *)self frameIndex]> 0x3333333333333333)
  {
    return 0;
  }

  activeUserTap = [(PTCinematographyStream *)self activeUserTap];
  detection = [activeUserTap detection];
  isFixedFocusDetection = [detection isFixedFocusDetection];

  if (!isFixedFocusDetection)
  {
    return 0;
  }

  activeUserTap2 = [(PTCinematographyStream *)self activeUserTap];
  detection2 = [activeUserTap2 detection];
  [detection2 rect];
  v14 = PTDisparityInNormalizedRectFromPixelBuffer(101, buffer, v10, v11, v12, v13);

  activeUserTap3 = [(PTCinematographyStream *)self activeUserTap];
  detection3 = [activeUserTap3 detection];
  [detection3 focusDistance];
  v18 = fabsf((v17 / fmaxf(v14, 0.0001)) + -1.0);

  if (v18 <= *&_userTapEndsForChangedFocusWithDisparityBuffer__sSoftFixedFocusTerminateThreshold)
  {
    return 0;
  }

  v19 = _PTLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    activeUserTap4 = [(PTCinematographyStream *)self activeUserTap];
    activeUserTap5 = [(PTCinematographyStream *)self activeUserTap];
    detection4 = [activeUserTap5 detection];
    [detection4 focusDistance];
    v25 = 138413058;
    v26 = activeUserTap4;
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

- (BOOL)_userTapEndsForBaseFocusDetection:(id)detection
{
  detectionCopy = detection;
  trackNumber = [detectionCopy trackNumber];
  groupIdentifier = [detectionCopy groupIdentifier];

  if (PTGroupIDIsValid(groupIdentifier))
  {
    previousFrame = [(PTCinematographyStream *)self previousFrame];
    previousFrame2 = [(PTCinematographyStream *)self previousFrame];
    baseFocusTrackNumber = [previousFrame2 baseFocusTrackNumber];
    v10 = [previousFrame detectionForTrackNumber:baseFocusTrackNumber];

    if (groupIdentifier == [v10 groupIdentifier])
    {

      goto LABEL_6;
    }

    activeUserTap = [(PTCinematographyStream *)self activeUserTap];
    groupIdentifier2 = [activeUserTap groupIdentifier];

    if (groupIdentifier == groupIdentifier2)
    {
      goto LABEL_6;
    }
  }

  previousFrame3 = [(PTCinematographyStream *)self previousFrame];
  baseFocusTrackNumber2 = [previousFrame3 baseFocusTrackNumber];
  v15 = [trackNumber isEqualToNumber:baseFocusTrackNumber2];

  if ((v15 & 1) == 0)
  {
    activeUserTap2 = [(PTCinematographyStream *)self activeUserTap];
    trackNumber2 = [activeUserTap2 trackNumber];
    v19 = [trackNumber isEqualToNumber:trackNumber2];

    v16 = v19 ^ 1;
    goto LABEL_8;
  }

LABEL_6:
  v16 = 0;
LABEL_8:

  return v16;
}

- (id)_userTapFromMetadata:(id)metadata frameDetections:(id)detections disparityBuffer:(__CVBuffer *)buffer
{
  metadataCopy = metadata;
  detectionsCopy = detections;
  if ([(PTCinematographyStream *)self _hasFusionTrackerMetadata:metadataCopy])
  {
    v10 = [(PTCinematographyStream *)self _trackingResultFromFusionTrackerMetadata:metadataCopy];
    tapResponse = [v10 tapResponse];
    v12 = [(PTCinematographyStream *)self _userTapFromFTTapResponse:tapResponse frameDetections:detectionsCopy disparityBuffer:buffer];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_isValidNormalizedPoint:(CGPoint)point
{
  v3 = point.x >= 0.0;
  if (point.x > 1.0)
  {
    v3 = 0;
  }

  v4 = point.y >= 0.0;
  if (point.y > 1.0)
  {
    v4 = 0;
  }

  return v3 && v4;
}

- (BOOL)_isFixedFocusFTTapRequestMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [metadataCopy objectForKeyedSubscript:PTCinematographyTapRequestIsFixedPlaneFocus];
  if ([v4 BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    v6 = [metadataCopy objectForKeyedSubscript:@"isFixedFocus"];
    bOOLValue = [v6 BOOLValue];
  }

  return bOOLValue;
}

- (BOOL)_isFixedFocusFTTapRequest:(id)request
{
  requestCopy = request;
  metadata = [requestCopy metadata];
  if ([(PTCinematographyStream *)self _isFixedFocusFTTapRequestMetadata:metadata])
  {
    [requestCopy tapPoint];
    v6 = [(PTCinematographyStream *)self _isValidNormalizedPoint:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isTapToTrackFTTapRequest:(id)request
{
  requestCopy = request;
  metadata = [requestCopy metadata];
  if ([(PTCinematographyStream *)self _isFixedFocusFTTapRequestMetadata:metadata])
  {
    v6 = 0;
  }

  else
  {
    [requestCopy tapPoint];
    v6 = [(PTCinematographyStream *)self _isValidNormalizedPoint:?];
  }

  return v6;
}

- (BOOL)_isSuccessfulTapToTrackFTTapResponse:(id)response
{
  responseCopy = response;
  if ([responseCopy wasSuccessful])
  {
    request = [responseCopy request];
    v6 = [(PTCinematographyStream *)self _isTapToTrackFTTapRequest:request];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isFailedTapToTrackFTTapResponse:(id)response
{
  responseCopy = response;
  if ([responseCopy wasSuccessful])
  {
    v5 = 0;
  }

  else
  {
    request = [responseCopy request];
    v5 = [(PTCinematographyStream *)self _isTapToTrackFTTapRequest:request];
  }

  return v5;
}

- (CGRect)_fixedFocusRectForPoint:(CGPoint)point disparityBuffer:(__CVBuffer *)buffer
{
  y = point.y;
  x = point.x;
  options = [(PTCinematographyStream *)self options];
  [options fixedFocusNormalizedRectSize];
  v10 = v9;
  v12 = v11;

  v13 = v10 <= 0.0 || v10 > 1.0;
  if (v13 || (v12 > 0.0 ? (v14 = v12 > 1.0) : (v14 = 1), v14))
  {
    [(PTCinematographyStream *)self _defaultFixedFocusRectForPoint:buffer disparityBuffer:x, y];
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

- (CGRect)_defaultFixedFocusRectForPoint:(CGPoint)point disparityBuffer:(__CVBuffer *)buffer
{
  y = point.y;
  x = point.x;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
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

- (id)_detectionForFixedFocusAtNormalizedPoint:(CGPoint)point disparityBuffer:(__CVBuffer *)buffer
{
  y = point.y;
  x = point.x;
  v31 = *MEMORY[0x277D85DE8];
  [PTCinematographyStream _fixedFocusRectForPoint:"_fixedFocusRectForPoint:disparityBuffer:" disparityBuffer:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = PTDisparityInNormalizedRectFromPixelBuffer(101, buffer, v8, v10, v12, v14);
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

- (id)_userTapFromFTTapResponse:(id)response frameDetections:(id)detections disparityBuffer:(__CVBuffer *)buffer
{
  responseCopy = response;
  detectionsCopy = detections;
  if (!responseCopy)
  {
    goto LABEL_8;
  }

  request = [responseCopy request];
  v11 = request;
  if (!request)
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyStream _userTapFromFTTapResponse:frameDetections:disparityBuffer:];
    }

    goto LABEL_7;
  }

  if (([request trackId] & 0x8000000000000000) == 0)
  {
    customDetection = [detectionsCopy detectionForTrackIdentifier:{objc_msgSend(v11, "trackId")}];
    goto LABEL_15;
  }

  if ([(PTCinematographyStream *)self _isSuccessfulTapToTrackFTTapResponse:responseCopy])
  {
    customDetection = [detectionsCopy customDetection];
    goto LABEL_15;
  }

  if (![(PTCinematographyStream *)self _isFixedFocusFTTapRequest:v11]&& ![(PTCinematographyStream *)self _isFailedTapToTrackFTTapResponse:responseCopy])
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
  customDetection = [(PTCinematographyStream *)self _detectionForFixedFocusAtNormalizedPoint:buffer disparityBuffer:?];
LABEL_15:
  v14 = customDetection;

  if (v14)
  {
    request2 = [responseCopy request];
    metadata = [request2 metadata];
    v18 = [metadata objectForKeyedSubscript:PTCinematographyTapRequestIsHardFocus];
    bOOLValue = [v18 BOOLValue];

    v20 = PTGroupIDIsValid([v14 groupIdentifier]);
    v21 = [PTCinematographyUserTap alloc];
    if (detectionsCopy)
    {
      [detectionsCopy presentationTime];
    }

    else
    {
      memset(v23, 0, sizeof(v23));
    }

    v15 = [(PTCinematographyUserTap *)v21 initWithTime:v23 tappedDetection:v14 strong:bOOLValue group:v20];
    goto LABEL_20;
  }

LABEL_9:
  v15 = 0;
LABEL_20:

  return v15;
}

- (BOOL)_isUserTap:(id)tap inFrameDetections:(id)detections
{
  tapCopy = tap;
  detectionsCopy = detections;
  if ([tapCopy isGroupTap])
  {
    v7 = [detectionsCopy bestDetectionForGroupIdentifier:objc_msgSend(tapCopy options:{"groupIdentifier"), 1}];

    v8 = v7 != 0;
  }

  else
  {
    v7 = [detectionsCopy detectionForTrackIdentifier:{objc_msgSend(tapCopy, "trackIdentifier")}];

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

- (id)_frameDetectionsFromMetadata:(id)metadata time:(id *)time disparityBuffer:(__CVBuffer *)buffer
{
  metadataCopy = metadata;
  if (![(PTCinematographyStream *)self _hasFusionTrackerMetadata:metadataCopy])
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyStream _frameDetectionsFromMetadata:time:disparityBuffer:];
    }
  }

  v13 = *&time->var0;
  var3 = time->var3;
  v10 = [(PTCinematographyStream *)self _frameDetectionsFromFusionTrackerMetadata:metadataCopy time:&v13 disparityBuffer:buffer];
  v11 = [metadataCopy objectForKeyedSubscript:@"__BaseFocusTrackNumberOverride"];

  [v10 setBaseFocusTrackNumberOverride:v11];

  return v10;
}

- (BOOL)_hasFusionTrackerMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [metadataCopy objectForKeyedSubscript:@"FTCinematicTrackingResult"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [metadataCopy objectForKeyedSubscript:@"FTTrackingResult"];
    v5 = v6 != 0;
  }

  return v5;
}

- (id)_trackingResultFromFusionTrackerMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [metadataCopy objectForKeyedSubscript:@"FTCinematicTrackingResult"];
  if (!v4)
  {
    v4 = [metadataCopy objectForKeyedSubscript:@"FTTrackingResult"];
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

- (BOOL)_detectorDidRunFromFTTrackingResult:(id)result time:(id *)time
{
  resultCopy = result;
  if ([(PTCinematographyStream *)self _useSyntheticDDR])
  {
    previousFrame = [(PTCinematographyStream *)self previousFrame];

    if (previousFrame)
    {
      memset(&v21, 0, sizeof(v21));
      previousFrame2 = [(PTCinematographyStream *)self previousFrame];
      v9 = previousFrame2;
      if (previousFrame2)
      {
        [previousFrame2 time];
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      lhs = *time;
      CMTimeSubtract(&v21, &lhs, &rhs);

      lhs = v21;
      CMTimeMultiplyByRatio(&rhs, &lhs, 1, 4);
      v21 = rhs;
      memset(&rhs, 0, sizeof(rhs));
      [(PTCinematographyStream *)self detectorDidRunNextExpectedTime];
      time2 = v21;
      CMTimeSubtract(&rhs, &lhs, &time2);
      lhs = *time;
      time2 = rhs;
      if (CMTimeCompare(&lhs, &time2) < 0)
      {
        detectorDidRun = 0;
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
      v21 = *time;
      [(PTCinematographyStream *)self setDetectorDidRunNextExpectedTime:&v21];
    }

    network = [(PTCinematographyStream *)self network];
    [network expectedFPS];
    if (v14 == 0.0)
    {
      v14 = 6.0;
    }

    v15 = v14;

    memset(&v21, 0, sizeof(v21));
    detectorDidRun = 1;
    CMTimeMake(&v21, 1, v15);
    [(PTCinematographyStream *)self detectorDidRunNextExpectedTime];
    lhs = v21;
    CMTimeAdd(&v17, &rhs, &lhs);
    rhs = v17;
    [(PTCinematographyStream *)self setDetectorDidRunNextExpectedTime:&rhs];
    goto LABEL_17;
  }

  detectorDidRun = [resultCopy detectorDidRun];
  previousFrame3 = [(PTCinematographyStream *)self previousFrame];

  if (!previousFrame3 && (detectorDidRun & 1) == 0)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyStream _detectorDidRunFromFTTrackingResult:time:];
    }

    detectorDidRun = 1;
    goto LABEL_19;
  }

LABEL_20:

  return detectorDidRun;
}

- (id)_frameDetectionsFromFusionTrackerMetadata:(id)metadata time:(id *)time disparityBuffer:(__CVBuffer *)buffer
{
  v70 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v9 = [(PTCinematographyStream *)self _trackingResultFromFusionTrackerMetadata:metadataCopy];
  v10 = _PTLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    log = v10;
    bufferCopy = buffer;
    selfCopy = self;
    timeCopy = time;
    v59 = v9;
    v60 = metadataCopy;
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

          metadata = [v32 metadata];
          v36 = [metadata objectForKeyedSubscript:PTCinematographyExcludeAsCinematicChoice];
          bOOLValue = [v36 BOOLValue];
          v38 = @"(excluded)";
          if (!bOOLValue)
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
          identifier = [v32 identifier];
          objectKind = [v32 objectKind];

          v51 = [v48 stringWithFormat:@"T%ld%@(%zd)%@: (%g, %g, %g, %g)", identifier, v34, objectKind, v39, v41, v43, v45, v47];

          [v63 addObject:v51];
        }

        v29 = [obj countByEnumeratingWithState:&v64 objects:buf count:16];
      }

      while (v29);
    }

    v52 = MEMORY[0x277CCACA8];
    tracks = [v27 tracks];
    v54 = [v52 stringWithFormat:@"FTCinematicTrackingResult (%ld) [DDR:%d]: %@", objc_msgSend(tracks, "count"), objc_msgSend(v27, "detectorDidRun"), v63];

    *buf = 138412290;
    *&buf[4] = v54;
    v10 = log;
    _os_log_debug_impl(&dword_2243FB000, log, OS_LOG_TYPE_DEBUG, "FusionTracker: %@", buf, 0xCu);

    v9 = v59;
    metadataCopy = v60;
    self = selfCopy;
    time = timeCopy;
    buffer = bufferCopy;
  }

  v11 = [metadataCopy objectForKeyedSubscript:@"MLSignals"];
  [(PTCinematographyStream *)self _autoFocusRectFromMetadata:metadataCopy];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(PTCinematographyStream *)self _autoFocusBlurMapFromMetadata:metadataCopy];
  v21 = v20;
  if (v20)
  {
    [v20 setAutoFocusRect:{v13, v15, v17, v19}];
  }

  *buf = *&time->var0;
  var3 = time->var3;
  v22 = [(PTCinematographyStream *)self _detectionsFromFTTrackingResult:v9 autoFocusRect:v21 focusBlurMap:v11 namedSignalsPerTrack:buf time:buffer disparityBuffer:v13, v15, v17, v19];
  *buf = *&time->var0;
  var3 = time->var3;
  v23 = [(PTCinematographyStream *)self _detectorDidRunFromFTTrackingResult:v9 time:buf];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:v23];
  *buf = *&time->var0;
  var3 = time->var3;
  v25 = [PTCinematographyFrameDetections frameDetections:v22 detectorDidRun:v24 presentationTime:buf];

  return v25;
}

- (BOOL)_isInvalidFTTrack:(id)track
{
  trackCopy = track;
  [trackCopy box];
  IsEmpty = CGRectIsEmpty(v7);
  if (IsEmpty)
  {
    [trackCopy box];
    v5 = _PTLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyStream _isInvalidFTTrack:trackCopy];
    }
  }

  return IsEmpty;
}

- (CGSize)_sensorSizeFromMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [metadataCopy objectForKeyedSubscript:@"RawSensorWidth"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [metadataCopy objectForKeyedSubscript:@"RawSensorHeight"];

  [v7 doubleValue];
  v9 = v8;

  v10 = v6;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)_validSensorRectFromMetadata:(id)metadata
{
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v10.origin = *MEMORY[0x277CBF3A0];
  v10.size = v3;
  v4 = [metadata objectForKeyedSubscript:@"SensorRawValidBufferRect"];
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

- (id)_autoFocusBlurMapFromMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (!self->_autoFocusUseBlurMap)
  {
    goto LABEL_13;
  }

  if (!self->_focusBlurMapMode)
  {
    goto LABEL_13;
  }

  v6 = [metadataCopy objectForKeyedSubscript:@"FocusMode"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    goto LABEL_13;
  }

  v8 = _PTLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyStream _autoFocusBlurMapFromMetadata:];
  }

  if (unsignedIntegerValue == 1)
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

- (CGRect)_autoFocusRectFromMetadata:(id)metadata
{
  v3 = *(MEMORY[0x277CBF398] + 16);
  v11.origin = *MEMORY[0x277CBF398];
  v11.size = v3;
  v4 = [metadata objectForKeyedSubscript:@"FocusRegion"];
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

- (id)_autoFocusDetectionWithTime:(id *)time rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsEmpty(rect))
  {
    x = 0.0;
    y = 0.0;
    width = 1.0;
    height = 1.0;
  }

  v9 = [PTCinematographyDetection alloc];
  v12 = *&time->var0;
  var3 = time->var3;
  v10 = [(PTCinematographyDetection *)v9 initWithTime:&v12 rect:x focusDistance:y, width, height, 0.0];
  [(PTCinematographyDetection *)v10 setDetectionType:100];
  [(PTCinematographyDetection *)v10 setTrackIdentifier:0x1000000001];

  return v10;
}

- (void)_copyPreviousISPDetections:(id)detections toDetections:(id)toDetections time:(id *)time
{
  v22 = *MEMORY[0x277D85DE8];
  detectionsCopy = detections;
  toDetectionsCopy = toDetections;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [detectionsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(detectionsCopy);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (([v13 detectionType] - 1) <= 0xB)
        {
          v15 = *&time->var0;
          var3 = time->var3;
          v14 = [v13 _detectionByChangingTime:&v15];
          [toDetectionsCopy addObject:v14];
        }
      }

      v10 = [detectionsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)_updateDetections:(id)detections ifMissingISPDetectionsFromTrackingResult:(id)result time:(id *)time
{
  v24 = *MEMORY[0x277D85DE8];
  detectionsCopy = detections;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  tracks = [result tracks];
  v10 = [tracks countByEnumeratingWithState:&v18 objects:&v22 count:16];
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
          objc_enumerationMutation(tracks);
        }

        if ([*(*(&v18 + 1) + 8 * v13) objectKind] != 912559)
        {

          v17 = 1;
          goto LABEL_14;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [tracks countByEnumeratingWithState:&v18 objects:&v22 count:16];
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

    previousFrame = [(PTCinematographyStream *)self previousFrame];
    allDetections = [previousFrame allDetections];
    v22 = *&time->var0;
    var3 = time->var3;
    [(PTCinematographyStream *)self _copyPreviousISPDetections:allDetections toDetections:detectionsCopy time:&v22];

    v17 = 0;
LABEL_14:
    [(PTCinematographyStream *)self setCanCopyISPDetectionsIfMissing:v17];
  }
}

- (id)_detectionsFromFTTrackingResult:(id)result autoFocusRect:(CGRect)rect focusBlurMap:(id)map namedSignalsPerTrack:(id)track time:(id *)time disparityBuffer:(__CVBuffer *)buffer
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v23 = *time;
  mapCopy = map;
  resultCopy = result;
  v19 = [(PTCinematographyStream *)self _mutableDetectionsFromFTTrackingResult:resultCopy namedSignalsPerTrack:track time:&v23];
  v23 = *time;
  height = [(PTCinematographyStream *)self _autoFocusDetectionWithTime:&v23 rect:x, y, width, height];
  [v19 addObject:height];
  [(PTCinematographyStream *)self _setDisparityOfDetections:v19 disparityBuffer:buffer focusBlurMap:mapCopy];

  v23 = *time;
  [(PTCinematographyStream *)self _updateDetections:v19 ifMissingISPDetectionsFromTrackingResult:resultCopy time:&v23];

  v21 = [v19 copy];

  return v21;
}

- (unint64_t)_detectionTypeForFTObjectKind:(unint64_t)kind
{
  result = 1;
  if (kind > 1001)
  {
    if (kind <= 2999)
    {
      if (kind <= 1999)
      {
        if (kind == 1002)
        {
          return result;
        }

        if (kind == 1003)
        {
          return 12;
        }

        return 0;
      }

      if (kind != 2000)
      {
        if (kind == 2001)
        {
          return 9;
        }

        return 0;
      }

      return 4;
    }

    if (kind <= 42000)
    {
      if (kind != 3000)
      {
        if (kind == 3001)
        {
          return 10;
        }

        return 0;
      }

      return 5;
    }

    if (kind == 42001)
    {
      return 11;
    }

    if (kind == 912559)
    {
      return 102;
    }

    return 0;
  }

  if (kind <= 3)
  {
    if (kind == 1)
    {
      return result;
    }

    if (kind == 2)
    {
      return 2;
    }

    if (kind != 3)
    {
      return 0;
    }

    return 3;
  }

  if (kind > 999)
  {
    if (kind != 1000)
    {
      return 2;
    }

    return 3;
  }

  if (kind == 4)
  {
    return 4;
  }

  if (kind == 5)
  {
    return 5;
  }

  return 0;
}

- (id)_ANODPoseFromFTTrackMetadata:(id)metadata
{
  v21[3] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v4 = [metadataCopy objectForKeyedSubscript:@"AngleInfoRoll"];
  if (v4)
  {
    v5 = [metadataCopy objectForKeyedSubscript:@"AngleInfoPitch"];
    if (v5)
    {
      v6 = [metadataCopy objectForKeyedSubscript:@"AngleInfoYaw"];
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

- (id)_namedSignals:(id)signals addingANODPoseFromFTTrackMetadata:(id)metadata
{
  signalsCopy = signals;
  v7 = [(PTCinematographyStream *)self _ANODPoseFromFTTrackMetadata:metadata];
  if (v7)
  {
    if (!signalsCopy)
    {
      signalsCopy = MEMORY[0x277CBEC10];
    }

    v8 = [signalsCopy mutableCopy];
    [v8 setObject:v7 forKeyedSubscript:@"anod_pose"];
    v9 = [v8 copy];
  }

  else
  {
    signalsCopy = signalsCopy;
    v9 = signalsCopy;
  }

  return v9;
}

- (id)_mutableDetectionsFromFTTrackingResult:(id)result namedSignalsPerTrack:(id)track time:(id *)time
{
  v44 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  trackCopy = track;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = resultCopy;
  obj = [resultCopy tracks];
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
          *buf = *&time->var0;
          *&buf[16] = time->var3;
          v14 = [PTCinematographyDetection initWithTime:v13 rect:"initWithTime:rect:focusDistance:" focusDistance:buf];
          -[PTCinematographyDetection setDetectionType:](v14, "setDetectionType:", -[PTCinematographyStream _detectionTypeForFTObjectKind:](self, "_detectionTypeForFTObjectKind:", [v12 objectKind]));
          -[PTCinematographyDetection setTrackIdentifier:](v14, "setTrackIdentifier:", [v12 identifier]);
          [(PTCinematographyDetection *)v14 setGroupIdentifier:PTGroupIDFromFTTrack(v12)];
          metadata = [v12 metadata];
          v16 = [metadata objectForKeyedSubscript:PTCinematographyExcludeAsCinematicChoice];
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
          v19 = [trackCopy objectForKey:v18];

          metadata2 = [v12 metadata];
          v21 = [(PTCinematographyStream *)self _namedSignals:v19 addingANODPoseFromFTTrackMetadata:metadata2];
          [(PTCinematographyDetection *)v14 set_namedSignals:v21];

          _namedSignals = [(PTCinematographyDetection *)v14 _namedSignals];
          if (_namedSignals)
          {
            v23 = _namedSignals;
            v24 = PTDefaultsGetDictionary();
            v25 = [v24 objectForKeyedSubscript:@"CinematographyDebugLogMLSignals"];
            bOOLValue = [v25 BOOLValue];

            if (bOOLValue)
            {
              v27 = _PTLogSystem();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                focusIdentifier = [(PTCinematographyDetection *)v14 focusIdentifier];
                _namedSignals2 = [(PTCinematographyDetection *)v14 _namedSignals];
                *buf = 138412546;
                *&buf[4] = focusIdentifier;
                *&buf[12] = 2112;
                *&buf[14] = _namedSignals2;
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

- (float)_focusDistanceForDetection:(id)detection lockedDisparityBufferAddress:(void *)address width:(unint64_t)width height:(unint64_t)height bytesPerRow:(unint64_t)row formatType:(unsigned int)type
{
  detectionCopy = detection;
  previousFrame = [(PTCinematographyStream *)self previousFrame];
  v16 = [previousFrame detectionForTrackIdentifier:{objc_msgSend(detectionCopy, "trackIdentifier")}];

  [v16 focusDistance];
  v27 = v17;
  detectionType = [detectionCopy detectionType];
  [detectionCopy rect];
  if (v16)
  {
    v23 = &v27;
  }

  else
  {
    v23 = 0;
  }

  v24 = PTDisparityInNormalizedRectFromLockedPixelBufferInfoWithPrior(detectionType, address, width, height, row, type, v23, v19, v20, v21, v22);
  v25 = _PTLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyStream _focusDistanceForDetection:detectionCopy lockedDisparityBufferAddress:? width:? height:? bytesPerRow:? formatType:?];
  }

  return v24;
}

- (id)_inFocusRegionForFocusBlurMap:(id)map
{
  if (self->_autoFocusInFocusRegionSelect == 1)
  {
    [map largestFocusRegion];
  }

  else
  {
    [map inFocusRegion];
  }
  v3 = ;

  return v3;
}

- (float)_focusDistanceForAutoFocusDetection:(id)detection lockedDisparityBufferAddress:(void *)address width:(unint64_t)width height:(unint64_t)height bytesPerRow:(unint64_t)row formatType:(unsigned int)type focusBlurMap:(id)map
{
  v9 = *&type;
  detectionCopy = detection;
  mapCopy = map;
  if (mapCopy)
  {
    v17 = [(PTCinematographyStream *)self _inFocusRegionForFocusBlurMap:mapCopy];
    if (self->_autoFocusUseMask)
    {
      [mapCopy inputValidNormalizedRect];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = [PTScanlineMask scanlineMaskWithFocusBlurMap:mapCopy region:v17];
      [mapCopy validNormalizedRectFromRegion:v17];
      [detectionCopy setRect:?];
    }

    else
    {
      [mapCopy validNormalizedRectFromRegion:v17];
      v19 = v33;
      v21 = v34;
      v23 = v35;
      v25 = v36;
      [detectionCopy setRect:?];
      v26 = 0;
    }

    v32 = _PTDisparityInNormalizedRectFromLockedPixelBufferInfoWithMask([detectionCopy detectionType], address, width, height, row, v9, 0, v26, v19, v21, v23, v25);
  }

  else
  {
    detectionType = [detectionCopy detectionType];
    [detectionCopy rect];
    v32 = PTDisparityInNormalizedRectFromLockedPixelBufferInfo(detectionType, address, width, height, row, v9, v28, v29, v30, v31);
  }

  v37 = _PTLogSystem();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyStream _focusDistanceForAutoFocusDetection:detectionCopy lockedDisparityBufferAddress:? width:? height:? bytesPerRow:? formatType:? focusBlurMap:?];
  }

  return v32;
}

- (void)_setDisparityOfDetections:(id)detections disparityBuffer:(__CVBuffer *)buffer focusBlurMap:(id)map
{
  v27 = *MEMORY[0x277D85DE8];
  detectionsCopy = detections;
  mapCopy = map;
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  pixelBuffer = buffer;
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = detectionsCopy;
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
          [(PTCinematographyStream *)self _focusDistanceForAutoFocusDetection:v18 lockedDisparityBufferAddress:BaseAddress width:Width height:Height bytesPerRow:BytesPerRow formatType:PixelFormatType focusBlurMap:mapCopy, pixelBuffer];
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

- (float)smoothFocusDistance:(float)distance trackIdentifier:(int64_t)identifier sampleCount:(unint64_t)count
{
  previousFrame = [(PTCinematographyStream *)self previousFrame];
  v9 = [previousFrame detectionForTrackIdentifier:identifier];

  if (v9)
  {
    [v9 focusDistance];
    distance = v10 + ((2.0 / (count + 1.0)) * (distance - v10));
  }

  return distance;
}

- (void)_logFocusChangeForFrame:(id)frame
{
  v22 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  previousFrame = [(PTCinematographyStream *)self previousFrame];
  if (!previousFrame || (v8 = previousFrame, [frameCopy focusDetection], v9 = objc_claimAutoreleasedReturnValue(), focusDetection = objc_msgSend(v9, "trackIdentifier"), -[PTCinematographyStream previousFrame](self, "previousFrame"), focusIdentifier = objc_claimAutoreleasedReturnValue(), objc_msgSend(focusIdentifier, "focusDetection"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "trackIdentifier"), v10, focusIdentifier, v9, v8, focusDetection != v11))
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      previousFrame2 = [(PTCinematographyStream *)self previousFrame];
      if (previousFrame2)
      {
        v14 = MEMORY[0x277CCACA8];
        self = [(PTCinematographyStream *)self previousFrame];
        focusDetection = [(PTCinematographyStream *)self focusDetection];
        focusIdentifier = [focusDetection focusIdentifier];
        v15 = [v14 stringWithFormat:@" from %@", focusIdentifier];
      }

      else
      {
        v15 = &stru_2837D16E8;
      }

      focusDetection2 = [frameCopy focusDetection];
      focusIdentifier2 = [focusDetection2 focusIdentifier];
      *buf = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = focusIdentifier2;
      _os_log_impl(&dword_2243FB000, v12, OS_LOG_TYPE_INFO, "cinematography focus change%@ to %@", buf, 0x16u);

      if (previousFrame2)
      {
      }
    }
  }
}

- (void)_logUserTap:(id)tap
{
  v23 = *MEMORY[0x277D85DE8];
  tapCopy = tap;
  detection = [tapCopy detection];
  isFixedFocusDetection = [detection isFixedFocusDetection];

  if (isFixedFocusDetection)
  {
    detection2 = [tapCopy detection];
    [detection2 rect];
    MidX = CGRectGetMidX(v24);

    detection3 = [tapCopy detection];
    [detection3 rect];
    MidY = CGRectGetMidY(v25);

    detection4 = [tapCopy detection];
    [detection4 focusDistance];
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
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(tapCopy, "trackIdentifier")}];
      isStrong = [tapCopy isStrong];
      v16 = &stru_2837D16E8;
      if (isStrong)
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

- (BOOL)_logUnusualDisparity:(float)disparity kind:(id)kind info:(id)info
{
  v20 = *MEMORY[0x277D85DE8];
  kindCopy = kind;
  infoCopy = info;
  v9 = disparity > 100.0 || disparity < 0.0;
  if (v9)
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *&v11 = disparity;
      v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
      v14 = 138412802;
      v15 = v12;
      v16 = 2112;
      v17 = kindCopy;
      v18 = 2112;
      v19 = infoCopy;
      _os_log_impl(&dword_2243FB000, v10, OS_LOG_TYPE_INFO, "unusual %@ disparity %@ (%@)", &v14, 0x20u);
    }
  }

  return v9;
}

- (BOOL)_logUnusualDetection:(id)detection info:(id)info
{
  infoCopy = info;
  [detection focusDistance];
  LOBYTE(detection) = [(PTCinematographyStream *)self _logUnusualDisparity:@"detection" kind:infoCopy info:?];

  return detection;
}

- (PTCinematographyStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDetectorDidRunNextExpectedTime:(id *)time
{
  v3 = *&time->var0;
  self->_detectorDidRunNextExpectedTime.epoch = time->var3;
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