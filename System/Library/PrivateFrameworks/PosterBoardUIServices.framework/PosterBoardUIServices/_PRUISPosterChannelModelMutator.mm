@interface _PRUISPosterChannelModelMutator
- (BOOL)reapStaleStateForChannel:(id)channel omittingLast:(unint64_t)last error:(id *)error;
- (BOOL)removeChannelWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)updateChannel:(id)channel updater:(id)updater error:(id *)error;
- (PRUISPosterChannelGalleryCoordinator)galleryProcessor;
- (_PRUISPosterChannelModelMutator)init;
- (_PRUISPosterChannelModelMutator)initWithModelCoordinator:(id)coordinator error:(id *)p_isa;
- (id)channelStateForIdentifier:(id)identifier error:(id *)error;
- (id)createChannelWithIdentifier:(id)identifier updater:(id)updater error:(id *)error;
- (id)extensionProvider;
- (id)keyedArchiver;
- (id)knownChannelIdentifiersWithError:(id *)error;
- (id)knownChannelStatesWithError:(id *)error;
- (id)reapEverythingForChannel:(id)channel;
- (id)reapStaleSnapshotsForChannel:(id)channel;
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

    role = [(PRUISPosterChannelModelCoordinator *)self->_modelCoordinator role];
    v8 = [MEMORY[0x1E695DFD8] setWithObject:role];
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
    extensionProvider = [(_PRUISPosterChannelModelMutator *)self extensionProvider];
    v6 = [(PRUISPosterChannelGalleryCoordinator *)v4 initWithExtensionProvider:extensionProvider];
    v7 = self->_galleryProcessor;
    self->_galleryProcessor = v6;

    galleryProcessor = self->_galleryProcessor;
  }

  return galleryProcessor;
}

- (_PRUISPosterChannelModelMutator)initWithModelCoordinator:(id)coordinator error:(id *)p_isa
{
  v41 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  if (!coordinatorCopy)
  {
    [_PRUISPosterChannelModelMutator initWithModelCoordinator:a2 error:?];
  }

  v9 = coordinatorCopy;
  role = [coordinatorCopy role];
  schemaManager = [v9 schemaManager];
  baseURL = [schemaManager baseURL];
  if (![baseURL checkResourceIsReachableAndReturnError:p_isa])
  {
    goto LABEL_25;
  }

  if (([baseURL pf_isWritable] & 1) == 0)
  {
    if (!p_isa)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (([baseURL pf_isReadable] & 1) == 0)
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
    v31 = baseURL;
    objc_storeStrong(&v13->_baseURL, baseURL);
    v32 = role;
    objc_storeStrong(&v14->_role, role);
    objc_storeStrong(&v14->_modelCoordinator, coordinator);
    v16 = objc_opt_new();
    UUIDToStateCoordinator = v14->_UUIDToStateCoordinator;
    v14->_UUIDToStateCoordinator = v16;

    v33 = v14;
    [(PRUISPosterChannelModelCoordinator *)v14->_modelCoordinator channelPersistenceURLEndpoint];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = v38 = 0u;
    v18 = [schemaManager enumeratorForEndpoint:? includingPropertiesForKeys:? options:? errorHandler:?];
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

          lastPathComponent = [*(*(&v35 + 1) + 8 * i) lastPathComponent];
          v24 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:lastPathComponent];
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
    role = v32;
    baseURL = v31;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  keyedArchiver = selfCopy->_keyedArchiver;
  if (keyedArchiver)
  {
    v4 = keyedArchiver;
  }

  else
  {
    databaseURL = [(PRUISPosterChannelModelCoordinator *)selfCopy->_modelCoordinator databaseURL];
    v6 = [objc_alloc(MEMORY[0x1E69C51B0]) initWithDatabaseURL:databaseURL error:0];
    v7 = selfCopy->_keyedArchiver;
    selfCopy->_keyedArchiver = v6;

    v4 = selfCopy->_keyedArchiver;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)knownChannelIdentifiersWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = MEMORY[0x1E695DFD8];
  allKeys = [(NSMutableDictionary *)selfCopy->_UUIDToStateCoordinator allKeys];
  v6 = [v4 setWithArray:allKeys];

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)knownChannelStatesWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(_PRUISPosterChannelModelMutator *)selfCopy knownChannelIdentifiersWithError:error];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63___PRUISPosterChannelModelMutator_knownChannelStatesWithError___block_invoke;
  v8[3] = &unk_1E83A81F0;
  v8[4] = selfCopy;
  v6 = [v5 bs_map:v8];

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)channelStateForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(NSMutableDictionary *)selfCopy->_UUIDToStateCoordinator objectForKey:identifierCopy];
  state = [v7 state];

  objc_sync_exit(selfCopy);

  return state;
}

