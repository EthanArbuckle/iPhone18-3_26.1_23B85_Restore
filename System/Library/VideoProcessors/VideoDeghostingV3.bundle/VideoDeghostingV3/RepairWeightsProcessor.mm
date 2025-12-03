@interface RepairWeightsProcessor
- (RepairWeightsProcessor)init;
- (uint64_t)init;
- (void)_temporalFilterMetaContainerAtIndex:(int64_t)index ofQueue:(id)queue lookaheadBufferLen:(int)len;
- (void)reset;
- (void)setWeightsForROIAtIndex:(RepairWeightsProcessor *)self ofMetaContainer:(SEL)container ROIMotion:(int64_t)motion ROIMotionLongRange:(id *)range isLowLight:(float)light;
- (void)temporalFilterBlendingWeights:(id)weights lookaheadMetaBufs:(id)bufs metaBuf_HW:(id)w lookaheadMetaBufs_HW:(id)hW hwMode:(BOOL)mode;
- (void)temporalFilterMetaContainerAtIndex_PA_L:(int64_t)l ofQueue:(id)queue ofQueue_HW:(id)w lookaheadBufferLen:(int)len;
@end

@implementation RepairWeightsProcessor

- (RepairWeightsProcessor)init
{
  v6.receiver = self;
  v6.super_class = RepairWeightsProcessor;
  v2 = [(RepairWeightsProcessor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(RepairWeightsProcessor *)v2 reset];
    v4 = v3;
  }

  else
  {
    [RepairWeightsProcessor init];
  }

  return v3;
}

- (void)reset
{
  v3 = +[NSMutableArray array];
  lookbackMetaBufs = self->_lookbackMetaBufs;
  self->_lookbackMetaBufs = v3;

  v5 = +[NSMutableArray array];
  lookbackMetaBufs_HW = self->_lookbackMetaBufs_HW;
  self->_lookbackMetaBufs_HW = v5;

  self->_frameIdx = 0;
}

