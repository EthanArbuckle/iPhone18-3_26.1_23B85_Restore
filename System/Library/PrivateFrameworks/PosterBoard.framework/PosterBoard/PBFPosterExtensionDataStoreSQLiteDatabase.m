@interface PBFPosterExtensionDataStoreSQLiteDatabase
- (BOOL)checkIfPosterUUIDs:(id)a3 belongToRole:(id)a4 error:(id *)a5;
- (BOOL)performChanges:(id)a3 error:(id *)a4;
- (BOOL)validateDatabaseWithError:(id *)a3;
- (PBFPosterExtensionDataStoreSQLiteDatabase)initWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)attributeForPoster:(id)a3 roleId:(id)a4 attributeId:(id)a5 error:(id *)a6;
- (id)attributeIdentifiersForPoster:(id)a3 roleId:(id)a4 error:(id *)a5;
- (id)attributesForPoster:(id)a3 roleId:(id)a4 attributeIdentifiers:(id)a5 error:(id *)a6;
- (id)dataStoreMetadataWithError:(id *)a3;
- (id)extensionIdentifierForPosterUUID:(id)a3 error:(id *)a4;
- (id)extensionIdentifiersForRole:(id)a3 error:(id *)a4;
- (id)posterUUIDsForExtensionIdentifier:(id)a3 role:(id)a4 error:(id *)a5;
- (id)roleDisplayNamesForIdentifiers:(id)a3 error:(id *)a4;
- (id)roleIdentifiersWithError:(id *)a3;
- (id)selectedPosterUUIDForRole:(id)a3 error:(id *)a4;
- (id)sortedPosterUUIDsForRole:(id)a3 error:(id *)a4;
- (id)underlyingReadonlyDatabaseConnection;
- (unint64_t)version;
- (void)cancel;
- (void)invalidate;
@end

@implementation PBFPosterExtensionDataStoreSQLiteDatabase

- (PBFPosterExtensionDataStoreSQLiteDatabase)initWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (!v9)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase initWithURL:a2 options:? error:?];
  }

  v10 = v9;
  v64.receiver = self;
  v64.super_class = PBFPosterExtensionDataStoreSQLiteDatabase;
  v11 = [(PBFPosterExtensionDataStoreSQLiteDatabase *)&v64 init];
  if (!v11)
  {
    goto LABEL_48;
  }

  v12 = [v10 copy];
  URL = v11->_URL;
  v11->_URL = v12;

  v11->_options = a4;
  [(PBFPosterExtensionDataStoreSQLiteDatabase *)v11 setCheckpointWALOnInvalidate:1];
  v11->_lock._os_unfair_lock_opaque = 0;
  v11->_readwriteLock._os_unfair_lock_opaque = 0;
  v14 = MEMORY[0x277CBEBC0];
  v15 = [v10 path];
  v16 = [v15 stringByAppendingString:@"-shm"];
  v17 = [v14 fileURLWithPath:v16];

  v18 = MEMORY[0x277CBEBC0];
  v19 = [v10 path];
  v20 = [v19 stringByAppendingString:@"-wal"];
  v21 = [v18 fileURLWithPath:v20];

  v52 = a5;
  v53 = v11;
  if ((a4 & 0xA) != 0)
  {
    v22 = [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl alloc];
    if ((a4 & 2) != 0)
    {
      v23 = 6;
    }

    else
    {
      v23 = 2;
    }

    if ((a4 & 4) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v63 = 0;
    v25 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v22 initWithURL:v10 options:v24 error:&v63];
    v26 = v63;
    v27 = v26;
    if (((a4 & 8) != 0 || (a4 & 2) != 0) && !v26)
    {
      v28 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v25 setup];

      v27 = v28;
    }

    [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v25 invalidate];
    goto LABEL_15;
  }

  if ((a4 & 4) != 0)
  {
    if (![v17 checkResourceIsReachableAndReturnError:0] || (objc_msgSend(v21, "checkResourceIsReachableAndReturnError:", 0) & 1) == 0)
    {
      v62 = 0;
      v25 = [[_PBFPosterExtensionDataStoreSQLiteDatabaseImpl alloc] initWithURL:v10 options:2 error:&v62];
      [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v25 invalidate];
LABEL_15:

      goto LABEL_16;
    }
  }

  else if ((a4 & 1) == 0)
  {
    v49 = _PBFPosterExtensionDataStoreSQLiteDatabaseError(1, 0, 0, 0);
    goto LABEL_16;
  }

  v49 = 0;
