@interface VDGDetectionUtilsV2
- ($BEDB99FD0828BB334BE1A07B64442EB9)configuration;
- (BOOL)ghostIsHighConfidence:(id)a3;
- (BOOL)updatePrevLSDoGAndLumaFeaturesWithMetalBuffers:(id *)a3;
- (CGPoint)calcOpticalCenterFromMetaData:(id)a3;
- (VDGDetectionUtilsV2)initWithMetalToolBox:(id)a3 configuration:(id *)a4 tuningParams:(id *)a5;
- (double)getSearchLocation:(void *)a3;
- (float)getTemporalDetectionSearchRadiusForReferenceFrameIndex:(float)a3 minSearchRadius:(float)a4 slope:(float)a5;
- (float)getTrajectoryMatchingCostGG:(id)a3;
- (float32x2_t)predictPrevLSLocation:(int32x4_t)a3 usingPrevToCurrentHomography:(uint64_t)a4;
- (id)generateDetectionRoiList:(id)a3;
- (id)getBestROIInROIList:(id)a3 referenceROI:(id)a4;
- (void)clearReferencedROIsForROIList:(id)a3;
- (void)dealloc;
- (void)generateBoxesForDoGAndLumaAndForLSROIs:(id)a3 prevGGROIs:(id)a4 inputTexture:(id)a5 opticalCenter:(id *)a6 metalBuffers:(int)a7 maxBufferLength:;
- (void)generateBoxesForDoGAndLumaAndForPrevLSROIs:(double)a3 homography:(double)a4 metalBuffers:(uint64_t)a5 maxBufferLength:(void *)a6;
- (void)generateTrajectoryForROI:(id)a3 isGG:(BOOL)a4;
- (void)getGGCandidatesFromROIList:(id)a3 GGList:(id *)a4;
- (void)getHighRiskLS:(id)a3;
- (void)getTopGhostsInList:(id)a3 k:(signed __int16)a4 opticalCenter:(int)a5 ghostCntGatingTh:;
- (void)getTopLSInListByDroppingBottoms:(id)a3 k:(signed __int16)a4 dist2ghostTol:(float)a5;
- (void)getTopLSInListByKeepingTops:(id)a3 k:(signed __int16)a4 dist2ghostTol:(float)a5;
- (void)pruneGGList:(id *)a3 LSBBoxList:(id *)a4 reflectedLSBBoxList:getMatchedLS:pruneLS:pruneGG:;
- (void)pruneLSBasedOnDist2Ghost:(id)a3;
- (void)pruneUsingTrajectoryGGList:(id)a3;
- (void)removeDuplicateRois:(id)a3;
- (void)removeRedundantLS:(id)a3;
- (void)setConfiguration:(id *)a3;
- (void)setDefaultOpticalCenterForList:(id)a3 opticalCenter:;
- (void)setSimParams:(_simParamsStruct *)a3 withMetaData:(id)a4;
- (void)sortKPs:(id)a3 opticalCenter:;
- (void)updateDoGAndLumaFeaturesWithMetalBuffers:(id *)a3;
- (void)updateNewRoiPixFea:(VDGDetectionUtilsV2 *)self withRefPixFea:(SEL)a2;
@end

@implementation VDGDetectionUtilsV2

- (VDGDetectionUtilsV2)initWithMetalToolBox:(id)a3 configuration:(id *)a4 tuningParams:(id *)a5
{
  v8 = a3;
  v23.receiver = self;
  v23.super_class = VDGDetectionUtilsV2;
  v9 = [(VDGDetectionUtilsV2 *)&v23 init];
  if (!v9)
  {
    sub_1FE8C();
    goto LABEL_14;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(GGMMetalToolBox);
  }

  metalToolBox = v9->_metalToolBox;
  v9->_metalToolBox = v10;

  v12 = *&a4->var0.var0;
  v13 = *&a4->var0.var7;
  v14 = *&a4->var1.var4;
  *&v9->_configuration.externalCfg.lightMode = *&a4->var1.var0;
  *&v9->_configuration.externalCfg.frameDelay = v14;
  *&v9->_configuration.internalCfg.clipThreshold = v12;
  *&v9->_configuration.internalCfg.enableColorMask = v13;
  v15 = a5->var12 + a5->var15;
  v9->_reflectedLSListLen = v15;
  v9->_reflectedLSList = malloc_type_malloc(v15, 0x100004077774924uLL);
  v16 = a5->var12 + a5->var15;
  v9->_bboxListLen = v16;
  *v9->_bboxList = malloc_type_malloc(16 * v16, 0x1000040451B5BE8uLL);
  var15 = a5->var15;
  v9->_locationListLen = var15;
  *v9->_locationList = malloc_type_malloc(8 * var15, 0x100004000313F17uLL);
  v18 = a5->var15;
  v9->_kpIsFromHWListLen = v18;
  v9->_kpIsFromHWList = malloc_type_malloc(v18, 0x100004077774924uLL);
  v19 = a5->var15;
  v9->_dist2OpticalCenterListLen = v19;
  v20 = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
  v9->_dist2OpticalCenterList = v20;
  if (!v9->_reflectedLSList || !*v9->_bboxList || !*v9->_locationList || !v9->_kpIsFromHWList || !v20)
  {
    sub_1FE14();
LABEL_14:
    v21 = 0;
    goto LABEL_11;
  }

  v21 = v9;
LABEL_11:

  return v21;
}

- (void)dealloc
{
  free(*self->_bboxList);
  free(self->_reflectedLSList);
  free(*self->_locationList);
  free(self->_kpIsFromHWList);
  free(self->_dist2OpticalCenterList);
  v3.receiver = self;
  v3.super_class = VDGDetectionUtilsV2;
  [(VDGDetectionUtilsV2 *)&v3 dealloc];
}

- (BOOL)ghostIsHighConfidence:(id)a3
{
  v3 = a3;
  if (([v3 isTrajectoryPruningPassed] & 1) != 0 || objc_msgSend(v3, "trackedCnt") >= 1)
  {
    v4 = [v3 isReflectedLS] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)generateTrajectoryForROI:(id)a3 isGG:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    [v5 temporalDetectionMatched];
  }

  else
  {
    [v5 LSTrackingMatched];
  }
  v7 = ;
  v8 = v7;
  if (v7)
  {
    [v7 bbox];
    v18 = v9;
    [v8 bbox];
    v11 = vadd_f32(v18, vmul_f32(*&vextq_s8(v10, v10, 8uLL), 0x3F0000003F000000));
    [v6 bbox];
    v19 = v12;
    [v6 bbox];
    v14 = vadd_f32(v19, vmul_f32(*&vextq_s8(v13, v13, 8uLL), 0x3F0000003F000000));
    if (!a4)
    {
      [v8 defaultOpticalCenter];
      v11 = sub_12EE0(v11, v15);
      [v6 defaultOpticalCenter];
      v14 = sub_12EE0(v14, v16);
    }

    v17 = vsub_f32(v14, v11);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    [v8 descriptor];
    *(&v39 + 1) = v17;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v20 = v30;
    v21 = v31;
    [v8 setDescriptor:&v20];
  }

  else
  {
    v17 = vneg_f32(0x7F0000007FLL);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  if (v6)
  {
    [v6 descriptor];
  }

  *&v39 = v17;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v20 = v30;
  v21 = v31;
  [v6 setDescriptor:&v20];
}

