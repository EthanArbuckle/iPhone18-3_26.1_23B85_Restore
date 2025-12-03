@interface PLKMeansClustering
- (double)_dataArray:(id)array featureCount:(unsigned int)count useKeypaths:(BOOL)keypaths;
- (id)_performWithDataset:(id)dataset numericData:(id)data progressBlock:(id)block;
@end

@implementation PLKMeansClustering

- (double)_dataArray:(id)array featureCount:(unsigned int)count useKeypaths:(BOOL)keypaths
{
  keypathsCopy = keypaths;
  v55 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  countCopy = count;
  v33 = malloc_type_calloc(8uLL, [arrayCopy count] * count, 0x13FA2A48uLL);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = arrayCopy;
  v9 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v49;
    v13 = 8 * countCopy;
    v35 = 8 * countCopy;
    v36 = *v49;
    do
    {
      v14 = 0;
      v15 = v33 + v13 * v11;
      v34 = v10 + v11;
      v39 = v10;
      do
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v48 + 1) + 8 * v14);
        if (keypathsCopy)
        {
          v46 = 0uLL;
          v47 = 0uLL;
          v44 = 0uLL;
          v45 = 0uLL;
          numericValueKeypaths = [(PLDataClustering *)self numericValueKeypaths];
          v18 = [numericValueKeypaths countByEnumeratingWithState:&v44 objects:v53 count:16];
          if (!v18)
          {
            goto LABEL_23;
          }

          v19 = v18;
          v20 = keypathsCopy;
          v21 = 0;
          v22 = *v45;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v45 != v22)
              {
                objc_enumerationMutation(numericValueKeypaths);
              }

              v24 = [v16 valueForKeyPath:*(*(&v44 + 1) + 8 * i)];
              [v24 doubleValue];
              *&v15[8 * v21] = v25;

              ++v21;
            }

            v19 = [numericValueKeypaths countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v19);
          keypathsCopy = v20;
          v13 = v35;
          v12 = v36;
        }

        else
        {
          v42 = 0uLL;
          v43 = 0uLL;
          v40 = 0uLL;
          v41 = 0uLL;
          numericValueKeypaths = v16;
          v26 = [numericValueKeypaths countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (!v26)
          {
            goto LABEL_23;
          }

          v27 = v26;
          v28 = 0;
          v29 = *v41;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v41 != v29)
              {
                objc_enumerationMutation(numericValueKeypaths);
              }

              [*(*(&v40 + 1) + 8 * j) doubleValue];
              *&v15[8 * v28++] = v31;
            }

            v27 = [numericValueKeypaths countByEnumeratingWithState:&v40 objects:v52 count:16];
          }

          while (v27);
        }

        v10 = v39;
LABEL_23:

        ++v14;
        v15 += v13;
      }

      while (v14 != v10);
      v10 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
      v11 = v34;
    }

    while (v10);
  }

  return v33;
}

- (id)_performWithDataset:(id)dataset numericData:(id)data progressBlock:(id)block
{
  v159 = *MEMORY[0x1E69E9840];
  datasetCopy = dataset;
  dataCopy = data;
  blockCopy = block;
  v11 = _Block_copy(blockCopy);
  v12 = v11;
  if (v11)
  {
    LOBYTE(v151) = 0;
    (*(v11 + 2))(v11, &v151, 0.0);
    if (v151 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v158) = 48;
        v13 = MEMORY[0x1E69E9C10];
LABEL_95:
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
        goto LABEL_96;
      }

      goto LABEL_96;
    }
  }

  if (dataCopy)
  {
    [dataCopy firstObject];
  }

  else
  {
    [(PLDataClustering *)self numericValueKeypaths];
  }
  v14 = ;
  v15 = [v14 count];

  if (!v15 || !self->_k)
  {
    if (!v12 || (LOBYTE(v151) = 0, (v12)[2](v12, &v151, 1.0), !v151))
    {
      v80 = 0;
      goto LABEL_168;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v158) = 54;
      v13 = MEMORY[0x1E69E9C10];
      goto LABEL_95;
    }

