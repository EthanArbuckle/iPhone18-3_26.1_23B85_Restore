@interface _PRUISPosterChannelModelMutator
- (BOOL)reapStaleStateForChannel:(id)a3 omittingLast:(unint64_t)a4 error:(id *)a5;
- (BOOL)removeChannelWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)updateChannel:(id)a3 updater:(id)a4 error:(id *)a5;
- (PRUISPosterChannelGalleryCoordinator)galleryProcessor;
- (_PRUISPosterChannelModelMutator)init;
- (_PRUISPosterChannelModelMutator)initWithModelCoordinator:(id)a3 error:(id *)p_isa;
- (id)channelStateForIdentifier:(id)a3 error:(id *)a4;
- (id)createChannelWithIdentifier:(id)a3 updater:(id)a4 error:(id *)a5;
- (id)extensionProvider;
- (id)keyedArchiver;
- (id)knownChannelIdentifiersWithError:(id *)a3;
- (id)knownChannelStatesWithError:(id *)a3;
- (id)reapEverythingForChannel:(id)a3;
- (id)reapStaleSnapshotsForChannel:(id)a3;
- (void)dealloc;
@end

@implementation _PRUISPosterChannelModelMutator

- (id)extensionProvider
{
  extensionProvider = self->_extensionProvider;
  if (!extensionProvider)
  {
    v4 = objc_alloc(MEMORY[0x1E69C5170]);
    v5 = [MEMORY[0x1E696AFB0] pf_UUIDFromArbitraryString:@"PRUISPosterChannelModelCoordinator"];
    v6 = [v4 initWithDefaultInstanceIdentifier:v5];

    v7 = [(PRUISPosterChannelModelCoordinator *)self->_modelCoordinator role];
    v8 = [MEMORY[0x1E695DFD8] setWithObject:v7];
    [v6 setSupportedRoles:v8];

    v9 = self->_extensionProvider;
    self->_extensionProvider = v6;
    v10 = v6;

    [(PFPosterExtensionProvider *)self->_extensionProvider start];
    extensionProvider = self->_extensionProvider;
  }

  return extensionProvider;
}

- (PRUISPosterChannelGalleryCoordinator)galleryProcessor
{
  galleryProcessor = self->_galleryProcessor;
  if (!galleryProcessor)
  {
    v4 = [PRUISPosterChannelGalleryCoordinator alloc];
    v5 = [(_PRUISPosterChannelModelMutator *)self extensionProvider];
    v6 = [(PRUISPosterChannelGalleryCoordinator *)v4 initWithExtensionProvider:v5];
    v7 = self->_galleryProcessor;
    self->_galleryProcessor = v6;

    galleryProcessor = self->_galleryProcessor;
  }

  return galleryProcessor;
}

- (_PRUISPosterChannelModelMutator)initWithModelCoordinator:(id)a3 error:(id *)p_isa
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!v8)
  {
    [_PRUISPosterChannelModelMutator initWithModelCoordinator:a2 error:?];
  }

  v9 = v8;
  v10 = [v8 role];
  v11 = [v9 schemaManager];
  v12 = [v11 baseURL];
  if (![v12 checkResourceIsReachableAndReturnError:p_isa])
  {
    goto LABEL_25;
  }

  if (([v12 pf_isWritable] & 1) == 0)
  {
    if (!p_isa)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (([v12 pf_isReadable] & 1) == 0)
  {
    if (!p_isa)
    {
      goto LABEL_26;
    }

LABEL_24:
    v28 = PFFunctionNameForAddress();
    *p_isa = PFGeneralErrorFromObjectWithLocalizedFailureReason();

LABEL_25:
    p_isa = 0;
    goto LABEL_26;
  }

  v39.receiver = self;
  v39.super_class = _PRUISPosterChannelModelMutator;
  v13 = [(_PRUISPosterChannelModelMutator *)&v39 init];
  v14 = v13;
  if (v13)
  {
    v15 = v9;
    v31 = v12;
    objc_storeStrong(&v13->_baseURL, v12);
    v32 = v10;
    objc_storeStrong(&v14->_role, v10);
    objc_storeStrong(&v14->_modelCoordinator, a3);
    v16 = objc_opt_new();
    UUIDToStateCoordinator = v14->_UUIDToStateCoordinator;
    v14->_UUIDToStateCoordinator = v16;

    v33 = v14;
    [(PRUISPosterChannelModelCoordinator *)v14->_modelCoordinator channelPersistenceURLEndpoint];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = v38 = 0u;
    v18 = [v11 enumeratorForEndpoint:? includingPropertiesForKeys:? options:? errorHandler:?];
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v35 + 1) + 8 * i) lastPathComponent];
          v24 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v23];
          if (v24)
          {
            v25 = [_TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator alloc];
            v34 = 0;
            v26 = [(PRUISPosterChannelStateCoordinator *)v25 initWithModelCoordinator:v15 channelIdentifier:v24 error:&v34];
            v27 = v34;
            if (v27 || !v26)
            {

              v26 = v27;
            }

            else
            {
              [(NSMutableDictionary *)v33->_UUIDToStateCoordinator setObject:v26 forKeyedSubscript:v24];
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v20);
    }

    v9 = v15;
    v10 = v32;
    v12 = v31;
    v14 = v33;
  }

  self = v14;
  p_isa = &self->super.isa;
LABEL_26:

  return p_isa;
}

