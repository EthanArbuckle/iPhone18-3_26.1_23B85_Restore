@interface GGMMetalToolBox
- ($2224E03E88B63C417DE187803C830EFF)updateMetaContainerBuffer:(GGMMetalToolBox *)self withDetectedROI:isLowLight:opticalCenter:ispBaseOpticalCenter:opticalCenterEstConf:frameDim:lightSourceMaskTotalArea:;
- ($C9C5C94DDF9C26A2911411CB3E980404)generateMetaContainerArrayBufFromMetaContainerBuf:(id)a3 imageRect:(CGRect)a4;
- (GGMMetalToolBox)initWithMetalContext:(id)a3;
- (GGMMetalToolBox)initWithMetalContext:(id)a3 tuningParamDict:(id)a4;
- (id)clusterIndicesOfRois:(id *)a3 withExtendedRadius:(float)a4 roiCnt:(signed __int16)a5 imageRect:(CGRect)a6;
- (id)clusterTheGreenGhostRois:(id)a3 withExtendedRadius:(float)a4 imageRect:(CGRect)a5;
- (int)_compileShaders;
- (uint64_t)_compileShaders;
- (void)dealloc;
- (void)encodeBMSearch1RefToCommandEncoder:(id)a3 target:(id)a4 ref:(id)a5 meta:(id)a6;
- (void)encodeBMTransferGrayMultiRefsLowLightToCommandEncoder:(id)a3 ref0:(id)a4 ref1:(id)a5 ref2:(id)a6 ref3:(id)a7 warpedRef0:(id)a8 warpedRef1:(id)a9 warpedRef2:(id)a10 warpedRef3:(id)a11 meta:(id)a12;
- (void)encodeBMTransferGrayToCommandEncoder:(id)a3 ref:(id)a4 warpedRef:(id)a5 meta:(id)a6;
- (void)encodeBMTransferYUVToCommandEncoder:(id)a3 ref:(id)a4 warpedRef:(id)a5 meta:(id)a6;
- (void)encodeCollectClusterMaxAndAvgLuma:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (void)encodeCollectClusterMaxProb:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (void)encodeCollectClusterMv:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (void)encodeCollectClusterOpticalCenterEstStats:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (void)encodeCollectClusterTempRepairErr:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (void)encodeCollectMetaContainers:(id)a3 metaBuf:(id)a4 lsCheckOutmetaBuf:(id)a5 redoTrackingOutmetaBuf:(id)a6 doLite:(BOOL)a7 roiAvoidList:(id)a8;
- (void)encodeCollectMvToFuture:(id)a3 metaBuf:(id)a4;
- (void)encodeCombineMapWithRefMapLiteToEncoder:(id)a3 probMap:(id)a4 spatialProbMap:(id)a5 probMapRepairRef0:(id)a6 probMapRepairRef1:(id)a7 meta:(id)a8;
- (void)encodeCombineMapWithRefMapToEncoder:(id)a3 ref:(id)a4 dilatedRef:(id)a5 lsMap:(id)a6 dilatedLsMap:(id)a7 refLsMap:(id)a8 targetFrameYUV:(id)a9 spaRef:(id)a10 dilatedSpatialRef:(id)a11 motionRef:(id)a12 motionTarget:(id)a13 probMapRepairRef0:(id)a14 probMapRepairRef1:(id)a15 output:(id)a16 spaOutput:(id)a17 meta:(id)a18;
- (void)encodeConditionalDilate2ProbMapsYUVHardR2SoftR2Simd:(id)a3 inputYUV:(id)a4 probMap0:(id)a5 probMap1:(id)a6 dilatedProbMap0:(id)a7 dilatedProbMap1:(id)a8 meta:(id)a9;
- (void)encodeConditionalDilateProbMapYUV:(id)a3 inputYUV:(id)a4 probMap:(id)a5 dilatedProbMap:(id)a6 hardDilationRadius:(signed __int16)a7 softDilationRadius:(signed __int16)a8 meta:(id)a9;
- (void)encodeCopyInput4DetectionYUVToCommandEncoder:(id)a3 inputTexture:(id)a4 outputTexture:(id)a5 metaBuf:(id)a6;
- (void)encodeDilate2ProbMaps:(id)a3 input0:(id)a4 input1:(id)a5 output0:(id)a6 output1:(id)a7 hardDilationRadius:(signed __int16)a8 softDilationRadius:(signed __int16)a9 meta:(id)a10;
- (void)encodeDilate3ProbMapsHardR2SoftR2:(id)a3 input0:(id)a4 input1:(id)a5 input2:(id)a6 output0:(id)a7 output1:(id)a8 output2:(id)a9 meta:(id)a10;
- (void)encodeDilateGrayImg:(id)a3 input:(id)a4 output:(id)a5 hardDilationRadius:(float)a6 softDilationRadius:(float)a7 meta:(id)a8;
- (void)encodeDilateProbMap:(id)a3 input:(id)a4 output:(id)a5 hardDilationRadius:(signed __int16)a6 softDilationRadius:(signed __int16)a7 meta:(id)a8;
- (void)encodeDilateReflLsMap:(id)a3 lsMap:(id)a4 dilatedLsMap:(id)a5 hardDilationRadius:(signed __int16)a6 softDilationRadius:(signed __int16)a7 meta:(id)a8;
- (void)encodeFuse4DetectionYUVToCommandEncoder:(id)a3 inputTexture:(id)a4 probMapTexture:(id)a5 probMap4SpatialTexture:(id)a6 temporalMitTexture:(id)a7 hwSimTemporalMitTexture:(id)a8 spatialMitTexture:(id)a9 trOutputTexture:(id)a10 hwSimOutputTexture:(id)a11 metaBuf:(id)a12;
- (void)encodeFuseSpatialOnly4DetectionYUVToCommandEncoder:(id)a3 inputTexture:(id)a4 probMapTexture:(id)a5 probMap4SpatialTexture:(id)a6 temporalMitTexture:(id)a7 spatialMitTexture:(id)a8 outputTexture:(id)a9 metaBuf:(id)a10;
- (void)encodeGetBlobSaliency:(id)a3 inputYUV:(id)a4 blobSaliencyMap:(id)a5 meta:(id)a6;
- (void)encodeGetGhostProbMapToCommandEncoder:(id)a3 target:(id)a4 reflLsMap:(id)a5 motionMap:(id)a6 saliencyMap:(id)a7 isInitFrame:(BOOL)a8 probMap:(id)a9 meta:(id)a10;
- (void)encodeGetMotionMapYUVToCommandEncoder:(id)a3 ref:(id)a4 target:(id)a5 motionMap:(id)a6 meta:(id)a7;
- (void)encodeGetMvFromLsToCommandEncoder:(GGMMetalToolBox *)self target:(SEL)a2 lsMap:(id)a3 refLsMap:(id)a4 targetCenter:(id)a5 refCenter:(id)a6 meta:(id)a7;
- (void)encodeGetRoiMaxAndAvgLumaYUV:(id)a3 target:(id)a4 lsMap:(id)a5 meta:(id)a6;
- (void)encodeGetSaliencyMapToCommandEncoder:(id)a3 target:(id)a4 saliencyMap:(id)a5 meta:(id)a6;
- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:(id)a3 target:(id)a4 hwSimTempRepaired:(id)a5 hwSimTempRepairedOriRef:(id)a6 probMap:(id)a7 spaProbMap:(id)a8 meta:(id)a9;
- (void)encodeGetTrackingHmgrphyAlignmentErrorYUVToCommandEncoder:(id)a3 target:(id)a4 ref:(id)a5 meta:(id)a6;
- (void)encodePreprocessInputs4MotionCueYUVToCommandEncoder:(id)a3 input:(id)a4 ref:(id)a5 repairedRef:(id)a6 output:(id)a7 refOutput:(id)a8 metaBuf:(id)a9 refMeta:(id)a10;
- (void)encodeRefineFutureHwLsMapWithTrackingToEncoder:(id)a3 reflHwMap:(id)a4 target:(id)a5 warpedRefReflHwMap:(id)a6 warpedReflRef:(id)a7 metaBuf:(id)a8;
- (void)encodeSetWOriToCommandEncoder:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (void)encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:(id)a3 input:(id)a4 frRef0:(id)a5 frRef1:(id)a6 trRef0:(id)a7 trRef1:(id)a8 hwSimRef0:(id)a9 hwSimRef1:(id)a10 rawProbMap4Spatial:(id)a11 probMap4Spatial:(id)a12 spatialOutput:(id)a13 temporalOutput:(id)a14 hwSimTemporalOutput:(id)a15 hwSimTemporalOriRefOutput:(id)a16 inputCopy:(id)a17 metaBuf:(id)a18 ref0MetaBuf:(id)a19 ref1MetaBuf:(id)a20;
- (void)encodeSyncStats:(id)a3 clusterMeta:(id)a4 meta:(id)a5;
- (void)encodeUnpackLsMask:(id)a3 input:(id)a4 normalizedCenter:(id)a5 output:;
- (void)encodeUpdateEstOpticalCenterOffset:(id)a3 meta:(id)a4;
- (void)encodeUpscaleThenReflectLsMap:(id)a3 input:(id)a4 normalizedCenter:(id)a5 output:;
- (void)encodeWarpRefMeta:(id)a3 refMetaBuf:(id)a4 metaBuf:(id)a5 outMetaBuf:(id)a6 lsCheckOutmetaBuf:(id)a7 redoTrackingOutmetaBuf:(id)a8 roiAvoidList:(id)a9 capRefMetaCnt:(BOOL)a10 currTrackId:(int)a11 doLite:(BOOL)a12;
- (void)setRepairTuningParams:(id *)a3 withDict:(id)a4;
@end

@implementation GGMMetalToolBox

