@interface PXSharedAlbumsActivityEntry
+ (id)_activitiesFromCloudFeedEntries:(id)entries inMostRecentOrder:(BOOL)order photoLibrary:(id)library plPhotoLibrary:(id)photoLibrary;
+ (id)_assetsAddedActivitiesFromCloudFeedAssetsEntry:(id)entry inMostRecentOrder:(BOOL)order withAlbumInformation:(id)information photoLibrary:(id)library;
+ (id)_assetsAddedActivityFromAssets:(id)assets batchID:(unint64_t)d withAlbumInformation:(id)information forEntry:(id)entry photoLibrary:(id)library;
+ (id)_fetchAssetsWithUUIDs:(id)ds inPhotoLibrary:(id)library;
+ (id)_fetchKeyAssetUUIDForAlbumWithGUID:(id)d photoLibrary:(id)library plPhotoLibrary:(id)photoLibrary;
+ (id)_fetchRecentActivitiesWithOptions:(id)options olderThanDate:(id)date filter:(int64_t)filter;
+ (id)_reactionActivitiesFromCloudFeedLikeEntry:(id)entry photoLibrary:(id)library plPhotoLibrary:(id)photoLibrary;
+ (id)fetchActivitiesWithOptions:(id)options;
+ (id)fetchAssetsMockActivitiesWithOptions:(id)options;
+ (id)fetchKeyAssetsForActivity:(id)activity;
+ (id)fetchRecentActivitiesWithOptions:(id)options olderThanDate:(id)date filter:(int64_t)filter;
+ (unint64_t)fetchCountOfRecentFeedActivitiesWithOptions:(id)options newerThanDate:(id)date;
- (PXSharedAlbumsActivityEntry)initWithPhotoLibrary:(id)library uuid:(id)uuid date:(id)date type:(int64_t)type isFromMe:(BOOL)me contributors:(id)contributors avatarConfigurations:(id)configurations albumGUID:(id)self0 albumName:(id)self1 cloudOwnerIsAllowlisted:(BOOL)self2 message:(id)self3 keyAssetUUIDs:(id)self4 keyAssets:(id)self5 relatedCommentUUID:(id)self6 relatedUUIDs:(id)self7 underlyingObject:(id)self8;
- (id)debugDescription;
@end

@implementation PXSharedAlbumsActivityEntry

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = self->_type - 1;
  if (v6 > 6)
  {
    v7 = @"Assets";
  }

  else
  {
    v7 = *(&off_1E77385E0 + v6);
  }

  date = self->_date;
  v9 = v7;
  v10 = [(NSArray *)self->_contributorDisplayNames componentsJoinedByString:@", "];
  v11 = v10;
  albumName = self->_albumName;
  if (self->_message)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", self->_message];
    v14 = [v3 stringWithFormat:@"<%@: %p [(%@) %@ from %@ in %@%@]>", v5, self, date, v9, v11, albumName, v13];
  }

  else
  {
    v14 = [v3 stringWithFormat:@"<%@: %p [(%@) %@ from %@ in %@%@]>", v5, self, date, v9, v10, self->_albumName, &stru_1F1741150];
  }

  return v14;
}

- (PXSharedAlbumsActivityEntry)initWithPhotoLibrary:(id)library uuid:(id)uuid date:(id)date type:(int64_t)type isFromMe:(BOOL)me contributors:(id)contributors avatarConfigurations:(id)configurations albumGUID:(id)self0 albumName:(id)self1 cloudOwnerIsAllowlisted:(BOOL)self2 message:(id)self3 keyAssetUUIDs:(id)self4 keyAssets:(id)self5 relatedCommentUUID:(id)self6 relatedUUIDs:(id)self7 underlyingObject:(id)self8
{
  v76 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  uuidCopy = uuid;
  uuidCopy2 = uuid;
  dateCopy = date;
  dateCopy2 = date;
  contributorsCopy = contributors;
  configurationsCopy = configurations;
  dCopy = d;
  nameCopy = name;
  messageCopy = message;
  dsCopy = ds;
  assetsCopy = assets;
  iDCopy = iD;
  iDsCopy = iDs;
  objectCopy = object;
  v59 = libraryCopy;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  if (![uuidCopy2 length])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"uuid.length"}];
  }

  v26 = nameCopy;
  v27 = dsCopy;
  if (!dateCopy2)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  if (contributorsCopy)
  {
    if (configurationsCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"contributors"}];

    if (configurationsCopy)
    {
      goto LABEL_9;
    }
  }

  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"avatarConfigurations"}];

LABEL_9:
  if (dCopy)
  {
    if (nameCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"albumGUID"}];

    if (nameCopy)
    {
LABEL_11:
      if (dsCopy)
      {
        goto LABEL_12;
      }

LABEL_37:
      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler7 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"keyAssetUUIDs"}];

      if (iDsCopy)
      {
        goto LABEL_13;
      }

      goto LABEL_38;
    }
  }

  currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler8 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"albumName"}];

  if (!dsCopy)
  {
    goto LABEL_37;
  }

LABEL_12:
  if (iDsCopy)
  {
    goto LABEL_13;
  }

LABEL_38:
  currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler9 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"relatedUUIDs"}];

LABEL_13:
  if (![contributorsCopy count])
  {
    currentHandler10 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler10 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:112 description:@"Must have a contributor."];
  }

  if (![configurationsCopy count])
  {
    currentHandler11 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler11 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:113 description:@"Must have an avatar configuration."];
  }

  if (type != 1)
  {
    if ([contributorsCopy count] != 1)
    {
      currentHandler12 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler12 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:115 description:@"Found multiple contributors for a non-reaction type activity entry. Only reactions can have multiple contributors."];
    }

    if ([configurationsCopy count] != 1)
    {
      currentHandler13 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler13 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:116 description:@"Found multiple avatar configurations for a non-reaction type activity entry. Only reactions can have multiple contributors."];
    }
  }

  firstObject = [contributorsCopy firstObject];
  displayName = [firstObject displayName];
  v30 = [displayName length];

  if (!v30)
  {
    v31 = PLSharingGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v69 = uuidCopy2;
      v70 = 2114;
      v71 = dCopy;
      v72 = 2112;
      v73 = v26;
      v74 = 2112;
      v75 = dateCopy2;
      _os_log_impl(&dword_1A3C1C000, v31, OS_LOG_TYPE_ERROR, "Contributor display name is empty/blank for activity UUID: %{public}@, in albumGUID/name %{public}@/%@, date: %@", buf, 0x2Au);
    }
  }

  if (![v26 length])
  {
    v32 = PLSharingGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v69 = uuidCopy2;
      v70 = 2114;
      v71 = dCopy;
      v72 = 2112;
      v73 = dateCopy2;
      _os_log_impl(&dword_1A3C1C000, v32, OS_LOG_TYPE_ERROR, "Album name is empty/blank for activity UUID: %{public}@, for albumGUID %{public}@, date: %@", buf, 0x20u);
    }
  }

  v67.receiver = self;
  v67.super_class = PXSharedAlbumsActivityEntry;
  v33 = [(PXSharedAlbumsActivityEntry *)&v67 init];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_photoLibrary, library);
    objc_storeStrong(&v34->_uuid, uuidCopy);
    objc_storeStrong(&v34->_date, dateCopy);
    v34->_type = type;
    v34->_isFromMe = me;
    v35 = [contributorsCopy copy];
    contributors = v34->_contributors;
    v34->_contributors = v35;

    PXMap();
  }

  return 0;
}

