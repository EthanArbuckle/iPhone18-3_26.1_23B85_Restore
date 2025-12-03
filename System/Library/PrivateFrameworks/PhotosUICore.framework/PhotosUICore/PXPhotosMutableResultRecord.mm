@interface PXPhotosMutableResultRecord
- (BOOL)isCurated;
- (NSPredicate)inclusionPredicate;
- (PHFetchResult)exposedFetchResult;
- (PHFetchResult)filteredFetchResult;
- (PXPhotosMutableResultRecord)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)exposedFetchResultBeforeFiltering;
- (int64_t)keyAssetIndex;
- (void)_invalidateFilteredFetchResult;
- (void)_setIncludeOids:(id)oids;
- (void)_updateFilteredFetchResultIfNeeded;
- (void)adoptPreparedFilteredFetchResultFromRecord:(id)record;
- (void)excludeOids:(id)oids;
- (void)includeOids:(id)oids;
- (void)invalidateFetchResultAssetCache;
- (void)setCuratedFetchResult:(id)result;
- (void)setCurationLength:(int64_t)length;
- (void)setEnsureKeyAssetAtBeginning:(BOOL)beginning;
- (void)setFetchResult:(id)result;
- (void)setFetchResult:(id)result reverseSortOrder:(BOOL)order;
- (void)setKeyAssetsFetchResult:(id)result;
- (void)setReverseSortOrder:(BOOL)order;
- (void)setSortDescriptors:(id)descriptors;
- (void)setWantsCuration:(BOOL)curation;
- (void)stopExcludingOids:(id)oids;
@end

@implementation PXPhotosMutableResultRecord

- (PXPhotosMutableResultRecord)init
{
  v5.receiver = self;
  v5.super_class = PXPhotosMutableResultRecord;
  v2 = [(PXPhotosMutableResultRecord *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXPhotosMutableResultRecord *)v2 _invalidateKeyAssetIndex];
  }

  return v3;
}

- (void)_invalidateFilteredFetchResult
{
  self->_filteredFetchResultIsValid = 0;
  filteredFetchResult = self->_filteredFetchResult;
  self->_filteredFetchResult = 0;

  [(PXPhotosMutableResultRecord *)self _invalidateKeyAssetIndex];
}

- (PHFetchResult)exposedFetchResult
{
  filteredFetchResult = [(PXPhotosMutableResultRecord *)self filteredFetchResult];
  if (!filteredFetchResult)
  {
    filteredFetchResult = [(PXPhotosMutableResultRecord *)self exposedFetchResultBeforeFiltering];
  }

  return filteredFetchResult;
}

- (PHFetchResult)filteredFetchResult
{
  [(PXPhotosMutableResultRecord *)self _updateFilteredFetchResultIfNeeded];
  filteredFetchResult = self->_filteredFetchResult;

  return filteredFetchResult;
}

