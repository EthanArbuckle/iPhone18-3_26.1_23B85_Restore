@interface UAFAssetExpansion
+ (BOOL)isValid:(id)valid validUsageTypes:(id)types error:(id *)error;
+ (BOOL)isValidTemplate:(id)template requiredUsageTypes:(id)types error:(id *)error;
+ (id)getTemplatePart:(id)part;
+ (id)specializeTemplate:(id)template usages:(id)usages invalid:(BOOL *)invalid error:(id *)error;
- (BOOL)isValidUsages:(id)usages;
- (UAFAssetExpansion)initWithDictionary:(id)dictionary;
- (id)getAutoAssetSpecifier:(id)specifier;
- (id)specializeTemplate:(id)template usages:(id)usages;
@end

@implementation UAFAssetExpansion

+ (id)getTemplatePart:(id)part
{
  partCopy = part;
  v4 = [partCopy rangeOfString:@"{"];
  v5 = [partCopy rangeOfString:@"}"];
  v6 = objc_opt_new();
  v7 = v6;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || v5 == 0x7FFFFFFFFFFFFFFFLL || v5 <= v4)
  {
    [v6 addObject:partCopy];
    v12 = v7;
  }

  else
  {
    v8 = [partCopy substringWithRange:{0, v4}];
    [v7 addObject:v8];
    v9 = [partCopy substringWithRange:{v4 + 1, v5 - (v4 + 1)}];
    [v7 addObject:v9];
    v10 = v5 + 1;
    if (v10 == [partCopy length])
    {
      v11 = v7;
    }

    else
    {
      v13 = [partCopy substringWithRange:{v10, objc_msgSend(partCopy, "length") - v10}];
      [v7 addObject:v13];
      v14 = v7;
    }
  }

  return v7;
}

