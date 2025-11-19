@interface PBFDataStoreArchiveAdjudicator
- (BOOL)deleteArchive:(id)a3 error:(id *)a4;
- (BOOL)markArchivesAsPurgable:(id *)a3;
- (BOOL)removeArchives:(id *)a3;
- (BOOL)restoreArchive:(id)a3 backupExistingDataStoreIfPossible:(BOOL)a4 error:(id *)a5;
- (NSArray)archiveNames;
- (NSArray)archives;
- (PBFDataStoreArchiveAdjudicator)initWithDataStoreBaseURL:(id)a3 archiveBaseURL:(id)a4;
- (id)archiveDataStoreVersion:(unint64_t)a3 name:(id)a4 options:(id)a5 removeAfterSuccess:(BOOL)a6 error:(id *)a7;
- (id)archiveDataStoreVersion:(unint64_t)a3 toURL:(id)a4 options:(id)a5 removeAfterSuccess:(BOOL)a6 error:(id *)a7;
- (id)archiveForName:(id)a3;
@end

@implementation PBFDataStoreArchiveAdjudicator

- (PBFDataStoreArchiveAdjudicator)initWithDataStoreBaseURL:(id)a3 archiveBaseURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PBFDataStoreArchiveAdjudicator;
  v8 = [(PBFDataStoreArchiveAdjudicator *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    dataStoreBaseURL = v8->_dataStoreBaseURL;
    v8->_dataStoreBaseURL = v9;

    v11 = [v7 copy];
    archiveBaseURL = v8->_archiveBaseURL;
    v8->_archiveBaseURL = v11;
  }

  return v8;
}

- (NSArray)archives
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 contentsOfDirectoryAtURL:self->_archiveBaseURL includingPropertiesForKeys:0 options:0 error:0];
  v5 = [v4 bs_filter:&__block_literal_global_21];
  v6 = [v5 bs_mapNoNulls:&__block_literal_global_28];
  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_32];

  return v7;
}

uint64_t __42__PBFDataStoreArchiveAdjudicator_archives__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFileURL])
  {
    v3 = [v2 pathExtension];
    v4 = [v3 isEqualToString:@"pbds"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

PBFDataStoreArchiveMetadata *__42__PBFDataStoreArchiveAdjudicator_archives__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PBFDataStoreArchiveMetadata alloc] initWithURL:v2];

  return v3;
}

uint64_t __42__PBFDataStoreArchiveAdjudicator_archives__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (NSArray)archiveNames
{
  v2 = [(PBFDataStoreArchiveAdjudicator *)self archives];
  v3 = [v2 bs_mapNoNulls:&__block_literal_global_35];

  return v3;
}

id __46__PBFDataStoreArchiveAdjudicator_archiveNames__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 archiveURL];
  v3 = [v2 lastPathComponent];
  v4 = [v3 stringByDeletingPathExtension];

  return v4;
}

- (id)archiveForName:(id)a3
{
  v4 = a3;
  v5 = [(PBFDataStoreArchiveAdjudicator *)self archives];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__PBFDataStoreArchiveAdjudicator_archiveForName___block_invoke;
  v9[3] = &unk_2782C8A50;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __49__PBFDataStoreArchiveAdjudicator_archiveForName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 archiveURL];
  v4 = [v3 lastPathComponent];
  v5 = [v4 stringByDeletingPathExtension];
  v6 = [v5 isEqual:*(a1 + 32)];

  return v6;
}

