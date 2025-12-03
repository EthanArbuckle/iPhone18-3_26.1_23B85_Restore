@interface PNPersonClusterManager
+ (id)assetSortDescriptors;
+ (id)faceGroupSortDescriptors;
+ (id)faceSortDescriptors;
+ (id)momentSortDescriptors;
+ (id)nodeSortDescriptors;
+ (id)peopleSortDescriptors;
+ (id)personProcessingSortDescriptors;
- (BOOL)pn_performChangesAndWait:(id)wait error:(id *)error;
- (PNPersonClusterManager)initWithPhotoLibrary:(id)library detectionType:(signed __int16)type promoterDelegate:(id)delegate;
- (float)_adjustDistanceFactorForPerson:(id)person andPerson:(id)andPerson forAgeType:(unsigned __int16)type andAgeType:(unsigned __int16)ageType;
- (float)animalprintBasedDistanceBetweenPetFaces:(id)faces andPetFaces:(id)petFaces;
- (float)distanceBetweenHuman:(id)human andHuman:(id)andHuman useCommonMoments:(BOOL)moments minAgeType:(unsigned __int16 *)type updateBlock:(id)block error:(id *)error;
- (float)distanceBetweenPerson:(id)person andPerson:(id)andPerson useCommonMoments:(BOOL)moments minAgeType:(unsigned __int16 *)type updateBlock:(id)block error:(id *)error;
- (float)distanceBetweenPet:(id)pet andPet:(id)andPet useCommonMoments:(BOOL)moments;
- (float)distanceBetweenPetFaces:(id)faces andPetFaces:(id)petFaces;
- (float)distanceWithOverlapCheckBetweenPerson:(id)person andPerson:(id)andPerson useCommonMoments:(BOOL)moments minAgeType:(unsigned __int16 *)type updateBlock:(id)block error:(id *)error;
- (float)mergeConfidenceBetweenPersonLocalIdentifier:(id)identifier andCandidateLocalIdentifiers:(id)identifiers;
- (float)momentBasedDistanceBetweenPet:(id)pet andPet:(id)andPet;
- (float)pn_faceProcessingProgress;
- (id)_mapPersonClustersToFaceGroups:(id)groups;
- (id)_mapPersonClustersToPersons:(id)persons;
- (id)_representativeFaceObservationForPerson:(id)person ageType:(unsigned __int16 *)type inAssetCollections:(id)collections;
- (id)pn_fetchAssetsForFaceGroup:(id)group;
- (id)pn_fetchAssetsForFaceLocalIdentifiers:(id)identifiers;
- (id)pn_fetchAssetsInMoment:(id)moment;
- (id)pn_fetchAssetsWithLocalIdentifiers:(id)identifiers;
- (id)pn_fetchCandidatePersonsForPerson:(id)person;
- (id)pn_fetchFaceGroups;
- (id)pn_fetchFaceGroupsForPerson:(id)person;
- (id)pn_fetchFacesForFaceGroup:(id)group;
- (id)pn_fetchFacesForPerson:(id)person inMoment:(id)moment;
- (id)pn_fetchFacesForPersonLocalIdentifiers:(id)identifiers inMoment:(id)moment;
- (id)pn_fetchFacesGroupedByAssetLocalIdentifierForAssets:(id)assets;
- (id)pn_fetchFacesWithLocalIdentifiers:(id)identifiers;
- (id)pn_fetchInvalidAssetIdentifiersForCommonComparison;
- (id)pn_fetchInvalidCandidatePersonsForPerson:(id)person;
- (id)pn_fetchMoments;
- (id)pn_fetchMomentsForAssetsWithLocalIdentifiers:(id)identifiers;
- (id)pn_fetchMomentsWithLocalIdentifiers:(id)identifiers;
- (id)pn_fetchPersonsGroupedByAssetLocalIdentifierForAssets:(id)assets;
- (id)pn_fetchPersonsInMoment:(id)moment;
- (id)pn_fetchPersonsWithLocalIdentifiers:(id)identifiers;
- (id)pn_fetchPersonsWithType:(unint64_t)type;
- (id)pn_lastAssetDate;
- (id)pn_persistentStorageDirectoryURL;
- (id)representativeFaceObservationForFaces:(id)faces ageType:(unsigned __int16 *)type inPerson:(id)person;
- (int64_t)assetsOverlapBetweenPerson:(id)person andPerson:(id)andPerson;
- (int64_t)assetsOverlapBetweenPersonAssetIdentifiers:(id)identifiers andPersonAssetIdentifiers:(id)assetIdentifiers;
- (unint64_t)numberOfAssetsInCommonBetweenPerson:(id)person andPerson:(id)andPerson;
- (unint64_t)numberOfAssetsInCommonBetweenPersonAssetIdentifiers:(id)identifiers andPersonAssetIdentifiers:(id)assetIdentifiers;
- (unint64_t)numberOfMomentsInCommonBetweenPerson:(id)person andPerson:(id)andPerson;
- (unint64_t)pn_numberOfFacesWithFaceprints;
- (unsigned)minAgeTypeForFaceAgeType:(unsigned __int16)type andFaceAgeType:(unsigned __int16)ageType;
- (void)clearCaches;
- (void)invalidateCachesForPerson:(id)person;
- (void)mergePersons:(id)persons withPerson:(id)person;
- (void)updateConfidenceCacheBetweenPersonLocalIdentifier:(id)identifier andOtherPersonLocalIdentifier:(id)localIdentifier withDistance:(double)distance;
@end

@implementation PNPersonClusterManager

- (id)pn_lastAssetDate
{
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  pn_lastAssetDate = [photoLibrary pn_lastAssetDate];

  return pn_lastAssetDate;
}

- (float)pn_faceProcessingProgress
{
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  [photoLibrary pn_faceProcessingProgress];
  v4 = v3;

  return v4;
}

- (id)pn_fetchInvalidAssetIdentifiersForCommonComparison
{
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  pn_fetchInvalidAssetIdentifiersForCommonComparison = [photoLibrary pn_fetchInvalidAssetIdentifiersForCommonComparison];

  return pn_fetchInvalidAssetIdentifiersForCommonComparison;
}

- (id)pn_fetchFaceGroupsForPerson:(id)person
{
  personCopy = person;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  sourcePerson = [personCopy sourcePerson];

  v7 = [photoLibrary pn_fetchFaceGroupsForPerson:sourcePerson];

  return v7;
}

- (id)pn_fetchFaceGroups
{
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  pn_fetchFaceGroups = [photoLibrary pn_fetchFaceGroups];

  return pn_fetchFaceGroups;
}

- (id)pn_fetchAssetsForFaceGroup:(id)group
{
  groupCopy = group;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  v6 = [photoLibrary pn_fetchAssetsForFaceGroup:groupCopy];

  return v6;
}

- (id)pn_fetchAssetsInMoment:(id)moment
{
  momentCopy = moment;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  v6 = [photoLibrary pn_fetchAssetsInMoment:momentCopy];

  return v6;
}

- (id)pn_fetchAssetsWithLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  v6 = [photoLibrary pn_fetchAssetsWithLocalIdentifiers:identifiersCopy];

  return v6;
}

- (id)pn_fetchMomentsForAssetsWithLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  v6 = [photoLibrary pn_fetchMomentsForAssetsWithLocalIdentifiers:identifiersCopy];

  return v6;
}

- (id)pn_fetchMomentsWithLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  v6 = [photoLibrary pn_fetchMomentsWithLocalIdentifiers:identifiersCopy];

  return v6;
}

- (id)pn_fetchMoments
{
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  pn_fetchMoments = [photoLibrary pn_fetchMoments];

  return pn_fetchMoments;
}

- (id)pn_fetchAssetsForFaceLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  v6 = [photoLibrary pn_fetchAssetsForFaceLocalIdentifiers:identifiersCopy];

  return v6;
}

- (id)pn_fetchFacesGroupedByAssetLocalIdentifierForAssets:(id)assets
{
  assetsCopy = assets;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  v6 = [photoLibrary pn_fetchFacesGroupedByAssetLocalIdentifierForAssets:assetsCopy];

  return v6;
}

- (id)pn_fetchFacesForFaceGroup:(id)group
{
  groupCopy = group;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  v6 = [photoLibrary pn_fetchFacesForFaceGroup:groupCopy];

  return v6;
}

- (id)pn_fetchFacesForPersonLocalIdentifiers:(id)identifiers inMoment:(id)moment
{
  momentCopy = moment;
  identifiersCopy = identifiers;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  v9 = [photoLibrary pn_fetchFacesForPersonLocalIdentifiers:identifiersCopy inMoment:momentCopy];

  return v9;
}