+ (id)_fetchKeyAssetUUIDForAlbumWithGUID:(id)d photoLibrary:(id)library plPhotoLibrary:(id)photoLibrary
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E6978770];
  dCopy = d;
  v7 = MEMORY[0x1E695DEC8];
  libraryCopy = library;
  dCopy2 = d;
  v10 = [v7 arrayWithObjects:&dCopy count:1];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v12 = [v6 fetchCollectionSharesWithScopeIdentifiers:v10 options:librarySpecificFetchOptions];
  firstObject = [v12 firstObject];

  v14 = MEMORY[0x1E6978630];
  librarySpecificFetchOptions2 = [libraryCopy librarySpecificFetchOptions];

  v16 = [v14 fetchKeyAssetsInAssetCollection:firstObject options:librarySpecificFetchOptions2];

  firstObject2 = [v16 firstObject];

  uuid = [firstObject2 uuid];

  return uuid;
}

+ (id)_fetchAssetsWithUUIDs:(id)ds inPhotoLibrary:(id)library
{
  v37 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  libraryCopy = library;
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v8 = [MEMORY[0x1E6978630] fetchAssetsWithUUIDs:dsCopy options:librarySpecificFetchOptions];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        uuid = [v15 uuid];
        [v9 setObject:v15 forKeyedSubscript:uuid];
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = dsCopy;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v9 objectForKeyedSubscript:{*(*(&v27 + 1) + 8 * j), v27}];
        if (v23)
        {
          [v17 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

  v24 = objc_alloc(MEMORY[0x1E69788E0]);
  v25 = [v24 initWithObjects:v17 photoLibrary:libraryCopy fetchType:*MEMORY[0x1E6978D98] fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v25;
}

+ (id)fetchKeyAssetsForActivity:(id)activity
{
  activityCopy = activity;
  keyAssetUUIDs = [activityCopy keyAssetUUIDs];
  photoLibrary = [activityCopy photoLibrary];

  v7 = [self _fetchAssetsWithUUIDs:keyAssetUUIDs inPhotoLibrary:photoLibrary];

  return v7;
}

+ (id)_reactionActivitiesFromCloudFeedLikeEntry:(id)entry photoLibrary:(id)library plPhotoLibrary:(id)photoLibrary
{
  v28 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  libraryCopy = library;
  photoLibraryCopy = photoLibrary;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v22 = entryCopy;
  entryLikeComments = [entryCopy entryLikeComments];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __101__PXSharedAlbumsActivityEntry__reactionActivitiesFromCloudFeedLikeEntry_photoLibrary_plPhotoLibrary___block_invoke;
  v26[3] = &unk_1E7738570;
  v10 = v8;
  v27 = v10;
  [entryLikeComments enumerateObjectsUsingBlock:v26];

  v11 = [v10 count];
  v12 = MEMORY[0x1E695E0F0];
  if (v11)
  {
    uRIRepresentation = [v22 URIRepresentation];
    [uRIRepresentation absoluteString];
    objc_claimAutoreleasedReturnValue();

    v14 = [PXSharedAlbumsActivityEntryAlbumInformation alloc];
    entryAlbumGUID = [v22 entryAlbumGUID];
    [(PXSharedAlbumsActivityEntryAlbumInformation *)v14 initWithAlbumGUID:entryAlbumGUID photoLibrary:libraryCopy plPhotoLibrary:photoLibraryCopy];

    objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v10, "count")}];
    v17 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v10, "count")}];
    v18 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v10, "count")}];
    [v22 entryDate];
    objc_claimAutoreleasedReturnValue();
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v25 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __101__PXSharedAlbumsActivityEntry__reactionActivitiesFromCloudFeedLikeEntry_photoLibrary_plPhotoLibrary___block_invoke_340;
    v23[3] = &unk_1E7738598;
    v23[7] = v24;
    v23[4] = v17;
    v23[5] = v18;
    v23[6] = v16;
    [v10 enumerateObjectsUsingBlock:v23];
    PXMap();
  }

  return v12;
}

void __101__PXSharedAlbumsActivityEntry__reactionActivitiesFromCloudFeedLikeEntry_photoLibrary_plPhotoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 likedAsset];
  v5 = [v4 uuid];

  if (v5)
  {
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    v6 = PLSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "likedAsset was missing for PLCloudSharedComment (like): %@. Skipping.", &v7, 0xCu);
    }
  }
}

void __101__PXSharedAlbumsActivityEntry__reactionActivitiesFromCloudFeedLikeEntry_photoLibrary_plPhotoLibrary___block_invoke_340(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isMyComment];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v6 = [PXSharedAlbumsActivityEntryContributor alloc];
    v7 = [v3 commenterDisplayName];
    v8 = [v3 commenterEmail];
    v9 = [(PXSharedAlbumsActivityEntryContributor *)v6 initWithDisplayName:v7 email:v8];

    v10 = [PXSharedAlbumsActivityEntryAvatarConfiguration alloc];
    v11 = [v3 commenterEmail];
    v12 = [v3 commenterFirstName];
    v13 = [v3 commenterLastName];
    v14 = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)v10 initWithEmail:v11 phone:0 firstName:v12 lastName:v13];

    [*(a1 + 32) insertObject:v9 atIndex:0];
    [*(a1 + 40) insertObject:v14 atIndex:0];
  }

  else
  {
    v15 = [PXSharedAlbumsActivityEntryContributor alloc];
    v16 = [v3 commenterDisplayName];
    v17 = [v3 commenterEmail];
    v9 = [(PXSharedAlbumsActivityEntryContributor *)v15 initWithDisplayName:v16 email:v17];

    v18 = [PXSharedAlbumsActivityEntryAvatarConfiguration alloc];
    v19 = [v3 commenterEmail];
    v20 = [v3 commenterFirstName];
    v21 = [v3 commenterLastName];
    v14 = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)v18 initWithEmail:v19 phone:0 firstName:v20 lastName:v21];

    [*(a1 + 32) addObject:v9];
    [*(a1 + 40) addObject:v14];
  }

  v22 = *(a1 + 48);
  v23 = [v3 likedAsset];

  [v22 addObject:v23];
}

