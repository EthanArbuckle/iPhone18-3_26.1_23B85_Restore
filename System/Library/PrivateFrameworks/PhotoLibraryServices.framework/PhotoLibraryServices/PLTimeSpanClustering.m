@interface PLTimeSpanClustering
- (PLTimeSpanClustering)init;
- (id)performWithDataset:(id)a3 progressBlock:(id)a4;
- (unint64_t)_findNearestIndexMatchingTimeSpan:(unint64_t)a3 inDataset:(id)a4;
@end

@implementation PLTimeSpanClustering

- (id)performWithDataset:(id)a3 progressBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 sortedArrayUsingComparator:&__block_literal_global_29402];
  v9 = [MEMORY[0x1E695DF70] array];
  averageNumberOfObjects = self->_averageNumberOfObjects;
  v11 = [v6 count];
  v22 = 0;
  if (averageNumberOfObjects >= v11)
  {
    v13 = 0;
  }

  else
  {
    v12 = 0;
    while (1)
    {
      v7[2](v7, &v22, averageNumberOfObjects / v11);
      if (v22)
      {
        break;
      }

      v13 = [(PLTimeSpanClustering *)self _findNearestIndexMatchingTimeSpan:averageNumberOfObjects inDataset:v8];
      v14 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v12, v13 - v12}];
      v15 = [v8 objectsAtIndexes:v14];

      v16 = [PLDataCluster clusterWithObjects:v15];
      [v9 addObject:v16];

      averageNumberOfObjects = self->_averageNumberOfObjects + v13;
      v12 = v13;
      if (averageNumberOfObjects >= v11)
      {
        goto LABEL_8;
      }
    }

    v13 = v12;
  }

LABEL_8:
  v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v13, v11 - v13}];
  v18 = [v6 objectsAtIndexes:v17];

  v19 = [PLDataCluster clusterWithObjects:v18];
  [v9 addObject:v19];

  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];

  return v20;
}

uint64_t __57__PLTimeSpanClustering_performWithDataset_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 pl_date];
  v6 = [v4 pl_date];

  v7 = [v5 compare:v6];
  return v7;
}

- (unint64_t)_findNearestIndexMatchingTimeSpan:(unint64_t)a3 inDataset:(id)a4
{
  v6 = a4;
  if ([v6 count] <= a3)
  {
    v11 = [v6 count] - 1;
  }

  else
  {
    v31 = self;
    v7 = a3 - 1;
    v33 = [v6 objectAtIndexedSubscript:a3];
    v8 = a3 + 1;
    v9 = [v6 objectAtIndexedSubscript:a3];
    v10 = 0.0;
    v34 = 2;
    v11 = a3;
    v30 = a3;
    v32 = v6;
    while (1)
    {
      if (v8 >= [v6 count])
      {
        v11 = [v6 count] - 1;
        v12 = v9;
        v24 = v33;
        goto LABEL_19;
      }

      v12 = [v6 objectAtIndexedSubscript:v8];
      v13 = [v12 pl_date];
      [v13 timeIntervalSince1970];
      v15 = v14;
      v16 = [v9 pl_date];
      [v16 timeIntervalSince1970];
      v18 = v15 - v17;

      if (v18 >= v31->_minimumSpan)
      {
        v11 = v8 - 1;
        v19 = v33;
LABEL_17:

        v12 = v9;
        v24 = v19;
        goto LABEL_19;
      }

      if (v10 < v18)
      {
        v11 = v8;
        v10 = v18;
      }

      v12 = v12;

      v19 = v33;
      if (v34 > v31->_averageNumberOfObjects)
      {
        v9 = v12;
        v6 = v32;
        goto LABEL_17;
      }

      v20 = [v32 objectAtIndexedSubscript:v7];
      v21 = [v33 pl_date];
      [v21 timeIntervalSince1970];
      v23 = v22;
      v24 = v20;
      v25 = [v20 pl_date];
      [v25 timeIntervalSince1970];
      v27 = v23 - v26;

      if (v27 >= v31->_minimumSpan)
      {
        break;
      }

      if (v27 > v10)
      {
        v11 = v7;
        v10 = v27;
      }

      --v7;

      v28 = v30 - v31->_averageNumberOfObjects;
      v33 = v24;
      ++v34;
      v6 = v32;
      ++v8;
      v9 = v12;
      if (v7 <= v28)
      {
        goto LABEL_19;
      }
    }

    v24 = v33;
    v11 = v7;
    v6 = v32;
LABEL_19:
  }

  return v11;
}

- (PLTimeSpanClustering)init
{
  v3.receiver = self;
  v3.super_class = PLTimeSpanClustering;
  result = [(PLTimeSpanClustering *)&v3 init];
  if (result)
  {
    result->_minimumSpan = 21600.0;
    result->_averageNumberOfObjects = 500;
  }

  return result;
}

@end