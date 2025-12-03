@interface GGMMetalToolBox
- ($0A9CE08A0C783CC25037BAF5B2C76EB4)updateMetaContainerBuffer:(GGMMetalToolBox *)self WithDetectedROI:isLowLight:;
- ($3383F814A2C9529A407B627A92A46277)generateMetaContainerArrayBufFromMetaContainerBuf:(id)buf imageRect:(CGRect)rect;
- (GGMMetalToolBox)initWithMetalContext:(id)context;
- (GGMMetalToolBox)initWithMetalContext:(id)context tuningParamDict:(id)dict;
- (id)clusterIndicesOfRois:(id *)rois withExtendedRadius:(float)radius roiCnt:(signed __int16)cnt imageRect:(CGRect)rect;
- (id)clusterTheGreenGhostRois:(id)rois withExtendedRadius:(float)radius imageRect:(CGRect)rect;
- (id)createGhostRoiFromGhostBox:(id *)box computeLocalMotion:(BOOL)motion;
- (id)findGhostCandidatesFromDesGenAndTinyKeypointsFromInputTexture:(double)texture ref4LocalMotionTexture:(double)motionTexture inputTPlus1Texture:(int32x2_t)plus1Texture LSList:(double)list desGenKeypoints:(uint64_t)keypoints homography:(void *)homography colorParams:(void *)params computeLocalMotion:(void *)self0 LSDilation:(void *)self1 LSReflectCenter:(uint64_t)self2 maxLightSourceCount:(unsigned int *)self3 maxDesGenKeypoints:(BOOL)self4 maxTinyKeypoints:(unsigned int)self5 metalBuffers:(int)self6 isPrevLSFeaturesAvailable:(int)self7;
- (int)_compileShaders;
- (void)addComputeBoxDoGToCommandEncoder:(id)encoder inputTexture:(id)texture inputlocationsBuf:(id)buf DoGAndLumaBuf:(id)lumaBuf inputLocationsSize:(unsigned int)size;
- (void)addComputeBoxFeatureVectorToCommandEncoder:(id)encoder inputTexture:(id)texture inputlocationsBuf:(id)buf DoGAndLumaBuf:(id)lumaBuf inputLocationsSize:(unsigned int)size;
- (void)addFindDesGenGhostsToCommandEncoder:(__n128)encoder inputTexture:(__n128)texture refTexture:(uint64_t)refTexture homography:(void *)homography colorParams:(void *)params kpCnt:(void *)cnt kpIdx:(uint64_t)idx reflectedLsBboxList:(unsigned int)self0 lsCnt:(void *)self1 desGenKeypoints:(id)self2 desGenMappingInfo:(uint64_t)self3 ghostBoxes:(id)self4;
- (void)addFindTinyKPsToCommandEncoder:(__n128)encoder inputTexture:(__n128)texture referenceTexture:(uint64_t)referenceTexture inputlocationsBuf:(void *)buf ggIdxBuf:(void *)idxBuf tinyGhostBoxes:(void *)boxes colorParams:(void *)params homography:(void *)self0 reflectedLsBboxList:(void *)self1 lsCnt:(id *)self2 inputLocationsSize:(id)self3;
- (void)backWarpYUV:(double)v warped:(double)warped withHomography:(uint64_t)homography waitForComplete:(__CVBuffer *)complete;
- (void)computeBlendingWeightsSpatialOnlyYUVInput:(id)input metadataBuf:(id)buf;
- (void)dealloc;
- (void)encodeBackWarpYUVToCommandBuffer:(__n128)buffer reference:(__n128)reference toOutput:(uint64_t)output withHomography:(void *)homography;
- (void)encodeCollectClusterStats:(id)stats clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (void)encodeComputeBlendingWeightsForRepairYUV:(id)v input:(id)input temporalRepaired:(id)repaired metadataBuf:(id)buf;
- (void)encodeComputeBlendingWeightsSpatialOnlyForRepairYUV:(id)v input:(id)input metadataBuf:(id)buf;
- (void)encodeComputeDiffForLocalMotionYUVToCommandBuffer:(id)buffer input0Texture:(id)texture input1Texture:(id)input1Texture outputTexture:(id)outputTexture;
- (void)encodeComputeIntegralBinImageToCommandBuffer:(id)buffer inputBuf:(id)buf toIntegral:(id)integral;
- (void)encodeGetGhostMaxLumaYUV:(id)v input:(id)input metaBuf:(id)buf;
- (void)encodeGetRefTypeYUV:(__n128)v input:(__n128)input ref0:(__n128)ref0 ref1:(__n128)ref1 metaBuf:(__n128)buf meta0Buf:(uint64_t)meta0Buf meta1Buf:(void *)meta1Buf hmgrphy0:(void *)self0 hmgrphy1:(void *)self1;
- (void)encodeStrongTemporalRepairYUVToCommandBuffer:(__n128)buffer input:(__n128)input frRef0:(__n128)ref0 frRef1:(__n128)ref1 trRef0:(__n128)trRef0 trRef1:(uint64_t)trRef1 hmgrphy0:(void *)hmgrphy0 hmgrphy1:(void *)self0 strongTemporalOutput:(void *)self1 temporalOutput:(void *)self2 metaBuf:(void *)self3 ref0MetaBuf:(void *)self4 ref1MetaBuf:(id)self5;
- (void)encodeSyncMaxLuma:(id)luma metaBuf:(id)buf;
- (void)encodeSyncRefType:(id)type metaBuf:(id)buf;
- (void)encodeYCbCrToRGBToCommandBuffer:(id)buffer inputTexture:(id)texture outTexture:(id)outTexture;
- (void)getGhostMaxLumaYUVInput:(id)input metaBuf:(id)buf commandEncoder:(id)encoder;
- (void)getRefTypeYUVInput:(double)input ref0:(double)ref0 ref1:(double)ref1 metaBuf:(double)buf meta0Buf:(double)meta0Buf meta1Buf:(uint64_t)meta1Buf hmgrphy0:(uint64_t)hmgrphy0 hmgrphy1:(uint64_t)self0 commandEncoder:(uint64_t)self1;
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
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::backwarpWithHomographyYUV" constants:0];
  backwarpWithHomographyYUV = self->_backwarpWithHomographyYUV;
  self->_backwarpWithHomographyYUV = v3;

  if (!self->_backwarpWithHomographyYUV)
  {
    sub_276A8(&v38);
    return v38;
  }

  v5 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::YCbCrToRGB" constants:0];
  YCbCrToRGB = self->_YCbCrToRGB;
  self->_YCbCrToRGB = v5;

  if (!self->_YCbCrToRGB)
  {
    sub_275FC(&v38);
    return v38;
  }

  v7 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::computeDiffForLocalMotionYUV" constants:0];
  computeDiffForLocalMotionYUV = self->_computeDiffForLocalMotionYUV;
  self->_computeDiffForLocalMotionYUV = v7;

  if (!self->_computeDiffForLocalMotionYUV)
  {
    sub_27550(&v38);
    return v38;
  }

  v9 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::findTinyKPs" constants:0];
  findTinyKPs = self->_findTinyKPs;
  self->_findTinyKPs = v9;

  if (!self->_findTinyKPs)
  {
    sub_274A4(&v38);
    return v38;
  }

  v11 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::findGhostKeypointsFromDesGen" constants:0];
  findGhostKeypointsFromDesGen = self->_findGhostKeypointsFromDesGen;
  self->_findGhostKeypointsFromDesGen = v11;

  if (!self->_findGhostKeypointsFromDesGen)
  {
    sub_273F8(&v38);
    return v38;
  }

  v13 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::computeBoxDoG" constants:0];
  computeBoxDoG = self->_computeBoxDoG;
  self->_computeBoxDoG = v13;

  if (!self->_computeBoxDoG)
  {
    sub_2734C(&v38);
    return v38;
  }

  v15 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::computeBoxLumaFeatureVector" constants:0];
  computeBoxLumaFeatureVector = self->_computeBoxLumaFeatureVector;
  self->_computeBoxLumaFeatureVector = v15;

  if (!self->_computeBoxLumaFeatureVector)
  {
    sub_272A0(&v38);
    return v38;
  }

  v17 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::sumRows" constants:0];
  integralBinImageRow = self->_integralBinImageRow;
  self->_integralBinImageRow = v17;

  if (!self->_integralBinImageRow)
  {
    sub_271F4(&v38);
    return v38;
  }

  v19 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::sumCols" constants:0];
  integralBinImageCol = self->_integralBinImageCol;
  self->_integralBinImageCol = v19;

  if (!self->_integralBinImageCol)
  {
    sub_27148(&v38);
    return v38;
  }

  v21 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::computeBlendingWeightsYUV" constants:0];
  computeBlendingWeightsYUV = self->_computeBlendingWeightsYUV;
  self->_computeBlendingWeightsYUV = v21;

  if (!self->_computeBlendingWeightsYUV)
  {
    sub_2709C(&v38);
    return v38;
  }

  v23 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::computeBlendingWeightsSpatialOnlyYUV" constants:0];
  computeBlendingWeightsSpatialOnlyYUV = self->_computeBlendingWeightsSpatialOnlyYUV;
  self->_computeBlendingWeightsSpatialOnlyYUV = v23;

  if (!self->_computeBlendingWeightsSpatialOnlyYUV)
  {
    sub_26FF0(&v38);
    return v38;
  }

  v25 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::getGhostMaxLumaYUV" constants:0];
  getGhostMaxLumaYUV = self->_getGhostMaxLumaYUV;
  self->_getGhostMaxLumaYUV = v25;

  if (!self->_getGhostMaxLumaYUV)
  {
    sub_26F44(&v38);
    return v38;
  }

  v27 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::syncMaxLuma" constants:0];
  syncMaxLuma = self->_syncMaxLuma;
  self->_syncMaxLuma = v27;

  if (!self->_syncMaxLuma)
  {
    sub_26E98(&v38);
    return v38;
  }

  v29 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::getRefTypeYUV" constants:0];
  getRefTypeYUV = self->_getRefTypeYUV;
  self->_getRefTypeYUV = v29;

  if (!self->_getRefTypeYUV)
  {
    sub_26DEC(&v38);
    return v38;
  }

  v31 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::syncRefType" constants:0];
  syncRefType = self->_syncRefType;
  self->_syncRefType = v31;

  if (!self->_syncRefType)
  {
    sub_26D40(&v38);
    return v38;
  }

  v33 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::strongTemporalRepairYUV" constants:0];
  strongTemporalRepairYUV = self->_strongTemporalRepairYUV;
  self->_strongTemporalRepairYUV = v33;

  if (!self->_strongTemporalRepairYUV)
  {
    sub_26C94(&v38);
    return v38;
  }

  v35 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"VideoDeghostingV2::collectClusterStats" constants:0];
  collectClusterStats = self->_collectClusterStats;
  self->_collectClusterStats = v35;

  if (!self->_collectClusterStats)
  {
    sub_26BE8(&v38);
    return v38;
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
  if (v13 <= 60.0)
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
  params->var2 = 60.0;
  *&params->var0 = 0x41F0000048000000;
LABEL_10:
}

