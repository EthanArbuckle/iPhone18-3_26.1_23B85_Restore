@interface PLDBSCANClustering
- (id)_expandClusterForObject:(id)a3 dataset:(id)a4 objectsMappedToCluster:(__CFSet *)a5 visitedObjects:(unint64_t *)a6 distancesFlatMatrix:(double *)a7 neighbors:(id)a8;
- (id)_neighborsAtIndex:(unint64_t)a3 withDistancesFlatMatrix:(double *)a4 datasetSize:(unint64_t)a5;
- (id)performWithDataset:(id)a3 progressBlock:(id)a4;
@end

@implementation PLDBSCANClustering

- (id)_expandClusterForObject:(id)a3 dataset:(id)a4 objectsMappedToCluster:(__CFSet *)a5 visitedObjects:(unint64_t *)a6 distancesFlatMatrix:(double *)a7 neighbors:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a8;
  v16 = objc_opt_new();
  [v16 addObject:v13];
  v24 = v13;
  CFSetAddValue(a5, v13);
  v17 = [MEMORY[0x1E696AD50] indexSet];
  v25 = v15;
  [v17 addIndexes:v15];
  v26 = [v14 count];
  while ([v17 count])
  {
    v18 = [v17 firstIndex];
    v19 = [v14 objectAtIndexedSubscript:v18];
    if (!a6[v18])
    {
      a6[v18] = 1;
      v20 = [(PLDBSCANClustering *)self _neighborsAtIndex:v18 withDistancesFlatMatrix:a7 datasetSize:v26];
      v21 = [v20 count];
      if (v21 >= [(PLDataDensityClustering *)self minimumNumberOfObjects])
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __122__PLDBSCANClustering__expandClusterForObject_dataset_objectsMappedToCluster_visitedObjects_distancesFlatMatrix_neighbors___block_invoke;
        v28[3] = &unk_1E7576388;
        v29 = v25;
        v30 = v17;
        [v20 enumerateIndexesUsingBlock:v28];
      }
    }

    if (!CFSetContainsValue(a5, v19))
    {
      [v16 addObject:v19];
      CFSetAddValue(a5, v19);
    }

    [v17 removeIndex:v18];
  }

  v22 = [PLDataCluster clusterWithObjects:v16];

  return v22;
}

uint64_t __122__PLDBSCANClustering__expandClusterForObject_dataset_objectsMappedToCluster_visitedObjects_distancesFlatMatrix_neighbors___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsIndex:a2];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) addIndex:a2];
    v5 = *(a1 + 40);

    return [v5 addIndex:a2];
  }

  return result;
}

- (id)_neighborsAtIndex:(unint64_t)a3 withDistancesFlatMatrix:(double *)a4 datasetSize:(unint64_t)a5
{
  v9 = objc_opt_new();
  [(PLDataDensityClustering *)self maximumDistance];
  if (a5)
  {
    v11 = v10;
    v12 = 0;
    do
    {
      if (a3 != v12 && a4[[(PLDataClustering *)self flatMatrixIndexForRow:v12 andColumn:a3]] <= v11)
      {
        [v9 addIndex:v12];
      }

      ++v12;
    }

    while (a5 != v12);
  }

  return v9;
}

- (id)performWithDataset:(id)a3 progressBlock:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v34 = self;
  if ([v6 count] >= 0x801)
  {
    v8 = objc_alloc_init(PLSamplingClustering);
    [(PLSamplingClustering *)v8 setNumberOfClusters:2048];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __55__PLDBSCANClustering_performWithDataset_progressBlock___block_invoke;
    v41[3] = &unk_1E756BBF0;
    v42 = v7;
    v9 = [(PLSamplingClustering *)v8 performWithDataset:v6 progressBlock:v41];
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:2048];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __55__PLDBSCANClustering_performWithDataset_progressBlock___block_invoke_2;
    v39[3] = &unk_1E756BC18;
    v11 = v10;
    v40 = v11;
    [v9 enumerateObjectsUsingBlock:v39];
    v12 = v11;

    v6 = v12;
    self = v34;
  }

  v13 = [v6 count];
  v14 = [(PLDataClustering *)self createDistancesFlatMatrixForDataset:v6];
  v15 = malloc_type_calloc(8uLL, v13, 0xABC152BAuLL);
  v33 = v13;
  cf = CFSetCreateMutable(*MEMORY[0x1E695E480], v13, 0);
  v31 = [MEMORY[0x1E695DF70] array];
  v30 = [MEMORY[0x1E695DF70] array];
  if ([(PLDataDensityClustering *)self minimumNumberOfObjects])
  {
    v32 = [(PLDataDensityClustering *)self minimumNumberOfObjects]- 1;
  }

  else
  {
    v32 = 0;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v28 = v7;
    v19 = 0;
    v20 = *v36;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v16);
        }

        if (!v15[v19])
        {
          v22 = *(*(&v35 + 1) + 8 * i);
          v15[v19] = 1;
          [(PLDBSCANClustering *)self _neighborsAtIndex:v19 withDistancesFlatMatrix:v14 datasetSize:v33];
          v24 = v23 = self;
          if ([v24 count] >= v32)
          {
            v25 = [(PLDBSCANClustering *)v23 _expandClusterForObject:v22 dataset:v16 objectsMappedToCluster:cf visitedObjects:v15 distancesFlatMatrix:v14 neighbors:v24];
            [v30 addObject:v25];
          }

          else
          {
            [v31 addObject:v22];
          }

          self = v34;
        }

        ++v19;
      }

      v18 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v18);

    v7 = v28;
  }

  else
  {

    if (!v15)
    {
      goto LABEL_21;
    }
  }

  free(v15);
LABEL_21:
  [(PLDataClustering *)self freeDistancesFlatMatrix:v14];
  CFRelease(cf);
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v30];

  return v26;
}

uint64_t __55__PLDBSCANClustering_performWithDataset_progressBlock___block_invoke(uint64_t a1, double a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(a2 * 0.1);
  }

  return result;
}

void __55__PLDBSCANClustering_performWithDataset_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objects];
  v3 = [v4 firstObject];
  [v2 addObject:v3];
}

@end