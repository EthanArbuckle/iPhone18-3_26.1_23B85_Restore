@interface PLCloudPhotoLibraryBatchManager
- (PLCloudPhotoLibraryBatchManager)init;
- (id)drainBatches;
- (void)addComputeSyncRelevantAsset:(id)asset;
- (void)addRecord:(id)record ignoreBatchSize:(BOOL)size;
- (void)dealloc;
- (void)reset;
@end

@implementation PLCloudPhotoLibraryBatchManager

- (id)drainBatches
{
  batches = self->_batches;
  if (batches)
  {
    self->_wasDrained = 1;
  }

  return batches;
}

- (void)reset
{
  batches = self->_batches;
  self->_batches = 0;

  currentBatch = self->_currentBatch;
  self->_currentBatch = 0;

  [(NSMutableSet *)self->_masterHistory removeAllObjects];
  self->_resourceBudget = 0;
}

- (void)addComputeSyncRelevantAsset:(id)asset
{
  if (asset)
  {
    currentBatch = self->_currentBatch;
    if (currentBatch)
    {
      assetCopy = asset;
      computeSyncRelevantAssetsInBatch = [(PLCloudPhotoLibraryBatchContainer *)currentBatch computeSyncRelevantAssetsInBatch];
      [computeSyncRelevantAssetsInBatch addObject:assetCopy];
    }
  }
}

- (void)addRecord:(id)record ignoreBatchSize:(BOOL)size
{
  sizeCopy = size;
  v32 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  scopedIdentifier = [(PLCloudPhotoLibraryBatchContainer *)recordCopy scopedIdentifier];

  if (!scopedIdentifier)
  {
    recordCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempted to add a CPLRecordChange with nil scopedIdentifier: %@", recordCopy];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v11 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v31 = recordCopy;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }
    }

    [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Photo Library state" message:@"Please file a Radar against Photos" radarTitle:@"TTR: Attempting to add a cloud record with nil scopedIdentifier to the upload batch" radarDescription:recordCopy];
    goto LABEL_14;
  }

  if (self->_wasDrained)
  {
    [(PLCloudPhotoLibraryBatchManager *)self reset];
    self->_wasDrained = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_16:
    if (sizeCopy && [(PLCloudPhotoLibraryBatchContainer *)self->_currentBatch count]<= 0xC8)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        lastAddedRecord = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(lastAddedRecord, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, lastAddedRecord, OS_LOG_TYPE_DEBUG, "Skip splitting batch, ignoreBatchSize = YES", buf, 2u);
        }

        goto LABEL_51;
      }

LABEL_52:
      if (!self->_batches)
      {
        v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
        batches = self->_batches;
        self->_batches = v26;
      }

      if (!self->_currentBatch)
      {
        v28 = objc_alloc_init(PLCloudPhotoLibraryBatchContainer);
        currentBatch = self->_currentBatch;
        self->_currentBatch = v28;

        [(NSMutableArray *)self->_batches addObject:self->_currentBatch];
      }

      if ([(PLCloudPhotoLibraryBatchContainer *)recordCopy supportsResources])
      {
        self->_resourceBudget += [(PLCloudPhotoLibraryBatchContainer *)recordCopy realResourceSize];
      }

      [(PLCloudPhotoLibraryBatchContainer *)self->_currentBatch addRecord:recordCopy];
      goto LABEL_59;
    }

    v15 = self->_currentBatch;
    if (!v15)
    {
      goto LABEL_52;
    }

    if ([(PLCloudPhotoLibraryBatchContainer *)v15 count]>= 0x32)
    {
      lastAddedRecord = [(PLCloudPhotoLibraryBatchContainer *)self->_currentBatch lastAddedRecord];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (*MEMORY[0x1E6994D48])
        {
LABEL_51:

          goto LABEL_52;
        }

        p_super = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
        {
          v17 = self->_currentBatch;
          *buf = 138412290;
          v31 = v17;
          _os_log_impl(&dword_19BF1F000, p_super, OS_LOG_TYPE_DEBUG, "Skip splitting batch %@, the last record is a CPLMasterChange", buf, 0xCu);
        }
      }

      else
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v24 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v25 = self->_currentBatch;
            *buf = 138412290;
            v31 = v25;
            _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEBUG, "Splitting batch %@.", buf, 0xCu);
          }
        }

        p_super = &self->_currentBatch->super;
        self->_currentBatch = 0;
      }

      goto LABEL_51;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(PLCloudPhotoLibraryBatchContainer *)self->_currentBatch count]>= 5)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v18 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = self->_currentBatch;
          *buf = 138412290;
          v31 = v19;
          v20 = "Splitting batch for memories %@.";
LABEL_42:
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
          goto LABEL_43;
        }

        goto LABEL_43;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [(PLCloudPhotoLibraryBatchContainer *)self->_currentBatch count]>= 5)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v18 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v21 = self->_currentBatch;
            *buf = 138412290;
            v31 = v21;
            v20 = "Splitting batch for social group %@.";
            goto LABEL_42;
          }

LABEL_43:
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [(PLCloudPhotoLibraryBatchContainer *)self->_currentBatch count]< 0xA)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [(PLCloudPhotoLibraryBatchContainer *)recordCopy albumType]!= 7 || ![(PLCloudPhotoLibraryBatchContainer *)self->_currentBatch count])
          {
            goto LABEL_52;
          }

          goto LABEL_44;
        }

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v18 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v22 = self->_currentBatch;
            *buf = 138412290;
            v31 = v22;
            v20 = "Splitting batch for sugggestions %@.";
            goto LABEL_42;
          }

          goto LABEL_43;
        }
      }
    }

LABEL_44:
    v23 = self->_currentBatch;
    self->_currentBatch = 0;

    goto LABEL_52;
  }

  masterHistory = self->_masterHistory;
  scopedIdentifier2 = [(PLCloudPhotoLibraryBatchContainer *)recordCopy scopedIdentifier];
  LOBYTE(masterHistory) = [(NSMutableSet *)masterHistory containsObject:scopedIdentifier2];

  if ((masterHistory & 1) == 0)
  {
    v12 = self->_masterHistory;
    scopedIdentifier3 = [(PLCloudPhotoLibraryBatchContainer *)recordCopy scopedIdentifier];
    [(NSMutableSet *)v12 addObject:scopedIdentifier3];

    goto LABEL_16;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    recordCopy = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(recordCopy, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v31 = recordCopy;
      _os_log_impl(&dword_19BF1F000, recordCopy, OS_LOG_TYPE_DEBUG, "Duplicate master detected, dropping this second master record %@", buf, 0xCu);
    }

LABEL_14:
  }

LABEL_59:
}

- (void)dealloc
{
  batches = self->_batches;
  self->_batches = 0;

  currentBatch = self->_currentBatch;
  self->_currentBatch = 0;

  masterHistory = self->_masterHistory;
  self->_masterHistory = 0;

  v6.receiver = self;
  v6.super_class = PLCloudPhotoLibraryBatchManager;
  [(PLCloudPhotoLibraryBatchManager *)&v6 dealloc];
}

- (PLCloudPhotoLibraryBatchManager)init
{
  v10.receiver = self;
  v10.super_class = PLCloudPhotoLibraryBatchManager;
  v2 = [(PLCloudPhotoLibraryBatchManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    batches = v2->_batches;
    v2->_batches = 0;

    currentBatch = v3->_currentBatch;
    v3->_currentBatch = 0;

    v3->_wasDrained = 0;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    masterHistory = v3->_masterHistory;
    v3->_masterHistory = v6;

    v3->_resourceBudget = 0;
    v8 = v3;
  }

  return v3;
}

@end