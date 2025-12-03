@interface VideoDeghostingDetectionV2
- ($BEDB99FD0828BB334BE1A07B64442EB9)configuration;
- (BOOL)_mergeBboxesWithTrackingForMitigation:(id)mitigation prevFrameGhostList:(id)list;
- (BOOL)_shouldRunGGDetectionClippedPixelBased:(float)based;
- (BOOL)_shouldRunGGDetectionLSBased:(int)based;
- (BOOL)_shouldRunGGDetectionLuxLevelBased:(int)based;
- (ROI)matchPrevLS:(double)s prevToCurrentHomography:(double)homography againstCurrentLSList:(float)list avoidList:(uint64_t)avoidList searchRadius:(void *)radius;
- (VideoDeghostingDetectionV2)initWithMetalToolBox:(id)box config:(id *)config tuningParamDict:(id)dict imageDimensions:(id)dimensions;
- (id)_ghostCandidateGenerationViaKeypointBuffer:(__CVBuffer *)buffer opticalCenterFromMetaData:(_simParamsStruct *)data mappingInfo:(id *)info GGList:(id *)list LSList:(int)sList kpCntHardGatingTh:(int)th kpCntSoftGatingTh:;
- (id)deepCopyROIList:(id)list copyReferencedROI:(BOOL)i;
- (id)extractLightSourceBBoxFromBuffer:(VideoDeghostingDetectionV2 *)self BoxCount:(SEL)count;
- (id)predictPastReflectedLSInCurrentFrame:(id)frame currentFrameLSList:(id)list;
- (id)process:(__CVBuffer *)process metaData:(id)data ispTimeStamp:(id *)stamp keypoints:(__CVBuffer *)keypoints lightSourceMask:(__CVBuffer *)mask futureFrames:(id *)frames;
- (int64_t)_allocateMetalBuffers;
- (int64_t)_detectionInit:(__CVBuffer *)init metaData:(id)data futureFrames:(id *)frames;
- (void)_allocateLightSourceBuffers:(int64_t)buffers;
- (void)_findGhostsAndGenerateDescriptors:(VideoDeghostingDetectionV2 *)self LSList:(SEL)list LSDilation:(id *)dilation LSReflectCenter:(id)center desGenKeypointBuf:(float)buf desGenMappingInfo:(__CVBuffer *)info;
- (void)_ghostDetectionWithInputPixelBuffer:(__CVBuffer *)buffer reflectedLSMaskOri:(__CVBuffer *)ori lowLight:(BOOL)light opticalCenterFromMetaData:(__CVBuffer *)data simKeyPoint:(__CVBuffer *)point simLightSourceMask:(id)mask metaData:(id *)metaData futureFrames:;
- (void)_initParamsWithTuningParamsDict:(id)dict isLowLight:(BOOL)light;
- (void)_pruneUsingMatchedLSInfo:(id *)info dilation:(int)dilation;
- (void)_resetDetectionResults;
- (void)_resetIntermediateVariables;
- (void)_setLightSourceMotionForKeypoints:(id *)keypoints;
- (void)_trackCurrentLSList:(id *)list;
- (void)_trackGhosts:(id *)ghosts ghostCandidates:(id *)candidates LSList:(id)list;
- (void)_trackLightSources:(id *)sources;
- (void)_updateEstOpticalCenterUsingPrevDetectedGhosts:(id)ghosts currentDefaultOpticalCenter:;
- (void)dealloc;
- (void)getDilationCoefsAndReflectedDilatedLsList:(id)list;
- (void)pruneUsingLSRisk:(id)risk;
- (void)reset;
- (void)setConfiguration:(id *)configuration;
- (void)temporalDetectionCoreCurrentGGList:(id *)list ghostCandidates:(id *)candidates LSList:(id)sList;
@end

@implementation VideoDeghostingDetectionV2

- (void)dealloc
{
  CVPixelBufferRelease(self->_frameT);
  CVPixelBufferRelease(self->_frameTMinus1);
  CVPixelBufferRelease(self->_frameTMinus2);
  free(*&self->_arrayOfLightSourceBBox[4]);
  free(*&self->_reflectedDilatedLsForTracking[4]);
  free(*&self->_reflectedDilatedLs[4]);
  free(*&self->_tinyKeypointLocationCountMax);
  free(self->_repairWeightsGenerator);
  v3.receiver = self;
  v3.super_class = VideoDeghostingDetectionV2;
  [(VideoDeghostingDetectionV2 *)&v3 dealloc];
}

- (void)reset
{
  v3 = +[NSMutableArray array];
  prevFrameMatchedLSCnt = self->_prevFrameMatchedLSCnt;
  self->_prevFrameMatchedLSCnt = v3;

  self->_LSROIs = 0;
  *&self->_LSMaskLSCnt = 0u;
  v5 = +[NSMutableArray array];
  reflectedLSROIs = self->_reflectedLSROIs;
  self->_reflectedLSROIs = v5;

  v7 = +[NSMutableArray array];
  rawDesGenKeyPoints = self->_rawDesGenKeyPoints;
  self->_rawDesGenKeyPoints = v7;

  v9 = +[NSMutableArray array];
  rawLSList = self->_rawLSList;
  self->_rawLSList = v9;

  v11 = +[NSMutableArray array];
  v12 = *&self->_configuration.internalCfg.clipThreshold;
  *&self->_configuration.internalCfg.clipThreshold = v11;

  v13 = +[NSMutableArray array];
  v14 = *&self->_configuration.internalCfg.antiFlareSize;
  *&self->_configuration.internalCfg.antiFlareSize = v13;

  v15 = +[NSMutableArray array];
  prevLSLists = self->_prevLSLists;
  self->_prevLSLists = v15;

  self->_isPrevLSFeaturesAvailable = 0;
  *&self->_optiCenterOffsetPrev[6] = 0;
  *&self->_optiCenterOffsetPrevPrev[6] = 0;
  LODWORD(self->_estimatedOpticalCenter.x) = 0;
  frameTMinus1Texture = self->_frameTMinus1Texture;
  self->_frameTMinus1Texture = 0;

  frameTMinus2Texture = self->_frameTMinus2Texture;
  self->_frameTMinus2Texture = 0;

  frameTPlus1Texture = self->_frameTPlus1Texture;
  self->_frameTPlus1Texture = 0;

  imageDimensions = self->_imageDimensions;
  self->_imageDimensions = 0;

  localMotionReferenceTexture = self->_localMotionReferenceTexture;
  self->_localMotionReferenceTexture = 0;

  *&self->_lsDilation = 0;
  *&self->_reflectedDilatedLsForPreprocessing[4] = 0;
  frameT = self->_frameT;
  if (frameT)
  {
    CFRelease(frameT);
    self->_frameT = 0;
  }

  frameTMinus1 = self->_frameTMinus1;
  if (frameTMinus1)
  {
    CFRelease(frameTMinus1);
    self->_frameTMinus1 = 0;
  }

  frameTMinus2 = self->_frameTMinus2;
  if (frameTMinus2)
  {
    CFRelease(frameTMinus2);
    self->_frameTMinus2 = 0;
  }

  [*&self->_runningAverageLSNumberCount reset];

  [(VideoDeghostingDetectionV2 *)self _resetIntermediateVariables];
}

- (void)_resetIntermediateVariables
{
  *self->_estOpticalCenterOffset = 0x100000001;
  *&self->_trackIDAfterMerge = xmmword_2DD50;
  *&self->_prevDefaultOpticalCenter[4] = 0;
  self->_prevFrameAllLSCnt = 0;
  self->_prevFrameMergedGhosts = 0;
  self->_trackID = 16843008;
  v3 = matrix_identity_float3x3.columns[0];
  v4 = matrix_identity_float3x3.columns[1];
  *&self->_hmgrphyTMinus1ToT.confidence = matrix_identity_float3x3.columns[0];
  *&self->_anon_64[12] = v4;
  v5 = matrix_identity_float3x3.columns[2];
  *&self->_anon_64[28] = v5;
  *&self->_anon_64[44] = 0;
  *&self->_anon_64[52] = 0;
  *&self->_anon_a4[12] = v4;
  *&self->_anon_a4[28] = v5;
  *&self->_hmgrphyTMinus2ToTMinus1.confidence = v3;
  *&self->_anon_a4[44] = 0;
  *&self->_anon_a4[52] = 0;
  *&self->_hmgrphyTMinus2ToT.confidence = v3;
  *&self->_anon_e4[12] = v4;
  *&self->_anon_e4[28] = v5;
  *&self->_anon_e4[44] = 0;
  *&self->_anon_e4[52] = 0;
  *&self->_localMotionRefHomography.confidence = v3;
  *&self->_anon_124[12] = v4;
  *&self->_anon_124[28] = v5;
  *&self->_anon_124[44] = 0;
  *&self->_anon_124[52] = 0;
  v6 = +[NSMutableArray array];
  inputTexture = self->_inputTexture;
  self->_inputTexture = v6;

  _objc_release_x1();
}

- (void)_resetDetectionResults
{
  v3 = +[NSMutableArray array];
  reflectedLSROIs = self->_reflectedLSROIs;
  self->_reflectedLSROIs = v3;

  v5 = +[NSMutableArray array];
  rawDesGenKeyPoints = self->_rawDesGenKeyPoints;
  self->_rawDesGenKeyPoints = v5;

  v7 = +[NSMutableArray array];
  rawLSList = self->_rawLSList;
  self->_rawLSList = v7;

  v9 = +[NSMutableArray array];
  v10 = *&self->_configuration.internalCfg.antiFlareSize;
  *&self->_configuration.internalCfg.antiFlareSize = v9;

  v11 = +[NSMutableArray array];
  v12 = *&self->_configuration.internalCfg.clipThreshold;
  *&self->_configuration.internalCfg.clipThreshold = v11;

  _objc_release_x1();
}