- (void)dealloc
{
  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  if (cvMetalTextureCacheRef)
  {
    CVMetalTextureCacheFlush(cvMetalTextureCacheRef, 0);
    v4 = self->_cvMetalTextureCacheRef;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  v5.receiver = self;
  v5.super_class = GGMMetalToolBox;
  [(GGMMetalToolBox *)&v5 dealloc];
}

- (int)_compileShaders
{
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::collectClusterTempRepairErr" constants:0];
  collectClusterTempRepairErr = self->_collectClusterTempRepairErr;
  self->_collectClusterTempRepairErr = v3;

  if (!self->_collectClusterTempRepairErr)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v5 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::collectClusterMv" constants:0];
  collectClusterMv = self->_collectClusterMv;
  self->_collectClusterMv = v5;

  if (!self->_collectClusterMv)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v7 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::bmSearch1RefFixedSampleCntYUV" constants:0];
  bmSearch1RefFixedSampleCntYUV = self->_bmSearch1RefFixedSampleCntYUV;
  self->_bmSearch1RefFixedSampleCntYUV = v7;

  if (!self->_bmSearch1RefFixedSampleCntYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v9 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::bmTransferYUV" constants:0];
  bmTransferYUV = self->_bmTransferYUV;
  self->_bmTransferYUV = v9;

  if (!self->_bmTransferYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v11 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::bmTransferGray" constants:0];
  bmTransferGray = self->_bmTransferGray;
  self->_bmTransferGray = v11;

  if (!self->_bmTransferGray)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v13 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::bmTransferGray4RefsLowLight" constants:0];
  bmTransferGray4RefsLowLight = self->_bmTransferGray4RefsLowLight;
  self->_bmTransferGray4RefsLowLight = v13;

  if (!self->_bmTransferGray4RefsLowLight)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v15 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::bmTransferGray3RefsLowLight" constants:0];
  bmTransferGray3RefsLowLight = self->_bmTransferGray3RefsLowLight;
  self->_bmTransferGray3RefsLowLight = v15;

  if (!self->_bmTransferGray3RefsLowLight)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v17 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::bmTransferGray2RefsLowLight" constants:0];
  bmTransferGray2RefsLowLight = self->_bmTransferGray2RefsLowLight;
  self->_bmTransferGray2RefsLowLight = v17;

  if (!self->_bmTransferGray2RefsLowLight)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v19 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::getGhostProbMapYUV" constants:0];
  getGhostProbMapYUV = self->_getGhostProbMapYUV;
  self->_getGhostProbMapYUV = v19;

  if (!self->_getGhostProbMapYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v21 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::dilateGrayImg" constants:0];
  dilateGrayImg = self->_dilateGrayImg;
  self->_dilateGrayImg = v21;

  if (!self->_dilateGrayImg)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v23 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::dilateProbMap" constants:0];
  dilateProbMap = self->_dilateProbMap;
  self->_dilateProbMap = v23;

  if (!self->_dilateProbMap)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v25 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::dilateProbMapHardR2SoftR2Simd" constants:0];
  dilateProbMapHardR2SoftR2Simd = self->_dilateProbMapHardR2SoftR2Simd;
  self->_dilateProbMapHardR2SoftR2Simd = v25;

  if (!self->_dilateProbMapHardR2SoftR2Simd)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v27 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::dilate3ProbMapsHardR2SoftR2Simd" constants:0];
  dilate3ProbMapsHardR2SoftR2Simd = self->_dilate3ProbMapsHardR2SoftR2Simd;
  self->_dilate3ProbMapsHardR2SoftR2Simd = v27;

  if (!self->_dilate3ProbMapsHardR2SoftR2Simd)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v29 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::dilate2ProbMaps" constants:0];
  dilate2ProbMaps = self->_dilate2ProbMaps;
  self->_dilate2ProbMaps = v29;

  if (!self->_dilate2ProbMaps)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v31 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::getMotionMapYUV" constants:0];
  getMotionMapYUV = self->_getMotionMapYUV;
  self->_getMotionMapYUV = v31;

  if (!self->_getMotionMapYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v33 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::combineMapWithRefMap" constants:0];
  combineMapWithRefMap = self->_combineMapWithRefMap;
  self->_combineMapWithRefMap = v33;

  if (!self->_combineMapWithRefMap)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v35 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::combineMapWithRefMapLite" constants:0];
  combineMapWithRefMapLite = self->_combineMapWithRefMapLite;
  self->_combineMapWithRefMapLite = v35;

  if (!self->_combineMapWithRefMapLite)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v37 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::getSaliencyMapYUV" constants:0];
  getSaliencyMapYUV = self->_getSaliencyMapYUV;
  self->_getSaliencyMapYUV = v37;

  if (!self->_getSaliencyMapYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v39 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::getTempRepairedBgAlignErrYUV" constants:0];
  getTempRepairedBgAlignErrYUV = self->_getTempRepairedBgAlignErrYUV;
  self->_getTempRepairedBgAlignErrYUV = v39;

  if (!self->_getTempRepairedBgAlignErrYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v41 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::reflectYUVImg2" constants:0];
  reflectYUVImg2 = self->_reflectYUVImg2;
  self->_reflectYUVImg2 = v41;

  if (!self->_reflectYUVImg2)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v43 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::dilateReflLsMap" constants:0];
  dilateReflLsMap = self->_dilateReflLsMap;
  self->_dilateReflLsMap = v43;

  if (!self->_dilateReflLsMap)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v45 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::getBlobSaliencyMapYUV" constants:0];
  getBlobSaliencyMapYUV = self->_getBlobSaliencyMapYUV;
  self->_getBlobSaliencyMapYUV = v45;

  if (!self->_getBlobSaliencyMapYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v47 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::spatialTemporalRepair4DetectionYUV" constants:0];
  spatialTemporalRepair4DetectionYUV = self->_spatialTemporalRepair4DetectionYUV;
  self->_spatialTemporalRepair4DetectionYUV = v47;

  if (!self->_spatialTemporalRepair4DetectionYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v49 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::fuse4DetectionYUV" constants:0];
  fuse4DetectionYUV = self->_fuse4DetectionYUV;
  self->_fuse4DetectionYUV = v49;

  if (!self->_fuse4DetectionYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v51 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::upscaleThenReflectLsMap" constants:0];
  upscaleThenReflectLsMap = self->_upscaleThenReflectLsMap;
  self->_upscaleThenReflectLsMap = v51;

  if (!self->_upscaleThenReflectLsMap)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v53 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::preprocessInputs4MotionCueYUV" constants:0];
  preprocessInputs4MotionCueYUV = self->_preprocessInputs4MotionCueYUV;
  self->_preprocessInputs4MotionCueYUV = v53;

  if (!self->_preprocessInputs4MotionCueYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v55 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::collectMvToFuture" constants:0];
  collectMvToFuture = self->_collectMvToFuture;
  self->_collectMvToFuture = v55;

  if (!self->_preprocessInputs4MotionCueYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v57 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::warpRefMeta" constants:0];
  warpRefMeta = self->_warpRefMeta;
  self->_warpRefMeta = v57;

  if (!self->_warpRefMeta)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v59 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::collectMetaContainers" constants:0];
  collectMetaContainers = self->_collectMetaContainers;
  self->_collectMetaContainers = v59;

  if (!self->_collectMetaContainers)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v61 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::refineFutureHwLsMapWithTrackingYUV" constants:0];
  refineFutureHwLsMapWithTrackingYUV = self->_refineFutureHwLsMapWithTrackingYUV;
  self->_refineFutureHwLsMapWithTrackingYUV = v61;

  if (!self->_refineFutureHwLsMapWithTrackingYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v63 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::collectClusterMaxProb" constants:0];
  collectClusterMaxProb = self->_collectClusterMaxProb;
  self->_collectClusterMaxProb = v63;

  if (!self->_collectClusterMaxProb)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v65 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::getRoiMaxAndAvgLumaYUV" constants:0];
  getRoiMaxAndAvgLumaYUV = self->_getRoiMaxAndAvgLumaYUV;
  self->_getRoiMaxAndAvgLumaYUV = v65;

  if (!self->_getRoiMaxAndAvgLumaYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v67 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::collectClusterMaxAndAvgLuma" constants:0];
  collectClusterMaxAndAvgLuma = self->_collectClusterMaxAndAvgLuma;
  self->_collectClusterMaxAndAvgLuma = v67;

  if (!self->_collectClusterMaxAndAvgLuma)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v69 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::getMvFromLs" constants:0];
  getMvFromLs = self->_getMvFromLs;
  self->_getMvFromLs = v69;

  if (!self->_getMvFromLs)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v71 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::conditionalDilateProbMapYUV" constants:0];
  conditionalDilateProbMapYUV = self->_conditionalDilateProbMapYUV;
  self->_conditionalDilateProbMapYUV = v71;

  if (!self->_conditionalDilateProbMapYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v73 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::conditionalDilateProbMapYUVHardR2SoftR2Simd" constants:0];
  conditionalDilateProbMapYUVHardR2SoftR2Simd = self->_conditionalDilateProbMapYUVHardR2SoftR2Simd;
  self->_conditionalDilateProbMapYUVHardR2SoftR2Simd = v73;

  if (!self->_conditionalDilateProbMapYUVHardR2SoftR2Simd)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v75 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::conditionalDilate2ProbMapsYUVHardR2SoftR2Simd" constants:0];
  conditionalDilate2ProbMapsYUVHardR2SoftR2Simd = self->_conditionalDilate2ProbMapsYUVHardR2SoftR2Simd;
  self->_conditionalDilate2ProbMapsYUVHardR2SoftR2Simd = v75;

  if (!self->_conditionalDilate2ProbMapsYUVHardR2SoftR2Simd)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v77 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::fuseSpatialOnly4DetectionYUV" constants:0];
  fuseSpatialOnly4DetectionYUV = self->_fuseSpatialOnly4DetectionYUV;
  self->_fuseSpatialOnly4DetectionYUV = v77;

  if (!self->_fuseSpatialOnly4DetectionYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v79 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::copyInput4DetectionYUV" constants:0];
  copyInput4DetectionYUV = self->_copyInput4DetectionYUV;
  self->_copyInput4DetectionYUV = v79;

  if (!self->_copyInput4DetectionYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v81 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::setWOri" constants:0];
  setWOri = self->_setWOri;
  self->_setWOri = v81;

  if (!self->_setWOri)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v83 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::syncStats" constants:0];
  syncStats = self->_syncStats;
  self->_syncStats = v83;

  if (!self->_syncStats)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v85 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::getTrackingHmgrphyAlignmentErrorYUV" constants:0];
  getTrackingHmgrphyAlignmentErrorYUV = self->_getTrackingHmgrphyAlignmentErrorYUV;
  self->_getTrackingHmgrphyAlignmentErrorYUV = v85;

  if (!self->_getTrackingHmgrphyAlignmentErrorYUV)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v87 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::unpackLsMask" constants:0];
  unpackLsMask = self->_unpackLsMask;
  self->_unpackLsMask = v87;

  if (!self->_unpackLsMask)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v89 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::updateEstOpticalCenterOffset" constants:0];
  updateEstOpticalCenterOffset = self->_updateEstOpticalCenterOffset;
  self->_updateEstOpticalCenterOffset = v89;

  if (!self->_updateEstOpticalCenterOffset)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  v91 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV3::collectOpticalCenterEstStats" constants:0];
  collectOpticalCenterEstStats = self->_collectOpticalCenterEstStats;
  self->_collectOpticalCenterEstStats = v91;

  if (!self->_collectOpticalCenterEstStats)
  {
    [(GGMMetalToolBox *)&v94 _compileShaders];
    return v94;
  }

  return 0;
}

- (void)setRepairTuningParams:(id *)a3 withDict:(id)a4
{
  v5 = [a4 objectForKeyedSubscript:@"Repair"];
  if (!v5)
  {
    goto LABEL_9;
  }

  v20 = v5;
  v6 = [v5 objectForKeyedSubscript:@"repairTargetArea"];
  v5 = v20;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [v20 objectForKeyedSubscript:@"repairTargetGhostCntLo"];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = [v20 objectForKeyedSubscript:@"repairTargetGhostCntHi"];
  if (!v9)
  {

LABEL_8:
    v5 = v20;
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v20 objectForKeyedSubscript:@"repairTargetGhostCntHi"];
  [v11 floatValue];
  v13 = v12;

  v5 = v20;
  if (v13 <= 32.0)
  {
    v14 = [v20 objectForKeyedSubscript:@"repairTargetArea"];
    [v14 floatValue];
    a3->var0 = v15;

    v16 = [v20 objectForKeyedSubscript:@"repairTargetGhostCntHi"];
    [v16 floatValue];
    a3->var2 = v17;

    v18 = [v20 objectForKeyedSubscript:@"repairTargetGhostCntLo"];
    [v18 floatValue];
    a3->var1 = v19;

    v5 = v20;
    goto LABEL_10;
  }

LABEL_9:
  a3->var2 = 32.0;
  *&a3->var0 = 0x41F8000049800000;
LABEL_10:
}

- ($2224E03E88B63C417DE187803C830EFF)updateMetaContainerBuffer:(GGMMetalToolBox *)self withDetectedROI:isLowLight:opticalCenter:ispBaseOpticalCenter:opticalCenterEstConf:frameDim:lightSourceMaskTotalArea:
{
  v9 = v8;
  v10 = v7;
  v11 = v6;
  v12 = v5;
  v13 = v4;
  v14 = v3;
  v15 = v1;
  v17 = v2;
  v18 = [v15 contents];
  v18[1064] = v14;
  *(v18 + 272) = v13;
  *(v18 + 1272) = v12;
  *(v18 + 1271) = vsub_f32(v13, v12);
  *(v18 + 2546) = v11;
  *(v18 + 1204) = v10;
  *(v18 + 273) = vdiv_f32(v13, vcvt_f32_u32(v10));
  *(v18 + 2442) = v9;
  v19 = 1.0;
  v20 = fminf(fmaxf((v9 + -65536.0) / 196610.0, 0.0), 1.0);
  *(v18 + 2443) = (v20 * -12000.0) + 18000.0;
  *(v18 + 2444) = (v20 * -47536.0) + 65536.0;
  if (![v17 count])
  {
    *(v18 + 316) = 1065353216;
LABEL_7:
    v26 = self->_tuningParams.repairTargetArea / v19;
    goto LABEL_8;
  }

  v21 = 0;
  do
  {
    v22 = [v17 objectAtIndexedSubscript:v21];
    [v22 roi];
    v24 = v23;
    [v22 roi];
    v19 = v19 + v24 * v25;

    ++v21;
  }

  while (v21 < [v17 count]);
  *(v18 + 316) = v19;
  v26 = 1.0;
  if (v19 != 0.0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v27 = fminf(v26, 1.0);
  if (v27 < 0.0)
  {
    v27 = 0.0;
  }

  *(v18 + 315) = v27;
  v28 = fminf(fmaxf(([v17 count] - self->_tuningParams.repairTargetGhostCntLo) / (self->_tuningParams.repairTargetGhostCntHi - self->_tuningParams.repairTargetGhostCntLo), 0.0), 1.0) * -0.9 + 1.0;
  if (*(v18 + 315) < v28)
  {
    v28 = *(v18 + 315);
  }

  *(v18 + 315) = v28;
  *(v18 + 317) = 1.0 / v28;
  if ([v17 count])
  {
    v30 = 0;
    v29.n128_u64[0] = vneg_f32(0x80000000800000);
    v53 = v29;
    v31 = (v18 + 56);
    v29.n128_u64[0] = 0x80000000800000;
    v52 = v29;
    while (1)
    {
      v32 = [v17 objectAtIndexedSubscript:v30];
      [v32 roi];
      v51 = v33;
      [v32 roi];
      v49 = v34;
      [v32 roi];
      v50 = v35;
      [v32 roi];
      *v36.i64 = v51;
      *&v36.i64[1] = v49;
      v37 = vcvt_f32_f64(v36);
      *v36.i64 = v50;
      *&v36.i64[1] = v38;
      v39 = vadd_f32(v37, vcvt_f32_f64(v36));
      *v36.i8 = vcvt_s32_f32(v37);
      v36.i64[1] = v36.i64[0];
      *v40.i8 = vcvt_s32_f32(v39);
      v40.i64[1] = v40.i64[0];
      v41.i64[0] = vaddq_s32(v40, v36).u64[0];
      v41.i64[1] = vsubq_s32(v40, v36).i64[1];
      v40.i64[0] = 0x3F0000003F000000;
      v40.i64[1] = 0x3F0000003F000000;
      *v31[-1].f32 = v37;
      *&v31[-1].u32[2] = v39;
      *v31 = vmulq_f32(vcvtq_f32_s32(v41), v40);
      *&v18[4 * v30 + 1068] = [v32 trackID];
      v42.n128_u64[1] = v53.n128_u64[1];
      v42.n128_u64[0] = vbsl_s8(vcgt_f32(v37, v53.n128_u64[0]), v53.n128_u64[0], v37);
      v53 = v42;
      v43.n128_u64[1] = v52.n128_u64[1];
      v43.n128_u64[0] = vbsl_s8(vcgt_f32(v39, v52.n128_u64[0]), v39, v52.n128_u64[0]);
      if (v30 == 31)
      {
        break;
      }

      v52 = v43;
      ++v30;

      v31 += 2;
      if (v30 >= [v17 count])
      {
        v44 = v52.n128_f32[1];
        v45 = v52.n128_f32[0];
        goto LABEL_17;
      }
    }

    [GGMMetalToolBox updateMetaContainerBuffer:v32 withDetectedROI:&v54 isLowLight:&v55 opticalCenter:v43 ispBaseOpticalCenter:? opticalCenterEstConf:? frameDim:? lightSourceMaskTotalArea:?];
    v45 = v54;
    v44 = v55;
    LOWORD(v30) = 32;
LABEL_17:
    v46 = v53.n128_u64[0];
  }

  else
  {
    LOWORD(v30) = 0;
    v46 = vneg_f32(0x80000000800000);
    v44 = 1.1755e-38;
    v45 = 1.1755e-38;
  }

  *v18 = v30;
  *(v18 + 1) = v30;
  *(v18 + 2) = v46.i32[0];
  *(v18 + 3) = v45;
  *(v18 + 4) = v46.i32[1];
  *(v18 + 5) = v44;
  *(v18 + 6) = (v45 - v46.f32[0]);
  *(v18 + 7) = (v44 - v46.f32[1]);
  v47 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vaddq_f64(vcvtq_f64_f32(v46), vdupq_n_s64(0xC050000000000000)), 0)));
  *(v18 + 4) = *&vsra_n_u32(v47, vcltz_s32(v47), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;

  return v18;
}

- (id)clusterTheGreenGhostRois:(id)a3 withExtendedRadius:(float)a4 imageRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a3;
  v11 = objc_alloc_init(NSMutableArray);
  v12 = objc_alloc_init(NSMutableArray);
  v13 = [v10 count];
  if (v13 < 1)
  {
    v22 = v11;
  }

  else
  {
    v14 = 0;
    v15 = -a4;
    v16 = v13 & 0x7FFFFFFF;
    do
    {
      v17 = [v10 objectAtIndexedSubscript:v14];
      v18 = objc_alloc_init(boundingBoxForMerge);
      [v17 roi];
      v46 = CGRectInset(v45, v15, v15);
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v47 = CGRectIntersection(v46, v48);
      [(boundingBoxForMerge *)v18 setExtendBBox:v47.origin.x, v47.origin.y, v47.size.width, v47.size.height];
      [(boundingBoxForMerge *)v18 setIndex2RoiArray:v14];
      [v12 addObject:v18];

      ++v14;
    }

    while (v16 != v14);
    v19 = 0;
    v42 = v16;
    do
    {
      v20 = objc_alloc_init(NSMutableArray);
      v21 = [v12 objectAtIndexedSubscript:v19];
      [v20 addObject:v21];

      v22 = objc_alloc_init(NSMutableArray);
      if ([v11 count])
      {
        v23 = 0;
        do
        {
          v24 = [v12 objectAtIndexedSubscript:v19];
          v25 = [v11 objectAtIndexedSubscript:v23];
          v26 = checkOverlapWithCluster(v24, v25);

          v27 = [v11 objectAtIndexedSubscript:v23];
          if (v26)
          {
            [v20 addObjectsFromArray:v27];
          }

          else
          {
            [v22 addObject:v27];
          }

          ++v23;
        }

        while ([v11 count] > v23);
      }

      [v22 addObject:v20];

      ++v19;
      v11 = v22;
    }

    while (v19 != v42);
  }

  v41 = objc_alloc_init(NSMutableArray);
  if ([v22 count])
  {
    v28 = 0;
    do
    {
      v43 = v28;
      v29 = [v22 objectAtIndexedSubscript:v28];
      v30 = objc_alloc_init(NSMutableArray);
      while ([v29 count])
      {
        v31 = [v29 objectAtIndexedSubscript:0];
        v32 = [v31 index2RoiArray];
        if ([v29 count] < 2)
        {
          v38 = 0;
        }

        else
        {
          v33 = 0;
          v34 = 1;
          do
          {
            v35 = v31;
            v31 = [v29 objectAtIndexedSubscript:v34];

            v36 = [v31 index2RoiArray];
            v37 = v32 <= v36;
            if (v32 >= v36)
            {
              v32 = v36;
            }

            if (!v37)
            {
              v33 = v34;
            }

            ++v34;
          }

          while ([v29 count] > v34);
          v38 = v33;
        }

        v39 = [v10 objectAtIndexedSubscript:v32];
        [v30 addObject:v39];

        [v29 removeObjectAtIndex:v38];
      }

      [v41 addObject:v30];

      v28 = v43 + 1;
    }

    while ([v22 count] > v43 + 1);
  }

  return v41;
}

- (id)clusterIndicesOfRois:(id *)a3 withExtendedRadius:(float)a4 roiCnt:(signed __int16)a5 imageRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5;
  v13 = objc_alloc_init(NSMutableArray);
  v14 = objc_alloc_init(NSMutableArray);
  if (v10 < 1)
  {
    v30 = v13;
  }

  else
  {
    v15 = 0;
    v16 = v10;
    p_var2 = &a3->var2;
    v46 = x;
    do
    {
      v18 = *(p_var2 - 2);
      v19 = *(p_var2 - 1);
      v20 = height;
      v21 = width;
      v22 = *p_var2;
      v23 = p_var2[1];
      p_var2 += 8;
      v24 = objc_alloc_init(boundingBoxForMerge);
      v49.origin.x = (v18 - a4);
      v49.origin.y = (v19 - a4);
      v25 = v22 - v18;
      height = v20;
      v49.size.width = (v25 + (a4 * 2.0));
      v26 = v23 - v19;
      width = v21;
      v49.size.height = (v26 + (a4 * 2.0));
      v51.origin.x = v46;
      v51.origin.y = y;
      v51.size.width = v21;
      v51.size.height = v20;
      v50 = CGRectIntersection(v49, v51);
      [(boundingBoxForMerge *)v24 setExtendBBox:v50.origin.x, v50.origin.y, v50.size.width, v50.size.height];
      [(boundingBoxForMerge *)v24 setIndex2RoiArray:v15];
      [v14 addObject:v24];

      ++v15;
    }

    while (v16 != v15);
    for (i = 0; i != v16; ++i)
    {
      v28 = objc_alloc_init(NSMutableArray);
      v29 = [v14 objectAtIndexedSubscript:i];
      [v28 addObject:v29];

      v30 = objc_alloc_init(NSMutableArray);
      if ([v13 count])
      {
        v31 = 0;
        do
        {
          v32 = [v14 objectAtIndexedSubscript:i];
          v33 = [v13 objectAtIndexedSubscript:v31];
          v34 = checkOverlapWithCluster(v32, v33);

          v35 = [v13 objectAtIndexedSubscript:v31];
          if (v34)
          {
            [v28 addObjectsFromArray:v35];
          }

          else
          {
            [v30 addObject:v35];
          }

          ++v31;
        }

        while ([v13 count] > v31);
      }

      [v30 addObject:v28];

      v13 = v30;
    }
  }

  v47 = objc_alloc_init(NSMutableArray);
  if ([v30 count])
  {
    v36 = 0;
    v45 = v30;
    do
    {
      v37 = [v30 objectAtIndexedSubscript:{v36, v45}];
      v38 = objc_alloc_init(NSMutableArray);
      v39 = [v37 count];
      if ([v37 count])
      {
        v40 = 0;
        v41 = (v39 << 32) - 0x100000000;
        do
        {
          v42 = [v37 objectAtIndexedSubscript:v41 >> 32];
          v43 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v42 index2RoiArray]);
          [v38 addObject:v43];

          ++v40;
          v41 -= 0x100000000;
        }

        while ([v37 count] > v40);
      }

      [v47 addObject:v38];

      ++v36;
      v30 = v45;
    }

    while ([v45 count] > v36);
  }

  return v47;
}

- ($C9C5C94DDF9C26A2911411CB3E980404)generateMetaContainerArrayBufFromMetaContainerBuf:(id)a3 imageRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = v9;
  p_metaBufArray = &self->_metaBufArray;
  v56 = self;
  self->_metaBufArray.clusterCnt = 0;
  if (!v9)
  {
    [GGMMetalToolBox generateMetaContainerArrayBufFromMetaContainerBuf:imageRect:];
LABEL_19:

    goto LABEL_16;
  }

  v11 = [v9 contents];
  if (!v11)
  {
    [GGMMetalToolBox generateMetaContainerArrayBufFromMetaContainerBuf:imageRect:];
    goto LABEL_19;
  }

  v13 = v11;
  v14 = v11 + 20;
  LODWORD(v12) = 1120403456;
  v57 = [(GGMMetalToolBox *)v56 clusterIndicesOfRois:v11 + 20 withExtendedRadius:*v11 roiCnt:v12 imageRect:x, y, width, height];
  v15 = [v57 count];
  if (v15 >= 1)
  {
    v46 = v10;
    v16 = 0;
    if (v15 >= 0x20)
    {
      v17 = 32;
    }

    else
    {
      v17 = v15;
    }

    v53 = v17;
    v54 = v13 + 4096;
    v52 = (v13 + 4760);
    v51 = (v13 + 4784);
    v50 = (v13 + 4824);
    v69 = v13 + 534;
    v47 = v13 + 1300;
    v48 = v13 + 636;
    v68 = v13 + 1428;
    v67 = v13 + 2132;
    v66 = v13 + 2196;
    v65 = v13 + 2260;
    v64 = v13 + 2772;
    v63 = v13 + 4564;
    v62 = v13 + 3284;
    v61 = v13 + 4628;
    v18 = vneg_f32(0x80000000800000);
    v49 = vdupq_n_s64(0xC050000000000000);
    v60 = v13 + 2324;
    v55 = v13;
    do
    {
      v19 = [v57 objectAtIndexedSubscript:v16];
      v59 = v16;
      v20 = [p_metaBufArray->var0[v16] contents];
      bzero(v20, 0x27D0uLL);
      *(v20 + 1064) = *(v13 + 1064);
      *(v20 + 272) = *(v13 + 272);
      *(v20 + 273) = *(v13 + 273);
      *(v20 + 275) = *(v13 + 275);
      *(v20 + 276) = *(v13 + 276);
      *(v20 + 2378) = *(v13 + 2378);
      *(v20 + 1204) = *(v13 + 1204);
      v21 = *v52;
      v22 = v52[1];
      *(v20 + 597) = v52[2];
      *(v20 + 596) = v22;
      *(v20 + 595) = v21;
      *(v20 + 2404) = *(v13 + 2404);
      v23 = *v51;
      v24 = v51[1];
      *(v20 + 600) = v51[2];
      *(v20 + 599) = v24;
      *(v20 + 598) = v23;
      *(v20 + 2405) = *(v13 + 2405);
      v20[4848] = v54[752];
      v25 = *v50;
      v26 = v50[1];
      *(v20 + 605) = v50[2];
      *(v20 + 604) = v26;
      *(v20 + 603) = v25;
      *(v20 + 9764) = *(v54 + 1572);
      *(v20 + 2442) = *(v13 + 2442);
      *(v20 + 1203) = *(v13 + 1203);
      *v20 = [v19 count];
      if ([v19 count])
      {
        v28 = 0;
        v29 = 0;
        *&v27 = 0x80000000800000;
        v71 = v27;
        v30 = 1300;
        v31 = 20;
        *&v27 = v18;
        v70 = v27;
        do
        {
          v32 = [v19 objectAtIndex:v29];
          v33 = [v32 intValue];

          v34 = &v14[16 * v33];
          v35 = &v20[v31];
          v36 = *(v34 + 1);
          *v35 = *v34;
          v35[1] = v36;
          v37 = &v20[v28];
          v37[267] = *&v69[2 * v33];
          v38 = *&v20[v31];
          *&v36 = *&v20[2 * v28 + 24];
          *&v20[4 * v29 + 636] = *&v48[4 * v33];
          v39 = &v20[v30];
          *v39 = *&v47[4 * v33];
          v39[32] = *&v68[4 * v33];
          *(&v41 + 1) = *(&v70 + 1);
          *(&v40 + 1) = *(&v71 + 1);
          v37[1066] = *&v67[2 * v33];
          *&v41 = vbsl_s8(vcgt_f32(v38, *&v70), *&v70, v38);
          v70 = v41;
          v37[1098] = *&v66[2 * v33];
          LODWORD(v39) = *&v65[2 * v33];
          *&v40 = vbsl_s8(vcgt_f32(*&v36, *&v71), *&v36, *&v71);
          v71 = v40;
          v37[1386] = *&v64[2 * v33];
          v37[2282] = *&v63[2 * v33];
          v37[1130] = v39;
          v37[1642] = *&v62[2 * v33];
          v37[2314] = *&v61[2 * v33];
          v42 = *&v60[2 * v33];
          v20[v29++ + 598] = v33;
          v37[1162] = v42;
          v28 += 2;
          v31 += 16;
          v30 += 4;
        }

        while ([v19 count] > v29);
      }

      else
      {
        *&v71 = 0x80000000800000;
        *&v70 = v18;
      }

      v43.i64[0] = v70;
      v43.i64[1] = v71;
      *(v20 + 4) = vuzp1q_s32(v43, vrev64q_s32(v43));
      v44 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vaddq_f64(vcvtq_f64_f32(*&v70), v49), 0)));
      *(v20 + 3) = vcvt_u32_f32(vsub_f32(*&v71, *&v70));
      *(v20 + 4) = *&vsra_n_u32(v44, vcltz_s32(v44), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;
      v13 = v55;
      *(v20 + 315) = *(v55 + 315);
      *(v20 + 317) = *(v55 + 317);
      ++v56->_metaBufArray.clusterCnt;

      v16 = v59 + 1;
    }

    while (v59 + 1 != v53);
    v10 = v46;
  }

LABEL_16:
  return p_metaBufArray;
}

- (void)encodeBMSearch1RefToCommandEncoder:(id)a3 target:(id)a4 ref:(id)a5 meta:(id)a6
{
  v11 = a6;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = 8 * *[v12 contents];
  [v15 setComputePipelineState:self->_bmSearch1RefFixedSampleCntYUV];
  [v15 setTexture:v14 atIndex:0];

  [v15 setTexture:v13 atIndex:1];
  [v15 setBuffer:v12 offset:0 atIndex:0];

  v19 = v16;
  v20 = vdupq_n_s64(1uLL);
  v17 = 1;
  v18 = *(&xmmword_438F8 + 8);
  [v15 dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
}

- (void)encodeGetGhostProbMapToCommandEncoder:(id)a3 target:(id)a4 reflLsMap:(id)a5 motionMap:(id)a6 saliencyMap:(id)a7 isInitFrame:(BOOL)a8 probMap:(id)a9 meta:(id)a10
{
  v35 = a8;
  v16 = a10;
  v17 = a9;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [v16 contents];
  LODWORD(v24) = v23[6];
  LODWORD(v25) = v23[7];
  v26 = (((v24 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v27 = (((v25 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v34 = [v21 width];
  v33 = [v21 height];
  v32 = [v19 width];
  v31 = [v19 height];
  [v22 setComputePipelineState:self->_getGhostProbMapYUV];
  [v22 setTexture:v21 atIndex:0];

  [v22 setTexture:v20 atIndex:1];
  [v22 setTexture:v19 atIndex:2];

  [v22 setTexture:v18 atIndex:3];
  [v22 setTexture:v17 atIndex:4];

  [v22 setBuffer:v16 offset:0 atIndex:0];
  [v22 setBytes:&v34 length:4 atIndex:1];
  [v22 setBytes:&v33 length:4 atIndex:2];
  [v22 setBytes:&v32 length:4 atIndex:3];
  [v22 setBytes:&v31 length:4 atIndex:4];
  [v22 setBytes:&v35 length:1 atIndex:5];
  v30[0] = v26;
  v30[1] = v27;
  v30[2] = 1;
  v28 = vdupq_n_s64(4uLL);
  v29 = 1;
  [v22 dispatchThreadgroups:v30 threadsPerThreadgroup:&v28];
}

- (void)encodeBMTransferYUVToCommandEncoder:(id)a3 ref:(id)a4 warpedRef:(id)a5 meta:(id)a6
{
  v11 = a6;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v12 contents];
  v33 = v16[1204];
  v17 = [v13 width];
  v18 = [v13 height];
  v19 = v16[3];
  v20.i64[0] = v19;
  v20.i64[1] = HIDWORD(v19);
  __asm { FMOV            V2.2D, #4.0 }

  v26 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v20), vdupq_n_s64(0x4060000000000000uLL)), _Q2);
  v20.i64[0] = v33 / v17;
  v20.i64[1] = HIDWORD(v33) / v18;
  v27 = vdivq_f64(v26, vcvtq_f64_u64(v20));
  __asm { FMOV            V1.2D, #8.0 }

  v29 = vaddq_f64(v27, _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v31 = vaddq_f64(v29, _Q1);
  __asm { FMOV            V1.2D, #0.125 }

  v34 = vcvtq_u64_f64(vmulq_f64(v31, _Q1));
  [v15 setComputePipelineState:self->_bmTransferYUV];
  [v15 setTexture:v14 atIndex:0];

  [v15 setTexture:v13 atIndex:1];
  [v15 setBuffer:v12 offset:0 atIndex:0];

  [v15 setImageblockWidth:8 height:8];
  v37 = v34;
  v38 = 1;
  v35 = vdupq_n_s64(8uLL);
  v36 = 1;
  [v15 dispatchThreadgroups:&v37 threadsPerThreadgroup:&v35];
}

- (void)encodeBMTransferGrayToCommandEncoder:(id)a3 ref:(id)a4 warpedRef:(id)a5 meta:(id)a6
{
  v11 = a6;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v12 contents];
  v33 = v16[1204];
  v17 = [v13 width];
  v18 = [v13 height];
  v19 = v16[3];
  v20.i64[0] = v19;
  v20.i64[1] = HIDWORD(v19);
  __asm { FMOV            V2.2D, #4.0 }

  v26 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v20), vdupq_n_s64(0x4060000000000000uLL)), _Q2);
  v20.i64[0] = v33 / v17;
  v20.i64[1] = HIDWORD(v33) / v18;
  v27 = vdivq_f64(v26, vcvtq_f64_u64(v20));
  __asm { FMOV            V1.2D, #8.0 }

  v29 = vaddq_f64(v27, _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v31 = vaddq_f64(v29, _Q1);
  __asm { FMOV            V1.2D, #0.125 }

  v34 = vcvtq_u64_f64(vmulq_f64(v31, _Q1));
  [v15 setComputePipelineState:self->_bmTransferGray];
  [v15 setTexture:v14 atIndex:0];

  [v15 setTexture:v13 atIndex:1];
  [v15 setBuffer:v12 offset:0 atIndex:0];

  v37 = v34;
  v38 = 1;
  v35 = vdupq_n_s64(8uLL);
  v36 = 1;
  [v15 dispatchThreadgroups:&v37 threadsPerThreadgroup:&v35];
}

- (void)encodeBMTransferGrayMultiRefsLowLightToCommandEncoder:(id)a3 ref0:(id)a4 ref1:(id)a5 ref2:(id)a6 ref3:(id)a7 warpedRef0:(id)a8 warpedRef1:(id)a9 warpedRef2:(id)a10 warpedRef3:(id)a11 meta:(id)a12
{
  v17 = a3;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v43 = a10;
  v47 = a11;
  v21 = a12;
  v22 = a12;
  v23 = a9;
  v24 = a5;
  v25 = a4;
  v26 = [v22 contents];
  v46 = v26[1204];
  v45 = [v20 width];
  v44 = [v20 height];
  v27 = v26[3];
  v28 = 72;
  if (!v18)
  {
    v28 = 80;
  }

  if (v19)
  {
    v28 = 64;
  }

  v29 = *(&self->super.isa + v28);
  [v17 setComputePipelineState:v29];
  [v17 setBuffer:v22 offset:0 atIndex:0];

  [v17 setTexture:v25 atIndex:0];
  [v17 setTexture:v20 atIndex:1];
  [v17 setTexture:v24 atIndex:2];

  [v17 setTexture:v23 atIndex:3];
  if (v18)
  {
    [v17 setTexture:v18 atIndex:4];
    [v17 setTexture:v43 atIndex:5];
  }

  if (v19)
  {
    [v17 setTexture:v19 atIndex:6];
    [v17 setTexture:v47 atIndex:7];
  }

  v30.i64[0] = v27;
  v30.i64[1] = HIDWORD(v27);
  __asm { FMOV            V2.2D, #4.0 }

  v36 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v30), vdupq_n_s64(0x4060000000000000uLL)), _Q2);
  v30.i64[0] = v46 / v45;
  v30.i64[1] = HIDWORD(v46) / v44;
  __asm { FMOV            V1.2D, #8.0 }

  v38 = vaddq_f64(vdivq_f64(v36, vcvtq_f64_u64(v30)), _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v40 = vaddq_f64(v38, _Q1);
  __asm { FMOV            V1.2D, #0.125 }

  v50 = vcvtq_u64_f64(vmulq_f64(v40, _Q1));
  v51 = 1;
  v48 = vdupq_n_s64(8uLL);
  v49 = 1;
  [v17 dispatchThreadgroups:&v50 threadsPerThreadgroup:{&v48, self}];
}

- (void)encodeDilateGrayImg:(id)a3 input:(id)a4 output:(id)a5 hardDilationRadius:(float)a6 softDilationRadius:(float)a7 meta:(id)a8
{
  v13 = a8;
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v14 contents];
  v19 = vcvt_s32_f32(__PAIR64__(LODWORD(a7), LODWORD(a6)));
  v42[1] = v19.i16[2];
  v42[0] = v19.i16[0];
  v20 = v18[3];
  v21.i64[0] = v20;
  v21.i64[1] = HIDWORD(v20);
  __asm { FMOV            V1.2D, #4.0 }

  v27 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v21), vdupq_n_s64(0x4060000000000000uLL)), _Q1);
  __asm { FMOV            V1.2D, #0.5 }

  v29 = vmulq_f64(v27, _Q1);
  __asm { FMOV            V1.2D, #8.0 }

  v31 = vaddq_f64(v29, _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v33 = vaddq_f64(v31, _Q1);
  __asm { FMOV            V1.2D, #0.125 }

  v37 = vcvtq_u64_f64(vmulq_f64(v33, _Q1));
  [v17 setComputePipelineState:self->_dilateGrayImg];
  [v17 setBuffer:v14 offset:0 atIndex:0];

  [v17 setTexture:v16 atIndex:0];
  [v17 setTexture:v15 atIndex:1];

  [v17 setBytes:v42 length:4 atIndex:1];
  v40 = v37;
  v41 = 1;
  v38 = vdupq_n_s64(8uLL);
  v39 = 1;
  [v17 dispatchThreadgroups:&v40 threadsPerThreadgroup:&v38];
}

- (void)encodeDilateProbMap:(id)a3 input:(id)a4 output:(id)a5 hardDilationRadius:(signed __int16)a6 softDilationRadius:(signed __int16)a7 meta:(id)a8
{
  v9 = a7;
  v10 = a6;
  v14 = a3;
  v15 = a8;
  v16 = a8;
  v17 = a5;
  v18 = a4;
  v19 = *([v16 contents] + 3);
  v38[1] = v9;
  v38[0] = v10;
  v20 = v10 == 2 && self->_doSimdShuffleAndFill;
  v21 = v9 == 2;
  v23 = v21 && v20;
  _ZF = !v21 || !v20;
  v24 = 112;
  if (!_ZF)
  {
    v24 = 120;
  }

  [v14 setComputePipelineState:*(&self->super.isa + v24)];
  [v14 setBuffer:v16 offset:0 atIndex:0];

  [v14 setTexture:v18 atIndex:0];
  [v14 setTexture:v17 atIndex:1];

  if (!v23)
  {
    [v14 setBytes:v38 length:4 atIndex:1];
  }

  v25.i64[0] = v19;
  v25.i64[1] = HIDWORD(v19);
  __asm { FMOV            V1.2D, #4.0 }

  v30 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v25), vdupq_n_s64(0x4060000000000000uLL)), _Q1);
  __asm { FMOV            V1.2D, #0.5 }

  v32 = vaddq_f64(vmulq_f64(v30, _Q1), xmmword_43860);
  __asm { FMOV            V1.2D, #-1.0 }

  v36 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v32, _Q1), xmmword_43870));
  v37 = 1;
  v34 = xmmword_43880;
  v35 = 1;
  [v14 dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
}

- (void)encodeDilate3ProbMapsHardR2SoftR2:(id)a3 input0:(id)a4 input1:(id)a5 input2:(id)a6 output0:(id)a7 output1:(id)a8 output2:(id)a9 meta:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = v23;
  if (self->_doSimdShuffleAndFill)
  {
    v25 = [v23 contents];
    v36 = v25[1204];
    v37 = v22;
    v26 = v21;
    v27 = v19;
    v28 = v18;
    v29 = v17;
    v30 = [v20 width];
    v31 = [v20 height];
    LODWORD(v32) = *(v25 + 6);
    LODWORD(v33) = *(v25 + 7);
    v34 = (((v32 + 128.0 + 4.0) / (v36 / v30) + 4.0 + -1.0) * 0.25);
    v35 = (((v33 + 128.0 + 4.0) / (HIDWORD(v36) / v31) + 32.0 + -1.0) * 0.03125);
    [v16 setComputePipelineState:self->_dilate3ProbMapsHardR2SoftR2Simd];
    [v16 setBuffer:v24 offset:0 atIndex:0];
    [v16 setTexture:v29 atIndex:0];
    [v16 setTexture:v28 atIndex:1];
    [v16 setTexture:v27 atIndex:2];
    [v16 setTexture:v20 atIndex:3];
    [v16 setTexture:v26 atIndex:4];
    [v16 setTexture:v37 atIndex:5];
    v40[0] = v34;
    v40[1] = v35;
    v17 = v29;
    v18 = v28;
    v19 = v27;
    v21 = v26;
    v22 = v37;
    v40[2] = 1;
    v38 = xmmword_43880;
    v39 = 1;
    [v16 dispatchThreadgroups:v40 threadsPerThreadgroup:&v38];
  }

  else
  {
    [GGMMetalToolBox encodeDilate3ProbMapsHardR2SoftR2:input0:input1:input2:output0:output1:output2:meta:];
  }
}

- (void)encodeDilate2ProbMaps:(id)a3 input0:(id)a4 input1:(id)a5 output0:(id)a6 output1:(id)a7 hardDilationRadius:(signed __int16)a8 softDilationRadius:(signed __int16)a9 meta:(id)a10
{
  v16 = a10;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [v16 contents];
  LODWORD(v23) = v22[6];
  LODWORD(v24) = v22[7];
  v25 = (((v23 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v26 = (((v24 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v31[1] = a9;
  v31[0] = a8;
  [v21 setComputePipelineState:self->_dilate2ProbMaps];
  [v21 setBuffer:v16 offset:0 atIndex:0];

  [v21 setTexture:v20 atIndex:0];
  [v21 setTexture:v19 atIndex:1];

  [v21 setTexture:v18 atIndex:2];
  [v21 setTexture:v17 atIndex:3];

  [v21 setBytes:v31 length:4 atIndex:1];
  v30[0] = v25;
  v30[1] = v26;
  v30[2] = 1;
  v28 = vdupq_n_s64(4uLL);
  v29 = 1;
  [v21 dispatchThreadgroups:v30 threadsPerThreadgroup:&v28];
}

- (void)encodeGetMotionMapYUVToCommandEncoder:(id)a3 ref:(id)a4 target:(id)a5 motionMap:(id)a6 meta:(id)a7
{
  v13 = a7;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = *([v14 contents] + 3);
  v20.i64[0] = v19;
  v20.i64[1] = HIDWORD(v19);
  __asm { FMOV            V1.2D, #4.0 }

  v26 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v20), vdupq_n_s64(0x4060000000000000uLL)), _Q1);
  __asm { FMOV            V1.2D, #0.5 }

  v28 = vmulq_f64(v26, _Q1);
  __asm { FMOV            V1.2D, #8.0 }

  v30 = vaddq_f64(v28, _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v32 = vaddq_f64(v30, _Q1);
  __asm { FMOV            V1.2D, #0.125 }

  v34 = vcvtq_u64_f64(vmulq_f64(v32, _Q1));
  [v18 setComputePipelineState:self->_getMotionMapYUV];
  [v18 setTexture:v17 atIndex:0];

  [v18 setTexture:v16 atIndex:1];
  [v18 setTexture:v15 atIndex:2];

  [v18 setBuffer:v14 offset:0 atIndex:0];
  v37 = v34;
  v38 = 1;
  v35 = vdupq_n_s64(8uLL);
  v36 = 1;
  [v18 dispatchThreadgroups:&v37 threadsPerThreadgroup:&v35];
}

- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:(id)a3 target:(id)a4 hwSimTempRepaired:(id)a5 hwSimTempRepairedOriRef:(id)a6 probMap:(id)a7 spaProbMap:(id)a8 meta:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [v16 contents];
  LODWORD(v24) = v23[6];
  LODWORD(v25) = v23[7];
  v26 = (((v24 + 128.0 + 4.0) * 0.125 + 8.0 + -1.0) * 0.125);
  v27 = (((v25 + 128.0 + 4.0) * 0.125 + 8.0 + -1.0) * 0.125);
  [v22 setComputePipelineState:self->_getTempRepairedBgAlignErrYUV];
  [v22 setTexture:v21 atIndex:0];

  [v22 setTexture:v20 atIndex:1];
  [v22 setTexture:v19 atIndex:2];

  [v22 setTexture:v18 atIndex:3];
  [v22 setTexture:v17 atIndex:4];

  [v22 setBuffer:v16 offset:0 atIndex:0];
  v30[0] = v26;
  v30[1] = v27;
  v30[2] = 1;
  v28 = vdupq_n_s64(8uLL);
  v29 = 1;
  [v22 dispatchThreadgroups:v30 threadsPerThreadgroup:&v28];
}

- (void)encodeCombineMapWithRefMapToEncoder:(id)a3 ref:(id)a4 dilatedRef:(id)a5 lsMap:(id)a6 dilatedLsMap:(id)a7 refLsMap:(id)a8 targetFrameYUV:(id)a9 spaRef:(id)a10 dilatedSpatialRef:(id)a11 motionRef:(id)a12 motionTarget:(id)a13 probMapRepairRef0:(id)a14 probMapRepairRef1:(id)a15 output:(id)a16 spaOutput:(id)a17 meta:(id)a18
{
  v18 = a18;
  v45 = a17;
  v44 = a16;
  v43 = a15;
  v42 = a14;
  v41 = a13;
  v40 = a12;
  v19 = a11;
  v20 = a10;
  v21 = a9;
  v22 = a8;
  v23 = a7;
  v24 = a6;
  v25 = a5;
  v26 = a4;
  v27 = a3;
  v28 = [v18 contents];
  LODWORD(v29) = v28[6];
  LODWORD(v30) = v28[7];
  v37 = (((v30 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v39 = (((v29 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  [v27 setComputePipelineState:self->_combineMapWithRefMap];
  [v27 setBuffer:v18 offset:0 atIndex:0];

  [v27 setTexture:v26 atIndex:1];
  [v27 setTexture:v25 atIndex:2];

  [v27 setTexture:v24 atIndex:3];
  [v27 setTexture:v23 atIndex:4];

  [v27 setTexture:v22 atIndex:5];
  [v27 setTexture:v21 atIndex:6];

  [v27 setTexture:v20 atIndex:7];
  [v27 setTexture:v19 atIndex:8];

  [v27 setTexture:v40 atIndex:9];
  [v27 setTexture:v41 atIndex:10];

  [v27 setTexture:v42 atIndex:11];
  [v27 setTexture:v43 atIndex:12];

  [v27 setTexture:v44 atIndex:13];
  [v27 setTexture:v45 atIndex:14];

  v48[0] = v39;
  v48[1] = v37;
  v48[2] = 1;
  v46 = vdupq_n_s64(4uLL);
  v47 = 1;
  [v27 dispatchThreadgroups:v48 threadsPerThreadgroup:&v46];
}

- (void)encodeCombineMapWithRefMapLiteToEncoder:(id)a3 probMap:(id)a4 spatialProbMap:(id)a5 probMapRepairRef0:(id)a6 probMapRepairRef1:(id)a7 meta:(id)a8
{
  v15 = a8;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [v16 contents];
  LODWORD(v23) = v22[6];
  LODWORD(v24) = v22[7];
  v25 = (((v23 + 128.0 + 4.0) * 0.25 + 8.0 + -1.0) * 0.125);
  v26 = (((v24 + 128.0 + 4.0) * 0.25 + 8.0 + -1.0) * 0.125);
  [v21 setComputePipelineState:self->_combineMapWithRefMapLite];
  [v21 setBuffer:v16 offset:0 atIndex:0];

  [v21 setTexture:v20 atIndex:1];
  [v21 setTexture:v19 atIndex:2];

  [v21 setTexture:v18 atIndex:3];
  [v21 setTexture:v17 atIndex:4];

  v29[0] = v25;
  v29[1] = v26;
  v29[2] = 1;
  v27 = vdupq_n_s64(8uLL);
  v28 = 1;
  [v21 dispatchThreadgroups:v29 threadsPerThreadgroup:&v27];
}

- (void)encodeGetSaliencyMapToCommandEncoder:(id)a3 target:(id)a4 saliencyMap:(id)a5 meta:(id)a6
{
  v11 = a6;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v12 contents];
  LODWORD(v17) = v16[6];
  LODWORD(v18) = v16[7];
  v19 = (((v17 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v20 = (((v18 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v25 = [v13 width];
  v24 = [v13 height];
  [v15 setComputePipelineState:self->_getSaliencyMapYUV];
  [v15 setTexture:v14 atIndex:0];

  [v15 setTexture:v13 atIndex:1];
  [v15 setBuffer:v12 offset:0 atIndex:0];

  [v15 setBytes:&v25 length:4 atIndex:1];
  [v15 setBytes:&v24 length:4 atIndex:2];
  v23[0] = v19;
  v23[1] = v20;
  v23[2] = 1;
  v21 = vdupq_n_s64(4uLL);
  v22 = 1;
  [v15 dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
}

- (void)encodeDilateReflLsMap:(id)a3 lsMap:(id)a4 dilatedLsMap:(id)a5 hardDilationRadius:(signed __int16)a6 softDilationRadius:(signed __int16)a7 meta:(id)a8
{
  v15 = a8;
  v16 = a8;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v37[1] = a7;
  v37[0] = a6;
  v20 = *([v16 contents] + 3);
  v21.i64[0] = v20;
  v21.i64[1] = HIDWORD(v20);
  __asm
  {
    FMOV            V1.2D, #4.0
    FMOV            V2.2D, #0.5
  }

  v28 = vaddq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v21), vdupq_n_s64(0x4060000000000000uLL)), _Q1), _Q2), _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v30 = vaddq_f64(v28, _Q1);
  __asm { FMOV            V1.2D, #0.25 }

  v32 = vcvtq_u64_f64(vmulq_f64(v30, _Q1));
  [v19 setComputePipelineState:self->_dilateReflLsMap];
  [v19 setBuffer:v16 offset:0 atIndex:0];

  [v19 setTexture:v18 atIndex:0];
  [v19 setTexture:v17 atIndex:1];

  [v19 setBytes:v37 length:4 atIndex:1];
  v35 = v32;
  v36 = 1;
  v33 = vdupq_n_s64(4uLL);
  v34 = 1;
  [v19 dispatchThreadgroups:&v35 threadsPerThreadgroup:&v33];
}

- (void)encodeGetBlobSaliency:(id)a3 inputYUV:(id)a4 blobSaliencyMap:(id)a5 meta:(id)a6
{
  v11 = a6;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = *([v12 contents] + 3);
  v17.i64[0] = v16;
  v17.i64[1] = HIDWORD(v16);
  __asm { FMOV            V1.2D, #4.0 }

  v23 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v17), vdupq_n_s64(0x4060000000000000uLL)), _Q1);
  __asm { FMOV            V1.2D, #0.5 }

  v25 = vmulq_f64(v23, _Q1);
  __asm { FMOV            V1.2D, #8.0 }

  v27 = vaddq_f64(v25, _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v29 = vaddq_f64(v27, _Q1);
  __asm { FMOV            V1.2D, #0.125 }

  v31 = vcvtq_u64_f64(vmulq_f64(v29, _Q1));
  [v15 setComputePipelineState:self->_getBlobSaliencyMapYUV];
  [v15 setBuffer:v12 offset:0 atIndex:0];

  [v15 setTexture:v14 atIndex:0];
  [v15 setTexture:v13 atIndex:1];

  v34 = v31;
  v35 = 1;
  v32 = vdupq_n_s64(8uLL);
  v33 = 1;
  [v15 dispatchThreadgroups:&v34 threadsPerThreadgroup:&v32];
}

- (void)encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:(id)a3 input:(id)a4 frRef0:(id)a5 frRef1:(id)a6 trRef0:(id)a7 trRef1:(id)a8 hwSimRef0:(id)a9 hwSimRef1:(id)a10 rawProbMap4Spatial:(id)a11 probMap4Spatial:(id)a12 spatialOutput:(id)a13 temporalOutput:(id)a14 hwSimTemporalOutput:(id)a15 hwSimTemporalOriRefOutput:(id)a16 inputCopy:(id)a17 metaBuf:(id)a18 ref0MetaBuf:(id)a19 ref1MetaBuf:(id)a20
{
  spatialTemporalRepair4DetectionYUV = self->_spatialTemporalRepair4DetectionYUV;
  v53 = a20;
  v52 = a19;
  v51 = a18;
  v49 = a17;
  v50 = a16;
  v48 = a15;
  v47 = a14;
  v46 = a13;
  v20 = a12;
  v21 = a11;
  v22 = a10;
  v23 = a9;
  v24 = a8;
  v25 = a7;
  v26 = a6;
  v27 = a5;
  v28 = a4;
  v29 = a3;
  [v29 setComputePipelineState:spatialTemporalRepair4DetectionYUV];
  [v29 setTexture:v28 atIndex:0];

  [v29 setTexture:v27 atIndex:1];
  [v29 setTexture:v26 atIndex:2];

  [v29 setTexture:v25 atIndex:3];
  [v29 setTexture:v24 atIndex:4];

  [v29 setTexture:v23 atIndex:5];
  [v29 setTexture:v22 atIndex:6];

  [v29 setTexture:v21 atIndex:7];
  [v29 setTexture:v20 atIndex:8];

  [v29 setTexture:v46 atIndex:9];
  [v29 setTexture:v47 atIndex:10];

  [v29 setTexture:v49 atIndex:11];
  [v29 setTexture:v48 atIndex:12];

  [v29 setTexture:v50 atIndex:13];
  [v29 setBuffer:v51 offset:0 atIndex:0];
  [v29 setBuffer:v52 offset:0 atIndex:1];

  [v29 setBuffer:v53 offset:0 atIndex:2];
  [v29 setImageblockWidth:8 height:4];
  v30 = [v51 contents];

  v31 = v30[3];
  v32.i64[0] = v31;
  v32.i64[1] = HIDWORD(v31);
  __asm
  {
    FMOV            V1.2D, #4.0
    FMOV            V2.2D, #0.5
  }

  v56 = vshlq_u64(vaddw_s32(xmmword_43890, vmovn_s64(vcvtq_s64_f64(vaddq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v32), vdupq_n_s64(0x4060000000000000uLL)), _Q1), _Q2), _Q1)))), xmmword_438A0);
  v57 = 1;
  v54 = xmmword_438B0;
  v55 = 1;
  [v29 dispatchThreadgroups:&v56 threadsPerThreadgroup:&v54];
}

- (void)encodeCopyInput4DetectionYUVToCommandEncoder:(id)a3 inputTexture:(id)a4 outputTexture:(id)a5 metaBuf:(id)a6
{
  copyInput4DetectionYUV = self->_copyInput4DetectionYUV;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [v13 setComputePipelineState:copyInput4DetectionYUV];
  [v13 setBuffer:v10 offset:0 atIndex:0];
  [v13 setTexture:v12 atIndex:0];

  [v13 setTexture:v11 atIndex:1];
  [v13 setImageblockWidth:8 height:4];
  v14 = [v10 contents];

  v15 = v14[3];
  v16.i64[0] = v15;
  v16.i64[1] = HIDWORD(v15);
  __asm { FMOV            V1.2D, #4.0 }

  v22 = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v16), vdupq_n_s64(0x4060000000000000uLL)), _Q1), xmmword_438C0);
  __asm { FMOV            V1.2D, #-1.0 }

  v26 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v22, _Q1), xmmword_438D0));
  v27 = 1;
  v24 = xmmword_438B0;
  v25 = 1;
  [v13 dispatchThreadgroups:&v26 threadsPerThreadgroup:&v24];
}

- (void)encodeFuse4DetectionYUVToCommandEncoder:(id)a3 inputTexture:(id)a4 probMapTexture:(id)a5 probMap4SpatialTexture:(id)a6 temporalMitTexture:(id)a7 hwSimTemporalMitTexture:(id)a8 spatialMitTexture:(id)a9 trOutputTexture:(id)a10 hwSimOutputTexture:(id)a11 metaBuf:(id)a12
{
  fuse4DetectionYUV = self->_fuse4DetectionYUV;
  v18 = a12;
  v38 = a11;
  v37 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  [v25 setComputePipelineState:fuse4DetectionYUV];
  [v25 setBuffer:v18 offset:0 atIndex:0];
  [v25 setTexture:v24 atIndex:0];

  [v25 setTexture:v21 atIndex:1];
  [v25 setTexture:v20 atIndex:2];

  [v25 setTexture:v19 atIndex:3];
  [v25 setTexture:v23 atIndex:4];

  [v25 setTexture:v22 atIndex:5];
  [v25 setTexture:v37 atIndex:6];

  [v25 setTexture:v38 atIndex:7];
  [v25 setImageblockWidth:8 height:4];
  v26 = v18;
  v27 = [v18 contents];

  v28 = v27[3];
  v29.i64[0] = v28;
  v29.i64[1] = HIDWORD(v28);
  __asm
  {
    FMOV            V1.2D, #4.0
    FMOV            V2.2D, #0.5
  }

  v41 = vshlq_u64(vaddw_s32(xmmword_43890, vmovn_s64(vcvtq_s64_f64(vaddq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v29), vdupq_n_s64(0x4060000000000000uLL)), _Q1), _Q2), _Q1)))), xmmword_438A0);
  v42 = 1;
  v39 = xmmword_438B0;
  v40 = 1;
  [v25 dispatchThreadgroups:&v41 threadsPerThreadgroup:&v39];
}

- (void)encodeFuseSpatialOnly4DetectionYUVToCommandEncoder:(id)a3 inputTexture:(id)a4 probMapTexture:(id)a5 probMap4SpatialTexture:(id)a6 temporalMitTexture:(id)a7 spatialMitTexture:(id)a8 outputTexture:(id)a9 metaBuf:(id)a10
{
  fuseSpatialOnly4DetectionYUV = self->_fuseSpatialOnly4DetectionYUV;
  v17 = a10;
  v34 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  [v23 setComputePipelineState:fuseSpatialOnly4DetectionYUV];
  [v23 setBuffer:v17 offset:0 atIndex:0];
  [v23 setTexture:v22 atIndex:0];

  [v23 setTexture:v19 atIndex:1];
  [v23 setTexture:v18 atIndex:2];

  [v23 setTexture:v21 atIndex:3];
  [v23 setTexture:v20 atIndex:4];

  [v23 setTexture:v34 atIndex:5];
  [v23 setImageblockWidth:8 height:4];
  v24 = [v17 contents];

  v25 = v24[3];
  v26.i64[0] = v25;
  v26.i64[1] = HIDWORD(v25);
  __asm { FMOV            V1.2D, #4.0 }

  v32 = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v26), vdupq_n_s64(0x4060000000000000uLL)), _Q1), xmmword_438C0);
  __asm { FMOV            V1.2D, #-1.0 }

  v37 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v32, _Q1), xmmword_438D0));
  v38 = 1;
  v35 = xmmword_438B0;
  v36 = 1;
  [v23 dispatchThreadgroups:&v37 threadsPerThreadgroup:&v35];
}

- (void)encodeCollectClusterTempRepairErr:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v11 contents];
  [v12 setComputePipelineState:self->_collectClusterTempRepairErr];
  [v12 setBuffer:v11 offset:0 atIndex:0];

  [v12 setBuffer:v10 offset:0 atIndex:1];
  v16 = (*v13 + 31) >> 5;
  v17 = vdupq_n_s64(1uLL);
  v14 = 32;
  v15 = xmmword_438E8;
  [v12 dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
}

- (void)encodeCollectClusterMv:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v11 contents];
  [v12 setComputePipelineState:self->_collectClusterMv];
  [v12 setBuffer:v11 offset:0 atIndex:0];

  [v12 setBuffer:v10 offset:0 atIndex:1];
  v16 = (*v13 + 31) >> 5;
  v17 = vdupq_n_s64(1uLL);
  v14 = 32;
  v15 = xmmword_438E8;
  [v12 dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
}

- (void)encodeUpscaleThenReflectLsMap:(id)a3 input:(id)a4 normalizedCenter:(id)a5 output:
{
  v17 = v5;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = ([v9 width] + 15) >> 4;
  v13 = ([v9 height] + 15) >> 4;
  [v11 setComputePipelineState:self->_upscaleThenReflectLsMap];
  [v11 setTexture:v10 atIndex:0];

  [v11 setBytes:&v17 length:8 atIndex:0];
  [v11 setTexture:v9 atIndex:1];

  v16[0] = v12;
  v16[1] = v13;
  v16[2] = 1;
  v14 = vdupq_n_s64(0x10uLL);
  v15 = 1;
  [v11 dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
}

- (void)encodePreprocessInputs4MotionCueYUVToCommandEncoder:(id)a3 input:(id)a4 ref:(id)a5 repairedRef:(id)a6 output:(id)a7 refOutput:(id)a8 metaBuf:(id)a9 refMeta:(id)a10
{
  preprocessInputs4MotionCueYUV = self->_preprocessInputs4MotionCueYUV;
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  [v24 setComputePipelineState:preprocessInputs4MotionCueYUV];
  [v24 setTexture:v23 atIndex:0];

  [v24 setTexture:v22 atIndex:1];
  [v24 setTexture:v21 atIndex:2];

  [v24 setTexture:v20 atIndex:3];
  [v24 setTexture:v19 atIndex:4];

  [v24 setBuffer:v18 offset:0 atIndex:0];
  [v24 setBuffer:v17 offset:0 atIndex:1];

  [v24 setImageblockWidth:8 height:4];
  v25 = [v18 contents];

  v26 = v25[3];
  v27.i64[0] = v26;
  v27.i64[1] = HIDWORD(v26);
  __asm
  {
    FMOV            V1.2D, #4.0
    FMOV            V2.2D, #0.5
  }

  v36 = vshlq_u64(vaddw_s32(xmmword_43890, vmovn_s64(vcvtq_s64_f64(vaddq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v27), vdupq_n_s64(0x4060000000000000uLL)), _Q1), _Q2), _Q1)))), xmmword_438A0);
  v37 = 1;
  v34 = xmmword_438B0;
  v35 = 1;
  [v24 dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
}

- (void)encodeCollectMvToFuture:(id)a3 metaBuf:(id)a4
{
  v7 = a4;
  v8 = a4;
  v9 = a3;
  v10 = [v8 contents];
  [v9 setComputePipelineState:self->_collectMvToFuture];
  [v9 setBuffer:v8 offset:0 atIndex:0];

  v13 = (*v10 + 31) >> 5;
  v14 = vdupq_n_s64(1uLL);
  v11 = 32;
  v12 = xmmword_438E8;
  [v9 dispatchThreadgroups:&v13 threadsPerThreadgroup:&v11];
}

- (void)encodeWarpRefMeta:(id)a3 refMetaBuf:(id)a4 metaBuf:(id)a5 outMetaBuf:(id)a6 lsCheckOutmetaBuf:(id)a7 redoTrackingOutmetaBuf:(id)a8 roiAvoidList:(id)a9 capRefMetaCnt:(BOOL)a10 currTrackId:(int)a11 doLite:(BOOL)a12
{
  v31 = a10;
  v30 = a12;
  warpRefMeta = self->_warpRefMeta;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  [v25 setComputePipelineState:warpRefMeta];
  [v25 setBuffer:v24 offset:0 atIndex:0];

  [v25 setBuffer:v23 offset:0 atIndex:1];
  [v25 setBuffer:v22 offset:0 atIndex:2];

  [v25 setBuffer:v21 offset:0 atIndex:3];
  [v25 setBuffer:v20 offset:0 atIndex:4];

  [v25 setBytes:&v31 length:1 atIndex:5];
  [v25 setBytes:&a11 length:4 atIndex:6];
  [v25 setBytes:&v30 length:1 atIndex:7];
  [v25 setBuffer:v19 offset:0 atIndex:8];

  v28 = vdupq_n_s64(1uLL);
  v29 = 1;
  v26 = xmmword_438F8;
  v27 = 1;
  [v25 dispatchThreadgroups:&v28 threadsPerThreadgroup:&v26];
}

- (void)encodeCollectMetaContainers:(id)a3 metaBuf:(id)a4 lsCheckOutmetaBuf:(id)a5 redoTrackingOutmetaBuf:(id)a6 doLite:(BOOL)a7 roiAvoidList:(id)a8
{
  v22 = a7;
  collectMetaContainers = self->_collectMetaContainers;
  v13 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  [v17 setComputePipelineState:collectMetaContainers];
  [v17 setBuffer:v16 offset:0 atIndex:0];

  [v17 setBuffer:v15 offset:0 atIndex:1];
  [v17 setBuffer:v14 offset:0 atIndex:2];

  [v17 setBytes:&v22 length:1 atIndex:3];
  [v17 setBuffer:v13 offset:0 atIndex:4];

  v20 = vdupq_n_s64(1uLL);
  v21 = 1;
  v18 = xmmword_438F8;
  v19 = 1;
  [v17 dispatchThreadgroups:&v20 threadsPerThreadgroup:&v18];
}

- (void)encodeRefineFutureHwLsMapWithTrackingToEncoder:(id)a3 reflHwMap:(id)a4 target:(id)a5 warpedRefReflHwMap:(id)a6 warpedReflRef:(id)a7 metaBuf:(id)a8
{
  v15 = a8;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [v16 contents];
  LODWORD(v23) = v22[6];
  LODWORD(v24) = v22[7];
  v25 = (((v23 + 128.0 + 4.0) * 0.5 + 8.0 + -1.0) * 0.125);
  v26 = (((v24 + 128.0 + 4.0) * 0.5 + 8.0 + -1.0) * 0.125);
  [v21 setComputePipelineState:self->_refineFutureHwLsMapWithTrackingYUV];
  [v21 setBuffer:v16 offset:0 atIndex:0];

  [v21 setTexture:v20 atIndex:0];
  [v21 setTexture:v19 atIndex:1];

  [v21 setTexture:v18 atIndex:2];
  [v21 setTexture:v17 atIndex:3];

  [v21 setTexture:v20 atIndex:4];
  v29[0] = v25;
  v29[1] = v26;
  v29[2] = 1;
  v27 = vdupq_n_s64(8uLL);
  v28 = 1;
  [v21 dispatchThreadgroups:v29 threadsPerThreadgroup:&v27];
}

- (void)encodeCollectClusterMaxProb:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v11 contents];
  [v12 setComputePipelineState:self->_collectClusterMaxProb];
  [v12 setBuffer:v11 offset:0 atIndex:0];

  [v12 setBuffer:v10 offset:0 atIndex:1];
  v16 = (*v13 + 31) >> 5;
  v17 = vdupq_n_s64(1uLL);
  v14 = 32;
  v15 = xmmword_438E8;
  [v12 dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
}

- (void)encodeGetRoiMaxAndAvgLumaYUV:(id)a3 target:(id)a4 lsMap:(id)a5 meta:(id)a6
{
  v11 = a6;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = *([v12 contents] + 3);
  v17.i64[0] = v16;
  v17.i64[1] = HIDWORD(v16);
  __asm { FMOV            V1.2D, #4.0 }

  v23 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v17), vdupq_n_s64(0x4060000000000000uLL)), _Q1);
  __asm { FMOV            V1.2D, #0.5 }

  v25 = vmulq_f64(v23, _Q1);
  __asm { FMOV            V1.2D, #8.0 }

  v27 = vaddq_f64(v25, _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v29 = vaddq_f64(v27, _Q1);
  __asm { FMOV            V1.2D, #0.125 }

  v31 = vcvtq_u64_f64(vmulq_f64(v29, _Q1));
  [v15 setComputePipelineState:self->_getRoiMaxAndAvgLumaYUV];
  [v15 setBuffer:v12 offset:0 atIndex:0];

  [v15 setTexture:v14 atIndex:0];
  [v15 setTexture:v13 atIndex:1];

  v34 = v31;
  v35 = 1;
  v32 = vdupq_n_s64(8uLL);
  v33 = 1;
  [v15 dispatchThreadgroups:&v34 threadsPerThreadgroup:&v32];
}

- (void)encodeCollectClusterMaxAndAvgLuma:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v11 contents];
  [v12 setComputePipelineState:self->_collectClusterMaxAndAvgLuma];
  [v12 setBuffer:v11 offset:0 atIndex:0];

  [v12 setBuffer:v10 offset:0 atIndex:1];
  v16 = (*v13 + 31) >> 5;
  v17 = vdupq_n_s64(1uLL);
  v14 = 32;
  v15 = xmmword_438E8;
  [v12 dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
}

- (void)encodeGetMvFromLsToCommandEncoder:(GGMMetalToolBox *)self target:(SEL)a2 lsMap:(id)a3 refLsMap:(id)a4 targetCenter:(id)a5 refCenter:(id)a6 meta:(id)a7
{
  v28 = v8;
  v29 = v7;
  v15 = a7;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [v16 contents];
  v27 = [v19 width];
  LODWORD(a3) = [v19 height];

  v26 = a3;
  [v20 setComputePipelineState:self->_getMvFromLs];
  [v20 setTexture:v18 atIndex:0];

  [v20 setTexture:v17 atIndex:1];
  [v20 setBuffer:v16 offset:0 atIndex:0];

  [v20 setBytes:&v27 length:8 atIndex:1];
  [v20 setBytes:&v26 length:8 atIndex:2];
  [v20 setBytes:&v29 length:8 atIndex:3];
  [v20 setBytes:&v28 length:8 atIndex:4];
  v24 = (*v21 + 31) >> 5;
  v25 = vdupq_n_s64(1uLL);
  v22 = 32;
  v23 = xmmword_438E8;
  [v20 dispatchThreadgroups:&v24 threadsPerThreadgroup:&v22];
}

- (void)encodeConditionalDilateProbMapYUV:(id)a3 inputYUV:(id)a4 probMap:(id)a5 dilatedProbMap:(id)a6 hardDilationRadius:(signed __int16)a7 softDilationRadius:(signed __int16)a8 meta:(id)a9
{
  v9 = a8;
  v10 = a7;
  v15 = a3;
  v16 = a9;
  v17 = a9;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = *([v17 contents] + 3);
  v22 = v10 == 2 && self->_doSimdShuffleAndFill;
  v23 = v9 == 2;
  v25 = v23 && v22;
  _ZF = !v23 || !v22;
  v26 = 296;
  if (!_ZF)
  {
    v26 = 304;
  }

  [v15 setComputePipelineState:*(&self->super.isa + v26)];
  v40[1] = v9;
  v40[0] = v10;
  [v15 setBuffer:v17 offset:0 atIndex:0];

  [v15 setTexture:v20 atIndex:0];
  [v15 setTexture:v19 atIndex:1];

  [v15 setTexture:v18 atIndex:2];
  if (!v25)
  {
    [v15 setBytes:v40 length:4 atIndex:1];
  }

  v27.i64[0] = v21;
  v27.i64[1] = HIDWORD(v21);
  __asm { FMOV            V1.2D, #4.0 }

  v32 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v27), vdupq_n_s64(0x4060000000000000uLL)), _Q1);
  __asm { FMOV            V1.2D, #0.5 }

  v34 = vaddq_f64(vmulq_f64(v32, _Q1), xmmword_43860);
  __asm { FMOV            V1.2D, #-1.0 }

  v38 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v34, _Q1), xmmword_43870));
  v39 = 1;
  v36 = xmmword_43880;
  v37 = 1;
  [v15 dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
}

- (void)encodeConditionalDilate2ProbMapsYUVHardR2SoftR2Simd:(id)a3 inputYUV:(id)a4 probMap0:(id)a5 probMap1:(id)a6 dilatedProbMap0:(id)a7 dilatedProbMap1:(id)a8 meta:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v21;
  if (self->_doSimdShuffleAndFill)
  {
    v23 = [v21 contents];
    v30 = v23[1204];
    v24 = [v19 width];
    v25 = [v19 height];
    LODWORD(v26) = *(v23 + 6);
    LODWORD(v27) = *(v23 + 7);
    v28 = (((v26 + 128.0 + 4.0) / (v30 / v24) + 4.0 + -1.0) * 0.25);
    v29 = (((v27 + 128.0 + 4.0) / (HIDWORD(v30) / v25) + 32.0 + -1.0) * 0.03125);
    [v15 setComputePipelineState:self->_conditionalDilate2ProbMapsYUVHardR2SoftR2Simd];
    [v15 setBuffer:v22 offset:0 atIndex:0];
    [v15 setTexture:v16 atIndex:0];
    [v15 setTexture:v17 atIndex:1];
    [v15 setTexture:v18 atIndex:2];
    [v15 setTexture:v19 atIndex:3];
    [v15 setTexture:v20 atIndex:4];
    v33[0] = v28;
    v33[1] = v29;
    v33[2] = 1;
    v31 = xmmword_43880;
    v32 = 1;
    [v15 dispatchThreadgroups:v33 threadsPerThreadgroup:&v31];
  }

  else
  {
    [GGMMetalToolBox encodeConditionalDilate2ProbMapsYUVHardR2SoftR2Simd:inputYUV:probMap0:probMap1:dilatedProbMap0:dilatedProbMap1:meta:];
  }
}

- (void)encodeSetWOriToCommandEncoder:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v11 contents];
  [v12 setComputePipelineState:self->_setWOri];
  [v12 setBuffer:v11 offset:0 atIndex:0];

  [v12 setBuffer:v10 offset:0 atIndex:1];
  v16 = (*v13 + 31) >> 5;
  v17 = vdupq_n_s64(1uLL);
  v14 = 32;
  v15 = xmmword_438E8;
  [v12 dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
}

- (void)encodeSyncStats:(id)a3 clusterMeta:(id)a4 meta:(id)a5
{
  syncStats = self->_syncStats;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v10 setComputePipelineState:syncStats];
  [v10 setBuffer:v9 offset:0 atIndex:0];

  [v10 setBuffer:v8 offset:0 atIndex:1];
  v13 = vdupq_n_s64(1uLL);
  v14 = 1;
  v11 = xmmword_438F8;
  v12 = 1;
  [v10 dispatchThreadgroups:&v13 threadsPerThreadgroup:&v11];
}

- (void)encodeGetTrackingHmgrphyAlignmentErrorYUVToCommandEncoder:(id)a3 target:(id)a4 ref:(id)a5 meta:(id)a6
{
  v11 = a6;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = *([v12 contents] + 3);
  v17.i64[0] = v16;
  v17.i64[1] = HIDWORD(v16);
  __asm { FMOV            V1.2D, #4.0 }

  v23 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v17), vdupq_n_s64(0x4060000000000000uLL)), _Q1);
  __asm
  {
    FMOV            V1.2D, #0.125
    FMOV            V2.2D, #8.0
  }

  v26 = vaddq_f64(vmulq_f64(v23, _Q1), _Q2);
  __asm { FMOV            V2.2D, #-1.0 }

  v28 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v26, _Q2), _Q1));
  [v15 setComputePipelineState:self->_getTrackingHmgrphyAlignmentErrorYUV];
  [v15 setTexture:v14 atIndex:0];

  [v15 setTexture:v13 atIndex:1];
  [v15 setBuffer:v12 offset:0 atIndex:0];

  v31 = v28;
  v32 = 1;
  v29 = vdupq_n_s64(8uLL);
  v30 = 1;
  [v15 dispatchThreadgroups:&v31 threadsPerThreadgroup:&v29];
}

