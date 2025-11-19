@interface PXFeedSectionInfo
+ (id)sectionInfoWithCloudFeedEntry:(id)a3 inPhotoLibrary:(id)a4;
+ (void)beginCachingSharedAlbumsByGUIDs;
+ (void)endCachingSharedAlbumsByGUIDs;
- (BOOL)canPerformEditOperation:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)localizedTitle;
- (NSString)title;
- (NSString)transientIdentifier;
- (NSString)uuid;
- (PXFeedSectionInfo)initWithCloudFeedEntry:(id)a3 photoLibrary:(id)a4;
- (id)sharedAlbumWithGUID:(id)a3;
- (int64_t)_inboxModelTypeForCloudCommentType;
- (int64_t)inboxModelType;
- (unint64_t)approximateCount;
- (unint64_t)photosCount;
- (unint64_t)videosCount;
- (void)getCommentCount:(unint64_t *)a3 likeCount:(unint64_t *)a4;
- (void)getPhotoCount:(unint64_t *)a3 videoCount:(unint64_t *)a4;
- (void)reload;
- (void)updateFromCloudFeedEntry;
@end

@implementation PXFeedSectionInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXFeedSectionInfo *)self uuid];
      v7 = [(PXFeedSectionInfo *)v5 uuid];

      v8 = [v6 isEqualToString:v7];
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
    v5 = [v4 UUIDString];
    v6 = self->_transientIdentifier;
    self->_transientIdentifier = v5;

    transientIdentifier = self->_transientIdentifier;
  }

  return transientIdentifier;
}

- (id)sharedAlbumWithGUID:(id)a3
{
  v4 = a3;
  v5 = [cacheOfSharedAlbumsByGUIDs objectForKey:v4];
  v6 = v5;
  if (v4 && !v5)
  {
    v7 = [(PXFeedSectionInfo *)self photoLibrary];
    v6 = [PXSharedAlbumsUtilities fetchSharedAlbumWithScopeIdentifier:v4 inPhotoLibrary:v7 allowPending:1];

    if (!v6)
    {
      v6 = [MEMORY[0x1E695DFB0] null];
    }

    [cacheOfSharedAlbumsByGUIDs setObject:v6 forKey:v4];
  }

  v8 = [MEMORY[0x1E695DFB0] null];

  if (v6 == v8)
  {

    v6 = 0;
  }

  return v6;
}

- (BOOL)canPerformEditOperation:(unint64_t)a3
{
  v3 = a3;
  if (a3 > 15)
  {
    switch(a3)
    {
      case 0x10uLL:
        v3 = 5;
        goto LABEL_13;
      case 0x20uLL:
        v3 = 6;
        goto LABEL_13;
      case 0x40uLL:
        v3 = 7;
        goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a3 - 1 >= 2)
  {
    if (a3 == 4)
    {
      v3 = 3;
      goto LABEL_13;
    }

    if (a3 == 8)
    {
      v3 = 4;
      goto LABEL_13;
    }

LABEL_14:
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PHCollectionEditOperation PHCollectionEditOperationFromPLEditOperation(PLEditOperation)"];
    [v7 handleFailureInFunction:v8 file:@"PXFeedSectionInfo.m" lineNumber:61 description:{@"%s: Unable to map PLEditOperation %lu to a PHCollectionEditOperation", "PHCollectionEditOperation PHCollectionEditOperationFromPLEditOperation(PLEditOperation)", v3}];

    abort();
  }

LABEL_13:
  v4 = [(PXFeedSectionInfo *)self sharedAlbum];
  v5 = [v4 canPerformEditOperation:v3];

  return v5;
}

- (unint64_t)videosCount
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFeedSectionInfo.m" lineNumber:378 description:{@"%s not implemented yet", "-[PXFeedSectionInfo videosCount]"}];

  return 0;
}

- (unint64_t)photosCount
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFeedSectionInfo.m" lineNumber:373 description:{@"%s not implemented yet", "-[PXFeedSectionInfo photosCount]"}];

  return 0;
}

- (unint64_t)approximateCount
{
  v2 = [(PXFeedSectionInfo *)self sharedAlbum];
  v3 = [v2 estimatedAssetCount];

  return v3;
}

- (NSString)localizedTitle
{
  v2 = [(PXFeedSectionInfo *)self sharedAlbum];
  v3 = [v2 localizedTitle];

  return v3;
}

- (NSString)title
{
  v2 = [(PXFeedSectionInfo *)self sharedAlbum];
  v3 = [v2 title];

  return v3;
}

