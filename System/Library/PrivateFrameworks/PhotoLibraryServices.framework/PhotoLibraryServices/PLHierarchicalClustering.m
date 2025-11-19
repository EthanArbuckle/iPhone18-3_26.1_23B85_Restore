@interface PLHierarchicalClustering
- (PLHierarchicalClustering)init;
- (double)_createRelativeDistanceCacheForDataset:(id)a3;
- (id)performWithDataset:(id)a3 progressBlock:(id)a4;
- (unint64_t)_clustroidIndexForClusters:(unint64_t *)a3 numberOfObjects:(unint64_t)a4 distances:(double *)a5 relativeDistanceCache:(double *)a6;
@end

@implementation PLHierarchicalClustering

- (id)performWithDataset:(id)a3 progressBlock:(id)a4
{
  v6 = a3;
  v185 = a4;
  v204 = 0;
  v205 = &v204;
  v206 = 0x2020000000;
  v207 = 0;
  v7 = MEMORY[0x1E696AE38];
  v200 = v6;
  v8 = [v6 count];
  if (v8 - self->_k + 2 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 - self->_k + 2;
  }

  v189 = [v7 progressWithTotalUnitCount:v9];
  v10 = [v189 totalUnitCount];
  v187 = [(PLDataClustering *)self distanceBlock];
  if (v185 && self->_reportsProgressInDistancesMatrixCalculation)
  {
    v11 = 1.0 / v10;
    v12 = v202;
    v202[0] = MEMORY[0x1E69E9820];
    v202[1] = 3221225472;
    v202[2] = __61__PLHierarchicalClustering_performWithDataset_progressBlock___block_invoke;
    v202[3] = &unk_1E7573D00;
    v181 = v203;
    v13 = v185;
    *&v203[2] = v11;
    v203[0] = v13;
    v203[1] = &v204;
    v183 = 1;
  }

  else
  {
    v183 = 0;
    v12 = 0;
  }

  v14 = _Block_copy(v12);
  v188 = self;
  usesSortedDataRelativeDistanceCache = self->_usesSortedDataRelativeDistanceCache;
  v182 = v14;
  if (!self->_usesSortedDataRelativeDistanceCache)
  {
    v16 = [(PLDataClustering *)self createDistancesMatrixForDataset:v200 progressBlock:v14];
    if ((v205[3] & 1) == 0)
    {
      goto LABEL_16;
    }

    [(PLDataClustering *)self freeDistancesMatrix:v16 forDataset:v200];
LABEL_14:
    v17 = MEMORY[0x1E695E0F0];
    goto LABEL_338;
  }

  if (v205[3])
  {
    goto LABEL_14;
  }

  if (self->_usesSortedDataRelativeDistanceCache)
  {
    v15 = [(PLHierarchicalClustering *)self _createRelativeDistanceCacheForDataset:v200];
    v16 = 0;
    goto LABEL_17;
  }

  v16 = 0;
LABEL_16:
  v15 = 0;
LABEL_17:
  v18 = malloc_type_calloc(8uLL, [v200 count], 0x28A69A72uLL);
  v19 = [v200 count];
  for (i = 0; i < [v200 count]; ++i)
  {
    v21 = malloc_type_calloc(8uLL, 1uLL, 0xF4F853D3uLL);
    v18[i] = v21;
    *v21 = i;
  }

  v22 = malloc_type_calloc(8uLL, [v200 count], 0x4440960EuLL);
  for (j = 0; j < [v200 count]; ++j)
  {
    v22[j] = 1;
  }

  v190 = malloc_type_calloc(8uLL, [v200 count], 0x8972D4FFuLL);
  for (k = 0; k < [v200 count]; ++k)
  {
    v190[k] = k;
  }

  v25 = malloc_type_calloc(1uLL, [v200 count], 0xAD614587uLL);
  v186 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v200];
  [v189 setCompletedUnitCount:{objc_msgSend(v189, "completedUnitCount") + 1}];
  if (v185)
  {
    [v189 fractionCompleted];
    (*(v185 + 2))(v185, v205 + 3);
  }

  if (v205[3])
  {
    if (v19)
    {
      v26 = v18;
      do
      {
        if (*v26)
        {
          free(*v26);
        }

        ++v26;
        --v19;
      }

      while (v19);
    }

    else if (!v18)
    {
      goto LABEL_252;
    }

    free(v18);
LABEL_252:
    if (v22)
    {
      free(v22);
    }

    if (v190)
    {
      free(v190);
    }

    if (v25)
    {
      free(v25);
    }

    if (!usesSortedDataRelativeDistanceCache)
    {
      goto LABEL_282;
    }

    goto LABEL_283;
  }

  v27 = v19 - 1;
  v193 = v25;
  while (1)
  {
    v184 = v27;
    v28 = v188;
    v201 = v19;
    v29 = v19 > v188->_k;
    v197 = v22;
    v198 = v18;
    v30 = v25;
    if (!v29)
    {
      goto LABEL_286;
    }

    linkage = v188->_linkage;
    if (linkage <= 2)
    {
      break;
    }

    if (linkage == 3)
    {
      if (usesSortedDataRelativeDistanceCache)
      {
        v67 = 0;
        v106 = 0;
        v64 = 0;
        v107 = 3.40282347e38;
        v108 = v184;
        v109 = v201;
        do
        {
          v110 = v106++;
          if (v106 < v109)
          {
            v111 = v108;
            v112 = v106;
            do
            {
              v113 = v15[v190[v110]] - v15[v190[v112]];
              if (v113 < 0.0)
              {
                v113 = -v113;
              }

              if (v113 < v107)
              {
                v64 = v112;
                v67 = v110;
                v107 = v113;
              }

              ++v112;
              --v111;
            }

            while (v111);
          }

          --v108;
          v109 = v201;
        }

        while (v106 != v201);
      }

      else
      {
        v67 = 0;
        v64 = 0;
        v114 = 0;
        v107 = 3.40282347e38;
        v115 = v201;
        do
        {
          v116 = v114++;
          if (v114 < v115)
          {
            v118 = v27;
            v119 = v114;
            do
            {
              v117 = v16[v190[v116]];
              if (v117[v190[v119]] < v107)
              {
                v64 = v119;
                v67 = v116;
                v107 = v117[v190[v119]];
              }

              ++v119;
              --v118;
            }

            while (v118);
          }

          --v27;
          v115 = v201;
        }

        while (v114 != v201);
      }

      v120 = v18[v67];
      if (v120 && (v121 = v18[v64]) != 0)
      {
        v122 = v64;
        v123 = v67;
        v124 = v197[v67];
        v125 = v122;
        v126 = v197[v122];
        if (v126 + v124)
        {
          v127 = malloc_type_calloc(8uLL, v126 + v124, 0x2CC347CAuLL);
          memcpy(v127, v120, 8 * v124);
          memcpy(&v127[8 * v124], v121, 8 * v126);
        }

        else
        {
          v127 = 0;
        }

        v18 = v198;
        v67 = v123;
        v64 = v125;
      }

      else
      {
        v127 = 0;
      }

      v22 = v197;
      v128 = [(PLHierarchicalClustering *)v188 _clustroidIndexForClusters:v127 numberOfObjects:v197[v64] + v197[v67] distances:v16 relativeDistanceCache:v15, v107];
      if (v128 == 0x7FFFFFFF)
      {
        v28 = v188;
        if (v127)
        {
          free(v127);
        }

        goto LABEL_286;
      }

      v190[v67] = v128;
      if (v201 < 2)
      {
        v130 = 0;
        v133 = v190;
      }

      else
      {
        v129 = malloc_type_calloc(8uLL, v201 - 1, 0x80AA52DDuLL);
        v130 = v129;
        v131 = 0;
        v132 = 0;
        do
        {
          if (v64 != v131)
          {
            v129[v132++] = v190[v131];
          }

          ++v131;
        }

        while (v201 != v131);
        v133 = v190;
        if (!v190)
        {
          if (v127)
          {
            goto LABEL_202;
          }

          goto LABEL_203;
        }
      }

      free(v133);
      if (v127)
      {
LABEL_202:
        free(v127);
      }

LABEL_203:
      v190 = v130;
      goto LABEL_204;
    }

    if (linkage != 4)
    {
      if (linkage == 5)
      {
        v50 = [(PLDataClustering *)v188 clusterKeyElementBlock];
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = v50 + 2;
        v55 = 3.40282347e38;
        v56 = v184;
        do
        {
          if (!v18[v53])
          {
            __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 190, "clustersIndices[i] != NULL");
          }

          v57 = v53;
          v58 = v53 + 1;
          v191 = v53 + 1;
          v192 = v56;
          if (v53 + 1 < v201)
          {
            v59 = v56;
            v194 = v53;
            do
            {
              if (v198[v58])
              {
                if (usesSortedDataRelativeDistanceCache)
                {
                  v60 = 3.40282347e38;
                }

                else
                {
                  v195 = v51;
                  v196 = v52;
                  v61 = v54;
                  v62 = (v50)[2](v50, v198, v57, v197[v57], v200);
                  v63 = v61;
                  v60 = v16[v62][(v50)[2](v50, v198, v58, v197[v58], v200)];
                  v30 = v193;
                  v57 = v194;
                  v51 = v195;
                  v52 = v196;
                  v54 = v63;
                }

                if (v60 < v55)
                {
                  v52 = v58;
                  v51 = v57;
                  v55 = v60;
                }
              }

              ++v58;
              --v59;
            }

            while (v59);
          }

          v53 = v191;
          v56 = v192 - 1;
          v18 = v198;
        }

        while (v191 != v201);
        v64 = v52;
        v65 = v51;
        v28 = v188;
        threshold = v188->_threshold;

        v22 = v197;
        if (v55 <= threshold)
        {
          v67 = v65;
          goto LABEL_204;
        }

        goto LABEL_286;
      }

LABEL_350:
      __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 474, "idx1 != idx2");
    }

    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 3.40282347e38;
    while (v84 < [v200 count])
    {
      if (!v18[v84])
      {
        __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 222, "clustersIndices[i] != NULL");
      }

      for (m = v84 + 1; m < [v200 count]; ++m)
      {
        if (v18[m] && !v30[v84] && !v30[m])
        {
          v89 = usesSortedDataRelativeDistanceCache ? 3.40282347e38 : v16[v84][m];
          if (v89 < v87)
          {
            v85 = m;
            v86 = v84;
            v87 = v89;
          }
        }
      }

      ++v84;
    }

    v28 = v188;
    if (v87 > v188->_threshold)
    {
      goto LABEL_286;
    }

    v67 = v86;
    v64 = v85;
