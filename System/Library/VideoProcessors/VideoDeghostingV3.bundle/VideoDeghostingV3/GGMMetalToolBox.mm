@interface GGMMetalToolBox
- ($2224E03E88B63C417DE187803C830EFF)updateMetaContainerBuffer:(GGMMetalToolBox *)self withDetectedROI:isLowLight:opticalCenter:ispBaseOpticalCenter:opticalCenterEstConf:frameDim:lightSourceMaskTotalArea:;
- ($C9C5C94DDF9C26A2911411CB3E980404)generateMetaContainerArrayBufFromMetaContainerBuf:(id)buf imageRect:(CGRect)rect;
- (GGMMetalToolBox)initWithMetalContext:(id)context;
- (GGMMetalToolBox)initWithMetalContext:(id)context tuningParamDict:(id)dict;
- (id)clusterIndicesOfRois:(id *)rois withExtendedRadius:(float)radius roiCnt:(signed __int16)cnt imageRect:(CGRect)rect;
- (id)clusterTheGreenGhostRois:(id)rois withExtendedRadius:(float)radius imageRect:(CGRect)rect;
- (int)_compileShaders;
- (uint64_t)_compileShaders;
- (void)dealloc;
- (void)encodeBMSearch1RefToCommandEncoder:(id)encoder target:(id)target ref:(id)ref meta:(id)meta;
- (void)encodeBMTransferGrayMultiRefsLowLightToCommandEncoder:(id)encoder ref0:(id)ref0 ref1:(id)ref1 ref2:(id)ref2 ref3:(id)ref3 warpedRef0:(id)warpedRef0 warpedRef1:(id)warpedRef1 warpedRef2:(id)self0 warpedRef3:(id)self1 meta:(id)self2;
- (void)encodeBMTransferGrayToCommandEncoder:(id)encoder ref:(id)ref warpedRef:(id)warpedRef meta:(id)meta;
- (void)encodeBMTransferYUVToCommandEncoder:(id)encoder ref:(id)ref warpedRef:(id)warpedRef meta:(id)meta;
- (void)encodeCollectClusterMaxAndAvgLuma:(id)luma clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (void)encodeCollectClusterMaxProb:(id)prob clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (void)encodeCollectClusterMv:(id)mv clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (void)encodeCollectClusterOpticalCenterEstStats:(id)stats clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (void)encodeCollectClusterTempRepairErr:(id)err clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (void)encodeCollectMetaContainers:(id)containers metaBuf:(id)buf lsCheckOutmetaBuf:(id)outmetaBuf redoTrackingOutmetaBuf:(id)trackingOutmetaBuf doLite:(BOOL)lite roiAvoidList:(id)list;
- (void)encodeCollectMvToFuture:(id)future metaBuf:(id)buf;
- (void)encodeCombineMapWithRefMapLiteToEncoder:(id)encoder probMap:(id)map spatialProbMap:(id)probMap probMapRepairRef0:(id)ref0 probMapRepairRef1:(id)ref1 meta:(id)meta;
- (void)encodeCombineMapWithRefMapToEncoder:(id)encoder ref:(id)ref dilatedRef:(id)dilatedRef lsMap:(id)map dilatedLsMap:(id)lsMap refLsMap:(id)refLsMap targetFrameYUV:(id)v spaRef:(id)self0 dilatedSpatialRef:(id)self1 motionRef:(id)self2 motionTarget:(id)self3 probMapRepairRef0:(id)self4 probMapRepairRef1:(id)self5 output:(id)self6 spaOutput:(id)self7 meta:(id)self8;
- (void)encodeConditionalDilate2ProbMapsYUVHardR2SoftR2Simd:(id)simd inputYUV:(id)v probMap0:(id)map0 probMap1:(id)map1 dilatedProbMap0:(id)probMap0 dilatedProbMap1:(id)probMap1 meta:(id)meta;
- (void)encodeConditionalDilateProbMapYUV:(id)v inputYUV:(id)uV probMap:(id)map dilatedProbMap:(id)probMap hardDilationRadius:(signed __int16)radius softDilationRadius:(signed __int16)dilationRadius meta:(id)meta;
- (void)encodeCopyInput4DetectionYUVToCommandEncoder:(id)encoder inputTexture:(id)texture outputTexture:(id)outputTexture metaBuf:(id)buf;
- (void)encodeDilate2ProbMaps:(id)maps input0:(id)input0 input1:(id)input1 output0:(id)output0 output1:(id)output1 hardDilationRadius:(signed __int16)radius softDilationRadius:(signed __int16)dilationRadius meta:(id)self0;
- (void)encodeDilate3ProbMapsHardR2SoftR2:(id)r2 input0:(id)input0 input1:(id)input1 input2:(id)input2 output0:(id)output0 output1:(id)output1 output2:(id)output2 meta:(id)self0;
- (void)encodeDilateGrayImg:(id)img input:(id)input output:(id)output hardDilationRadius:(float)radius softDilationRadius:(float)dilationRadius meta:(id)meta;
- (void)encodeDilateProbMap:(id)map input:(id)input output:(id)output hardDilationRadius:(signed __int16)radius softDilationRadius:(signed __int16)dilationRadius meta:(id)meta;
- (void)encodeDilateReflLsMap:(id)map lsMap:(id)lsMap dilatedLsMap:(id)dilatedLsMap hardDilationRadius:(signed __int16)radius softDilationRadius:(signed __int16)dilationRadius meta:(id)meta;
- (void)encodeFuse4DetectionYUVToCommandEncoder:(id)encoder inputTexture:(id)texture probMapTexture:(id)mapTexture probMap4SpatialTexture:(id)spatialTexture temporalMitTexture:(id)mitTexture hwSimTemporalMitTexture:(id)temporalMitTexture spatialMitTexture:(id)spatialMitTexture trOutputTexture:(id)self0 hwSimOutputTexture:(id)self1 metaBuf:(id)self2;
- (void)encodeFuseSpatialOnly4DetectionYUVToCommandEncoder:(id)encoder inputTexture:(id)texture probMapTexture:(id)mapTexture probMap4SpatialTexture:(id)spatialTexture temporalMitTexture:(id)mitTexture spatialMitTexture:(id)spatialMitTexture outputTexture:(id)outputTexture metaBuf:(id)self0;
- (void)encodeGetBlobSaliency:(id)saliency inputYUV:(id)v blobSaliencyMap:(id)map meta:(id)meta;
- (void)encodeGetGhostProbMapToCommandEncoder:(id)encoder target:(id)target reflLsMap:(id)map motionMap:(id)motionMap saliencyMap:(id)saliencyMap isInitFrame:(BOOL)frame probMap:(id)probMap meta:(id)self0;
- (void)encodeGetMotionMapYUVToCommandEncoder:(id)encoder ref:(id)ref target:(id)target motionMap:(id)map meta:(id)meta;
- (void)encodeGetMvFromLsToCommandEncoder:(GGMMetalToolBox *)self target:(SEL)target lsMap:(id)map refLsMap:(id)lsMap targetCenter:(id)center refCenter:(id)refCenter meta:(id)meta;
- (void)encodeGetRoiMaxAndAvgLumaYUV:(id)v target:(id)target lsMap:(id)map meta:(id)meta;
- (void)encodeGetSaliencyMapToCommandEncoder:(id)encoder target:(id)target saliencyMap:(id)map meta:(id)meta;
- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:(id)encoder target:(id)target hwSimTempRepaired:(id)repaired hwSimTempRepairedOriRef:(id)ref probMap:(id)map spaProbMap:(id)probMap meta:(id)meta;
- (void)encodeGetTrackingHmgrphyAlignmentErrorYUVToCommandEncoder:(id)encoder target:(id)target ref:(id)ref meta:(id)meta;
- (void)encodePreprocessInputs4MotionCueYUVToCommandEncoder:(id)encoder input:(id)input ref:(id)ref repairedRef:(id)repairedRef output:(id)output refOutput:(id)refOutput metaBuf:(id)buf refMeta:(id)self0;
- (void)encodeRefineFutureHwLsMapWithTrackingToEncoder:(id)encoder reflHwMap:(id)map target:(id)target warpedRefReflHwMap:(id)hwMap warpedReflRef:(id)ref metaBuf:(id)buf;
- (void)encodeSetWOriToCommandEncoder:(id)encoder clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (void)encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:(id)encoder input:(id)input frRef0:(id)ref0 frRef1:(id)ref1 trRef0:(id)trRef0 trRef1:(id)trRef1 hwSimRef0:(id)simRef0 hwSimRef1:(id)self0 rawProbMap4Spatial:(id)self1 probMap4Spatial:(id)self2 spatialOutput:(id)self3 temporalOutput:(id)self4 hwSimTemporalOutput:(id)self5 hwSimTemporalOriRefOutput:(id)self6 inputCopy:(id)self7 metaBuf:(id)self8 ref0MetaBuf:(id)self9 ref1MetaBuf:(id)ref1MetaBuf;
- (void)encodeSyncStats:(id)stats clusterMeta:(id)meta meta:(id)a5;
- (void)encodeUnpackLsMask:(id)mask input:(id)input normalizedCenter:(id)center output:;
- (void)encodeUpdateEstOpticalCenterOffset:(id)offset meta:(id)meta;
- (void)encodeUpscaleThenReflectLsMap:(id)map input:(id)input normalizedCenter:(id)center output:;
- (void)encodeWarpRefMeta:(id)meta refMetaBuf:(id)buf metaBuf:(id)metaBuf outMetaBuf:(id)outMetaBuf lsCheckOutmetaBuf:(id)outmetaBuf redoTrackingOutmetaBuf:(id)trackingOutmetaBuf roiAvoidList:(id)list capRefMetaCnt:(BOOL)self0 currTrackId:(int)self1 doLite:(BOOL)self2;
- (void)setRepairTuningParams:(id *)params withDict:(id)dict;
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

