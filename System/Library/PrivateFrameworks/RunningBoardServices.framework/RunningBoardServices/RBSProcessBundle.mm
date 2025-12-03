@interface RBSProcessBundle
+ (id)bundleWithDataSource:(id)source;
- (NSString)debugDescription;
- (NSString)description;
- (RBSProcessBundle)initWithRBSXPCCoder:(id)coder;
- (id)bundleInfoValueForKey:(id)key;
- (id)bundleInfoValuesForKeys:(id)keys;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSProcessBundle

+ (id)bundleWithDataSource:(id)source
{
  sourceCopy = source;
  v4 = objc_alloc_init(RBSProcessBundle);
  objc_storeWeak(&v4->_dataSource, sourceCopy);
  bundleIdentifier = [sourceCopy bundleIdentifier];
  identifier = v4->_identifier;
  v4->_identifier = bundleIdentifier;

  bundlePath = [sourceCopy bundlePath];
  path = v4->_path;
  v4->_path = bundlePath;

  executablePath = [sourceCopy executablePath];
  executablePath = v4->_executablePath;
  v4->_executablePath = executablePath;

  extensionPointIdentifier = [sourceCopy extensionPointIdentifier];

  extensionPointIdentifier = v4->_extensionPointIdentifier;
  v4->_extensionPointIdentifier = extensionPointIdentifier;

  return v4;
}

- (id)bundleInfoValueForKey:(id)key
{
  v11[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!keyCopy)
  {
    [(RBSProcessBundle *)a2 bundleInfoValueForKey:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(RBSProcessBundle *)a2 bundleInfoValueForKey:?];
  }

  v11[0] = keyCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [(RBSProcessBundle *)self bundleInfoValuesForKeys:v6];
  v8 = [v7 objectForKey:keyCopy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)bundleInfoValuesForKeys:(id)keys
{
  v49 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if ([keysCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v35 = WeakRetained;
    if (WeakRetained)
    {
      v5 = [WeakRetained bundleInfoValuesForKeys:keysCopy];
    }

    else if (self->_instance)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v33 = [MEMORY[0x1E695DFD8] setWithArray:keysCopy];
      v34 = [v33 mutableCopy];
      v7 = MEMORY[0x1E695DFD8];
      allKeys = [(NSDictionary *)selfCopy->_plistValues allKeys];
      v9 = [v7 setWithArray:allKeys];
      [v34 minusSet:v9];

      if ([v34 count])
      {
        v10 = +[RBSConnection sharedInstance];
        v11 = [v10 infoPlistResultForInstance:self->_instance forKeys:keysCopy error:0];

        v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:selfCopy->_plistValues];
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
                null = [MEMORY[0x1E695DFB0] null];
                [v12 setObject:null forKey:v17];
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v41 objects:v48 count:16];
          }

          while (v14);
        }

        v20 = [v12 copy];
        plistValues = selfCopy->_plistValues;
        selfCopy->_plistValues = v20;
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
            v27 = [(NSDictionary *)selfCopy->_plistValues objectForKey:v26];
            if (v27)
            {
              null2 = [MEMORY[0x1E695DFB0] null];
              v29 = v27 == null2;

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

      objc_sync_exit(selfCopy);
    }

    else
    {
      v30 = rbs_process_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
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

- (void)encodeWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = self->_identifier;
  v9 = coderCopy;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"_identifier"];
    coderCopy = v9;
  }

  path = self->_path;
  if (path)
  {
    [v9 encodeObject:path forKey:@"_path"];
    coderCopy = v9;
  }

  executablePath = self->_executablePath;
  if (executablePath)
  {
    [v9 encodeObject:executablePath forKey:@"_executablePath"];
    coderCopy = v9;
  }

  extensionPointIdentifier = self->_extensionPointIdentifier;
  if (extensionPointIdentifier)
  {
    [v9 encodeObject:extensionPointIdentifier forKey:@"_extensionPointIdentifier"];
    coderCopy = v9;
  }
}

- (RBSProcessBundle)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = RBSProcessBundle;
  v5 = [(RBSProcessBundle *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeStringForKey:@"_path"];
    path = v5->_path;
    v5->_path = v8;

    v10 = [coderCopy decodeStringForKey:@"_executablePath"];
    executablePath = v5->_executablePath;
    v5->_executablePath = v10;

    v12 = [coderCopy decodeStringForKey:@"_extensionPointIdentifier"];
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