- (float)getTrajectoryMatchingCostGG:(id)a3
{
  v4 = a3;
  v5 = [v4 matchedLS];
  if (v4)
  {
    [v4 descriptor];
    v6 = v53;
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v6 = 0;
    v44 = 0u;
    v45 = 0u;
  }

  v7 = 1.0;
  if ([v5 count])
  {
    v8 = vceq_f32(v6, vneg_f32(0x7F0000007FLL));
    if ((vpmin_u32(v8, v8).u32[0] & 0x80000000) == 0)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v40 objects:v39 count:16];
      if (v10)
      {
        v12 = v10;
        v3.i32[0] = 0;
        *&v11 = vmul_f32(v6, v6);
        v13 = vaddv_f32(*&v11);
        LODWORD(v11) = vadd_f32(*&v11, vdup_lane_s32(*&v11, 1)).u32[0];
        v14 = vrsqrte_f32(v11);
        v15 = vmul_f32(v14, vrsqrts_f32(v11, vmul_f32(v14, v14)));
        v16 = vmul_n_f32(v6, vmul_f32(v15, vrsqrts_f32(v11, vmul_f32(v15, v15))).f32[0]);
        v17 = *v41;
        v18 = 0;
        *&v11 = 0;
        v36 = v11;
        v19 = vneg_f32(0x7F0000007FLL);
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v41 != v17)
            {
              objc_enumerationMutation(v9);
            }

            v21 = *(*(&v40 + 1) + 8 * i);
            if (v21)
            {
              [v21 descriptor];
              v22 = v38;
            }

            else
            {
              v38 = 0;
              v22 = 0;
            }

            v23 = vceq_f32(v22, v19);
            v24 = vpmin_u32(v23, v23);
            v25 = v24.i32[0];
            v18 = vbsl_s8(vdup_lane_s32(vcgt_s32(v3, v24), 0), v18, vadd_f32(v18, v22));
            v26 = v36;
            if (v25 >= 0)
            {
              *&v26 = *&v36 + 1.0;
            }

            v36 = v26;
          }

          v12 = [v9 countByEnumeratingWithState:&v40 objects:v39 count:16];
        }

        while (v12);

        v7 = 1.0;
        if (*&v36 != 0.0)
        {
          v27 = vdiv_f32(v18, vdup_lane_s32(*&v36, 0));
          v28 = vmul_f32(v27, v27);
          v29 = sqrtf(vaddv_f32(v28));
          if (v29 > 10.0)
          {
            v37 = v28;
            [v4 setIsTrajectoryPruningPassed:1];
            v30 = sqrtf(v13);
            v7 = -1.0;
            if (v30 > 1.0)
            {
              v31 = vabds_f32(v30, v29);
              if (v30 >= v29)
              {
                v30 = v29;
              }

              if (v31 <= (v30 + v30))
              {
                v32 = vadd_f32(v37, vdup_lane_s32(v37, 1)).u32[0];
                v33 = vrsqrte_f32(v32);
                v34 = vmul_f32(v33, vrsqrts_f32(v32, vmul_f32(v33, v33)));
                v7 = vaddv_f32(vmul_f32(v16, vmul_n_f32(v27, vmul_f32(v34, vrsqrts_f32(v32, vmul_f32(v34, v34))).f32[0])));
              }
            }
          }
        }
      }

      else
      {
      }
    }
  }

  return v7;
}

- (void)pruneUsingTrajectoryGGList:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (([v11 isReflectedLS] & 1) == 0)
        {
          [(VDGDetectionUtilsV2 *)self getTrajectoryMatchingCostGG:v11];
          if (v12 <= 0.3)
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  [v6 removeObjectsInArray:v5];
}

- (void)getHighRiskLS:(id)a3
{
  v3 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    v7 = vneg_f32(0x7F0000007FLL);
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        if (v9)
        {
          [v9 descriptor];
          v10 = v25;
        }

        else
        {
          v24 = 0u;
          v25 = 0;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v10 = 0;
          v16 = 0u;
          v17 = 0u;
        }

        [v9 bbox];
        v12 = v11;
        [v9 bbox];
        v15 = 0;
        if (vmuls_lane_f32(v12, v13, 3) > 10000.0)
        {
          if (sqrtf(vaddv_f32(vmul_f32(v10, v10))) <= 10.0 || (v14 = vceq_f32(v10, v7), (vpmin_u32(v14, v14).u32[0] & 0x80000000) != 0))
          {
            v15 = 1;
          }
        }

        [v9 setLSIsHighRisk:v15];
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v5);
  }
}

- (void)setDefaultOpticalCenterForList:(id)a3 opticalCenter:
{
  v4 = v3;
  v5 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9) setDefaultOpticalCenter:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (double)getSearchLocation:(void *)a3
{
  v3 = a3;
  [v3 bbox];
  v22 = v4;
  [v3 bbox];
  v21 = v5;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [v3 matchedLS];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (!v7)
  {

    goto LABEL_17;
  }

  v8 = v7;
  v9 = vextq_s8(v21, v21, 8uLL);
  v10 = vadd_f32(v22, vmul_f32(*v9.i8, 0x3F0000003F000000));
  v11 = *v28;
  v9.i64[0] = 0;
  v23 = v9;
  v12 = 0;
  v13 = vneg_f32(0x7F0000007FLL);
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v27 + 1) + 8 * i);
      if (v15)
      {
        [v15 descriptor];
        v16 = vceq_f32(v25, v13);
        if ((vpmin_u32(v16, v16).u32[0] & 0x80000000) != 0)
        {
          continue;
        }

        [v15 descriptor];
        v17 = v24;
      }

      else
      {
        v25 = 0;
        if ((vpmin_u32(0, 0).u32[0] & 0x80000000) != 0)
        {
          continue;
        }

        v24 = 0;
        v17 = 0;
      }

      v12 = vadd_f32(v12, v17);
      v18 = v23;
      *v18.i32 = *v23.i32 + 1.0;
      v23 = v18;
    }

    v8 = [v6 countByEnumeratingWithState:&v27 objects:v26 count:16];
  }

  while (v8);

  if (*v23.i32 <= 0.0)
  {
LABEL_17:
    v19 = vneg_f32(0x7F0000007FLL);
    goto LABEL_18;
  }

  v19 = vadd_f32(v10, vdiv_f32(v12, vdup_lane_s32(*v23.i8, 0)));
LABEL_18:

  return *&v19;
}

