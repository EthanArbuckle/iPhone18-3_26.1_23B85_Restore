@interface PLDelayedSaveActionsDetail
+ (id)_decodeAssetIDsByPersonUUIDNeedingContainmentUpdates:(id)a3 urlToObjectID:(id)a4;
+ (id)_decodeAssetsForWallpaperUserAlbumRemoval:(id)a3 urlToObjectID:(id)a4;
+ (id)_decodeAssetsForWidgetUserAlbumRemoval:(id)a3 urlToObjectID:(id)a4;
+ (id)_decodeMomentDeletes:(id)a3 urlToObjectID:(id)a4;
+ (id)_decodeSharedAssetContainerIncrementalChanges:(id)a3 urlToObjectID:(id)a4;
- (BOOL)shouldHandleMoments;
- (PLDelayedSaveActionsDetail)init;
- (PLDelayedSaveActionsDetail)initWithCoder:(id)a3;
- (id)_encodableAssetIDsByPersonUUIDNeedingContainmentUpdates;
- (id)_encodableAssetsForWallpaperUserAlbumRemoval;
- (id)_encodableAssetsForWidgetUserAlbumRemoval;
- (id)_encodableMomentDeletes;
- (id)_encodableSharedAssetContainerIncrementalChanges;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLDelayedSaveActionsDetail

- (PLDelayedSaveActionsDetail)init
{
  v3.receiver = self;
  v3.super_class = PLDelayedSaveActionsDetail;
  return [(PLDelayedSaveActionsDetail *)&v3 init];
}

- (BOOL)shouldHandleMoments
{
  v3 = PLPlatformMomentsSupported();
  if (v3)
  {
    LOBYTE(v3) = [(NSArray *)self->_momentInsertsAndUpdates count]|| [(NSDictionary *)self->_momentDeletes count]|| [(NSArray *)self->_updatedAssetIDsForHighlights count]|| [(NSArray *)self->_updatedMomentIDsForHighlights count]!= 0;
  }

  return v3;
}

