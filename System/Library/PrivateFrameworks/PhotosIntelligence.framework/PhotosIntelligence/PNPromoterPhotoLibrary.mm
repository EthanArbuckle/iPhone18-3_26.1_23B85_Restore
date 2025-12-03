@interface PNPromoterPhotoLibrary
+ (id)_defaultAssetPropertySets;
+ (id)_defaultFacePropertySets;
+ (id)_phFaceSortDescriptors;
+ (id)_phPeopleSortDescriptors;
- (BOOL)pn_performChangesAndWait:(id)wait error:(id *)error;
- (PNPromoterPhotoLibrary)initWithPhotoLibrary:(id)library rawClusters:(id)clusters includesPets:(BOOL)pets;
- (double)_progressFromWorkerStatesDictionary:(id)dictionary;
- (float)pn_faceProcessingProgress;
- (id)_defaultAssetFetchOptions;
- (id)_defaultFetchOptions;
- (id)pn_fetchAssetsForFaceGroup:(id)group;
- (id)pn_fetchAssetsForFaceLocalIdentifiers:(id)identifiers;
- (id)pn_fetchAssetsForPerson:(id)person;
- (id)pn_fetchAssetsInMoment:(id)moment;
- (id)pn_fetchAssetsWithLocalIdentifiers:(id)identifiers;
- (id)pn_fetchCandidatePersonsForPerson:(id)person;
- (id)pn_fetchFaceGroups;
- (id)pn_fetchFaceGroupsForPerson:(id)person;
- (id)pn_fetchFacesForFaceGroup:(id)group;
- (id)pn_fetchFacesForPerson:(id)person;
- (id)pn_fetchFacesForPerson:(id)person inMoment:(id)moment;
- (id)pn_fetchFacesForPersonLocalIdentifiers:(id)identifiers inMoment:(id)moment;
- (id)pn_fetchFacesGroupedByAssetLocalIdentifierForAssets:(id)assets;
- (id)pn_fetchFacesWithLocalIdentifiers:(id)identifiers;
- (id)pn_fetchInvalidAssetIdentifiersForCommonComparison;
- (id)pn_fetchInvalidCandidatePersonsForPerson:(id)person;
- (id)pn_fetchMoments;
- (id)pn_fetchMomentsForAssetsWithLocalIdentifiers:(id)identifiers;
- (id)pn_fetchMomentsForPerson:(id)person;
- (id)pn_fetchMomentsWithLocalIdentifiers:(id)identifiers;
- (id)pn_fetchPersonsGroupedByAssetLocalIdentifierForAssets:(id)assets;
- (id)pn_fetchPersonsInMoment:(id)moment;
- (id)pn_fetchPersonsWithLocalIdentifiers:(id)identifiers;
- (id)pn_fetchPersonsWithType:(unint64_t)type;
- (id)pn_lastAssetDate;
- (id)pn_persistentStorageDirectoryURL;
- (unint64_t)pn_numberOfFacesWithFaceprints;
@end

@implementation PNPromoterPhotoLibrary

- (id)pn_fetchAssetsForFaceLocalIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = identifiersCopy;
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

  _defaultAssetFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultAssetFetchOptions];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY detectedFaces.uuid IN %@", v5];
  [_defaultAssetFetchOptions setInternalPredicate:v13];

  v14 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:_defaultAssetFetchOptions];

  return v14;
}

- (id)pn_lastAssetDate
{
  v9[1] = *MEMORY[0x1E69E9840];
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [_defaultFetchOptions setSortDescriptors:v4];

  [_defaultFetchOptions setFetchLimit:1];
  [_defaultFetchOptions setIncludeAssetSourceTypes:5];
  v5 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:_defaultFetchOptions];
  firstObject = [v5 firstObject];
  creationDate = [firstObject creationDate];

  return creationDate;
}

