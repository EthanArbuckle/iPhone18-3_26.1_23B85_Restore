@interface PBFPosterExtensionDataStoreMigrator
+ (BOOL)migrateDataStoreAtBaseURL:(id)a3 fromVersion:(unint64_t)a4 toVersion:(unint64_t)a5 cleanupAfterMigrationSucceeds:(BOOL)a6 error:(id *)a7;
- (BOOL)isDataStoreUpToDateForCurrentVersion;
- (BOOL)validateDataStoreIntegrity:(id *)a3;
- (NSIndexSet)availableDataStoreVersions;
- (PBFPosterExtensionDataStoreMigrator)initWithBaseURL:(id)a3;
- (unint64_t)_mostUpToDateValidDataStoreToMigrateFrom;
- (unint64_t)migrateDataStoreToCurrentVersion:(id *)a3;
- (void)archiveDataStoresBeforeCurrentDataStoreVersion;
- (void)markDataStoreArchivesAsPurgable;
- (void)removeArchivedDataStores;
- (void)removeDataStoresBeforeCurrentDataStoreVersion;
@end

@implementation PBFPosterExtensionDataStoreMigrator

- (PBFPosterExtensionDataStoreMigrator)initWithBaseURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PBFPosterExtensionDataStoreMigrator;
  v5 = [(PBFPosterExtensionDataStoreMigrator *)&v10 init];
  if (v5)
  {
    v6 = [v4 standardizedURL];
    v7 = [v6 copy];
    baseURL = v5->_baseURL;
    v5->_baseURL = v7;

    v5->_shouldCleanupAfterMigration = 0;
  }

  return v5;
}

- (BOOL)validateDataStoreIntegrity:(id *)a3
{
  v5 = +[PBFPosterExtensionDataStore dataStoreVersion];
  v6 = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  LOBYTE(a3) = _PBFDetermineDataStoreViabilityForVersionWithinBaseURL(v6, v5, a3);

  return a3;
}

- (BOOL)isDataStoreUpToDateForCurrentVersion
{
  v3 = +[PBFPosterExtensionDataStore dataStoreVersion];
  v4 = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  if (_PBFDetermineDataStoreViabilityForVersionWithinBaseURL(v4, v3, 0))
  {
    v5 = [MEMORY[0x277CBEBC0] pbf_dataStoreSQLiteDatabaseURLForBaseURL:v4 version:v3];
    v6 = [[PBFPosterExtensionDataStoreSQLiteDatabase alloc] initWithURL:v5 options:4 error:0];
    v7 = [(PBFPosterExtensionDataStoreSQLiteDatabase *)v6 version]== 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)migrateDataStoreToCurrentVersion:(id *)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  if (![(PBFPosterExtensionDataStoreMigrator *)self isDataStoreUpToDateForCurrentVersion])
  {
    v6 = +[PBFPosterExtensionDataStore minimumDataStoreVersion];
    v7 = +[PBFPosterExtensionDataStore dataStoreVersion];
    v8 = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
    v9 = [MEMORY[0x277CBEBC0] pbf_dataStoreVersionContainingURLForBaseURL:v8];
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [v9 path];
    v12 = [v10 fileExistsAtPath:v11 isDirectory:0];

    if (!v12)
    {
LABEL_6:
      if ([(PBFPosterExtensionDataStoreMigrator *)self isDataStoreUpToDateForCurrentVersion])
      {
        v5 = 2;
LABEL_30:

        return v5;
      }

      v20 = [(PBFPosterExtensionDataStoreMigrator *)self _mostUpToDateValidDataStoreToMigrateFrom];
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = v6;
      }

      else
      {
        v21 = v20;
      }

      v22 = objc_autoreleasePoolPush();
      v31 = 0;
      v23 = [PBFPosterExtensionDataStoreMigrator migrateDataStoreAtBaseURL:v8 fromVersion:v21 toVersion:v7 cleanupAfterMigrationSucceeds:[(PBFPosterExtensionDataStoreMigrator *)self shouldCleanupAfterMigration] error:&v31];
      v19 = v31;
      objc_autoreleasePoolPop(v22);
      if (v23)
      {
        v5 = 4;
      }

      else
      {
        v5 = 0;
        if (a3 && v19)
        {
          v25 = v19;
          v5 = 0;
          *a3 = v19;
        }
      }

LABEL_29:

      goto LABEL_30;
    }

    v30 = v7;
    v13 = *MEMORY[0x277CBE800];
    v14 = *MEMORY[0x277CBE8A0];
    v37[0] = *MEMORY[0x277CBE7F8];
    v37[1] = v14;
    v38[0] = v13;
    v38[1] = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v33 = 0;
    v34 = 0;
    v16 = [v9 pbf_recursivelyValidateContentsAreReachableAndConformToResourceValues:v15 URLsNotConformingToAttributes:&v34 error:&v33];
    v17 = v34;
    v18 = v33;
    v19 = v18;
    if (v16)
    {
LABEL_5:

      v7 = v30;
      goto LABEL_6;
    }

    if (v18)
    {
      v24 = PBFLogMigration();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStoreMigrator migrateDataStoreToCurrentVersion:];
      }
    }

    else
    {
      v32 = 0;
      v26 = [v8 pbf_recursivelyUpdateResourceValues:v15 error:&v32];
      v19 = v32;
      v27 = PBFLogMigration();
      v24 = v27;
      if (v26)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v36 = v8;
          _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_INFO, "Success updating file attributes for URL '%{public}@'", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStoreMigrator migrateDataStoreToCurrentVersion:];
      }
    }

    if (a3 && v19)
    {
      v28 = v19;
      *a3 = v19;
    }

    else if (!v19)
    {
      goto LABEL_5;
    }

    v5 = 1;
    goto LABEL_29;
  }

  return 3;
}

- (unint64_t)_mostUpToDateValidDataStoreToMigrateFrom
{
  v2 = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  v3 = +[PBFPosterExtensionDataStore minimumDataStoreVersion];
  v4 = +[PBFPosterExtensionDataStore dataStoreVersion];
  if (v4 < v3)
  {
LABEL_5:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v4;
    while ((_PBFDetermineDataStoreViabilityForVersionWithinBaseURL(v2, v5, 0) & 1) == 0)
    {
      if (--v5 < v3)
      {
        goto LABEL_5;
      }
    }
  }

  return v5;
}

