@interface PRUISPosterChannelModelCoordinator
- (BOOL)accessModel:(id)a3 reason:(id)a4 error:(id *)a5;
- (BOOL)mutateModel:(id)a3 reason:(id)a4 error:(id *)a5;
- (PRUISPosterChannelModelCoordinator)init;
- (PRUISPosterChannelModelCoordinator)initWithChannelConfiguration:(id)a3 extensionProvider:(id)a4;
- (id)channelPersistenceURLForChannelIdentifier:(id)a3;
- (id)fileSystemEndpointForChannelIdentifier:(id)a3;
- (id)updateGalleryForChannel:(id)a3 fetchOptions:(id)a4;
- (void)dealloc;
@end

@implementation PRUISPosterChannelModelCoordinator

- (PRUISPosterChannelModelCoordinator)initWithChannelConfiguration:(id)a3 extensionProvider:(id)a4
{
  v80[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v62 = a4;
  v66 = v7;
  if (!v7)
  {
    [PRUISPosterChannelModelCoordinator initWithChannelConfiguration:a2 extensionProvider:?];
  }

  if (initWithChannelConfiguration_extensionProvider__onceToken != -1)
  {
    [PRUISPosterChannelModelCoordinator initWithChannelConfiguration:extensionProvider:];
  }

  v76.receiver = self;
  v76.super_class = PRUISPosterChannelModelCoordinator;
  v8 = [(PRUISPosterChannelModelCoordinator *)&v76 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_29;
  }

  objc_storeStrong(&v8->_extensionProvider, a4);
  v10 = [v7 URL];
  v11 = [v10 URLByStandardizingPath];
  v12 = [v11 URLByResolvingSymlinksInPath];
  v13 = *(v9 + 48);
  v63 = (v9 + 48);
  *(v9 + 48) = v12;

  v65 = [*(v9 + 48) URLByAppendingPathComponent:@"Contents" isDirectory:1];
  v14 = [v65 URLByAppendingPathComponent:@"channelDB.sqlite" isDirectory:0];
  v15 = *(v9 + 72);
  *(v9 + 72) = v14;

  v64 = [v65 URLByAppendingPathComponent:@"Data" isDirectory:1];
  v60 = [v64 URLByAppendingPathComponent:@"Channels" isDirectory:1];
  v16 = objc_alloc(MEMORY[0x1E69C5118]);
  v17 = PFFileProtectionNoneAttributes();
  v79 = *MEMORY[0x1E695DB80];
  v80[0] = MEMORY[0x1E695E118];
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
  v19 = [v16 initWithRelativePathComponents:@"Channels" attributes:v17 resourceValues:v18];
  v20 = *(v9 + 96);
  *(v9 + 96) = v19;

  v21 = [v7 role];
  v22 = *(v9 + 56);
  *(v9 + 56) = v21;

  if (objc_opt_respondsToSelector())
  {
    v23 = [v7 fileManager];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = objc_opt_new();
    }

    v27 = *(v9 + 64);
    *(v9 + 64) = v25;
  }

  else
  {
    v26 = objc_opt_new();
    v24 = *(v9 + 64);
    *(v9 + 64) = v26;
  }

  v28 = *v63;
  v75 = 0;
  v29 = *MEMORY[0x1E695DB00];
  v74 = 0;
  [v28 getResourceValue:&v75 forKey:v29 error:&v74];
  v30 = v75;
  v59 = v74;
  v61 = v30;
  if (v59 && [v30 length])
  {
    [(PRUISPosterChannelModelCoordinator *)v63 initWithChannelConfiguration:a2 extensionProvider:v9, v59];
  }

  v31 = [v30 pf_hexadecimalEncodedString];
  v32 = *(v9 + 32);
  *(v9 + 32) = v31;

  v33 = __allModelCoordinators;
  objc_sync_enter(v33);
  v34 = [__allModelCoordinators member:v9];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    [__allModelCoordinators addObject:v9];
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v77[0] = v65;
    v77[1] = v64;
    v77[2] = v60;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];
    v38 = [v37 countByEnumeratingWithState:&v70 objects:v78 count:16];
    if (v38)
    {
      v39 = *v71;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v71 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v70 + 1) + 8 * i);
          v42 = *(v9 + 64);
          v43 = PFFileProtectionNoneAttributes();
          [v42 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:v43 error:0];

          [v41 pf_setExcludedFromBackup:1 error:0];
          [v41 pf_setPurgable:0 afterDate:0 error:0];
        }

        v38 = [v37 countByEnumeratingWithState:&v70 objects:v78 count:16];
      }

      while (v38);
    }

    [*v63 pf_setExcludedFromBackup:1 error:0];
    [*v63 pf_setPurgable:0 afterDate:0 error:0];
  }

  objc_sync_exit(v33);
  if (!v35)
  {
    v44 = MEMORY[0x1E696AEC0];
    v45 = *(v9 + 56);
    v46 = [*(v9 + 48) lastPathComponent];
    v47 = v46;
    v48 = &stru_1F4ACA8E0;
    if (v46)
    {
      v48 = v46;
    }

    v49 = [v44 stringWithFormat:@"<PRUISPosterChannelControlling:%@:%@>", v45, v48];
    v50 = *(v9 + 88);
    *(v9 + 88) = v49;

    v51 = [objc_alloc(MEMORY[0x1E69C5140]) initWithLockIdentifier:@"PRUISPosterChannelModelCoordinator"];
    v52 = *(v9 + 16);
    *(v9 + 16) = v51;

    v53 = [objc_alloc(MEMORY[0x1E69C5120]) initWithBaseURL:v64 fileManager:*(v9 + 64)];
    v54 = *(v9 + 40);
    *(v9 + 40) = v53;

    objc_initWeak(&location, v9);
    v55 = MEMORY[0x1E698E658];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __85__PRUISPosterChannelModelCoordinator_initWithChannelConfiguration_extensionProvider___block_invoke_2;
    v67[3] = &unk_1E83A8150;
    objc_copyWeak(&v68, &location);
    v56 = [v55 assertionWithIdentifier:@"InUseAssertionProvider" stateDidChangeHandler:v67];
    v57 = *(v9 + 8);
    *(v9 + 8) = v56;

    objc_destroyWeak(&v68);
    objc_destroyWeak(&location);

LABEL_29:
    v35 = v9;
    goto LABEL_30;
  }

