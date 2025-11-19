@interface PLDataClustering
- (PLDataClustering)initWithDistanceBlock:(id)a3;
- (PLDataClustering)initWithNumericValueKeypaths:(id)a3;
- (double)createDistancesFlatMatrixForDataset:(id)a3;
- (double)createDistancesMatrixForDataset:(id)a3 progressBlock:(id)a4;
- (uint64_t)flatMatrixIndexForRow:(unint64_t)a3 andColumn:;
- (void)freeDistancesMatrix:(double *)a3 forDataset:(id)a4;
@end

@implementation PLDataClustering

- (PLDataClustering)initWithNumericValueKeypaths:(id)a3
{
  v5 = a3;
  v6 = [(PLDataClustering *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_numericValueKeypaths, a3);
  }

  return v7;
}

- (PLDataClustering)initWithDistanceBlock:(id)a3
{
  v4 = a3;
  v5 = [(PLDataClustering *)self init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    distanceBlock = v5->_distanceBlock;
    v5->_distanceBlock = v6;
  }

  return v5;
}

- (double)createDistancesFlatMatrixForDataset:(id)a3
{
  v5 = [a3 count];
  v6 = malloc_type_malloc(4 * ((v5 * (v5 - 1)) & 0x1FFFFFFFFFFFFFFFLL), 0x100004000313F17uLL);
  v7 = [(PLDataClustering *)self distanceBlock];
  if (v5)
  {
    v8 = v7;
    v9 = 0;
    v16 = v5;
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        context = objc_autoreleasePoolPush();
        v18 = v11 + 500;
        if (v11 + 500 >= v5)
        {
          v12 = v5;
        }

        else
        {
          v12 = v11 + 500;
        }

        v13 = v10;
        while (v11 < v12)
        {
          if (v13)
          {
            v14 = v8[2](v8, [a3 objectAtIndexedSubscript:v9], objc_msgSend(a3, "objectAtIndexedSubscript:", v11));
            v6[[(PLDataClustering *)self flatMatrixIndexForRow:v9 andColumn:v11]] = v14;
          }

          ++v11;
          --v13;
        }

        objc_autoreleasePoolPop(context);
        v10 -= 500;
        v11 = v18;
        v5 = v16;
      }

      while (v18 < v16);
      ++v9;
    }

    while (v9 != v16);
  }

  return v6;
}

- (uint64_t)flatMatrixIndexForRow:(unint64_t)a3 andColumn:
{
  if (result)
  {
    if (a2 == a3)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      return -1;
    }

    else
    {
      if (a2 >= a3)
      {
        v3 = a3;
      }

      else
      {
        v3 = a2;
      }

      if (a2 <= a3)
      {
        v4 = a3;
      }

      else
      {
        v4 = a2;
      }

      return v3 + (((v4 - 1) * v4) >> 1);
    }
  }

  return result;
}

- (void)freeDistancesMatrix:(double *)a3 forDataset:(id)a4
{
  if ([a4 count])
  {
    v6 = 0;
    do
    {
      free(a3[v6++]);
    }

    while (v6 < [a4 count]);
  }

  free(a3);
}

- (double)createDistancesMatrixForDataset:(id)a3 progressBlock:(id)a4
{
  v7 = [a3 count];
  v8 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v8[i] = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
    }

    v10 = [(PLDataClustering *)self distanceBlock];
    v11 = 0;
    v31 = 0;
    v12 = 1.0 / v7;
    v24 = v8;
    v13 = 0.0;
    v14 = v8;
    v25 = a4;
    v27 = v7;
    do
    {
      v15 = 0;
      v26 = v14;
      v16 = v11;
      v17 = &v8[v11];
      do
      {
        context = objc_autoreleasePoolPush();
        v29 = v16 + 500;
        if (v16 + 500 >= v7)
        {
          v18 = v7;
        }

        else
        {
          v18 = v16 + 500;
        }

        v30 = v15;
        v19 = v14;
        while (v16 < v18)
        {
          if (v15)
          {
            v20 = v10[2](v10, [a3 objectAtIndexedSubscript:v11], objc_msgSend(a3, "objectAtIndexedSubscript:", v16));
            (*v17)[v16] = v20;
            v21 = v19;
          }

          else
          {
            v20 = 0.0;
            v21 = v17;
          }

          (*v21)[v11] = v20;
          ++v16;
          ++v19;
          --v15;
        }

        objc_autoreleasePoolPop(context);
        v14 += 500;
        v15 = v30 - 500;
        v16 = v29;
        v7 = v27;
      }

      while (v29 < v27);
      if (v25)
      {
        v13 = v12 + v13;
        v25[2](v25, &v31, v13);
        v8 = v24;
        v22 = v26;
        if (v31)
        {
          return v8;
        }
      }

      else
      {
        v8 = v24;
        v22 = v26;
      }

      ++v11;
      v14 = v22 + 1;
    }

    while (v11 != v27);
  }

  return v8;
}

@end