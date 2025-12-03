@interface TRITaskAttributionInternalInsecure
+ (id)taskAttributionFirstPartyWithNetworkOptions:(id)options;
+ (id)taskAttributionFromPersistedTask:(id)task;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTaskAttribution:(id)attribution;
- (NSString)description;
- (TRITaskAttributionInternalInsecure)initWithTeamIdentifier:(id)identifier triCloudKitContainer:(int)container applicationBundleIdentifier:(id)bundleIdentifier networkOptions:(id)options;
- (id)asPersistedTaskAttribution;
- (id)copyWithReplacementApplicationBundleIdentifier:(id)identifier;
- (id)copyWithReplacementNetworkOptions:(id)options;
- (id)copyWithReplacementTeamIdentifier:(id)identifier;
- (unint64_t)hash;
@end

@implementation TRITaskAttributionInternalInsecure

+ (id)taskAttributionFromPersistedTask:(id)task
{
  v28 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  if (([taskCopy hasApplicationBundleId] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = 138412290;
      v27 = v25;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: applicationBundleId", &v26, 0xCu);
    }

    teamId2 = TRILogCategory_Server();
    if (!os_log_type_enabled(teamId2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v26 = 138412290;
    v27 = v10;
    v11 = "Cannot decode message of type %@ with missing field: applicationBundleId";
    goto LABEL_14;
  }

  applicationBundleId = [taskCopy applicationBundleId];
  v5 = [applicationBundleId length];

  if (!v5)
  {
    teamId2 = TRILogCategory_Server();
    if (os_log_type_enabled(teamId2, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v10 = NSStringFromClass(v12);
      v26 = 138412290;
      v27 = v10;
      v11 = "Cannot decode message of type %@ with field of length 0: applicationBundleId";
LABEL_14:
      _os_log_error_impl(&dword_26F567000, teamId2, OS_LOG_TYPE_ERROR, v11, &v26, 0xCu);
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if (([taskCopy hasCloudKitContainer] & 1) == 0)
  {
    teamId2 = TRILogCategory_Server();
    if (os_log_type_enabled(teamId2, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v10 = NSStringFromClass(v13);
      v26 = 138412290;
      v27 = v10;
      v11 = "Cannot decode message of type %@ with missing field: cloudKitContainer";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  teamId = [taskCopy teamId];
  if ([teamId length])
  {
    teamId2 = [taskCopy teamId];
  }

  else
  {
    teamId2 = 0;
  }

  if (![taskCopy hasNetworkBehavior] || (v17 = objc_alloc(MEMORY[0x277D736A0]), objc_msgSend(taskCopy, "networkBehavior"), v18 = objc_claimAutoreleasedReturnValue(), inexpensiveOptions = objc_msgSend(v17, "initFromPersistedBehavior:", v18), v18, !inexpensiveOptions))
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "unable to parse persisted network behavior, assuming discretionary", &v26, 2u);
    }

    inexpensiveOptions = [MEMORY[0x277D736A0] inexpensiveOptions];
  }

  v21 = [TRITaskAttributionInternalInsecure alloc];
  cloudKitContainer = [taskCopy cloudKitContainer];
  applicationBundleId2 = [taskCopy applicationBundleId];
  v14 = [(TRITaskAttributionInternalInsecure *)v21 initWithTeamIdentifier:teamId2 triCloudKitContainer:cloudKitContainer applicationBundleIdentifier:applicationBundleId2 networkOptions:inexpensiveOptions];

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)asPersistedTaskAttribution
{
  v3 = objc_alloc_init(TRIPersistedTaskAttribution);
  teamIdentifier = [(TRITaskAttributionInternalInsecure *)self teamIdentifier];
  if ([teamIdentifier length])
  {
    teamIdentifier2 = [(TRITaskAttributionInternalInsecure *)self teamIdentifier];
    [(TRIPersistedTaskAttribution *)v3 setTeamId:teamIdentifier2];
  }

  else
  {
    [(TRIPersistedTaskAttribution *)v3 setTeamId:0];
  }

  applicationBundleIdentifier = [(TRITaskAttributionInternalInsecure *)self applicationBundleIdentifier];
  [(TRIPersistedTaskAttribution *)v3 setApplicationBundleId:applicationBundleIdentifier];

  [(TRIPersistedTaskAttribution *)v3 setCloudKitContainer:[(TRITaskAttributionInternalInsecure *)self triCloudKitContainer]];
  networkOptions = [(TRITaskAttributionInternalInsecure *)self networkOptions];
  serializeToPersistedBehavior = [networkOptions serializeToPersistedBehavior];
  [(TRIPersistedTaskAttribution *)v3 setNetworkBehavior:serializeToPersistedBehavior];

  return v3;
}

+ (id)taskAttributionFirstPartyWithNetworkOptions:(id)options
{
  v3 = MEMORY[0x277D737A8];
  optionsCopy = options;
  callerBundleId = [v3 callerBundleId];
  v6 = [[TRITaskAttributionInternalInsecure alloc] initWithTeamIdentifier:0 triCloudKitContainer:1 applicationBundleIdentifier:callerBundleId networkOptions:optionsCopy];

  return v6;
}

- (TRITaskAttributionInternalInsecure)initWithTeamIdentifier:(id)identifier triCloudKitContainer:(int)container applicationBundleIdentifier:(id)bundleIdentifier networkOptions:(id)options
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  optionsCopy = options;
  v15 = optionsCopy;
  if (bundleIdentifierCopy)
  {
    if (optionsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:861 description:{@"Invalid parameter not satisfying: %@", @"applicationBundleIdentifier != nil"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:862 description:{@"Invalid parameter not satisfying: %@", @"networkOptions != nil"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = TRITaskAttributionInternalInsecure;
  v16 = [(TRITaskAttributionInternalInsecure *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_teamIdentifier, identifier);
    v17->_triCloudKitContainer = container;
    objc_storeStrong(&v17->_applicationBundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v17->_networkOptions, options);
  }

  return v17;
}

- (id)copyWithReplacementTeamIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithTeamIdentifier:identifierCopy triCloudKitContainer:self->_triCloudKitContainer applicationBundleIdentifier:self->_applicationBundleIdentifier networkOptions:self->_networkOptions];

  return v5;
}

- (id)copyWithReplacementApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithTeamIdentifier:self->_teamIdentifier triCloudKitContainer:self->_triCloudKitContainer applicationBundleIdentifier:identifierCopy networkOptions:self->_networkOptions];

  return v5;
}

- (id)copyWithReplacementNetworkOptions:(id)options
{
  optionsCopy = options;
  v5 = [objc_alloc(objc_opt_class()) initWithTeamIdentifier:self->_teamIdentifier triCloudKitContainer:self->_triCloudKitContainer applicationBundleIdentifier:self->_applicationBundleIdentifier networkOptions:optionsCopy];

  return v5;
}

- (BOOL)isEqualToTaskAttribution:(id)attribution
{
  attributionCopy = attribution;
  v5 = attributionCopy;
  if (!attributionCopy)
  {
    goto LABEL_12;
  }

  v6 = self->_teamIdentifier == 0;
  teamIdentifier = [attributionCopy teamIdentifier];
  v8 = teamIdentifier != 0;

  if (v6 == v8)
  {
    goto LABEL_12;
  }

  teamIdentifier = self->_teamIdentifier;
  if (teamIdentifier)
  {
    teamIdentifier2 = [v5 teamIdentifier];
    v11 = [(NSString *)teamIdentifier isEqual:teamIdentifier2];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  triCloudKitContainer = self->_triCloudKitContainer;
  if (triCloudKitContainer != [v5 triCloudKitContainer])
  {
    goto LABEL_12;
  }

  v13 = self->_applicationBundleIdentifier == 0;
  applicationBundleIdentifier = [v5 applicationBundleIdentifier];
  v15 = applicationBundleIdentifier != 0;

  if (v13 == v15)
  {
    goto LABEL_12;
  }

  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  if (applicationBundleIdentifier)
  {
    applicationBundleIdentifier2 = [v5 applicationBundleIdentifier];
    v18 = [(NSString *)applicationBundleIdentifier isEqual:applicationBundleIdentifier2];

    if (!v18)
    {
      goto LABEL_12;
    }
  }

  v19 = self->_networkOptions == 0;
  networkOptions = [v5 networkOptions];
  v21 = networkOptions != 0;

  if (v19 == v21)
  {
LABEL_12:
    v24 = 0;
  }

  else
  {
    networkOptions = self->_networkOptions;
    if (networkOptions)
    {
      networkOptions2 = [v5 networkOptions];
      v24 = [(TRIDownloadOptions *)networkOptions isEqual:networkOptions2];
    }

    else
    {
      v24 = 1;
    }
  }

  return v24 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITaskAttributionInternalInsecure *)self isEqualToTaskAttribution:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_teamIdentifier hash];
  v4 = self->_triCloudKitContainer - v3 + 32 * v3;
  v5 = [(NSString *)self->_applicationBundleIdentifier hash]- v4 + 32 * v4;
  return [(TRIDownloadOptions *)self->_networkOptions hash]- v5 + 32 * v5;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  teamIdentifier = self->_teamIdentifier;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_triCloudKitContainer];
  v6 = [v3 initWithFormat:@"<TRITaskAttributionInternalInsecure | teamIdentifier:%@ triCloudKitContainer:%@ applicationBundleIdentifier:%@ networkOptions:%@>", teamIdentifier, v5, self->_applicationBundleIdentifier, self->_networkOptions];

  return v6;
}

@end