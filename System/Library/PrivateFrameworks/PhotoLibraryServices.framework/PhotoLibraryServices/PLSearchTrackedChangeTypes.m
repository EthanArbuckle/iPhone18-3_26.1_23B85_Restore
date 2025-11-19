@interface PLSearchTrackedChangeTypes
+ (BOOL)isEntityIndexedBySearch:(id)a3;
+ (id)entityNamesIndexedBySearch;
- (BOOL)shouldUpdateSearchIndexForChange:(id)a3 entityName:(id)a4 photoLibrary:(id)a5;
- (PLSearchTrackedAttributes)searchTrackedAttributes;
- (id)_changesTrackedBySearchForEntity:(id)a3;
- (id)trackedEntityNameForChange:(id)a3 photoLibrary:(id)a4;
- (id)uuidForPersistentHistoryDeletionChange:(id)a3 photoLibrary:(id)a4;
@end

@implementation PLSearchTrackedChangeTypes

+ (BOOL)isEntityIndexedBySearch:(id)a3
{
  v4 = a3;
  v5 = [a1 entityNamesIndexedBySearch];
  v6 = [v5 containsObject:v4];

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

- (id)uuidForPersistentHistoryDeletionChange:(id)a3 photoLibrary:(id)a4
{
  v33[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 changeType] != 2)
  {
    v24 = 0;
    goto LABEL_15;
  }

  v8 = [(PLSearchTrackedChangeTypes *)self trackedEntityNameForChange:v6 photoLibrary:v7];
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
    v23 = [v6 tombstone];
    v24 = [v23 objectForKeyedSubscript:v22];

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
      v30 = v6;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Unable to locate UUID from deletion change: %@ for entity: %@", &v29, 0x16u);
    }
  }

LABEL_15:

  return v24;
}

- (id)trackedEntityNameForChange:(id)a3 photoLibrary:(id)a4
{
  v5 = a4;
  v6 = [a3 changedObjectID];
  v7 = [v5 managedObjectContext];

  v8 = MEMORY[0x1E695D5B8];
  v9 = +[PLManagedAsset entityName];
  v10 = [v8 entityForName:v9 inManagedObjectContext:v7];

  v11 = MEMORY[0x1E695D5B8];
  v12 = +[PLMediaAnalysisAssetAttributes entityName];
  v44 = [v11 entityForName:v12 inManagedObjectContext:v7];

  v13 = MEMORY[0x1E695D5B8];
  v14 = +[PLManagedAlbum entityName];
  v43 = [v13 entityForName:v14 inManagedObjectContext:v7];

  v15 = MEMORY[0x1E695D5B8];
  v16 = +[PLMemory entityName];
  v17 = [v15 entityForName:v16 inManagedObjectContext:v7];

  v18 = MEMORY[0x1E695D5B8];
  v19 = +[PLPhotosHighlight entityName];
  v20 = [v18 entityForName:v19 inManagedObjectContext:v7];

  v21 = MEMORY[0x1E695D5B8];
  v22 = +[PLPerson entityName];
  v23 = [v21 entityForName:v22 inManagedObjectContext:v7];

  v24 = MEMORY[0x1E695D5B8];
  v25 = +[PLDetectedFace entityName];
  v26 = [v24 entityForName:v25 inManagedObjectContext:v7];

  v27 = [v6 entity];
  LOBYTE(v13) = [v27 isEqual:v10];

  v28 = off_1E75601A8;
  if (v13)
  {
    goto LABEL_14;
  }

  v29 = [v6 entity];
  v30 = [v29 isEqual:v44];

  if (v30)
  {
    v28 = off_1E7560228;
LABEL_14:
    v41 = [(__objc2_class *)*v28 entityName];
    goto LABEL_15;
  }

  v31 = [v6 entity];
  v32 = [v31 isEqual:v43];

  if (v32)
  {
    v28 = off_1E7560198;
    goto LABEL_14;
  }

  v33 = [v6 entity];
  v34 = [v33 isEqual:v17];

  if (v34)
  {
    v28 = off_1E7560260;
    goto LABEL_14;
  }

  v35 = [v6 entity];
  v36 = [v35 isEqual:v20];

  if (v36)
  {
    v28 = off_1E7560AF0;
    goto LABEL_14;
  }

  v37 = [v6 entity];
  v38 = [v37 isEqual:v23];

  if (v38)
  {
    v28 = off_1E75609D8;
    goto LABEL_14;
  }

  v39 = [v6 entity];
  v40 = [v39 isEqual:v26];

  if (v40)
  {
    v28 = off_1E755FC50;
    goto LABEL_14;
  }

  v41 = 0;
LABEL_15:

  return v41;
}

