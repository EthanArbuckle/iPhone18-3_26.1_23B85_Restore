@interface CRImageReaderTrackingSession
+ (unint64_t)regionTypeForTrackingLevel:(unint64_t)a3;
- (CRImageReaderTrackingSession)initWithTrackingLevel:(unint64_t)a3 ocrFrameInterval:(unint64_t)a4;
- (double)accumulatedSceneHomography;
- (double)sceneHomography;
- (float)applyOpticalFlowTrackingForFrame:(uint64_t)a1;
- (id).cxx_construct;
- (uint64_t)dispatchIfReady:(uint64_t)a1;
- (uint64_t)setLastFrameTime:(uint64_t)result;
- (uint64_t)shouldRunOCROnCurrentFrame;
- (unint64_t)trackedRegionType;
- (void)prepareSessionForOCRDispatch;
- (void)saveQuadsAfterAssociation;
- (void)setAccumulatedSceneHomography:(__n128)a3;
- (void)setSceneHomography:(__n128)a3;
- (void)updateOCRUpdateModeWithStability:(id)a3 frameDuration:(double)a4;
@end

@implementation CRImageReaderTrackingSession

- (CRImageReaderTrackingSession)initWithTrackingLevel:(unint64_t)a3 ocrFrameInterval:(unint64_t)a4
{
  v22.receiver = self;
  v22.super_class = CRImageReaderTrackingSession;
  v6 = [(CRImageReaderTrackingSession *)&v22 init];
  v7 = v6;
  if (a3 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3;
  }

  v6->_shouldIncludeLinesInTrackingResult = 0;
  v9 = [[CRImageReaderTrackingResult alloc] initWithTrackingLevel:v8];
  latestResult = v7->_latestResult;
  v7->_latestResult = v9;

  v11 = objc_alloc_init(MEMORY[0x1E69DF9A8]);
  v12 = a3 == 0;
  optFlowSession = v7->_optFlowSession;
  v7->_optFlowSession = v11;

  v14 = MEMORY[0x1E69E9B10];
  *&v7->_ocrInProgress = 256;
  v15 = *v14;
  v16 = v14[1];
  *v7->_anon_d0 = *v14;
  *&v7->_anon_d0[16] = v16;
  v17 = v14[2];
  *&v7->_anon_d0[32] = v17;
  *&v7[1].super.isa = v15;
  *&v7[1]._wasLastFrameUnstableForFirstAcquisition = v16;
  *&v7[1]._trackingLevel = v17;
  v7->_downscaleRate = 4.0;
  v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v19 = dispatch_queue_create("com.apple.CoreRecognition.trackingOCRQueue", v18);
  ocrQueue = v7->_ocrQueue;
  v7->_ocrQueue = v19;

  v7->_ocrFrameInterval = a4;
  v7->_replacedQuadArea = 0.0;
  *&v7->_frameCount = 0u;
  v7->_ocrUpdateMode = 1;
  v7->_lowFrequencyOCRElapsedTimeAboveMinimumStability = 0.0;
  *&v7->_didDispatchOCROnFrame = 0;
  *&v7->_lastOCRDispatchTime = 0u;
  v7->_trackingLevel = v8;
  v7->_usesGroupedRegions = v12;

  return v7;
}

- (uint64_t)dispatchIfReady:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 64))
    {
      v6 = v3;
      if (!(*(a1 + 48) % *(a1 + 64)) && (*(a1 + 11) & 1) != 0)
      {
        Property = objc_getProperty(a1, v5, 40, 1);
        dispatch_barrier_sync(Property, &__block_literal_global_131);
      }

      if ((*(a1 + 11) & 1) != 0 || *(a1 + 48) % *(a1 + 64))
      {
        v8 = 0;
      }

      else
      {
        v14 = objc_initWeak(&location, a1);
        v16 = objc_getProperty(a1, v15, 40, 1);
        block = MEMORY[0x1E69E9820];
        v20 = 3221225472;
        v21 = __60__CRImageReaderTrackingSession__dispatchAtOCRFrameInterval___block_invoke_2;
        v22 = &unk_1E7BC27F8;
        v17 = v16;
        objc_copyWeak(&v24, &location);
        v23 = v6;
        dispatch_async(v17, &block);

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
        v8 = 1;
      }
    }

    else
    {
      v6 = v3;
      v9 = *(a1 + 11);
      if ((v9 & 1) == 0)
      {
        v10 = objc_initWeak(&location, a1);
        v12 = objc_getProperty(a1, v11, 40, 1);
        block = MEMORY[0x1E69E9820];
        v20 = 3221225472;
        v21 = __49__CRImageReaderTrackingSession__dispatchIfReady___block_invoke;
        v22 = &unk_1E7BC27F8;
        v13 = v12;
        objc_copyWeak(&v24, &location);
        v23 = v6;
        dispatch_async(v13, &block);

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }

      v8 = v9 ^ 1u;
    }

    ++*(a1 + 48);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (unint64_t)regionTypeForTrackingLevel:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1B42AF2D8[a3];
  }
}