- (id)pn_fetchInvalidAssetIdentifiersForCommonComparison
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v33[0] = *MEMORY[0x1E6978C68];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  [_defaultFetchOptions setFetchPropertySets:v5];

  v22 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:211 options:_defaultFetchOptions];
  firstObject = [v22 firstObject];
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

        localIdentifier = [*(*(&v27 + 1) + 8 * i) localIdentifier];
        [v3 addObject:localIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:201 options:_defaultFetchOptions];
  firstObject2 = [v12 firstObject];
  v14 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:firstObject2 options:_defaultFetchOptions];
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

        localIdentifier2 = [*(*(&v23 + 1) + 8 * j) localIdentifier];
        [v3 addObject:localIdentifier2];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  return v3;
}

- (float)pn_faceProcessingProgress
{
  photoLibrary = [(PNPromoterPhotoLibrary *)self photoLibrary];
  [photoLibrary ratioOfAssetsWithFacesProcessed];
  v4 = v3;

  return v4;
}

- (double)_progressFromWorkerStatesDictionary:(id)dictionary
{
  v22 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"total-allowed"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = dictionaryCopy;
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

  if (unsignedIntegerValue)
  {
    if (v14 / unsignedIntegerValue <= 1.0)
    {
      v15 = v14 / unsignedIntegerValue;
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

- (id)pn_fetchFaceGroupsForPerson:(id)person
{
  personCopy = person;
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v6 = [MEMORY[0x1E6978808] fetchFaceGroupsForPerson:personCopy options:_defaultFetchOptions];

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
    _defaultFetchOptions = v3;
    [(NSDictionary *)rawClusters enumerateKeysAndObjectsUsingBlock:v8];
    v6 = [[PNPromoterFaceGroupFetchResult alloc] initWithFaceGroups:_defaultFetchOptions];
  }

  else
  {
    _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
    v6 = [MEMORY[0x1E6978808] fetchFaceGroupsWithOptions:_defaultFetchOptions];
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

- (id)pn_fetchAssetsForFaceGroup:(id)group
{
  v10[1] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  _defaultAssetFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultAssetFetchOptions];
  v6 = MEMORY[0x1E6978630];
  v10[0] = groupCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v6 fetchAssetsForFaceGroups:v7 options:_defaultAssetFetchOptions];

  return v8;
}

- (id)pn_fetchAssetsForPerson:(id)person
{
  v10[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  _defaultAssetFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultAssetFetchOptions];
  v6 = MEMORY[0x1E6978630];
  v10[0] = personCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v6 fetchAssetsForPersons:v7 options:_defaultAssetFetchOptions];

  return v8;
}

- (id)pn_fetchAssetsInMoment:(id)moment
{
  momentCopy = moment;
  _defaultAssetFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultAssetFetchOptions];
  v6 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:momentCopy options:_defaultAssetFetchOptions];

  return v6;
}

- (id)pn_fetchAssetsWithLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _defaultAssetFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultAssetFetchOptions];
  v6 = [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:identifiersCopy options:_defaultAssetFetchOptions];

  return v6;
}

- (id)pn_fetchMomentsForAssetsWithLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v6 = +[PNPersonClusterManager momentSortDescriptors];
  [_defaultFetchOptions setSortDescriptors:v6];

  v7 = [MEMORY[0x1E6978650] fetchMomentsForAssetsWithLocalIdentifiers:identifiersCopy options:_defaultFetchOptions];

  return v7;
}

- (id)pn_fetchMomentsForPerson:(id)person
{
  personCopy = person;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PNPromoterPhotoLibrary.m" lineNumber:383 description:{@"%s not implemented", "-[PNPromoterPhotoLibrary pn_fetchMomentsForPerson:]"}];

  abort();
}

- (id)pn_fetchMomentsWithLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v6 = +[PNPersonClusterManager momentSortDescriptors];
  [_defaultFetchOptions setSortDescriptors:v6];

  v7 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithLocalIdentifiers:identifiersCopy options:_defaultFetchOptions];

  return v7;
}

- (id)pn_fetchMoments
{
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  v3 = +[PNPersonClusterManager momentSortDescriptors];
  [_defaultFetchOptions setSortDescriptors:v3];

  v4 = [MEMORY[0x1E6978650] fetchMomentsWithOptions:_defaultFetchOptions];

  return v4;
}