- ($0A9CE08A0C783CC25037BAF5B2C76EB4)updateMetaContainerBuffer:(GGMMetalToolBox *)self WithDetectedROI:isLowLight:
{
  v4 = v3;
  v5 = v1;
  v7 = v2;
  contents = [v5 contents];
  LOBYTE(contents->var19[2]) = v4;
  if ([v7 count])
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v11 = [v7 objectAtIndexedSubscript:v9];
      [v11 roi];
      v13 = v12;
      [v11 roi];
      v10 = v10 + v13 * v14;

      ++v9;
    }

    while (v9 < [v7 count]);
    contents->var24[1] = v10;
    v15 = 1.0;
    if (v10 != 0.0)
    {
      v15 = self->_tuningParams.repairTargetArea / v10;
    }
  }

  else
  {
    contents->var24[1] = 0.0;
    v15 = 1.0;
  }

  v16 = fminf(v15, 1.0);
  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  contents->var24[0] = v16;
  v17 = fminf(fmaxf(([v7 count] - self->_tuningParams.repairTargetGhostCntLo) / (self->_tuningParams.repairTargetGhostCntHi - self->_tuningParams.repairTargetGhostCntLo), 0.0), 1.0) * -0.9 + 1.0;
  if (contents->var24[0] < v17)
  {
    v17 = contents->var24[0];
  }

  contents->var24[0] = v17;
  contents->var24[2] = 1.0 / v17;
  LOWORD(v19) = 0;
  if ([v7 count])
  {
    v20 = 0;
    v21 = 1.1755e-38;
    *&v18 = vneg_f32(0x80000000800000);
    v50 = v18;
    v22 = 1.1755e-38;
    while (1)
    {
      v23 = [v7 objectAtIndexedSubscript:v20];
      [v23 roi];
      v25 = v24;
      [v23 roi];
      if (v25 * v26 * contents->var24[0] * contents->var24[0] >= 100.0)
      {
        [v23 roi];
        v48 = v27;
        [v23 roi];
        v46 = v28;
        [v23 roi];
        v47 = v29;
        [v23 roi];
        *v30.i64 = v48;
        *&v30.i64[1] = v46;
        v31 = vcvt_f32_f64(v30);
        *v30.i64 = v47;
        *&v30.i64[1] = v32;
        v33 = vadd_f32(v31, vcvt_f32_f64(v30));
        *v30.i8 = vcvt_s32_f32(v31);
        v30.i64[1] = v30.i64[0];
        *v34.i8 = vcvt_s32_f32(v33);
        v35 = v33;
        v49 = v33;
        v34.i64[1] = v34.i64[0];
        v36.i64[0] = vaddq_s32(v34, v30).u64[0];
        v36.i64[1] = vsubq_s32(v34, v30).i64[1];
        p_var3 = &contents->var7[v19].var3;
        v34.i64[0] = 0x3F0000003F000000;
        v34.i64[1] = 0x3F0000003F000000;
        *p_var3->f32 = v31;
        *&p_var3->u32[2] = v35;
        p_var3[1] = vmulq_f32(vcvtq_f32_s32(v36), v34);
        contents->var19[v19 + 3] = [v23 trackID];
        [v23 confidence];
        contents->var15[v19 + 3] = v38;
        *(&v39 + 1) = *(&v50 + 1);
        v40 = vcgt_f32(v31, *&v50);
        if (v21 < v49.f32[0])
        {
          v21 = v49.f32[0];
        }

        *&v39 = vbsl_s8(v40, *&v50, v31);
        v50 = v39;
        if (v22 < v49.f32[1])
        {
          v22 = v49.f32[1];
        }

        [v23 ROIWOriginal];
        contents->var16[v19 + 3] = v41;
        [v23 ROIWSpatial];
        contents->var8[v19 + 3] = v42;
        [v23 ROIWStrongRepairInSpatial];
        contents->var13[v19 + 3] = v43;
        contents->var14[v19 + 3] = 0;
        contents->var9[v19 + 3] = 0;
        *(&contents[1].var3 + v19) = 0;
        v19 = (v19 + 1);
        if (v19 >= 61)
        {
          break;
        }
      }

      if (++v20 >= [v7 count])
      {
        goto LABEL_22;
      }
    }

    sub_27754(v23);
  }

  else
  {
    *&v50 = vneg_f32(0x80000000800000);
    v22 = 1.1755e-38;
    v21 = 1.1755e-38;
  }