- (NSIndexSet)availableDataStoreVersions
{
  v3 = objc_opt_new();
  v4 = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  v5 = +[PBFPosterExtensionDataStore minimumDataStoreVersion];
  v6 = +[PBFPosterExtensionDataStore dataStoreVersion];
  if (v6 >= v5)
  {
    v7 = v6;
    do
    {
      if (_PBFDetermineDataStoreViabilityForVersionWithinBaseURL(v4, v7, 0))
      {
        [v3 addIndex:v7];
      }

      --v7;
    }

    while (v7 >= v5);
  }

  return v3;
}

- (void)removeDataStoresBeforeCurrentDataStoreVersion
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  if ([MEMORY[0x277CBEBD0] pbf_keynoteModeEnabled])
  {
    v5 = PBFLogMigration();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "Keynote mode; not cleaning up old data stores.", buf, 2u);
    }
  }

  else
  {
    v6 = +[PBFPosterExtensionDataStore minimumDataStoreVersion];
    v7 = +[PBFPosterExtensionDataStore dataStoreVersion]- 1;
    if (v7 >= v6)
    {
      *&v8 = 138543618;
      v14 = v8;
      do
      {
        v9 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:v4 version:{v7, v14}];
        if ([v9 checkResourceIsReachableAndReturnError:0])
        {
          v15 = 0;
          v10 = [v3 removeItemAtURL:v9 error:&v15];
          v11 = v15;
          v12 = PBFLogMigration();
          v13 = v12;
          if (v10)
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v17 = v9;
              _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "Cleaned up abandoned data store url '%{public}@'", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v14;
            v17 = v9;
            v18 = 2114;
            v19 = v11;
            _os_log_error_impl(&dword_21B526000, v13, OS_LOG_TYPE_ERROR, "Error cleaning up abandoned data store url %{public}@, error:%{public}@", buf, 0x16u);
          }
        }

        else
        {
          v13 = PBFLogMigration();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v17 = v9;
            _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "No data store @ '%{public}@'", buf, 0xCu);
          }

          v11 = 0;
        }

        --v7;
      }

      while (v7 >= v6);
    }
  }
}

- (void)archiveDataStoresBeforeCurrentDataStoreVersion
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  v3 = [MEMORY[0x277CBEBD0] pbf_keynoteModeEnabled];
  v4 = PBFLogMigration();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "Keynote mode; not archiving old data stores.", buf, 2u);
    }

    goto LABEL_17;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "Archived data store directory is ready...", buf, 2u);
  }

  v6 = [PBFDataStoreArchiveAdjudicator alloc];
  v7 = [MEMORY[0x277CBEBC0] pbf_archivedDataStoreBaseURL];
  v4 = [(PBFDataStoreArchiveAdjudicator *)v6 initWithDataStoreBaseURL:v2 archiveBaseURL:v7];

  v8 = +[PBFPosterExtensionDataStore minimumDataStoreVersion];
  v9 = +[PBFPosterExtensionDataStore dataStoreVersion]- 1;
  if (v9 >= v8)
  {
    *&v10 = 134218242;
    v19 = v10;
    while (1)
    {
      v11 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:v2 version:{v9, v19}];
      if ([v11 checkResourceIsReachableAndReturnError:0])
      {
        break;
      }

LABEL_16:

      if (--v9 < v8)
      {
        goto LABEL_17;
      }
    }

    v20 = 0;
    v12 = [v4 archiveDataStoreVersion:v9 name:@"ArchiveDataStoresBeforeCurrentDataStoreVersion" options:0 removeAfterSuccess:1 error:&v20];
    v13 = v20;

    v14 = PBFLogMigration();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v15)
      {
        *buf = 134217984;
        v22 = v9;
        v16 = v14;
        v17 = "Successfully archived data store %lu";
        v18 = 12;
LABEL_14:
        _os_log_impl(&dword_21B526000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, v18);
      }
    }

    else if (v15)
    {
      *buf = v19;
      v22 = v9;
      v23 = 2114;
      v24 = v13;
      v16 = v14;
      v17 = "Failed to archive data store %lu: %{public}@";
      v18 = 22;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)markDataStoreArchivesAsPurgable
{
  v3 = PBFLogMigration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "marking archives as purgable", v8, 2u);
  }

  v4 = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  v5 = [PBFDataStoreArchiveAdjudicator alloc];
  v6 = [MEMORY[0x277CBEBC0] pbf_archivedDataStoreBaseURL];
  v7 = [(PBFDataStoreArchiveAdjudicator *)v5 initWithDataStoreBaseURL:v4 archiveBaseURL:v6];

  [(PBFDataStoreArchiveAdjudicator *)v7 markArchivesAsPurgable:0];
}

- (void)removeArchivedDataStores
{
  v3 = PBFLogMigration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "purging archived data stores", v8, 2u);
  }

  v4 = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  v5 = [PBFDataStoreArchiveAdjudicator alloc];
  v6 = [MEMORY[0x277CBEBC0] pbf_archivedDataStoreBaseURL];
  v7 = [(PBFDataStoreArchiveAdjudicator *)v5 initWithDataStoreBaseURL:v4 archiveBaseURL:v6];

  [(PBFDataStoreArchiveAdjudicator *)v7 markArchivesAsPurgable:0];
}

