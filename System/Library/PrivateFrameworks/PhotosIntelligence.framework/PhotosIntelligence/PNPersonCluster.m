@interface PNPersonCluster
- (BOOL)favorite;
- (BOOL)hidden;
- (BOOL)isEqual:(id)a3;
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
- (PNPersonCluster)initWithFaceGroup:(id)a3 inPhotoLibrary:(id)a4;
- (PNPersonCluster)initWithPerson:(id)a3 inPhotoLibrary:(id)a4;
- (PNPhotoLibraryProtocol)photoLibrary;
- (double)libraryTimespan;
- (double)sideFaceRatio;
- (id)fetchAssets;
- (id)fetchFaces;
- (id)fetchMoments;
- (id)firstSeenDateWithoutOutliersForAgeType:(unsigned __int16)a3;
- (id)personLocalIdentifiers;
- (int64_t)manualOrder;
- (int64_t)verifiedType;
- (unint64_t)faceCount;
- (void)_cacheDates;
- (void)_cacheDatesWithoutOutliersWithMaximumDistanceBetweenMoments:(double)a3;
- (void)invalidateCaches;
- (void)pn_addMergeCandidatePersons:(id)a3;
- (void)setIsVerified:(BOOL)a3;
- (void)setKeyFace:(id)a3;
- (void)setManualOrder:(int64_t)a3;
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
  v2 = [(PNPersonCluster *)self fetchFaces];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v2);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) poseType];
        if (v10 == 4 || v10 == 2)
        {
          ++v7;
        }
      }

      v6 += v5;
      v5 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_cacheDatesWithoutOutliersWithMaximumDistanceBetweenMoments:(double)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = [(PNPersonCluster *)self photoLibrary];
  v44 = self;
  v6 = [(PNPersonCluster *)self backingMomentIdentifiers];
  v7 = [v6 allObjects];
  v8 = [v5 pn_fetchMomentsWithLocalIdentifiers:v7];

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
        v17 = [v16 startDate];
        [v9 addObject:v17];

        v18 = [v16 endDate];
        if (!v13 || [(NSDate *)v13 compare:v18]== NSOrderedAscending)
        {
          v19 = v18;

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
  v20 = [v9 firstObject];
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v23 = v9;
  v24 = [v23 countByEnumeratingWithState:&v45 objects:v53 count:16];
  v42 = v20;
  if (v24)
  {
    v25 = v24;
    v26 = *v46;
    do
    {
      v27 = 0;
      v28 = v20;
      do
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v45 + 1) + 8 * v27);
        [v29 timeIntervalSinceDate:v28];
        if (v30 <= a3)
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

        v20 = v29;

        ++v27;
        v28 = v20;
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

  firstSeenDate = v44->_firstSeenDate;
  v44->_firstSeenDate = v42;
  v37 = v42;

  lastSeenDate = v44->_lastSeenDate;
  v44->_lastSeenDate = v13;
  v39 = v13;

  v40 = [v21 firstObject];
  firstSeenDateWithoutOutliers = v44->_firstSeenDateWithoutOutliers;
  v44->_firstSeenDateWithoutOutliers = v40;
}

- (void)_cacheDates
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(PNPersonCluster *)self photoLibrary];
  v4 = [(PNPersonCluster *)self backingMomentIdentifiers];
  v5 = [v4 allObjects];
  v6 = [v3 pn_fetchMomentsWithLocalIdentifiers:v5];

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
        v15 = [v14 startDate];
        if (!v11 || [(NSDate *)v11 compare:v15]== NSOrderedDescending)
        {
          v16 = v15;

          v11 = v16;
        }

        v17 = [v14 endDate];
        if (!v10 || [(NSDate *)v10 compare:v17]== NSOrderedAscending)
        {
          v18 = v17;

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

- (id)firstSeenDateWithoutOutliersForAgeType:(unsigned __int16)a3
{
  firstSeenDateWithoutOutliers = self->_firstSeenDateWithoutOutliers;
  if (firstSeenDateWithoutOutliers)
  {
    goto LABEL_4;
  }

  if (a3 == 1)
  {
    [(PNPersonCluster *)self _cacheDatesWithoutOutliersWithMaximumDistanceBetweenMoments:15778800.0];
    firstSeenDateWithoutOutliers = self->_firstSeenDateWithoutOutliers;
LABEL_4:
    v5 = firstSeenDateWithoutOutliers;
    goto LABEL_5;
  }

  v5 = [(PNPersonCluster *)self firstSeenDate];
LABEL_5:

  return v5;
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

- (void)pn_addMergeCandidatePersons:(id)a3
{
  v4 = a3;
  v5 = [(PNPersonCluster *)self sourcePerson];
  [v5 pn_addMergeCandidatePersons:v4];
}

- (NSString)anonymizedName
{
  v3 = [(PNPersonCluster *)self sourcePerson];
  v4 = [v3 anonymizedName];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(PNPersonCluster *)self localIdentifier];
  }

  v7 = v6;

  return v7;
}

- (BOOL)hidden
{
  v2 = [(PNPersonCluster *)self sourcePerson];
  v3 = [v2 hidden];

  return v3;
}