- (PLDelayedSaveActionsDetail)initWithCoder:(id)a3
{
  v176 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v170.receiver = self;
  v170.super_class = PLDelayedSaveActionsDetail;
  v6 = [(PLDelayedSaveActionsDetail *)&v170 init];
  if (v6)
  {
    v166 = [PLXPCCoder userInfoForCoder:v5];
    v7 = [v166 persistentStoreCoordinator];
    if (!v7)
    {
      v153 = [MEMORY[0x1E696AAA8] currentHandler];
      [v153 handleFailureInMethod:a2 object:v6 file:@"PLDelayedSaveActionsDetail.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"coordinator != nil"}];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__PLDelayedSaveActionsDetail_initWithCoder___block_invoke;
    aBlock[3] = &unk_1E75784F0;
    v154 = v7;
    v169 = v154;
    v8 = _Block_copy(aBlock);
    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v167 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (i = 8; i != -8; i -= 8)
    {
    }

    v10 = [v5 decodeObjectOfClasses:v167 forKey:@"key_cloudFeedAlbumUpdates"];
    v11 = [v10 _pl_map:v8];
    cloudFeedAlbumUpdates = v6->_cloudFeedAlbumUpdates;
    v6->_cloudFeedAlbumUpdates = v11;

    v13 = [v5 decodeObjectOfClasses:v167 forKey:@"key_cloudFeedCollectionShareUpdates"];
    v14 = [v13 _pl_map:v8];
    cloudFeedCollectionShareUpdates = v6->_cloudFeedCollectionShareUpdates;
    v6->_cloudFeedCollectionShareUpdates = v14;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v16 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (j = 8; j != -8; j -= 8)
    {
    }

    v18 = [v5 decodeObjectOfClasses:v16 forKey:@"key_cloudFeedCollectionShareDeletes"];
    cloudFeedCollectionShareDeletes = v6->_cloudFeedCollectionShareDeletes;
    v6->_cloudFeedCollectionShareDeletes = v18;

    v20 = [v5 decodeObjectOfClasses:v167 forKey:@"key_cloudFeedAssetInserts"];
    v21 = [v20 _pl_map:v8];
    cloudFeedAssetInserts = v6->_cloudFeedAssetInserts;
    v6->_cloudFeedAssetInserts = v21;

    v23 = [v5 decodeObjectOfClasses:v167 forKey:@"key_cloudFeedAssetUpdates"];
    v24 = [v23 _pl_map:v8];
    cloudFeedAssetUpdates = v6->_cloudFeedAssetUpdates;
    v6->_cloudFeedAssetUpdates = v24;

    v26 = [v5 decodeObjectOfClasses:v167 forKey:@"key_cloudFeedCommentInserts"];
    v27 = [v26 _pl_map:v8];
    cloudFeedCommentInserts = v6->_cloudFeedCommentInserts;
    v6->_cloudFeedCommentInserts = v27;

    v29 = [v5 decodeObjectOfClasses:v167 forKey:@"key_cloudFeedInvitationRecordUpdates"];
    v30 = [v29 _pl_map:v8];
    cloudFeedInvitationRecordUpdates = v6->_cloudFeedInvitationRecordUpdates;
    v6->_cloudFeedInvitationRecordUpdates = v30;

    v32 = [v5 decodeObjectOfClasses:v167 forKey:@"key_cloudFeedShareParticipantUpdates"];
    v33 = [v32 _pl_map:v8];
    cloudFeedShareParticipantUpdates = v6->_cloudFeedShareParticipantUpdates;
    v6->_cloudFeedShareParticipantUpdates = v33;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v35 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (k = 8; k != -8; k -= 8)
    {
    }

    v37 = [v5 decodeObjectOfClasses:v35 forKey:@"key_cloudFeedShareParticipantDeletes"];
    cloudFeedShareParticipantDeletes = v6->_cloudFeedShareParticipantDeletes;
    v6->_cloudFeedShareParticipantDeletes = v37;

    v39 = [v5 decodeObjectOfClasses:v167 forKey:@"key_cloudFeedDeletionEntries"];
    v40 = [v39 _pl_map:v8];
    cloudFeedDeletionEntries = v6->_cloudFeedDeletionEntries;
    v6->_cloudFeedDeletionEntries = v40;

    v42 = [v5 decodeObjectOfClasses:v167 forKey:@"key_momentInsertsAndUpdates"];
    v43 = [v42 _pl_map:v8];
    momentInsertsAndUpdates = v6->_momentInsertsAndUpdates;
    v6->_momentInsertsAndUpdates = v43;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v173 = objc_opt_class();
    v174 = objc_opt_class();
    v175 = objc_opt_class();
    v45 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:5];
    for (m = 32; m != -8; m -= 8)
    {
    }

    v165 = [v5 decodeObjectOfClasses:v45 forKey:@"key_momentDeletes"];

    v47 = [objc_opt_class() _decodeMomentDeletes:v165 urlToObjectID:v8];
    momentDeletes = v6->_momentDeletes;
    v6->_momentDeletes = v47;

    v49 = [v5 decodeObjectOfClasses:v167 forKey:@"key_updatedAssetIDsForHighlights"];
    v50 = [v49 _pl_map:v8];
    updatedAssetIDsForHighlights = v6->_updatedAssetIDsForHighlights;
    v6->_updatedAssetIDsForHighlights = v50;

    v52 = [v5 decodeObjectOfClasses:v167 forKey:@"key_updatedMomentIDsForHighlights"];
    v53 = [v52 _pl_map:v8];
    updatedMomentIDsForHighlights = v6->_updatedMomentIDsForHighlights;
    v6->_updatedMomentIDsForHighlights = v53;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v173 = objc_opt_class();
    v174 = objc_opt_class();
    v55 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:4];
    for (n = 24; n != -8; n -= 8)
    {
    }

    v164 = [v5 decodeObjectOfClasses:v55 forKey:@"key_sharedAssetContainerIncrementalChangesByAssetID"];

    v57 = [objc_opt_class() _decodeSharedAssetContainerIncrementalChanges:v164 urlToObjectID:v8];
    sharedAssetContainerIncrementalChangesByAssetID = v6->_sharedAssetContainerIncrementalChangesByAssetID;
    v6->_sharedAssetContainerIncrementalChangesByAssetID = v57;

    v59 = [v5 decodeObjectOfClasses:v167 forKey:@"key_assetsForFilesystemPersistency"];
    v60 = [v59 _pl_map:v8];
    assetsForFilesystemPersistency = v6->_assetsForFilesystemPersistency;
    v6->_assetsForFilesystemPersistency = v60;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v62 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (ii = 8; ii != -8; ii -= 8)
    {
    }

    v163 = [v5 decodeObjectOfClasses:v62 forKey:@"key_albumCountsAndDateRangeUpdates"];

    v64 = [v163 _pl_map:v8];
    albumCountsAndDateRangeUpdates = v6->_albumCountsAndDateRangeUpdates;
    v6->_albumCountsAndDateRangeUpdates = v64;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v66 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (jj = 8; jj != -8; jj -= 8)
    {
    }

    v162 = [v5 decodeObjectOfClasses:v66 forKey:@"key_albumKeyAssetsUpdates"];

    v68 = [v162 _pl_map:v8];
    albumKeyAssetsUpdates = v6->_albumKeyAssetsUpdates;
    v6->_albumKeyAssetsUpdates = v68;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v70 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (kk = 8; kk != -8; kk -= 8)
    {
    }

    v161 = [v5 decodeObjectOfClasses:v70 forKey:@"key_importSessionCountsAndDateRangeUpdates"];

    v72 = [v161 _pl_map:v8];
    importSessionCountsAndDateRangeUpdates = v6->_importSessionCountsAndDateRangeUpdates;
    v6->_importSessionCountsAndDateRangeUpdates = v72;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v74 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (mm = 8; mm != -8; mm -= 8)
    {
    }

    v160 = [v5 decodeObjectOfClasses:v74 forKey:@"key_albumTrashCycleUpdates"];

    v76 = [v160 _pl_map:v8];
    albumTrashCycleUpdates = v6->_albumTrashCycleUpdates;
    v6->_albumTrashCycleUpdates = v76;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v78 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (nn = 8; nn != -8; nn -= 8)
    {
    }

    v80 = [v5 decodeObjectOfClasses:v78 forKey:@"key_assetsForDuetDelete"];
    assetsForDuetDelete = v6->_assetsForDuetDelete;
    v6->_assetsForDuetDelete = v80;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v82 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (i1 = 8; i1 != -8; i1 -= 8)
    {
    }

    v84 = [v5 decodeObjectOfClasses:v82 forKey:@"key_memoriesForDuetDelete"];
    memoriesForDuetDelete = v6->_memoriesForDuetDelete;
    v6->_memoriesForDuetDelete = v84;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v86 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (i2 = 8; i2 != -8; i2 -= 8)
    {
    }

    v88 = [v5 decodeObjectOfClasses:v86 forKey:@"key_widgetTimelineReloadTypesNeeded"];
    widgetTimelineReloadTypesNeeded = v6->_widgetTimelineReloadTypesNeeded;
    v6->_widgetTimelineReloadTypesNeeded = v88;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v173 = objc_opt_class();
    v174 = objc_opt_class();
    v90 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:4];
    for (i3 = 24; i3 != -8; i3 -= 8)
    {
    }

    v159 = [v5 decodeObjectOfClasses:v90 forKey:@"key_assetsForWidgetUserAlbumRemoval"];

    v92 = [objc_opt_class() _decodeAssetsForWidgetUserAlbumRemoval:v159 urlToObjectID:v8];
    assetsForWidgetUserAlbumRemoval = v6->_assetsForWidgetUserAlbumRemoval;
    v6->_assetsForWidgetUserAlbumRemoval = v92;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v94 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (i4 = 8; i4 != -8; i4 -= 8)
    {
    }

    v158 = [v5 decodeObjectOfClasses:v94 forKey:@"key_assetsForWidgetFavoriteAlbumRemoval"];

    v96 = [v158 _pl_map:v8];
    assetsForWidgetFavoriteAlbumRemoval = v6->_assetsForWidgetFavoriteAlbumRemoval;
    v6->_assetsForWidgetFavoriteAlbumRemoval = v96;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v173 = objc_opt_class();
    v174 = objc_opt_class();
    v98 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:4];
    for (i5 = 24; i5 != -8; i5 -= 8)
    {
    }

    v157 = [v5 decodeObjectOfClasses:v98 forKey:@"key_assetsForWallpaperUserAlbumRemoval"];

    v100 = [objc_opt_class() _decodeAssetsForWallpaperUserAlbumRemoval:v157 urlToObjectID:v8];
    assetsForWallpaperUserAlbumRemoval = v6->_assetsForWallpaperUserAlbumRemoval;
    v6->_assetsForWallpaperUserAlbumRemoval = v100;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v102 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (i6 = 8; i6 != -8; i6 -= 8)
    {
    }

    v156 = [v5 decodeObjectOfClasses:v102 forKey:@"key_assetsForWallpaperFavoriteAlbumRemoval"];

    v104 = [v156 _pl_map:v8];
    assetsForWallpaperFavoriteAlbumRemoval = v6->_assetsForWallpaperFavoriteAlbumRemoval;
    v6->_assetsForWallpaperFavoriteAlbumRemoval = v104;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v106 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (i7 = 8; i7 != -8; i7 -= 8)
    {
    }

    v108 = [v5 decodeObjectOfClasses:v106 forKey:@"key_wallpaperSuggestionReloadUUIDs"];
    wallpaperSuggestionReloadUUIDs = v6->_wallpaperSuggestionReloadUUIDs;
    v6->_wallpaperSuggestionReloadUUIDs = v108;

    v6->_shouldUpdateFeaturedContent = [v5 decodeBoolForKey:@"key_shouldUpdateFeaturedContent"];
    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v110 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (i8 = 8; i8 != -8; i8 -= 8)
    {
    }

    v112 = [v5 decodeObjectOfClasses:v110 forKey:@"key_personsToUpdateForFeaturedContent"];
    personsToUpdateForFeaturedContent = v6->_personsToUpdateForFeaturedContent;
    v6->_personsToUpdateForFeaturedContent = v112;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v114 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (i9 = 8; i9 != -8; i9 -= 8)
    {
    }

    v116 = [v5 decodeObjectOfClasses:v114 forKey:@"key_memoriesForAssetUpdate"];
    memoriesForAssetUpdate = v6->_memoriesForAssetUpdate;
    v6->_memoriesForAssetUpdate = v116;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v118 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (i10 = 8; i10 != -8; i10 -= 8)
    {
    }

    v120 = [v5 decodeObjectOfClasses:v118 forKey:@"key_libraryScopeParticipantsForUpdate"];
    libraryScopeParticipantsForUpdate = v6->_libraryScopeParticipantsForUpdate;
    v6->_libraryScopeParticipantsForUpdate = v120;

    v6->_libraryScopeRulesUpdated = [v5 decodeBoolForKey:@"key_libraryScopeRulesUpdated"];
    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v122 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (i11 = 8; i11 != -8; i11 -= 8)
    {
    }

    v155 = [v5 decodeObjectOfClasses:v122 forKey:@"key_assetIDsNeedingContainmentUpdates"];

    v124 = [v155 _pl_map:v8];
    assetIDsNeedingContainmentUpdates = v6->_assetIDsNeedingContainmentUpdates;
    v6->_assetIDsNeedingContainmentUpdates = v124;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v126 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (i12 = 8; i12 != -8; i12 -= 8)
    {
    }

    v128 = [v5 decodeObjectOfClasses:v126 forKey:@"key_memberIDsOfSocialGroupsNeedingContainmentUpdates"];

    v129 = [v128 _pl_map:v8];
    memberIDsOfSocialGroupsNeedingContainmentUpdates = v6->_memberIDsOfSocialGroupsNeedingContainmentUpdates;
    v6->_memberIDsOfSocialGroupsNeedingContainmentUpdates = v129;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v173 = objc_opt_class();
    v174 = objc_opt_class();
    v131 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:4];
    for (i13 = 24; i13 != -8; i13 -= 8)
    {
    }

    v133 = [v5 decodeObjectOfClasses:v131 forKey:@"key_assetIDsByPersonUUIDNeedingContainmentUpdates"];

    v134 = [objc_opt_class() _decodeAssetIDsByPersonUUIDNeedingContainmentUpdates:v133 urlToObjectID:v8];
    assetIDsByPersonUUIDNeedingContainmentUpdates = v6->_assetIDsByPersonUUIDNeedingContainmentUpdates;
    v6->_assetIDsByPersonUUIDNeedingContainmentUpdates = v134;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v136 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (i14 = 8; i14 != -8; i14 -= 8)
    {
    }

    v138 = [v5 decodeObjectOfClasses:v136 forKey:@"key_socialGroupNodeIDsNeedingDeduplication"];

    v139 = [v138 _pl_map:v8];
    socialGroupNodeIDsNeedingDeduplication = v6->_socialGroupNodeIDsNeedingDeduplication;
    v6->_socialGroupNodeIDsNeedingDeduplication = v139;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v141 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (i15 = 8; i15 != -8; i15 -= 8)
    {
    }

    v143 = [v5 decodeObjectOfClasses:v141 forKey:@"key_memberIDsOfSocialGroupsNeedingDeduplication"];

    v144 = [v143 _pl_map:v8];
    memberIDsOfSocialGroupsNeedingDeduplication = v6->_memberIDsOfSocialGroupsNeedingDeduplication;
    v6->_memberIDsOfSocialGroupsNeedingDeduplication = v144;

    v171 = objc_opt_class();
    v172 = objc_opt_class();
    v146 = [MEMORY[0x1E695DFD8] setWithObjects:&v171 count:2];
    for (i16 = 8; i16 != -8; i16 -= 8)
    {
    }

    v148 = [v5 decodeObjectOfClasses:v146 forKey:@"key_assetIDsNeedingAssetPersonEdgeUpdates"];

    v149 = [v148 _pl_map:v8];
    assetIDsNeedingAssetPersonEdgeUpdates = v6->_assetIDsNeedingAssetPersonEdgeUpdates;
    v6->_assetIDsNeedingAssetPersonEdgeUpdates = v149;

    v6->_backgroundUploadEventUpdated = [v5 decodeBoolForKey:@"key_backgroundUploadEventUpdated"];
    v151 = v6;
  }

  return v6;
}