+ (BOOL)migrateDataStoreAtBaseURL:(id)a3 fromVersion:(unint64_t)a4 toVersion:(unint64_t)a5 cleanupAfterMigrationSucceeds:(BOOL)a6 error:(id *)a7
{
  v151 = a6;
  v250[3] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v156 = +[PBFPosterExtensionDataStore minimumDataStoreVersion];
  v158 = +[PBFPosterExtensionDataStore dataStoreVersion];
  v169 = v9;
  if (a4 == a5 && a5 >= 0x3D)
  {
    v10 = [MEMORY[0x277CBEBC0] pbf_dataStoreSQLiteDatabaseURLForBaseURL:v9 version:a4];
    v11 = [[PBFPosterExtensionDataStoreSQLiteDatabase alloc] initWithURL:v10 options:8 error:a7];
    v12 = v11 != 0;
    [(PBFPosterExtensionDataStoreSQLiteDatabase *)v11 invalidate];

    goto LABEL_209;
  }

  if (v156 <= a4 && v158 >= a5)
  {
    v231 = 0;
    v232 = &v231;
    v233 = 0x3032000000;
    v234 = __Block_byref_object_copy__4;
    v235 = __Block_byref_object_dispose__4;
    v236 = 0;
    v227 = 0;
    v228 = &v227;
    v229 = 0x2020000000;
    v230 = 0;
    v170 = [MEMORY[0x277CCAA00] defaultManager];
    v152 = objc_opt_new();
    v153 = objc_opt_new();
    if (a4 > a5)
    {
      goto LABEL_168;
    }

    *&v19 = 134217984;
    v147 = v19;
    v20 = a4;
    v166 = a5;
    while (1)
    {
      v21 = PBFLogMigration();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v9;
        _os_log_impl(&dword_21B526000, v21, OS_LOG_TYPE_DEFAULT, "Beginning migration to Version %lu (%@)", buf, 0x16u);
      }

      v164 = v20;

      v22 = v20 - 1;
      v23 = v169;
      v161 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:v169 version:v20 - 1];
      v163 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:v169 version:v20];
      if (v20 != v158)
      {
        [v152 addObject:v163];
      }

      if (v20 != a4)
      {
        [v153 addObject:v163];
      }

      if (_PBFDetermineDataStoreViabilityForVersionWithinBaseURL(v169, v20, 0))
      {
        v24 = v228 + 3;
        goto LABEL_65;
      }

      if ([v161 checkResourceIsReachableAndReturnError:0])
      {
        [v170 removeItemAtURL:v163 error:0];
        if (([v170 copyItemAtURL:v161 toURL:v163 error:a7] & 1) == 0)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v25 = [MEMORY[0x277CBEBC0] pbf_dataStoreExtensionContainerURLForBaseURL:v169 version:v20];
        v26 = [MEMORY[0x277CBEBC0] pbf_galleryCacheURLForBaseURL:v169 version:v20];
        v248[0] = v163;
        v248[1] = v25;
        v167 = v25;
        v171 = v26;
        v248[2] = v26;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v248 count:3];
        v225 = 0u;
        v226 = 0u;
        v223 = 0u;
        v224 = 0u;
        v28 = v27;
        v29 = [v28 countByEnumeratingWithState:&v223 objects:v247 count:16];
        if (v29)
        {
          v30 = *v224;
LABEL_25:
          v31 = 0;
          while (1)
          {
            if (*v224 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v223 + 1) + 8 * v31);
            if (([v32 checkResourceIsReachableAndReturnError:{0, v147}] & 1) == 0)
            {
              v33 = PFFileProtectionNoneAttributes();
              v34 = v232 + 5;
              obj = v232[5];
              v35 = [v170 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:v33 error:&obj];
              objc_storeStrong(v34, obj);

              if ((v35 & 1) == 0)
              {
                break;
              }
            }

            v36 = PFPosterPathURLResourceValues();
            [v32 pbf_recursivelyUpdateResourceValues:v36 error:0];

            if (v29 == ++v31)
            {
              v29 = [v28 countByEnumeratingWithState:&v223 objects:v247 count:16];
              if (v29)
              {
                goto LABEL_25;
              }

              break;
            }
          }
        }

        v37 = _PBFDetermineDataStoreViabilityForVersionWithinBaseURL(v169, v164, 0);
        *(v228 + 24) = v37;

        v23 = v169;
        v20 = v164;
      }

      if (v20 == 60)
      {
        break;
      }

      if (v20 == 61)
      {
        v38 = PBFLogMigration();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B526000, v38, OS_LOG_TYPE_DEFAULT, "Kicking off 61 migration", buf, 2u);
        }

        v154 = [MEMORY[0x277CBEBC0] pbf_dataStoreSQLiteDatabaseURLForBaseURL:v169 version:61];
        v39 = [PBFPosterExtensionDataStoreSQLiteDatabase alloc];
        v40 = v232;
        v221 = 0;
        v168 = [(PBFPosterExtensionDataStoreSQLiteDatabase *)v39 initWithURL:v154 options:9 error:&v221];
        objc_storeStrong(v40 + 5, v221);
        if (v168 && !v232[5])
        {
          v41 = objc_opt_new();
          v42 = [MEMORY[0x277CBEBC0] pbf_dataStoreExtensionContainerURLForBaseURL:v169 version:61];
          v43 = _PBFExtensionStoreCoordinatorsForDataStoreExtensionContainerURL(v42, 0);

          v44 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
          v219[0] = MEMORY[0x277D85DD0];
          v219[1] = 3221225472;
          v219[2] = __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke;
          v219[3] = &unk_2782C7E28;
          v45 = v44;
          v220 = v45;
          [v43 enumerateObjectsUsingBlock:v219];
          v217 = 0u;
          v218 = 0u;
          v215 = 0u;
          v216 = 0u;
          v46 = v43;
          v47 = [v46 countByEnumeratingWithState:&v215 objects:v246 count:16];
          if (v47)
          {
            v48 = *v216;
            do
            {
              for (i = 0; i != v47; ++i)
              {
                if (*v216 != v48)
                {
                  objc_enumerationMutation(v46);
                }

                v50 = *(*(&v215 + 1) + 8 * i);
                [v50 enumerateDescriptorStoreCoordinators:{&__block_literal_global_41, v147}];
                [v50 enumerateConfigurationStoreCoordinators:&__block_literal_global_43];
                v51 = PBFLogMigration();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_21B526000, v51, OS_LOG_TYPE_DEFAULT, "Begin attribute migration", buf, 2u);
                }

                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                v243 = __Block_byref_object_copy__4;
                v244 = __Block_byref_object_dispose__4;
                v245 = 0;
                v206[0] = MEMORY[0x277D85DD0];
                v206[1] = 3221225472;
                v206[2] = __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44;
                v206[3] = &unk_2782C7EB8;
                v207 = v168;
                v208 = v41;
                v209 = v45;
                v213 = v166;
                v214 = 61;
                v210 = v169;
                v211 = &v227;
                v212 = buf;
                [v50 enumerateConfigurationStoreCoordinators:v206];
                v52 = *(*&buf[8] + 40);
                if (v52)
                {
                  objc_storeStrong(v232 + 5, v52);
                  v53 = PBFLogMigration();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    +[PBFPosterExtensionDataStoreMigrator migrateDataStoreAtBaseURL:fromVersion:toVersion:cleanupAfterMigrationSucceeds:error:];
                  }
                }

                _Block_object_dispose(buf, 8);
              }

              v47 = [v46 countByEnumeratingWithState:&v215 objects:v246 count:16];
            }

            while (v47);
          }