- (unint64_t)trackedRegionType
{
  if (result)
  {
    return [CRImageReaderTrackingSession regionTypeForTrackingLevel:*(result + 32)];
  }

  return result;
}

- (float)applyOpticalFlowTrackingForFrame:(uint64_t)a1
{
  v168 = *MEMORY[0x1E69E9840];
  v125 = a2;
  if (!a1)
  {
    v29 = 0.0;
    goto LABEL_132;
  }

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v3 = CRSignpostLog_signPostOSLog;
  v4 = os_signpost_id_generate(v3);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v5 = CRSignpostLog_signPostOSLog;
  v6 = v5;
  v113 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "OCRTrackingApplyOpticalFlowE2E", "", buf, 2u);
  }

  v114 = v4;

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v7 = CRSignpostLog_signPostOSLog;
  v8 = os_signpost_id_generate(v7);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v9 = CRSignpostLog_signPostOSLog;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "OCRTrackingInputPrep", "", buf, 2u);
  }

  ++*(a1 + 56);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = *(a1 + 72);
  *(a1 + 72) = CFAbsoluteTimeGetCurrent();
  v13 = [v125 width];
  v14 = *(a1 + 20);
  v15 = [v125 height];
  v16 = v13 / v14;
  v17 = v15 / *(a1 + 20);
  if (v16)
  {
    v18 = v16 + 1.0;
  }

  else
  {
    v18 = v16;
  }

  if (v17)
  {
    v19 = v17 + 1.0;
  }

  else
  {
    v19 = v17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a1 + 12))
    {
      v20 = 1278226488;
    }

    else
    {
      v20 = 1111970369;
    }

    v21 = [v125 pixelBufferWithScale:buf paddedToSize:1 adjustedToSize:v20 paddingMode:1 format:1 hardwareAcceleration:1.0 / *(a1 + 20) iosurfaceBacking:{v18, v19}];