- (void)encodeUnpackLsMask:(id)a3 input:(id)a4 normalizedCenter:(id)a5 output:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = ((([v8 width] + 7) >> 3) + 15) >> 4;
  v12 = ([v8 height] + 15) >> 4;
  [v10 setComputePipelineState:self->_unpackLsMask];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  v15[0] = v11;
  v15[1] = v12;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x10uLL);
  v14 = 1;
  [v10 dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
}

- (void)encodeCollectClusterOpticalCenterEstStats:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v11 contents];
  [v12 setComputePipelineState:self->_collectOpticalCenterEstStats];
  [v12 setBuffer:v11 offset:0 atIndex:0];

  [v12 setBuffer:v10 offset:0 atIndex:1];
  v14 = *v13;
  v20 = v14;
  v17 = vdupq_n_s64(1uLL);
  v21 = v17;
  v15 = [(MTLComputePipelineState *)self->_collectOpticalCenterEstStats maxTotalThreadsPerThreadgroup];
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v18 = v16;
  v19 = v17;
  [v12 dispatchThreads:&v20 threadsPerThreadgroup:&v18];
}

- (void)encodeUpdateEstOpticalCenterOffset:(id)a3 meta:(id)a4
{
  updateEstOpticalCenterOffset = self->_updateEstOpticalCenterOffset;
  v6 = a4;
  v7 = a3;
  [v7 setComputePipelineState:updateEstOpticalCenterOffset];
  [v7 setBuffer:v6 offset:0 atIndex:0];

  v10 = vdupq_n_s64(1uLL);
  v11 = 1;
  v8 = xmmword_438F8;
  v9 = 1;
  [v7 dispatchThreadgroups:&v10 threadsPerThreadgroup:&v8];
}