- (void)_updateFilteredFetchResultIfNeeded
{
  v63 = *MEMORY[0x1E69E9840];
  if (!self->_filteredFetchResultIsValid)
  {
    selfCopy = self;
    self->_filteredFetchResultIsValid = 1;
    reverseSortOrder = [(PXPhotosMutableResultRecord *)self reverseSortOrder];
    excludedOids = [(PXPhotosMutableResultRecord *)selfCopy excludedOids];
    keyAssetsFetchResult = [(PXPhotosMutableResultRecord *)selfCopy keyAssetsFetchResult];
    fetchedObjectIDs = [keyAssetsFetchResult fetchedObjectIDs];
    firstObject = [fetchedObjectIDs firstObject];

    v56 = firstObject;
    if (firstObject)
    {
      ensureKeyAssetAtBeginning = [(PXPhotosMutableResultRecord *)selfCopy ensureKeyAssetAtBeginning];
    }

    else
    {
      ensureKeyAssetAtBeginning = 0;
    }

    exposedFetchResultBeforeFiltering = [(PXPhotosMutableResultRecord *)selfCopy exposedFetchResultBeforeFiltering];
    photoLibrary = [exposedFetchResultBeforeFiltering photoLibrary];
    if ([excludedOids count] != 0 || reverseSortOrder || ensureKeyAssetAtBeginning)
    {
      fetchedObjectIDs2 = [exposedFetchResultBeforeFiltering fetchedObjectIDs];

      if (fetchedObjectIDs2)
      {
        fetchedObjectIDs3 = [exposedFetchResultBeforeFiltering fetchedObjectIDs];
        v54 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(fetchedObjectIDs3, "count")}];
        v13 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(excludedOids, "count")}];
        v55 = exposedFetchResultBeforeFiltering;
        v50 = selfCopy;
        v48 = fetchedObjectIDs3;
        v47 = reverseSortOrder;
        if (reverseSortOrder)
        {
          reverseObjectEnumerator = [fetchedObjectIDs3 reverseObjectEnumerator];
          preloadAssetTypeCounts = [(PXPhotosMutableResultRecord *)selfCopy preloadAssetTypeCounts];
          v16 = [fetchedObjectIDs3 count] - 1;
          v17 = -1;
        }

        else
        {
          reverseObjectEnumerator = fetchedObjectIDs3;
          preloadAssetTypeCounts = [(PXPhotosMutableResultRecord *)selfCopy preloadAssetTypeCounts];
          v16 = 0;
          v17 = 1;
        }

        v49 = photoLibrary;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v18 = reverseObjectEnumerator;
        v19 = [v18 countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v19)
        {
          v20 = v19;
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v21 = *v59;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v59 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v58 + 1) + 8 * i);
              if ([excludedOids containsObject:v23])
              {
                [(NSSet *)v13 addObject:v23];
                if (preloadAssetTypeCounts)
                {
                  v24 = [v55 objectAtIndexedSubscript:v16];
                  mediaType = [v24 mediaType];
                  switch(mediaType)
                  {
                    case 3:
                      ++v53;
                      break;
                    case 2:
                      ++v52;
                      break;
                    case 1:
                      ++v51;
                      break;
                  }
                }
              }

              else if (v23 != v56 || !ensureKeyAssetAtBeginning)
              {
                [v54 addObject:v23];
              }

              v16 += v17;
            }

            v20 = [v18 countByEnumeratingWithState:&v58 objects:v62 count:16];
          }

          while (v20);
        }

        else
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
        }

        v10 = v13;
        if ([(NSSet *)v13 count]!= 0 || v47 || ensureKeyAssetAtBeginning)
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
          v28 = 0x7FFFFFFFFFFFFFFFLL;
          v29 = 0x7FFFFFFFFFFFFFFFLL;
          selfCopy = v50;
          if (preloadAssetTypeCounts)
          {
            v30 = [v55 cachedCountOfAssetsWithMediaType:1];
            v31 = [v55 cachedCountOfAssetsWithMediaType:2];
            v32 = [v55 cachedCountOfAssetsWithMediaType:3];
            v33 = v30 - v51;
            if (v30 < v51 || v30 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v33 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (v31 < v52 || v31 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v28 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v31 - v52;
            }

            if (v32 < v53 || v32 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v29 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v32 - v53;
            }

            v27 = v33;
          }

          if (ensureKeyAssetAtBeginning && ([excludedOids containsObject:v56] & 1) == 0)
          {
            [v54 insertObject:v56 atIndex:0];
          }

          v37 = objc_alloc(MEMORY[0x1E69788E0]);
          fetchType = [v55 fetchType];
          fetchPropertySets = [v55 fetchPropertySets];
          v46 = v28;
          v45 = v27;
          v40 = v54;
          photoLibrary = v49;
          fetchedObjectIDs2 = [v37 initWithOids:v54 photoLibrary:v49 fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0 photosCount:v45 videosCount:v46 audiosCount:v29];

          v10 = v13;
        }

        else
        {
          fetchedObjectIDs2 = 0;
          photoLibrary = v49;
          selfCopy = v50;
          v40 = v54;
        }

        exposedFetchResultBeforeFiltering = v55;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      fetchedObjectIDs2 = 0;
    }

    excludedOids = selfCopy->_excludedOids;
    selfCopy->_excludedOids = v10;
    v42 = v10;

    filteredFetchResult = selfCopy->_filteredFetchResult;
    selfCopy->_filteredFetchResult = fetchedObjectIDs2;
    v44 = fetchedObjectIDs2;
  }
}

