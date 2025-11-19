@interface AVAsset(PUPerspectiveTransform)
- (__n128)pu_perspectiveTransformForMetadata:()PUPerspectiveTransform;
- (id)pu_stillImageTransformAssetTrack;
- (uint64_t)_pu_getVitalityTransform:()PUPerspectiveTransform dimensions:;
- (uint64_t)_pu_isVitalityLimitingAllowed;
- (uint64_t)pu_supportsVitality;
- (void)_pu_handleRequiredPropertiesLoadedWithAdditionalNormalizedTransform:()PUPerspectiveTransform completion:;
- (void)pu_loadNormalizedVitalityPerspectiveTransformWithAdditionalNormalizedTransform:()PUPerspectiveTransform completion:;
- (void)pu_stillAssetTransformMetadataPair;
@end

@implementation AVAsset(PUPerspectiveTransform)

- (void)pu_stillAssetTransformMetadataPair
{
  v2 = [a1 pu_stillImageTransformAssetTrack];
  if (v2)
  {
    v3 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v2 outputSettings:0];
    v25 = 0;
    v4 = [MEMORY[0x1E6987E78] assetReaderWithAsset:a1 error:&v25];
    v5 = v25;
    v6 = v5;
    if (v4)
    {
      v22 = v5;
      v23 = v2;
      [v4 setPreparesMediaDataForRealTimeConsumption:1];
      [v4 addOutput:v3];
      [v4 startReading];
      v7 = 0;
      v8 = 0;
      v24 = *MEMORY[0x1E69603A0];
      v9 = *MEMORY[0x1E69603A8];
      while (1)
      {
        v10 = [v3 copyNextSampleBuffer];
        if (!v10)
        {
          break;
        }

        v11 = v10;
        if (CMSampleBufferGetNumSamples(v10))
        {
          v12 = [objc_alloc(MEMORY[0x1E6988160]) initWithSampleBuffer:v11];
          v13 = MEMORY[0x1E6987FE0];
          v14 = [v12 items];
          v15 = [v13 metadataItemsFromArray:v14 filteredByIdentifier:v24];
          v16 = [v15 firstObject];

          v17 = MEMORY[0x1E6987FE0];
          v18 = [v12 items];
          v19 = [v17 metadataItemsFromArray:v18 filteredByIdentifier:v9];
          v20 = [v19 firstObject];

          v7 = v20;
          v8 = v16;
        }

        CFRelease(v11);
        if (v8)
        {
          if (v7)
          {
            break;
          }
        }
      }

      [v4 cancelReading];
      v6 = v22;
      v2 = v23;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (__n128)pu_perspectiveTransformForMetadata:()PUPerspectiveTransform
{
  v3 = MEMORY[0x1E69E9B10];
  if (a3)
  {
    v4 = [a3 value];
    v5 = 0;
    v6 = v3[1];
    v14[0] = *v3;
    v14[1] = v6;
    v14[2] = v3[2];
    do
    {
      v7 = 0;
      v8 = v5;
      do
      {
        v9 = [v4 objectAtIndexedSubscript:v8];
        [v9 floatValue];
        v11 = v7;
        if ((v7 & 0xFFFFFFFE) != 0)
        {
          v11 = 2;
        }

        *(&v14[v5] + v11) = v10;

        ++v7;
        v8 += 3;
      }

      while (v7 != 3);
      ++v5;
    }

    while (v5 != 3);
    v13 = v14[0];

    return v13;
  }

  else
  {
    return *MEMORY[0x1E69E9B10];
  }
}

- (uint64_t)_pu_getVitalityTransform:()PUPerspectiveTransform dimensions:
{
  v7 = objc_getAssociatedObject(a1, VitalityTransformKey);
  v8 = objc_getAssociatedObject(a1, DimensionsKey);
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = [a1 pu_stillAssetTransformMetadataPair];
    v13 = v12;
    v14 = v11;
    if (v11)
    {
      v15 = MEMORY[0x1E696B098];
      [a1 pu_perspectiveTransformForMetadata:v14];
      v16 = [v15 pu_valueWithPUPerspectiveTransform:?];

      objc_setAssociatedObject(a1, VitalityTransformKey, v16, 1);
      v7 = v16;
    }

    v17 = v13;
    v18 = v17;
    if (v13)
    {
      v19 = [v17 value];

      objc_setAssociatedObject(a1, DimensionsKey, v19, 1);
      v9 = v19;
    }
  }

  if (v9)
  {
    v20 = v7 == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = !v20;
  if (!v20)
  {
    [v7 pu_PUPerspectiveTransformValue];
    *(a3 + 8) = v22;
    *(a3 + 24) = v23;
    *a3 = v24;
    *(a3 + 16) = v25;
    *(a3 + 40) = v26;
    *(a3 + 32) = v27;
    [v9 sizeValue];
    *a4 = v28;
    a4[1] = v29;
  }

  return v21;
}

- (uint64_t)_pu_isVitalityLimitingAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69C0718]) initWithAVAsset:a1 timeZoneLookup:0];
  if (!v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = a1;
    _os_log_error_impl(&dword_1B36F3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Attempted to load vitality limiting from asset %@, but an error occurred", &v5, 0xCu);
  }

  v3 = [v2 livePhotoVitalityLimitingAllowed];

  return v3;
}