- (id)pn_fetchFacesForPerson:(id)person inMoment:(id)moment
{
  v40 = *MEMORY[0x1E69E9840];
  personCopy = person;
  momentCopy = moment;
  if (momentCopy)
  {
    backingFaceIdentifiersByMomentIdentifiers = [personCopy backingFaceIdentifiersByMomentIdentifiers];
    localIdentifier = [momentCopy localIdentifier];
    photoLibrary2 = [backingFaceIdentifiersByMomentIdentifiers objectForKeyedSubscript:localIdentifier];

    photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
    if (photoLibrary2)
    {
      allObjects = [photoLibrary2 allObjects];
      v13 = [photoLibrary pn_fetchFacesWithLocalIdentifiers:allObjects];
    }

    else
    {
      personLocalIdentifiers = [personCopy personLocalIdentifiers];
      v17 = [photoLibrary pn_fetchFacesForPersonLocalIdentifiers:personLocalIdentifiers inMoment:momentCopy];

      v18 = objc_opt_new();
      v33 = v17;
      fetchedObjects = [v17 fetchedObjects];
      sourceFaceGroup = [personCopy sourceFaceGroup];
      v34 = personCopy;
      if (sourceFaceGroup)
      {
        backingFaceIdentifiers = [personCopy backingFaceIdentifiers];
      }

      else
      {
        backingFaceIdentifiers = 0;
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v13 = fetchedObjects;
      v22 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v36;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v36 != v24)
            {
              objc_enumerationMutation(v13);
            }

            v26 = *(*(&v35 + 1) + 8 * i);
            if (backingFaceIdentifiers)
            {
              localIdentifier2 = [*(*(&v35 + 1) + 8 * i) localIdentifier];
              v28 = [backingFaceIdentifiers containsObject:localIdentifier2];

              if (!v28)
              {
                continue;
              }
            }

            localIdentifier3 = [v26 localIdentifier];
            [v18 addObject:localIdentifier3];
          }

          v23 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v23);
      }

      personCopy = v34;
      backingFaceIdentifiersByMomentIdentifiers2 = [v34 backingFaceIdentifiersByMomentIdentifiers];
      localIdentifier4 = [momentCopy localIdentifier];
      [backingFaceIdentifiersByMomentIdentifiers2 setObject:v18 forKeyedSubscript:localIdentifier4];

      photoLibrary2 = 0;
    }
  }

  else
  {
    photoLibrary2 = [(PNPersonClusterManager *)self photoLibrary];
    backingFaceIdentifiers2 = [personCopy backingFaceIdentifiers];
    allObjects2 = [backingFaceIdentifiers2 allObjects];
    v13 = [photoLibrary2 pn_fetchFacesWithLocalIdentifiers:allObjects2];
  }

  return v13;
}

- (id)pn_fetchFacesWithLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  v6 = [photoLibrary pn_fetchFacesWithLocalIdentifiers:identifiersCopy];

  return v6;
}

- (unint64_t)pn_numberOfFacesWithFaceprints
{
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  pn_numberOfFacesWithFaceprints = [photoLibrary pn_numberOfFacesWithFaceprints];

  return pn_numberOfFacesWithFaceprints;
}

- (id)pn_fetchPersonsGroupedByAssetLocalIdentifierForAssets:(id)assets
{
  assetsCopy = assets;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  v6 = [photoLibrary pn_fetchPersonsGroupedByAssetLocalIdentifierForAssets:assetsCopy];

  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__PNPersonClusterManager_pn_fetchPersonsGroupedByAssetLocalIdentifierForAssets___block_invoke;
  v11[3] = &unk_1E82A25B0;
  v8 = v7;
  v12 = v8;
  selfCopy = self;
  [v6 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v8;

  return v8;
}

void __80__PNPersonClusterManager_pn_fetchPersonsGroupedByAssetLocalIdentifierForAssets___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 _mapPersonClustersToPersons:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)pn_fetchInvalidCandidatePersonsForPerson:(id)person
{
  personCopy = person;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  sourcePerson = [personCopy sourcePerson];

  v7 = [photoLibrary pn_fetchInvalidCandidatePersonsForPerson:sourcePerson];

  v8 = [(PNPersonClusterManager *)self _mapPersonClustersToPersons:v7];

  return v8;
}

- (id)pn_fetchCandidatePersonsForPerson:(id)person
{
  personCopy = person;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  sourcePerson = [personCopy sourcePerson];

  v7 = [photoLibrary pn_fetchCandidatePersonsForPerson:sourcePerson];

  v8 = [(PNPersonClusterManager *)self _mapPersonClustersToPersons:v7];

  return v8;
}

- (id)pn_fetchPersonsInMoment:(id)moment
{
  momentCopy = moment;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  v6 = [photoLibrary pn_fetchPersonsInMoment:momentCopy];

  v7 = [(PNPersonClusterManager *)self _mapPersonClustersToPersons:v6];

  return v7;
}

- (id)pn_fetchPersonsWithType:(unint64_t)type
{
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  v6 = photoLibrary;
  if (type)
  {
    pn_fetchFaceGroups = [photoLibrary pn_fetchPersonsWithType:type];

    [(PNPersonClusterManager *)self _mapPersonClustersToPersons:pn_fetchFaceGroups];
  }

  else
  {
    pn_fetchFaceGroups = [photoLibrary pn_fetchFaceGroups];

    [(PNPersonClusterManager *)self _mapPersonClustersToFaceGroups:pn_fetchFaceGroups];
  }
  v8 = ;

  return v8;
}

- (id)pn_fetchPersonsWithLocalIdentifiers:(id)identifiers
{
  v25 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_personClusters objectForKeyedSubscript:v12, v20];
        if (v13)
        {
          v14 = v5;
          v15 = v13;
        }

        else
        {
          v14 = v6;
          v15 = v12;
        }

        [v14 addObject:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
    v17 = [photoLibrary pn_fetchPersonsWithLocalIdentifiers:v6];

    v18 = [(PNPersonClusterManager *)self _mapPersonClustersToPersons:v17];
    [v5 unionSet:v18];
  }

  return v5;
}

- (BOOL)pn_performChangesAndWait:(id)wait error:(id *)error
{
  waitCopy = wait;
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  LOBYTE(error) = [photoLibrary pn_performChangesAndWait:waitCopy error:error];

  return error;
}

- (id)pn_persistentStorageDirectoryURL
{
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  pn_persistentStorageDirectoryURL = [photoLibrary pn_persistentStorageDirectoryURL];

  return pn_persistentStorageDirectoryURL;
}

