@interface PLLOFOutlierDetection
- (PLLOFOutlierDetection)init;
- (double)createDistancesMatrixForDataset:(id)a3 distanceBlock:(id)a4;
- (id)createKNNMatrixWithDistanceMatrix:(double *)a3 size:(unint64_t)a4;
- (id)filteredObjectsWithDataset:(id)a3 distanceBlock:(id)a4;
- (id)lofScoresWithDataset:(id)a3 distanceBlock:(id)a4;
- (void)freeDistancesMatrix:(double *)a3 forDataset:(id)a4;
@end

@implementation PLLOFOutlierDetection

- (id)lofScoresWithDataset:(id)a3 distanceBlock:(id)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 > 2)
  {
    v9 = v8;
    v48 = v7;
    v10 = [(PLLOFOutlierDetection *)self createDistancesMatrixForDataset:v6 distanceBlock:v7];
    v47 = self;
    v50 = [(PLLOFOutlierDetection *)self createKNNMatrixWithDistanceMatrix:v10 size:v9];
    v51 = [MEMORY[0x1E695DF70] array];
    if ([v6 count])
    {
      v11 = 0;
      v49 = v6;
      do
      {
        v54 = v50;
        v55 = v11;
        v12 = [v54 objectAtIndexedSubscript:v11];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        obj = v12;
        v13 = 0.0;
        v14 = 0.0;
        v56 = [v12 countByEnumeratingWithState:&v60 objects:v68 count:16];
        if (v56)
        {
          v53 = *v61;
          do
          {
            v15 = 0;
            do
            {
              if (*v61 != v53)
              {
                objc_enumerationMutation(obj);
              }

              v57 = v15;
              v16 = [*(*(&v60 + 1) + 8 * v15) integerValue];
              v17 = v54;
              v18 = [v17 objectAtIndexedSubscript:v16];
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v58 = v18;
              v19 = [v18 countByEnumeratingWithState:&v64 objects:v69 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v65;
                v22 = 0.0;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v65 != v21)
                    {
                      objc_enumerationMutation(v58);
                    }

                    v24 = [*(*(&v64 + 1) + 8 * i) integerValue];
                    v25 = v10[v24];
                    v26 = [v17 objectAtIndexedSubscript:v24];
                    v27 = [v26 lastObject];
                    v28 = v25[[v27 integerValue]];

                    v29 = v10[v16][v24];
                    if (v28 >= v29)
                    {
                      v29 = v28;
                    }

                    v22 = v22 + v29;
                  }

                  v20 = [v58 countByEnumeratingWithState:&v64 objects:v69 count:16];
                }

                while (v20);
              }

              else
              {
                v22 = 0.0;
              }

              v30 = 1.0 / (v22 / [v58 count]);

              v14 = v14 + v30;
              v15 = v57 + 1;
            }

            while (v57 + 1 != v56);
            v56 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
          }

          while (v56);
        }

        v59 = [obj count];
        v31 = v54;
        v32 = v55;
        v33 = [v31 objectAtIndexedSubscript:v55];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v34 = [v33 countByEnumeratingWithState:&v64 objects:v69 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v65;
          v13 = 0.0;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v65 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = [*(*(&v64 + 1) + 8 * j) integerValue];
              v39 = v10[v38];
              v40 = [v31 objectAtIndexedSubscript:v38];
              v41 = [v40 lastObject];
              v42 = v39[[v41 integerValue]];

              v32 = v55;
              v43 = v10[v55][v38];
              if (v42 >= v43)
              {
                v43 = v42;
              }

              v13 = v13 + v43;
            }

            v35 = [v33 countByEnumeratingWithState:&v64 objects:v69 count:16];
          }

          while (v35);
        }

        v44 = 1.0 / (v13 / [v33 count]);

        v45 = [MEMORY[0x1E696AD98] numberWithDouble:v14 / v59 / v44];
        [v51 addObject:v45];

        v11 = v32 + 1;
        v6 = v49;
      }

      while (v11 < [v49 count]);
    }

    [(PLLOFOutlierDetection *)v47 freeDistancesMatrix:v10 forDataset:v6];

    v7 = v48;
  }

  else
  {
    v51 = v6;
  }

  return v51;
}

