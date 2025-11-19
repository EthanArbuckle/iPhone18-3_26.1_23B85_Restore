@interface PXSharedAlbumsActivityEntry
+ (id)_activitiesFromCloudFeedEntries:(id)a3 inMostRecentOrder:(BOOL)a4 photoLibrary:(id)a5 plPhotoLibrary:(id)a6;
+ (id)_assetsAddedActivitiesFromCloudFeedAssetsEntry:(id)a3 inMostRecentOrder:(BOOL)a4 withAlbumInformation:(id)a5 photoLibrary:(id)a6;
+ (id)_assetsAddedActivityFromAssets:(id)a3 batchID:(unint64_t)a4 withAlbumInformation:(id)a5 forEntry:(id)a6 photoLibrary:(id)a7;
+ (id)_fetchAssetsWithUUIDs:(id)a3 inPhotoLibrary:(id)a4;
+ (id)_fetchKeyAssetUUIDForAlbumWithGUID:(id)a3 photoLibrary:(id)a4 plPhotoLibrary:(id)a5;
+ (id)_fetchRecentActivitiesWithOptions:(id)a3 olderThanDate:(id)a4 filter:(int64_t)a5;
+ (id)_reactionActivitiesFromCloudFeedLikeEntry:(id)a3 photoLibrary:(id)a4 plPhotoLibrary:(id)a5;
+ (id)fetchActivitiesWithOptions:(id)a3;
+ (id)fetchAssetsMockActivitiesWithOptions:(id)a3;
+ (id)fetchKeyAssetsForActivity:(id)a3;
+ (id)fetchRecentActivitiesWithOptions:(id)a3 olderThanDate:(id)a4 filter:(int64_t)a5;
+ (unint64_t)fetchCountOfRecentFeedActivitiesWithOptions:(id)a3 newerThanDate:(id)a4;
- (PXSharedAlbumsActivityEntry)initWithPhotoLibrary:(id)a3 uuid:(id)a4 date:(id)a5 type:(int64_t)a6 isFromMe:(BOOL)a7 contributors:(id)a8 avatarConfigurations:(id)a9 albumGUID:(id)a10 albumName:(id)a11 cloudOwnerIsAllowlisted:(BOOL)a12 message:(id)a13 keyAssetUUIDs:(id)a14 keyAssets:(id)a15 relatedCommentUUID:(id)a16 relatedUUIDs:(id)a17 underlyingObject:(id)a18;
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

- (PXSharedAlbumsActivityEntry)initWithPhotoLibrary:(id)a3 uuid:(id)a4 date:(id)a5 type:(int64_t)a6 isFromMe:(BOOL)a7 contributors:(id)a8 avatarConfigurations:(id)a9 albumGUID:(id)a10 albumName:(id)a11 cloudOwnerIsAllowlisted:(BOOL)a12 message:(id)a13 keyAssetUUIDs:(id)a14 keyAssets:(id)a15 relatedCommentUUID:(id)a16 relatedUUIDs:(id)a17 underlyingObject:(id)a18
{
  v76 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v53 = a4;
  v21 = a4;
  v54 = a5;
  v66 = a5;
  v56 = a8;
  v22 = a9;
  v65 = a10;
  v23 = a11;
  v58 = a13;
  v24 = a14;
  v25 = a15;
  v57 = a16;
  v61 = a17;
  v63 = a18;
  v59 = v20;
  if (!v20)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  if (![v21 length])
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"uuid.length"}];
  }

  v26 = v23;
  v27 = v24;
  if (!v66)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  if (v56)
  {
    if (v22)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"contributors"}];

    if (v22)
    {
      goto LABEL_9;
    }
  }

  v42 = [MEMORY[0x1E696AAA8] currentHandler];
  [v42 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"avatarConfigurations"}];

LABEL_9:
  if (v65)
  {
    if (v23)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"albumGUID"}];

    if (v23)
    {
LABEL_11:
      if (v24)
      {
        goto LABEL_12;
      }

LABEL_37:
      v45 = [MEMORY[0x1E696AAA8] currentHandler];
      [v45 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"keyAssetUUIDs"}];

      if (v61)
      {
        goto LABEL_13;
      }

      goto LABEL_38;
    }
  }

  v44 = [MEMORY[0x1E696AAA8] currentHandler];
  [v44 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"albumName"}];

  if (!v24)
  {
    goto LABEL_37;
  }