- (id)archiveDataStoreVersion:(unint64_t)a3 toURL:(id)a4 options:(id)a5 removeAfterSuccess:(BOOL)a6 error:(id *)a7
{
  v7 = a6;
  v27 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:self->_dataStoreBaseURL version:a3];
  v15 = 0;
  if ([v14 checkResourceIsReachableAndReturnError:0])
  {
    v16 = [[PBFDataStoreArchiver alloc] initWithDataStoreAtURL:v14];
    [(PBFDataStoreArchiver *)v16 setOptions:v12];
    v22 = 0;
    v17 = [(PBFDataStoreArchiver *)v16 archiveToFileAtURL:v11 error:&v22];
    v18 = v22;
    v19 = PBFLogMigration();
    v20 = v19;
    if (v17)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v24 = a3;
        v25 = 2114;
        v26 = v11;
        _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "Archived data store version %lu to %{public}@", buf, 0x16u);
      }

      if (v7)
      {
        [v13 removeItemAtURL:v14 error:0];
      }

      v15 = [[PBFDataStoreArchiveMetadata alloc] initWithURL:v11];
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [PBFDataStoreArchiveAdjudicator archiveDataStoreVersion:v18 toURL:a3 options:v20 removeAfterSuccess:? error:?];
      }

      v15 = 0;
    }
  }

  return v15;
}

- (id)archiveDataStoreVersion:(unint64_t)a3 name:(id)a4 options:(id)a5 removeAfterSuccess:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  archiveBaseURL = self->_archiveBaseURL;
  v13 = MEMORY[0x277CBEAA8];
  v14 = a5;
  v15 = a4;
  v16 = [v13 date];
  v17 = [(PBFDataStoreArchiveAdjudicator *)self archives];
  v18 = _PBFArchiveBuildNewFileName(v15, a3, v16, v17);

  v19 = [(NSURL *)archiveBaseURL URLByAppendingPathComponent:v18];

  v20 = [(PBFDataStoreArchiveAdjudicator *)self archiveDataStoreVersion:a3 toURL:v19 options:v14 removeAfterSuccess:v8 error:a7];

  return v20;
}

- (BOOL)deleteArchive:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 archiveURL];
  v8 = [v7 checkResourceIsReachableAndReturnError:a4];

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [(PBFDataStoreArchiveAdjudicator *)self archives];
  v10 = [v9 containsObject:v6];

  if ((v10 & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    v13 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA470];
    v17[0] = @"no idea what this data store is";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a4 = [v13 pbf_generalErrorWithCode:1 userInfo:v14];

LABEL_6:
    LOBYTE(a4) = 0;
    goto LABEL_7;
  }

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v6 archiveURL];
  LOBYTE(a4) = [v11 removeItemAtURL:v12 error:a4];

LABEL_7:
  return a4;
}

- (BOOL)restoreArchive:(id)a3 backupExistingDataStoreIfPossible:(BOOL)a4 error:(id *)a5
{
  v38[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 archiveURL];
    v11 = [v10 checkResourceIsReachableAndReturnError:a5];

    if (v11)
    {
      v12 = [(PBFDataStoreArchiveAdjudicator *)self archives];
      v13 = [v12 containsObject:v9];

      if (v13)
      {
        v14 = +[PBFPosterExtensionDataStore minimumDataStoreVersion];
        v15 = +[PBFPosterExtensionDataStore dataStoreVersion];
        v16 = [v9 version];
        v17 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:self->_dataStoreBaseURL version:v16];
        v18 = [(PBFDataStoreArchiveAdjudicator *)self archiveDataStoreVersion:v15 name:@"BackupExistingDataStore" options:0 removeAfterSuccess:1 error:a5];
        v19 = v18;
        if (v18)
        {
          if (v16 >= v14 && v16 <= v15)
          {
            v32 = v18;
            do
            {
              v20 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:self->_dataStoreBaseURL version:v14];
              v21 = [MEMORY[0x277CCAA00] defaultManager];
              [v21 removeItemAtURL:v20 error:0];

              ++v14;
            }

            while (v14 <= v15);
            v22 = [v9 archiveURL];
            v23 = [[PBFDataStoreUnarchiver alloc] initWithArchivedDataStoreURL:v22];
            [(PBFDataStoreUnarchiver *)v23 setRemapFocusConfigurations:1];
            if ([(PBFDataStoreUnarchiver *)v23 unarchiveToDirectoryAtURL:v17 error:a5])
            {

              v19 = v32;
              if (!a4)
              {
                [(PBFDataStoreArchiveAdjudicator *)self deleteArchive:v32 error:0];
              }

              v24 = 1;
              goto LABEL_23;
            }

            v19 = v32;
            [(PBFDataStoreArchiveAdjudicator *)self restoreArchive:v32 backupExistingDataStoreIfPossible:0 error:0];
          }

          if (!*a5)
          {
            v29 = MEMORY[0x277CCA9B8];
            v33 = *MEMORY[0x277CCA470];
            v34 = @"unknown error unarchiving data store";
            v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            *a5 = [v29 pbf_generalErrorWithCode:1 userInfo:v30];
          }
        }

        v24 = 0;
LABEL_23:

        goto LABEL_24;
      }

      if (a5)
      {
        v25 = MEMORY[0x277CCA9B8];
        v35 = *MEMORY[0x277CCA470];
        v36 = @"no idea what this data store is";
        v26 = MEMORY[0x277CBEAC0];
        v27 = &v36;
        v28 = &v35;
        goto LABEL_17;
      }
    }
  }

  else if (a5)
  {
    v25 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA470];
    v38[0] = @"No archive was specified.";
    v26 = MEMORY[0x277CBEAC0];
    v27 = v38;
    v28 = &v37;