LABEL_32:
    if (v21)
    {
      v25 = MEMORY[0x1E695DF70];
      v26 = *(a1 + 24);
      location = (a1 + 24);
      if (*(a1 + 8) == 1)
      {
        [v26 regionTrackingGroups];
      }

      else
      {
        [v26 trackedRegions];
      }
      v27 = ;
      texture = v21;
      v28 = [v25 arrayWithCapacity:{objc_msgSend(v27, "count")}];

      v131 = objc_opt_new();
      v132 = objc_opt_new();
      if (*(a1 + 8) == 1)
      {
        v148 = 0uLL;
        v149 = 0uLL;
        v146 = 0uLL;
        v147 = 0uLL;
        v31 = [*location regionTrackingGroups];
        v32 = [v31 countByEnumeratingWithState:&v146 objects:v161 count:16];
        if (v32)
        {
          v33 = *v147;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v147 != v33)
              {
                objc_enumerationMutation(v31);
              }

              v35 = *(*(&v146 + 1) + 8 * i);
              v36 = [v35 vcQuad];
              *&v37 = 1.0 / *(a1 + 20);
              v38 = [v36 quadAfterScaling:v37];

              [v28 addObject:v38];
              [v132 setObject:v35 forKeyedSubscript:v38];
            }

            v32 = [v31 countByEnumeratingWithState:&v146 objects:v161 count:16];
          }

          while (v32);
        }
      }

      else
      {
        v144 = 0uLL;
        v145 = 0uLL;
        v142 = 0uLL;
        v143 = 0uLL;
        v31 = [*location trackedRegions];
        v39 = [v31 countByEnumeratingWithState:&v142 objects:v160 count:16];
        if (v39)
        {
          v40 = *v143;
          do
          {
            for (j = 0; j != v39; ++j)
            {
              if (*v143 != v40)
              {
                objc_enumerationMutation(v31);
              }

              v42 = *(*(&v142 + 1) + 8 * j);
              v43 = [v42 vcImageSpaceQuad];
              *&v44 = 1.0 / *(a1 + 20);
              v45 = [v43 quadAfterScaling:v44];

              [v28 addObject:v45];
              [v131 setObject:v42 forKeyedSubscript:v45];
            }

            v39 = [v31 countByEnumeratingWithState:&v142 objects:v160 count:16];
          }

          while (v39);
        }
      }

      v115 = [v28 copy];
      if (CRSignpostLog_onceToken != -1)
      {
        dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
      }

      v46 = CRSignpostLog_signPostOSLog;
      v47 = v46;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v47, OS_SIGNPOST_INTERVAL_END, v8, "OCRTrackingInputPrep", "", buf, 2u);
      }

      if (CRSignpostLog_onceToken != -1)
      {
        dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
      }

      v48 = CRSignpostLog_signPostOSLog;
      v49 = os_signpost_id_generate(v48);

      if (CRSignpostLog_onceToken != -1)
      {
        dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
      }

      v50 = CRSignpostLog_signPostOSLog;
      v51 = v50;
      if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v49, "OCRTrackingComputeHomographies", "", buf, 2u);
      }

      if (*(a1 + 10) == 1)
      {
        v158 = *MEMORY[0x1E69DF9D0];
        v159 = MEMORY[0x1E695E118];
        v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
      }

      else
      {
        v116 = MEMORY[0x1E695E0F8];
      }

      v52 = objc_autoreleasePoolPush();
      v53 = *(a1 + 96);
      v141 = 0;
      v54 = [MEMORY[0x1E69DF9A0] computeHomographiesForQuadrilaterals:v115 inFrame:texture session:v53 options:v116 error:&v141];
      v117 = v141;
      objc_autoreleasePoolPop(v52);
      if (texture != [v125 pixelBuffer])
      {
        CVPixelBufferRelease(texture);
      }

      v119 = v54;
      if (*(a1 + 10) == 1)
      {
        v55 = [*(a1 + 96) debuggingResult];
        v56 = *(a1 + 104);
        *(a1 + 104) = v55;

        v57 = [*(a1 + 96) debuggingMemoryResult];
        v58 = *(a1 + 112);
        *(a1 + 112) = v57;
      }

      if (CRSignpostLog_onceToken != -1)
      {
        dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
      }

      v59 = CRSignpostLog_signPostOSLog;
      v60 = v59;
      if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v60, OS_SIGNPOST_INTERVAL_END, v49, "OCRTrackingComputeHomographies", "", buf, 2u);
      }

      if (CRSignpostLog_onceToken != -1)
      {
        dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
      }

      v61 = CRSignpostLog_signPostOSLog;
      spid = os_signpost_id_generate(v61);

      if (CRSignpostLog_onceToken != -1)
      {
        dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
      }

      v62 = CRSignpostLog_signPostOSLog;
      v63 = v62;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v63, OS_SIGNPOST_INTERVAL_BEGIN, spid, "OCRTrackingApplyHomographies", "", buf, 2u);
      }

      obj = [[CRImageReaderTrackingResult alloc] initWithTrackingLevel:*(a1 + 32)];
      [*(a1 + 96) sceneHomography];
      v66.i32[3] = v65.i32[0];
      if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_f32(v66), vceqzq_f32(vextq_s8(vextq_s8(v65, v65, 0xCuLL), v64, 8uLL)))))) & 1) != 0 || *&v64.i32[2] != 0.0)
      {
        [*(a1 + 96) sceneHomography];
        *&v68 = v67;
        if (v67 != 0.0)
        {
          [*(a1 + 96) sceneHomography];
          v72 = 0;
          v73 = *(a1 + 224);
          v74 = *(a1 + 240);
          v162[0] = *(a1 + 208);
          v162[1] = v73;
          v162[2] = v74;
          do
          {
            *&buf[v72 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v69, COERCE_FLOAT(v162[v72])), v70, *&v162[v72], 1), v71, v162[v72], 2);
            ++v72;
          }

          while (v72 != 3);
          v75 = *buf;
          v76 = v166;
          v77 = v167;
          *(a1 + 216) = *&buf[8];
          *(a1 + 232) = DWORD2(v76);
          *(a1 + 208) = v75;
          *(a1 + 224) = v76;
          *(a1 + 248) = DWORD2(v77);
          *(a1 + 240) = v77;
          *&v75 = 1.0 / *(&v77 + 2);
          v78 = *(a1 + 240);
          v79 = vmulq_n_f32(*(a1 + 208), 1.0 / *(&v77 + 2));
          v80 = vmulq_n_f32(*(a1 + 224), 1.0 / *(&v77 + 2));
          *(a1 + 216) = v79.i32[2];
          *(a1 + 232) = v80.i32[2];
          *(a1 + 208) = v79.i64[0];
          *(a1 + 224) = v80.i64[0];
          v81 = vmulq_n_f32(v78, *&v75);
          *(a1 + 248) = v81.i32[2];
          *(a1 + 240) = v81.i64[0];
        }
      }

      v121 = objc_opt_new();
      v120 = objc_opt_new();
      v122 = objc_opt_new();
      v123 = objc_opt_new();
      v137 = 0;
      v138 = &v137;
      v139 = 0x2020000000;
      v140 = 0;
      if (*(a1 + 8) == 1)
      {
        v82 = v134;
        v134[0] = MEMORY[0x1E69E9820];
        v134[1] = 3221225472;
        v134[2] = __65__CRImageReaderTrackingSession_applyOpticalFlowTrackingForFrame___block_invoke;
        v134[3] = &unk_1E7BC2780;
        v83 = v132;
        v136 = &v137;
        v134[4] = v83;
        v134[5] = a1;
        v134[6] = v123;
        v134[7] = v120;
        v134[8] = v122;
        v135 = v121;
        [v54 enumerateKeysAndObjectsUsingBlock:v134];
      }

      else
      {
        v82 = v133;
        v133[0] = MEMORY[0x1E69E9820];
        v133[1] = 3221225472;
        v133[2] = __65__CRImageReaderTrackingSession_applyOpticalFlowTrackingForFrame___block_invoke_3;
        v133[3] = &unk_1E7BC27D0;
        v84 = v131;
        v133[9] = &v137;
        v133[4] = v84;
        v133[5] = a1;
        v133[6] = v123;
        v133[7] = v121;
        v133[8] = v122;
        [v54 enumerateKeysAndObjectsUsingBlock:v133];
      }

      [(CRImageReaderTrackingResult *)obj setTrackedRegions:v121];
      [(CRImageReaderTrackingResult *)obj setRemovedRegionIDs:v123];
      [(CRImageReaderTrackingResult *)obj setUpdatedRegionIDs:v122];
      [(CRImageReaderTrackingResult *)obj setRegionTrackingGroups:v120];
      v85 = *(a1 + 56);
      *&v86 = v85;
      if (v85 >= 8)
      {
        *&v86 = 7.5;
      }

      [(CRImageReaderTrackingResult *)obj markTracksNotConformingSameHomographyUsingGroupsAtOCRDispatch:0 ransacReprojError:v86 markedQuadArea:*(a1 + 80)];
      v87 = [v125 sceneStabilityMetric];
      [a1 updateOCRUpdateModeWithStability:v87 frameDuration:Current - v12];

      if (*(a1 + 8) == 1 && (*(a1 + 136) - 1) >= 2)
      {
        v111 = obj;
        v88 = [(CRImageReaderTrackingResult *)v111 regionTrackingGroups];
        v126 = [v88 mutableCopy];

        v89 = [(CRImageReaderTrackingResult *)v111 trackedRegions];
        v90 = [v89 mutableCopy];

        v91 = [(CRImageReaderTrackingResult *)v111 trackedRegions];
        v127 = [v91 mutableCopy];

        v92 = [(CRImageReaderTrackingResult *)v111 removedRegionIDs];
        v128 = [v92 mutableCopy];

        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v93 = [(CRImageReaderTrackingResult *)v111 regionTrackingGroups];
        texturea = v93;
        v94 = [(__CVBuffer *)v93 countByEnumeratingWithState:&v154 objects:buf count:16];
        if (v94)
        {
          v95 = *v155;
          do
          {
            for (k = 0; k != v94; ++k)
            {
              if (*v155 != v95)
              {
                objc_enumerationMutation(texturea);
              }

              v97 = *(*(&v154 + 1) + 8 * k);
              if ([v97 trackNeedsReplacement])
              {
                [v126 removeObject:v97];
                v98 = CROSLogForCategory(1);
                if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                {
                  v99 = *(a1 + 48);
                  *v163 = 134217984;
                  v164 = v99;
                  _os_log_impl(&dword_1B40D2000, v98, OS_LOG_TYPE_DEFAULT, "Replaced a group due to ransac (frame %ld)", v163, 0xCu);
                }

                v100 = [v97 trackingID];
                [v127 removeObject:v100];

                v101 = [v97 trackingID];
                [v128 addObject:v101];

                v152 = 0u;
                v153 = 0u;
                v150 = 0u;
                v151 = 0u;
                v102 = [v97 children];
                v103 = [v102 countByEnumeratingWithState:&v150 objects:v162 count:16];
                if (v103)
                {
                  v104 = *v151;
                  do
                  {
                    for (m = 0; m != v103; ++m)
                    {
                      if (*v151 != v104)
                      {
                        objc_enumerationMutation(v102);
                      }

                      [v90 removeObject:*(*(&v150 + 1) + 8 * m)];
                    }

                    v103 = [v102 countByEnumeratingWithState:&v150 objects:v162 count:16];
                  }

                  while (v103);
                }
              }
            }

            v93 = texturea;
            v94 = [(__CVBuffer *)texturea countByEnumeratingWithState:&v154 objects:buf count:16];
          }

          while (v94);
        }

        [(CRImageReaderTrackingResult *)v111 setTrackedRegions:v90];
        [(CRImageReaderTrackingResult *)v111 setRegionTrackingGroups:v126];
        [(CRImageReaderTrackingResult *)v111 setUpdatedRegionIDs:v127];
        [(CRImageReaderTrackingResult *)v111 setRemovedRegionIDs:v128];
      }

      objc_storeStrong(location, obj);
      if (CRSignpostLog_onceToken != -1)
      {
        dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
      }

      v106 = CRSignpostLog_signPostOSLog;
      v107 = v106;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v106))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v107, OS_SIGNPOST_INTERVAL_END, spid, "OCRTrackingApplyHomographies", "", buf, 2u);
      }

      if (CRSignpostLog_onceToken != -1)
      {
        dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
      }

      v108 = CRSignpostLog_signPostOSLog;
      v109 = v108;
      if (v113 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v108))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v109, OS_SIGNPOST_INTERVAL_END, v114, "OCRTrackingApplyOpticalFlowE2E", "", buf, 2u);
      }

      v29 = v138[6];
      _Block_object_dispose(&v137, 8);

      goto LABEL_131;
    }

    v28 = CROSLogForCategory(0);
    v29 = -1.0;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v30 = "Tracking pixelBuffer is nil!";