- (float)momentBasedDistanceBetweenPet:(id)pet andPet:(id)andPet
{
  v69 = *MEMORY[0x1E69E9840];
  petCopy = pet;
  andPetCopy = andPet;
  localIdentifier = [petCopy localIdentifier];
  [andPetCopy localIdentifier];
  *&v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  backingMomentIdentifiers = [petCopy backingMomentIdentifiers];
  backingMomentIdentifiers2 = [andPetCopy backingMomentIdentifiers];
  if ([backingMomentIdentifiers count] >= 2 && objc_msgSend(backingMomentIdentifiers2, "count") > 1)
  {
    v12 = [backingMomentIdentifiers mutableCopy];
    [v12 intersectSet:backingMomentIdentifiers2];
    v13 = [v12 count];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v59 = v13;
      v60 = 2112;
      v61 = localIdentifier;
      v62 = 2112;
      v63 = v8;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PNPersonClusterManager] Found %lu common moments between %@ and %@", buf, 0x20u);
    }

    if (!v13)
    {
      v11 = 1.0;
LABEL_38:

      goto LABEL_39;
    }

    if (v13 == 1)
    {
      backingAssetIdentifiers = [petCopy backingAssetIdentifiers];
      backingAssetIdentifiers2 = [andPetCopy backingAssetIdentifiers];
      v52 = backingAssetIdentifiers;
      v16 = [backingAssetIdentifiers mutableCopy];
      [v16 intersectSet:backingAssetIdentifiers2];
      v17 = [v16 count];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        v59 = v17;
        v60 = 2112;
        v61 = localIdentifier;
        v62 = 2112;
        v63 = v8;
        _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PNPersonClusterManager] Found %lu common assets between %@ and %@", buf, 0x20u);
      }

      if (v17)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v59 = v17;
          v60 = 2048;
          v61 = 1;
          _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PNPersonClusterManager] %lu > 0 common assets in %lu common moments under the minimum common moments threshold, returning a distance of 1.0", buf, 0x16u);
        }

        v11 = 1.0;
        v18 = v52;
        goto LABEL_37;
      }
    }

    v46 = v12;
    v47 = backingMomentIdentifiers2;
    allObjects = [v12 allObjects];
    selfCopy2 = self;
    v21 = [(PNPersonClusterManager *)self pn_fetchMomentsWithLocalIdentifiers:allObjects];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v18 = v21;
    v22 = [v18 countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v22)
    {
      v23 = v22;
      v45 = backingMomentIdentifiers;
      v48 = v8;
      v49 = localIdentifier;
      v24 = *v55;
      v25 = 0.0;
      v26 = 0.0;
      v50 = *v55;
      do
      {
        v27 = 0;
        v53 = v23;
        do
        {
          if (*v55 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v28 = *(*(&v54 + 1) + 8 * v27);
          v29 = objc_autoreleasePoolPush();
          v30 = [(PNPersonClusterManager *)selfCopy2 pn_fetchFacesForPerson:petCopy inMoment:v28];
          if ([v30 count] >= 2)
          {
            v31 = [(PNPersonClusterManager *)selfCopy2 pn_fetchFacesForPerson:andPetCopy inMoment:v28];
            if ([v31 count] >= 2)
            {
              v32 = v18;
              v33 = petCopy;
              v34 = andPetCopy;
              fetchedObjects = [v30 fetchedObjects];
              fetchedObjects2 = [v31 fetchedObjects];
              [(PNPersonClusterManager *)selfCopy2 distanceBetweenPetFaces:fetchedObjects andPetFaces:fetchedObjects2];
              v38 = v37;

              v26 = v26 + v38;
              v25 = v25 + 1.0;
              v39 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                v40 = [v30 count];
                v41 = [v31 count];
                *buf = 138413314;
                v59 = v49;
                v60 = 2048;
                v61 = v40;
                v62 = 2112;
                v63 = v48;
                v64 = 2048;
                v65 = v41;
                v66 = 2048;
                v67 = v38;
                _os_log_impl(&dword_1C6F5C000, v39, OS_LOG_TYPE_INFO, "[PNPersonClusterManager] Distance between %@ (%lu faces) and %@ (%lu faces) is %lf", buf, 0x34u);
              }

              andPetCopy = v34;
              petCopy = v33;
              v18 = v32;
              v24 = v50;
              selfCopy2 = self;
              v23 = v53;
            }
          }

          objc_autoreleasePoolPop(v29);
          ++v27;
        }

        while (v23 != v27);
        v23 = [v18 countByEnumeratingWithState:&v54 objects:v68 count:16];
      }

      while (v23);

      v8 = v48;
      localIdentifier = v49;
      backingMomentIdentifiers = v45;
      if (v25 != 0.0)
      {
        v11 = v26 / v25;
        v12 = v46;
        backingMomentIdentifiers2 = v47;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v59 = v49;
          v60 = 2112;
          v61 = v48;
          v62 = 2048;
          *&v63 = v11;
          v42 = MEMORY[0x1E69E9C10];
          v43 = "[PNPersonClusterManager] The average distance across moments between %@ and %@ is %lf";
LABEL_36:
          _os_log_impl(&dword_1C6F5C000, v42, OS_LOG_TYPE_INFO, v43, buf, 0x20u);
          goto LABEL_37;
        }

        goto LABEL_37;
      }
    }

    else
    {
    }

    v11 = 1.0;
    v12 = v46;
    backingMomentIdentifiers2 = v47;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v59 = localIdentifier;
      v60 = 2112;
      v61 = v8;
      v62 = 2048;
      v63 = 2;
      v42 = MEMORY[0x1E69E9C10];
      v43 = "[PNPersonClusterManager] No common moments between %@ and %@ where the pets both have more than %lu faces, returning...";
      goto LABEL_36;
    }

LABEL_37:

    goto LABEL_38;
  }

  v11 = 1.0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v59 = localIdentifier;
    v60 = 2048;
    v61 = [backingMomentIdentifiers count];
    v62 = 2112;
    v63 = v8;
    v64 = 2048;
    v65 = [backingMomentIdentifiers2 count];
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PNPersonClusterManager] Pet %@ has %lu moments and pet %@ has %lu moments, returning a distance of 1.0 because a pet has too few moments", buf, 0x2Au);
  }

LABEL_39:

  return v11;
}

- (float)animalprintBasedDistanceBetweenPetFaces:(id)faces andPetFaces:(id)petFaces
{
  v45 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  petFacesCopy = petFaces;
  v28 = facesCopy;
  v29 = petFacesCopy;
  if ([facesCopy count] && objc_msgSend(petFacesCopy, "count"))
  {
    *buf = 0;
    v38 = buf;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__3141;
    v41 = __Block_byref_object_dispose__3142;
    v42 = 0;
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __78__PNPersonClusterManager_animalprintBasedDistanceBetweenPetFaces_andPetFaces___block_invoke;
    v34[3] = &unk_1E82A2568;
    v36 = buf;
    v8 = v7;
    v35 = v8;
    [facesCopy enumerateObjectsUsingBlock:v34];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __78__PNPersonClusterManager_animalprintBasedDistanceBetweenPetFaces_andPetFaces___block_invoke_379;
    v31[3] = &unk_1E82A2568;
    v33 = buf;
    v10 = v9;
    v32 = v10;
    [petFacesCopy enumerateObjectsUsingBlock:v31];
    v11 = [v8 count];
    if (v11 >= [v10 count])
    {
      v12 = v8;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12;
    v14 = [v8 count];
    if (v14 >= [v10 count])
    {
      v15 = v10;
    }

    else
    {
      v15 = v8;
    }

    v16 = v15;
    if ([v16 count])
    {
      [v13 sortUsingComparator:&__block_literal_global_3144];
      [v16 sortUsingComparator:&__block_literal_global_383];
      v17 = [v16 count];
      v18 = 0;
      v19 = 0.0;
      while ([v13 count] > v18)
      {
        v20 = [v13 objectAtIndexedSubscript:v18];
        v21 = [v16 objectAtIndexedSubscript:v18 % v17];
        v22 = (v38 + 40);
        obj = *(v38 + 5);
        v23 = [v20 computeDistance:v21 withDistanceFunction:0 error:&obj];
        objc_storeStrong(v22, obj);
        [v23 floatValue];
        v25 = v24;

        v19 = v19 + v25;
        ++v18;
      }

      v26 = v19 / [v13 count];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *v43 = 134217984;
        v44 = v26;
        _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PNPersonClusterManager] Found an average distance of %lf for the two pets.", v43, 0xCu);
      }
    }

    else
    {
      v26 = 1.0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v43 = 0;
        _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PNPersonClusterManager] Error: Couldn't extract animalprint from any pet faces for one of the pets", v43, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v26 = 1.0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PNPersonClusterManager] One pet has zero faces, bailing and returning a distance of 1!", buf, 2u);
    }
  }

  return v26;
}

void __78__PNPersonClusterManager_animalprintBasedDistanceBetweenPetFaces_andPetFaces___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E6984408]);
  v5 = [v3 faceprintData];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [v4 initWithState:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 localIdentifier];
      *buf = 138412290;
      v11 = v8;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PNPersonClusterManager] Error: Couldn't extract animalprint from pet face %@", buf, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) addObject:v7];
  }
}

void __78__PNPersonClusterManager_animalprintBasedDistanceBetweenPetFaces_andPetFaces___block_invoke_379(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E6984408]);
  v5 = [v3 faceprintData];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [v4 initWithState:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 localIdentifier];
      *buf = 138412290;
      v11 = v8;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PNPersonClusterManager] Error: Couldn't extract animalprint from pet face %@", buf, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) addObject:v7];
  }
}