LABEL_17:
    v17 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
    [v25 pbf_generalErrorWithCode:1 userInfo:v17];
    *a5 = v24 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v24 = 0;
LABEL_25:

  return v24;
}

- (BOOL)markArchivesAsPurgable:(id *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(PBFDataStoreArchiveAdjudicator *)self archives];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v23 + 1) + 8 * i) archiveURL];
        v22 = 0;
        [v10 pbf_setPurgable:1 error:&v22];
        v11 = v22;
        if (v11)
        {
          [v4 addObject:v11];
          v12 = PBFLogMigration();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v30 = v10;
            v31 = 2114;
            v32 = v11;
            _os_log_error_impl(&dword_21B526000, v12, OS_LOG_TYPE_ERROR, "*FAILED* to mark archived data store @ %{public}@: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v12 = PBFLogMigration();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v30 = v10;
            _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "Marked archived data store @ %{public}@ as purgable", buf, 0xCu);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v7);
  }

  v13 = [v4 count];
  v14 = v13;
  if (a3 && v13)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA470];
    v28[0] = @"unknown error unarchiving data store";
    v17 = *MEMORY[0x277CCA578];
    v27[0] = v16;
    v27[1] = v17;
    v18 = [v4 copy];
    v28[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    *a3 = [v15 pbf_generalErrorWithCode:1 userInfo:v19];
  }

  return v14 == 0;
}

- (BOOL)removeArchives:(id *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(PBFDataStoreArchiveAdjudicator *)self archives];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v23 + 1) + 8 * i) archiveURL];
        v11 = [MEMORY[0x277CCAA00] defaultManager];
        v22 = 0;
        [v11 removeItemAtURL:v10 error:&v22];
        v12 = v22;

        if (v12)
        {
          [v4 addObject:v12];
          v13 = PBFLogMigration();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v30 = v10;
            v31 = 2114;
            v32 = v12;
            _os_log_error_impl(&dword_21B526000, v13, OS_LOG_TYPE_ERROR, "*FAILED* to remove archived data store @ %{public}@: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v13 = PBFLogMigration();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v30 = v10;
            _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "Deleted archived data store @ %{public}@ ", buf, 0xCu);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v7);
  }

  v14 = [v4 count];
  if (a3 && v14)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA470];
    v28[0] = @"unknown error removing archived data data stores";
    v17 = *MEMORY[0x277CCA578];
    v27[0] = v16;
    v27[1] = v17;
    v18 = [v4 copy];
    v28[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    *a3 = [v15 pbf_generalErrorWithCode:1 userInfo:v19];
  }

  return 1;
}

- (void)archiveDataStoreVersion:(os_log_t)log toURL:options:removeAfterSuccess:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_21B526000, log, OS_LOG_TYPE_ERROR, "Unable to archive data store version %lu: %{public}@", &v3, 0x16u);
}

@end