LABEL_22:
  contents->var0 = v19;
  LODWORD(contents->var1) = v50;
  contents->var2 = v21;
  contents->var3 = *(&v50 + 1);
  contents->var4 = v22;
  contents->var5 = (v21 - *&v50);
  contents->var6 = (v22 - *(&v50 + 1));
  v44 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vaddq_f64(vcvtq_f64_f32(*&v50), vdupq_n_s64(0xC050000000000000)), 0)));
  *&contents->var7[0].var1 = *&vsra_n_u32(v44, vcltz_s32(v44), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;

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
          v26 = sub_1BEC8(v24, v25);

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
          v34 = sub_1BEC8(v32, v33);

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

- ($3383F814A2C9529A407B627A92A46277)generateMetaContainerArrayBufFromMetaContainerBuf:(id)buf imageRect:(CGRect)rect
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
    sub_27868();
LABEL_19:

    goto LABEL_16;
  }

  contents = [bufCopy contents];
  if (!contents)
  {
    sub_277E8();
    goto LABEL_19;
  }

  v13 = contents;
  v14 = contents + 20;
  LODWORD(v12) = 1120403456;
  height = [(GGMMetalToolBox *)selfCopy clusterIndicesOfRois:contents + 20 withExtendedRadius:*contents roiCnt:v12 imageRect:x, y, width, height];
  v15 = [height count];
  if (v15 >= 1)
  {
    v40 = v10;
    v16 = 0;
    if (v15 >= 0x3C)
    {
      v17 = 60;
    }

    else
    {
      v17 = v15;
    }

    v43 = v17;
    v59 = v13 + 2182;
    v41 = v13 + 980;
    v57 = v13 + 1940;
    v58 = v13 + 1820;
    v55 = v13 + 2968;
    v56 = v13 + 1580;
    v54 = v13 + 3328;
    v53 = v13 + 3448;
    v52 = v13 + 4168;
    v51 = v13 + 4408;
    v50 = v13 + 4528;
    v18 = vneg_f32(0x80000000800000);
    v42 = vdupq_n_s64(0xC050000000000000);
    v49 = v13 + 4648;
    v44 = v13;
    do
    {
      v19 = [height objectAtIndexedSubscript:{v16, v40}];
      v48 = v16;
      contents2 = [(MTLBuffer *)p_metaBufArray->bufArray[v16] contents];
      bzero(contents2, 0x2548uLL);
      *(contents2 + 4360) = *(v13 + 4360);
      *contents2 = [v19 count];
      if ([v19 count])
      {
        v22 = 0;
        v23 = 0;
        *&v21 = 0x80000000800000;
        v61 = v21;
        v24 = 2968;
        v25 = 20;
        v26 = 2302;
        *&v21 = v18;
        v60 = v21;
        do
        {
          v27 = [v19 objectAtIndex:v23];
          intValue = [v27 intValue];

          v29 = &contents2[v25];
          v30 = &v14[16 * intValue];
          v31 = *(v30 + 1);
          *v29 = *v30;
          v29[1] = v31;
          v32 = &contents2[v22];
          v33 = *&v58[2 * intValue];
          v32[1091] = *&v59[2 * intValue];
          v32[910] = v33;
          v34 = *&contents2[v25];
          *(&v36 + 1) = *(&v60 + 1);
          *(&v35 + 1) = *(&v61 + 1);
          v37 = *&contents2[2 * v22 + 24];
          v32[490] = *&v41[2 * intValue];
          v32[970] = *&v57[2 * intValue];
          v32[790] = *&v56[2 * intValue];
          *&v36 = vbsl_s8(vcgt_f32(v34, *&v60), *&v60, v34);
          v60 = v36;
          *&contents2[v24] = *&v55[4 * intValue];
          v34.i32[0] = *&v53[2 * intValue];
          v32[1664] = *&v54[2 * intValue];
          v32[1724] = v34.i32[0];
          v34.i32[0] = *&v52[2 * intValue];
          *&v35 = vbsl_s8(vcgt_f32(v37, *&v61), v37, *&v61);
          v61 = v35;
          v32[2204] = *&v51[2 * intValue];
          v32[2264] = *&v50[2 * intValue];
          v32[2084] = v34.i32[0];
          LODWORD(v29) = *&v49[2 * intValue];
          contents2[v26] = intValue;
          ++v23;
          v32[2324] = v29;
          ++v26;
          v22 += 2;
          v25 += 16;
          v24 += 4;
        }

        while ([v19 count] > v23);
      }

      else
      {
        *&v61 = 0x80000000800000;
        *&v60 = v18;
      }

      v38.i64[0] = v60;
      v38.i64[1] = v61;
      *(contents2 + 2) = vuzp1q_s32(v38, vrev64q_s32(v38));
      *(contents2 + 10) = vcvt_u32_f32(vsub_f32(*&v61, *&v60));
      *v38.i8 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vaddq_f64(vcvtq_f64_f32(*&v60), v42), 0)));
      *(contents2 + 4) = *&vsra_n_u32(*v38.i8, vcltz_s32(*v38.i8), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;
      v13 = v44;
      *(contents2 + 1181) = *(v44 + 1181);
      *(contents2 + 1183) = *(v44 + 1183);
      ++selfCopy->_metaBufArray.clusterCnt;

      v16 = v48 + 1;
    }

    while (v48 + 1 != v43);
    v10 = v40;
  }