LABEL_204:
    if (v67 == v64)
    {
      goto LABEL_350;
    }

    v134 = v18[v67];
    if (!v134)
    {
      v141 = 0;
      goto LABEL_214;
    }

    v135 = v18[v64];
    if (!v135)
    {
      v141 = 0;
      v22 = v197;
LABEL_213:
      free(v134);
      goto LABEL_214;
    }

    v136 = v64;
    v137 = v67;
    v138 = v197[v67];
    v139 = v136;
    v140 = v197[v136];
    if (!(v140 + v138))
    {
      v141 = 0;
      v22 = v197;
      v18 = v198;
      v67 = v137;
      v64 = v136;
      goto LABEL_213;
    }

    v141 = malloc_type_calloc(8uLL, v140 + v138, 0x2CC347CAuLL);
    memcpy(v141, v134, 8 * v138);
    memcpy(&v141[8 * v138], v135, 8 * v140);
    v22 = v197;
    v18 = v198;
    v67 = v137;
    v134 = v198[v137];
    v64 = v139;
    if (v134)
    {
      goto LABEL_213;
    }

LABEL_214:
    v18[v67] = v141;
    v22[v67] += v22[v64];
    if (v188->_linkage == 4)
    {
      v30[v64] = 1;
      v142 = [(PLDataClustering *)v188 clusterConsolidationBlock];
      v143 = (v142)[2](v142, v18, v67, v22[v67], v200);
      [v186 setObject:v143 atIndexedSubscript:v67];
      for (n = 0; n < [v200 count]; ++n)
      {
        if (v67 != n && !(v30[n] | usesSortedDataRelativeDistanceCache))
        {
          v145 = [v186 objectAtIndexedSubscript:n];
          v146 = (v187)[2](v187, v143, v145);
          v16[v67][n] = v146;
          v16[n][v67] = v146;
        }
      }

      goto LABEL_241;
    }

    v147 = v18[v64];
    if (v147)
    {
      free(v147);
    }

    if (v201 < 2)
    {
      v149 = 0;
LABEL_232:
      free(v18);
      goto LABEL_233;
    }

    v148 = malloc_type_calloc(8uLL, v201 - 1, 0x1E3F0657uLL);
    v149 = v148;
    v150 = 0;
    v151 = 0;
    v22 = v197;
    v18 = v198;
    do
    {
      if (v64 != v150)
      {
        v148[v151++] = v198[v150];
      }

      ++v150;
    }

    while (v201 != v150);
    if (v198)
    {
      goto LABEL_232;
    }