LABEL_96:
    v80 = MEMORY[0x1E695E0F0];
    goto LABEL_168;
  }

  if (![datasetCopy count])
  {
    if (!v12)
    {
      goto LABEL_96;
    }

    LOBYTE(v151) = 0;
    (v12)[2](v12, &v151, 1.0);
    if (!v151 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      goto LABEL_96;
    }

    *buf = 67109120;
    LODWORD(v158) = 60;
    v13 = MEMORY[0x1E69E9C10];
    goto LABEL_95;
  }

  v134 = blockCopy;
  v137 = v12;
  v135 = datasetCopy;
  if ([datasetCopy count] <= self->_k)
  {
    array = [MEMORY[0x1E695DF70] array];
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v82 = datasetCopy;
    v83 = [v82 countByEnumeratingWithState:&v147 objects:v156 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v148;
      do
      {
        for (i = 0; i != v84; ++i)
        {
          if (*v148 != v85)
          {
            objc_enumerationMutation(v82);
          }

          v155 = *(*(&v147 + 1) + 8 * i);
          v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v155 count:1];
          v88 = [PLDataCluster clusterWithObjects:v87];
          [array addObject:v88];
        }

        v84 = [v82 countByEnumeratingWithState:&v147 objects:v156 count:16];
      }

      while (v84);
    }

    blockCopy = v134;
    if (v12 && (LOBYTE(v151) = 0, (v12)[2](v12, &v151, 1.0), v151))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v158) = 72;
        _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
      }

      v80 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v80 = array;
    }

    datasetCopy = v135;

    goto LABEL_168;
  }

  v133 = dataCopy;
  if (dataCopy)
  {
    v16 = dataCopy;
  }

  else
  {
    v16 = datasetCopy;
  }

  v17 = [(PLKMeansClustering *)self _dataArray:v16 featureCount:v15 useKeypaths:dataCopy == 0];
  v18 = [datasetCopy count];
  v19 = v18;
  v136 = malloc_type_calloc(4uLL, v18, 0xE72C7B6DuLL);
  v20 = malloc_type_calloc(4uLL, self->_k, 0x11CED078uLL);
  v131 = malloc_type_calloc(8uLL, self->_k * v15, 0xCA8D3051uLL);
  v21 = malloc_type_calloc(8uLL, self->_k * v15, 0xA24D4A75uLL);
  __n = 8 * v15;
  __upper_bound = v18;
  memcpy(v21, &v17[(v18 >> 1) * v15], __n);
  [MEMORY[0x1E696AD50] indexSetWithIndex:v18 >> 1];
  v146 = v145 = v17;
  k = self->_k;
  selfCopy = self;
  if (k < 2)
  {
LABEL_40:
    v139 = 0;
    v40 = v131;
    do
    {
      v41 = v21;
      v21 = v40;
      if (v12)
      {
        buf[0] = 0;
        (v12)[2](v12, buf, 0.5);
        if (buf[0])
        {
          v77 = 0;
          v78 = 1;
          v79 = v41;
          v41 = v21;
          goto LABEL_149;
        }

        k = selfCopy->_k;
      }

      bzero(v20, 4 * k);
      v42 = v136;
      if (__upper_bound)
      {
        v43 = 0;
        v44 = 0;
        v45 = selfCopy->_k;
        do
        {
          if (v45)
          {
            v46 = 0;
            LODWORD(v47) = 0;
            v48 = -1;
            v49 = 1.79769313e308;
            do
            {
              v50 = &v41[8 * v46];
              v51 = 0.0;
              v52 = &v17[v43];
              v53 = v15;
              do
              {
                v54 = *v52++;
                v55 = v54;
                v56 = *v50++;
                v51 = v51 + (v55 - v56) * (v55 - v56);
                --v53;
              }

              while (v53);
              v57 = sqrt(v51);
              if (v57 < v49)
              {
                v49 = v57;
                v48 = v47;
              }

              v47 = (v47 + 1);
              v46 += v15;
            }

            while (v45 > v47);
          }

          else
          {
            v48 = -1;
          }

          v136[v44] = v48;
          ++*(v20 + v48);
          ++v44;
          v43 += v15;
        }

        while (v44 != v19);
      }

      if (v12)
      {
        buf[0] = 0;
        (v12)[2](v12, buf, 0.5);
        if (buf[0])
        {
          goto LABEL_116;
        }
      }

      bzero(v21, selfCopy->_k * __n);
      if (__upper_bound)
      {
        v59 = 0;
        v60 = 0;
        do
        {
          v61 = &v17[v59];
          v62 = &v21[8 * v136[v60] * v15];
          v63 = v15;
          do
          {
            v64 = *v61++;
            v58 = v64 + *v62;
            *v62++ = v58;
            --v63;
          }

          while (v63);
          ++v60;
          v59 += v15;
        }

        while (v60 != v19);
      }

      if (v12)
      {
        buf[0] = 0;
        (v12)[2](v12, buf, 0.5);
        if (buf[0])
        {
LABEL_116:
          v77 = 0;
          v78 = 1;
          v79 = v21;
          goto LABEL_150;
        }
      }

      k = selfCopy->_k;
      if (k)
      {
        v65 = 0;
        v66 = 0;
        do
        {
          v67 = &v21[8 * v65];
          LODWORD(v58) = *(v20 + v66);
          v58 = *&v58;
          v68 = v15;
          do
          {
            *v67 = *v67 / v58;
            ++v67;
            --v68;
          }

          while (v68);
          v66 = (v66 + 1);
          v65 += v15;
        }

        while (k > v66);
      }

      v69 = ++v139;
      v71 = memcmp(v21, v41, k * __n) && v69 < 0x64;
      if (v12)
      {
        buf[0] = 0;
        (v12)[2](v12, buf, 0.5);
        if (buf[0])
        {
          v77 = 0;
          v78 = 1;
          v79 = v21;
          goto LABEL_149;
        }

        k = selfCopy->_k;
      }

      if (k)
      {
        v72 = 0;
        v73 = 0;
        v74 = 1;
        do
        {
          if (!*(v20 + v73))
          {
            v75 = arc4random_uniform(__upper_bound);
            memcpy(&v21[8 * v72], &v145[v75 * v15], __n);
            k = selfCopy->_k;
            v71 = 1;
          }

          v73 = v74;
          v76 = k > v74++;
          v72 += v15;
        }

        while (v76);
      }

      v40 = v41;
      v12 = v137;
      v17 = v145;
    }

    while (v71);
    if (v139 >= 0x64 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v158 = 100;
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "KMeans failed to converge: max number of iterations reached: %ld", buf, 0xCu);
    }

    v42 = v136;
    if (v137)
    {
      buf[0] = 0;
      (v137)[2](v137, buf, 0.5);
      if (buf[0])
      {
        v77 = 0;
        v78 = 1;
        v79 = v21;
        v17 = v145;
        goto LABEL_150;
      }
    }

    v100 = selfCopy->_k;
    v101 = v135;
    v142 = v100;
    for (j = [MEMORY[0x1E695DF70] arrayWithCapacity:v100];
    {
      array2 = [MEMORY[0x1E695DF70] array];
      [j addObject:array2];
    }

    v104 = [v101 count];
    v105 = v104;
    if (v104)
    {
      v106 = 0;
      do
      {
        v107 = [j objectAtIndexedSubscript:v136[v106]];
        v108 = [v101 objectAtIndexedSubscript:v106];
        [v107 addObject:v108];

        ++v106;
      }

      while (v105 != v106);
    }

    v144 = v101;
    v77 = [MEMORY[0x1E695DF70] arrayWithCapacity:v142];
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v109 = j;
    v110 = [v109 countByEnumeratingWithState:&v151 objects:buf count:16];
    if (v110)
    {
      v111 = v110;
      v112 = *v152;
      do
      {
        for (m = 0; m != v111; ++m)
        {
          if (*v152 != v112)
          {
            objc_enumerationMutation(v109);
          }

          v114 = [PLDataCluster clusterWithObjects:*(*(&v151 + 1) + 8 * m)];
          [v77 addObject:v114];
        }

        v111 = [v109 countByEnumeratingWithState:&v151 objects:buf count:16];
      }

      while (v111);
    }

    v78 = 0;
    v79 = v21;
    v12 = v137;
LABEL_148:
    v17 = v145;
LABEL_149:
    v42 = v136;
LABEL_150:
    if (v17)
    {
      free(v17);
    }

    if (v42)
    {
      free(v42);
    }

    if (v20)
    {
      free(v20);
    }

    if (v79)
    {
      free(v79);
    }

    blockCopy = v134;
    datasetCopy = v135;
    if (v41)
    {
      free(v41);
    }

    if (v12 && (LOBYTE(v151) = 0, (v12)[2](v12, &v151, 1.0), v151 | v78))
    {
      dataCopy = v133;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v158) = 287;
        v115 = MEMORY[0x1E69E9C10];
        goto LABEL_164;
      }

