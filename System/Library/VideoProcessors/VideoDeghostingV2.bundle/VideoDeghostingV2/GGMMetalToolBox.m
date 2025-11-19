@interface GGMMetalToolBox
- ($0A9CE08A0C783CC25037BAF5B2C76EB4)updateMetaContainerBuffer:(GGMMetalToolBox *)self WithDetectedROI:isLowLight:;
- ($3383F814A2C9529A407B627A92A46277)generateMetaContainerArrayBufFromMetaContainerBuf:(id)a3 imageRect:(CGRect)a4;
- (GGMMetalToolBox)initWithMetalContext:(id)a3;
- (GGMMetalToolBox)initWithMetalContext:(id)a3 tuningParamDict:(id)a4;
- (id)clusterIndicesOfRois:(id *)a3 withExtendedRadius:(float)a4 roiCnt:(signed __int16)a5 imageRect:(CGRect)a6;
- (id)clusterTheGreenGhostRois:(id)a3 withExtendedRadius:(float)a4 imageRect:(CGRect)a5;
- (id)createGhostRoiFromGhostBox:(id *)a3 computeLocalMotion:(BOOL)a4;
- (id)findGhostCandidatesFromDesGenAndTinyKeypointsFromInputTexture:(double)a3 ref4LocalMotionTexture:(double)a4 inputTPlus1Texture:(int32x2_t)a5 LSList:(double)a6 desGenKeypoints:(uint64_t)a7 homography:(void *)a8 colorParams:(void *)a9 computeLocalMotion:(void *)a10 LSDilation:(void *)a11 LSReflectCenter:(uint64_t)a12 maxLightSourceCount:(unsigned int *)a13 maxDesGenKeypoints:(BOOL)a14 maxTinyKeypoints:(unsigned int)a15 metalBuffers:(int)a16 isPrevLSFeaturesAvailable:(int)a17;
- (int)_compileShaders;
- (void)addComputeBoxDoGToCommandEncoder:(id)a3 inputTexture:(id)a4 inputlocationsBuf:(id)a5 DoGAndLumaBuf:(id)a6 inputLocationsSize:(unsigned int)a7;
- (void)addComputeBoxFeatureVectorToCommandEncoder:(id)a3 inputTexture:(id)a4 inputlocationsBuf:(id)a5 DoGAndLumaBuf:(id)a6 inputLocationsSize:(unsigned int)a7;
- (void)addFindDesGenGhostsToCommandEncoder:(__n128)a3 inputTexture:(__n128)a4 refTexture:(uint64_t)a5 homography:(void *)a6 colorParams:(void *)a7 kpCnt:(void *)a8 kpIdx:(uint64_t)a9 reflectedLsBboxList:(unsigned int)a10 lsCnt:(void *)a11 desGenKeypoints:(id)a12 desGenMappingInfo:(uint64_t)a13 ghostBoxes:(id)a14;
- (void)addFindTinyKPsToCommandEncoder:(__n128)a3 inputTexture:(__n128)a4 referenceTexture:(uint64_t)a5 inputlocationsBuf:(void *)a6 ggIdxBuf:(void *)a7 tinyGhostBoxes:(void *)a8 colorParams:(void *)a9 homography:(void *)a10 reflectedLsBboxList:(void *)a11 lsCnt:(id *)a12 inputLocationsSize:(id)a13;
- (void)backWarpYUV:(double)a3 warped:(double)a4 withHomography:(uint64_t)a5 waitForComplete:(__CVBuffer *)a6;
- (void)computeBlendingWeightsSpatialOnlyYUVInput:(id)a3 metadataBuf:(id)a4;
- (void)dealloc;
- (void)encodeBackWarpYUVToCommandBuffer:(__n128)a3 reference:(__n128)a4 toOutput:(uint64_t)a5 withHomography:(void *)a6;
- (void)encodeCollectClusterStats:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (void)encodeComputeBlendingWeightsForRepairYUV:(id)a3 input:(id)a4 temporalRepaired:(id)a5 metadataBuf:(id)a6;
- (void)encodeComputeBlendingWeightsSpatialOnlyForRepairYUV:(id)a3 input:(id)a4 metadataBuf:(id)a5;
- (void)encodeComputeDiffForLocalMotionYUVToCommandBuffer:(id)a3 input0Texture:(id)a4 input1Texture:(id)a5 outputTexture:(id)a6;
- (void)encodeComputeIntegralBinImageToCommandBuffer:(id)a3 inputBuf:(id)a4 toIntegral:(id)a5;
- (void)encodeGetGhostMaxLumaYUV:(id)a3 input:(id)a4 metaBuf:(id)a5;
- (void)encodeGetRefTypeYUV:(__n128)a3 input:(__n128)a4 ref0:(__n128)a5 ref1:(__n128)a6 metaBuf:(__n128)a7 meta0Buf:(uint64_t)a8 meta1Buf:(void *)a9 hmgrphy0:(void *)a10 hmgrphy1:(void *)a11;
- (void)encodeStrongTemporalRepairYUVToCommandBuffer:(__n128)a3 input:(__n128)a4 frRef0:(__n128)a5 frRef1:(__n128)a6 trRef0:(__n128)a7 trRef1:(uint64_t)a8 hmgrphy0:(void *)a9 hmgrphy1:(void *)a10 strongTemporalOutput:(void *)a11 temporalOutput:(void *)a12 metaBuf:(void *)a13 ref0MetaBuf:(void *)a14 ref1MetaBuf:(id)a15;
- (void)encodeSyncMaxLuma:(id)a3 metaBuf:(id)a4;
- (void)encodeSyncRefType:(id)a3 metaBuf:(id)a4;
- (void)encodeYCbCrToRGBToCommandBuffer:(id)a3 inputTexture:(id)a4 outTexture:(id)a5;
- (void)getGhostMaxLumaYUVInput:(id)a3 metaBuf:(id)a4 commandEncoder:(id)a5;
- (void)getRefTypeYUVInput:(double)a3 ref0:(double)a4 ref1:(double)a5 metaBuf:(double)a6 meta0Buf:(double)a7 meta1Buf:(uint64_t)a8 hmgrphy0:(uint64_t)a9 hmgrphy1:(uint64_t)a10 commandEncoder:(uint64_t)a11;
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
  if (v13 <= 60.0)
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
  a3->var2 = 60.0;
  *&a3->var0 = 0x41F0000048000000;
