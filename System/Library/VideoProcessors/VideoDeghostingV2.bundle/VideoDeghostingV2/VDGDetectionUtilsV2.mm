@interface VDGDetectionUtilsV2
- ($BEDB99FD0828BB334BE1A07B64442EB9)configuration;
- (BOOL)ghostIsHighConfidence:(id)confidence;
- (BOOL)updatePrevLSDoGAndLumaFeaturesWithMetalBuffers:(id *)buffers;
- (CGPoint)calcOpticalCenterFromMetaData:(id)data;
- (VDGDetectionUtilsV2)initWithMetalToolBox:(id)box configuration:(id *)configuration tuningParams:(id *)params;
- (double)getSearchLocation:(void *)location;
- (float)getTemporalDetectionSearchRadiusForReferenceFrameIndex:(float)index minSearchRadius:(float)radius slope:(float)slope;
- (float)getTrajectoryMatchingCostGG:(id)g;
- (float32x2_t)predictPrevLSLocation:(int32x4_t)location usingPrevToCurrentHomography:(uint64_t)homography;
- (id)generateDetectionRoiList:(id)list;
- (id)getBestROIInROIList:(id)list referenceROI:(id)i;
- (void)clearReferencedROIsForROIList:(id)list;
- (void)dealloc;
- (void)generateBoxesForDoGAndLumaAndForLSROIs:(id)is prevGGROIs:(id)oIs inputTexture:(id)texture opticalCenter:(id *)center metalBuffers:(int)buffers maxBufferLength:;
- (void)generateBoxesForDoGAndLumaAndForPrevLSROIs:(double)is homography:(double)homography metalBuffers:(uint64_t)buffers maxBufferLength:(void *)length;
- (void)generateTrajectoryForROI:(id)i isGG:(BOOL)g;
- (void)getGGCandidatesFromROIList:(id)list GGList:(id *)gList;
- (void)getHighRiskLS:(id)s;
- (void)getTopGhostsInList:(id)list k:(signed __int16)k opticalCenter:(int)center ghostCntGatingTh:;
- (void)getTopLSInListByDroppingBottoms:(id)bottoms k:(signed __int16)k dist2ghostTol:(float)tol;
- (void)getTopLSInListByKeepingTops:(id)tops k:(signed __int16)k dist2ghostTol:(float)tol;
- (void)pruneGGList:(id *)list LSBBoxList:(id *)boxList reflectedLSBBoxList:getMatchedLS:pruneLS:pruneGG:;
- (void)pruneLSBasedOnDist2Ghost:(id)ghost;
- (void)pruneUsingTrajectoryGGList:(id)list;
- (void)removeDuplicateRois:(id)rois;
- (void)removeRedundantLS:(id)s;
- (void)setConfiguration:(id *)configuration;
- (void)setDefaultOpticalCenterForList:(id)list opticalCenter:;
- (void)setSimParams:(_simParamsStruct *)params withMetaData:(id)data;
- (void)sortKPs:(id)ps opticalCenter:;
- (void)updateDoGAndLumaFeaturesWithMetalBuffers:(id *)buffers;
- (void)updateNewRoiPixFea:(VDGDetectionUtilsV2 *)self withRefPixFea:(SEL)fea;
@end

@implementation VDGDetectionUtilsV2