uint64_t __78__PNPersonClusterManager_animalprintBasedDistanceBetweenPetFaces_andPetFaces___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 confidence];
  v7 = v6;
  [v5 confidence];
  if (v7 < v8 || ([v4 confidence], v10 = v9, objc_msgSend(v5, "confidence"), v10 == v11) && (v12 = objc_msgSend(v4, "hash"), v12 < objc_msgSend(v5, "hash")))
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t __78__PNPersonClusterManager_animalprintBasedDistanceBetweenPetFaces_andPetFaces___block_invoke_380(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 confidence];
  v7 = v6;
  [v5 confidence];
  if (v7 < v8 || ([v4 confidence], v10 = v9, objc_msgSend(v5, "confidence"), v10 == v11) && (v12 = objc_msgSend(v4, "hash"), v12 < objc_msgSend(v5, "hash")))
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (float)distanceBetweenPetFaces:(id)faces andPetFaces:(id)petFaces
{
  if (self->_vuDistanceSPIEnabled)
  {
    v6 = MEMORY[0x1E695DF70];
    petFacesCopy = petFaces;
    facesCopy = faces;
    v9 = [[v6 alloc] initWithCapacity:{objc_msgSend(facesCopy, "count")}];
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(petFacesCopy, "count")}];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__PNPersonClusterManager_distanceBetweenPetFaces_andPetFaces___block_invoke;
    v22[3] = &unk_1E82A2540;
    v23 = v9;
    facesCopy2 = v9;
    [facesCopy enumerateObjectsUsingBlock:v22];

    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __62__PNPersonClusterManager_distanceBetweenPetFaces_andPetFaces___block_invoke_2;
    v20 = &unk_1E82A2540;
    v21 = v10;
    petFacesCopy2 = v10;
    [petFacesCopy enumerateObjectsUsingBlock:&v17];

    [(PNPersonPromoterDelegate *)self->_promoterDelegate similarityBetweenFacesWithVUIdentifiers:facesCopy2 andOtherFacesWithVUIdentifiers:petFacesCopy2, v17, v18, v19, v20];
    v14 = 1.0 - v13;
  }

  else
  {
    petFacesCopy2 = petFaces;
    facesCopy2 = faces;
    [(PNPersonClusterManager *)self animalprintBasedDistanceBetweenPetFaces:facesCopy2 andPetFaces:petFacesCopy2];
    v14 = v15;
  }

  return v14;
}

void __62__PNPersonClusterManager_distanceBetweenPetFaces_andPetFaces___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a2, "vuObservationID")}];
  [v2 addObject:v3];
}

void __62__PNPersonClusterManager_distanceBetweenPetFaces_andPetFaces___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a2, "vuObservationID")}];
  [v2 addObject:v3];
}

- (float)distanceBetweenPet:(id)pet andPet:(id)andPet useCommonMoments:(BOOL)moments
{
  momentsCopy = moments;
  v47 = *MEMORY[0x1E69E9840];
  petCopy = pet;
  andPetCopy = andPet;
  detectionType = [petCopy detectionType];
  v11 = 1.0;
  if (detectionType == [andPetCopy detectionType])
  {
    v12 = 16;
    if (momentsCopy)
    {
      v12 = 24;
    }

    v13 = *(&self->super.isa + v12);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__PNPersonClusterManager_distanceBetweenPet_andPet_useCommonMoments___block_invoke;
    aBlock[3] = &unk_1E82A24F0;
    v33 = v13;
    v36 = v33;
    v14 = _Block_copy(aBlock);
    localIdentifier = [petCopy localIdentifier];
    [andPetCopy localIdentifier];
    v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v17 = [(PNPersonClusterManager *)self pn_fetchFacesForPerson:petCopy];
    v18 = [(PNPersonClusterManager *)self pn_fetchFacesForPerson:andPetCopy];
    v34 = v17;
    fetchedObjects = [v17 fetchedObjects];
    fetchedObjects2 = [v18 fetchedObjects];
    [(PNPersonClusterManager *)self distanceBetweenPetFaces:fetchedObjects andPetFaces:fetchedObjects2];
    v22 = v21;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v24 = [v34 count];
      v25 = [v18 count];
      *buf = 138413314;
      v38 = localIdentifier;
      v39 = 2048;
      v40 = v24;
      v41 = 2112;
      v42 = v16;
      v43 = 2048;
      v44 = v25;
      v45 = 2048;
      v46 = v22;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PNPersonClusterManager] The overall distance between %@ (%lu faces) and %@ (%lu faces) is %lf", buf, 0x34u);
    }

    v11 = v22;
    if (momentsCopy)
    {
      [(PNPersonClusterManager *)self momentBasedDistanceBetweenPet:petCopy andPet:andPetCopy];
      v27 = v26;
      v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
      v11 = 1.0;
      if (v27 == 1.0)
      {
        if (v28)
        {
          *buf = 0;
          _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PNPersonClusterManager] Common moments distance is 1.0, setting distance to 1.0...", buf, 2u);
        }
      }

      else
      {
        if (v28)
        {
          *buf = 138412802;
          v38 = localIdentifier;
          v39 = 2112;
          v40 = *&v16;
          v41 = 2048;
          v42 = v27;
          _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PNPersonClusterManager] The common moments distance between %@ and %@ is %lf", buf, 0x20u);
        }

        if (v22 >= v27)
        {
          v11 = v27;
        }

        else
        {
          v11 = v22;
        }
      }
    }

    *&v23 = v11;
    v29 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
    (v14[2])(v14, localIdentifier, COERCE_DOUBLE(*&v16), v29, &unk_1F46E5498);

    *&v30 = v11;
    v31 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
    (v14[2])(v14, COERCE_DOUBLE(*&v16), localIdentifier, v31, &unk_1F46E5498);
  }

  return v11;
}

void __69__PNPersonClusterManager_distanceBetweenPet_andPet_useCommonMoments___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = *(a1 + 32);
  v13 = a3;
  v14 = [v12 objectForKeyedSubscript:v9];
  v17[0] = @"distance";
  v17[1] = @"minAgeType";
  v18[0] = v10;
  v18[1] = v11;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  if (v14)
  {
    [v14 setObject:v15 forKeyedSubscript:v13];
  }

  else
  {
    v16 = [MEMORY[0x1E695DF90] dictionaryWithObject:v15 forKey:v13];

    [*(a1 + 32) setObject:v16 forKeyedSubscript:v9];
    v13 = v16;
  }
}

- (id)representativeFaceObservationForFaces:(id)faces ageType:(unsigned __int16 *)type inPerson:(id)person
{
  v70 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  personCopy = person;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__3141;
  v62 = __Block_byref_object_dispose__3142;
  v63 = 0;
  v40 = objc_opt_new();
  typeCopy = type;
  v39 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = facesCopy;
  v9 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
  if (v9)
  {
    v10 = *v55;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v54 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [(PNVisionHelper *)self->_visionHelper faceObservationFromFace:v12];
        if (v14)
        {
          localIdentifier = [v12 localIdentifier];
          [v40 setObject:v14 forKeyedSubscript:localIdentifier];
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v12, "ageType")}];
          [v39 setObject:v16 forKeyedSubscript:localIdentifier];
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v12;
          _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Error: VNFaceObservation nil for %@", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
    }

    while (v9);
  }

  if ([v40 count])
  {
    visionHelper = self->_visionHelper;
    allValues = [v40 allValues];
    v53 = 0;
    v19 = [(PNVisionHelper *)visionHelper representativenessFromFaceObservations:allValues error:&v53];
    v20 = v53;

    if (v20 || !v19)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v19;
        _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error while calling [PNVisionHelper representativenessFromFaceObservations:error:]: %@, result: %@.", buf, 0x16u);
      }

      v34 = 0;
    }

    else
    {
      v51[0] = 0;
      v51[1] = v51;
      v51[2] = 0x2020000000;
      v52 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v66 = __Block_byref_object_copy__3141;
      v67 = __Block_byref_object_dispose__3142;
      v68 = 0;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __81__PNPersonClusterManager_representativeFaceObservationForFaces_ageType_inPerson___block_invoke;
      v46[3] = &unk_1E82A2518;
      v47 = v19;
      v48 = v51;
      v49 = &v58;
      v50 = buf;
      [v40 enumerateKeysAndObjectsUsingBlock:v46];
      if (v59[5])
      {
        if (personCopy)
        {
          representativeFaceByFaceIdentifiers = [personCopy representativeFaceByFaceIdentifiers];
          v22 = [representativeFaceByFaceIdentifiers count] > 1;

          if (v22)
          {
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            representativeFaceByFaceIdentifiers2 = [personCopy representativeFaceByFaceIdentifiers];
            keyEnumerator = [representativeFaceByFaceIdentifiers2 keyEnumerator];

            v25 = [keyEnumerator countByEnumeratingWithState:&v41 objects:v64 count:16];
            if (v25)
            {
              v26 = *v42;
              do
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v42 != v26)
                  {
                    objc_enumerationMutation(keyEnumerator);
                  }

                  v28 = *(*(&v41 + 1) + 8 * j);
                  if ([v28 containsObject:*(*&buf[8] + 40)])
                  {
                    representativeFaceByFaceIdentifiers3 = [personCopy representativeFaceByFaceIdentifiers];
                    v30 = [representativeFaceByFaceIdentifiers3 objectForKeyedSubscript:v28];
                    v31 = v59[5];
                    v59[5] = v30;
                  }
                }

                v25 = [keyEnumerator countByEnumeratingWithState:&v41 objects:v64 count:16];
              }

              while (v25);
            }
          }
        }

        v32 = [v39 objectForKeyedSubscript:*(*&buf[8] + 40)];
        unsignedShortValue = [v32 unsignedShortValue];

        if (typeCopy)
        {
          *typeCopy = unsignedShortValue;
        }

        v34 = v59[5];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v45 = 0;
          _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: No valid face representativeness found.", v45, 2u);
        }

        v34 = 0;
      }

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(v51, 8);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Error: No valid face observations when calling [PNVisionHelper faceObservationFromFace:]", buf, 2u);
    }

    v34 = 0;
  }

  _Block_object_dispose(&v58, 8);

  return v34;
}