- (void)_initParamsWithTuningParamsDict:(id)dict isLowLight:(BOOL)light
{
  lightCopy = light;
  p_colorContrastDiffThreshold = &self->_params.tempDetect.colorContrastDiffThreshold;
  dictCopy = dict;
  v7 = [dictCopy objectForKeyedSubscript:@"DetectionAndTracking"];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = [dictCopy objectForKeyedSubscript:@"DetectionAndTracking"];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  v10 = [dictCopy objectForKeyedSubscript:@"LuxLevelThresholdON"];
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [v7 objectForKeyedSubscript:@"LSGatingThresholdON"];
  if (!v12)
  {
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [v7 objectForKeyedSubscript:@"LSGatingThresholdOFF"];
  if (!v14)
  {
LABEL_16:

    goto LABEL_17;
  }

  v15 = v14;
  v16 = [v7 objectForKeyedSubscript:@"LSBboxSizeThreshold"];
  if (!v16)
  {
LABEL_15:

    goto LABEL_16;
  }

  v17 = v16;
  v18 = [v7 objectForKeyedSubscript:@"b4MergeGhostCntSoftGatingTh"];
  if (!v18)
  {
LABEL_14:

    goto LABEL_15;
  }

  v19 = v18;
  v20 = [v7 objectForKeyedSubscript:@"b4MergeGhostCntHardGatingTh"];
  if (!v20)
  {
LABEL_13:

    goto LABEL_14;
  }

  v36 = v20;
  v21 = [v7 objectForKeyedSubscript:@"kpCntSoftGatingTh"];
  if (!v21)
  {

    goto LABEL_13;
  }

  v34 = v21;
  v35 = [v7 objectForKeyedSubscript:@"kpCntHardGatingTh"];

  if (v35)
  {
    v22 = [dictCopy objectForKeyedSubscript:@"LuxLevelThresholdON"];
    LODWORD(self->_params.searchRangeBaseForPreprocessing) = [v22 intValue];

    v23 = [dictCopy objectForKeyedSubscript:@"LuxLevelThresholdOFF"];
    self->_params.maxAllowedSizeBBox = [v23 intValue];

    v24 = [v7 objectForKeyedSubscript:@"LSGatingThresholdON"];
    self->_params.luxLevelGatingThresholdON = [v24 intValue];

    v25 = [v7 objectForKeyedSubscript:@"LSGatingThresholdOFF"];
    self->_params.luxLevelGatingThresholdOFF = [v25 intValue];

    v26 = [v7 objectForKeyedSubscript:@"LSBboxSizeThreshold"];
    *&self->_params.maxAllowedOpticalCenterOffset = [v26 intValue];

    v27 = [v7 objectForKeyedSubscript:@"LSSelectionCntLimitNew"];
    LODWORD(self->_params.lightSourceBoxSizeThreshold) = [v27 intValue];

    v28 = [v7 objectForKeyedSubscript:@"LSSelectionCntLimitAll"];
    LODWORD(self->_params.searchRangeBase) = [v28 intValue];

    v29 = [v7 objectForKeyedSubscript:@"b4MergeGhostCntSoftGatingTh"];
    LODWORD(self->_params.colorScore.hueLowerRange) = [v29 intValue];

    v30 = [v7 objectForKeyedSubscript:@"b4MergeGhostCntHardGatingTh"];
    LODWORD(self->_params.colorScore.hueUpperRange) = [v30 intValue];

    v31 = [v7 objectForKeyedSubscript:@"kpCntSoftGatingTh"];
    LODWORD(self->_params.colorScore.hueThreshold) = [v31 intValue];

    v32 = [v7 objectForKeyedSubscript:@"kpCntHardGatingTh"];
    LODWORD(self->_params.colorScore.saturationLowerThreshold) = [v32 intValue];

    goto LABEL_20;
  }

LABEL_19:
  *&self->_params.searchRangeBaseForPreprocessing = 0x3E800000320;
  self->_params.maxAllowedOpticalCenterOffset = 1090519040;
  *&self->_params.luxLevelGatingThresholdON = xmmword_2DD60;
  *&self->_params.colorScore.hueLowerRange = xmmword_2DD70;
LABEL_20:
  [(GGMMetalToolBox *)self->_metalToolBox setRepairTuningParams:&self[1] withDict:dictCopy];
  *&self->_params.costRescaleWhenOpticalCenterIsAvailable = 0x4234000042340000;
  *&self->_params.tempDetect.minVote = 1036831949;
  self->_params.tempDetect.searchRadiusMin = 1.0;
  *&self->_params.colorScore.saturationUpperThreshold = xmmword_2DD80;
  if (lightCopy)
  {
    v33 = 128;
  }

  else
  {
    v33 = 36;
  }

  self->_params.b4MergeGhostCntHardGatingTh = v33;
  *p_colorContrastDiffThreshold = xmmword_2DD90;
  *(p_colorContrastDiffThreshold + 1) = xmmword_2DDA0;
  *(p_colorContrastDiffThreshold + 2) = xmmword_2DDB0;
  *&self->_params.repairParams.repairTargetGhostCntHi = 0x3D4CCCCD3ECCCCCDLL;
  *&self->_params.tempDetect.lumaDiffThreshold = 0x100000001;
  *&self->_params.kpCntSoftGatingTh = 0x3E19999A00000014;
}

- (int64_t)_allocateMetalBuffers
{
  v3 = 16 * LODWORD(self->_metalBuffers.desGenMappingInfoBuf);
  metalContext = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  device = [metalContext device];
  v6 = [device newBufferWithLength:v3 options:0];
  desGenGhostIdxBuf = self->_metalBuffers.desGenGhostIdxBuf;
  self->_metalBuffers.desGenGhostIdxBuf = v6;

  if (!self->_metalBuffers.desGenGhostIdxBuf)
  {
    sub_21BFC();
    return v71[3];
  }

  self->_metalBuffers.DoGAndLumaInputBoxesBufLen = self->_metalBuffers.desGenMappingInfoBuf;
  v71[0] = 0;
  v71[1] = 0;
  v70 = 0;
  metalContext2 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  device2 = [metalContext2 device];
  v10 = [device2 newBufferWithBytes:v71 length:16 options:0];
  desGenGhostsBuf = self->_metalBuffers.desGenGhostsBuf;
  self->_metalBuffers.desGenGhostsBuf = v10;

  if (!self->_metalBuffers.desGenGhostsBuf)
  {
    sub_21B50();
    return v71[3];
  }

  metalContext3 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  device3 = [metalContext3 device];
  v14 = [device3 newBufferWithBytes:&v70 length:4 options:0];
  tinyGhostIdxBuf = self->_metalBuffers.tinyGhostIdxBuf;
  self->_metalBuffers.tinyGhostIdxBuf = v14;

  if (!self->_metalBuffers.tinyGhostIdxBuf)
  {
    sub_21AA4();
    return v71[3];
  }

  metalContext4 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  device4 = [metalContext4 device];
  v18 = [device4 newBufferWithLength:901120 options:0];
  tinyGhostInputLocationsBuf = self->_metalBuffers.tinyGhostInputLocationsBuf;
  self->_metalBuffers.tinyGhostInputLocationsBuf = v18;

  if (!self->_metalBuffers.tinyGhostInputLocationsBuf)
  {
    sub_219F8();
    return v71[3];
  }

  self->_metalBuffers.DoGAndLumaInputBoxesBufLenForPrevLS = 5120;
  HIDWORD(v68) = 0;
  v69 = 0;
  metalContext5 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  device5 = [metalContext5 device];
  v22 = [device5 newBufferWithBytes:&v69 length:4 options:0];
  tinyGhostsBuf = self->_metalBuffers.tinyGhostsBuf;
  self->_metalBuffers.tinyGhostsBuf = v22;

  if (!self->_metalBuffers.tinyGhostsBuf)
  {
    sub_2194C();
    return v71[3];
  }

  metalContext6 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  device6 = [metalContext6 device];
  v26 = [device6 newBufferWithBytes:&v68 + 4 length:4 options:0];
  DoGAndLumaInputBoxesBufForPrevLS = self->_metalBuffers.DoGAndLumaInputBoxesBufForPrevLS;
  self->_metalBuffers.DoGAndLumaInputBoxesBufForPrevLS = v26;

  if (!self->_metalBuffers.DoGAndLumaInputBoxesBufForPrevLS)
  {
    sub_218A0();
    return v71[3];
  }

  v28 = 8 * HIDWORD(self->_metalBuffers.reflectedLsBboxListBuf);
  metalContext7 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  device7 = [metalContext7 device];
  v31 = [device7 newBufferWithLength:v28 options:0];
  tinyGhostInputLocationsSize = self->_metalBuffers.tinyGhostInputLocationsSize;
  self->_metalBuffers.tinyGhostInputLocationsSize = v31;

  if (!self->_metalBuffers.tinyGhostInputLocationsSize)
  {
    sub_217F4();
    return v71[3];
  }

  reflectedLsBboxListBuf_high = HIDWORD(self->_metalBuffers.reflectedLsBboxListBuf);
  self->_metalBuffers.DoGAndLumaFeaturesBufLen = reflectedLsBboxListBuf_high;
  v34 = 176 * reflectedLsBboxListBuf_high;
  metalContext8 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  device8 = [metalContext8 device];
  v37 = [device8 newBufferWithLength:v34 options:0];
  DoGAndLumaInputBoxesBuf = self->_metalBuffers.DoGAndLumaInputBoxesBuf;
  self->_metalBuffers.DoGAndLumaInputBoxesBuf = v37;

  if (!self->_metalBuffers.DoGAndLumaInputBoxesBuf)
  {
    sub_21748();
    return v71[3];
  }

  self->_metalBuffers.DoGAndLumaFeaturesBufLenForPrevLS = HIDWORD(self->_metalBuffers.reflectedLsBboxListBuf);
  LODWORD(v68) = 0;
  v39 = 16 * LODWORD(self->_metalBuffers.reflectedLsBboxListBuf);
  metalContext9 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  device9 = [metalContext9 device];
  v42 = [device9 newBufferWithLength:v39 options:0];
  DoGAndLumaFeaturesBuf = self->_metalBuffers.DoGAndLumaFeaturesBuf;
  self->_metalBuffers.DoGAndLumaFeaturesBuf = v42;

  if (!self->_metalBuffers.DoGAndLumaFeaturesBuf)
  {
    sub_2169C();
    return v71[3];
  }

  LODWORD(self->_prevGhostTrackIDs) = self->_metalBuffers.reflectedLsBboxListBuf;
  v44 = 16 * LODWORD(self->_metalBuffers.desGenMappingInfoBuf);
  metalContext10 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  device10 = [metalContext10 device];
  v47 = [device10 newBufferWithLength:v44 options:0];
  DoGAndLumaFeaturesBufForPrevLS = self->_metalBuffers.DoGAndLumaFeaturesBufForPrevLS;
  self->_metalBuffers.DoGAndLumaFeaturesBufForPrevLS = v47;

  if (!self->_metalBuffers.DoGAndLumaFeaturesBufForPrevLS)
  {
    sub_215F0();
    return v71[3];
  }

  HIDWORD(self->_prevGhostTrackIDs) = self->_metalBuffers.desGenMappingInfoBuf;
  v49 = 136 * LODWORD(self->_metalBuffers.reflectedLsBboxListBuf);
  metalContext11 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  device11 = [metalContext11 device];
  v52 = [device11 newBufferWithLength:v49 options:0];
  DoGAndLumaTotalBoxes = self->_metalBuffers.DoGAndLumaTotalBoxes;
  self->_metalBuffers.DoGAndLumaTotalBoxes = v52;

  if (!self->_metalBuffers.DoGAndLumaTotalBoxes)
  {
    sub_21544();
    return v71[3];
  }

  LODWORD(self->_prevGhostTrackIDCnt) = self->_metalBuffers.reflectedLsBboxListBuf;
  v54 = 136 * LODWORD(self->_metalBuffers.desGenMappingInfoBuf);
  metalContext12 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  device12 = [metalContext12 device];
  v57 = [device12 newBufferWithLength:v54 options:0];
  DoGAndLumaTotalBoxesForPrevLS = self->_metalBuffers.DoGAndLumaTotalBoxesForPrevLS;
  self->_metalBuffers.DoGAndLumaTotalBoxesForPrevLS = v57;

  if (!self->_metalBuffers.DoGAndLumaTotalBoxesForPrevLS)
  {
    sub_21498();
    return v71[3];
  }

  HIDWORD(self->_prevGhostTrackIDCnt) = self->_metalBuffers.desGenMappingInfoBuf;
  metalContext13 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  device13 = [metalContext13 device];
  v61 = [device13 newBufferWithBytes:&v68 length:4 options:0];
  v62 = *&self->_metalBuffers.reflectedLsBboxListBufLen;
  *&self->_metalBuffers.reflectedLsBboxListBufLen = v61;

  if (!*&self->_metalBuffers.reflectedLsBboxListBufLen)
  {
    sub_213EC();
    return v71[3];
  }

  metalContext14 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  device14 = [metalContext14 device];
  v65 = [device14 newBufferWithBytes:&v68 length:4 options:0];
  v66 = *&self->_metalBuffers.tinyGhostInputLocationsBufLen;
  *&self->_metalBuffers.tinyGhostInputLocationsBufLen = v65;

  result = 0;
  if (!*&self->_metalBuffers.tinyGhostInputLocationsBufLen)
  {
    sub_21340();
    return v71[3];
  }

  return result;
}

- (id)process:(__CVBuffer *)process metaData:(id)data ispTimeStamp:(id *)stamp keypoints:(__CVBuffer *)keypoints lightSourceMask:(__CVBuffer *)mask futureFrames:(id *)frames
{
  dataCopy = data;
  kdebug_trace();
  v15 = sub_129BC(self->_configuration.externalCfg.frameDelay, dataCopy);
  [(VDGDetectionUtilsV2 *)self->_detectionUtils calcOpticalCenterFromMetaData:dataCopy];
  v42 = v16.f64[0];
  v43 = v17;
  v16.f64[1] = v17;
  [(VideoDeghostingDetectionV2 *)self _ghostDetectionWithInputPixelBuffer:process reflectedLSMaskOri:0 lowLight:v15 opticalCenterFromMetaData:keypoints simKeyPoint:mask simLightSourceMask:dataCopy metaData:COERCE_DOUBLE(vcvt_f32_f64(v16)) futureFrames:frames];
  if (sub_13280(self->_reflectedLSROIs, *&self[1]._detectionUtils, *&self[1].super.isa))
  {
    [(NSMutableArray *)self->_reflectedLSROIs removeAllObjects];
    lastObject = [(MTLTexture *)self->_inputTexture lastObject];
    [lastObject removeAllObjects];

    lastObject2 = [(NSMutableArray *)self->_prevLSLists lastObject];
    [lastObject2 removeAllObjects];
  }

  kdebug_trace();
  v20 = [(VDGDetectionUtilsV2 *)self->_detectionUtils generateDetectionRoiList:self->_reflectedLSROIs];
  currLsArrayLen = self->_currLsArrayLen;
  self->_currLsArrayLen = currLsArrayLen + 1;
  v22 = (&self->super.isa + currLsArrayLen % 0x64);
  v23 = v22[165];
  v24 = v22[65];
  bzero([v23 mutableBytes], 0x2548uLL);
  [(GGMMetalToolBox *)self->_metalToolBox updateMetaContainerBuffer:v24 WithDetectedROI:v20 isLowLight:v15];
  [*&self->_runningAverageLSNumberCount process:process info:dataCopy metaContainerBuffer:v24 computeBlendingWeights:objc_msgSend(v20 futureFrames:{"count") != 0, frames}];
  [*&self->_runningAverageLSNumberCount roiClusterCnt];
  kdebug_trace();
  v25 = *&self->_configuration.internalCfg.antiFlareSize;
  rawLSList = self->_rawLSList;
  v27 = *&self->_configuration.internalCfg.clipThreshold;
  v28 = LOBYTE(self->_params.lightSourceGatingThresholdOFF) != 0;
  v29 = HIBYTE(self->_params.lightSourceGatingThresholdOFF) != 0;
  v30 = BYTE1(self->_trackID);
  v31 = LOBYTE(self->_params.lightSourceSelectionCntLimitNew) != 0;
  v32 = BYTE2(self->_trackID);
  v44 = *stamp;
  BYTE3(v41) = v32;
  BYTE2(v41) = v31;
  BYTE1(v41) = v30;
  LOBYTE(v41) = v29;
  v33 = sub_12A8C(v23, v20, v42, v43, v25, rawLSList, v27, v28, dataCopy, &v44);
  v34 = *self->_estOpticalCenter + [*&self->_configuration.internalCfg.antiFlareSize count];
  *self->_estOpticalCenter = v34;
  LSTrackID = self->_LSTrackID;
  v37 = __CFADD__(LSTrackID, 1);
  v38 = LSTrackID + 1;
  self->_LSTrackID = v38;
  if (!v37)
  {
    v35 = v34 / v38;
    *&v35 = v35;
  }

  [*&self->_configuration.internalCfg.antiFlareSize count];
  [(NSMutableArray *)self->_reflectedLSROIs count];
  LSROIs = self->_LSROIs;
  kdebug_trace();

  return v33;
}

- (id)_ghostCandidateGenerationViaKeypointBuffer:(__CVBuffer *)buffer opticalCenterFromMetaData:(_simParamsStruct *)data mappingInfo:(id *)info GGList:(id *)list LSList:(int)sList kpCntHardGatingTh:(int)th kpCntSoftGatingTh:
{
  v13 = v8;
  kdebug_trace();
  kdebug_trace();
  detectionUtils = self->_detectionUtils;
  v17 = *list;
  frameTMinus1Texture = self->_frameTMinus1Texture;
  lsDilation = self->_lsDilation;
  [(VideoDeghostingDetectionV2 *)self estOpticalCenter];
  v21 = v20;
  LODWORD(v22) = 4.0;
  *&v20 = lsDilation;
  [(VDGDetectionUtilsV2 *)detectionUtils findTinyKeypointLocationsFromLS:v17 inputTexture:frameTMinus1Texture dilation:&self->_metalBuffers.desGenGhostIdxBuf estimatedOpticalCenter:HIDWORD(self->_metalBuffers.reflectedLsBboxListBuf) metalBuffers:v20 maxBufferLength:v21 keypointSampleStepCount:v22];
  kdebug_trace();
  kdebug_trace();
  v43[0] = +[NSMutableArray array];
  v23 = *list;
  v24 = self->_lsDilation;
  [(VideoDeghostingDetectionV2 *)self estOpticalCenter];
  v26 = v25;
  *&v25 = v24;
  [(VideoDeghostingDetectionV2 *)self _findGhostsAndGenerateDescriptors:v43 LSList:v23 LSDilation:buffer LSReflectCenter:v25 desGenKeypointBuf:v26 desGenMappingInfo:*data->var1];
  [(VDGDetectionUtilsV2 *)self->_detectionUtils pruneGGList:v43 LSBBoxList:list reflectedLSBBoxList:*&self->_reflectedDilatedLsForTracking[4] getMatchedLS:1 pruneLS:0 pruneGG:1];
  [(VideoDeghostingDetectionV2 *)self _setLightSourceMotionForKeypoints:v43];
  if ([v43[0] count] > sList)
  {
    [v43[0] removeAllObjects];
  }

  v27 = self->_detectionUtils;
  v28 = v43[0];
  [(VideoDeghostingDetectionV2 *)self estOpticalCenter];
  [(VDGDetectionUtilsV2 *)v27 sortKPs:v28 opticalCenter:?];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v29 = v43[0];
  v30 = [v29 countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v40;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [*(*(&v39 + 1) + 8 * i) setDoneKPToBBoxViaGraphTraversal:1];
      }

      v31 = [v29 countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v31);
  }

  [(VideoDeghostingDetectionV2 *)self _pruneUsingMatchedLSInfo:v43 dilation:self->_lsDilation];
  v34 = [v43[0] count];
  if (v34 > th)
  {
    [v43[0] removeObjectsInRange:{th, &v34[-th]}];
  }

  [(VDGDetectionUtilsV2 *)self->_detectionUtils removeDuplicateRois:v43[0]];
  [(VDGDetectionUtilsV2 *)self->_detectionUtils setDefaultOpticalCenterForList:v43[0] opticalCenter:v13];
  kdebug_trace();
  [(VDGDetectionUtilsV2 *)self->_detectionUtils getGGCandidatesFromROIList:v43[0] GGList:info];
  kdebug_trace();
  v35 = v43[0];

  return v35;
}

