@interface PNPromoterPhotoLibrary
+ (id)_defaultAssetPropertySets;
+ (id)_defaultFacePropertySets;
+ (id)_phFaceSortDescriptors;
+ (id)_phPeopleSortDescriptors;
- (BOOL)pn_performChangesAndWait:(id)a3 error:(id *)a4;
- (PNPromoterPhotoLibrary)initWithPhotoLibrary:(id)a3 rawClusters:(id)a4 includesPets:(BOOL)a5;
- (double)_progressFromWorkerStatesDictionary:(id)a3;
- (float)pn_faceProcessingProgress;
- (id)_defaultAssetFetchOptions;
- (id)_defaultFetchOptions;
- (id)pn_fetchAssetsForFaceGroup:(id)a3;
- (id)pn_fetchAssetsForFaceLocalIdentifiers:(id)a3;
- (id)pn_fetchAssetsForPerson:(id)a3;
- (id)pn_fetchAssetsInMoment:(id)a3;
- (id)pn_fetchAssetsWithLocalIdentifiers:(id)a3;
- (id)pn_fetchCandidatePersonsForPerson:(id)a3;
- (id)pn_fetchFaceGroups;
- (id)pn_fetchFaceGroupsForPerson:(id)a3;
- (id)pn_fetchFacesForFaceGroup:(id)a3;
- (id)pn_fetchFacesForPerson:(id)a3;
- (id)pn_fetchFacesForPerson:(id)a3 inMoment:(id)a4;
- (id)pn_fetchFacesForPersonLocalIdentifiers:(id)a3 inMoment:(id)a4;
- (id)pn_fetchFacesGroupedByAssetLocalIdentifierForAssets:(id)a3;
- (id)pn_fetchFacesWithLocalIdentifiers:(id)a3;
- (id)pn_fetchInvalidAssetIdentifiersForCommonComparison;
- (id)pn_fetchInvalidCandidatePersonsForPerson:(id)a3;
- (id)pn_fetchMoments;
- (id)pn_fetchMomentsForAssetsWithLocalIdentifiers:(id)a3;
- (id)pn_fetchMomentsForPerson:(id)a3;
- (id)pn_fetchMomentsWithLocalIdentifiers:(id)a3;
- (id)pn_fetchPersonsGroupedByAssetLocalIdentifierForAssets:(id)a3;
- (id)pn_fetchPersonsInMoment:(id)a3;
- (id)pn_fetchPersonsWithLocalIdentifiers:(id)a3;
- (id)pn_fetchPersonsWithType:(unint64_t)a3;
- (id)pn_lastAssetDate;
- (id)pn_persistentStorageDirectoryURL;
- (unint64_t)pn_numberOfFacesWithFaceprints;
@end

@implementation PNPromoterPhotoLibrary

- (id)pn_fetchAssetsForFaceLocalIdentifiers:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E6978958] uuidFromLocalIdentifier:*(*(&v16 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [(PNPromoterPhotoLibrary *)self _defaultAssetFetchOptions];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY detectedFaces.uuid IN %@", v5];
  [v12 setInternalPredicate:v13];

  v14 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v12];

  return v14;
}

- (id)pn_lastAssetDate
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v2 setSortDescriptors:v4];

  [v2 setFetchLimit:1];
  [v2 setIncludeAssetSourceTypes:5];
  v5 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v2];
  v6 = [v5 firstObject];
  v7 = [v6 creationDate];

  return v7;
}

- (id)pn_fetchInvalidAssetIdentifiersForCommonComparison
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v33[0] = *MEMORY[0x1E6978C68];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  [v4 setFetchPropertySets:v5];

  v22 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:211 options:v4];
  v21 = [v22 firstObject];
  v6 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:? options:?];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v27 + 1) + 8 * i) localIdentifier];
        [v3 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:201 options:v4];
  v13 = [v12 firstObject];
  v14 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v13 options:v4];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v23 + 1) + 8 * j) localIdentifier];
        [v3 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  return v3;
}

