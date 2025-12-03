@interface PNPersonCluster
- (BOOL)favorite;
- (BOOL)hidden;
- (BOOL)isEqual:(id)equal;
- (BOOL)isVerified;
- (NSDate)firstSeenDate;
- (NSDate)lastSeenDate;
- (NSMutableSet)backingAssetIdentifiers;
- (NSMutableSet)backingFaceIdentifiers;
- (NSMutableSet)backingMomentIdentifiers;
- (NSString)anonymizedName;
- (NSString)description;
- (NSString)localIdentifier;
- (PNFaceProtocol)keyFace;
- (PNPersonCluster)initWithFaceGroup:(id)group inPhotoLibrary:(id)library;
- (PNPersonCluster)initWithPerson:(id)person inPhotoLibrary:(id)library;
- (PNPhotoLibraryProtocol)photoLibrary;
- (double)libraryTimespan;
- (double)sideFaceRatio;
- (id)fetchAssets;
- (id)fetchFaces;
- (id)fetchMoments;
- (id)firstSeenDateWithoutOutliersForAgeType:(unsigned __int16)type;
- (id)personLocalIdentifiers;
- (int64_t)manualOrder;
- (int64_t)verifiedType;
- (unint64_t)faceCount;
- (void)_cacheDates;
- (void)_cacheDatesWithoutOutliersWithMaximumDistanceBetweenMoments:(double)moments;
- (void)invalidateCaches;
- (void)pn_addMergeCandidatePersons:(id)persons;
- (void)setIsVerified:(BOOL)verified;
- (void)setKeyFace:(id)face;
- (void)setManualOrder:(int64_t)order;
@end

@implementation PNPersonCluster

- (PNPhotoLibraryProtocol)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (double)sideFaceRatio
{
  v18 = *MEMORY[0x1E69E9840];
  fetchFaces = [(PNPersonCluster *)self fetchFaces];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [fetchFaces countByEnumeratingWithState:&v13 objects:v17 count:16];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(fetchFaces);
        }

        poseType = [*(*(&v13 + 1) + 8 * i) poseType];
        if (poseType == 4 || poseType == 2)
        {
          ++v7;
        }
      }

      v6 += v5;
      v5 = [fetchFaces countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
    if (v7 && v6)
    {
      v4 = v7 / v6;
    }
  }

  return v4;
}

- (void)invalidateCaches
{
  firstSeenDate = self->_firstSeenDate;
  self->_firstSeenDate = 0;

  lastSeenDate = self->_lastSeenDate;
  self->_lastSeenDate = 0;

  self->_interestingScore = -1.79769313e308;
  firstSeenDateWithoutOutliers = self->_firstSeenDateWithoutOutliers;
  self->_firstSeenDateWithoutOutliers = 0;
}

- (void)_cacheDatesWithoutOutliersWithMaximumDistanceBetweenMoments:(double)moments
{
  v55 = *MEMORY[0x1E69E9840];
  photoLibrary = [(PNPersonCluster *)self photoLibrary];
  selfCopy = self;
  backingMomentIdentifiers = [(PNPersonCluster *)self backingMomentIdentifiers];
  allObjects = [backingMomentIdentifiers allObjects];
  v8 = [photoLibrary pn_fetchMomentsWithLocalIdentifiers:allObjects];

  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v50;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        startDate = [v16 startDate];
        [v9 addObject:startDate];

        endDate = [v16 endDate];
        if (!v13 || [(NSDate *)v13 compare:endDate]== NSOrderedAscending)
        {
          v19 = endDate;

          v13 = v19;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v43 = v10;

  [v9 sortUsingSelector:sel_compare_];
  firstObject = [v9 firstObject];
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v23 = v9;
  v24 = [v23 countByEnumeratingWithState:&v45 objects:v53 count:16];
  v42 = firstObject;
  if (v24)
  {
    v25 = v24;
    v26 = *v46;
    do
    {
      v27 = 0;
      v28 = firstObject;
      do
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v45 + 1) + 8 * v27);
        [v29 timeIntervalSinceDate:v28];
        if (v30 <= moments)
        {
          [v22 addObject:v29];
        }

        else
        {
          v31 = [v22 count];
          if (v31 > [v21 count])
          {
            v32 = v22;

            v21 = v32;
          }

          v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v29, 0}];

          v22 = v33;
        }

        firstObject = v29;

        ++v27;
        v28 = firstObject;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v25);
  }

  v34 = [v22 count];
  if (v34 > [v21 count])
  {
    v35 = v22;

    v21 = v35;
  }

  firstSeenDate = selfCopy->_firstSeenDate;
  selfCopy->_firstSeenDate = v42;
  v37 = v42;

  lastSeenDate = selfCopy->_lastSeenDate;
  selfCopy->_lastSeenDate = v13;
  v39 = v13;

  firstObject2 = [v21 firstObject];
  firstSeenDateWithoutOutliers = selfCopy->_firstSeenDateWithoutOutliers;
  selfCopy->_firstSeenDateWithoutOutliers = firstObject2;
}