LABEL_16:
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v51 = v21;
  v69[0] = v17;
  v69[1] = v21;
  v54 = v10;
  v69[2] = v10;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:{3, v49}];
  v30 = [v29 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v59;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v59 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v58 + 1) + 8 * i);
        v35 = [v34 pf_allowSuspendWithOpenFileHandle];
        v36 = PBFLogSQLite();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v66 = v34;
          v67 = 1024;
          LODWORD(v68) = v35;
          _os_log_impl(&dword_21B526000, v36, OS_LOG_TYPE_DEFAULT, "Database file at %{public}@ allowSuspendWithOpenFileHandle: %{BOOL}u", buf, 0x12u);
        }

        if ((v35 & 1) == 0)
        {
          v57 = 0;
          v37 = [v34 pf_setAllowSuspendWithOpenFileHandle:1 error:&v57];
          v38 = v57;
          v39 = PBFLogSQLite();
          v40 = v39;
          if (v37)
          {
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v41 = [v34 pf_allowSuspendWithOpenFileHandle];
              *buf = 138543618;
              v66 = v34;
              v67 = 1024;
              LODWORD(v68) = v41;
              _os_log_impl(&dword_21B526000, v40, OS_LOG_TYPE_DEFAULT, "Database file at %{public}@ was updated to allowSuspendWithOpenFileHandle: %{BOOL}u", buf, 0x12u);
            }
          }

          else if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v66 = v34;
            v67 = 2114;
            v68 = v38;
            _os_log_error_impl(&dword_21B526000, v40, OS_LOG_TYPE_ERROR, "Database file at %{public}@ failed to update allowSuspendWithOpenFileHandle! Error: %{public}@", buf, 0x16u);
          }
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v31);
  }

  v11 = v53;
  v10 = v54;
  v42 = v50;
  if (!v50)
  {
    v56 = 0;
    v43 = [[_PBFPosterExtensionDataStoreSQLiteDatabaseImpl alloc] initWithURL:v54 options:1 error:&v56];
    v42 = v56;
    lock_readonlyImpl = v53->_lock_readonlyImpl;
    v53->_lock_readonlyImpl = v43;

    if (!v42)
    {
      v55 = 0;
      [(PBFPosterExtensionDataStoreSQLiteDatabase *)v53 validateDatabaseWithError:&v55];
      v47 = v55;
      if (v47)
      {
        v42 = v47;
        if (!v52)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

LABEL_48:
      v46 = v11;
      goto LABEL_49;
    }
  }

  if (v52)
  {
LABEL_35:
    v45 = v42;
    *v52 = v42;
  }

LABEL_36:
  [(PBFPosterExtensionDataStoreSQLiteDatabase *)v53 invalidate];

  v46 = 0;
LABEL_49:

  return v46;
}

- (unint64_t)version
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl version];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)underlyingReadonlyDatabaseConnection
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl connection];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)validateDatabaseWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (a3)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *a3 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl validateDatabaseWithError:a3];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl invalidate];
  lock_readonlyImpl = self->_lock_readonlyImpl;
  self->_lock_readonlyImpl = 0;

  self->_lock_invalidated = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)dataStoreMetadataWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (a3)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *a3 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl dataStoreMetadataWithError:a3];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)roleIdentifiersWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (a3)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *a3 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl roleIdentifiersWithError:a3];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)extensionIdentifiersForRole:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (a4)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl extensionIdentifiersForRole:v6 error:a4];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)attributeIdentifiersForPoster:(id)a3 roleId:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (a5)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *a5 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl attributeIdentifiersForPoster:v8 roleId:v9 error:a5];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)extensionIdentifierForPosterUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (a4)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl extensionIdentifierForPosterUUID:v6 error:a4];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)posterUUIDsForExtensionIdentifier:(id)a3 role:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (a5)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *a5 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl posterUUIDsForExtensionIdentifier:v8 role:v9 error:a5];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)sortedPosterUUIDsForRole:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase sortedPosterUUIDsForRole:a2 error:?];
  }

  v8 = v7;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (a4)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl sortedPosterUUIDsForRole:v8 error:a4];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)roleDisplayNamesForIdentifiers:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase roleDisplayNamesForIdentifiers:a2 error:?];
  }

  v8 = v7;
  if ([v7 count])
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_invalidated)
    {
      if (a4)
      {
        _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
        *a4 = v9 = 0;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl roleDisplayNamesForIdentifiers:v8 error:a4];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  return v9;
}