- (NSString)uuid
{
  v2 = [(PXFeedSectionInfo *)self cloudFeedEntry];
  v3 = [v2 objectID];
  v4 = [v3 URIRepresentation];
  v5 = [v4 absoluteString];

  return v5;
}

- (int64_t)_inboxModelTypeForCloudCommentType
{
  v3 = [(PXFeedSectionInfo *)self numberOfItems];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = [(PXFeedSectionInfo *)self photoLibrary];
  v5 = [v4 photoLibrary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__PXFeedSectionInfo__inboxModelTypeForCloudCommentType__block_invoke;
  v13[3] = &unk_1E7746720;
  v13[4] = self;
  v13[5] = &v18;
  v13[6] = &v14;
  v13[7] = v3;
  [v5 performBlockAndWait:v13];

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
  v3 = [(PXFeedSectionInfo *)self cachedInboxModelType];
  if (!v3)
  {
    v4 = [(PXFeedSectionInfo *)self sectionType];
    if (v4 > 2)
    {
      v3 = 0;
      switch(v4)
      {
        case 3:
          goto LABEL_18;
        case 4:
          v6 = [(PXFeedSectionInfo *)self invitee];
          v7 = [v6 acceptanceStatus];

          if (v7 == 2)
          {
            v3 = 4;
          }

          else
          {
            v3 = 5;
          }

          goto LABEL_18;
        case 5:
LABEL_18:
          [(PXFeedSectionInfo *)self setCachedInboxModelType:v3];
          return v3;
      }
    }

    else
    {
      switch(v4)
      {
        case 0:
          v3 = 3;
          goto LABEL_18;
        case 1:
          v3 = [(PXFeedSectionInfo *)self _inboxModelTypeForCloudCommentType];
          goto LABEL_18;
        case 2:
          v3 = 6;
          goto LABEL_18;
      }
    }

    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Invalid section type", v9, 2u);
    }

    v3 = 0;
    goto LABEL_18;
  }

  return v3;
}

- (void)getCommentCount:(unint64_t *)a3 likeCount:(unint64_t *)a4
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }
}

- (void)getPhotoCount:(unint64_t *)a3 videoCount:(unint64_t *)a4
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }
}

- (void)updateFromCloudFeedEntry
{
  v3 = [(PXFeedSectionInfo *)self cloudFeedEntry];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__38136;
  v17 = __Block_byref_object_dispose__38137;
  v18 = 0;
  v4 = [(PXFeedSectionInfo *)self photoLibrary];
  v5 = [v4 photoLibrary];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __45__PXFeedSectionInfo_updateFromCloudFeedEntry__block_invoke;
  v10 = &unk_1E7749A28;
  v12 = &v13;
  v6 = v3;
  v11 = v6;
  [v5 performBlockAndWait:&v7];

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
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXFeedSectionInfo.m" lineNumber:126 description:@"Attempted to reload PXFeedSectionInfo on background thread!"];
  }

  [(PXFeedSectionInfo *)self updateFromCloudFeedEntry];
  [(PXFeedSectionInfo *)self setLoaded:1];
  [(PXFeedSectionInfo *)self setCachedInboxModelType:0];

  [(PXFeedSectionInfo *)self inboxModelType];
}

- (PXFeedSectionInfo)initWithCloudFeedEntry:(id)a3 photoLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXFeedSectionInfo;
  v9 = [(PXFeedSectionInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cloudFeedEntry, a3);
    objc_storeStrong(&v10->_photoLibrary, a4);
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

+ (id)sectionInfoWithCloudFeedEntry:(id)a3 inPhotoLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v9 = [v7 photoLibrary];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__PXFeedSectionInfo_sectionInfoWithCloudFeedEntry_inPhotoLibrary___block_invoke;
  v16[3] = &unk_1E7749A28;
  v18 = &v19;
  v10 = v7;
  v17 = v10;
  [v9 performBlockAndWait:v16];

  v11 = 0;
  v12 = *(v20 + 12);
  if (v12 <= 3)
  {
    if (*(v20 + 12) <= 1u)
    {
      if (v12 != 1)
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        [v15 handleFailureInMethod:a2 object:a1 file:@"PXFeedSectionInfo.m" lineNumber:108 description:{@"%s: Unknown entry type", "+[PXFeedSectionInfo sectionInfoWithCloudFeedEntry:inPhotoLibrary:]"}];

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

  v13 = [[v11 alloc] initWithCloudFeedEntry:v10 photoLibrary:v8];

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