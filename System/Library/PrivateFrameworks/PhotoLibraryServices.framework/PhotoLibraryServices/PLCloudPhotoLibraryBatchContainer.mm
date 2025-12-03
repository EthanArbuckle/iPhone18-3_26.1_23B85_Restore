@interface PLCloudPhotoLibraryBatchContainer
- (PLCloudPhotoLibraryBatchContainer)init;
- (id)batchesSplitForError;
- (id)description;
- (id)lastAddedRecord;
- (void)addRecord:(id)record;
@end

@implementation PLCloudPhotoLibraryBatchContainer

- (id)description
{
  v16 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  records = [(CPLChangeBatch *)self->_batch records];
  v5 = [records countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(records);
        }

        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@\r", *(*(&v11 + 1) + 8 * i)];
        [string appendString:v9];
      }

      v6 = [records countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return string;
}

- (id)batchesSplitForError
{
  v31[1] = *MEMORY[0x1E69E9840];
  if ([(PLCloudPhotoLibraryBatchContainer *)self reachedMinSplit]|| [(PLCloudPhotoLibraryBatchContainer *)self count]<= 1)
  {
    [(PLCloudPhotoLibraryBatchContainer *)self setWasSplit:1];
    [(PLCloudPhotoLibraryBatchContainer *)self incrementRetryCount];
    v31[0] = self;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    goto LABEL_31;
  }

  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[PLCloudPhotoLibraryBatchContainer count](self, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(CPLChangeBatch *)self->_batch records];
  v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_30;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *v27;
  do
  {
    v10 = 0;
    v11 = v7;
    v23 = v5;
    do
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v26 + 1) + 8 * v10);
      if (!v11)
      {
        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v8 != 0;
      }

      else
      {
        v14 = v9;
        v15 = v3;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          masterScopedIdentifier = [v12 masterScopedIdentifier];
          scopedIdentifier = [v8 scopedIdentifier];
          v22 = [masterScopedIdentifier isEqual:scopedIdentifier];

          if (v22)
          {
            goto LABEL_17;
          }

          v8 = 0;
          v13 = 1;
        }

        else
        {
          v18 = [(PLCloudPhotoLibraryBatchContainer *)v6 count];
          v19 = [(PLCloudPhotoLibraryBatchContainer *)self count];

          v8 = 0;
          if (v18 < v19 >> 1)
          {
LABEL_17:
            v3 = v15;
            v9 = v14;
            v5 = v23;
LABEL_18:
            if (v6)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

          v13 = 0;
        }

        v3 = v15;
        v9 = v14;
        v5 = v23;
      }

      [(PLCloudPhotoLibraryBatchContainer *)v6 setReachedMinSplit:v13];

LABEL_23:
      v6 = objc_alloc_init(PLCloudPhotoLibraryBatchContainer);
      [(PLCloudPhotoLibraryBatchContainer *)v6 setRetryCount:[(PLCloudPhotoLibraryBatchContainer *)self retryCount]+ 1];
      [(PLCloudPhotoLibraryBatchContainer *)v6 setWasSplit:1];
      [v3 addObject:v6];
LABEL_24:
      [(PLCloudPhotoLibraryBatchContainer *)v6 addRecord:v12];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v12;

        v8 = v20;
      }

      v7 = v12;

      ++v10;
      v11 = v7;
    }

    while (v5 != v10);
    v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v5);
LABEL_30:

  v2 = v3;
LABEL_31:

  return v2;
}

- (id)lastAddedRecord
{
  records = [(CPLChangeBatch *)self->_batch records];
  lastObject = [records lastObject];

  return lastObject;
}

- (void)addRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    [(CPLChangeBatch *)self->_batch addRecord:recordCopy];
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v5 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Trying to add empty record to the batch, skipping.", v6, 2u);
    }
  }
}

- (PLCloudPhotoLibraryBatchContainer)init
{
  v8.receiver = self;
  v8.super_class = PLCloudPhotoLibraryBatchContainer;
  v2 = [(PLCloudPhotoLibraryBatchContainer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6994A88]);
    batch = v2->_batch;
    v2->_batch = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    computeSyncRelevantAssetsInBatch = v2->_computeSyncRelevantAssetsInBatch;
    v2->_computeSyncRelevantAssetsInBatch = v5;
  }

  return v2;
}

@end