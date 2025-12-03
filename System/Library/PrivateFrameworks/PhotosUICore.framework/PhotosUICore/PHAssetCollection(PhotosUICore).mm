@interface PHAssetCollection(PhotosUICore)
+ (__CFString)px_builtInAlbumNameForSubtype:()PhotosUICore;
+ (id)px_albumNameForTransientIdentifier:()PhotosUICore;
+ (id)px_fetchContainingCollectionsForAsset:()PhotosUICore excludedAssetCollection:;
+ (id)px_fetchSmartAlbumCollectionsBySubtypeForAlbumSubtypes:()PhotosUICore photoLibrary:;
+ (id)px_fetchSmartAlbumWithSubtype:()PhotosUICore;
+ (id)px_mediaTypeSmartAlbumSubtypes;
+ (id)px_otherAlbumsSubtypes;
+ (id)px_regularAlbumWithTitle:()PhotosUICore;
+ (id)px_smartAlbumWithSubtype:()PhotosUICore;
+ (void)px_fetchAssetCollectionsWithAlbumSubtypes:()PhotosUICore photoLibrary:;
+ (void)px_getType:()PhotosUICore subtype:forBuiltInAlbumName:;
- (BOOL)px_fetchIsEmptyWithOptions:()PhotosUICore;
- (id)px_collectionListRepresentation;
- (id)px_debugDictionary;
- (id)px_fetchAncestorThatSupportsCustomKeyAssets;
- (id)px_fetchAncestorThatSupportsExplictlyRemovingAssets;
- (id)px_navigationURLComponents;
- (uint64_t)px_assetsDropMode;
- (uint64_t)px_estimatedCuratedAssetsCount;
- (uint64_t)px_isTransientCollectionWithIdentifier:()PhotosUICore;
- (uint64_t)px_navigationWellKnownName;
@end

@implementation PHAssetCollection(PhotosUICore)

- (id)px_fetchAncestorThatSupportsExplictlyRemovingAssets
{
  if ([self assetCollectionType] != 6)
  {
    firstObject = 0;
    goto LABEL_11;
  }

  selfCopy = self;
  type = [selfCopy type];
  if (!MEMORY[0x1A590BA50]())
  {
    if ((type - 5) <= 1u)
    {
      v5 = [MEMORY[0x1E69789F0] fetchParentDayGroupHighlightForHighlight:selfCopy options:0];
      firstObject = [v5 firstObject];
      if (MEMORY[0x1A590BA50]([firstObject type]))
      {

        goto LABEL_10;
      }
    }

    firstObject = 0;
    goto LABEL_10;
  }

  firstObject = selfCopy;
LABEL_10:

LABEL_11:

  return firstObject;
}