- (void)removeRedundantLS:(id)a3
{
  v45 = a3;
  v3 = +[NSMutableArray array];
  if ([v45 count])
  {
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v6 = [v45 objectAtIndexedSubscript:v4];
      [v6 bbox];
      v43 = v7;
      [v6 bbox];
      v42 = v8;
      [v6 bbox];
      rect1_8 = v9;
      [v6 bbox];
      v40 = v10;
      if ([v45 count] > ++v4)
      {
        break;
      }

LABEL_27:

      ++v5;
      if ([v45 count] <= v4)
      {
        goto LABEL_28;
      }
    }

    v34 = v43;
    v35 = v42;
    v33 = vmuls_lane_f32(rect1_8, v40, 3);
    v11 = v5;
    while (1)
    {
      v12 = [v45 objectAtIndexedSubscript:v11];
      [v12 bbox];
      v14 = v13;
      [v12 bbox];
      v16 = v15;
      [v12 bbox];
      v37 = v17;
      v18 = v17;
      [v12 bbox];
      v36 = v19;
      v51.size.height = v19;
      v47.origin.x = v34;
      v47.origin.y = v35;
      v47.size.width = rect1_8;
      v47.size.height = v40.f32[3];
      v44 = v14;
      v51.origin.x = v14;
      v41 = v16;
      v51.origin.y = v16;
      *v40.i64 = v18;
      v51.size.width = v18;
      rect1 = v19;
      v48 = CGRectIntersection(v47, v51);
      x = v48.origin.x;
      y = v48.origin.y;
      width = v48.size.width;
      height = v48.size.height;
      v48.origin.x = v34;
      v48.origin.y = v35;
      v48.size.width = rect1_8;
      v48.size.height = v40.f32[3];
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v24 = CGRectEqualToRect(v48, v52);
      v25 = v6;
      if (!v24)
      {
        v49.origin.x = v44;
        v49.origin.y = v41;
        *&v49.size.width = v40.i64[0];
        v49.size.height = rect1;
        v53.origin.x = x;
        v53.origin.y = y;
        v53.size.width = width;
        v53.size.height = height;
        v26 = CGRectEqualToRect(v49, v53);
        v25 = v12;
        if (!v26)
        {
          v50.origin.x = x;
          v50.origin.y = y;
          v50.size.width = width;
          v50.size.height = height;
          if (CGRectIsNull(v50))
          {
            goto LABEL_8;
          }

          v27 = height * width;
          v28 = v27 / v33;
          v29 = v27 / (v37 * v36);
          v30 = v28 >= 0.5 && v29 < 0.5;
          v25 = v6;
          if (!v30)
          {
            v31 = v28 >= 0.5 || v29 < 0.5;
            v25 = v12;
            if (v31)
            {
              if (v28 < 0.5 || v29 < 0.5)
              {
                goto LABEL_8;
              }

              if (v28 <= v29)
              {
                v25 = v12;
              }

              else
              {
                v25 = v6;
              }
            }
          }
        }
      }

      [v3 addObject:v25];
LABEL_8:

      if ([v45 count] <= ++v11)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  [v45 removeObjectsInArray:v3];
}

- (float32x2_t)predictPrevLSLocation:(int32x4_t)a3 usingPrevToCurrentHomography:(uint64_t)a4
{
  if (a6)
  {
    v13 = a2;
    v14 = a3;
    v12 = a1;
    v6 = a6;
    [v6 descriptor];
    [v6 descriptor];

    v7 = v16;
    a1 = v12;
    a2 = v13;
    a3 = v14;
    v8 = v15;
  }

  else
  {
    v8 = 0;
    v7 = 0.0;
  }

  v9 = vtrn2q_s32(a1, a2);
  v9.i32[2] = a3.i32[1];
  v10 = vaddq_f32(vzip1q_s32(vzip2q_s32(a1, a3), vdupq_laneq_s32(a2, 2)), vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(a1, a3), a2), v7), v9, v8, 1));
  return vdiv_f32(*v10.i8, vdup_laneq_s32(v10, 2));
}

