@interface VCIntentDefinitionChange
- (BOOL)readFrom:(id)a3 error:(id *)a4;
- (BOOL)writeTo:(id)a3 error:(id *)a4;
- (NSString)checksum;
- (VCIntentDefinitionChange)initWithApplicationRecord:(id)a3 changeType:(int64_t)a4;
- (VCIntentDefinitionChange)initWithObjectIdentifier:(id)a3 changeType:(int64_t)a4;
@end

@implementation VCIntentDefinitionChange

- (BOOL)readFrom:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v7 readFrom:v6 error:a4];

  if (v8)
  {
    v9 = [v7 intentDefinition];
    v10 = [v9 files];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__VCIntentDefinitionChange_readFrom_error___block_invoke;
    v13[3] = &unk_2788FFC70;
    v13[4] = self;
    v11 = [v10 if_compactMap:v13];
    [(VCIntentDefinitionChange *)self setFiles:v11];
  }

  return v8;
}

id __43__VCIntentDefinitionChange_readFrom_error___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 data];
  if (v4 && (v5 = v4, [v3 name], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = MEMORY[0x277CFC3C8];
    v8 = [v3 data];
    v9 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D48]];
    v10 = [v3 name];
    v11 = [v7 fileWithData:v8 ofType:v9 proposedFilename:v10];

    v12 = [v3 name];
    [v11 setFilename:v12];
  }

  else
  {
    v13 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v3 name];
      v15 = [*(a1 + 32) objectIdentifier];
      v18 = 136315650;
      v19 = "[VCIntentDefinitionChange readFrom:error:]_block_invoke";
      v20 = 2114;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_ERROR, "%s Received file %{public}@ with empty filename or data for %{public}@, dropping", &v18, 0x20u);
    }

    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)writeTo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = 1;
  if ([(VCIntentDefinitionChange *)self changeType]!= 3)
  {
    v8 = objc_opt_new();
    v9 = [(VCIntentDefinitionChange *)self objectIdentifier];
    [v8 setAssociatedBundleID:v9];

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__6187;
    v24 = __Block_byref_object_dispose__6188;
    v25 = 0;
    v10 = [(VCIntentDefinitionChange *)self files];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__VCIntentDefinitionChange_writeTo_error___block_invoke;
    v19[3] = &unk_2788FFC48;
    v19[4] = self;
    v19[5] = &v20;
    v19[6] = &v26;
    v11 = [v10 if_compactMap:v19];
    v12 = [v11 mutableCopy];
    [v8 setFiles:v12];

    v7 = *(v27 + 24);
    if (v7)
    {
      v13 = objc_opt_new();
      v14 = [(VCIntentDefinitionChange *)self objectIdentifier];
      [v13 setAssociatedBundleID:v14];

      v15 = [(VCIntentDefinitionChange *)self changeType];
      if (v15 == 2)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      if (v15 == 3)
      {
        v17 = 3;
      }

      else
      {
        v17 = v16;
      }

      [v13 setChangeType:v17];
      [v13 setIntentDefinition:v8];
      [v13 writeTo:v6];
    }

    else if (a4)
    {
      *a4 = v21[5];
    }

    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(&v26, 8);
  }

  return v7;
}

