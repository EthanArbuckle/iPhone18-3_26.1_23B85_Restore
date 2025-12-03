@interface PTHumanDetections
- (PTHumanDetections)initWithMetalContext:(id)context;
- (int)faceDetectionsFilteredState:(BOOL)state;
- (void)clearFilterDetections;
- (void)filterDetections;
- (void)renderDebugRects:(id)rects outTexture:(id)texture debugFaceRects:(BOOL)faceRects;
- (void)reset;
- (void)unpackDetections:(id)detections;
@end

@implementation PTHumanDetections

- (PTHumanDetections)initWithMetalContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = PTHumanDetections;
  v5 = [(PTHumanDetections *)&v11 init];
  if (!v5)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v6 = [[PTUtil alloc] initWithMetalContext:contextCopy];
  util = v5->_util;
  v5->_util = v6;

  if (!v5->_util)
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PTHumanDetections initWithMetalContext:v9];
    }

    goto LABEL_7;
  }

  memset_pattern16(v5->_faceDetectionsFilteredState, &unk_2244C5F70, 0x10uLL);
  v8 = v5;
LABEL_8:

  return v8;
}

- (int)faceDetectionsFilteredState:(BOOL)state
{
  if (state)
  {
    v3 = *self->_faceDetectionsFilteredState;
    v4.i64[0] = 0x200000002;
    v4.i64[1] = 0x200000002;
    v5 = vmovn_s32(vceqq_s32(v3, v4));
    if (v5.i8[0])
    {
      self->_faceDetectionsFilteredState[0] = 1;
    }

    if (v5.i8[2])
    {
      self->_faceDetectionsFilteredState[1] = 1;
    }

    v6.i64[0] = 0x200000002;
    v6.i64[1] = 0x200000002;
    v7 = vmovn_s32(vceqq_s32(v3, v6));
    if (v7.i8[4])
    {
      self->_faceDetectionsFilteredState[2] = 1;
    }

    if (v7.i8[6])
    {
      self->_faceDetectionsFilteredState[3] = 1;
    }
  }

  return self->_faceDetectionsFilteredState;
}