LABEL_16:
  return p_metaBufArray;
}

- (void)encodeBackWarpYUVToCommandBuffer:(__n128)buffer reference:(__n128)reference toOutput:(uint64_t)output withHomography:(void *)homography
{
  v20[0] = a2;
  v20[1] = buffer;
  v20[2] = reference;
  v11 = a8;
  v12 = a7;
  computeCommandEncoder = [homography computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:*(self + 24)];
  [computeCommandEncoder setTexture:v12 atIndex:0];
  [computeCommandEncoder setTexture:v11 atIndex:1];

  [computeCommandEncoder setBytes:v20 length:48 atIndex:0];
  [computeCommandEncoder setImageblockWidth:objc_msgSend(*(self + 24) height:{"threadExecutionWidth"), objc_msgSend(*(self + 24), "threadExecutionWidth")}];
  threadExecutionWidth = [*(self + 24) threadExecutionWidth];
  v15 = [*(self + 24) maxTotalThreadsPerThreadgroup] / threadExecutionWidth;
  width = [v12 width];
  height = [v12 height];

  v19[0] = width;
  v19[1] = height;
  v19[2] = 1;
  v18[0] = threadExecutionWidth;
  v18[1] = v15;
  v18[2] = 1;
  [computeCommandEncoder dispatchThreads:v19 threadsPerThreadgroup:v18];
  [computeCommandEncoder endEncoding];
}

- (void)backWarpYUV:(double)v warped:(double)warped withHomography:(uint64_t)homography waitForComplete:(__CVBuffer *)complete
{
  commandBuffer = [self[2] commandBuffer];
  if (commandBuffer)
  {
    v12 = sub_C6CC(complete, self[85], 0, 0);
    v13 = sub_C6CC(a7, self[85], 0, 0);
    [self encodeBackWarpYUVToCommandBuffer:commandBuffer reference:v12 toOutput:v13 withHomography:{a2, v, warped}];
    [self commitCmdBuffer:commandBuffer waitForComplete:a8];
  }

  else
  {
    sub_278E8();
  }
}

- (void)encodeComputeIntegralBinImageToCommandBuffer:(id)buffer inputBuf:(id)buf toIntegral:(id)integral
{
  integralCopy = integral;
  bufCopy = buf;
  bufferCopy = buffer;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_integralBinImageRow];
  [computeCommandEncoder setTexture:bufCopy atIndex:0];

  [computeCommandEncoder setTexture:integralCopy atIndex:1];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_integralBinImageRow threadExecutionWidth];
  v18 = ([integralCopy height] + threadExecutionWidth - 1) / threadExecutionWidth;
  v15 = vdupq_n_s64(1uLL);
  v19 = v15;
  v16 = threadExecutionWidth;
  v17 = v15;
  [computeCommandEncoder dispatchThreadgroups:&v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
  computeCommandEncoder2 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder2 setComputePipelineState:self->_integralBinImageCol];
  [computeCommandEncoder2 setTexture:integralCopy atIndex:0];
  width = [integralCopy width];

  v18 = (width + threadExecutionWidth - 1) / threadExecutionWidth;
  v19 = v15;
  v16 = threadExecutionWidth;
  v17 = v15;
  [computeCommandEncoder2 dispatchThreadgroups:&v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder2 endEncoding];
}

- (void)encodeComputeBlendingWeightsSpatialOnlyForRepairYUV:(id)v input:(id)input metadataBuf:(id)buf
{
  bufCopy = buf;
  bufCopy2 = buf;
  inputCopy = input;
  vCopy = v;
  contents = [bufCopy2 contents];
  computeCommandEncoder = [vCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_computeBlendingWeightsSpatialOnlyYUV];
  [computeCommandEncoder setTexture:inputCopy atIndex:0];

  [computeCommandEncoder setBuffer:bufCopy2 offset:0 atIndex:0];
  [computeCommandEncoder setImageblockWidth:32 height:32];
  v15 = vshr_n_u32(vsra_n_u32(0x1F0000001FLL, vadd_s32(*(contents + 20), 0x4400000044), 2uLL), 5uLL);
  *&v16 = v15.u32[0];
  *(&v16 + 1) = v15.u32[1];
  v19 = v16;
  v20 = 1;
  v17 = vdupq_n_s64(0x20uLL);
  v18 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder endEncoding];
}

- (void)computeBlendingWeightsSpatialOnlyYUVInput:(id)input metadataBuf:(id)buf
{
  inputCopy = input;
  bufCopy = buf;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  if (commandBuffer)
  {
    [(GGMMetalToolBox *)self encodeComputeBlendingWeightsSpatialOnlyForRepairYUV:commandBuffer input:inputCopy metadataBuf:bufCopy];
    [(GGMMetalToolBox *)self commitCmdBuffer:commandBuffer waitForComplete:1];
    contents = [bufCopy contents];
    v9 = *contents;
    if (v9 >= 1)
    {
      v10 = (contents + 26);
      do
      {
        *(contents + 490) = 1065353216;
        *(contents + 1184) = 1065353216;
        v11 = (fminf(fmaxf((((*(v10 - 1) - *(v10 - 3)) * (*v10 - *(v10 - 2))) + -900.0) / 2700.0, 0.0), 1.0) * -0.9 + 1.0) * 0.03;
        *(contents + 790) = 1.0 - fminf(fmaxf((*(contents + 850) / 1023.0) / v11, 0.0), 1.0);
        *(contents + 970) = 0;
        contents += 2;
        v10 += 8;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    sub_27A48();
  }
}

- (void)encodeComputeBlendingWeightsForRepairYUV:(id)v input:(id)input temporalRepaired:(id)repaired metadataBuf:(id)buf
{
  bufCopy = buf;
  bufCopy2 = buf;
  repairedCopy = repaired;
  inputCopy = input;
  vCopy = v;
  contents = [bufCopy2 contents];
  [vCopy setComputePipelineState:self->_computeBlendingWeightsYUV];
  [vCopy setTexture:inputCopy atIndex:0];

  [vCopy setTexture:repairedCopy atIndex:1];
  [vCopy setBuffer:bufCopy2 offset:0 atIndex:0];

  v17 = vcvt_s32_f32(vrndp_f32(vmul_n_f32(vcvt_f32_u32(vadd_s32(*(contents + 20), 0x8400000084)), *(contents + 1181))));
  v18 = vsra_n_s32(0xF0000000FLL, vsra_n_u32(v17, vcltz_s32(v17), 0x1EuLL), 2uLL);
  v19.i64[0] = v18.i32[0];
  v19.i64[1] = v18.i32[1];
  v22 = vshrq_n_u64(v19, 4uLL);
  v23 = 1;
  v20 = vdupq_n_s64(0x10uLL);
  v21 = 1;
  [vCopy dispatchThreadgroups:&v22 threadsPerThreadgroup:&v20];
}

- (void)encodeYCbCrToRGBToCommandBuffer:(id)buffer inputTexture:(id)texture outTexture:(id)outTexture
{
  outTextureCopy = outTexture;
  textureCopy = texture;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_YCbCrToRGB];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:outTextureCopy atIndex:1];

  threadExecutionWidth = [(MTLComputePipelineState *)self->_YCbCrToRGB threadExecutionWidth];
  v12 = [(MTLComputePipelineState *)self->_YCbCrToRGB maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  width = [textureCopy width];
  height = [textureCopy height];

  v16[0] = width;
  v16[1] = height;
  v16[2] = 1;
  v15[0] = threadExecutionWidth;
  v15[1] = v12;
  v15[2] = 1;
  [computeCommandEncoder dispatchThreads:v16 threadsPerThreadgroup:v15];
  [computeCommandEncoder endEncoding];
}

- (void)encodeComputeDiffForLocalMotionYUVToCommandBuffer:(id)buffer input0Texture:(id)texture input1Texture:(id)input1Texture outputTexture:(id)outputTexture
{
  outputTextureCopy = outputTexture;
  input1TextureCopy = input1Texture;
  textureCopy = texture;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computeDiffForLocalMotionYUV];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:input1TextureCopy atIndex:1];

  [computeCommandEncoder setTexture:outputTextureCopy atIndex:2];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_computeDiffForLocalMotionYUV threadExecutionWidth];
  v15 = [(MTLComputePipelineState *)self->_computeDiffForLocalMotionYUV maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  width = [textureCopy width];
  height = [textureCopy height];

  v19[0] = width;
  v19[1] = height;
  v19[2] = 1;
  v18[0] = threadExecutionWidth;
  v18[1] = v15;
  v18[2] = 1;
  [computeCommandEncoder dispatchThreads:v19 threadsPerThreadgroup:v18];
  [computeCommandEncoder endEncoding];
}