- (void)temporalFilterMetaContainerAtIndex_PA_L:(int64_t)l ofQueue:(id)queue ofQueue_HW:(id)w lookaheadBufferLen:(int)len
{
  queueCopy = queue;
  wCopy = w;
  if (len)
  {
    v10 = [queueCopy objectAtIndex:l];
    mutableBytes = [v10 mutableBytes];

    v12 = [wCopy objectAtIndex:l];
    mutableBytes2 = [v12 mutableBytes];

    v86 = mutableBytes;
    if (mutableBytes->i16[0] < 1)
    {
      goto LABEL_62;
    }

    v13 = 0;
    if (len >= 15)
    {
      lenCopy = 15;
    }

    else
    {
      lenCopy = len;
    }

    lenCopy2 = len;
    lenCopy3 = len;
    v88 = lenCopy;
    lenCopy4 = len;
    v84 = mutableBytes2 + 2436;
    v17 = mutableBytes2 + 2308;
    v83 = vdupq_n_s32(0x3E99999Au);
    lenCopy5 = len;
    lenCopy6 = len;
    v82 = mutableBytes2 + 2308;
    while (1)
    {
      v18 = v86[133].i32[v13 + 1];
      v19 = &v86[4 * v13 + 5];
      v20 = *(v19 + 24);
      v91 = *(v19 + 16);
      if (![queueCopy count])
      {
        v63 = -1;
        v64 = -1;
        v62 = -1;
        v31 = 0.0;
        v30 = 0.0;
        v26 = 0.0;
        v25 = 0.0;
        v24 = 0.0;
        v59 = 1.0;
        v60 = 1.0;
        v61 = 1.0;
        goto LABEL_48;
      }

      v87 = v13;
      v21 = 0;
      v22 = sqrtf(vaddv_f32(vmul_f32(v20, v20)));
      v23 = v22 + v22;
      v24 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
      v95 = 0.0;
      v96 = 0.0;
      v27 = -1;
      v28 = 0.0;
      v29 = 0.0;
      v30 = 0.0;
      v31 = 0.0;
      v32 = -1;
      v94 = -1;
      v90 = 0.0;
      v92 = 0.0;
      do
      {
        if ((v21 - l) >= 0)
        {
          v33 = v21 - l;
        }

        else
        {
          v33 = l - v21;
        }

        v34 = queueCopy;
        if (v33 < lenCopy2)
        {
          v97 = v33;
          v35 = [queueCopy objectAtIndex:v21];
          mutableBytes3 = [v35 mutableBytes];

          v37 = wCopy;
          v38 = [wCopy objectAtIndex:v21];
          mutableBytes4 = [v38 mutableBytes];

          v40 = mutableBytes3->i16[0];
          if (v40 < 1)
          {
            wCopy = v37;
            lenCopy2 = lenCopy5;
            v55 = v97;
          }

          else
          {
            v41 = 0;
            v42 = 1.0 - fmin(fmax((fabsf((v21 - l)) / lenCopy6), 0.0), 1.0);
            v43 = &mutableBytes3[133] + 2;
            v44 = (mutableBytes4 + 2436);
            v45 = mutableBytes3 + 8;
            v46 = 0.0;
            wCopy = v37;
            lenCopy2 = lenCopy5;
            v48 = v95;
            v47 = v96;
            do
            {
              if (v18 == *v43)
              {
                v49 = vsub_f32(v91, v45[-1]);
                v50 = fminf(fmaxf(sqrtf(vaddv_f32(vmul_f32(v49, v49))) / (((v23 + sqrtf(vaddv_f32(vmul_f32(*v45, *v45)))) * 0.5) + 16.0), 0.0), 1.0);
                if ((v41 & (v46 < v50)) == 0)
                {
                  v46 = v50;
                }

                v51 = *v44 * v42;
                if (v51 > v28)
                {
                  v27 = v21;
                  v30 = *v44;
                  v28 = *v44 * v42;
                }

                v52 = 1.0 - *(v44 - 32);
                v53 = v52 * v42;
                v54 = v52;
                if (v29 < v53)
                {
                  v32 = v21;
                  v31 = v54;
                  v29 = v53;
                }

                v24 = v24 + v42;
                v25 = v25 + v51;
                v26 = v26 + v53;
                if (v21 < l)
                {
                  v47 = v47 + (v42 * *(v43 + 115));
                  v48 = v48 + v42;
                }

                v41 = 1;
              }

              v43 += 2;
              ++v44;
              v45 += 4;
              --v40;
            }

            while (v40);
            v95 = v48;
            v96 = v47;
            v55 = v97;
            if (((v97 <= v88) & v41) != 0)
            {
              v92 = v92 + 1.0;
              v56 = v90;
              if (v21 != l)
              {
                v56 = v90 + v46;
              }

              v90 = v56;
              goto LABEL_40;
            }

            if (v41)
            {
LABEL_40:
              v34 = queueCopy;
              goto LABEL_41;
            }
          }

          v57 = v94 - l;
          if (v57 < 0)
          {
            v57 = l - v94;
          }

          if (v55 >= v57)
          {
            v58 = v94;
          }

          else
          {
            v58 = v21;
          }

          if (v94 == -1)
          {
            v58 = v21;
          }

          v94 = v58;
          goto LABEL_40;
        }

LABEL_41:
        ++v21;
      }

      while ([v34 count] > v21);
      v59 = 1.0;
      v60 = 1.0;
      v61 = 1.0;
      if (v92 > 1.0)
      {
        v59 = fminf(fmaxf(((v90 / (v92 + -1.0)) + -0.1) + ((v90 / (v92 + -1.0)) + -0.1), 0.0), 1.0);
      }

      v62 = v27;
      v63 = v32;
      lenCopy3 = lenCopy6;
      v64 = v94;
      if (v95 > 0.0)
      {
        v59 = (v96 / v95) + ((v59 - (v96 / v95)) * 0.3);
      }

      v13 = v87;
      v17 = v82;
LABEL_48:
      v86[191].f32[v13] = v59;
      v65 = fmax((v60 - v59) * 5.0, v60) * lenCopy4;
      v66 = fabsf((v62 - l));
      if (v62 >= l)
      {
        v67 = lenCopy3;
      }

      else
      {
        v67 = v65;
      }

      v68 = v60 - fmin(fmax((v66 / v67), 0.0), v60);
      v69 = v30 * v68;
      v70 = fabsf((v63 - l));
      if (v63 >= l)
      {
        v65 = lenCopy3;
      }

      v71 = v60 - fmin(fmax((v70 / v65), 0.0), v60);
      v72.i32[0] = 0;
      v72.i32[3] = 0;
      v72.f32[1] = v25 / v24;
      v72.f32[2] = v26 / v24;
      v73.i32[0] = 0;
      v73.i32[3] = 0;
      v73.f32[1] = v69;
      v73.f32[2] = v61 - (v31 * v71);
      v74 = vmlaq_n_f32(v73, vsubq_f32(v72, v73), v59);
      v75 = vmlaq_f32(v74, v83, vsubq_f32(v73, v74));
      v76 = v75.i32[1];
      if (*&v84[4 * v13] >= v75.f32[1])
      {
        v76 = *&v84[4 * v13];
      }

      *&v84[4 * v13] = v76;
      v77 = *&v17[4 * v13];
      if (v77 >= v75.f32[2])
      {
        v77 = v75.f32[2];
      }

      if ((v64 & 0x80000000) == 0)
      {
        v78 = v60 - fmin(fmax((fabsf((v64 - l)) / lenCopy3), 0.0), v60);
        v79 = v60 - v77;
        v80 = v78;
        if (v79 < v80)
        {
          v79 = v80;
        }

        v77 = v60 - v79;
      }

      *&v17[4 * v13++] = v77;
      if (v13 >= v86->i16[0])
      {
LABEL_62:
        syncWeightsSpatial(v86, mutableBytes2);
        break;
      }
    }
  }
}