void __81__PNPersonClusterManager_representativeFaceObservationForFaces_ageType_inPerson___block_invoke(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "faceId")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    [v9 floatValue];
    v11 = *(a1[5] + 8);
    if (v10 > *(v11 + 24))
    {
      *(v11 + 24) = v10;
      objc_storeStrong((*(a1[6] + 8) + 40), a3);
      objc_storeStrong((*(a1[7] + 8) + 40), a2);
    }
  }
}

- (id)_representativeFaceObservationForPerson:(id)person ageType:(unsigned __int16 *)type inAssetCollections:(id)collections
{
  v54 = *MEMORY[0x1E69E9840];
  personCopy = person;
  collectionsCopy = collections;
  unsignedShortValue = 0;
  v38 = personCopy;
  localIdentifier = [personCopy localIdentifier];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = collectionsCopy;
  v11 = [v10 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    do
    {
      v14 = 0;
      v15 = localIdentifier;
      do
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v10);
        }

        localIdentifier2 = [*(*(&v43 + 1) + 8 * v14) localIdentifier];
        localIdentifier = [v15 stringByAppendingString:localIdentifier2];

        ++v14;
        v15 = localIdentifier;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v12);
  }

  v17 = [(NSMutableDictionary *)self->_representativeFaceObservationForPersonIdentifier objectForKeyedSubscript:localIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 objectForKeyedSubscript:@"distance"];
    v20 = [v18 objectForKeyedSubscript:@"minAgeType"];
    unsignedShortValue = [v20 unsignedShortValue];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v21 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = v10;
    v23 = [v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [(PNPersonClusterManager *)self pn_fetchFacesForPerson:v38 inMoment:*(*(&v39 + 1) + 8 * i)];
          fetchedObjects = [v27 fetchedObjects];
          [v21 addObjectsFromArray:fetchedObjects];
        }

        v24 = [v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v24);
    }

    if (v22 && [v21 count] > 1)
    {
      v29 = v21;
      selfCopy2 = self;
      v31 = v29;
      v32 = 0;
    }

    else
    {
      v29 = [(PNPersonClusterManager *)self pn_fetchFacesForPerson:v38];
      selfCopy2 = self;
      v31 = v29;
      v32 = v38;
    }

    v33 = [(PNPersonClusterManager *)selfCopy2 representativeFaceObservationForFaces:v31 ageType:&unsignedShortValue inPerson:v32];
    v19 = v33;
    if (v33)
    {
      v50[1] = @"minAgeType";
      v51[0] = v33;
      v50[0] = @"distance";
      v34 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:unsignedShortValue];
      v51[1] = v34;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v49 = v38;
        _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PersonPromoter] Quarantine %@: VNFaceObservation nil", buf, 0xCu);
      }

      [v38 setQuarantined:1];
      v18 = 0;
    }

    [(NSMutableDictionary *)self->_representativeFaceObservationForPersonIdentifier setObject:v18 forKeyedSubscript:localIdentifier];

    objc_autoreleasePoolPop(context);
  }

  if (type)
  {
    *type = unsignedShortValue;
  }

  return v19;
}

- (float)_adjustDistanceFactorForPerson:(id)person andPerson:(id)andPerson forAgeType:(unsigned __int16)type andAgeType:(unsigned __int16)ageType
{
  ageTypeCopy = ageType;
  typeCopy = type;
  personCopy = person;
  andPersonCopy = andPerson;
  v11 = 1.0;
  if (ageTypeCopy | typeCopy)
  {
    if ((ageTypeCopy | typeCopy) == 1)
    {
      v12 = [personCopy firstSeenDateWithoutOutliersForAgeType:1];
      v13 = [andPersonCopy firstSeenDateWithoutOutliersForAgeType:1];
      [v12 timeIntervalSinceDate:v13];
      if (v14 < 0.0)
      {
        v14 = -v14;
      }

      v15 = v14 / 2629800.0;
      v16 = 0.00800000038;
    }

    else
    {
      if ((typeCopy | 2) != 2 || (ageTypeCopy | 2) != 2)
      {
        goto LABEL_15;
      }

      v12 = [personCopy firstSeenDateWithoutOutliersForAgeType:2];
      v13 = [andPersonCopy firstSeenDateWithoutOutliersForAgeType:2];
      [v12 timeIntervalSinceDate:v13];
      if (v17 < 0.0)
      {
        v17 = -v17;
      }

      v15 = v17 / 2629800.0;
      v16 = 0.00100000005;
    }

    v18 = v15 * v16 + 1.0;
    if (v15 <= 12.0)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = v18;
    }
  }

LABEL_15:

  return v11;
}

- (float)mergeConfidenceBetweenPersonLocalIdentifier:(id)identifier andCandidateLocalIdentifiers:(id)identifiers
{
  v25 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v7 = [(NSMutableDictionary *)self->_confidencesForMergedPersonLocalIdentifier objectForKeyedSubscript:identifier];
  if (v7)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = identifiersCopy;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      v12 = -1.0;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [v7 objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * i), v20}];
          v15 = v14;
          if (v14)
          {
            v16 = [v14 objectForKeyedSubscript:@"confidence"];
            [v16 floatValue];
            v18 = v17;

            if (v12 < v18)
            {
              v12 = v18;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = -1.0;
    }
  }

  else
  {
    v12 = -1.0;
  }

  return v12;
}