LABEL_61:
LABEL_62:

          v23 = v169;
          v20 = v164;
          goto LABEL_63;
        }

LABEL_60:
        *(v228 + 24) = 0;
        goto LABEL_61;
      }

LABEL_63:
      if (v232[5] || (v24 = v228 + 3, (v228[3] & 1) == 0))
      {
        v124 = PBFLogMigration();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          *&buf[4] = v166;
          *&buf[12] = 2048;
          *&buf[14] = v20;
          *&buf[22] = 2112;
          v243 = v23;
          _os_log_impl(&dword_21B526000, v124, OS_LOG_TYPE_DEFAULT, "Failed to migrate to Version %lu from %lu (%@)", buf, 0x20u);
        }

        *(v228 + 24) = 0;
LABEL_167:

        v9 = v169;
LABEL_168:
        if (v232[5])
        {
          v125 = PBFLogMigration();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
          {
            +[PBFPosterExtensionDataStoreMigrator migrateDataStoreAtBaseURL:fromVersion:toVersion:cleanupAfterMigrationSucceeds:error:];
          }
        }

        else
        {
          v125 = PBFLogMigration();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v9;
            _os_log_impl(&dword_21B526000, v125, OS_LOG_TYPE_DEFAULT, "Successfuly setup data store @ baseURL '%@'", buf, 0xCu);
          }
        }

        if (v232[5])
        {
          v180 = 0u;
          v181 = 0u;
          v178 = 0u;
          v179 = 0u;
          v126 = v153;
          v127 = [v126 countByEnumeratingWithState:&v178 objects:v238 count:16];
          if (v127)
          {
            v128 = *v179;
            do
            {
              for (j = 0; j != v127; ++j)
              {
                if (*v179 != v128)
                {
                  objc_enumerationMutation(v126);
                }

                v130 = *(*(&v178 + 1) + 8 * j);
                v131 = PBFLogMigration();
                if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v130;
                  _os_log_impl(&dword_21B526000, v131, OS_LOG_TYPE_DEFAULT, "Cleaning up failed data store URL '%@'", buf, 0xCu);
                }

                [v170 removeItemAtURL:v130 error:0];
              }

              v127 = [v126 countByEnumeratingWithState:&v178 objects:v238 count:16];
            }

            while (v127);
          }

          v132 = PBFLogMigration();
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v169;
            v133 = "Cleaned up failed data store URL '%@'";
            v134 = v132;
            v135 = 12;
            goto LABEL_204;
          }
        }

        else if (v151)
        {
          v136 = PBFLogMigration();
          if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v169;
            _os_log_impl(&dword_21B526000, v136, OS_LOG_TYPE_DEFAULT, "Cleaned up after successful data store migration '%@'", buf, 0xCu);
          }

          v176 = 0u;
          v177 = 0u;
          v174 = 0u;
          v175 = 0u;
          v132 = v152;
          v137 = [v132 countByEnumeratingWithState:&v174 objects:v237 count:16];
          if (v137)
          {
            v138 = *v175;
            do
            {
              for (k = 0; k != v137; ++k)
              {
                if (*v175 != v138)
                {
                  objc_enumerationMutation(v132);
                }

                v140 = *(*(&v174 + 1) + 8 * k);
                v141 = PBFLogMigration();
                if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v140;
                  _os_log_impl(&dword_21B526000, v141, OS_LOG_TYPE_DEFAULT, "Cleaning up successful data store URL '%@'", buf, 0xCu);
                }

                v173 = 0;
                v142 = [v170 removeItemAtURL:v140 error:&v173];
                v143 = v173;
                if ((v142 & 1) == 0)
                {
                  v144 = PBFLogMigration();
                  if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    *&buf[4] = v140;
                    *&buf[12] = 2112;
                    *&buf[14] = v143;
                    _os_log_error_impl(&dword_21B526000, v144, OS_LOG_TYPE_ERROR, "Failed to cleanup after '%@': %@", buf, 0x16u);
                  }
                }
              }

              v137 = [v132 countByEnumeratingWithState:&v174 objects:v237 count:16];
            }

            while (v137);
          }
        }

        else
        {
          v132 = PBFLogMigration();
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v133 = "Not cleaning up after successful data store migration.";
            v134 = v132;
            v135 = 2;
LABEL_204:
            _os_log_impl(&dword_21B526000, v134, OS_LOG_TYPE_DEFAULT, v133, buf, v135);
          }
        }

        if (a7)
        {
          v145 = v232[5];
          if (v145)
          {
            *a7 = v145;
          }
        }

        v12 = *(v228 + 24);

        _Block_object_dispose(&v227, 8);
        _Block_object_dispose(&v231, 8);

LABEL_209:
        v9 = v169;
        goto LABEL_210;
      }

