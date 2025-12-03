@interface PLSyndicationIngestMutex
- (BOOL)shouldStopUsingSyndicationIngestLibraryWithIdentifier:(unsigned __int8)identifier;
- (PLSyndicationIngestMutex)initWithDatabaseContext:(id)context;
- (id)_obtainSyndicationIngestLibraryIfPossibleWithIdentifier:(unsigned __int8)identifier;
- (id)syndicationIngestMutexStateDescription;
- (id)tryUsingSyndicationIngestLibraryWithIdentifier:(unsigned __int8)identifier forceRetry:(BOOL)retry progress:(id)progress error:(id *)error;
- (void)stopUsingSyndicationIngestLibraryWithIdentifier:(unsigned __int8)identifier;
@end

@implementation PLSyndicationIngestMutex

- (void)stopUsingSyndicationIngestLibraryWithIdentifier:(unsigned __int8)identifier
{
  identifierCopy = identifier;
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_syndicationIngestLibraryLock);
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSyndicationIngestMutex.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"identifier != PLSyndicationIngestClientIdentifierNone"}];
  }

  if (self->_syndicationIngestClientIdentifier != identifierCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSyndicationIngestMutex.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"_syndicationIngestClientIdentifier == identifier"}];
  }

  syndicationIngestLibrary = self->_syndicationIngestLibrary;
  if (!syndicationIngestLibrary)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLSyndicationIngestMutex.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"_syndicationIngestLibrary != nil"}];

    syndicationIngestLibrary = self->_syndicationIngestLibrary;
  }

  self->_syndicationIngestClientIdentifier = 0;
  self->_currentOwnerThreadID = 0;
  name = [(PLPhotoLibrary *)syndicationIngestLibrary name];
  v8 = self->_syndicationIngestLibrary;
  self->_syndicationIngestLibrary = 0;

  [(NSDate *)self->_syndicationIngestLibraryUsageStart timeIntervalSinceNow];
  v10 = v9;
  syndicationIngestLibraryUsageStart = self->_syndicationIngestLibraryUsageStart;
  self->_syndicationIngestLibraryUsageStart = 0;

  os_unfair_lock_unlock(&self->_syndicationIngestLibraryLock);
  v12 = PLSyndicationGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = PLSyndicationIngestClientStringFromIdentifier(identifierCopy);
    *buf = 138412802;
    v18 = v13;
    v19 = 2112;
    v20 = name;
    v21 = 2048;
    v22 = 0.0 - v10;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "(MUTEX) %@ stopped using syndication ingest library %@ after %f sec", buf, 0x20u);
  }
}

- (BOOL)shouldStopUsingSyndicationIngestLibraryWithIdentifier:(unsigned __int8)identifier
{
  identifierCopy = identifier;
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_syndicationIngestLibraryLock);
  syndicationIngestClientIdentifier = self->_syndicationIngestClientIdentifier;
  if (syndicationIngestClientIdentifier == identifierCopy)
  {
    requestedSyndicationIngestClientIdentifier = self->_requestedSyndicationIngestClientIdentifier;
    os_unfair_lock_unlock(&self->_syndicationIngestLibraryLock);
    if (requestedSyndicationIngestClientIdentifier <= identifierCopy)
    {
      return 0;
    }

    v7 = &stru_1F0F06D80;
  }

  else
  {
    os_unfair_lock_unlock(&self->_syndicationIngestLibraryLock);
    v8 = MEMORY[0x1E696AEC0];
    v9 = PLSyndicationIngestClientStringFromIdentifier(syndicationIngestClientIdentifier);
    v7 = [v8 stringWithFormat:@" (current owner is %@)", v9];
  }

  v10 = PLSyndicationGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = PLSyndicationIngestClientStringFromIdentifier(identifierCopy);
    *buf = 138412546;
    v14 = v11;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "(MUTEX) %@ should stop using syndication ingest library%{public}@", buf, 0x16u);
  }

  return 1;
}