- (void)_updateEstOpticalCenterUsingPrevDetectedGhosts:(id)ghosts currentDefaultOpticalCenter:
{
  v6 = v3;
  ghostsCopy = ghosts;
  prevFrameAllLSCnt = self->_prevFrameAllLSCnt;
  if ([ghostsCopy count])
  {
    v4.i32[0] = 0;
    v10 = 0;
    v11 = 0;
    v5.i32[0] = 1;
    do
    {
      v12 = [ghostsCopy objectAtIndexedSubscript:v10];
      v13 = self->_prevFrameAllLSCnt;
      [v12 bbox];
      v39 = v14;
      [v12 bbox];
      v38 = v15;
      [v12 isTrajectoryPruningPassed];
      matchedLS = [v12 matchedLS];
      v17 = [matchedLS count];

      if (v17)
      {
        v18 = 0;
        v19 = vadd_f32(v39, vmul_f32(*&vextq_s8(v38, v38, 8uLL), 0x3F0000003F000000));
        v20 = 1;
        do
        {
          matchedLS2 = [v12 matchedLS];
          v22 = [matchedLS2 objectAtIndexedSubscript:v18];

          [v22 bbox];
          v40 = v23;
          [v22 bbox];
          *v24.i8 = vmul_f32(vadd_f32(v19, vadd_f32(v40, vmul_f32(*&vextq_s8(v24, v24, 8uLL), 0x3F0000003F000000))), 0x3F0000003F000000);
          v13 = vbsl_s8(vdup_lane_s32(vceq_s32(__PAIR64__(v40.u32[1], v20), v5), 0), *v24.i8, vadd_f32(v13, *v24.i8));

          v18 = v20;
          matchedLS3 = [v12 matchedLS];
          v26 = [matchedLS3 count];
        }

        while (v26 > v20++);
      }

      matchedLS4 = [v12 matchedLS];
      v29 = [matchedLS4 count];

      if (v29)
      {
        matchedLS5 = [v12 matchedLS];
        *v32.i32 = [matchedLS5 count];
        v13 = vdiv_f32(v13, vdup_lane_s32(v32, 0));
      }

      v30.i32[0] = v11;
      prevFrameAllLSCnt = vbsl_s8(vdup_lane_s32(vceq_s32(v30, v4), 0), v13, vadd_f32(prevFrameAllLSCnt, v13));

      v10 = ++v11;
    }

    while ([ghostsCopy count] > v11);
  }

  if ([(VideoDeghostingDetectionV2 *)self prevFrameAllLSCnt])
  {
    prevFrameMatchedLSCnt = [(VideoDeghostingDetectionV2 *)self prevFrameMatchedLSCnt];
    if ((prevFrameMatchedLSCnt / [(VideoDeghostingDetectionV2 *)self prevFrameAllLSCnt]) < 0.05)
    {
      LOBYTE(self->_trackID) = 0;
      self->_trackIDAfterMerge = 0;
      if (![(VideoDeghostingDetectionV2 *)self prevFrameMatchedLSCnt])
      {
        prevFrameAllLSCnt = vmul_n_f32(self->_prevFrameAllLSCnt, [ghostsCopy count]);
      }
    }
  }

  if ([ghostsCopy count])
  {
    *v34.i32 = [ghostsCopy count];
    v35 = vdiv_f32(prevFrameAllLSCnt, vdup_lane_s32(v34, 0));
    v36 = vsub_f32(v35, v6);
    v37 = sqrtf(vaddv_f32(vmul_f32(v36, v36)));
    [(VideoDeghostingDetectionV2 *)self params];
    if (v37 <= v41)
    {
      self->_prevFrameMergedGhosts = vmla_f32(vmul_f32(vsub_f32(v35, self->_prevFrameAllLSCnt), vdup_n_s32(0x3E4CCCCDu)), vdup_n_s32(0x3F4CCCCDu), self->_prevFrameMergedGhosts);
      if ((self->_trackID & 1) == 0)
      {
        ++self->_trackIDAfterMerge;
      }
    }
  }

  *&self->_prevDefaultOpticalCenter[4] = vadd_f32(self->_prevFrameMergedGhosts, v6);
}

- (void)_pruneUsingMatchedLSInfo:(id *)info dilation:(int)dilation
{
  v48 = +[NSMutableArray array];
  selfCopy = self;
  v7 = *&self->_prevDefaultOpticalCenter[4];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  infoCopy = info;
  obj = *info;
  v51 = [obj countByEnumeratingWithState:&v56 objects:v55 count:16];
  if (v51)
  {
    *v8.i32 = dilation;
    v9 = vdup_lane_s32(v8, 0);
    v50 = *v57;
    do
    {
      for (i = 0; i != v51; i = i + 1)
      {
        if (*v57 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v56 + 1) + 8 * i);
        [v11 bbox];
        v53 = *v12.i8;
        v52 = vextq_s8(v12, v12, 8uLL).u64[0];
        matchedLS = [v11 matchedLS];
        v14 = [matchedLS count];
        v15 = v14;
        if (v14 < 1)
        {
          v43 = 0.0;
          v44 = vcgtz_f32(v52);
          if ((vpmax_u32(v44, v44).u32[0] & 0x80000000) != 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = vadd_f32(v53, vmul_f32(v52, 0x3F0000003F000000));
          v20 = vadd_f32(v53, v52);
          v54 = 0u;
          v21 = v14 & 0x7FFFFFFF;
          v22 = 0;
          v23 = INFINITY;
          do
          {
            v24 = [matchedLS objectAtIndexedSubscript:v16];
            [v24 bbox];
            v26 = vextq_s8(v25, v25, 8uLL).u64[0];
            v27 = vadd_f32(*v25.i8, v26);
            v28 = vadd_f32(*v25.i8, vmul_f32(v26, 0x3F0000003F000000));
            *v25.i8 = vsub_f32(vbsl_s8(vcgt_f32(v27, v20), v20, v27), vbsl_s8(vcgt_f32(v53, *v25.i8), v53, *v25.i8));
            v29 = vcgtz_f32(*v25.i8);
            *v25.i8 = vmul_f32(vzip1_s32(*v25.i8, v26), vzip2_s32(*v25.i8, v26));
            v30 = vpmin_u32(v29, v29).u32[0];
            v31 = vadd_f32(v7, vsub_f32(v7, v27));
            v32 = vdiv_f32(*v25.i8, vdup_lane_s32(*v25.i8, 1)).f32[0];
            v33 = vsub_f32(vcvt_f32_s32(vcvt_s32_f32(vsub_f32(v31, v9))), v53);
            v34 = fmaxf(v33.f32[0], v33.f32[1]);
            if (v32 >= v23)
            {
              v32 = v23;
            }

            if (v30 < 0)
            {
              v18 = 1;
            }

            v35 = vcvt_s32_f32(vadd_f32(v9, vadd_f32(v26, v31)));
            if (v30 < 0)
            {
              v23 = v32;
            }

            v36 = v34;
            v37 = vsub_f32(v20, vcvt_f32_s32(v35));
            if (v34 < 0.0)
            {
              v36 = 0.0;
            }

            v38 = fmaxf(v37.f32[0], v37.f32[1]);
            if (v36 <= v38)
            {
              v36 = v38;
            }

            v39 = vmul_f32(vadd_f32(v19, v28), 0x3F0000003F000000);
            *(&v40 + 1) = *(&v54 + 1);
            *&v40 = vmax_s32(*&v54, vcvt_s32_f32(v26));
            v54 = v40;
            v22 = vbsl_s8(vceqd_s64(v16, 0), v39, vadd_f32(v22, v39));
            if (v17 >= v36)
            {
              v41 = v36;
            }

            else
            {
              v41 = v17;
            }

            if (v16)
            {
              v17 = v41;
            }

            else
            {
              v17 = v36;
            }

            ++v16;
          }

          while (v21 != v16);
          v42 = vcgt_f32(v52, vmul_f32(vcvt_f32_u32(*&v54), vdup_n_s32(0x3FD9999Au)));
          v43 = COERCE_DOUBLE(vpmax_u32(v42, v42));
          if ((LODWORD(v43) & 0x80000000) != 0 || (v18 & (v23 > 0.7)) != 0 || v17 > 30)
          {
LABEL_32:
            [v48 addObject:{v11, v43}];
            goto LABEL_33;
          }

          *&v43 = v15;
          v43 = COERCE_DOUBLE(vdiv_f32(v22, vdup_lane_s32(*&v43, 0)));
        }

        if ((selfCopy->_trackID & 1) == 0)
        {
          v45 = vsub_f32(*&v43, v7);
          v43 = sqrtf(vaddv_f32(vmul_f32(v45, v45)));
          if (selfCopy->_params.kpCntSoftGatingTh + selfCopy->_params.kpCntSoftGatingTh < v43)
          {
            goto LABEL_32;
          }
        }

LABEL_33:
      }

      v51 = [obj countByEnumeratingWithState:&v56 objects:v55 count:16];
    }

    while (v51);
  }

  [*infoCopy removeObjectsInArray:v48];
}

- (BOOL)_mergeBboxesWithTrackingForMitigation:(id)mitigation prevFrameGhostList:(id)list
{
  mitigationCopy = mitigation;
  listCopy = list;
  sub_12EEC(mitigationCopy);
  if (!listCopy)
  {
LABEL_62:
    v10 = 1;
    goto LABEL_66;
  }

  v8 = [listCopy count];
  v9 = [mitigationCopy count];
  v10 = 0;
  v11 = *&self->_estOpticalCenterIsAvailable;
  if (v8 <= v11 && v9 <= v11)
  {
    v68 = v9;
    v69 = mitigationCopy;
    selfCopy = self;
    v81 = v8;
    if (v8)
    {
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = [listCopy objectAtIndexedSubscript:v13];
        trackIDsAfterMerge = [v14 trackIDsAfterMerge];
        v16 = [trackIDsAfterMerge count];

        v17 = selfCopy;
        if (v16 > *&selfCopy->_estOpticalCenterIsAvailable)
        {
          break;
        }

        if (v16)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            trackIDsAfterMerge2 = [v14 trackIDsAfterMerge];
            v20 = [trackIDsAfterMerge2 objectAtIndex:i];
            *(&v17->_repairWeightsGenerator->super.isa + 4 * i + v12 * *&v17->_estOpticalCenterIsAvailable) = [v20 intValue];
          }
        }

        ++v13;
        v12 += 4;
        v8 = v81;
        if (v13 == v81)
        {
          goto LABEL_11;
        }
      }

      v10 = 0;
      goto LABEL_65;
    }

LABEL_11:
    if (!v68)
    {
      v10 = 1;
LABEL_65:
      mitigationCopy = v69;
      goto LABEL_66;
    }

    v21 = 0;
    v22 = (v8 + 1);
    v75 = v8;
    v76 = 4 * v8;
    v73 = v22;
    v74 = v8 & 0x7FFFFFFF;
    v66 = (4 * v22 + 15) & 0x7FFFFFFF0;
    v67 = 4 * v22;
    mitigationCopy = v69;
    do
    {
      v23 = listCopy;
      v72 = v21;
      v24 = [mitigationCopy objectAtIndexedSubscript:?];
      v25 = v24;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      if (v24)
      {
        [v24 descriptor];
      }

      [v25 bbox];
      v79 = v26;
      [v25 bbox];
      *&v83 = vadd_f32(*&v79, vmul_f32(*&vextq_s8(v27, v27, 8uLL), 0x3F0000003F000000));
      *&v92 = 0;
      v82[6] = v89;
      v82[7] = v90;
      v82[8] = v91;
      v82[9] = v92;
      v82[2] = v85;
      v82[3] = v86;
      v82[4] = v87;
      v82[5] = v88;
      v82[0] = v83;
      v82[1] = v84;
      [v25 setDescriptor:v82];
      [v25 setIsPredictedFromPast:0];
      [v25 setIsTrajectoryPruningPassed:1];
      [v25 setLowSaliencyCnt:0];
      [v25 setTrackedCnt:0];
      v70 = &v65;
      *&v79 = &v65 - v66;
      bzero(&v65 - v66, v67);
      v71 = v25;
      trackIDsAfterMerge3 = [v25 trackIDsAfterMerge];
      v28 = [trackIDsAfterMerge3 count];
      if (v28 >= 1)
      {
        v29 = 0;
        v77 = v28 & 0x7FFFFFFF;
        do
        {
          v30 = [trackIDsAfterMerge3 objectAtIndexedSubscript:v29];
          intValue = [v30 intValue];

          if (v8)
          {
            v32 = 0;
            v33 = 0;
            while (2)
            {
              v34 = 4 * v33;
              while (1)
              {
                v35 = [v23 objectAtIndexedSubscript:v33];
                trackIDsAfterMerge4 = [v35 trackIDsAfterMerge];
                v37 = [trackIDsAfterMerge4 count];

                if (v37)
                {
                  break;
                }

LABEL_24:

                v33 = v33 + 1;
                v34 += 4;
                v8 = v81;
                if (v33 == v81)
                {
                  if (v32)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_29;
                }
              }

              v38 = (selfCopy->_repairWeightsGenerator + *&selfCopy->_estOpticalCenterIsAvailable * v34);
              while (1)
              {
                v39 = *v38++;
                if (v39 == intValue)
                {
                  break;
                }

                if (!--v37)
                {
                  goto LABEL_24;
                }
              }

              ++*(v79 + 4 * v33);

              v33 = v33 + 1;
              v32 = 1;
              v8 = v81;
              if (v33 != v81)
              {
                continue;
              }

              break;
            }
          }

          else
          {
LABEL_29:
            ++*(v79 + v76);
          }

LABEL_30:
          ++v29;
        }

        while (v29 != v77);
      }

      if (v8 < 1)
      {
        v40 = 0;
        listCopy = v23;
        v43 = v68;
      }

      else
      {
        v40 = 0;
        v41 = *v79;
        v42 = 1;
        listCopy = v23;
        v43 = v68;
        v44 = v73;
        do
        {
          v45 = *(v79 + 4 * v42);
          if (v45 <= v41)
          {
            if (v42 < v75 && v45 == v41)
            {
              v46 = [v23 objectAtIndexedSubscript:v40];
              v47 = [v23 objectAtIndexedSubscript:v42];
              trackID = [v47 trackID];
              if (trackID < [v46 trackID])
              {
                v41 = *(v79 + 4 * v42);
                v40 = v42;
              }

              v44 = v73;
            }
          }

          else
          {
            v41 = *(v79 + 4 * v42);
            v40 = v42;
          }

          ++v42;
        }

        while (v44 != v42);
      }

      v8 = v81;
      if (v40 == v81)
      {
        v49 = *v79;
        if (v81 < 2)
        {
          v56 = 0;
        }

        else
        {
          v50 = 0;
          v51 = 1;
          do
          {
            v52 = *(v79 + 4 * v51);
            if (v52 <= v49)
            {
              if (v52 == v49)
              {
                v53 = [v23 objectAtIndexedSubscript:v50];
                v54 = [v23 objectAtIndexedSubscript:v51];
                trackID2 = [v54 trackID];
                if (trackID2 < [v53 trackID])
                {
                  v49 = *(v79 + 4 * v51);
                  v50 = v51;
                }
              }
            }

            else
            {
              v49 = *(v79 + 4 * v51);
              v50 = v51;
            }

            ++v51;
          }

          while (v74 != v51);
          v56 = v50;
          listCopy = v23;
        }

        v60 = selfCopy;
        if (v8 && v49)
        {
          v61 = [listCopy objectAtIndexedSubscript:v56];
          trackID3 = [v61 trackID];
          v59 = v71;
          [v71 setTrackID:trackID3];
          [v59 setTrackedCnt:{objc_msgSend(v61, "trackedCnt") + 1}];
        }

        else
        {
          v59 = v71;
          [v71 setTrackID:*selfCopy->_estOpticalCenterOffset];
          [v59 setTrackedCnt:0];
          ++*v60->_estOpticalCenterOffset;
        }
      }

      else
      {
        v57 = [listCopy objectAtIndexedSubscript:v40];
        trackID4 = [v57 trackID];
        v59 = v71;
        [v71 setTrackID:trackID4];
        [v59 setTrackedCnt:{objc_msgSend(v57, "trackedCnt") + 1}];
      }

      v21 = v72 + 1;
      v63 = v72 + 1 == v43;
      mitigationCopy = v69;
    }

    while (!v63);
    goto LABEL_62;
  }

LABEL_66:

  return v10;
}

