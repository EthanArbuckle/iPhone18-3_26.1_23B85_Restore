@interface PXFeedSectionInfo
+ (id)sectionInfoWithCloudFeedEntry:(id)entry inPhotoLibrary:(id)library;
+ (void)beginCachingSharedAlbumsByGUIDs;
+ (void)endCachingSharedAlbumsByGUIDs;
- (BOOL)canPerformEditOperation:(unint64_t)operation;
- (BOOL)isEqual:(id)equal;
- (NSString)localizedTitle;
- (NSString)title;
- (NSString)transientIdentifier;
- (NSString)uuid;
- (PXFeedSectionInfo)initWithCloudFeedEntry:(id)entry photoLibrary:(id)library;
- (id)sharedAlbumWithGUID:(id)d;
- (int64_t)_inboxModelTypeForCloudCommentType;
- (int64_t)inboxModelType;
- (unint64_t)approximateCount;
- (unint64_t)photosCount;
- (unint64_t)videosCount;
- (void)getCommentCount:(unint64_t *)count likeCount:(unint64_t *)likeCount;
- (void)getPhotoCount:(unint64_t *)count videoCount:(unint64_t *)videoCount;
- (void)reload;
- (void)updateFromCloudFeedEntry;
@end

@implementation PXFeedSectionInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uuid = [(PXFeedSectionInfo *)self uuid];
      uuid2 = [(PXFeedSectionInfo *)v5 uuid];

      v8 = [uuid isEqualToString:uuid2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)transientIdentifier
{
  transientIdentifier = self->_transientIdentifier;
  if (!transientIdentifier)
  {
    v4 = objc_opt_new();
    uUIDString = [v4 UUIDString];
    v6 = self->_transientIdentifier;
    self->_transientIdentifier = uUIDString;

    transientIdentifier = self->_transientIdentifier;
  }

  return transientIdentifier;
}

- (id)sharedAlbumWithGUID:(id)d
{
  dCopy = d;
  v5 = [cacheOfSharedAlbumsByGUIDs objectForKey:dCopy];
  null = v5;
  if (dCopy && !v5)
  {
    photoLibrary = [(PXFeedSectionInfo *)self photoLibrary];
    null = [PXSharedAlbumsUtilities fetchSharedAlbumWithScopeIdentifier:dCopy inPhotoLibrary:photoLibrary allowPending:1];

    if (!null)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    [cacheOfSharedAlbumsByGUIDs setObject:null forKey:dCopy];
  }

  null2 = [MEMORY[0x1E695DFB0] null];

  if (null == null2)
  {

    null = 0;
  }

  return null;
}

- (BOOL)canPerformEditOperation:(unint64_t)operation
{
  operationCopy = operation;
  if (operation > 15)
  {
    switch(operation)
    {
      case 0x10uLL:
        operationCopy = 5;
        goto LABEL_13;
      case 0x20uLL:
        operationCopy = 6;
        goto LABEL_13;
      case 0x40uLL:
        operationCopy = 7;
        goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (operation - 1 >= 2)
  {
    if (operation == 4)
    {
      operationCopy = 3;
      goto LABEL_13;
    }

    if (operation == 8)
    {
      operationCopy = 4;
      goto LABEL_13;
    }

LABEL_14:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PHCollectionEditOperation PHCollectionEditOperationFromPLEditOperation(PLEditOperation)"];
    [currentHandler handleFailureInFunction:v8 file:@"PXFeedSectionInfo.m" lineNumber:61 description:{@"%s: Unable to map PLEditOperation %lu to a PHCollectionEditOperation", "PHCollectionEditOperation PHCollectionEditOperationFromPLEditOperation(PLEditOperation)", operationCopy}];

    abort();
  }

LABEL_13:
  sharedAlbum = [(PXFeedSectionInfo *)self sharedAlbum];
  v5 = [sharedAlbum canPerformEditOperation:operationCopy];

  return v5;
}

- (unint64_t)videosCount
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedSectionInfo.m" lineNumber:378 description:{@"%s not implemented yet", "-[PXFeedSectionInfo videosCount]"}];

  return 0;
}

- (unint64_t)photosCount
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedSectionInfo.m" lineNumber:373 description:{@"%s not implemented yet", "-[PXFeedSectionInfo photosCount]"}];

  return 0;
}

- (unint64_t)approximateCount
{
  sharedAlbum = [(PXFeedSectionInfo *)self sharedAlbum];
  estimatedAssetCount = [sharedAlbum estimatedAssetCount];

  return estimatedAssetCount;
}

