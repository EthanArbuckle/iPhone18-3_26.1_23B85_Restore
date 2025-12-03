@interface STAskForTimeApplicationResource
- (STAskForTimeApplicationResource)initWithBundleIdentifier:(id)identifier changeHandler:(id)handler;
- (id)_fetchParentBundleIdentifierForBundleIdentifier:(id)identifier;
- (id)_fetchParentBundleIdentifiersForBundleIdentifier:(id)identifier;
@end

@implementation STAskForTimeApplicationResource

- (STAskForTimeApplicationResource)initWithBundleIdentifier:(id)identifier changeHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = MEMORY[0x1E69635F8];
  handlerCopy = handler;
  v19 = 0;
  v9 = [[v7 alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v19];
  v10 = v19;
  if (v9)
  {
    localizedName = [v9 localizedName];
  }

  else
  {
    v12 = +[STLog ask];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v21 = identifierCopy;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&dword_1B831F000, v12, OS_LOG_TYPE_INFO, "Failed to get application record for %{public}@ %{public}@", buf, 0x16u);
    }

    v13 = [identifierCopy componentsSeparatedByString:@"."];
    localizedName = [v13 lastObject];
  }

  v14 = [(STAskForTimeApplicationResource *)self _fetchParentBundleIdentifierForBundleIdentifier:identifierCopy];

  v18.receiver = self;
  v18.super_class = STAskForTimeApplicationResource;
  v15 = [(STAskForTimeResource *)&v18 initWithResourceIdentifier:v14 resourceDisplayName:localizedName usageType:0 changeHandler:handlerCopy];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)_fetchParentBundleIdentifierForBundleIdentifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(STAskForTimeApplicationResource *)self _fetchParentBundleIdentifiersForBundleIdentifier:identifierCopy];
  v6 = [v5 count];
  v7 = identifierCopy;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
  v17 = v7;
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v7 = *(*(&v18 + 1) + 8 * v12);

        if (v6 >= 2)
        {
          v14 = +[STLog ask];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v23 = v7;
            _os_log_impl(&dword_1B831F000, v14, OS_LOG_TYPE_DEFAULT, "Multiple Bundle Identifiers Found: %{public}@", buf, 0xCu);
          }
        }

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_fetchParentBundleIdentifiersForBundleIdentifier:(id)identifier
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = objc_opt_new();
  v25 = 0;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v25];
  v6 = v25;
  v7 = v6;
  if (v5)
  {
    v20 = v6;
    appClipMetadata = [v5 appClipMetadata];
    parentApplicationIdentifiers = [appClipMetadata parentApplicationIdentifiers];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = parentApplicationIdentifiers;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          if (!CPCopyBundleIdentifierAndTeamFromApplicationIdentifier())
          {
            v16 = +[STLog ask];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v27 = identifierCopy;
              v28 = 2114;
              v29 = v15;
              _os_log_error_impl(&dword_1B831F000, v16, OS_LOG_TYPE_ERROR, "Failed looking up parent bundle identifier for app: %{public}@ with parent application identifier %{public}@", buf, 0x16u);
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v12);
    }

    v7 = v20;
  }

  else
  {
    v10 = +[STLog ask];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v27 = identifierCopy;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_DEFAULT, "No application record for bundle identifier: %{public}@ with error: %{public}@", buf, 0x16u);
    }
  }

  v17 = [v4 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

@end