LABEL_30:
  return v35;
}

uint64_t __85__PRUISPosterChannelModelCoordinator_initWithChannelConfiguration_extensionProvider___block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
  __allModelCoordinators = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void __85__PRUISPosterChannelModelCoordinator_initWithChannelConfiguration_extensionProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && ([v5 isActive] & 1) == 0)
  {
    [WeakRetained[3] invalidate];
    v4 = WeakRetained[3];
    WeakRetained[3] = 0;
  }
}

- (PRUISPosterChannelModelCoordinator)init
{
  [(PRUISPosterChannelModelCoordinator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_inUseAssertionProvider invalidate];
  v3.receiver = self;
  v3.super_class = PRUISPosterChannelModelCoordinator;
  [(PRUISPosterChannelModelCoordinator *)&v3 dealloc];
}

- (id)fileSystemEndpointForChannelIdentifier:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [PRUISPosterChannelModelCoordinator fileSystemEndpointForChannelIdentifier:a2];
  }

  v6 = v5;
  channelPersistenceURLEndpoint = self->_channelPersistenceURLEndpoint;
  v8 = objc_alloc(MEMORY[0x1E69C5118]);
  v9 = [v6 UUIDString];
  v10 = PFFileProtectionNoneAttributes();
  v15 = *MEMORY[0x1E695DB80];
  v16[0] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v8 initWithRelativePathComponents:v9 attributes:v10 resourceValues:v11];
  v13 = [(PFFileSystemEndpoint *)channelPersistenceURLEndpoint endPointByAppendingEndpoint:v12];

  return v13;
}

- (id)channelPersistenceURLForChannelIdentifier:(id)a3
{
  schemaManager = self->_schemaManager;
  v4 = [(PRUISPosterChannelModelCoordinator *)self fileSystemEndpointForChannelIdentifier:a3];
  v5 = [(PFFileSystemSchemaManager *)schemaManager resolveEndpoint:v4];

  return v5;
}

- (BOOL)accessModel:(id)a3 reason:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v10 = [(PRUISPosterChannelModelCoordinator *)self acquireInUseAssertionWithReason:v9];
  [(PFOSUnfairLock *)self->_modelLock lock];
  if (self->_modelLock_modelMutator)
  {
    v11 = 0;
  }

  else
  {
    v20 = 0;
    v13 = [[_PRUISPosterChannelModelMutator alloc] initWithModelCoordinator:self error:&v20];
    v11 = v20;
    modelLock_modelMutator = self->_modelLock_modelMutator;
    self->_modelLock_modelMutator = v13;

    if (!self->_modelLock_modelMutator)
    {
      if (!v11)
      {
        v18 = PFFunctionNameForAddress();
        v19 = 0;
        v11 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
      }

      v12 = 0;
      goto LABEL_7;
    }
  }

  v8[2](v8);
  v15 = v11;

  v12 = 1;
  v11 = v15;