LABEL_10:
}

- ($0A9CE08A0C783CC25037BAF5B2C76EB4)updateMetaContainerBuffer:(GGMMetalToolBox *)self WithDetectedROI:isLowLight:
{
  v4 = v3;
  v5 = v1;
  v7 = v2;
  v8 = [v5 contents];
  LOBYTE(v8->var19[2]) = v4;
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
    v8->var24[1] = v10;
    v15 = 1.0;
    if (v10 != 0.0)
    {
      v15 = self->_tuningParams.repairTargetArea / v10;
    }
  }

  else
  {
    v8->var24[1] = 0.0;
    v15 = 1.0;
  }

  v16 = fminf(v15, 1.0);
  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  v8->var24[0] = v16;
  v17 = fminf(fmaxf(([v7 count] - self->_tuningParams.repairTargetGhostCntLo) / (self->_tuningParams.repairTargetGhostCntHi - self->_tuningParams.repairTargetGhostCntLo), 0.0), 1.0) * -0.9 + 1.0;
  if (v8->var24[0] < v17)
  {
    v17 = v8->var24[0];
  }

  v8->var24[0] = v17;
  v8->var24[2] = 1.0 / v17;
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
      if (v25 * v26 * v8->var24[0] * v8->var24[0] >= 100.0)
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
        p_var3 = &v8->var7[v19].var3;
        v34.i64[0] = 0x3F0000003F000000;
        v34.i64[1] = 0x3F0000003F000000;
        *p_var3->f32 = v31;
        *&p_var3->u32[2] = v35;
        p_var3[1] = vmulq_f32(vcvtq_f32_s32(v36), v34);
        v8->var19[v19 + 3] = [v23 trackID];
        [v23 confidence];
        v8->var15[v19 + 3] = v38;
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
        v8->var16[v19 + 3] = v41;
        [v23 ROIWSpatial];
        v8->var8[v19 + 3] = v42;
        [v23 ROIWStrongRepairInSpatial];
        v8->var13[v19 + 3] = v43;
        v8->var14[v19 + 3] = 0;
        v8->var9[v19 + 3] = 0;
        *(&v8[1].var3 + v19) = 0;
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
  v8->var0 = v19;
  LODWORD(v8->var1) = v50;
  v8->var2 = v21;
  v8->var3 = *(&v50 + 1);
  v8->var4 = v22;
  v8->var5 = (v21 - *&v50);
  v8->var6 = (v22 - *(&v50 + 1));
  v44 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vaddq_f64(vcvtq_f64_f32(*&v50), vdupq_n_s64(0xC050000000000000)), 0)));
  *&v8->var7[0].var1 = *&vsra_n_u32(v44, vcltz_s32(v44), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;

  return v8;
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

- ($3383F814A2C9529A407B627A92A46277)generateMetaContainerArrayBufFromMetaContainerBuf:(id)a3 imageRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = v9;
  p_metaBufArray = &self->_metaBufArray;
  v45 = self;
  self->_metaBufArray.clusterCnt = 0;
  if (!v9)
  {
    sub_27868();
LABEL_19:

    goto LABEL_16;
  }

  v11 = [v9 contents];
  if (!v11)
  {
    sub_277E8();
    goto LABEL_19;
  }

  v13 = v11;
  v14 = v11 + 20;
  LODWORD(v12) = 1120403456;
  v46 = [(GGMMetalToolBox *)v45 clusterIndicesOfRois:v11 + 20 withExtendedRadius:*v11 roiCnt:v12 imageRect:x, y, width, height];
  v15 = [v46 count];
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
      v19 = [v46 objectAtIndexedSubscript:{v16, v40}];
      v48 = v16;
      v20 = [(MTLBuffer *)p_metaBufArray->bufArray[v16] contents];
      bzero(v20, 0x2548uLL);
      *(v20 + 4360) = *(v13 + 4360);
      *v20 = [v19 count];
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
          v28 = [v27 intValue];

          v29 = &v20[v25];
          v30 = &v14[16 * v28];
          v31 = *(v30 + 1);
          *v29 = *v30;
          v29[1] = v31;
          v32 = &v20[v22];
          v33 = *&v58[2 * v28];
          v32[1091] = *&v59[2 * v28];
          v32[910] = v33;
          v34 = *&v20[v25];
          *(&v36 + 1) = *(&v60 + 1);
          *(&v35 + 1) = *(&v61 + 1);
          v37 = *&v20[2 * v22 + 24];
          v32[490] = *&v41[2 * v28];
          v32[970] = *&v57[2 * v28];
          v32[790] = *&v56[2 * v28];
          *&v36 = vbsl_s8(vcgt_f32(v34, *&v60), *&v60, v34);
          v60 = v36;
          *&v20[v24] = *&v55[4 * v28];
          v34.i32[0] = *&v53[2 * v28];
          v32[1664] = *&v54[2 * v28];
          v32[1724] = v34.i32[0];
          v34.i32[0] = *&v52[2 * v28];
          *&v35 = vbsl_s8(vcgt_f32(v37, *&v61), v37, *&v61);
          v61 = v35;
          v32[2204] = *&v51[2 * v28];
          v32[2264] = *&v50[2 * v28];
          v32[2084] = v34.i32[0];
          LODWORD(v29) = *&v49[2 * v28];
          v20[v26] = v28;
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
      *(v20 + 2) = vuzp1q_s32(v38, vrev64q_s32(v38));
      *(v20 + 10) = vcvt_u32_f32(vsub_f32(*&v61, *&v60));
      *v38.i8 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vaddq_f64(vcvtq_f64_f32(*&v60), v42), 0)));
      *(v20 + 4) = *&vsra_n_u32(*v38.i8, vcltz_s32(*v38.i8), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;
      v13 = v44;
      *(v20 + 1181) = *(v44 + 1181);
      *(v20 + 1183) = *(v44 + 1183);
      ++v45->_metaBufArray.clusterCnt;

      v16 = v48 + 1;
    }

    while (v48 + 1 != v43);
    v10 = v40;
  }