void __101__PXSharedAlbumsActivityEntry__reactionActivitiesFromCloudFeedLikeEntry_photoLibrary_plPhotoLibrary___block_invoke_3(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 cloudGUID];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 shortObjectIDURI];
  }

  v7 = v6;

  if ([v7 length])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_reaction_%@", *(a1 + 32), v7];
    v9 = [v3 likedAsset];
    v10 = [v9 uuid];

    if (v10)
    {
      v44 = v8;
      v45 = v7;
      v11 = [v3 isMyComment];
      v12 = [v11 BOOLValue];

      v13 = &stru_1F1741150;
      v43 = v12;
      if ((v12 & 1) == 0)
      {
        v14 = [v3 commenterDisplayName];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = &stru_1F1741150;
        }

        v13 = v16;
      }

      v42 = v13;
      v17 = [PXSharedAlbumsActivityEntryContributor alloc];
      v18 = [v3 commenterEmail];
      v41 = [(PXSharedAlbumsActivityEntryContributor *)v17 initWithDisplayName:v13 email:v18];

      v19 = [PXSharedAlbumsActivityEntryAvatarConfiguration alloc];
      v20 = [v3 commenterEmail];
      v21 = [v3 commenterFirstName];
      v22 = [v3 commenterLastName];
      v40 = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)v19 initWithEmail:v20 phone:0 firstName:v21 lastName:v22];

      v37 = [PXSharedAlbumsActivityEntry alloc];
      v39 = *(a1 + 40);
      v38 = [v3 commentDate];
      v48 = v41;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
      v47 = v40;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      v34 = [*(a1 + 48) albumGUID];
      v24 = [*(a1 + 48) albumTitle];
      v25 = [*(a1 + 48) ownerIsAllowlisted];
      v35 = [v3 likedAsset];
      v26 = [v35 uuid];
      v46 = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      v28 = *(a1 + 56);
      v29 = [v3 cloudGUID];
      v33 = v28;
      LOBYTE(v32) = v25;
      v8 = v44;
      v30 = [(PXSharedAlbumsActivityEntry *)v37 initWithPhotoLibrary:v39 uuid:v44 date:v38 type:1 isFromMe:v43 contributors:v36 avatarConfigurations:v23 albumGUID:v34 albumName:v24 cloudOwnerIsAllowlisted:v32 message:0 keyAssetUUIDs:v27 keyAssets:v33 relatedCommentUUID:v29 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:*(a1 + 64)];

      [*(a1 + 72) addObject:v30];
      v7 = v45;
    }

    else
    {
      v31 = PLSharingGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v50 = v3;
        _os_log_impl(&dword_1A3C1C000, v31, OS_LOG_TYPE_ERROR, "likedAsset was missing for PLCloudSharedComment (like): %@. Skipping.", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = PLSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = v3;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "cloudGUID and shortObjectIDURI was missing for PLCloudSharedComment (like): %@. Skipping.", buf, 0xCu);
    }
  }
}

+ (id)_assetsAddedActivitiesFromCloudFeedAssetsEntry:(id)entry inMostRecentOrder:(BOOL)order withAlbumInformation:(id)information photoLibrary:(id)library
{
  orderCopy = order;
  v54 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  informationCopy = information;
  libraryCopy = library;
  entryAssets = [entryCopy entryAssets];
  if ([entryAssets count])
  {
    v13 = +[PXSharedAlbumsSettings sharedInstance];
    activityEntryAssetsAddedBatchingBehavior = [v13 activityEntryAssetsAddedBatchingBehavior];

    if (activityEntryAssetsAddedBatchingBehavior)
    {
      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = __Block_byref_object_copy__100957;
      v47 = __Block_byref_object_dispose__100958;
      v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(entryAssets, "count")}];
      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x3032000000;
      v41[3] = __Block_byref_object_copy__100957;
      v41[4] = __Block_byref_object_dispose__100958;
      v42 = 0;
      v39[0] = 0;
      v39[1] = v39;
      v39[2] = 0x3032000000;
      v39[3] = __Block_byref_object_copy__100957;
      v39[4] = __Block_byref_object_dispose__100958;
      v40 = 0;
      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x2020000000;
      v38 = 0;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __130__PXSharedAlbumsActivityEntry__assetsAddedActivitiesFromCloudFeedAssetsEntry_inMostRecentOrder_withAlbumInformation_photoLibrary___block_invoke;
      v30[3] = &unk_1E7738520;
      v35 = v39;
      v36 = activityEntryAssetsAddedBatchingBehavior;
      v32 = v41;
      v33 = v37;
      v34 = &v43;
      v31 = entryAssets;
      [v31 enumerateObjectsUsingBlock:v30];
      if ([v44[5] count] >= 2)
      {
        v15 = PLSharingGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v44[5] count];
          objectID = [entryCopy objectID];
          *buf = 134218242;
          v51 = v16;
          v52 = 2112;
          v53 = objectID;
          _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_INFO, "[ActivityEntry] Produced %lu assets activity entries from assets-added cloud entry: %@", buf, 0x16u);
        }
      }

      v18 = [v44[5] copy];

      _Block_object_dispose(v37, 8);
      _Block_object_dispose(v39, 8);

      _Block_object_dispose(v41, 8);
      _Block_object_dispose(&v43, 8);
    }

    else
    {
      v49 = entryAssets;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    }

    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__100957;
    v47 = __Block_byref_object_dispose__100958;
    v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v18, "count")}];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __130__PXSharedAlbumsActivityEntry__assetsAddedActivitiesFromCloudFeedAssetsEntry_inMostRecentOrder_withAlbumInformation_photoLibrary___block_invoke_338;
    v24[3] = &unk_1E7738548;
    selfCopy = self;
    v25 = informationCopy;
    v26 = entryCopy;
    v27 = libraryCopy;
    v28 = &v43;
    [v18 enumerateObjectsUsingBlock:v24];
    v20 = v44[5];
    if (orderCopy)
    {
      reverseObjectEnumerator = [v20 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
    }

    else
    {
      allObjects = v20;
    }

    _Block_object_dispose(&v43, 8);
  }

  else
  {
    allObjects = MEMORY[0x1E695E0F0];
  }

  return allObjects;
}

void __130__PXSharedAlbumsActivityEntry__assetsAddedActivitiesFromCloudFeedAssetsEntry_inMostRecentOrder_withAlbumInformation_photoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 cloudBatchID];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = v4;
  if (v4 == v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 isEqualToString:v3];
  }

  v7 = [v15 orderedCloudComments];
  v8 = [v7 firstObject];

  v9 = [v8 isCaption];
  v10 = [v9 BOOLValue];

  if (*(a1 + 72) != 2)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v11 = *(*(a1 + 48) + 8);
  if (*(v11 + 24) != 1)
  {
    *(v11 + 24) = v10;
    if (v10)
    {
      goto LABEL_12;
    }

LABEL_11:
    if ([*(*(*(a1 + 56) + 8) + 40) count])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v6)
  {
    goto LABEL_11;
  }

  *(v11 + 24) = v10;
LABEL_12:
  v12 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  [*(*(*(a1 + 56) + 8) + 40) addObject:*(*(*(a1 + 64) + 8) + 40)];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
LABEL_13:
  [*(*(*(a1 + 64) + 8) + 40) addObject:v15];
}