LABEL_7:
  [(PFOSUnfairLock *)self->_modelLock unlock];
  [v10 invalidate];
  if (v11)
  {
    if (a5)
    {
      v16 = v11;
      v12 = 0;
      *a5 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_12:
  return v12;
}

- (BOOL)mutateModel:(id)a3 reason:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v10 = [(PRUISPosterChannelModelCoordinator *)self acquireInUseAssertionWithReason:v9];
  [(PFOSUnfairLock *)self->_modelLock lock];
  if (self->_modelLock_modelMutator)
  {
    v11 = 0;
  }

  else
  {
    v20 = 0;
    v13 = [[_PRUISPosterChannelModelMutator alloc] initWithModelCoordinator:self error:&v20];
    v11 = v20;
    modelLock_modelMutator = self->_modelLock_modelMutator;
    self->_modelLock_modelMutator = v13;

    if (!self->_modelLock_modelMutator)
    {
      if (!v11)
      {
        v18 = PFFunctionNameForAddress();
        v19 = 0;
        v11 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
      }

      v12 = 0;
      goto LABEL_7;
    }
  }

  v8[2](v8);
  v15 = v11;

  v12 = 1;
  v11 = v15;
LABEL_7:
  [(PFOSUnfairLock *)self->_modelLock unlock];
  [v10 invalidate];
  if (v11)
  {
    if (a5)
    {
      v16 = v11;
      v12 = 0;
      *a5 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_12:
  return v12;
}

- (id)updateGalleryForChannel:(id)a3 fetchOptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = NSStringFromSelector(a2);
  v10 = [(PRUISPosterChannelModelCoordinator *)self acquireInUseAssertionWithReason:v9];

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __75__PRUISPosterChannelModelCoordinator_updateGalleryForChannel_fetchOptions___block_invoke;
  v28[3] = &unk_1E83A8178;
  v31 = &v32;
  v11 = v7;
  v29 = v11;
  v12 = v8;
  v30 = v12;
  v27 = 0;
  [(PRUISPosterChannelModelCoordinator *)self mutateModel:v28 reason:&stru_1F4ACA8E0 error:&v27];
  v13 = v27;
  if (v13)
  {
    v14 = [MEMORY[0x1E69C5258] futureWithError:v13];
    v15 = v33[5];
    v33[5] = v14;
LABEL_3:

    [v10 invalidate];
    goto LABEL_6;
  }

  v16 = v33[5];
  if (!v16)
  {
    v19 = MEMORY[0x1E69C5258];
    v15 = PFFunctionNameForAddress();
    v20 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v21 = [v19 futureWithError:{v20, 0}];
    v22 = v33[5];
    v33[5] = v21;

    goto LABEL_3;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __75__PRUISPosterChannelModelCoordinator_updateGalleryForChannel_fetchOptions___block_invoke_2;
  v25[3] = &unk_1E83A81A0;
  v26 = v10;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __75__PRUISPosterChannelModelCoordinator_updateGalleryForChannel_fetchOptions___block_invoke_3;
  v23[3] = &unk_1E83A81C8;
  v24 = v26;
  [v16 addSuccessBlock:v25 andFailureBlock:v23];

LABEL_6:
  v17 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v17;
}

void __75__PRUISPosterChannelModelCoordinator_updateGalleryForChannel_fetchOptions___block_invoke(void *a1, void *a2)
{
  v6 = [a2 galleryProcessor];
  v3 = [v6 fetchGalleryForChannel:a1[4] options:a1[5]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)initWithChannelConfiguration:(uint64_t)a3 extensionProvider:(uint64_t)a4 .cold.2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:a3 file:@"PRUISPosterChannelModelCoordinator.m" lineNumber:89 description:{@"File system location does not exist for URL %@: %@", *a1, a4}];
}

- (void)initWithChannelConfiguration:(const char *)a1 extensionProvider:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"channelConfiguration", v12, v13);
  }

  v11 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)fileSystemEndpointForChannelIdentifier:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"channelIdentifier", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end