LABEL_233:
    if (v201 < 2)
    {
      v153 = 0;
      if (!v22)
      {
        goto LABEL_240;
      }
    }

    else
    {
      v152 = malloc_type_calloc(8uLL, v201 - 1, 0x80AA52DDuLL);
      v153 = v152;
      v154 = 0;
      v155 = 0;
      v22 = v197;
      do
      {
        if (v64 != v154)
        {
          v152[v155++] = v197[v154];
        }

        ++v154;
      }

      while (v201 != v154);
      if (!v197)
      {
        goto LABEL_240;
      }
    }

    free(v22);
LABEL_240:
    v197 = v153;
    v198 = v149;
LABEL_241:
    [v189 setCompletedUnitCount:{objc_msgSend(v189, "completedUnitCount") + 1}];
    if (v185)
    {
      [v189 fractionCompleted];
      (*(v185 + 2))(v185, v205 + 3);
    }

    v25 = v30;
    v19 = v201 - 1;
    v27 = v184 - 1;
    v22 = v197;
    v18 = v198;
    if (*(v205 + 24) == 1)
    {
      if (v188->_linkage == 4)
      {
        v156 = [v200 count];
        if (v156)
        {
          v157 = v198;
          do
          {
            if (*v157)
            {
              free(*v157);
            }

            ++v157;
            --v156;
          }

          while (v156);
          goto LABEL_274;
        }

LABEL_273:
        if (v198)
        {
          goto LABEL_274;
        }
      }

      else
      {
        if (v201 == 1)
        {
          goto LABEL_273;
        }

        v158 = v198;
        v159 = v184;
        do
        {
          if (*v158)
          {
            free(*v158);
          }

          ++v158;
          --v159;
        }

        while (v159);
LABEL_274:
        free(v198);
      }

      if (v197)
      {
        free(v197);
      }

      if (v190)
      {
        free(v190);
      }

      if (v25)
      {
        free(v25);
      }

      if (!usesSortedDataRelativeDistanceCache)
      {
LABEL_282:
        [(PLDataClustering *)v188 freeDistancesMatrix:v16 forDataset:v200];
      }

LABEL_283:
      v17 = MEMORY[0x1E695E0F0];
      goto LABEL_335;
    }
  }

  if (linkage)
  {
    if (linkage != 1)
    {
      if (linkage != 2)
      {
        goto LABEL_350;
      }

      linkage = 0;
      v32 = 0;
      v33 = 0;
      v34 = 3.40282347e38;
      while (1)
      {
        v35 = v18[v33];
        if (!v35)
        {
          __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 366, "clustersIndices[i] != NULL");
        }

        v36 = v33++;
        if (v33 < v201)
        {
          break;
        }

LABEL_72:
        if (v33 == v201)
        {
          goto LABEL_165;
        }
      }

      v37 = v33;
      while (2)
      {
        if (v18[v37])
        {
          v38 = v22[v36];
          if (usesSortedDataRelativeDistanceCache)
          {
            if (v38)
            {
              v39 = 0;
              v40 = 3.40282347e38;
              do
              {
                if (v22[v37])
                {
                  v41 = v18[v37];
                  v42 = v22[v37];
                  do
                  {
                    v43 = *v41++;
                    v44 = v15[v35[v39]] - v15[v43];
                    if (v44 < 0.0)
                    {
                      v44 = -v44;
                    }

                    if (v44 < v40)
                    {
                      v40 = v44;
                    }

                    --v42;
                  }

                  while (v42);
                }

                ++v39;
              }

              while (v39 != v38);
              goto LABEL_69;
            }

LABEL_68:
            v40 = 3.40282347e38;
            goto LABEL_69;
          }

          if (!v38)
          {
            goto LABEL_68;
          }

          v45 = 0;
          v40 = 3.40282347e38;
          do
          {
            if (v22[v37])
            {
              v46 = v18[v37];
              v47 = v22[v37];
              do
              {
                v48 = *v46++;
                v49 = v16[v35[v45]][v48];
                if (v49 < v40)
                {
                  v40 = v49;
                }

                --v47;
              }

              while (v47);
            }

            ++v45;
          }

          while (v45 != v38);
LABEL_69:
          if (v40 < v34)
          {
            v32 = v37;
            linkage = v36;
            v34 = v40;
          }
        }

        if (++v37 == v201)
        {
          goto LABEL_72;
        }

        continue;
      }
    }

    linkage = 0;
    v32 = 0;
    v68 = 0;
    v34 = 3.40282347e38;
    while (1)
    {
      v69 = v18[v68];
      if (!v69)
      {
        __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 317, "clustersIndices[i] != NULL");
      }

      v70 = v68++;
      if (v68 < v201)
      {
        break;
      }