- (void)pruneGGList:(id *)a3 LSBBoxList:(id *)a4 reflectedLSBBoxList:getMatchedLS:pruneLS:pruneGG:
{
  v8 = v4;
  v10 = a3;
  if (v6)
  {
    v40 = +[NSMutableArray array];
    if ([*a4 count])
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        v43 = *(v8 + 16 * v11);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v14 = *v10;
        v15 = [v14 countByEnumeratingWithState:&v48 objects:v47 count:16];
        if (v15)
        {
          v16 = v15;
          v42 = vextq_s8(v43, v43, 8uLL).u64[0];
          v17 = *v49;
          while (2)
          {
            v18 = 0;
            v19 = v12;
            do
            {
              if (*v49 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v12 = *(*(&v48 + 1) + 8 * v18);

              if (v12)
              {
                [v12 descriptor];
                v20 = vcvt_s32_f32(v46);
              }

              else
              {
                v20 = 0;
                v46 = 0;
              }

              v21 = vcge_s32(v20, *v43.i8);
              if ((vpmin_u32(v21, v21).u32[0] & 0x80000000) != 0)
              {
                v22 = vcge_s32(v42, v20);
                if ((vpmin_u32(v22, v22).u32[0] & 0x80000000) != 0)
                {

                  v14 = [*a4 objectAtIndexedSubscript:v11];
                  [v40 addObject:v14];
                  goto LABEL_18;
                }
              }

              v18 = v18 + 1;
              v19 = v12;
            }

            while (v16 != v18);
            v16 = [v14 countByEnumeratingWithState:&v48 objects:v47 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v12 = 0;
LABEL_18:

        v11 = ++v13;
        v10 = a3;
      }

      while ([*a4 count] > v13);
    }

    else
    {
      v12 = 0;
    }

    v39 = *a4;
    *a4 = v40;

LABEL_43:
    return;
  }

  if (v7)
  {
    v23 = v5;
    if ([*a3 count])
    {
      v24 = 0;
      v12 = 0;
      v25 = 0;
      do
      {
        v26 = v12;
        v12 = [*v10 objectAtIndexedSubscript:v24];

        if (v12)
        {
          [v12 descriptor];
          v44 = vcvt_s32_f32(v45);
        }

        else
        {
          v44 = 0;
          v45 = 0;
        }

        if ([*a4 count])
        {
          v27 = 0;
          v28 = 0;
          v29 = 1;
          do
          {
            v30 = *(v8 + 16 * v27);
            v31 = vcge_s32(v44, *v30.i8);
            if ((vpmin_u32(v31, v31).u32[0] & 0x80000000) != 0)
            {
              v32 = vcge_s32(*&vextq_s8(v30, v30, 8uLL), v44);
              v33 = vpmin_u32(v32, v32).u32[0];
              if ((v33 & 0x80000000) != 0 && v23)
              {
                v34 = [v12 matchedLS];

                if (!v34)
                {
                  v35 = +[NSMutableArray array];
                  [v12 setMatchedLS:v35];
                }

                v36 = [v12 matchedLS];
                v37 = [*a4 objectAtIndexedSubscript:v27];
                [v36 addObject:v37];

                v28 = 1;
              }

              else if ((v33 & 0x80000000) != 0)
              {
                v10 = a3;
                goto LABEL_38;
              }
            }

            v27 = v29;
          }

          while ([*a4 count] > v29++);
          v10 = a3;
          if (v28)
          {
            goto LABEL_38;
          }
        }

        [*v10 removeObjectAtIndex:v24];
        --v25;
LABEL_38:
        v24 = ++v25;
      }

      while ([*v10 count] > v25);
      goto LABEL_43;
    }
  }
}

- (float)getTemporalDetectionSearchRadiusForReferenceFrameIndex:(float)a3 minSearchRadius:(float)a4 slope:(float)a5
{
  result = a3 * a5;
  if (result <= a4)
  {
    return a4;
  }

  return result;
}

- (id)getBestROIInROIList:(id)a3 referenceROI:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    while (1)
    {
      if (v10 == 1)
      {
        v14 = [v5 objectAtIndexedSubscript:0];

        if (v14)
        {
          [v14 descriptor];
          v15 = *(&v39 + 8);
          if (v6)
          {
            goto LABEL_6;
          }

LABEL_11:
          v38 = 0;
          v16 = 0;
        }

        else
        {
          v39 = 0u;
          v15 = 0;
          if (!v6)
          {
            goto LABEL_11;
          }

LABEL_6:
          [v6 descriptor];
          v16 = v38;
        }

        v19 = vaddv_f32(vabd_f32(v15, v16));
        if (v14)
        {
          [v14 descriptor];
          v13 = v37;
          [v14 descriptor];
          v12 = v36;
        }

        else
        {
          v37 = 0.0;
          v36 = 0.0;
          v13 = 0.0;
          v12 = 0.0;
        }

        goto LABEL_30;
      }

      v14 = [v5 objectAtIndexedSubscript:v7];

      if (v14)
      {
        [v14 descriptor];
        v17 = *(&v35 + 8);
        if (v6)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v35 = 0u;
        v17 = 0;
        if (v6)
        {
LABEL_9:
          [v6 descriptor];
          v18 = *(&v34 + 8);
          goto LABEL_16;
        }
      }

      v34 = 0u;
      v18 = 0;
LABEL_16:
      v19 = vaddv_f32(vabd_f32(v17, v18));
      if (v19 <= (v11 + -1.0))
      {
        v9 = v14;

        if (!v14)
        {
          v9 = 0;
          v33 = 0u;
          v32 = 0.0;
          v13 = 0.0;
          v12 = 0.0;
          goto LABEL_30;
        }

        [v9 descriptor];
        v13 = *(&v33 + 3);
        [v9 descriptor];
        v12 = v32;
        goto LABEL_22;
      }

      if (vabds_f32(v19, v11) <= 1.0)
      {
        if (!v14)
        {
          v31 = 0u;
          if ((v13 + 0.03) <= 0.0)
          {

            v9 = 0;
            v14 = 0;
            v30 = 0u;
            v29 = 0.0;
            v13 = 0.0;
            v12 = 0.0;
            goto LABEL_30;
          }

          v28 = 0.0;
          if (vabds_f32(0.0, v13) <= 0.03)
          {
            v27 = 0.0;
            if (v12 <= 0.0)
            {

              v9 = 0;
              v14 = 0;
              v25 = 0u;
              v26 = 0.0;
              v12 = 0.0;
              v23 = 0u;
              v24 = 0u;
              goto LABEL_30;
            }
          }

          v9 = 0;
          v19 = v11;
          goto LABEL_19;
        }

        [v14 descriptor];
        LODWORD(v20) = HIDWORD(v31);
        if (*(&v31 + 3) >= (v13 + 0.03))
        {
          v9 = v14;

          [v9 descriptor];
          v13 = *(&v30 + 3);
          [v9 descriptor];
          v12 = v29;
          goto LABEL_22;
        }

        [v14 descriptor];
        if (vabds_f32(v28, v13) <= 0.03)
        {
          [v14 descriptor];
          if (v27 >= v12)
          {
            v9 = v14;

            [v9 descriptor];
            v12 = v26;
LABEL_22:
            v14 = v9;
            goto LABEL_30;
          }
        }
      }

      v19 = v11;
      v9 = v14;
LABEL_19:
      v14 = v8;
LABEL_30:
      v7 = v10;
      v21 = [v5 count] > v10++;
      v8 = v14;
      v11 = v19;
      if (!v21)
      {
        goto LABEL_40;
      }
    }
  }

  v9 = 0;
  v14 = 0;
LABEL_40:

  return v14;
}