LABEL_12:
  if (v61)
  {
    goto LABEL_13;
  }

LABEL_38:
  v46 = [MEMORY[0x1E696AAA8] currentHandler];
  [v46 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"relatedUUIDs"}];

LABEL_13:
  if (![v56 count])
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:112 description:@"Must have a contributor."];
  }

  if (![v22 count])
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:113 description:@"Must have an avatar configuration."];
  }

  if (a6 != 1)
  {
    if ([v56 count] != 1)
    {
      v49 = [MEMORY[0x1E696AAA8] currentHandler];
      [v49 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:115 description:@"Found multiple contributors for a non-reaction type activity entry. Only reactions can have multiple contributors."];
    }

    if ([v22 count] != 1)
    {
      v50 = [MEMORY[0x1E696AAA8] currentHandler];
      [v50 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:116 description:@"Found multiple avatar configurations for a non-reaction type activity entry. Only reactions can have multiple contributors."];
    }
  }

  v28 = [v56 firstObject];
  v29 = [v28 displayName];
  v30 = [v29 length];

  if (!v30)
  {
    v31 = PLSharingGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v69 = v21;
      v70 = 2114;
      v71 = v65;
      v72 = 2112;
      v73 = v26;
      v74 = 2112;
      v75 = v66;
      _os_log_impl(&dword_1A3C1C000, v31, OS_LOG_TYPE_ERROR, "Contributor display name is empty/blank for activity UUID: %{public}@, in albumGUID/name %{public}@/%@, date: %@", buf, 0x2Au);
    }
  }

  if (![v26 length])
  {
    v32 = PLSharingGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v69 = v21;
      v70 = 2114;
      v71 = v65;
      v72 = 2112;
      v73 = v66;
      _os_log_impl(&dword_1A3C1C000, v32, OS_LOG_TYPE_ERROR, "Album name is empty/blank for activity UUID: %{public}@, for albumGUID %{public}@, date: %@", buf, 0x20u);
    }
  }

  v67.receiver = self;
  v67.super_class = PXSharedAlbumsActivityEntry;
  v33 = [(PXSharedAlbumsActivityEntry *)&v67 init];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_photoLibrary, a3);
    objc_storeStrong(&v34->_uuid, v53);
    objc_storeStrong(&v34->_date, v54);
    v34->_type = a6;
    v34->_isFromMe = a7;
    v35 = [v56 copy];
    contributors = v34->_contributors;
    v34->_contributors = v35;

    PXMap();
  }

  return 0;
}

+ (id)_fetchKeyAssetUUIDForAlbumWithGUID:(id)a3 photoLibrary:(id)a4 plPhotoLibrary:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E6978770];
  v20 = a3;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 arrayWithObjects:&v20 count:1];
  v11 = [v8 librarySpecificFetchOptions];
  v12 = [v6 fetchCollectionSharesWithScopeIdentifiers:v10 options:v11];
  v13 = [v12 firstObject];

  v14 = MEMORY[0x1E6978630];
  v15 = [v8 librarySpecificFetchOptions];

  v16 = [v14 fetchKeyAssetsInAssetCollection:v13 options:v15];

  v17 = [v16 firstObject];

  v18 = [v17 uuid];

  return v18;
}

+ (id)_fetchAssetsWithUUIDs:(id)a3 inPhotoLibrary:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 librarySpecificFetchOptions];
  v8 = [MEMORY[0x1E6978630] fetchAssetsWithUUIDs:v5 options:v7];
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
        v16 = [v15 uuid];
        [v9 setObject:v15 forKeyedSubscript:v16];
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
  v18 = v5;
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
  v25 = [v24 initWithObjects:v17 photoLibrary:v6 fetchType:*MEMORY[0x1E6978D98] fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v25;
}

