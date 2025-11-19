@interface TRITaskAttributionInternalInsecure
+ (id)taskAttributionFirstPartyWithNetworkOptions:(id)a3;
+ (id)taskAttributionFromPersistedTask:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTaskAttribution:(id)a3;
- (NSString)description;
- (TRITaskAttributionInternalInsecure)initWithTeamIdentifier:(id)a3 triCloudKitContainer:(int)a4 applicationBundleIdentifier:(id)a5 networkOptions:(id)a6;
- (id)asPersistedTaskAttribution;
- (id)copyWithReplacementApplicationBundleIdentifier:(id)a3;
- (id)copyWithReplacementNetworkOptions:(id)a3;
- (id)copyWithReplacementTeamIdentifier:(id)a3;
- (unint64_t)hash;
@end

@implementation TRITaskAttributionInternalInsecure

+ (id)taskAttributionFromPersistedTask:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (([v3 hasApplicationBundleId] & 1) == 0)
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

    v7 = TRILogCategory_Server();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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

  v4 = [v3 applicationBundleId];
  v5 = [v4 length];

  if (!v5)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v10 = NSStringFromClass(v12);
      v26 = 138412290;
      v27 = v10;
      v11 = "Cannot decode message of type %@ with field of length 0: applicationBundleId";
LABEL_14:
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, v11, &v26, 0xCu);
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if (([v3 hasCloudKitContainer] & 1) == 0)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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

  v6 = [v3 teamId];
  if ([v6 length])
  {
    v7 = [v3 teamId];
  }

  else
  {
    v7 = 0;
  }

  if (![v3 hasNetworkBehavior] || (v17 = objc_alloc(MEMORY[0x277D736A0]), objc_msgSend(v3, "networkBehavior"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "initFromPersistedBehavior:", v18), v18, !v19))
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "unable to parse persisted network behavior, assuming discretionary", &v26, 2u);
    }

    v19 = [MEMORY[0x277D736A0] inexpensiveOptions];
  }

  v21 = [TRITaskAttributionInternalInsecure alloc];
  v22 = [v3 cloudKitContainer];
  v23 = [v3 applicationBundleId];
  v14 = [(TRITaskAttributionInternalInsecure *)v21 initWithTeamIdentifier:v7 triCloudKitContainer:v22 applicationBundleIdentifier:v23 networkOptions:v19];

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)asPersistedTaskAttribution
{
  v3 = objc_alloc_init(TRIPersistedTaskAttribution);
  v4 = [(TRITaskAttributionInternalInsecure *)self teamIdentifier];
  if ([v4 length])
  {
    v5 = [(TRITaskAttributionInternalInsecure *)self teamIdentifier];
    [(TRIPersistedTaskAttribution *)v3 setTeamId:v5];
  }

  else
  {
    [(TRIPersistedTaskAttribution *)v3 setTeamId:0];
  }

  v6 = [(TRITaskAttributionInternalInsecure *)self applicationBundleIdentifier];
  [(TRIPersistedTaskAttribution *)v3 setApplicationBundleId:v6];

  [(TRIPersistedTaskAttribution *)v3 setCloudKitContainer:[(TRITaskAttributionInternalInsecure *)self triCloudKitContainer]];
  v7 = [(TRITaskAttributionInternalInsecure *)self networkOptions];
  v8 = [v7 serializeToPersistedBehavior];
  [(TRIPersistedTaskAttribution *)v3 setNetworkBehavior:v8];

  return v3;
}

+ (id)taskAttributionFirstPartyWithNetworkOptions:(id)a3
{
  v3 = MEMORY[0x277D737A8];
  v4 = a3;
  v5 = [v3 callerBundleId];
  v6 = [[TRITaskAttributionInternalInsecure alloc] initWithTeamIdentifier:0 triCloudKitContainer:1 applicationBundleIdentifier:v5 networkOptions:v4];

  return v6;
}

- (TRITaskAttributionInternalInsecure)initWithTeamIdentifier:(id)a3 triCloudKitContainer:(int)a4 applicationBundleIdentifier:(id)a5 networkOptions:(id)a6
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:861 description:{@"Invalid parameter not satisfying: %@", @"applicationBundleIdentifier != nil"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:862 description:{@"Invalid parameter not satisfying: %@", @"networkOptions != nil"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = TRITaskAttributionInternalInsecure;
  v16 = [(TRITaskAttributionInternalInsecure *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_teamIdentifier, a3);
    v17->_triCloudKitContainer = a4;
    objc_storeStrong(&v17->_applicationBundleIdentifier, a5);
    objc_storeStrong(&v17->_networkOptions, a6);
  }

  return v17;
}

- (id)copyWithReplacementTeamIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTeamIdentifier:v4 triCloudKitContainer:self->_triCloudKitContainer applicationBundleIdentifier:self->_applicationBundleIdentifier networkOptions:self->_networkOptions];

  return v5;
}

- (id)copyWithReplacementApplicationBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTeamIdentifier:self->_teamIdentifier triCloudKitContainer:self->_triCloudKitContainer applicationBundleIdentifier:v4 networkOptions:self->_networkOptions];

  return v5;
}

- (id)copyWithReplacementNetworkOptions:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTeamIdentifier:self->_teamIdentifier triCloudKitContainer:self->_triCloudKitContainer applicationBundleIdentifier:self->_applicationBundleIdentifier networkOptions:v4];

  return v5;
}

- (BOOL)isEqualToTaskAttribution:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = self->_teamIdentifier == 0;
  v7 = [v4 teamIdentifier];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_12;
  }

  teamIdentifier = self->_teamIdentifier;
  if (teamIdentifier)
  {
    v10 = [v5 teamIdentifier];
    v11 = [(NSString *)teamIdentifier isEqual:v10];

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
  v14 = [v5 applicationBundleIdentifier];
  v15 = v14 != 0;

  if (v13 == v15)
  {
    goto LABEL_12;
  }

  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  if (applicationBundleIdentifier)
  {
    v17 = [v5 applicationBundleIdentifier];
    v18 = [(NSString *)applicationBundleIdentifier isEqual:v17];

    if (!v18)
    {
      goto LABEL_12;
    }
  }

  v19 = self->_networkOptions == 0;
  v20 = [v5 networkOptions];
  v21 = v20 != 0;

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
      v23 = [v5 networkOptions];
      v24 = [(TRIDownloadOptions *)networkOptions isEqual:v23];
    }

    else
    {
      v24 = 1;
    }
  }

  return v24 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITaskAttributionInternalInsecure *)self isEqualToTaskAttribution:v5];
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