- (void)setSimParams:(_simParamsStruct *)a3 withMetaData:(id)a4
{
  *a3->var1 = 0u;
  *&a3->var2 = 0u;
  *a3->var0 = 0u;
  a3->var2 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  memset(&v14[8], 0, 304);
  v5 = [a4 objectForKeyedSubscript:{@"IspScalerInfo", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
  [v5 getBytes:v14 length:576];
  *&a3->var3 = vmovn_s64(vcvtq_s64_f64(*(&v14[8] + 8)));
  v6 = v24;
  v7 = v26;
  v8 = v26 * v21;
  a3->var1[0] = v24 * *(&v19 + 2);
  a3->var1[1] = v8;
  v9 = v25;
  v10 = v27;
  v11 = (v23 * v27) + (v7 * v22);
  a3->var1[2] = (v25 * v23) + (v6 * v20);
  a3->var1[3] = v11;
  v12 = v7 * *&v16;
  a3->var0[0] = v6 * *&v15;
  a3->var0[1] = v12;
  v13 = (v10 * *&v17) + (v7 * *(&v16 + 1));
  a3->var0[2] = (v9 * *&v17) + (v6 * *(&v15 + 2));
  a3->var0[3] = v13;
}

- (CGPoint)calcOpticalCenterFromMetaData:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"OpticalCenter"];
  v16.x = 0.0;
  v16.y = 0.0;
  CGPointMakeWithDictionaryRepresentation(v4, &v16);
  x = v16.x;
  y = v16.y;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v7 = [v3 objectForKeyedSubscript:@"IspScalerInfo"];

  [v7 getBytes:v17 length:576];
  v8 = *&v18;
  v9 = *(&v18 + 1);
  v10 = x - v8;
  v11 = y - v9;
  v12 = (v28 + (v10 * v27));
  v13 = (v30 + (v11 * v29));

  v14 = v12;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)sortKPs:(id)a3 opticalCenter:
{
  v4 = v3;
  v6 = a3;
  v7 = [v6 count];
  if (v7 > self->_locationListLen || (v8 = v7, v7 > self->_dist2OpticalCenterListLen) || v7 > self->_kpIsFromHWListLen)
  {
    sub_1FF04(v6);
  }

  else if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:{v9, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40}];
      v11 = v10;
      if (v10)
      {
        [v10 descriptor];
        v12 = v31;
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
        v12 = 0;
        v31 = 0u;
        v32 = 0u;
      }

      *(*self->_locationList + 8 * v9) = v12;

      v13 = vsub_f32(v4, *(*self->_locationList + 8 * v9));
      self->_dist2OpticalCenterList[v9] = sqrtf(vaddv_f32(vmul_f32(v13, v13)));
      v14 = [v6 objectAtIndexedSubscript:v9];
      self->_kpIsFromHWList[v9] = [v14 kpIsFromHW];

      ++v9;
    }

    while (v8 != v9);
    v19 = 0;
    kpIsFromHWList = self->_kpIsFromHWList;
    dist2OpticalCenterList = self->_dist2OpticalCenterList;
    do
    {
      v22 = (v19 + 1);
      v23 = v19;
      if (v19 + 1 < v8)
      {
        v24 = *self->_locationList;
        v25 = kpIsFromHWList[v19];
        *&v15 = dist2OpticalCenterList[v19];
        v16 = *(v24 + 8 * v19);
        v23 = v19;
        v26 = v19 + 1;
        do
        {
          v17 = *(v24 + 8 * v26);
          v27 = kpIsFromHWList[v26];
          *&v18 = dist2OpticalCenterList[v26];
          if (!v25 && kpIsFromHWList[v26] || (!v25 || kpIsFromHWList[v26]) && (*&v18 < *&v15 || *&v18 <= *&v15 && ((v28 = vcgt_f32(*&v16, *&v17), (v28.i8[0] & 1) != 0) || (vceq_f32(*&v17, *&v16).u32[0] & 1) != 0 && (v28.i8[4] & 1) != 0)))
          {
            v25 = kpIsFromHWList[v26];
            *&v15 = dist2OpticalCenterList[v26];
            v16 = *(v24 + 8 * v26);
            v23 = v26;
          }

          ++v26;
        }

        while (v8 != v26);
      }

      if (v19 != v23)
      {
        [v6 exchangeObjectAtIndex:v19 withObjectAtIndex:{v23, v15, v16, v17, v18}];
        v29 = *self->_locationList;
        v15 = *(v29 + 8 * v19);
        v16 = *(v29 + 8 * v23);
        *(v29 + 8 * v19) = v16;
        *(*self->_locationList + 8 * v23) = v15;
        kpIsFromHWList = self->_kpIsFromHWList;
        v30 = kpIsFromHWList[v19];
        kpIsFromHWList[v19] = kpIsFromHWList[v23];
        kpIsFromHWList[v23] = v30;
        dist2OpticalCenterList = self->_dist2OpticalCenterList;
        *&v15 = dist2OpticalCenterList[v19];
        *&v16 = dist2OpticalCenterList[v23];
        dist2OpticalCenterList[v19] = *&v16;
        dist2OpticalCenterList[v23] = *&v15;
      }

      ++v19;
    }

    while (v22 != v8);
  }
}

- (void)removeDuplicateRois:(id)a3
{
  v50 = a3;
  v4 = [v50 count];
  if (v4 > self->_reflectedLSListLen || (v5 = v4, v4 > self->_bboxListLen))
  {
    sub_1FF94(v50);
  }

  else
  {
    v49 = +[NSMutableArray array];
    v6 = v50;
    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        v8 = [v6 objectAtIndexedSubscript:{i, v49}];
        [v8 bbox];
        *(*self->_bboxList + 16 * i) = v9;

        v10 = [v50 objectAtIndexedSubscript:i];
        self->_reflectedLSList[i] = [v10 isReflectedLS];

        v6 = v50;
      }

      v11 = 0;
      v12 = 0;
      v13 = 2;
      while (1)
      {
        v14 = v11;
        v15 = self->_reflectedLSList[v11];
        v11 = v12 + 1;
        if (!v15 && v5 > v11)
        {
          break;
        }

LABEL_53:
        ++v13;
        ++v12;
        if (v5 <= v11)
        {
          goto LABEL_54;
        }
      }

      v16 = *self->_bboxList;
      v17 = COERCE_FLOAT(HIDWORD(*(v16 + 16 * v14)));
      v18 = COERCE_FLOAT(*(v16 + 16 * v14 + 8));
      v19 = COERCE_FLOAT(HIDWORD(*(v16 + 16 * v14)));
      v20 = COERCE_FLOAT(*(v16 + 16 * v14));
      v21 = v13;
      v22 = v12 + 1;
      while (1)
      {
        if (self->_reflectedLSList[v22])
        {
          goto LABEL_52;
        }

        v23 = *self->_bboxList;
        v24 = COERCE_FLOAT(*(v23 + 16 * v22));
        v25 = COERCE_FLOAT(HIDWORD(*(v23 + 16 * v22)));
        v26 = COERCE_FLOAT(*(v23 + 16 * v22 + 8));
        v27 = COERCE_FLOAT(HIDWORD(*(v23 + 16 * v22)));
        v52.origin.x = v20;
        v52.origin.y = v19;
        v52.size.width = v18;
        v52.size.height = v17;
        v56.origin.x = v24;
        v56.origin.y = v25;
        v56.size.width = v26;
        v56.size.height = v27;
        v28 = CGRectIntersectsRect(v52, v56);
        v6 = v50;
        if (!v28)
        {
          goto LABEL_52;
        }

        v53.origin.x = v20;
        v53.origin.y = v19;
        v53.size.width = v18;
        v53.size.height = v17;
        v57.origin.x = v24;
        v57.origin.y = v25;
        v57.size.width = v26;
        v57.size.height = v27;
        if (CGRectEqualToRect(v53, v57))
        {
          break;
        }

        v54.origin.x = v20;
        v54.origin.y = v19;
        v54.size.width = v18;
        v54.size.height = v17;
        v58.origin.x = v24;
        v58.origin.y = v25;
        v58.size.width = v26;
        v58.size.height = v27;
        if (CGRectContainsRect(v54, v58))
        {
          v29 = [v50 objectAtIndexedSubscript:v14];
          v31 = [v50 objectAtIndexedSubscript:v22];
          if (([v29 isTracked] & 1) != 0 || !objc_msgSend(v31, "isTracked"))
          {
            if ([v29 isTracked] && objc_msgSend(v31, "isTracked"))
            {
              v35 = [v29 trackID];
              v36 = [v31 trackID];
              if (v35 >= v36)
              {
                v37 = v36;
              }

              else
              {
                v37 = v35;
              }

              [v29 setTrackID:v37];
              v38 = [v29 trackedCnt];
              v39 = [v31 trackedCnt];
              if (v38 <= v39)
              {
                v40 = v39;
              }

              else
              {
                v40 = v38;
              }

              [v29 setTrackedCnt:v40];
            }
          }

          else
          {
            [v29 setIsTracked:1];
            [v29 setTrackedCnt:{objc_msgSend(v31, "trackedCnt")}];
            [v29 setTrackID:{objc_msgSend(v31, "trackID")}];
            v32 = [v31 temporalDetectionMatched];
            [v29 setTemporalDetectionMatched:v32];

            [v29 setIsPredictedFromPast:{objc_msgSend(v31, "isPredictedFromPast")}];
            [v29 setPredictedFromPastCnt:{objc_msgSend(v31, "predictedFromPastCnt")}];
            [v29 setIsTrajectoryPruningPassed:{objc_msgSend(v31, "isTrajectoryPruningPassed")}];
          }

          v30 = v31;
          goto LABEL_50;
        }

        v55.origin.x = v24;
        v55.origin.y = v25;
        v55.size.width = v26;
        v55.size.height = v27;
        v59.origin.x = v20;
        v59.origin.y = v19;
        v59.size.width = v18;
        v59.size.height = v17;
        v33 = CGRectContainsRect(v55, v59);
        v6 = v50;
        if (v33)
        {
          v31 = [v50 objectAtIndexedSubscript:v14];
          v30 = [v50 objectAtIndexedSubscript:v22];
          if (([v30 isTracked] & 1) != 0 || !objc_msgSend(v31, "isTracked"))
          {
            if ([v31 isTracked] && objc_msgSend(v30, "isTracked"))
            {
              v41 = [v31 trackID];
              v42 = [v30 trackID];
              if (v41 >= v42)
              {
                v43 = v42;
              }

              else
              {
                v43 = v41;
              }

              [v30 setTrackID:v43];
              v44 = [v31 trackedCnt];
              v45 = [v30 trackedCnt];
              if (v44 <= v45)
              {
                v46 = v45;
              }

              else
              {
                v46 = v44;
              }

              [v30 setTrackedCnt:v46];
            }
          }

          else
          {
            [v30 setIsTracked:1];
            [v30 setTrackedCnt:{objc_msgSend(v31, "trackedCnt")}];
            [v30 setTrackID:{objc_msgSend(v31, "trackID")}];
            v34 = [v31 temporalDetectionMatched];
            [v30 setTemporalDetectionMatched:v34];

            [v30 setIsPredictedFromPast:{objc_msgSend(v31, "isPredictedFromPast")}];
            [v30 setPredictedFromPastCnt:{objc_msgSend(v31, "predictedFromPastCnt")}];
            [v30 setIsTrajectoryPruningPassed:{objc_msgSend(v31, "isTrajectoryPruningPassed")}];
          }

          v29 = v31;
          goto LABEL_50;
        }

LABEL_52:
        v22 = v21;
        if (v5 <= v21++)
        {
          goto LABEL_53;
        }
      }

      v29 = [v50 objectAtIndexedSubscript:v14];
      v30 = [v50 objectAtIndexedSubscript:v22];
      if (v29 != v30)
      {
        if ([v29 isTracked] && !objc_msgSend(v30, "isTracked"))
        {
          v31 = v30;
          goto LABEL_50;
        }

        if ([v29 isTracked] & 1) == 0 && (objc_msgSend(v30, "isTracked"))
        {
          v31 = v29;
          goto LABEL_50;
        }

        v31 = v30;
        if (v21 - 1 > v12)
        {
LABEL_50:
          [v49 addObject:v31];
        }
      }

      v6 = v50;
      goto LABEL_52;
    }