- (id)findGhostCandidatesFromDesGenAndTinyKeypointsFromInputTexture:(double)texture ref4LocalMotionTexture:(double)motionTexture inputTPlus1Texture:(int32x2_t)plus1Texture LSList:(double)list desGenKeypoints:(uint64_t)keypoints homography:(void *)homography colorParams:(void *)params computeLocalMotion:(void *)self0 LSDilation:(void *)self1 LSReflectCenter:(uint64_t)self2 maxLightSourceCount:(unsigned int *)self3 maxDesGenKeypoints:(BOOL)self4 maxTinyKeypoints:(unsigned int)self5 metalBuffers:(int)self6 isPrevLSFeaturesAvailable:(int)self7
{
  homographyCopy = homography;
  paramsCopy = params;
  motionCopy = motion;
  dilationCopy = dilation;
  *a19 = 0;
  commandBuffer = [self[2] commandBuffer];
  v27 = commandBuffer;
  if (commandBuffer)
  {
    v77 = commandBuffer;
    v73 = [commandBuffer computeCommandEncoderWithDispatchType:1];
    v28 = self[1];
    IOSurface = CVDataBufferGetIOSurface();
    IOSurfaceLock(IOSurface, 1u, 0);
    v30 = *(IOSurfaceGetBaseAddress(IOSurface) + 5);
    IOSurfaceUnlock(IOSurface, 1u, 0);
    v76 = [v28 newBufferWithIOSurface:IOSurface];
    if (v30 >= buffers)
    {
      buffersCopy = buffers;
    }

    else
    {
      buffersCopy = v30;
    }

    v72 = buffersCopy;
    v32 = [dilationCopy count];
    v75 = a18->var1;
    v33 = a18->var0;
    if (v32 >= tinyKeypoints)
    {
      tinyKeypointsCopy = tinyKeypoints;
    }

    else
    {
      tinyKeypointsCopy = v32;
    }

    v74 = v33;
    contents = [v74 contents];
    if (tinyKeypointsCopy)
    {
      v36 = contents;
      v37 = 0;
      v38 = vdup_lane_s32(plus1Texture, 0);
      do
      {
        v39 = [dilationCopy objectAtIndex:v37];
        [v39 reflectAroundCenter:list];
        [v39 bbox];
        v86 = vsub_f32(v40, v38);
        [v39 bbox];
        v85 = v41;
        [v39 bbox];
        *v43.f32 = v86;
        *&v43.u32[2] = vadd_f32(v38, vadd_f32(v85, *&vextq_s8(v42, v42, 8uLL)));
        v36[v37] = vcvtq_s32_f32(v43);
        [v39 reflectAroundCenter:list];

        ++v37;
      }

      while (tinyKeypointsCopy != v37);
    }

    v44 = *count;
    v45 = count[1];
    v46 = count[2];
    v47 = count[3];
    v48 = count[4];
    v49 = count[5];
    v50 = count[6];
    v51 = count[7];
    *[a18->var4 contents] = 0;
    *[a18->var2 contents] = 0;
    v52 = *[a18->var12 contents];
    v53 = *[a18->var13 contents];
    v54 = *[a18->var7 contents];
    if (v52)
    {
      [self addComputeBoxDoGToCommandEncoder:v73 inputTexture:homographyCopy inputlocationsBuf:a18->var8 DoGAndLumaBuf:a18->var10 inputLocationsSize:v52];
      [self addComputeBoxFeatureVectorToCommandEncoder:v73 inputTexture:homographyCopy inputlocationsBuf:a18->var8 DoGAndLumaBuf:a18->var10 inputLocationsSize:v52];
    }

    if (motionCopy && v53)
    {
      [self addComputeBoxDoGToCommandEncoder:v73 inputTexture:motionCopy inputlocationsBuf:a18->var9 DoGAndLumaBuf:a18->var11 inputLocationsSize:v53];
      [self addComputeBoxFeatureVectorToCommandEncoder:v73 inputTexture:motionCopy inputlocationsBuf:a18->var9 DoGAndLumaBuf:a18->var11 inputLocationsSize:v53];
      *a19 = 1;
    }

    textureCopy2 = texture;
    motionTextureCopy2 = motionTexture;
    v57 = a2;
    if (v54)
    {
      var4 = a18->var4;
      var5 = a18->var5;
      var6 = a18->var6;
      *&v98 = __PAIR64__(v45, v44);
      *(&v98 + 1) = __PAIR64__(v47, v46);
      *&v99 = __PAIR64__(v49, v48);
      *(&v99 + 1) = __PAIR64__(v51, v50);
      [self addFindTinyKPsToCommandEncoder:v73 inputTexture:homographyCopy referenceTexture:paramsCopy inputlocationsBuf:var5 ggIdxBuf:var4 tinyGhostBoxes:var6 colorParams:a2 homography:texture reflectedLsBboxList:motionTexture lsCnt:&v98 inputLocationsSize:{v74, __PAIR64__(v54, tinyKeypointsCopy)}];
      v57 = a2;
      textureCopy2 = texture;
      motionTextureCopy2 = motionTexture;
    }

    var2 = a18->var2;
    var3 = a18->var3;
    *&v98 = __PAIR64__(v45, v44);
    *(&v98 + 1) = __PAIR64__(v47, v46);
    *&v99 = __PAIR64__(v49, v48);
    *(&v99 + 1) = __PAIR64__(v51, v50);
    LODWORD(v71) = tinyKeypointsCopy;
    [self addFindDesGenGhostsToCommandEncoder:v73 inputTexture:homographyCopy refTexture:paramsCopy homography:&v98 colorParams:v72 kpCnt:var2 kpIdx:v57 reflectedLsBboxList:textureCopy2 lsCnt:motionTextureCopy2 desGenKeypoints:v74 desGenMappingInfo:v71 ghostBoxes:{v76, v75, var3}];
    [v73 endEncoding];
    [self commitCmdBuffer:v77 waitForComplete:1];
    contents2 = [a18->var6 contents];
    v64 = *[a18->var4 contents];
    contents3 = [a18->var3 contents];
    v66 = *[a18->var2 contents];
    v67 = +[NSMutableArray array];
    if (v64 <= available && v64 >= 1)
    {
      do
      {
        v105 = contents2[7];
        v106 = contents2[8];
        v107 = contents2[9];
        v108 = contents2[10];
        v101 = contents2[3];
        v102 = contents2[4];
        v103 = contents2[5];
        v104 = contents2[6];
        v98 = *contents2;
        v99 = contents2[1];
        v100 = contents2[2];
        v95 = v106;
        v96 = v107;
        v97 = v108;
        v91 = v102;
        v92 = v103;
        v93 = v104;
        v94 = v105;
        v87 = v98;
        v88 = v99;
        v89 = v100;
        v90 = v101;
        v68 = [self createGhostRoiFromGhostBox:&v87 computeLocalMotion:genKeypoints];
        [v68 setKpIsFromHW:0];
        [v67 addObject:v68];

        contents2 += 11;
        --v64;
      }

      while (v64);
    }

    if (v66 <= buffers && v66 >= 1)
    {
      do
      {
        v105 = contents3[7];
        v106 = contents3[8];
        v107 = contents3[9];
        v108 = contents3[10];
        v101 = contents3[3];
        v102 = contents3[4];
        v103 = contents3[5];
        v104 = contents3[6];
        v98 = *contents3;
        v99 = contents3[1];
        v100 = contents3[2];
        v95 = v106;
        v96 = v107;
        v97 = v108;
        v91 = v102;
        v92 = v103;
        v93 = v104;
        v94 = v105;
        v87 = v98;
        v88 = v99;
        v89 = v100;
        v90 = v101;
        v69 = [self createGhostRoiFromGhostBox:&v87 computeLocalMotion:genKeypoints];
        [v69 setKpIsFromHW:1];
        [v67 addObject:v69];

        contents3 += 11;
        --v66;
      }

      while (v66);
    }

    v27 = v77;
  }

  else
  {
    sub_27C58();
    v67 = 0;
  }

  return v67;
}