- (void)_findGhostsAndGenerateDescriptors:(VideoDeghostingDetectionV2 *)self LSList:(SEL)list LSDilation:(id *)dilation LSReflectCenter:(id)center desGenKeypointBuf:(float)buf desGenMappingInfo:(__CVBuffer *)info
{
  v30 = v7;
  v9 = v6;
  centerCopy = center;
  *[(MTLBuffer *)self->_metalBuffers.desGenGhostsBuf contents]= v30;
  *[(MTLBuffer *)self->_metalBuffers.tinyGhostIdxBuf contents]= 0;
  metalToolBox = self->_metalToolBox;
  frameTMinus1Texture = self->_frameTMinus1Texture;
  localMotionReferenceTexture = self->_localMotionReferenceTexture;
  imageDimensions = self->_imageDimensions;
  [(VideoDeghostingDetectionV2 *)self params];
  v31 = v55;
  v32 = v56;
  HIDWORD(v29) = HIDWORD(self->_metalBuffers.reflectedLsBboxListBuf);
  HIDWORD(v28) = self->_metalBuffers.desGenMappingInfoBuf;
  LODWORD(v29) = 5120;
  LOBYTE(v28) = self->_isLocalMotionCueEnabled;
  *&v18 = buf;
  v19 = [(GGMMetalToolBox *)metalToolBox findGhostCandidatesFromDesGenAndTinyKeypointsFromInputTexture:frameTMinus1Texture ref4LocalMotionTexture:imageDimensions inputTPlus1Texture:localMotionReferenceTexture LSList:centerCopy desGenKeypoints:info homography:&v31 colorParams:*&self->_localMotionRefHomography.confidence computeLocalMotion:*&self->_anon_124[12] LSDilation:*&self->_anon_124[28] LSReflectCenter:v18 maxLightSourceCount:v9 maxDesGenKeypoints:v28 maxTinyKeypoints:v29 metalBuffers:&self->_metalBuffers.desGenGhostIdxBuf isPrevLSFeaturesAvailable:&self->_isPrevLSFeaturesAvailable];
  v20 = *dilation;
  *dilation = v19;

  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v21 = *dilation;
  v22 = [v21 countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v43;
    v25 = vneg_f32(0x7F0000007FLL);
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v42 + 1) + 8 * i);
        [v27 generateLocationFromBBox];
        if (v27)
        {
          [v27 descriptor];
        }

        else
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
        }

        v52 = v37;
        v53 = v38;
        v54 = v39;
        v48 = v33;
        v49 = v34;
        v50 = v35;
        v51 = v36;
        v46 = v31;
        v47 = v32;
        *&v40 = v25;
        *(&v40 + 1) = v25;
        [v27 setDescriptor:&v31];
        [v27 setTrackFail:0];
      }

      v23 = [v21 countByEnumeratingWithState:&v42 objects:v41 count:16];
    }

    while (v23);
  }
}

- (void)_setLightSourceMotionForKeypoints:(id *)keypoints
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *keypoints;
  v3 = [obj countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v33;
    v6 = vneg_f32(0x7F0000007FLL);
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        [v8 generateLocationFromBBox];
        if (v8)
        {
          [v8 descriptor];
          v9 = *&v29[0];
          v10 = 0uLL;
        }

        else
        {
          v10 = 0uLL;
          v30 = 0u;
          v9 = 0;
          memset(v29, 0, sizeof(v29));
        }

        v40 = *(&v29[4] + 8);
        v41 = *(&v29[5] + 8);
        v42 = *(&v29[6] + 8);
        v43 = *(&v29[7] + 8);
        v36 = *(v29 + 8);
        v37 = *(&v29[1] + 8);
        v38 = *(&v29[2] + 8);
        v39 = *(&v29[3] + 8);
        v27 = v10;
        v28 = v10;
        v25 = v10;
        v26 = v10;
        matchedLS = [v8 matchedLS];
        v12 = [matchedLS countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v26;
          v16 = 0;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(matchedLS);
              }

              v18 = *(*(&v25 + 1) + 8 * j);
              if (v18)
              {
                [v18 descriptor];
                v19 = v23;
              }

              else
              {
                v19 = 0;
                v23 = 0;
              }

              v16 = vadd_f32(v16, vsub_f32(v9, v19));
            }

            v14 += v13;
            v13 = [matchedLS countByEnumeratingWithState:&v25 objects:v24 count:16];
          }

          while (v13);

          *v20.i32 = v14;
          v21 = vdiv_f32(v16, vdup_lane_s32(v20, 0));
        }

        else
        {

          v21 = v6;
        }

        *(&v29[4] + 8) = v40;
        *(&v29[5] + 8) = v41;
        *(&v29[6] + 8) = v42;
        *(&v29[7] + 8) = v43;
        *(v29 + 8) = v36;
        *(&v29[1] + 8) = v37;
        *(&v29[2] + 8) = v38;
        *(&v29[3] + 8) = v39;
        *&v29[0] = v9;
        *(&v29[8] + 1) = v21;
        *&v30 = v6;
        *(&v30 + 1) = v6;
        [v8 setDescriptor:v29];
        [v8 setTrackFail:0];
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v4);
  }
}

- (id)deepCopyROIList:(id)list copyReferencedROI:(BOOL)i
{
  iCopy = i;
  listCopy = list;
  v6 = +[NSMutableArray array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = listCopy;
  v8 = [v7 countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v43;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v42 + 1) + 8 * i);
        v13 = [ROI alloc];
        [v12 bbox];
        if (v12)
        {
          v20 = v14;
          [v12 descriptor];
          v14 = v20;
        }

        else
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
        }

        v15 = [(ROI *)v13 initWithBbox:&v31 descriptor:v14];
        -[ROI setTrackID:](v15, "setTrackID:", [v12 trackID]);
        lSTrackID = [v12 LSTrackID];
        [(ROI *)v15 setLSTrackID:lSTrackID];

        -[ROI setIsTracked:](v15, "setIsTracked:", [v12 isTracked]);
        -[ROI setLSIsHighRisk:](v15, "setLSIsHighRisk:", [v12 LSIsHighRisk]);
        [v12 defaultOpticalCenter];
        [(ROI *)v15 setDefaultOpticalCenter:?];
        if (v12)
        {
          [v12 descriptor];
        }

        else
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
        }

        v37 = v27;
        v38 = v28;
        v39 = v29;
        v40 = v30;
        v33 = v23;
        v34 = v24;
        v35 = v25;
        v36 = v26;
        v31 = v21;
        v32 = v22;
        [(ROI *)v15 setDescriptor:&v31];
        -[ROI setIsReflectedLS:](v15, "setIsReflectedLS:", [v12 isReflectedLS]);
        if (iCopy)
        {
          lSTrackingMatched = [v12 LSTrackingMatched];
          [(ROI *)v15 setLSTrackingMatched:lSTrackingMatched];

          temporalDetectionMatched = [v12 temporalDetectionMatched];
          [(ROI *)v15 setTemporalDetectionMatched:temporalDetectionMatched];
        }

        [v6 addObject:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v42 objects:v41 count:16];
    }

    while (v9);
  }

  return v6;
}

- (int64_t)_detectionInit:(__CVBuffer *)init metaData:(id)data futureFrames:(id *)frames
{
  dataCopy = data;
  kdebug_trace();
  v65 = 0;
  v64 = 0;
  [(VideoDeghostingDetectionV2 *)self _resetDetectionResults];
  CVPixelBufferRelease(self->_frameTMinus2);
  self->_frameTMinus2 = self->_frameTMinus1;
  objc_storeStrong(&self->_frameTPlus1Texture, self->_frameTMinus2Texture);
  self->_frameTMinus1 = self->_frameT;
  objc_storeStrong(&self->_frameTMinus2Texture, self->_frameTMinus1Texture);
  CVPixelBufferRetain(init);
  self->_frameT = init;
  cvMetalTextureCacheRef = [(GGMMetalToolBox *)self->_metalToolBox cvMetalTextureCacheRef];
  metalContext = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  v11 = sub_22594(init, cvMetalTextureCacheRef, metalContext, 0, 1);
  frameTMinus1Texture = self->_frameTMinus1Texture;
  self->_frameTMinus1Texture = v11;

  if (!self->_frameTMinus1Texture)
  {
    v56 = 5;
    goto LABEL_37;
  }

  v60 = matrix_identity_float3x3.columns[1];
  v61 = matrix_identity_float3x3.columns[0];
  v58 = matrix_identity_float3x3.columns[2];
  if (frames->var2 < 2)
  {
    localMotionReferenceTexture = self->_localMotionReferenceTexture;
    self->_localMotionReferenceTexture = 0;
  }

  else
  {
    v13 = *frames->var0;
    v14 = *(frames->var0 + 1);
    self->_frameTPlus1Buf = v13;
    cvMetalTextureCacheRef2 = [(GGMMetalToolBox *)self->_metalToolBox cvMetalTextureCacheRef];
    metalContext2 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
    v17 = sub_22594(v13, cvMetalTextureCacheRef2, metalContext2, 0, 1);
    v18 = self->_localMotionReferenceTexture;
    self->_localMotionReferenceTexture = v17;

    v19 = v14;
    if (*&self->_configuration.externalCfg.drawBoundingBox)
    {
      *&self->_hmgrphyTToTPlus1.confidence = v61;
      *&self->_anon_164[12] = v60;
      *&self->_anon_164[28] = v58;
      *&self->_anon_164[44] = 0;
      *&self->_anon_164[52] = 0;
    }

    else
    {
      calcTransform = self->_calcTransform;
      if (calcTransform)
      {
        [(CalcHomography *)calcTransform ispHomographyFromMetaInfo:v19];
      }

      else
      {
        v63 = 0u;
        memset(&v62, 0, sizeof(v62));
      }

      v22 = v62.columns[1];
      *&self->_hmgrphyTToTPlus1.confidence = v62.columns[0];
      *&self->_anon_164[12] = v22;
      v23 = v63;
      *&self->_anon_164[28] = v62.columns[2];
      *&self->_anon_164[44] = v23;
    }
  }

  if (self->_frameTMinus1)
  {
    v24 = *&self->_anon_64[12];
    *&self->_hmgrphyTMinus2ToTMinus1.confidence = *&self->_hmgrphyTMinus1ToT.confidence;
    *&self->_anon_a4[12] = v24;
    v25 = *&self->_anon_64[44];
    *&self->_anon_a4[28] = *&self->_anon_64[28];
    *&self->_anon_a4[44] = v25;
    if (*&self->_configuration.externalCfg.drawBoundingBox)
    {
      *&self->_hmgrphyTMinus1ToT.confidence = v61;
      *&self->_anon_64[12] = v60;
      *&self->_anon_64[28] = v58;
      *&self->_anon_64[44] = 0;
      *&self->_anon_64[48] = v64;
      *&self->_anon_64[56] = v65;
    }

    else
    {
      v26 = self->_calcTransform;
      if (v26)
      {
        [(CalcHomography *)v26 ispHomographyFromMetaInfo:dataCopy];
      }

      else
      {
        v63 = 0u;
        memset(&v62, 0, sizeof(v62));
      }

      v27 = v62.columns[1];
      *&self->_hmgrphyTMinus1ToT.confidence = v62.columns[0];
      *&self->_anon_64[12] = v27;
      v28 = v63;
      *&self->_anon_64[28] = v62.columns[2];
      *&self->_anon_64[44] = v28;
    }
  }

  if (self->_frameTMinus2)
  {
    v29 = 0;
    v30 = *&self->_hmgrphyTMinus2ToTMinus1.confidence;
    v31 = *&self->_anon_a4[12];
    v32 = *&self->_anon_a4[28];
    v33 = *&self->_anon_64[12];
    v34 = *&self->_anon_64[28];
    v66 = *&self->_hmgrphyTMinus1ToT.confidence;
    v67 = v33;
    v68 = v34;
    memset(&v62, 0, sizeof(v62));
    do
    {
      v62.columns[v29 / 4] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v66 + v29 * 4))), v31, *&v66.f32[v29], 1), v32, *(&v66 + v29 * 4), 2);
      v29 += 4;
    }

    while (v29 != 12);
    v35 = v62.columns[0].i64[0];
    v36 = v62.columns[1];
    v37 = v62.columns[2];
    *&self->_anon_e4[4] = v62.columns[0].i32[2];
    *&self->_hmgrphyTMinus2ToT.confidence = v35;
    *&self->_anon_e4[20] = v36.i32[2];
    *&self->_anon_e4[36] = v37.i32[2];
    *&self->_anon_e4[12] = v36.i64[0];
    *&self->_anon_e4[28] = v37.i64[0];
    *&self->_anon_e4[44] = fminf(*&self->_anon_a4[44], *&self->_anon_64[44]);
  }

  frameTPlus1Texture = self->_frameTPlus1Texture;
  if (frameTPlus1Texture)
  {
    sub_21CA8(self, frameTPlus1Texture);
  }

  else
  {
    if (frames->var2 >= 2)
    {
      v39 = *(frames->var0 + 1);
      v40 = *(frames->var0 + 2);
      v41 = *(frames->var0 + 3);
      self->_frameTPlus2Buf = v40;
      v42 = v39;
      v43 = v41;
      v44 = 0.0;
      v45 = 0.0;
      v46 = v58;
      v47 = v60;
      v48 = v61;
      if (*&self->_configuration.externalCfg.drawBoundingBox)
      {
        goto LABEL_33;
      }

      v49 = self->_calcTransform;
      if (v49)
      {
        [(CalcHomography *)v49 ispHomographyFromMetaInfo:v42, *v58.i64, *v60.i64, *v61.i64];
        v60 = v62.columns[1];
        v61 = v62.columns[0];
        v58 = v62.columns[2];
        v44 = *&v63;
        v50 = self->_calcTransform;
        if (v50)
        {
          [(CalcHomography *)v50 ispHomographyFromMetaInfo:v43];
          v48 = v62.columns[0];
          v47 = v62.columns[1];
          v46 = v62.columns[2];
          v45 = *&v63;
LABEL_33:
          v51 = 0;
          v66 = v48;
          v67 = v47;
          v68 = v46;
          memset(&v62, 0, sizeof(v62));
          do
          {
            v62.columns[v51 / 4] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v61, COERCE_FLOAT(*(&v66 + v51 * 4))), v60, *&v66.f32[v51], 1), v58, *(&v66 + v51 * 4), 2);
            v51 += 4;
          }

          while (v51 != 12);
          v59 = __invert_f3(v62);
          frameTPlus2Buf = self->_frameTPlus2Buf;
          metalContext3 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
          v54 = sub_C6CC(frameTPlus2Buf, metalContext3, 0, 1);
          imageDimensions = self->_imageDimensions;
          self->_imageDimensions = v54;

          *&self->_anon_124[4] = v59.columns[0].i32[2];
          *&self->_localMotionRefHomography.confidence = v59.columns[0].i64[0];
          *&self->_anon_124[20] = v59.columns[1].i32[2];
          *&self->_anon_124[12] = v59.columns[1].i64[0];
          *&self->_anon_124[36] = v59.columns[2].i32[2];
          *&self->_anon_124[28] = v59.columns[2].i64[0];
          *&self->_anon_124[44] = fminf(v44, v45);
          *&self->_anon_124[48] = 0;
          *&self->_anon_124[56] = 0;
          self->_isLocalMotionCueEnabled = 1;

          goto LABEL_36;
        }

        v46 = 0uLL;
      }

      else
      {
        v46 = 0uLL;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
      }

      v47 = 0uLL;
      v48 = 0uLL;
      goto LABEL_33;
    }

    objc_storeStrong(&self->_imageDimensions, self->_frameTMinus1Texture);
    *&self->_localMotionRefHomography.confidence = v61;
    *&self->_anon_124[12] = v60;
    *&self->_anon_124[28] = v58;
    *&self->_anon_124[44] = 0;
    *&self->_anon_124[48] = v64;
    *&self->_anon_124[56] = v65;
    self->_isLocalMotionCueEnabled = 0;
  }

LABEL_36:
  sub_21CE8();
  v56 = 0;
LABEL_37:

  return v56;
}