- (id)pn_fetchFacesGroupedByAssetLocalIdentifierForAssets:(id)assets
{
  assetsCopy = assets;
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  _defaultFacePropertySets = [objc_opt_class() _defaultFacePropertySets];
  [_defaultFetchOptions setFetchPropertySets:_defaultFacePropertySets];

  _phFaceSortDescriptors = [objc_opt_class() _phFaceSortDescriptors];
  [_defaultFetchOptions setSortDescriptors:_phFaceSortDescriptors];

  [_defaultFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  v8 = [MEMORY[0x1E69787C8] fetchFacesGroupedByAssetLocalIdentifierForAssets:assetsCopy options:_defaultFetchOptions];

  return v8;
}

- (id)pn_fetchFacesForFaceGroup:(id)group
{
  groupCopy = group;
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  _defaultFacePropertySets = [objc_opt_class() _defaultFacePropertySets];
  [_defaultFetchOptions setFetchPropertySets:_defaultFacePropertySets];

  _phFaceSortDescriptors = [objc_opt_class() _phFaceSortDescriptors];
  [_defaultFetchOptions setSortDescriptors:_phFaceSortDescriptors];

  [_defaultFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"faceCrop == nil"];
  [_defaultFetchOptions setInternalPredicate:v9];

  if ([(NSDictionary *)self->_rawClusters count])
  {
    v10 = MEMORY[0x1E696AD98];
    localIdentifier = [groupCopy localIdentifier];
    v12 = [v10 numberWithInteger:{objc_msgSend(localIdentifier, "integerValue")}];

    v13 = [(NSDictionary *)self->_rawClusters objectForKeyedSubscript:v12];
    if (![v13 count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      localIdentifier2 = [groupCopy localIdentifier];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PNPromoterPhotoLibrary.m" lineNumber:339 description:{@"No vuFaces for %@", localIdentifier2}];
    }

    v14 = [MEMORY[0x1E69787C8] fetchFacesWithVuObservationIDs:v13 options:_defaultFetchOptions];
  }

  else
  {
    v14 = [MEMORY[0x1E69787C8] fetchFacesInFaceGroup:groupCopy options:_defaultFetchOptions];
  }

  return v14;
}

- (id)pn_fetchFacesForPersonLocalIdentifiers:(id)identifiers inMoment:(id)moment
{
  momentCopy = moment;
  identifiersCopy = identifiers;
  photoLibrary = [(PNPromoterPhotoLibrary *)self photoLibrary];
  v9 = [photoLibrary fetchFacesForMediaProcessingWithPersonLocalIdentifiers:identifiersCopy inMoment:momentCopy];

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

- (id)pn_fetchFacesForPerson:(id)person inMoment:(id)moment
{
  v11[1] = *MEMORY[0x1E69E9840];
  momentCopy = moment;
  localIdentifier = [person localIdentifier];
  v11[0] = localIdentifier;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(PNPromoterPhotoLibrary *)self pn_fetchFacesForPersonLocalIdentifiers:v8 inMoment:momentCopy];

  return v9;
}

- (id)pn_fetchFacesForPerson:(id)person
{
  personCopy = person;
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  [_defaultFetchOptions setIncludeOnlyFacesWithFaceprints:1];
  _defaultFacePropertySets = [objc_opt_class() _defaultFacePropertySets];
  [_defaultFetchOptions setFetchPropertySets:_defaultFacePropertySets];

  _phFaceSortDescriptors = [objc_opt_class() _phFaceSortDescriptors];
  [_defaultFetchOptions setSortDescriptors:_phFaceSortDescriptors];

  [_defaultFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  v8 = [MEMORY[0x1E69787C8] fetchFacesForPerson:personCopy options:_defaultFetchOptions];

  return v8;
}

- (id)pn_fetchFacesWithLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  _defaultFacePropertySets = [objc_opt_class() _defaultFacePropertySets];
  [_defaultFetchOptions setFetchPropertySets:_defaultFacePropertySets];

  _phFaceSortDescriptors = [objc_opt_class() _phFaceSortDescriptors];
  [_defaultFetchOptions setSortDescriptors:_phFaceSortDescriptors];

  [_defaultFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  v8 = [MEMORY[0x1E69787C8] fetchFacesWithLocalIdentifiers:identifiersCopy options:_defaultFetchOptions];

  return v8;
}

- (unint64_t)pn_numberOfFacesWithFaceprints
{
  v7[1] = *MEMORY[0x1E69E9840];
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  [_defaultFetchOptions setIncludeOnlyFacesWithFaceprints:1];
  v7[0] = *MEMORY[0x1E6978D88];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [_defaultFetchOptions setFetchPropertySets:v3];

  [_defaultFetchOptions setShouldPrefetchCount:1];
  [_defaultFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  v4 = [MEMORY[0x1E69787C8] fetchFacesWithOptions:_defaultFetchOptions];
  v5 = [v4 count];

  return v5;
}

- (id)pn_fetchPersonsGroupedByAssetLocalIdentifierForAssets:(id)assets
{
  assetsCopy = assets;
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  [_defaultFetchOptions setMinimumVerifiedFaceCount:1];
  [_defaultFetchOptions setMinimumUnverifiedFaceCount:1];
  _phPeopleSortDescriptors = [objc_opt_class() _phPeopleSortDescriptors];
  [_defaultFetchOptions setSortDescriptors:_phPeopleSortDescriptors];

  [_defaultFetchOptions setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978980] fetchPersonsGroupedByAssetLocalIdentifierForAssets:assetsCopy options:_defaultFetchOptions];

  return v7;
}

- (id)pn_fetchInvalidCandidatePersonsForPerson:(id)person
{
  personCopy = person;
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  _phPeopleSortDescriptors = [objc_opt_class() _phPeopleSortDescriptors];
  [_defaultFetchOptions setSortDescriptors:_phPeopleSortDescriptors];

  [_defaultFetchOptions setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978980] fetchInvalidMergeCandidatePersonsForPerson:personCopy options:_defaultFetchOptions];

  return v7;
}

- (id)pn_fetchCandidatePersonsForPerson:(id)person
{
  personCopy = person;
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  _phPeopleSortDescriptors = [objc_opt_class() _phPeopleSortDescriptors];
  [_defaultFetchOptions setSortDescriptors:_phPeopleSortDescriptors];

  [_defaultFetchOptions setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978980] fetchMergeCandidatePersonsForPerson:personCopy options:_defaultFetchOptions];

  return v7;
}

- (id)pn_fetchPersonsInMoment:(id)moment
{
  momentCopy = moment;
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  [_defaultFetchOptions setMinimumVerifiedFaceCount:1];
  [_defaultFetchOptions setMinimumUnverifiedFaceCount:1];
  _phPeopleSortDescriptors = [objc_opt_class() _phPeopleSortDescriptors];
  [_defaultFetchOptions setSortDescriptors:_phPeopleSortDescriptors];

  [_defaultFetchOptions setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978980] fetchPersonsForAssetCollection:momentCopy options:_defaultFetchOptions];

  return v7;
}