- (_PRUISPosterChannelModelMutator)init
{
  [(_PRUISPosterChannelModelMutator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(_PRUISPosterChannelModelMutator *)self invalidate];
  v3.receiver = self;
  v3.super_class = _PRUISPosterChannelModelMutator;
  [(_PRUISPosterChannelModelMutator *)&v3 dealloc];
}

- (id)keyedArchiver
{
  v2 = self;
  objc_sync_enter(v2);
  keyedArchiver = v2->_keyedArchiver;
  if (keyedArchiver)
  {
    v4 = keyedArchiver;
  }

  else
  {
    v5 = [(PRUISPosterChannelModelCoordinator *)v2->_modelCoordinator databaseURL];
    v6 = [objc_alloc(MEMORY[0x1E69C51B0]) initWithDatabaseURL:v5 error:0];
    v7 = v2->_keyedArchiver;
    v2->_keyedArchiver = v6;

    v4 = v2->_keyedArchiver;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)knownChannelIdentifiersWithError:(id *)a3
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = MEMORY[0x1E695DFD8];
  v5 = [(NSMutableDictionary *)v3->_UUIDToStateCoordinator allKeys];
  v6 = [v4 setWithArray:v5];

  objc_sync_exit(v3);

  return v6;
}

- (id)knownChannelStatesWithError:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(_PRUISPosterChannelModelMutator *)v4 knownChannelIdentifiersWithError:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63___PRUISPosterChannelModelMutator_knownChannelStatesWithError___block_invoke;
  v8[3] = &unk_1E83A81F0;
  v8[4] = v4;
  v6 = [v5 bs_map:v8];

  objc_sync_exit(v4);

  return v6;
}

- (id)channelStateForIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)v6->_UUIDToStateCoordinator objectForKey:v5];
  v8 = [v7 state];

  objc_sync_exit(v6);

  return v8;
}

- (id)createChannelWithIdentifier:(id)a3 updater:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  objc_sync_enter(v10);
  v11 = v10->_modelCoordinator;
  v12 = [(NSMutableDictionary *)v10->_UUIDToStateCoordinator objectForKey:v8];
  v13 = [v12 state];

  if (!v13)
  {
    v25 = 0;
    v16 = [_TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition initialTransitionForModelCoordinatorWithModelCoordinator:v11 channelIdentifier:v8 updater:v9 error:&v25];
    v17 = v25;
    v18 = v17;
    if (v16)
    {
      if ([v16 commitStateTransitionAndReturnError:a5])
      {
        v24 = [PRUISPosterChannel alloc];
        modelCoordinator = v10->_modelCoordinator;
        v20 = [v16 finalState];
        v15 = [(PRUISPosterChannel *)v24 initWithModelCoordinator:modelCoordinator state:v20 error:a5];

LABEL_14:
        goto LABEL_15;
      }
    }

    else if (a5)
    {
      if (!v17)
      {
        v21 = PFFunctionNameForAddress();
        v18 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
      }

      v22 = v18;
      v15 = 0;
      *a5 = v18;
      goto LABEL_14;
    }

    v15 = 0;
    goto LABEL_14;
  }

  if (a5 && !*a5)
  {
    v14 = PFFunctionNameForAddress();
    *a5 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
  }

  v15 = 0;
LABEL_15:

  objc_sync_exit(v10);

  return v15;
}

- (BOOL)updateChannel:(id)a3 updater:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  objc_sync_enter(v10);
  v14 = 0;
  [v8 applyUpdater:v9 error:&v14];
  v11 = v14;
  if (a5 && v14)
  {
    v11 = v14;
    *a5 = v11;
  }

  v12 = v11 == 0;
  objc_sync_exit(v10);

  return v12;
}

- (BOOL)removeChannelWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)v7->_UUIDToStateCoordinator objectForKey:v6];
  if (v8)
  {
    [(PRUISPosterChannelGalleryCoordinator *)v7->_galleryProcessor cancelGalleryFetchForChannelIdentifier:v6];
    [v8 invalidate];
    [(NSMutableDictionary *)v7->_UUIDToStateCoordinator removeObjectForKey:v6];

    v9 = [(PRUISPosterChannelModelCoordinator *)v7->_modelCoordinator schemaManager];
    v10 = [(PRUISPosterChannelModelCoordinator *)v7->_modelCoordinator fileSystemEndpointForChannelIdentifier:v6];
    v11 = [v9 deleteEndpoint:v10 error:a4];
  }

  else
  {
    if (!a4)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v9 = PFFunctionNameForAddress();
    PFGeneralErrorFromObjectWithLocalizedFailureReason();
    *a4 = v11 = 0;
  }

LABEL_6:
  objc_sync_exit(v7);

  return v11;
}

- (BOOL)reapStaleStateForChannel:(id)a3 omittingLast:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = self;
  objc_sync_enter(v9);
  v13 = 0;
  [v8 reapStaleStateOmittingLast:a4 error:&v13];
  v10 = v13;
  if (a5 && v13)
  {
    v10 = v13;
    *a5 = v10;
  }

  v11 = v10 == 0;
  objc_sync_exit(v9);

  return v11;
}

- (id)reapStaleSnapshotsForChannel:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 reapStaleSnapshots];
  objc_sync_exit(v5);

  return v6;
}

- (id)reapEverythingForChannel:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 reapEverything];
  objc_sync_exit(v5);

  return v6;
}

- (void)initWithModelCoordinator:(const char *)a1 error:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"modelCoordinator", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end