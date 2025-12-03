@interface PBFDataStoreArchiveAdjudicator
- (BOOL)deleteArchive:(id)archive error:(id *)error;
- (BOOL)markArchivesAsPurgable:(id *)purgable;
- (BOOL)removeArchives:(id *)archives;
- (BOOL)restoreArchive:(id)archive backupExistingDataStoreIfPossible:(BOOL)possible error:(id *)error;
- (NSArray)archiveNames;
- (NSArray)archives;
- (PBFDataStoreArchiveAdjudicator)initWithDataStoreBaseURL:(id)l archiveBaseURL:(id)rL;
- (id)archiveDataStoreVersion:(unint64_t)version name:(id)name options:(id)options removeAfterSuccess:(BOOL)success error:(id *)error;
- (id)archiveDataStoreVersion:(unint64_t)version toURL:(id)l options:(id)options removeAfterSuccess:(BOOL)success error:(id *)error;
- (id)archiveForName:(id)name;
@end

@implementation PBFDataStoreArchiveAdjudicator

- (PBFDataStoreArchiveAdjudicator)initWithDataStoreBaseURL:(id)l archiveBaseURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v14.receiver = self;
  v14.super_class = PBFDataStoreArchiveAdjudicator;
  v8 = [(PBFDataStoreArchiveAdjudicator *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    dataStoreBaseURL = v8->_dataStoreBaseURL;
    v8->_dataStoreBaseURL = v9;

    v11 = [rLCopy copy];
    archiveBaseURL = v8->_archiveBaseURL;
    v8->_archiveBaseURL = v11;
  }

  return v8;
}

- (NSArray)archives
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager contentsOfDirectoryAtURL:self->_archiveBaseURL includingPropertiesForKeys:0 options:0 error:0];
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
  archives = [(PBFDataStoreArchiveAdjudicator *)self archives];
  v3 = [archives bs_mapNoNulls:&__block_literal_global_35];

  return v3;
}

id __46__PBFDataStoreArchiveAdjudicator_archiveNames__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 archiveURL];
  v3 = [v2 lastPathComponent];
  v4 = [v3 stringByDeletingPathExtension];

  return v4;
}

- (id)archiveForName:(id)name
{
  nameCopy = name;
  archives = [(PBFDataStoreArchiveAdjudicator *)self archives];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__PBFDataStoreArchiveAdjudicator_archiveForName___block_invoke;
  v9[3] = &unk_2782C8A50;
  v10 = nameCopy;
  v6 = nameCopy;
  v7 = [archives bs_firstObjectPassingTest:v9];

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

- (id)archiveDataStoreVersion:(unint64_t)version toURL:(id)l options:(id)options removeAfterSuccess:(BOOL)success error:(id *)error
{
  successCopy = success;
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  optionsCopy = options;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:self->_dataStoreBaseURL version:version];
  v15 = 0;
  if ([v14 checkResourceIsReachableAndReturnError:0])
  {
    v16 = [[PBFDataStoreArchiver alloc] initWithDataStoreAtURL:v14];
    [(PBFDataStoreArchiver *)v16 setOptions:optionsCopy];
    v22 = 0;
    v17 = [(PBFDataStoreArchiver *)v16 archiveToFileAtURL:lCopy error:&v22];
    v18 = v22;
    v19 = PBFLogMigration();
    v20 = v19;
    if (v17)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        versionCopy = version;
        v25 = 2114;
        v26 = lCopy;
        _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "Archived data store version %lu to %{public}@", buf, 0x16u);
      }

      if (successCopy)
      {
        [defaultManager removeItemAtURL:v14 error:0];
      }

      v15 = [[PBFDataStoreArchiveMetadata alloc] initWithURL:lCopy];
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [PBFDataStoreArchiveAdjudicator archiveDataStoreVersion:v18 toURL:version options:v20 removeAfterSuccess:? error:?];
      }

      v15 = 0;
    }
  }

  return v15;
}

- (id)archiveDataStoreVersion:(unint64_t)version name:(id)name options:(id)options removeAfterSuccess:(BOOL)success error:(id *)error
{
  successCopy = success;
  archiveBaseURL = self->_archiveBaseURL;
  v13 = MEMORY[0x277CBEAA8];
  optionsCopy = options;
  nameCopy = name;
  date = [v13 date];
  archives = [(PBFDataStoreArchiveAdjudicator *)self archives];
  v18 = _PBFArchiveBuildNewFileName(nameCopy, version, date, archives);

  v19 = [(NSURL *)archiveBaseURL URLByAppendingPathComponent:v18];

  v20 = [(PBFDataStoreArchiveAdjudicator *)self archiveDataStoreVersion:version toURL:v19 options:optionsCopy removeAfterSuccess:successCopy error:error];

  return v20;
}