- (NSString)localizedTitle
{
  sharedAlbum = [(PXFeedSectionInfo *)self sharedAlbum];
  localizedTitle = [sharedAlbum localizedTitle];

  return localizedTitle;
}

- (NSString)title
{
  sharedAlbum = [(PXFeedSectionInfo *)self sharedAlbum];
  title = [sharedAlbum title];

  return title;
}

- (NSString)uuid
{
  cloudFeedEntry = [(PXFeedSectionInfo *)self cloudFeedEntry];
  objectID = [cloudFeedEntry objectID];
  uRIRepresentation = [objectID URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];

  return absoluteString;
}

- (int64_t)_inboxModelTypeForCloudCommentType
{
  numberOfItems = [(PXFeedSectionInfo *)self numberOfItems];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  photoLibrary = [(PXFeedSectionInfo *)self photoLibrary];
  v4PhotoLibrary = [photoLibrary photoLibrary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__PXFeedSectionInfo__inboxModelTypeForCloudCommentType__block_invoke;
  v13[3] = &unk_1E7746720;
  v13[4] = self;
  v13[5] = &v18;
  v13[6] = &v14;
  v13[7] = numberOfItems;
  [v4PhotoLibrary performBlockAndWait:v13];

  v6 = v19[3];
  v7 = v15[3];
  v8 = 2 * (v7 != 0);
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 == 1;
  }

  v10 = 7;
  if (v9)
  {
    v10 = 8;
  }

  if (v6 == 1)
  {
    v10 = 1;
  }

  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v11;
}

void __55__PXFeedSectionInfo__inboxModelTypeForCloudCommentType__block_invoke(uint64_t a1)
{
  if (*(a1 + 56) >= 1)
  {
    v2 = 0;
    while (1)
    {
      v3 = [*(a1 + 32) typeForItemAtIndex:v2];
      if (v3 == 2)
      {
        break;
      }

      if (v3 == 1)
      {
        v4 = [*(a1 + 32) commentForItemAtIndex:v2];
        v5 = [v4 isMyComment];
        v6 = [v5 BOOLValue];

        if ((v6 & 1) == 0)
        {
          ++*(*(*(a1 + 40) + 8) + 24);
        }

        goto LABEL_8;
      }

LABEL_9:
      if (++v2 >= *(a1 + 56))
      {
        return;
      }
    }

    v4 = [*(a1 + 32) cloudFeedEntry];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isMyComment == NO AND cloudFeedLikeCommentEntry == %@", v4];
    v8 = MEMORY[0x1E695D5E0];
    v9 = [MEMORY[0x1E69BE340] entityName];
    v10 = [v8 fetchRequestWithEntityName:v9];

    [v10 setFetchLimit:1];
    [v10 setPredicate:v7];
    [v10 setResultType:4];
    [v10 setIncludesPropertyValues:0];
    v11 = [*(a1 + 32) photoLibrary];
    v12 = [v11 managedObjectContext];

    *(*(*(a1 + 48) + 8) + 24) += [v12 countForFetchRequest:v10 error:0];
LABEL_8:

    goto LABEL_9;
  }
}

- (int64_t)inboxModelType
{
  cachedInboxModelType = [(PXFeedSectionInfo *)self cachedInboxModelType];
  if (!cachedInboxModelType)
  {
    sectionType = [(PXFeedSectionInfo *)self sectionType];
    if (sectionType > 2)
    {
      cachedInboxModelType = 0;
      switch(sectionType)
      {
        case 3:
          goto LABEL_18;
        case 4:
          invitee = [(PXFeedSectionInfo *)self invitee];
          acceptanceStatus = [invitee acceptanceStatus];

          if (acceptanceStatus == 2)
          {
            cachedInboxModelType = 4;
          }

          else
          {
            cachedInboxModelType = 5;
          }

          goto LABEL_18;
        case 5:
LABEL_18:
          [(PXFeedSectionInfo *)self setCachedInboxModelType:cachedInboxModelType];
          return cachedInboxModelType;
      }
    }

    else
    {
      switch(sectionType)
      {
        case 0:
          cachedInboxModelType = 3;
          goto LABEL_18;
        case 1:
          cachedInboxModelType = [(PXFeedSectionInfo *)self _inboxModelTypeForCloudCommentType];
          goto LABEL_18;
        case 2:
          cachedInboxModelType = 6;
          goto LABEL_18;
      }
    }

    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Invalid section type", v9, 2u);
    }

    cachedInboxModelType = 0;
    goto LABEL_18;
  }

  return cachedInboxModelType;
}