- (void)unpackDetections:(id)detections
{
  detectionsCopy = detections;
  v4 = [detectionsCopy objectForKeyedSubscript:@"DetectedObjectsInfo"];
  v55 = v4;
  if (v4)
  {
    v5 = v4;

    v6 = v5;
  }

  else
  {
    v6 = detectionsCopy;
  }

  v58 = v6;
  v7 = [v6 objectForKeyedSubscript:@"HumanFaces"];
  v8 = [v7 objectForKeyedSubscript:@"ObjectsArray"];

  self->_detectionsRawCount = 0;
  if ([v8 count])
  {
    v9 = 0;
    detectionsRaw = self->_detectionsRaw;
    v56 = v8;
    do
    {
      if (self->_detectionsRawCount >= 4)
      {
        break;
      }

      v10 = [v8 objectAtIndexedSubscript:v9];
      v11 = [v10 objectForKeyedSubscript:@"Rect"];
      v12 = [v11 objectForKeyedSubscript:@"X"];
      [v12 floatValue];
      v67 = v13;
      v14 = [v11 objectForKeyedSubscript:@"Y"];
      [v14 floatValue];
      v64 = v15;
      v16 = [v11 objectForKeyedSubscript:@"Width"];
      [v16 floatValue];
      v62 = v17;
      v18 = [v11 objectForKeyedSubscript:@"Height"];
      [v18 floatValue];
      v61 = v19;

      LODWORD(v20) = v67;
      v21 = vmla_f32(__PAIR64__(v64, v67), 0x3F0000003F000000, __PAIR64__(v61, v62));
      if (v21.f32[0] > 0.0 && v21.f32[1] < 1.0 && v21.f32[1] > 0.0 && v21.f32[0] < 1.0)
      {
        DWORD1(v20) = v64;
        *(&v20 + 1) = __PAIR64__(v61, v62);
        *&detectionsRaw[36 * self->_detectionsRawCount + 4].groupId = v20;
        v24 = [v10 objectForKeyedSubscript:@"AngleInfoYaw"];
        [v24 floatValue];
        v68 = v25;
        v26 = [v10 objectForKeyedSubscript:@"AngleInfoPitch"];
        [v26 floatValue];
        v65 = v27;
        v28 = [v10 objectForKeyedSubscript:@"AngleInfoRoll"];
        [v28 floatValue];
        v29 = v68;
        DWORD1(v29) = v65;
        DWORD2(v29) = v30;
        *&detectionsRaw[36 * self->_detectionsRawCount + 16].groupId = v29;

        v31 = 0;
        v32 = &detectionsRaw[36 * self->_detectionsRawCount + 16];
        do
        {
          v33 = *v32;
          v71 = *v32;
          v34 = *(&v71 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3)));
          if (v34 > 180.0)
          {
            v70 = v33;
            *(&v70 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3))) = -(360.0 - v34);
            v35 = v70;
            *(v32 + 8) = DWORD2(v70);
            *v32 = v35;
          }

          ++v31;
        }

        while (v31 != 3);
        v59 = v9;
        v36 = 0;
        v37 = 1;
        do
        {
          v38 = v11;
          v39 = v37 & 1;
          if (v37)
          {
            v40 = @"LeftEyeRect";
          }

          else
          {
            v40 = @"RightEyeRect";
          }

          v11 = [v10 objectForKeyedSubscript:v40];

          *(&detectionsRaw[36 * self->_detectionsRawCount + 21].groupId + v36) = v11 != 0;
          v41 = [v11 objectForKeyedSubscript:@"X"];
          [v41 floatValue];
          v69 = v42;
          v43 = [v11 objectForKeyedSubscript:@"Y"];
          [v43 floatValue];
          v66 = v44;
          v45 = [v11 objectForKeyedSubscript:@"Width"];
          [v45 floatValue];
          v63 = v46;
          v47 = [v11 objectForKeyedSubscript:@"Height"];
          [v47 floatValue];
          *&v48 = __PAIR64__(v66, v69);
          *(&v48 + 1) = __PAIR64__(v49, v63);
          *&detectionsRaw[36 * self->_detectionsRawCount + 24 + 4 * v36].groupId = v48;

          v37 = 0;
          v36 = 1;
        }

        while (v39);
        v50 = [v10 objectForKeyedSubscript:@"GroupID"];
        if (v50)
        {
          v51 = v50;
          v8 = v56;
          v9 = v59;
        }

        else
        {
          v52 = [v10 objectForKeyedSubscript:@"FaceID"];
          v8 = v56;
          v9 = v59;
          if (v52)
          {
            v51 = v52;
          }

          else
          {
            v51 = [MEMORY[0x277CCABB0] numberWithInt:v59];
            if (unpackDetections__once != -1)
            {
              [PTHumanDetections unpackDetections:];
            }
          }
        }

        detectionsRaw[36 * self->_detectionsRawCount].groupId = [v51 intValue];
        v53 = [v10 objectForKeyedSubscript:@"ConfidenceLevel"];
        [v53 floatValue];
        detectionsRaw[36 * self->_detectionsRawCount + 20].groupId = v54;

        ++self->_detectionsRawCount;
      }

      ++v9;
    }

    while ([v8 count] > v9);
  }
}

void __38__PTHumanDetections_unpackDetections___block_invoke()
{
  v0 = _PTLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __38__PTHumanDetections_unpackDetections___block_invoke_cold_1(v0);
  }
}