- (id)createChannelWithIdentifier:(id)identifier updater:(id)updater error:(id *)error
{
  identifierCopy = identifier;
  updaterCopy = updater;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = selfCopy->_modelCoordinator;
  v12 = [(NSMutableDictionary *)selfCopy->_UUIDToStateCoordinator objectForKey:identifierCopy];
  state = [v12 state];

  if (!state)
  {
    v25 = 0;
    v16 = [_TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition initialTransitionForModelCoordinatorWithModelCoordinator:v11 channelIdentifier:identifierCopy updater:updaterCopy error:&v25];
    v17 = v25;
    v18 = v17;
    if (v16)
    {
      if ([v16 commitStateTransitionAndReturnError:error])
      {
        v24 = [PRUISPosterChannel alloc];
        modelCoordinator = selfCopy->_modelCoordinator;
        finalState = [v16 finalState];
        v15 = [(PRUISPosterChannel *)v24 initWithModelCoordinator:modelCoordinator state:finalState error:error];

LABEL_14:
        goto LABEL_15;
      }
    }

    else if (error)
    {
      if (!v17)
      {
        v21 = PFFunctionNameForAddress();
        v18 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
      }

      v22 = v18;
      v15 = 0;
      *error = v18;
      goto LABEL_14;
    }

    v15 = 0;
    goto LABEL_14;
  }

  if (error && !*error)
  {
    v14 = PFFunctionNameForAddress();
    *error = PFGeneralErrorFromObjectWithLocalizedFailureReason();
  }

  v15 = 0;
LABEL_15:

  objc_sync_exit(selfCopy);

  return v15;
}

- (BOOL)updateChannel:(id)channel updater:(id)updater error:(id *)error
{
  channelCopy = channel;
  updaterCopy = updater;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0;
  [channelCopy applyUpdater:updaterCopy error:&v14];
  v11 = v14;
  if (error && v14)
  {
    v11 = v14;
    *error = v11;
  }

  v12 = v11 == 0;
  objc_sync_exit(selfCopy);

  return v12;
}

- (BOOL)removeChannelWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMutableDictionary *)selfCopy->_UUIDToStateCoordinator objectForKey:identifierCopy];
  if (v8)
  {
    [(PRUISPosterChannelGalleryCoordinator *)selfCopy->_galleryProcessor cancelGalleryFetchForChannelIdentifier:identifierCopy];
    [v8 invalidate];
    [(NSMutableDictionary *)selfCopy->_UUIDToStateCoordinator removeObjectForKey:identifierCopy];

    schemaManager = [(PRUISPosterChannelModelCoordinator *)selfCopy->_modelCoordinator schemaManager];
    v10 = [(PRUISPosterChannelModelCoordinator *)selfCopy->_modelCoordinator fileSystemEndpointForChannelIdentifier:identifierCopy];
    v11 = [schemaManager deleteEndpoint:v10 error:error];
  }

  else
  {
    if (!error)
    {
      v11 = 0;
      goto LABEL_6;
    }

    schemaManager = PFFunctionNameForAddress();
    PFGeneralErrorFromObjectWithLocalizedFailureReason();
    *error = v11 = 0;
  }

LABEL_6:
  objc_sync_exit(selfCopy);

  return v11;
}

- (BOOL)reapStaleStateForChannel:(id)channel omittingLast:(unint64_t)last error:(id *)error
{
  channelCopy = channel;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0;
  [channelCopy reapStaleStateOmittingLast:last error:&v13];
  v10 = v13;
  if (error && v13)
  {
    v10 = v13;
    *error = v10;
  }

  v11 = v10 == 0;
  objc_sync_exit(selfCopy);

  return v11;
}

- (id)reapStaleSnapshotsForChannel:(id)channel
{
  channelCopy = channel;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  reapStaleSnapshots = [channelCopy reapStaleSnapshots];
  objc_sync_exit(selfCopy);

  return reapStaleSnapshots;
}

- (id)reapEverythingForChannel:(id)channel
{
  channelCopy = channel;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  reapEverything = [channelCopy reapEverything];
  objc_sync_exit(selfCopy);

  return reapEverything;
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