LABEL_65:
      *v24 = 1;

      v20 = v164 + 1;
      v9 = v169;
      if (v164 + 1 > v166)
      {
        goto LABEL_168;
      }
    }

    v54 = PBFLogMigration();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v54, OS_LOG_TYPE_DEFAULT, "Kicking off 60 migration", buf, 2u);
    }

    v154 = [MEMORY[0x277CBEBC0] pbf_dataStoreSQLiteDatabaseURLForBaseURL:v169 version:60];
    v55 = [PBFPosterExtensionDataStoreSQLiteDatabase alloc];
    v56 = v232;
    v205 = 0;
    v168 = [(PBFPosterExtensionDataStoreSQLiteDatabase *)v55 initWithURL:v154 options:10 error:&v205];
    objc_storeStrong(v56 + 5, v205);
    if (!v168 || v232[5])
    {
      v57 = PBFLogMigration();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        +[PBFPosterExtensionDataStoreMigrator migrateDataStoreAtBaseURL:fromVersion:toVersion:cleanupAfterMigrationSucceeds:error:];
      }

      goto LABEL_60;
    }

    v58 = PBFLogMigration();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v58, OS_LOG_TYPE_DEFAULT, "Setting up poster configurations for lock screen role", buf, 2u);
    }

    v59 = v169;
    v60 = [MEMORY[0x277CBEBC0] pbf_switcherConfigurationOrderingURLForBaseURL:v169 version:60];
    v150 = v60;
    if ([v60 checkResourceIsReachableAndReturnError:0])
    {
      v61 = PBFLogMigration();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v61, OS_LOG_TYPE_DEFAULT, "going w/ existing poster uuid ordering file", buf, 2u);
      }
    }

    else
    {
      if (v156 > 0x3B)
      {
LABEL_84:
        v67 = MEMORY[0x277CBEB70];
        v68 = [v60 pf_loadFromPlistWithError:{0, v147}];
        v69 = objc_opt_class();
        v70 = v68;
        if (v69)
        {
          if (objc_opt_isKindOfClass())
          {
            v71 = v70;
          }

          else
          {
            v71 = 0;
          }
        }

        else
        {
          v71 = 0;
        }

        v72 = v71;

        if (v72)
        {
          v73 = v72;
        }

        else
        {
          v73 = MEMORY[0x277CBEBF8];
        }

        v162 = [v67 orderedSetWithArray:v73];

        v74 = PBFLogMigration();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v162;
          _os_log_impl(&dword_21B526000, v74, OS_LOG_TYPE_DEFAULT, "posterUUIDOrdering: %{public}@", buf, 0xCu);
        }

        v75 = v169;
        v76 = [MEMORY[0x277CBEBC0] pbf_switcherSelectedConfigurationURLForBaseURL:v169 version:60];
        v77 = [v76 checkResourceIsReachableAndReturnError:0];
        v149 = v76;
        if (v22 < v156)
        {
          v78 = 1;
        }

        else
        {
          v78 = v77;
        }

        if ((v78 & 1) == 0)
        {
          while (1)
          {
            v79 = [MEMORY[0x277CBEBC0] pbf_switcherSelectedConfigurationURLForBaseURL:v75 version:v22];
            if ([v79 checkResourceIsReachableAndReturnError:0])
            {
              break;
            }

            --v22;
            v75 = v169;
            if (v22 < v156)
            {
              goto LABEL_107;
            }
          }

          v80 = [MEMORY[0x277CCAA00] defaultManager];
          v81 = [v80 copyItemAtURL:v79 toURL:v149 error:0];

          if (v81)
          {
            v82 = PBFLogMigration();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v147;
              *&buf[4] = v22;
              _os_log_impl(&dword_21B526000, v82, OS_LOG_TYPE_DEFAULT, "restored selected poster uuid ordering from %lu", buf, 0xCu);
            }
          }

          else
          {
            v82 = PBFLogMigration();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = v22;
              *&buf[12] = 2114;
              *&buf[14] = 0;
              _os_log_error_impl(&dword_21B526000, v82, OS_LOG_TYPE_ERROR, "FAILED restored selected poster uuid from %lu: %{public}@", buf, 0x16u);
            }
          }
        }