LABEL_130:
      _os_log_impl(&dword_1B40D2000, v28, OS_LOG_TYPE_FAULT, v30, buf, 2u);
      goto LABEL_131;
    }

    goto LABEL_131;
  }

  if (*(a1 + 12) != 1)
  {
    v24 = [v125 pixelBufferWithScale:1.0 / *(a1 + 20) paddedToSize:{v18, v19}];
    goto LABEL_31;
  }

  v22 = [v125 imageByConvertingToColorSpace:0];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 pixelBufferWithScale:1.0 / *(a1 + 20) paddedToSize:{v18, v19}];

LABEL_31:
    v21 = CRCreateIOSurfacePixelBufferFromPixelBuffer(v24);
    CVPixelBufferRelease(v24);
    goto LABEL_32;
  }

  v28 = CROSLogForCategory(0);
  v29 = -1.0;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    v30 = "Tracking yp8Image is nil!";
    goto LABEL_130;
  }

LABEL_131:

LABEL_132:
  return v29;
}

void __65__CRImageReaderTrackingSession_applyOpticalFlowTrackingForFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  [v6 reprojectionError];
  *(*(*(a1 + 80) + 8) + 24) = v8;
  if (v6)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v9 = [v7 boundingQuad];
    v10 = [v9 denormalizedQuad];

    [v6 warpTransform];
    v35 = v12;
    v36 = v11;
    v34 = v13;
    v14 = *(*(a1 + 40) + 20);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __65__CRImageReaderTrackingSession_applyOpticalFlowTrackingForFrame___block_invoke_2;
    v41[3] = &unk_1E7BC2758;
    v44 = &v45;
    v15 = v10;
    v42 = v15;
    v16 = v7;
    v43 = v16;
    LODWORD(v17) = v14;
    [v16 applyHomographyTransform:v41 downscaleRate:*&v36 shouldApply:{*&v35, *&v34, v17}];
    v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "groupID")}];
    [v16 setHomographyGroupID:v18];

    v19 = [v6 groupID];
    v20 = [v16 vcQuad];
    [v20 setHomographyGroupID:v19];

    if (*(v46 + 24) == 1)
    {
      [v15 area];
      *(*(a1 + 40) + 80) = v21 + *(*(a1 + 40) + 80);
      v22 = *(a1 + 48);
      v23 = [v16 trackingID];
      [v22 addObject:v23];
    }

    else
    {
      [*(a1 + 56) addObject:v16];
      v29 = *(a1 + 64);
      v30 = [v16 trackingID];
      [v29 addObject:v30];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v23 = [v16 children];
      v31 = [v23 countByEnumeratingWithState:&v37 objects:v49 count:16];
      if (v31)
      {
        v32 = *v38;
        do
        {
          v33 = 0;
          do
          {
            if (*v38 != v32)
            {
              objc_enumerationMutation(v23);
            }

            [*(a1 + 72) addObject:{*(*(&v37 + 1) + 8 * v33++), v34, v35, v36}];
          }

          while (v31 != v33);
          v31 = [v23 countByEnumeratingWithState:&v37 objects:v49 count:16];
        }

        while (v31);
      }
    }

    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v24 = [v7 boundingQuad];
    v25 = [v24 denormalizedQuad];
    [v25 area];
    *(*(a1 + 40) + 80) = v26 + *(*(a1 + 40) + 80);

    v27 = *(a1 + 48);
    v28 = [v7 trackingID];
    [v27 addObject:v28];
  }
}

