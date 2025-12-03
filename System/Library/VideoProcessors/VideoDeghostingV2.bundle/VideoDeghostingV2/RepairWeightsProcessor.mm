@interface RepairWeightsProcessor
- (RepairWeightsProcessor)init;
- (void)_temporalFilterMetaContainerAtIndex:(int64_t)index ofQueue:(id)queue lookaheadBufferLen:(int)len;
- (void)reset;
- (void)setWeightsForROIAtIndex:(int64_t)index ofMetaContainer:(id *)container ROIMotion:(float)motion;
- (void)temporalFilterBlendingWeights:(id)weights lookaheadMetaBufs:(id)bufs;
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
    sub_265C4();
  }

  return v3;
}

- (void)reset
{
  v3 = +[NSMutableArray array];
  lookbackMetaBufs = self->_lookbackMetaBufs;
  self->_lookbackMetaBufs = v3;

  self->_frameIdx = 0;
}

- (void)setWeightsForROIAtIndex:(int64_t)index ofMetaContainer:(id *)container ROIMotion:(float)motion
{
  v5 = (&container->var0 + 2 * index);
  v6 = fminf(fmaxf((motion + -0.5) + (motion + -0.5), 0.0), 1.0);
  v7 = v6 * 0.04 + 0.06;
  v8 = v7 * (fminf(fmaxf(((v5[2324] * 0.015625) + -900.0) / 700.0, 0.0), 1.0) * -0.5 + 1.0);
  v9 = fminf(fmaxf(*(v5 + 1364) / v8, 0.0), 1.0);
  v10 = v6 * 0.02 + 0.01;
  v11 = fminf(fmaxf(*(v5 + 1424) / v10, 0.0), 1.0);
  if (v11 >= v9)
  {
    v9 = v11;
  }

  *(v5 + 490) = v9;
  *(v5 + 1184) = v9;
  v12 = v7;
  v13 = fminf(fmaxf(*(v5 + 1964) / v12, 0.0), 1.0);
  v14 = fminf(fmaxf(*(v5 + 2024) / v10, 0.0), 1.0);
  if (v14 < v13)
  {
    v14 = v13;
  }

  *(v5 + 2084) = v14;
  *(v5 + 2144) = v14;
  v15 = (fminf(fmaxf((((container->var7[index].var5 - container->var7[index].var3) * (container->var7[index].var6 - container->var7[index].var4)) + -900.0) / 2700.0, 0.0), 1.0) * -0.9 + 1.0) * 0.03;
  v16 = 1.0 - fminf(fmaxf(*(v5 + 1304) / v15, 0.0), 1.0);
  *(v5 + 790) = v16;
  *(v5 + 1244) = v16;
}