- (BOOL)favorite
{
  v2 = [(PNPersonCluster *)self sourcePerson];
  v3 = [v2 favorite];

  return v3;
}

- (unint64_t)faceCount
{
  v2 = [(PNPersonCluster *)self backingFaceIdentifiers];
  v3 = [v2 count];

  return v3;
}

- (void)setKeyFace:(id)a3
{
  v4 = a3;
  v5 = [(PNPersonCluster *)self sourcePerson];
  [v5 setKeyFace:v4];
}

- (PNFaceProtocol)keyFace
{
  v2 = [(PNPersonCluster *)self sourcePerson];
  v3 = [v2 keyFace];

  return v3;
}

- (void)setManualOrder:(int64_t)a3
{
  v4 = [(PNPersonCluster *)self sourcePerson];
  [v4 setManualOrder:a3];
}

- (int64_t)manualOrder
{
  v2 = [(PNPersonCluster *)self sourcePerson];
  v3 = [v2 manualOrder];

  return v3;
}

- (int64_t)verifiedType
{
  v2 = [(PNPersonCluster *)self sourcePerson];
  v3 = [v2 verifiedType];

  return v3;
}

- (void)setIsVerified:(BOOL)a3
{
  v3 = a3;
  v4 = [(PNPersonCluster *)self sourcePerson];
  [v4 setIsVerified:v3];
}

- (BOOL)isVerified
{
  v2 = [(PNPersonCluster *)self sourcePerson];
  v3 = [v2 isVerified];

  return v3;
}

- (NSString)localIdentifier
{
  v3 = [(PNPersonCluster *)self sourcePerson];
  v4 = [v3 localIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PNPersonCluster *)self sourceFaceGroup];
    v6 = [v7 localIdentifier];
  }

  return v6;
}

- (id)personLocalIdentifiers
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(PNPersonCluster *)self sourceFaceGroup];

  if (v3)
  {
    context = objc_autoreleasePoolPush();
    v4 = [(PNPersonCluster *)self fetchFaces];
    v5 = [v4 fetchedObjectIDs];
    v6 = [v4 photoLibrary];
    v7 = [v6 librarySpecificFetchOptions];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY detectedFaces in %@", v5];
    [v7 setInternalPredicate:v8];

    v9 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v7];
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

          v16 = [*(*(&v23 + 1) + 8 * i) localIdentifier];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v17 = [(PNPersonCluster *)self mergedPersonIdentifiers];
    if ([v17 count])
    {
      v18 = [v17 allObjects];
      v19 = [(PNPersonCluster *)self localIdentifier];
      v10 = [v18 arrayByAddingObject:v19];
    }

    else
    {
      v20 = [(PNPersonCluster *)self localIdentifier];
      v27 = v20;
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
    v5 = [(PNPersonCluster *)self fetchMoments];
    objc_autoreleasePoolPop(v4);
    backingMomentIdentifiers = self->_backingMomentIdentifiers;
  }

  return backingMomentIdentifiers;
}

- (id)fetchMoments
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(PNPersonCluster *)self photoLibrary];
  backingMomentIdentifiers = self->_backingMomentIdentifiers;
  if (backingMomentIdentifiers)
  {
    v5 = [(NSMutableSet *)backingMomentIdentifiers allObjects];
    v6 = [v3 pn_fetchMomentsWithLocalIdentifiers:v5];
  }

  else
  {
    v7 = [(PNPersonCluster *)self backingAssetIdentifiers];
    v8 = [v7 allObjects];

    v9 = [v3 pn_fetchMomentsForAssetsWithLocalIdentifiers:v8];
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
          v17 = [*(*(&v19 + 1) + 8 * i) localIdentifier];
          [(NSMutableSet *)v16 addObject:v17];
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
    v5 = [(PNPersonCluster *)self fetchAssets];
    objc_autoreleasePoolPop(v4);
    backingAssetIdentifiers = self->_backingAssetIdentifiers;
  }

  return backingAssetIdentifiers;
}

- (id)fetchAssets
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(PNPersonCluster *)self photoLibrary];
  backingAssetIdentifiers = self->_backingAssetIdentifiers;
  if (backingAssetIdentifiers)
  {
    v5 = [(NSMutableSet *)backingAssetIdentifiers allObjects];
    v6 = [v3 pn_fetchAssetsWithLocalIdentifiers:v5];
  }

  else
  {
    v7 = [(PNPersonCluster *)self backingFaceIdentifiers];
    v8 = [v3 pn_fetchAssetsForFaceLocalIdentifiers:v7];

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
          v16 = [*(*(&v20 + 1) + 8 * i) localIdentifier];
          [(NSMutableSet *)v15 addObject:v16];
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
    v5 = [(PNPersonCluster *)self fetchFaces];
    objc_autoreleasePoolPop(v4);
    backingFaceIdentifiers = self->_backingFaceIdentifiers;
  }

  return backingFaceIdentifiers;
}