- (float)pn_faceProcessingProgress
{
  v2 = [(PNPromoterPhotoLibrary *)self photoLibrary];
  [v2 ratioOfAssetsWithFacesProcessed];
  v4 = v3;

  return v4;
}

- (double)_progressFromWorkerStatesDictionary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"total-allowed"];
  v5 = [v4 unsignedIntegerValue];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (([v12 isEqualToString:{@"total-allowed", v17}] & 1) == 0)
        {
          v13 = [v6 objectForKeyedSubscript:v12];
          v9 += [v13 unsignedIntegerValue];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
    v14 = v9;
  }

  else
  {
    v14 = 0.0;
  }

  if (v5)
  {
    if (v14 / v5 <= 1.0)
    {
      v15 = v14 / v5;
    }

    else
    {
      v15 = 1.0;
    }
  }

  else
  {
    v15 = -1.0;
  }

  return v15;
}

- (id)pn_fetchFaceGroupsForPerson:(id)a3
{
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v6 = [MEMORY[0x1E6978808] fetchFaceGroupsForPerson:v4 options:v5];

  return v6;
}

- (id)pn_fetchFaceGroups
{
  if ([(NSDictionary *)self->_rawClusters count])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSDictionary count](self->_rawClusters, "count")}];
    rawClusters = self->_rawClusters;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__PNPromoterPhotoLibrary_pn_fetchFaceGroups__block_invoke;
    v8[3] = &unk_1E82A1DD8;
    v9 = v3;
    v5 = v3;
    [(NSDictionary *)rawClusters enumerateKeysAndObjectsUsingBlock:v8];
    v6 = [[PNPromoterFaceGroupFetchResult alloc] initWithFaceGroups:v5];
  }

  else
  {
    v5 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
    v6 = [MEMORY[0x1E6978808] fetchFaceGroupsWithOptions:v5];
  }

  return v6;
}

void __44__PNPromoterPhotoLibrary_pn_fetchFaceGroups__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = [a2 stringValue];
  v6 = [[PNPromoterFaceGroup alloc] initWithGroupIdentifier:v7 andFaceIdentifiers:v5];

  [*(a1 + 32) addObject:v6];
}

- (id)pn_fetchAssetsForFaceGroup:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultAssetFetchOptions];
  v6 = MEMORY[0x1E6978630];
  v10[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v6 fetchAssetsForFaceGroups:v7 options:v5];

  return v8;
}

- (id)pn_fetchAssetsForPerson:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultAssetFetchOptions];
  v6 = MEMORY[0x1E6978630];
  v10[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v6 fetchAssetsForPersons:v7 options:v5];

  return v8;
}

- (id)pn_fetchAssetsInMoment:(id)a3
{
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultAssetFetchOptions];
  v6 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v4 options:v5];

  return v6;
}

- (id)pn_fetchAssetsWithLocalIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultAssetFetchOptions];
  v6 = [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:v4 options:v5];

  return v6;
}

- (id)pn_fetchMomentsForAssetsWithLocalIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v6 = +[PNPersonClusterManager momentSortDescriptors];
  [v5 setSortDescriptors:v6];

  v7 = [MEMORY[0x1E6978650] fetchMomentsForAssetsWithLocalIdentifiers:v4 options:v5];

  return v7;
}

- (id)pn_fetchMomentsForPerson:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PNPromoterPhotoLibrary.m" lineNumber:383 description:{@"%s not implemented", "-[PNPromoterPhotoLibrary pn_fetchMomentsForPerson:]"}];

  abort();
}

- (id)pn_fetchMomentsWithLocalIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v6 = +[PNPersonClusterManager momentSortDescriptors];
  [v5 setSortDescriptors:v6];

  v7 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithLocalIdentifiers:v4 options:v5];

  return v7;
}

- (id)pn_fetchMoments
{
  v2 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v3 = +[PNPersonClusterManager momentSortDescriptors];
  [v2 setSortDescriptors:v3];

  v4 = [MEMORY[0x1E6978650] fetchMomentsWithOptions:v2];

  return v4;
}

