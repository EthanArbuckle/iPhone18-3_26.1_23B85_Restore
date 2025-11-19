@interface PXStoryMemoryMomentConcreteClusteringDistanceCalculator
- (PXStoryMemoryMomentConcreteClusteringDistanceCalculator)initWithWeights:(id)a3 locationsByAssetUUID:(id)a4 faceprintsByAssetUUID:(id)a5;
- (id)densityClusteringDistanceBlockForAssets:(id)a3;
- (void)clusteringDistanceForAssets:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5 resultHandler:(id)a6;
@end

@implementation PXStoryMemoryMomentConcreteClusteringDistanceCalculator

- (void)clusteringDistanceForAssets:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5 resultHandler:(id)a6
{
  v73 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  if (v11)
  {
    v13 = [v10 objectAtIndex:a4];
    v14 = [v10 objectAtIndex:a5];
    v19 = v14;
    if (v13 && v14)
    {
      v20 = [v13 creationDate];
      v21 = [v19 creationDate];
      [v20 timeIntervalSinceDate:v21];
      v23 = v22;

      if (v23 < 0.0)
      {
        v23 = -v23;
      }

      v28 = 1.0;
      v29 = 1.0;
      if (self->_locationWeight > 0.0)
      {
        locationsByAssetUUID = self->_locationsByAssetUUID;
        v31 = [v13 uuid];
        v32 = [(NSDictionary *)locationsByAssetUUID objectForKeyedSubscript:v31];

        v33 = self->_locationsByAssetUUID;
        v34 = [v19 uuid];
        v35 = [(NSDictionary *)v33 objectForKeyedSubscript:v34];

        if (v32 && v35)
        {
          [v32 distanceFromLocation:v35];
          v29 = v36;
        }
      }

      if (self->_faceWeight > 0.0)
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        faceprintsByAssetUUID = self->_faceprintsByAssetUUID;
        v38 = [v13 uuid];
        v39 = [(NSDictionary *)faceprintsByAssetUUID objectForKeyedSubscript:v38];

        v40 = [v39 countByEnumeratingWithState:&v67 objects:v72 count:16];
        if (v40)
        {
          v41 = v40;
          v56 = v13;
          v57 = v12;
          v58 = v11;
          v59 = v10;
          v42 = 0;
          v61 = *v68;
          v62 = v19;
          v28 = 3.40282347e38;
          obj = v39;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v68 != v61)
              {
                objc_enumerationMutation(obj);
              }

              v44 = *(*(&v67 + 1) + 8 * i);
              v63 = 0u;
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v45 = self;
              v46 = self->_faceprintsByAssetUUID;
              v47 = [v62 uuid];
              v48 = [(NSDictionary *)v46 objectForKeyedSubscript:v47];

              v49 = [v48 countByEnumeratingWithState:&v63 objects:v71 count:16];
              if (v49)
              {
                v50 = v49;
                v51 = *v64;
                do
                {
                  for (j = 0; j != v50; ++j)
                  {
                    if (*v64 != v51)
                    {
                      objc_enumerationMutation(v48);
                    }

                    v53 = [v44 computeDistance:*(*(&v63 + 1) + 8 * j) withDistanceFunction:0 error:0];
                    v54 = v53;
                    if (v53)
                    {
                      [v53 doubleValue];
                      if (v28 >= v55)
                      {
                        v28 = v55;
                      }

                      v42 = 1;
                    }
                  }

                  v50 = [v48 countByEnumeratingWithState:&v63 objects:v71 count:16];
                }

                while (v50);
              }

              self = v45;
            }

            v41 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
          }

          while (v41);

          if ((v42 & 1) == 0)
          {
            v28 = 1.0;
          }

          v11 = v58;
          v10 = v59;
          v13 = v56;
          v12 = v57;
          v19 = v62;
        }

        else
        {
        }
      }

      v24.n128_f64[0] = v29 * self->_locationWeight + v23 * self->_timeWeight + v28 * self->_faceWeight;
      v25.n128_f64[0] = v29;
      v26.n128_f64[0] = v23;
      v27.n128_f64[0] = v28;
      v11[2](v11, v24, v25, v26, v27);
    }

    else
    {
      v15.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
      v16.n128_u64[0] = 0;
      v17.n128_u64[0] = 0;
      v18.n128_u64[0] = 0;
      v11[2](v11, v15, v16, v17, v18);
    }
  }

  objc_autoreleasePoolPop(v12);
}

- (id)densityClusteringDistanceBlockForAssets:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__PXStoryMemoryMomentConcreteClusteringDistanceCalculator_densityClusteringDistanceBlockForAssets___block_invoke;
  v8[3] = &unk_1E7734A90;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = _Block_copy(v8);

  return v6;
}

double __99__PXStoryMemoryMomentConcreteClusteringDistanceCalculator_densityClusteringDistanceBlockForAssets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = [v5 intValue];
  v10 = [v6 intValue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__PXStoryMemoryMomentConcreteClusteringDistanceCalculator_densityClusteringDistanceBlockForAssets___block_invoke_2;
  v13[3] = &unk_1E7734A68;
  v13[4] = &v14;
  [v7 clusteringDistanceForAssets:v8 fromIndex:v9 toIndex:v10 resultHandler:v13];
  v11 = v15[3];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (PXStoryMemoryMomentConcreteClusteringDistanceCalculator)initWithWeights:(id)a3 locationsByAssetUUID:(id)a4 faceprintsByAssetUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = PXStoryMemoryMomentConcreteClusteringDistanceCalculator;
  v11 = [(PXStoryMemoryMomentConcreteClusteringDistanceCalculator *)&v24 init];
  if (v11)
  {
    v12 = [v8 objectForKeyedSubscript:@"time"];
    if (v12)
    {
      v13 = [v8 objectForKeyedSubscript:@"time"];
      [v13 doubleValue];
      *(v11 + 5) = v14;
    }

    else
    {
      *(v11 + 5) = 0x3FF0000000000000;
    }

    v15 = [v8 objectForKeyedSubscript:@"location"];
    if (v15)
    {
      v16 = [v8 objectForKeyedSubscript:@"location"];
      [v16 doubleValue];
      *(v11 + 6) = v17;
      v18 = v11 + 48;
    }

    else
    {
      *(v11 + 6) = 0x3FF0000000000000;
      v18 = v11 + 48;
    }

    v19 = [v8 objectForKeyedSubscript:@"face"];
    if (v19)
    {
      v20 = [v8 objectForKeyedSubscript:@"face"];
      [v20 doubleValue];
      *(v11 + 7) = v21;
      v22 = v11 + 56;
    }

    else
    {
      *(v11 + 7) = 0x3FF0000000000000;
      v22 = v11 + 56;
    }

    if (!v10)
    {
      *v22 = 0;
    }

    if ([v9 count] <= 1)
    {
      *v18 = 0;
    }

    objc_storeStrong(v11 + 3, a4);
    objc_storeStrong(v11 + 4, a5);
  }

  return v11;
}

@end