- (id)_changesTrackedBySearchForEntity:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[PLManagedAsset entityName];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    v8 = [v7 assetAttributesTrackedForSearch];
LABEL_17:
    v23 = v8;

    goto LABEL_18;
  }

  v9 = +[PLMediaAnalysisAssetAttributes entityName];
  v10 = [v4 isEqualToString:v9];

  if (v10)
  {
    v7 = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    v8 = [v7 mediaAnalysisAssetAttributesTrackedForSearch];
    goto LABEL_17;
  }

  v11 = +[PLManagedAlbum entityName];
  v12 = [v4 isEqualToString:v11];

  if (v12)
  {
    v7 = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    v8 = [v7 managedAlbumAttributesTrackedForSearch];
    goto LABEL_17;
  }

  v13 = +[PLFetchingAlbum entityName];
  v14 = [v4 isEqualToString:v13];

  if (v14)
  {
    v7 = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    v8 = [v7 fetchingAlbumAttributesTrackedForSearch];
    goto LABEL_17;
  }

  v15 = +[PLMemory entityName];
  v16 = [v4 isEqualToString:v15];

  if (v16)
  {
    v7 = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    v8 = [v7 memoryAttributesTrackedForSearch];
    goto LABEL_17;
  }

  v17 = +[PLPhotosHighlight entityName];
  v18 = [v4 isEqualToString:v17];

  if (v18)
  {
    v7 = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    v8 = [v7 highlightAttributesTrackedForSearch];
    goto LABEL_17;
  }

  v19 = +[PLPerson entityName];
  v20 = [v4 isEqualToString:v19];

  if (v20)
  {
    v7 = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    v8 = [v7 personAttributesTrackedForSearch];
    goto LABEL_17;
  }

  v21 = +[PLDetectedFace entityName];
  v22 = [v4 isEqualToString:v21];

  if (v22)
  {
    v7 = [(PLSearchTrackedChangeTypes *)self searchTrackedAttributes];
    v8 = [v7 detectedFaceAttributesTrackedForSearch];
    goto LABEL_17;
  }

  v25 = PLSearchBackendLibraryChangeTrackingGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = 138412290;
    v27 = v4;
    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Changes for entity: %@ are not tracked by Photos Search", &v26, 0xCu);
  }

  v23 = MEMORY[0x1E695E0F0];
LABEL_18:

  return v23;
}

- (BOOL)shouldUpdateSearchIndexForChange:(id)a3 entityName:(id)a4 photoLibrary:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PLSearchTrackedChangeTypes.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"change"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = [(PLSearchTrackedChangeTypes *)self trackedEntityNameForChange:v9 photoLibrary:v11];
    goto LABEL_6;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = v10;
LABEL_6:
  v14 = v12;
  if (![v12 length])
  {
    goto LABEL_18;
  }

  v15 = [v9 changeType];
  if ((v15 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v25 = 1;
    goto LABEL_24;
  }

  if (v15 == 1)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = [v9 updatedProperties];
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v27 = v11;
      v28 = v10;
      v19 = *v30;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          v22 = [(PLSearchTrackedChangeTypes *)self _changesTrackedBySearchForEntity:v14];
          v23 = [v21 name];
          v24 = [v22 containsObject:v23];

          if (v24)
          {
            v25 = 1;
            goto LABEL_21;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v25 = 0;
LABEL_21:
      v11 = v27;
      v10 = v28;
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