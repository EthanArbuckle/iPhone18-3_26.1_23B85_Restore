@interface PLCloudRecordOrganizer
+ (BOOL)records:(id)records containsScopedIdentifier:(id)identifier;
- (PLCloudRecordOrganizer)initWithPhotoLibrary:(id)library;
- (void)organizeRecords:(id)records;
@end

@implementation PLCloudRecordOrganizer

- (void)organizeRecords:(id)records
{
  v39 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [recordsCopy countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v5)
  {
    v7 = v5;
    p_deletePersonRecords = &self->_deletePersonRecords;
    p_expungedRecords = &self->_expungedRecords;
    v10 = *v31;
    *&v6 = 138412290;
    v29 = v6;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(recordsCopy);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        changeType = [v12 changeType];
        if ((changeType & 0x400) == 0)
        {
          inExpunged = [v12 inExpunged];
          v15 = p_expungedRecords;
          if (inExpunged)
          {
LABEL_11:
            [*v15 addObject:v12];
            if ([v12 inExpunged])
            {
              goto LABEL_60;
            }

            if ((changeType & 0x400) != 0)
            {
              goto LABEL_17;
            }
          }

          else if ([v12 inExpunged])
          {
            goto LABEL_60;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            masterRecords = self->_masterRecords;
LABEL_15:
            [(NSMutableArray *)masterRecords addObject:v12];
            goto LABEL_60;
          }

          goto LABEL_17;
        }

        [(NSMutableArray *)self->_deleteRecords addObject:v12];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v15 = p_deletePersonRecords;
        if (isKindOfClass)
        {
          goto LABEL_11;
        }

        if ([v12 inExpunged])
        {
          goto LABEL_60;
        }

LABEL_17:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v12;
          if ([v18 hasChangeType:16])
          {
            [(NSMutableArray *)self->_assetRecordsWithContainerChange addObject:v18];
          }

          if ((changeType & 0x400) == 0)
          {
            [(NSMutableArray *)self->_assetRecords addObject:v18];
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v12;
            if ([v19 hasChangeType:2])
            {
              [(NSMutableArray *)self->_albumRecordsWithContainerChange addObject:v19];
            }

            if ((changeType & 0x400) == 0)
            {
              v20 = v19;
              if (![v20 albumType] || objc_msgSend(v20, "albumType") == 3 || objc_msgSend(v20, "albumType") == 7)
              {
                scopedIdentifier = [v20 scopedIdentifier];
                identifier = [scopedIdentifier identifier];

                if ([@"----Root-Folder----" isEqualToString:identifier] & 1) != 0 || (objc_msgSend(@"----Project-Root-Folder----", "isEqualToString:", identifier))
                {
                  if ([@"----Root-Folder----" isEqualToString:identifier])
                  {
                    v23 = [(PLGenericAlbum *)PLManagedFolder rootFolderInLibrary:self->_photoLibrary];
                    goto LABEL_41;
                  }

                  if ([@"----Project-Root-Folder----" isEqualToString:identifier])
                  {
                    v23 = [(PLGenericAlbum *)PLManagedFolder projectAlbumRootFolderInLibrary:self->_photoLibrary];
LABEL_41:
                    v24 = v23;
                  }

                  else
                  {
                    if ((*MEMORY[0x1E6994D48] & 1) == 0)
                    {
                      v25 = __CPLAssetsdOSLogDomain();
                      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v35 = v20;
                        v36 = 2112;
                        v37 = identifier;
                        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Received unexpected root folder type in CPLAlbumChange: %@, with identifier: %@", buf, 0x16u);
                      }
                    }

                    v24 = 0;
                  }

                  customSortAscending = [v24 customSortAscending];
                  if (customSortAscending != [v20 albumSortAscending])
                  {
                    [v24 setCustomSortAscending:{objc_msgSend(v20, "albumSortAscending")}];
                  }

                  customSortKey = [v24 customSortKey];
                  if (customSortKey != [v20 albumSortType])
                  {
                    [v24 setCustomSortKey:{objc_msgSend(v20, "albumSortType")}];
                  }

                  p_deletePersonRecords = &self->_deletePersonRecords;
                  if ([v24 cloudLocalState] != 1)
                  {
                    [v24 setCloudLocalState:1];
                  }
                }

                else
                {
                  [(NSMutableArray *)self->_albumRecords addObject:v20];
                }

LABEL_57:
              }

              else if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                identifier = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v29;
                  v35 = v20;
                  _os_log_impl(&dword_19BF1F000, identifier, OS_LOG_TYPE_DEFAULT, "We are dropping record %@, not yet handling that type", buf, 0xCu);
                }

                goto LABEL_57;
              }

              p_expungedRecords = &self->_expungedRecords;
            }

            goto LABEL_60;
          }

          if ((changeType & 0x400) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              masterRecords = self->_personRecords;
              goto LABEL_15;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              masterRecords = self->_memoryRecords;
              goto LABEL_15;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              masterRecords = self->_suggestionRecords;
              goto LABEL_15;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              masterRecords = self->_socialGroupRecords;
              goto LABEL_15;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              masterRecords = self->_faceCropRecords;
              goto LABEL_15;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              masterRecords = self->_scopeRecords;
              goto LABEL_15;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              masterRecords = self->_commentRecords;
              goto LABEL_15;
            }
          }
        }

LABEL_60:
        ++v11;
      }

      while (v7 != v11);
      v28 = [recordsCopy countByEnumeratingWithState:&v30 objects:v38 count:16];
      v7 = v28;
    }

    while (v28);
  }
}

- (PLCloudRecordOrganizer)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v40.receiver = self;
  v40.super_class = PLCloudRecordOrganizer;
  v6 = [(PLCloudRecordOrganizer *)&v40 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    assetRecordsWithContainerChange = v7->_assetRecordsWithContainerChange;
    v7->_assetRecordsWithContainerChange = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    albumRecordsWithContainerChange = v7->_albumRecordsWithContainerChange;
    v7->_albumRecordsWithContainerChange = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    personRecords = v7->_personRecords;
    v7->_personRecords = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    scopeRecords = v7->_scopeRecords;
    v7->_scopeRecords = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    masterRecords = v7->_masterRecords;
    v7->_masterRecords = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    assetRecords = v7->_assetRecords;
    v7->_assetRecords = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    albumRecords = v7->_albumRecords;
    v7->_albumRecords = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    memoryRecords = v7->_memoryRecords;
    v7->_memoryRecords = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    faceCropRecords = v7->_faceCropRecords;
    v7->_faceCropRecords = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deleteRecords = v7->_deleteRecords;
    v7->_deleteRecords = v26;

    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletePersonRecords = v7->_deletePersonRecords;
    v7->_deletePersonRecords = v28;

    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    expungedRecords = v7->_expungedRecords;
    v7->_expungedRecords = v30;

    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    suggestionRecords = v7->_suggestionRecords;
    v7->_suggestionRecords = v32;

    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    socialGroupRecords = v7->_socialGroupRecords;
    v7->_socialGroupRecords = v34;

    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    commentRecords = v7->_commentRecords;
    v7->_commentRecords = v36;

    v38 = v7;
  }

  return v7;
}

+ (BOOL)records:(id)records containsScopedIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = recordsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        scopedIdentifier = [*(*(&v14 + 1) + 8 * i) scopedIdentifier];
        v12 = [scopedIdentifier isEqual:identifierCopy];

        if (v12)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

@end