LABEL_117:
      if (v68 == v201)
      {
        goto LABEL_165;
      }
    }

    v71 = v68;
    while (2)
    {
      if (v18[v71])
      {
        v72 = v22[v70];
        if (usesSortedDataRelativeDistanceCache)
        {
          if (v72)
          {
            v73 = 0;
            v74 = 0.0;
            do
            {
              if (v22[v71])
              {
                v75 = v18[v71];
                v76 = v22[v71];
                do
                {
                  v77 = *v75++;
                  v78 = v15[v69[v73]] - v15[v77];
                  if (v78 < 0.0)
                  {
                    v78 = -v78;
                  }

                  v74 = v74 + v78;
                  --v76;
                }

                while (v76);
              }

              ++v73;
            }

            while (v73 != v72);
            goto LABEL_114;
          }

LABEL_113:
          v74 = 0.0;
          goto LABEL_114;
        }

        if (!v72)
        {
          goto LABEL_113;
        }

        v79 = 0;
        v74 = 0.0;
        do
        {
          if (v22[v71])
          {
            v80 = v18[v71];
            v81 = v22[v71];
            do
            {
              v82 = *v80++;
              v74 = v74 + v16[v69[v79]][v82];
              --v81;
            }

            while (v81);
          }

          ++v79;
        }

        while (v79 != v72);
LABEL_114:
        v83 = v74 / (v22[v71] * v72);
        if (v83 < v34)
        {
          v32 = v71;
          linkage = v70;
          v34 = v83;
        }
      }

      if (++v71 == v201)
      {
        goto LABEL_117;
      }

      continue;
    }
  }

  v34 = 3.40282347e38;
  v32 = 0;
  v90 = 0;
  while (2)
  {
    v91 = v18[v90];
    if (!v91)
    {
      __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 255, "clustersIndices[i] != NULL");
    }

    v92 = v90++;
    if (v90 < v201)
    {
      v93 = v90;
      while (!v18[v93])
      {
LABEL_163:
        if (++v93 == v201)
        {
          goto LABEL_164;
        }
      }

      v94 = v22[v92];
      if (usesSortedDataRelativeDistanceCache)
      {
        if (v94)
        {
          v95 = 0;
          v96 = 0.0;
          do
          {
            if (v22[v93])
            {
              v97 = v18[v93];
              v98 = v22[v93];
              do
              {
                v99 = *v97++;
                v100 = v15[v91[v95]] - v15[v99];
                if (v100 < 0.0)
                {
                  v100 = -v100;
                }

                if (v100 > v96)
                {
                  v96 = v100;
                }

                --v98;
              }

              while (v98);
            }

            ++v95;
          }

          while (v95 != v94);
          goto LABEL_161;
        }
      }

      else if (v94)
      {
        v101 = 0;
        v96 = 0.0;
        do
        {
          if (v22[v93])
          {
            v102 = v18[v93];
            v103 = v22[v93];
            do
            {
              v104 = *v102++;
              v105 = v16[v91[v101]][v104];
              if (v105 > v96)
              {
                v96 = v105;
              }

              --v103;
            }

            while (v103);
          }

          ++v101;
        }

        while (v101 != v94);
        goto LABEL_161;
      }

      v96 = 0.0;
LABEL_161:
      if (v96 < v34)
      {
        v32 = v93;
        linkage = v92;
        v34 = v96;
      }

      goto LABEL_163;
    }

