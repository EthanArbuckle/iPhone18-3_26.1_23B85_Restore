@interface UAFPrestageConfiguration
+ (BOOL)isValid:(id)valid error:(id *)error;
+ (BOOL)predicateMatch:(id)match;
+ (id)fromContentsOfURL:(id)l error:(id *)error;
+ (id)supportedFileVersions;
- (UAFPrestageConfiguration)initWithDictionary:(id)dictionary;
- (id)mergeAssetSetUsages:(id)usages;
- (id)usages:(id)usages;
@end

@implementation UAFPrestageConfiguration

+ (id)supportedFileVersions
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"1.0.0";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (BOOL)isValid:(id)valid error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v6 = +[UAFPrestageConfiguration supportedFileVersions];
  v7 = [UAFConfiguration isValid:validCopy fileType:@"PrestageConfiguration" fileVersions:v6 error:error];

  if (!v7 || (v8 = 0x1E696A000uLL, ![UAFConfiguration isValidValue:validCopy key:@"AssetSetName" kind:objc_opt_class() required:1 error:error]) || (v9 = 0x1E695D000uLL, ![UAFConfiguration isValidValue:validCopy key:@"ValidConfigs" kind:objc_opt_class() required:1 error:error]))
  {
    v27 = 0;
    goto LABEL_28;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = [validCopy objectForKeyedSubscript:@"ValidConfigs"];
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (!v11)
  {
    v27 = 1;
    goto LABEL_34;
  }

  v12 = v11;
  v13 = *v46;
  v39 = v10;
  v36 = *v46;
  while (2)
  {
    v14 = 0;
    v37 = v12;
    do
    {
      if (*v46 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v38 = v14;
      v15 = *(*(&v45 + 1) + 8 * v14);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v33 = objc_opt_class();
          *buf = 136315394;
          v51 = "+[UAFPrestageConfiguration isValid:error:]";
          v52 = 2112;
          v53 = v33;
          v34 = v33;
          _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s ValidConfig is not expected kind %@", buf, 0x16u);
        }

        goto LABEL_32;
      }

      v16 = v15;
      v17 = *(v8 + 3776);
      if (![UAFConfiguration isValidValue:v16 key:@"TargetingType" kind:objc_opt_class() required:1 error:error])
      {
        goto LABEL_32;
      }

      v18 = [v16 objectForKeyedSubscript:@"TargetingType"];
      if (![v18 isEqualToString:@"PrestagePredicate"])
      {
        if ([v18 isEqualToString:@"AllDevices"])
        {
          goto LABEL_15;
        }

        v35 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v51 = "+[UAFPrestageConfiguration isValid:error:]";
          v52 = 2114;
          v53 = v18;
          _os_log_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_DEFAULT, "%s Unknown targeting type: %{public}@", buf, 0x16u);
        }

LABEL_40:
LABEL_32:

        v27 = 0;
        goto LABEL_34;
      }

      v19 = *(v8 + 3776);
      if (![UAFConfiguration isValidValue:v16 key:@"TargetingPredicate" kind:objc_opt_class() required:1 error:error])
      {
        goto LABEL_40;
      }

LABEL_15:
      v20 = *(v9 + 3784);
      if (![UAFConfiguration isValidValue:v16 key:@"Usages" kind:objc_opt_class() required:1 error:error])
      {
        goto LABEL_40;
      }

      v40 = v18;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v21 = [v16 objectForKeyedSubscript:@"Usages"];
      v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v42;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v42 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v41 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v30 = UAFGetLogCategory(&UAFLogContextConfiguration);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = objc_opt_class();
                *buf = 136315394;
                v51 = "+[UAFPrestageConfiguration isValid:error:]";
                v52 = 2112;
                v53 = v31;
                v32 = v31;
                _os_log_impl(&dword_1BCF2C000, v30, OS_LOG_TYPE_DEFAULT, "%s Usage is not expected kind %@", buf, 0x16u);
              }

              v10 = v39;
              goto LABEL_32;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v10 = v39;
      v14 = v38 + 1;
      v13 = v36;
      v8 = 0x1E696A000;
      v9 = 0x1E695D000;
    }

    while (v38 + 1 != v37);
    v12 = [v39 countByEnumeratingWithState:&v45 objects:v54 count:16];
    v27 = 1;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_34:

LABEL_28:
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

+ (id)fromContentsOfURL:(id)l error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (error)
  {
    *error = 0;
  }

  v18 = 0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy error:&v18];
  v7 = v18;
  v8 = v7;
  if (error)
  {
    v9 = v7;
    *error = v8;
  }

  if (v6)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if ([UAFPrestageConfiguration isValid:v6 error:error])
    {
      v15 = [[UAFPrestageConfiguration alloc] initWithDictionary:v6];
      goto LABEL_15;
    }

    v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "+[UAFPrestageConfiguration fromContentsOfURL:error:]";
      v21 = 2112;
      v22 = lCopy;
      v12 = "%s Failed to validate UAFAssetSetConfiguration dictionary from %@";
      v13 = v11;
      v14 = 22;
      goto LABEL_19;
    }
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "+[UAFPrestageConfiguration fromContentsOfURL:error:]";
      v21 = 2112;
      v22 = lCopy;
      v23 = 2112;
      v24 = v8;
      v12 = "%s Failed to load UAFAssetSetConfiguration dictionary from %@: %@";
      v13 = v11;
      v14 = 32;
LABEL_19:
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }
  }

  v15 = 0;
LABEL_15:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (BOOL)predicateMatch:(id)match
{
  v27 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [&unk_1F3B73260 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(&unk_1F3B73260);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [UAFCommonUtilities mobileGestaltQuery:v10];
        [dictionary2 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [&unk_1F3B73260 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  [dictionary addEntriesFromDictionary:dictionary2];
  v12 = +[UAFCommonUtilities systemLanguage];
  [dictionary setObject:v12 forKeyedSubscript:@"SystemLanguage"];

  v13 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "+[UAFPrestageConfiguration predicateMatch:]";
    v24 = 2114;
    v25 = matchCopy;
    _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Evaluating predicate string: '%{public}@'", buf, 0x16u);
  }

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:matchCopy];
  v15 = [v14 evaluateWithObject:dictionary];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (UAFPrestageConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = UAFPrestageConfiguration;
  v5 = [(UAFPrestageConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"AssetSetName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ValidConfigs"];
    v9 = [(UAFPrestageConfiguration *)v5 usages:v8];
    usages = v5->_usages;
    v5->_usages = v9;

    v11 = v5;
  }

  return v5;
}

- (id)usages:(id)usages
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = usages;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v3)
  {
    array = 0;
    goto LABEL_21;
  }

  v4 = v3;
  array = 0;
  v6 = *v20;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v20 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v19 + 1) + 8 * i);
      v9 = [v8 objectForKeyedSubscript:@"TargetingType"];
      v10 = [v9 isEqualToString:@"AllDevices"];

      if (v10)
      {
        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        v11 = [v8 objectForKeyedSubscript:@"Usages"];
        v12 = [array arrayByAddingObjectsFromArray:v11];
        goto LABEL_10;
      }

      v13 = [v8 objectForKeyedSubscript:@"TargetingType"];
      v14 = [v13 isEqualToString:@"PrestagePredicate"];

      if (v14)
      {
        v11 = [v8 objectForKeyedSubscript:@"TargetingPredicate"];
        if ([UAFPrestageConfiguration predicateMatch:v11])
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          v15 = [v8 objectForKeyedSubscript:@"Usages"];
          v12 = [array arrayByAddingObjectsFromArray:v15];

          array = v15;
LABEL_10:

          array = v12;
        }

        continue;
      }
    }

    v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v4);
LABEL_21:

  v16 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)mergeAssetSetUsages:(id)usages
{
  usagesCopy = usages;
  if ([(NSArray *)self->_usages count])
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:usagesCopy];
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = [v5 objectForKeyedSubscript:self->_name];
    [v6 addObjectsFromArray:v7];

    [v6 addObjectsFromArray:self->_usages];
    allObjects = [v6 allObjects];
    [v5 setObject:allObjects forKeyedSubscript:self->_name];
  }

  else
  {
    v5 = usagesCopy;
  }

  return v5;
}

@end