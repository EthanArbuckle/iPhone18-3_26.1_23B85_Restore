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
  if ([a1 assetCollectionType] != 6)
  {
    v4 = 0;
    goto LABEL_11;
  }

  v2 = a1;
  v3 = [v2 type];
  if (!MEMORY[0x1A590BA50]())
  {
    if ((v3 - 5) <= 1u)
    {
      v5 = [MEMORY[0x1E69789F0] fetchParentDayGroupHighlightForHighlight:v2 options:0];
      v4 = [v5 firstObject];
      if (MEMORY[0x1A590BA50]([v4 type]))
      {

        goto LABEL_10;
      }
    }

    v4 = 0;
    goto LABEL_10;
  }

  v4 = v2;
LABEL_10:

LABEL_11:

  return v4;
}

- (id)px_fetchAncestorThatSupportsCustomKeyAssets
{
  if ([a1 canContainCustomKeyAssets])
  {
    v2 = a1;
    goto LABEL_10;
  }

  if ([a1 assetCollectionType] == 6)
  {
    v3 = a1;
    if ([v3 type] - 5 <= 1)
    {
      v4 = [MEMORY[0x1E69789F0] fetchParentDayGroupHighlightForHighlight:v3 options:0];
      v2 = [v4 firstObject];
      if ([v2 canContainCustomKeyAssets])
      {

        goto LABEL_10;
      }
    }
  }

  v2 = 0;
LABEL_10:

  return v2;
}

- (uint64_t)px_isTransientCollectionWithIdentifier:()PhotosUICore
{
  v4 = a3;
  if ([a1 isTransient])
  {
    v5 = [a1 transientIdentifier];
    v6 = [v5 isEqual:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)px_estimatedCuratedAssetsCount
{
  v4 = [a1 estimatedAssetCount];
  if ([a1 assetCollectionType] == 6)
  {
    v5 = a1;
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_4;
      }

      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v11 = NSStringFromClass(v12);
      v13 = [v5 px_descriptionForAssertionMessage];
      [v9 handleFailureInMethod:a2 object:v5 file:@"PHCollection+PhotosUICore.m" lineNumber:792 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self", v11, v13}];
    }

    else
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v9 handleFailureInMethod:a2 object:0 file:@"PHCollection+PhotosUICore.m" lineNumber:792 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self", v11}];
    }

LABEL_4:
    v6 = [v5 px_curationType];
    if (v6 == 2)
    {
      v7 = [v5 extendedCount];
    }

    else
    {
      if (v6 != 1)
      {
LABEL_9:

        return v4;
      }

      v7 = [v5 summaryCount];
    }

    v4 = v7;
    goto LABEL_9;
  }

  return v4;
}

