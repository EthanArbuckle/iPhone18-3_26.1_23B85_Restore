@interface PXSharedLibraryAggregateSharingSuggestionContainer
- (BOOL)isEqual:(id)equal;
- (NSString)px_sl_title;
- (PHAssetCollection)px_sl_containerCollection;
- (PXSharedLibraryAggregateSharingSuggestionContainer)initWithSharingSuggestions:(id)suggestions aggregateBeforeDate:(id)date;
- (_NSRange)aggregationRange;
- (id)px_sl_fetchAssetCollections;
- (unint64_t)hash;
- (void)px_sl_getKeyAsset:(id *)asset suggestedDate:(id *)date locations:(id *)locations;
@end

@implementation PXSharedLibraryAggregateSharingSuggestionContainer

- (_NSRange)aggregationRange
{
  length = self->_aggregationRange.length;
  location = self->_aggregationRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (PHAssetCollection)px_sl_containerCollection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_px_sl_containerCollection)
  {
    px_sl_containedSharingSuggestions = [(PXSharedLibraryAggregateSharingSuggestionContainer *)selfCopy px_sl_containedSharingSuggestions];
    firstObject = [px_sl_containedSharingSuggestions firstObject];
    photoLibrary = [firstObject photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIncludeSharedLibrarySharingSuggestionsSmartAlbum:1];
    v7 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000214 options:librarySpecificFetchOptions];
    v8 = MEMORY[0x1E696AE18];
    px_sl_containedSharingSuggestionObjectIDs = [(PXSharedLibraryAggregateSharingSuggestionContainer *)selfCopy px_sl_containedSharingSuggestionObjectIDs];
    v10 = [v8 predicateWithFormat:@"highlightBeingAssets.parentPhotosHighlight IN (%@)", px_sl_containedSharingSuggestionObjectIDs];
    [librarySpecificFetchOptions setInternalPredicate:v10];

    [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
    v11 = MEMORY[0x1E6978630];
    firstObject2 = [v7 firstObject];
    v13 = [v11 fetchAssetsInAssetCollection:firstObject2 options:librarySpecificFetchOptions];

    v14 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v13 title:0 identifier:@"PXSharedLibrarySharingSuggestionTransientIdentifier"];
    px_sl_containerCollection = selfCopy->_px_sl_containerCollection;
    selfCopy->_px_sl_containerCollection = v14;
  }

  objc_sync_exit(selfCopy);

  v16 = selfCopy->_px_sl_containerCollection;

  return v16;
}

- (void)px_sl_getKeyAsset:(id *)asset suggestedDate:(id *)date locations:(id *)locations
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(PXSharedLibraryAggregateSharingSuggestionContainer *)self px_sl_containedSharingSuggestions];
  v28 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  v7 = 0;
  v8 = 0;
  if (v28)
  {
    v27 = *v38;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        v35 = 0;
        v36 = 0;
        v34 = 0;
        [v10 px_sl_getKeyAsset:&v36 suggestedDate:&v35 locations:&v34];
        v11 = v36;
        v12 = v35;
        v13 = v34;
        if (!v8)
        {
          v8 = v11;
        }

        v29 = v11;
        if (!v7)
        {
          v7 = v12;
        }

        v14 = v7;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v15 = v13;
        v16 = [v15 countByEnumeratingWithState:&v30 objects:v41 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v31;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v31 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v30 + 1) + 8 * j);
              if (([v6 containsObject:v20] & 1) == 0)
              {
                [v6 addObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v30 objects:v41 count:16];
          }

          while (v17);
        }

        v7 = v14;
        if (v8 && v14 && [v6 count] >= 4)
        {

          goto LABEL_26;
        }
      }

      v28 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  v21 = v8;
  *asset = v8;
  v22 = v7;
  *date = v7;
  *locations = [v6 array];
}

- (id)px_sl_fetchAssetCollections
{
  v2 = MEMORY[0x1E69789F0];
  px_sl_containedSharingSuggestions = [(PXSharedLibraryAggregateSharingSuggestionContainer *)self px_sl_containedSharingSuggestions];
  v4 = [v2 fetchHighlightsInSharedLibrarySharingSuggestions:px_sl_containedSharingSuggestions];

  return v4;
}

