@interface PLSearchTrackedChangeTypes
+ (BOOL)isEntityIndexedBySearch:(id)search;
+ (id)entityNamesIndexedBySearch;
- (BOOL)shouldUpdateSearchIndexForChange:(id)change entityName:(id)name photoLibrary:(id)library;
- (PLSearchTrackedAttributes)searchTrackedAttributes;
- (id)_changesTrackedBySearchForEntity:(id)entity;
- (id)trackedEntityNameForChange:(id)change photoLibrary:(id)library;
- (id)uuidForPersistentHistoryDeletionChange:(id)change photoLibrary:(id)library;
@end

@implementation PLSearchTrackedChangeTypes

+ (BOOL)isEntityIndexedBySearch:(id)search
{
  searchCopy = search;
  entityNamesIndexedBySearch = [self entityNamesIndexedBySearch];
  v6 = [entityNamesIndexedBySearch containsObject:searchCopy];

  return v6;
}

+ (id)entityNamesIndexedBySearch
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = +[PLManagedAsset entityName];
  v10[0] = v2;
  v3 = +[PLGenericAlbum entityName];
  v10[1] = v3;
  v4 = +[PLFetchingAlbum entityName];
  v10[2] = v4;
  v5 = +[PLManagedAlbum entityName];
  v10[3] = v5;
  v6 = +[PLPhotosHighlight entityName];
  v10[4] = v6;
  v7 = +[PLMemory entityName];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

- (id)uuidForPersistentHistoryDeletionChange:(id)change photoLibrary:(id)library
{
  v33[5] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  libraryCopy = library;
  if ([changeCopy changeType] != 2)
  {
    v24 = 0;
    goto LABEL_15;
  }

  v8 = [(PLSearchTrackedChangeTypes *)self trackedEntityNameForChange:changeCopy photoLibrary:libraryCopy];
  v9 = +[PLManagedAsset entityName];
  v33[0] = v9;
  v10 = +[PLManagedAlbum entityName];
  v33[1] = v10;
  v11 = +[PLMemory entityName];
  v33[2] = v11;
  v12 = +[PLPhotosHighlight entityName];
  v33[3] = v12;
  v13 = +[PLPerson entityName];
  v33[4] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:5];

  v15 = +[PLManagedAsset entityName];
  LOBYTE(v10) = [v8 isEqualToString:v15];

  if (v10 & 1) != 0 || (+[PLManagedAlbum entityName](PLManagedAlbum, "entityName"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v8 isEqualToString:v16], v16, (v17) || (+[PLMemory entityName](PLMemory, "entityName"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v8, "isEqualToString:", v18), v18, (v19) || (+[PLPhotosHighlight entityName](PLPhotosHighlight, "entityName"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v8, "isEqualToString:", v20), v20, (v21))
  {
    v22 = @"uuid";
LABEL_7:
    tombstone = [changeCopy tombstone];
    v24 = [tombstone objectForKeyedSubscript:v22];

    goto LABEL_8;
  }

  v27 = +[PLPerson entityName];
  v28 = [v8 isEqualToString:v27];

  if (v28)
  {
    v22 = @"personUUID";
    goto LABEL_7;
  }

  v24 = 0;
LABEL_8:
  if ([v14 containsObject:v8] && !v24)
  {
    v25 = PLSearchBackendLibraryChangeTrackingGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v29 = 138412546;
      v30 = changeCopy;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Unable to locate UUID from deletion change: %@ for entity: %@", &v29, 0x16u);
    }
  }

LABEL_15:

  return v24;
}

- (id)trackedEntityNameForChange:(id)change photoLibrary:(id)library
{
  libraryCopy = library;
  changedObjectID = [change changedObjectID];
  managedObjectContext = [libraryCopy managedObjectContext];

  v8 = MEMORY[0x1E695D5B8];
  v9 = +[PLManagedAsset entityName];
  v10 = [v8 entityForName:v9 inManagedObjectContext:managedObjectContext];

  v11 = MEMORY[0x1E695D5B8];
  v12 = +[PLMediaAnalysisAssetAttributes entityName];
  v44 = [v11 entityForName:v12 inManagedObjectContext:managedObjectContext];

  v13 = MEMORY[0x1E695D5B8];
  v14 = +[PLManagedAlbum entityName];
  v43 = [v13 entityForName:v14 inManagedObjectContext:managedObjectContext];

  v15 = MEMORY[0x1E695D5B8];
  v16 = +[PLMemory entityName];
  v17 = [v15 entityForName:v16 inManagedObjectContext:managedObjectContext];

  v18 = MEMORY[0x1E695D5B8];
  v19 = +[PLPhotosHighlight entityName];
  v20 = [v18 entityForName:v19 inManagedObjectContext:managedObjectContext];

  v21 = MEMORY[0x1E695D5B8];
  v22 = +[PLPerson entityName];
  v23 = [v21 entityForName:v22 inManagedObjectContext:managedObjectContext];

  v24 = MEMORY[0x1E695D5B8];
  v25 = +[PLDetectedFace entityName];
  v26 = [v24 entityForName:v25 inManagedObjectContext:managedObjectContext];

  entity = [changedObjectID entity];
  LOBYTE(v13) = [entity isEqual:v10];

  v28 = off_1E75601A8;
  if (v13)
  {
    goto LABEL_14;
  }

  entity2 = [changedObjectID entity];
  v30 = [entity2 isEqual:v44];

  if (v30)
  {
    v28 = off_1E7560228;
LABEL_14:
    entityName = [(__objc2_class *)*v28 entityName];
    goto LABEL_15;
  }

  entity3 = [changedObjectID entity];
  v32 = [entity3 isEqual:v43];

  if (v32)
  {
    v28 = off_1E7560198;
    goto LABEL_14;
  }

  entity4 = [changedObjectID entity];
  v34 = [entity4 isEqual:v17];

  if (v34)
  {
    v28 = off_1E7560260;
    goto LABEL_14;
  }

  entity5 = [changedObjectID entity];
  v36 = [entity5 isEqual:v20];

  if (v36)
  {
    v28 = off_1E7560AF0;
    goto LABEL_14;
  }

  entity6 = [changedObjectID entity];
  v38 = [entity6 isEqual:v23];

  if (v38)
  {
    v28 = off_1E75609D8;
    goto LABEL_14;
  }

  entity7 = [changedObjectID entity];
  v40 = [entity7 isEqual:v26];

  if (v40)
  {
    v28 = off_1E755FC50;
    goto LABEL_14;
  }

  entityName = 0;
LABEL_15:

  return entityName;
}