LABEL_107:
        v83 = [v149 pf_loadFromPlistWithError:0];
        v84 = objc_opt_class();
        v85 = v83;
        if (v84)
        {
          if (objc_opt_isKindOfClass())
          {
            v86 = v85;
          }

          else
          {
            v86 = 0;
          }
        }

        else
        {
          v86 = 0;
        }

        v87 = v86;

        v148 = [v87 objectForKey:@"selectedConfigurationIdentifier"];

        v88 = PBFLogMigration();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v148;
          _os_log_impl(&dword_21B526000, v88, OS_LOG_TYPE_DEFAULT, "selected poster uuid: %{public}@", buf, 0xCu);
        }

        v89 = [v162 count];
        v90 = v169;
        if (!v89)
        {
          v91 = PBFLogMigration();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v91, OS_LOG_TYPE_DEFAULT, "posterUUIDOrdering is empty; building a new one from the date added of each CSC", buf, 2u);
          }

          v92 = objc_opt_new();
          v172 = objc_opt_new();
          v93 = [MEMORY[0x277CBEBC0] pbf_dataStoreExtensionContainerURLForBaseURL:v169 version:60];
          v94 = _PBFExtensionStoreCoordinatorsForDataStoreExtensionContainerURL(v93, 0);

          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v155 = v94;
          v160 = [v155 countByEnumeratingWithState:&v200 objects:v241 count:16];
          if (v160)
          {
            v159 = *v201;
            do
            {
              for (m = 0; m != v160; ++m)
              {
                if (*v201 != v159)
                {
                  objc_enumerationMutation(v155);
                }

                v95 = *(*(&v200 + 1) + 8 * m);
                v196 = 0u;
                v197 = 0u;
                v198 = 0u;
                v199 = 0u;
                v96 = [v95 configurationStoreCoordinatorsWithError:0];
                v97 = [v96 countByEnumeratingWithState:&v196 objects:v240 count:16];
                if (v97)
                {
                  v98 = *v197;
                  do
                  {
                    for (n = 0; n != v97; ++n)
                    {
                      if (*v197 != v98)
                      {
                        objc_enumerationMutation(v96);
                      }

                      v100 = *(*(&v196 + 1) + 8 * n);
                      v101 = [v100 objectForKeyedSubscript:@"kConfigurationAssociatedPosterUUIDKey"];
                      if (!v101)
                      {
                        v102 = [v100 posterUUID];
                        v103 = [v102 UUIDString];

                        if (v103)
                        {
                          [v172 addObject:v103];
                          [v92 setObject:v100 forKey:v103];
                        }
                      }
                    }

                    v97 = [v96 countByEnumeratingWithState:&v196 objects:v240 count:16];
                  }

                  while (v97);
                }
              }

              v160 = [v155 countByEnumeratingWithState:&v200 objects:v241 count:16];
            }

            while (v160);
          }

          v194[0] = MEMORY[0x277D85DD0];
          v194[1] = 3221225472;
          v194[2] = __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_57;
          v194[3] = &unk_2782C7EE0;
          v104 = v92;
          v195 = v104;
          [v172 sortUsingComparator:v194];
          if ([v172 count])
          {
            v105 = [v162 mutableCopy];
            v106 = v105;
            if (v105)
            {
              v107 = v105;
            }

            else
            {
              v107 = objc_opt_new();
            }

            v192 = 0u;
            v193 = 0u;
            v190 = 0u;
            v191 = 0u;
            v108 = v172;
            v109 = [v108 countByEnumeratingWithState:&v190 objects:v239 count:16];
            if (v109)
            {
              v110 = *v191;
              do
              {
                for (ii = 0; ii != v109; ++ii)
                {
                  if (*v191 != v110)
                  {
                    objc_enumerationMutation(v108);
                  }

                  v112 = *(*(&v190 + 1) + 8 * ii);
                  if (([v162 containsObject:v112] & 1) == 0)
                  {
                    v113 = PBFLogMigration();
                    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      *&buf[4] = v112;
                      _os_log_impl(&dword_21B526000, v113, OS_LOG_TYPE_DEFAULT, "Recovering posterUUID %{public}@", buf, 0xCu);
                    }

                    [v107 addObject:v112];
                  }
                }

                v109 = [v108 countByEnumeratingWithState:&v190 objects:v239 count:16];
              }

              while (v109);
            }

            v188[0] = MEMORY[0x277D85DD0];
            v188[1] = 3221225472;
            v188[2] = __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_59;
            v188[3] = &unk_2782C7EE0;
            v189 = v104;
            [v107 sortUsingComparator:v188];
            v114 = PBFLogMigration();
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v107;
              _os_log_impl(&dword_21B526000, v114, OS_LOG_TYPE_DEFAULT, "posterUUIDOrdering replaced with new %{public}@", buf, 0xCu);
            }

            v115 = [v107 copy];
            v162 = v115;
          }

          else
          {
            v107 = PBFLogMigration();
            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21B526000, v107, OS_LOG_TYPE_DEFAULT, "no posters to restore; maybe not upgrading", buf, 2u);
            }
          }

          v90 = v169;
        }

        v116 = [MEMORY[0x277CBEBC0] pbf_dataStoreExtensionContainerURLForBaseURL:v90 version:60];
        v117 = _PBFProvidersForPosterUUIDFromDataStoreExtensionContainerURL(v116);

        v183[0] = MEMORY[0x277D85DD0];
        v183[1] = 3221225472;
        v183[2] = __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_60;
        v183[3] = &unk_2782C7F08;
        v118 = v162;
        v184 = v118;
        v119 = v117;
        v185 = v119;
        v187 = &v231;
        v120 = v148;
        v186 = v120;
        v182 = 0;
        [(PBFPosterExtensionDataStoreSQLiteDatabase *)v168 performChanges:v183 error:&v182];
        v121 = v182;
        v122 = v182;
        if (v122 && !v232[5])
        {
          objc_storeStrong(v232 + 5, v121);
        }

        else
        {
          v123 = PBFLogMigration();
          if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v123, OS_LOG_TYPE_INFO, "cleaning up poster configuration ordering url / poster selected configuration identifier plist url", buf, 2u);
          }

          [v170 removeItemAtURL:v150 error:0];
          [v170 removeItemAtURL:v149 error:0];
        }

        [(PBFPosterExtensionDataStoreSQLiteDatabase *)v168 invalidate];

        goto LABEL_62;
      }

      v62 = 59;
      while (1)
      {
        v61 = [MEMORY[0x277CBEBC0] pbf_switcherConfigurationOrderingURLForBaseURL:v59 version:{v62, v147}];
        if ([v61 checkResourceIsReachableAndReturnError:0])
        {
          break;
        }

        --v62;
        v59 = v169;
        v60 = v150;
        if (v62 < v156)
        {
          goto LABEL_84;
        }
      }

      v63 = [MEMORY[0x277CCAA00] defaultManager];
      v204 = 0;
      v64 = [v63 copyItemAtURL:v61 toURL:v150 error:&v204];
      v65 = v204;

      if (v64)
      {
        v66 = PBFLogMigration();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v147;
          *&buf[4] = v62;
          _os_log_impl(&dword_21B526000, v66, OS_LOG_TYPE_DEFAULT, "restored poster uuid ordering from %lu", buf, 0xCu);
        }
      }

      else
      {
        v66 = PBFLogMigration();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          *&buf[4] = v62;
          *&buf[12] = 2114;
          *&buf[14] = v65;
          _os_log_error_impl(&dword_21B526000, v66, OS_LOG_TYPE_ERROR, "FAILED restored poster uuid ordering from %lu: %{public}@", buf, 0x16u);
        }
      }
    }

    v60 = v150;
    goto LABEL_84;
  }

  if (a7)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA470];
    v250[0] = @"fromVersion < minimumDataStoreVersion || toVersion > currentDataStoreVersion";
    v249[0] = v15;
    v249[1] = @"fromVersion";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v250[1] = v16;
    v249[2] = @"toVersion";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    v250[2] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v250 forKeys:v249 count:3];
    *a7 = [v14 pbf_generalErrorWithCode:1 userInfo:v18];

    v12 = 0;
    goto LABEL_209;
  }

  v12 = 0;