uint64_t __65__CRImageReaderTrackingSession_applyOpticalFlowTrackingForFrame___block_invoke_2(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [CRTrackingFilter shouldFilterHomographyWithResultQuad:v7 originalQuad:*(a1 + 32) imageSize:a3, a4];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) originalBoundingQuad];
    v10 = [v9 denormalizedQuad];
    *(*(*(a1 + 48) + 8) + 24) = [CRTrackingFilter shouldEdgeIntersectionFilterQuad:v7 originalQuad:v10 imageSize:a3, a4];

    v8 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  }

  return v8 & 1;
}

void __65__CRImageReaderTrackingSession_applyOpticalFlowTrackingForFrame___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  [v6 reprojectionError];
  *(*(*(a1 + 72) + 8) + 24) = v8;
  if (v6)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v9 = [v7 boundingQuad];
    v10 = [v9 denormalizedQuad];

    [v6 warpTransform];
    v22 = v12;
    v23 = v11;
    v21 = v13;
    v14 = *(*(a1 + 40) + 20);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65__CRImageReaderTrackingSession_applyOpticalFlowTrackingForFrame___block_invoke_4;
    v24[3] = &unk_1E7BC27A8;
    v26 = &v27;
    v15 = v10;
    v25 = v15;
    LODWORD(v16) = v14;
    [v7 applyHomographyTransform:v24 downscaleRate:v23 shouldApply:{v22, v21, v16}];
    [v7 setSignificantTranscriptChange:0];
    if (*(v28 + 24) == 1)
    {
      v17 = *(a1 + 48);
    }

    else
    {
      [*(a1 + 56) addObject:v7];
      v17 = *(a1 + 64);
    }

    v18 = [v7 trackingID];
    [v17 addObject:v18];

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v19 = *(a1 + 48);
    v20 = [v7 trackingID];
    [v19 addObject:v20];
  }
}