- (float)distanceBetweenHuman:(id)human andHuman:(id)andHuman useCommonMoments:(BOOL)moments minAgeType:(unsigned __int16 *)type updateBlock:(id)block error:(id *)error
{
  momentsCopy = moments;
  v109 = *MEMORY[0x1E69E9840];
  humanCopy = human;
  andHumanCopy = andHuman;
  blockCopy = block;
  v95 = 0;
  blockCopy[2](blockCopy, &v95, 0.2);
  v16 = 1.0;
  if ((v95 & 1) == 0)
  {
    typeCopy = type;
    v17 = 16;
    if (momentsCopy)
    {
      v17 = 24;
    }

    v18 = *(&self->super.isa + v17);
    localIdentifier = [humanCopy localIdentifier];
    localIdentifier2 = [andHumanCopy localIdentifier];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __102__PNPersonClusterManager_distanceBetweenHuman_andHuman_useCommonMoments_minAgeType_updateBlock_error___block_invoke;
    aBlock[3] = &unk_1E82A24F0;
    v21 = v18;
    v94 = v21;
    v83 = _Block_copy(aBlock);
    v81 = v21;
    v85 = localIdentifier;
    v22 = [v21 objectForKeyedSubscript:localIdentifier];
    v23 = v22;
    if (v22 && ([v22 objectForKeyedSubscript:localIdentifier2], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = v24;
      v26 = [v24 objectForKeyedSubscript:@"minAgeType"];
      unsignedShortValue = [v26 unsignedShortValue];

      v28 = [v25 objectForKeyedSubscript:@"distance"];
      [v28 floatValue];
      v16 = v29;

      if (typeCopy)
      {
        *typeCopy = unsignedShortValue;
      }
    }

    else
    {
      v92 = 0;
      v30 = [(PNPersonClusterManager *)self representativeFaceObservationForPerson:humanCopy ageType:&v92 + 2];
      v31 = [(PNPersonClusterManager *)self representativeFaceObservationForPerson:andHumanCopy ageType:&v92];
      v73 = [(PNPersonClusterManager *)self minAgeTypeForFaceAgeType:HIWORD(v92) andFaceAgeType:v92];
      v70 = v31;
      v71 = v30;
      [(PNVisionHelper *)self->_visionHelper distanceBetweenFaceObservation:v30 andFaceObservation:v31 error:error];
      v33 = v32;
      [(PNPersonClusterManager *)self _adjustDistanceFactorForPerson:humanCopy andPerson:andHumanCopy forAgeType:HIWORD(v92) andAgeType:v92];
      v35 = v34;
      if (v34 == 1.0)
      {
        v16 = v33;
      }

      else
      {
        v16 = v33 * v34;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          v97 = v85;
          v98 = 2112;
          v99 = localIdentifier2;
          v100 = 2048;
          v101 = v33;
          v102 = 2048;
          v103 = v16;
          _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PNPersonClusterManager] Adjusting best distance between %@ and %@ from %.3f to %.3f", buf, 0x2Au);
        }
      }

      blockCopy[2](blockCopy, &v95, 0.9);
      v74 = blockCopy;
      v72 = v23;
      if (momentsCopy)
      {
        [(PNPersonClusterManager *)self _minimiumDistanceRequiredForCommonAssetDistanceForAgeType:v73];
        if (v16 <= *&v36)
        {
          backingMomentIdentifiers = [humanCopy backingMomentIdentifiers];
          v38 = [backingMomentIdentifiers mutableCopy];

          backingMomentIdentifiers2 = [andHumanCopy backingMomentIdentifiers];
          [v38 intersectSet:backingMomentIdentifiers2];

          if ([v38 count])
          {
            allObjects = [v38 allObjects];
            v41 = [(PNPersonClusterManager *)self pn_fetchMomentsWithLocalIdentifiers:allObjects];

            v42 = [v41 count];
            v88 = 0u;
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            obj = v41;
            v79 = [obj countByEnumeratingWithState:&v88 objects:v108 count:16];
            if (v79)
            {
              v78 = *v89;
              v77 = v42;
              v43 = 0.0;
              v44 = MEMORY[0x1E69E9C10];
              v68 = 138413058;
              selfCopy = self;
              v84 = localIdentifier2;
              v75 = v38;
              errorCopy = error;
              while (2)
              {
                for (i = 0; i != v79; ++i)
                {
                  if (*v89 != v78)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v46 = *(*(&v88 + 1) + 8 * i);
                  v47 = objc_autoreleasePoolPush();
                  v48 = (v43 + 0.3) * 0.5 / v77 + 0.2;
                  blockCopy[2](blockCopy, &v95, v48);
                  if (v95)
                  {
                    objc_autoreleasePoolPop(v47);

                    v16 = 1.0;
                    localIdentifier2 = v84;
                    goto LABEL_40;
                  }

                  v92 = 0;
                  v107 = v46;
                  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
                  v50 = [(PNPersonClusterManager *)self _representativeFaceObservationForPerson:humanCopy ageType:&v92 + 2 inAssetCollections:v49];

                  v106 = v46;
                  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
                  v52 = [(PNPersonClusterManager *)self _representativeFaceObservationForPerson:andHumanCopy ageType:&v92 inAssetCollections:v51];

                  visionHelper = self->_visionHelper;
                  v87 = 0;
                  [(PNVisionHelper *)visionHelper distanceBetweenFaceObservation:v50 andFaceObservation:v52 error:&v87];
                  v55 = v54;
                  v56 = v87;
                  if (v35 == 1.0)
                  {
                    v57 = v55;
                  }

                  else
                  {
                    v57 = v35 * v55;
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                    {
                      [v46 localIdentifier];
                      v59 = v58 = andHumanCopy;
                      *buf = 138413314;
                      v97 = v59;
                      v98 = 2112;
                      v99 = v85;
                      v100 = 2112;
                      v101 = *&v84;
                      v102 = 2048;
                      v103 = v55;
                      v104 = 2048;
                      v105 = v57;
                      _os_log_impl(&dword_1C6F5C000, v44, OS_LOG_TYPE_INFO, "[PNPersonClusterManager] Common moment %@ between %@ and %@: adjust distance from %.3f to %.3f", buf, 0x34u);

                      andHumanCopy = v58;
                      blockCopy = v74;
                    }

                    self = selfCopy;
                  }

                  if (v57 < v16)
                  {
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                    {
                      localIdentifier3 = [v46 localIdentifier];
                      *buf = 138413058;
                      v97 = localIdentifier3;
                      v98 = 2112;
                      v99 = v85;
                      v100 = 2112;
                      v101 = *&v84;
                      v102 = 2048;
                      v103 = v57;
                      _os_log_impl(&dword_1C6F5C000, v44, OS_LOG_TYPE_INFO, "[PNPersonClusterManager] Common moment %@ between %@ and %@: new best distance %.3f", buf, 0x2Au);
                    }

                    v16 = v57;
                    self = selfCopy;
                  }

                  objc_autoreleasePoolPop(v47);
                  if (errorCopy)
                  {
                    v61 = v56;
                    *errorCopy = v56;
                  }

                  v43 = v43 + 1.0;

                  localIdentifier2 = v84;
                  v38 = v75;
                }

                v79 = [obj countByEnumeratingWithState:&v88 objects:v108 count:16];
                if (v79)
                {
                  continue;
                }

                break;
              }
            }
          }
        }
      }

      *&v36 = v16;
      v62 = [MEMORY[0x1E696AD98] numberWithFloat:{v36, v68}];
      v63 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v73];
      v83[2](v83, v85, localIdentifier2, v62, v63);

      *&v64 = v16;
      v65 = [MEMORY[0x1E696AD98] numberWithFloat:v64];
      v66 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v73];
      v83[2](v83, localIdentifier2, v85, v65, v66);

      if (typeCopy)
      {
        *typeCopy = v73;
      }

      blockCopy = v74;
LABEL_40:
      v23 = v72;
    }
  }

  return v16;
}

void __102__PNPersonClusterManager_distanceBetweenHuman_andHuman_useCommonMoments_minAgeType_updateBlock_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = *(a1 + 32);
  v13 = a3;
  v14 = [v12 objectForKeyedSubscript:v9];
  v17[0] = @"distance";
  v17[1] = @"minAgeType";
  v18[0] = v10;
  v18[1] = v11;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  if (v14)
  {
    [v14 setObject:v15 forKeyedSubscript:v13];
  }

  else
  {
    v16 = [MEMORY[0x1E695DF90] dictionaryWithObject:v15 forKey:v13];

    [*(a1 + 32) setObject:v16 forKeyedSubscript:v9];
    v13 = v16;
  }
}

- (float)distanceBetweenPerson:(id)person andPerson:(id)andPerson useCommonMoments:(BOOL)moments minAgeType:(unsigned __int16 *)type updateBlock:(id)block error:(id *)error
{
  momentsCopy = moments;
  blockCopy = block;
  andPersonCopy = andPerson;
  personCopy = person;
  if ([(PNPersonClusterManager *)self detectionType]== 1)
  {
    [(PNPersonClusterManager *)self distanceBetweenHuman:personCopy andHuman:andPersonCopy useCommonMoments:momentsCopy minAgeType:type updateBlock:blockCopy error:error];
  }

  else
  {
    [(PNPersonClusterManager *)self distanceBetweenPet:personCopy andPet:andPersonCopy useCommonMoments:momentsCopy];
  }

  v18 = v17;

  return v18;
}

- (float)distanceWithOverlapCheckBetweenPerson:(id)person andPerson:(id)andPerson useCommonMoments:(BOOL)moments minAgeType:(unsigned __int16 *)type updateBlock:(id)block error:(id *)error
{
  momentsCopy = moments;
  personCopy = person;
  andPersonCopy = andPerson;
  blockCopy = block;
  v17 = [(PNPersonClusterManager *)self assetsOverlapBetweenPerson:personCopy andPerson:andPersonCopy];
  v18 = 1.0;
  if (v17 != 2)
  {
    v19 = v17;
    [(PNPersonClusterManager *)self distanceBetweenPerson:personCopy andPerson:andPersonCopy useCommonMoments:momentsCopy minAgeType:type updateBlock:blockCopy error:error];
    if (v20 > 0.15 && v19 == 1)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = v20;
    }
  }

  return v18;
}

- (unint64_t)numberOfMomentsInCommonBetweenPerson:(id)person andPerson:(id)andPerson
{
  andPersonCopy = andPerson;
  backingMomentIdentifiers = [person backingMomentIdentifiers];
  v7 = [backingMomentIdentifiers mutableCopy];

  backingMomentIdentifiers2 = [andPersonCopy backingMomentIdentifiers];

  [v7 intersectSet:backingMomentIdentifiers2];
  v9 = [v7 count];

  return v9;
}