- (void)filterDetections
{
  v130 = *MEMORY[0x277D85DE8];
  *&self->_deadzone = 0x3F0000003DCCCCCDLL;
  self->_faceRectOverlapThreshold = 0.15;
  self->_anon_260[112] = 0;
  self->_anon_260[256] = 0;
  self->_anon_260[400] = 0;
  self->_anon_260[544] = 0;
  detectionsRawCount = self->_detectionsRawCount;
  if (detectionsRawCount >= 1)
  {
    v4 = 0;
    detectionsRaw = self->_detectionsRaw;
    do
    {
      v6 = &detectionsRaw[36 * v4];
      v6[8].i8[0] = 0;
      v7 = v129;
      v8 = -576;
      while (1)
      {
        if (v6->i32[0] == *&self->_faceDetectionsRaw[v8] && *&self->_faceDetectionsFiltered[v8 + 36] > 0.0)
        {
          v9 = v6[1];
          v10 = *&self->_faceDetectionsRaw[v8 + 16];
          v11 = vextq_s8(v9, v9, 8uLL).u64[0];
          v12 = vextq_s8(v10, v10, 8uLL).u64[0];
          *v9.i8 = vsub_f32(vmla_f32(*v9.i8, 0x3F0000003F000000, v11), vmla_f32(*v10.i8, 0x3F0000003F000000, v12));
          *v10.i8 = vsub_f32(0, v11);
          v13 = vsub_f32(0, v12);
          *v10.i32 = sqrtf(vaddv_f32(vmul_f32(v13, v13))) * 0.5 + sqrtf(vaddv_f32(vmul_f32(*v10.i8, *v10.i8))) * 0.5;
          if ((sqrtf(vaddv_f32(vmul_f32(*v9.i8, *v9.i8))) / *v10.i32) < 1.5)
          {
            break;
          }
        }

        ++v7;
        v8 += 144;
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      self->_faceDetectionsFiltered[v8 + 32] = 1;
      v6[8].i8[0] = 1;
      *v7 = v4;
LABEL_10:
      ++v4;
    }

    while (v4 != detectionsRawCount);
    for (i = 0; i != detectionsRawCount; ++i)
    {
      v15 = &detectionsRaw[36 * i];
      if ((v15[8].i8[0] & 1) == 0)
      {
        v16 = v129;
        v17 = -576;
        while (1)
        {
          if ((self->_faceDetectionsFiltered[v17 + 32] & 1) == 0)
          {
            v18 = v15[1];
            v19 = *&self->_faceDetectionsRaw[v17 + 16];
            v20 = vextq_s8(v18, v18, 8uLL).u64[0];
            v21 = vextq_s8(v19, v19, 8uLL).u64[0];
            *v18.i8 = vmaxnm_f32(vsub_f32(vminnm_f32(vadd_f32(*v18.i8, v20), vadd_f32(*v19.i8, v21)), vmaxnm_f32(*v18.i8, *v19.i8)), 0);
            v22 = vmul_lane_f32(*v18.i8, *v18.i8, 1);
            if (v22.f32[0] != 0.0)
            {
              v23 = vmul_f32(vzip1_s32(v20, v21), vzip2_s32(v20, v21));
              if (vdiv_f32(v22, vsub_f32(vadd_f32(v23, vdup_lane_s32(v23, 1)), v22)).f32[0] > 0.15)
              {
                v24 = self + v17;
                if (*&self->_faceDetectionsFiltered[v17 + 36] > 0.0)
                {
                  break;
                }
              }
            }
          }

          ++v16;
          v17 += 144;
          if (!v17)
          {
            goto LABEL_19;
          }
        }

        *(v24 + 292) = v15->i32[0];
        v24[1296] = 1;
        v15[8].i8[0] = 1;
        *v16 = i;
      }

LABEL_19:
      ;
    }
  }

  v25 = 0;
  detectionsFiltered = self->_detectionsFiltered;
  v27 = self->_detectionsRaw;
  faceDetectionsRaw = self->_faceDetectionsRaw;
  v29.i64[0] = 0x4000000040000000;
  v29.i64[1] = 0x4000000040000000;
  v30.i64[0] = 0x3F0000003F000000;
  v30.i64[1] = 0x3F0000003F000000;
  do
  {
    v31 = &detectionsFiltered[36 * v25];
    if (v31[8].i8[0] == 1)
    {
      v32 = &v27[36 * v129[v25]];
      if (v32->groupId == v31->i32[0])
      {
        v33 = v31[8].f32[1];
        if (v33 > 0.0)
        {
          v34 = *&v32[20].groupId;
          if (v34 > 250.0)
          {
            v35 = v31[1];
            v36 = *&v32[4].groupId;
            *&faceDetectionsRaw[16 * v25] = v36;
            deadzone = self->_deadzone;
            if (deadzone > 0.0)
            {
              v38 = 0;
              v39 = vextq_s8(v35, v35, 8uLL).u64[0];
              *v35.f32 = vmla_f32(*v35.f32, 0x3F0000003F000000, v39);
              *&v40 = v35.i64[0];
              *(&v40 + 1) = v39;
              v41 = vextq_s8(v36, v36, 8uLL).u64[0];
              *v42.i8 = vmla_f32(*v36.i8, 0x3F0000003F000000, v41);
              v42.u64[1] = v41;
              v43 = vsub_f32(*v42.i8, *v35.f32);
              v44 = fabsf(v31[4].f32[0]);
              if (v44 > 90.0)
              {
                v44 = 90.0;
              }

              *v2.f32 = vmul_n_f32(v39, deadzone + ((v44 / 90.0) * (self->_deadzoneMax - deadzone)));
              v45 = 1;
              do
              {
                v46 = v45;
                v119 = v43;
                v47 = *(&v119 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v38 & 1)));
                v118 = v2.i64[0];
                v48 = *(&v118 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v38 & 1)));
                if (v47 >= -v48)
                {
                  if (v47 <= v48)
                  {
                    v117 = v40;
                    v49 = *(&v117 & 0xFFFFFFFFFFFFFFF3 | (4 * (v38 & 3)));
                  }

                  else
                  {
                    v116 = v42;
                    v49 = *(&v116 & 0xFFFFFFFFFFFFFFF3 | (4 * (v38 & 3))) - v48;
                  }
                }

                else
                {
                  v115 = v42;
                  v49 = *(&v115 & 0xFFFFFFFFFFFFFFF3 | (4 * (v38 & 3))) + v48;
                }

                v45 = 0;
                v114 = v42;
                *(&v114 & 0xFFFFFFFFFFFFFFF3 | (4 * (v38 & 3))) = v49;
                v38 = 1;
                v42 = v114;
              }

              while ((v46 & 1) != 0);
              v50 = vextq_s8(v114, v114, 8uLL).u64[0];
              *v51.i8 = vmla_f32(*v114.i8, 0xBF000000BF000000, v50);
              v51.u64[1] = v50;
              v36 = v51;
            }

            v52 = 0;
            v53 = vextq_s8(v36, v36, 8uLL).u64[0];
            *v54.f32 = vmla_f32(*v36.i8, 0x3F0000003F000000, v53);
            *&v54.u32[2] = v53;
            v55 = vmlaq_f32(v31[2], xmmword_2244C5F60, vsubq_f32(v54, v31[2]));
            v56 = vmlaq_f32(v31[3], xmmword_2244C5F60, vsubq_f32(v55, v31[3]));
            v31[2] = v55;
            v31[3] = v56;
            v57 = vmlaq_f32(vnegq_f32(v56), v29, v55);
            v54.i64[0] = vextq_s8(v57, v57, 8uLL).u64[0];
            *v57.f32 = vmls_f32(*v57.f32, 0x3F0000003F000000, *v54.f32);
            v57.i64[1] = v54.i64[0];
            v31[1] = v57;
            v58 = v32 + 21;
            v59 = vsubq_f32(v57, v57);
            v60 = &v31[5].i8[4];
            v61 = v31 + 6;
            v62 = 1;
            do
            {
              v63 = v62;
              if (*(&v58->groupId + v52) == 1 && v60[v52] == 1)
              {
                v64 = v61[v52];
                v65 = *&v32[4 * v52 + 24].groupId;
                v66 = vextq_s8(v64, v64, 8uLL).u64[0];
                *v64.f32 = vmla_f32(*v64.f32, 0x3F0000003F000000, v66);
                *&v64.u32[2] = v66;
                v2 = vextq_s8(v65, v65, 8uLL);
                *v65.f32 = vmla_f32(*v65.f32, 0x3F0000003F000000, *v2.f32);
                v65.i64[1] = v2.i64[0];
                v67 = vmlaq_f32(v64, v30, vsubq_f32(v65, v64));
                v65.i64[0] = vextq_s8(v67, v67, 8uLL).u64[0];
                *v67.i8 = vmls_f32(*v67.i8, 0x3F0000003F000000, *v65.f32);
                v67.i64[1] = v65.i64[0];
                v61[v52] = v67;
              }

              else
              {
                v68.i64[0] = vaddq_f32(v59, v61[v52]).u64[0];
                v68.i64[1] = v61[v52].i64[1];
                v61[v52] = v68;
              }

              v62 = 0;
              v60[v52] = *(&v58->groupId + v52);
              v52 = 1;
            }

            while ((v63 & 1) != 0);
            v69 = v31[4];
            v70 = *&v32[16].groupId;
            v71 = vsubq_f32(v69, v70).f32[0];
            v2.f32[0] = fabsf(v71);
            v35.i32[0] = 1119092736;
            v2 = vdupq_lane_s32(*&vcgtq_f32(v2, v35), 0);
            v72 = v69;
            *v72.i32 = v70.f32[0] + (v71 * 0.3);
            v69.i32[0] = v70.i32[0];
            v73 = vbslq_s8(v2, v69, v72);
            v31[4].i32[2] = v73.i32[2];
            v31[4].i64[0] = v73.i64[0];
            v33 = v31[8].f32[1];
            v34 = *&v32[20].groupId;
          }

          v31[8].f32[1] = fminf(v33 + 0.1, 2.0);
          v31[5].f32[0] = v34 + ((v31[5].f32[0] - v34) * 0.5);
        }
      }
    }

    ++v25;
  }

  while (v25 != 4);
  v74 = &self->_anon_260[116];
  v75 = 4;
  __asm { FMOV            V1.2S, #1.0 }

  do
  {
    if ((*(v74 - 1) & 1) == 0)
    {
      v81 = *(v74 - 29);
      v82 = vextq_s8(v81, v81, 8uLL).u64[0];
      *v81.i8 = vmla_f32(*v81.i8, 0x3F0000003F000000, v82);
      v83 = vminnm_f32(*v81.i8, vsub_f32(_D1, *v81.i8));
      v84 = vsub_f32(v83, vmul_f32(v82, 0x3F0000003F000000));
      if (v84.f32[0] >= v84.f32[1])
      {
        v84.f32[0] = v84.f32[1];
      }

      if (v83.f32[0] >= v83.f32[1])
      {
        v83.f32[0] = v83.f32[1];
      }

      if (v83.f32[0] >= 0.2 || v84.f32[0] > 0.05)
      {
        v86 = 0.01;
      }

      else
      {
        v86 = 0.1;
      }

      v87 = *v74 - v86;
      if (v87 < 0.0)
      {
        v87 = 0.0;
      }

      *v74 = v87;
      v88 = *(v74 - 13) - v86;
      if (v88 < 0.0)
      {
        v88 = 0.0;
      }

      *(v74 - 13) = v88;
    }

    v74 += 36;
    --v75;
  }

  while (v75);
  v89 = self->_detectionsRawCount;
  if (v89 >= 1)
  {
    for (j = 0; j < v89; ++j)
    {
      v91 = &v27[36 * j];
      if ((v91[32].groupId & 1) == 0)
      {
        v92 = 0;
        v93 = 2.0;
        v94 = -1;
        v95 = &self->_anon_260[116];
        do
        {
          v96 = *v95;
          v95 += 36;
          v97 = v96;
          if (v96 < v93)
          {
            v93 = v97;
            v94 = v92;
          }

          ++v92;
        }

        while (v92 != 4);
        v98 = 0;
        v99 = *&v91->groupId;
        v102 = *&v91[4].groupId;
        v100 = *&v91[32].groupId;
        v127 = *&v91[28].groupId;
        v128 = v100;
        v101 = *&v91[24].groupId;
        v125 = *&v91[20].groupId;
        v126 = v101;
        v124 = *&v91[16].groupId;
        v120 = v99;
        v121 = v102;
        v99.i64[0] = vextq_s8(v102, v102, 8uLL).u64[0];
        *v102.i8 = vmla_f32(*v102.i8, 0x3F0000003F000000, *v99.i8);
        *&v103 = v102.i64[0];
        *(&v103 + 1) = v99.i64[0];
        v122 = v103;
        v123 = v103;
        DWORD1(v128) = 1036831949;
        v104 = 1;
        do
        {
          v105 = v104;
          if ((*(&v125 + v98 + 4) & 1) == 0)
          {
            *(&v126 + v98) = v102;
          }

          v104 = 0;
          v98 = 1;
        }

        while ((v105 & 1) != 0);
        v106 = &detectionsFiltered[36 * v94];
        v107 = v127;
        *&v106[24].groupId = v126;
        *&v106[28].groupId = v107;
        *&v106[32].groupId = v128;
        v108 = v123;
        *&v106[8].groupId = v122;
        *&v106[12].groupId = v108;
        v109 = v125;
        *&v106[16].groupId = v124;
        *&v106[20].groupId = v109;
        v110 = v121;
        *&v106->groupId = v120;
        *&v106[4].groupId = v110;
        LOBYTE(v106[32].groupId) = 1;
        *&faceDetectionsRaw[16 * v94] = *&v91[4].groupId;
        v89 = self->_detectionsRawCount;
      }
    }
  }

  v111 = 0;
  v112 = 1328;
  v113 = 1264;
  do
  {
    *(&self->super.isa + v113) = *&self->_anon_260[v111];
    if (*&self->_anon_260[v111 + 116] == 0.0)
    {
      *(&self->super.isa + v112) = 3;
    }

    else if (self->_anon_260[v111 + 112])
    {
      *(&self->super.isa + v112) = fabsf(*&self->_anon_260[v111 + 48]) >= 22.5;
    }

    else
    {
      *(&self->super.isa + v112) = 2;
    }

    v112 += 4;
    v113 += 16;
    v111 += 144;
  }

  while (v111 != 576);
}