+ (BOOL)isValidTemplate:(id)template requiredUsageTypes:(id)types error:(id *)error
{
  v37[2] = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v8 = [UAFAssetExpansion getTemplatePart:template];
  if ([v8 count] < 2 || (objc_msgSend(v8, "objectAtIndexedSubscript:", 1), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(typesCopy, "containsObject:", v9), v9, (v10 & 1) != 0))
  {
    if ([v8 count] >= 3)
    {
      v12 = [v8 objectAtIndexedSubscript:2];
      v11 = [UAFAssetExpansion isValidTemplate:v12 requiredUsageTypes:typesCopy error:error];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A578];
      if (*error)
      {
        v36[0] = *MEMORY[0x1E696A578];
        v15 = MEMORY[0x1E696AEC0];
        v16 = [v8 objectAtIndexedSubscript:1];
        typesCopy = [v15 stringWithFormat:@"Templated usage type %@ is not in required usage types %@", v16, typesCopy];
        v36[1] = *MEMORY[0x1E696AA08];
        v37[0] = typesCopy;
        v37[1] = *error;
        v18 = MEMORY[0x1E695DF20];
        v19 = v37;
        v20 = v36;
        v21 = 2;
      }

      else
      {
        v34 = *MEMORY[0x1E696A578];
        v22 = MEMORY[0x1E696AEC0];
        v16 = [v8 objectAtIndexedSubscript:1];
        typesCopy = [v22 stringWithFormat:@"Templated usage type %@ is not in required usage types %@", v16, typesCopy];
        v35 = typesCopy;
        v18 = MEMORY[0x1E695DF20];
        v19 = &v35;
        v20 = &v34;
        v21 = 1;
      }

      v23 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:v21];
      *error = [v13 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v23];
    }

    v24 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v8 objectAtIndexedSubscript:1];
      *buf = 136315650;
      v29 = "+[UAFAssetExpansion isValidTemplate:requiredUsageTypes:error:]";
      v30 = 2112;
      v31 = v25;
      v32 = 2112;
      v33 = typesCopy;
      _os_log_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_DEFAULT, "%s Templated usage type %@ is not in required usage types %@", buf, 0x20u);
    }

    v11 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)specializeTemplate:(id)template usages:(id)usages invalid:(BOOL *)invalid error:(id *)error
{
  v43[1] = *MEMORY[0x1E69E9840];
  templateCopy = template;
  usagesCopy = usages;
  v35 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [UAFAssetExpansion getTemplatePart:templateCopy];
  if ([v12 count] == 1)
  {
    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = 0;
  }

  else
  {
    v33 = v11;
    if ([v12 count] < 2 || (objc_msgSend(v12, "objectAtIndexedSubscript:", 1), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(usagesCopy, "objectForKey:", v15), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v17 = [v12 objectAtIndexedSubscript:1];
      v18 = [usagesCopy objectForKeyedSubscript:v17];

      if (v18)
      {
        v19 = [v12 objectAtIndexedSubscript:0];
        v20 = [v19 stringByAppendingString:v18];

        if ([v12 count] > 2)
        {
          v21 = [v12 objectAtIndexedSubscript:2];
          v34 = 0;
          v22 = [UAFAssetExpansion specializeTemplate:v21 usages:usagesCopy invalid:&v35 error:&v34];
          v14 = v34;

          v13 = 0;
          if (!v35)
          {
            v13 = [v20 stringByAppendingString:v22];
          }
        }

        else
        {
          v13 = v20;
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
        v13 = 0;
        *invalid = 1;
      }

      v11 = v33;
    }

    else
    {
      v26 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v27 = MEMORY[0x1E696AEC0];
      v28 = [v12 objectAtIndexedSubscript:1];
      usagesCopy = [v27 stringWithFormat:@"Templated usage for type %@ is not in provided usages %@", v28, usagesCopy];
      v43[0] = usagesCopy;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      v14 = [v26 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v30];

      v31 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v12 objectAtIndexedSubscript:1];
        *buf = 136315650;
        v37 = "+[UAFAssetExpansion specializeTemplate:usages:invalid:error:]";
        v38 = 2112;
        v39 = v32;
        v40 = 2112;
        v41 = usagesCopy;
        _os_log_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_DEFAULT, "%s Templated usage for type %@ is not in provided usages %@", buf, 0x20u);
      }

      v13 = 0;
      v35 = 1;
      v11 = v33;
    }
  }

  objc_autoreleasePoolPop(v11);
  *invalid = v35;
  if (error)
  {
    v23 = v14;
    *error = v14;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (BOOL)isValid:(id)valid validUsageTypes:(id)types error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  typesCopy = types;
  if (![UAFConfiguration isValidValue:validCopy key:@"RequiredUsageTypes" kind:objc_opt_class() required:0 error:error])
  {
    goto LABEL_41;
  }

  if (typesCopy)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v9 = [validCopy objectForKeyedSubscript:@"RequiredUsageTypes"];
    v10 = [v9 countByEnumeratingWithState:&v52 objects:v69 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v53;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v53 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v52 + 1) + 8 * i);
          if (([typesCopy containsObject:v14] & 1) == 0)
          {
            v16 = UAFGetLogCategory(&UAFLogContextConfiguration);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v62 = "+[UAFAssetExpansion isValid:validUsageTypes:error:]";
              v63 = 2112;
              v64 = @"RequiredUsageTypes";
              v65 = 2112;
              v66 = v14;
              v67 = 2112;
              v68 = typesCopy;
              _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s %@ has value %@ which isn't one of %@", buf, 0x2Au);
            }

            goto LABEL_17;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v52 objects:v69 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  v15 = [validCopy objectForKeyedSubscript:@"TrialFactorTemplate"];
  if (v15)
  {
  }

  else
  {
    v18 = [validCopy objectForKeyedSubscript:@"AutoAssetSpecifierTemplate"];

    if (!v18)
    {
      if (error)
      {
        v39 = MEMORY[0x1E696ABC0];
        v40 = *MEMORY[0x1E696A578];
        if (*error)
        {
          v59[0] = *MEMORY[0x1E696A578];
          v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"One of keys %@ and %@ must have a value", @"TrialFactorTemplate", @"AutoAssetSpecifierTemplate"];
          v59[1] = *MEMORY[0x1E696AA08];
          v60[0] = v41;
          v60[1] = *error;
          v42 = MEMORY[0x1E695DF20];
          v43 = v60;
          v44 = v59;
          v45 = 2;
        }

        else
        {
          v57 = *MEMORY[0x1E696A578];
          v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"One of keys %@ and %@ must have a value", @"TrialFactorTemplate", @"AutoAssetSpecifierTemplate"];
          v58 = v41;
          v42 = MEMORY[0x1E695DF20];
          v43 = &v58;
          v44 = &v57;
          v45 = 1;
        }

        v46 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:v45];
        *error = [v39 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v46];
      }

      v9 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v62 = "+[UAFAssetExpansion isValid:validUsageTypes:error:]";
        v63 = 2112;
        v64 = @"TrialFactorTemplate";
        v65 = 2112;
        v66 = @"AutoAssetSpecifierTemplate";
        _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s One of keys %@ and %@ must have a value", buf, 0x20u);
      }

