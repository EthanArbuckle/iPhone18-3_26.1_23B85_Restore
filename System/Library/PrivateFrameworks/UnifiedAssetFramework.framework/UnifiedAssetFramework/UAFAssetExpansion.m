@interface UAFAssetExpansion
+ (BOOL)isValid:(id)a3 validUsageTypes:(id)a4 error:(id *)a5;
+ (BOOL)isValidTemplate:(id)a3 requiredUsageTypes:(id)a4 error:(id *)a5;
+ (id)getTemplatePart:(id)a3;
+ (id)specializeTemplate:(id)a3 usages:(id)a4 invalid:(BOOL *)a5 error:(id *)a6;
- (BOOL)isValidUsages:(id)a3;
- (UAFAssetExpansion)initWithDictionary:(id)a3;
- (id)getAutoAssetSpecifier:(id)a3;
- (id)specializeTemplate:(id)a3 usages:(id)a4;
@end

@implementation UAFAssetExpansion

+ (id)getTemplatePart:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"{"];
  v5 = [v3 rangeOfString:@"}"];
  v6 = objc_opt_new();
  v7 = v6;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || v5 == 0x7FFFFFFFFFFFFFFFLL || v5 <= v4)
  {
    [v6 addObject:v3];
    v12 = v7;
  }

  else
  {
    v8 = [v3 substringWithRange:{0, v4}];
    [v7 addObject:v8];
    v9 = [v3 substringWithRange:{v4 + 1, v5 - (v4 + 1)}];
    [v7 addObject:v9];
    v10 = v5 + 1;
    if (v10 == [v3 length])
    {
      v11 = v7;
    }

    else
    {
      v13 = [v3 substringWithRange:{v10, objc_msgSend(v3, "length") - v10}];
      [v7 addObject:v13];
      v14 = v7;
    }
  }

  return v7;
}