- (id)fetchFaces
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(PNPersonCluster *)self photoLibrary];
  backingFaceIdentifiers = self->_backingFaceIdentifiers;
  if (backingFaceIdentifiers)
  {
    v5 = [(NSMutableSet *)backingFaceIdentifiers allObjects];
    v6 = [v3 pn_fetchFacesWithLocalIdentifiers:v5];
  }

  else
  {
    v7 = [(PNPersonCluster *)self sourcePerson];
    if (v7)
    {
      v8 = [v3 pn_fetchFacesForPerson:v7];
    }

    else
    {
      v9 = [(PNPersonCluster *)self sourceFaceGroup];
      v8 = [v3 pn_fetchFacesForFaceGroup:v9];
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
          v17 = [*(*(&v19 + 1) + 8 * i) localIdentifier];
          [(NSMutableSet *)v16 addObject:v17];
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
  v4 = [(PNPersonCluster *)self localIdentifier];
  v5 = [v3 stringWithFormat:@"[%@]", v4];

  v6 = [(PNPersonCluster *)self sourcePerson];
  v7 = [v6 anonymizedName];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(PNPersonCluster *)self sourcePerson];
    v10 = [v9 anonymizedName];
    [v5 appendFormat:@" Name: %@, ", v10];
  }

  v11 = [(PNPersonCluster *)self faceCount];
  v12 = [(PNPersonCluster *)self backingMomentIdentifiers];
  v13 = [v12 count];
  v14 = [(PNPersonCluster *)self backingAssetIdentifiers];
  v15 = [v14 count];
  v16 = [(PNPersonCluster *)self mergedPersonIdentifiers];
  [v5 appendFormat:@" Faces: %lu, Moments: %lu, Assets: %lu, Merges: %lu, VerifiedType: %d", v11, v13, v15, objc_msgSend(v16, "count"), -[PNPersonCluster verifiedType](self, "verifiedType")];

  v17 = [(PNPersonCluster *)self mergedPersonIdentifiers];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [(PNPersonCluster *)self mergedPersonIdentifiers];
    v20 = [v19 allObjects];
    v21 = [v20 componentsJoinedByString:{@", "}];
    [v5 appendFormat:@", Merged Persons: [%@]", v21];
  }

  [(PNPersonCluster *)self interestingScore];
  if (v22 >= 0.0)
  {
    v23 = v22;
    v24 = [(PNPersonCluster *)self highlyInteresting];
    v25 = @"Interesting";
    if (v24)
    {
      v25 = @"Highly Interesting";
    }

    [v5 appendFormat:@", %@: %.5f", v25, *&v23];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(PNPersonCluster *)self sourcePerson];
      if (v7)
      {
        v3 = [(PNPersonCluster *)v6 sourcePerson];
        if (v3)
        {
          v8 = [(PNPersonCluster *)self sourcePerson];
          v4 = [(PNPersonCluster *)v6 sourcePerson];
          if ([v8 isEqual:v4])
          {

            v9 = 1;
            goto LABEL_17;
          }

          v18 = v8;
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

      v11 = [(PNPersonCluster *)self sourceFaceGroup];
      if (v11)
      {
        v12 = v11;
        v13 = [(PNPersonCluster *)v6 sourceFaceGroup];
        if (v13)
        {
          v14 = v13;
          v15 = [(PNPersonCluster *)self sourceFaceGroup];
          v16 = [(PNPersonCluster *)v6 sourceFaceGroup];
          v9 = [v15 isEqual:v16];

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
          if (!v7)
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

- (PNPersonCluster)initWithFaceGroup:(id)a3 inPhotoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PNPersonCluster;
  v8 = [(PNPersonCluster *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(PNPersonCluster *)v8 setSourceFaceGroup:v6];
    [(PNPersonCluster *)v9 setPhotoLibrary:v7];
    v10 = [v6 localIdentifier];
    v9->_hash = [v10 hash];

    v11 = [MEMORY[0x1E695DF90] dictionary];
    [(PNPersonCluster *)v9 setBackingFaceIdentifiersByMomentIdentifiers:v11];

    v9->_detectionType = 1;
  }

  return v9;
}

- (PNPersonCluster)initWithPerson:(id)a3 inPhotoLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PNPersonCluster;
  v9 = [(PNPersonCluster *)&v16 init];
  if (v9)
  {
    v10 = objc_opt_class();
    if ([v10 isEqual:objc_opt_class()])
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:v9 file:@"PNPersonCluster.m" lineNumber:64 description:@"Cannot create a person cluster with another person cluster"];
    }

    [(PNPersonCluster *)v9 setSourcePerson:v7];
    [(PNPersonCluster *)v9 setPhotoLibrary:v8];
    v11 = [v7 localIdentifier];
    v9->_hash = [v11 hash];

    v12 = [MEMORY[0x1E695DF90] dictionary];
    [(PNPersonCluster *)v9 setBackingFaceIdentifiersByMomentIdentifiers:v12];

    v13 = [MEMORY[0x1E695DF90] dictionary];
    [(PNPersonCluster *)v9 setRepresentativeFaceByFaceIdentifiers:v13];

    v9->_detectionType = [v7 detectionType];
    [(PNPersonCluster *)v9 invalidateCaches];
  }

  return v9;
}

@end