LABEL_164:
    if (v90 != v201)
    {
      continue;
    }

    break;
  }

LABEL_165:
  v28 = v188;
  if (v34 <= v188->_threshold)
  {
    v67 = linkage;
    v64 = v32;
    goto LABEL_204;
  }

LABEL_286:
  v160 = v30;
  if (v28->_linkage == 4)
  {
    v161 = [v200 count];
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:v161];
    if (v161)
    {
      for (ii = 0; ii != v161; ++ii)
      {
        if (!v193[ii])
        {
          v163 = v18[ii];
          if (!v163)
          {
            __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 551, "clustersIndicesIndex != NULL");
          }

          v164 = [MEMORY[0x1E695DF70] arrayWithCapacity:v197[ii]];
          if (v197[ii])
          {
            v165 = 0;
            do
            {
              v166 = [v200 objectAtIndexedSubscript:v163[v165]];
              [v164 addObject:v166];

              ++v165;
            }

            while (v165 < v197[ii]);
          }

          v167 = [PLDataCluster clusterWithObjects:v164];
          [v17 addObject:v167];

          v18 = v198;
        }
      }

      v22 = v197;
      goto LABEL_304;
    }

    v22 = v197;
  }

  else
  {
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:v201];
    if (v201)
    {
      for (jj = 0; jj != v201; ++jj)
      {
        v169 = v18[jj];
        if (!v169)
        {
          __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 568, "clustersIndicesIndex != NULL");
        }

        v170 = [MEMORY[0x1E695DF70] arrayWithCapacity:v22[jj]];
        if (v22[jj])
        {
          v171 = 0;
          do
          {
            v172 = [v200 objectAtIndexedSubscript:v169[v171]];
            [v170 addObject:v172];

            ++v171;
          }

          while (v171 < v197[jj]);
        }

        v173 = [PLDataCluster clusterWithObjects:v170];
        [v17 addObject:v173];

        v22 = v197;
        v18 = v198;
      }