void __130__PXSharedAlbumsActivityEntry__assetsAddedActivitiesFromCloudFeedAssetsEntry_inMostRecentOrder_withAlbumInformation_photoLibrary___block_invoke_338(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[8];
  v6 = [a2 array];
  v7 = [v5 _assetsAddedActivityFromAssets:v6 batchID:a3 withAlbumInformation:a1[4] forEntry:a1[5] photoLibrary:a1[6]];

  [*(*(a1[7] + 8) + 40) addObject:v7];
}

+ (id)_assetsAddedActivityFromAssets:(id)assets batchID:(unint64_t)d withAlbumInformation:(id)information forEntry:(id)entry photoLibrary:(id)library
{
  v11 = MEMORY[0x1E696AEC0];
  libraryCopy = library;
  entryCopy = entry;
  informationCopy = information;
  assetsCopy = assets;
  uRIRepresentation = [entryCopy URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];
  [v11 stringWithFormat:@"%@_batch_%lu", absoluteString, d];
  objc_claimAutoreleasedReturnValue();

  PXMap();
}

+ (id)_activitiesFromCloudFeedEntries:(id)entries inMostRecentOrder:(BOOL)order photoLibrary:(id)library plPhotoLibrary:(id)photoLibrary
{
  orderCopy = order;
  v158 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  libraryCopy = library;
  photoLibraryCopy = photoLibrary;
  v121 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = entriesCopy;
  v123 = [obj countByEnumeratingWithState:&v137 objects:v157 count:16];
  if (v123)
  {
    v122 = *v138;
    v10 = 0x1E695D000uLL;
    v116 = photoLibraryCopy;
    do
    {
      v11 = 0;
      do
      {
        if (*v138 != v122)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v137 + 1) + 8 * v11);
        entryDate = [v12 entryDate];
        v14 = [PXSharedAlbumsActivityEntryAlbumInformation alloc];
        entryAlbumGUID = [v12 entryAlbumGUID];
        v16 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v14 initWithAlbumGUID:entryAlbumGUID photoLibrary:libraryCopy plPhotoLibrary:photoLibraryCopy];

        uRIRepresentation = [v12 URIRepresentation];
        absoluteString = [uRIRepresentation absoluteString];

        entryType = [v12 entryType];
        if (entryType <= 3)
        {
          if (entryType != 1)
          {
            if (entryType != 2)
            {
              if (entryType != 3)
              {
                goto LABEL_59;
              }

              entryAlbumGUID2 = [v12 entryAlbumGUID];
              v21 = [PXSharedAlbumsActivityEntryAvatarConfiguration avatarFromOwnerOfPendingSharedAlbumWithGUID:entryAlbumGUID2 withPhotoLibrary:libraryCopy plPhotoLibrary:photoLibraryCopy];

              v125 = [[PXSharedAlbumsActivityEntryContributor alloc] initWithAvatarConfiguration:v21];
              v126 = v16;
              albumGUID = [(PXSharedAlbumsActivityEntryAlbumInformation *)v16 albumGUID];
              v23 = [PXSharedAlbumsActivityEntry _fetchKeyAssetUUIDForAlbumWithGUID:albumGUID photoLibrary:libraryCopy plPhotoLibrary:photoLibraryCopy];

              if (v23)
              {
                v152 = v23;
                v24 = [*(v10 + 3784) arrayWithObjects:&v152 count:1];
                v111 = [self _fetchAssetsWithUUIDs:v24 inPhotoLibrary:libraryCopy];
              }

              else
              {
                v111 = 0;
              }

              v110 = [PXSharedAlbumsActivityEntry alloc];
              entryDate2 = [v12 entryDate];
              v151 = v125;
              v71 = [*(v10 + 3784) arrayWithObjects:&v151 count:1];
              v124 = v21;
              v150 = v21;
              v72 = [*(v10 + 3784) arrayWithObjects:&v150 count:1];
              albumGUID2 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 albumGUID];
              albumTitle = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 albumTitle];
              ownerIsAllowlisted = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 ownerIsAllowlisted];
              if (v23)
              {
                v149 = v23;
                [*(v10 + 3784) arrayWithObjects:&v149 count:1];
                v77 = v76 = absoluteString;
                v102 = v12;
                v78 = v111;
                LOBYTE(v99) = ownerIsAllowlisted;
                v79 = [(PXSharedAlbumsActivityEntry *)v110 initWithPhotoLibrary:libraryCopy uuid:v76 date:entryDate2 type:5 isFromMe:0 contributors:v71 avatarConfigurations:v72 albumGUID:albumGUID2 albumName:albumTitle cloudOwnerIsAllowlisted:v99 message:0 keyAssetUUIDs:v77 keyAssets:v111 relatedCommentUUID:0 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:v102];

                absoluteString = v76;
              }

              else
              {
                v103 = v12;
                v78 = v111;
                LOBYTE(v99) = ownerIsAllowlisted;
                v79 = [(PXSharedAlbumsActivityEntry *)v110 initWithPhotoLibrary:libraryCopy uuid:absoluteString date:entryDate2 type:5 isFromMe:0 contributors:v71 avatarConfigurations:v72 albumGUID:albumGUID2 albumName:albumTitle cloudOwnerIsAllowlisted:v99 message:0 keyAssetUUIDs:MEMORY[0x1E695E0F0] keyAssets:v111 relatedCommentUUID:0 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:v103];
              }

              [v121 addObject:v79];
              goto LABEL_56;
            }

            v40 = v12;
            if (v40)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                goto LABEL_30;
              }

              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXSharedAlbumsActivityEntry _activitiesFromCloudFeedEntries:inMostRecentOrder:photoLibrary:plPhotoLibrary:]"];
              v90 = objc_opt_class();
              v87 = NSStringFromClass(v90);
              px_descriptionForAssertionMessage = [v40 px_descriptionForAssertionMessage];
              [currentHandler handleFailureInFunction:v85 file:@"PXSharedAlbumsActivityEntry.m" lineNumber:353 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"entry", v87, px_descriptionForAssertionMessage}];
            }

            else
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXSharedAlbumsActivityEntry _activitiesFromCloudFeedEntries:inMostRecentOrder:photoLibrary:plPhotoLibrary:]"];
              v86 = objc_opt_class();
              v87 = NSStringFromClass(v86);
              [currentHandler handleFailureInFunction:v85 file:@"PXSharedAlbumsActivityEntry.m" lineNumber:353 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"entry", v87}];
            }