- (BOOL)_shouldRunGGDetectionLSBased:(int)based
{
  if (HIBYTE(self->_params.lightSourceGatingThresholdOFF))
  {
    if (self->_params.luxLevelGatingThresholdOFF < based && (self->_trackID & 0x100) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = (self->_params.luxLevelGatingThresholdON > based) | BYTE1(self->_trackID);
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (BOOL)_shouldRunGGDetectionLuxLevelBased:(int)based
{
  if (LOBYTE(self->_params.lightSourceSelectionCntLimitNew))
  {
    if (self->_params.maxAllowedSizeBBox < based && (self->_trackID & 0x10000) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = (SLODWORD(self->_params.searchRangeBaseForPreprocessing) > based) | BYTE2(self->_trackID);
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (BOOL)_shouldRunGGDetectionClippedPixelBased:(float)based
{
  if (!BYTE1(self->_params.lightSourceSelectionCntLimitNew))
  {
    return 1;
  }

  result = HIBYTE(self->_trackID);
  maxAllowedOpticalCenterOffset = self->_params.maxAllowedOpticalCenterOffset;
  if (*&maxAllowedOpticalCenterOffset > based && result)
  {
    return 0;
  }

  if ((*&maxAllowedOpticalCenterOffset + 4.0) < based)
  {
    return 1;
  }

  return result;
}

- (id)predictPastReflectedLSInCurrentFrame:(id)frame currentFrameLSList:(id)list
{
  frameCopy = frame;
  listCopy = list;
  lSTrackID = [frameCopy LSTrackID];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v9 = listCopy;
  v10 = [v9 countByEnumeratingWithState:&v74 objects:v73 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v75;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v75 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v74 + 1) + 8 * v13);
      lSTrackID2 = [v14 LSTrackID];

      if (lSTrackID2 == lSTrackID)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v74 objects:v73 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = v14;

    if (!v17)
    {
      v16 = 0;
      goto LABEL_38;
    }

    if ([frameCopy lowSaliencyCnt] > 9)
    {
      [v17 setLsHasBeenUsedForTrackingGhost:0];
      lSTrackingMatched = [v17 LSTrackingMatched];
      [lSTrackingMatched setLsHasBeenUsedForTrackingGhost:0];

      v16 = 0;
      goto LABEL_37;
    }

    v18 = [ROI alloc];
    [v17 getReflectedBboxAroundCenter:*&self->_prevDefaultOpticalCenter[4]];
    v16 = [(ROI *)v18 initWithBbox:?];
    [(ROI *)v16 setDoneKPToBBoxViaGraphTraversal:1];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    if (v16)
    {
      [(ROI *)v16 descriptor];
    }

    [v17 lumaFeatureVectorReflection];
    v69 = v61;
    v70 = v62;
    v67 = v59;
    v68 = v60;
    LODWORD(v71) = 32;
    v55 = v61;
    v56 = v62;
    v57 = v71;
    v58 = v72;
    v51 = v65;
    v52 = v66;
    v53 = v59;
    v54 = v60;
    v49 = v63;
    v50 = v64;
    [(ROI *)v16 setDescriptor:&v49];
    [frameCopy getPixelFeatureMatchCostWith:v16];
    v20 = v19;
    [v17 differenceOfGaussianAndLumaFeatureReflection];
    v22 = 0;
    if (v20 < 0.04 && *&v21 >= 0.001)
    {
      v22 = *(&v21 + 1) >= 0.1;
    }

    [(ROI *)v16 bbox];
    v24 = v23;
    [(ROI *)v16 bbox];
    v26 = v25;
    [(ROI *)v16 bbox];
    v28 = 0;
    v29 = 3;
    if (v24 < v26)
    {
      v29 = 2;
    }

    v38 = v27;
    *&v27 = (1.0 - fminf(fmaxf((*(&v38 | (4 * v29)) + -20.0) / 5.0, 0.0), 1.0)) * 0.1;
    if (v20 < *&v27)
    {
      *&v27 = v36;
      if (*&v36 >= 0.04)
      {
        LODWORD(v27) = HIDWORD(v36);
        v28 = *(&v36 + 1) >= 0.5;
      }
    }

    if (v22 || v28)
    {
      [(ROI *)v16 setLowSaliencyCnt:0, *&v27];
      if (v20 < 0.04)
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        if (frameCopy)
        {
          [frameCopy descriptor];
        }

        if (v16)
        {
          [(ROI *)v16 descriptor];
        }

        else
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
        }

        v69 = v45;
        v70 = v46;
        v71 = v47;
        v72 = v48;
        v65 = v41;
        v66 = v42;
        v67 = v43;
        v68 = v44;
        v63 = v39;
        v64 = v40;
        [(VDGDetectionUtilsV2 *)self->_detectionUtils updateNewRoiPixFea:&v67 withRefPixFea:&v53];
        if (!v16)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }
    }

    else
    {
      -[ROI setLowSaliencyCnt:](v16, "setLowSaliencyCnt:", [frameCopy lowSaliencyCnt] + 1);
    }

    if (!v16)
    {
LABEL_35:
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      goto LABEL_36;
    }

LABEL_32:
    [(ROI *)v16 descriptor];
LABEL_36:
    v69 = v55;
    v70 = v56;
    v71 = v57;
    v72 = v58;
    v65 = v51;
    v66 = v52;
    v67 = v53;
    v68 = v54;
    v63 = v49;
    v64 = v50;
    [(ROI *)v16 bbox];
    v37 = v31;
    [(ROI *)v16 bbox];
    *&v63 = vadd_f32(v37, vmul_f32(*&vextq_s8(v32, v32, 8uLL), 0x3F0000003F000000));
    v55 = v69;
    v56 = v70;
    v57 = v71;
    v58 = v72;
    v51 = v65;
    v52 = v66;
    v53 = v67;
    v54 = v68;
    v49 = v63;
    v50 = v64;
    [(ROI *)v16 setDescriptor:&v49];
    [(ROI *)v16 setIsReflectedLS:1];
    [(ROI *)v16 setIsTracked:1];
    -[ROI setTrackedCnt:](v16, "setTrackedCnt:", [frameCopy trackedCnt] + 1);
    -[ROI setTrackID:](v16, "setTrackID:", [frameCopy trackID]);
    [(ROI *)v16 setTemporalDetectionMatched:frameCopy];
    [(ROI *)v16 setIsPredictedFromPast:1];
    -[ROI setPredictedFromPastCnt:](v16, "setPredictedFromPastCnt:", [frameCopy predictedFromPastCnt] + 1);
    -[ROI setIsTrajectoryPruningPassed:](v16, "setIsTrajectoryPruningPassed:", [frameCopy isTrajectoryPruningPassed]);
    lSTrackID3 = [frameCopy LSTrackID];
    [(ROI *)v16 setLSTrackID:lSTrackID3];

    [(ROI *)v16 setLsHasBeenUsedForTrackingGhost:1];
    [v17 setLsHasBeenUsedForTrackingGhost:1];
    lSTrackingMatched2 = [v17 LSTrackingMatched];
    [lSTrackingMatched2 setLsHasBeenUsedForTrackingGhost:1];

    goto LABEL_37;
  }

LABEL_9:
  v16 = 0;
  v17 = v9;
LABEL_37:

LABEL_38:

  return v16;
}

- (void)_allocateLightSourceBuffers:(int64_t)buffers
{
  if (*&self->_lsDilation4Preprocessing < buffers)
  {
    *&self->_lsDilation4Preprocessing = buffers;
    free(*&self->_arrayOfLightSourceBBox[4]);
    free(*&self->_reflectedDilatedLsForTracking[4]);
    free(*&self->_reflectedDilatedLs[4]);
    v5 = 16 * buffers;
    v6 = malloc_type_malloc(v5, 0x1000040451B5BE8uLL);
    *&self->_arrayOfLightSourceBBox[4] = v6;
    if (v6)
    {
      v7 = malloc_type_malloc(v5, 0x1000040451B5BE8uLL);
      *&self->_reflectedDilatedLsForTracking[4] = v7;
      if (v7)
      {
        v8 = malloc_type_malloc(v5, 0x1000040451B5BE8uLL);
        *&self->_reflectedDilatedLs[4] = v8;
        if (!v8)
        {
          sub_21D08();
        }
      }

      else
      {
        sub_21D88();
      }
    }

    else
    {
      sub_21E08();
    }
  }
}

- (void)getDilationCoefsAndReflectedDilatedLsList:(id)list
{
  listCopy = list;
  [(VideoDeghostingDetectionV2 *)self params];
  v5 = v26 * *&self->_estimatedOpticalCenter.x;
  estOpticalCenterIsAvailable = [(VideoDeghostingDetectionV2 *)self estOpticalCenterIsAvailable];
  v7 = 1.0;
  LODWORD(v8) = 1.0;
  if (estOpticalCenterIsAvailable)
  {
    [(VideoDeghostingDetectionV2 *)self params];
    LODWORD(v8) = v25;
  }

  v9 = v5 * *&v8;
  self->_lsDilation = v9;
  *self->_reflectedDilatedLsForPreprocessing = v9 * 3.0;
  [(VideoDeghostingDetectionV2 *)self params];
  v10 = v24 * *&self->_estimatedOpticalCenter.x;
  if ([(VideoDeghostingDetectionV2 *)self estOpticalCenterIsAvailable])
  {
    [(VideoDeghostingDetectionV2 *)self params];
    v7 = v23;
  }

  *&self->_reflectedDilatedLsForPreprocessing[4] = v10 * v7;
  -[VideoDeghostingDetectionV2 _allocateLightSourceBuffers:](self, "_allocateLightSourceBuffers:", [listCopy count]);
  if ([listCopy count])
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = [listCopy objectAtIndexedSubscript:v11];
      [v13 getReflectedBboxAroundCenter:*&self->_prevDefaultOpticalCenter[4]];
      v15 = vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
      v16 = &self->_reflectedDilatedLsForPreprocessing[4];
      v17 = vld1_dup_f32(v16);
      *v18.f32 = vsub_f32(*v14.i8, v17);
      *&v18.u32[2] = vadd_f32(v15, v17);
      *(*&self->_arrayOfLightSourceBBox[4] + 16 * v11) = vcvtq_s32_f32(v18);
      p_lsDilation = &self->_lsDilation;
      v20 = vld1_dup_f32(p_lsDilation);
      *v18.f32 = vsub_f32(*v14.i8, v20);
      *&v18.u32[2] = vadd_f32(v15, v20);
      *(*&self->_reflectedDilatedLsForTracking[4] + 16 * v11) = vcvtq_s32_f32(v18);
      v21 = vdup_n_s32(*self->_reflectedDilatedLsForPreprocessing);
      *v14.i8 = vsub_s32(vcvt_s32_f32(*v14.i8), v21);
      v14.u64[1] = vadd_s32(v21, vcvt_s32_f32(v15));
      *(*&self->_reflectedDilatedLs[4] + 16 * v11) = v14;

      v11 = v12;
    }

    while ([listCopy count] > v12++);
  }
}

- (void)pruneUsingLSRisk:(id)risk
{
  riskCopy = risk;
  v5 = +[NSMutableArray array];
  if ([riskCopy count])
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [riskCopy objectAtIndexedSubscript:{v6, v21, v22, v23}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      matchedLS = [v8 matchedLS];
      v10 = [matchedLS countByEnumeratingWithState:&v28 objects:v27 count:16];
      if (v10)
      {
        break;
      }

LABEL_11:

LABEL_30:
      v6 = ++v7;
      if ([riskCopy count] <= v7)
      {
        goto LABEL_31;
      }
    }

    v11 = v10;
    v12 = *v29;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(matchedLS);
      }

      if ([*(*(&v28 + 1) + 8 * v13) LSIsHighRisk])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [matchedLS countByEnumeratingWithState:&v28 objects:v27 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    if (v8)
    {
      [v8 descriptor];
      repairTargetGhostCntLo = self->_params.repairParams.repairTargetGhostCntLo;
      [v8 descriptor];
      *&v15 = v25;
      v17 = v25 >= self->_params.repairParams.repairTargetGhostCntHi && *(&v26 + 3) >= repairTargetGhostCntLo;
      [v8 descriptor];
      LODWORD(v18) = v24;
      if (!v17)
      {
LABEL_29:
        [v5 addObject:{v8, v18, v21, v22, v23}];
        goto LABEL_30;
      }
    }

    else
    {
      v26 = 0u;
      v25 = 0.0;
      v18 = 0.0;
      v20 = self->_params.repairParams.repairTargetGhostCntHi <= 0.0 && self->_params.repairParams.repairTargetGhostCntLo <= 0.0;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    if (*&v18 >= *(&self->_params + 43))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_31:
  [riskCopy removeObjectsInArray:{v5, v21, v22, v23}];
}

- (void)_trackLightSources:(id *)sources
{
  prevLSLists = self->_prevLSLists;
  if (!prevLSLists)
  {
    v6 = +[NSMutableArray array];
    v7 = self->_prevLSLists;
    self->_prevLSLists = v6;

    prevLSLists = self->_prevLSLists;
  }

  if ([(NSMutableArray *)prevLSLists count]== &dword_0 + 1)
  {
    [(VideoDeghostingDetectionV2 *)self _trackCurrentLSList:sources];
    [(NSMutableArray *)self->_prevLSLists removeObjectAtIndex:0];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = *sources;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          v14 = [NSString stringWithFormat:@"%d", *&self->_estOpticalCenterOffset[4]];
          [v13 setLSTrackID:v14];

          ++*&self->_estOpticalCenterOffset[4];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v10);
    }
  }

  [(VDGDetectionUtilsV2 *)self->_detectionUtils generateTrajectoryForROIList:*sources isGG:0];
  [(NSMutableArray *)self->_prevLSLists addObject:*sources];
  self->_isPrevLSFeaturesAvailable = 0;
}

