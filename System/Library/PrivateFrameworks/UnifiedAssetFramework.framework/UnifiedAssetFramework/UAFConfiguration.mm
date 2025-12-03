@interface UAFConfiguration
+ (BOOL)isValid:(id)valid fileType:(id)type fileVersions:(id)versions error:(id *)error;
+ (BOOL)isValidValue:(id)value key:(id)key kind:(Class)kind required:(BOOL)required error:(id *)error;
@end

@implementation UAFConfiguration

+ (BOOL)isValidValue:(id)value key:(id)key kind:(Class)kind required:(BOOL)required error:(id *)error
{
  requiredCopy = required;
  v58[2] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  if (requiredCopy)
  {
    v13 = [valueCopy objectForKeyedSubscript:keyCopy];

    if (!v13)
    {
      if (error)
      {
        v27 = MEMORY[0x1E696ABC0];
        if (*error)
        {
          v57[0] = *MEMORY[0x1E696A578];
          keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Required key %@ has no value", keyCopy];
          v57[1] = *MEMORY[0x1E696AA08];
          v58[0] = keyCopy;
          v58[1] = *error;
          v29 = MEMORY[0x1E695DF20];
          v30 = v58;
          v31 = v57;
          v32 = 2;
        }

        else
        {
          v55 = *MEMORY[0x1E696A578];
          keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Required key %@ has no value", keyCopy];
          v56 = keyCopy;
          v29 = MEMORY[0x1E695DF20];
          v30 = &v56;
          v31 = &v55;
          v32 = 1;
        }

        v38 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:v32];
        *error = [v27 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v38];
      }

      v35 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v42 = "+[UAFConfiguration isValidValue:key:kind:required:error:]";
        v43 = 2112;
        v44 = keyCopy;
        _os_log_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_DEFAULT, "%s Required key %@ has no value", buf, 0x16u);
      }

      goto LABEL_20;
    }
  }

  v14 = [valueCopy objectForKeyedSubscript:keyCopy];

  if (v14)
  {
    v15 = [valueCopy objectForKeyedSubscript:keyCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      if (error)
      {
        v18 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A578];
        if (*error)
        {
          v53[0] = *MEMORY[0x1E696A578];
          v20 = MEMORY[0x1E696AEC0];
          v21 = [valueCopy objectForKeyedSubscript:keyCopy];
          v22 = [v20 stringWithFormat:@"Key %@ is not expected kind %@: %@ vs %@", keyCopy, kind, v21, objc_opt_class()];
          v53[1] = *MEMORY[0x1E696AA08];
          v54[0] = v22;
          v54[1] = *error;
          v23 = MEMORY[0x1E695DF20];
          v24 = v54;
          v25 = v53;
          v26 = 2;
        }

        else
        {
          v51 = *MEMORY[0x1E696A578];
          v33 = MEMORY[0x1E696AEC0];
          v21 = [valueCopy objectForKeyedSubscript:keyCopy];
          v22 = [v33 stringWithFormat:@"Key %@ is not expected kind %@: %@ vs %@", keyCopy, kind, v21, objc_opt_class()];
          v52 = v22;
          v23 = MEMORY[0x1E695DF20];
          v24 = &v52;
          v25 = &v51;
          v26 = 1;
        }

        v34 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
        *error = [v18 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v34];
      }

      v35 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [valueCopy objectForKeyedSubscript:keyCopy];
        *buf = 136316162;
        v42 = "+[UAFConfiguration isValidValue:key:kind:required:error:]";
        v43 = 2112;
        v44 = keyCopy;
        v45 = 2112;
        kindCopy = kind;
        v47 = 2112;
        v48 = v36;
        v49 = 2112;
        v50 = objc_opt_class();
        v37 = v50;
        _os_log_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_DEFAULT, "%s Key %@ is not expected kind %@: %@ vs %@", buf, 0x34u);
      }

LABEL_20:

      v17 = 0;
      goto LABEL_21;
    }
  }

  v17 = 1;