+ (id)fetchKeyAssetsForActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 keyAssetUUIDs];
  v6 = [v4 photoLibrary];

  v7 = [a1 _fetchAssetsWithUUIDs:v5 inPhotoLibrary:v6];

  return v7;
}

+ (id)_reactionActivitiesFromCloudFeedLikeEntry:(id)a3 photoLibrary:(id)a4 plPhotoLibrary:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v21 = a4;
  v20 = a5;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v22 = v7;
  v9 = [v7 entryLikeComments];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __101__PXSharedAlbumsActivityEntry__reactionActivitiesFromCloudFeedLikeEntry_photoLibrary_plPhotoLibrary___block_invoke;
  v26[3] = &unk_1E7738570;
  v10 = v8;
  v27 = v10;
  [v9 enumerateObjectsUsingBlock:v26];

  v11 = [v10 count];
  v12 = MEMORY[0x1E695E0F0];
  if (v11)
  {
    v13 = [v22 URIRepresentation];
    [v13 absoluteString];
    objc_claimAutoreleasedReturnValue();

    v14 = [PXSharedAlbumsActivityEntryAlbumInformation alloc];
    v15 = [v22 entryAlbumGUID];
    [(PXSharedAlbumsActivityEntryAlbumInformation *)v14 initWithAlbumGUID:v15 photoLibrary:v21 plPhotoLibrary:v20];

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

+ (id)_assetsAddedActivitiesFromCloudFeedAssetsEntry:(id)a3 inMostRecentOrder:(BOOL)a4 withAlbumInformation:(id)a5 photoLibrary:(id)a6
{
  v23 = a4;
  v54 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v9 entryAssets];
  if ([v12 count])
  {
    v13 = +[PXSharedAlbumsSettings sharedInstance];
    v14 = [v13 activityEntryAssetsAddedBatchingBehavior];

    if (v14)
    {
      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = __Block_byref_object_copy__100957;
      v47 = __Block_byref_object_dispose__100958;
      v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
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
      v36 = v14;
      v32 = v41;
      v33 = v37;
      v34 = &v43;
      v31 = v12;
      [v31 enumerateObjectsUsingBlock:v30];
      if ([v44[5] count] >= 2)
      {
        v15 = PLSharingGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v44[5] count];
          v17 = [v9 objectID];
          *buf = 134218242;
          v51 = v16;
          v52 = 2112;
          v53 = v17;
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
      v49 = v12;
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
    v29 = a1;
    v25 = v10;
    v26 = v9;
    v27 = v11;
    v28 = &v43;
    [v18 enumerateObjectsUsingBlock:v24];
    v20 = v44[5];
    if (v23)
    {
      v21 = [v20 reverseObjectEnumerator];
      v19 = [v21 allObjects];
    }

    else
    {
      v19 = v20;
    }

    _Block_object_dispose(&v43, 8);
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  return v19;
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

+ (id)_assetsAddedActivityFromAssets:(id)a3 batchID:(unint64_t)a4 withAlbumInformation:(id)a5 forEntry:(id)a6 photoLibrary:(id)a7
{
  v11 = MEMORY[0x1E696AEC0];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [v13 URIRepresentation];
  v17 = [v16 absoluteString];
  [v11 stringWithFormat:@"%@_batch_%lu", v17, a4];
  objc_claimAutoreleasedReturnValue();

  PXMap();
}

+ (id)_activitiesFromCloudFeedEntries:(id)a3 inMostRecentOrder:(BOOL)a4 photoLibrary:(id)a5 plPhotoLibrary:(id)a6
{
  v104 = a4;
  v158 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v127 = a5;
  v9 = a6;
  v121 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = v8;
  v123 = [obj countByEnumeratingWithState:&v137 objects:v157 count:16];
  if (v123)
  {
    v122 = *v138;
    v10 = 0x1E695D000uLL;
    v116 = v9;
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
        v13 = [v12 entryDate];
        v14 = [PXSharedAlbumsActivityEntryAlbumInformation alloc];
        v15 = [v12 entryAlbumGUID];
        v16 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v14 initWithAlbumGUID:v15 photoLibrary:v127 plPhotoLibrary:v9];

        v17 = [v12 URIRepresentation];
        v18 = [v17 absoluteString];

        v19 = [v12 entryType];
        if (v19 <= 3)
        {
          if (v19 != 1)
          {
            if (v19 != 2)
            {
              if (v19 != 3)
              {
                goto LABEL_59;
              }

              v20 = [v12 entryAlbumGUID];
              v21 = [PXSharedAlbumsActivityEntryAvatarConfiguration avatarFromOwnerOfPendingSharedAlbumWithGUID:v20 withPhotoLibrary:v127 plPhotoLibrary:v9];

              v125 = [[PXSharedAlbumsActivityEntryContributor alloc] initWithAvatarConfiguration:v21];
              v126 = v16;
              v22 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v16 albumGUID];
              v23 = [PXSharedAlbumsActivityEntry _fetchKeyAssetUUIDForAlbumWithGUID:v22 photoLibrary:v127 plPhotoLibrary:v9];

              if (v23)
              {
                v152 = v23;
                v24 = [*(v10 + 3784) arrayWithObjects:&v152 count:1];
                v111 = [a1 _fetchAssetsWithUUIDs:v24 inPhotoLibrary:v127];
              }

              else
              {
                v111 = 0;
              }

              v110 = [PXSharedAlbumsActivityEntry alloc];
              v119 = [v12 entryDate];
              v151 = v125;
              v71 = [*(v10 + 3784) arrayWithObjects:&v151 count:1];
              v124 = v21;
              v150 = v21;
              v72 = [*(v10 + 3784) arrayWithObjects:&v150 count:1];
              v73 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 albumGUID];
              v74 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 albumTitle];
              v75 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 ownerIsAllowlisted];
              if (v23)
              {
                v149 = v23;
                [*(v10 + 3784) arrayWithObjects:&v149 count:1];
                v77 = v76 = v18;
                v102 = v12;
                v78 = v111;
                LOBYTE(v99) = v75;
                v79 = [(PXSharedAlbumsActivityEntry *)v110 initWithPhotoLibrary:v127 uuid:v76 date:v119 type:5 isFromMe:0 contributors:v71 avatarConfigurations:v72 albumGUID:v73 albumName:v74 cloudOwnerIsAllowlisted:v99 message:0 keyAssetUUIDs:v77 keyAssets:v111 relatedCommentUUID:0 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:v102];

                v18 = v76;
              }

              else
              {
                v103 = v12;
                v78 = v111;
                LOBYTE(v99) = v75;
                v79 = [(PXSharedAlbumsActivityEntry *)v110 initWithPhotoLibrary:v127 uuid:v18 date:v119 type:5 isFromMe:0 contributors:v71 avatarConfigurations:v72 albumGUID:v73 albumName:v74 cloudOwnerIsAllowlisted:v99 message:0 keyAssetUUIDs:MEMORY[0x1E695E0F0] keyAssets:v111 relatedCommentUUID:0 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:v103];
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

              v84 = [MEMORY[0x1E696AAA8] currentHandler];
              v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXSharedAlbumsActivityEntry _activitiesFromCloudFeedEntries:inMostRecentOrder:photoLibrary:plPhotoLibrary:]"];
              v90 = objc_opt_class();
              v87 = NSStringFromClass(v90);
              v91 = [v40 px_descriptionForAssertionMessage];
              [v84 handleFailureInFunction:v85 file:@"PXSharedAlbumsActivityEntry.m" lineNumber:353 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"entry", v87, v91}];
            }

            else
            {
              v84 = [MEMORY[0x1E696AAA8] currentHandler];
              v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXSharedAlbumsActivityEntry _activitiesFromCloudFeedEntries:inMostRecentOrder:photoLibrary:plPhotoLibrary:]"];
              v86 = objc_opt_class();
              v87 = NSStringFromClass(v86);
              [v84 handleFailureInFunction:v85 file:@"PXSharedAlbumsActivityEntry.m" lineNumber:353 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"entry", v87}];
            }