- (id)pn_fetchPersonsWithType:(unint64_t)type
{
  v24[1] = *MEMORY[0x1E69E9840];
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  _phPeopleSortDescriptors = [objc_opt_class() _phPeopleSortDescriptors];
  [_defaultFetchOptions setSortDescriptors:_phPeopleSortDescriptors];

  [_defaultFetchOptions setIncludeTorsoOnlyPerson:1];
  v8 = 0;
  if (type > 2)
  {
    if (type == 3)
    {
      [_defaultFetchOptions setPersonContext:0];
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_11;
      }

      [_defaultFetchOptions setMinimumVerifiedFaceCount:1];
      [_defaultFetchOptions setMinimumUnverifiedFaceCount:1];
    }

LABEL_10:
    v8 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:_defaultFetchOptions];
    goto LABEL_11;
  }

  switch(type)
  {
    case 1uLL:
      v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@ OR verifiedType = %@", &unk_1F46E5300, &unk_1F46E5318];
      [_defaultFetchOptions setPredicate:v19];

      goto LABEL_10;
    case 2uLL:
      [_defaultFetchOptions setMinimumVerifiedFaceCount:2];
      [_defaultFetchOptions setMinimumUnverifiedFaceCount:2];
      v9 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:_defaultFetchOptions];
      photoLibrary = [(PNPromoterPhotoLibrary *)self photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
      v24[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [librarySpecificFetchOptions setSortDescriptors:v13];

      fetchedObjects = [v9 fetchedObjects];
      v15 = MEMORY[0x1E696AE18];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __50__PNPromoterPhotoLibrary_pn_fetchPersonsWithType___block_invoke;
      v22[3] = &unk_1E82A1DB0;
      v23 = librarySpecificFetchOptions;
      v16 = librarySpecificFetchOptions;
      v17 = [v15 predicateWithBlock:v22];
      v18 = [fetchedObjects filteredArrayUsingPredicate:v17];

      goto LABEL_12;
    case 0uLL:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PNPromoterPhotoLibrary.m" lineNumber:219 description:@"PNPhotoLibraryProtocolPeopleTypeFaceGroup cannot be used on PH objects"];

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

- (id)pn_fetchPersonsWithLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  [_defaultFetchOptions setMinimumVerifiedFaceCount:1];
  [_defaultFetchOptions setMinimumUnverifiedFaceCount:1];
  _phPeopleSortDescriptors = [objc_opt_class() _phPeopleSortDescriptors];
  [_defaultFetchOptions setSortDescriptors:_phPeopleSortDescriptors];

  [_defaultFetchOptions setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978980] fetchPersonsWithLocalIdentifiers:identifiersCopy options:_defaultFetchOptions];

  return v7;
}