- (ROI)matchPrevLS:(double)s prevToCurrentHomography:(double)homography againstCurrentLSList:(float)list avoidList:(uint64_t)avoidList searchRadius:(void *)radius
{
  radiusCopy = radius;
  v14 = a8;
  v15 = a9;
  [*(self + 8) predictPrevLSLocation:radiusCopy usingPrevToCurrentHomography:{a2, s, homography}];
  v17 = v16;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v18 = v14;
  v19 = [v18 countByEnumeratingWithState:&v102 objects:v101 count:16];
  if (!v19)
  {

LABEL_19:
    [radiusCopy bbox];
    v48 = [[ROI alloc] initWithBbox:COERCE_DOUBLE(vadd_f32(v17, vmul_f32(*&vextq_s8(v47, v47, 8uLL), 0xBF000000BF000000)))];
    [(ROI *)v48 setDoneKPToBBoxViaGraphTraversal:1];
    v49 = 0uLL;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    if (v48)
    {
      [(ROI *)v48 descriptor];
      v49 = 0uLL;
    }

    if (radiusCopy)
    {
      [radiusCopy lumaFeatureVectorPredictedLocation];
      v51 = v79;
      v50 = v80;
      v49 = v77;
      v52 = v78;
    }

    else
    {
      v52 = 0uLL;
      v51 = 0uLL;
      v50 = 0uLL;
    }

    v85 = v49;
    v86 = v52;
    v87 = v51;
    v88 = v50;
    LODWORD(v89) = 32;
    v73 = v51;
    v74 = v50;
    v75 = v89;
    v76 = v90;
    v69 = v83;
    v70 = v84;
    v71 = v49;
    v72 = v52;
    v67 = v81;
    v68 = v82;
    [(ROI *)v48 setDescriptor:&v67];
    [radiusCopy getPixelFeatureMatchCostWith:v48];
    if (v53 <= 0.01)
    {
      if (v48)
      {
        [(ROI *)v48 descriptor];
      }

      else
      {
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
      }

      v87 = v73;
      v88 = v74;
      v89 = v75;
      v90 = v76;
      v83 = v69;
      v84 = v70;
      v85 = v71;
      v86 = v72;
      v81 = v67;
      v82 = v68;
      [(ROI *)v48 bbox];
      v66 = v54;
      [(ROI *)v48 bbox];
      *&v81 = vadd_f32(v66, vmul_f32(*&vextq_s8(v55, v55, 8uLL), 0x3F0000003F000000));
      v73 = v87;
      v74 = v88;
      v75 = v89;
      v76 = v90;
      v69 = v83;
      v70 = v84;
      v71 = v85;
      v72 = v86;
      v67 = v81;
      v68 = v82;
      [(ROI *)v48 setDescriptor:&v67];
      firstObject = [v18 firstObject];
      [firstObject defaultOpticalCenter];
      [(ROI *)v48 setDefaultOpticalCenter:?];

      v21 = v48;
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_31;
  }

  v20 = v19;
  v21 = 0;
  v22 = *v103;
  v23 = INFINITY;
  v24 = vdup_n_s32(0x3DCCCCCDu);
  __asm { FMOV            V11.2S, #10.0 }

  do
  {
    for (i = 0; i != v20; i = i + 1)
    {
      if (*v103 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v31 = *(*(&v102 + 1) + 8 * i);
      if (([v15 containsObject:v31] & 1) == 0)
      {
        if (v31)
        {
          [v31 descriptor];
          v32 = v91;
        }

        else
        {
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v32 = 0;
          v91 = 0u;
          v92 = 0u;
        }

        v33 = vsub_f32(v17, v32);
        v34 = sqrtf(vaddv_f32(vmul_f32(v33, v33)));
        [v31 bbox];
        v65 = v35;
        [radiusCopy bbox];
        v63 = v36;
        [v31 bbox];
        v61 = v37;
        [radiusCopy bbox];
        v59 = v38;
        [v31 bbox];
        v58 = v39;
        [radiusCopy bbox];
        if (v34 <= list)
        {
          v41 = vabd_f32(*&vextq_s8(v65, v65, 8uLL), *&vextq_s8(v63, v63, 8uLL));
          v42 = vcgtq_f32(v59, v61);
          v43 = vmul_f32(vbsl_s8(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v58, v58, 8uLL), *&vextq_s8(v40, v40, 8uLL)), v24);
          v44 = vcge_f32(vbsl_s8(vcgt_f32(_D11, v43), _D11, v43), v41);
          if ((vpmin_u32(v44, v44).u32[0] & 0x80000000) != 0)
          {
            v45 = fmaxf(v41.f32[0], v41.f32[1]);
            if (v45 < v23)
            {
              v46 = v31;

              v21 = v46;
              v23 = v45;
            }
          }
        }
      }
    }

    v20 = [v18 countByEnumeratingWithState:&v102 objects:v101 count:16];
  }

  while (v20);

  if (!v21)
  {
    goto LABEL_19;
  }

LABEL_31:

  return v21;
}

- (void)_trackCurrentLSList:(id *)list
{
  v87 = +[NSMutableArray array];
  v5 = [(NSMutableArray *)self->_prevLSLists count];
  if (v5 >= 1)
  {
    v6 = v5 & 0x7FFFFFFF;
    do
    {
      v82 = v6 - 1;
      v84 = v6;
      v7 = [(NSMutableArray *)self->_prevLSLists objectAtIndex:?];
      v8 = +[NSMutableArray array];
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v121 objects:v120 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v122;
        do
        {
          v13 = 0;
          v14 = *&obj[12];
          v15 = *&obj[28];
          v16 = *&obj[44];
          do
          {
            obj_12 = v16;
            v94 = v15;
            v99 = v14;
            if (*v122 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v17 = *(*(&v121 + 1) + 8 * v13);
            v125 = __invert_f3(*&self->_hmgrphyTMinus1ToT.confidence);
            v125.columns[0].i32[3] = v99;
            v125.columns[1].i32[3] = v94;
            v125.columns[2].i32[3] = obj_12;
            *obj = v125;
            v18 = [VideoDeghostingDetectionV2 matchPrevLS:"matchPrevLS:prevToCurrentHomography:againstCurrentLSList:avoidList:searchRadius:" prevToCurrentHomography:v17 againstCurrentLSList:*list avoidList:v8 searchRadius:?];
            v19 = v18;
            if (v18)
            {
              [v18 setLSTrackingVote:{objc_msgSend(v18, "LSTrackingVote") + 1}];
              [v8 addObject:v19];
              if (([*list containsObject:v19] & 1) == 0)
              {
                [v87 addObject:v19];
              }

              [v19 setLSTrackingMatched:v17];
            }

            v13 = v13 + 1;
            v14 = *&obj[12];
            v15 = *&obj[28];
            v16 = *&obj[44];
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v121 objects:v120 count:{16, *obj, *&obj[16], *&obj[32]}];
        }

        while (v11);
      }

      v6 = v82;
    }

    while (v84 > 1);
  }

  [*list addObjectsFromArray:v87];
  v81 = +[NSMutableArray array];
  if ([*list count])
  {
    v20 = 0;
    do
    {
      v21 = [*list objectAtIndexedSubscript:v20];
      lSTrackingVote = [v21 LSTrackingVote];
      [(VideoDeghostingDetectionV2 *)self params];
      if (lSTrackingVote < v119)
      {
        [v21 bbox];
        v95 = v23;
        [v21 bbox];
        v93 = v24;
        [v21 bbox];
        obj_8 = v25;
        [v21 bbox];
        v85 = v26;
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v27 = *list;
        v28 = [v27 countByEnumeratingWithState:&v115 objects:v114 count:16];
        if (v28)
        {
          v29 = v28;
          v83 = v21;
          v30 = v95;
          v31 = *v116;
          v96 = vmuls_lane_f32(obj_8, v85, 3);
          v32 = 0.0;
          do
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v116 != v31)
              {
                objc_enumerationMutation(v27);
              }

              v34 = *(*(&v115 + 1) + 8 * i);
              lSTrackingVote2 = [v34 LSTrackingVote];
              [(VideoDeghostingDetectionV2 *)self params];
              if (lSTrackingVote2 >= v113)
              {
                [v34 bbox];
                v37 = v36;
                [v34 bbox];
                v39 = v38;
                [v34 bbox];
                v41 = v40;
                [v34 bbox];
                v128.size.height = v42;
                v126.origin.x = v30;
                v126.origin.y = v93;
                v126.size.width = obj_8;
                v126.size.height = v85.f32[3];
                v128.origin.x = v37;
                v128.origin.y = v39;
                v128.size.width = v41;
                v127 = CGRectIntersection(v126, v128);
                width = v127.size.width;
                height = v127.size.height;
                if (!CGRectIsNull(v127))
                {
                  v45 = width * height / v96;
                  if (v45 >= v32)
                  {
                    v32 = v45;
                  }
                }
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v115 objects:v114 count:16];
          }

          while (v29);

          v21 = v83;
          if (v32 >= 0.8)
          {
            [v81 addObject:v83];
          }
        }

        else
        {
        }
      }

      ++v20;
    }

    while ([*list count] > v20);
  }

  v46 = +[NSMutableArray array];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v47 = *list;
  v48 = [v47 countByEnumeratingWithState:&v109 objects:v108 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v110;
    do
    {
      for (j = 0; j != v49; j = j + 1)
      {
        if (*v110 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v109 + 1) + 8 * j);
        lSTrackingVote3 = [v52 LSTrackingVote];
        [(VideoDeghostingDetectionV2 *)self params];
        if (lSTrackingVote3 >= v107)
        {
          [v46 addObject:v52];
        }
      }

      v49 = [v47 countByEnumeratingWithState:&v109 objects:v108 count:16];
    }

    while (v49);
  }

  [(VDGDetectionUtilsV2 *)self->_detectionUtils removeRedundantLS:v46];
  if ([*list count])
  {
    v54 = 0;
    do
    {
      v55 = [*list objectAtIndexedSubscript:v54];
      lSTrackingVote4 = [v55 LSTrackingVote];
      [(VideoDeghostingDetectionV2 *)self params];
      if (lSTrackingVote4 >= v106 && ([v46 containsObject:v55] & 1) == 0)
      {
        [v81 addObject:v55];
      }

      ++v54;
    }

    while ([*list count] > v54);
  }

  v86 = v46;
  [*list removeObjectsInArray:v81];
  v57 = +[NSMutableArray array];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obja = *list;
  v58 = [obja countByEnumeratingWithState:&v102 objects:v101 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v103;
    __asm { FMOV            V8.2S, #10.0 }

    v66 = vdup_n_s32(0x3F333333u);
    v67 = vdup_n_s32(0x3E99999Au);
    do
    {
      for (k = 0; k != v59; k = k + 1)
      {
        if (*v103 != v60)
        {
          objc_enumerationMutation(obja);
        }

        v69 = *(*(&v102 + 1) + 8 * k);
        lSTrackingVote5 = [v69 LSTrackingVote];
        [(VideoDeghostingDetectionV2 *)self params];
        if (lSTrackingVote5 >= v100)
        {
          [v57 addObject:v69];
          lSTrackingMatched = [v69 LSTrackingMatched];
          if (lSTrackingMatched)
          {
            [v69 setIsTracked:1];
            lSTrackID = [lSTrackingMatched LSTrackID];
            [v69 setLSTrackID:lSTrackID];

            [v69 bbox];
            v97 = vextq_s8(v75, v75, 8uLL).u64[0];
            [lSTrackingMatched bbox];
            v98 = vmla_f32(vmul_f32(*&vextq_s8(v76, v76, 8uLL), v66), v67, v97);
            [v69 bbox];
            v92 = v77;
            [v69 bbox];
            [v69 setBbox:{COERCE_DOUBLE(vadd_f32(v92, vmul_f32(vsub_f32(v98, *&vextq_s8(v78, v78, 8uLL)), 0xBF000000BF000000)))}];
          }

          else
          {
            [v69 setIsTracked:0];
            v79 = [NSString stringWithFormat:@"%d", *&self->_estOpticalCenterOffset[4]];
            [v69 setLSTrackID:v79];

            ++*&self->_estOpticalCenterOffset[4];
          }
        }

        else
        {
          [v69 setIsTracked:0];
          [v69 bbox];
          *v71.i8 = vcge_f32(*&vextq_s8(v71, v71, 8uLL), _D8);
          if ((vpmin_u32(*v71.i8, *v71.i8).u32[0] & 0x80000000) != 0)
          {
            [v57 addObject:v69];
            v72 = [NSString stringWithFormat:@"%d", *&self->_estOpticalCenterOffset[4]];
            [v69 setLSTrackID:v72];

            ++*&self->_estOpticalCenterOffset[4];
          }
        }
      }

      v59 = [obja countByEnumeratingWithState:&v102 objects:v101 count:16];
    }

    while (v59);
  }

  v80 = *list;
  *list = v57;
}

- (void)_trackGhosts:(id *)ghosts ghostCandidates:(id *)candidates LSList:(id)list
{
  listCopy = list;
  kdebug_trace();
  if ([(MTLTexture *)self->_inputTexture count]== &dword_0 + 1)
  {
    [(VideoDeghostingDetectionV2 *)self _temporalDetectionCurrentGGList:ghosts rawKeyPointList:candidates LSList:listCopy];
    [(MTLTexture *)self->_inputTexture removeObjectAtIndex:0];
  }

  else
  {
    [(VideoDeghostingDetectionV2 *)self pruneUsingLSRisk:*ghosts];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = *ghosts;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * v13) setTrackID:(*&self->_estOpticalCenter[4])++];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v11);
    }
  }

  [(VDGDetectionUtilsV2 *)self->_detectionUtils generateTrajectoryForROIList:*ghosts isGG:1];
  [(VDGDetectionUtilsV2 *)self->_detectionUtils pruneUsingTrajectoryGGList:*ghosts];
  if (self->_isLocalMotionCueEnabled)
  {
    [(MTLTexture *)self->_inputTexture addObject:*ghosts];
  }

  kdebug_trace();
}

- (void)temporalDetectionCoreCurrentGGList:(id *)list ghostCandidates:(id *)candidates LSList:(id)sList
{
  v146[0] = sList;
  v101 = +[NSMutableArray array];
  v145 = +[NSMutableArray array];
  v7 = [(MTLTexture *)self->_inputTexture count];
  if (v7 >= 1)
  {
    v8 = v7 & 0x7FFFFFFF;
    do
    {
      v102 = v8;
      v9 = v8 - 1;
      v10 = [(MTLTexture *)self->_inputTexture objectAtIndex:v8 - 1];
      v99 = v9;
      LODWORD(v9) = [(MTLTexture *)self->_inputTexture count]- v9;
      v11 = pow(1.1, v9);
      detectionUtils = self->_detectionUtils;
      [(VideoDeghostingDetectionV2 *)self params];
      v13 = v144;
      [(VideoDeghostingDetectionV2 *)self params];
      LODWORD(v14) = v143;
      *&v15 = v9;
      LODWORD(v16) = v13;
      [(VDGDetectionUtilsV2 *)detectionUtils getTemporalDetectionSearchRadiusForReferenceFrameIndex:v15 minSearchRadius:v16 slope:v14];
      v18 = v17;
      v19 = +[NSMutableArray array];
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v20 = v10;
      v21 = [v20 countByEnumeratingWithState:&v139 objects:v138 count:16];
      if (!v21)
      {
        goto LABEL_26;
      }

      v22 = v21;
      v23 = v11;
      v24 = *v140;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v140 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v139 + 1) + 8 * i);
          if (![v26 isReflectedLS])
          {
            v28 = *candidates;
            v29 = *list;
            [(VideoDeghostingDetectionV2 *)self params];
            [(VideoDeghostingDetectionV2 *)self params];
            [(VideoDeghostingDetectionV2 *)self params];
            [(VideoDeghostingDetectionV2 *)self params];
            LODWORD(v30) = v134;
            LODWORD(v31) = v18;
            LODWORD(v32) = v137;
            LODWORD(v33) = v136;
            *&v34 = v135 * v23;
            LODWORD(v35) = 1028443341;
            v27 = [(VideoDeghostingDetectionV2 *)self temporalDetectionPixelFeatureMatchROI:v26 againstROIList:v28 ggList:v29 avoidList:v19 searchRadius:v31 colorContrastDiffThreshold:v32 lumaDiffThreshold:v33 localMotionDiffThreshold:v34 costThreshold:v30 bestCostTolerance:v35];
            v36 = [(VDGDetectionUtilsV2 *)self->_detectionUtils getBestROIInROIList:v27 referenceROI:v26];
            if (v36 && ([v19 containsObject:v36] & 1) == 0)
            {
              [v36 setTemporalDetectionVote:{objc_msgSend(v36, "temporalDetectionVote") + 1}];
              [v19 addObject:v36];
              [v36 setTemporalDetectionMatched:v26];
              if ([*candidates containsObject:v36])
              {
                [(VDGDetectionUtilsV2 *)self->_detectionUtils generateTrajectoryForROI:v36 isGG:1];
                [(VDGDetectionUtilsV2 *)self->_detectionUtils getTrajectoryMatchingCostGG:v36];
                v40 = v39;
                if (v102 == [(MTLTexture *)self->_inputTexture count]&& [(VDGDetectionUtilsV2 *)self->_detectionUtils ghostIsHighConfidence:v26]&& v40 <= 0.3)
                {
                  [v101 addObject:v26];
                  [v36 setTemporalDetectionVote:{objc_msgSend(v36, "temporalDetectionVote") - 1}];
                  [v19 removeObject:v36];
                  [v36 setTemporalDetectionMatched:0];
                }
              }

              else
              {
                v37 = v145;
                v38 = v36;
LABEL_22:
                [v37 addObject:v38];
              }
            }

            else if (v102 == [(MTLTexture *)self->_inputTexture count]&& [(VDGDetectionUtilsV2 *)self->_detectionUtils ghostIsHighConfidence:v26])
            {
              v37 = v101;
              v38 = v26;
              goto LABEL_22;
            }

            goto LABEL_24;
          }

          v27 = [(VideoDeghostingDetectionV2 *)self predictPastReflectedLSInCurrentFrame:v26 currentFrameLSList:v146[0]];
          if (v27)
          {
            [v145 addObject:v27];
          }

LABEL_24:
        }

        v22 = [v20 countByEnumeratingWithState:&v139 objects:v138 count:16];
      }

      while (v22);
