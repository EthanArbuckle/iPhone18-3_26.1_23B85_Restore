@interface UAFUsageAliasConfiguration
+ (BOOL)isValid:(id)valid assetSetManager:(id)manager error:(id *)error;
+ (id)fromContentsOfURL:(id)l assetSetManager:(id)manager error:(id *)error;
+ (id)supportedFileVersions;
- (BOOL)addDeprecatedValues:(id)values;
- (UAFUsageAliasConfiguration)initWithDictionary:(id)dictionary assetSetManager:(id)manager;
- (id)getAssetSetAssets:(id)assets usageValue:(id)value withSource:(id)source;
- (id)getAssets:(id)assets withSource:(id)source;
@end

@implementation UAFUsageAliasConfiguration

+ (id)supportedFileVersions
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"1.0.0";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (BOOL)isValid:(id)valid assetSetManager:(id)manager error:(id *)error
{
  v170 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  managerCopy = manager;
  v9 = +[UAFUsageAliasConfiguration supportedFileVersions];
  v10 = [UAFConfiguration isValid:validCopy fileType:@"UsageAliasConfiguration" fileVersions:v9 error:error];

  if (!v10)
  {
    goto LABEL_59;
  }

  if (![UAFConfiguration isValidValue:validCopy key:@"UsageAliasName" kind:objc_opt_class() required:1 error:error]|| ![UAFConfiguration isValidValue:validCopy key:@"UsageAliasValues" kind:objc_opt_class() required:1 error:error])
  {
    LOBYTE(v10) = 0;
    goto LABEL_59;
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v11 = [validCopy objectForKeyedSubscript:@"UsageAliasValues"];
  v12 = [v11 countByEnumeratingWithState:&v132 objects:v169 count:16];
  if (!v12)
  {
    LOBYTE(v10) = 1;
    goto LABEL_58;
  }

  v13 = *v133;
  v111 = *v133;
  while (2)
  {
    v14 = 0;
    v112 = v12;
    do
    {
      if (*v133 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v114 = v14;
      v15 = *(*(&v132 + 1) + 8 * v14);
      v16 = [validCopy objectForKeyedSubscript:@"UsageAliasValues"];
      v17 = [v16 objectForKeyedSubscript:v15];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v119 = v15;
      if ((isKindOfClass & 1) == 0)
      {
        if (error)
        {
          v62 = MEMORY[0x1E696ABC0];
          v63 = *MEMORY[0x1E696A578];
          if (*error)
          {
            v167[0] = *MEMORY[0x1E696A578];
            v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues entry for %@ is not expected kind %@", v15, objc_opt_class()];
            v167[1] = *MEMORY[0x1E696AA08];
            v65 = *error;
            v168[0] = v64;
            v168[1] = v65;
            v66 = MEMORY[0x1E695DF20];
            v67 = v168;
            v68 = v167;
            v69 = 2;
          }

          else
          {
            v165 = *MEMORY[0x1E696A578];
            v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues entry for %@ is not expected kind %@", v15, objc_opt_class()];
            v166 = v64;
            v66 = MEMORY[0x1E695DF20];
            v67 = &v166;
            v68 = &v165;
            v69 = 1;
          }

          v88 = [v66 dictionaryWithObjects:v67 forKeys:v68 count:v69];
          *error = [v62 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v88];

          v15 = v119;
        }

        v20 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_57;
        }

        v89 = objc_opt_class();
        *buf = 136315650;
        v142 = "+[UAFUsageAliasConfiguration isValid:assetSetManager:error:]";
        v143 = 2112;
        v144 = v15;
        v145 = 2112;
        v146 = v89;
        v90 = v89;
        v91 = "%s UsageAliasValues entry for %@ is not expected kind %@";
        v92 = v20;
        v93 = 32;
        goto LABEL_77;
      }

      v19 = [validCopy objectForKeyedSubscript:@"UsageAliasValues"];
      v20 = [v19 objectForKeyedSubscript:v15];

      if (![v20 count])
      {
        if (error)
        {
          v70 = MEMORY[0x1E696ABC0];
          v71 = *MEMORY[0x1E696A578];
          if (*error)
          {
            v163[0] = *MEMORY[0x1E696A578];
            v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues asset sets for %@ has no values", v15];
            v163[1] = *MEMORY[0x1E696AA08];
            v73 = *error;
            v164[0] = v72;
            v164[1] = v73;
            v74 = MEMORY[0x1E695DF20];
            v75 = v164;
            v76 = v163;
            v77 = 2;
          }

          else
          {
            v161 = *MEMORY[0x1E696A578];
            v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues asset sets for %@ has no values", v15];
            v162 = v72;
            v74 = MEMORY[0x1E695DF20];
            v75 = &v162;
            v76 = &v161;
            v77 = 1;
          }

          v94 = [v74 dictionaryWithObjects:v75 forKeys:v76 count:v77];
          *error = [v70 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v94];

          v15 = v119;
        }

        v90 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (!os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_78;
        }

        *buf = 136315394;
        v142 = "+[UAFUsageAliasConfiguration isValid:assetSetManager:error:]";
        v143 = 2112;
        v144 = v15;
        v91 = "%s UsageAliasValues asset sets for %@ has no values";
        v92 = v90;
        v93 = 22;
LABEL_77:
        _os_log_impl(&dword_1BCF2C000, v92, OS_LOG_TYPE_DEFAULT, v91, buf, v93);
LABEL_78:

LABEL_57:
        LOBYTE(v10) = 0;
        goto LABEL_58;
      }

      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v20 = v20;
      v21 = [v20 countByEnumeratingWithState:&v128 objects:v160 count:16];
      if (v21)
      {
        v22 = *v129;
        v115 = v20;
        v116 = v11;
        v109 = *v129;
        while (2)
        {
          v23 = 0;
          v110 = v21;
          do
          {
            if (*v129 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v113 = v23;
            v24 = *(*(&v128 + 1) + 8 * v23);
            v25 = [v20 objectForKeyedSubscript:v24];
            objc_opt_class();
            v26 = objc_opt_isKindOfClass();

            if ((v26 & 1) == 0)
            {
              if (error)
              {
                v78 = v20;
                v79 = managerCopy;
                v80 = MEMORY[0x1E696ABC0];
                v81 = *MEMORY[0x1E696A578];
                if (*error)
                {
                  v158[0] = *MEMORY[0x1E696A578];
                  v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues usages for asset set %@ for value %@ is not expected kind %@", v24, v119, objc_opt_class()];
                  v158[1] = *MEMORY[0x1E696AA08];
                  v83 = *error;
                  v159[0] = v82;
                  v159[1] = v83;
                  v84 = MEMORY[0x1E695DF20];
                  v85 = v159;
                  v86 = v158;
                  v87 = 2;
                }

                else
                {
                  v156 = *MEMORY[0x1E696A578];
                  v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues usages for asset set %@ for value %@ is not expected kind %@", v24, v119, objc_opt_class()];
                  v157 = v82;
                  v84 = MEMORY[0x1E695DF20];
                  v85 = &v157;
                  v86 = &v156;
                  v87 = 1;
                }

                v102 = [v84 dictionaryWithObjects:v85 forKeys:v86 count:v87];
                *error = [v80 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v102];

                managerCopy = v79;
                v20 = v78;
              }

              v28 = UAFGetLogCategory(&UAFLogContextConfiguration);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v103 = objc_opt_class();
                *buf = 136315906;
                v142 = "+[UAFUsageAliasConfiguration isValid:assetSetManager:error:]";
                v143 = 2112;
                v144 = v24;
                v145 = 2112;
                v146 = v119;
                v147 = 2112;
                v148 = v103;
                v104 = v103;
                _os_log_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_DEFAULT, "%s UsageAliasValues usages for asset set %@ for value %@ is not expected kind %@", buf, 0x2Au);
              }

              goto LABEL_56;
            }

            v118 = v24;
            v27 = [v20 objectForKeyedSubscript:v24];
            v124 = 0u;
            v125 = 0u;
            v126 = 0u;
            v127 = 0u;
            v28 = v27;
            v29 = [v28 countByEnumeratingWithState:&v124 objects:v155 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v125;
              while (2)
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v125 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v124 + 1) + 8 * i);
                  v34 = [v28 objectForKeyedSubscript:v33];
                  objc_opt_class();
                  v35 = objc_opt_isKindOfClass();

                  if ((v35 & 1) == 0)
                  {
                    if (error)
                    {
                      v48 = MEMORY[0x1E696ABC0];
                      v49 = *MEMORY[0x1E696A578];
                      if (*error)
                      {
                        v153[0] = *MEMORY[0x1E696A578];
                        v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues usage value for usage %@ for asset set %@ for value %@ is not expected kind %@", v33, v118, v119, objc_opt_class()];
                        v153[1] = *MEMORY[0x1E696AA08];
                        v51 = *error;
                        v154[0] = v50;
                        v154[1] = v51;
                        v52 = MEMORY[0x1E695DF20];
                        v53 = v154;
                        v54 = v153;
                        v55 = 2;
                      }

                      else
                      {
                        v151 = *MEMORY[0x1E696A578];
                        v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues usage value for usage %@ for asset set %@ for value %@ is not expected kind %@", v33, v118, v119, objc_opt_class()];
                        v152 = v50;
                        v52 = MEMORY[0x1E695DF20];
                        v53 = &v152;
                        v54 = &v151;
                        v55 = 1;
                      }

                      v56 = [v52 dictionaryWithObjects:v53 forKeys:v54 count:v55];
                      *error = [v48 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v56];
                    }

                    v57 = UAFGetLogCategory(&UAFLogContextConfiguration);
                    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                    {
                      v58 = objc_opt_class();
                      *buf = 136316162;
                      v142 = "+[UAFUsageAliasConfiguration isValid:assetSetManager:error:]";
                      v143 = 2112;
                      v144 = v33;
                      v145 = 2112;
                      v146 = v118;
                      v147 = 2112;
                      v148 = v119;
                      v149 = 2112;
                      v150 = v58;
                      v59 = v58;
                      _os_log_impl(&dword_1BCF2C000, v57, OS_LOG_TYPE_DEFAULT, "%s UsageAliasValues usage value for usage %@ for asset set %@ for value %@ is not expected kind %@", buf, 0x34u);
                    }

                    v20 = v115;
                    goto LABEL_56;
                  }
                }

                v30 = [v28 countByEnumeratingWithState:&v124 objects:v155 count:16];
                v15 = v119;
                if (v30)
                {
                  continue;
                }

                break;
              }
            }

            if (managerCopy)
            {
              v36 = objc_autoreleasePoolPush();
              v37 = [managerCopy getAssetSet:v118];
              context = v36;
              if (v37)
              {
                context = 0;
              }

              else
              {
                context = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues asset set %@ for value %@ can't be found", v118, v15];
              }

              v108 = managerCopy;
              v122 = 0u;
              v123 = 0u;
              v120 = 0u;
              v121 = 0u;
              obj = v28;
              v39 = [obj countByEnumeratingWithState:&v120 objects:v140 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v121;
LABEL_31:
                v42 = 0;
                while (1)
                {
                  if (*v121 != v41)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if (context)
                  {
                    break;
                  }

                  v43 = *(*(&v120 + 1) + 8 * v42);
                  usageTypes = [v37 usageTypes];
                  v45 = [usageTypes containsObject:v43];

                  if (v45)
                  {
                    context = 0;
                  }

                  else
                  {
                    v46 = MEMORY[0x1E696AEC0];
                    usageTypes2 = [v37 usageTypes];
                    context = [v46 stringWithFormat:@"UsageAliasValues usage %@ in asset set %@ for value %@ not in valid usage types for set %@", v43, v118, v119, usageTypes2, context];
                  }

                  if (v40 == ++v42)
                  {
                    v40 = [obj countByEnumeratingWithState:&v120 objects:v140 count:16];
                    if (v40)
                    {
                      goto LABEL_31;
                    }

                    break;
                  }
                }
              }

              objc_autoreleasePoolPop(context);
              managerCopy = v108;
              v15 = v119;
              if (context)
              {
                if (error)
                {
                  v95 = MEMORY[0x1E696ABC0];
                  v96 = *MEMORY[0x1E696A578];
                  if (*error)
                  {
                    v138[0] = *MEMORY[0x1E696A578];
                    v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", context];
                    v138[1] = *MEMORY[0x1E696AA08];
                    v139[0] = v97;
                    v139[1] = *error;
                    v98 = MEMORY[0x1E695DF20];
                    v99 = v139;
                    v100 = v138;
                    v101 = 2;
                  }

                  else
                  {
                    v136 = *MEMORY[0x1E696A578];
                    v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", context];
                    v137 = v97;
                    v98 = MEMORY[0x1E695DF20];
                    v99 = &v137;
                    v100 = &v136;
                    v101 = 1;
                  }

                  v105 = [v98 dictionaryWithObjects:v99 forKeys:v100 count:v101];
                  *error = [v95 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v105];

                  managerCopy = v108;
                }

                v106 = UAFGetLogCategory(&UAFLogContextConfiguration);
                v20 = v115;
                if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v142 = "+[UAFUsageAliasConfiguration isValid:assetSetManager:error:]";
                  v143 = 2112;
                  v144 = context;
                  _os_log_impl(&dword_1BCF2C000, v106, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
                }

                v28 = obj;
LABEL_56:

                v11 = v116;
                goto LABEL_57;
              }
            }

            v23 = v113 + 1;
            v22 = v109;
            v20 = v115;
            v11 = v116;
          }

          while (v113 + 1 != v110);
          v21 = [v115 countByEnumeratingWithState:&v128 objects:v160 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v14 = v114 + 1;
      v13 = v111;
    }

    while (v114 + 1 != v112);
    v12 = [v11 countByEnumeratingWithState:&v132 objects:v169 count:16];
    LOBYTE(v10) = 1;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_58:

LABEL_59:
  v60 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)fromContentsOfURL:(id)l assetSetManager:(id)manager error:(id *)error
{
  v49[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  managerCopy = manager;
  if (error)
  {
    *error = 0;
  }

  v35 = 0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy error:&v35];
  v10 = v35;
  v11 = v10;
  if (error)
  {
    v12 = v10;
    *error = v11;
    if (v9)
    {
      if (![UAFUsageAliasConfiguration isValid:v9 assetSetManager:managerCopy error:error])
      {
        v13 = MEMORY[0x1E696ABC0];
        v14 = *MEMORY[0x1E696A578];
        if (*error)
        {
          v38[0] = *MEMORY[0x1E696A578];
          lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to validate UAFUsageAliasConfiguration dictionary from %@", lCopy];
          v38[1] = *MEMORY[0x1E696AA08];
          v39[0] = lCopy;
          v39[1] = *error;
          v16 = MEMORY[0x1E695DF20];
          v17 = v39;
          v18 = v38;
          v19 = 2;
        }

        else
        {
          v36 = *MEMORY[0x1E696A578];
          lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to validate UAFUsageAliasConfiguration dictionary from %@", lCopy];
          v37 = lCopy;
          v16 = MEMORY[0x1E695DF20];
          v17 = &v37;
          v18 = &v36;
          v19 = 1;
        }

        v32 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
        *error = [v13 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v32];

        goto LABEL_19;
      }

      goto LABEL_10;
    }

    v21 = MEMORY[0x1E696ABC0];
    if (v11)
    {
      v48[0] = *MEMORY[0x1E696A578];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load UAFUsageAliasConfiguration dictionary from %@: %@", lCopy, v11];
      v48[1] = *MEMORY[0x1E696AA08];
      v49[0] = v22;
      v49[1] = *error;
      v23 = MEMORY[0x1E695DF20];
      v24 = v49;
      v25 = v48;
      v26 = 2;
    }

    else
    {
      v46 = *MEMORY[0x1E696A578];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load UAFUsageAliasConfiguration dictionary from %@: %@", lCopy, 0];
      v47 = v22;
      v23 = MEMORY[0x1E695DF20];
      v24 = &v47;
      v25 = &v46;
      v26 = 1;
    }

    v27 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
    *error = [v21 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v27];
  }

  else if (v9)
  {
    if (![UAFUsageAliasConfiguration isValid:v9 assetSetManager:managerCopy error:0])
    {
LABEL_19:
      v28 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 136315394;
      v41 = "+[UAFUsageAliasConfiguration fromContentsOfURL:assetSetManager:error:]";
      v42 = 2112;
      v43 = lCopy;
      v29 = "%s Failed to validate UAFUsageAliasConfiguration dictionary from %@";
      v30 = v28;
      v31 = 22;
LABEL_25:
      _os_log_error_impl(&dword_1BCF2C000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);
      goto LABEL_20;
    }

LABEL_10:
    v20 = [[UAFUsageAliasConfiguration alloc] initWithDictionary:v9 assetSetManager:managerCopy];
    goto LABEL_21;
  }

  v28 = UAFGetLogCategory(&UAFLogContextConfiguration);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v41 = "+[UAFUsageAliasConfiguration fromContentsOfURL:assetSetManager:error:]";
    v42 = 2112;
    v43 = lCopy;
    v44 = 2112;
    v45 = v11;
    v29 = "%s Failed to load UAFUsageAliasConfiguration dictionary from %@: %@";
    v30 = v28;
    v31 = 32;
    goto LABEL_25;
  }