- (id)_encodableAssetIDsByPersonUUIDNeedingContainmentUpdates
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  assetIDsByPersonUUIDNeedingContainmentUpdates = self->_assetIDsByPersonUUIDNeedingContainmentUpdates;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PLDelayedSaveActionsDetail__encodableAssetIDsByPersonUUIDNeedingContainmentUpdates__block_invoke;
  v7[3] = &unk_1E75784C8;
  v5 = v3;
  v8 = v5;
  [(NSDictionary *)assetIDsByPersonUUIDNeedingContainmentUpdates enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __85__PLDelayedSaveActionsDetail__encodableAssetIDsByPersonUUIDNeedingContainmentUpdates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DFA8];
  v6 = a3;
  v7 = a2;
  v8 = [v5 set];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PLDelayedSaveActionsDetail__encodableAssetIDsByPersonUUIDNeedingContainmentUpdates__block_invoke_2;
  v10[3] = &unk_1E75784A0;
  v11 = v8;
  v9 = v8;
  [v6 enumerateObjectsUsingBlock:v10];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

void __85__PLDelayedSaveActionsDetail__encodableAssetIDsByPersonUUIDNeedingContainmentUpdates__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 URIRepresentation];
  [*(a1 + 32) addObject:v3];
}

- (id)_encodableSharedAssetContainerIncrementalChanges
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  sharedAssetContainerIncrementalChangesByAssetID = self->_sharedAssetContainerIncrementalChangesByAssetID;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__PLDelayedSaveActionsDetail__encodableSharedAssetContainerIncrementalChanges__block_invoke;
  v7[3] = &unk_1E7578478;
  v5 = v3;
  v8 = v5;
  [(NSDictionary *)sharedAssetContainerIncrementalChangesByAssetID enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __78__PLDelayedSaveActionsDetail__encodableSharedAssetContainerIncrementalChanges__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 URIRepresentation];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (id)_encodableAssetsForWallpaperUserAlbumRemoval
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  assetsForWallpaperUserAlbumRemoval = self->_assetsForWallpaperUserAlbumRemoval;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PLDelayedSaveActionsDetail__encodableAssetsForWallpaperUserAlbumRemoval__block_invoke;
  v7[3] = &unk_1E7578450;
  v5 = v3;
  v8 = v5;
  [(NSDictionary *)assetsForWallpaperUserAlbumRemoval enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __74__PLDelayedSaveActionsDetail__encodableAssetsForWallpaperUserAlbumRemoval__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 URIRepresentation];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (id)_encodableAssetsForWidgetUserAlbumRemoval
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  assetsForWidgetUserAlbumRemoval = self->_assetsForWidgetUserAlbumRemoval;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PLDelayedSaveActionsDetail__encodableAssetsForWidgetUserAlbumRemoval__block_invoke;
  v7[3] = &unk_1E7578450;
  v5 = v3;
  v8 = v5;
  [(NSDictionary *)assetsForWidgetUserAlbumRemoval enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __71__PLDelayedSaveActionsDetail__encodableAssetsForWidgetUserAlbumRemoval__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 URIRepresentation];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (id)_encodableMomentDeletes
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  momentDeletes = self->_momentDeletes;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PLDelayedSaveActionsDetail__encodableMomentDeletes__block_invoke;
  v7[3] = &unk_1E7578428;
  v5 = v3;
  v8 = v5;
  [(NSDictionary *)momentDeletes enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __53__PLDelayedSaveActionsDetail__encodableMomentDeletes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 URIRepresentation];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (void)encodeWithCoder:(id)a3
{
  cloudFeedAlbumUpdates = self->_cloudFeedAlbumUpdates;
  v33 = a3;
  v5 = [(NSArray *)cloudFeedAlbumUpdates _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v5 forKey:@"key_cloudFeedAlbumUpdates"];

  v6 = [(NSArray *)self->_cloudFeedCollectionShareUpdates _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v6 forKey:@"key_cloudFeedCollectionShareUpdates"];

  [v33 encodeObject:self->_cloudFeedCollectionShareDeletes forKey:@"key_cloudFeedCollectionShareDeletes"];
  v7 = [(NSArray *)self->_cloudFeedAssetInserts _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v7 forKey:@"key_cloudFeedAssetInserts"];

  v8 = [(NSArray *)self->_cloudFeedAssetUpdates _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v8 forKey:@"key_cloudFeedAssetUpdates"];

  v9 = [(NSArray *)self->_cloudFeedCommentInserts _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v9 forKey:@"key_cloudFeedCommentInserts"];

  v10 = [(NSArray *)self->_cloudFeedInvitationRecordUpdates _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v10 forKey:@"key_cloudFeedInvitationRecordUpdates"];

  v11 = [(NSArray *)self->_cloudFeedShareParticipantUpdates _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v11 forKey:@"key_cloudFeedShareParticipantUpdates"];

  [v33 encodeObject:self->_cloudFeedShareParticipantDeletes forKey:@"key_cloudFeedShareParticipantDeletes"];
  v12 = [(NSArray *)self->_cloudFeedDeletionEntries _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v12 forKey:@"key_cloudFeedDeletionEntries"];

  v13 = [(NSArray *)self->_momentInsertsAndUpdates _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v13 forKey:@"key_momentInsertsAndUpdates"];

  v14 = [(PLDelayedSaveActionsDetail *)self _encodableMomentDeletes];
  [v33 encodeObject:v14 forKey:@"key_momentDeletes"];

  v15 = [(NSArray *)self->_updatedAssetIDsForHighlights _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v15 forKey:@"key_updatedAssetIDsForHighlights"];

  v16 = [(NSArray *)self->_updatedMomentIDsForHighlights _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v16 forKey:@"key_updatedMomentIDsForHighlights"];

  v17 = [(PLDelayedSaveActionsDetail *)self _encodableSharedAssetContainerIncrementalChanges];
  [v33 encodeObject:v17 forKey:@"key_sharedAssetContainerIncrementalChangesByAssetID"];

  v18 = [(NSArray *)self->_assetsForFilesystemPersistency _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v18 forKey:@"key_assetsForFilesystemPersistency"];

  v19 = [(NSSet *)self->_albumCountsAndDateRangeUpdates _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v19 forKey:@"key_albumCountsAndDateRangeUpdates"];

  v20 = [(NSSet *)self->_albumKeyAssetsUpdates _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v20 forKey:@"key_albumKeyAssetsUpdates"];

  v21 = [(NSSet *)self->_importSessionCountsAndDateRangeUpdates _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v21 forKey:@"key_importSessionCountsAndDateRangeUpdates"];

  v22 = [(NSSet *)self->_albumTrashCycleUpdates _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v22 forKey:@"key_albumTrashCycleUpdates"];

  [v33 encodeObject:self->_assetsForDuetDelete forKey:@"key_assetsForDuetDelete"];
  [v33 encodeObject:self->_memoriesForDuetDelete forKey:@"key_memoriesForDuetDelete"];
  [v33 encodeObject:self->_widgetTimelineReloadTypesNeeded forKey:@"key_widgetTimelineReloadTypesNeeded"];
  v23 = [(PLDelayedSaveActionsDetail *)self _encodableAssetsForWidgetUserAlbumRemoval];
  [v33 encodeObject:v23 forKey:@"key_assetsForWidgetUserAlbumRemoval"];

  v24 = [(NSSet *)self->_assetsForWidgetFavoriteAlbumRemoval _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v24 forKey:@"key_assetsForWidgetFavoriteAlbumRemoval"];

  v25 = [(PLDelayedSaveActionsDetail *)self _encodableAssetsForWallpaperUserAlbumRemoval];
  [v33 encodeObject:v25 forKey:@"key_assetsForWallpaperUserAlbumRemoval"];

  v26 = [(NSSet *)self->_assetsForWallpaperFavoriteAlbumRemoval _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v26 forKey:@"key_assetsForWallpaperFavoriteAlbumRemoval"];

  [v33 encodeObject:self->_wallpaperSuggestionReloadUUIDs forKey:@"key_wallpaperSuggestionReloadUUIDs"];
  [v33 encodeBool:self->_shouldUpdateFeaturedContent forKey:@"key_shouldUpdateFeaturedContent"];
  [v33 encodeObject:self->_personsToUpdateForFeaturedContent forKey:@"key_personsToUpdateForFeaturedContent"];
  [v33 encodeObject:self->_memoriesForAssetUpdate forKey:@"key_memoriesForAssetUpdate"];
  [v33 encodeObject:self->_libraryScopeParticipantsForUpdate forKey:@"key_libraryScopeParticipantsForUpdate"];
  [v33 encodeBool:self->_libraryScopeRulesUpdated forKey:@"key_libraryScopeRulesUpdated"];
  v27 = [(NSSet *)self->_memberIDsOfSocialGroupsNeedingContainmentUpdates _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v27 forKey:@"key_memberIDsOfSocialGroupsNeedingContainmentUpdates"];

  v28 = [(NSSet *)self->_assetIDsNeedingContainmentUpdates _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v28 forKey:@"key_assetIDsNeedingContainmentUpdates"];

  v29 = [(PLDelayedSaveActionsDetail *)self _encodableAssetIDsByPersonUUIDNeedingContainmentUpdates];
  [v33 encodeObject:v29 forKey:@"key_assetIDsByPersonUUIDNeedingContainmentUpdates"];

  v30 = [(NSSet *)self->_socialGroupNodeIDsNeedingDeduplication _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v30 forKey:@"key_socialGroupNodeIDsNeedingDeduplication"];

  v31 = [(NSSet *)self->_memberIDsOfSocialGroupsNeedingDeduplication _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v31 forKey:@"key_memberIDsOfSocialGroupsNeedingDeduplication"];

  v32 = [(NSSet *)self->_assetIDsNeedingAssetPersonEdgeUpdates _pl_map:&__block_literal_global_116535];
  [v33 encodeObject:v32 forKey:@"key_assetIDsNeedingAssetPersonEdgeUpdates"];

  [v33 encodeBool:self->_backgroundUploadEventUpdated forKey:@"key_backgroundUploadEventUpdated"];
}