- (void)clearFilterDetections
{
  LODWORD(detectionsRawCount) = self->_detectionsRawCount;
  if (detectionsRawCount < 1)
  {
    goto LABEL_9;
  }

  v3 = 0;
  do
  {
    v4 = 0;
    v5 = &self->_detectionsRaw[36 * v3];
    v10 = *&v5->groupId;
    v6 = *&v5[4].groupId;
    v7 = *&v5[32].groupId;
    v25 = *&v5[28].groupId;
    v26 = v7;
    v8 = *&v5[24].groupId;
    v23 = *&v5[20].groupId;
    v24 = v8;
    v22 = *&v5[16].groupId;
    v21 = v10;
    v9 = vextq_s8(v6, v6, 8uLL).u64[0];
    *&v10 = vmla_f32(*v6.i8, 0x3F0000003F000000, v9);
    *&v11 = v10;
    *(&v11 + 1) = v9;
    DWORD1(v26) = 1065353216;
    v12 = 1;
    do
    {
      v13 = v12;
      if ((*(&v23 + v4 + 4) & 1) == 0)
      {
        *(&v24 + v4) = v10;
      }

      v12 = 0;
      v4 = 1;
    }

    while ((v13 & 1) != 0);
    v14 = &self->_detectionsFiltered[36 * v3];
    v15 = v25;
    *&v14[24].groupId = v24;
    *&v14[28].groupId = v15;
    *&v14[32].groupId = v26;
    *&v14[8].groupId = v11;
    *&v14[12].groupId = v11;
    v16 = v23;
    *&v14[16].groupId = v22;
    *&v14[20].groupId = v16;
    *&v14->groupId = v21;
    *&v14[4].groupId = v6;
    *&self->_faceDetectionsFiltered[16 * v3] = v6;
    self->_faceDetectionsFilteredState[v3] = 0;
    *&self->_faceDetectionsRaw[16 * v3++] = *&v5[4].groupId;
    detectionsRawCount = self->_detectionsRawCount;
  }

  while (v3 < detectionsRawCount);
  if (detectionsRawCount <= 3)
  {
LABEL_9:
    v17 = &self->_detectionsFiltered[36 * detectionsRawCount];
    v18 = &self->_faceDetectionsFilteredState[detectionsRawCount];
    v19 = detectionsRawCount + 1;
    do
    {
      v17->groupId = -1;
      v17 += 36;
      *v18++ = 3;
    }

    while (v19++ != 4);
  }
}