- (void)_cacheDates
{
  v28 = *MEMORY[0x1E69E9840];
  photoLibrary = [(PNPersonCluster *)self photoLibrary];
  backingMomentIdentifiers = [(PNPersonCluster *)self backingMomentIdentifiers];
  allObjects = [backingMomentIdentifiers allObjects];
  v6 = [photoLibrary pn_fetchMomentsWithLocalIdentifiers:allObjects];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        startDate = [v14 startDate];
        if (!v11 || [(NSDate *)v11 compare:startDate]== NSOrderedDescending)
        {
          v16 = startDate;

          v11 = v16;
        }

        endDate = [v14 endDate];
        if (!v10 || [(NSDate *)v10 compare:endDate]== NSOrderedAscending)
        {
          v18 = endDate;

          v10 = v18;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  firstSeenDate = self->_firstSeenDate;
  self->_firstSeenDate = v11;
  v20 = v11;

  lastSeenDate = self->_lastSeenDate;
  self->_lastSeenDate = v10;
  v22 = v10;
}

- (id)firstSeenDateWithoutOutliersForAgeType:(unsigned __int16)type
{
  firstSeenDateWithoutOutliers = self->_firstSeenDateWithoutOutliers;
  if (firstSeenDateWithoutOutliers)
  {
    goto LABEL_4;
  }

  if (type == 1)
  {
    [(PNPersonCluster *)self _cacheDatesWithoutOutliersWithMaximumDistanceBetweenMoments:15778800.0];
    firstSeenDateWithoutOutliers = self->_firstSeenDateWithoutOutliers;
LABEL_4:
    firstSeenDate = firstSeenDateWithoutOutliers;
    goto LABEL_5;
  }

  firstSeenDate = [(PNPersonCluster *)self firstSeenDate];
LABEL_5:

  return firstSeenDate;
}

- (NSDate)lastSeenDate
{
  lastSeenDate = self->_lastSeenDate;
  if (!lastSeenDate)
  {
    [(PNPersonCluster *)self _cacheDates];
    lastSeenDate = self->_lastSeenDate;
  }

  return lastSeenDate;
}

- (NSDate)firstSeenDate
{
  firstSeenDate = self->_firstSeenDate;
  if (!firstSeenDate)
  {
    [(PNPersonCluster *)self _cacheDates];
    firstSeenDate = self->_firstSeenDate;
  }

  return firstSeenDate;
}

- (double)libraryTimespan
{
  firstSeenDate = self->_firstSeenDate;
  if (!firstSeenDate || (lastSeenDate = self->_lastSeenDate) == 0)
  {
    [(PNPersonCluster *)self _cacheDates];
    firstSeenDate = self->_firstSeenDate;
    lastSeenDate = self->_lastSeenDate;
  }

  [(NSDate *)lastSeenDate timeIntervalSinceDate:firstSeenDate];
  return result;
}

- (void)pn_addMergeCandidatePersons:(id)persons
{
  personsCopy = persons;
  sourcePerson = [(PNPersonCluster *)self sourcePerson];
  [sourcePerson pn_addMergeCandidatePersons:personsCopy];
}

- (NSString)anonymizedName
{
  sourcePerson = [(PNPersonCluster *)self sourcePerson];
  anonymizedName = [sourcePerson anonymizedName];
  v5 = anonymizedName;
  if (anonymizedName)
  {
    localIdentifier = anonymizedName;
  }

  else
  {
    localIdentifier = [(PNPersonCluster *)self localIdentifier];
  }

  v7 = localIdentifier;

  return v7;
}

- (BOOL)hidden
{
  sourcePerson = [(PNPersonCluster *)self sourcePerson];
  hidden = [sourcePerson hidden];

  return hidden;
}

- (BOOL)favorite
{
  sourcePerson = [(PNPersonCluster *)self sourcePerson];
  favorite = [sourcePerson favorite];

  return favorite;
}

- (unint64_t)faceCount
{
  backingFaceIdentifiers = [(PNPersonCluster *)self backingFaceIdentifiers];
  v3 = [backingFaceIdentifiers count];

  return v3;
}

- (void)setKeyFace:(id)face
{
  faceCopy = face;
  sourcePerson = [(PNPersonCluster *)self sourcePerson];
  [sourcePerson setKeyFace:faceCopy];
}

- (PNFaceProtocol)keyFace
{
  sourcePerson = [(PNPersonCluster *)self sourcePerson];
  keyFace = [sourcePerson keyFace];

  return keyFace;
}

- (void)setManualOrder:(int64_t)order
{
  sourcePerson = [(PNPersonCluster *)self sourcePerson];
  [sourcePerson setManualOrder:order];
}

- (int64_t)manualOrder
{
  sourcePerson = [(PNPersonCluster *)self sourcePerson];
  manualOrder = [sourcePerson manualOrder];

  return manualOrder;
}

- (int64_t)verifiedType
{
  sourcePerson = [(PNPersonCluster *)self sourcePerson];
  verifiedType = [sourcePerson verifiedType];

  return verifiedType;
}

- (void)setIsVerified:(BOOL)verified
{
  verifiedCopy = verified;
  sourcePerson = [(PNPersonCluster *)self sourcePerson];
  [sourcePerson setIsVerified:verifiedCopy];
}

- (BOOL)isVerified
{
  sourcePerson = [(PNPersonCluster *)self sourcePerson];
  isVerified = [sourcePerson isVerified];

  return isVerified;
}

- (NSString)localIdentifier
{
  sourcePerson = [(PNPersonCluster *)self sourcePerson];
  localIdentifier = [sourcePerson localIdentifier];
  v5 = localIdentifier;
  if (localIdentifier)
  {
    localIdentifier2 = localIdentifier;
  }

  else
  {
    sourceFaceGroup = [(PNPersonCluster *)self sourceFaceGroup];
    localIdentifier2 = [sourceFaceGroup localIdentifier];
  }

  return localIdentifier2;
}

- (id)personLocalIdentifiers
{
  v29 = *MEMORY[0x1E69E9840];
  sourceFaceGroup = [(PNPersonCluster *)self sourceFaceGroup];

  if (sourceFaceGroup)
  {
    context = objc_autoreleasePoolPush();
    fetchFaces = [(PNPersonCluster *)self fetchFaces];
    fetchedObjectIDs = [fetchFaces fetchedObjectIDs];
    photoLibrary = [fetchFaces photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY detectedFaces in %@", fetchedObjectIDs];
    [librarySpecificFetchOptions setInternalPredicate:v8];

    v9 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:librarySpecificFetchOptions];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          localIdentifier = [*(*(&v23 + 1) + 8 * i) localIdentifier];
          [v10 addObject:localIdentifier];
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    mergedPersonIdentifiers = [(PNPersonCluster *)self mergedPersonIdentifiers];
    if ([mergedPersonIdentifiers count])
    {
      allObjects = [mergedPersonIdentifiers allObjects];
      localIdentifier2 = [(PNPersonCluster *)self localIdentifier];
      v10 = [allObjects arrayByAddingObject:localIdentifier2];
    }

    else
    {
      localIdentifier3 = [(PNPersonCluster *)self localIdentifier];
      v27 = localIdentifier3;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    }
  }

  return v10;
}

- (NSMutableSet)backingMomentIdentifiers
{
  backingMomentIdentifiers = self->_backingMomentIdentifiers;
  if (!backingMomentIdentifiers)
  {
    v4 = objc_autoreleasePoolPush();
    fetchMoments = [(PNPersonCluster *)self fetchMoments];
    objc_autoreleasePoolPop(v4);
    backingMomentIdentifiers = self->_backingMomentIdentifiers;
  }

  return backingMomentIdentifiers;
}

- (id)fetchMoments
{
  v24 = *MEMORY[0x1E69E9840];
  photoLibrary = [(PNPersonCluster *)self photoLibrary];
  backingMomentIdentifiers = self->_backingMomentIdentifiers;
  if (backingMomentIdentifiers)
  {
    allObjects = [(NSMutableSet *)backingMomentIdentifiers allObjects];
    v6 = [photoLibrary pn_fetchMomentsWithLocalIdentifiers:allObjects];
  }

  else
  {
    backingAssetIdentifiers = [(PNPersonCluster *)self backingAssetIdentifiers];
    allObjects2 = [backingAssetIdentifiers allObjects];

    v9 = [photoLibrary pn_fetchMomentsForAssetsWithLocalIdentifiers:allObjects2];
    v10 = objc_opt_new();
    v11 = self->_backingMomentIdentifiers;
    self->_backingMomentIdentifiers = v10;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v9;
    v12 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v6);
          }

          v16 = self->_backingMomentIdentifiers;
          localIdentifier = [*(*(&v19 + 1) + 8 * i) localIdentifier];
          [(NSMutableSet *)v16 addObject:localIdentifier];
        }

        v13 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  return v6;
}