- (BOOL)checkIfPosterUUIDs:(id)a3 belongToRole:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase checkIfPosterUUIDs:a2 belongToRole:? error:?];
  }

  v11 = v10;
  if ([v9 count])
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_invalidated)
    {
      if (a5)
      {
        _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
        *a5 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl checkIfPosterUUIDs:v9 belongToRole:v11 error:a5];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)selectedPosterUUIDForRole:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase selectedPosterUUIDForRole:a2 error:?];
  }

  v8 = v7;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (a4)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl selectedPosterUUIDForRole:v8 error:a4];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)attributeForPoster:(id)a3 roleId:(id)a4 attributeId:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v12)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase attributeForPoster:a2 roleId:? attributeId:? error:?];
  }

  v14 = v13;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (a6)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *a6 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl attributeForPoster:v11 roleId:v12 attributeId:v14 error:a6];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v15;
}

- (id)attributesForPoster:(id)a3 roleId:(id)a4 attributeIdentifiers:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v12)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase attributesForPoster:a2 roleId:? attributeIdentifiers:? error:?];
  }

  v14 = v13;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    if (a6)
    {
      _PBFPosterExtensionDataStoreSQLiteDatabaseError(3, 0, 0, 0);
      *a6 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl attributesForPoster:v11 roleId:v12 attributeIdentifiers:v14 error:a6];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v15;
}

- (BOOL)performChanges:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    [PBFPosterExtensionDataStoreSQLiteDatabase performChanges:a2 error:?];
  }

  v8 = v7;
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_invalidated)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v11 = _os_activity_create(&dword_21B526000, "[PBFPosterExtensionDataStoreSQLiteDatabase performChanges:error:]", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DETACHED);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_unfair_lock_lock(&self->_readwriteLock);
  if ((self->_options & 4) != 0)
  {
    v16 = _PBFPosterExtensionDataStoreSQLiteDatabaseError(1, 0, @"readonly database", 0);
    v10 = 0;
    goto LABEL_16;
  }

  v12 = [_PBFPosterExtensionDataStoreSQLiteDatabaseImpl alloc];
  URL = self->_URL;
  v22 = 0;
  v14 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v12 initWithURL:URL options:2 error:&v22];
  v15 = v22;
  [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v14 setCheckpointWALOnInvalidate:[(PBFPosterExtensionDataStoreSQLiteDatabase *)self checkpointWALOnInvalidate]];
  if (!v15)
  {
    if (v14)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __66__PBFPosterExtensionDataStoreSQLiteDatabase_performChanges_error___block_invoke;
      v20[3] = &unk_2782C91A0;
      v21 = v8;
      v19 = 0;
      v10 = [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v14 performChanges:v20 error:&v19];
      v16 = v19;

      if (v10)
      {
LABEL_14:
        [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)v14 invalidate];
        goto LABEL_15;
      }
    }

    else
    {
      v10 = 0;
      v16 = 0;
    }

    if (!v16)
    {
      v16 = _PBFPosterExtensionDataStoreSQLiteDatabaseError(4, 0, 0, 0);
    }

    goto LABEL_14;
  }

  v16 = v15;
  v10 = 0;
LABEL_15:

LABEL_16:
  os_activity_scope_leave(&state);
  os_unfair_lock_unlock(&self->_readwriteLock);
  if (a4 && v16)
  {
    v17 = v16;
    *a4 = v16;
  }

LABEL_20:
  return v10;
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  [(_PBFPosterExtensionDataStoreSQLiteDatabaseImpl *)self->_lock_readonlyImpl cancel];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)initWithURL:(char *)a1 options:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"databaseURL", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sortedPosterUUIDsForRole:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"roleId", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)roleDisplayNamesForIdentifiers:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"roleIdentifiers", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)checkIfPosterUUIDs:(char *)a1 belongToRole:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"roleId", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)selectedPosterUUIDForRole:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"roleId", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)attributeForPoster:(char *)a1 roleId:attributeId:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"roleId", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)attributesForPoster:(char *)a1 roleId:attributeIdentifiers:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"roleId", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)performChanges:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"changeHandler", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end