LABEL_54:
    v48 = v49;
    [v6 removeObjectsInArray:{v49, v49}];
  }
}

- (void)updateNewRoiPixFea:(VDGDetectionUtilsV2 *)self withRefPixFea:(SEL)a2
{
  v4 = 0;
  v6 = v2[2];
  v5 = v2[3];
  v8 = *v2;
  v7 = v2[1];
  do
  {
    v19[0] = v8;
    v19[1] = v7;
    v19[2] = v6;
    v19[3] = v5;
    v9 = *(v19 + (v4 & 0x1F));
    v10 = *v3;
    v11 = v3[1];
    v12 = v3[3];
    v18[2] = v3[2];
    v18[3] = v12;
    v18[0] = v10;
    v18[1] = v11;
    v13 = ((*(v18 + (v4 & 0x1F)) * 0.9) + (v9 * 0.1));
    v14 = v8;
    v15 = v7;
    v16 = v6;
    v17 = v5;
    *(&v14 + (v4 & 0x1F)) = v13;
    v6 = v16;
    v5 = v17;
    v8 = v14;
    v7 = v15;
    v2[2] = v16;
    v2[3] = v5;
    *v2 = v8;
    v2[1] = v7;
    ++v4;
  }

  while (v4 != 32);
}

- (id)generateDetectionRoiList:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  if ([v3 count])
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      [v6 bbox];
      v8 = v7;
      [v6 bbox];
      v10 = v9;
      [v6 bbox];
      v12 = v11;
      [v6 bbox];
      v14 = [[DetectedROI alloc] initWithTrackingSessionId:0 roiId:0 andRoi:v8, v10, v12, v13];
      [v4 addObject:v14];

      ++v5;
    }

    while ([v3 count] > v5);
  }

  return v4;
}

