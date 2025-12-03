@interface PGAssetLocationResolver
+ (id)closestAddressNodeFromMomentNodes:(id)nodes toLocation:(id)location withMaximumDistance:(double)distance allowRemoteLocations:(BOOL)locations;
+ (id)closestAssetLocationForAsset:(id)asset inAssetCollection:(id)collection;
@end

@implementation PGAssetLocationResolver

+ (id)closestAddressNodeFromMomentNodes:(id)nodes toLocation:(id)location withMaximumDistance:(double)distance allowRemoteLocations:(BOOL)locations
{
  locationsCopy = locations;
  nodesCopy = nodes;
  locationCopy = location;
  v11 = locationCopy;
  if (locationCopy)
  {
    [locationCopy coordinate];
    v13 = v12;
    v15 = v14;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    *&v33[3] = distance;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__27579;
    v31 = __Block_byref_object_dispose__27580;
    v32 = 0;
    v16 = [PGGraphMomentNodeCollection alloc];
    anyObject = [nodesCopy anyObject];
    graph = [anyObject graph];
    v19 = [(MAElementCollection *)v16 initWithSet:nodesCopy graph:graph];

    v20 = [(PGGraphEdgeCollection *)PGGraphAddressEdgeCollection edgesFromNodes:v19];
    if (locationsCopy)
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
    targetNode = [v28[5] targetNode];

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(v33, 8);
  }

  else
  {
    targetNode = 0;
  }

  return targetNode;
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

+ (id)closestAssetLocationForAsset:(id)asset inAssetCollection:(id)collection
{
  v47[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  collectionCopy = collection;
  clsLocation = [assetCopy clsLocation];
  v8 = clsLocation;
  if (clsLocation)
  {
    v9 = clsLocation;
    goto LABEL_34;
  }

  photoLibrary = [collectionCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v47[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v13];

  v14 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:collectionCopy options:librarySpecificFetchOptions];
  v15 = [v14 indexOfObject:assetCopy];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = v15;
    v41 = librarySpecificFetchOptions;
    v42 = collectionCopy;
    creationDate = [assetCopy creationDate];
    [creationDate timeIntervalSinceReferenceDate];
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
        collectionCopy = v42;
        v14 = v40;
        librarySpecificFetchOptions = v41;
        goto LABEL_33;
      }

      v39 = assetCopy;
      v30 = 1.79769313e308;
    }

    else
    {
      v39 = assetCopy;
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
          clsLocation2 = [v34 clsLocation];
          if (clsLocation2)
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

        v9 = clsLocation2;

LABEL_31:
        assetCopy = v39;
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