- (id)px_fetchAncestorThatSupportsCustomKeyAssets
{
  if ([self canContainCustomKeyAssets])
  {
    selfCopy = self;
    goto LABEL_10;
  }

  if ([self assetCollectionType] == 6)
  {
    selfCopy2 = self;
    if ([selfCopy2 type] - 5 <= 1)
    {
      v4 = [MEMORY[0x1E69789F0] fetchParentDayGroupHighlightForHighlight:selfCopy2 options:0];
      selfCopy = [v4 firstObject];
      if ([selfCopy canContainCustomKeyAssets])
      {

        goto LABEL_10;
      }
    }
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

- (uint64_t)px_isTransientCollectionWithIdentifier:()PhotosUICore
{
  v4 = a3;
  if ([self isTransient])
  {
    transientIdentifier = [self transientIdentifier];
    v6 = [transientIdentifier isEqual:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)px_estimatedCuratedAssetsCount
{
  estimatedAssetCount = [self estimatedAssetCount];
  if ([self assetCollectionType] == 6)
  {
    selfCopy = self;
    if (selfCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_4;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v11 = NSStringFromClass(v12);
      px_descriptionForAssertionMessage = [selfCopy px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PHCollection+PhotosUICore.m" lineNumber:792 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self", v11, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [currentHandler handleFailureInMethod:a2 object:0 file:@"PHCollection+PhotosUICore.m" lineNumber:792 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self", v11}];
    }

LABEL_4:
    px_curationType = [selfCopy px_curationType];
    if (px_curationType == 2)
    {
      extendedCount = [selfCopy extendedCount];
    }

    else
    {
      if (px_curationType != 1)
      {
LABEL_9:

        return estimatedAssetCount;
      }

      extendedCount = [selfCopy summaryCount];
    }

    estimatedAssetCount = extendedCount;
    goto LABEL_9;
  }

  return estimatedAssetCount;
}

- (id)px_debugDictionary
{
  v33[8] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = &off_1F1AD51D0;
  v2 = objc_msgSendSuper2(&v31, sel_px_debugDictionary);
  v3 = [v2 mutableCopy];

  assetCollectionType = [self assetCollectionType];
  if (assetCollectionType > 0xD)
  {
    v5 = @"nil";
  }

  else
  {
    v5 = off_1E7742BF0[assetCollectionType];
  }

  assetCollectionSubtype = [self assetCollectionSubtype];
  v30 = v3;
  if (assetCollectionSubtype <= 1000000000)
  {
    if (assetCollectionSubtype > 101)
    {
      switch(assetCollectionSubtype)
      {
        case 200:
          v7 = @"Smart Album Generic";
          break;
        case 201:
          v7 = @"Smart Album Panaramas";
          break;
        case 202:
          v7 = @"Smart Album Videos";
          break;
        case 203:
          v7 = @"Smart Album Favorites";
          break;
        case 204:
          v7 = @"Smart Album Timelapses";
          break;
        case 205:
          v7 = @"Smart Album All Hidden";
          break;
        case 206:
          v7 = @"Smart Album Recently Added";
          break;
        case 207:
          v7 = @"Smart Album Bursts";
          break;
        case 208:
          v7 = @"Smart Album Slomo Videos";
          break;
        case 209:
          v7 = @"Smart Album User Library";
          break;
        case 210:
          v7 = @"Smart Album Self Portraits";
          break;
        case 211:
          v7 = @"Smart Album Screenshots";
          break;
        case 212:
          v7 = @"Smart Album Depth Effect";
          break;
        case 213:
          v7 = @"Smart Album Live Photos";
          break;
        case 214:
          v7 = @"Smart Album Animated";
          break;
        case 215:
          v7 = @"Smart album Long Exposures";
          break;
        case 216:
          v7 = @"Smart album Unable to Upload";
          break;
        case 217:
          v7 = @"Smart Album RAW";
          break;
        case 218:
          v7 = @"Smart Album Cinematic";
          break;
        case 219:
          v7 = @"Smart Album Spatial";
          break;
        case 220:
          v7 = @"Smart Album Screen Recordings";
          break;
        case 221:
          v7 = @"Smart Album Front Back";
          break;
        default:
          if (assetCollectionSubtype == 102)
          {
            v7 = @"CollectionShare (Shared Stream)";
          }

          else
          {
            if (assetCollectionSubtype != 103)
            {
              goto LABEL_71;
            }

            v7 = @"CollectionShare (CPL)";
          }

          break;
      }

      goto LABEL_94;
    }

    if (assetCollectionSubtype <= 4)
    {
      switch(assetCollectionSubtype)
      {
        case 2:
          v7 = @"Regular";
          goto LABEL_94;
        case 3:
          v7 = @"Synced Event";
          goto LABEL_94;
        case 4:
          v7 = @"Synced Faces";
          goto LABEL_94;
      }
    }

    else
    {
      if (assetCollectionSubtype > 99)
      {
        if (assetCollectionSubtype == 100)
        {
          v7 = @"My Photo Stream";
        }

        else
        {
          v7 = @"Cloud Shared";
        }

        goto LABEL_94;
      }

      if (assetCollectionSubtype == 5)
      {
        v7 = @"Synced Album";
        goto LABEL_94;
      }

      if (assetCollectionSubtype == 6)
      {
        v7 = @"Imported";
        goto LABEL_94;
      }
    }

LABEL_71:
    v7 = @"nil";
    goto LABEL_94;
  }

  if (assetCollectionSubtype > 1000000217)
  {
    if (assetCollectionSubtype > 1000000303)
    {
      if (assetCollectionSubtype <= 1000000500)
      {
        if (assetCollectionSubtype == 1000000304)
        {
          v7 = @"Photos Highlight Day Group";
          goto LABEL_94;
        }

        if (assetCollectionSubtype == 1000000401)
        {
          v7 = @"Screen Saver Activity Collection";
          goto LABEL_94;
        }
      }

      else
      {
        switch(assetCollectionSubtype)
        {
          case 0x3B9ACBF5:
            v7 = @"Content Syndication";
            goto LABEL_94;
          case 0x3B9ACC59:
            v7 = @"Duplicates";
            goto LABEL_94;
          case 0x7FFFFFFFFFFFFFFFLL:
            v7 = @"Any";
            goto LABEL_94;
        }
      }
    }

    else
    {
      if (assetCollectionSubtype > 1000000300)
      {
        if (assetCollectionSubtype == 1000000301)
        {
          v7 = @"Photos Highlight Day";
        }

        else if (assetCollectionSubtype == 1000000302)
        {
          v7 = @"Photos Highlight Month";
        }

        else
        {
          v7 = @"Photos Highlight Year";
        }

        goto LABEL_94;
      }

      if (assetCollectionSubtype == 1000000218)
      {
        v7 = @"Saved";
        goto LABEL_94;
      }

      if (assetCollectionSubtype == 1000000219)
      {
        v7 = @"Recovered";
        goto LABEL_94;
      }
    }

    goto LABEL_71;
  }

  if (assetCollectionSubtype <= 1000000205)
  {
    if (assetCollectionSubtype > 1000000202)
    {
      if (assetCollectionSubtype == 1000000203)
      {
        v7 = @"Places";
      }

      else if (assetCollectionSubtype == 1000000204)
      {
        v7 = @"User Smart Album";
      }

      else
      {
        v7 = @"Smart Album All Photos";
      }

      goto LABEL_94;
    }

    if (assetCollectionSubtype == 1000000001)
    {
      v7 = @"Camera Roll";
      goto LABEL_94;
    }

    if (assetCollectionSubtype == 1000000201)
    {
      v7 = @"Trash Bin";
      goto LABEL_94;
    }

    goto LABEL_71;
  }

  if (assetCollectionSubtype <= 1000000211)
  {
    if (assetCollectionSubtype == 1000000206)
    {
      v7 = @"Smart Album Recently Edited";
      goto LABEL_94;
    }

    if (assetCollectionSubtype == 1000000211)
    {
      v7 = @"Smart Album ProRes";
      goto LABEL_94;
    }

    goto LABEL_71;
  }

  if (assetCollectionSubtype == 1000000212)
  {
    v7 = @"All Library Duplicates";
  }

  else if (assetCollectionSubtype == 1000000214)
  {
    v7 = @"Smart Album Shared Library Sharing Suggestions";
  }

  else
  {
    v7 = @"nil";
    if (assetCollectionSubtype == 1000000215)
    {
      v5 = @"Smart Album Action Cam";
      v7 = @"nil";
    }
  }

LABEL_94:
  v32[0] = @"debugDescription";
  v29 = [self debugDescription];
  v33[0] = v29;
  v33[1] = v5;
  v32[1] = @"assetCollectionType";
  v32[2] = @"assetCollectionSubtype";
  v33[2] = v7;
  v32[3] = @"estimatedAssetCount";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "estimatedAssetCount")}];
  v33[3] = v8;
  v32[4] = @"startDate";
  startDate = [self startDate];
  v10 = startDate;
  if (startDate)
  {
    v11 = startDate;
  }

  else
  {
    v11 = @"nil";
  }

  v33[4] = v11;
  v32[5] = @"endDate";
  v28 = v11;
  endDate = [self endDate];
  v13 = endDate;
  if (endDate)
  {
    v14 = endDate;
  }

  else
  {
    v14 = @"nil";
  }

  v33[5] = v14;
  v32[6] = @"approximateLocation";
  v15 = v14;
  approximateLocation = [self approximateLocation];
  v17 = [approximateLocation debugDescription];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"nil";
  }

  v33[6] = v19;
  v32[7] = @"localizedLocationNames";
  v20 = v19;
  localizedLocationNames = [self localizedLocationNames];
  v22 = localizedLocationNames;
  if (localizedLocationNames)
  {
    v23 = localizedLocationNames;
  }

  else
  {
    v23 = @"nil";
  }

  v33[7] = v23;
  v24 = MEMORY[0x1E695DF20];
  v25 = v23;
  v26 = [v24 dictionaryWithObjects:v33 forKeys:v32 count:8];

  [v30 addEntriesFromDictionary:v26];

  return v30;
}

- (id)px_navigationURLComponents
{
  if ([self px_isPlacesSmartAlbum])
  {
    v2 = @"places";
LABEL_5:
    v5 = MEMORY[0x1E696AF20];
    v6 = [@"photos://" stringByAppendingString:v2];
    v7 = [v5 componentsWithString:v6];

    goto LABEL_7;
  }

  if ([self isTransient])
  {
    v3 = MEMORY[0x1E6978650];
    transientIdentifier = [self transientIdentifier];
    v2 = [v3 px_albumNameForTransientIdentifier:transientIdentifier];

    if (v2)
    {
      goto LABEL_5;
    }
  }

  v9.receiver = self;
  v9.super_class = &off_1F1AD51D0;
  v7 = objc_msgSendSuper2(&v9, sel_px_navigationURLComponents);
LABEL_7:

  return v7;
}

- (id)px_collectionListRepresentation
{
  if ([self px_isAllAlbumsVirtualCollection])
  {
    photoLibrary = [self photoLibrary];
    px_rootAlbumCollectionList = [photoLibrary px_rootAlbumCollectionList];
LABEL_5:

    goto LABEL_7;
  }

  if ([self px_isAllProjectsVirtualCollection])
  {
    photoLibrary = [self photoLibrary];
    px_virtualCollections = [photoLibrary px_virtualCollections];
    px_rootAlbumCollectionList = [px_virtualCollections rootProjectCollectionList];

    goto LABEL_5;
  }

  px_rootAlbumCollectionList = 0;
LABEL_7:

  return px_rootAlbumCollectionList;
}

- (uint64_t)px_navigationWellKnownName
{
  v1 = MEMORY[0x1E6978650];
  assetCollectionSubtype = [self assetCollectionSubtype];

  return [v1 px_builtInAlbumNameForSubtype:assetCollectionSubtype];
}

- (uint64_t)px_assetsDropMode
{
  if ([self px_isAllPhotosSmartAlbum] & 1) != 0 || (objc_msgSend(self, "px_isRecentsSmartAlbum") & 1) != 0 || (objc_msgSend(self, "px_isLibraryVirtualCollection"))
  {
    return 2;
  }

  return ([self px_isFavoritesSmartAlbum] & 1) != 0 || (objc_msgSend(self, "canPerformEditOperation:", 3) & 1) != 0 || objc_msgSend(self, "px_isMemory");
}

- (BOOL)px_fetchIsEmptyWithOptions:()PhotosUICore
{
  v4 = a3;
  estimatedAssetCount = [self estimatedAssetCount];
  if (estimatedAssetCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  v6 = estimatedAssetCount;
  if ([v4 sharingFilter] != 2)
  {
    goto LABEL_6;
  }

  predicate = [v4 predicate];
  if (predicate)
  {

LABEL_6:
    v9 = [v4 copy];
    [v9 setWantsIncrementalChangeDetails:0];
    [v9 setFetchLimit:1];
    v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:self options:v9];
    v6 = [v10 count];

    goto LABEL_7;
  }

  internalPredicate = [v4 internalPredicate];

  if (internalPredicate)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6 == 0;
}

+ (void)px_fetchAssetCollectionsWithAlbumSubtypes:()PhotosUICore photoLibrary:
{
  v4 = [self px_fetchSmartAlbumCollectionsBySubtypeForAlbumSubtypes:a3 photoLibrary:a4];
  PXMap();
}

+ (id)px_fetchSmartAlbumCollectionsBySubtypeForAlbumSubtypes:()PhotosUICore photoLibrary:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  px_standardLibrarySpecificFetchOptions = [a4 px_standardLibrarySpecificFetchOptions];
  [px_standardLibrarySpecificFetchOptions setIncludePlacesSmartAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D7E0)}];
  [px_standardLibrarySpecificFetchOptions setIncludeDuplicatesAlbums:{objc_msgSend(v5, "containsObject:", &unk_1F190D7B0)}];
  [px_standardLibrarySpecificFetchOptions setIncludeAllPhotosSmartAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D7F8)}];
  [px_standardLibrarySpecificFetchOptions setIncludeRecentlyEditedSmartAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D7C8)}];
  [px_standardLibrarySpecificFetchOptions setIncludeScreenRecordingsSmartAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D6C0)}];
  [px_standardLibrarySpecificFetchOptions setIncludeActionCamVideoSmartAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D648)}];
  [px_standardLibrarySpecificFetchOptions setIncludeProResSmartAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D720)}];
  [px_standardLibrarySpecificFetchOptions setIncludeSharedLibrarySharingSuggestionsSmartAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D810)}];
  [px_standardLibrarySpecificFetchOptions setIncludeTrashBinAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D768)}];
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"assetCollectionSubtype IN %@", v5];
  [px_standardLibrarySpecificFetchOptions setPredicate:?];
  v7 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:0x7FFFFFFFFFFFFFFFLL options:px_standardLibrarySpecificFetchOptions];
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "assetCollectionSubtype")}];
        [v8 setObject:v14 forKeyedSubscript:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (id)px_fetchContainingCollectionsForAsset:()PhotosUICore excludedAssetCollection:
{
  v5 = a3;
  v6 = a4;
  photoLibrary = [v5 photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  if (v6)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self != %@", v6];
    [librarySpecificFetchOptions setPredicate:v9];
  }

  v10 = [MEMORY[0x1E6978650] fetchAssetCollectionsContainingAsset:v5 withType:1 options:librarySpecificFetchOptions];

  return v10;
}

+ (id)px_fetchSmartAlbumWithSubtype:()PhotosUICore
{
  px_standardFetchOptions = [MEMORY[0x1E6978830] px_standardFetchOptions];
  [px_standardFetchOptions setIncludePlacesSmartAlbum:a3 == 1000000203];
  [px_standardFetchOptions setIncludeAllPhotosSmartAlbum:a3 == 1000000205];
  [px_standardFetchOptions setIncludeRecentlyEditedSmartAlbum:a3 == 1000000206];
  [px_standardFetchOptions setIncludeScreenRecordingsSmartAlbum:a3 == 220];
  [px_standardFetchOptions setIncludeUserSmartAlbums:a3 == 1000000204];
  [px_standardFetchOptions setIncludeProResSmartAlbum:a3 == 1000000211];
  [px_standardFetchOptions setIncludeSharedLibrarySharingSuggestionsSmartAlbum:a3 == 1000000214];
  [px_standardFetchOptions setIncludeDuplicatesAlbums:a3 == 1000000212];
  v6 = [self fetchAssetCollectionsWithType:2 subtype:a3 options:px_standardFetchOptions];

  return v6;
}

+ (id)px_smartAlbumWithSubtype:()PhotosUICore
{
  v1 = [self px_fetchSmartAlbumWithSubtype:?];
  firstObject = [v1 firstObject];

  return firstObject;
}

+ (id)px_regularAlbumWithTitle:()PhotosUICore
{
  v3 = MEMORY[0x1E6978830];
  v4 = a3;
  px_standardFetchOptions = [v3 px_standardFetchOptions];
  [px_standardFetchOptions setFetchLimit:1];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"title == %@", v4];

  [px_standardFetchOptions setPredicate:v6];
  v7 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:1 subtype:2 options:px_standardFetchOptions];
  firstObject = [v7 firstObject];

  return firstObject;
}