LABEL_17:
      v17 = 0;
      goto LABEL_18;
    }
  }

  if (![UAFConfiguration isValidValue:validCopy key:@"TrialFactorTemplate" kind:objc_opt_class() required:0 error:error])
  {
    goto LABEL_41;
  }

  v19 = [validCopy objectForKeyedSubscript:@"TrialFactorTemplate"];

  if (v19)
  {
    v20 = [validCopy objectForKeyedSubscript:@"TrialFactorTemplate"];
    v21 = [validCopy objectForKeyedSubscript:@"RequiredUsageTypes"];
    v22 = [UAFAssetExpansion isValidTemplate:v20 requiredUsageTypes:v21 error:error];

    if (!v22)
    {
      goto LABEL_41;
    }
  }

  if (![UAFConfiguration isValidValue:validCopy key:@"TrialFactorFallbackTemplate" kind:objc_opt_class() required:0 error:error])
  {
    goto LABEL_41;
  }

  v23 = [validCopy objectForKeyedSubscript:@"TrialFactorFallbackTemplate"];
  if (v23)
  {
    v24 = v23;
    v25 = [validCopy objectForKeyedSubscript:@"TrialFactorFallbackTemplate"];
    v26 = [validCopy objectForKeyedSubscript:@"RequiredUsageTypes"];
    v47 = [UAFAssetExpansion isValidTemplate:v25 requiredUsageTypes:v26 error:error];

    if (!v47)
    {
      goto LABEL_41;
    }
  }

  if (![UAFConfiguration isValidValue:validCopy key:@"AutoAssetSpecifierTemplate" kind:objc_opt_class() required:0 error:error])
  {
    goto LABEL_41;
  }

  v27 = [validCopy objectForKeyedSubscript:@"AutoAssetSpecifierTemplate"];

  if (v27)
  {
    v28 = [validCopy objectForKeyedSubscript:@"AutoAssetSpecifierTemplate"];
    v29 = [validCopy objectForKeyedSubscript:@"RequiredUsageTypes"];
    v30 = [UAFAssetExpansion isValidTemplate:v28 requiredUsageTypes:v29 error:error];

    if (!v30)
    {
      goto LABEL_41;
    }
  }

  if (![UAFConfiguration isValidValue:validCopy key:@"UsageValues" kind:objc_opt_class() required:0 error:error])
  {
LABEL_41:
    v17 = 0;
    goto LABEL_42;
  }

  [validCopy objectForKeyedSubscript:@"UsageValues"];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = v51 = 0u;
  v31 = [v9 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v49;
    while (2)
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v49 != v33)
        {
          objc_enumerationMutation(v9);
        }

        v35 = *(*(&v48 + 1) + 8 * j);
        v36 = [v9 objectForKeyedSubscript:v35];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || typesCopy && ![typesCopy containsObject:v35])
        {

          v17 = 0;
          goto LABEL_52;
        }
      }

      v32 = [v9 countByEnumeratingWithState:&v48 objects:v56 count:16];
      v17 = 1;
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_52:

LABEL_18:
LABEL_42:

  v37 = *MEMORY[0x1E69E9840];
  return v17;
}

- (UAFAssetExpansion)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = UAFAssetExpansion;
  v5 = [(UAFAssetExpansion *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"RequiredUsageTypes"];
    requiredUsageTypes = v5->_requiredUsageTypes;
    v5->_requiredUsageTypes = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"AutoAssetSpecifierTemplate"];
    autoAssetSpecifierTemplate = v5->_autoAssetSpecifierTemplate;
    v5->_autoAssetSpecifierTemplate = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"UsageValues"];
    usageValues = v5->_usageValues;
    v5->_usageValues = v10;

    v12 = v5;
  }

  return v5;
}

- (BOOL)isValidUsages:(id)usages
{
  v33 = *MEMORY[0x1E69E9840];
  usagesCopy = usages;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  requiredUsageTypes = [(UAFAssetExpansion *)self requiredUsageTypes];
  v6 = [(NSDictionary *)requiredUsageTypes countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(requiredUsageTypes);
      }

      v10 = [usagesCopy objectForKey:*(*(&v27 + 1) + 8 * v9)];

      if (!v10)
      {
        goto LABEL_24;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSDictionary *)requiredUsageTypes countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (usagesCopy)
  {
    usageValues = self->_usageValues;
    if (usageValues)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      requiredUsageTypes = usageValues;
      v12 = [(NSDictionary *)requiredUsageTypes countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(requiredUsageTypes);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            v17 = [usagesCopy objectForKeyedSubscript:{v16, v23}];
            if (v17)
            {
              v18 = v17;
              v19 = [(NSDictionary *)self->_usageValues objectForKeyedSubscript:v16];
              v20 = [v19 containsObject:v18];

              if (!v20)
              {
                LOBYTE(v10) = 0;
                goto LABEL_24;
              }
            }
          }

          v13 = [(NSDictionary *)requiredUsageTypes countByEnumeratingWithState:&v23 objects:v31 count:16];
          LOBYTE(v10) = 1;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        LOBYTE(v10) = 1;
      }

LABEL_24:

      goto LABEL_25;
    }
  }

  LOBYTE(v10) = 1;
LABEL_25:

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)specializeTemplate:(id)template usages:(id)usages
{
  templateCopy = template;
  usagesCopy = usages;
  if (templateCopy && [(UAFAssetExpansion *)self isValidUsages:usagesCopy])
  {
    v12 = 0;
    v8 = [UAFAssetExpansion specializeTemplate:templateCopy usages:usagesCopy invalid:&v12 error:0];
    v9 = v8;
    v10 = 0;
    if ((v12 & 1) == 0)
    {
      v10 = v8;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)getAutoAssetSpecifier:(id)specifier
{
  specifierCopy = specifier;
  autoAssetSpecifierTemplate = [(UAFAssetExpansion *)self autoAssetSpecifierTemplate];
  v6 = [(UAFAssetExpansion *)self specializeTemplate:autoAssetSpecifierTemplate usages:specifierCopy];

  return v6;
}

@end