- (id)pn_persistentStorageDirectoryURL
{
  v26 = *MEMORY[0x1E69E9840];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  if (![processName isEqualToString:@"mediaanalysisd"])
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

    v9 = [v11 URLByAppendingPathComponent:processName];
    buf[0] = 0;
    path = [v9 path];
    v20 = [v10 fileExistsAtPath:path isDirectory:buf];

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

  photoLibrary = [(PNPromoterPhotoLibrary *)self photoLibrary];
  isSystemPhotoLibrary = [photoLibrary isSystemPhotoLibrary];

  photoLibrary2 = [(PNPromoterPhotoLibrary *)self photoLibrary];
  v8 = photoLibrary2;
  if (!isSystemPhotoLibrary)
  {
    photoLibraryURL = [photoLibrary2 photoLibraryURL];
    v9 = [photoLibraryURL URLByAppendingPathComponent:@"private/com.apple.mediaanalysisd/caches/vision"];

    goto LABEL_13;
  }

  v23 = 0;
  v9 = [photoLibrary2 urlForApplicationDataFolderIdentifier:2 error:&v23];
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
  _defaultFetchOptions = [(PNPromoterPhotoLibrary *)self _defaultFetchOptions];
  _defaultAssetPropertySets = [objc_opt_class() _defaultAssetPropertySets];
  [_defaultFetchOptions setFetchPropertySets:_defaultAssetPropertySets];

  if ([(PNPromoterPhotoLibrary *)self includesPets])
  {
    [_defaultFetchOptions setIncludedDetectionTypes:&unk_1F46E5570];
  }

  return _defaultFetchOptions;
}

- (id)_defaultFetchOptions
{
  photoLibrary = [(PNPromoterPhotoLibrary *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  if ([(PNPromoterPhotoLibrary *)self includesPets])
  {
    [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F46E5558];
  }

  return librarySpecificFetchOptions;
}

- (BOOL)pn_performChangesAndWait:(id)wait error:(id *)error
{
  waitCopy = wait;
  photoLibrary = [(PNPromoterPhotoLibrary *)self photoLibrary];
  LOBYTE(error) = [photoLibrary performChangesAndWait:waitCopy error:error];

  return error;
}

- (PNPromoterPhotoLibrary)initWithPhotoLibrary:(id)library rawClusters:(id)clusters includesPets:(BOOL)pets
{
  libraryCopy = library;
  clustersCopy = clusters;
  v14.receiver = self;
  v14.super_class = PNPromoterPhotoLibrary;
  v11 = [(PNPromoterPhotoLibrary *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_photoLibrary, library);
    objc_storeStrong(&v12->_rawClusters, clusters);
    v12->_includesPets = pets;
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