- (GGMMetalToolBox)initWithMetalContext:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v19.receiver = self;
    v19.super_class = GGMMetalToolBox;
    v6 = [(GGMMetalToolBox *)&v19 init];
    self = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_metalContext, a3);
      v7 = [v5 device];
      device = self->_device;
      self->_device = v7;

      v9 = [v5 commandQueue];
      commandQueue = self->_commandQueue;
      self->_commandQueue = v9;

      self->_doSimdShuffleAndFill = [(MTLDevice *)self->_device supportsFamily:1008];
      if (![(GGMMetalToolBox *)self _compileShaders])
      {
        self->_forceGpuWaitForComplete = 1;
        for (i = 392; i != 648; i += 8)
        {
          v12 = [(MTLDevice *)self->_device newBufferWithLength:10192 options:0];
          v13 = *(&self->super.isa + i);
          *(&self->super.isa + i) = v12;

          if (!*(&self->super.isa + i))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1_0();
            goto LABEL_11;
          }
        }

        v17 = kCVMetalTextureCacheMaximumTextureAgeKey;
        v18 = &off_4A030;
        v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        if (!CVMetalTextureCacheCreate(kCFAllocatorDefault, v14, self->_device, 0, &self->_cvMetalTextureCacheRef))
        {

          self = self;
          v15 = self;
          goto LABEL_9;
        }

        fig_log_get_emitter();
        FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_0();