- (id)tryUsingSyndicationIngestLibraryWithIdentifier:(unsigned __int8)identifier forceRetry:(BOOL)retry progress:(id)progress error:(id *)error
{
  retryCopy = retry;
  identifierCopy = identifier;
  v84[1] = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  if (PLSyndicationRuntimeEnabled())
  {
    os_unfair_lock_lock(&self->_syndicationIngestLibraryLock);
    v11 = [(PLSyndicationIngestMutex *)self _obtainSyndicationIngestLibraryIfPossibleWithIdentifier:identifierCopy];
    if (v11)
    {
      v12 = v11;
      os_unfair_lock_unlock(&self->_syndicationIngestLibraryLock);
      v13 = 0;
      v14 = 0;
      goto LABEL_56;
    }

    if (self->_syndicationIngestClientIdentifier < identifierCopy)
    {
      syndicationIngestLibrary = self->_syndicationIngestLibrary;
      if (!syndicationIngestLibrary)
      {
        v23 = PLSyndicationGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_INFO, "(MUTEX) could not get a library and it's not already in use. Probably shutting down.", buf, 2u);
        }

        v24 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E69BFF48];
        v81 = *MEMORY[0x1E696A278];
        v82 = @"could not get a library and it's not already in use. Probably shutting down.";
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v14 = [v24 errorWithDomain:v25 code:49505 userInfo:v26];

        v22 = 0;
        if (retryCopy)
        {
          goto LABEL_22;
        }

        goto LABEL_16;
      }

      if (self->_requestedSyndicationIngestClientIdentifier < identifierCopy)
      {
        self->_requestedSyndicationIngestClientIdentifier = identifierCopy;
        v22 = syndicationIngestLibrary;
        goto LABEL_21;
      }

      v27 = PLSyndicationGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        requestedSyndicationIngestClientIdentifier = self->_requestedSyndicationIngestClientIdentifier;
        *buf = 67109376;
        *v79 = identifierCopy;
        *&v79[4] = 1024;
        *&v79[6] = requestedSyndicationIngestClientIdentifier;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_INFO, "(MUTEX) client %hhu try failed because client %hhu is already waiting", buf, 0xEu);
      }
    }

    v22 = 0;
LABEL_21:
    v14 = 0;
    if (retryCopy)
    {
LABEL_22:
      v13 = self->_syndicationIngestLibrary;

      v29 = PLSyndicationGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        syndicationIngestClientIdentifier = self->_syndicationIngestClientIdentifier;
        *buf = 67109632;
        *v79 = identifierCopy;
        *&v79[4] = 1024;
        *&v79[6] = syndicationIngestClientIdentifier;
        LOWORD(v80[0]) = 2048;
        *(v80 + 2) = v13;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_INFO, "(MUTEX) forceRetry: identifier %hhu _syndicationIngestClientIdentifier %hhu blockingLibrary %p", buf, 0x18u);
      }

LABEL_25:
      os_unfair_lock_unlock(&self->_syndicationIngestLibraryLock);
      if (v13 && ([progressCopy isCancelled] & 1) == 0)
      {
        errorCopy = error;
        v66 = *MEMORY[0x1E69BFF48];
        v65 = *MEMORY[0x1E696A278];
        v31 = 10000;
        while (1)
        {
          v32 = [MEMORY[0x1E695DF00] now];
          v33 = PLSyndicationGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = PLSyndicationIngestClientStringFromIdentifier(identifierCopy);
            *buf = 138412290;
            *v79 = v34;
            _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_INFO, "(MUTEX) %@ Waiting for syndication ingest mutex", buf, 0xCu);
          }

          [(PLPhotoLibrary *)v13 performBlockAndWait:&__block_literal_global_105089];
          [v32 timeIntervalSinceNow];
          v36 = v35;
          v37 = PLSyndicationGetLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = PLSyndicationIngestClientStringFromIdentifier(identifierCopy);
            *buf = 138412546;
            *v79 = v38;
            *&v79[8] = 2048;
            v80[0] = 0.0 - v36;
            _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_INFO, "(MUTEX) %@ Done waiting for syndication ingest mutex. Blocked for %f sec", buf, 0x16u);
          }

          os_unfair_lock_lock(&self->_syndicationIngestLibraryLock);
          v39 = [(PLSyndicationIngestMutex *)self _obtainSyndicationIngestLibraryIfPossibleWithIdentifier:identifierCopy];
          if (v39)
          {
            break;
          }

          if (self->_invalidated)
          {
            v45 = PLSyndicationGetLog();
            error = errorCopy;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v79 = identifierCopy;
              _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEFAULT, "(MUTEX) client %hhu unable to obtain mutex because it was invalidated (library shutdown)", buf, 8u);
            }

            v46 = MEMORY[0x1E696ABC0];
            v74 = v65;
            v75 = @"unable to obtain mutex because it was invalidated (library shutdown)";
            v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
            v47 = [v46 errorWithDomain:v66 code:49505 userInfo:v43];
            goto LABEL_50;
          }

          if (self->_requestedSyndicationIngestClientIdentifier != identifierCopy && !retryCopy)
          {
            v48 = PLSyndicationGetLog();
            error = errorCopy;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = self->_syndicationIngestClientIdentifier;
              v50 = self->_requestedSyndicationIngestClientIdentifier;
              *buf = 67109632;
              *v79 = identifierCopy;
              *&v79[4] = 1024;
              *&v79[6] = v49;
              LOWORD(v80[0]) = 1024;
              *(v80 + 2) = v50;
              _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_INFO, "(MUTEX) client %hhu unable to obtain mutex. Client %hhu has it or client %hhu is waiting", buf, 0x14u);
            }

            v51 = MEMORY[0x1E696ABC0];
            v72 = v65;
            v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"client %hhu unable to obtain mutex. Client %hhu has it or client %hhu is waiting", identifierCopy, self->_syndicationIngestClientIdentifier, self->_requestedSyndicationIngestClientIdentifier];
            v73 = v43;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
            v47 = [v51 errorWithDomain:v66 code:49505 userInfo:v52];

            v14 = v52;