LABEL_20:

  v20 = 0;
LABEL_21:

  v33 = *MEMORY[0x1E69E9840];

  return v20;
}

- (UAFUsageAliasConfiguration)initWithDictionary:(id)dictionary assetSetManager:(id)manager
{
  dictionaryCopy = dictionary;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = UAFUsageAliasConfiguration;
  v8 = [(UAFUsageAliasConfiguration *)&v15 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"UsageAliasName"];
    name = v8->_name;
    v8->_name = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"UsageAliasValues"];
    values = v8->_values;
    v8->_values = v11;

    objc_storeStrong(&v8->_assetSetManager, manager);
    v13 = v8;
  }

  return v8;
}

- (id)getAssetSetAssets:(id)assets usageValue:(id)value withSource:(id)source
{
  v39 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  valueCopy = value;
  sourceCopy = source;
  values = [(UAFUsageAliasConfiguration *)self values];
  v12 = [values objectForKey:valueCopy];

  if (!v12)
  {
    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      name = [(UAFUsageAliasConfiguration *)self name];
      v29 = 136315906;
      v30 = "[UAFUsageAliasConfiguration getAssetSetAssets:usageValue:withSource:]";
      v31 = 2112;
      v32 = sourceCopy;
      v33 = 2112;
      v34 = valueCopy;
      v35 = 2112;
      v36 = name;
      v21 = "%s Can't get %@ assets: Unknown usage value %@ in usage alias %@";
      v22 = v15;
      v23 = 42;
LABEL_10:
      _os_log_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_DEFAULT, v21, &v29, v23);
LABEL_11:
    }