LABEL_304:
      v160 = v193;
    }
  }

  if (v188->_linkage == 3)
  {
    for (kk = 0; kk < [v17 count]; ++kk)
    {
      v175 = [v17 objectAtIndexedSubscript:kk];
      v176 = [v200 objectAtIndexedSubscript:v190[kk]];
      [v175 setClustroid:v176];
    }
  }

  [v189 setCompletedUnitCount:{objc_msgSend(v189, "totalUnitCount")}];
  if (v185)
  {
    [v189 fractionCompleted];
    (*(v185 + 2))(v185, v205 + 3);
  }

  if (v188->_linkage == 4)
  {
    v177 = [v200 count];
    if (v177)
    {
      v178 = v18;
      do
      {
        if (*v178)
        {
          free(*v178);
        }

        ++v178;
        --v177;
      }

      while (v177);
      goto LABEL_326;
    }

LABEL_325:
    if (v18)
    {
      goto LABEL_326;
    }
  }

  else
  {
    if (!v201)
    {
      goto LABEL_325;
    }

    v179 = v18;
    do
    {
      if (*v179)
      {
        free(*v179);
      }

      ++v179;
      --v201;
    }

    while (v201);
LABEL_326:
    free(v18);
  }

  if (v22)
  {
    free(v22);
  }

  if (v190)
  {
    free(v190);
  }

  if (v160)
  {
    free(v160);
  }

  if (!usesSortedDataRelativeDistanceCache)
  {
    [(PLDataClustering *)v188 freeDistancesMatrix:v16 forDataset:v200];
  }