- (id)px_debugDictionary
{
  v33[8] = *MEMORY[0x1E69E9840];
  v31.receiver = a1;
  v31.super_class = &off_1F1AD51D0;
  v2 = objc_msgSendSuper2(&v31, sel_px_debugDictionary);
  v3 = [v2 mutableCopy];

  v4 = [a1 assetCollectionType];
  if (v4 > 0xD)
  {
    v5 = @"nil";
  }

  else
  {
    v5 = off_1E7742BF0[v4];
  }

  v6 = [a1 assetCollectionSubtype];
  v30 = v3;
  if (v6 <= 1000000000)
  {
    if (v6 > 101)
    {
      switch(v6)
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
          if (v6 == 102)
          {
            v7 = @"CollectionShare (Shared Stream)";
          }

          else
          {
            if (v6 != 103)
            {
              goto LABEL_71;
            }

            v7 = @"CollectionShare (CPL)";
          }

          break;
      }

      goto LABEL_94;
    }

    if (v6 <= 4)
    {
      switch(v6)
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
      if (v6 > 99)
      {
        if (v6 == 100)
        {
          v7 = @"My Photo Stream";
        }

        else
        {
          v7 = @"Cloud Shared";
        }

        goto LABEL_94;
      }

      if (v6 == 5)
      {
        v7 = @"Synced Album";
        goto LABEL_94;
      }

      if (v6 == 6)
      {
        v7 = @"Imported";
        goto LABEL_94;
      }
    }

LABEL_71:
    v7 = @"nil";
    goto LABEL_94;
  }

  if (v6 > 1000000217)
  {
    if (v6 > 1000000303)
    {
      if (v6 <= 1000000500)
      {
        if (v6 == 1000000304)
        {
          v7 = @"Photos Highlight Day Group";
          goto LABEL_94;
        }

        if (v6 == 1000000401)
        {
          v7 = @"Screen Saver Activity Collection";
          goto LABEL_94;
        }
      }

      else
      {
        switch(v6)
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
      if (v6 > 1000000300)
      {
        if (v6 == 1000000301)
        {
          v7 = @"Photos Highlight Day";
        }

        else if (v6 == 1000000302)
        {
          v7 = @"Photos Highlight Month";
        }

        else
        {
          v7 = @"Photos Highlight Year";
        }

        goto LABEL_94;
      }

      if (v6 == 1000000218)
      {
        v7 = @"Saved";
        goto LABEL_94;
      }

      if (v6 == 1000000219)
      {
        v7 = @"Recovered";
        goto LABEL_94;
      }
    }

    goto LABEL_71;
  }

  if (v6 <= 1000000205)
  {
    if (v6 > 1000000202)
    {
      if (v6 == 1000000203)
      {
        v7 = @"Places";
      }

      else if (v6 == 1000000204)
      {
        v7 = @"User Smart Album";
      }

      else
      {
        v7 = @"Smart Album All Photos";
      }

      goto LABEL_94;
    }

    if (v6 == 1000000001)
    {
      v7 = @"Camera Roll";
      goto LABEL_94;
    }

    if (v6 == 1000000201)
    {
      v7 = @"Trash Bin";
      goto LABEL_94;
    }

    goto LABEL_71;
  }

  if (v6 <= 1000000211)
  {
    if (v6 == 1000000206)
    {
      v7 = @"Smart Album Recently Edited";
      goto LABEL_94;
    }

    if (v6 == 1000000211)
    {
      v7 = @"Smart Album ProRes";
      goto LABEL_94;
    }

    goto LABEL_71;
  }

  if (v6 == 1000000212)
  {
    v7 = @"All Library Duplicates";
  }

  else if (v6 == 1000000214)
  {
    v7 = @"Smart Album Shared Library Sharing Suggestions";
  }

  else
  {
    v7 = @"nil";
    if (v6 == 1000000215)
    {
      v5 = @"Smart Album Action Cam";
      v7 = @"nil";
    }
  }

LABEL_94:
  v32[0] = @"debugDescription";
  v29 = [a1 debugDescription];
  v33[0] = v29;
  v33[1] = v5;
  v32[1] = @"assetCollectionType";
  v32[2] = @"assetCollectionSubtype";
  v33[2] = v7;
  v32[3] = @"estimatedAssetCount";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "estimatedAssetCount")}];
  v33[3] = v8;
  v32[4] = @"startDate";
  v9 = [a1 startDate];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"nil";
  }

  v33[4] = v11;
  v32[5] = @"endDate";
  v28 = v11;
  v12 = [a1 endDate];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"nil";
  }

  v33[5] = v14;
  v32[6] = @"approximateLocation";
  v15 = v14;
  v16 = [a1 approximateLocation];
  v17 = [v16 debugDescription];
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
  v21 = [a1 localizedLocationNames];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
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
  if ([a1 px_isPlacesSmartAlbum])
  {
    v2 = @"places";
LABEL_5:
    v5 = MEMORY[0x1E696AF20];
    v6 = [@"photos://" stringByAppendingString:v2];
    v7 = [v5 componentsWithString:v6];

    goto LABEL_7;
  }

  if ([a1 isTransient])
  {
    v3 = MEMORY[0x1E6978650];
    v4 = [a1 transientIdentifier];
    v2 = [v3 px_albumNameForTransientIdentifier:v4];

    if (v2)
    {
      goto LABEL_5;
    }
  }

  v9.receiver = a1;
  v9.super_class = &off_1F1AD51D0;
  v7 = objc_msgSendSuper2(&v9, sel_px_navigationURLComponents);
LABEL_7:

  return v7;
}