LABEL_30:
            v41 = [v40 entryComments];
            v130[0] = MEMORY[0x1E69E9820];
            v130[1] = 3221225472;
            v130[2] = __109__PXSharedAlbumsActivityEntry__activitiesFromCloudFeedEntries_inMostRecentOrder_photoLibrary_plPhotoLibrary___block_invoke;
            v130[3] = &unk_1E77384B8;
            v136 = a1;
            v42 = v127;
            v131 = v42;
            v132 = v18;
            v133 = v40;
            v134 = v16;
            v43 = v121;
            v135 = v43;
            [v41 enumerateObjectsUsingBlock:v130];
            v44 = [a1 _reactionActivitiesFromCloudFeedLikeEntry:v40 photoLibrary:v42 plPhotoLibrary:v9];
            [v43 addObjectsFromArray:v44];
            if (![v41 count] && !objc_msgSend(v44, "count"))
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

            v80 = [MEMORY[0x1E696AAA8] currentHandler];
            v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXSharedAlbumsActivityEntry _activitiesFromCloudFeedEntries:inMostRecentOrder:photoLibrary:plPhotoLibrary:]"];
            v88 = objc_opt_class();
            v83 = NSStringFromClass(v88);
            v89 = [v40 px_descriptionForAssertionMessage];
            [v80 handleFailureInFunction:v81 file:@"PXSharedAlbumsActivityEntry.m" lineNumber:344 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"entry", v83, v89}];
          }

          else
          {
            v80 = [MEMORY[0x1E696AAA8] currentHandler];
            v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXSharedAlbumsActivityEntry _activitiesFromCloudFeedEntries:inMostRecentOrder:photoLibrary:plPhotoLibrary:]"];
            v82 = objc_opt_class();
            v83 = NSStringFromClass(v82);
            [v80 handleFailureInFunction:v81 file:@"PXSharedAlbumsActivityEntry.m" lineNumber:344 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"entry", v83}];
          }