- (void)_pu_handleRequiredPropertiesLoadedWithAdditionalNormalizedTransform:()PUPerspectiveTransform completion:
{
  v120.columns[1] = a3;
  v120.columns[2] = a4;
  v120.columns[0] = a2;
  v149 = *MEMORY[0x1E69E9840];
  v131 = a6;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v7 = _vitalityTransformRequiredProperties();
  v8 = [v7 countByEnumeratingWithState:&v140 objects:v146 count:16];
  v9 = MEMORY[0x1E69E9B10];
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = *v141;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v141 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v140 + 1) + 8 * v13);
        v139 = v14;
        v16 = [a1 statusOfValueForKey:v15 error:&v139];
        v11 = v139;

        if (v16 != 2)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            *&buf[4] = a1;
            *&buf[12] = 2112;
            *&buf[14] = v15;
            *&buf[22] = 2112;
            *&buf[24] = v11;
            _os_log_error_impl(&dword_1B36F3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Attempted to load vitality transform from asset %@, but required property %@ coud not be loaded. Received error: %@", buf, 0x20u);
          }

          v17 = v131;
          (*(v131 + 2))(v131, 0, *v9, v9[1], v9[2]);

          goto LABEL_55;
        }

        ++v13;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [v7 countByEnumeratingWithState:&v140 objects:v146 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = v9[1];
  v119 = *v9;
  v136 = *v9;
  v137 = v18;
  v117 = v18;
  v118 = v9[2];
  v138 = v118;
  if ([a1 pu_supportsVitality])
  {
    v135 = *MEMORY[0x1E696AA88];
    v17 = v131;
    if ([a1 _pu_getVitalityTransform:&v136 dimensions:&v135])
    {
      v133 = 0u;
      v134 = 0u;
      v132 = 0u;
      v19 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:a1];
      v20 = [v19 firstObject];
      v21 = v20;
      if (v20)
      {
        [v20 preferredTransform];
      }

      else
      {
        v133 = 0u;
        v134 = 0u;
        v132 = 0u;
      }

      v99 = v137;
      v102 = v136;
      v96 = v138;
      *buf = v132;
      *&buf[16] = v133;
      v148 = v134;
      v23 = v135;
      v144 = 0;
      v24 = FigGetRotationAngleAndFlipsFromCGAffineTransform() * 0.0174532925;
      v25.i64[0] = 0xBF000000BF000000;
      v25.i64[1] = v118.u32[2] | 0xBF00000000000000;
      v115 = v25;
      v27 = __sincosf_stret(v24);
      *&v26 = v27.__cosval;
      *(&v26 + 4) = *(v119.i64 + 4);
      v91 = v26;
      *&v28 = -v27.__sinval;
      v29 = v115;
      *(&v28 + 4) = *(v117.i64 + 4);
      v90 = v28;
      __asm { FMOV            V0.4S, #-1.0 }

      v35 = _Q0;
      *(v35.i64 + 4) = *(v119.i64 + 4);
      v94 = v35;
      _Q0.i32[0] = v117.i32[0];
      _Q0.i32[2] = v117.i32[2];
      v112 = _Q0;
      v36 = v144;
      v29.i32[3] = 0;
      v150.columns[1] = v117;
      v150.columns[1].i32[3] = 0;
      v37 = HIBYTE(v144);
      v150.columns[0] = v119;
      v150.columns[0].i32[3] = 0;
      v38 = *&v23;
      v39.f32[0] = 1.0 / v38;
      v39.i32[1] = v119.i32[1];
      v39.i64[1] = v119.i64[1];
      v93 = v39;
      v110 = v150.columns[0];
      v111 = v150.columns[1];
      v150.columns[2] = v29;
      v116 = v29;
      v151 = __invert_f3(v150);
      v41 = 0;
      v106 = v151.columns[1];
      v107 = v151.columns[0];
      v145 = v151;
      v105 = v151.columns[2];
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      do
      {
        v151.columns[0] = v145.columns[v41];
        *&buf[v41 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v119, v151.columns[0].f32[0]), v117, *v151.columns[0].f32, 1), v118, v151.columns[0], 2);
        ++v41;
      }

      while (v41 != 3);
      v151.columns[0].i32[0] = 0;
      v42 = 0;
      v151.columns[1].i32[0] = v117.i32[0];
      v40 = *(&v23 + 1);
      v151.columns[1].f32[1] = 1.0 / v40;
      v151.columns[1].i32[2] = v117.i32[2];
      v43 = v112;
      v43.i32[3] = v117.i32[3];
      __asm { FMOV            V19.4S, #1.0 }

      _Q19.i32[0] = v118.i32[0];
      _Q19.i32[2] = v118.i32[2];
      v151.columns[2].i32[0] = v37;
      v45 = vdupq_lane_s8(*&vceqq_s8(v151.columns[2], v151.columns[0]), 0);
      v46.i64[0] = __PAIR64__(LODWORD(v27.__cosval), v90);
      v46.i64[1] = DWORD2(v90);
      v151.columns[0] = *buf;
      v151.columns[2] = *&buf[16];
      v47 = v148;
      v145.columns[0] = v119;
      v145.columns[1] = vbslq_s8(v45, v117, v43);
      v109 = v145.columns[1];
      v145.columns[2] = v118;
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      do
      {
        *&buf[v42 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v151.columns[0], COERCE_FLOAT(*&v145.columns[v42])), v151.columns[2], *v145.columns[v42].f32, 1), v47, v145.columns[v42], 2);
        ++v42;
      }

      while (v42 != 3);
      v151.columns[0].i32[0] = 0;
      v48 = 0;
      v151.columns[2].i32[0] = v36;
      v49 = vbslq_s8(vdupq_lane_s8(*&vceqq_s8(v151.columns[2], v151.columns[0]), 0), v119, v94);
      v49.i32[3] = v119.i32[3];
      v50 = *buf;
      v51 = *&buf[16];
      v52 = v148;
      v95 = v49;
      v145.columns[0] = v49;
      v145.columns[1] = v117;
      v145.columns[2] = v118;
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      do
      {
        *&buf[v48 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, COERCE_FLOAT(*&v145.columns[v48])), v51, *v145.columns[v48].f32, 1), v52, v145.columns[v48], 2);
        ++v48;
      }

      while (v48 != 3);
      v53 = 0;
      v54.i64[0] = __PAIR64__(LODWORD(v27.__sinval), v91);
      v54.i64[1] = DWORD2(v91);
      v151.columns[2] = v118;
      v151.columns[2].i32[3] = 0;
      v151.columns[0] = *buf;
      v55 = *&buf[16];
      v56 = v148;
      v92 = v54;
      v145.columns[0] = v54;
      v145.columns[1] = v46;
      v145.columns[2] = v151.columns[2];
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      do
      {
        *&buf[v53 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v151.columns[0], COERCE_FLOAT(*&v145.columns[v53])), v55, *v145.columns[v53].f32, 1), v56, v145.columns[v53], 2);
        ++v53;
      }

      while (v53 != 3);
      v57 = 0;
      v58 = *buf;
      v59 = *&buf[16];
      v60 = v148;
      v145.columns[0] = v110;
      v145.columns[1] = v111;
      v145.columns[2] = v116;
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      do
      {
        *&buf[v57 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*&v145.columns[v57])), v59, *v145.columns[v57].f32, 1), v60, v145.columns[v57], 2);
        ++v57;
      }

      while (v57 != 3);
      v61 = 0;
      _Q19.i32[3] = v118.i32[3];
      v62 = *buf;
      v63 = *&buf[16];
      v64 = v148;
      v145.columns[0] = v119;
      v145.columns[1] = v43;
      v145.columns[2] = _Q19;
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      do
      {
        *&buf[v61 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, COERCE_FLOAT(*&v145.columns[v61])), v63, *v145.columns[v61].f32, 1), v64, v145.columns[v61], 2);
        ++v61;
      }

      while (v61 != 3);
      v65 = 0;
      v66 = *buf;
      v67 = *&buf[16];
      v68 = v148;
      v145 = v120;
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      v151.columns[0] = v93;
      do
      {
        *&buf[v65 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v66, COERCE_FLOAT(*&v145.columns[v65])), v67, *v145.columns[v65].f32, 1), v68, v145.columns[v65], 2);
        ++v65;
      }

      while (v65 != 3);
      v69 = 0;
      v151.columns[1].i32[3] = 0;
      v151.columns[0].i32[3] = 0;
      v70 = *buf;
      v71 = *&buf[16];
      v72 = v148;
      v145 = v151;
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      do
      {
        *&buf[v69 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v70, COERCE_FLOAT(*&v145.columns[v69])), v71, *v145.columns[v69].f32, 1), v72, v145.columns[v69], 2);
        ++v69;
      }

      while (v69 != 3);
      v124 = _Q19;
      v128 = v46;
      v113 = v43;
      v73 = 0;
      v74 = *buf;
      v75 = *&buf[16];
      v76 = v148;
      v145.columns[0] = v102;
      v145.columns[1] = v99;
      v145.columns[2] = v96;
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      do
      {
        *&buf[v73 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, COERCE_FLOAT(*&v145.columns[v73])), v75, *v145.columns[v73].f32, 1), v76, v145.columns[v73], 2);
        ++v73;
      }

      while (v73 != 3);
      v100 = *&buf[16];
      v103 = *buf;
      v97 = v148;
      v121 = v151.columns[2];
      v152 = __invert_f3(v151);
      v77 = 0;
      v145 = v152;
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      do
      {
        *&buf[v77 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, COERCE_FLOAT(*&v145.columns[v77])), v100, *v145.columns[v77].f32, 1), v97, v145.columns[v77], 2);
        ++v77;
      }

      while (v77 != 3);
      v101 = *&buf[16];
      v104 = *buf;
      v98 = v148;
      v153.columns[0] = v119;
      v153.columns[1] = v113;
      v153.columns[2] = v124;
      v154 = __invert_f3(v153);
      v78 = 0;
      v145 = v154;
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      do
      {
        *&buf[v78 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v104, COERCE_FLOAT(*&v145.columns[v78])), v101, *v145.columns[v78].f32, 1), v98, v145.columns[v78], 2);
        ++v78;
      }

      while (v78 != 3);
      v79 = 0;
      v82.columns[0] = *buf;
      v80 = *&buf[16];
      v81 = v148;
      v145.columns[0] = v107;
      v145.columns[1] = v106;
      v145.columns[2] = v105;
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      v82.columns[1] = v128;
      v82.columns[2] = v121;
      do
      {
        *&buf[v79 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82.columns[0], COERCE_FLOAT(*&v145.columns[v79])), v80, *v145.columns[v79].f32, 1), v81, v145.columns[v79], 2);
        ++v79;
      }

      while (v79 != 3);
      v125 = *buf;
      v114 = *&buf[16];
      v108 = v148;
      v82.columns[0] = v92;
      v155 = __invert_f3(v82);
      v83 = 0;
      v145 = v155;
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      do
      {
        *&buf[v83 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v125, COERCE_FLOAT(*&v145.columns[v83])), v114, *v145.columns[v83].f32, 1), v108, v145.columns[v83], 2);
        ++v83;
      }

      while (v83 != 3);
      v126 = *&buf[16];
      v129 = *buf;
      v122 = v148;
      v156.columns[0] = v95;
      v156.columns[1] = v117;
      v156.columns[2] = v118;
      v157 = __invert_f3(v156);
      v84 = 0;
      v145 = v157;
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      do
      {
        *&buf[v84 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, COERCE_FLOAT(*&v145.columns[v84])), v126, *v145.columns[v84].f32, 1), v122, v145.columns[v84], 2);
        ++v84;
      }

      while (v84 != 3);
      v127 = *&buf[16];
      v130 = *buf;
      v123 = v148;
      v158.columns[2] = v118;
      v158.columns[0] = v119;
      v158.columns[1] = v109;
      v159 = __invert_f3(v158);
      v85 = 0;
      v145 = v159;
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      do
      {
        *&buf[v85 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v130, COERCE_FLOAT(*&v145.columns[v85])), v127, *v145.columns[v85].f32, 1), v123, v145.columns[v85], 2);
        ++v85;
      }

      while (v85 != 3);
      v86 = 0;
      v87 = *buf;
      v88 = *&buf[16];
      v89 = v148;
      v145.columns[0] = v110;
      v145.columns[1] = v111;
      v145.columns[2] = v116;
      memset(buf, 0, sizeof(buf));
      v148 = 0u;
      do
      {
        *&buf[v86 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, COERCE_FLOAT(*&v145.columns[v86])), v88, *v145.columns[v86].f32, 1), v89, v145.columns[v86], 2);
        ++v86;
      }

      while (v86 != 3);
      v136.i32[2] = *&buf[8];
      v137.i32[2] = *&buf[24];
      v136.i64[0] = *buf;
      v137.i64[0] = *&buf[16];
      v138.i32[2] = v148.i32[2];
      v138.i64[0] = v148.i64[0];
    }

    v22 = [a1 _pu_isVitalityLimitingAllowed];
  }

  else
  {
    v22 = 0;
    v17 = v131;
  }

  v17[2](v17, v22, v136, v137, v138);