LABEL_335:
  if (v15)
  {
    free(v15);
  }

LABEL_338:
  if (v183)
  {
  }

  _Block_object_dispose(&v204, 8);

  return v17;
}

uint64_t __61__PLHierarchicalClustering_performWithDataset_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  result = (*(*(a1 + 32) + 16))(*(a1 + 48) * a3);
  *(*(*(a1 + 40) + 8) + 24) = *a2;
  return result;
}

- (double)_createRelativeDistanceCacheForDataset:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = malloc_type_calloc(v5, 8uLL, 0x100004000313F17uLL);
  *v6 = 0.0;
  if (v5 >= 2)
  {
    for (i = 1; i != v5; ++i)
    {
      v8 = [(PLDataClustering *)self distanceBlock];
      v9 = [v4 objectAtIndexedSubscript:0];
      v10 = [v4 objectAtIndexedSubscript:i];
      v6[i] = (v8)[2](v8, v9, v10);
    }
  }

  return v6;
}

- (unint64_t)_clustroidIndexForClusters:(unint64_t *)a3 numberOfObjects:(unint64_t)a4 distances:(double *)a5 relativeDistanceCache:(double *)a6
{
  if (!a3)
  {
    return 0x7FFFFFFFLL;
  }

  v6 = 0;
  if (a4)
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 3.40282347e38;
    do
    {
      v10 = a3[v7];
      if (self->_usesSortedDataRelativeDistanceCache)
      {
        v11 = 0.0;
        v12 = a3;
        v13 = a4;
        do
        {
          v14 = *v12++;
          v15 = a6[v10] - a6[v14];
          if (v15 < 0.0)
          {
            v15 = -v15;
          }

          if (v15 > v8)
          {
            v8 = v15;
          }

          v11 = v11 + v15;
          --v13;
        }

        while (v13);
      }

      else
      {
        v11 = 0.0;
        v16 = a3;
        v17 = a4;
        do
        {
          v18 = *v16++;
          v19 = a5[v10][v18];
          if (v19 > v8)
          {
            v8 = v19;
          }

          v11 = v11 + v19;
          --v17;
        }

        while (v17);
      }

      v20 = v11 / a4;
      if (v20 < v9)
      {
        v9 = v20;
        v6 = a3[v7];
      }

      ++v7;
    }

    while (v7 != a4);
  }

  else
  {
    v8 = 0.0;
  }

  if (v8 <= self->_threshold)
  {
    return v6;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

- (PLHierarchicalClustering)init
{
  v3.receiver = self;
  v3.super_class = PLHierarchicalClustering;
  result = [(PLHierarchicalClustering *)&v3 init];
  if (result)
  {
    result->_threshold = 0.5;
    result->_k = 2;
    result->_linkage = 0;
    result->_usesSortedDataRelativeDistanceCache = 0;
    result->_reportsProgressInDistancesMatrixCalculation = 0;
  }

  return result;
}

@end