LABEL_30:
            entryComments = [v40 entryComments];
            v130[0] = MEMORY[0x1E69E9820];
            v130[1] = 3221225472;
            v130[2] = __109__PXSharedAlbumsActivityEntry__activitiesFromCloudFeedEntries_inMostRecentOrder_photoLibrary_plPhotoLibrary___block_invoke;
            v130[3] = &unk_1E77384B8;
            selfCopy = self;
            v42 = libraryCopy;
            v131 = v42;
            v132 = absoluteString;
            v133 = v40;
            v134 = v16;
            v43 = v121;
            v135 = v43;
            [entryComments enumerateObjectsUsingBlock:v130];
            v44 = [self _reactionActivitiesFromCloudFeedLikeEntry:v40 photoLibrary:v42 plPhotoLibrary:photoLibraryCopy];
            [v43 addObjectsFromArray:v44];
            if (![entryComments count] && !objc_msgSend(v44, "count"))
            {
              v45 = PLSharingGetLog();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v142 = v40;
                _os_log_impl(&dword_1A3C1C000, v45, OS_LOG_TYPE_ERROR, "No comments or likes for entry: %@", buf, 0xCu);
              }
            }

            goto LABEL_58;
          }

          v40 = v12;
          if (v40)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_26;
            }

            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXSharedAlbumsActivityEntry _activitiesFromCloudFeedEntries:inMostRecentOrder:photoLibrary:plPhotoLibrary:]"];
            v88 = objc_opt_class();
            v83 = NSStringFromClass(v88);
            px_descriptionForAssertionMessage2 = [v40 px_descriptionForAssertionMessage];
            [currentHandler2 handleFailureInFunction:v81 file:@"PXSharedAlbumsActivityEntry.m" lineNumber:344 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"entry", v83, px_descriptionForAssertionMessage2}];
          }

          else
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXSharedAlbumsActivityEntry _activitiesFromCloudFeedEntries:inMostRecentOrder:photoLibrary:plPhotoLibrary:]"];
            v82 = objc_opt_class();
            v83 = NSStringFromClass(v82);
            [currentHandler2 handleFailureInFunction:v81 file:@"PXSharedAlbumsActivityEntry.m" lineNumber:344 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"entry", v83}];
          }

LABEL_26:
          entryComments = [self _assetsAddedActivitiesFromCloudFeedAssetsEntry:v40 inMostRecentOrder:orderCopy withAlbumInformation:v16 photoLibrary:libraryCopy];
          if ([entryComments count])
          {
            [v121 addObjectsFromArray:entryComments];
          }

          else
          {
            v70 = PLSharingGetLog();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v142 = v40;
              _os_log_impl(&dword_1A3C1C000, v70, OS_LOG_TYPE_ERROR, "No assets for entry: %@", buf, 0xCu);
            }
          }

          goto LABEL_58;
        }

        if (entryType - 5 < 2)
        {
          entryInvitationRecordGUID = [v12 entryInvitationRecordGUID];
          v37 = [PXSharedAlbumsActivityEntryAvatarConfiguration avatarFromParticipantWithID:entryInvitationRecordGUID withPhotoLibrary:libraryCopy plPhotoLibrary:photoLibraryCopy];

          v125 = [[PXSharedAlbumsActivityEntryContributor alloc] initWithAvatarConfiguration:v37];
          v126 = v16;
          albumGUID3 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v16 albumGUID];
          v23 = [PXSharedAlbumsActivityEntry _fetchKeyAssetUUIDForAlbumWithGUID:albumGUID3 photoLibrary:libraryCopy plPhotoLibrary:photoLibraryCopy];

          v114 = absoluteString;
          if (v23)
          {
            v148 = v23;
            v39 = [*(v10 + 3784) arrayWithObjects:&v148 count:1];
            v112 = [self _fetchAssetsWithUUIDs:v39 inPhotoLibrary:libraryCopy];
          }

          else
          {
            v112 = 0;
          }

          entryType2 = [v12 entryType];
          v47 = 6;
          if (entryType2 != 5)
          {
            v47 = 7;
          }

          v109 = v47;
          v107 = [PXSharedAlbumsActivityEntry alloc];
          entryDate3 = [v12 entryDate];
          v147 = v125;
          v48 = [*(v10 + 3784) arrayWithObjects:&v147 count:1];
          v124 = v37;
          v146 = v37;
          v49 = [*(v10 + 3784) arrayWithObjects:&v146 count:1];
          albumGUID4 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 albumGUID];
          albumTitle2 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 albumTitle];
          ownerIsAllowlisted2 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 ownerIsAllowlisted];
          v53 = v10;
          v54 = ownerIsAllowlisted2;
          if (v23)
          {
            v145 = v23;
            v55 = [*(v53 + 3784) arrayWithObjects:&v145 count:1];
            v56 = v112;
            LOBYTE(v99) = v54;
            v57 = [(PXSharedAlbumsActivityEntry *)v107 initWithPhotoLibrary:libraryCopy uuid:v114 date:entryDate3 type:v109 isFromMe:0 contributors:v48 avatarConfigurations:v49 albumGUID:albumGUID4 albumName:albumTitle2 cloudOwnerIsAllowlisted:v99 message:0 keyAssetUUIDs:v55 keyAssets:v112 relatedCommentUUID:0 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:v12];

            absoluteString = v114;
          }

          else
          {
            v56 = v112;
            LOBYTE(v99) = ownerIsAllowlisted2;
            v57 = [(PXSharedAlbumsActivityEntry *)v107 initWithPhotoLibrary:libraryCopy uuid:absoluteString date:entryDate3 type:v109 isFromMe:0 contributors:v48 avatarConfigurations:v49 albumGUID:albumGUID4 albumName:albumTitle2 cloudOwnerIsAllowlisted:v99 message:0 keyAssetUUIDs:MEMORY[0x1E695E0F0] keyAssets:v112 relatedCommentUUID:0 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:v12];
          }

          [v121 addObject:v57];