- (void)_temporalFilterMetaContainerAtIndex:(int64_t)index ofQueue:(id)queue lookaheadBufferLen:(int)len
{
  queueCopy = queue;
  v180 = queueCopy;
  if (len > 0)
  {
    v9 = [queueCopy objectAtIndex:index];
    mutableBytes = [v9 mutableBytes];

    indexCopy = index;
    if ([v180 count])
    {
      v11 = 0;
      v12 = -index;
      v13 = 0.0;
      v14 = 0.0;
      do
      {
        v15 = [v180 objectAtIndex:v11];
        mutableBytes2 = [v15 mutableBytes];

        v17 = 1.0 - fminf(fmaxf(fabsf(v12) / len, 0.0), 1.0);
        v13 = v13 + (v17 * mutableBytes2[1181]);
        v14 = v14 + v17;
        ++v11;
        ++v12;
      }

      while ([v180 count] > v11);
      v18 = v13 / v14;
      index = indexCopy;
    }

    else
    {
      v18 = NAN;
    }

    mutableBytes[590].f32[1] = v18;
    v19 = 1.0 / v18;
    mutableBytes[591].f32[1] = v19;
    if (mutableBytes->i16[0] < 1)
    {
      goto LABEL_111;
    }

    v20 = 0;
    v158 = fminf(fmaxf(v19 + -1.0, 0.0), 1.0);
    if (len >= 2)
    {
      lenCopy = 2;
    }

    else
    {
      lenCopy = len;
    }

    if (len >= 5)
    {
      lenCopy2 = 5;
    }

    else
    {
      lenCopy2 = len;
    }

    v160 = lenCopy2;
    v157 = &mutableBytes[545] + 4;
    lenCopy3 = len;
    lenCopy4 = len;
    v155 = mutableBytes + 802;
    v156 = mutableBytes + 5;
    v25 = mutableBytes + 485;
    lenCopy5 = len;
    v153 = mutableBytes + 682;
    v152 = mutableBytes + 712;
    v151 = mutableBytes + 652;
    v150 = mutableBytes + 982;
    v149 = mutableBytes + 1012;
    v148 = mutableBytes + 742;
    v147 = mutableBytes + 1162;
    v142 = mutableBytes + 395;
    v146 = mutableBytes + 515;
    v26 = 1.0;
    v144 = mutableBytes;
    selfCopy = self;
    v161 = lenCopy;
    lenCopy6 = len;
    lenCopy7 = len;
    v143 = mutableBytes + 485;
    while (1)
    {
      v164 = *&v157[4 * v20];
      v27 = &v156[4 * v20];
      v28 = v27[3];
      v183 = v27[2];
      if (![v180 count])
      {
        v95 = 1.0;
        v104 = 0;
        v117 = -1;
        v97 = -1;
        v113 = 0.0;
        v44 = 0.0;
        v111 = 0.0;
        v110 = 0.0;
        v109 = 0.0;
        v112 = 0.0;
        v37 = 0.0;
        v102 = 0.0;
        v116 = 0.0;
        v114 = 0.0;
        v115 = 0.0;
        v108 = 0.0;
        v98 = -1;
        v100 = -1;
        v101 = -1;
        v103 = -1;
        v99 = -1;
        v107 = 0;
        v105 = 0.0;
        v106 = 0.0;
        v96 = 1.0;
        goto LABEL_82;
      }

      v159 = v20;
      v30 = 0;
      v31 = vmul_f32(v28, v28);
      v32 = -1;
      v179 = 0;
      v182 = 0.0;
      v177 = 0.0;
      v178 = 0.0;
      v184 = 0.0;
      *&v29 = 0;
      v176 = v29;
      v163 = 0.0;
      v33 = -1;
      v165 = 0.0;
      v169 = 0xFFFFFFFFLL;
      v34 = -1;
      v35 = -1;
      v36 = -1;
      v168 = -1;
      v174 = 0.0;
      v187 = 0.0;
      v188 = 0.0;
      v185 = 0.0;
      v186 = 0.0;
      v37 = 0.0;
      v38 = 0.0;
      v39 = 0.0;
      v40 = 0.0;
      v41 = 0.0;
      v42 = 0.0;
      v43 = 0.0;
      v171 = 0.0;
      v172 = 0.0;
      v175 = 0.0;
      v173 = 0.0;
      v44 = 0.0;
      v170 = 0.0;
      v181 = sqrtf(vaddv_f32(v31));
      do
      {
        v45 = v30 - index;
        if ((v30 - index) >= 0)
        {
          v46 = v30 - index;
        }

        else
        {
          v46 = index - v30;
        }

        v47 = v180;
        if (v46 < lenCopy3)
        {
          v48 = [v180 objectAtIndex:v30];
          mutableBytes3 = [v48 mutableBytes];

          v51 = *mutableBytes3;
          if (v51 < 1)
          {
            lenCopy3 = lenCopy6;
            index = indexCopy;
            goto LABEL_66;
          }

          v52 = 0;
          v53 = 0;
          *v50.i32 = 1.0 - fminf(fmaxf(fabsf(v45) / lenCopy7, 0.0), 1.0);
          v54 = vdup_lane_s32(v50, 0);
          v55 = 4 * v51;
          v56 = 0.0;
          v57 = 32;
          v58 = 2968;
          index = indexCopy;
          v59 = v179;
          v61 = v177;
          v60 = v178;
          v62 = v176;
          v64 = v174;
          v63 = v175;
          v66 = v172;
          v65 = v173;
          v68 = v170;
          v67 = v171;
          v69 = v169;
          do
          {
            v70 = &mutableBytes3[v52 / 2];
            if (v164 == *&mutableBytes3[v52 / 2 + 2182])
            {
              v71 = vsub_f32(v183, *&mutableBytes3[v57 - 4]);
              v72 = fminf(fmaxf(sqrtf(vaddv_f32(vmul_f32(v71, v71))) / (((v181 + sqrtf(vaddv_f32(vmul_f32(*&mutableBytes3[v57], *&mutableBytes3[v57])))) * 0.5) + 16.0), 0.0), 1.0);
              if ((v53 & (v56 < v72)) == 0)
              {
                v56 = v72;
              }

              v73 = *(v70 + 1364);
              v74 = fminf(fmaxf(v73, 0.0), 0.1);
              if ((*v50.i32 * v74) > v43)
              {
                v43 = *v50.i32 * v74;
                v37 = v74;
                v32 = v30;
              }

              v75 = *(v70 + 1964);
              v76 = fminf(fmaxf(v75, 0.0), 0.1);
              v77 = (*v50.i32 * v76) <= v42;
              if ((*v50.i32 * v76) > v42)
              {
                v42 = *v50.i32 * v76;
              }

              v78 = v185;
              if (!v77)
              {
                v78 = v76;
              }

              v185 = v78;
              if (!v77)
              {
                v36 = v30;
              }

              v79 = *(v70 + 1424);
              v80 = fminf(fmaxf(v79, 0.0), 0.03);
              v81 = (*v50.i32 * v80) <= v41;
              if ((*v50.i32 * v80) <= v41)
              {
                v82 = v187;
              }

              else
              {
                v41 = *v50.i32 * v80;
                v82 = v80;
              }

              if (!v81)
              {
                v35 = v30;
              }

              v83 = *(v70 + 2024);
              v84 = fminf(fmaxf(v83, 0.0), 0.03);
              v85 = (*v50.i32 * v84) <= v40;
              if ((*v50.i32 * v84) > v40)
              {
                v40 = *v50.i32 * v84;
              }

              v86 = v188;
              if (!v85)
              {
                v86 = v84;
              }

              v187 = v82;
              v188 = v86;
              if (!v85)
              {
                v34 = v30;
              }

              v87 = *(v70 + 970);
              v88 = (*v50.i32 * v87) <= v38;
              if ((*v50.i32 * v87) > v38)
              {
                v38 = *v50.i32 * v87;
              }

              v89 = v186;
              if (!v88)
              {
                v89 = *(v70 + 970);
              }

              v186 = v89;
              if (!v88)
              {
                v33 = v30;
              }

              v90 = *(v70 + 1304);
              if ((*v50.i32 * v90) <= v39)
              {
                v69 = v69;
              }

              else
              {
                v39 = *v50.i32 * v90;
                v64 = *(v70 + 1304);
                v69 = v30;
              }

              if (v46 <= v161)
              {
                v59 = vmla_f32(v59, *&mutableBytes3[v58], v54);
                *&v62 = *v50.i32 + *&v62;
              }

              v68 = v68 + (*v50.i32 * v73);
              v44 = v44 + (*v50.i32 * v75);
              v66 = v66 + (*v50.i32 * v79);
              v65 = v65 + (*v50.i32 * v83);
              v67 = v67 + (*v50.i32 * v87);
              v63 = v63 + (*v50.i32 * v90);
              v61 = v61 + (*v50.i32 * *(v70 + 2324));
              v60 = *v50.i32 + v60;
              if (v30 < indexCopy)
              {
                v182 = v182 + (*v50.i32 * *&mutableBytes3[v52 / 2 + 3208]);
                v184 = *v50.i32 + v184;
              }

              v53 = 1;
            }

            v52 += 4;
            v58 += 4;
            v57 += 16;
          }

          while (v55 != v52);
          v169 = v69;
          v170 = v68;
          v171 = v67;
          v172 = v66;
          v173 = v65;
          v174 = v64;
          v175 = v63;
          v176 = v62;
          v177 = v61;
          v178 = v60;
          v179 = v59;
          if ((v53 & (v46 <= v160)) == 0)
          {
            lenCopy3 = lenCopy6;
            if ((v53 & 1) == 0)
            {
LABEL_66:
              v93 = v168 - index;
              if (v93 < 0)
              {
                v93 = index - v168;
              }

              if (v46 >= v93)
              {
                v94 = v168;
              }

              else
              {
                v94 = v30;
              }

              if (v168 == -1)
              {
                v94 = v30;
              }

              v168 = v94;
            }

            v47 = v180;
            goto LABEL_75;
          }

          v165 = v165 + 1.0;
          v91 = v163;
          v92 = v163 + v56;
          if (v30 != indexCopy)
          {
            v91 = v92;
          }

          v163 = v91;
          v47 = v180;
          lenCopy3 = lenCopy6;
        }

LABEL_75:
        ++v30;
      }

      while ([v47 count] > v30);
      v95 = 1.0;
      v96 = 1.0;
      if (v165 > 1.0)
      {
        v95 = fminf(fmaxf(((v163 / (v165 + -1.0)) + -0.1) + ((v163 / (v165 + -1.0)) + -0.1), 0.0), 1.0);
      }

      v97 = v32;
      v98 = v36;
      v99 = v33;
      v100 = v35;
      v101 = v34;
      v102 = v185;
      v103 = v169;
      lenCopy4 = lenCopy7;
      v26 = 1.0;
      v104 = v179;
      v106 = v177;
      v105 = v178;
      v107 = v176;
      v108 = v174;
      v109 = v175;
      v111 = v172;
      v110 = v173;
      v113 = v170;
      v112 = v171;
      v114 = v187;
      v115 = v188;
      v116 = v186;
      if (v184 > 0.0)
      {
        v95 = (v182 / v184) + ((v95 - (v182 / v184)) * 0.3);
      }

      mutableBytes = v144;
      self = selfCopy;
      v20 = v159;
      v25 = v143;
      v117 = v168;
LABEL_82:
      v155->f32[v20] = v95;
      v118 = fmax((v26 - v95) * 2.5, 0.5) * lenCopy5;
      v119 = fabsf((v97 - index));
      if (v97 >= index)
      {
        v120 = lenCopy4;
      }

      else
      {
        v120 = v118;
      }

      v121 = v37 * (v96 - fminf(fmaxf(v119 / v120, 0.0), v96));
      v122 = fabsf((v98 - index));
      if (v98 >= index)
      {
        v123 = lenCopy4;
      }

      else
      {
        v123 = v118;
      }

      v124 = v102 * (v96 - fminf(fmaxf(v122 / v123, 0.0), v96));
      v125 = fabsf((v99 - index));
      if (v99 >= index)
      {
        v126 = lenCopy4;
      }

      else
      {
        v126 = v118;
      }

      v127 = v116 * (v96 - fminf(fmaxf(v125 / v126, 0.0), v96));
      v128 = fabsf((v100 - index));
      if (v100 >= index)
      {
        v129 = lenCopy4;
      }

      else
      {
        v129 = v118;
      }

      v130 = v114 * (v96 - fminf(fmaxf(v128 / v129, 0.0), v96));
      v131 = fabsf((v101 - index));
      if (v101 >= index)
      {
        v132 = lenCopy4;
      }

      else
      {
        v132 = v118;
      }

      v133 = v115 * (v96 - fminf(fmaxf(v131 / v132, 0.0), v96));
      v134 = fabsf((v103 - index));
      if (v103 >= index)
      {
        v118 = lenCopy4;
      }

      v135 = v108 * (v96 - fminf(fmaxf(v134 / v118, 0.0), v96));
      v25->f32[v20] = (v127 + (v95 * ((v112 / v105) - v127))) + ((v127 - (v127 + (v95 * ((v112 / v105) - v127)))) * 0.3);
      v153->f32[v20] = (v121 + (v95 * ((v113 / v105) - v121))) + ((v121 - (v121 + (v95 * ((v113 / v105) - v121)))) * 0.3);
      v152->f32[v20] = (v130 + (v95 * ((v111 / v105) - v130))) + ((v130 - (v130 + (v95 * ((v111 / v105) - v130)))) * 0.3);
      v151->f32[v20] = (v135 + (v95 * ((v109 / v105) - v135))) + ((v135 - (v135 + (v95 * ((v109 / v105) - v135)))) * 0.3);
      v150->f32[v20] = (v124 + (v95 * ((v44 / v105) - v124))) + ((v124 - (v124 + (v95 * ((v44 / v105) - v124)))) * 0.3);
      v149->f32[v20] = (v133 + (v95 * ((v110 / v105) - v133))) + ((v133 - (v133 + (v95 * ((v110 / v105) - v133)))) * 0.3);
      v136 = COERCE_DOUBLE(vminnm_f32(v148[v20], vdiv_f32(v104, vdup_lane_s32(v107, 0))));
      *&v148[v20] = v136;
      v147->i32[v20] = (v106 / v105);
      *&v136 = v95;
      [(RepairWeightsProcessor *)self setWeightsForROIAtIndex:v20 ofMetaContainer:mutableBytes ROIMotion:v136];
      if (v117 < 0)
      {
        v138 = v25->f32[v20];
        if (!self->_frameIdx)
        {
          v141 = 1.0 - fminf(fmaxf(v95 / 0.6, 0.0), 1.0);
          if (v138 < v141)
          {
            v138 = v141;
          }
        }
      }

      else
      {
        v137 = 1.0 - fminf(fmaxf(fabsf((v117 - index)) / lenCopy4, 0.0), 1.0);
        v138 = v25->f32[v20];
        if (v138 < v137)
        {
          v138 = v137;
        }

        v139 = v137;
        if (v26 - v142->f32[v20] >= v139)
        {
          v139 = v26 - v142->f32[v20];
        }

        v140 = v26 - v139;
        v142->f32[v20] = v140;
      }

      if (v138 < v158)
      {
        v138 = v158;
      }

      v25->f32[v20] = v138;
      v146->f32[v20++] = v138;
      if (v20 >= mutableBytes->i16[0])
      {
LABEL_111:
        sub_248B8(mutableBytes);
        goto LABEL_112;
      }
    }
  }

  sub_2663C();
LABEL_112:
}