- (void)getGGCandidatesFromROIList:(id)a3 GGList:(id *)a4
{
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        v11 = v8;
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v15 + 1) + 8 * i);

        if (v8)
        {
          [v8 descriptor];
          *&v12 = v13;
          if (v13 > 0.99)
          {
            [*a4 addObject:{v8, v12}];
          }
        }

        else
        {
          v13 = 0.0;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)generateBoxesForDoGAndLumaAndForLSROIs:(id)a3 prevGGROIs:(id)a4 inputTexture:(id)a5 opticalCenter:(id *)a6 metalBuffers:(int)a7 maxBufferLength:
{
  v10 = v7;
  v13 = a3;
  v14 = a4;
  v15 = +[NSMutableArray array];
  processedROIs = self->_processedROIs;
  self->_processedROIs = v15;

  v17 = +[NSMutableArray array];
  processedType = self->_processedType;
  self->_processedType = v17;

  LODWORD(a4) = [v13 count];
  if ([v14 count] + 2 * a4)
  {
    v46 = a6;
    v19 = [a6->var8 contents];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v47 = v13;
    v20 = v13;
    v21 = [v20 countByEnumeratingWithState:&v59 objects:v58 count:16];
    v48 = v14;
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = 0;
      v25 = *v60;
      do
      {
        v26 = 0;
        v27 = v24;
        do
        {
          if (*v60 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v59 + 1) + 8 * v26);

          [v24 bbox];
          if ([VDGDetectionUtilsV2 isBoxSizeValidForProcessing:"isBoxSizeValidForProcessing:AndErodeBy:" AndErodeBy:?])
          {
            v28 = v23 < a7;
          }

          else
          {
            v28 = 0;
          }

          if (v28)
          {
            [(NSMutableArray *)self->_processedROIs addObject:v24];
            [(NSMutableArray *)self->_processedType addObject:&off_41308];
            [v24 bbox];
            v50 = v29;
            [v24 bbox];
            v19[v23++] = vaddq_f32(__PAIR128__(v30, v50), xmmword_2DD30);
          }

          [v24 getReflectedBboxAroundCenter:v10];
          if ([VDGDetectionUtilsV2 isBoxSizeValidForProcessing:"isBoxSizeValidForProcessing:AndErodeBy:" AndErodeBy:?])
          {
            v31 = v23 < a7;
          }

          else
          {
            v31 = 0;
          }

          if (v31)
          {
            [(NSMutableArray *)self->_processedROIs addObject:v24];
            [(NSMutableArray *)self->_processedType addObject:&off_41320];
            [v24 getReflectedBboxAroundCenter:v10];
            v19[v23++] = v32;
          }

          v26 = v26 + 1;
          v27 = v24;
        }

        while (v22 != v26);
        v22 = [v20 countByEnumeratingWithState:&v59 objects:v58 count:16];
      }

      while (v22);

      v14 = v48;
    }

    else
    {
      v23 = 0;
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v33 = v14;
    v34 = [v33 countByEnumeratingWithState:&v54 objects:v53 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v37 = *v55;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          v39 = v36;
          if (*v55 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v36 = *(*(&v54 + 1) + 8 * i);

          [(VDGDetectionUtilsV2 *)self getSearchLocation:v36];
          if (v40.f32[0] != INFINITY)
          {
            v51 = v40;
            [v36 bbox];
            v52 = vadd_f32(v51, vmul_f32(*&vextq_s8(v41, v41, 8uLL), 0xBF000000BF000000));
            [v36 bbox];
            *&v43 = vextq_s8(v42, v42, 8uLL).u64[0];
            v49 = *&v43;
            LODWORD(v43) = 5.0;
            if ([(VDGDetectionUtilsV2 *)self isBoxSizeValidForProcessing:*&v52 AndErodeBy:v43])
            {
              v44 = v23 < a7;
            }

            else
            {
              v44 = 0;
            }

            if (v44)
            {
              [(NSMutableArray *)self->_processedROIs addObject:v36];
              [(NSMutableArray *)self->_processedType addObject:&off_412F0];
              *v45.f32 = v52;
              v45.i64[1] = v49;
              v19[v23++] = vaddq_f32(v45, xmmword_2DD30);
            }
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v54 objects:v53 count:16];
      }

      while (v35);

      v14 = v48;
    }

    *[v46->var12 contents] = v23;
    v13 = v47;
  }
}

- (void)clearReferencedROIsForROIList:(id)a3
{
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 setTemporalDetectionMatched:0];
        [v8 setLSTrackingMatched:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }
}

- (void)getTopLSInListByDroppingBottoms:(id)a3 k:(signed __int16)a4 dist2ghostTol:(float)a5
{
  v6 = a4;
  v15 = a3;
  if ([v15 count] > v6)
  {
    v7 = v6;
    do
    {
      v8 = [v15 objectAtIndexedSubscript:0];
      if ([v15 count] < 2)
      {
        v11 = v15;
      }

      else
      {
        v9 = 1;
        v10 = 1;
        v11 = v15;
        do
        {
          v12 = [v11 objectAtIndexedSubscript:v9];
          if (sub_44A8(v8, v12, a5))
          {
            v13 = v12;

            v8 = v13;
          }

          v9 = ++v10;
          v14 = [v15 count] > v10;
          v11 = v15;
        }

        while (v14);
      }

      [v11 removeObject:v8];
    }

    while ([v15 count] > v7);
  }
}

- (void)getTopLSInListByKeepingTops:(id)a3 k:(signed __int16)a4 dist2ghostTol:(float)a5
{
  v6 = a4;
  v17 = a3;
  if ([v17 count] > v6)
  {
    v7 = v6;
    v8 = +[NSMutableArray array];
    v9 = v8;
    while ([v8 count] < v7)
    {
      v10 = [v17 objectAtIndexedSubscript:0];
      if ([v17 count] < 2)
      {
        v13 = v17;
      }

      else
      {
        v11 = 1;
        v12 = 1;
        v13 = v17;
        do
        {
          v14 = [v13 objectAtIndexedSubscript:v11];
          if ((sub_44A8(v10, v14, a5) & 1) == 0)
          {
            v15 = v14;

            v10 = v15;
          }

          v11 = ++v12;
          v16 = [v17 count] > v12;
          v13 = v17;
        }

        while (v16);
      }

      [v13 removeObject:v10];
      [v9 addObject:v10];

      v8 = v9;
    }

    [v17 removeAllObjects];
    [v17 addObjectsFromArray:v9];
  }
}

- (void)pruneLSBasedOnDist2Ghost:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [v10 dist2ghost];
        if (v11 > 128.0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v7);
  }

  [v5 removeObjectsInArray:v4];
}

- (void)getTopGhostsInList:(id)a3 k:(signed __int16)a4 opticalCenter:(int)a5 ghostCntGatingTh:
{
  v7 = v5;
  v8 = a4;
  v9 = a3;
  if ([v9 count] > v8)
  {
    if ([v9 count] > a5)
    {
      [v9 removeAllObjects];
    }

    v10 = v8;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          [v16 bbox];
          v29 = v17;
          [v16 bbox];
          *v18.i8 = vsub_f32(vmla_f32(v29, 0x3F0000003F000000, *&vextq_s8(v18, v18, 8uLL)), v7);
          *v18.i8 = vmul_f32(*v18.i8, *v18.i8);
          *v18.i32 = sqrtf(vaddv_f32(*v18.i8));
          [v16 setDist2opticalCenter:*v18.i64];
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v30 count:16];
      }

      while (v13);
    }

    while (1)
    {
      if ([v11 count] <= v10)
      {
        goto LABEL_26;
      }

      v19 = [v11 objectAtIndexedSubscript:0];
      if ([v11 count] >= 2)
      {
        break;
      }

LABEL_25:
      [v11 removeObject:v19];
    }

    v20 = 1;
    v21 = 1;
    while (1)
    {
      v22 = [v11 objectAtIndexedSubscript:v20];
      v19 = v19;
      v23 = v22;
      if (([v23 isTracked] & 1) == 0)
      {
        if ([v19 isTracked])
        {
          break;
        }
      }

      if ([v23 isTracked] && (objc_msgSend(v19, "isTracked") & 1) == 0)
      {

        v28 = v19;
        goto LABEL_23;
      }

      [v23 dist2opticalCenter];
      v25 = v24;
      [v19 dist2opticalCenter];
      v27 = v26;

      if (v25 > v27)
      {
        goto LABEL_21;
      }

LABEL_24:

      v20 = ++v21;
      if ([v11 count] <= v21)
      {
        goto LABEL_25;
      }
    }

LABEL_21:
    v28 = v23;
LABEL_23:

    v19 = v28;
    goto LABEL_24;
  }

LABEL_26:
}