LABEL_56:

          goto LABEL_57;
        }

        if (entryType == 4 || entryType == 7)
        {
          v26 = [PXSharedAlbumsActivityEntryAvatarConfiguration alloc];
          sharingUsername = [MEMORY[0x1E69BE6A8] sharingUsername];
          sharingFirstName = [MEMORY[0x1E69BE6A8] sharingFirstName];
          [MEMORY[0x1E69BE6A8] sharingLastName];
          v29 = v126 = v16;
          v124 = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)v26 initWithEmail:sharingUsername phone:0 firstName:sharingFirstName lastName:v29];

          entryType3 = [v12 entryType];
          v31 = 3;
          if (entryType3 != 4)
          {
            v31 = 4;
          }

          v108 = v31;
          v125 = [MEMORY[0x1E69BE6A8] sharingDisplayNameIncludingEmail:0 allowsEmail:1];
          v32 = [[PXSharedAlbumsActivityEntryContributor alloc] initWithDisplayName:v125 email:0];
          albumGUID5 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 albumGUID];
          v34 = [PXSharedAlbumsActivityEntry _fetchKeyAssetUUIDForAlbumWithGUID:albumGUID5 photoLibrary:libraryCopy plPhotoLibrary:photoLibraryCopy];

          if (v34)
          {
            v156 = v34;
            v35 = [*(v10 + 3784) arrayWithObjects:&v156 count:1];
            v106 = [self _fetchAssetsWithUUIDs:v35 inPhotoLibrary:libraryCopy];
          }

          else
          {
            v106 = 0;
          }

          v105 = [PXSharedAlbumsActivityEntry alloc];
          entryDate4 = [v12 entryDate];
          v113 = v32;
          v155 = v32;
          v118 = [*(v10 + 3784) arrayWithObjects:&v155 count:1];
          v154 = v124;
          v59 = [*(v10 + 3784) arrayWithObjects:&v154 count:1];
          albumGUID6 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 albumGUID];
          albumTitle3 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 albumTitle];
          ownerIsAllowlisted3 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 ownerIsAllowlisted];
          v63 = v10;
          v64 = ownerIsAllowlisted3;
          if (v34)
          {
            v153 = v34;
            [*(v63 + 3784) arrayWithObjects:&v153 count:1];
            v66 = v65 = absoluteString;
            v100 = v12;
            v67 = v106;
            LOBYTE(v99) = v64;
            v68 = entryDate4;
            v69 = [(PXSharedAlbumsActivityEntry *)v105 initWithPhotoLibrary:libraryCopy uuid:v65 date:entryDate4 type:v108 isFromMe:1 contributors:v118 avatarConfigurations:v59 albumGUID:albumGUID6 albumName:albumTitle3 cloudOwnerIsAllowlisted:v99 message:0 keyAssetUUIDs:v66 keyAssets:v106 relatedCommentUUID:0 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:v100];

            absoluteString = v65;
          }

          else
          {
            v101 = v12;
            v67 = v106;
            LOBYTE(v99) = ownerIsAllowlisted3;
            v68 = entryDate4;
            v69 = [(PXSharedAlbumsActivityEntry *)v105 initWithPhotoLibrary:libraryCopy uuid:absoluteString date:entryDate4 type:v108 isFromMe:1 contributors:v118 avatarConfigurations:v59 albumGUID:albumGUID6 albumName:albumTitle3 cloudOwnerIsAllowlisted:v99 message:0 keyAssetUUIDs:MEMORY[0x1E695E0F0] keyAssets:v106 relatedCommentUUID:0 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:v101];
          }

          [v121 addObject:v69];
LABEL_57:
          photoLibraryCopy = v116;
          v10 = 0x1E695D000;
          entryComments = v125;
          v16 = v126;
          v40 = v124;
LABEL_58:
        }

LABEL_59:

        ++v11;
      }

      while (v123 != v11);
      v92 = [obj countByEnumeratingWithState:&v137 objects:v157 count:16];
      v123 = v92;
    }

    while (v92);
  }

  v93 = [v121 count];
  if (v93 != [obj count])
  {
    v94 = PLSharingGetLog();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
    {
      v95 = [v121 count];
      v96 = [obj count];
      *buf = 134218240;
      v142 = v95;
      v143 = 2048;
      v144 = v96;
      _os_log_impl(&dword_1A3C1C000, v94, OS_LOG_TYPE_INFO, "[ActivityEntry] Produced %lu activity entries from %lu cloud feed entries", buf, 0x16u);
    }
  }

  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = __109__PXSharedAlbumsActivityEntry__activitiesFromCloudFeedEntries_inMostRecentOrder_photoLibrary_plPhotoLibrary___block_invoke_328;
  v128[3] = &__block_descriptor_33_e69_q24__0__PXSharedAlbumsActivityEntry_8__PXSharedAlbumsActivityEntry_16l;
  v129 = orderCopy;
  [v121 sortUsingComparator:v128];
  v97 = [v121 copy];

  return v97;
}

void __109__PXSharedAlbumsActivityEntry__activitiesFromCloudFeedEntries_inMostRecentOrder_photoLibrary_plPhotoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 isMyComment];
  v48 = [v4 BOOLValue];

  v5 = [v3 commenterDisplayName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F1741150;
  }

  v8 = v7;

  v9 = [PXSharedAlbumsActivityEntryContributor alloc];
  v10 = [v3 commenterEmail];
  v50 = [(PXSharedAlbumsActivityEntryContributor *)v9 initWithDisplayName:v8 email:v10];

  v11 = [v3 commentText];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F1741150;
  }

  v51 = v13;

  v14 = [PXSharedAlbumsActivityEntryAvatarConfiguration alloc];
  v15 = [v3 commenterEmail];
  v16 = [v3 commenterFirstName];
  v17 = [v3 commenterLastName];
  v18 = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)v14 initWithEmail:v15 phone:0 firstName:v16 lastName:v17];

  v19 = [v3 cloudGUID];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [v3 shortObjectIDURI];
  }

  v22 = v21;

  if ([v22 length])
  {
    v47 = v8;
    v23 = [v3 commentedAsset];
    v24 = MEMORY[0x1E695E0F0];
    if (v23)
    {
      v25 = [v3 commentedAsset];
      [v25 uuid];
      v27 = v26 = v24;
      v54 = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];

      v24 = v26;
    }

    else
    {
      v28 = MEMORY[0x1E695E0F0];
    }

    v49 = [*(a1 + 72) _fetchAssetsWithUUIDs:v28 inPhotoLibrary:*(a1 + 32)];
    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_comment_%@", *(a1 + 40), v22];
    v30 = [v3 commentDate];
    v31 = v30;
    v42 = v28;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = [*(a1 + 48) entryDate];
    }

    v44 = v32;

    v33 = [PXSharedAlbumsActivityEntry alloc];
    v43 = *(a1 + 32);
    v53 = v50;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    v52 = v18;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
    v34 = v46 = v18;
    v35 = [*(a1 + 56) albumGUID];
    v36 = [*(a1 + 56) albumTitle];
    v37 = [*(a1 + 56) ownerIsAllowlisted];
    v38 = [v3 cloudGUID];
    LOBYTE(v40) = v37;
    v39 = [(PXSharedAlbumsActivityEntry *)v33 initWithPhotoLibrary:v43 uuid:v45 date:v44 type:2 isFromMe:v48 contributors:v41 avatarConfigurations:v34 albumGUID:v35 albumName:v36 cloudOwnerIsAllowlisted:v40 message:v51 keyAssetUUIDs:v42 keyAssets:v49 relatedCommentUUID:v38 relatedUUIDs:v24 underlyingObject:*(a1 + 48)];

    v18 = v46;
    [*(a1 + 64) addObject:v39];

    v29 = v42;
    v8 = v47;
  }

  else
  {
    v29 = PLSharingGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v3;
      _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_ERROR, "cloudGUID and shortObjectIDURI was missing for PLCloudSharedComment (comment): %@. Skipping.", buf, 0xCu);
    }
  }
}

uint64_t __109__PXSharedAlbumsActivityEntry__activitiesFromCloudFeedEntries_inMostRecentOrder_photoLibrary_plPhotoLibrary___block_invoke_328(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v4)
  {
    v5 = v6;
  }

  v8 = [v7 date];

  v9 = [v5 date];

  v10 = [v8 compare:v9];
  return v10;
}