LABEL_26:
          v41 = [a1 _assetsAddedActivitiesFromCloudFeedAssetsEntry:v40 inMostRecentOrder:v104 withAlbumInformation:v16 photoLibrary:v127];
          if ([v41 count])
          {
            [v121 addObjectsFromArray:v41];
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

        if (v19 - 5 < 2)
        {
          v36 = [v12 entryInvitationRecordGUID];
          v37 = [PXSharedAlbumsActivityEntryAvatarConfiguration avatarFromParticipantWithID:v36 withPhotoLibrary:v127 plPhotoLibrary:v9];

          v125 = [[PXSharedAlbumsActivityEntryContributor alloc] initWithAvatarConfiguration:v37];
          v126 = v16;
          v38 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v16 albumGUID];
          v23 = [PXSharedAlbumsActivityEntry _fetchKeyAssetUUIDForAlbumWithGUID:v38 photoLibrary:v127 plPhotoLibrary:v9];

          v114 = v18;
          if (v23)
          {
            v148 = v23;
            v39 = [*(v10 + 3784) arrayWithObjects:&v148 count:1];
            v112 = [a1 _fetchAssetsWithUUIDs:v39 inPhotoLibrary:v127];
          }

          else
          {
            v112 = 0;
          }

          v46 = [v12 entryType];
          v47 = 6;
          if (v46 != 5)
          {
            v47 = 7;
          }

          v109 = v47;
          v107 = [PXSharedAlbumsActivityEntry alloc];
          v117 = [v12 entryDate];
          v147 = v125;
          v48 = [*(v10 + 3784) arrayWithObjects:&v147 count:1];
          v124 = v37;
          v146 = v37;
          v49 = [*(v10 + 3784) arrayWithObjects:&v146 count:1];
          v50 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 albumGUID];
          v51 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 albumTitle];
          v52 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 ownerIsAllowlisted];
          v53 = v10;
          v54 = v52;
          if (v23)
          {
            v145 = v23;
            v55 = [*(v53 + 3784) arrayWithObjects:&v145 count:1];
            v56 = v112;
            LOBYTE(v99) = v54;
            v57 = [(PXSharedAlbumsActivityEntry *)v107 initWithPhotoLibrary:v127 uuid:v114 date:v117 type:v109 isFromMe:0 contributors:v48 avatarConfigurations:v49 albumGUID:v50 albumName:v51 cloudOwnerIsAllowlisted:v99 message:0 keyAssetUUIDs:v55 keyAssets:v112 relatedCommentUUID:0 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:v12];

            v18 = v114;
          }

          else
          {
            v56 = v112;
            LOBYTE(v99) = v52;
            v57 = [(PXSharedAlbumsActivityEntry *)v107 initWithPhotoLibrary:v127 uuid:v18 date:v117 type:v109 isFromMe:0 contributors:v48 avatarConfigurations:v49 albumGUID:v50 albumName:v51 cloudOwnerIsAllowlisted:v99 message:0 keyAssetUUIDs:MEMORY[0x1E695E0F0] keyAssets:v112 relatedCommentUUID:0 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:v12];
          }

          [v121 addObject:v57];