- (void)setRepairTuningParams:(id *)params withDict:(id)dict
{
  v5 = [dict objectForKeyedSubscript:@"Repair"];
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
    params->var0 = v15;

    v16 = [v20 objectForKeyedSubscript:@"repairTargetGhostCntHi"];
    [v16 floatValue];
    params->var2 = v17;

    v18 = [v20 objectForKeyedSubscript:@"repairTargetGhostCntLo"];
    [v18 floatValue];
    params->var1 = v19;

    v5 = v20;
    goto LABEL_10;
  }

LABEL_9:
  params->var2 = 32.0;
  *&params->var0 = 0x41F8000049800000;
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
  contents = [v15 contents];
  contents[1064] = v14;
  *(contents + 272) = v13;
  *(contents + 1272) = v12;
  *(contents + 1271) = vsub_f32(v13, v12);
  *(contents + 2546) = v11;
  *(contents + 1204) = v10;
  *(contents + 273) = vdiv_f32(v13, vcvt_f32_u32(v10));
  *(contents + 2442) = v9;
  v19 = 1.0;
  v20 = fminf(fmaxf((v9 + -65536.0) / 196610.0, 0.0), 1.0);
  *(contents + 2443) = (v20 * -12000.0) + 18000.0;
  *(contents + 2444) = (v20 * -47536.0) + 65536.0;
  if (![v17 count])
  {
    *(contents + 316) = 1065353216;
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
  *(contents + 316) = v19;
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

  *(contents + 315) = v27;
  v28 = fminf(fmaxf(([v17 count] - self->_tuningParams.repairTargetGhostCntLo) / (self->_tuningParams.repairTargetGhostCntHi - self->_tuningParams.repairTargetGhostCntLo), 0.0), 1.0) * -0.9 + 1.0;
  if (*(contents + 315) < v28)
  {
    v28 = *(contents + 315);
  }

  *(contents + 315) = v28;
  *(contents + 317) = 1.0 / v28;
  if ([v17 count])
  {
    v30 = 0;
    v29.n128_u64[0] = vneg_f32(0x80000000800000);
    v53 = v29;
    v31 = (contents + 56);
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
      *&contents[4 * v30 + 1068] = [v32 trackID];
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

  *contents = v30;
  *(contents + 1) = v30;
  *(contents + 2) = v46.i32[0];
  *(contents + 3) = v45;
  *(contents + 4) = v46.i32[1];
  *(contents + 5) = v44;
  *(contents + 6) = (v45 - v46.f32[0]);
  *(contents + 7) = (v44 - v46.f32[1]);
  v47 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vaddq_f64(vcvtq_f64_f32(v46), vdupq_n_s64(0xC050000000000000)), 0)));
  *(contents + 4) = *&vsra_n_u32(v47, vcltz_s32(v47), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;

  return contents;
}

- (id)clusterTheGreenGhostRois:(id)rois withExtendedRadius:(float)radius imageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  roisCopy = rois;
  v11 = objc_alloc_init(NSMutableArray);
  v12 = objc_alloc_init(NSMutableArray);
  v13 = [roisCopy count];
  if (v13 < 1)
  {
    v22 = v11;
  }

  else
  {
    v14 = 0;
    v15 = -radius;
    v16 = v13 & 0x7FFFFFFF;
    do
    {
      v17 = [roisCopy objectAtIndexedSubscript:v14];
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
        index2RoiArray = [v31 index2RoiArray];
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

            index2RoiArray2 = [v31 index2RoiArray];
            v37 = index2RoiArray <= index2RoiArray2;
            if (index2RoiArray >= index2RoiArray2)
            {
              index2RoiArray = index2RoiArray2;
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

        v39 = [roisCopy objectAtIndexedSubscript:index2RoiArray];
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

- (id)clusterIndicesOfRois:(id *)rois withExtendedRadius:(float)radius roiCnt:(signed __int16)cnt imageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  cntCopy = cnt;
  v13 = objc_alloc_init(NSMutableArray);
  v14 = objc_alloc_init(NSMutableArray);
  if (cntCopy < 1)
  {
    v30 = v13;
  }

  else
  {
    v15 = 0;
    v16 = cntCopy;
    p_var2 = &rois->var2;
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
      v49.origin.x = (v18 - radius);
      v49.origin.y = (v19 - radius);
      v25 = v22 - v18;
      height = v20;
      v49.size.width = (v25 + (radius * 2.0));
      v26 = v23 - v19;
      width = v21;
      v49.size.height = (v26 + (radius * 2.0));
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

- ($C9C5C94DDF9C26A2911411CB3E980404)generateMetaContainerArrayBufFromMetaContainerBuf:(id)buf imageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bufCopy = buf;
  v10 = bufCopy;
  p_metaBufArray = &self->_metaBufArray;
  selfCopy = self;
  self->_metaBufArray.clusterCnt = 0;
  if (!bufCopy)
  {
    [GGMMetalToolBox generateMetaContainerArrayBufFromMetaContainerBuf:imageRect:];
LABEL_19:

    goto LABEL_16;
  }

  contents = [bufCopy contents];
  if (!contents)
  {
    [GGMMetalToolBox generateMetaContainerArrayBufFromMetaContainerBuf:imageRect:];
    goto LABEL_19;
  }

  v13 = contents;
  v14 = contents + 20;
  LODWORD(v12) = 1120403456;
  height = [(GGMMetalToolBox *)selfCopy clusterIndicesOfRois:contents + 20 withExtendedRadius:*contents roiCnt:v12 imageRect:x, y, width, height];
  v15 = [height count];
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
      v19 = [height objectAtIndexedSubscript:v16];
      v59 = v16;
      contents2 = [p_metaBufArray->var0[v16] contents];
      bzero(contents2, 0x27D0uLL);
      *(contents2 + 1064) = *(v13 + 1064);
      *(contents2 + 272) = *(v13 + 272);
      *(contents2 + 273) = *(v13 + 273);
      *(contents2 + 275) = *(v13 + 275);
      *(contents2 + 276) = *(v13 + 276);
      *(contents2 + 2378) = *(v13 + 2378);
      *(contents2 + 1204) = *(v13 + 1204);
      v21 = *v52;
      v22 = v52[1];
      *(contents2 + 597) = v52[2];
      *(contents2 + 596) = v22;
      *(contents2 + 595) = v21;
      *(contents2 + 2404) = *(v13 + 2404);
      v23 = *v51;
      v24 = v51[1];
      *(contents2 + 600) = v51[2];
      *(contents2 + 599) = v24;
      *(contents2 + 598) = v23;
      *(contents2 + 2405) = *(v13 + 2405);
      contents2[4848] = v54[752];
      v25 = *v50;
      v26 = v50[1];
      *(contents2 + 605) = v50[2];
      *(contents2 + 604) = v26;
      *(contents2 + 603) = v25;
      *(contents2 + 9764) = *(v54 + 1572);
      *(contents2 + 2442) = *(v13 + 2442);
      *(contents2 + 1203) = *(v13 + 1203);
      *contents2 = [v19 count];
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
          intValue = [v32 intValue];

          v34 = &v14[16 * intValue];
          v35 = &contents2[v31];
          v36 = *(v34 + 1);
          *v35 = *v34;
          v35[1] = v36;
          v37 = &contents2[v28];
          v37[267] = *&v69[2 * intValue];
          v38 = *&contents2[v31];
          *&v36 = *&contents2[2 * v28 + 24];
          *&contents2[4 * v29 + 636] = *&v48[4 * intValue];
          v39 = &contents2[v30];
          *v39 = *&v47[4 * intValue];
          v39[32] = *&v68[4 * intValue];
          *(&v41 + 1) = *(&v70 + 1);
          *(&v40 + 1) = *(&v71 + 1);
          v37[1066] = *&v67[2 * intValue];
          *&v41 = vbsl_s8(vcgt_f32(v38, *&v70), *&v70, v38);
          v70 = v41;
          v37[1098] = *&v66[2 * intValue];
          LODWORD(v39) = *&v65[2 * intValue];
          *&v40 = vbsl_s8(vcgt_f32(*&v36, *&v71), *&v36, *&v71);
          v71 = v40;
          v37[1386] = *&v64[2 * intValue];
          v37[2282] = *&v63[2 * intValue];
          v37[1130] = v39;
          v37[1642] = *&v62[2 * intValue];
          v37[2314] = *&v61[2 * intValue];
          v42 = *&v60[2 * intValue];
          contents2[v29++ + 598] = intValue;
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
      *(contents2 + 4) = vuzp1q_s32(v43, vrev64q_s32(v43));
      v44 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vaddq_f64(vcvtq_f64_f32(*&v70), v49), 0)));
      *(contents2 + 3) = vcvt_u32_f32(vsub_f32(*&v71, *&v70));
      *(contents2 + 4) = *&vsra_n_u32(v44, vcltz_s32(v44), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;
      v13 = v55;
      *(contents2 + 315) = *(v55 + 315);
      *(contents2 + 317) = *(v55 + 317);
      ++selfCopy->_metaBufArray.clusterCnt;

      v16 = v59 + 1;
    }

    while (v59 + 1 != v53);
    v10 = v46;
  }

