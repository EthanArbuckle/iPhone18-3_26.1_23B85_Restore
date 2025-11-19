@interface RBSProcessBundle
+ (id)bundleWithDataSource:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (RBSProcessBundle)initWithRBSXPCCoder:(id)a3;
- (id)bundleInfoValueForKey:(id)a3;
- (id)bundleInfoValuesForKeys:(id)a3;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSProcessBundle

+ (id)bundleWithDataSource:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(RBSProcessBundle);
  objc_storeWeak(&v4->_dataSource, v3);
  v5 = [v3 bundleIdentifier];
  identifier = v4->_identifier;
  v4->_identifier = v5;

  v7 = [v3 bundlePath];
  path = v4->_path;
  v4->_path = v7;

  v9 = [v3 executablePath];
  executablePath = v4->_executablePath;
  v4->_executablePath = v9;

  v11 = [v3 extensionPointIdentifier];

  extensionPointIdentifier = v4->_extensionPointIdentifier;
  v4->_extensionPointIdentifier = v11;

  return v4;
}

- (id)bundleInfoValueForKey:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v5)
  {
    [(RBSProcessBundle *)a2 bundleInfoValueForKey:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(RBSProcessBundle *)a2 bundleInfoValueForKey:?];
  }

  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [(RBSProcessBundle *)self bundleInfoValuesForKeys:v6];
  v8 = [v7 objectForKey:v5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)bundleInfoValuesForKeys:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v36 = a3;
  if ([v36 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v35 = WeakRetained;
    if (WeakRetained)
    {
      v5 = [WeakRetained bundleInfoValuesForKeys:v36];
    }

    else if (self->_instance)
    {
      v6 = self;
      objc_sync_enter(v6);
      v33 = [MEMORY[0x1E695DFD8] setWithArray:v36];
      v34 = [v33 mutableCopy];
      v7 = MEMORY[0x1E695DFD8];
      v8 = [(NSDictionary *)v6->_plistValues allKeys];
      v9 = [v7 setWithArray:v8];
      [v34 minusSet:v9];

      if ([v34 count])
      {
        v10 = +[RBSConnection sharedInstance];
        v11 = [v10 infoPlistResultForInstance:self->_instance forKeys:v36 error:0];

        v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6->_plistValues];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v13 = v34;
        v14 = [v13 countByEnumeratingWithState:&v41 objects:v48 count:16];
        if (v14)
        {
          v15 = *v42;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v42 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v41 + 1) + 8 * i);
              v18 = [v11 objectForKey:v17];
              if (v18)
              {
                [v12 setObject:v18 forKey:v17];
              }

              else
              {
                v19 = [MEMORY[0x1E695DFB0] null];
                [v12 setObject:v19 forKey:v17];
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v41 objects:v48 count:16];
          }

          while (v14);
        }

        v20 = [v12 copy];
        plistValues = v6->_plistValues;
        v6->_plistValues = v20;
      }

      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = v33;
      v23 = [v22 countByEnumeratingWithState:&v37 objects:v47 count:16];
      if (v23)
      {
        v24 = *v38;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v37 + 1) + 8 * j);
            v27 = [(NSDictionary *)v6->_plistValues objectForKey:v26];
            if (v27)
            {
              v28 = [MEMORY[0x1E695DFB0] null];
              v29 = v27 == v28;

              if (!v29)
              {
                [v5 setObject:v27 forKey:v26];
              }
            }
          }

          v23 = [v22 countByEnumeratingWithState:&v37 objects:v47 count:16];
        }

        while (v23);
      }

      objc_sync_exit(v6);
    }

    else
    {
      v30 = rbs_process_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v46 = self;
        _os_log_impl(&dword_18E8AD000, v30, OS_LOG_TYPE_DEFAULT, "Cannot fetch info.plist values: no data source found for bundle: %{public}@", buf, 0xCu);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| id:%@ path:%@>", v4, self->_identifier, self->_path];

  return v5;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v10 = *&self->_identifier;
  executablePath = self->_executablePath;
  extensionPointIdentifier = self->_extensionPointIdentifier;
  v7 = [(NSDictionary *)self->_plistValues entriesToStringWithIndent:0 debug:1];
  v8 = [v3 initWithFormat:@"<%@| id:%@ path:%@ executablePath:%@ extensionPoint:%@ Info.plist values:\n%@\n    >", v4, v10, executablePath, extensionPointIdentifier, v7];

  return v8;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v9 = v4;
  if (identifier)
  {
    [v4 encodeObject:identifier forKey:@"_identifier"];
    v4 = v9;
  }

  path = self->_path;
  if (path)
  {
    [v9 encodeObject:path forKey:@"_path"];
    v4 = v9;
  }

  executablePath = self->_executablePath;
  if (executablePath)
  {
    [v9 encodeObject:executablePath forKey:@"_executablePath"];
    v4 = v9;
  }

  extensionPointIdentifier = self->_extensionPointIdentifier;
  if (extensionPointIdentifier)
  {
    [v9 encodeObject:extensionPointIdentifier forKey:@"_extensionPointIdentifier"];
    v4 = v9;
  }
}

- (RBSProcessBundle)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = RBSProcessBundle;
  v5 = [(RBSProcessBundle *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeStringForKey:@"_path"];
    path = v5->_path;
    v5->_path = v8;

    v10 = [v4 decodeStringForKey:@"_executablePath"];
    executablePath = v5->_executablePath;
    v5->_executablePath = v10;

    v12 = [v4 decodeStringForKey:@"_extensionPointIdentifier"];
    extensionPointIdentifier = v5->_extensionPointIdentifier;
    v5->_extensionPointIdentifier = v12;
  }

  return v5;
}

- (void)bundleInfoValueForKey:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSProcessBundle.m" lineNumber:43 description:{@"Invalid condition not satisfying: %@", @"object != nil"}];
}

- (void)bundleInfoValueForKey:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSProcessBundle.m" lineNumber:43 description:{@"Invalid condition not satisfying: %@", @"[object isKindOfClass:NSStringClass]"}];
}

@end