LABEL_56:

          goto LABEL_57;
        }

        if (v19 == 4 || v19 == 7)
        {
          v26 = [PXSharedAlbumsActivityEntryAvatarConfiguration alloc];
          v27 = [MEMORY[0x1E69BE6A8] sharingUsername];
          v28 = [MEMORY[0x1E69BE6A8] sharingFirstName];
          [MEMORY[0x1E69BE6A8] sharingLastName];
          v29 = v126 = v16;
          v124 = [(PXSharedAlbumsActivityEntryAvatarConfiguration *)v26 initWithEmail:v27 phone:0 firstName:v28 lastName:v29];

          v30 = [v12 entryType];
          v31 = 3;
          if (v30 != 4)
          {
            v31 = 4;
          }

          v108 = v31;
          v125 = [MEMORY[0x1E69BE6A8] sharingDisplayNameIncludingEmail:0 allowsEmail:1];
          v32 = [[PXSharedAlbumsActivityEntryContributor alloc] initWithDisplayName:v125 email:0];
          v33 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 albumGUID];
          v34 = [PXSharedAlbumsActivityEntry _fetchKeyAssetUUIDForAlbumWithGUID:v33 photoLibrary:v127 plPhotoLibrary:v9];

          if (v34)
          {
            v156 = v34;
            v35 = [*(v10 + 3784) arrayWithObjects:&v156 count:1];
            v106 = [a1 _fetchAssetsWithUUIDs:v35 inPhotoLibrary:v127];
          }

          else
          {
            v106 = 0;
          }

          v105 = [PXSharedAlbumsActivityEntry alloc];
          v58 = [v12 entryDate];
          v113 = v32;
          v155 = v32;
          v118 = [*(v10 + 3784) arrayWithObjects:&v155 count:1];
          v154 = v124;
          v59 = [*(v10 + 3784) arrayWithObjects:&v154 count:1];
          v60 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 albumGUID];
          v61 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 albumTitle];
          v62 = [(PXSharedAlbumsActivityEntryAlbumInformation *)v126 ownerIsAllowlisted];
          v63 = v10;
          v64 = v62;
          if (v34)
          {
            v153 = v34;
            [*(v63 + 3784) arrayWithObjects:&v153 count:1];
            v66 = v65 = v18;
            v100 = v12;
            v67 = v106;
            LOBYTE(v99) = v64;
            v68 = v58;
            v69 = [(PXSharedAlbumsActivityEntry *)v105 initWithPhotoLibrary:v127 uuid:v65 date:v58 type:v108 isFromMe:1 contributors:v118 avatarConfigurations:v59 albumGUID:v60 albumName:v61 cloudOwnerIsAllowlisted:v99 message:0 keyAssetUUIDs:v66 keyAssets:v106 relatedCommentUUID:0 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:v100];

            v18 = v65;
          }

          else
          {
            v101 = v12;
            v67 = v106;
            LOBYTE(v99) = v62;
            v68 = v58;
            v69 = [(PXSharedAlbumsActivityEntry *)v105 initWithPhotoLibrary:v127 uuid:v18 date:v58 type:v108 isFromMe:1 contributors:v118 avatarConfigurations:v59 albumGUID:v60 albumName:v61 cloudOwnerIsAllowlisted:v99 message:0 keyAssetUUIDs:MEMORY[0x1E695E0F0] keyAssets:v106 relatedCommentUUID:0 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:v101];
          }

          [v121 addObject:v69];