LABEL_50:

            v12 = 0;
            v14 = v47;
            goto LABEL_55;
          }

          v40 = self->_syndicationIngestLibrary;

          if (!v40)
          {
            v53 = PLSyndicationGetLog();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "(MUTEX) Unable to obtain syndication ingest library mutex and there's no blocking library", buf, 2u);
            }

            v54 = MEMORY[0x1E696ABC0];
            v76 = v65;
            v77 = @"Unable to obtain syndication ingest library mutex and there's no blocking library";
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
            [v54 errorWithDomain:v66 code:49505 userInfo:v13];
            v12 = 0;
            v14 = v43 = v14;
            goto LABEL_54;
          }

          os_unfair_lock_unlock(&self->_syndicationIngestLibraryLock);
          v41 = PLSyndicationGetLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = PLSyndicationIngestClientStringFromIdentifier(identifierCopy);
            *buf = 138412546;
            *v79 = v42;
            *&v79[8] = 1024;
            LODWORD(v80[0]) = v31;
            _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_INFO, "(MUTEX) %@ did not get the syndication ingest mutex, retrying after %u usec...", buf, 0x12u);
          }

          usleep(v31);
          v31 <<= v31 < 0x989680;

          v13 = v40;
          if ([progressCopy isCancelled])
          {
            v12 = 0;
            v13 = v40;
            error = errorCopy;
            goto LABEL_56;
          }
        }

        v12 = v39;
        v43 = PLSyndicationGetLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = PLSyndicationIngestClientStringFromIdentifier(identifierCopy);
          *buf = 138412290;
          *v79 = v44;
          _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_INFO, "(MUTEX) %@ Acquired the syndication ingest mutex", buf, 0xCu);
        }

LABEL_54:
        error = errorCopy;
LABEL_55:

        os_unfair_lock_unlock(&self->_syndicationIngestLibraryLock);
        v13 = 0;
      }

      else
      {
        v12 = 0;
      }

LABEL_56:
      if ([progressCopy isCancelled])
      {
        v55 = MEMORY[0x1E696ABC0];
        v56 = *MEMORY[0x1E696A250];
        v70 = *MEMORY[0x1E696A278];
        v71 = @"client cancelled while attempting to acquire syndication ingest mutex";
        v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v58 = [v55 errorWithDomain:v56 code:3072 userInfo:v57];

        v14 = v58;
      }

      if (v12 | v14)
      {
        v18 = v14;
        if (v12)
        {
LABEL_63:

          goto LABEL_64;
        }
      }

      else
      {
        v59 = MEMORY[0x1E696ABC0];
        v60 = *MEMORY[0x1E69BFF48];
        v68 = *MEMORY[0x1E696A278];
        v69 = @"Unknown error";
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v62 = [v59 errorWithDomain:v60 code:49505 userInfo:v61];

        v18 = v62;
      }

      if (error)
      {
        v63 = v18;
        *error = v18;
      }

      goto LABEL_63;
    }

LABEL_16:
    v13 = v22;
    goto LABEL_25;
  }

  v15 = PLSyndicationGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "(MUTEX) Syndication runtime is disabled via internal user defaults", buf, 2u);
  }

  v16 = MEMORY[0x1E696ABC0];
  v17 = *MEMORY[0x1E69BFF48];
  v83 = *MEMORY[0x1E696A278];
  v84[0] = @"Syndication runtime is disabled via internal user defaults";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
  v19 = [v16 errorWithDomain:v17 code:46309 userInfo:v18];
  v13 = v19;
  if (error)
  {
    v20 = v19;
    v12 = 0;
    *error = v13;
  }

  else
  {
    v12 = 0;
  }