- (NSMutableSet)backingAssetIdentifiers
{
  backingAssetIdentifiers = self->_backingAssetIdentifiers;
  if (!backingAssetIdentifiers)
  {
    v4 = objc_autoreleasePoolPush();
    fetchAssets = [(PNPersonCluster *)self fetchAssets];
    objc_autoreleasePoolPop(v4);
    backingAssetIdentifiers = self->_backingAssetIdentifiers;
  }

  return backingAssetIdentifiers;
}

- (id)fetchAssets
{
  v25 = *MEMORY[0x1E69E9840];
  photoLibrary = [(PNPersonCluster *)self photoLibrary];
  backingAssetIdentifiers = self->_backingAssetIdentifiers;
  if (backingAssetIdentifiers)
  {
    allObjects = [(NSMutableSet *)backingAssetIdentifiers allObjects];
    v6 = [photoLibrary pn_fetchAssetsWithLocalIdentifiers:allObjects];
  }

  else
  {
    backingFaceIdentifiers = [(PNPersonCluster *)self backingFaceIdentifiers];
    v8 = [photoLibrary pn_fetchAssetsForFaceLocalIdentifiers:backingFaceIdentifiers];

    v9 = objc_opt_new();
    v10 = self->_backingAssetIdentifiers;
    self->_backingAssetIdentifiers = v9;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v8;
    v11 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v6);
          }

          v15 = self->_backingAssetIdentifiers;
          localIdentifier = [*(*(&v20 + 1) + 8 * i) localIdentifier];
          [(NSMutableSet *)v15 addObject:localIdentifier];
        }

        v12 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    v17 = [(NSMutableSet *)self->_backingAssetIdentifiers copy];
    sourcePersonBackingAssetIdentifiers = self->_sourcePersonBackingAssetIdentifiers;
    self->_sourcePersonBackingAssetIdentifiers = v17;
  }

  return v6;
}