LABEL_11:
    FigDebugAssert3();
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (GGMMetalToolBox)initWithMetalContext:(id)a3 tuningParamDict:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && ([v7 objectForKeyedSubscript:@"hwMode"], v9 = objc_claimAutoreleasedReturnValue(), self->_hwMode = objc_msgSend(v9, "BOOLValue"), v9, v10 = -[GGMMetalToolBox initWithMetalContext:](self, "initWithMetalContext:", v6), (self = v10) != 0))
  {
    [(GGMMetalToolBox *)v10 setRepairTuningParams:&v10->_tuningParams withDict:v8];
    self = self;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)_compileShaders
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (__n128)updateMetaContainerBuffer:(_DWORD *)a3 withDetectedROI:(__n128)a4 isLowLight:opticalCenter:ispBaseOpticalCenter:opticalCenterEstConf:frameDim:lightSourceMaskTotalArea:.cold.1(void *a1, _DWORD *a2, _DWORD *a3, __n128 a4)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();

  result = a4;
  *a2 = a4.n128_u32[0];
  *a3 = a4.n128_u32[1];
  return result;
}

- (uint64_t)generateMetaContainerArrayBufFromMetaContainerBuf:imageRect:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)generateMetaContainerArrayBufFromMetaContainerBuf:imageRect:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)encodeDilate3ProbMapsHardR2SoftR2:input0:input1:input2:output0:output1:output2:meta:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)encodeConditionalDilate2ProbMapsYUVHardR2SoftR2Simd:inputYUV:probMap0:probMap1:dilatedProbMap0:dilatedProbMap1:meta:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end