LABEL_210:

  return v12 & 1;
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_2;
  v3[3] = &unk_2782C7E00;
  v4 = *(a1 + 32);
  [a2 enumerateConfigurationStoreCoordinators:v3];
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKeyedSubscript:@"kConfigurationAssociatedPosterUUIDKey"];
  if (v3)
  {
    [*(a1 + 32) setObject:v4 forKey:v3];
  }
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 reapEverythingExceptLatestVersion];
  [v2 reapSnapshots];
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 reapEverythingExceptLatestVersion];
  [v2 reapSnapshots];
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44(uint64_t a1, void *a2, _BYTE *a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 posterUUID];
  v7 = [v4 pathOfLatestVersion];
  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"kConfigurationAssociatedPosterUUIDKey"];
    if (!v8)
    {
      v9 = *(a1 + 32);
      v10 = [MEMORY[0x277CBEB98] setWithObject:v6];
      LODWORD(v9) = [v9 checkIfPosterUUIDs:v10 belongToRole:*MEMORY[0x277D3EEF0] error:0];

      if (v9)
      {
        [*(a1 + 40) removeAllObjects];
        v55 = [*(a1 + 48) objectForKey:v6];
        if (v55)
        {
          v11 = objc_alloc(MEMORY[0x277D3EC68]);
          v12 = [v55 posterUUID];
          v13 = [MEMORY[0x277CBEAA8] date];
          v14 = [v55 extensionIdentifier];
          v15 = [v11 initWithChildPosterUUID:v12 dateCreated:v13 providerIdentifier:v14];

          v16 = *(a1 + 40);
          v17 = [v15 encodeJSON];
          v18 = [v15 attributeType];
          [v16 setObject:v17 forKey:v18];

          v19 = PBFLogMigration();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v55 posterUUID];
            *buf = 138543618;
            *&buf[4] = 0;
            *&buf[12] = 2114;
            *&buf[14] = v20;
            _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "Setup child poster attribute for parent %{public}@ -> child %{public}@", buf, 0x16u);
          }
        }

        v66 = 0;
        v21 = [MEMORY[0x277D3EDE8] loadFocusConfigurationForPath:v7 error:&v66];
        v53 = v66;
        if (v53 || !v21)
        {
          v22 = PBFLogMigration();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_1();
          }
        }

        else
        {
          v22 = [v21 encodeJSON];
          if ([v22 length])
          {
            [*(a1 + 40) setObject:v22 forKeyedSubscript:*MEMORY[0x277D3EEB8]];
          }

          v23 = PBFLogMigration();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_DEFAULT, "ported focus configuration to attribute", buf, 2u);
          }
        }

        v65 = 0;
        v56 = [MEMORY[0x277D3EDE8] loadSuggestionMetadataForPath:v7 error:&v65];
        v52 = v65;
        if (v52 || !v56)
        {
          v24 = PBFLogMigration();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_2();
          }
        }

        else
        {
          v24 = [v56 encodeJSON];
          if ([v24 length])
          {
            [*(a1 + 40) setObject:v24 forKeyedSubscript:*MEMORY[0x277D3EED0]];
          }

          v25 = PBFLogMigration();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEFAULT, "ported suggestion metadata to attribute", buf, 2u);
          }
        }

        v26 = objc_opt_new();
        v54 = [v4 objectForKeyedSubscript:@"kConfigurationLastUseDateKey"];
        if (v54)
        {
          v27 = [v26 usageMetadataForUpdatedLastActivatedDate:?];

          v26 = v27;
        }

        v28 = [v56 lastModifiedDate];

        if (v28)
        {
          v29 = [v56 lastModifiedDate];
          v30 = [v26 usageMetadataForUpdatedLastModifiedDate:v29];

          v26 = v30;
        }

        v31 = *(a1 + 40);
        v32 = [v26 encodeJSON];
        v33 = [v26 attributeType];
        [v31 setObject:v32 forKey:v33];

        v64 = 0;
        v34 = [MEMORY[0x277D3EDE8] loadOtherMetadataForPath:v7 error:&v64];
        v51 = v64;
        if (v51 || !v34)
        {
          v35 = PBFLogMigration();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_3();
          }
        }

        else
        {
          v35 = [v34 encodeJSON];
          if ([v35 length])
          {
            [*(a1 + 40) setObject:v35 forKeyedSubscript:*MEMORY[0x277D3EEC8]];
          }

          v36 = PBFLogMigration();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v36, OS_LOG_TYPE_DEFAULT, "ported other metadata to attribute", buf, 2u);
          }
        }

        v63 = 0;
        v37 = [MEMORY[0x277D3EDE8] loadHomeScreenConfigurationForPath:v7 error:&v63];
        v50 = v63;
        if (v50 || !v37)
        {
          v38 = PBFLogMigration();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_4();
          }
        }

        else
        {
          v38 = [v37 encodeJSON];
          if ([v38 length])
          {
            [*(a1 + 40) setObject:v38 forKeyedSubscript:*MEMORY[0x277D3EEC0]];
          }

          v39 = PBFLogMigration();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v39, OS_LOG_TYPE_DEFAULT, "ported home screen config to attribute", buf, 2u);
          }
        }

        if ([*(a1 + 40) count])
        {
          v40 = PBFLogMigration();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v6;
            _os_log_impl(&dword_21B526000, v40, OS_LOG_TYPE_DEFAULT, "updating attributes for poster %{public}@", buf, 0xCu);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v68 = __Block_byref_object_copy__4;
          v69 = __Block_byref_object_dispose__4;
          v70 = 0;
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_50;
          v59[3] = &unk_2782C7E90;
          v41 = *(a1 + 32);
          v60 = *(a1 + 40);
          v61 = v6;
          v62 = buf;
          v58 = 0;
          v42 = [v41 performChanges:v59 error:&v58];
          v43 = v58;
          v44 = v43;
          *(*(*(a1 + 64) + 8) + 24) = v42;
          if (*(*(*(a1 + 64) + 8) + 24) != 1 || v43 || *(*&buf[8] + 40))
          {
            v45 = *(*(a1 + 72) + 8);
            v47 = *(v45 + 40);
            v46 = (v45 + 40);
            if (!v47)
            {
              v48 = *(*&buf[8] + 40);
              if (v44 | v48)
              {
                if (v48)
                {
                  v49 = *(*&buf[8] + 40);
                }

                else
                {
                  v49 = v44;
                }

                objc_storeStrong(v46, v49);
              }
            }

            *a3 = 1;

            _Block_object_dispose(buf, 8);
          }

          else
          {

            _Block_object_dispose(buf, 8);
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_50(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [*(a1 + 32) keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = *MEMORY[0x277D3EEF0];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
        v12 = *(a1 + 40);
        v13 = *(*(a1 + 48) + 8);
        obj = 0;
        LODWORD(v10) = [v3 mutateAttributeForPoster:v12 roleId:v8 attributeId:v10 attributePayload:v11 error:&obj];
        objc_storeStrong((v13 + 40), obj);
        if (!v10 || *(*(*(a1 + 48) + 8) + 40))
        {

          v14 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v14 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_13:

  return v14;
}

uint64_t __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_57(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 identifierURL];
  v10 = [v9 pbf_creationDate];

  v11 = [v8 identifierURL];
  v12 = [v11 pbf_creationDate];

  v13 = [v10 compare:v12];
  return v13;
}

uint64_t __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_59(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 identifierURL];
  v10 = [v9 pbf_creationDate];

  v11 = [v8 identifierURL];
  v12 = [v11 pbf_creationDate];

  v13 = [v10 compare:v12];
  return v13;
}

uint64_t __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_60(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v49 objects:v57 count:16];
  v6 = MEMORY[0x277D3EEF0];
  v45 = v5;
  if (v5)
  {
    v7 = *v50;
    v8 = *MEMORY[0x277D3EEF0];
    v44 = *v50;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v49 + 1) + 8 * v9);
        v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
        if (!v11)
        {
          v12 = PBFLogMigration();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v54 = v10;
            _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "Unable to create UUID from posterUUIDString: %{public}@; not-fatal; continuing.", buf, 0xCu);
          }

          goto LABEL_46;
        }

        v12 = v11;
        v13 = [v3 sortedPosterUUIDsForRole:v8 error:0];
        v14 = [v13 containsObject:v12];

        if (v14)
        {
          v15 = PBFLogMigration();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v54 = v12;
            _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_DEFAULT, "poster uuid %{public}@ already added; continuing", buf, 0xCu);
          }
        }

        else
        {
          v15 = [*(a1 + 40) objectForKey:v10];
          if (v15)
          {
            v48 = 0;
            v16 = [v3 addPosterUUID:v12 provider:v15 error:&v48];
            v17 = v48;
            if (!v16)
            {
              goto LABEL_42;
            }

            v18 = a1;
            v19 = v4;
            v20 = PBFLogMigration();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v54 = v12;
              _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_INFO, "poster uuid %{public}@  added", buf, 0xCu);
            }

            v47 = 0;
            v21 = [v3 assignPosterUUID:v12 toRole:v8 error:&v47];
            v22 = v47;

            if (!v21)
            {
              v17 = v22;
              v4 = v19;
              a1 = v18;
LABEL_42:
              v37 = *(*(a1 + 56) + 8);
              v40 = *(v37 + 40);
              v38 = (v37 + 40);
              v39 = v40;
              if (v40)
              {
                v41 = v39;
              }

              else
              {
                v41 = v17;
              }

              objc_storeStrong(v38, v41);

LABEL_46:
              v42 = 0;
              goto LABEL_52;
            }

            v23 = PBFLogMigration();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v54 = v12;
              _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_INFO, "poster uuid %{public}@ assigned to lock screen", buf, 0xCu);
            }

            v4 = v19;
            a1 = v18;
            v7 = v44;
          }

          else
          {
            v22 = PBFLogMigration();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v54 = v10;
              _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_DEFAULT, "Unable to find provider for posterUUID: %{public}@; not-fatal; continuing.", buf, 0xCu);
            }
          }
        }

        ++v9;
      }

      while (v45 != v9);
      v24 = [v4 countByEnumeratingWithState:&v49 objects:v57 count:16];
      v6 = MEMORY[0x277D3EEF0];
      v45 = v24;
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  if (*(a1 + 48))
  {
    v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 48)];
  }

  else
  {
    v25 = 0;
  }

  v26 = *v6;
  v27 = [v3 sortedPosterUUIDsForRole:*v6 error:0];
  v28 = v27;
  if (v25 && ([v27 containsObject:v25] & 1) != 0)
  {
    v12 = v25;
  }

  else
  {
    v29 = PBFLogMigration();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v54 = v25;
      v55 = 2114;
      v56 = v28;
      _os_log_impl(&dword_21B526000, v29, OS_LOG_TYPE_DEFAULT, "selected posterUUID not valid (%{public}@); current posters: %{public}@", buf, 0x16u);
    }

    v12 = [v28 firstObject];

    v30 = PBFLogMigration();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v54 = v12;
      _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_INFO, "replacing selected posterUUID w/ first poster uuid %{public}@", buf, 0xCu);
    }

    if (!v12)
    {
      v4 = 0;
      goto LABEL_48;
    }
  }

  v46 = 0;
  v31 = [v3 markPosterUUIDAsSelected:v12 roleId:v26 error:&v46];
  v4 = v46;
  if ((v31 & 1) == 0)
  {
    v32 = PBFLogMigration();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_60_cold_1();
    }

    v33 = PBFLogMigration();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      goto LABEL_51;
    }

    *buf = 0;
    v34 = "Migration will continue.";
    v35 = v33;
    v36 = 2;
    goto LABEL_50;
  }