LABEL_57:
          v9 = v116;
          v10 = 0x1E695D000;
          v41 = v125;
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
  v129 = v104;
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

+ (id)_fetchRecentActivitiesWithOptions:(id)a3 olderThanDate:(id)a4 filter:(int64_t)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = PLSharedAlbumsGetLog();
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = [v8 fetchLimit];
    v15 = NSStringFromPLCloudFeedEntryFilter();
    *buf = 134218498;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    *&buf[22] = 1024;
    LODWORD(v42) = v9 != 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SharedAlbumsRecentActivityFetchDuration", "FetchLimit=%lu,Filter=%@,FetchingMore=%d", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v42 = __Block_byref_object_copy__100957;
  v43 = __Block_byref_object_dispose__100958;
  v44 = 0;
  v16 = [v8 photoLibrary];
  v17 = [v16 photoLibraryForCurrentQueueQoS];
  v18 = [v8 fetchLimit];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __86__PXSharedAlbumsActivityEntry__fetchRecentActivitiesWithOptions_olderThanDate_filter___block_invoke;
  v31[3] = &unk_1E7738490;
  v19 = v17;
  v32 = v19;
  v20 = v9;
  v36 = v18;
  v37 = a5;
  v33 = v20;
  v35 = buf;
  v38 = a1;
  v21 = v16;
  v34 = v21;
  [v19 performBlockAndWait:v31];
  v22 = +[PXSharedAlbumsSettings sharedInstance];
  LODWORD(v16) = [v22 simulateEmptyActivityEntries];

  if (v16)
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

+ (unint64_t)fetchCountOfRecentFeedActivitiesWithOptions:(id)a3 newerThanDate:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
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
    v11 = [v5 fetchLimit];
    *buf = 134218242;
    v34 = v11;
    v35 = 2112;
    v36 = v6;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SharedAlbumsCountOfRecentFeedActivitiesDuration", "FetchLimit=%lu,earliestDate=%@", buf, 0x16u);
  }

  v12 = [v5 photoLibrary];
  v13 = [v12 photoLibraryForCurrentQueueQoS];
  v14 = [v5 fetchLimit];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __89__PXSharedAlbumsActivityEntry_fetchCountOfRecentFeedActivitiesWithOptions_newerThanDate___block_invoke;
  v22[3] = &unk_1E7746470;
  v15 = v13;
  v23 = v15;
  v16 = v6;
  v24 = v16;
  v27 = v14;
  v28 = 2;
  v17 = v5;
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