LABEL_165:
      v80 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v77 = v77;
      v80 = v77;
      dataCopy = v133;
    }

    goto LABEL_167;
  }

  v138 = 1;
  LODWORD(v23) = 1;
  while (1)
  {
    if (v12)
    {
      buf[0] = 0;
      (v12)[2](v12, buf, 0.5);
      if (buf[0])
      {
        v77 = 0;
        v78 = 1;
        v79 = v21;
        v41 = v131;
        goto LABEL_149;
      }
    }

    if (__upper_bound)
    {
      v24 = 0;
      v25 = 0;
      v26 = -1;
      v27 = -1.0;
      do
      {
        if (([v146 containsIndex:{v25, v131}] & 1) == 0)
        {
          if (v23)
          {
            v28 = 0;
            v29 = 0;
            v30 = 1.79769313e308;
            do
            {
              v31 = &v21[8 * v28];
              v32 = 0.0;
              v33 = &v145[v24];
              v34 = v15;
              do
              {
                v35 = *v33++;
                v36 = v35;
                v37 = *v31++;
                v32 = v32 + (v36 - v37) * (v36 - v37);
                --v34;
              }

              while (v34);
              v38 = sqrt(v32);
              if (v38 < v30)
              {
                v30 = v38;
              }

              ++v29;
              v28 += v15;
            }

            while (v29 != v23);
          }

          else
          {
            v30 = 1.79769313e308;
          }

          if (v30 > v27)
          {
            v26 = v25;
            v27 = v30;
          }
        }

        ++v25;
        v24 += v15;
      }

      while (v25 != v19);
      v39 = v27 == 0.0;
      v12 = v137;
      self = selfCopy;
      if (!v137)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v39 = 0;
      v26 = -1;
      if (!v12)
      {
        goto LABEL_38;
      }
    }

    buf[0] = 0;
    (v12)[2](v12, buf, 0.5);
    if (buf[0])
    {
      v77 = 0;
      v78 = 1;
      v79 = v21;
      v41 = v131;
      goto LABEL_148;
    }

LABEL_38:
    if (v39)
    {
      break;
    }

    v17 = v145;
    memcpy(&v21[8 * (v23 * v15)], &v145[v26 * v15], __n);
    [v146 addIndex:v26];
    k = self->_k;
    v23 = (v23 + 1);
    v138 = v23;
    if (k <= v23)
    {
      goto LABEL_40;
    }
  }

  v17 = v145;
  v42 = v136;
  if (__upper_bound)
  {
    v89 = 0;
    v90 = 0;
    do
    {
      if (v23)
      {
        v91 = 0;
        v92 = 0;
        while (1)
        {
          v93 = &v21[8 * v91];
          v94 = 0.0;
          v95 = &v145[v89];
          v96 = v15;
          do
          {
            v97 = *v95++;
            v98 = v97;
            v99 = *v93++;
            v94 = v94 + (v98 - v99) * (v98 - v99);
            --v96;
          }

          while (v96);
          if (sqrt(v94) == 0.0)
          {
            break;
          }

          ++v92;
          v91 += v15;
          if (v92 == v23)
          {
            goto LABEL_127;
          }
        }

        v136[v90] = v92;
      }

LABEL_127:
      ++v90;
      v89 += v15;
    }

    while (v90 != v19);
  }

  if (v12)
  {
    buf[0] = 0;
    (v12)[2](v12, buf, 0.5);
    if (buf[0])
    {
      v77 = 0;
      v78 = 1;
      v79 = v21;
      v41 = v131;
      goto LABEL_150;
    }
  }

  v117 = v135;
  for (n = [MEMORY[0x1E695DF70] arrayWithCapacity:v138];
  {
    array3 = [MEMORY[0x1E695DF70] array];
    [n addObject:array3];
  }

  v120 = [v117 count];
  v121 = v120;
  if (v120)
  {
    v122 = 0;
    do
    {
      v123 = [n objectAtIndexedSubscript:v136[v122]];
      v124 = [v117 objectAtIndexedSubscript:v122];
      [v123 addObject:v124];

      ++v122;
    }

    while (v121 != v122);
  }

  v77 = [MEMORY[0x1E695DF70] arrayWithCapacity:v138];
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v125 = n;
  v126 = [v125 countByEnumeratingWithState:&v151 objects:buf count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v152;
    do
    {
      for (ii = 0; ii != v127; ++ii)
      {
        if (*v152 != v128)
        {
          objc_enumerationMutation(v125);
        }

        v130 = [PLDataCluster clusterWithObjects:*(*(&v151 + 1) + 8 * ii)];
        [v77 addObject:v130];
      }

      v127 = [v125 countByEnumeratingWithState:&v151 objects:buf count:16];
    }

    while (v127);
  }

  if (v145)
  {
    free(v145);
  }

  dataCopy = v133;
  v12 = v137;
  if (v136)
  {
    free(v136);
  }

  if (v20)
  {
    free(v20);
  }

  if (v21)
  {
    free(v21);
  }

  blockCopy = v134;
  datasetCopy = v135;
  if (v132)
  {
    free(v132);
  }

  if (v137)
  {
    LOBYTE(v151) = 0;
    (v137)[2](v137, &v151, 1.0);
    if (v151)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v158) = 167;
        v115 = MEMORY[0x1E69E9C10];
LABEL_164:
        _os_log_impl(&dword_19BF1F000, v115, OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
      }

      goto LABEL_165;
    }
  }

  v77 = v77;
  v80 = v77;
LABEL_167:

LABEL_168:

  return v80;
}

@end