- (void)reset
{
  self->_detectionsRawCount = 0;
  memset_pattern16(self->_faceDetectionsFilteredState, &unk_2244C5F70, 0x10uLL);
  v3 = &self->_anon_260[116];
  v4 = 4;
  do
  {
    *v3 = 0;
    *(v3 - 13) = 0;
    *(v3 - 4) = 0;
    v3 += 144;
    --v4;
  }

  while (v4);
}

- (void)renderDebugRects:(id)rects outTexture:(id)texture debugFaceRects:(BOOL)faceRects
{
  v56 = *MEMORY[0x277D85DE8];
  rectsCopy = rects;
  textureCopy = texture;
  if (self->_detectionsRawCount >= 1)
  {
    v9 = 0;
    do
    {
      v10 = 0;
      v11 = &self->_detectionsRaw[36 * v9];
      v12 = *&v11[24].groupId;
      v13 = *&v11[28].groupId;
      v53 = *&v11[4].groupId;
      v54 = v12;
      v55 = v13;
      do
      {
        v49 = *(&v53 + v10);
        width = [textureCopy width];
        height = [textureCopy height];
        width2 = [textureCopy width];
        height2 = [textureCopy height];
        v18.i64[0] = width2;
        v18.i64[1] = height2;
        v19.i64[0] = width;
        v19.i64[1] = height;
        [(PTUtil *)self->_util renderRect:rectsCopy rect:0 color:textureCopy fill:*vcvtq_s32_f32(vmulq_f32(v49 outTexture:vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v19)), vcvtq_f64_u64(v18)))).i64, 0.0000305175853];
        v10 += 16;
      }

      while (v10 != 48);
      ++v9;
    }

    while (v9 < self->_detectionsRawCount);
  }

  v20 = 0;
  __asm { FMOV            V1.4S, #1.0 }

  *&v8 = 0x1000000100;
  v45 = v8;
  v47 = *&_Q1;
  do
  {
    v26 = &self->_detectionsFiltered[36 * v20];
    if (*&v26[33].groupId > 0.0)
    {
      v27 = 0;
      v28 = *&v26[24].groupId;
      v29 = *&v26[28].groupId;
      v46 = *&v26[4].groupId;
      v53 = v46;
      v54 = v28;
      v55 = v29;
      do
      {
        v50 = *(&v53 + v27);
        width3 = [textureCopy width];
        height3 = [textureCopy height];
        width4 = [textureCopy width];
        height4 = [textureCopy height];
        v34.i64[0] = width4;
        v34.i64[1] = height4;
        v35.i64[0] = width3;
        v35.i64[1] = height3;
        [(PTUtil *)self->_util renderRect:rectsCopy rect:0 color:textureCopy fill:*vcvtq_s32_f32(vmulq_f32(v50 outTexture:vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v35)), vcvtq_f64_u64(v34)))).i64, v47];
        v27 += 16;
      }

      while (v27 != 48);
      width5 = [textureCopy width];
      height5 = [textureCopy height];
      v38.i64[0] = width5;
      v38.i64[1] = height5;
      *&v51 = vcvt_s32_f32(vmul_f32(*&v46, vcvt_f32_f64(vcvtq_f64_u64(v38))));
      [(PTUtil *)self->_util renderRect:rectsCopy rect:0 color:textureCopy fill:v51 outTexture:v47];
      [(PTUtil *)self->_util renderRect:rectsCopy rect:1 color:textureCopy fill:COERCE_DOUBLE(vadd_s32(*&v51 outTexture:0x200000002)), v47];
      *&v51 = [textureCopy width] * *&v46;
      _S0 = [textureCopy height];
      _V2.S[1] = DWORD1(v46);
      __asm { FMLA            S1, S0, V2.S[1] }

      [(PTUtil *)self->_util renderRect:rectsCopy rect:0 color:textureCopy fill:COERCE_DOUBLE(vcvt_s32_f32(__PAIR64__(_S1 outTexture:LODWORD(v51)))), v47];
      *&v51 = [textureCopy width] * *&v46;
      _S0 = [textureCopy height];
      _V2.S[1] = DWORD1(v46);
      __asm { FMLA            S1, S0, V2.S[1] }

      v52 = vcvt_s32_f32(__PAIR64__(_S1, LODWORD(v51)));
      [(PTUtil *)self->_util renderRect:rectsCopy rect:0 color:textureCopy fill:*&v52 outTexture:v47];
      [(PTUtil *)self->_util renderRect:rectsCopy rect:1 color:textureCopy fill:COERCE_DOUBLE(vadd_s32(v52 outTexture:0x200000002)), v47];
    }

    ++v20;
  }

  while (v20 != 4);
}

- (void)initWithMetalContext:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_util";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", &v1, 0xCu);
}

@end