+ (id)_decodeAssetIDsByPersonUUIDNeedingContainmentUpdates:(id)a3 urlToObjectID:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [v6 dictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __97__PLDelayedSaveActionsDetail__decodeAssetIDsByPersonUUIDNeedingContainmentUpdates_urlToObjectID___block_invoke;
  v14[3] = &unk_1E75785B8;
  v16 = v5;
  v9 = v8;
  v15 = v9;
  v10 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v15;
  v12 = v9;

  return v9;
}

void __97__PLDelayedSaveActionsDetail__decodeAssetIDsByPersonUUIDNeedingContainmentUpdates_urlToObjectID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DFA8];
  v6 = a3;
  v7 = a2;
  v8 = [v5 set];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __97__PLDelayedSaveActionsDetail__decodeAssetIDsByPersonUUIDNeedingContainmentUpdates_urlToObjectID___block_invoke_2;
  v13 = &unk_1E7578590;
  v14 = v8;
  v15 = *(a1 + 40);
  v9 = v8;
  [v6 enumerateObjectsUsingBlock:&v10];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:{v7, v10, v11, v12, v13}];
}

void __97__PLDelayedSaveActionsDetail__decodeAssetIDsByPersonUUIDNeedingContainmentUpdates_urlToObjectID___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObject:v2];
}