BOOL __65__CRImageReaderTrackingSession_applyOpticalFlowTrackingForFrame___block_invoke_4(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [CRTrackingFilter shouldFilterHomographyWithResultQuad:v7 originalQuad:*(a1 + 32) imageSize:a3, a4];
  LOBYTE(a1) = *(*(*(a1 + 40) + 8) + 24);

  return (a1 & 1) == 0;
}

- (void)updateOCRUpdateModeWithStability:(id)a3 frameDuration:(double)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(CRImageReaderTrackingSession *)self ocrUpdateMode];
  if (v7)
  {
    [v7 doubleValue];
    if (v9 < 0.976)
    {
      v10 = 0;
LABEL_26:
      [(CRImageReaderTrackingSession *)self setOcrUpdateMode:v10];
      goto LABEL_27;
    }
  }

  if (self && a4 > 0.100000001 && self->_frameCount)
  {
    v11 = 4;
LABEL_8:
    [(CRImageReaderTrackingSession *)self setOcrUpdateMode:v11];
    goto LABEL_27;
  }

  if (v7 && ([v7 doubleValue], v12 > 0.984))
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (self)
    {
      lastFrameTime = self->_lastFrameTime;
    }

    else
    {
      lastFrameTime = 0.0;
    }

    [(CRImageReaderTrackingSession *)self lowFrequencyOCRElapsedTimeAboveMinimumStability];
    [(CRImageReaderTrackingSession *)self setLowFrequencyOCRElapsedTimeAboveMinimumStability:v15 + Current - lastFrameTime];
    [v7 doubleValue];
    if (v16 > 0.988)
    {
      [(CRImageReaderTrackingSession *)self lowFrequencyOCRElapsedTimeAboveMinimumStability];
      if (v17 > 1.0)
      {
        [(CRImageReaderTrackingSession *)self setOcrUpdateMode:4];
      }
    }
  }

  else
  {
    [(CRImageReaderTrackingSession *)self setLowFrequencyOCRElapsedTimeAboveMinimumStability:0.0];
  }

  if (v8 == [(CRImageReaderTrackingSession *)self ocrUpdateMode]|| [(CRImageReaderTrackingSession *)self ocrUpdateMode]== 4)
  {
    [(CRImageReaderTrackingSession *)self lowFrequencyOCRElapsedTimeAboveMinimumStability];
    if (v18 == 0.0)
    {
      if (!v7 || ([v7 doubleValue], v19 <= 0.978))
      {
        v10 = 1;
        goto LABEL_26;
      }

      v20 = [(CRImageReaderTrackingSession *)self latestResult];
      v4 = [v20 trackedRegions];
      if ([v4 count])
      {
        v21 = self->_replacedQuadArea / self->_totalQuadArea;

        if (v21 <= 0.2)
        {
          v11 = 2;
          goto LABEL_8;
        }
      }

      else
      {
      }

      if (self->_replacedQuadArea / self->_totalQuadArea > 0.2)
      {
        v33 = CROSLogForCategory(1);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          frameCount = self->_frameCount;
          v35 = self->_replacedQuadArea / self->_totalQuadArea;
          v36 = 134218240;
          v37 = frameCount;
          v38 = 2048;
          v39 = v35;
          _os_log_impl(&dword_1B40D2000, v33, OS_LOG_TYPE_DEFAULT, "OCR Update Mode: switching to as fast as possible: (frame %ld, replaced area ratio %f)", &v36, 0x16u);
        }
      }

      v11 = 1;
      goto LABEL_8;
    }
  }

