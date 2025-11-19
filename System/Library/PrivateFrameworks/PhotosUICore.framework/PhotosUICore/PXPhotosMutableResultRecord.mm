@interface PXPhotosMutableResultRecord
- (BOOL)isCurated;
- (NSPredicate)inclusionPredicate;
- (PHFetchResult)exposedFetchResult;
- (PHFetchResult)filteredFetchResult;
- (PXPhotosMutableResultRecord)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)exposedFetchResultBeforeFiltering;
- (int64_t)keyAssetIndex;
- (void)_invalidateFilteredFetchResult;
- (void)_setIncludeOids:(id)a3;
- (void)_updateFilteredFetchResultIfNeeded;
- (void)adoptPreparedFilteredFetchResultFromRecord:(id)a3;
- (void)excludeOids:(id)a3;
- (void)includeOids:(id)a3;
- (void)invalidateFetchResultAssetCache;
- (void)setCuratedFetchResult:(id)a3;
- (void)setCurationLength:(int64_t)a3;
- (void)setEnsureKeyAssetAtBeginning:(BOOL)a3;
- (void)setFetchResult:(id)a3;
- (void)setFetchResult:(id)a3 reverseSortOrder:(BOOL)a4;
- (void)setKeyAssetsFetchResult:(id)a3;
- (void)setReverseSortOrder:(BOOL)a3;
- (void)setSortDescriptors:(id)a3;
- (void)setWantsCuration:(BOOL)a3;
- (void)stopExcludingOids:(id)a3;
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
  v3 = [(PXPhotosMutableResultRecord *)self filteredFetchResult];
  if (!v3)
  {
    v3 = [(PXPhotosMutableResultRecord *)self exposedFetchResultBeforeFiltering];
  }

  return v3;
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
    v2 = self;
    self->_filteredFetchResultIsValid = 1;
    v3 = [(PXPhotosMutableResultRecord *)self reverseSortOrder];
    v4 = [(PXPhotosMutableResultRecord *)v2 excludedOids];
    v5 = [(PXPhotosMutableResultRecord *)v2 keyAssetsFetchResult];
    v6 = [v5 fetchedObjectIDs];
    v7 = [v6 firstObject];

    v56 = v7;
    if (v7)
    {
      v57 = [(PXPhotosMutableResultRecord *)v2 ensureKeyAssetAtBeginning];
    }

    else
    {
      v57 = 0;
    }

    v8 = [(PXPhotosMutableResultRecord *)v2 exposedFetchResultBeforeFiltering];
    v9 = [v8 photoLibrary];
    if ([v4 count] != 0 || v3 || v57)
    {
      v11 = [v8 fetchedObjectIDs];

      if (v11)
      {
        v12 = [v8 fetchedObjectIDs];
        v54 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
        v13 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
        v55 = v8;
        v50 = v2;
        v48 = v12;
        v47 = v3;
        if (v3)
        {
          v14 = [v12 reverseObjectEnumerator];
          v15 = [(PXPhotosMutableResultRecord *)v2 preloadAssetTypeCounts];
          v16 = [v12 count] - 1;
          v17 = -1;
        }

        else
        {
          v14 = v12;
          v15 = [(PXPhotosMutableResultRecord *)v2 preloadAssetTypeCounts];
          v16 = 0;
          v17 = 1;
        }

        v49 = v9;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v18 = v14;
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
              if ([v4 containsObject:v23])
              {
                [(NSSet *)v13 addObject:v23];
                if (v15)
                {
                  v24 = [v55 objectAtIndexedSubscript:v16];
                  v25 = [v24 mediaType];
                  switch(v25)
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

              else if (v23 != v56 || !v57)
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
        if ([(NSSet *)v13 count]!= 0 || v47 || v57)
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
          v28 = 0x7FFFFFFFFFFFFFFFLL;
          v29 = 0x7FFFFFFFFFFFFFFFLL;
          v2 = v50;
          if (v15)
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

          if (v57 && ([v4 containsObject:v56] & 1) == 0)
          {
            [v54 insertObject:v56 atIndex:0];
          }

          v37 = objc_alloc(MEMORY[0x1E69788E0]);
          v38 = [v55 fetchType];
          v39 = [v55 fetchPropertySets];
          v46 = v28;
          v45 = v27;
          v40 = v54;
          v9 = v49;
          v11 = [v37 initWithOids:v54 photoLibrary:v49 fetchType:v38 fetchPropertySets:v39 identifier:0 registerIfNeeded:0 photosCount:v45 videosCount:v46 audiosCount:v29];

          v10 = v13;
        }

        else
        {
          v11 = 0;
          v9 = v49;
          v2 = v50;
          v40 = v54;
        }

        v8 = v55;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    excludedOids = v2->_excludedOids;
    v2->_excludedOids = v10;
    v42 = v10;

    filteredFetchResult = v2->_filteredFetchResult;
    v2->_filteredFetchResult = v11;
    v44 = v11;
  }
}

- (id)exposedFetchResultBeforeFiltering
{
  if (-[PXPhotosMutableResultRecord wantsCuration](self, "wantsCuration") && ((-[PXPhotosMutableResultRecord curatedFetchResult](self, "curatedFetchResult"), (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (v4 = v3, -[PXPhotosMutableResultRecord curatedFetchResult](self, "curatedFetchResult"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6)))
  {
    v7 = [(PXPhotosMutableResultRecord *)self curatedFetchResult];
  }

  else
  {
    v7 = [(PXPhotosMutableResultRecord *)self fetchResult];
  }

  return v7;
}

- (NSPredicate)inclusionPredicate
{
  if (!self->_inclusionPredicateIsValid)
  {
    self->_inclusionPredicateIsValid = 1;
    v3 = [(PXPhotosMutableResultRecord *)self includedOids];
    v4 = [v3 count];

    if (v4)
    {
      v5 = MEMORY[0x1E696AE18];
      v6 = [(PXPhotosMutableResultRecord *)self includedOids];
      v7 = [v5 predicateWithFormat:@"self IN %@", v6];
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

- (void)adoptPreparedFilteredFetchResultFromRecord:(id)a3
{
  v4 = a3;
  if (self->_filteredFetchResultIsValid)
  {
    goto LABEL_27;
  }

  v31 = v4;
  v5 = [(PXPhotosMutableResultRecord *)self reverseSortOrder];
  v6 = v5 == [v31 reverseSortOrder];
  v4 = v31;
  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = [(PXPhotosMutableResultRecord *)self excludedOids];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFD8] set];
  }

  v9 = [v31 excludedOids];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFD8] set];
  }

  if (v8 == v10)
  {
    v11 = 1;
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = [v8 isEqual:v10];
  if (!v9)
  {
LABEL_10:
  }

LABEL_11:

  if (!v7)
  {
  }

  v4 = v31;
  if (v11)
  {
    v12 = [(PXPhotosMutableResultRecord *)self keyAssetsFetchResult];
    v13 = [v12 fetchedObjectIDs];
    v14 = [v13 firstObject];
    v15 = [v31 keyAssetsFetchResult];
    v16 = [v15 fetchedObjectIDs];
    v17 = [v16 firstObject];
    v18 = v17;
    if (v14 == v17)
    {
    }

    else
    {
      v19 = [v14 isEqual:v17];

      v4 = v31;
      if ((v19 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v20 = [(PXPhotosMutableResultRecord *)self ensureKeyAssetAtBeginning];
    v6 = v20 == [v31 ensureKeyAssetAtBeginning];
    v4 = v31;
    if (v6)
    {
      v21 = [(PXPhotosMutableResultRecord *)self exposedFetchResultBeforeFiltering];
      v22 = [v31 exposedFetchResultBeforeFiltering];
      v23 = v22;
      if (v21 == v22)
      {
      }

      else
      {
        v24 = [v21 isEqual:v22];

        v4 = v31;
        if ((v24 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v25 = [v31 excludedOids];
      v26 = [v25 copy];
      excludedOids = self->_excludedOids;
      self->_excludedOids = v26;

      v28 = [v31 filteredFetchResult];
      v29 = [v28 copy];
      filteredFetchResult = self->_filteredFetchResult;
      self->_filteredFetchResult = v29;

      v4 = v31;
      self->_filteredFetchResultIsValid = 1;
    }
  }

LABEL_27:
}

- (BOOL)isCurated
{
  v3 = [(PXPhotosMutableResultRecord *)self curatedFetchResult];
  if (v3)
  {
    v4 = [(PXPhotosMutableResultRecord *)self exposedFetchResultBeforeFiltering];
    v5 = [(PXPhotosMutableResultRecord *)self curatedFetchResult];
    v6 = v4 == v5;
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
    v4 = [(PXPhotosMutableResultRecord *)self keyAssetsFetchResult];
    if ([v4 count])
    {
      v5 = [(PXPhotosMutableResultRecord *)self exposedFetchResult];
      if (v5)
      {
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v6 = v4;
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

              v11 = [v5 indexOfObject:{*(*(&v13 + 1) + 8 * i), v13}];
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

- (void)setEnsureKeyAssetAtBeginning:(BOOL)a3
{
  if (self->_ensureKeyAssetAtBeginning != a3)
  {
    self->_ensureKeyAssetAtBeginning = a3;
    [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
  }
}

- (void)setReverseSortOrder:(BOOL)a3
{
  if (self->_reverseSortOrder != a3)
  {
    self->_reverseSortOrder = a3;
    [(PXPhotosMutableResultRecord *)self setFetchResult:0];
    [(PXPhotosMutableResultRecord *)self setCuratedFetchResult:0];

    [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
  }
}

- (void)setSortDescriptors:(id)a3
{
  v4 = a3;
  sortDescriptors = self->_sortDescriptors;
  if (sortDescriptors != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)sortDescriptors isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_sortDescriptors;
      self->_sortDescriptors = v7;

      [(PXPhotosMutableResultRecord *)self setFetchResult:0];
      [(PXPhotosMutableResultRecord *)self setCuratedFetchResult:0];
      [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
      v4 = v9;
    }
  }
}

- (void)setCurationLength:(int64_t)a3
{
  if (self->_curationLength != a3)
  {
    self->_curationLength = a3;
    [(PXPhotosMutableResultRecord *)self setFetchResult:0];
    [(PXPhotosMutableResultRecord *)self setCuratedFetchResult:0];

    [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
  }
}

- (void)setWantsCuration:(BOOL)a3
{
  if (self->_wantsCuration != a3)
  {
    self->_wantsCuration = a3;
    [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
  }
}

- (void)setKeyAssetsFetchResult:(id)a3
{
  v5 = a3;
  if (self->_keyAssetsFetchResult != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_keyAssetsFetchResult, a3);
    [(PXPhotosMutableResultRecord *)self _invalidateKeyAssetIndex];
    v6 = [(PXPhotosMutableResultRecord *)self ensureKeyAssetAtBeginning];
    v5 = v7;
    if (v6)
    {
      [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
      v5 = v7;
    }
  }
}

- (void)setCuratedFetchResult:(id)a3
{
  v5 = a3;
  if (self->_curatedFetchResult != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_curatedFetchResult, a3);
    v6 = [(PHFetchResult *)v8 fetchedObjectIDsSet];
    curatedOids = self->_curatedOids;
    self->_curatedOids = v6;

    [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
    v5 = v8;
  }
}

- (void)setFetchResult:(id)a3
{
  v5 = a3;
  if (self->_fetchResult != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_fetchResult, a3);
    [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
    v5 = v6;
  }
}

- (void)setFetchResult:(id)a3 reverseSortOrder:(BOOL)a4
{
  v4 = a4;
  [(PXPhotosMutableResultRecord *)self setFetchResult:a3];

  [(PXPhotosMutableResultRecord *)self setReverseSortOrder:v4];
}

- (void)stopExcludingOids:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [(PXPhotosMutableResultRecord *)self excludedOids];
    v5 = [v4 mutableCopy];

    [v5 minusSet:v7];
    v6 = [(NSSet *)self->_excludedOids count];
    if (v6 != [v5 count])
    {
      objc_storeStrong(&self->_excludedOids, v5);
      [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
    }
  }
}

- (void)excludeOids:(id)a3
{
  v10 = a3;
  v4 = [v10 count];
  v5 = v10;
  if (v4)
  {
    v6 = [MEMORY[0x1E695DFA8] setWithArray:v10];
    v7 = [(PXPhotosMutableResultRecord *)self excludedOids];

    if (v7)
    {
      v8 = [(PXPhotosMutableResultRecord *)self excludedOids];
      [v6 unionSet:v8];
    }

    v9 = [(NSSet *)self->_excludedOids count];
    if (v9 != [v6 count])
    {
      objc_storeStrong(&self->_excludedOids, v6);
      [(PXPhotosMutableResultRecord *)self _invalidateFilteredFetchResult];
    }

    v5 = v10;
  }
}

- (void)_setIncludeOids:(id)a3
{
  v6 = a3;
  v5 = [(NSSet *)self->_includedOids count];
  if (v5 != [v6 count])
  {
    objc_storeStrong(&self->_includedOids, a3);
    [(PXPhotosMutableResultRecord *)self _invalidateInclusionPredicate];
    [(PXPhotosMutableResultRecord *)self setFetchResult:0];
  }
}

- (void)includeOids:(id)a3
{
  v9 = a3;
  v4 = [v9 count];
  v5 = v9;
  if (v4)
  {
    v6 = [MEMORY[0x1E695DFA8] setWithArray:v9];
    v7 = [(PXPhotosMutableResultRecord *)self includedOids];

    if (v7)
    {
      v8 = [(PXPhotosMutableResultRecord *)self includedOids];
      [v6 unionSet:v8];
    }

    [(PXPhotosMutableResultRecord *)self _setIncludeOids:v6];

    v5 = v9;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PXPhotosMutableResultRecord);
  v5 = [(PXPhotosMutableResultRecord *)self fetchResult];
  v6 = [v5 copy];
  fetchResult = v4->_fetchResult;
  v4->_fetchResult = v6;

  v8 = [(PXPhotosMutableResultRecord *)self curatedFetchResult];
  v9 = [v8 copy];
  curatedFetchResult = v4->_curatedFetchResult;
  v4->_curatedFetchResult = v9;

  v11 = [(PXPhotosMutableResultRecord *)self keyAssetsFetchResult];
  v12 = [v11 copy];
  keyAssetsFetchResult = v4->_keyAssetsFetchResult;
  v4->_keyAssetsFetchResult = v12;

  v4->_keyAssetIndex = self->_keyAssetIndex;
  v4->_wantsCuration = [(PXPhotosMutableResultRecord *)self wantsCuration];
  v4->_curationLength = [(PXPhotosMutableResultRecord *)self curationLength];
  v14 = [(PXPhotosMutableResultRecord *)self sortDescriptors];
  v15 = [v14 copy];
  sortDescriptors = v4->_sortDescriptors;
  v4->_sortDescriptors = v15;

  v17 = [(PXPhotosMutableResultRecord *)self filteredFetchResult];
  v18 = [v17 copy];
  filteredFetchResult = v4->_filteredFetchResult;
  v4->_filteredFetchResult = v18;

  v20 = [(PXPhotosMutableResultRecord *)self excludedOids];
  v21 = [v20 copy];
  excludedOids = v4->_excludedOids;
  v4->_excludedOids = v21;

  v23 = [(PXPhotosMutableResultRecord *)self includedOids];
  v24 = [v23 copy];
  includedOids = v4->_includedOids;
  v4->_includedOids = v24;

  v26 = [(PXPhotosMutableResultRecord *)self curatedOids];
  v27 = [v26 copy];
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