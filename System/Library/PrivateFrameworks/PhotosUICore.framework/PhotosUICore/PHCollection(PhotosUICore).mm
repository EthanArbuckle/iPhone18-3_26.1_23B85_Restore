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
  px_navigationURLComponents = [self px_navigationURLComponents];
  v6 = v4;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    v12 = v6;
LABEL_8:

    goto LABEL_9;
  }

  v7 = v6;

  if (px_navigationURLComponents && v7)
  {
    queryItems = [px_navigationURLComponents queryItems];
    v9 = [queryItems mutableCopy];
    v10 = v9;
    if (v9)
    {
      array = v9;
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    v12 = array;

    v15 = [v7 px_navigationURLQueryItemWithPrefix:@"revealasset"];
    [v12 addObject:v15];

    [px_navigationURLComponents setQueryItems:v12];
    goto LABEL_8;
  }

LABEL_9:
  v13 = [px_navigationURLComponents URL];

  return v13;
}

- (id)px_navigationURLComponents
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [self px_navigationURLQueryItemWithPrefix:0];
  value = [v2 value];

  if (value)
  {
    v4 = MEMORY[0x1E696AF20];
    px_navigationURLHost = [self px_navigationURLHost];
    v6 = [@"photos://" stringByAppendingString:px_navigationURLHost];
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
  px_navigationWellKnownName = [self px_navigationWellKnownName];
  if ([self isTransient])
  {
    uuid = 0;
  }

  else
  {
    uuid = [self uuid];
  }

  v7 = &stru_1F1741150;
  if (v4)
  {
    v7 = v4;
  }

  if (px_navigationWellKnownName)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v7, @"name"];
    v9 = MEMORY[0x1E696AF60];
    v10 = v8;
    v11 = px_navigationWellKnownName;
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v7, @"uuid"];
    v9 = MEMORY[0x1E696AF60];
    v10 = v8;
    v11 = uuid;
  }

  v12 = [v9 queryItemWithName:v10 value:v11];

  return v12;
}

- (void)px_navigationWellKnownName
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHCollection+PhotosUICore.m" lineNumber:264 description:{@"Method %s is a responsibility of subclass %@", "-[PHCollection(PhotosUICore) px_navigationWellKnownName]", v6}];

  abort();
}

- (void)px_navigationURLHost
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHCollection+PhotosUICore.m" lineNumber:260 description:{@"Method %s is a responsibility of subclass %@", "-[PHCollection(PhotosUICore) px_navigationURLHost]", v6}];

  abort();
}

- (id)px_exportFolderName
{
  localizedTitle = [self localizedTitle];
  stringByDeletingPathExtension = [localizedTitle stringByDeletingPathExtension];

  return stringByDeletingPathExtension;
}

- (id)px_debugDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"localizedTitle";
  localizedTitle = [self localizedTitle];
  v3 = localizedTitle;
  v4 = @"nil";
  if (localizedTitle)
  {
    v4 = localizedTitle;
  }

  v13[0] = v4;
  v12[1] = @"canContainAssets";
  v5 = v4;
  if ([self canContainAssets])
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
  if ([self canContainCollections])
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
  photoLibrary = [self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v4 = [self px_fetchIsEmptyWithOptions:librarySpecificFetchOptions];
  return v4;
}

- (id)px_fetchContainedAssetCollections
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = self;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  PXCollectAssetCollectionsInCollections(v3, v2);

  objectEnumerator = [v2 objectEnumerator];

  return objectEnumerator;
}

- (id)px_fetchAncestryIncludingRoot:()PhotosUICore
{
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{self, 0}];
  v6 = [MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:self options:0];
  firstObject = [v6 firstObject];

  px_rootCollectionList = [self px_rootCollectionList];
  if (firstObject)
  {
    do
    {
      if ([firstObject isEqual:px_rootCollectionList])
      {
        break;
      }

      [v5 insertObject:firstObject atIndex:0];
      v9 = [MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:firstObject options:0];
      firstObject2 = [v9 firstObject];

      firstObject = firstObject2;
    }

    while (firstObject2);
  }

  if (a3)
  {
    if (px_rootCollectionList)
    {
      px_rootAssetCollection = px_rootCollectionList;
    }

    else
    {
      px_rootAssetCollection = [self px_rootAssetCollection];
      if (!px_rootAssetCollection)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    if (([self isEqual:px_rootAssetCollection] & 1) == 0)
    {
      [v5 insertObject:px_rootAssetCollection atIndex:0];
    }

    goto LABEL_11;
  }

LABEL_12:

  return v5;
}