+ (id)_fetchRecentActivitiesWithOptions:(id)options olderThanDate:(id)date filter:(int64_t)filter
{
  v45 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  dateCopy = date;
  v10 = PLSharedAlbumsGetLog();
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    fetchLimit = [optionsCopy fetchLimit];
    v15 = NSStringFromPLCloudFeedEntryFilter();
    *buf = 134218498;
    *&buf[4] = fetchLimit;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    *&buf[22] = 1024;
    LODWORD(v42) = dateCopy != 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SharedAlbumsRecentActivityFetchDuration", "FetchLimit=%lu,Filter=%@,FetchingMore=%d", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v42 = __Block_byref_object_copy__100957;
  v43 = __Block_byref_object_dispose__100958;
  v44 = 0;
  photoLibrary = [optionsCopy photoLibrary];
  photoLibraryForCurrentQueueQoS = [photoLibrary photoLibraryForCurrentQueueQoS];
  fetchLimit2 = [optionsCopy fetchLimit];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __86__PXSharedAlbumsActivityEntry__fetchRecentActivitiesWithOptions_olderThanDate_filter___block_invoke;
  v31[3] = &unk_1E7738490;
  v19 = photoLibraryForCurrentQueueQoS;
  v32 = v19;
  v20 = dateCopy;
  v36 = fetchLimit2;
  filterCopy = filter;
  v33 = v20;
  v35 = buf;
  selfCopy = self;
  v21 = photoLibrary;
  v34 = v21;
  [v19 performBlockAndWait:v31];
  v22 = +[PXSharedAlbumsSettings sharedInstance];
  LODWORD(photoLibrary) = [v22 simulateEmptyActivityEntries];

  if (photoLibrary)
  {
    v23 = PLSharingGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [*(*&buf[8] + 40) count];
      *v39 = 134217984;
      v40 = v24;
      _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEFAULT, "Received %lu activities, but simulating empty activities, so setting to 0 activities", v39, 0xCu);
    }

    v25 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = MEMORY[0x1E695E0F0];
  }

  v26 = objc_alloc(MEMORY[0x1E69788E0]);
  v27 = [v26 initWithObjects:*(*&buf[8] + 40) photoLibrary:v21 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];
  v28 = v13;
  v29 = v28;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *v39 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v29, OS_SIGNPOST_INTERVAL_END, v11, "SharedAlbumsRecentActivityFetchDuration", "", v39, 2u);
  }

  _Block_object_dispose(buf, 8);

  return v27;
}

void __86__PXSharedAlbumsActivityEntry__fetchRecentActivitiesWithOptions_olderThanDate_filter___block_invoke(void *a1)
{
  v5 = [MEMORY[0x1E69BE320] recentEntriesInLibrary:a1[4] earliestDate:0 latestDate:a1[5] limit:a1[8] filter:a1[9] sortDescriptors:0];
  v2 = [objc_opt_class() _activitiesFromCloudFeedEntries:v5 inMostRecentOrder:1 photoLibrary:a1[6] plPhotoLibrary:a1[4]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (unint64_t)fetchCountOfRecentFeedActivitiesWithOptions:(id)options newerThanDate:(id)date
{
  v37 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  dateCopy = date;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v7 = PLSharedAlbumsGetLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    fetchLimit = [optionsCopy fetchLimit];
    *buf = 134218242;
    v34 = fetchLimit;
    v35 = 2112;
    v36 = dateCopy;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SharedAlbumsCountOfRecentFeedActivitiesDuration", "FetchLimit=%lu,earliestDate=%@", buf, 0x16u);
  }

  photoLibrary = [optionsCopy photoLibrary];
  photoLibraryForCurrentQueueQoS = [photoLibrary photoLibraryForCurrentQueueQoS];
  fetchLimit2 = [optionsCopy fetchLimit];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __89__PXSharedAlbumsActivityEntry_fetchCountOfRecentFeedActivitiesWithOptions_newerThanDate___block_invoke;
  v22[3] = &unk_1E7746470;
  v15 = photoLibraryForCurrentQueueQoS;
  v23 = v15;
  v16 = dateCopy;
  v24 = v16;
  v27 = fetchLimit2;
  v28 = 2;
  v17 = optionsCopy;
  v25 = v17;
  v26 = &v29;
  [v15 performBlockAndWait:v22];
  v18 = v10;
  v19 = v18;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v19, OS_SIGNPOST_INTERVAL_END, v8, "SharedAlbumsCountOfRecentFeedActivitiesDuration", "", buf, 2u);
  }

  v20 = v30[3];
  _Block_object_dispose(&v29, 8);

  return v20;
}

void __89__PXSharedAlbumsActivityEntry_fetchCountOfRecentFeedActivitiesWithOptions_newerThanDate___block_invoke(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E69BE320] recentEntriesInLibrary:a1[4] earliestDate:a1[5] latestDate:0 limit:a1[8] filter:a1[9] sortDescriptors:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v16 + 1) + 8 * v7) entryAlbumGUID];
        if (v8)
        {
          v9 = [v2 objectForKeyedSubscript:v8];

          if (!v9)
          {
            v10 = MEMORY[0x1E6978770];
            v20 = v8;
            v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
            v12 = [v10 fetchCollectionSharesWithScopeIdentifiers:v11 options:a1[6]];
            v13 = [v12 firstObject];

            v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v13, "notificationState") == 0x7FFF}];
            [v2 setObject:v14 forKeyedSubscript:v8];
          }

          v15 = [v2 objectForKeyedSubscript:v8];

          if (v15)
          {
            ++*(*(a1[7] + 8) + 24);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v5);
  }
}

+ (id)fetchRecentActivitiesWithOptions:(id)options olderThanDate:(id)date filter:(int64_t)filter
{
  if ((filter - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1A5381BC8[filter - 1];
  }

  return [self _fetchRecentActivitiesWithOptions:options olderThanDate:date filter:v5];
}

+ (id)fetchActivitiesWithOptions:(id)options
{
  v32 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__100957;
  v28 = __Block_byref_object_dispose__100958;
  v29 = 0;
  photoLibrary = [optionsCopy photoLibrary];
  photoLibrary2 = [optionsCopy photoLibrary];
  photoLibraryForCurrentQueueQoS = [photoLibrary2 photoLibraryForCurrentQueueQoS];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__PXSharedAlbumsActivityEntry_fetchActivitiesWithOptions___block_invoke;
  v18[3] = &unk_1E7741808;
  v8 = optionsCopy;
  v19 = v8;
  v9 = photoLibraryForCurrentQueueQoS;
  v20 = v9;
  v22 = &v24;
  selfCopy = self;
  v10 = photoLibrary;
  v21 = v10;
  [v9 performBlockAndWait:v18];
  v11 = +[PXSharedAlbumsSettings sharedInstance];
  LODWORD(photoLibrary2) = [v11 simulateEmptyActivityEntries];

  if (photoLibrary2)
  {
    v12 = PLSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v25[5] count];
      *buf = 134217984;
      v31 = v13;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Received %lu activities, but simulating empty activities, so setting to 0 activities", buf, 0xCu);
    }

    v14 = v25[5];
    v25[5] = MEMORY[0x1E695E0F0];
  }

  v15 = objc_alloc(MEMORY[0x1E69788E0]);
  v16 = [v15 initWithObjects:v25[5] photoLibrary:v10 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  _Block_object_dispose(&v24, 8);

  return v16;
}