- (id)createGhostRoiFromGhostBox:(id *)box computeLocalMotion:(BOOL)motion
{
  motionCopy = motion;
  v4.i64[0] = *&box->var1;
  v7 = &box[1].var0.var0[4];
  __asm { FMOV            V0.4S, #5.0 }

  v12 = vld1q_dup_f32(v7);
  v33 = v4.i64[0];
  v13 = vsubq_f32(v4, v12);
  __asm { FMOV            V1.4S, #-5.0 }

  _Q1.i64[0] = vaddq_f32(v13, _Q1).u64[0];
  v15 = [[ROI alloc] initWithBbox:*_Q1.i64];
  v16 = v15;
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
  if (v15)
  {
    [(ROI *)v15 descriptor];
  }

  else
  {
    v57 = 0uLL;
    v58 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v50 = 0uLL;
  }

  *&v49 = v33;
  DWORD2(v49) = LODWORD(box[1].var0.var0[5]);
  v17 = *&box->var3;
  v51 = v17;
  v18 = 1.0;
  v19 = 1.0;
  if (motionCopy)
  {
    v19 = box[1].var0.var0[3];
  }

  v20 = 0;
  v21 = box[1].var0.var0[2];
  v23 = *&v17 >= 0.4 && v21 >= 0.4;
  *&v52 = v19;
  *(&v49 + 3) = v21;
  if (!v23 || v19 < 0.05)
  {
    v18 = 0.0;
  }

  *(&v52 + 1) = v18;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  do
  {
    v28 = box->var0.var0[v20];
    v35 = v24;
    v36 = v25;
    v37 = v26;
    v38 = v27;
    *(&v35 + (v20 & 0x1F)) = v28;
    v26 = v37;
    v27 = v38;
    v24 = v35;
    v25 = v36;
    ++v20;
  }

  while (v20 != 32);
  v39 = v35;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v32 = v36;
  v34 = v35;
  v30 = v38;
  v31 = v37;
  [(ROI *)v16 setLumaFeatureVector:&v39];
  v55 = v31;
  v56 = v30;
  v53 = v34;
  v54 = v32;
  LODWORD(v57) = 32;
  [(ROI *)v16 setDifferenceOfGaussianAndLumaFeature:*&box->var0.var1];
  v45 = v55;
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v41 = v51;
  v42 = v52;
  v43 = v53;
  v44 = v54;
  v39 = v49;
  v40 = v50;
  [(ROI *)v16 setDescriptor:&v39];

  return v16;
}

- (void)addFindDesGenGhostsToCommandEncoder:(__n128)encoder inputTexture:(__n128)texture refTexture:(uint64_t)refTexture homography:(void *)homography colorParams:(void *)params kpCnt:(void *)cnt kpIdx:(uint64_t)idx reflectedLsBboxList:(unsigned int)self0 lsCnt:(void *)self1 desGenKeypoints:(id)self2 desGenMappingInfo:(uint64_t)self3 ghostBoxes:(id)self4
{
  boxesCopy = boxes;
  v21 = a15;
  v37[0] = a2;
  v37[1] = encoder;
  v37[2] = texture;
  listCopy = list;
  v23 = *(self + 56);
  v31 = a16;
  v24 = v21;
  v25 = boxesCopy;
  keypointsCopy = keypoints;
  lsCntCopy = lsCnt;
  cntCopy = cnt;
  paramsCopy = params;
  homographyCopy = homography;
  [homographyCopy setComputePipelineState:v23];
  [homographyCopy setTexture:paramsCopy atIndex:0];

  [homographyCopy setTexture:cntCopy atIndex:1];
  [homographyCopy setBytes:idx length:32 atIndex:0];
  [homographyCopy setBytes:v37 length:48 atIndex:1];
  [homographyCopy setBytes:&listCopy length:4 atIndex:2];
  [homographyCopy setBuffer:lsCntCopy offset:0 atIndex:3];

  [homographyCopy setBuffer:keypointsCopy offset:0 atIndex:4];
  [homographyCopy setBytes:&info length:4 atIndex:5];
  [homographyCopy setBuffer:v25 offset:0 atIndex:6];

  [homographyCopy setBuffer:v24 offset:0 atIndex:7];
  [homographyCopy setBuffer:v31 offset:0 atIndex:8];

  v34 = (listCopy + 31) >> 5;
  v35 = vdupq_n_s64(1uLL);
  v32 = 32;
  v33 = xmmword_2EB70;
  [homographyCopy dispatchThreadgroups:&v34 threadsPerThreadgroup:&v32];
}

- (void)addFindTinyKPsToCommandEncoder:(__n128)encoder inputTexture:(__n128)texture referenceTexture:(uint64_t)referenceTexture inputlocationsBuf:(void *)buf ggIdxBuf:(void *)idxBuf tinyGhostBoxes:(void *)boxes colorParams:(void *)params homography:(void *)self0 reflectedLsBboxList:(void *)self1 lsCnt:(id *)self2 inputLocationsSize:(id)self3
{
  v32[0] = a2;
  v32[1] = encoder;
  v32[2] = texture;
  v20 = *(self + 48);
  sizeCopy = size;
  listCopy = list;
  homographyCopy = homography;
  paramsCopy = params;
  boxesCopy = boxes;
  idxBufCopy = idxBuf;
  bufCopy = buf;
  [bufCopy setComputePipelineState:v20];
  [bufCopy setTexture:idxBufCopy atIndex:0];

  [bufCopy setTexture:boxesCopy atIndex:1];
  [bufCopy setBuffer:paramsCopy offset:0 atIndex:0];

  [bufCopy setBytes:&a14 + 4 length:4 atIndex:1];
  [bufCopy setBuffer:homographyCopy offset:0 atIndex:2];

  [bufCopy setBuffer:listCopy offset:0 atIndex:3];
  [bufCopy setBytes:cnt length:32 atIndex:4];
  [bufCopy setBytes:v32 length:48 atIndex:5];
  [bufCopy setBuffer:sizeCopy offset:0 atIndex:6];

  [bufCopy setBytes:&a14 length:4 atIndex:7];
  v30 = (HIDWORD(a14) + 31) >> 5;
  v31 = vdupq_n_s64(1uLL);
  v28 = 32;
  v29 = xmmword_2EB70;
  [bufCopy dispatchThreadgroups:&v30 threadsPerThreadgroup:&v28];
}

- (void)encodeGetGhostMaxLumaYUV:(id)v input:(id)input metaBuf:(id)buf
{
  bufCopy = buf;
  bufCopy2 = buf;
  inputCopy = input;
  vCopy = v;
  contents = [bufCopy2 contents];
  [vCopy setComputePipelineState:self->_getGhostMaxLumaYUV];
  [vCopy setTexture:inputCopy atIndex:0];

  [vCopy setBuffer:bufCopy2 offset:0 atIndex:0];
  v14 = vadd_s32(*(contents + 20), 0x8400000084);
  v15 = vsra_n_s32(0x1F0000001FLL, vsra_n_u32(v14, vcltz_s32(v14), 0x1EuLL), 2uLL);
  v16.i64[0] = v15.i32[0];
  v16.i64[1] = v15.i32[1];
  v19 = vshrq_n_u64(v16, 5uLL);
  v20 = 1;
  v17 = vdupq_n_s64(0x20uLL);
  v18 = 1;
  [vCopy dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
}

- (void)getGhostMaxLumaYUVInput:(id)input metaBuf:(id)buf commandEncoder:(id)encoder
{
  encoderCopy = encoder;
  bufCopy = buf;
  [(GGMMetalToolBox *)self encodeGetGhostMaxLumaYUV:encoderCopy input:input metaBuf:bufCopy];
  [(GGMMetalToolBox *)self encodeSyncMaxLuma:encoderCopy metaBuf:bufCopy];
}

- (void)encodeGetRefTypeYUV:(__n128)v input:(__n128)input ref0:(__n128)ref0 ref1:(__n128)ref1 metaBuf:(__n128)buf meta0Buf:(uint64_t)meta0Buf meta1Buf:(void *)meta1Buf hmgrphy0:(void *)self0 hmgrphy1:(void *)self1
{
  v39[0] = a2;
  v39[1] = v;
  v39[2] = input;
  v38[0] = ref0;
  v38[1] = ref1;
  v38[2] = buf;
  v22 = a13;
  v23 = a15;
  v24 = a14;
  v25 = a13;
  v26 = a12;
  hmgrphy1Copy = hmgrphy1;
  hmgrphy0Copy = hmgrphy0;
  meta1BufCopy = meta1Buf;
  contents = [v25 contents];
  [meta1BufCopy setComputePipelineState:*(self + 80)];
  [meta1BufCopy setTexture:hmgrphy0Copy atIndex:0];

  [meta1BufCopy setTexture:hmgrphy1Copy atIndex:1];
  [meta1BufCopy setTexture:v26 atIndex:2];

  [meta1BufCopy setBuffer:v25 offset:0 atIndex:0];
  [meta1BufCopy setBuffer:v24 offset:0 atIndex:1];

  [meta1BufCopy setBuffer:v23 offset:0 atIndex:2];
  [meta1BufCopy setBytes:v39 length:48 atIndex:3];
  [meta1BufCopy setBytes:v38 length:48 atIndex:4];
  v31 = vadd_s32(*(contents + 20), 0x8400000084);
  v32 = vsra_n_s32(0x1F0000001FLL, vsra_n_u32(v31, vcltz_s32(v31), 0x1EuLL), 2uLL);
  v33.i64[0] = v32.i32[0];
  v33.i64[1] = v32.i32[1];
  v36 = vshrq_n_u64(v33, 5uLL);
  v37 = 1;
  v34 = vdupq_n_s64(0x20uLL);
  v35 = 1;
  [meta1BufCopy dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
}

- (void)getRefTypeYUVInput:(double)input ref0:(double)ref0 ref1:(double)ref1 metaBuf:(double)buf meta0Buf:(double)meta0Buf meta1Buf:(uint64_t)meta1Buf hmgrphy0:(uint64_t)hmgrphy0 hmgrphy1:(uint64_t)self0 commandEncoder:(uint64_t)self1
{
  v22 = a15;
  v29 = a12;
  [self encodeGetRefTypeYUV:v22 input:hmgrphy0 ref0:hmgrphy1 ref1:encoder metaBuf:v29 meta0Buf:a13 meta1Buf:a2 hmgrphy0:input hmgrphy1:{ref0, ref1, buf, meta0Buf, a14}];
  [self encodeSyncRefType:v22 metaBuf:v29];
}

- (void)encodeStrongTemporalRepairYUVToCommandBuffer:(__n128)buffer input:(__n128)input frRef0:(__n128)ref0 frRef1:(__n128)ref1 trRef0:(__n128)trRef0 trRef1:(uint64_t)trRef1 hmgrphy0:(void *)hmgrphy0 hmgrphy1:(void *)self0 strongTemporalOutput:(void *)self1 temporalOutput:(void *)self2 metaBuf:(void *)self3 ref0MetaBuf:(void *)self4 ref1MetaBuf:(id)self5
{
  v43[0] = a2;
  v43[1] = buffer;
  v43[2] = input;
  v42[0] = ref0;
  v42[1] = ref1;
  v42[2] = trRef0;
  v24 = *(self + 104);
  v37 = a19;
  v36 = a18;
  v25 = a17;
  v35 = a16;
  ref1MetaBufCopy = ref1MetaBuf;
  metaBufCopy = metaBuf;
  bufCopy = buf;
  temporalOutputCopy = temporalOutput;
  outputCopy = output;
  hmgrphy1Copy = hmgrphy1;
  hmgrphy0Copy = hmgrphy0;
  [hmgrphy0Copy setComputePipelineState:v24];
  [hmgrphy0Copy setTexture:hmgrphy1Copy atIndex:0];

  [hmgrphy0Copy setTexture:outputCopy atIndex:1];
  [hmgrphy0Copy setTexture:temporalOutputCopy atIndex:2];

  [hmgrphy0Copy setTexture:bufCopy atIndex:3];
  [hmgrphy0Copy setTexture:metaBufCopy atIndex:4];

  [hmgrphy0Copy setTexture:ref1MetaBufCopy atIndex:5];
  [hmgrphy0Copy setTexture:v35 atIndex:6];

  [hmgrphy0Copy setBuffer:v25 offset:0 atIndex:0];
  [hmgrphy0Copy setBuffer:v36 offset:0 atIndex:1];

  [hmgrphy0Copy setBuffer:v37 offset:0 atIndex:2];
  [hmgrphy0Copy setBytes:v43 length:48 atIndex:3];
  [hmgrphy0Copy setBytes:v42 length:48 atIndex:4];
  [hmgrphy0Copy setImageblockWidth:32 height:32];
  contents = [v25 contents];

  v40 = vshrq_n_u64(vaddw_s32(vdupq_n_s64(0x1FuLL), vadd_s32(*(contents + 20), 0x8400000084)), 5uLL);
  v41 = 1;
  v38 = vdupq_n_s64(0x20uLL);
  v39 = 1;
  [hmgrphy0Copy dispatchThreadgroups:&v40 threadsPerThreadgroup:&v38];
}

- (void)addComputeBoxDoGToCommandEncoder:(id)encoder inputTexture:(id)texture inputlocationsBuf:(id)buf DoGAndLumaBuf:(id)lumaBuf inputLocationsSize:(unsigned int)size
{
  sizeCopy = size;
  computeBoxDoG = self->_computeBoxDoG;
  lumaBufCopy = lumaBuf;
  bufCopy = buf;
  textureCopy = texture;
  encoderCopy = encoder;
  [encoderCopy setComputePipelineState:computeBoxDoG];
  [encoderCopy setTexture:textureCopy atIndex:0];

  [encoderCopy setBuffer:bufCopy offset:0 atIndex:0];
  [encoderCopy setBuffer:lumaBufCopy offset:0 atIndex:1];

  [encoderCopy setBytes:&sizeCopy length:4 atIndex:2];
  v17 = (sizeCopy + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2EB70;
  [encoderCopy dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
}

- (void)addComputeBoxFeatureVectorToCommandEncoder:(id)encoder inputTexture:(id)texture inputlocationsBuf:(id)buf DoGAndLumaBuf:(id)lumaBuf inputLocationsSize:(unsigned int)size
{
  sizeCopy = size;
  computeBoxLumaFeatureVector = self->_computeBoxLumaFeatureVector;
  lumaBufCopy = lumaBuf;
  bufCopy = buf;
  textureCopy = texture;
  encoderCopy = encoder;
  [encoderCopy setComputePipelineState:computeBoxLumaFeatureVector];
  [encoderCopy setTexture:textureCopy atIndex:0];

  [encoderCopy setBuffer:bufCopy offset:0 atIndex:0];
  [encoderCopy setBuffer:lumaBufCopy offset:0 atIndex:1];

  [encoderCopy setBytes:&sizeCopy length:4 atIndex:2];
  v17 = (sizeCopy + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2EB70;
  [encoderCopy dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
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

      if (![(GGMMetalToolBox *)self _compileShaders])
      {
        self->_forceGpuWaitForComplete = 0;
        for (i = 168; i != 648; i += 8)
        {
          v12 = [(MTLDevice *)self->_device newBufferWithLength:9544 options:0];
          v13 = *(&self->super.isa + i);
          *(&self->super.isa + i) = v12;

          if (!*(&self->super.isa + i))
          {
            fig_log_get_emitter();
            sub_B568();
            goto LABEL_11;
          }
        }

        v17 = kCVMetalTextureCacheMaximumTextureAgeKey;
        v18 = &off_41380;
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
    sub_B568();
LABEL_11:
    FigDebugAssert3();
  }

  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (GGMMetalToolBox)initWithMetalContext:(id)context tuningParamDict:(id)dict
{
  dictCopy = dict;
  v7 = [(GGMMetalToolBox *)self initWithMetalContext:context];
  v8 = v7;
  if (v7)
  {
    [(GGMMetalToolBox *)v7 setRepairTuningParams:&v7->_tuningParams withDict:dictCopy];
    v9 = v8;
  }

  return v8;
}

- (void)encodeSyncMaxLuma:(id)luma metaBuf:(id)buf
{
  lumaCopy = luma;
  bufCopy = buf;
  sub_1EAA8([bufCopy contents]);
  if (v8)
  {
    [lumaCopy setComputePipelineState:self->_syncMaxLuma];
    sub_1EA50();
    sub_1EA28();
    sub_1EA70(xmmword_2EB70, v9, v10, v11, v12, v13, v14, v15, v16, v18, v17, v19);
  }
}

- (void)encodeSyncRefType:(id)type metaBuf:(id)buf
{
  typeCopy = type;
  bufCopy = buf;
  sub_1EAA8([bufCopy contents]);
  if (v8)
  {
    [typeCopy setComputePipelineState:self->_syncRefType];
    sub_1EA50();
    sub_1EA28();
    sub_1EA70(xmmword_2EB70, v9, v10, v11, v12, v13, v14, v15, v16, v18, v17, v19);
  }
}

- (void)encodeCollectClusterStats:(id)stats clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  statsCopy = stats;
  bufCopy = buf;
  metaBufCopy = metaBuf;
  contents = [bufCopy contents];
  contents2 = [metaBufCopy contents];
  if (*contents - 61 >= 0xFFFFFFC4)
  {
    sub_1EAA8(contents2);
    if (v13)
    {
      [statsCopy setComputePipelineState:self->_collectClusterStats];
      sub_1EA50();
      v14 = [statsCopy setBuffer:metaBufCopy offset:0 atIndex:1];
      v24 = (*contents + 31) >> 5;
      sub_1EA70(xmmword_2EB70, v14, v15, v16, v17, v18, v19, v20, v21, 32, v22, v23);
    }
  }
}

@end