id __42__VCIntentDefinitionChange_writeTo_error___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 filename];
  [v4 setName:v5];

  v17 = 0;
  v6 = [v3 mappedDataWithError:&v17];

  v7 = v17;
  v8 = v17;
  [v4 setData:v6];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  }

  v9 = [v4 name];
  if (!v9 || (v10 = v9, [v4 data], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
  {
    v12 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v4 name];
      v14 = [*(a1 + 32) objectIdentifier];
      *buf = 136315906;
      v19 = "[VCIntentDefinitionChange writeTo:error:]_block_invoke";
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      v24 = 2114;
      v25 = v8;
      _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_ERROR, "%s Unable to read %{public}@ when syncing intent definitions for %{public}@: %{public}@", buf, 0x2Au);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSString)checksum
{
  v44 = *MEMORY[0x277D85DE8];
  checksum = self->_checksum;
  if (checksum)
  {
    v3 = checksum;
  }

  else
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x8010000000;
    v36 = "";
    memset(&v37, 0, sizeof(v37));
    CC_SHA1_Init(&v37);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v4 = [(VCIntentDefinitionChange *)self files];
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v42 count:16];
    if (v5)
    {
      v6 = *v30;
      obj = v4;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          v9 = objc_autoreleasePoolPush();
          v10 = [v8 filename];
          v11 = [v10 dataUsingEncoding:4];

          v12 = v34;
          v13 = v11;
          CC_SHA1_Update((v12 + 4), [v11 bytes], objc_msgSend(v11, "length"));
          if ([v8 representationType])
          {
            v14 = [v8 inputStream];
            [v14 open];
            while ([v14 hasBytesAvailable])
            {
              v15 = objc_autoreleasePoolPush();
              v16 = [v14 read:data maxLength:0x2000];
              if (v16 < 0)
              {
                v18 = getWFWatchSyncLogObject();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  v19 = [v14 streamError];
                  *buf = 136315394;
                  v39 = "[VCIntentDefinitionChange checksum]";
                  v40 = 2114;
                  v41 = v19;
                  _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_ERROR, "%s Error calculating intent definition file checksum: %{public}@", buf, 0x16u);
                }

                v17 = 1;
              }

              else if (v16)
              {
                CC_SHA1_Update((v34 + 4), data, v16);
                v17 = 0;
              }

              else
              {
                v17 = 5;
              }

              objc_autoreleasePoolPop(v15);
              if (v17)
              {
                if (v17 != 5)
                {
                  goto LABEL_22;
                }

                break;
              }
            }

            [v14 close];
            v17 = 0;
          }

          else
          {
            v14 = [v8 data];
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __36__VCIntentDefinitionChange_checksum__block_invoke;
            v28[3] = &unk_2788FFC20;
            v28[4] = &v33;
            [v14 enumerateByteRangesUsingBlock:v28];
            v17 = 3;
          }

LABEL_22:

          objc_autoreleasePoolPop(v9);
          if (v17 != 3 && v17)
          {

            v3 = 0;
            goto LABEL_30;
          }
        }

        v4 = obj;
        v5 = [obj countByEnumeratingWithState:&v29 objects:v42 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    CC_SHA1_Final(buf, (v34 + 4));
    v20 = [MEMORY[0x277CCAB68] stringWithCapacity:40];
    for (j = 0; j != 20; ++j)
    {
      [v20 appendFormat:@"%02x", buf[j]];
    }

    v22 = self->_checksum;
    self->_checksum = v20;
    v23 = v20;

    v3 = self->_checksum;
LABEL_30:
    _Block_object_dispose(&v33, 8);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v3;
}

- (VCIntentDefinitionChange)initWithObjectIdentifier:(id)a3 changeType:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = VCIntentDefinitionChange;
  v7 = [(VCIntentDefinitionChange *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    objectIdentifier = v7->_objectIdentifier;
    v7->_objectIdentifier = v8;

    v7->_changeType = a4;
    v10 = v7;
  }

  return v7;
}

- (VCIntentDefinitionChange)initWithApplicationRecord:(id)a3 changeType:(int64_t)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"VCIntentDefinitionChange.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"applicationRecord"}];
  }

  v8 = [v7 bundleIdentifier];
  v9 = [(VCIntentDefinitionChange *)self initWithObjectIdentifier:v8 changeType:a4];

  if (v9)
  {
    v10 = [MEMORY[0x277CD3A68] appInfoWithApplicationRecord:v7];
    v11 = [v10 supportedActions];
    v12 = [v11 count];

    if (v12)
    {
      v13 = v7;
      v14 = objc_opt_new();
      v15 = [v13 if_allIntentDefinitionURLs];
      v16 = [v15 allObjects];
      [v14 addObjectsFromArray:v16];

      v17 = INIntentDefinitionLocalizableFileURLsForBundleRecord();

      [v14 addObjectsFromArray:v17];
      v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"path" ascending:1];
      v32[0] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
      [v14 sortUsingDescriptors:v19];

      v20 = [v14 if_compactMap:&__block_literal_global_6211];
      files = v9->_files;
      v9->_files = v20;

      v22 = v9->_files;
      v23 = MEMORY[0x277CFC3C8];
      v24 = [v10 data];
      v25 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D48]];
      v26 = [v23 fileWithData:v24 ofType:v25 proposedFilename:@"AppInfo.appinfo"];
      v27 = [(NSArray *)v22 arrayByAddingObject:v26];
      v28 = v9->_files;
      v9->_files = v27;

      v12 = v9;
    }
  }

  else
  {
    v12 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v12;
}

id __65__VCIntentDefinitionChange_initWithApplicationRecord_changeType___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFC3C8];
  v3 = MEMORY[0x277D79F68];
  v4 = *MEMORY[0x277CE1D48];
  v5 = a2;
  v6 = [v3 typeWithUTType:v4];
  v7 = [v2 fileWithURL:v5 options:0 ofType:v6];

  v8 = [v5 lastPathComponent];

  [v7 setFilename:v8];

  return v7;
}

@end