- (id)pn_fetchFacesGroupedByAssetLocalIdentifierForAssets:(id)a3
{
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v6 = [objc_opt_class() _defaultFacePropertySets];
  [v5 setFetchPropertySets:v6];

  v7 = [objc_opt_class() _phFaceSortDescriptors];
  [v5 setSortDescriptors:v7];

  [v5 setIncludeTorsoAndFaceDetectionData:1];
  v8 = [MEMORY[0x1E69787C8] fetchFacesGroupedByAssetLocalIdentifierForAssets:v4 options:v5];

  return v8;
}

- (id)pn_fetchFacesForFaceGroup:(id)a3
{
  v5 = a3;
  v6 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v7 = [objc_opt_class() _defaultFacePropertySets];
  [v6 setFetchPropertySets:v7];

  v8 = [objc_opt_class() _phFaceSortDescriptors];
  [v6 setSortDescriptors:v8];

  [v6 setIncludeTorsoAndFaceDetectionData:1];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"faceCrop == nil"];
  [v6 setInternalPredicate:v9];

  if ([(NSDictionary *)self->_rawClusters count])
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = [v5 localIdentifier];
    v12 = [v10 numberWithInteger:{objc_msgSend(v11, "integerValue")}];

    v13 = [(NSDictionary *)self->_rawClusters objectForKeyedSubscript:v12];
    if (![v13 count])
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [v5 localIdentifier];
      [v16 handleFailureInMethod:a2 object:self file:@"PNPromoterPhotoLibrary.m" lineNumber:339 description:{@"No vuFaces for %@", v17}];
    }

    v14 = [MEMORY[0x1E69787C8] fetchFacesWithVuObservationIDs:v13 options:v6];
  }

  else
  {
    v14 = [MEMORY[0x1E69787C8] fetchFacesInFaceGroup:v5 options:v6];
  }

  return v14;
}

- (id)pn_fetchFacesForPersonLocalIdentifiers:(id)a3 inMoment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PNPromoterPhotoLibrary *)self photoLibrary];
  v9 = [v8 fetchFacesForMediaProcessingWithPersonLocalIdentifiers:v7 inMoment:v6];

  if ([v9 count])
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)pn_fetchFacesForPerson:(id)a3 inMoment:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 localIdentifier];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(PNPromoterPhotoLibrary *)self pn_fetchFacesForPersonLocalIdentifiers:v8 inMoment:v6];

  return v9;
}

- (id)pn_fetchFacesForPerson:(id)a3
{
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  [v5 setIncludeOnlyFacesWithFaceprints:1];
  v6 = [objc_opt_class() _defaultFacePropertySets];
  [v5 setFetchPropertySets:v6];

  v7 = [objc_opt_class() _phFaceSortDescriptors];
  [v5 setSortDescriptors:v7];

  [v5 setIncludeTorsoAndFaceDetectionData:1];
  v8 = [MEMORY[0x1E69787C8] fetchFacesForPerson:v4 options:v5];

  return v8;
}

- (id)pn_fetchFacesWithLocalIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v6 = [objc_opt_class() _defaultFacePropertySets];
  [v5 setFetchPropertySets:v6];

  v7 = [objc_opt_class() _phFaceSortDescriptors];
  [v5 setSortDescriptors:v7];

  [v5 setIncludeTorsoAndFaceDetectionData:1];
  v8 = [MEMORY[0x1E69787C8] fetchFacesWithLocalIdentifiers:v4 options:v5];

  return v8;
}

- (unint64_t)pn_numberOfFacesWithFaceprints
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  [v2 setIncludeOnlyFacesWithFaceprints:1];
  v7[0] = *MEMORY[0x1E6978D88];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v2 setFetchPropertySets:v3];

  [v2 setShouldPrefetchCount:1];
  [v2 setIncludeTorsoAndFaceDetectionData:1];
  v4 = [MEMORY[0x1E69787C8] fetchFacesWithOptions:v2];
  v5 = [v4 count];

  return v5;
}