- (void)getCommentCount:(unint64_t *)count likeCount:(unint64_t *)likeCount
{
  if (count)
  {
    *count = 0;
  }

  if (likeCount)
  {
    *likeCount = 0;
  }
}

- (void)getPhotoCount:(unint64_t *)count videoCount:(unint64_t *)videoCount
{
  if (count)
  {
    *count = 0;
  }

  if (videoCount)
  {
    *videoCount = 0;
  }
}

- (void)updateFromCloudFeedEntry
{
  cloudFeedEntry = [(PXFeedSectionInfo *)self cloudFeedEntry];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__38136;
  v17 = __Block_byref_object_dispose__38137;
  v18 = 0;
  photoLibrary = [(PXFeedSectionInfo *)self photoLibrary];
  v4PhotoLibrary = [photoLibrary photoLibrary];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __45__PXFeedSectionInfo_updateFromCloudFeedEntry__block_invoke;
  v10 = &unk_1E7749A28;
  v12 = &v13;
  v6 = cloudFeedEntry;
  v11 = v6;
  [v4PhotoLibrary performBlockAndWait:&v7];

  [(PXFeedSectionInfo *)self setDate:v14[5], v7, v8, v9, v10];
  _Block_object_dispose(&v13, 8);
}

void __45__PXFeedSectionInfo_updateFromCloudFeedEntry__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entryDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)reload
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedSectionInfo.m" lineNumber:126 description:@"Attempted to reload PXFeedSectionInfo on background thread!"];
  }

  [(PXFeedSectionInfo *)self updateFromCloudFeedEntry];
  [(PXFeedSectionInfo *)self setLoaded:1];
  [(PXFeedSectionInfo *)self setCachedInboxModelType:0];

  [(PXFeedSectionInfo *)self inboxModelType];
}

- (PXFeedSectionInfo)initWithCloudFeedEntry:(id)entry photoLibrary:(id)library
{
  entryCopy = entry;
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = PXFeedSectionInfo;
  v9 = [(PXFeedSectionInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cloudFeedEntry, entry);
    objc_storeStrong(&v10->_photoLibrary, library);
  }

  return v10;
}

+ (void)endCachingSharedAlbumsByGUIDs
{
  if (!--sharedAlbumsCacheRequestCount)
  {
    v2 = cacheOfSharedAlbumsByGUIDs;
    cacheOfSharedAlbumsByGUIDs = 0;
  }
}

+ (void)beginCachingSharedAlbumsByGUIDs
{
  if (!sharedAlbumsCacheRequestCount++)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = cacheOfSharedAlbumsByGUIDs;
    cacheOfSharedAlbumsByGUIDs = v4;
  }
}

+ (id)sectionInfoWithCloudFeedEntry:(id)entry inPhotoLibrary:(id)library
{
  entryCopy = entry;
  libraryCopy = library;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  photoLibrary = [entryCopy photoLibrary];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__PXFeedSectionInfo_sectionInfoWithCloudFeedEntry_inPhotoLibrary___block_invoke;
  v16[3] = &unk_1E7749A28;
  v18 = &v19;
  v10 = entryCopy;
  v17 = v10;
  [photoLibrary performBlockAndWait:v16];

  v11 = 0;
  v12 = *(v20 + 12);
  if (v12 <= 3)
  {
    if (*(v20 + 12) <= 1u)
    {
      if (v12 != 1)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedSectionInfo.m" lineNumber:108 description:{@"%s: Unknown entry type", "+[PXFeedSectionInfo sectionInfoWithCloudFeedEntry:inPhotoLibrary:]"}];

        abort();
      }

      goto LABEL_12;
    }

    if (v12 == 2 || v12 == 3)
    {
LABEL_12:
      v11 = objc_opt_class();
    }
  }

  else if (v12 - 5 < 2 || v12 == 4 || v12 == 7)
  {
    goto LABEL_12;
  }

  v13 = [[v11 alloc] initWithCloudFeedEntry:v10 photoLibrary:libraryCopy];

  _Block_object_dispose(&v19, 8);

  return v13;
}

uint64_t __66__PXFeedSectionInfo_sectionInfoWithCloudFeedEntry_inPhotoLibrary___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) entryType];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end