LABEL_26:

      v8 = v99;
    }

    while (v102 > 1);
  }

  v133 = [(VideoDeghostingDetectionV2 *)self predictPastROIsInCurrentFrame:v101 currentGGList:*list];
  [(VDGDetectionUtilsV2 *)self->_detectionUtils pruneGGList:&v133 LSBBoxList:v146 reflectedLSBBoxList:*&self->_reflectedDilatedLs[4] getMatchedLS:1 pruneLS:0 pruneGG:1];
  [(VDGDetectionUtilsV2 *)self->_detectionUtils pruneGGList:&v145 LSBBoxList:v146 reflectedLSBBoxList:*&self->_reflectedDilatedLs[4] getMatchedLS:1 pruneLS:0 pruneGG:1];
  v41 = +[NSMutableArray array];
  [v41 addObjectsFromArray:v145];
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  v42 = *candidates;
  v43 = [v42 countByEnumeratingWithState:&v129 objects:v128 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v130;
    do
    {
      for (j = 0; j != v44; j = j + 1)
      {
        if (*v130 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v129 + 1) + 8 * j);
        temporalDetectionVote = [v47 temporalDetectionVote];
        [(VideoDeghostingDetectionV2 *)self params];
        if (temporalDetectionVote >= v127)
        {
          [v41 addObject:v47];
          temporalDetectionMatched = [v47 temporalDetectionMatched];
          if (temporalDetectionMatched)
          {
            [v47 setIsTracked:1];
            [v47 setTrackID:{objc_msgSend(temporalDetectionMatched, "trackID")}];
            [v47 setIsTrajectoryPruningPassed:{objc_msgSend(temporalDetectionMatched, "isTrajectoryPruningPassed")}];
            [v47 setTrackedCnt:{objc_msgSend(temporalDetectionMatched, "trackedCnt") + 1}];
          }

          else
          {
            [v47 setIsTracked:0];
            [v47 setTrackID:(*&self->_estOpticalCenter[4])++];
          }
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v129 objects:v128 count:16];
    }

    while (v44);
  }

  v50 = v41;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  obj = v133;
  v51 = [obj countByEnumeratingWithState:&v123 objects:v122 count:16];
  v100 = v50;
  if (v51)
  {
    v52 = v51;
    v53 = *v124;
    v95 = 0.999;
    do
    {
      for (k = 0; k != v52; k = k + 1)
      {
        if (*v124 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v123 + 1) + 8 * k);
        if ([v55 isReflectedLS])
        {
          goto LABEL_60;
        }

        [v55 bbox];
        v103 = v56;
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v57 = v50;
        v58 = [v57 countByEnumeratingWithState:&v118 objects:v117 count:16];
        if (!v58)
        {

LABEL_59:
          if ([v57 containsObject:v55])
          {
            continue;
          }

LABEL_60:
          [v50 addObject:v55];
          continue;
        }

        v59 = v58;
        v60 = *v119;
        v61 = vmuls_lane_f32(v103.f32[3], v103, 2);
        v62 = 0.0;
        do
        {
          for (m = 0; m != v59; m = m + 1)
          {
            if (*v119 != v60)
            {
              objc_enumerationMutation(v57);
            }

            v64 = *(*(&v118 + 1) + 8 * m);
            if (([v64 isReflectedLS] & 1) == 0)
            {
              [v64 bbox];
              v151.origin.x = v65;
              v151.origin.y = v66;
              v151.size.width = v67;
              v151.size.height = v68;
              v147.origin.x = v103.f32[0];
              v147.origin.y = v103.f32[1];
              v147.size.width = v103.f32[2];
              v147.size.height = v103.f32[3];
              v148 = CGRectIntersection(v147, v151);
              width = v148.size.width;
              height = v148.size.height;
              if (!CGRectIsNull(v148))
              {
                v71 = width * height / v61;
                if (v71 >= v62)
                {
                  v62 = v71;
                }
              }
            }
          }

          v59 = [v57 countByEnumeratingWithState:&v118 objects:v117 count:16];
        }

        while (v59);

        v50 = v100;
        if (v62 < v95)
        {
          goto LABEL_59;
        }
      }

      v52 = [obj countByEnumeratingWithState:&v123 objects:v122 count:16];
    }

    while (v52);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obja = *list;
  v72 = [obja countByEnumeratingWithState:&v113 objects:v112 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v114;
    v96 = 0.999;
    do
    {
      for (n = 0; n != v73; n = n + 1)
      {
        if (*v114 != v74)
        {
          objc_enumerationMutation(obja);
        }

        v76 = *(*(&v113 + 1) + 8 * n);
        temporalDetectionVote2 = [v76 temporalDetectionVote];
        [(VideoDeghostingDetectionV2 *)self params];
        if (temporalDetectionVote2 < v111)
        {
          [v76 bbox];
          v104 = v78;
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v79 = v50;
          v80 = [v79 countByEnumeratingWithState:&v107 objects:v106 count:16];
          if (!v80)
          {

LABEL_83:
            if (([v79 containsObject:v76] & 1) == 0)
            {
              [v76 setIsTracked:0];
              [v76 setTrackID:(*&self->_estOpticalCenter[4])++];
              [v79 addObject:v76];
            }

            continue;
          }

          v81 = v80;
          v82 = *v108;
          v83 = vmuls_lane_f32(v104.f32[3], v104, 2);
          v84 = 0.0;
          do
          {
            for (ii = 0; ii != v81; ii = ii + 1)
            {
              if (*v108 != v82)
              {
                objc_enumerationMutation(v79);
              }

              v86 = *(*(&v107 + 1) + 8 * ii);
              if (([v86 isReflectedLS] & 1) == 0)
              {
                [v86 bbox];
                v152.origin.x = v87;
                v152.origin.y = v88;
                v152.size.width = v89;
                v152.size.height = v90;
                v149.origin.x = v104.f32[0];
                v149.origin.y = v104.f32[1];
                v149.size.width = v104.f32[2];
                v149.size.height = v104.f32[3];
                v150 = CGRectIntersection(v149, v152);
                v91 = v150.size.width;
                v92 = v150.size.height;
                if (!CGRectIsNull(v150))
                {
                  v93 = v91 * v92 / v83;
                  if (v93 >= v84)
                  {
                    v84 = v93;
                  }
                }
              }
            }

            v81 = [v79 countByEnumeratingWithState:&v107 objects:v106 count:16];
          }

          while (v81);

          v50 = v100;
          if (v84 < v96)
          {
            goto LABEL_83;
          }
        }
      }

      v73 = [obja countByEnumeratingWithState:&v113 objects:v112 count:16];
    }

    while (v73);
  }

  [(VDGDetectionUtilsV2 *)self->_detectionUtils removeDuplicateRois:v50];
  v94 = *list;
  *list = v50;
}

- (id)extractLightSourceBBoxFromBuffer:(VideoDeghostingDetectionV2 *)self BoxCount:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v6 = +[NSMutableArray array];
  if (v5)
  {
    if (v4 >= 1)
    {
      do
      {
        v7 = [ROI alloc];
        v8 = *v5++;
        v9 = [(ROI *)v7 initWithBbox:*&v8];
        [v6 addObject:v9];

        --v4;
      }

      while (v4);
    }
  }

  else
  {
    sub_21E88();
  }

  return v6;
}

- ($BEDB99FD0828BB334BE1A07B64442EB9)configuration
{
  v3 = *&self[39].var0.var7;
  *&retstr->var0.var0 = *&self[39].var0.var0;
  *&retstr->var0.var7 = v3;
  v4 = *&self[39].var1.var4;
  *&retstr->var1.var0 = *&self[39].var1.var0;
  *&retstr->var1.var4 = v4;
  return self;
}

- (void)setConfiguration:(id *)configuration
{
  v3 = *&configuration->var0.var0;
  v4 = *&configuration->var0.var7;
  v5 = *&configuration->var1.var0;
  *&self->_params.lightSourceGatingThresholdON = *&configuration->var1.var4;
  *&self->_configuration.externalCfg.frameDelay = v5;
  *&self->_configuration.externalCfg.lightMode = v4;
  *&self->_configuration.internalCfg.enableColorMask = v3;
}

- (VideoDeghostingDetectionV2)initWithMetalToolBox:(id)box config:(id *)config tuningParamDict:(id)dict imageDimensions:(id)dimensions
{
  boxCopy = box;
  dictCopy = dict;
  v42.receiver = self;
  v42.super_class = VideoDeghostingDetectionV2;
  v12 = [(VideoDeghostingDetectionV2 *)&v42 init];
  if (v12)
  {
    v13 = boxCopy ? boxCopy : objc_alloc_init(GGMMetalToolBox);
    v14 = *(v12 + 2);
    *(v12 + 2) = v13;

    v15 = *&config->var0.var0;
    v16 = *&config->var0.var7;
    v17 = *&config->var1.var0;
    *(v12 + 159) = *&config->var1.var4;
    *(v12 + 158) = v17;
    *(v12 + 157) = v16;
    *(v12 + 156) = v15;
    v18 = [[CalcHomography alloc] initWithMetalToolBox:*(v12 + 2)];
    v19 = *(v12 + 4);
    *(v12 + 4) = v18;

    [v12 _initParamsWithTuningParamsDict:dictCopy isLowLight:config->var1.var0 == 1];
    *(v12 + 64) = dimensions;
    *(v12 + 298) = 0x100000001;
    *(v12 + 598) = 1;
    v12[2368] = 0;
    *(v12 + 593) = 0;
    *(v12 + 301) = 0;
    *(v12 + 297) = 0;
    v20 = [[MaskToRoi alloc] initWithMetalToolBox:*(v12 + 2)];
    v21 = *(v12 + 5);
    *(v12 + 5) = v20;

    2560 = [[VDGDetectionUtilsV2 alloc] initWithMetalToolBox:*(v12 + 2) configuration:config tuningParams:v12 + 2560];
    v23 = *(v12 + 1);
    *(v12 + 1) = 2560;

    v24 = +[NSMutableArray array];
    v25 = *(v12 + 58);
    *(v12 + 58) = v24;

    [v12 _resetIntermediateVariables];
    [v12 _allocateLightSourceBuffers:256];
    v26 = malloc_type_malloc(0x4000uLL, 0x1000040451B5BE8uLL);
    *(v12 + 272) = v26;
    if (v26)
    {
      v27 = [[RepairWeightsGenerator alloc] initWithConfiguration:config withToolBox:*(v12 + 2) homographyHandle:*(v12 + 4) imageDimensions:dimensions];
      v28 = *(v12 + 295);
      *(v12 + 295) = v27;

      v29 = *(v12 + 642);
      if (v29 >= 1024)
      {
        v29 = 1024;
      }

      if (v29 <= 25)
      {
        v29 = 25;
      }

      if (*(v12 + 643) >= 1024)
      {
        v30 = 1024;
      }

      else
      {
        v30 = *(v12 + 643);
      }

      if (v30 <= 25)
      {
        v30 = 25;
      }

      v31 = v30 + v29;
      *(v12 + 548) = v31;
      *(v12 + 547) = 36 * v31;
      *(v12 + 546) = 73 * v31 + 10240;
      if ([v12 _allocateMetalBuffers])
      {
        goto LABEL_24;
      }

      *(v12 + 2369) = 257;
      v12[2371] = 1;
      v32 = 520;
      while (1)
      {
        v33 = [NSMutableData dataWithLength:9544];
        v34 = *&v12[v32 + 800];
        *&v12[v32 + 800] = v33;

        if (!*&v12[v32 + 800])
        {
          break;
        }

        getDevice = [*(v12 + 2) getDevice];
        v36 = [getDevice newBufferWithBytesNoCopy:objc_msgSend(*&v12[v32 + 800] length:"mutableBytes") options:9544 deallocator:{0, 0}];
        v37 = *&v12[v32];
        *&v12[v32] = v36;

        if (!*&v12[v32])
        {
          break;
        }

        v32 += 8;
        if (v32 == 1320)
        {
          *(v12 + 265) = 0;
          v38 = *(v12 + 654) + *(v12 + 652);
          *(v12 + 294) = v38;
          v39 = malloc_type_malloc(4 * v38 * v38, 0x100004052888210uLL);
          *(v12 + 293) = v39;
          if (!v39)
          {
            break;
          }

          v40 = v12;
          goto LABEL_22;
        }
      }
    }
  }

  fig_log_get_emitter();
  sub_B550();
  FigDebugAssert3();
LABEL_24:
  v40 = 0;
LABEL_22:

  return v40;
}