- (id)_changesTrackedBySearchForEntity:(id)entity
{
  v28 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  v5 = +[PLManagedAsset entityName];
  v6 = [entityCopy isEqualToString:v5];

  if (v6)
  {
    searchTrackedAttributes = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    assetAttributesTrackedForSearch = [searchTrackedAttributes assetAttributesTrackedForSearch];
LABEL_17:
    v23 = assetAttributesTrackedForSearch;

    goto LABEL_18;
  }

  v9 = +[PLMediaAnalysisAssetAttributes entityName];
  v10 = [entityCopy isEqualToString:v9];

  if (v10)
  {
    searchTrackedAttributes = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    assetAttributesTrackedForSearch = [searchTrackedAttributes mediaAnalysisAssetAttributesTrackedForSearch];
    goto LABEL_17;
  }

  v11 = +[PLManagedAlbum entityName];
  v12 = [entityCopy isEqualToString:v11];

  if (v12)
  {
    searchTrackedAttributes = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    assetAttributesTrackedForSearch = [searchTrackedAttributes managedAlbumAttributesTrackedForSearch];
    goto LABEL_17;
  }

  v13 = +[PLFetchingAlbum entityName];
  v14 = [entityCopy isEqualToString:v13];

  if (v14)
  {
    searchTrackedAttributes = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    assetAttributesTrackedForSearch = [searchTrackedAttributes fetchingAlbumAttributesTrackedForSearch];
    goto LABEL_17;
  }

  v15 = +[PLMemory entityName];
  v16 = [entityCopy isEqualToString:v15];

  if (v16)
  {
    searchTrackedAttributes = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    assetAttributesTrackedForSearch = [searchTrackedAttributes memoryAttributesTrackedForSearch];
    goto LABEL_17;
  }

  v17 = +[PLPhotosHighlight entityName];
  v18 = [entityCopy isEqualToString:v17];

  if (v18)
  {
    searchTrackedAttributes = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    assetAttributesTrackedForSearch = [searchTrackedAttributes highlightAttributesTrackedForSearch];
    goto LABEL_17;
  }

  v19 = +[PLPerson entityName];
  v20 = [entityCopy isEqualToString:v19];

  if (v20)
  {
    searchTrackedAttributes = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    assetAttributesTrackedForSearch = [searchTrackedAttributes personAttributesTrackedForSearch];
    goto LABEL_17;
  }

  v21 = +[PLDetectedFace entityName];
  v22 = [entityCopy isEqualToString:v21];

  if (v22)
  {
    searchTrackedAttributes = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    assetAttributesTrackedForSearch = [searchTrackedAttributes detectedFaceAttributesTrackedForSearch];
    goto LABEL_17;
  }

  v25 = PLSearchBackendLibraryChangeTrackingGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = 138412290;
    v27 = entityCopy;
    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Changes for entity: %@ are not tracked by Photos Search", &v26, 0xCu);
  }

  v23 = MEMORY[0x1E695E0F0];
LABEL_18:

  return v23;
}

- (BOOL)shouldUpdateSearchIndexForChange:(id)change entityName:(id)name photoLibrary:(id)library
{
  v34 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  nameCopy = name;
  libraryCopy = library;
  if (!changeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchTrackedChangeTypes.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"change"}];

    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = [(PLSearchTrackedChangeTypes *)self trackedEntityNameForChange:changeCopy photoLibrary:libraryCopy];
    goto LABEL_6;
  }

  if (!nameCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = nameCopy;
LABEL_6:
  v14 = v12;
  if (![v12 length])
  {
    goto LABEL_18;
  }

  changeType = [changeCopy changeType];
  if ((changeType & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v25 = 1;
    goto LABEL_24;
  }

  if (changeType == 1)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    updatedProperties = [changeCopy updatedProperties];
    v17 = [updatedProperties countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v27 = libraryCopy;
      v28 = nameCopy;
      v19 = *v30;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(updatedProperties);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          v22 = [(PLSearchTrackedChangeTypes *)self _changesTrackedBySearchForEntity:v14];
          name = [v21 name];
          v24 = [v22 containsObject:name];

          if (v24)
          {
            v25 = 1;
            goto LABEL_21;
          }
        }

        v18 = [updatedProperties countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v25 = 0;
LABEL_21:
      libraryCopy = v27;
      nameCopy = v28;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
LABEL_18:
    v25 = 0;
  }

LABEL_24:

  return v25;
}

- (PLSearchTrackedAttributes)searchTrackedAttributes
{
  searchTrackedAttributes = self->_searchTrackedAttributes;
  if (!searchTrackedAttributes)
  {
    v4 = objc_alloc_init(PLSearchTrackedAttributes);
    v5 = self->_searchTrackedAttributes;
    self->_searchTrackedAttributes = v4;

    searchTrackedAttributes = self->_searchTrackedAttributes;
  }

  return searchTrackedAttributes;
}

@end