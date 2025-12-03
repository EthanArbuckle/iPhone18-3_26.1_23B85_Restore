@interface PLTimeSpanClustering
- (PLTimeSpanClustering)init;
- (id)performWithDataset:(id)dataset progressBlock:(id)block;
- (unint64_t)_findNearestIndexMatchingTimeSpan:(unint64_t)span inDataset:(id)dataset;
@end

@implementation PLTimeSpanClustering

- (id)performWithDataset:(id)dataset progressBlock:(id)block
{
  datasetCopy = dataset;
  blockCopy = block;
  v8 = [datasetCopy sortedArrayUsingComparator:&__block_literal_global_29402];
  array = [MEMORY[0x1E695DF70] array];
  averageNumberOfObjects = self->_averageNumberOfObjects;
  v11 = [datasetCopy count];
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
      blockCopy[2](blockCopy, &v22, averageNumberOfObjects / v11);
      if (v22)
      {
        break;
      }

      v13 = [(PLTimeSpanClustering *)self _findNearestIndexMatchingTimeSpan:averageNumberOfObjects inDataset:v8];
      v14 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v12, v13 - v12}];
      v15 = [v8 objectsAtIndexes:v14];

      v16 = [PLDataCluster clusterWithObjects:v15];
      [array addObject:v16];

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
  v18 = [datasetCopy objectsAtIndexes:v17];

  v19 = [PLDataCluster clusterWithObjects:v18];
  [array addObject:v19];

  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

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

- (unint64_t)_findNearestIndexMatchingTimeSpan:(unint64_t)span inDataset:(id)dataset
{
  datasetCopy = dataset;
  if ([datasetCopy count] <= span)
  {
    spanCopy = [datasetCopy count] - 1;
  }

  else
  {
    selfCopy = self;
    v7 = span - 1;
    v33 = [datasetCopy objectAtIndexedSubscript:span];
    v8 = span + 1;
    v9 = [datasetCopy objectAtIndexedSubscript:span];
    v10 = 0.0;
    v34 = 2;
    spanCopy = span;
    spanCopy2 = span;
    v32 = datasetCopy;
    while (1)
    {
      if (v8 >= [datasetCopy count])
      {
        spanCopy = [datasetCopy count] - 1;
        v12 = v9;
        v24 = v33;
        goto LABEL_19;
      }

      v12 = [datasetCopy objectAtIndexedSubscript:v8];
      pl_date = [v12 pl_date];
      [pl_date timeIntervalSince1970];
      v15 = v14;
      pl_date2 = [v9 pl_date];
      [pl_date2 timeIntervalSince1970];
      v18 = v15 - v17;

      if (v18 >= selfCopy->_minimumSpan)
      {
        spanCopy = v8 - 1;
        v19 = v33;
LABEL_17:

        v12 = v9;
        v24 = v19;
        goto LABEL_19;
      }

      if (v10 < v18)
      {
        spanCopy = v8;
        v10 = v18;
      }

      v12 = v12;

      v19 = v33;
      if (v34 > selfCopy->_averageNumberOfObjects)
      {
        v9 = v12;
        datasetCopy = v32;
        goto LABEL_17;
      }

      v20 = [v32 objectAtIndexedSubscript:v7];
      pl_date3 = [v33 pl_date];
      [pl_date3 timeIntervalSince1970];
      v23 = v22;
      v24 = v20;
      pl_date4 = [v20 pl_date];
      [pl_date4 timeIntervalSince1970];
      v27 = v23 - v26;

      if (v27 >= selfCopy->_minimumSpan)
      {
        break;
      }

      if (v27 > v10)
      {
        spanCopy = v7;
        v10 = v27;
      }

      --v7;

      v28 = spanCopy2 - selfCopy->_averageNumberOfObjects;
      v33 = v24;
      ++v34;
      datasetCopy = v32;
      ++v8;
      v9 = v12;
      if (v7 <= v28)
      {
        goto LABEL_19;
      }
    }

    v24 = v33;
    spanCopy = v7;
    datasetCopy = v32;
LABEL_19:
  }

  return spanCopy;
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