- (void)freeDistancesMatrix:(double *)a3 forDataset:(id)a4
{
  v6 = a4;
  if ([v6 count])
  {
    v5 = 0;
    do
    {
      free(a3[v5++]);
    }

    while (v5 < [v6 count]);
  }

  free(a3);
}

- (double)createDistancesMatrixForDataset:(id)a3 distanceBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  v8 = malloc_type_calloc(v7, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v8[i] = malloc_type_calloc(v7, 8uLL, 0x100004000313F17uLL);
    }

    v10 = 0;
    v11 = v8;
    v20 = v8;
    do
    {
      context = objc_autoreleasePoolPush();
      v22 = v11;
      v12 = 0;
      v13 = v10;
      v14 = &v8[v10];
      do
      {
        if (v12)
        {
          v15 = [v5 objectAtIndexedSubscript:v10];
          v16 = [v5 objectAtIndexedSubscript:v13];
          v17 = v6[2](v6, v15, v16);

          (*v14)[v13] = v17;
          v18 = v11;
        }

        else
        {
          v17 = 0.0;
          v18 = v14;
        }

        (*v18)[v10] = v17;
        ++v13;
        ++v11;
        --v12;
      }

      while (v7 != v13);
      objc_autoreleasePoolPop(context);
      ++v10;
      v11 = v22 + 1;
      v8 = v20;
    }

    while (v10 != v7);
  }

  return v8;
}

- (id)createKNNMatrixWithDistanceMatrix:(double *)a3 size:(unint64_t)a4
{
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:a4];
  if (a4)
  {
    v6 = 0;
    do
    {
      k = self->_k;
      if (k + 1 < a4)
      {
        v8 = k + 1;
      }

      else
      {
        v8 = a4;
      }

      v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:v8];
      v10 = 0;
      v11 = 0;
      v12 = a3[v6];
      do
      {
        if (v6 != v10)
        {
          v13 = [v9 count];
          v14 = self->_k;
          if (v13 < v14 || (v15 = v12[v10], [v9 lastObject], v16 = objc_claimAutoreleasedReturnValue(), v17 = v12[objc_msgSend(v16, "integerValue")], v16, v15 < v17))
          {
            v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = __64__PLLOFOutlierDetection_createKNNMatrixWithDistanceMatrix_size___block_invoke;
            v22[3] = &__block_descriptor_40_e31_q24__0__NSNumber_8__NSNumber_16l;
            v22[4] = v12;
            [v9 insertObject:v18 atIndex:{objc_msgSend(v9, "indexOfObject:inSortedRange:options:usingComparator:", v18, 0, v11, 1024, v22)}];
            if (v13 >= v14)
            {

              [v9 removeLastObject];
            }

            else
            {
              ++v11;
            }
          }
        }

        ++v10;
      }

      while (a4 != v10);
      [v21 addObject:v9];

      ++v6;
    }

    while (v6 != a4);
  }

  return v21;
}

uint64_t __64__PLLOFOutlierDetection_createKNNMatrixWithDistanceMatrix_size___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = *(v5 + 8 * [a2 integerValue]);
  v8 = *(a1 + 32);
  v9 = [v6 integerValue];

  v10 = *(v8 + 8 * v9);
  if (v7 < v10)
  {
    return -1;
  }

  else
  {
    return v7 > v10;
  }
}