LABEL_15:
    v26 = 0;
    goto LABEL_16;
  }

  assetSetManager = [(UAFUsageAliasConfiguration *)self assetSetManager];

  if (!assetSetManager)
  {
    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      name = [(UAFUsageAliasConfiguration *)self name];
      v29 = 136315650;
      v30 = "[UAFUsageAliasConfiguration getAssetSetAssets:usageValue:withSource:]";
      v31 = 2112;
      v32 = sourceCopy;
      v33 = 2112;
      v34 = name;
      v21 = "%s Can't get %@ assets: No asset manager present usage alias %@";
      v22 = v15;
      v23 = 32;
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  assetSetManager2 = [(UAFUsageAliasConfiguration *)self assetSetManager];
  v15 = [assetSetManager2 getAssetSet:assetsCopy];

  if (!v15)
  {
    v24 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(UAFUsageAliasConfiguration *)self name];
      v29 = 136316162;
      v30 = "[UAFUsageAliasConfiguration getAssetSetAssets:usageValue:withSource:]";
      v31 = 2112;
      v32 = sourceCopy;
      v33 = 2112;
      v34 = valueCopy;
      v35 = 2112;
      v36 = name2;
      v37 = 2112;
      v38 = assetsCopy;
      _os_log_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_DEFAULT, "%s Can't get %@ assets for usage value %@ in usage alias %@: Unable to get asset config for asset set %@", &v29, 0x34u);
    }

    v15 = 0;
    goto LABEL_15;
  }

  if (![sourceCopy isEqualToString:@"AutoAsset"])
  {
    if ([sourceCopy isEqualToString:@"All"])
    {
      values2 = [(UAFUsageAliasConfiguration *)self values];
      v17 = [values2 objectForKeyedSubscript:valueCopy];
      v18 = [v17 objectForKeyedSubscript:assetsCopy];
      v19 = [v15 getAssets:v18];
      goto LABEL_21;
    }

    name = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315650;
      v30 = "[UAFUsageAliasConfiguration getAssetSetAssets:usageValue:withSource:]";
      v31 = 2112;
      v32 = sourceCopy;
      v33 = 2112;
      v34 = assetsCopy;
      _os_log_error_impl(&dword_1BCF2C000, name, OS_LOG_TYPE_ERROR, "%s Unknown asset source %@ for %@", &v29, 0x20u);
    }

    goto LABEL_11;
  }

  values2 = [(UAFUsageAliasConfiguration *)self values];
  v17 = [values2 objectForKeyedSubscript:valueCopy];
  v18 = [v17 objectForKeyedSubscript:assetsCopy];
  v19 = [v15 getAutoAssets:v18];