- (id)exposedFetchResultBeforeFiltering
{
  if (-[PXPhotosMutableResultRecord wantsCuration](self, "wantsCuration") && ((-[PXPhotosMutableResultRecord curatedFetchResult](self, "curatedFetchResult"), (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (v4 = v3, -[PXPhotosMutableResultRecord curatedFetchResult](self, "curatedFetchResult"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6)))
  {
    curatedFetchResult = [(PXPhotosMutableResultRecord *)self curatedFetchResult];
  }

  else
  {
    curatedFetchResult = [(PXPhotosMutableResultRecord *)self fetchResult];
  }

  return curatedFetchResult;
}

- (NSPredicate)inclusionPredicate
{
  if (!self->_inclusionPredicateIsValid)
  {
    self->_inclusionPredicateIsValid = 1;
    includedOids = [(PXPhotosMutableResultRecord *)self includedOids];
    v4 = [includedOids count];

    if (v4)
    {
      v5 = MEMORY[0x1E696AE18];
      includedOids2 = [(PXPhotosMutableResultRecord *)self includedOids];
      v7 = [v5 predicateWithFormat:@"self IN %@", includedOids2];
    }

    else
    {
      v7 = 0;
    }

    inclusionPredicate = self->_inclusionPredicate;
    self->_inclusionPredicate = v7;
  }

  v9 = self->_inclusionPredicate;

  return v9;
}

- (void)adoptPreparedFilteredFetchResultFromRecord:(id)record
{
  recordCopy = record;
  if (self->_filteredFetchResultIsValid)
  {
    goto LABEL_27;
  }

  v31 = recordCopy;
  reverseSortOrder = [(PXPhotosMutableResultRecord *)self reverseSortOrder];
  v6 = reverseSortOrder == [v31 reverseSortOrder];
  recordCopy = v31;
  if (!v6)
  {
    goto LABEL_27;
  }

  excludedOids = [(PXPhotosMutableResultRecord *)self excludedOids];
  v8 = excludedOids;
  if (!excludedOids)
  {
    v8 = [MEMORY[0x1E695DFD8] set];
  }

  excludedOids2 = [v31 excludedOids];
  v10 = excludedOids2;
  if (!excludedOids2)
  {
    v10 = [MEMORY[0x1E695DFD8] set];
  }

  if (v8 == v10)
  {
    v11 = 1;
    if (excludedOids2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = [v8 isEqual:v10];
  if (!excludedOids2)
  {
LABEL_10:
  }

LABEL_11:

  if (!excludedOids)
  {
  }

  recordCopy = v31;
  if (v11)
  {
    keyAssetsFetchResult = [(PXPhotosMutableResultRecord *)self keyAssetsFetchResult];
    fetchedObjectIDs = [keyAssetsFetchResult fetchedObjectIDs];
    firstObject = [fetchedObjectIDs firstObject];
    keyAssetsFetchResult2 = [v31 keyAssetsFetchResult];
    fetchedObjectIDs2 = [keyAssetsFetchResult2 fetchedObjectIDs];
    firstObject2 = [fetchedObjectIDs2 firstObject];
    v18 = firstObject2;
    if (firstObject == firstObject2)
    {
    }

    else
    {
      v19 = [firstObject isEqual:firstObject2];

      recordCopy = v31;
      if ((v19 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    ensureKeyAssetAtBeginning = [(PXPhotosMutableResultRecord *)self ensureKeyAssetAtBeginning];
    v6 = ensureKeyAssetAtBeginning == [v31 ensureKeyAssetAtBeginning];
    recordCopy = v31;
    if (v6)
    {
      exposedFetchResultBeforeFiltering = [(PXPhotosMutableResultRecord *)self exposedFetchResultBeforeFiltering];
      exposedFetchResultBeforeFiltering2 = [v31 exposedFetchResultBeforeFiltering];
      v23 = exposedFetchResultBeforeFiltering2;
      if (exposedFetchResultBeforeFiltering == exposedFetchResultBeforeFiltering2)
      {
      }

      else
      {
        v24 = [exposedFetchResultBeforeFiltering isEqual:exposedFetchResultBeforeFiltering2];

        recordCopy = v31;
        if ((v24 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      excludedOids3 = [v31 excludedOids];
      v26 = [excludedOids3 copy];
      excludedOids = self->_excludedOids;
      self->_excludedOids = v26;

      filteredFetchResult = [v31 filteredFetchResult];
      v29 = [filteredFetchResult copy];
      filteredFetchResult = self->_filteredFetchResult;
      self->_filteredFetchResult = v29;

      recordCopy = v31;
      self->_filteredFetchResultIsValid = 1;
    }
  }

LABEL_27:
}

- (BOOL)isCurated
{
  curatedFetchResult = [(PXPhotosMutableResultRecord *)self curatedFetchResult];
  if (curatedFetchResult)
  {
    exposedFetchResultBeforeFiltering = [(PXPhotosMutableResultRecord *)self exposedFetchResultBeforeFiltering];
    curatedFetchResult2 = [(PXPhotosMutableResultRecord *)self curatedFetchResult];
    v6 = exposedFetchResultBeforeFiltering == curatedFetchResult2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)keyAssetIndex
{
  v18 = *MEMORY[0x1E69E9840];
  keyAssetIndex = self->_keyAssetIndex;
  if (keyAssetIndex == -1)
  {
    keyAssetsFetchResult = [(PXPhotosMutableResultRecord *)self keyAssetsFetchResult];
    if ([keyAssetsFetchResult count])
    {
      exposedFetchResult = [(PXPhotosMutableResultRecord *)self exposedFetchResult];
      if (exposedFetchResult)
      {
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v6 = keyAssetsFetchResult;
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        keyAssetIndex = 0x7FFFFFFFFFFFFFFFLL;
        if (v7)
        {
          v8 = v7;
          v9 = *v14;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v14 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [exposedFetchResult indexOfObject:{*(*(&v13 + 1) + 8 * i), v13}];
              if (v11 != 0x7FFFFFFFFFFFFFFFLL)
              {
                keyAssetIndex = v11;
                goto LABEL_15;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }

          keyAssetIndex = 0x7FFFFFFFFFFFFFFFLL;
        }

LABEL_15:
      }

      else
      {
        keyAssetIndex = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      keyAssetIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    self->_keyAssetIndex = keyAssetIndex;
  }

  return keyAssetIndex;
}

- (void)setEnsureKeyAssetAtBeginning:(BOOL)beginning
{
  if (self->_ensureKeyAssetAtBeginning != beginning)
  {
    self->_ensureKeyAssetAtBeginning = beginning;
    [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
  }
}

- (void)setReverseSortOrder:(BOOL)order
{
  if (self->_reverseSortOrder != order)
  {
    self->_reverseSortOrder = order;
    [(PXPhotosMutableResultRecord *)self setFetchResult:0];
    [(PXPhotosMutableResultRecord *)self setCuratedFetchResult:0];

    [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
  }
}

- (void)setSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  sortDescriptors = self->_sortDescriptors;
  if (sortDescriptors != descriptorsCopy)
  {
    v9 = descriptorsCopy;
    v6 = [(NSArray *)sortDescriptors isEqual:descriptorsCopy];
    descriptorsCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_sortDescriptors;
      self->_sortDescriptors = v7;

      [(PXPhotosMutableResultRecord *)self setFetchResult:0];
      [(PXPhotosMutableResultRecord *)self setCuratedFetchResult:0];
      [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
      descriptorsCopy = v9;
    }
  }
}

- (void)setCurationLength:(int64_t)length
{
  if (self->_curationLength != length)
  {
    self->_curationLength = length;
    [(PXPhotosMutableResultRecord *)self setFetchResult:0];
    [(PXPhotosMutableResultRecord *)self setCuratedFetchResult:0];

    [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
  }
}

- (void)setWantsCuration:(BOOL)curation
{
  if (self->_wantsCuration != curation)
  {
    self->_wantsCuration = curation;
    [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
  }
}

- (void)setKeyAssetsFetchResult:(id)result
{
  resultCopy = result;
  if (self->_keyAssetsFetchResult != resultCopy)
  {
    v7 = resultCopy;
    objc_storeStrong(&self->_keyAssetsFetchResult, result);
    [(PXPhotosMutableResultRecord *)self _invalidateKeyAssetIndex];
    ensureKeyAssetAtBeginning = [(PXPhotosMutableResultRecord *)self ensureKeyAssetAtBeginning];
    resultCopy = v7;
    if (ensureKeyAssetAtBeginning)
    {
      [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
      resultCopy = v7;
    }
  }
}

- (void)setCuratedFetchResult:(id)result
{
  resultCopy = result;
  if (self->_curatedFetchResult != resultCopy)
  {
    v8 = resultCopy;
    objc_storeStrong(&self->_curatedFetchResult, result);
    fetchedObjectIDsSet = [(PHFetchResult *)v8 fetchedObjectIDsSet];
    curatedOids = self->_curatedOids;
    self->_curatedOids = fetchedObjectIDsSet;

    [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
    resultCopy = v8;
  }
}

- (void)setFetchResult:(id)result
{
  resultCopy = result;
  if (self->_fetchResult != resultCopy)
  {
    v6 = resultCopy;
    objc_storeStrong(&self->_fetchResult, result);
    [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
    resultCopy = v6;
  }
}

- (void)setFetchResult:(id)result reverseSortOrder:(BOOL)order
{
  orderCopy = order;
  [(PXPhotosMutableResultRecord *)self setFetchResult:result];

  [(PXPhotosMutableResultRecord *)self setReverseSortOrder:orderCopy];
}

- (void)stopExcludingOids:(id)oids
{
  oidsCopy = oids;
  if ([oidsCopy count])
  {
    excludedOids = [(PXPhotosMutableResultRecord *)self excludedOids];
    v5 = [excludedOids mutableCopy];

    [v5 minusSet:oidsCopy];
    v6 = [(NSSet *)self->_excludedOids count];
    if (v6 != [v5 count])
    {
      objc_storeStrong(&self->_excludedOids, v5);
      [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
    }
  }
}

- (void)excludeOids:(id)oids
{
  oidsCopy = oids;
  v4 = [oidsCopy count];
  v5 = oidsCopy;
  if (v4)
  {
    v6 = [MEMORY[0x1E695DFA8] setWithArray:oidsCopy];
    excludedOids = [(PXPhotosMutableResultRecord *)self excludedOids];

    if (excludedOids)
    {
      excludedOids2 = [(PXPhotosMutableResultRecord *)self excludedOids];
      [v6 unionSet:excludedOids2];
    }

    v9 = [(NSSet *)self->_excludedOids count];
    if (v9 != [v6 count])
    {
      objc_storeStrong(&self->_excludedOids, v6);
      [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
    }

    v5 = oidsCopy;
  }
}

- (void)_setIncludeOids:(id)oids
{
  oidsCopy = oids;
  v5 = [(NSSet *)self->_includedOids count];
  if (v5 != [oidsCopy count])
  {
    objc_storeStrong(&self->_includedOids, oids);
    [(PXPhotosMutableResultRecord *)self _invalidateInclusionPredicate];
    [(PXPhotosMutableResultRecord *)self setFetchResult:0];
  }
}

- (void)includeOids:(id)oids
{
  oidsCopy = oids;
  v4 = [oidsCopy count];
  v5 = oidsCopy;
  if (v4)
  {
    v6 = [MEMORY[0x1E695DFA8] setWithArray:oidsCopy];
    includedOids = [(PXPhotosMutableResultRecord *)self includedOids];

    if (includedOids)
    {
      includedOids2 = [(PXPhotosMutableResultRecord *)self includedOids];
      [v6 unionSet:includedOids2];
    }

    [(PXPhotosMutableResultRecord *)self _setIncludeOids:v6];

    v5 = oidsCopy;
  }
}

- (void)invalidateFetchResultAssetCache
{
  v3 = [(PHFetchResult *)self->_filteredFetchResult copyWithOptions:&unk_1F190F058];
  filteredFetchResult = self->_filteredFetchResult;
  self->_filteredFetchResult = v3;

  v5 = [(PHFetchResult *)self->_fetchResult copyWithOptions:&unk_1F190F058];
  fetchResult = self->_fetchResult;
  self->_fetchResult = v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PXPhotosMutableResultRecord);
  fetchResult = [(PXPhotosMutableResultRecord *)self fetchResult];
  v6 = [fetchResult copy];
  fetchResult = v4->_fetchResult;
  v4->_fetchResult = v6;

  curatedFetchResult = [(PXPhotosMutableResultRecord *)self curatedFetchResult];
  v9 = [curatedFetchResult copy];
  curatedFetchResult = v4->_curatedFetchResult;
  v4->_curatedFetchResult = v9;

  keyAssetsFetchResult = [(PXPhotosMutableResultRecord *)self keyAssetsFetchResult];
  v12 = [keyAssetsFetchResult copy];
  keyAssetsFetchResult = v4->_keyAssetsFetchResult;
  v4->_keyAssetsFetchResult = v12;

  v4->_keyAssetIndex = self->_keyAssetIndex;
  v4->_wantsCuration = [(PXPhotosMutableResultRecord *)self wantsCuration];
  v4->_curationLength = [(PXPhotosMutableResultRecord *)self curationLength];
  sortDescriptors = [(PXPhotosMutableResultRecord *)self sortDescriptors];
  v15 = [sortDescriptors copy];
  sortDescriptors = v4->_sortDescriptors;
  v4->_sortDescriptors = v15;

  filteredFetchResult = [(PXPhotosMutableResultRecord *)self filteredFetchResult];
  v18 = [filteredFetchResult copy];
  filteredFetchResult = v4->_filteredFetchResult;
  v4->_filteredFetchResult = v18;

  excludedOids = [(PXPhotosMutableResultRecord *)self excludedOids];
  v21 = [excludedOids copy];
  excludedOids = v4->_excludedOids;
  v4->_excludedOids = v21;

  includedOids = [(PXPhotosMutableResultRecord *)self includedOids];
  v24 = [includedOids copy];
  includedOids = v4->_includedOids;
  v4->_includedOids = v24;

  curatedOids = [(PXPhotosMutableResultRecord *)self curatedOids];
  v27 = [curatedOids copy];
  curatedOids = v4->_curatedOids;
  v4->_curatedOids = v27;

  v4->_filteredFetchResultIsValid = self->_filteredFetchResultIsValid;
  v4->_preloadAssetTypeCounts = self->_preloadAssetTypeCounts;
  v4->_reverseSortOrder = self->_reverseSortOrder;
  v29 = [self->_curatedRefetchCondition copy];
  curatedRefetchCondition = v4->_curatedRefetchCondition;
  v4->_curatedRefetchCondition = v29;

  v4->_ensureKeyAssetAtBeginning = self->_ensureKeyAssetAtBeginning;
  return v4;
}

@end