LABEL_27:
  if (v8 != [(CRImageReaderTrackingSession *)self ocrUpdateMode])
  {
    v22 = CROSLogForCategory(1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(CRImageReaderTrackingSession *)self ocrUpdateMode];
      if (self)
      {
        v24 = self->_frameCount;
      }

      else
      {
        v24 = 0;
      }

      v36 = 134218754;
      v37 = v8;
      v38 = 2048;
      v39 = *&v23;
      v40 = 2048;
      v41 = v24;
      v42 = 2112;
      v43 = v7;
      _os_log_impl(&dword_1B40D2000, v22, OS_LOG_TYPE_DEFAULT, "OCR Update Mode: %ld -> %ld (frame %ld, scene %@)", &v36, 0x2Au);
    }
  }

  if ([(CRImageReaderTrackingSession *)self ocrUpdateMode]== 1)
  {
    v25 = CFAbsoluteTimeGetCurrent();
    if (self->_ocrDispatchTimestamps.c.__size_ >= 5 && (*(self->_ocrDispatchTimestamps.c.__map_.__begin_ + ((self->_ocrDispatchTimestamps.c.__start_ >> 6) & 0x3FFFFFFFFFFFFF8)))[self->_ocrDispatchTimestamps.c.__start_ & 0x1FF] > v25 + -5.0)
    {
      [(CRImageReaderTrackingSession *)self setOcrUpdateMode:2];
      v26 = CROSLogForCategory(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(CRImageReaderTrackingSession *)self ocrUpdateMode];
        v36 = 134217984;
        v37 = v27;
        _os_log_impl(&dword_1B40D2000, v26, OS_LOG_TYPE_DEFAULT, "OCR Update Mode: [KILL SWITCH] %lu", &v36, 0xCu);
      }
    }
  }

  v28 = [MEMORY[0x1E696AE30] processInfo];
  v29 = [v28 thermalState]> 1;

  if (v29 && [(CRImageReaderTrackingSession *)self ocrUpdateMode]<= 2 && [(CRImageReaderTrackingSession *)self ocrUpdateMode])
  {
    [(CRImageReaderTrackingSession *)self setOcrUpdateMode:3];
    v28 = CROSLogForCategory(1);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(CRImageReaderTrackingSession *)self ocrUpdateMode];
      v36 = 134217984;
      v37 = v30;
      _os_log_impl(&dword_1B40D2000, v28, OS_LOG_TYPE_DEFAULT, "OCR Update Mode: [THERMAL PRESSURE OVERRIDE] %lu", &v36, 0xCu);
    }
  }

  if (qword_1ED95FEA8 != -1)
  {
    dispatch_once(&qword_1ED95FEA8, &__block_literal_global_7);
  }

  if (_MergedGlobals_14)
  {
    v28 = [(CRImageReaderTrackingSession *)self ocrUpdateMode];
    if (v28 != [_MergedGlobals_14 unsignedIntegerValue])
    {
      if ([(CRImageReaderTrackingSession *)self ocrUpdateMode])
      {
        v28 = CROSLogForCategory(1);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 138412290;
          v37 = _MergedGlobals_14;
          _os_log_impl(&dword_1B40D2000, v28, OS_LOG_TYPE_DEFAULT, "OCR Update Mode: [DEFAULTS OVERRIDE] %@", &v36, 0xCu);
        }

        -[CRImageReaderTrackingSession setOcrUpdateMode:](self, "setOcrUpdateMode:", [_MergedGlobals_14 unsignedIntegerValue]);
      }
    }
  }

  v31 = [(CRImageReaderTrackingSession *)self ocrUpdateMode];
  if (v31)
  {
    v32 = 0;
    if (!self)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v28 = [(CRImageReaderTrackingSession *)self latestResult];
  v4 = [v28 trackedRegions];
  v32 = [v4 count] == 0;
  if (self)
  {
LABEL_55:
    self->_wasLastFrameUnstableForFirstAcquisition = v32;
  }

LABEL_56:
  if (!v31)
  {
  }
}

void __79__CRImageReaderTrackingSession_updateOCRUpdateModeWithStability_frameDuration___block_invoke()
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v0 = [v2 objectForKey:@"com.apple.CoreRecognition.tracking_ocr_update_mode_override"];
  v1 = _MergedGlobals_14;
  _MergedGlobals_14 = v0;
}

- (uint64_t)shouldRunOCROnCurrentFrame
{
  if (result)
  {
    v1 = result;
    if (*(result + 64))
    {
      return 1;
    }

    v2 = CFAbsoluteTimeGetCurrent() - *(result + 120);
    v3 = [v1 ocrUpdateMode];
    result = 1;
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        v4 = 2.0;
      }

      else
      {
        if (v3 != 4)
        {
          return result;
        }

        v4 = 3.0;
      }
    }

    else
    {
      if (!v3)
      {
        return 0;
      }

      if (v3 != 2)
      {
        return result;
      }

      v4 = 1.5;
    }

    return v2 > v4;
  }

  return result;
}