LABEL_21:
  v26 = v19;

LABEL_16:
  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)getAssets:(id)assets withSource:(id)source
{
  v36 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  selfCopy = self;
  sourceCopy = source;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  values = [(UAFUsageAliasConfiguration *)self values];
  v25 = assetsCopy;
  v8 = [values objectForKeyedSubscript:assetsCopy];

  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v22 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(UAFUsageAliasConfiguration *)selfCopy getAssetSetAssets:*(*(&v30 + 1) + 8 * i) usageValue:v25 withSource:sourceCopy];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v27;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v27 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v26 + 1) + 8 * j);
              if (!v11)
              {
                v11 = objc_opt_new();
              }

              v19 = [v13 objectForKeyedSubscript:v18];
              [v11 setObject:v19 forKeyedSubscript:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v15);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)addDeprecatedValues:(id)values
{
  v35 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  name = self->_name;
  name = [valuesCopy name];
  LOBYTE(name) = [(NSString *)name isEqualToString:name];

  if (name)
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_values];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    values = [valuesCopy values];
    v9 = [values countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(values);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [(NSDictionary *)self->_values objectForKeyedSubscript:v13];

          if (v14)
          {
            v19 = UAFGetLogCategory(&UAFLogContextConfiguration);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v30 = "[UAFUsageAliasConfiguration addDeprecatedValues:]";
              v31 = 2114;
              v32 = v13;
              _os_log_error_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_ERROR, "%s Deprecated value %{public}@ already defined", buf, 0x16u);
            }

            v18 = 0;
            goto LABEL_17;
          }

          values = [valuesCopy values];
          v16 = [values objectForKeyedSubscript:v13];
          [v7 setObject:v16 forKeyedSubscript:v13];
        }

        v10 = [values countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v17 = v7;
    values = self->_values;
    self->_values = v17;
    v18 = 1;
LABEL_17:
  }

  else
  {
    v7 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      name2 = [valuesCopy name];
      v23 = self->_name;
      *buf = 136315650;
      v30 = "[UAFUsageAliasConfiguration addDeprecatedValues:]";
      v31 = 2114;
      v32 = name2;
      v33 = 2114;
      v34 = v23;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Cannot add deprecated values from %{public}@ to %{public}@", buf, 0x20u);
    }

    v18 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

@end