LABEL_16:
  return p_metaBufArray;
}

- (void)encodeBMSearch1RefToCommandEncoder:(id)encoder target:(id)target ref:(id)ref meta:(id)meta
{
  metaCopy = meta;
  metaCopy2 = meta;
  refCopy = ref;
  targetCopy = target;
  encoderCopy = encoder;
  v16 = 8 * *[metaCopy2 contents];
  [encoderCopy setComputePipelineState:self->_bmSearch1RefFixedSampleCntYUV];
  [encoderCopy setTexture:targetCopy atIndex:0];

  [encoderCopy setTexture:refCopy atIndex:1];
  [encoderCopy setBuffer:metaCopy2 offset:0 atIndex:0];

  v19 = v16;
  v20 = vdupq_n_s64(1uLL);
  v17 = 1;
  v18 = *(&xmmword_438F8 + 8);
  [encoderCopy dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
}

- (void)encodeGetGhostProbMapToCommandEncoder:(id)encoder target:(id)target reflLsMap:(id)map motionMap:(id)motionMap saliencyMap:(id)saliencyMap isInitFrame:(BOOL)frame probMap:(id)probMap meta:(id)self0
{
  frameCopy = frame;
  metaCopy = meta;
  probMapCopy = probMap;
  saliencyMapCopy = saliencyMap;
  motionMapCopy = motionMap;
  mapCopy = map;
  targetCopy = target;
  encoderCopy = encoder;
  contents = [metaCopy contents];
  LODWORD(v24) = contents[6];
  LODWORD(v25) = contents[7];
  v26 = (((v24 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v27 = (((v25 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  width = [targetCopy width];
  height = [targetCopy height];
  width2 = [motionMapCopy width];
  height2 = [motionMapCopy height];
  [encoderCopy setComputePipelineState:self->_getGhostProbMapYUV];
  [encoderCopy setTexture:targetCopy atIndex:0];

  [encoderCopy setTexture:mapCopy atIndex:1];
  [encoderCopy setTexture:motionMapCopy atIndex:2];

  [encoderCopy setTexture:saliencyMapCopy atIndex:3];
  [encoderCopy setTexture:probMapCopy atIndex:4];

  [encoderCopy setBuffer:metaCopy offset:0 atIndex:0];
  [encoderCopy setBytes:&width length:4 atIndex:1];
  [encoderCopy setBytes:&height length:4 atIndex:2];
  [encoderCopy setBytes:&width2 length:4 atIndex:3];
  [encoderCopy setBytes:&height2 length:4 atIndex:4];
  [encoderCopy setBytes:&frameCopy length:1 atIndex:5];
  v30[0] = v26;
  v30[1] = v27;
  v30[2] = 1;
  v28 = vdupq_n_s64(4uLL);
  v29 = 1;
  [encoderCopy dispatchThreadgroups:v30 threadsPerThreadgroup:&v28];
}

- (void)encodeBMTransferYUVToCommandEncoder:(id)encoder ref:(id)ref warpedRef:(id)warpedRef meta:(id)meta
{
  metaCopy = meta;
  metaCopy2 = meta;
  warpedRefCopy = warpedRef;
  refCopy = ref;
  encoderCopy = encoder;
  contents = [metaCopy2 contents];
  v33 = contents[1204];
  width = [warpedRefCopy width];
  height = [warpedRefCopy height];
  v19 = contents[3];
  v20.i64[0] = v19;
  v20.i64[1] = HIDWORD(v19);
  __asm { FMOV            V2.2D, #4.0 }

  v26 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v20), vdupq_n_s64(0x4060000000000000uLL)), _Q2);
  v20.i64[0] = v33 / width;
  v20.i64[1] = HIDWORD(v33) / height;
  v27 = vdivq_f64(v26, vcvtq_f64_u64(v20));
  __asm { FMOV            V1.2D, #8.0 }

  v29 = vaddq_f64(v27, _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v31 = vaddq_f64(v29, _Q1);
  __asm { FMOV            V1.2D, #0.125 }

  v34 = vcvtq_u64_f64(vmulq_f64(v31, _Q1));
  [encoderCopy setComputePipelineState:self->_bmTransferYUV];
  [encoderCopy setTexture:refCopy atIndex:0];

  [encoderCopy setTexture:warpedRefCopy atIndex:1];
  [encoderCopy setBuffer:metaCopy2 offset:0 atIndex:0];

  [encoderCopy setImageblockWidth:8 height:8];
  v37 = v34;
  v38 = 1;
  v35 = vdupq_n_s64(8uLL);
  v36 = 1;
  [encoderCopy dispatchThreadgroups:&v37 threadsPerThreadgroup:&v35];
}

- (void)encodeBMTransferGrayToCommandEncoder:(id)encoder ref:(id)ref warpedRef:(id)warpedRef meta:(id)meta
{
  metaCopy = meta;
  metaCopy2 = meta;
  warpedRefCopy = warpedRef;
  refCopy = ref;
  encoderCopy = encoder;
  contents = [metaCopy2 contents];
  v33 = contents[1204];
  width = [warpedRefCopy width];
  height = [warpedRefCopy height];
  v19 = contents[3];
  v20.i64[0] = v19;
  v20.i64[1] = HIDWORD(v19);
  __asm { FMOV            V2.2D, #4.0 }

  v26 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v20), vdupq_n_s64(0x4060000000000000uLL)), _Q2);
  v20.i64[0] = v33 / width;
  v20.i64[1] = HIDWORD(v33) / height;
  v27 = vdivq_f64(v26, vcvtq_f64_u64(v20));
  __asm { FMOV            V1.2D, #8.0 }

  v29 = vaddq_f64(v27, _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v31 = vaddq_f64(v29, _Q1);
  __asm { FMOV            V1.2D, #0.125 }

  v34 = vcvtq_u64_f64(vmulq_f64(v31, _Q1));
  [encoderCopy setComputePipelineState:self->_bmTransferGray];
  [encoderCopy setTexture:refCopy atIndex:0];

  [encoderCopy setTexture:warpedRefCopy atIndex:1];
  [encoderCopy setBuffer:metaCopy2 offset:0 atIndex:0];

  v37 = v34;
  v38 = 1;
  v35 = vdupq_n_s64(8uLL);
  v36 = 1;
  [encoderCopy dispatchThreadgroups:&v37 threadsPerThreadgroup:&v35];
}

- (void)encodeBMTransferGrayMultiRefsLowLightToCommandEncoder:(id)encoder ref0:(id)ref0 ref1:(id)ref1 ref2:(id)ref2 ref3:(id)ref3 warpedRef0:(id)warpedRef0 warpedRef1:(id)warpedRef1 warpedRef2:(id)self0 warpedRef3:(id)self1 meta:(id)self2
{
  encoderCopy = encoder;
  ref2Copy = ref2;
  ref3Copy = ref3;
  warpedRef0Copy = warpedRef0;
  warpedRef2Copy = warpedRef2;
  warpedRef3Copy = warpedRef3;
  metaCopy = meta;
  metaCopy2 = meta;
  warpedRef1Copy = warpedRef1;
  ref1Copy = ref1;
  ref0Copy = ref0;
  contents = [metaCopy2 contents];
  v46 = contents[1204];
  width = [warpedRef0Copy width];
  height = [warpedRef0Copy height];
  v27 = contents[3];
  v28 = 72;
  if (!ref2Copy)
  {
    v28 = 80;
  }

  if (ref3Copy)
  {
    v28 = 64;
  }

  v29 = *(&self->super.isa + v28);
  [encoderCopy setComputePipelineState:v29];
  [encoderCopy setBuffer:metaCopy2 offset:0 atIndex:0];

  [encoderCopy setTexture:ref0Copy atIndex:0];
  [encoderCopy setTexture:warpedRef0Copy atIndex:1];
  [encoderCopy setTexture:ref1Copy atIndex:2];

  [encoderCopy setTexture:warpedRef1Copy atIndex:3];
  if (ref2Copy)
  {
    [encoderCopy setTexture:ref2Copy atIndex:4];
    [encoderCopy setTexture:warpedRef2Copy atIndex:5];
  }

  if (ref3Copy)
  {
    [encoderCopy setTexture:ref3Copy atIndex:6];
    [encoderCopy setTexture:warpedRef3Copy atIndex:7];
  }

  v30.i64[0] = v27;
  v30.i64[1] = HIDWORD(v27);
  __asm { FMOV            V2.2D, #4.0 }

  v36 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v30), vdupq_n_s64(0x4060000000000000uLL)), _Q2);
  v30.i64[0] = v46 / width;
  v30.i64[1] = HIDWORD(v46) / height;
  __asm { FMOV            V1.2D, #8.0 }

  v38 = vaddq_f64(vdivq_f64(v36, vcvtq_f64_u64(v30)), _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v40 = vaddq_f64(v38, _Q1);
  __asm { FMOV            V1.2D, #0.125 }

  v50 = vcvtq_u64_f64(vmulq_f64(v40, _Q1));
  v51 = 1;
  v48 = vdupq_n_s64(8uLL);
  v49 = 1;
  [encoderCopy dispatchThreadgroups:&v50 threadsPerThreadgroup:{&v48, self}];
}

- (void)encodeDilateGrayImg:(id)img input:(id)input output:(id)output hardDilationRadius:(float)radius softDilationRadius:(float)dilationRadius meta:(id)meta
{
  metaCopy = meta;
  metaCopy2 = meta;
  outputCopy = output;
  inputCopy = input;
  imgCopy = img;
  contents = [metaCopy2 contents];
  v19 = vcvt_s32_f32(__PAIR64__(LODWORD(dilationRadius), LODWORD(radius)));
  v42[1] = v19.i16[2];
  v42[0] = v19.i16[0];
  v20 = contents[3];
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
  [imgCopy setComputePipelineState:self->_dilateGrayImg];
  [imgCopy setBuffer:metaCopy2 offset:0 atIndex:0];

  [imgCopy setTexture:inputCopy atIndex:0];
  [imgCopy setTexture:outputCopy atIndex:1];

  [imgCopy setBytes:v42 length:4 atIndex:1];
  v40 = v37;
  v41 = 1;
  v38 = vdupq_n_s64(8uLL);
  v39 = 1;
  [imgCopy dispatchThreadgroups:&v40 threadsPerThreadgroup:&v38];
}

- (void)encodeDilateProbMap:(id)map input:(id)input output:(id)output hardDilationRadius:(signed __int16)radius softDilationRadius:(signed __int16)dilationRadius meta:(id)meta
{
  dilationRadiusCopy = dilationRadius;
  radiusCopy = radius;
  mapCopy = map;
  metaCopy = meta;
  metaCopy2 = meta;
  outputCopy = output;
  inputCopy = input;
  v19 = *([metaCopy2 contents] + 3);
  v38[1] = dilationRadiusCopy;
  v38[0] = radiusCopy;
  v20 = radiusCopy == 2 && self->_doSimdShuffleAndFill;
  v21 = dilationRadiusCopy == 2;
  v23 = v21 && v20;
  _ZF = !v21 || !v20;
  v24 = 112;
  if (!_ZF)
  {
    v24 = 120;
  }

  [mapCopy setComputePipelineState:*(&self->super.isa + v24)];
  [mapCopy setBuffer:metaCopy2 offset:0 atIndex:0];

  [mapCopy setTexture:inputCopy atIndex:0];
  [mapCopy setTexture:outputCopy atIndex:1];

  if (!v23)
  {
    [mapCopy setBytes:v38 length:4 atIndex:1];
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
  [mapCopy dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
}

- (void)encodeDilate3ProbMapsHardR2SoftR2:(id)r2 input0:(id)input0 input1:(id)input1 input2:(id)input2 output0:(id)output0 output1:(id)output1 output2:(id)output2 meta:(id)self0
{
  r2Copy = r2;
  input0Copy = input0;
  input1Copy = input1;
  input2Copy = input2;
  output0Copy = output0;
  output1Copy = output1;
  output2Copy = output2;
  metaCopy = meta;
  v24 = metaCopy;
  if (self->_doSimdShuffleAndFill)
  {
    contents = [metaCopy contents];
    v36 = contents[1204];
    v37 = output2Copy;
    v26 = output1Copy;
    v27 = input2Copy;
    v28 = input1Copy;
    v29 = input0Copy;
    width = [output0Copy width];
    height = [output0Copy height];
    LODWORD(v32) = *(contents + 6);
    LODWORD(v33) = *(contents + 7);
    v34 = (((v32 + 128.0 + 4.0) / (v36 / width) + 4.0 + -1.0) * 0.25);
    v35 = (((v33 + 128.0 + 4.0) / (HIDWORD(v36) / height) + 32.0 + -1.0) * 0.03125);
    [r2Copy setComputePipelineState:self->_dilate3ProbMapsHardR2SoftR2Simd];
    [r2Copy setBuffer:v24 offset:0 atIndex:0];
    [r2Copy setTexture:v29 atIndex:0];
    [r2Copy setTexture:v28 atIndex:1];
    [r2Copy setTexture:v27 atIndex:2];
    [r2Copy setTexture:output0Copy atIndex:3];
    [r2Copy setTexture:v26 atIndex:4];
    [r2Copy setTexture:v37 atIndex:5];
    v40[0] = v34;
    v40[1] = v35;
    input0Copy = v29;
    input1Copy = v28;
    input2Copy = v27;
    output1Copy = v26;
    output2Copy = v37;
    v40[2] = 1;
    v38 = xmmword_43880;
    v39 = 1;
    [r2Copy dispatchThreadgroups:v40 threadsPerThreadgroup:&v38];
  }

  else
  {
    [GGMMetalToolBox encodeDilate3ProbMapsHardR2SoftR2:input0:input1:input2:output0:output1:output2:meta:];
  }
}

- (void)encodeDilate2ProbMaps:(id)maps input0:(id)input0 input1:(id)input1 output0:(id)output0 output1:(id)output1 hardDilationRadius:(signed __int16)radius softDilationRadius:(signed __int16)dilationRadius meta:(id)self0
{
  metaCopy = meta;
  output1Copy = output1;
  output0Copy = output0;
  input1Copy = input1;
  input0Copy = input0;
  mapsCopy = maps;
  contents = [metaCopy contents];
  LODWORD(v23) = contents[6];
  LODWORD(v24) = contents[7];
  v25 = (((v23 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v26 = (((v24 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v31[1] = dilationRadius;
  v31[0] = radius;
  [mapsCopy setComputePipelineState:self->_dilate2ProbMaps];
  [mapsCopy setBuffer:metaCopy offset:0 atIndex:0];

  [mapsCopy setTexture:input0Copy atIndex:0];
  [mapsCopy setTexture:input1Copy atIndex:1];

  [mapsCopy setTexture:output0Copy atIndex:2];
  [mapsCopy setTexture:output1Copy atIndex:3];

  [mapsCopy setBytes:v31 length:4 atIndex:1];
  v30[0] = v25;
  v30[1] = v26;
  v30[2] = 1;
  v28 = vdupq_n_s64(4uLL);
  v29 = 1;
  [mapsCopy dispatchThreadgroups:v30 threadsPerThreadgroup:&v28];
}

- (void)encodeGetMotionMapYUVToCommandEncoder:(id)encoder ref:(id)ref target:(id)target motionMap:(id)map meta:(id)meta
{
  metaCopy = meta;
  metaCopy2 = meta;
  mapCopy = map;
  targetCopy = target;
  refCopy = ref;
  encoderCopy = encoder;
  v19 = *([metaCopy2 contents] + 3);
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
  [encoderCopy setComputePipelineState:self->_getMotionMapYUV];
  [encoderCopy setTexture:refCopy atIndex:0];

  [encoderCopy setTexture:targetCopy atIndex:1];
  [encoderCopy setTexture:mapCopy atIndex:2];

  [encoderCopy setBuffer:metaCopy2 offset:0 atIndex:0];
  v37 = v34;
  v38 = 1;
  v35 = vdupq_n_s64(8uLL);
  v36 = 1;
  [encoderCopy dispatchThreadgroups:&v37 threadsPerThreadgroup:&v35];
}

- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:(id)encoder target:(id)target hwSimTempRepaired:(id)repaired hwSimTempRepairedOriRef:(id)ref probMap:(id)map spaProbMap:(id)probMap meta:(id)meta
{
  metaCopy = meta;
  probMapCopy = probMap;
  mapCopy = map;
  refCopy = ref;
  repairedCopy = repaired;
  targetCopy = target;
  encoderCopy = encoder;
  contents = [metaCopy contents];
  LODWORD(v24) = contents[6];
  LODWORD(v25) = contents[7];
  v26 = (((v24 + 128.0 + 4.0) * 0.125 + 8.0 + -1.0) * 0.125);
  v27 = (((v25 + 128.0 + 4.0) * 0.125 + 8.0 + -1.0) * 0.125);
  [encoderCopy setComputePipelineState:self->_getTempRepairedBgAlignErrYUV];
  [encoderCopy setTexture:targetCopy atIndex:0];

  [encoderCopy setTexture:repairedCopy atIndex:1];
  [encoderCopy setTexture:refCopy atIndex:2];

  [encoderCopy setTexture:mapCopy atIndex:3];
  [encoderCopy setTexture:probMapCopy atIndex:4];

  [encoderCopy setBuffer:metaCopy offset:0 atIndex:0];
  v30[0] = v26;
  v30[1] = v27;
  v30[2] = 1;
  v28 = vdupq_n_s64(8uLL);
  v29 = 1;
  [encoderCopy dispatchThreadgroups:v30 threadsPerThreadgroup:&v28];
}

- (void)encodeCombineMapWithRefMapToEncoder:(id)encoder ref:(id)ref dilatedRef:(id)dilatedRef lsMap:(id)map dilatedLsMap:(id)lsMap refLsMap:(id)refLsMap targetFrameYUV:(id)v spaRef:(id)self0 dilatedSpatialRef:(id)self1 motionRef:(id)self2 motionTarget:(id)self3 probMapRepairRef0:(id)self4 probMapRepairRef1:(id)self5 output:(id)self6 spaOutput:(id)self7 meta:(id)self8
{
  metaCopy = meta;
  spaOutputCopy = spaOutput;
  outputCopy = output;
  ref1Copy = ref1;
  ref0Copy = ref0;
  targetCopy = target;
  motionRefCopy = motionRef;
  spatialRefCopy = spatialRef;
  spaRefCopy = spaRef;
  vCopy = v;
  refLsMapCopy = refLsMap;
  lsMapCopy = lsMap;
  mapCopy = map;
  dilatedRefCopy = dilatedRef;
  refCopy = ref;
  encoderCopy = encoder;
  contents = [metaCopy contents];
  LODWORD(v29) = contents[6];
  LODWORD(v30) = contents[7];
  v37 = (((v30 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v39 = (((v29 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  [encoderCopy setComputePipelineState:self->_combineMapWithRefMap];
  [encoderCopy setBuffer:metaCopy offset:0 atIndex:0];

  [encoderCopy setTexture:refCopy atIndex:1];
  [encoderCopy setTexture:dilatedRefCopy atIndex:2];

  [encoderCopy setTexture:mapCopy atIndex:3];
  [encoderCopy setTexture:lsMapCopy atIndex:4];

  [encoderCopy setTexture:refLsMapCopy atIndex:5];
  [encoderCopy setTexture:vCopy atIndex:6];

  [encoderCopy setTexture:spaRefCopy atIndex:7];
  [encoderCopy setTexture:spatialRefCopy atIndex:8];

  [encoderCopy setTexture:motionRefCopy atIndex:9];
  [encoderCopy setTexture:targetCopy atIndex:10];

  [encoderCopy setTexture:ref0Copy atIndex:11];
  [encoderCopy setTexture:ref1Copy atIndex:12];

  [encoderCopy setTexture:outputCopy atIndex:13];
  [encoderCopy setTexture:spaOutputCopy atIndex:14];

  v48[0] = v39;
  v48[1] = v37;
  v48[2] = 1;
  v46 = vdupq_n_s64(4uLL);
  v47 = 1;
  [encoderCopy dispatchThreadgroups:v48 threadsPerThreadgroup:&v46];
}

- (void)encodeCombineMapWithRefMapLiteToEncoder:(id)encoder probMap:(id)map spatialProbMap:(id)probMap probMapRepairRef0:(id)ref0 probMapRepairRef1:(id)ref1 meta:(id)meta
{
  metaCopy = meta;
  metaCopy2 = meta;
  ref1Copy = ref1;
  ref0Copy = ref0;
  probMapCopy = probMap;
  mapCopy = map;
  encoderCopy = encoder;
  contents = [metaCopy2 contents];
  LODWORD(v23) = contents[6];
  LODWORD(v24) = contents[7];
  v25 = (((v23 + 128.0 + 4.0) * 0.25 + 8.0 + -1.0) * 0.125);
  v26 = (((v24 + 128.0 + 4.0) * 0.25 + 8.0 + -1.0) * 0.125);
  [encoderCopy setComputePipelineState:self->_combineMapWithRefMapLite];
  [encoderCopy setBuffer:metaCopy2 offset:0 atIndex:0];

  [encoderCopy setTexture:mapCopy atIndex:1];
  [encoderCopy setTexture:probMapCopy atIndex:2];

  [encoderCopy setTexture:ref0Copy atIndex:3];
  [encoderCopy setTexture:ref1Copy atIndex:4];

  v29[0] = v25;
  v29[1] = v26;
  v29[2] = 1;
  v27 = vdupq_n_s64(8uLL);
  v28 = 1;
  [encoderCopy dispatchThreadgroups:v29 threadsPerThreadgroup:&v27];
}

- (void)encodeGetSaliencyMapToCommandEncoder:(id)encoder target:(id)target saliencyMap:(id)map meta:(id)meta
{
  metaCopy = meta;
  metaCopy2 = meta;
  mapCopy = map;
  targetCopy = target;
  encoderCopy = encoder;
  contents = [metaCopy2 contents];
  LODWORD(v17) = contents[6];
  LODWORD(v18) = contents[7];
  v19 = (((v17 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v20 = (((v18 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  width = [mapCopy width];
  height = [mapCopy height];
  [encoderCopy setComputePipelineState:self->_getSaliencyMapYUV];
  [encoderCopy setTexture:targetCopy atIndex:0];

  [encoderCopy setTexture:mapCopy atIndex:1];
  [encoderCopy setBuffer:metaCopy2 offset:0 atIndex:0];

  [encoderCopy setBytes:&width length:4 atIndex:1];
  [encoderCopy setBytes:&height length:4 atIndex:2];
  v23[0] = v19;
  v23[1] = v20;
  v23[2] = 1;
  v21 = vdupq_n_s64(4uLL);
  v22 = 1;
  [encoderCopy dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
}

- (void)encodeDilateReflLsMap:(id)map lsMap:(id)lsMap dilatedLsMap:(id)dilatedLsMap hardDilationRadius:(signed __int16)radius softDilationRadius:(signed __int16)dilationRadius meta:(id)meta
{
  metaCopy = meta;
  metaCopy2 = meta;
  dilatedLsMapCopy = dilatedLsMap;
  lsMapCopy = lsMap;
  mapCopy = map;
  v37[1] = dilationRadius;
  v37[0] = radius;
  v20 = *([metaCopy2 contents] + 3);
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
  [mapCopy setComputePipelineState:self->_dilateReflLsMap];
  [mapCopy setBuffer:metaCopy2 offset:0 atIndex:0];

  [mapCopy setTexture:lsMapCopy atIndex:0];
  [mapCopy setTexture:dilatedLsMapCopy atIndex:1];

  [mapCopy setBytes:v37 length:4 atIndex:1];
  v35 = v32;
  v36 = 1;
  v33 = vdupq_n_s64(4uLL);
  v34 = 1;
  [mapCopy dispatchThreadgroups:&v35 threadsPerThreadgroup:&v33];
}

- (void)encodeGetBlobSaliency:(id)saliency inputYUV:(id)v blobSaliencyMap:(id)map meta:(id)meta
{
  metaCopy = meta;
  metaCopy2 = meta;
  mapCopy = map;
  vCopy = v;
  saliencyCopy = saliency;
  v16 = *([metaCopy2 contents] + 3);
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
  [saliencyCopy setComputePipelineState:self->_getBlobSaliencyMapYUV];
  [saliencyCopy setBuffer:metaCopy2 offset:0 atIndex:0];

  [saliencyCopy setTexture:vCopy atIndex:0];
  [saliencyCopy setTexture:mapCopy atIndex:1];

  v34 = v31;
  v35 = 1;
  v32 = vdupq_n_s64(8uLL);
  v33 = 1;
  [saliencyCopy dispatchThreadgroups:&v34 threadsPerThreadgroup:&v32];
}

- (void)encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:(id)encoder input:(id)input frRef0:(id)ref0 frRef1:(id)ref1 trRef0:(id)trRef0 trRef1:(id)trRef1 hwSimRef0:(id)simRef0 hwSimRef1:(id)self0 rawProbMap4Spatial:(id)self1 probMap4Spatial:(id)self2 spatialOutput:(id)self3 temporalOutput:(id)self4 hwSimTemporalOutput:(id)self5 hwSimTemporalOriRefOutput:(id)self6 inputCopy:(id)self7 metaBuf:(id)self8 ref0MetaBuf:(id)self9 ref1MetaBuf:(id)ref1MetaBuf
{
  spatialTemporalRepair4DetectionYUV = self->_spatialTemporalRepair4DetectionYUV;
  ref1MetaBufCopy = ref1MetaBuf;
  metaBufCopy = metaBuf;
  bufCopy = buf;
  copyCopy = copy;
  refOutputCopy = refOutput;
  simTemporalOutputCopy = simTemporalOutput;
  temporalOutputCopy = temporalOutput;
  outputCopy = output;
  map4SpatialCopy = map4Spatial;
  spatialCopy = spatial;
  simRef1Copy = simRef1;
  simRef0Copy = simRef0;
  trRef1Copy = trRef1;
  trRef0Copy = trRef0;
  ref1Copy = ref1;
  ref0Copy = ref0;
  inputCopy = input;
  encoderCopy = encoder;
  [encoderCopy setComputePipelineState:spatialTemporalRepair4DetectionYUV];
  [encoderCopy setTexture:inputCopy atIndex:0];

  [encoderCopy setTexture:ref0Copy atIndex:1];
  [encoderCopy setTexture:ref1Copy atIndex:2];

  [encoderCopy setTexture:trRef0Copy atIndex:3];
  [encoderCopy setTexture:trRef1Copy atIndex:4];

  [encoderCopy setTexture:simRef0Copy atIndex:5];
  [encoderCopy setTexture:simRef1Copy atIndex:6];

  [encoderCopy setTexture:spatialCopy atIndex:7];
  [encoderCopy setTexture:map4SpatialCopy atIndex:8];

  [encoderCopy setTexture:outputCopy atIndex:9];
  [encoderCopy setTexture:temporalOutputCopy atIndex:10];

  [encoderCopy setTexture:copyCopy atIndex:11];
  [encoderCopy setTexture:simTemporalOutputCopy atIndex:12];

  [encoderCopy setTexture:refOutputCopy atIndex:13];
  [encoderCopy setBuffer:bufCopy offset:0 atIndex:0];
  [encoderCopy setBuffer:metaBufCopy offset:0 atIndex:1];

  [encoderCopy setBuffer:ref1MetaBufCopy offset:0 atIndex:2];
  [encoderCopy setImageblockWidth:8 height:4];
  contents = [bufCopy contents];

  v31 = contents[3];
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
  [encoderCopy dispatchThreadgroups:&v56 threadsPerThreadgroup:&v54];
}

- (void)encodeCopyInput4DetectionYUVToCommandEncoder:(id)encoder inputTexture:(id)texture outputTexture:(id)outputTexture metaBuf:(id)buf
{
  copyInput4DetectionYUV = self->_copyInput4DetectionYUV;
  bufCopy = buf;
  outputTextureCopy = outputTexture;
  textureCopy = texture;
  encoderCopy = encoder;
  [encoderCopy setComputePipelineState:copyInput4DetectionYUV];
  [encoderCopy setBuffer:bufCopy offset:0 atIndex:0];
  [encoderCopy setTexture:textureCopy atIndex:0];

  [encoderCopy setTexture:outputTextureCopy atIndex:1];
  [encoderCopy setImageblockWidth:8 height:4];
  contents = [bufCopy contents];

  v15 = contents[3];
  v16.i64[0] = v15;
  v16.i64[1] = HIDWORD(v15);
  __asm { FMOV            V1.2D, #4.0 }

  v22 = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v16), vdupq_n_s64(0x4060000000000000uLL)), _Q1), xmmword_438C0);
  __asm { FMOV            V1.2D, #-1.0 }

  v26 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v22, _Q1), xmmword_438D0));
  v27 = 1;
  v24 = xmmword_438B0;
  v25 = 1;
  [encoderCopy dispatchThreadgroups:&v26 threadsPerThreadgroup:&v24];
}

- (void)encodeFuse4DetectionYUVToCommandEncoder:(id)encoder inputTexture:(id)texture probMapTexture:(id)mapTexture probMap4SpatialTexture:(id)spatialTexture temporalMitTexture:(id)mitTexture hwSimTemporalMitTexture:(id)temporalMitTexture spatialMitTexture:(id)spatialMitTexture trOutputTexture:(id)self0 hwSimOutputTexture:(id)self1 metaBuf:(id)self2
{
  fuse4DetectionYUV = self->_fuse4DetectionYUV;
  bufCopy = buf;
  simOutputTextureCopy = simOutputTexture;
  outputTextureCopy = outputTexture;
  spatialMitTextureCopy = spatialMitTexture;
  temporalMitTextureCopy = temporalMitTexture;
  mitTextureCopy = mitTexture;
  spatialTextureCopy = spatialTexture;
  mapTextureCopy = mapTexture;
  textureCopy = texture;
  encoderCopy = encoder;
  [encoderCopy setComputePipelineState:fuse4DetectionYUV];
  [encoderCopy setBuffer:bufCopy offset:0 atIndex:0];
  [encoderCopy setTexture:textureCopy atIndex:0];

  [encoderCopy setTexture:mitTextureCopy atIndex:1];
  [encoderCopy setTexture:temporalMitTextureCopy atIndex:2];

  [encoderCopy setTexture:spatialMitTextureCopy atIndex:3];
  [encoderCopy setTexture:mapTextureCopy atIndex:4];

  [encoderCopy setTexture:spatialTextureCopy atIndex:5];
  [encoderCopy setTexture:outputTextureCopy atIndex:6];

  [encoderCopy setTexture:simOutputTextureCopy atIndex:7];
  [encoderCopy setImageblockWidth:8 height:4];
  v26 = bufCopy;
  contents = [bufCopy contents];

  v28 = contents[3];
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
  [encoderCopy dispatchThreadgroups:&v41 threadsPerThreadgroup:&v39];
}

- (void)encodeFuseSpatialOnly4DetectionYUVToCommandEncoder:(id)encoder inputTexture:(id)texture probMapTexture:(id)mapTexture probMap4SpatialTexture:(id)spatialTexture temporalMitTexture:(id)mitTexture spatialMitTexture:(id)spatialMitTexture outputTexture:(id)outputTexture metaBuf:(id)self0
{
  fuseSpatialOnly4DetectionYUV = self->_fuseSpatialOnly4DetectionYUV;
  bufCopy = buf;
  outputTextureCopy = outputTexture;
  spatialMitTextureCopy = spatialMitTexture;
  mitTextureCopy = mitTexture;
  spatialTextureCopy = spatialTexture;
  mapTextureCopy = mapTexture;
  textureCopy = texture;
  encoderCopy = encoder;
  [encoderCopy setComputePipelineState:fuseSpatialOnly4DetectionYUV];
  [encoderCopy setBuffer:bufCopy offset:0 atIndex:0];
  [encoderCopy setTexture:textureCopy atIndex:0];

  [encoderCopy setTexture:mitTextureCopy atIndex:1];
  [encoderCopy setTexture:spatialMitTextureCopy atIndex:2];

  [encoderCopy setTexture:mapTextureCopy atIndex:3];
  [encoderCopy setTexture:spatialTextureCopy atIndex:4];

  [encoderCopy setTexture:outputTextureCopy atIndex:5];
  [encoderCopy setImageblockWidth:8 height:4];
  contents = [bufCopy contents];

  v25 = contents[3];
  v26.i64[0] = v25;
  v26.i64[1] = HIDWORD(v25);
  __asm { FMOV            V1.2D, #4.0 }

  v32 = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v26), vdupq_n_s64(0x4060000000000000uLL)), _Q1), xmmword_438C0);
  __asm { FMOV            V1.2D, #-1.0 }

  v37 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v32, _Q1), xmmword_438D0));
  v38 = 1;
  v35 = xmmword_438B0;
  v36 = 1;
  [encoderCopy dispatchThreadgroups:&v37 threadsPerThreadgroup:&v35];
}

- (void)encodeCollectClusterTempRepairErr:(id)err clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  bufCopy = buf;
  metaBufCopy = metaBuf;
  bufCopy2 = buf;
  errCopy = err;
  contents = [bufCopy2 contents];
  [errCopy setComputePipelineState:self->_collectClusterTempRepairErr];
  [errCopy setBuffer:bufCopy2 offset:0 atIndex:0];

  [errCopy setBuffer:metaBufCopy offset:0 atIndex:1];
  v16 = (*contents + 31) >> 5;
  v17 = vdupq_n_s64(1uLL);
  v14 = 32;
  v15 = xmmword_438E8;
  [errCopy dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
}

- (void)encodeCollectClusterMv:(id)mv clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  bufCopy = buf;
  metaBufCopy = metaBuf;
  bufCopy2 = buf;
  mvCopy = mv;
  contents = [bufCopy2 contents];
  [mvCopy setComputePipelineState:self->_collectClusterMv];
  [mvCopy setBuffer:bufCopy2 offset:0 atIndex:0];

  [mvCopy setBuffer:metaBufCopy offset:0 atIndex:1];
  v16 = (*contents + 31) >> 5;
  v17 = vdupq_n_s64(1uLL);
  v14 = 32;
  v15 = xmmword_438E8;
  [mvCopy dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
}

- (void)encodeUpscaleThenReflectLsMap:(id)map input:(id)input normalizedCenter:(id)center output:
{
  v17 = v5;
  centerCopy = center;
  inputCopy = input;
  mapCopy = map;
  v12 = ([centerCopy width] + 15) >> 4;
  v13 = ([centerCopy height] + 15) >> 4;
  [mapCopy setComputePipelineState:self->_upscaleThenReflectLsMap];
  [mapCopy setTexture:inputCopy atIndex:0];

  [mapCopy setBytes:&v17 length:8 atIndex:0];
  [mapCopy setTexture:centerCopy atIndex:1];

  v16[0] = v12;
  v16[1] = v13;
  v16[2] = 1;
  v14 = vdupq_n_s64(0x10uLL);
  v15 = 1;
  [mapCopy dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
}

- (void)encodePreprocessInputs4MotionCueYUVToCommandEncoder:(id)encoder input:(id)input ref:(id)ref repairedRef:(id)repairedRef output:(id)output refOutput:(id)refOutput metaBuf:(id)buf refMeta:(id)self0
{
  preprocessInputs4MotionCueYUV = self->_preprocessInputs4MotionCueYUV;
  metaCopy = meta;
  bufCopy = buf;
  refOutputCopy = refOutput;
  outputCopy = output;
  repairedRefCopy = repairedRef;
  refCopy = ref;
  inputCopy = input;
  encoderCopy = encoder;
  [encoderCopy setComputePipelineState:preprocessInputs4MotionCueYUV];
  [encoderCopy setTexture:inputCopy atIndex:0];

  [encoderCopy setTexture:refCopy atIndex:1];
  [encoderCopy setTexture:repairedRefCopy atIndex:2];

  [encoderCopy setTexture:outputCopy atIndex:3];
  [encoderCopy setTexture:refOutputCopy atIndex:4];

  [encoderCopy setBuffer:bufCopy offset:0 atIndex:0];
  [encoderCopy setBuffer:metaCopy offset:0 atIndex:1];

  [encoderCopy setImageblockWidth:8 height:4];
  contents = [bufCopy contents];

  v26 = contents[3];
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
  [encoderCopy dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
}

- (void)encodeCollectMvToFuture:(id)future metaBuf:(id)buf
{
  bufCopy = buf;
  bufCopy2 = buf;
  futureCopy = future;
  contents = [bufCopy2 contents];
  [futureCopy setComputePipelineState:self->_collectMvToFuture];
  [futureCopy setBuffer:bufCopy2 offset:0 atIndex:0];

  v13 = (*contents + 31) >> 5;
  v14 = vdupq_n_s64(1uLL);
  v11 = 32;
  v12 = xmmword_438E8;
  [futureCopy dispatchThreadgroups:&v13 threadsPerThreadgroup:&v11];
}

- (void)encodeWarpRefMeta:(id)meta refMetaBuf:(id)buf metaBuf:(id)metaBuf outMetaBuf:(id)outMetaBuf lsCheckOutmetaBuf:(id)outmetaBuf redoTrackingOutmetaBuf:(id)trackingOutmetaBuf roiAvoidList:(id)list capRefMetaCnt:(BOOL)self0 currTrackId:(int)self1 doLite:(BOOL)self2
{
  cntCopy = cnt;
  liteCopy = lite;
  warpRefMeta = self->_warpRefMeta;
  listCopy = list;
  trackingOutmetaBufCopy = trackingOutmetaBuf;
  outmetaBufCopy = outmetaBuf;
  outMetaBufCopy = outMetaBuf;
  metaBufCopy = metaBuf;
  bufCopy = buf;
  metaCopy = meta;
  [metaCopy setComputePipelineState:warpRefMeta];
  [metaCopy setBuffer:bufCopy offset:0 atIndex:0];

  [metaCopy setBuffer:metaBufCopy offset:0 atIndex:1];
  [metaCopy setBuffer:outMetaBufCopy offset:0 atIndex:2];

  [metaCopy setBuffer:outmetaBufCopy offset:0 atIndex:3];
  [metaCopy setBuffer:trackingOutmetaBufCopy offset:0 atIndex:4];

  [metaCopy setBytes:&cntCopy length:1 atIndex:5];
  [metaCopy setBytes:&id length:4 atIndex:6];
  [metaCopy setBytes:&liteCopy length:1 atIndex:7];
  [metaCopy setBuffer:listCopy offset:0 atIndex:8];

  v28 = vdupq_n_s64(1uLL);
  v29 = 1;
  v26 = xmmword_438F8;
  v27 = 1;
  [metaCopy dispatchThreadgroups:&v28 threadsPerThreadgroup:&v26];
}

- (void)encodeCollectMetaContainers:(id)containers metaBuf:(id)buf lsCheckOutmetaBuf:(id)outmetaBuf redoTrackingOutmetaBuf:(id)trackingOutmetaBuf doLite:(BOOL)lite roiAvoidList:(id)list
{
  liteCopy = lite;
  collectMetaContainers = self->_collectMetaContainers;
  listCopy = list;
  trackingOutmetaBufCopy = trackingOutmetaBuf;
  outmetaBufCopy = outmetaBuf;
  bufCopy = buf;
  containersCopy = containers;
  [containersCopy setComputePipelineState:collectMetaContainers];
  [containersCopy setBuffer:bufCopy offset:0 atIndex:0];

  [containersCopy setBuffer:outmetaBufCopy offset:0 atIndex:1];
  [containersCopy setBuffer:trackingOutmetaBufCopy offset:0 atIndex:2];

  [containersCopy setBytes:&liteCopy length:1 atIndex:3];
  [containersCopy setBuffer:listCopy offset:0 atIndex:4];

  v20 = vdupq_n_s64(1uLL);
  v21 = 1;
  v18 = xmmword_438F8;
  v19 = 1;
  [containersCopy dispatchThreadgroups:&v20 threadsPerThreadgroup:&v18];
}

- (void)encodeRefineFutureHwLsMapWithTrackingToEncoder:(id)encoder reflHwMap:(id)map target:(id)target warpedRefReflHwMap:(id)hwMap warpedReflRef:(id)ref metaBuf:(id)buf
{
  bufCopy = buf;
  bufCopy2 = buf;
  refCopy = ref;
  hwMapCopy = hwMap;
  targetCopy = target;
  mapCopy = map;
  encoderCopy = encoder;
  contents = [bufCopy2 contents];
  LODWORD(v23) = contents[6];
  LODWORD(v24) = contents[7];
  v25 = (((v23 + 128.0 + 4.0) * 0.5 + 8.0 + -1.0) * 0.125);
  v26 = (((v24 + 128.0 + 4.0) * 0.5 + 8.0 + -1.0) * 0.125);
  [encoderCopy setComputePipelineState:self->_refineFutureHwLsMapWithTrackingYUV];
  [encoderCopy setBuffer:bufCopy2 offset:0 atIndex:0];

  [encoderCopy setTexture:mapCopy atIndex:0];
  [encoderCopy setTexture:targetCopy atIndex:1];

  [encoderCopy setTexture:hwMapCopy atIndex:2];
  [encoderCopy setTexture:refCopy atIndex:3];

  [encoderCopy setTexture:mapCopy atIndex:4];
  v29[0] = v25;
  v29[1] = v26;
  v29[2] = 1;
  v27 = vdupq_n_s64(8uLL);
  v28 = 1;
  [encoderCopy dispatchThreadgroups:v29 threadsPerThreadgroup:&v27];
}

- (void)encodeCollectClusterMaxProb:(id)prob clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  bufCopy = buf;
  metaBufCopy = metaBuf;
  bufCopy2 = buf;
  probCopy = prob;
  contents = [bufCopy2 contents];
  [probCopy setComputePipelineState:self->_collectClusterMaxProb];
  [probCopy setBuffer:bufCopy2 offset:0 atIndex:0];

  [probCopy setBuffer:metaBufCopy offset:0 atIndex:1];
  v16 = (*contents + 31) >> 5;
  v17 = vdupq_n_s64(1uLL);
  v14 = 32;
  v15 = xmmword_438E8;
  [probCopy dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
}

- (void)encodeGetRoiMaxAndAvgLumaYUV:(id)v target:(id)target lsMap:(id)map meta:(id)meta
{
  metaCopy = meta;
  metaCopy2 = meta;
  mapCopy = map;
  targetCopy = target;
  vCopy = v;
  v16 = *([metaCopy2 contents] + 3);
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
  [vCopy setComputePipelineState:self->_getRoiMaxAndAvgLumaYUV];
  [vCopy setBuffer:metaCopy2 offset:0 atIndex:0];

  [vCopy setTexture:targetCopy atIndex:0];
  [vCopy setTexture:mapCopy atIndex:1];

  v34 = v31;
  v35 = 1;
  v32 = vdupq_n_s64(8uLL);
  v33 = 1;
  [vCopy dispatchThreadgroups:&v34 threadsPerThreadgroup:&v32];
}

- (void)encodeCollectClusterMaxAndAvgLuma:(id)luma clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  bufCopy = buf;
  metaBufCopy = metaBuf;
  bufCopy2 = buf;
  lumaCopy = luma;
  contents = [bufCopy2 contents];
  [lumaCopy setComputePipelineState:self->_collectClusterMaxAndAvgLuma];
  [lumaCopy setBuffer:bufCopy2 offset:0 atIndex:0];

  [lumaCopy setBuffer:metaBufCopy offset:0 atIndex:1];
  v16 = (*contents + 31) >> 5;
  v17 = vdupq_n_s64(1uLL);
  v14 = 32;
  v15 = xmmword_438E8;
  [lumaCopy dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
}

- (void)encodeGetMvFromLsToCommandEncoder:(GGMMetalToolBox *)self target:(SEL)target lsMap:(id)map refLsMap:(id)lsMap targetCenter:(id)center refCenter:(id)refCenter meta:(id)meta
{
  v28 = v8;
  v29 = v7;
  metaCopy = meta;
  metaCopy2 = meta;
  refCenterCopy = refCenter;
  centerCopy = center;
  lsMapCopy = lsMap;
  mapCopy = map;
  contents = [metaCopy2 contents];
  width = [lsMapCopy width];
  LODWORD(map) = [lsMapCopy height];

  mapCopy2 = map;
  [mapCopy setComputePipelineState:self->_getMvFromLs];
  [mapCopy setTexture:centerCopy atIndex:0];

  [mapCopy setTexture:refCenterCopy atIndex:1];
  [mapCopy setBuffer:metaCopy2 offset:0 atIndex:0];

  [mapCopy setBytes:&width length:8 atIndex:1];
  [mapCopy setBytes:&mapCopy2 length:8 atIndex:2];
  [mapCopy setBytes:&v29 length:8 atIndex:3];
  [mapCopy setBytes:&v28 length:8 atIndex:4];
  v24 = (*contents + 31) >> 5;
  v25 = vdupq_n_s64(1uLL);
  v22 = 32;
  v23 = xmmword_438E8;
  [mapCopy dispatchThreadgroups:&v24 threadsPerThreadgroup:&v22];
}

- (void)encodeConditionalDilateProbMapYUV:(id)v inputYUV:(id)uV probMap:(id)map dilatedProbMap:(id)probMap hardDilationRadius:(signed __int16)radius softDilationRadius:(signed __int16)dilationRadius meta:(id)meta
{
  dilationRadiusCopy = dilationRadius;
  radiusCopy = radius;
  vCopy = v;
  metaCopy = meta;
  metaCopy2 = meta;
  probMapCopy = probMap;
  mapCopy = map;
  uVCopy = uV;
  v21 = *([metaCopy2 contents] + 3);
  v22 = radiusCopy == 2 && self->_doSimdShuffleAndFill;
  v23 = dilationRadiusCopy == 2;
  v25 = v23 && v22;
  _ZF = !v23 || !v22;
  v26 = 296;
  if (!_ZF)
  {
    v26 = 304;
  }

  [vCopy setComputePipelineState:*(&self->super.isa + v26)];
  v40[1] = dilationRadiusCopy;
  v40[0] = radiusCopy;
  [vCopy setBuffer:metaCopy2 offset:0 atIndex:0];

  [vCopy setTexture:uVCopy atIndex:0];
  [vCopy setTexture:mapCopy atIndex:1];

  [vCopy setTexture:probMapCopy atIndex:2];
  if (!v25)
  {
    [vCopy setBytes:v40 length:4 atIndex:1];
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
  [vCopy dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
}

- (void)encodeConditionalDilate2ProbMapsYUVHardR2SoftR2Simd:(id)simd inputYUV:(id)v probMap0:(id)map0 probMap1:(id)map1 dilatedProbMap0:(id)probMap0 dilatedProbMap1:(id)probMap1 meta:(id)meta
{
  simdCopy = simd;
  vCopy = v;
  map0Copy = map0;
  map1Copy = map1;
  probMap0Copy = probMap0;
  probMap1Copy = probMap1;
  metaCopy = meta;
  v22 = metaCopy;
  if (self->_doSimdShuffleAndFill)
  {
    contents = [metaCopy contents];
    v30 = contents[1204];
    width = [probMap0Copy width];
    height = [probMap0Copy height];
    LODWORD(v26) = *(contents + 6);
    LODWORD(v27) = *(contents + 7);
    v28 = (((v26 + 128.0 + 4.0) / (v30 / width) + 4.0 + -1.0) * 0.25);
    v29 = (((v27 + 128.0 + 4.0) / (HIDWORD(v30) / height) + 32.0 + -1.0) * 0.03125);
    [simdCopy setComputePipelineState:self->_conditionalDilate2ProbMapsYUVHardR2SoftR2Simd];
    [simdCopy setBuffer:v22 offset:0 atIndex:0];
    [simdCopy setTexture:vCopy atIndex:0];
    [simdCopy setTexture:map0Copy atIndex:1];
    [simdCopy setTexture:map1Copy atIndex:2];
    [simdCopy setTexture:probMap0Copy atIndex:3];
    [simdCopy setTexture:probMap1Copy atIndex:4];
    v33[0] = v28;
    v33[1] = v29;
    v33[2] = 1;
    v31 = xmmword_43880;
    v32 = 1;
    [simdCopy dispatchThreadgroups:v33 threadsPerThreadgroup:&v31];
  }

  else
  {
    [GGMMetalToolBox encodeConditionalDilate2ProbMapsYUVHardR2SoftR2Simd:inputYUV:probMap0:probMap1:dilatedProbMap0:dilatedProbMap1:meta:];
  }
}

- (void)encodeSetWOriToCommandEncoder:(id)encoder clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  bufCopy = buf;
  metaBufCopy = metaBuf;
  bufCopy2 = buf;
  encoderCopy = encoder;
  contents = [bufCopy2 contents];
  [encoderCopy setComputePipelineState:self->_setWOri];
  [encoderCopy setBuffer:bufCopy2 offset:0 atIndex:0];

  [encoderCopy setBuffer:metaBufCopy offset:0 atIndex:1];
  v16 = (*contents + 31) >> 5;
  v17 = vdupq_n_s64(1uLL);
  v14 = 32;
  v15 = xmmword_438E8;
  [encoderCopy dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
}

- (void)encodeSyncStats:(id)stats clusterMeta:(id)meta meta:(id)a5
{
  syncStats = self->_syncStats;
  v8 = a5;
  metaCopy = meta;
  statsCopy = stats;
  [statsCopy setComputePipelineState:syncStats];
  [statsCopy setBuffer:metaCopy offset:0 atIndex:0];

  [statsCopy setBuffer:v8 offset:0 atIndex:1];
  v13 = vdupq_n_s64(1uLL);
  v14 = 1;
  v11 = xmmword_438F8;
  v12 = 1;
  [statsCopy dispatchThreadgroups:&v13 threadsPerThreadgroup:&v11];
}

- (void)encodeGetTrackingHmgrphyAlignmentErrorYUVToCommandEncoder:(id)encoder target:(id)target ref:(id)ref meta:(id)meta
{
  metaCopy = meta;
  metaCopy2 = meta;
  refCopy = ref;
  targetCopy = target;
  encoderCopy = encoder;
  v16 = *([metaCopy2 contents] + 3);
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
  [encoderCopy setComputePipelineState:self->_getTrackingHmgrphyAlignmentErrorYUV];
  [encoderCopy setTexture:targetCopy atIndex:0];

  [encoderCopy setTexture:refCopy atIndex:1];
  [encoderCopy setBuffer:metaCopy2 offset:0 atIndex:0];

  v31 = v28;
  v32 = 1;
  v29 = vdupq_n_s64(8uLL);
  v30 = 1;
  [encoderCopy dispatchThreadgroups:&v31 threadsPerThreadgroup:&v29];
}

- (void)encodeUnpackLsMask:(id)mask input:(id)input normalizedCenter:(id)center output:
{
  centerCopy = center;
  inputCopy = input;
  maskCopy = mask;
  v11 = ((([centerCopy width] + 7) >> 3) + 15) >> 4;
  v12 = ([centerCopy height] + 15) >> 4;
  [maskCopy setComputePipelineState:self->_unpackLsMask];
  [maskCopy setTexture:inputCopy atIndex:0];

  [maskCopy setTexture:centerCopy atIndex:1];
  v15[0] = v11;
  v15[1] = v12;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x10uLL);
  v14 = 1;
  [maskCopy dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
}

- (void)encodeCollectClusterOpticalCenterEstStats:(id)stats clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  bufCopy = buf;
  metaBufCopy = metaBuf;
  bufCopy2 = buf;
  statsCopy = stats;
  contents = [bufCopy2 contents];
  [statsCopy setComputePipelineState:self->_collectOpticalCenterEstStats];
  [statsCopy setBuffer:bufCopy2 offset:0 atIndex:0];

  [statsCopy setBuffer:metaBufCopy offset:0 atIndex:1];
  v14 = *contents;
  v20 = v14;
  v17 = vdupq_n_s64(1uLL);
  v21 = v17;
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_collectOpticalCenterEstStats maxTotalThreadsPerThreadgroup];
  if (maxTotalThreadsPerThreadgroup >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = maxTotalThreadsPerThreadgroup;
  }

  v18 = v16;
  v19 = v17;
  [statsCopy dispatchThreads:&v20 threadsPerThreadgroup:&v18];
}

- (void)encodeUpdateEstOpticalCenterOffset:(id)offset meta:(id)meta
{
  updateEstOpticalCenterOffset = self->_updateEstOpticalCenterOffset;
  metaCopy = meta;
  offsetCopy = offset;
  [offsetCopy setComputePipelineState:updateEstOpticalCenterOffset];
  [offsetCopy setBuffer:metaCopy offset:0 atIndex:0];

  v10 = vdupq_n_s64(1uLL);
  v11 = 1;
  v8 = xmmword_438F8;
  v9 = 1;
  [offsetCopy dispatchThreadgroups:&v10 threadsPerThreadgroup:&v8];
}

- (GGMMetalToolBox)initWithMetalContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v19.receiver = self;
    v19.super_class = GGMMetalToolBox;
    v6 = [(GGMMetalToolBox *)&v19 init];
    self = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_metalContext, context);
      device = [contextCopy device];
      device = self->_device;
      self->_device = device;

      commandQueue = [contextCopy commandQueue];
      commandQueue = self->_commandQueue;
      self->_commandQueue = commandQueue;

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
          selfCopy = self;
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

  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (GGMMetalToolBox)initWithMetalContext:(id)context tuningParamDict:(id)dict
{
  contextCopy = context;
  dictCopy = dict;
  v8 = dictCopy;
  if (contextCopy && ([dictCopy objectForKeyedSubscript:@"hwMode"], v9 = objc_claimAutoreleasedReturnValue(), self->_hwMode = objc_msgSend(v9, "BOOLValue"), v9, v10 = -[GGMMetalToolBox initWithMetalContext:](self, "initWithMetalContext:", contextCopy), (self = v10) != 0))
  {
    [(GGMMetalToolBox *)v10 setRepairTuningParams:&v10->_tuningParams withDict:v8];
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (uint64_t)_compileShaders
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM();
  *self = result;
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