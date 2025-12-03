@interface PLSearchIndexingEngineLibraryServicesProvider
- (PLSearchIndexingEngineLibraryServicesProvider)initWithLSM:(id)m;
- (id)createLogger;
- (id)libraryWithName:(const char *)name;
- (id)redactedDescription;
@end

@implementation PLSearchIndexingEngineLibraryServicesProvider

- (id)createLogger
{
  v69 = *MEMORY[0x1E69E9840];
  pathManager = [(PLSearchIndexingEngineLibraryServicesProvider *)self pathManager];
  libraryURL = [pathManager libraryURL];

  v5 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:libraryURL createIfMissing:0 error:0];
  uuid = [v5 uuid];
  if (!uuid)
  {
    libraryIdentifier = [(PLSearchIndexingEngineLibraryServicesProvider *)self libraryIdentifier];
    if (libraryIdentifier > 1)
    {
      v11 = @"UBF_SYND";
      if (libraryIdentifier != 3)
      {
        v11 = 0;
      }

      if (libraryIdentifier == 2)
      {
        uuid = @"UBF_MSGX";
      }

      else
      {
        uuid = v11;
      }
    }

    else if (libraryIdentifier)
    {
      if (libraryIdentifier == 1)
      {
        pathManager2 = [(PLSearchIndexingEngineLibraryServicesProvider *)self pathManager];
        isDCIM = [pathManager2 isDCIM];
        v10 = @"UBF_SPLX";
        if (isDCIM)
        {
          v10 = @"DCIM_SPL";
        }

        uuid = v10;
      }

      else
      {
        uuid = 0;
      }
    }

    else
    {
      isAppPhotoLibrary = [(PLLibraryServicesManager *)self->_lsm isAppPhotoLibrary];
      v13 = @"UBF_USER";
      if (isAppPhotoLibrary)
      {
        v13 = @"UBF_APPX";
      }

      uuid = v13;
    }
  }

  v14 = [MEMORY[0x1E69BF210] setupWithLibraryIdentifier:uuid type:2];
  [v14 setEnableAutoFlush:1];
  v15 = PLSearchBackendIndexStatusGetLog();
  v16 = v15;
  if (uuid)
  {
    v17 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (!v17)
    {
      goto LABEL_33;
    }

    if (v14)
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      memset(buf, 0, sizeof(buf));
      v18 = PLSearchBackendIndexStatusGetLog();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      lastPathComponent = [libraryURL lastPathComponent];
      v34 = 138543618;
      v35 = uuid;
      v36 = 2114;
      v37 = lastPathComponent;
      LODWORD(v33) = 22;
      v20 = _os_log_send_and_compose_impl();

      [v14 logWithMessage:v20 fromCodeLocation:"PLSearchIndexingEngine.m" type:{155, 0, &v34, v33}];
      if (v20 == buf)
      {
        goto LABEL_33;
      }

      v21 = v20;
LABEL_26:
      free(v21);
      goto LABEL_33;
    }

    v26 = PLSearchBackendIndexStatusGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      lastPathComponent2 = [libraryURL lastPathComponent];
      *buf = 138543618;
      *&buf[4] = uuid;
      *&buf[12] = 2114;
      *&buf[14] = lastPathComponent2;
      v28 = "[Search Logger]: Library identifier for library : [%{public}@ : %{public}@]";
      v29 = v26;
      v30 = OS_LOG_TYPE_DEFAULT;
      v31 = 22;
LABEL_31:
      _os_log_impl(&dword_19BF1F000, v29, v30, v28, buf, v31);
    }
  }

  else
  {
    v22 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (!v22)
    {
      goto LABEL_33;
    }

    if (v14)
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      memset(buf, 0, sizeof(buf));
      v23 = PLSearchBackendIndexStatusGetLog();
      os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      lastPathComponent3 = [libraryURL lastPathComponent];
      v34 = 138543362;
      v35 = lastPathComponent3;
      LODWORD(v33) = 12;
      v25 = _os_log_send_and_compose_impl();

      [v14 logWithMessage:v25 fromCodeLocation:"PLSearchIndexingEngine.m" type:{157, 16, &v34, v33}];
      if (v25 == buf)
      {
        goto LABEL_33;
      }

      v21 = v25;
      goto LABEL_26;
    }

    v26 = PLSearchBackendIndexStatusGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      lastPathComponent2 = [libraryURL lastPathComponent];
      *buf = 138543362;
      *&buf[4] = lastPathComponent2;
      v28 = "[Search Logger]: Failed to obtain library identifier for library : %{public}@";
      v29 = v26;
      v30 = OS_LOG_TYPE_ERROR;
      v31 = 12;
      goto LABEL_31;
    }
  }

LABEL_33:

  return v14;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E69BF238];
  pathManager = [(PLLibraryServicesManager *)self->_lsm pathManager];
  v5 = [pathManager photoDirectoryWithType:1];
  v6 = [v3 redactedDescriptionForPath:v5];

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  [(PLLibraryServicesManager *)self->_lsm wellKnownPhotoLibraryIdentifier];
  v9 = PLStringFromWellKnownPhotoLibraryIdentifier();
  v10 = [v7 stringWithFormat:@"<%@: %p> [%@] [%@]", v8, self, v9, v6];

  return v10;
}

- (id)libraryWithName:(const char *)name
{
  databaseContext = [(PLLibraryServicesManager *)self->_lsm databaseContext];
  v5 = [databaseContext newShortLivedLibraryWithName:name];

  return v5;
}

- (PLSearchIndexingEngineLibraryServicesProvider)initWithLSM:(id)m
{
  mCopy = m;
  v9.receiver = self;
  v9.super_class = PLSearchIndexingEngineLibraryServicesProvider;
  v6 = [(PLSearchIndexingEngineLibraryServicesProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lsm, m);
  }

  return v7;
}

@end