+ (id)_decodeSharedAssetContainerIncrementalChanges:(id)a3 urlToObjectID:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [v6 dictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__PLDelayedSaveActionsDetail__decodeSharedAssetContainerIncrementalChanges_urlToObjectID___block_invoke;
  v14[3] = &unk_1E7578568;
  v16 = v5;
  v9 = v8;
  v15 = v9;
  v10 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v15;
  v12 = v9;

  return v9;
}

void __90__PLDelayedSaveActionsDetail__decodeSharedAssetContainerIncrementalChanges_urlToObjectID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = v6(v5, a2);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
}

+ (id)_decodeAssetsForWallpaperUserAlbumRemoval:(id)a3 urlToObjectID:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [v6 dictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__PLDelayedSaveActionsDetail__decodeAssetsForWallpaperUserAlbumRemoval_urlToObjectID___block_invoke;
  v14[3] = &unk_1E7578540;
  v16 = v5;
  v9 = v8;
  v15 = v9;
  v10 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v15;
  v12 = v9;

  return v9;
}

void __86__PLDelayedSaveActionsDetail__decodeAssetsForWallpaperUserAlbumRemoval_urlToObjectID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = v6(v5, a2);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
}

+ (id)_decodeAssetsForWidgetUserAlbumRemoval:(id)a3 urlToObjectID:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [v6 dictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__PLDelayedSaveActionsDetail__decodeAssetsForWidgetUserAlbumRemoval_urlToObjectID___block_invoke;
  v14[3] = &unk_1E7578540;
  v16 = v5;
  v9 = v8;
  v15 = v9;
  v10 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v15;
  v12 = v9;

  return v9;
}

void __83__PLDelayedSaveActionsDetail__decodeAssetsForWidgetUserAlbumRemoval_urlToObjectID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = v6(v5, a2);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
}

+ (id)_decodeMomentDeletes:(id)a3 urlToObjectID:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [v6 dictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__PLDelayedSaveActionsDetail__decodeMomentDeletes_urlToObjectID___block_invoke;
  v14[3] = &unk_1E7578518;
  v16 = v5;
  v9 = v8;
  v15 = v9;
  v10 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v15;
  v12 = v9;

  return v9;
}

void __65__PLDelayedSaveActionsDetail__decodeMomentDeletes_urlToObjectID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = v6(v5, a2);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
}

@end