LABEL_21:

  v39 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)isValid:(id)valid fileType:(id)type fileVersions:(id)versions error:(id *)error
{
  v68[2] = *MEMORY[0x1E69E9840];
  validCopy = valid;
  typeCopy = type;
  versionsCopy = versions;
  v12 = [validCopy objectForKeyedSubscript:@"FileType"];
  v13 = [typeCopy isEqualToString:v12];

  if (v13)
  {
    v14 = [validCopy objectForKeyedSubscript:@"FileVersion"];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = versionsCopy;
    v16 = [v15 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v49;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v49 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if ([*(*(&v48 + 1) + 8 * i) isEqualToString:v14])
          {
            v37 = 1;
            goto LABEL_27;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    if (error)
    {
      v47 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      if (*error)
      {
        v54[0] = *MEMORY[0x1E696A578];
        v21 = MEMORY[0x1E696AEC0];
        v22 = [validCopy objectForKeyedSubscript:@"FileVersion"];
        v23 = [v21 stringWithFormat:@"%@ value %@ is not one of %@", @"FileVersion", v22, v15];
        v54[1] = *MEMORY[0x1E696AA08];
        v55[0] = v23;
        v55[1] = *error;
        v24 = MEMORY[0x1E695DF20];
        v25 = v55;
        v26 = v54;
        v27 = 2;
      }

      else
      {
        v52 = *MEMORY[0x1E696A578];
        v41 = MEMORY[0x1E696AEC0];
        v22 = [validCopy objectForKeyedSubscript:@"FileVersion"];
        v23 = [v41 stringWithFormat:@"%@ value %@ is not one of %@", @"FileVersion", v22, v15];
        v53 = v23;
        v24 = MEMORY[0x1E695DF20];
        v25 = &v53;
        v26 = &v52;
        v27 = 1;
      }

      v42 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:v27];
      *error = [v47 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v42];
    }

    v43 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [validCopy objectForKeyedSubscript:@"FileVersion"];
      *buf = 136315906;
      v58 = "+[UAFConfiguration isValid:fileType:fileVersions:error:]";
      v59 = 2112;
      v60 = @"FileVersion";
      v61 = 2112;
      v62 = v44;
      v63 = 2112;
      v64 = v15;
      _os_log_impl(&dword_1BCF2C000, v43, OS_LOG_TYPE_DEFAULT, "%s %@ value %@ is not one of %@", buf, 0x2Au);
    }

    v37 = 0;
    v15 = v43;
LABEL_27:
  }

  else
  {
    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      if (*error)
      {
        v67[0] = *MEMORY[0x1E696A578];
        v30 = MEMORY[0x1E696AEC0];
        v31 = [validCopy objectForKeyedSubscript:@"FileType"];
        typeCopy = [v30 stringWithFormat:@"%@ value %@ is not %@", @"FileType", v31, typeCopy];
        v67[1] = *MEMORY[0x1E696AA08];
        v68[0] = typeCopy;
        v68[1] = *error;
        v33 = MEMORY[0x1E695DF20];
        v34 = v68;
        v35 = v67;
        v36 = 2;
      }

      else
      {
        v65 = *MEMORY[0x1E696A578];
        v38 = MEMORY[0x1E696AEC0];
        v31 = [validCopy objectForKeyedSubscript:@"FileType"];
        typeCopy = [v38 stringWithFormat:@"%@ value %@ is not %@", @"FileType", v31, typeCopy];
        v66 = typeCopy;
        v33 = MEMORY[0x1E695DF20];
        v34 = &v66;
        v35 = &v65;
        v36 = 1;
      }

      v39 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:v36];
      *error = [v28 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v39];
    }

    v14 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [validCopy objectForKeyedSubscript:@"FileType"];
      *buf = 136315906;
      v58 = "+[UAFConfiguration isValid:fileType:fileVersions:error:]";
      v59 = 2112;
      v60 = @"FileType";
      v61 = 2112;
      v62 = v40;
      v63 = 2112;
      v64 = typeCopy;
      _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s %@ value %@ is not %@", buf, 0x2Au);
    }

    v37 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v37;
}

@end