- (unint64_t)numberOfAssetsInCommonBetweenPersonAssetIdentifiers:(id)identifiers andPersonAssetIdentifiers:(id)assetIdentifiers
{
  identifiersCopy = identifiers;
  assetIdentifiersCopy = assetIdentifiers;
  if ([identifiersCopy intersectsSet:assetIdentifiersCopy])
  {
    v8 = [identifiersCopy mutableCopy];
    [v8 intersectSet:assetIdentifiersCopy];
    [v8 minusSet:self->_assetsToIgnore];
    v9 = [v8 count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)numberOfAssetsInCommonBetweenPerson:(id)person andPerson:(id)andPerson
{
  andPersonCopy = andPerson;
  backingAssetIdentifiers = [person backingAssetIdentifiers];
  backingAssetIdentifiers2 = [andPersonCopy backingAssetIdentifiers];

  v9 = [(PNPersonClusterManager *)self numberOfAssetsInCommonBetweenPersonAssetIdentifiers:backingAssetIdentifiers andPersonAssetIdentifiers:backingAssetIdentifiers2];
  return v9;
}

- (int64_t)assetsOverlapBetweenPersonAssetIdentifiers:(id)identifiers andPersonAssetIdentifiers:(id)assetIdentifiers
{
  assetIdentifiersCopy = assetIdentifiers;
  identifiersCopy = identifiers;
  v8 = [identifiersCopy count];
  v9 = [assetIdentifiersCopy count];
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = [(PNPersonClusterManager *)self numberOfAssetsInCommonBetweenPersonAssetIdentifiers:identifiersCopy andPersonAssetIdentifiers:assetIdentifiersCopy];

  if (v10 < 0xF)
  {
    return 2 * (v11 != 0);
  }

  if (v11 <= fmaxf(v10 * 0.01, 1.0))
  {
    return 0;
  }

  if (v11 <= fmaxf(v10 * 0.05, 1.0))
  {
    return 1;
  }

  return 2;
}

- (int64_t)assetsOverlapBetweenPerson:(id)person andPerson:(id)andPerson
{
  andPersonCopy = andPerson;
  backingAssetIdentifiers = [person backingAssetIdentifiers];
  backingAssetIdentifiers2 = [andPersonCopy backingAssetIdentifiers];

  v9 = [(PNPersonClusterManager *)self assetsOverlapBetweenPersonAssetIdentifiers:backingAssetIdentifiers andPersonAssetIdentifiers:backingAssetIdentifiers2];
  return v9;
}

- (unsigned)minAgeTypeForFaceAgeType:(unsigned __int16)type andFaceAgeType:(unsigned __int16)ageType
{
  if (type >= ageType)
  {
    typeCopy2 = ageType;
  }

  else
  {
    typeCopy2 = type;
  }

  if (!ageType)
  {
    typeCopy2 = type;
  }

  if (type)
  {
    return typeCopy2;
  }

  else
  {
    return ageType;
  }
}

- (void)updateConfidenceCacheBetweenPersonLocalIdentifier:(id)identifier andOtherPersonLocalIdentifier:(id)localIdentifier withDistance:(double)distance
{
  v8 = self->_confidencesForMergedPersonLocalIdentifier;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __119__PNPersonClusterManager_updateConfidenceCacheBetweenPersonLocalIdentifier_andOtherPersonLocalIdentifier_withDistance___block_invoke;
  aBlock[3] = &unk_1E82A24C8;
  v18 = v8;
  v9 = v8;
  localIdentifierCopy = localIdentifier;
  identifierCopy = identifier;
  v12 = _Block_copy(aBlock);
  v13 = 1.0 - distance;
  *&distance = 1.0 - distance;
  LODWORD(v13) = LODWORD(distance);
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v12[2](v12, identifierCopy, localIdentifierCopy, v14);

  LODWORD(v15) = LODWORD(distance);
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  v12[2](v12, localIdentifierCopy, identifierCopy, v16);
}

void __119__PNPersonClusterManager_updateConfidenceCacheBetweenPersonLocalIdentifier_andOtherPersonLocalIdentifier_withDistance___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v15 = @"confidence";
  v16[0] = v8;
  v9 = MEMORY[0x1E695DF20];
  v10 = a3;
  v11 = [v9 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v13 = v12;
  if (v12)
  {
    [v12 setObject:v11 forKeyedSubscript:v10];
  }

  else
  {
    v14 = [MEMORY[0x1E695DF90] dictionaryWithObject:v11 forKey:v10];

    [*(a1 + 32) setObject:v14 forKeyedSubscript:v7];
    v10 = v14;
  }
}

- (void)mergePersons:(id)persons withPerson:(id)person
{
  v73 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  personCopy = person;
  if ([personCopy detectionType] == 1)
  {
    representativeFaceByFaceIdentifiers = [personCopy representativeFaceByFaceIdentifiers];
    v9 = [representativeFaceByFaceIdentifiers count];

    if (!v9)
    {
      v10 = [(PNPersonClusterManager *)self representativeFaceObservationForPerson:personCopy ageType:0];
      if (v10)
      {
        representativeFaceByFaceIdentifiers2 = [personCopy representativeFaceByFaceIdentifiers];
        backingFaceIdentifiers = [personCopy backingFaceIdentifiers];
        [representativeFaceByFaceIdentifiers2 setObject:v10 forKeyedSubscript:backingFaceIdentifiers];
      }
    }
  }

  mergedPersonIdentifiers = [personCopy mergedPersonIdentifiers];
  if (!mergedPersonIdentifiers)
  {
    v13 = objc_opt_new();
    [personCopy setMergedPersonIdentifiers:v13];

    mergedPersonIdentifiers = [personCopy mergedPersonIdentifiers];
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v14 = personsCopy;
  v53 = [v14 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v53)
  {
    v15 = 0;
    v49 = *v67;
    v50 = v14;
    selfCopy = self;
    do
    {
      v16 = 0;
      do
      {
        v57 = v15;
        if (*v67 != v49)
        {
          objc_enumerationMutation(v14);
        }

        v56 = v16;
        v17 = *(*(&v66 + 1) + 8 * v16);
        context = objc_autoreleasePoolPush();
        faceCount = [v17 faceCount];
        [(PNPersonClusterManager *)self invalidateCachesForPerson:v17];
        mergedPersonIdentifiers2 = [v17 mergedPersonIdentifiers];
        [mergedPersonIdentifiers unionSet:mergedPersonIdentifiers2];

        localIdentifier = [v17 localIdentifier];
        [mergedPersonIdentifiers addObject:localIdentifier];

        backingFaceIdentifiers2 = [personCopy backingFaceIdentifiers];
        backingFaceIdentifiers3 = [v17 backingFaceIdentifiers];
        [backingFaceIdentifiers2 unionSet:backingFaceIdentifiers3];

        backingAssetIdentifiers = [personCopy backingAssetIdentifiers];
        backingAssetIdentifiers2 = [v17 backingAssetIdentifiers];
        [backingAssetIdentifiers unionSet:backingAssetIdentifiers2];

        backingMomentIdentifiers = [personCopy backingMomentIdentifiers];
        backingMomentIdentifiers2 = [v17 backingMomentIdentifiers];
        [backingMomentIdentifiers unionSet:backingMomentIdentifiers2];

        if ([v17 detectionType] == 1)
        {
          representativeFaceByFaceIdentifiers3 = [v17 representativeFaceByFaceIdentifiers];
          v27 = [representativeFaceByFaceIdentifiers3 count];

          if (!v27)
          {
            v28 = [(PNPersonClusterManager *)self representativeFaceObservationForPerson:v17 ageType:0];
            if (v28)
            {
              representativeFaceByFaceIdentifiers4 = [v17 representativeFaceByFaceIdentifiers];
              backingFaceIdentifiers4 = [v17 backingFaceIdentifiers];
              [representativeFaceByFaceIdentifiers4 setObject:v28 forKeyedSubscript:backingFaceIdentifiers4];
            }
          }
        }

        representativeFaceByFaceIdentifiers5 = [personCopy representativeFaceByFaceIdentifiers];
        representativeFaceByFaceIdentifiers6 = [v17 representativeFaceByFaceIdentifiers];
        [representativeFaceByFaceIdentifiers5 addEntriesFromDictionary:representativeFaceByFaceIdentifiers6];

        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        backingFaceIdentifiersByMomentIdentifiers = [v17 backingFaceIdentifiersByMomentIdentifiers];
        v34 = [backingFaceIdentifiersByMomentIdentifiers countByEnumeratingWithState:&v62 objects:v71 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v63;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v63 != v36)
              {
                objc_enumerationMutation(backingFaceIdentifiersByMomentIdentifiers);
              }

              v38 = *(*(&v62 + 1) + 8 * i);
              backingFaceIdentifiersByMomentIdentifiers2 = [v17 backingFaceIdentifiersByMomentIdentifiers];
              v40 = [backingFaceIdentifiersByMomentIdentifiers2 objectForKeyedSubscript:v38];

              backingFaceIdentifiersByMomentIdentifiers3 = [personCopy backingFaceIdentifiersByMomentIdentifiers];
              v42 = [backingFaceIdentifiersByMomentIdentifiers3 objectForKeyedSubscript:v38];

              if (v42)
              {
                [v42 unionSet:v40];
              }

              else
              {
                backingFaceIdentifiersByMomentIdentifiers4 = [personCopy backingFaceIdentifiersByMomentIdentifiers];
                [backingFaceIdentifiersByMomentIdentifiers4 setObject:v40 forKeyedSubscript:v38];
              }
            }

            v35 = [backingFaceIdentifiersByMomentIdentifiers countByEnumeratingWithState:&v62 objects:v71 count:16];
          }

          while (v35);
        }

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        mergedPersonIdentifiers3 = [v17 mergedPersonIdentifiers];
        v45 = [mergedPersonIdentifiers3 countByEnumeratingWithState:&v58 objects:v70 count:16];
        self = selfCopy;
        if (v45)
        {
          v46 = v45;
          v47 = *v59;
          do
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v59 != v47)
              {
                objc_enumerationMutation(mergedPersonIdentifiers3);
              }

              [(NSMutableDictionary *)selfCopy->_personClusters setObject:personCopy forKeyedSubscript:*(*(&v58 + 1) + 8 * j)];
            }

            v46 = [mergedPersonIdentifiers3 countByEnumeratingWithState:&v58 objects:v70 count:16];
          }

          while (v46);
        }

        v15 = faceCount + v57;

        objc_autoreleasePoolPop(context);
        v16 = v56 + 1;
        v14 = v50;
      }

      while (v56 + 1 != v53);
      v53 = [v50 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v53);

    if (v15)
    {
      [(PNPersonClusterManager *)selfCopy invalidateCachesForPerson:personCopy];
      [personCopy invalidateCaches];
    }
  }

  else
  {
  }
}