- (id)pn_fetchPersonsGroupedByAssetLocalIdentifierForAssets:(id)a3
{
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  [v5 setMinimumVerifiedFaceCount:1];
  [v5 setMinimumUnverifiedFaceCount:1];
  v6 = [objc_opt_class() _phPeopleSortDescriptors];
  [v5 setSortDescriptors:v6];

  [v5 setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978980] fetchPersonsGroupedByAssetLocalIdentifierForAssets:v4 options:v5];

  return v7;
}

- (id)pn_fetchInvalidCandidatePersonsForPerson:(id)a3
{
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v6 = [objc_opt_class() _phPeopleSortDescriptors];
  [v5 setSortDescriptors:v6];

  [v5 setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978980] fetchInvalidMergeCandidatePersonsForPerson:v4 options:v5];

  return v7;
}

- (id)pn_fetchCandidatePersonsForPerson:(id)a3
{
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v6 = [objc_opt_class() _phPeopleSortDescriptors];
  [v5 setSortDescriptors:v6];

  [v5 setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978980] fetchMergeCandidatePersonsForPerson:v4 options:v5];

  return v7;
}

- (id)pn_fetchPersonsInMoment:(id)a3
{
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  [v5 setMinimumVerifiedFaceCount:1];
  [v5 setMinimumUnverifiedFaceCount:1];
  v6 = [objc_opt_class() _phPeopleSortDescriptors];
  [v5 setSortDescriptors:v6];

  [v5 setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978980] fetchPersonsForAssetCollection:v4 options:v5];

  return v7;
}

- (id)pn_fetchPersonsWithType:(unint64_t)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v7 = [objc_opt_class() _phPeopleSortDescriptors];
  [v6 setSortDescriptors:v7];

  [v6 setIncludeTorsoOnlyPerson:1];
  v8 = 0;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      [v6 setPersonContext:0];
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_11;
      }

      [v6 setMinimumVerifiedFaceCount:1];
      [v6 setMinimumUnverifiedFaceCount:1];
    }

LABEL_10:
    v8 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v6];
    goto LABEL_11;
  }

  switch(a3)
  {
    case 1uLL:
      v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@ OR verifiedType = %@", &unk_1F46E5300, &unk_1F46E5318];
      [v6 setPredicate:v19];

      goto LABEL_10;
    case 2uLL:
      [v6 setMinimumVerifiedFaceCount:2];
      [v6 setMinimumUnverifiedFaceCount:2];
      v9 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v6];
      v10 = [(PNPromoterPhotoLibrary *)self photoLibrary];
      v11 = [v10 librarySpecificFetchOptions];

      v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
      v24[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [v11 setSortDescriptors:v13];

      v14 = [v9 fetchedObjects];
      v15 = MEMORY[0x1E696AE18];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __50__PNPromoterPhotoLibrary_pn_fetchPersonsWithType___block_invoke;
      v22[3] = &unk_1E82A1DB0;
      v23 = v11;
      v16 = v11;
      v17 = [v15 predicateWithBlock:v22];
      v18 = [v14 filteredArrayUsingPredicate:v17];

      goto LABEL_12;
    case 0uLL:
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"PNPromoterPhotoLibrary.m" lineNumber:219 description:@"PNPhotoLibraryProtocolPeopleTypeFaceGroup cannot be used on PH objects"];

      abort();
  }

LABEL_11:
  v9 = v8;
  v18 = v9;
LABEL_12:

  return v18;
}

BOOL __50__PNPromoterPhotoLibrary_pn_fetchPersonsWithType___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978630];
  v15 = a2;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v15 count:1];
  v7 = [v3 fetchAssetsForPersons:v6 options:{*(a1 + 32), v15, v16}];

  v8 = [v7 firstObject];
  v9 = [v8 creationDate];
  v10 = [v7 lastObject];
  v11 = [v10 creationDate];
  [v9 timeIntervalSinceDate:v11];
  v13 = v12;

  return v13 > 86400.0;
}

- (id)pn_fetchPersonsWithLocalIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  [v5 setMinimumVerifiedFaceCount:1];
  [v5 setMinimumUnverifiedFaceCount:1];
  v6 = [objc_opt_class() _phPeopleSortDescriptors];
  [v5 setSortDescriptors:v6];

  [v5 setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978980] fetchPersonsWithLocalIdentifiers:v4 options:v5];

  return v7;
}

- (id)pn_persistentStorageDirectoryURL
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 processName];

  if (![v4 isEqualToString:@"mediaanalysisd"])
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v22 = 0;
    v11 = [v10 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v22];
    v12 = v22;
    if (v12)
    {
      v13 = v12;
      v9 = 0;
LABEL_9:
      v14 = MEMORY[0x1E695DFF8];
      v15 = NSTemporaryDirectory();
      v16 = [v14 fileURLWithPath:v15];

      v9 = v16;
LABEL_10:

      goto LABEL_11;
    }

    v9 = [v11 URLByAppendingPathComponent:v4];
    buf[0] = 0;
    v19 = [v9 path];
    v20 = [v10 fileExistsAtPath:v19 isDirectory:buf];

    if (v20)
    {
      if ((buf[0] & 1) == 0)
      {

        v9 = 0;
        v13 = 0;
        goto LABEL_9;
      }

      v13 = 0;
    }

    else
    {
      v21 = 0;
      [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v21];
      v13 = v21;
    }

    if (v9 && !v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = [(PNPromoterPhotoLibrary *)self photoLibrary];
  v6 = [v5 isSystemPhotoLibrary];

  v7 = [(PNPromoterPhotoLibrary *)self photoLibrary];
  v8 = v7;
  if (!v6)
  {
    v17 = [v7 photoLibraryURL];
    v9 = [v17 URLByAppendingPathComponent:@"private/com.apple.mediaanalysisd/caches/vision"];

    goto LABEL_13;
  }

  v23 = 0;
  v9 = [v7 urlForApplicationDataFolderIdentifier:2 error:&v23];
  v10 = v23;

  if (v9)
  {
LABEL_11:

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v25 = v10;
    _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PNPromotePhotoLibrary] Failed to access vision service URL. Error: %@", buf, 0xCu);
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)_defaultAssetFetchOptions
{
  v3 = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v4 = [objc_opt_class() _defaultAssetPropertySets];
  [v3 setFetchPropertySets:v4];

  if ([(PNPromoterPhotoLibrary *)self includesPets])
  {
    [v3 setIncludedDetectionTypes:&unk_1F46E5570];
  }

  return v3;
}

- (id)_defaultFetchOptions
{
  v3 = [(PNPromoterPhotoLibrary *)self photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  [v4 setWantsIncrementalChangeDetails:0];
  if ([(PNPromoterPhotoLibrary *)self includesPets])
  {
    [v4 setIncludedDetectionTypes:&unk_1F46E5558];
  }

  return v4;
}

- (BOOL)pn_performChangesAndWait:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PNPromoterPhotoLibrary *)self photoLibrary];
  LOBYTE(a4) = [v7 performChangesAndWait:v6 error:a4];

  return a4;
}

- (PNPromoterPhotoLibrary)initWithPhotoLibrary:(id)a3 rawClusters:(id)a4 includesPets:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PNPromoterPhotoLibrary;
  v11 = [(PNPromoterPhotoLibrary *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_photoLibrary, a3);
    objc_storeStrong(&v12->_rawClusters, a4);
    v12->_includesPets = a5;
  }

  return v12;
}

+ (id)_defaultFacePropertySets
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6978D78];
  v5[0] = *MEMORY[0x1E6978D88];
  v5[1] = v2;
  v5[2] = *MEMORY[0x1E6978D60];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

+ (id)_defaultAssetPropertySets
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6978CE0];
  v5[0] = *MEMORY[0x1E6978C18];
  v5[1] = v2;
  v5[2] = *MEMORY[0x1E6978CA8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

+ (id)_phPeopleSortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)_phFaceSortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end