- ($BEDB99FD0828BB334BE1A07B64442EB9)configuration
{
  v3 = *&self[2].var0.var7;
  *&retstr->var0.var0 = *&self[2].var0.var0;
  *&retstr->var0.var7 = v3;
  v4 = *&self[2].var1.var4;
  *&retstr->var1.var0 = *&self[2].var1.var0;
  *&retstr->var1.var4 = v4;
  return self;
}

- (void)setConfiguration:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var7;
  v5 = *&a3->var1.var4;
  *&self->_configuration.externalCfg.lightMode = *&a3->var1.var0;
  *&self->_configuration.externalCfg.frameDelay = v5;
  *&self->_configuration.internalCfg.clipThreshold = v3;
  *&self->_configuration.internalCfg.enableColorMask = v4;
}

- (void)generateBoxesForDoGAndLumaAndForPrevLSROIs:(double)a3 homography:(double)a4 metalBuffers:(uint64_t)a5 maxBufferLength:(void *)a6
{
  v11 = a6;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 count];
    if (a7)
    {
      if (v13)
      {
        v14 = +[NSMutableArray array];
        v15 = a1[4];
        a1[4] = v14;

        v16 = +[NSMutableArray array];
        v17 = a1[5];
        a1[5] = v16;

        v34 = a7;
        v18 = [*(a7 + 72) contents];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v33 = v12;
        v19 = v12;
        v20 = [v19 countByEnumeratingWithState:&v41 objects:v40 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = 0;
          v23 = *v42;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v42 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v25 = *(*(&v41 + 1) + 8 * i);
              [a1 predictPrevLSLocation:v25 usingPrevToCurrentHomography:{a2, a3, a4, v33}];
              v27 = v26;
              [v25 bbox];
              v39 = vadd_f32(v27, vmul_f32(*&vextq_s8(v28, v28, 8uLL), 0xBF000000BF000000));
              [v25 bbox];
              *&v30 = vextq_s8(v29, v29, 8uLL).u64[0];
              v38 = *&v30;
              LODWORD(v30) = 5.0;
              if ([a1 isBoxSizeValidForProcessing:*&v39 AndErodeBy:v30])
              {
                v31 = v22 < a8;
              }

              else
              {
                v31 = 0;
              }

              if (v31)
              {
                [a1[4] addObject:v25];
                [a1[5] addObject:&off_412F0];
                *v32.f32 = v39;
                v32.i64[1] = v38;
                v18[v22++] = vaddq_f32(v32, xmmword_2DD30);
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v41 objects:v40 count:16];
          }

          while (v21);
        }

        else
        {
          v22 = 0;
        }

        *[*(v34 + 104) contents] = v22;
        v12 = v33;
      }
    }
  }
}

- (void)updateDoGAndLumaFeaturesWithMetalBuffers:(id *)a3
{
  v4 = a3;
  if (*[a3->var12 contents] >= 1)
  {
    v6 = [v4->var10 contents];
    v7 = [(NSMutableArray *)self->_processedROIs count];
    var20 = v4->var20;
    v9 = var20 >= v7 ? v7 : var20;
    if (v9 >= 1)
    {
      *&v10 = sub_4BAC();
      v28 = v10;
      v29 = v10;
      do
      {
        v11 = v3;
        v3 = [(NSMutableArray *)self->_processedROIs objectAtIndexedSubscript:v4, v28, v29];

        memcpy(__dst, &v6[17 * v4], 0x88uLL);
        v12 = 0;
        do
        {
          v13 = __dst[v12];
          sub_4B98();
          v30[v15] = v14;
          sub_4B84();
        }

        while (!v18);
        v28 = v17;
        v29 = v16;
        v19 = v6[17 * v4 + 16];
        v20 = [(NSMutableArray *)self->_processedType objectAtIndexedSubscript:v4];
        v21 = [v20 intValue];

        if (v21)
        {
          v22 = [(NSMutableArray *)self->_processedType objectAtIndexedSubscript:v4];
          v23 = [v22 intValue];

          if (v23 == 1)
          {
            [sub_4B14() setLumaFeatureVectorReflection:?];
            v24 = sub_4B78();
            [v25 setDifferenceOfGaussianAndLumaFeatureReflection:v24];
          }

          else
          {
            [sub_4B14() setLumaFeatureVectorPredictedLocation:?];
            v26 = sub_4B78();
            [v27 setDifferenceOfGaussianAndLumaFeaturePredictedLocation:v26];
          }
        }

        else
        {
          [sub_4B14() setLumaFeatureVector:?];
          bzero(__src, 0xA0uLL);
          if (v3)
          {
            [v3 descriptor];
          }

          sub_4B48();
          memcpy(v31, __src, sizeof(v31));
          [v3 setDescriptor:v31];
        }

        v4 = (v4 + 1);
      }

      while (v4 != v9);
    }
  }
}

- (BOOL)updatePrevLSDoGAndLumaFeaturesWithMetalBuffers:(id *)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  if (*[a3->var13 contents] < 1)
  {
    return 0;
  }

  v6 = [v4->var11 contents];
  var21 = [(NSMutableArray *)self->_processedPrevLSROIs count];
  if (v4->var20 < var21)
  {
    var21 = v4->var21;
  }

  if (var21 >= 1)
  {
    *&v8 = sub_4BAC();
    v29 = v8;
    v30 = v8;
    v10 = v9;
    do
    {
      v11 = v3;
      v3 = [(NSMutableArray *)self->_processedPrevLSROIs objectAtIndexedSubscript:v4, v29, v30];

      memcpy(__dst, &v6[17 * v4], 0x88uLL);
      v12 = 0;
      do
      {
        v13 = __dst[v12];
        sub_4B98();
        v31[v15] = v14;
        sub_4B84();
      }

      while (!v18);
      v29 = v17;
      v30 = v16;
      v19 = v6[17 * v4 + 16];
      v20 = [(NSMutableArray *)self->_processedPrevLSType objectAtIndexedSubscript:v4];
      v21 = [v20 intValue];

      if (v21)
      {
        v22 = [(NSMutableArray *)self->_processedPrevLSType objectAtIndexedSubscript:v4];
        v23 = [v22 intValue];

        if (v23 == 1)
        {
          [sub_4B14() setLumaFeatureVectorReflection:?];
          v24 = sub_4B78();
          [v25 setDifferenceOfGaussianAndLumaFeatureReflection:v24];
        }

        else
        {
          [sub_4B14() setLumaFeatureVectorPredictedLocation:?];
          v26 = sub_4B78();
          [v27 setDifferenceOfGaussianAndLumaFeaturePredictedLocation:v26];
        }
      }

      else
      {
        [sub_4B14() setLumaFeatureVector:?];
        bzero(__src, 0xA0uLL);
        if (v3)
        {
          [v3 descriptor];
        }

        sub_4B48();
        memcpy(v32, __src, sizeof(v32));
        [v3 setDescriptor:v32];
      }

      v4 = (v4 + 1);
    }

    while (v4 != v10);
  }

  return 1;
}

@end