LABEL_16:
  return p_metaBufArray;
}

- (void)encodeBackWarpYUVToCommandBuffer:(__n128)a3 reference:(__n128)a4 toOutput:(uint64_t)a5 withHomography:(void *)a6
{
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v11 = a8;
  v12 = a7;
  v13 = [a6 computeCommandEncoder];
  [v13 setComputePipelineState:*(a1 + 24)];
  [v13 setTexture:v12 atIndex:0];
  [v13 setTexture:v11 atIndex:1];

  [v13 setBytes:v20 length:48 atIndex:0];
  [v13 setImageblockWidth:objc_msgSend(*(a1 + 24) height:{"threadExecutionWidth"), objc_msgSend(*(a1 + 24), "threadExecutionWidth")}];
  v14 = [*(a1 + 24) threadExecutionWidth];
  v15 = [*(a1 + 24) maxTotalThreadsPerThreadgroup] / v14;
  v16 = [v12 width];
  v17 = [v12 height];

  v19[0] = v16;
  v19[1] = v17;
  v19[2] = 1;
  v18[0] = v14;
  v18[1] = v15;
  v18[2] = 1;
  [v13 dispatchThreads:v19 threadsPerThreadgroup:v18];
  [v13 endEncoding];
}

- (void)backWarpYUV:(double)a3 warped:(double)a4 withHomography:(uint64_t)a5 waitForComplete:(__CVBuffer *)a6
{
  v17 = [a1[2] commandBuffer];
  if (v17)
  {
    v12 = sub_C6CC(a6, a1[85], 0, 0);
    v13 = sub_C6CC(a7, a1[85], 0, 0);
    [a1 encodeBackWarpYUVToCommandBuffer:v17 reference:v12 toOutput:v13 withHomography:{a2, a3, a4}];
    [a1 commitCmdBuffer:v17 waitForComplete:a8];
  }

  else
  {
    sub_278E8();
  }
}

- (void)encodeComputeIntegralBinImageToCommandBuffer:(id)a3 inputBuf:(id)a4 toIntegral:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 computeCommandEncoder];
  [v11 setComputePipelineState:self->_integralBinImageRow];
  [v11 setTexture:v9 atIndex:0];

  [v11 setTexture:v8 atIndex:1];
  v12 = [(MTLComputePipelineState *)self->_integralBinImageRow threadExecutionWidth];
  v18 = ([v8 height] + v12 - 1) / v12;
  v15 = vdupq_n_s64(1uLL);
  v19 = v15;
  v16 = v12;
  v17 = v15;
  [v11 dispatchThreadgroups:&v18 threadsPerThreadgroup:&v16];
  [v11 endEncoding];
  v13 = [v10 computeCommandEncoder];

  [v13 setComputePipelineState:self->_integralBinImageCol];
  [v13 setTexture:v8 atIndex:0];
  v14 = [v8 width];

  v18 = (v14 + v12 - 1) / v12;
  v19 = v15;
  v16 = v12;
  v17 = v15;
  [v13 dispatchThreadgroups:&v18 threadsPerThreadgroup:&v16];
  [v13 endEncoding];
}