+ (id)px_otherAlbumsSubtypes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PHAssetCollection_PhotosUICore__px_otherAlbumsSubtypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (px_otherAlbumsSubtypes_onceToken != -1)
  {
    dispatch_once(&px_otherAlbumsSubtypes_onceToken, block);
  }

  v1 = px_otherAlbumsSubtypes_subtypes;

  return v1;
}

+ (id)px_mediaTypeSmartAlbumSubtypes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PHAssetCollection_PhotosUICore__px_mediaTypeSmartAlbumSubtypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (px_mediaTypeSmartAlbumSubtypes_onceToken != -1)
  {
    dispatch_once(&px_mediaTypeSmartAlbumSubtypes_onceToken, block);
  }

  v1 = px_mediaTypeSmartAlbumSubtypes_subtypes;

  return v1;
}

+ (void)px_getType:()PhotosUICore subtype:forBuiltInAlbumName:
{
  v10 = a5;
  if ([v10 isEqualToString:@"faces"])
  {
    v7 = 4;
LABEL_3:
    v8 = 1;
    goto LABEL_27;
  }

  if ([v10 isEqualToString:@"import-history"])
  {
    v7 = 200;
    v8 = 9;
    goto LABEL_27;
  }

  if ([v10 isEqualToString:@"photostream"])
  {
    v7 = 100;
    goto LABEL_3;
  }

  if ([v10 isEqualToString:@"panoramas"])
  {
    v7 = 201;
LABEL_26:
    v8 = 2;
    goto LABEL_27;
  }

  if ([v10 isEqualToString:@"spatial"])
  {
    v7 = 219;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"videos"])
  {
    v7 = 202;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"favorites"])
  {
    v7 = 203;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"timelapses"])
  {
    v7 = 204;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"hidden"])
  {
    v7 = 205;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"recents"])
  {
    goto LABEL_21;
  }

  if ([v10 isEqualToString:@"bursts"])
  {
    v7 = 207;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"slomo"])
  {
    v7 = 208;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"camera-roll"])
  {
LABEL_21:
    v7 = 209;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"selfies"])
  {
    v7 = 210;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"screenshots"])
  {
    v7 = 211;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"screenrecordings"])
  {
    v7 = 220;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"depth-effect"])
  {
    v7 = 212;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"live-photos"])
  {
    v7 = 213;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"animated"])
  {
    v7 = 214;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"long-exposures"])
  {
    v7 = 215;
    goto LABEL_26;
  }

  if ([v10 isEqualToString:@"unable-to-upload"])
  {
    v7 = 216;
    goto LABEL_26;
  }

  if (([v10 isEqualToString:@"recently-deleted"] & 1) == 0)
  {
    if ([v10 isEqualToString:@"shared-library-sharing-suggestions"])
    {
      v7 = 1000000214;
    }

    else if ([v10 isEqualToString:@"duplicates"])
    {
      v7 = 1000000212;
    }

    else if ([v10 isEqualToString:@"cinematic"])
    {
      v7 = 218;
    }

    else if ([v10 isEqualToString:@"raw"])
    {
      v7 = 217;
    }

    else if ([v10 isEqualToString:@"recently-saved"])
    {
      v7 = 1000000218;
    }

    else if ([v10 isEqualToString:@"recovered"])
    {
      v7 = 1000000219;
    }

    else
    {
      v9 = [v10 isEqualToString:@"prores"];
      v7 = 1000000211;
      if (!v9)
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    goto LABEL_26;
  }

  v8 = 2;
  v7 = 1000000201;
LABEL_27:
  *a3 = v8;
  *a4 = v7;
}