- (NSString)px_sl_title
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_px_sl_title)
  {
    px_sl_containedSharingSuggestions = [(PXSharedLibraryAggregateSharingSuggestionContainer *)selfCopy px_sl_containedSharingSuggestions];
    firstObject = [px_sl_containedSharingSuggestions firstObject];

    px_sl_containedSharingSuggestions2 = [(PXSharedLibraryAggregateSharingSuggestionContainer *)selfCopy px_sl_containedSharingSuggestions];
    lastObject = [px_sl_containedSharingSuggestions2 lastObject];

    startDate = [firstObject startDate];
    startDate2 = [lastObject startDate];
    v9 = [startDate earlierDate:startDate2];

    endDate = [firstObject endDate];
    endDate2 = [lastObject endDate];
    v12 = [endDate laterDate:endDate2];

    v13 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v12];
    v14 = _localizedSuggestionTitleForDateInterval(v13);
    px_sl_title = selfCopy->_px_sl_title;
    selfCopy->_px_sl_title = v14;
  }

  objc_sync_exit(selfCopy);

  v16 = selfCopy->_px_sl_title;

  return v16;
}

- (unint64_t)hash
{
  px_sl_identifier = [(PXSharedLibraryAggregateSharingSuggestionContainer *)self px_sl_identifier];
  v3 = [px_sl_identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    px_sl_identifier = [(PXSharedLibraryAggregateSharingSuggestionContainer *)self px_sl_identifier];
    px_sl_identifier2 = [equalCopy px_sl_identifier];
    if (px_sl_identifier == px_sl_identifier2)
    {
      v7 = 1;
    }

    else
    {
      v7 = [px_sl_identifier isEqualToString:px_sl_identifier2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXSharedLibraryAggregateSharingSuggestionContainer)initWithSharingSuggestions:(id)suggestions aggregateBeforeDate:(id)date
{
  suggestionsCopy = suggestions;
  obj = date;
  dateCopy = date;
  v9 = [suggestionsCopy count];
  v10 = 0;
  while (1)
  {
    if ((v9 & ~(v9 >> 63)) == v10)
    {
LABEL_6:
      selfCopy = 0;
      goto LABEL_7;
    }

    v11 = [suggestionsCopy objectAtIndexedSubscript:v10];
    endDate = [v11 endDate];
    v13 = [endDate compare:dateCopy];

    if (v13 == -1 && (v10 + 1) < v9)
    {
      break;
    }

    ++v10;
    if (v13 == -1)
    {
      goto LABEL_6;
    }
  }

  selfCopy = 0;
  if (v9 != v10 && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v27.receiver = self;
    v27.super_class = PXSharedLibraryAggregateSharingSuggestionContainer;
    v16 = [(PXSharedLibraryAggregateSharingSuggestionContainer *)&v27 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_sharingSuggestions, suggestions);
      objc_storeStrong(&v17->_aggregateBeforeDate, obj);
      v17->_aggregationRange.location = v10;
      v17->_aggregationRange.length = v9 - v10;
      fetchedObjects = [(PHFetchResult *)v17->_sharingSuggestions fetchedObjects];
      v19 = [fetchedObjects subarrayWithRange:{v17->_aggregationRange.location, v17->_aggregationRange.length}];
      px_sl_containedSharingSuggestions = v17->_px_sl_containedSharingSuggestions;
      v17->_px_sl_containedSharingSuggestions = v19;

      v21 = MEMORY[0x1E695DFD8];
      fetchedObjectIDs = [(PHFetchResult *)v17->_sharingSuggestions fetchedObjectIDs];
      v23 = [fetchedObjectIDs subarrayWithRange:{v17->_aggregationRange.location, v17->_aggregationRange.length}];
      v24 = [v21 setWithArray:v23];
      px_sl_containedSharingSuggestionObjectIDs = v17->_px_sl_containedSharingSuggestionObjectIDs;
      v17->_px_sl_containedSharingSuggestionObjectIDs = v24;
    }

    self = v17;
    selfCopy = self;
  }

LABEL_7:

  return selfCopy;
}

@end