LABEL_64:

  return v12;
}

- (id)_obtainSyndicationIngestLibraryIfPossibleWithIdentifier:(unsigned __int8)identifier
{
  identifierCopy = identifier;
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_syndicationIngestLibraryLock);
  if (self->_invalidated)
  {
    goto LABEL_9;
  }

  v17 = 0;
  pthread_threadid_np(0, &v17);
  if (self->_syndicationIngestClientIdentifier == identifierCopy && v17 == self->_currentOwnerThreadID)
  {
    v6 = PLSyndicationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = PLSyndicationIngestClientStringFromIdentifier(identifierCopy);
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "(MUTEX) client identifier %@ already has the mutex from this thread, returning nil", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_21;
  }

  if (self->_syndicationIngestLibrary || self->_requestedSyndicationIngestClientIdentifier > identifierCopy)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_databaseContext);
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    p_super = [MEMORY[0x1E696AAA8] currentHandler];
    [p_super handleFailureInMethod:a2 object:self file:@"PLSyndicationIngestMutex.m" lineNumber:115 description:@"Invalid parameter not satisfying: %@", @"databaseContext"];
LABEL_19:
    v8 = 0;
    goto LABEL_20;
  }

  wellKnownPhotoLibraryIdentifier = [WeakRetained wellKnownPhotoLibraryIdentifier];
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLSharingIngestLibrary(%tu)-%hhu", wellKnownPhotoLibraryIdentifier, identifierCopy];
  v13 = -[NSObject newShortLivedLibraryWithName:](v6, "newShortLivedLibraryWithName:", [identifierCopy UTF8String]);
  syndicationIngestLibrary = self->_syndicationIngestLibrary;
  self->_syndicationIngestLibrary = v13;

  if (!self->_syndicationIngestLibrary)
  {
    p_super = PLSyndicationGetLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, p_super, OS_LOG_TYPE_DEFAULT, "(MUTEX) did not obtain library from database context. Probably shutting down.", buf, 2u);
    }

    goto LABEL_19;
  }

  self->_syndicationIngestClientIdentifier = identifierCopy;
  pthread_threadid_np(0, &self->_currentOwnerThreadID);
  self->_requestedSyndicationIngestClientIdentifier = 0;
  v8 = self->_syndicationIngestLibrary;
  v15 = [MEMORY[0x1E695DF00] now];
  p_super = &self->_syndicationIngestLibraryUsageStart->super;
  self->_syndicationIngestLibraryUsageStart = v15;
LABEL_20:

LABEL_21:
LABEL_10:

  return v8;
}

- (id)syndicationIngestMutexStateDescription
{
  os_unfair_lock_lock(&self->_syndicationIngestLibraryLock);
  [(NSDate *)self->_syndicationIngestLibraryUsageStart timeIntervalSinceNow];
  v4 = 0.0 - v3;
  requestedSyndicationIngestClientIdentifier = self->_requestedSyndicationIngestClientIdentifier;
  v6 = MEMORY[0x1E696AEC0];
  v7 = PLSyndicationIngestClientStringFromIdentifier(self->_syndicationIngestClientIdentifier);
  v8 = v7;
  currentOwnerThreadID = self->_currentOwnerThreadID;
  if (requestedSyndicationIngestClientIdentifier)
  {
    v10 = PLSyndicationIngestClientStringFromIdentifier(self->_requestedSyndicationIngestClientIdentifier);
    v11 = [v6 stringWithFormat:@"Active: %@ (%f sec), thread %llu, Waiting: %@", v8, *&v4, currentOwnerThreadID, v10];
  }

  else
  {
    v11 = [v6 stringWithFormat:@"Active: %@ (%f sec), thread %llu, No contention", v7, *&v4, self->_currentOwnerThreadID];
  }

  os_unfair_lock_unlock(&self->_syndicationIngestLibraryLock);

  return v11;
}

- (PLSyndicationIngestMutex)initWithDatabaseContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = PLSyndicationIngestMutex;
  v5 = [(PLSyndicationIngestMutex *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_databaseContext, contextCopy);
    syndicationIngestLibrary = v6->_syndicationIngestLibrary;
    v6->_syndicationIngestLibrary = 0;

    v6->_syndicationIngestLibraryLock._os_unfair_lock_opaque = 0;
    *&v6->_syndicationIngestClientIdentifier = 0;
  }

  return v6;
}

@end