- (BOOL)deleteArchive:(id)archive error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  archiveURL = [archiveCopy archiveURL];
  v8 = [archiveURL checkResourceIsReachableAndReturnError:error];

  if (!v8)
  {
    goto LABEL_6;
  }

  archives = [(PBFDataStoreArchiveAdjudicator *)self archives];
  v10 = [archives containsObject:archiveCopy];

  if ((v10 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v13 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA470];
    v17[0] = @"no idea what this data store is";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = [v13 pbf_generalErrorWithCode:1 userInfo:v14];

LABEL_6:
    LOBYTE(error) = 0;
    goto LABEL_7;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  archiveURL2 = [archiveCopy archiveURL];
  LOBYTE(error) = [defaultManager removeItemAtURL:archiveURL2 error:error];

LABEL_7:
  return error;
}

- (BOOL)restoreArchive:(id)archive backupExistingDataStoreIfPossible:(BOOL)possible error:(id *)error
{
  v38[1] = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  v9 = archiveCopy;
  if (archiveCopy)
  {
    archiveURL = [archiveCopy archiveURL];
    v11 = [archiveURL checkResourceIsReachableAndReturnError:error];

    if (v11)
    {
      archives = [(PBFDataStoreArchiveAdjudicator *)self archives];
      v13 = [archives containsObject:v9];

      if (v13)
      {
        v14 = +[PBFPosterExtensionDataStore minimumDataStoreVersion];
        v15 = +[PBFPosterExtensionDataStore dataStoreVersion];
        version = [v9 version];
        v17 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:self->_dataStoreBaseURL version:version];
        v18 = [(PBFDataStoreArchiveAdjudicator *)self archiveDataStoreVersion:v15 name:@"BackupExistingDataStore" options:0 removeAfterSuccess:1 error:error];
        v19 = v18;
        if (v18)
        {
          if (version >= v14 && version <= v15)
          {
            v32 = v18;
            do
            {
              v20 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:self->_dataStoreBaseURL version:v14];
              defaultManager = [MEMORY[0x277CCAA00] defaultManager];
              [defaultManager removeItemAtURL:v20 error:0];

              ++v14;
            }

            while (v14 <= v15);
            archiveURL2 = [v9 archiveURL];
            v23 = [[PBFDataStoreUnarchiver alloc] initWithArchivedDataStoreURL:archiveURL2];
            [(PBFDataStoreUnarchiver *)v23 setRemapFocusConfigurations:1];
            if ([(PBFDataStoreUnarchiver *)v23 unarchiveToDirectoryAtURL:v17 error:error])
            {

              v19 = v32;
              if (!possible)
              {
                [(PBFDataStoreArchiveAdjudicator *)self deleteArchive:v32 error:0];
              }

              v24 = 1;
              goto LABEL_23;
            }

            v19 = v32;
            [(PBFDataStoreArchiveAdjudicator *)self restoreArchive:v32 backupExistingDataStoreIfPossible:0 error:0];
          }

          if (!*error)
          {
            v29 = MEMORY[0x277CCA9B8];
            v33 = *MEMORY[0x277CCA470];
            v34 = @"unknown error unarchiving data store";
            v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            *error = [v29 pbf_generalErrorWithCode:1 userInfo:v30];
          }
        }

        v24 = 0;
LABEL_23:

        goto LABEL_24;
      }

      if (error)
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

  else if (error)
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
    *error = v24 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v24 = 0;
LABEL_25:

  return v24;
}

- (BOOL)markArchivesAsPurgable:(id *)purgable
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  archives = [(PBFDataStoreArchiveAdjudicator *)self archives];
  v6 = [archives countByEnumeratingWithState:&v23 objects:v33 count:16];
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
          objc_enumerationMutation(archives);
        }

        archiveURL = [*(*(&v23 + 1) + 8 * i) archiveURL];
        v22 = 0;
        [archiveURL pbf_setPurgable:1 error:&v22];
        v11 = v22;
        if (v11)
        {
          [v4 addObject:v11];
          v12 = PBFLogMigration();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v30 = archiveURL;
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
            v30 = archiveURL;
            _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "Marked archived data store @ %{public}@ as purgable", buf, 0xCu);
          }
        }
      }

      v7 = [archives countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v7);
  }

  v13 = [v4 count];
  v14 = v13;
  if (purgable && v13)
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
    *purgable = [v15 pbf_generalErrorWithCode:1 userInfo:v19];
  }

  return v14 == 0;
}

- (BOOL)removeArchives:(id *)archives
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  archives = [(PBFDataStoreArchiveAdjudicator *)self archives];
  v6 = [archives countByEnumeratingWithState:&v23 objects:v33 count:16];
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
          objc_enumerationMutation(archives);
        }

        archiveURL = [*(*(&v23 + 1) + 8 * i) archiveURL];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v22 = 0;
        [defaultManager removeItemAtURL:archiveURL error:&v22];
        v12 = v22;

        if (v12)
        {
          [v4 addObject:v12];
          v13 = PBFLogMigration();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v30 = archiveURL;
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
            v30 = archiveURL;
            _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "Deleted archived data store @ %{public}@ ", buf, 0xCu);
          }
        }
      }

      v7 = [archives countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v7);
  }

  v14 = [v4 count];
  if (archives && v14)
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
    *archives = [v15 pbf_generalErrorWithCode:1 userInfo:v19];
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