- (id)px_fetchContainerTitle
{
  px_fetchContainer = [self px_fetchContainer];
  px_localizedTitle = [px_fetchContainer px_localizedTitle];
  if ([px_localizedTitle length])
  {
    v3 = px_localizedTitle;
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
  photoLibrary = [self photoLibrary];
  if (a3)
  {
    if ([self px_isMediaTypeSmartAlbum])
    {
      px_virtualCollections = [photoLibrary px_virtualCollections];
      mediaTypesCollectionList = [px_virtualCollections mediaTypesCollectionList];
LABEL_6:
      firstObject = mediaTypesCollectionList;
      goto LABEL_8;
    }

    if ([self px_isLemonadeUtilitiesAlbum])
    {
      px_virtualCollections = [photoLibrary px_virtualCollections];
      mediaTypesCollectionList = [px_virtualCollections utilitiesCollectionList];
      goto LABEL_6;
    }
  }

  px_virtualCollections = [photoLibrary librarySpecificFetchOptions];
  [px_virtualCollections setIncludeRootFolder:1];
  v9 = [MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:self options:px_virtualCollections];
  firstObject = [v9 firstObject];

LABEL_8:

  return firstObject;
}

- (id)px_rootAssetCollection
{
  photoLibrary = [self photoLibrary];
  px_virtualCollections = [photoLibrary px_virtualCollections];

  if ([self px_isEvent])
  {
    eventsCollection = [px_virtualCollections eventsCollection];
LABEL_9:
    v5 = eventsCollection;
    goto LABEL_10;
  }

  if ([self px_isTrip])
  {
    eventsCollection = [px_virtualCollections tripsCollection];
    goto LABEL_9;
  }

  if ([self px_isMemory])
  {
    eventsCollection = [px_virtualCollections memoriesCollection];
    goto LABEL_9;
  }

  if ([self px_isMapVirtualCollection])
  {
    eventsCollection = [px_virtualCollections mapCollection];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)px_rootCollectionList
{
  v9[1] = *MEMORY[0x1E69E9840];
  photoLibrary = [self photoLibrary];
  px_virtualCollections = [photoLibrary px_virtualCollections];

  if (([self px_isSharedAlbumsFolder] & 1) != 0 || (objc_msgSend(self, "px_isMediaTypesFolder") & 1) != 0 || (objc_msgSend(self, "px_isTopLevelFolder") & 1) != 0 || objc_msgSend(self, "px_isProjectsFolder"))
  {
    selfCopy = self;
LABEL_6:
    v5 = selfCopy;
    goto LABEL_7;
  }

  if ([self px_isStreamSharedAlbum])
  {
    goto LABEL_11;
  }

  if ([self px_isMediaTypeSmartAlbum])
  {
    selfCopy = [px_virtualCollections mediaTypesCollectionList];
    goto LABEL_6;
  }

  if ([self px_isLemonadeUtilitiesAlbum])
  {
    selfCopy = [px_virtualCollections utilitiesCollectionList];
    goto LABEL_6;
  }

  if ([self px_isUserCreated])
  {
    selfCopy = [px_virtualCollections rootAlbumCollectionList];
    goto LABEL_6;
  }

  if ([self px_isSharedActivityVirtualCollection])
  {
LABEL_11:
    selfCopy = [px_virtualCollections sharedAlbumsCollectionList];
    goto LABEL_6;
  }

  if ([self px_isContentSyndicationAlbum])
  {
    v7 = MEMORY[0x1E6978760];
    v9[0] = self;
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
  if ([self px_assetsDropMode])
  {
    return 1;
  }

  return [self px_isFolder];
}

@end