LABEL_48:
  v33 = PBFLogMigration();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v54 = v12;
    v34 = "successfully selected posterUUID %{public}@";
    v35 = v33;
    v36 = 12;
LABEL_50:
    _os_log_impl(&dword_21B526000, v35, OS_LOG_TYPE_INFO, v34, buf, v36);
  }

LABEL_51:

  v42 = 1;
LABEL_52:

  return v42;
}

- (void)migrateDataStoreToCurrentVersion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)migrateDataStoreToCurrentVersion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)migrateDataStoreAtBaseURL:fromVersion:toVersion:cleanupAfterMigrationSucceeds:error:.cold.1()
{
  OUTLINED_FUNCTION_4_2();
  *v0 = 138543362;
  *v1 = v2;
  _os_log_error_impl(&dword_21B526000, v4, OS_LOG_TYPE_ERROR, "no database? %{public}@", v3, 0xCu);
}

+ (void)migrateDataStoreAtBaseURL:fromVersion:toVersion:cleanupAfterMigrationSucceeds:error:.cold.2()
{
  OUTLINED_FUNCTION_4_2();
  *v0 = 138543362;
  *v1 = v2;
  _os_log_error_impl(&dword_21B526000, v4, OS_LOG_TYPE_ERROR, "error updating to 61: %{public}@", v3, 0xCu);
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_1()
{
  OUTLINED_FUNCTION_3_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_2()
{
  OUTLINED_FUNCTION_3_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_3()
{
  OUTLINED_FUNCTION_3_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_4()
{
  OUTLINED_FUNCTION_3_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_60_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end