void __58__PXSharedAlbumsActivityEntry_fetchActivitiesWithOptions___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) reverseSortOrder])
  {
    [MEMORY[0x1E69BE320] recentEntriesInLibrary:*(a1 + 40) earliestDate:0 latestDate:0 limit:objc_msgSend(*(a1 + 32) filter:"fetchLimit") sortDescriptors:{0, 0}];
  }

  else
  {
    [MEMORY[0x1E69BE320] allEntriesInLibrary:*(a1 + 40)];
  }
  v5 = ;
  v2 = [objc_opt_class() _activitiesFromCloudFeedEntries:v5 inMostRecentOrder:objc_msgSend(*(a1 + 32) photoLibrary:"reverseSortOrder") plPhotoLibrary:{*(a1 + 48), *(a1 + 40)}];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)fetchAssetsMockActivitiesWithOptions:(id)options
{
  v94[1] = *MEMORY[0x1E69E9840];
  photoLibrary = [options photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeAllPhotosSmartAlbum:1];
  v52 = librarySpecificFetchOptions;
  v5 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000205 options:librarySpecificFetchOptions];
  firstObject = [v5 firstObject];

  v74 = photoLibrary;
  librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions2 setFetchLimit:10];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v94[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:1];
  [librarySpecificFetchOptions2 setSortDescriptors:v9];

  v50 = librarySpecificFetchOptions2;
  v51 = firstObject;
  v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:firstObject options:librarySpecificFetchOptions2];
  v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v10;
  v55 = [obj countByEnumeratingWithState:&v76 objects:v93 count:16];
  if (v55)
  {
    v54 = *v77;
    do
    {
      v11 = 0;
      do
      {
        if (*v77 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v76 + 1) + 8 * v11);
        v72 = v11;
        v13 = [[PXSharedAlbumsActivityEntryContributor alloc] initWithDisplayName:@"Jane" email:0];
        v70 = [[PXSharedAlbumsActivityEntryAvatarConfiguration alloc] initWithEmail:0 phone:0 firstName:@"Jane" lastName:0];
        v14 = [PXSharedAlbumsActivityEntry alloc];
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        creationDate = [v12 creationDate];
        v92 = v13;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
        v91 = v70;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
        uuid = [v12 uuid];
        v90 = uuid;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
        LOBYTE(v47) = 1;
        v22 = [(PXSharedAlbumsActivityEntry *)v14 initWithPhotoLibrary:v74 uuid:uUIDString date:creationDate type:0 isFromMe:0 contributors:v18 avatarConfigurations:v19 albumGUID:&stru_1F1741150 albumName:@"Faves" cloudOwnerIsAllowlisted:v47 message:@"Look what we did!" keyAssetUUIDs:v21 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:0];

        v73 = v22;
        [v75 addObject:v22];
        v62 = [[PXSharedAlbumsActivityEntryContributor alloc] initWithDisplayName:@"Mel" email:0];

        v66 = [[PXSharedAlbumsActivityEntryAvatarConfiguration alloc] initWithEmail:0 phone:0 firstName:@"Mel" lastName:0];
        v23 = [PXSharedAlbumsActivityEntry alloc];
        uUID2 = [MEMORY[0x1E696AFB0] UUID];
        uUIDString2 = [uUID2 UUIDString];
        v68 = v12;
        creationDate2 = [v12 creationDate];
        v89 = v62;
        v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
        v88 = v66;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
        uuid2 = [v12 uuid];
        v87 = uuid2;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
        uUID3 = [MEMORY[0x1E696AFB0] UUID];
        uUIDString3 = [uUID3 UUIDString];
        uuid3 = [(PXSharedAlbumsActivityEntry *)v22 uuid];
        v86 = uuid3;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
        LOBYTE(v48) = 1;
        v71 = [(PXSharedAlbumsActivityEntry *)v23 initWithPhotoLibrary:v74 uuid:uUIDString2 date:creationDate2 type:1 isFromMe:0 contributors:v56 avatarConfigurations:v24 albumGUID:&stru_1F1741150 albumName:@"Faves" cloudOwnerIsAllowlisted:v48 message:@"❤️" keyAssetUUIDs:v25 keyAssets:0 relatedCommentUUID:uUIDString3 relatedUUIDs:v29 underlyingObject:0];

        [v75 addObject:v71];
        v65 = [[PXSharedAlbumsActivityEntryContributor alloc] initWithDisplayName:@"Chris" email:0];

        v63 = [[PXSharedAlbumsActivityEntryAvatarConfiguration alloc] initWithEmail:0 phone:0 firstName:@"Chris" lastName:0];
        v30 = [PXSharedAlbumsActivityEntry alloc];
        uUID4 = [MEMORY[0x1E696AFB0] UUID];
        uUIDString4 = [uUID4 UUIDString];
        creationDate3 = [v68 creationDate];
        v85 = v65;
        v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
        v84 = v63;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
        uuid4 = [v68 uuid];
        v83 = uuid4;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
        uUID5 = [MEMORY[0x1E696AFB0] UUID];
        uUIDString5 = [uUID5 UUIDString];
        uuid5 = [(PXSharedAlbumsActivityEntry *)v73 uuid];
        v82 = uuid5;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
        LOBYTE(v49) = 1;
        v38 = v30;
        v39 = uUIDString4;
        v40 = [(PXSharedAlbumsActivityEntry *)v38 initWithPhotoLibrary:v74 uuid:uUIDString4 date:creationDate3 type:2 isFromMe:0 contributors:v59 avatarConfigurations:v32 albumGUID:&stru_1F1741150 albumName:@"Faves" cloudOwnerIsAllowlisted:v49 message:@"Neat!" keyAssetUUIDs:v33 keyAssets:0 relatedCommentUUID:uUIDString5 relatedUUIDs:v37 underlyingObject:0];

        [v75 addObject:v40];
        v11 = v72 + 1;
      }

      while (v55 != v72 + 1);
      v55 = [obj countByEnumeratingWithState:&v76 objects:v93 count:16];
    }

    while (v55);
  }

  v41 = +[PXSharedAlbumsSettings sharedInstance];
  simulateEmptyActivityEntries = [v41 simulateEmptyActivityEntries];

  if (simulateEmptyActivityEntries)
  {
    v43 = PLSharingGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v75 count];
      *buf = 134217984;
      v81 = v44;
      _os_log_impl(&dword_1A3C1C000, v43, OS_LOG_TYPE_DEFAULT, "Received %lu activities, but simulating empty activities, so setting to 0 activities", buf, 0xCu);
    }

    [v75 removeAllObjects];
  }

  v45 = [objc_alloc(MEMORY[0x1E69788E0]) initWithObjects:v75 photoLibrary:v74 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v45;
}

@end