- (void)encodeComputeBlendingWeightsSpatialOnlyForRepairYUV:(id)a3 input:(id)a4 metadataBuf:(id)a5
{
  v9 = a5;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v10 contents];
  v14 = [v12 computeCommandEncoder];

  [v14 setComputePipelineState:self->_computeBlendingWeightsSpatialOnlyYUV];
  [v14 setTexture:v11 atIndex:0];

  [v14 setBuffer:v10 offset:0 atIndex:0];
  [v14 setImageblockWidth:32 height:32];
  v15 = vshr_n_u32(vsra_n_u32(0x1F0000001FLL, vadd_s32(*(v13 + 20), 0x4400000044), 2uLL), 5uLL);
  *&v16 = v15.u32[0];
  *(&v16 + 1) = v15.u32[1];
  v19 = v16;
  v20 = 1;
  v17 = vdupq_n_s64(0x20uLL);
  v18 = 1;
  [v14 dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
  [v14 endEncoding];
}

- (void)computeBlendingWeightsSpatialOnlyYUVInput:(id)a3 metadataBuf:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  if (v7)
  {
    [(GGMMetalToolBox *)self encodeComputeBlendingWeightsSpatialOnlyForRepairYUV:v7 input:v12 metadataBuf:v6];
    [(GGMMetalToolBox *)self commitCmdBuffer:v7 waitForComplete:1];
    v8 = [v6 contents];
    v9 = *v8;
    if (v9 >= 1)
    {
      v10 = (v8 + 26);
      do
      {
        *(v8 + 490) = 1065353216;
        *(v8 + 1184) = 1065353216;
        v11 = (fminf(fmaxf((((*(v10 - 1) - *(v10 - 3)) * (*v10 - *(v10 - 2))) + -900.0) / 2700.0, 0.0), 1.0) * -0.9 + 1.0) * 0.03;
        *(v8 + 790) = 1.0 - fminf(fmaxf((*(v8 + 850) / 1023.0) / v11, 0.0), 1.0);
        *(v8 + 970) = 0;
        v8 += 2;
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

- (void)encodeComputeBlendingWeightsForRepairYUV:(id)a3 input:(id)a4 temporalRepaired:(id)a5 metadataBuf:(id)a6
{
  v11 = a6;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v12 contents];
  [v15 setComputePipelineState:self->_computeBlendingWeightsYUV];
  [v15 setTexture:v14 atIndex:0];

  [v15 setTexture:v13 atIndex:1];
  [v15 setBuffer:v12 offset:0 atIndex:0];

  v17 = vcvt_s32_f32(vrndp_f32(vmul_n_f32(vcvt_f32_u32(vadd_s32(*(v16 + 20), 0x8400000084)), *(v16 + 1181))));
  v18 = vsra_n_s32(0xF0000000FLL, vsra_n_u32(v17, vcltz_s32(v17), 0x1EuLL), 2uLL);
  v19.i64[0] = v18.i32[0];
  v19.i64[1] = v18.i32[1];
  v22 = vshrq_n_u64(v19, 4uLL);
  v23 = 1;
  v20 = vdupq_n_s64(0x10uLL);
  v21 = 1;
  [v15 dispatchThreadgroups:&v22 threadsPerThreadgroup:&v20];
}

- (void)encodeYCbCrToRGBToCommandBuffer:(id)a3 inputTexture:(id)a4 outTexture:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_YCbCrToRGB];
  [v10 setTexture:v9 atIndex:0];
  [v10 setTexture:v8 atIndex:1];

  v11 = [(MTLComputePipelineState *)self->_YCbCrToRGB threadExecutionWidth];
  v12 = [(MTLComputePipelineState *)self->_YCbCrToRGB maxTotalThreadsPerThreadgroup]/ v11;
  v13 = [v9 width];
  v14 = [v9 height];

  v16[0] = v13;
  v16[1] = v14;
  v16[2] = 1;
  v15[0] = v11;
  v15[1] = v12;
  v15[2] = 1;
  [v10 dispatchThreads:v16 threadsPerThreadgroup:v15];
  [v10 endEncoding];
}

- (void)encodeComputeDiffForLocalMotionYUVToCommandBuffer:(id)a3 input0Texture:(id)a4 input1Texture:(id)a5 outputTexture:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 computeCommandEncoder];
  [v13 setComputePipelineState:self->_computeDiffForLocalMotionYUV];
  [v13 setTexture:v12 atIndex:0];
  [v13 setTexture:v11 atIndex:1];

  [v13 setTexture:v10 atIndex:2];
  v14 = [(MTLComputePipelineState *)self->_computeDiffForLocalMotionYUV threadExecutionWidth];
  v15 = [(MTLComputePipelineState *)self->_computeDiffForLocalMotionYUV maxTotalThreadsPerThreadgroup]/ v14;
  v16 = [v12 width];
  v17 = [v12 height];

  v19[0] = v16;
  v19[1] = v17;
  v19[2] = 1;
  v18[0] = v14;
  v18[1] = v15;
  v18[2] = 1;
  [v13 dispatchThreads:v19 threadsPerThreadgroup:v18];
  [v13 endEncoding];
}

