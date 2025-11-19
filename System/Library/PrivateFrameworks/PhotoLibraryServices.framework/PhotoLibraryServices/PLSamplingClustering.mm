@interface PLSamplingClustering
- (id)performWithDataset:(id)a3 progressBlock:(id)a4;
@end

@implementation PLSamplingClustering

- (id)performWithDataset:(id)a3 progressBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_numberOfClusters <= 1)
  {
    numberOfClusters = 1;
  }

  else
  {
    numberOfClusters = self->_numberOfClusters;
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:numberOfClusters];
  v10 = [v6 count] / numberOfClusters;
  v11 = vcvtps_u32_f32(v10);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__36069;
  v33 = __Block_byref_object_dispose__36070;
  v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __57__PLSamplingClustering_performWithDataset_progressBlock___block_invoke;
  v22 = &unk_1E756B830;
  v28 = v10;
  v12 = v9;
  v23 = v12;
  v26 = &v29;
  v27 = v11;
  v13 = v7;
  v25 = v13;
  v14 = v6;
  v24 = v14;
  [v14 enumerateObjectsUsingBlock:&v19];
  if ([v30[5] count])
  {
    v15 = [PLDataCluster clusterWithObjects:v30[5]];
    [v12 addObject:v15];
  }

  v16 = v24;
  v17 = v12;

  _Block_object_dispose(&v29, 8);

  return v17;
}

void __57__PLSamplingClustering_performWithDataset_progressBlock___block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v14 = a2;
  v7 = a3;
  v8 = (a3 / *(a1 + 72)) - 1;
  if (v8 == [*(a1 + 32) count])
  {
    v9 = [PLDataCluster clusterWithObjects:*(*(*(a1 + 56) + 8) + 40)];
    [*(a1 + 32) addObject:v9];
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a1 + 64)];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))(v13, a4, (v7 / [*(a1 + 40) count]));
    }
  }

  [*(*(*(a1 + 56) + 8) + 40) addObject:v14];
}

@end