- (VDGDetectionUtilsV2)initWithMetalToolBox:(id)box configuration:(id *)configuration tuningParams:(id *)params
{
  boxCopy = box;
  v23.receiver = self;
  v23.super_class = VDGDetectionUtilsV2;
  v9 = [(VDGDetectionUtilsV2 *)&v23 init];
  if (!v9)
  {
    sub_1FE8C();
    goto LABEL_14;
  }

  if (boxCopy)
  {
    v10 = boxCopy;
  }

  else
  {
    v10 = objc_alloc_init(GGMMetalToolBox);
  }

  metalToolBox = v9->_metalToolBox;
  v9->_metalToolBox = v10;

  v12 = *&configuration->var0.var0;
  v13 = *&configuration->var0.var7;
  v14 = *&configuration->var1.var4;
  *&v9->_configuration.externalCfg.lightMode = *&configuration->var1.var0;
  *&v9->_configuration.externalCfg.frameDelay = v14;
  *&v9->_configuration.internalCfg.clipThreshold = v12;
  *&v9->_configuration.internalCfg.enableColorMask = v13;
  v15 = params->var12 + params->var15;
  v9->_reflectedLSListLen = v15;
  v9->_reflectedLSList = malloc_type_malloc(v15, 0x100004077774924uLL);
  v16 = params->var12 + params->var15;
  v9->_bboxListLen = v16;
  *v9->_bboxList = malloc_type_malloc(16 * v16, 0x1000040451B5BE8uLL);
  var15 = params->var15;
  v9->_locationListLen = var15;
  *v9->_locationList = malloc_type_malloc(8 * var15, 0x100004000313F17uLL);
  v18 = params->var15;
  v9->_kpIsFromHWListLen = v18;
  v9->_kpIsFromHWList = malloc_type_malloc(v18, 0x100004077774924uLL);
  v19 = params->var15;
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

- (BOOL)ghostIsHighConfidence:(id)confidence
{
  confidenceCopy = confidence;
  if (([confidenceCopy isTrajectoryPruningPassed] & 1) != 0 || objc_msgSend(confidenceCopy, "trackedCnt") >= 1)
  {
    v4 = [confidenceCopy isReflectedLS] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)generateTrajectoryForROI:(id)i isGG:(BOOL)g
{
  iCopy = i;
  v6 = iCopy;
  if (g)
  {
    [iCopy temporalDetectionMatched];
  }

  else
  {
    [iCopy LSTrackingMatched];
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
    if (!g)
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

- (float)getTrajectoryMatchingCostGG:(id)g
{
  gCopy = g;
  matchedLS = [gCopy matchedLS];
  if (gCopy)
  {
    [gCopy descriptor];
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
  if ([matchedLS count])
  {
    v8 = vceq_f32(v6, vneg_f32(0x7F0000007FLL));
    if ((vpmin_u32(v8, v8).u32[0] & 0x80000000) == 0)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v9 = matchedLS;
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
            [gCopy setIsTrajectoryPruningPassed:1];
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

- (void)pruneUsingTrajectoryGGList:(id)list
{
  listCopy = list;
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = listCopy;
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

- (void)getHighRiskLS:(id)s
{
  sCopy = s;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [sCopy countByEnumeratingWithState:&v27 objects:v26 count:16];
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
          objc_enumerationMutation(sCopy);
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

      v5 = [sCopy countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v5);
  }
}

- (void)setDefaultOpticalCenterForList:(id)list opticalCenter:
{
  v4 = v3;
  listCopy = list;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [listCopy countByEnumeratingWithState:&v11 objects:v10 count:16];
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
          objc_enumerationMutation(listCopy);
        }

        [*(*(&v11 + 1) + 8 * v9) setDefaultOpticalCenter:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [listCopy countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (double)getSearchLocation:(void *)location
{
  locationCopy = location;
  [locationCopy bbox];
  v22 = v4;
  [locationCopy bbox];
  v21 = v5;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  matchedLS = [locationCopy matchedLS];
  v7 = [matchedLS countByEnumeratingWithState:&v27 objects:v26 count:16];
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
        objc_enumerationMutation(matchedLS);
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

    v8 = [matchedLS countByEnumeratingWithState:&v27 objects:v26 count:16];
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

- (void)removeRedundantLS:(id)s
{
  sCopy = s;
  v3 = +[NSMutableArray array];
  if ([sCopy count])
  {
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v6 = [sCopy objectAtIndexedSubscript:v4];
      [v6 bbox];
      v43 = v7;
      [v6 bbox];
      v42 = v8;
      [v6 bbox];
      rect1_8 = v9;
      [v6 bbox];
      v40 = v10;
      if ([sCopy count] > ++v4)
      {
        break;
      }

LABEL_27:

      ++v5;
      if ([sCopy count] <= v4)
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
      v12 = [sCopy objectAtIndexedSubscript:v11];
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

      if ([sCopy count] <= ++v11)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  [sCopy removeObjectsInArray:v3];
}

- (float32x2_t)predictPrevLSLocation:(int32x4_t)location usingPrevToCurrentHomography:(uint64_t)homography
{
  if (a6)
  {
    v13 = a2;
    locationCopy = location;
    selfCopy = self;
    v6 = a6;
    [v6 descriptor];
    [v6 descriptor];

    v7 = v16;
    self = selfCopy;
    a2 = v13;
    location = locationCopy;
    v8 = v15;
  }

  else
  {
    v8 = 0;
    v7 = 0.0;
  }

  v9 = vtrn2q_s32(self, a2);
  v9.i32[2] = location.i32[1];
  v10 = vaddq_f32(vzip1q_s32(vzip2q_s32(self, location), vdupq_laneq_s32(a2, 2)), vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(self, location), a2), v7), v9, v8, 1));
  return vdiv_f32(*v10.i8, vdup_laneq_s32(v10, 2));
}

- (void)pruneGGList:(id *)list LSBBoxList:(id *)boxList reflectedLSBBoxList:getMatchedLS:pruneLS:pruneGG:
{
  v8 = v4;
  listCopy4 = list;
  if (v6)
  {
    v40 = +[NSMutableArray array];
    if ([*boxList count])
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
        v14 = *listCopy4;
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

                  v14 = [*boxList objectAtIndexedSubscript:v11];
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
        listCopy4 = list;
      }

      while ([*boxList count] > v13);
    }

    else
    {
      v12 = 0;
    }

    v39 = *boxList;
    *boxList = v40;

LABEL_43:
    return;
  }

  if (v7)
  {
    v23 = v5;
    if ([*list count])
    {
      v24 = 0;
      v12 = 0;
      v25 = 0;
      do
      {
        v26 = v12;
        v12 = [*listCopy4 objectAtIndexedSubscript:v24];

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

        if ([*boxList count])
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
                matchedLS = [v12 matchedLS];

                if (!matchedLS)
                {
                  v35 = +[NSMutableArray array];
                  [v12 setMatchedLS:v35];
                }

                matchedLS2 = [v12 matchedLS];
                v37 = [*boxList objectAtIndexedSubscript:v27];
                [matchedLS2 addObject:v37];

                v28 = 1;
              }

              else if ((v33 & 0x80000000) != 0)
              {
                listCopy4 = list;
                goto LABEL_38;
              }
            }

            v27 = v29;
          }

          while ([*boxList count] > v29++);
          listCopy4 = list;
          if (v28)
          {
            goto LABEL_38;
          }
        }

        [*listCopy4 removeObjectAtIndex:v24];
        --v25;
LABEL_38:
        v24 = ++v25;
      }

      while ([*listCopy4 count] > v25);
      goto LABEL_43;
    }
  }
}

- (float)getTemporalDetectionSearchRadiusForReferenceFrameIndex:(float)index minSearchRadius:(float)radius slope:(float)slope
{
  result = index * slope;
  if (result <= radius)
  {
    return radius;
  }

  return result;
}

- (id)getBestROIInROIList:(id)list referenceROI:(id)i
{
  listCopy = list;
  iCopy = i;
  if ([listCopy count])
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
        v14 = [listCopy objectAtIndexedSubscript:0];

        if (v14)
        {
          [v14 descriptor];
          v15 = *(&v39 + 8);
          if (iCopy)
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
          if (!iCopy)
          {
            goto LABEL_11;
          }

LABEL_6:
          [iCopy descriptor];
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

      v14 = [listCopy objectAtIndexedSubscript:v7];

      if (v14)
      {
        [v14 descriptor];
        v17 = *(&v35 + 8);
        if (iCopy)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v35 = 0u;
        v17 = 0;
        if (iCopy)
        {
LABEL_9:
          [iCopy descriptor];
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
      v21 = [listCopy count] > v10++;
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

- (void)setSimParams:(_simParamsStruct *)params withMetaData:(id)data
{
  *params->var1 = 0u;
  *&params->var2 = 0u;
  *params->var0 = 0u;
  params->var2 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  memset(&v14[8], 0, 304);
  v5 = [data objectForKeyedSubscript:{@"IspScalerInfo", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
  [v5 getBytes:v14 length:576];
  *&params->var3 = vmovn_s64(vcvtq_s64_f64(*(&v14[8] + 8)));
  v6 = v24;
  v7 = v26;
  v8 = v26 * v21;
  params->var1[0] = v24 * *(&v19 + 2);
  params->var1[1] = v8;
  v9 = v25;
  v10 = v27;
  v11 = (v23 * v27) + (v7 * v22);
  params->var1[2] = (v25 * v23) + (v6 * v20);
  params->var1[3] = v11;
  v12 = v7 * *&v16;
  params->var0[0] = v6 * *&v15;
  params->var0[1] = v12;
  v13 = (v10 * *&v17) + (v7 * *(&v16 + 1));
  params->var0[2] = (v9 * *&v17) + (v6 * *(&v15 + 2));
  params->var0[3] = v13;
}

- (CGPoint)calcOpticalCenterFromMetaData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy objectForKeyedSubscript:@"OpticalCenter"];
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
  v7 = [dataCopy objectForKeyedSubscript:@"IspScalerInfo"];

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

- (void)sortKPs:(id)ps opticalCenter:
{
  v4 = v3;
  psCopy = ps;
  v7 = [psCopy count];
  if (v7 > self->_locationListLen || (v8 = v7, v7 > self->_dist2OpticalCenterListLen) || v7 > self->_kpIsFromHWListLen)
  {
    sub_1FF04(psCopy);
  }

  else if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = [psCopy objectAtIndexedSubscript:{v9, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40}];
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
      v14 = [psCopy objectAtIndexedSubscript:v9];
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
        [psCopy exchangeObjectAtIndex:v19 withObjectAtIndex:{v23, v15, v16, v17, v18}];
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

- (void)removeDuplicateRois:(id)rois
{
  roisCopy = rois;
  v4 = [roisCopy count];
  if (v4 > self->_reflectedLSListLen || (v5 = v4, v4 > self->_bboxListLen))
  {
    sub_1FF94(roisCopy);
  }

  else
  {
    v49 = +[NSMutableArray array];
    v6 = roisCopy;
    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        v8 = [v6 objectAtIndexedSubscript:{i, v49}];
        [v8 bbox];
        *(*self->_bboxList + 16 * i) = v9;

        v10 = [roisCopy objectAtIndexedSubscript:i];
        self->_reflectedLSList[i] = [v10 isReflectedLS];

        v6 = roisCopy;
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
        v6 = roisCopy;
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
          v29 = [roisCopy objectAtIndexedSubscript:v14];
          v31 = [roisCopy objectAtIndexedSubscript:v22];
          if (([v29 isTracked] & 1) != 0 || !objc_msgSend(v31, "isTracked"))
          {
            if ([v29 isTracked] && objc_msgSend(v31, "isTracked"))
            {
              trackID = [v29 trackID];
              trackID2 = [v31 trackID];
              if (trackID >= trackID2)
              {
                v37 = trackID2;
              }

              else
              {
                v37 = trackID;
              }

              [v29 setTrackID:v37];
              trackedCnt = [v29 trackedCnt];
              trackedCnt2 = [v31 trackedCnt];
              if (trackedCnt <= trackedCnt2)
              {
                v40 = trackedCnt2;
              }

              else
              {
                v40 = trackedCnt;
              }

              [v29 setTrackedCnt:v40];
            }
          }

          else
          {
            [v29 setIsTracked:1];
            [v29 setTrackedCnt:{objc_msgSend(v31, "trackedCnt")}];
            [v29 setTrackID:{objc_msgSend(v31, "trackID")}];
            temporalDetectionMatched = [v31 temporalDetectionMatched];
            [v29 setTemporalDetectionMatched:temporalDetectionMatched];

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
        v6 = roisCopy;
        if (v33)
        {
          v31 = [roisCopy objectAtIndexedSubscript:v14];
          v30 = [roisCopy objectAtIndexedSubscript:v22];
          if (([v30 isTracked] & 1) != 0 || !objc_msgSend(v31, "isTracked"))
          {
            if ([v31 isTracked] && objc_msgSend(v30, "isTracked"))
            {
              trackID3 = [v31 trackID];
              trackID4 = [v30 trackID];
              if (trackID3 >= trackID4)
              {
                v43 = trackID4;
              }

              else
              {
                v43 = trackID3;
              }

              [v30 setTrackID:v43];
              trackedCnt3 = [v31 trackedCnt];
              trackedCnt4 = [v30 trackedCnt];
              if (trackedCnt3 <= trackedCnt4)
              {
                v46 = trackedCnt4;
              }

              else
              {
                v46 = trackedCnt3;
              }

              [v30 setTrackedCnt:v46];
            }
          }

          else
          {
            [v30 setIsTracked:1];
            [v30 setTrackedCnt:{objc_msgSend(v31, "trackedCnt")}];
            [v30 setTrackID:{objc_msgSend(v31, "trackID")}];
            temporalDetectionMatched2 = [v31 temporalDetectionMatched];
            [v30 setTemporalDetectionMatched:temporalDetectionMatched2];

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

      v29 = [roisCopy objectAtIndexedSubscript:v14];
      v30 = [roisCopy objectAtIndexedSubscript:v22];
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

      v6 = roisCopy;
      goto LABEL_52;
    }

LABEL_54:
    v48 = v49;
    [v6 removeObjectsInArray:{v49, v49}];
  }
}

- (void)updateNewRoiPixFea:(VDGDetectionUtilsV2 *)self withRefPixFea:(SEL)fea
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

- (id)generateDetectionRoiList:(id)list
{
  listCopy = list;
  v4 = objc_alloc_init(NSMutableArray);
  if ([listCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [listCopy objectAtIndexedSubscript:v5];
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

    while ([listCopy count] > v5);
  }

  return v4;
}

- (void)getGGCandidatesFromROIList:(id)list GGList:(id *)gList
{
  listCopy = list;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [listCopy countByEnumeratingWithState:&v15 objects:v14 count:16];
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
          objc_enumerationMutation(listCopy);
        }

        v8 = *(*(&v15 + 1) + 8 * i);

        if (v8)
        {
          [v8 descriptor];
          *&v12 = v13;
          if (v13 > 0.99)
          {
            [*gList addObject:{v8, v12}];
          }
        }

        else
        {
          v13 = 0.0;
        }
      }

      v7 = [listCopy countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)generateBoxesForDoGAndLumaAndForLSROIs:(id)is prevGGROIs:(id)oIs inputTexture:(id)texture opticalCenter:(id *)center metalBuffers:(int)buffers maxBufferLength:
{
  v10 = v7;
  isCopy = is;
  oIsCopy = oIs;
  v15 = +[NSMutableArray array];
  processedROIs = self->_processedROIs;
  self->_processedROIs = v15;

  v17 = +[NSMutableArray array];
  processedType = self->_processedType;
  self->_processedType = v17;

  LODWORD(oIs) = [isCopy count];
  if ([oIsCopy count] + 2 * oIs)
  {
    centerCopy = center;
    contents = [center->var8 contents];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v47 = isCopy;
    v20 = isCopy;
    v21 = [v20 countByEnumeratingWithState:&v59 objects:v58 count:16];
    v48 = oIsCopy;
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
            v28 = v23 < buffers;
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
            contents[v23++] = vaddq_f32(__PAIR128__(v30, v50), xmmword_2DD30);
          }

          [v24 getReflectedBboxAroundCenter:v10];
          if ([VDGDetectionUtilsV2 isBoxSizeValidForProcessing:"isBoxSizeValidForProcessing:AndErodeBy:" AndErodeBy:?])
          {
            v31 = v23 < buffers;
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
            contents[v23++] = v32;
          }

          v26 = v26 + 1;
          v27 = v24;
        }

        while (v22 != v26);
        v22 = [v20 countByEnumeratingWithState:&v59 objects:v58 count:16];
      }

      while (v22);

      oIsCopy = v48;
    }

    else
    {
      v23 = 0;
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v33 = oIsCopy;
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
              v44 = v23 < buffers;
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
              contents[v23++] = vaddq_f32(v45, xmmword_2DD30);
            }
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v54 objects:v53 count:16];
      }

      while (v35);

      oIsCopy = v48;
    }

    *[centerCopy->var12 contents] = v23;
    isCopy = v47;
  }
}

- (void)clearReferencedROIsForROIList:(id)list
{
  listCopy = list;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [listCopy countByEnumeratingWithState:&v10 objects:v9 count:16];
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
          objc_enumerationMutation(listCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 setTemporalDetectionMatched:0];
        [v8 setLSTrackingMatched:0];
      }

      v5 = [listCopy countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }
}

- (void)getTopLSInListByDroppingBottoms:(id)bottoms k:(signed __int16)k dist2ghostTol:(float)tol
{
  kCopy = k;
  bottomsCopy = bottoms;
  if ([bottomsCopy count] > kCopy)
  {
    v7 = kCopy;
    do
    {
      v8 = [bottomsCopy objectAtIndexedSubscript:0];
      if ([bottomsCopy count] < 2)
      {
        v11 = bottomsCopy;
      }

      else
      {
        v9 = 1;
        v10 = 1;
        v11 = bottomsCopy;
        do
        {
          v12 = [v11 objectAtIndexedSubscript:v9];
          if (sub_44A8(v8, v12, tol))
          {
            v13 = v12;

            v8 = v13;
          }

          v9 = ++v10;
          v14 = [bottomsCopy count] > v10;
          v11 = bottomsCopy;
        }

        while (v14);
      }

      [v11 removeObject:v8];
    }

    while ([bottomsCopy count] > v7);
  }
}

- (void)getTopLSInListByKeepingTops:(id)tops k:(signed __int16)k dist2ghostTol:(float)tol
{
  kCopy = k;
  topsCopy = tops;
  if ([topsCopy count] > kCopy)
  {
    v7 = kCopy;
    v8 = +[NSMutableArray array];
    v9 = v8;
    while ([v8 count] < v7)
    {
      v10 = [topsCopy objectAtIndexedSubscript:0];
      if ([topsCopy count] < 2)
      {
        v13 = topsCopy;
      }

      else
      {
        v11 = 1;
        v12 = 1;
        v13 = topsCopy;
        do
        {
          v14 = [v13 objectAtIndexedSubscript:v11];
          if ((sub_44A8(v10, v14, tol) & 1) == 0)
          {
            v15 = v14;

            v10 = v15;
          }

          v11 = ++v12;
          v16 = [topsCopy count] > v12;
          v13 = topsCopy;
        }

        while (v16);
      }

      [v13 removeObject:v10];
      [v9 addObject:v10];

      v8 = v9;
    }

    [topsCopy removeAllObjects];
    [topsCopy addObjectsFromArray:v9];
  }
}

- (void)pruneLSBasedOnDist2Ghost:(id)ghost
{
  ghostCopy = ghost;
  v4 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = ghostCopy;
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

- (void)getTopGhostsInList:(id)list k:(signed __int16)k opticalCenter:(int)center ghostCntGatingTh:
{
  v7 = v5;
  kCopy = k;
  listCopy = list;
  if ([listCopy count] > kCopy)
  {
    if ([listCopy count] > center)
    {
      [listCopy removeAllObjects];
    }

    v10 = kCopy;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = listCopy;
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

- (void)setConfiguration:(id *)configuration
{
  v3 = *&configuration->var0.var0;
  v4 = *&configuration->var0.var7;
  v5 = *&configuration->var1.var4;
  *&self->_configuration.externalCfg.lightMode = *&configuration->var1.var0;
  *&self->_configuration.externalCfg.frameDelay = v5;
  *&self->_configuration.internalCfg.clipThreshold = v3;
  *&self->_configuration.internalCfg.enableColorMask = v4;
}

- (void)generateBoxesForDoGAndLumaAndForPrevLSROIs:(double)is homography:(double)homography metalBuffers:(uint64_t)buffers maxBufferLength:(void *)length
{
  lengthCopy = length;
  v12 = lengthCopy;
  if (lengthCopy)
  {
    v13 = [lengthCopy count];
    if (a7)
    {
      if (v13)
      {
        v14 = +[NSMutableArray array];
        v15 = self[4];
        self[4] = v14;

        v16 = +[NSMutableArray array];
        v17 = self[5];
        self[5] = v16;

        v34 = a7;
        contents = [*(a7 + 72) contents];
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
              [self predictPrevLSLocation:v25 usingPrevToCurrentHomography:{a2, is, homography, v33}];
              v27 = v26;
              [v25 bbox];
              v39 = vadd_f32(v27, vmul_f32(*&vextq_s8(v28, v28, 8uLL), 0xBF000000BF000000));
              [v25 bbox];
              *&v30 = vextq_s8(v29, v29, 8uLL).u64[0];
              v38 = *&v30;
              LODWORD(v30) = 5.0;
              if ([self isBoxSizeValidForProcessing:*&v39 AndErodeBy:v30])
              {
                v31 = v22 < a8;
              }

              else
              {
                v31 = 0;
              }

              if (v31)
              {
                [self[4] addObject:v25];
                [self[5] addObject:&off_412F0];
                *v32.f32 = v39;
                v32.i64[1] = v38;
                contents[v22++] = vaddq_f32(v32, xmmword_2DD30);
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

- (void)updateDoGAndLumaFeaturesWithMetalBuffers:(id *)buffers
{
  buffersCopy = buffers;
  if (*[buffers->var12 contents] >= 1)
  {
    contents = [buffersCopy->var10 contents];
    v7 = [(NSMutableArray *)self->_processedROIs count];
    var20 = buffersCopy->var20;
    v9 = var20 >= v7 ? v7 : var20;
    if (v9 >= 1)
    {
      *&v10 = sub_4BAC();
      v28 = v10;
      v29 = v10;
      do
      {
        v11 = v3;
        v3 = [(NSMutableArray *)self->_processedROIs objectAtIndexedSubscript:buffersCopy, v28, v29];

        memcpy(__dst, &contents[17 * buffersCopy], 0x88uLL);
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
        v19 = contents[17 * buffersCopy + 16];
        v20 = [(NSMutableArray *)self->_processedType objectAtIndexedSubscript:buffersCopy];
        intValue = [v20 intValue];

        if (intValue)
        {
          v22 = [(NSMutableArray *)self->_processedType objectAtIndexedSubscript:buffersCopy];
          intValue2 = [v22 intValue];

          if (intValue2 == 1)
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

        buffersCopy = (buffersCopy + 1);
      }

      while (buffersCopy != v9);
    }
  }
}

- (BOOL)updatePrevLSDoGAndLumaFeaturesWithMetalBuffers:(id *)buffers
{
  if (!buffers)
  {
    return 0;
  }

  buffersCopy = buffers;
  if (*[buffers->var13 contents] < 1)
  {
    return 0;
  }

  contents = [buffersCopy->var11 contents];
  var21 = [(NSMutableArray *)self->_processedPrevLSROIs count];
  if (buffersCopy->var20 < var21)
  {
    var21 = buffersCopy->var21;
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
      v3 = [(NSMutableArray *)self->_processedPrevLSROIs objectAtIndexedSubscript:buffersCopy, v29, v30];

      memcpy(__dst, &contents[17 * buffersCopy], 0x88uLL);
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
      v19 = contents[17 * buffersCopy + 16];
      v20 = [(NSMutableArray *)self->_processedPrevLSType objectAtIndexedSubscript:buffersCopy];
      intValue = [v20 intValue];

      if (intValue)
      {
        v22 = [(NSMutableArray *)self->_processedPrevLSType objectAtIndexedSubscript:buffersCopy];
        intValue2 = [v22 intValue];

        if (intValue2 == 1)
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

      buffersCopy = (buffersCopy + 1);
    }

    while (buffersCopy != v10);
  }

  return 1;
}

@end