- (id)findGhostCandidatesFromDesGenAndTinyKeypointsFromInputTexture:(double)a3 ref4LocalMotionTexture:(double)a4 inputTPlus1Texture:(int32x2_t)a5 LSList:(double)a6 desGenKeypoints:(uint64_t)a7 homography:(void *)a8 colorParams:(void *)a9 computeLocalMotion:(void *)a10 LSDilation:(void *)a11 LSReflectCenter:(uint64_t)a12 maxLightSourceCount:(unsigned int *)a13 maxDesGenKeypoints:(BOOL)a14 maxTinyKeypoints:(unsigned int)a15 metalBuffers:(int)a16 isPrevLSFeaturesAvailable:(int)a17
{
  v79 = a8;
  v78 = a9;
  v83 = a10;
  v25 = a11;
  *a19 = 0;
  v26 = [a1[2] commandBuffer];
  v27 = v26;
  if (v26)
  {
    v77 = v26;
    v73 = [v26 computeCommandEncoderWithDispatchType:1];
    v28 = a1[1];
    IOSurface = CVDataBufferGetIOSurface();
    IOSurfaceLock(IOSurface, 1u, 0);
    v30 = *(IOSurfaceGetBaseAddress(IOSurface) + 5);
    IOSurfaceUnlock(IOSurface, 1u, 0);
    v76 = [v28 newBufferWithIOSurface:IOSurface];
    if (v30 >= a16)
    {
      v31 = a16;
    }

    else
    {
      v31 = v30;
    }

    v72 = v31;
    v32 = [v25 count];
    v75 = a18->var1;
    v33 = a18->var0;
    if (v32 >= a15)
    {
      v34 = a15;
    }

    else
    {
      v34 = v32;
    }

    v74 = v33;
    v35 = [v74 contents];
    if (v34)
    {
      v36 = v35;
      v37 = 0;
      v38 = vdup_lane_s32(a5, 0);
      do
      {
        v39 = [v25 objectAtIndex:v37];
        [v39 reflectAroundCenter:a6];
        [v39 bbox];
        v86 = vsub_f32(v40, v38);
        [v39 bbox];
        v85 = v41;
        [v39 bbox];
        *v43.f32 = v86;
        *&v43.u32[2] = vadd_f32(v38, vadd_f32(v85, *&vextq_s8(v42, v42, 8uLL)));
        v36[v37] = vcvtq_s32_f32(v43);
        [v39 reflectAroundCenter:a6];

        ++v37;
      }

      while (v34 != v37);
    }

    v44 = *a13;
    v45 = a13[1];
    v46 = a13[2];
    v47 = a13[3];
    v48 = a13[4];
    v49 = a13[5];
    v50 = a13[6];
    v51 = a13[7];
    *[a18->var4 contents] = 0;
    *[a18->var2 contents] = 0;
    v52 = *[a18->var12 contents];
    v53 = *[a18->var13 contents];
    v54 = *[a18->var7 contents];
    if (v52)
    {
      [a1 addComputeBoxDoGToCommandEncoder:v73 inputTexture:v79 inputlocationsBuf:a18->var8 DoGAndLumaBuf:a18->var10 inputLocationsSize:v52];
      [a1 addComputeBoxFeatureVectorToCommandEncoder:v73 inputTexture:v79 inputlocationsBuf:a18->var8 DoGAndLumaBuf:a18->var10 inputLocationsSize:v52];
    }

    if (v83 && v53)
    {
      [a1 addComputeBoxDoGToCommandEncoder:v73 inputTexture:v83 inputlocationsBuf:a18->var9 DoGAndLumaBuf:a18->var11 inputLocationsSize:v53];
      [a1 addComputeBoxFeatureVectorToCommandEncoder:v73 inputTexture:v83 inputlocationsBuf:a18->var9 DoGAndLumaBuf:a18->var11 inputLocationsSize:v53];
      *a19 = 1;
    }

    v55 = a3;
    v56 = a4;
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
      [a1 addFindTinyKPsToCommandEncoder:v73 inputTexture:v79 referenceTexture:v78 inputlocationsBuf:var5 ggIdxBuf:var4 tinyGhostBoxes:var6 colorParams:a2 homography:a3 reflectedLsBboxList:a4 lsCnt:&v98 inputLocationsSize:{v74, __PAIR64__(v54, v34)}];
      v57 = a2;
      v55 = a3;
      v56 = a4;
    }

    var2 = a18->var2;
    var3 = a18->var3;
    *&v98 = __PAIR64__(v45, v44);
    *(&v98 + 1) = __PAIR64__(v47, v46);
    *&v99 = __PAIR64__(v49, v48);
    *(&v99 + 1) = __PAIR64__(v51, v50);
    LODWORD(v71) = v34;
    [a1 addFindDesGenGhostsToCommandEncoder:v73 inputTexture:v79 refTexture:v78 homography:&v98 colorParams:v72 kpCnt:var2 kpIdx:v57 reflectedLsBboxList:v55 lsCnt:v56 desGenKeypoints:v74 desGenMappingInfo:v71 ghostBoxes:{v76, v75, var3}];
    [v73 endEncoding];
    [a1 commitCmdBuffer:v77 waitForComplete:1];
    v63 = [a18->var6 contents];
    v64 = *[a18->var4 contents];
    v65 = [a18->var3 contents];
    v66 = *[a18->var2 contents];
    v67 = +[NSMutableArray array];
    if (v64 <= a17 && v64 >= 1)
    {
      do
      {
        v105 = v63[7];
        v106 = v63[8];
        v107 = v63[9];
        v108 = v63[10];
        v101 = v63[3];
        v102 = v63[4];
        v103 = v63[5];
        v104 = v63[6];
        v98 = *v63;
        v99 = v63[1];
        v100 = v63[2];
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
        v68 = [a1 createGhostRoiFromGhostBox:&v87 computeLocalMotion:a14];
        [v68 setKpIsFromHW:0];
        [v67 addObject:v68];

        v63 += 11;
        --v64;
      }

      while (v64);
    }

    if (v66 <= a16 && v66 >= 1)
    {
      do
      {
        v105 = v65[7];
        v106 = v65[8];
        v107 = v65[9];
        v108 = v65[10];
        v101 = v65[3];
        v102 = v65[4];
        v103 = v65[5];
        v104 = v65[6];
        v98 = *v65;
        v99 = v65[1];
        v100 = v65[2];
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
        v69 = [a1 createGhostRoiFromGhostBox:&v87 computeLocalMotion:a14];
        [v69 setKpIsFromHW:1];
        [v67 addObject:v69];

        v65 += 11;
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

- (id)createGhostRoiFromGhostBox:(id *)a3 computeLocalMotion:(BOOL)a4
{
  v5 = a4;
  v4.i64[0] = *&a3->var1;
  v7 = &a3[1].var0.var0[4];
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
  DWORD2(v49) = LODWORD(a3[1].var0.var0[5]);
  v17 = *&a3->var3;
  v51 = v17;
  v18 = 1.0;
  v19 = 1.0;
  if (v5)
  {
    v19 = a3[1].var0.var0[3];
  }

  v20 = 0;
  v21 = a3[1].var0.var0[2];
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
    v28 = a3->var0.var0[v20];
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
  [(ROI *)v16 setDifferenceOfGaussianAndLumaFeature:*&a3->var0.var1];
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

- (void)addFindDesGenGhostsToCommandEncoder:(__n128)a3 inputTexture:(__n128)a4 refTexture:(uint64_t)a5 homography:(void *)a6 colorParams:(void *)a7 kpCnt:(void *)a8 kpIdx:(uint64_t)a9 reflectedLsBboxList:(unsigned int)a10 lsCnt:(void *)a11 desGenKeypoints:(id)a12 desGenMappingInfo:(uint64_t)a13 ghostBoxes:(id)a14
{
  v22 = a14;
  v21 = a15;
  v37[0] = a2;
  v37[1] = a3;
  v37[2] = a4;
  v36 = a10;
  v23 = *(a1 + 56);
  v31 = a16;
  v24 = v21;
  v25 = v22;
  v26 = a12;
  v27 = a11;
  v28 = a8;
  v29 = a7;
  v30 = a6;
  [v30 setComputePipelineState:v23];
  [v30 setTexture:v29 atIndex:0];

  [v30 setTexture:v28 atIndex:1];
  [v30 setBytes:a9 length:32 atIndex:0];
  [v30 setBytes:v37 length:48 atIndex:1];
  [v30 setBytes:&v36 length:4 atIndex:2];
  [v30 setBuffer:v27 offset:0 atIndex:3];

  [v30 setBuffer:v26 offset:0 atIndex:4];
  [v30 setBytes:&a13 length:4 atIndex:5];
  [v30 setBuffer:v25 offset:0 atIndex:6];

  [v30 setBuffer:v24 offset:0 atIndex:7];
  [v30 setBuffer:v31 offset:0 atIndex:8];

  v34 = (v36 + 31) >> 5;
  v35 = vdupq_n_s64(1uLL);
  v32 = 32;
  v33 = xmmword_2EB70;
  [v30 dispatchThreadgroups:&v34 threadsPerThreadgroup:&v32];
}

- (void)addFindTinyKPsToCommandEncoder:(__n128)a3 inputTexture:(__n128)a4 referenceTexture:(uint64_t)a5 inputlocationsBuf:(void *)a6 ggIdxBuf:(void *)a7 tinyGhostBoxes:(void *)a8 colorParams:(void *)a9 homography:(void *)a10 reflectedLsBboxList:(void *)a11 lsCnt:(id *)a12 inputLocationsSize:(id)a13
{
  v32[0] = a2;
  v32[1] = a3;
  v32[2] = a4;
  v20 = *(a1 + 48);
  v21 = a13;
  v22 = a11;
  v23 = a10;
  v24 = a9;
  v25 = a8;
  v26 = a7;
  v27 = a6;
  [v27 setComputePipelineState:v20];
  [v27 setTexture:v26 atIndex:0];

  [v27 setTexture:v25 atIndex:1];
  [v27 setBuffer:v24 offset:0 atIndex:0];

  [v27 setBytes:&a14 + 4 length:4 atIndex:1];
  [v27 setBuffer:v23 offset:0 atIndex:2];

  [v27 setBuffer:v22 offset:0 atIndex:3];
  [v27 setBytes:a12 length:32 atIndex:4];
  [v27 setBytes:v32 length:48 atIndex:5];
  [v27 setBuffer:v21 offset:0 atIndex:6];

  [v27 setBytes:&a14 length:4 atIndex:7];
  v30 = (HIDWORD(a14) + 31) >> 5;
  v31 = vdupq_n_s64(1uLL);
  v28 = 32;
  v29 = xmmword_2EB70;
  [v27 dispatchThreadgroups:&v30 threadsPerThreadgroup:&v28];
}

- (void)encodeGetGhostMaxLumaYUV:(id)a3 input:(id)a4 metaBuf:(id)a5
{
  v9 = a5;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v10 contents];
  [v12 setComputePipelineState:self->_getGhostMaxLumaYUV];
  [v12 setTexture:v11 atIndex:0];

  [v12 setBuffer:v10 offset:0 atIndex:0];
  v14 = vadd_s32(*(v13 + 20), 0x8400000084);
  v15 = vsra_n_s32(0x1F0000001FLL, vsra_n_u32(v14, vcltz_s32(v14), 0x1EuLL), 2uLL);
  v16.i64[0] = v15.i32[0];
  v16.i64[1] = v15.i32[1];
  v19 = vshrq_n_u64(v16, 5uLL);
  v20 = 1;
  v17 = vdupq_n_s64(0x20uLL);
  v18 = 1;
  [v12 dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
}

- (void)getGhostMaxLumaYUVInput:(id)a3 metaBuf:(id)a4 commandEncoder:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(GGMMetalToolBox *)self encodeGetGhostMaxLumaYUV:v8 input:a3 metaBuf:v9];
  [(GGMMetalToolBox *)self encodeSyncMaxLuma:v8 metaBuf:v9];
}

- (void)encodeGetRefTypeYUV:(__n128)a3 input:(__n128)a4 ref0:(__n128)a5 ref1:(__n128)a6 metaBuf:(__n128)a7 meta0Buf:(uint64_t)a8 meta1Buf:(void *)a9 hmgrphy0:(void *)a10 hmgrphy1:(void *)a11
{
  v39[0] = a2;
  v39[1] = a3;
  v39[2] = a4;
  v38[0] = a5;
  v38[1] = a6;
  v38[2] = a7;
  v22 = a13;
  v23 = a15;
  v24 = a14;
  v25 = a13;
  v26 = a12;
  v27 = a11;
  v28 = a10;
  v29 = a9;
  v30 = [v25 contents];
  [v29 setComputePipelineState:*(a1 + 80)];
  [v29 setTexture:v28 atIndex:0];

  [v29 setTexture:v27 atIndex:1];
  [v29 setTexture:v26 atIndex:2];

  [v29 setBuffer:v25 offset:0 atIndex:0];
  [v29 setBuffer:v24 offset:0 atIndex:1];

  [v29 setBuffer:v23 offset:0 atIndex:2];
  [v29 setBytes:v39 length:48 atIndex:3];
  [v29 setBytes:v38 length:48 atIndex:4];
  v31 = vadd_s32(*(v30 + 20), 0x8400000084);
  v32 = vsra_n_s32(0x1F0000001FLL, vsra_n_u32(v31, vcltz_s32(v31), 0x1EuLL), 2uLL);
  v33.i64[0] = v32.i32[0];
  v33.i64[1] = v32.i32[1];
  v36 = vshrq_n_u64(v33, 5uLL);
  v37 = 1;
  v34 = vdupq_n_s64(0x20uLL);
  v35 = 1;
  [v29 dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
}

- (void)getRefTypeYUVInput:(double)a3 ref0:(double)a4 ref1:(double)a5 metaBuf:(double)a6 meta0Buf:(double)a7 meta1Buf:(uint64_t)a8 hmgrphy0:(uint64_t)a9 hmgrphy1:(uint64_t)a10 commandEncoder:(uint64_t)a11
{
  v22 = a15;
  v29 = a12;
  [a1 encodeGetRefTypeYUV:v22 input:a9 ref0:a10 ref1:a11 metaBuf:v29 meta0Buf:a13 meta1Buf:a2 hmgrphy0:a3 hmgrphy1:{a4, a5, a6, a7, a14}];
  [a1 encodeSyncRefType:v22 metaBuf:v29];
}

- (void)encodeStrongTemporalRepairYUVToCommandBuffer:(__n128)a3 input:(__n128)a4 frRef0:(__n128)a5 frRef1:(__n128)a6 trRef0:(__n128)a7 trRef1:(uint64_t)a8 hmgrphy0:(void *)a9 hmgrphy1:(void *)a10 strongTemporalOutput:(void *)a11 temporalOutput:(void *)a12 metaBuf:(void *)a13 ref0MetaBuf:(void *)a14 ref1MetaBuf:(id)a15
{
  v43[0] = a2;
  v43[1] = a3;
  v43[2] = a4;
  v42[0] = a5;
  v42[1] = a6;
  v42[2] = a7;
  v24 = *(a1 + 104);
  v37 = a19;
  v36 = a18;
  v25 = a17;
  v35 = a16;
  v26 = a15;
  v27 = a14;
  v28 = a13;
  v29 = a12;
  v30 = a11;
  v31 = a10;
  v32 = a9;
  [v32 setComputePipelineState:v24];
  [v32 setTexture:v31 atIndex:0];

  [v32 setTexture:v30 atIndex:1];
  [v32 setTexture:v29 atIndex:2];

  [v32 setTexture:v28 atIndex:3];
  [v32 setTexture:v27 atIndex:4];

  [v32 setTexture:v26 atIndex:5];
  [v32 setTexture:v35 atIndex:6];

  [v32 setBuffer:v25 offset:0 atIndex:0];
  [v32 setBuffer:v36 offset:0 atIndex:1];

  [v32 setBuffer:v37 offset:0 atIndex:2];
  [v32 setBytes:v43 length:48 atIndex:3];
  [v32 setBytes:v42 length:48 atIndex:4];
  [v32 setImageblockWidth:32 height:32];
  v33 = [v25 contents];

  v40 = vshrq_n_u64(vaddw_s32(vdupq_n_s64(0x1FuLL), vadd_s32(*(v33 + 20), 0x8400000084)), 5uLL);
  v41 = 1;
  v38 = vdupq_n_s64(0x20uLL);
  v39 = 1;
  [v32 dispatchThreadgroups:&v40 threadsPerThreadgroup:&v38];
}

- (void)addComputeBoxDoGToCommandEncoder:(id)a3 inputTexture:(id)a4 inputlocationsBuf:(id)a5 DoGAndLumaBuf:(id)a6 inputLocationsSize:(unsigned int)a7
{
  v19 = a7;
  computeBoxDoG = self->_computeBoxDoG;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  [v14 setComputePipelineState:computeBoxDoG];
  [v14 setTexture:v13 atIndex:0];

  [v14 setBuffer:v12 offset:0 atIndex:0];
  [v14 setBuffer:v11 offset:0 atIndex:1];

  [v14 setBytes:&v19 length:4 atIndex:2];
  v17 = (v19 + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2EB70;
  [v14 dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
}

- (void)addComputeBoxFeatureVectorToCommandEncoder:(id)a3 inputTexture:(id)a4 inputlocationsBuf:(id)a5 DoGAndLumaBuf:(id)a6 inputLocationsSize:(unsigned int)a7
{
  v19 = a7;
  computeBoxLumaFeatureVector = self->_computeBoxLumaFeatureVector;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  [v14 setComputePipelineState:computeBoxLumaFeatureVector];
  [v14 setTexture:v13 atIndex:0];

  [v14 setBuffer:v12 offset:0 atIndex:0];
  [v14 setBuffer:v11 offset:0 atIndex:1];

  [v14 setBytes:&v19 length:4 atIndex:2];
  v17 = (v19 + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2EB70;
  [v14 dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
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
    sub_B568();
LABEL_11:
    FigDebugAssert3();
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (GGMMetalToolBox)initWithMetalContext:(id)a3 tuningParamDict:(id)a4
{
  v6 = a4;
  v7 = [(GGMMetalToolBox *)self initWithMetalContext:a3];
  v8 = v7;
  if (v7)
  {
    [(GGMMetalToolBox *)v7 setRepairTuningParams:&v7->_tuningParams withDict:v6];
    v9 = v8;
  }

  return v8;
}

- (void)encodeSyncMaxLuma:(id)a3 metaBuf:(id)a4
{
  v6 = a3;
  v7 = a4;
  sub_1EAA8([v7 contents]);
  if (v8)
  {
    [v6 setComputePipelineState:self->_syncMaxLuma];
    sub_1EA50();
    sub_1EA28();
    sub_1EA70(xmmword_2EB70, v9, v10, v11, v12, v13, v14, v15, v16, v18, v17, v19);
  }
}

- (void)encodeSyncRefType:(id)a3 metaBuf:(id)a4
{
  v6 = a3;
  v7 = a4;
  sub_1EAA8([v7 contents]);
  if (v8)
  {
    [v6 setComputePipelineState:self->_syncRefType];
    sub_1EA50();
    sub_1EA28();
    sub_1EA70(xmmword_2EB70, v9, v10, v11, v12, v13, v14, v15, v16, v18, v17, v19);
  }
}

- (void)encodeCollectClusterStats:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 contents];
  v12 = [v10 contents];
  if (*v11 - 61 >= 0xFFFFFFC4)
  {
    sub_1EAA8(v12);
    if (v13)
    {
      [v8 setComputePipelineState:self->_collectClusterStats];
      sub_1EA50();
      v14 = [v8 setBuffer:v10 offset:0 atIndex:1];
      v24 = (*v11 + 31) >> 5;
      sub_1EA70(xmmword_2EB70, v14, v15, v16, v17, v18, v19, v20, v21, 32, v22, v23);
    }
  }
}

@end