- (id)px_collectionListRepresentation
{
  if ([a1 px_isAllAlbumsVirtualCollection])
  {
    v2 = [a1 photoLibrary];
    v3 = [v2 px_rootAlbumCollectionList];
LABEL_5:

    goto LABEL_7;
  }

  if ([a1 px_isAllProjectsVirtualCollection])
  {
    v2 = [a1 photoLibrary];
    v4 = [v2 px_virtualCollections];
    v3 = [v4 rootProjectCollectionList];

    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (uint64_t)px_navigationWellKnownName
{
  v1 = MEMORY[0x1E6978650];
  v2 = [a1 assetCollectionSubtype];

  return [v1 px_builtInAlbumNameForSubtype:v2];
}

- (uint64_t)px_assetsDropMode
{
  if ([a1 px_isAllPhotosSmartAlbum] & 1) != 0 || (objc_msgSend(a1, "px_isRecentsSmartAlbum") & 1) != 0 || (objc_msgSend(a1, "px_isLibraryVirtualCollection"))
  {
    return 2;
  }

  return ([a1 px_isFavoritesSmartAlbum] & 1) != 0 || (objc_msgSend(a1, "canPerformEditOperation:", 3) & 1) != 0 || objc_msgSend(a1, "px_isMemory");
}

- (BOOL)px_fetchIsEmptyWithOptions:()PhotosUICore
{
  v4 = a3;
  v5 = [a1 estimatedAssetCount];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  v6 = v5;
  if ([v4 sharingFilter] != 2)
  {
    goto LABEL_6;
  }

  v7 = [v4 predicate];
  if (v7)
  {

LABEL_6:
    v9 = [v4 copy];
    [v9 setWantsIncrementalChangeDetails:0];
    [v9 setFetchLimit:1];
    v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:a1 options:v9];
    v6 = [v10 count];

    goto LABEL_7;
  }

  v8 = [v4 internalPredicate];

  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6 == 0;
}

+ (void)px_fetchAssetCollectionsWithAlbumSubtypes:()PhotosUICore photoLibrary:
{
  v4 = [a1 px_fetchSmartAlbumCollectionsBySubtypeForAlbumSubtypes:a3 photoLibrary:a4];
  PXMap();
}

+ (id)px_fetchSmartAlbumCollectionsBySubtypeForAlbumSubtypes:()PhotosUICore photoLibrary:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 px_standardLibrarySpecificFetchOptions];
  [v6 setIncludePlacesSmartAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D7E0)}];
  [v6 setIncludeDuplicatesAlbums:{objc_msgSend(v5, "containsObject:", &unk_1F190D7B0)}];
  [v6 setIncludeAllPhotosSmartAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D7F8)}];
  [v6 setIncludeRecentlyEditedSmartAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D7C8)}];
  [v6 setIncludeScreenRecordingsSmartAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D6C0)}];
  [v6 setIncludeActionCamVideoSmartAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D648)}];
  [v6 setIncludeProResSmartAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D720)}];
  [v6 setIncludeSharedLibrarySharingSuggestionsSmartAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D810)}];
  [v6 setIncludeTrashBinAlbum:{objc_msgSend(v5, "containsObject:", &unk_1F190D768)}];
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"assetCollectionSubtype IN %@", v5];
  [v6 setPredicate:?];
  v7 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:0x7FFFFFFFFFFFFFFFLL options:v6];
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
  v7 = [v5 photoLibrary];
  v8 = [v7 librarySpecificFetchOptions];

  if (v6)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self != %@", v6];
    [v8 setPredicate:v9];
  }

  v10 = [MEMORY[0x1E6978650] fetchAssetCollectionsContainingAsset:v5 withType:1 options:v8];

  return v10;
}

+ (id)px_fetchSmartAlbumWithSubtype:()PhotosUICore
{
  v5 = [MEMORY[0x1E6978830] px_standardFetchOptions];
  [v5 setIncludePlacesSmartAlbum:a3 == 1000000203];
  [v5 setIncludeAllPhotosSmartAlbum:a3 == 1000000205];
  [v5 setIncludeRecentlyEditedSmartAlbum:a3 == 1000000206];
  [v5 setIncludeScreenRecordingsSmartAlbum:a3 == 220];
  [v5 setIncludeUserSmartAlbums:a3 == 1000000204];
  [v5 setIncludeProResSmartAlbum:a3 == 1000000211];
  [v5 setIncludeSharedLibrarySharingSuggestionsSmartAlbum:a3 == 1000000214];
  [v5 setIncludeDuplicatesAlbums:a3 == 1000000212];
  v6 = [a1 fetchAssetCollectionsWithType:2 subtype:a3 options:v5];

  return v6;
}

+ (id)px_smartAlbumWithSubtype:()PhotosUICore
{
  v1 = [a1 px_fetchSmartAlbumWithSubtype:?];
  v2 = [v1 firstObject];

  return v2;
}

+ (id)px_regularAlbumWithTitle:()PhotosUICore
{
  v3 = MEMORY[0x1E6978830];
  v4 = a3;
  v5 = [v3 px_standardFetchOptions];
  [v5 setFetchLimit:1];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"title == %@", v4];

  [v5 setPredicate:v6];
  v7 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:1 subtype:2 options:v5];
  v8 = [v7 firstObject];

  return v8;
}

+ (id)px_otherAlbumsSubtypes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PHAssetCollection_PhotosUICore__px_otherAlbumsSubtypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  block[4] = a1;
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