- (id)filteredObjectsWithDataset:(id)a3 distanceBlock:(id)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count] > 2)
  {
    v8 = [v6 count];
    v45 = v7;
    v47 = self;
    v63 = [(PLLOFOutlierDetection *)self createDistancesMatrixForDataset:v6 distanceBlock:v7];
    v44 = v8;
    v51 = [PLLOFOutlierDetection createKNNMatrixWithDistanceMatrix:"createKNNMatrixWithDistanceMatrix:size:" size:?];
    v49 = [MEMORY[0x1E695DF70] array];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v46 = v6;
    obj = v6;
    v52 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
    if (v52)
    {
      v58 = 0;
      v50 = *v65;
      do
      {
        v9 = 0;
        do
        {
          if (*v65 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(*(&v64 + 1) + 8 * v9);
          v54 = v9;
          v57 = v51;
          v10 = [v57 objectAtIndexedSubscript:v58];
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v55 = v10;
          v11 = 0.0;
          v12 = 0.0;
          v59 = [v10 countByEnumeratingWithState:&v68 objects:v77 count:16];
          if (v59)
          {
            v56 = *v69;
            do
            {
              v13 = 0;
              do
              {
                if (*v69 != v56)
                {
                  objc_enumerationMutation(v55);
                }

                v60 = v13;
                v14 = [*(*(&v68 + 1) + 8 * v13) integerValue];
                v15 = v57;
                v16 = [v15 objectAtIndexedSubscript:v14];
                v72 = 0u;
                v73 = 0u;
                v74 = 0u;
                v75 = 0u;
                v61 = v16;
                v17 = [v16 countByEnumeratingWithState:&v72 objects:buf count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v73;
                  v20 = 0.0;
                  do
                  {
                    for (i = 0; i != v18; ++i)
                    {
                      if (*v73 != v19)
                      {
                        objc_enumerationMutation(v61);
                      }

                      v22 = [*(*(&v72 + 1) + 8 * i) integerValue];
                      v23 = v63[v22];
                      v24 = [v15 objectAtIndexedSubscript:v22];
                      v25 = [v24 lastObject];
                      v26 = v23[[v25 integerValue]];

                      v27 = v63[v14][v22];
                      if (v26 >= v27)
                      {
                        v27 = v26;
                      }

                      v20 = v20 + v27;
                    }

                    v18 = [v61 countByEnumeratingWithState:&v72 objects:buf count:16];
                  }

                  while (v18);
                }

                else
                {
                  v20 = 0.0;
                }

                v28 = 1.0 / (v20 / [v61 count]);

                v12 = v12 + v28;
                v13 = v60 + 1;
              }

              while (v60 + 1 != v59);
              v59 = [v55 countByEnumeratingWithState:&v68 objects:v77 count:16];
            }

            while (v59);
          }

          v62 = [v55 count];
          v29 = v57;
          v30 = [v29 objectAtIndexedSubscript:v58];
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v31 = [v30 countByEnumeratingWithState:&v72 objects:buf count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v73;
            v11 = 0.0;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v73 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = [*(*(&v72 + 1) + 8 * j) integerValue];
                v36 = v63[v35];
                v37 = [v29 objectAtIndexedSubscript:v35];
                v38 = [v37 lastObject];
                v39 = v36[[v38 integerValue]];

                v40 = v63[v58][v35];
                if (v39 >= v40)
                {
                  v40 = v39;
                }

                v11 = v11 + v40;
              }

              v32 = [v30 countByEnumeratingWithState:&v72 objects:buf count:16];
            }

            while (v32);
          }

          v41 = 1.0 / (v11 / [v30 count]);

          if (v12 / v62 / v41 <= 1.1)
          {
            [v49 addObject:v53];
          }

          ++v58;
          v9 = v54 + 1;
        }

        while (v54 + 1 != v52);
        v52 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
      }

      while (v52);
    }

    [(PLLOFOutlierDetection *)v47 freeDistancesMatrix:v63 forDataset:obj];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v43 = [v49 count];
      *buf = 134218240;
      v79 = v44 - v43;
      v80 = 2048;
      v81 = v44;
      _os_log_debug_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "LOF Filtering: Filtered %ld outliers for %ld objects", buf, 0x16u);
    }

    v7 = v45;
    v6 = v46;
  }

  else
  {
    v49 = v6;
  }

  return v49;
}

- (PLLOFOutlierDetection)init
{
  v3.receiver = self;
  v3.super_class = PLLOFOutlierDetection;
  result = [(PLLOFOutlierDetection *)&v3 init];
  if (result)
  {
    result->_k = 4;
  }

  return result;
}

@end