- (NSMutableSet)backingFaceIdentifiers
{
  backingFaceIdentifiers = self->_backingFaceIdentifiers;
  if (!backingFaceIdentifiers)
  {
    v4 = objc_autoreleasePoolPush();
    fetchFaces = [(PNPersonCluster *)self fetchFaces];
    objc_autoreleasePoolPop(v4);
    backingFaceIdentifiers = self->_backingFaceIdentifiers;
  }

  return backingFaceIdentifiers;
}

- (id)fetchFaces
{
  v24 = *MEMORY[0x1E69E9840];
  photoLibrary = [(PNPersonCluster *)self photoLibrary];
  backingFaceIdentifiers = self->_backingFaceIdentifiers;
  if (backingFaceIdentifiers)
  {
    allObjects = [(NSMutableSet *)backingFaceIdentifiers allObjects];
    v6 = [photoLibrary pn_fetchFacesWithLocalIdentifiers:allObjects];
  }

  else
  {
    sourcePerson = [(PNPersonCluster *)self sourcePerson];
    if (sourcePerson)
    {
      v8 = [photoLibrary pn_fetchFacesForPerson:sourcePerson];
    }

    else
    {
      sourceFaceGroup = [(PNPersonCluster *)self sourceFaceGroup];
      v8 = [photoLibrary pn_fetchFacesForFaceGroup:sourceFaceGroup];
    }

    v10 = objc_opt_new();
    v11 = self->_backingFaceIdentifiers;
    self->_backingFaceIdentifiers = v10;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v8;
    v12 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v6);
          }

          v16 = self->_backingFaceIdentifiers;
          localIdentifier = [*(*(&v19 + 1) + 8 * i) localIdentifier];
          [(NSMutableSet *)v16 addObject:localIdentifier];
        }

        v13 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  localIdentifier = [(PNPersonCluster *)self localIdentifier];
  v5 = [v3 stringWithFormat:@"[%@]", localIdentifier];

  sourcePerson = [(PNPersonCluster *)self sourcePerson];
  anonymizedName = [sourcePerson anonymizedName];
  v8 = [anonymizedName length];

  if (v8)
  {
    sourcePerson2 = [(PNPersonCluster *)self sourcePerson];
    anonymizedName2 = [sourcePerson2 anonymizedName];
    [v5 appendFormat:@" Name: %@, ", anonymizedName2];
  }

  faceCount = [(PNPersonCluster *)self faceCount];
  backingMomentIdentifiers = [(PNPersonCluster *)self backingMomentIdentifiers];
  v13 = [backingMomentIdentifiers count];
  backingAssetIdentifiers = [(PNPersonCluster *)self backingAssetIdentifiers];
  v15 = [backingAssetIdentifiers count];
  mergedPersonIdentifiers = [(PNPersonCluster *)self mergedPersonIdentifiers];
  [v5 appendFormat:@" Faces: %lu, Moments: %lu, Assets: %lu, Merges: %lu, VerifiedType: %d", faceCount, v13, v15, objc_msgSend(mergedPersonIdentifiers, "count"), -[PNPersonCluster verifiedType](self, "verifiedType")];

  mergedPersonIdentifiers2 = [(PNPersonCluster *)self mergedPersonIdentifiers];
  v18 = [mergedPersonIdentifiers2 count];

  if (v18)
  {
    mergedPersonIdentifiers3 = [(PNPersonCluster *)self mergedPersonIdentifiers];
    allObjects = [mergedPersonIdentifiers3 allObjects];
    v21 = [allObjects componentsJoinedByString:{@", "}];
    [v5 appendFormat:@", Merged Persons: [%@]", v21];
  }

  [(PNPersonCluster *)self interestingScore];
  if (v22 >= 0.0)
  {
    v23 = v22;
    highlyInteresting = [(PNPersonCluster *)self highlyInteresting];
    v25 = @"Interesting";
    if (highlyInteresting)
    {
      v25 = @"Highly Interesting";
    }

    [v5 appendFormat:@", %@: %.5f", v25, *&v23];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sourcePerson = [(PNPersonCluster *)self sourcePerson];
      if (sourcePerson)
      {
        sourcePerson2 = [(PNPersonCluster *)equalCopy sourcePerson];
        if (sourcePerson2)
        {
          sourcePerson3 = [(PNPersonCluster *)self sourcePerson];
          sourcePerson4 = [(PNPersonCluster *)equalCopy sourcePerson];
          if ([sourcePerson3 isEqual:sourcePerson4])
          {

            v9 = 1;
            goto LABEL_17;
          }

          v18 = sourcePerson3;
          v10 = 1;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      sourceFaceGroup = [(PNPersonCluster *)self sourceFaceGroup];
      if (sourceFaceGroup)
      {
        v12 = sourceFaceGroup;
        sourceFaceGroup2 = [(PNPersonCluster *)equalCopy sourceFaceGroup];
        if (sourceFaceGroup2)
        {
          v14 = sourceFaceGroup2;
          sourceFaceGroup3 = [(PNPersonCluster *)self sourceFaceGroup];
          sourceFaceGroup4 = [(PNPersonCluster *)equalCopy sourceFaceGroup];
          v9 = [sourceFaceGroup3 isEqual:sourceFaceGroup4];

          if ((v10 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        v9 = 0;
        if ((v10 & 1) == 0)
        {
LABEL_16:
          if (!sourcePerson)
          {
LABEL_18:

            goto LABEL_19;
          }

LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
        v9 = 0;
        if (!v10)
        {
          goto LABEL_16;
        }
      }

LABEL_15:

      goto LABEL_16;
    }

    v9 = 0;
  }

LABEL_19:

  return v9;
}

- (PNPersonCluster)initWithFaceGroup:(id)group inPhotoLibrary:(id)library
{
  groupCopy = group;
  libraryCopy = library;
  v13.receiver = self;
  v13.super_class = PNPersonCluster;
  v8 = [(PNPersonCluster *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(PNPersonCluster *)v8 setSourceFaceGroup:groupCopy];
    [(PNPersonCluster *)v9 setPhotoLibrary:libraryCopy];
    localIdentifier = [groupCopy localIdentifier];
    v9->_hash = [localIdentifier hash];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(PNPersonCluster *)v9 setBackingFaceIdentifiersByMomentIdentifiers:dictionary];

    v9->_detectionType = 1;
  }

  return v9;
}

- (PNPersonCluster)initWithPerson:(id)person inPhotoLibrary:(id)library
{
  personCopy = person;
  libraryCopy = library;
  v16.receiver = self;
  v16.super_class = PNPersonCluster;
  v9 = [(PNPersonCluster *)&v16 init];
  if (v9)
  {
    v10 = objc_opt_class();
    if ([v10 isEqual:objc_opt_class()])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"PNPersonCluster.m" lineNumber:64 description:@"Cannot create a person cluster with another person cluster"];
    }

    [(PNPersonCluster *)v9 setSourcePerson:personCopy];
    [(PNPersonCluster *)v9 setPhotoLibrary:libraryCopy];
    localIdentifier = [personCopy localIdentifier];
    v9->_hash = [localIdentifier hash];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(PNPersonCluster *)v9 setBackingFaceIdentifiersByMomentIdentifiers:dictionary];

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(PNPersonCluster *)v9 setRepresentativeFaceByFaceIdentifiers:dictionary2];

    v9->_detectionType = [personCopy detectionType];
    [(PNPersonCluster *)v9 invalidateCaches];
  }

  return v9;
}

@end