- (id)_mapPersonClustersToFaceGroups:(id)groups
{
  v22 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = groupsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        localIdentifier = [v11 localIdentifier];
        v13 = [(NSMutableDictionary *)self->_personClusters objectForKeyedSubscript:localIdentifier];
        if (!v13)
        {
          v14 = [PNPersonCluster alloc];
          photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
          v13 = [(PNPersonCluster *)v14 initWithFaceGroup:v11 inPhotoLibrary:photoLibrary];

          [(NSMutableDictionary *)self->_personClusters setObject:v13 forKeyedSubscript:localIdentifier];
        }

        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_mapPersonClustersToPersons:(id)persons
{
  v21 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  v5 = objc_opt_new();
  photoLibrary = [(PNPersonClusterManager *)self photoLibrary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = personsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        localIdentifier = [v12 localIdentifier];
        v14 = [(NSMutableDictionary *)self->_personClusters objectForKeyedSubscript:localIdentifier];
        if (!v14)
        {
          v14 = [[PNPersonCluster alloc] initWithPerson:v12 inPhotoLibrary:photoLibrary];
          [(NSMutableDictionary *)self->_personClusters setObject:v14 forKeyedSubscript:localIdentifier];
        }

        [v5 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v5;
}

- (void)invalidateCachesForPerson:(id)person
{
  v21 = *MEMORY[0x1E69E9840];
  localIdentifier = [person localIdentifier];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PNPersonClusterManager_invalidateCachesForPerson___block_invoke;
  aBlock[3] = &unk_1E82A24A0;
  v5 = localIdentifier;
  v19 = v5;
  v6 = _Block_copy(aBlock);
  v6[2](v6, self->_distancesForPersonLocalIdentifier);
  v6[2](v6, self->_distancesInCommonMomentsForPersonLocalIdentifier);
  v7 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [(NSMutableDictionary *)self->_representativeFaceObservationForPersonIdentifier allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([v13 containsString:v5])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v10);
  }

  [(NSMutableDictionary *)self->_representativeFaceObservationForPersonIdentifier removeObjectsForKeys:v7];
}

void __52__PNPersonClusterManager_invalidateCachesForPerson___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  if (v4)
  {
    v5 = objc_opt_new();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__PNPersonClusterManager_invalidateCachesForPerson___block_invoke_2;
    v7[3] = &unk_1E82A2478;
    v8 = v5;
    v9 = v3;
    v10 = *(a1 + 32);
    v6 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
    [v4 removeObjectsForKeys:v6];
  }
}

void __52__PNPersonClusterManager_invalidateCachesForPerson___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = [a3 objectForKeyedSubscript:@"distance"];
  [v5 floatValue];
  if (v6 < 0.3)
  {
    [*(a1 + 32) addObject:v9];
    v7 = [*(a1 + 40) objectForKeyedSubscript:v9];
    v8 = v7;
    if (v7)
    {
      [v7 removeObjectForKey:*(a1 + 48)];
    }
  }
}

- (void)clearCaches
{
  [(NSMutableDictionary *)self->_personClusters removeAllObjects];
  [(NSMutableDictionary *)self->_representativeFaceObservationForPersonIdentifier removeAllObjects];
  [(NSMutableDictionary *)self->_distancesForPersonLocalIdentifier removeAllObjects];
  [(NSMutableDictionary *)self->_distancesInCommonMomentsForPersonLocalIdentifier removeAllObjects];
  confidencesForMergedPersonLocalIdentifier = self->_confidencesForMergedPersonLocalIdentifier;

  [(NSMutableDictionary *)confidencesForMergedPersonLocalIdentifier removeAllObjects];
}

- (PNPersonClusterManager)initWithPhotoLibrary:(id)library detectionType:(signed __int16)type promoterDelegate:(id)delegate
{
  typeCopy = type;
  libraryCopy = library;
  delegateCopy = delegate;
  v31.receiver = self;
  v31.super_class = PNPersonClusterManager;
  v10 = [(PNPersonClusterManager *)&v31 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_10;
  }

  [(PNPersonClusterManager *)v10 setPhotoLibrary:libraryCopy];
  [(PNPersonClusterManager *)v11 setDetectionType:typeCopy];
  v12 = objc_alloc_init(PNVisionHelper);
  visionHelper = v11->_visionHelper;
  v11->_visionHelper = v12;

  v14 = objc_opt_new();
  personClusters = v11->_personClusters;
  v11->_personClusters = v14;

  v16 = objc_opt_new();
  representativeFaceObservationForPersonIdentifier = v11->_representativeFaceObservationForPersonIdentifier;
  v11->_representativeFaceObservationForPersonIdentifier = v16;

  v18 = objc_opt_new();
  distancesForPersonLocalIdentifier = v11->_distancesForPersonLocalIdentifier;
  v11->_distancesForPersonLocalIdentifier = v18;

  v20 = objc_opt_new();
  distancesInCommonMomentsForPersonLocalIdentifier = v11->_distancesInCommonMomentsForPersonLocalIdentifier;
  v11->_distancesInCommonMomentsForPersonLocalIdentifier = v20;

  v22 = objc_opt_new();
  confidencesForMergedPersonLocalIdentifier = v11->_confidencesForMergedPersonLocalIdentifier;
  v11->_confidencesForMergedPersonLocalIdentifier = v22;

  pn_fetchInvalidAssetIdentifiersForCommonComparison = [libraryCopy pn_fetchInvalidAssetIdentifiersForCommonComparison];
  assetsToIgnore = v11->_assetsToIgnore;
  v11->_assetsToIgnore = pn_fetchInvalidAssetIdentifiersForCommonComparison;

  objc_storeStrong(&v11->_promoterDelegate, delegate);
  if (v11->_promoterDelegate)
  {
    v26 = objc_opt_respondsToSelector();
    v11->_vuDistanceSPIEnabled = v26 & 1;
    if (v26)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *v30 = 0;
        v27 = MEMORY[0x1E69E9C10];
        v28 = "[PNPersonClusterManager] Using VU distance SPI for pet deduper distance";
LABEL_9:
        _os_log_impl(&dword_1C6F5C000, v27, OS_LOG_TYPE_INFO, v28, v30, 2u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v11->_vuDistanceSPIEnabled = 0;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v30 = 0;
    v27 = MEMORY[0x1E69E9C10];
    v28 = "[PNPersonClusterManager] Using Photos average animalprint distance SPI for pet deduper distance";
    goto LABEL_9;
  }

LABEL_10:

  return v11;
}

+ (id)nodeSortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"UUID" ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)faceGroupSortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"localIdentifier" ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)peopleSortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"localIdentifier" ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)faceSortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"localIdentifier" ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)assetSortDescriptors
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v6[0] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"filename" ascending:1];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)momentSortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)personProcessingSortDescriptors
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"faceCount" ascending:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"localIdentifier" ascending:0];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

@end