@interface PLCloudUploadChanges
- (PLCloudUploadChanges)init;
@end

@implementation PLCloudUploadChanges

- (PLCloudUploadChanges)init
{
  v53.receiver = self;
  v53.super_class = PLCloudUploadChanges;
  v2 = [(PLCloudUploadChanges *)&v53 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    insertedAssets = v2->_insertedAssets;
    v2->_insertedAssets = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    updatedAssets = v2->_updatedAssets;
    v2->_updatedAssets = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deferredAssets = v2->_deferredAssets;
    v2->_deferredAssets = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    updatedMasters = v2->_updatedMasters;
    v2->_updatedMasters = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    insertedResources = v2->_insertedResources;
    v2->_insertedResources = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    updatedResources = v2->_updatedResources;
    v2->_updatedResources = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    propertyChangedAssetUuids = v2->_propertyChangedAssetUuids;
    v2->_propertyChangedAssetUuids = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    sharingPropertyChangedAssetUuids = v2->_sharingPropertyChangedAssetUuids;
    v2->_sharingPropertyChangedAssetUuids = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    computeSyncChangedAssets = v2->_computeSyncChangedAssets;
    v2->_computeSyncChangedAssets = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    adjustedAssetUuids = v2->_adjustedAssetUuids;
    v2->_adjustedAssetUuids = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    faceChangedAssetUuids = v2->_faceChangedAssetUuids;
    v2->_faceChangedAssetUuids = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    albumInserts = v2->_albumInserts;
    v2->_albumInserts = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    albumChanges = v2->_albumChanges;
    v2->_albumChanges = v27;

    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    memoryChanges = v2->_memoryChanges;
    v2->_memoryChanges = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    personChanges = v2->_personChanges;
    v2->_personChanges = v31;

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    faceCropChanges = v2->_faceCropChanges;
    v2->_faceCropChanges = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    suggestionChanges = v2->_suggestionChanges;
    v2->_suggestionChanges = v35;

    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    userFeedbackChanges = v2->_userFeedbackChanges;
    v2->_userFeedbackChanges = v37;

    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    libraryScopeChanges = v2->_libraryScopeChanges;
    v2->_libraryScopeChanges = v39;

    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    collectionShareChanges = v2->_collectionShareChanges;
    v2->_collectionShareChanges = v41;

    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    socialGroupChanges = v2->_socialGroupChanges;
    v2->_socialGroupChanges = v43;

    v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    commentChanges = v2->_commentChanges;
    v2->_commentChanges = v45;

    v47 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    updatedRelationship = v2->_updatedRelationship;
    v2->_updatedRelationship = v47;

    v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedRecords = v2->_deletedRecords;
    v2->_deletedRecords = v49;

    v51 = v2;
  }

  return v2;
}

@end