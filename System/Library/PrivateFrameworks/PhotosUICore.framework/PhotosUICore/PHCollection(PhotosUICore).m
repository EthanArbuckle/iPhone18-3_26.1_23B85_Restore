@interface PHCollection(PhotosUICore)
- (id)px_debugDictionary;
- (id)px_exportFolderName;
- (id)px_fetchAncestryIncludingRoot:()PhotosUICore;
- (id)px_fetchContainedAssetCollections;
- (id)px_fetchContainerIncludingVirtualCollections:()PhotosUICore;
- (id)px_fetchContainerTitle;
- (id)px_navigationURLComponents;
- (id)px_navigationURLQueryItemWithPrefix:()PhotosUICore;
- (id)px_navigationURLWithSelectedObject:()PhotosUICore;
- (id)px_rootAssetCollection;
- (id)px_rootCollectionList;
- (uint64_t)px_allowsSpringLoading;
- (uint64_t)px_fetchIsEmpty;
- (void)px_navigationURLHost;
- (void)px_navigationWellKnownName;
@end

@implementation PHCollection(PhotosUICore)

- (id)px_navigationURLWithSelectedObject:()PhotosUICore
{
  v4 = a3;
  v5 = [a1 px_navigationURLComponents];
  v6 = v4;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    v12 = v6;
LABEL_8:

    goto LABEL_9;
  }

  v7 = v6;

  if (v5 && v7)
  {
    v8 = [v5 queryItems];
    v9 = [v8 mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E695DF70] array];
    }

    v12 = v11;

    v15 = [v7 px_navigationURLQueryItemWithPrefix:@"revealasset"];
    [v12 addObject:v15];

    [v5 setQueryItems:v12];
    goto LABEL_8;
  }

LABEL_9:
  v13 = [v5 URL];

  return v13;
}

- (id)px_navigationURLComponents
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 px_navigationURLQueryItemWithPrefix:0];
  v3 = [v2 value];

  if (v3)
  {
    v4 = MEMORY[0x1E696AF20];
    v5 = [a1 px_navigationURLHost];
    v6 = [@"photos://" stringByAppendingString:v5];
    v7 = [v4 componentsWithString:v6];

    v10[0] = v2;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v7 setQueryItems:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)px_navigationURLQueryItemWithPrefix:()PhotosUICore
{
  v4 = a3;
  v5 = [a1 px_navigationWellKnownName];
  if ([a1 isTransient])
  {
    v6 = 0;
  }

  else
  {
    v6 = [a1 uuid];
  }

  v7 = &stru_1F1741150;
  if (v4)
  {
    v7 = v4;
  }

  if (v5)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v7, @"name"];
    v9 = MEMORY[0x1E696AF60];
    v10 = v8;
    v11 = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v7, @"uuid"];
    v9 = MEMORY[0x1E696AF60];
    v10 = v8;
    v11 = v6;
  }

  v12 = [v9 queryItemWithName:v10 value:v11];

  return v12;
}

- (void)px_navigationWellKnownName
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:a1 file:@"PHCollection+PhotosUICore.m" lineNumber:264 description:{@"Method %s is a responsibility of subclass %@", "-[PHCollection(PhotosUICore) px_navigationWellKnownName]", v6}];

  abort();
}

- (void)px_navigationURLHost
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:a1 file:@"PHCollection+PhotosUICore.m" lineNumber:260 description:{@"Method %s is a responsibility of subclass %@", "-[PHCollection(PhotosUICore) px_navigationURLHost]", v6}];

  abort();
}

- (id)px_exportFolderName
{
  v1 = [a1 localizedTitle];
  v2 = [v1 stringByDeletingPathExtension];

  return v2;
}