- (void)setWeightsForROIAtIndex:(RepairWeightsProcessor *)self ofMetaContainer:(SEL)container ROIMotion:(int64_t)motion ROIMotionLongRange:(id *)range isLowLight:(float)light
{
  v5 = &range->var0 + 2 * motion;
  v6.i32[0] = *(v5 + 1674);
  v6.i32[1] = *(v5 + 1546);
  __asm { FMOV            V1.2S, #1.0 }

  v12 = vminnm_f32(vmaxnm_f32(vdiv_f32(vadd_f32(v6, 0xBC800000BB83126FLL), 0x3DE000003DC49BA6), 0), _D1);
  if (v12.f32[0] < v12.f32[1])
  {
    v12.f32[0] = v12.f32[1];
  }

  *(v5 + 1386) = v12.i32[0];
}

- (void)_temporalFilterMetaContainerAtIndex:(int64_t)index ofQueue:(id)queue lookaheadBufferLen:(int)len
{
  queueCopy = queue;
  v167 = queueCopy;
  if (len <= 0)
  {
    [RepairWeightsProcessor _temporalFilterMetaContainerAtIndex:ofQueue:lookaheadBufferLen:];
    goto LABEL_108;
  }

  v8 = [queueCopy objectAtIndex:index];
  mutableBytes = [v8 mutableBytes];

  indexCopy = index;
  if ([v167 count])
  {
    v10 = 0;
    v11 = -index;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      v14 = [v167 objectAtIndex:v10];
      mutableBytes2 = [v14 mutableBytes];

      v16 = 1.0 - fminf(fmaxf(fabsf(v11) / len, 0.0), 1.0);
      v12 = v12 + (v16 * mutableBytes2[315]);
      v13 = v13 + v16;
      ++v10;
      ++v11;
    }

    while ([v167 count] > v10);
    v17 = v12 / v13;
    index = indexCopy;
  }

  else
  {
    v17 = NAN;
  }

  mutableBytes[157].f32[1] = v17;
  mutableBytes[158].f32[1] = 1.0 / v17;
  if (mutableBytes->i16[0] < 1)
  {
    goto LABEL_104;
  }

  v18 = 0;
  if (len >= 2)
  {
    lenCopy = 2;
  }

  else
  {
    lenCopy = len;
  }

  if (len >= 15)
  {
    lenCopy2 = 15;
  }

  else
  {
    lenCopy2 = len;
  }

  v145 = mutableBytes + 5;
  v146 = &mutableBytes[133] + 4;
  lenCopy3 = len;
  v148 = lenCopy2;
  v149 = lenCopy2;
  v144 = mutableBytes + 207;
  lenCopy4 = len;
  v21 = mutableBytes + 1141;
  v141 = mutableBytes + 757;
  v142 = mutableBytes + 159;
  v140 = mutableBytes + 821;
  v139 = mutableBytes + 789;
  v138 = mutableBytes + 853;
  lenCopy5 = len;
  v136 = mutableBytes + 1141;
  v137 = mutableBytes;
  v150 = lenCopy;
  lenCopy6 = len;
  do
  {
    v152 = *&v146[4 * v18];
    v23 = &v145[4 * v18];
    v25 = v23[2];
    v24 = v23[3];
    if (![v167 count])
    {
      v96 = 1.0;
      v94 = -1;
      v98 = 0.0;
      v99 = -1;
      v100 = 0.0;
      v101 = 0.0;
      v102 = 0;
      v103 = 0;
      v93 = -1;
      v92 = -1;
      v91 = -1;
      v104 = 0.0;
      v105 = 0.0;
      v106 = 0.0;
      v107 = 0.0;
      v108 = 0.0;
      v109 = 0.0;
      v110 = 0.0;
      v111 = 0.0;
      v95 = -1;
      v112 = 0.0;
      v113 = 0.0;
      v97 = 1.0;
      goto LABEL_80;
    }

    v147 = v18;
    v27 = 0;
    v28 = -1;
    v165 = 0;
    v171 = 0.0;
    v166 = 0.0;
    v169 = 0.0;
    *&v26 = 0;
    v164 = v26;
    v151 = 0.0;
    v153 = 0.0;
    v29 = -1;
    v30 = -1;
    v31 = -1;
    v32 = -1;
    v160 = 0.0;
    v170 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v172 = 0.0;
    v168 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    v162 = 0.0;
    v163 = 0.0;
    v161 = 0.0;
    v158 = 0.0;
    v159 = 0.0;
    v157 = -1;
    v37 = 0.0;
    v173 = 0.0;
    v38 = sqrtf(vaddv_f32(vmul_f32(v24, v24)));
    do
    {
      v39 = v27 - index;
      if ((v27 - index) >= 0)
      {
        v40 = v27 - index;
      }

      else
      {
        v40 = index - v27;
      }

      v41 = v167;
      if (v40 < lenCopy5)
      {
        v42 = [v167 objectAtIndex:v27];
        mutableBytes3 = [v42 mutableBytes];

        v45 = mutableBytes3->i16[0];
        if (v45 < 1)
        {
          lenCopy5 = lenCopy6;
          index = indexCopy;
          v53 = v166;
          v54 = v165;
          v55 = v164;
          v57 = v162;
          v56 = v163;
          v59 = v160;
          v58 = v161;
          v61 = v158;
          v60 = v159;
          goto LABEL_65;
        }

        v46 = 0;
        v47 = fabsf(v39);
        *v44.i32 = 1.0 - fminf(fmaxf(v47 / lenCopy3, 0.0), 1.0);
        v48 = 1.0 - fminf(fmaxf(v47 / v149, 0.0), 1.0);
        v49 = vdup_lane_s32(v44, 0);
        v50 = mutableBytes3 + 8;
        v51 = INFINITY;
        v52 = mutableBytes3;
        index = indexCopy;
        v53 = v166;
        v54 = v165;
        v55 = v164;
        v57 = v162;
        v56 = v163;
        v59 = v160;
        v58 = v161;
        v61 = v158;
        v60 = v159;
        do
        {
          v62 = *v50;
          v63 = (v38 + sqrtf(vaddv_f32(vmul_f32(v62, v62)))) * 0.5;
          v64 = vsub_f32(v25, v50[-1]);
          v65 = fminf(fmaxf((sqrtf(vaddv_f32(vmul_f32(v64, v64))) - v63) / ((v63 + 64.0) - v63), 0.0), 1.0);
          if (v51 >= v65)
          {
            v51 = v65;
          }

          if (v152 == mutableBytes3[133].i32[1])
          {
            if ((v46 & 1) == 0)
            {
              v46 = 1;
            }

            v66 = mutableBytes3[757].f32[0];
            v67 = fminf(fmaxf(v66, 0.0), 0.125);
            v68 = (*v44.i32 * v67) <= v36;
            if ((*v44.i32 * v67) > v36)
            {
              v36 = *v44.i32 * v67;
            }

            v69 = v168;
            if (!v68)
            {
              v69 = v67;
            }

            v168 = v69;
            if (!v68)
            {
              v32 = v27;
            }

            v70 = mutableBytes3[789].f32[0];
            v71 = fminf(fmaxf(v70, 0.0), 0.125);
            v72 = (*v44.i32 * v71) <= v34;
            if ((*v44.i32 * v71) > v34)
            {
              v34 = *v44.i32 * v71;
            }

            v73 = v170;
            if (!v72)
            {
              v73 = v71;
            }

            v170 = v73;
            if (!v72)
            {
              v31 = v27;
            }

            v74 = mutableBytes3[821].f32[0];
            v75 = fminf(fmaxf(v74, 0.0), 0.1);
            v76 = (*v44.i32 * v75) <= v35;
            if ((*v44.i32 * v75) > v35)
            {
              v35 = *v44.i32 * v75;
            }

            v77 = v172;
            if (!v76)
            {
              v77 = v75;
            }

            v172 = v77;
            if (!v76)
            {
              v30 = v27;
            }

            v78 = mutableBytes3[853].f32[0];
            v79 = fminf(fmaxf(v78, 0.0), 0.1);
            if ((*v44.i32 * v79) > v33)
            {
              v33 = *v44.i32 * v79;
              v59 = v79;
              v29 = v27;
            }

            v80 = mutableBytes3[1141].f32[0];
            if ((*v44.i32 * v80) > v37)
            {
              v37 = *v44.i32 * v80;
              v61 = mutableBytes3[1141].f32[0];
              v28 = v27;
            }

            if (v40 <= v150)
            {
              v54 = vmla_f32(v54, v52[159], v49);
              *&v55 = *v44.i32 + *&v55;
            }

            v60 = v60 + (*v44.i32 * v66);
            v58 = v58 + (*v44.i32 * v70);
            v57 = v57 + (*v44.i32 * v74);
            v56 = v56 + (*v44.i32 * v78);
            v173 = v173 + (*v44.i32 * v80);
            v53 = *v44.i32 + v53;
            __asm { FMOV            V5.2S, #1.0 }

            v86 = vminnm_f32(vmaxnm_f32(vmul_f32(vsub_f32(vabs_f32(v52[325]), v62), vdup_n_s32(0x3D800000u)), 0), _D5);
            if (v86.f32[0] < v86.f32[1])
            {
              v86.f32[0] = v86.f32[1];
            }

            v171 = v171 + (v48 * v86.f32[0]);
            v169 = v48 + v169;
          }

          mutableBytes3 = (mutableBytes3 + 4);
          ++v52;
          v50 += 4;
          --v45;
        }

        while (v45);
        if (v40 < 5 || (v46 & 1) == 0 || v40 > v148)
        {
          lenCopy5 = lenCopy6;
          if (v46)
          {
            v158 = v61;
            v159 = v60;
            v160 = v59;
            v161 = v58;
            v162 = v57;
            v163 = v56;
            v164 = v55;
            v165 = v54;
            v166 = v53;
LABEL_73:
            v41 = v167;
            goto LABEL_74;
          }

LABEL_65:
          v158 = v61;
          v159 = v60;
          v160 = v59;
          v161 = v58;
          v162 = v57;
          v163 = v56;
          v164 = v55;
          v165 = v54;
          v166 = v53;
          if (v157 == -1)
          {
            v157 = v27;
          }

          else
          {
            v89 = v157 - index;
            if (v89 < 0)
            {
              v89 = index - v157;
            }

            if (v40 >= v89)
            {
              v90 = v157;
            }

            else
            {
              v90 = v27;
            }

            v157 = v90;
          }

          goto LABEL_73;
        }

        v158 = v61;
        v159 = v60;
        v160 = v59;
        v161 = v58;
        v162 = v57;
        v163 = v56;
        v164 = v55;
        v165 = v54;
        v166 = v53;
        v153 = v153 + 1.0;
        v87 = v151;
        v88 = v151 + v51;
        if (v27 != indexCopy)
        {
          v87 = v88;
        }

        v151 = v87;
        v41 = v167;
        lenCopy5 = lenCopy6;
      }

LABEL_74:
      ++v27;
    }

    while ([v41 count] > v27);
    v91 = v32;
    v92 = v31;
    v93 = v30;
    v94 = v29;
    v95 = v28;
    v96 = 1.0;
    if (v153 <= 1.0)
    {
      mutableBytes = v137;
      v97 = 1.0;
    }

    else
    {
      v97 = 1.0;
      v96 = fminf(fmaxf(v151 / (v153 + -1.0), 0.0), 1.0);
      mutableBytes = v137;
    }

    v18 = v147;
    v21 = v136;
    v99 = v157;
    v100 = v166;
    v103 = v165;
    v102 = v164;
    v109 = v162;
    v108 = v163;
    v104 = v160;
    v110 = v161;
    v112 = v158;
    v111 = v159;
    v106 = v172;
    v113 = v173;
    v105 = v170;
    v98 = v171;
    v107 = v168;
    v101 = v169;
LABEL_80:
    v114 = v98 / v101;
    if (v101 <= 0.0)
    {
      v114 = v98;
    }

    if (v96 < v114)
    {
      v96 = v114;
    }

    v144->f32[v18] = v96;
    v115 = fmax((1.0 - v96) * 2.5, 0.5) * lenCopy4;
    v116 = fabsf((v91 - index));
    if (v91 >= index)
    {
      v117 = lenCopy3;
    }

    else
    {
      v117 = v115;
    }

    v118 = v107 * (v97 - fminf(fmaxf(v116 / v117, 0.0), v97));
    v119 = fabsf((v92 - index));
    if (v92 >= index)
    {
      v120 = lenCopy3;
    }

    else
    {
      v120 = v115;
    }

    v121 = v105 * (v97 - fminf(fmaxf(v119 / v120, 0.0), v97));
    v122 = fabsf((v93 - index));
    if (v93 >= index)
    {
      v123 = lenCopy3;
    }

    else
    {
      v123 = v115;
    }

    v124 = v106 * (v97 - fminf(fmaxf(v122 / v123, 0.0), v97));
    v125 = fabsf((v94 - index));
    if (v94 >= index)
    {
      v126 = lenCopy3;
    }

    else
    {
      v126 = v115;
    }

    v127 = v104 * (v97 - fminf(fmaxf(v125 / v126, 0.0), v97));
    v128 = fabsf((v95 - index));
    if (v95 >= index)
    {
      v115 = lenCopy3;
    }

    v129 = fminf(fmaxf(v128 / v115, 0.0), v97);
    v21->f32[v18] = ((v112 * (v97 - v129)) + (v114 * ((v113 / v100) - (v112 * (v97 - v129))))) + (((v112 * (v97 - v129)) - ((v112 * (v97 - v129)) + (v114 * ((v113 / v100) - (v112 * (v97 - v129)))))) * 0.3);
    v142[v18] = vminnm_f32(v142[v18], vdiv_f32(v103, vdup_lane_s32(v102, 0)));
    v141->f32[v18] = (v118 + (v96 * ((v111 / v100) - v118))) + ((v118 - (v118 + (v96 * ((v111 / v100) - v118)))) * 0.3);
    v140->f32[v18] = (v124 + (v96 * ((v109 / v100) - v124))) + ((v124 - (v124 + (v96 * ((v109 / v100) - v124)))) * 0.3);
    v139->f32[v18] = (v121 + (v96 * ((v110 / v100) - v121))) + ((v121 - (v121 + (v96 * ((v110 / v100) - v121)))) * 0.3);
    v138->f32[v18] = (v127 + (v96 * ((v108 / v100) - v127))) + ((v127 - (v127 + (v96 * ((v108 / v100) - v127)))) * 0.3);
    if ((v99 & 0x80000000) == 0 && (mutableBytes[133].i8[0] & 1) == 0)
    {
      v130 = v97 - fminf(fmaxf(fabsf((v99 - index)) / lenCopy3, 0.0), v97);
      if (v21->f32[v18] >= v130)
      {
        v130 = v21->f32[v18];
      }

      v21->f32[v18] = v130;
    }

    ++v18;
  }

  while (v18 < mutableBytes->i16[0]);
LABEL_104:
  syncRoiMotions(mutableBytes);
  if (mutableBytes->i16[0] >= 1)
  {
    v131 = 0;
    v132 = 1514;
    do
    {
      v133 = (mutableBytes + v132 * 4);
      v134 = mutableBytes[207].f32[v131];
      v133[32] = mutableBytes->f32[v132] + (v134 * (mutableBytes[32].f32[v132] - mutableBytes->f32[v132]));
      v133[160] = mutableBytes[64].f32[v132] + (v134 * (mutableBytes[96].f32[v132] - mutableBytes[64].f32[v132]));
      [(RepairWeightsProcessor *)self setWeightsForROIAtIndex:v131++ ofMetaContainer:mutableBytes ROIMotion:mutableBytes[133].u8[0] ROIMotionLongRange:0.0 isLowLight:0.0];
      ++v132;
    }

    while (v131 < mutableBytes->i16[0]);
  }

  syncWeightsSpatialForSWWeights(mutableBytes);
LABEL_108:
}

- (void)temporalFilterBlendingWeights:(id)weights lookaheadMetaBufs:(id)bufs metaBuf_HW:(id)w lookaheadMetaBufs_HW:(id)hW hwMode:(BOOL)mode
{
  modeCopy = mode;
  weightsCopy = weights;
  bufsCopy = bufs;
  wCopy = w;
  hWCopy = hW;
  kdebug_trace();
  v15 = objc_alloc_init(NSMutableArray);
  v16 = objc_alloc_init(NSMutableArray);
  if ([(NSMutableArray *)self->_lookbackMetaBufs count])
  {
    [v15 addObjectsFromArray:self->_lookbackMetaBufs];
  }

  [v15 addObject:weightsCopy];
  if ([bufsCopy count])
  {
    [v15 addObjectsFromArray:bufsCopy];
  }

  lookbackMetaBufs = self->_lookbackMetaBufs;
  if (lookbackMetaBufs)
  {
    v18 = [(NSMutableArray *)lookbackMetaBufs count];
  }

  else
  {
    v18 = 0;
  }

  if ([v15 count] <= 1)
  {
    [RepairWeightsProcessor temporalFilterBlendingWeights:lookaheadMetaBufs:metaBuf_HW:lookaheadMetaBufs_HW:hwMode:];
  }

  else
  {
    [(RepairWeightsProcessor *)self _temporalFilterMetaContainerAtIndex:v18 ofQueue:v15 lookaheadBufferLen:15];
    if (modeCopy)
    {
      if ([(NSMutableArray *)self->_lookbackMetaBufs_HW count])
      {
        [v16 addObjectsFromArray:self->_lookbackMetaBufs_HW];
      }

      [v16 addObject:wCopy];
      if ([hWCopy count])
      {
        [v16 addObjectsFromArray:hWCopy];
      }

      [(RepairWeightsProcessor *)self temporalFilterMetaContainerAtIndex_PA_L:v18 ofQueue:v15 ofQueue_HW:v16 lookaheadBufferLen:15];
    }
  }

  if ([(NSMutableArray *)self->_lookbackMetaBufs count]== &dword_C + 3)
  {
    [(NSMutableArray *)self->_lookbackMetaBufs removeObjectAtIndex:0];
  }

  [(NSMutableArray *)self->_lookbackMetaBufs addObject:weightsCopy];
  if (modeCopy)
  {
    if ([(NSMutableArray *)self->_lookbackMetaBufs_HW count]== &dword_C + 3)
    {
      [(NSMutableArray *)self->_lookbackMetaBufs_HW removeObjectAtIndex:0];
    }

    [(NSMutableArray *)self->_lookbackMetaBufs_HW addObject:wCopy];
  }

  ++self->_frameIdx;
  kdebug_trace();
}

- (uint64_t)init
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_temporalFilterMetaContainerAtIndex:ofQueue:lookaheadBufferLen:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)temporalFilterBlendingWeights:lookaheadMetaBufs:metaBuf_HW:lookaheadMetaBufs_HW:hwMode:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end