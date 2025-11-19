@interface PGAssetLocationResolver
+ (id)closestAddressNodeFromMomentNodes:(id)a3 toLocation:(id)a4 withMaximumDistance:(double)a5 allowRemoteLocations:(BOOL)a6;
+ (id)closestAssetLocationForAsset:(id)a3 inAssetCollection:(id)a4;
@end

@implementation PGAssetLocationResolver

+ (id)closestAddressNodeFromMomentNodes:(id)a3 toLocation:(id)a4 withMaximumDistance:(double)a5 allowRemoteLocations:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v10)
  {
    [v10 coordinate];
    v13 = v12;
    v15 = v14;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    *&v33[3] = a5;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__27579;
    v31 = __Block_byref_object_dispose__27580;
    v32 = 0;
    v16 = [PGGraphMomentNodeCollection alloc];
    v17 = [v9 anyObject];
    v18 = [v17 graph];
    v19 = [(MAElementCollection *)v16 initWithSet:v9 graph:v18];

    v20 = [(PGGraphEdgeCollection *)PGGraphAddressEdgeCollection edgesFromNodes:v19];
    if (v6)
    {
      v21 = +[PGGraphRemoteAddressEdge filter];
      v22 = [(MAEdgeCollection *)PGGraphEdgeCollection edgesFromNodes:v19 matchingFilter:v21];

      v23 = [v20 collectionByFormingUnionWith:v22];

      v20 = v23;
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __113__PGAssetLocationResolver_closestAddressNodeFromMomentNodes_toLocation_withMaximumDistance_allowRemoteLocations___block_invoke;
    v26[3] = &unk_2788821C8;
    v26[6] = v13;
    v26[7] = v15;
    v26[4] = v33;
    v26[5] = &v27;
    [v20 enumerateEdgesUsingBlock:v26];
    v24 = [v28[5] targetNode];

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(v33, 8);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

void __113__PGAssetLocationResolver_closestAddressNodeFromMomentNodes_toLocation_withMaximumDistance_allowRemoteLocations___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 photoCoordinate];
  if (CLLocationCoordinate2DIsValid(v7))
  {
    CLLocationCoordinate2DGetDistanceFrom();
    v6 = *(*(a1 + 32) + 8);
    if (v5 < *(v6 + 24))
    {
      *(v6 + 24) = v5;
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

+ (id)closestAssetLocationForAsset:(id)a3 inAssetCollection:(id)a4
{
  v47[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 clsLocation];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    goto LABEL_34;
  }

  v10 = [v6 photoLibrary];
  v11 = [v10 librarySpecificFetchOptions];

  [v11 setIncludeGuestAssets:1];
  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v47[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
  [v11 setSortDescriptors:v13];

  v14 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v6 options:v11];
  v15 = [v14 indexOfObject:v5];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = v15;
    v41 = v11;
    v42 = v6;
    v17 = [v5 creationDate];
    [v17 timeIntervalSinceReferenceDate];
    v19 = v18;

    v20 = [v14 count] - 1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__PGAssetLocationResolver_closestAssetLocationForAsset_inAssetCollection___block_invoke;
    aBlock[3] = &unk_2788821A0;
    v40 = v14;
    v21 = v14;
    v45 = v21;
    v46 = v19;
    v22 = _Block_copy(aBlock);
    v23 = v20;
    v24 = v22;
    v25 = v16 < v20;
    v26 = v16 > 0;
    v27 = v16 + 1;
    v28 = v16 - 1;
    v43 = v23;
    if (v16 < 1)
    {
      if (v16 >= v23)
      {
        v9 = 0;
LABEL_32:

        v8 = 0;
        v6 = v42;
        v14 = v40;
        v11 = v41;
        goto LABEL_33;
      }

      v39 = v5;
      v30 = 1.79769313e308;
    }

    else
    {
      v39 = v5;
      v29 = v23;
      v30 = (*(v22 + 2))(v22, v16 - 1);
      if (v16 >= v29)
      {
        v31 = 1.79769313e308;
LABEL_11:
        while (1)
        {
          v32 = v25 && v26 ? v30 < v31 : !v25;
          v33 = v32 ? v28 : v27;
          v34 = [v21 objectAtIndexedSubscript:{v33, v39}];
          v35 = [v34 clsLocation];
          if (v35)
          {
            break;
          }

          if (v32)
          {
            if (v28-- < 1)
            {
              v26 = 0;
            }

            else
            {
              v30 = v24[2](v24, v28);
              v26 = 1;
            }
          }

          else
          {
            if (v27 >= v43)
            {
              v25 = 0;
            }

            else
            {
              v31 = v24[2](v24, v27 + 1);
              v25 = 1;
            }

            ++v27;
          }

          if (!v25 && !v26)
          {
            v9 = 0;
            goto LABEL_31;
          }
        }

        v9 = v35;

LABEL_31:
        v5 = v39;
        goto LABEL_32;
      }
    }

    v31 = v24[2](v24, v16 + 1);
    goto LABEL_11;
  }

  v9 = 0;
LABEL_33:

LABEL_34:
  v37 = *MEMORY[0x277D85DE8];

  return v9;
}

double __74__PGAssetLocationResolver_closestAssetLocationForAsset_inAssetCollection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = [v3 creationDate];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  v7 = vabdd_f64(*(a1 + 40), v6);
  return v7;
}

@end