- (void)temporalFilterBlendingWeights:(id)weights lookaheadMetaBufs:(id)bufs
{
  weightsCopy = weights;
  bufsCopy = bufs;
  v7 = objc_alloc_init(NSMutableArray);
  if ([(NSMutableArray *)self->_lookbackMetaBufs count])
  {
    [v7 addObjectsFromArray:self->_lookbackMetaBufs];
  }

  [v7 addObject:weightsCopy];
  if ([bufsCopy count])
  {
    [v7 addObjectsFromArray:bufsCopy];
  }

  lookbackMetaBufs = self->_lookbackMetaBufs;
  if (lookbackMetaBufs)
  {
    v9 = [(NSMutableArray *)lookbackMetaBufs count];
  }

  else
  {
    v9 = 0;
  }

  if ([v7 count] <= 1)
  {
    sub_266B4();
  }

  else
  {
    [(RepairWeightsProcessor *)self _temporalFilterMetaContainerAtIndex:v9 ofQueue:v7 lookaheadBufferLen:15];
  }

  if ([(NSMutableArray *)self->_lookbackMetaBufs count]== &dword_C + 3)
  {
    [(NSMutableArray *)self->_lookbackMetaBufs removeObjectAtIndex:0];
  }

  [(NSMutableArray *)self->_lookbackMetaBufs addObject:weightsCopy];
  ++self->_frameIdx;
}

@end