- (void)prepareSessionForOCRDispatch
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 120) = CFAbsoluteTimeGetCurrent();
    v2 = MEMORY[0x1E69E9B10];
    v3 = *(MEMORY[0x1E69E9B10] + 16);
    *(a1 + 208) = *MEMORY[0x1E69E9B10];
    *(a1 + 224) = v3;
    *(a1 + 240) = *(v2 + 32);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = [*(a1 + 24) trackedRegions];
    v5 = [v4 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v5)
    {
      v6 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v26 + 1) + 8 * i) updatePreviousAssociationQuad];
        }

        v5 = [v4 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v5);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [*(a1 + 24) regionTrackingGroups];
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v9)
    {
      v10 = *v23;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v22 + 1) + 8 * j) updatePreviousAssociationQuad];
        }

        v9 = [v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v9);
    }

    v12 = *(a1 + 168);
    v13 = *(a1 + 160);
    if (v12 == v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = ((v12 - v13) << 6) - 1;
    }

    v16 = *(a1 + 184);
    v15 = *(a1 + 192);
    v17 = v15 + v16;
    if (v14 == v15 + v16)
    {
      if (v16 < 0x200)
      {
        v18 = *(a1 + 176);
        v19 = *(a1 + 152);
        if (v12 - v13 < (v18 - v19))
        {
          operator new();
        }

        if (v18 == v19)
        {
          v20 = 1;
        }

        else
        {
          v20 = (v18 - v19) >> 2;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(v20);
      }

      *(a1 + 184) = v16 - 512;
      v30 = *v13;
      *(a1 + 160) = v13 + 1;
      std::__split_buffer<double *>::emplace_back<double *&>((a1 + 152), &v30);
      v13 = *(a1 + 160);
      v16 = *(a1 + 184);
      v15 = *(a1 + 192);
      v17 = v16 + v15;
    }

    (*(v13 + ((v17 >> 6) & 0x3FFFFFFFFFFFFF8)))[v17 & 0x1FF] = *(a1 + 120);
    *(a1 + 192) = v15 + 1;
    if ((v15 + 1) >= 6)
    {
      v21 = v16 + 1;
      *(a1 + 184) = v21;
      *(a1 + 192) = v15;
      if (v21 >= 0x400)
      {
        operator delete(*v13);
        *(a1 + 160) += 8;
        *(a1 + 184) -= 512;
      }
    }
  }
}

- (void)saveQuadsAfterAssociation
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v2 = [*(a1 + 24) trackedRegions];
    v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v3)
    {
      v4 = *v19;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v19 != v4)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v18 + 1) + 8 * i) updateBoundingQuadAfterOCR];
        }

        v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v3);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [*(a1 + 24) regionTrackingGroups];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (j = 0; j != v7; ++j)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * j);
          [v10 updateBoundingQuadAfterOCR];
          v11 = [v10 boundingQuad];
          v12 = [v11 denormalizedQuad];
          [v12 area];
          *(a1 + 88) = v13 + *(a1 + 88);
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v7);
    }

    *(a1 + 80) = 0;
    *(a1 + 56) = 0;
  }
}

void __49__CRImageReaderTrackingSession__dispatchIfReady___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[11] = 1;
  }

  (*(*(a1 + 32) + 16))();
  v3 = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v3[11] = 0;
  }
}

void __60__CRImageReaderTrackingSession__dispatchAtOCRFrameInterval___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[11] = 1;
  }

  (*(*(a1 + 32) + 16))();
  v3 = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v3[11] = 0;
  }
}

- (double)sceneHomography
{
  if (!a1)
  {
    return 0.0;
  }

  objc_copyStruct(&v2, (a1 + 208), 48, 1, 0);
  return *&v2;
}

- (void)setSceneHomography:(__n128)a3
{
  v4[0] = a2;
  v4[1] = a3;
  v4[2] = a4;
  if (a1)
  {
    objc_copyStruct((a1 + 208), v4, 48, 1, 0);
  }
}

- (double)accumulatedSceneHomography
{
  if (!a1)
  {
    return 0.0;
  }

  objc_copyStruct(&v2, (a1 + 256), 48, 1, 0);
  return *&v2;
}

- (void)setAccumulatedSceneHomography:(__n128)a3
{
  v4[0] = a2;
  v4[1] = a3;
  v4[2] = a4;
  if (a1)
  {
    objc_copyStruct((a1 + 256), v4, 48, 1, 0);
  }
}

- (uint64_t)setLastFrameTime:(uint64_t)result
{
  if (result)
  {
    *(result + 128) = a2;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 184) = 0u;
  *(self + 168) = 0u;
  *(self + 152) = 0u;
  return self;
}

@end