+ (id)fetchRecentActivitiesWithOptions:(id)a3 olderThanDate:(id)a4 filter:(int64_t)a5
{
  if ((a5 - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1A5381BC8[a5 - 1];
  }

  return [a1 _fetchRecentActivitiesWithOptions:a3 olderThanDate:a4 filter:v5];
}

+ (id)fetchActivitiesWithOptions:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__100957;
  v28 = __Block_byref_object_dispose__100958;
  v29 = 0;
  v5 = [v4 photoLibrary];
  v6 = [v4 photoLibrary];
  v7 = [v6 photoLibraryForCurrentQueueQoS];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__PXSharedAlbumsActivityEntry_fetchActivitiesWithOptions___block_invoke;
  v18[3] = &unk_1E7741808;
  v8 = v4;
  v19 = v8;
  v9 = v7;
  v20 = v9;
  v22 = &v24;
  v23 = a1;
  v10 = v5;
  v21 = v10;
  [v9 performBlockAndWait:v18];
  v11 = +[PXSharedAlbumsSettings sharedInstance];
  LODWORD(v6) = [v11 simulateEmptyActivityEntries];

  if (v6)
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

+ (id)fetchAssetsMockActivitiesWithOptions:(id)a3
{
  v94[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];
  [v4 setIncludeAllPhotosSmartAlbum:1];
  v52 = v4;
  v5 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000205 options:v4];
  v6 = [v5 firstObject];

  v74 = v3;
  v7 = [v3 librarySpecificFetchOptions];
  [v7 setFetchLimit:10];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v94[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:1];
  [v7 setSortDescriptors:v9];

  v50 = v7;
  v51 = v6;
  v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v6 options:v7];
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
        v15 = [MEMORY[0x1E696AFB0] UUID];
        v16 = [v15 UUIDString];
        v17 = [v12 creationDate];
        v92 = v13;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
        v91 = v70;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
        v20 = [v12 uuid];
        v90 = v20;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
        LOBYTE(v47) = 1;
        v22 = [(PXSharedAlbumsActivityEntry *)v14 initWithPhotoLibrary:v74 uuid:v16 date:v17 type:0 isFromMe:0 contributors:v18 avatarConfigurations:v19 albumGUID:&stru_1F1741150 albumName:@"Faves" cloudOwnerIsAllowlisted:v47 message:@"Look what we did!" keyAssetUUIDs:v21 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:MEMORY[0x1E695E0F0] underlyingObject:0];

        v73 = v22;
        [v75 addObject:v22];
        v62 = [[PXSharedAlbumsActivityEntryContributor alloc] initWithDisplayName:@"Mel" email:0];

        v66 = [[PXSharedAlbumsActivityEntryAvatarConfiguration alloc] initWithEmail:0 phone:0 firstName:@"Mel" lastName:0];
        v23 = [PXSharedAlbumsActivityEntry alloc];
        v64 = [MEMORY[0x1E696AFB0] UUID];
        v60 = [v64 UUIDString];
        v68 = v12;
        v57 = [v12 creationDate];
        v89 = v62;
        v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
        v88 = v66;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
        v58 = [v12 uuid];
        v87 = v58;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
        v26 = [MEMORY[0x1E696AFB0] UUID];
        v27 = [v26 UUIDString];
        v28 = [(PXSharedAlbumsActivityEntry *)v22 uuid];
        v86 = v28;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
        LOBYTE(v48) = 1;
        v71 = [(PXSharedAlbumsActivityEntry *)v23 initWithPhotoLibrary:v74 uuid:v60 date:v57 type:1 isFromMe:0 contributors:v56 avatarConfigurations:v24 albumGUID:&stru_1F1741150 albumName:@"Faves" cloudOwnerIsAllowlisted:v48 message:@"❤️" keyAssetUUIDs:v25 keyAssets:0 relatedCommentUUID:v27 relatedUUIDs:v29 underlyingObject:0];

        [v75 addObject:v71];
        v65 = [[PXSharedAlbumsActivityEntryContributor alloc] initWithDisplayName:@"Chris" email:0];

        v63 = [[PXSharedAlbumsActivityEntryAvatarConfiguration alloc] initWithEmail:0 phone:0 firstName:@"Chris" lastName:0];
        v30 = [PXSharedAlbumsActivityEntry alloc];
        v67 = [MEMORY[0x1E696AFB0] UUID];
        v31 = [v67 UUIDString];
        v61 = [v68 creationDate];
        v85 = v65;
        v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
        v84 = v63;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
        v69 = [v68 uuid];
        v83 = v69;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
        v34 = [MEMORY[0x1E696AFB0] UUID];
        v35 = [v34 UUIDString];
        v36 = [(PXSharedAlbumsActivityEntry *)v73 uuid];
        v82 = v36;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
        LOBYTE(v49) = 1;
        v38 = v30;
        v39 = v31;
        v40 = [(PXSharedAlbumsActivityEntry *)v38 initWithPhotoLibrary:v74 uuid:v31 date:v61 type:2 isFromMe:0 contributors:v59 avatarConfigurations:v32 albumGUID:&stru_1F1741150 albumName:@"Faves" cloudOwnerIsAllowlisted:v49 message:@"Neat!" keyAssetUUIDs:v33 keyAssets:0 relatedCommentUUID:v35 relatedUUIDs:v37 underlyingObject:0];

        [v75 addObject:v40];
        v11 = v72 + 1;
      }

      while (v55 != v72 + 1);
      v55 = [obj countByEnumeratingWithState:&v76 objects:v93 count:16];
    }

    while (v55);
  }

  v41 = +[PXSharedAlbumsSettings sharedInstance];
  v42 = [v41 simulateEmptyActivityEntries];

  if (v42)
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