- (id)px_debugDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"localizedTitle";
  v2 = [a1 localizedTitle];
  v3 = v2;
  v4 = @"nil";
  if (v2)
  {
    v4 = v2;
  }

  v13[0] = v4;
  v12[1] = @"canContainAssets";
  v5 = v4;
  if ([a1 canContainAssets])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = v6;
  v13[1] = v7;
  v12[2] = @"canContainCollections";
  if ([a1 canContainCollections])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  v13[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

- (uint64_t)px_fetchIsEmpty
{
  v2 = [a1 photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = [a1 px_fetchIsEmptyWithOptions:v3];
  return v4;
}

- (id)px_fetchContainedAssetCollections
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = a1;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  PXCollectAssetCollectionsInCollections(v3, v2);

  v4 = [v2 objectEnumerator];

  return v4;
}

- (id)px_fetchAncestryIncludingRoot:()PhotosUICore
{
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a1, 0}];
  v6 = [MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:a1 options:0];
  v7 = [v6 firstObject];

  v8 = [a1 px_rootCollectionList];
  if (v7)
  {
    do
    {
      if ([v7 isEqual:v8])
      {
        break;
      }

      [v5 insertObject:v7 atIndex:0];
      v9 = [MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:v7 options:0];
      v10 = [v9 firstObject];

      v7 = v10;
    }

    while (v10);
  }

  if (a3)
  {
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = [a1 px_rootAssetCollection];
      if (!v11)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    if (([a1 isEqual:v11] & 1) == 0)
    {
      [v5 insertObject:v11 atIndex:0];
    }

    goto LABEL_11;
  }

LABEL_12:

  return v5;
}

- (id)px_fetchContainerTitle
{
  v1 = [a1 px_fetchContainer];
  v2 = [v1 px_localizedTitle];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = PXLocalizedStringFromTable(@"PXCollectionsOutlineTitle", @"PhotosUICore");
  }

  v4 = v3;

  return v4;
}

- (id)px_fetchContainerIncludingVirtualCollections:()PhotosUICore
{
  v5 = [a1 photoLibrary];
  if (a3)
  {
    if ([a1 px_isMediaTypeSmartAlbum])
    {
      v6 = [v5 px_virtualCollections];
      v7 = [v6 mediaTypesCollectionList];
LABEL_6:
      v8 = v7;
      goto LABEL_8;
    }

    if ([a1 px_isLemonadeUtilitiesAlbum])
    {
      v6 = [v5 px_virtualCollections];
      v7 = [v6 utilitiesCollectionList];
      goto LABEL_6;
    }
  }

  v6 = [v5 librarySpecificFetchOptions];
  [v6 setIncludeRootFolder:1];
  v9 = [MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:a1 options:v6];
  v8 = [v9 firstObject];

LABEL_8:

  return v8;
}

- (id)px_rootAssetCollection
{
  v2 = [a1 photoLibrary];
  v3 = [v2 px_virtualCollections];

  if ([a1 px_isEvent])
  {
    v4 = [v3 eventsCollection];
LABEL_9:
    v5 = v4;
    goto LABEL_10;
  }

  if ([a1 px_isTrip])
  {
    v4 = [v3 tripsCollection];
    goto LABEL_9;
  }

  if ([a1 px_isMemory])
  {
    v4 = [v3 memoriesCollection];
    goto LABEL_9;
  }

  if ([a1 px_isMapVirtualCollection])
  {
    v4 = [v3 mapCollection];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)px_rootCollectionList
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 photoLibrary];
  v3 = [v2 px_virtualCollections];

  if (([a1 px_isSharedAlbumsFolder] & 1) != 0 || (objc_msgSend(a1, "px_isMediaTypesFolder") & 1) != 0 || (objc_msgSend(a1, "px_isTopLevelFolder") & 1) != 0 || objc_msgSend(a1, "px_isProjectsFolder"))
  {
    v4 = a1;
LABEL_6:
    v5 = v4;
    goto LABEL_7;
  }

  if ([a1 px_isStreamSharedAlbum])
  {
    goto LABEL_11;
  }

  if ([a1 px_isMediaTypeSmartAlbum])
  {
    v4 = [v3 mediaTypesCollectionList];
    goto LABEL_6;
  }

  if ([a1 px_isLemonadeUtilitiesAlbum])
  {
    v4 = [v3 utilitiesCollectionList];
    goto LABEL_6;
  }

  if ([a1 px_isUserCreated])
  {
    v4 = [v3 rootAlbumCollectionList];
    goto LABEL_6;
  }

  if ([a1 px_isSharedActivityVirtualCollection])
  {
LABEL_11:
    v4 = [v3 sharedAlbumsCollectionList];
    goto LABEL_6;
  }

  if ([a1 px_isContentSyndicationAlbum])
  {
    v7 = MEMORY[0x1E6978760];
    v9[0] = a1;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v5 = [v7 transientCollectionListWithCollections:v8 title:@"SomeTitle"];
  }

  else
  {
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (uint64_t)px_allowsSpringLoading
{
  if ([a1 px_assetsDropMode])
  {
    return 1;
  }

  return [a1 px_isFolder];
}

@end