+ (__CFString)px_builtInAlbumNameForSubtype:()PhotosUICore
{
  v4 = 0;
  if (a3 > 1000000200)
  {
    if (a3 > 1000000213)
    {
      switch(a3)
      {
        case 1000000214:
          v5 = PXProgrammaticNavigationWellKnownNameSharedLibrarySuggestions;
          break;
        case 1000000218:
          v5 = PXProgrammaticNavigationWellKnownNameRecentlySaved;
          break;
        case 1000000219:
          v5 = PXProgrammaticNavigationWellKnownNameRecovered;
          break;
        default:
          goto LABEL_39;
      }
    }

    else
    {
      switch(a3)
      {
        case 1000000201:
          v5 = PXProgrammaticNavigationWellKnownNameRecentlyDeleted;
          break;
        case 1000000211:
          v5 = PXProgrammaticNavigationWellKnownNameProRes;
          break;
        case 1000000212:
          v5 = PXProgrammaticNavigationWellKnownNameAllLibraryDuplicates;
          break;
        default:
          goto LABEL_39;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 201:
        v5 = PXProgrammaticNavigationWellKnownNamePanoramas;
        break;
      case 202:
        v5 = PXProgrammaticNavigationWellKnownNameVideos;
        break;
      case 203:
        v5 = PXProgrammaticNavigationWellKnownNameFavorites;
        break;
      case 204:
        v5 = PXProgrammaticNavigationWellKnownNameTimelapses;
        break;
      case 205:
        v5 = PXProgrammaticNavigationWellKnownNameHidden;
        break;
      case 206:
        goto LABEL_39;
      case 207:
        v5 = PXProgrammaticNavigationWellKnownNameBursts;
        break;
      case 208:
        v5 = PXProgrammaticNavigationWellKnownNameSlomo;
        break;
      case 209:
        v5 = PXProgrammaticNavigationWellKnownNameCameraRoll;
        break;
      case 210:
        v5 = PXProgrammaticNavigationWellKnownNameSelfies;
        break;
      case 211:
        v5 = PXProgrammaticNavigationWellKnownNameScreenshots;
        break;
      case 212:
        v5 = PXProgrammaticNavigationWellKnownNameDepthEffect;
        break;
      case 213:
        v5 = PXProgrammaticNavigationWellKnownNameLivePhotos;
        break;
      case 214:
        v5 = PXProgrammaticNavigationWellKnownNameAnimated;
        break;
      case 215:
        v5 = PXProgrammaticNavigationWellKnownNameLongExposures;
        break;
      case 216:
        v5 = PXProgrammaticNavigationWellKnownNameUnableToUpload;
        break;
      case 217:
        v5 = PXProgrammaticNavigationWellKnownNameRaw;
        break;
      case 218:
        v5 = PXProgrammaticNavigationWellKnownNameCinematicVideos;
        break;
      case 219:
        v5 = PXProgrammaticNavigationWellKnownNameSpatial;
        break;
      default:
        if (a3 == 4)
        {
          v5 = PXProgrammaticNavigationWellKnownNameSyncedFaces;
        }

        else
        {
          if (a3 != 100)
          {
            goto LABEL_39;
          }

          v5 = PXProgrammaticNavigationWellKnownNamePhotoStream;
        }

        break;
    }
  }

  v4 = *v5;
LABEL_39:

  return v4;
}

+ (id)px_albumNameForTransientIdentifier:()PhotosUICore
{
  v3 = px_albumNameForTransientIdentifier__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&px_albumNameForTransientIdentifier__onceToken, &__block_literal_global_196246);
  }

  v5 = [px_albumNameForTransientIdentifier__albumNames objectForKeyedSubscript:v4];

  return v5;
}

@end