- (void)_ghostDetectionWithInputPixelBuffer:(__CVBuffer *)buffer reflectedLSMaskOri:(__CVBuffer *)ori lowLight:(BOOL)light opticalCenterFromMetaData:(__CVBuffer *)data simKeyPoint:(__CVBuffer *)point simLightSourceMask:(id)mask metaData:(id *)metaData futureFrames:
{
  v11 = v9;
  maskCopy = mask;
  v177 = 0;
  v178[0] = 0;
  v15 = +[NSMutableArray array];
  v176 = +[NSMutableArray array];
  +[NSMutableArray array];
  v175 = v174 = 0;
  bzero(v172, 0x200uLL);
  if ([(VideoDeghostingDetectionV2 *)self _detectionInit:buffer metaData:maskCopy futureFrames:metaData])
  {
    goto LABEL_105;
  }

  metalContext = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  commandQueue = [metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  v127 = commandBuffer;
  if (!commandBuffer)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    sub_B598();
    FigSignalErrorAtGM();
LABEL_105:
    v119 = 0;
    goto LABEL_102;
  }

  v19 = BYTE1(self->_trackID);
  trackID_high = HIBYTE(self->_trackID);
  v21 = [maskCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_LuxLevel];
  intValue = [v21 intValue];

  v23 = [(VideoDeghostingDetectionV2 *)self _shouldRunGGDetectionLuxLevelBased:intValue];
  v24 = v23;
  v25 = 0;
  if (data && point)
  {
    dataCopy = data;
    v26 = 0;
    v27 = 0;
    obj = 0;
    if (v23)
    {
      v28 = [maskCopy objectForKeyedSubscript:@"IspScalerInfo"];
      v25 = v28;
      if (v28 && [v28 length] == &stru_1F8.reserved2)
      {
        [v25 getBytes:v172 length:576];
        v171 = 0u;
        v170 = 0u;
        v169 = 0u;
        [(VDGDetectionUtilsV2 *)self->_detectionUtils setSimParams:&v169 withMetaData:maskCopy];
        *&v29 = (*&v169 * v173) * *(&v169 + 1);
        if ([(VideoDeghostingDetectionV2 *)self _shouldRunGGDetectionClippedPixelBased:v29])
        {
          v125 = v24;
          v124 = v25;
          if (BYTE1(self->_trackID) == 1 && (self->_trackID & 0x1000000) != 0 && self->_isPrevLSFeaturesAvailable && (self->_trackID & 0x10000) != 0 || ![(NSMutableArray *)self->_prevLSLists count])
          {
            goto LABEL_21;
          }

          detectionUtils = self->_detectionUtils;
          v31 = [(NSMutableArray *)self->_prevLSLists count];
          if (v31)
          {
            lastObject = [(NSMutableArray *)self->_prevLSLists lastObject];
          }

          else
          {
            lastObject = &__NSArray0__struct;
          }

          v179 = __invert_f3(*&self->_hmgrphyTMinus1ToT.confidence);
          [(VDGDetectionUtilsV2 *)detectionUtils generateBoxesForDoGAndLumaAndForPrevLSROIs:lastObject homography:&self->_metalBuffers.desGenGhostIdxBuf metalBuffers:LODWORD(self->_metalBuffers.reflectedLsBboxListBuf) maxBufferLength:*v179.columns[0].i64, *v179.columns[1].i64, *v179.columns[2].i64];
          if (v31)
          {
          }

          if (!*[*&self->_metalBuffers.tinyGhostInputLocationsBufLen contents])
          {
LABEL_21:
            v33 = 0;
          }

          else
          {
            -[GGMMetalToolBox computeDoGAndLumaForBoxesViaInput:inputLocationsSize:metalBuffers:commandBuffer:](self->_metalToolBox, "computeDoGAndLumaForBoxesViaInput:inputLocationsSize:metalBuffers:commandBuffer:", self->_frameTMinus1Texture, *[*&self->_metalBuffers.tinyGhostInputLocationsBufLen contents], &self->_metalBuffers.desGenGhostIdxBuf, v127);
            v33 = 1;
          }

          LODWORD(self->_estimatedOpticalCenter.x) = 1058642330;
          [(MTLTexture *)self->_inputTexture lastObject];
          v165 = 0u;
          v166 = 0u;
          v167 = 0u;
          v34 = v168 = 0u;
          v35 = [v34 countByEnumeratingWithState:&v165 objects:v164 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v166;
            do
            {
              for (i = 0; i != v36; i = i + 1)
              {
                sub_B5E4(v166);
                if (!v39)
                {
                  objc_enumerationMutation(v34);
                }

                v40 = *(*(&v165 + 1) + 8 * i);
                if ([(VDGDetectionUtilsV2 *)self->_detectionUtils ghostIsHighConfidence:v40])
                {
                  [v15 addObject:v40];
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v165 objects:v164 count:16];
            }

            while (v36);
          }

          [(VideoDeghostingDetectionV2 *)self _updateEstOpticalCenterUsingPrevDetectedGhosts:v15 currentDefaultOpticalCenter:v11];
          if ([(VideoDeghostingDetectionV2 *)self estOpticalCenterConsecutiveValidFrameCnt]>= 3)
          {
            [(VideoDeghostingDetectionV2 *)self setEstOpticalCenterIsAvailable:1];
          }

          [(VideoDeghostingDetectionV2 *)self setPrevDefaultOpticalCenter:v11];
          sub_B578();
          LODWORD(v41) = self->_params.maxAllowedOpticalCenterOffset;
          v42 = [(MaskToRoi *)self->_maskToRoi extractRoiByGraphTraversalInput:point bboxSizeThreshold:&v169 scaleFactorInv:DWORD2(v171) validWidth:HIDWORD(v171) validHeight:*&self->_tinyKeypointLocationCountMax lightSourceBBox:v41];
          self->_LSROIs = v42;
          sub_B578();
          v43 = [(VideoDeghostingDetectionV2 *)self _shouldRunGGDetectionLSBased:v42];
          if ((v43 & 1) == 0 && ((v33 ^ 1) & 1) == 0)
          {
            [v127 waitUntilCompleted];
          }

          v123 = v34;
          if (v43)
          {
            v120 = v33;
            v121 = v15;
            v122 = maskCopy;
            v44 = [(VideoDeghostingDetectionV2 *)self extractLightSourceBBoxFromBuffer:*&self->_tinyKeypointLocationCountMax BoxCount:v42];
            v45 = v175;
            v175 = v44;

            bzero(__dst, 0x90uLL);
            v162 = 0u;
            v161 = 0u;
            v160 = 0u;
            v159 = 0u;
            v46 = v175;
            v47 = [v46 countByEnumeratingWithState:&v159 objects:v158 count:16];
            if (v47)
            {
              v48 = v47;
              v49 = *v160;
              v50 = vneg_f32(0x7F0000007FLL);
              do
              {
                for (j = 0; j != v48; j = j + 1)
                {
                  if (*v160 != v49)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v52 = *(*(&v159 + 1) + 8 * j);
                  [v52 setDoneKPToBBoxViaGraphTraversal:1];
                  [v52 bbox];
                  v130 = vaddq_f32(v53, xmmword_2DDC0);
                  [v52 setBbox:?];
                  *&v54 = vmuls_lane_f32(v130.f32[2], v130, 3);
                  [v52 setArea:v54];
                  [v52 generateLocationFromBBox];
                  if (v52)
                  {
                    [v52 descriptor];
                  }

                  else
                  {
                    bzero(__src, 0xA0uLL);
                  }

                  memcpy(__dst, __src, sizeof(__dst));
                  memcpy(__src, __dst, sizeof(__src));
                  v156 = v50;
                  v157 = v50;
                  [v52 setDescriptor:__src];
                  [v52 setTrackFail:0];
                  [v52 setDefaultOpticalCenter:v11];
                  [v52 bbox];
                  v131 = v55;
                  [v52 bbox];
                  v132 = vmla_f32(v131, 0x3F0000003F000000, *&vextq_s8(v56, v56, 8uLL));
                  *&v57 = sub_B5B0(vsub_f32(*&self->_prevDefaultOpticalCenter[4], v132));
                  [v52 setDist2opticalCenter:v57];
                  LODWORD(v58) = 2139095040;
                  [v52 setDist2ghost:v58];
                  v153 = 0u;
                  v154 = 0u;
                  v151 = 0u;
                  v152 = 0u;
                  lastObject2 = [(MTLTexture *)self->_inputTexture lastObject];
                  v60 = [lastObject2 countByEnumeratingWithState:&v151 objects:v150 count:16];
                  if (v60)
                  {
                    v61 = v60;
                    v62 = *v152;
                    do
                    {
                      for (k = 0; k != v61; k = k + 1)
                      {
                        sub_B5E4(v152);
                        if (!v39)
                        {
                          objc_enumerationMutation(lastObject2);
                        }

                        [*(*(&v151 + 1) + 8 * k) getReflectedBboxCenterAroundCenter:*&self->_prevDefaultOpticalCenter[4]];
                        v65 = v64;
                        [v52 dist2ghost];
                        v66 = sub_B5B0(vsub_f32(v132, v65));
                        if (v67 < v66)
                        {
                          [v52 dist2ghost];
                        }

                        [v52 setDist2ghost:?];
                      }

                      v61 = [lastObject2 countByEnumeratingWithState:&v151 objects:v150 count:16];
                    }

                    while (v61);
                  }
                }

                v48 = [v46 countByEnumeratingWithState:&v159 objects:v158 count:16];
              }

              while (v48);
            }

            v68 = sub_B5D8();
            lightSourceBoxSizeThreshold_low = SLOWORD(self->_params.lightSourceBoxSizeThreshold);
            [v68 getTopLSInList:5.62950094e14 k:? dist2ghostTol:?];
            if (v120)
            {
              [v127 waitUntilCompleted];
            }

            self->_isPrevLSFeaturesAvailable = [(VDGDetectionUtilsV2 *)self->_detectionUtils updatePrevLSDoGAndLumaFeaturesWithMetalBuffers:&self->_metalBuffers.desGenGhostIdxBuf];
            sub_B578();
            [(VideoDeghostingDetectionV2 *)self _trackLightSources:&v175];
            v70 = [(VideoDeghostingDetectionV2 *)self deepCopyROIList:v175 copyReferencedROI:0];
            v71 = *&self->_configuration.internalCfg.antiFlareSize;
            *&self->_configuration.internalCfg.antiFlareSize = v70;

            -[VideoDeghostingDetectionV2 setPrevFrameAllLSCnt:](self, "setPrevFrameAllLSCnt:", [v175 count]);
            [(VideoDeghostingDetectionV2 *)self getDilationCoefsAndReflectedDilatedLsList:v175];
            sub_B578();
            if (self->_localMotionReferenceTexture)
            {
              v72 = self->_detectionUtils;
              v73 = [(NSMutableArray *)self->_prevLSLists count];
              if (v73)
              {
                lastObject3 = [(NSMutableArray *)self->_prevLSLists lastObject];
              }

              else
              {
                lastObject3 = &__NSArray0__struct;
              }

              v180 = __invert_f3(*&self->_hmgrphyTToTPlus1.confidence);
              [(VDGDetectionUtilsV2 *)v72 generateBoxesForDoGAndLumaAndForPrevLSROIs:lastObject3 homography:&self->_metalBuffers.desGenGhostIdxBuf metalBuffers:LODWORD(self->_metalBuffers.desGenMappingInfoBuf) maxBufferLength:*v180.columns[0].i64, *v180.columns[1].i64, *v180.columns[2].i64];
              if (v73)
              {
              }
            }

            v75 = self->_detectionUtils;
            v76 = v175;
            v77 = [(MTLTexture *)self->_inputTexture count];
            if (v77)
            {
              lastObject4 = [(MTLTexture *)self->_inputTexture lastObject];
            }

            else
            {
              lastObject4 = &__NSArray0__struct;
            }

            [(VDGDetectionUtilsV2 *)v75 generateBoxesForDoGAndLumaAndForLSROIs:v76 prevGGROIs:lastObject4 inputTexture:self->_frameTMinus1Texture opticalCenter:&self->_metalBuffers.desGenGhostIdxBuf metalBuffers:LODWORD(self->_metalBuffers.reflectedLsBboxListBuf) maxBufferLength:*&self->_prevDefaultOpticalCenter[4]];
            if (v77)
            {
            }

            saturationLowerThreshold_low = LODWORD(self->_params.colorScore.saturationLowerThreshold);
            hueThreshold_low = LODWORD(self->_params.colorScore.hueThreshold);
            __src[0] = v169;
            __src[1] = v170;
            __src[2] = v171;
            v81 = [(VideoDeghostingDetectionV2 *)self _ghostCandidateGenerationViaKeypointBuffer:dataCopy opticalCenterFromMetaData:__src mappingInfo:&v176 GGList:&v175 LSList:saturationLowerThreshold_low kpCntHardGatingTh:hueThreshold_low kpCntSoftGatingTh:v11];
            v82 = v174;
            v174 = v81;

            [(VDGDetectionUtilsV2 *)self->_detectionUtils updateDoGAndLumaFeaturesWithMetalBuffers:&self->_metalBuffers.desGenGhostIdxBuf];
            [(VideoDeghostingDetectionV2 *)self _trackGhosts:&v176 ghostCandidates:&v174 LSList:v175];
            [(VDGDetectionUtilsV2 *)self->_detectionUtils getTopGhostsInList:v176 k:SLOWORD(self->_params.colorScore.hueLowerRange) opticalCenter:LODWORD(self->_params.colorScore.hueUpperRange) ghostCntGatingTh:*&self->_prevDefaultOpticalCenter[4]];
            [v176 count];
            [sub_B5D8() clearReferencedROIsForROIList:?];
            [(VDGDetectionUtilsV2 *)self->_detectionUtils clearReferencedROIsForROIList:v176];
            sub_B578();
            v83 = [(VideoDeghostingDetectionV2 *)self deepCopyROIList:v176 copyReferencedROI:0];
            prevFrameMergedGhosts = [(VideoDeghostingDetectionV2 *)self prevFrameMergedGhosts];
            v85 = [(VideoDeghostingDetectionV2 *)self _mergeBboxesWithTrackingForMitigation:v83 prevFrameGhostList:prevFrameMergedGhosts];

            if ((v85 & 1) == 0)
            {
              [v83 removeAllObjects];
              [v176 removeAllObjects];
              prevFrameMergedGhosts2 = [(VideoDeghostingDetectionV2 *)self prevFrameMergedGhosts];
              [prevFrameMergedGhosts2 removeAllObjects];
            }

            if (self->_isLocalMotionCueEnabled)
            {
              [(VideoDeghostingDetectionV2 *)self setPrevFrameMergedGhosts:v83];
              if (*self->_estOpticalCenterOffset == 1)
              {
                *self->_estOpticalCenterOffset = *&self->_estOpticalCenter[4];
              }
            }

            obj = v83;
            v148 = 0u;
            v149 = 0u;
            v146 = 0u;
            v147 = 0u;
            v87 = v175;
            v88 = [v87 countByEnumeratingWithState:&v146 objects:v145 count:16];
            if (v88)
            {
              v89 = v88;
              v90 = *v147;
              do
              {
                for (m = 0; m != v89; m = m + 1)
                {
                  if (*v147 != v90)
                  {
                    objc_enumerationMutation(v87);
                  }

                  v92 = *(*(&v146 + 1) + 8 * m);
                  [v92 bbox];
                  v133 = v93;
                  [v92 bbox];
                  v134 = vmla_f32(v133, 0x3F0000003F000000, *&vextq_s8(v94, v94, 8uLL));
                  *&v95 = sub_B5B0(vsub_f32(*&self->_prevDefaultOpticalCenter[4], v134));
                  [v92 setDist2opticalCenter:v95];
                  LODWORD(v96) = 2139095040;
                  [v92 setDist2ghost:v96];
                  v143 = 0u;
                  v144 = 0u;
                  v141 = 0u;
                  v142 = 0u;
                  v97 = v176;
                  v98 = [v97 countByEnumeratingWithState:&v141 objects:v140 count:16];
                  if (v98)
                  {
                    v99 = v98;
                    v100 = *v142;
                    do
                    {
                      for (n = 0; n != v99; n = n + 1)
                      {
                        sub_B5E4(v142);
                        if (!v39)
                        {
                          objc_enumerationMutation(v97);
                        }

                        [*(*(&v141 + 1) + 8 * n) getReflectedBboxCenterAroundCenter:*&self->_prevDefaultOpticalCenter[4]];
                        v103 = v102;
                        [v92 dist2ghost];
                        v104 = sub_B5B0(vsub_f32(v134, v103));
                        if (v105 < v104)
                        {
                          [v92 dist2ghost];
                        }

                        [v92 setDist2ghost:?];
                      }

                      v99 = [v97 countByEnumeratingWithState:&v141 objects:v140 count:16];
                    }

                    while (v99);
                  }
                }

                v89 = [v87 countByEnumeratingWithState:&v146 objects:v145 count:16];
              }

              while (v89);
            }

            v106 = sub_B5D8();
            searchRangeBase_low = SLOWORD(self->_params.searchRangeBase);
            LODWORD(v108) = 16.0;
            [v106 getTopLSInList:v108 k:? dist2ghostTol:?];
            objc_storeStrong(&self->_reflectedLSROIs, obj);
            objc_storeStrong(&self->_rawDesGenKeyPoints, v175);
            v109 = [v175 mutableCopy];
            v110 = v178[0];
            v178[0] = v109;

            v111 = [v176 mutableCopy];
            v112 = v177;
            v177 = v111;

            v27 = +[NSMutableArray array];
            v136 = 0u;
            v137 = 0u;
            v138 = 0u;
            v139 = 0u;
            v113 = v111;
            v114 = [v113 countByEnumeratingWithState:&v136 objects:v135 count:16];
            v15 = v121;
            maskCopy = v122;
            if (v114)
            {
              v115 = v114;
              v116 = *v137;
              do
              {
                for (ii = 0; ii != v115; ii = ii + 1)
                {
                  sub_B5E4(v137);
                  if (!v39)
                  {
                    objc_enumerationMutation(v113);
                  }

                  v118 = *(*(&v136 + 1) + 8 * ii);
                  if ([v118 isReflectedLS])
                  {
                    [v27 addObject:v118];
                  }
                }

                v115 = [v113 countByEnumeratingWithState:&v136 objects:v135 count:16];
              }

              while (v115);
            }

            [v113 removeObjectsInArray:v27];
            trackID_high = 1;
            [(VDGDetectionUtilsV2 *)self->_detectionUtils pruneGGList:&v177 LSBBoxList:v178 reflectedLSBBoxList:*&self->_reflectedDilatedLsForTracking[4] getMatchedLS:0 pruneLS:1 pruneGG:0];
            -[VideoDeghostingDetectionV2 setPrevFrameMatchedLSCnt:](self, "setPrevFrameMatchedLSCnt:", [v178[0] count]);
            [sub_B5D8() pruneLSBasedOnDist2Ghost:?];
            v19 = 1;
          }

          else
          {
            v19 = 0;
            v27 = 0;
            obj = 0;
            trackID_high = 1;
          }

          v24 = v125;
          v26 = v123;
          v25 = v124;
          goto LABEL_101;
        }

        trackID_high = 0;
      }

      else
      {
        fig_log_get_emitter();
        sub_B568();
        FigDebugAssert3();
      }

      v26 = 0;
      v27 = 0;
      obj = 0;
    }
  }

  else
  {
    v26 = 0;
    v27 = 0;
    obj = 0;
  }

LABEL_101:
  BYTE1(self->_trackID) = v19;
  BYTE2(self->_trackID) = v24;
  HIBYTE(self->_trackID) = trackID_high;
  sub_B578();

  v119 = obj;
LABEL_102:
}

@end