+ (BOOL)isValidTemplate:(id)a3 requiredUsageTypes:(id)a4 error:(id *)a5
{
  v37[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [UAFAssetExpansion getTemplatePart:a3];
  if ([v8 count] < 2 || (objc_msgSend(v8, "objectAtIndexedSubscript:", 1), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "containsObject:", v9), v9, (v10 & 1) != 0))
  {
    if ([v8 count] >= 3)
    {
      v12 = [v8 objectAtIndexedSubscript:2];
      v11 = [UAFAssetExpansion isValidTemplate:v12 requiredUsageTypes:v7 error:a5];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    if (a5)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A578];
      if (*a5)
      {
        v36[0] = *MEMORY[0x1E696A578];
        v15 = MEMORY[0x1E696AEC0];
        v16 = [v8 objectAtIndexedSubscript:1];
        v17 = [v15 stringWithFormat:@"Templated usage type %@ is not in required usage types %@", v16, v7];
        v36[1] = *MEMORY[0x1E696AA08];
        v37[0] = v17;
        v37[1] = *a5;
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
        v17 = [v22 stringWithFormat:@"Templated usage type %@ is not in required usage types %@", v16, v7];
        v35 = v17;
        v18 = MEMORY[0x1E695DF20];
        v19 = &v35;
        v20 = &v34;
        v21 = 1;
      }

      v23 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:v21];
      *a5 = [v13 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v23];
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
      v33 = v7;
      _os_log_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_DEFAULT, "%s Templated usage type %@ is not in required usage types %@", buf, 0x20u);
    }

    v11 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)specializeTemplate:(id)a3 usages:(id)a4 invalid:(BOOL *)a5 error:(id *)a6
{
  v43[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v35 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [UAFAssetExpansion getTemplatePart:v9];
  if ([v12 count] == 1)
  {
    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = 0;
  }

  else
  {
    v33 = v11;
    if ([v12 count] < 2 || (objc_msgSend(v12, "objectAtIndexedSubscript:", 1), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", v15), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v17 = [v12 objectAtIndexedSubscript:1];
      v18 = [v10 objectForKeyedSubscript:v17];

      if (v18)
      {
        v19 = [v12 objectAtIndexedSubscript:0];
        v20 = [v19 stringByAppendingString:v18];

        if ([v12 count] > 2)
        {
          v21 = [v12 objectAtIndexedSubscript:2];
          v34 = 0;
          v22 = [UAFAssetExpansion specializeTemplate:v21 usages:v10 invalid:&v35 error:&v34];
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
        *a5 = 1;
      }

      v11 = v33;
    }

    else
    {
      v26 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v27 = MEMORY[0x1E696AEC0];
      v28 = [v12 objectAtIndexedSubscript:1];
      v29 = [v27 stringWithFormat:@"Templated usage for type %@ is not in provided usages %@", v28, v10];
      v43[0] = v29;
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
        v41 = v10;
        _os_log_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_DEFAULT, "%s Templated usage for type %@ is not in provided usages %@", buf, 0x20u);
      }

      v13 = 0;
      v35 = 1;
      v11 = v33;
    }
  }

  objc_autoreleasePoolPop(v11);
  *a5 = v35;
  if (a6)
  {
    v23 = v14;
    *a6 = v14;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (BOOL)isValid:(id)a3 validUsageTypes:(id)a4 error:(id *)a5
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![UAFConfiguration isValidValue:v7 key:@"RequiredUsageTypes" kind:objc_opt_class() required:0 error:a5])
  {
    goto LABEL_41;
  }

  if (v8)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v9 = [v7 objectForKeyedSubscript:@"RequiredUsageTypes"];
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
          if (([v8 containsObject:v14] & 1) == 0)
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
              v68 = v8;
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

  v15 = [v7 objectForKeyedSubscript:@"TrialFactorTemplate"];
  if (v15)
  {
  }

  else
  {
    v18 = [v7 objectForKeyedSubscript:@"AutoAssetSpecifierTemplate"];

    if (!v18)
    {
      if (a5)
      {
        v39 = MEMORY[0x1E696ABC0];
        v40 = *MEMORY[0x1E696A578];
        if (*a5)
        {
          v59[0] = *MEMORY[0x1E696A578];
          v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"One of keys %@ and %@ must have a value", @"TrialFactorTemplate", @"AutoAssetSpecifierTemplate"];
          v59[1] = *MEMORY[0x1E696AA08];
          v60[0] = v41;
          v60[1] = *a5;
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
        *a5 = [v39 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v46];
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

  if (![UAFConfiguration isValidValue:v7 key:@"TrialFactorTemplate" kind:objc_opt_class() required:0 error:a5])
  {
    goto LABEL_41;
  }

  v19 = [v7 objectForKeyedSubscript:@"TrialFactorTemplate"];

  if (v19)
  {
    v20 = [v7 objectForKeyedSubscript:@"TrialFactorTemplate"];
    v21 = [v7 objectForKeyedSubscript:@"RequiredUsageTypes"];
    v22 = [UAFAssetExpansion isValidTemplate:v20 requiredUsageTypes:v21 error:a5];

    if (!v22)
    {
      goto LABEL_41;
    }
  }

  if (![UAFConfiguration isValidValue:v7 key:@"TrialFactorFallbackTemplate" kind:objc_opt_class() required:0 error:a5])
  {
    goto LABEL_41;
  }

  v23 = [v7 objectForKeyedSubscript:@"TrialFactorFallbackTemplate"];
  if (v23)
  {
    v24 = v23;
    v25 = [v7 objectForKeyedSubscript:@"TrialFactorFallbackTemplate"];
    v26 = [v7 objectForKeyedSubscript:@"RequiredUsageTypes"];
    v47 = [UAFAssetExpansion isValidTemplate:v25 requiredUsageTypes:v26 error:a5];

    if (!v47)
    {
      goto LABEL_41;
    }
  }

  if (![UAFConfiguration isValidValue:v7 key:@"AutoAssetSpecifierTemplate" kind:objc_opt_class() required:0 error:a5])
  {
    goto LABEL_41;
  }

  v27 = [v7 objectForKeyedSubscript:@"AutoAssetSpecifierTemplate"];

  if (v27)
  {
    v28 = [v7 objectForKeyedSubscript:@"AutoAssetSpecifierTemplate"];
    v29 = [v7 objectForKeyedSubscript:@"RequiredUsageTypes"];
    v30 = [UAFAssetExpansion isValidTemplate:v28 requiredUsageTypes:v29 error:a5];

    if (!v30)
    {
      goto LABEL_41;
    }
  }

  if (![UAFConfiguration isValidValue:v7 key:@"UsageValues" kind:objc_opt_class() required:0 error:a5])
  {
LABEL_41:
    v17 = 0;
    goto LABEL_42;
  }

  [v7 objectForKeyedSubscript:@"UsageValues"];
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
        if ((objc_opt_isKindOfClass() & 1) == 0 || v8 && ![v8 containsObject:v35])
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

- (UAFAssetExpansion)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UAFAssetExpansion;
  v5 = [(UAFAssetExpansion *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"RequiredUsageTypes"];
    requiredUsageTypes = v5->_requiredUsageTypes;
    v5->_requiredUsageTypes = v6;

    v8 = [v4 objectForKeyedSubscript:@"AutoAssetSpecifierTemplate"];
    autoAssetSpecifierTemplate = v5->_autoAssetSpecifierTemplate;
    v5->_autoAssetSpecifierTemplate = v8;

    v10 = [v4 objectForKeyedSubscript:@"UsageValues"];
    usageValues = v5->_usageValues;
    v5->_usageValues = v10;

    v12 = v5;
  }

  return v5;
}

- (BOOL)isValidUsages:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(UAFAssetExpansion *)self requiredUsageTypes];
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = [v4 objectForKey:*(*(&v27 + 1) + 8 * v9)];

      if (!v10)
      {
        goto LABEL_24;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (v4)
  {
    usageValues = self->_usageValues;
    if (usageValues)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v5 = usageValues;
      v12 = [(NSDictionary *)v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
              objc_enumerationMutation(v5);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            v17 = [v4 objectForKeyedSubscript:{v16, v23}];
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

          v13 = [(NSDictionary *)v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

- (id)specializeTemplate:(id)a3 usages:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [(UAFAssetExpansion *)self isValidUsages:v7])
  {
    v12 = 0;
    v8 = [UAFAssetExpansion specializeTemplate:v6 usages:v7 invalid:&v12 error:0];
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

- (id)getAutoAssetSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(UAFAssetExpansion *)self autoAssetSpecifierTemplate];
  v6 = [(UAFAssetExpansion *)self specializeTemplate:v5 usages:v4];

  return v6;
}

@end