LABEL_55:
}

- (void)pu_loadNormalizedVitalityPerspectiveTransformWithAdditionalNormalizedTransform:()PUPerspectiveTransform completion:
{
  v7 = a6;
  v8 = _vitalityLoadingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__AVAsset_PUPerspectiveTransform__pu_loadNormalizedVitalityPerspectiveTransformWithAdditionalNormalizedTransform_completion___block_invoke;
  block[3] = &unk_1E7B76328;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  v18 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

- (id)pu_stillImageTransformAssetTrack
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875D0] forAsset:a1];
  v1 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v21;
    v4 = *MEMORY[0x1E69603A0];
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v21 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v7 = [v6 formatDescriptions];
        v8 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v17;
LABEL_8:
          v11 = 0;
          while (1)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = CMMetadataFormatDescriptionGetIdentifiers(*(*(&v16 + 1) + 8 * v11));
            if ([v12 containsObject:v4])
            {
              break;
            }

            if (v9 == ++v11)
            {
              v9 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
              if (v9)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v13 = v6;

          if (v13)
          {
            goto LABEL_19;
          }
        }

        else
        {
LABEL_14:
        }
      }

      v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v2);
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (uint64_t)pu_supportsVitality
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(a1, SupportsVitalityKey);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E69C0718]) initWithAVAsset:a1 timeZoneLookup:0];
    v6 = v5;
    if (v5)
    {
      v4 = [v5 hasVitality];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = a1;
        _os_log_error_impl(&dword_1B36F3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Attempted to read vitality disabled metadata from asset %@, but failed", &v10, 0xCu);
      }

      v4 = 1;
    }

    v7 = SupportsVitalityKey;
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    objc_setAssociatedObject(a1, v7, v8, 1);
  }

  return v4;
}

@end