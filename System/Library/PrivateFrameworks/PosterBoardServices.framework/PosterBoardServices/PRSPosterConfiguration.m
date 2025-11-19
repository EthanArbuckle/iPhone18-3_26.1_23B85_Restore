@interface PRSPosterConfiguration
+ (NSUUID)expectedContainerIdentifier;
+ (id)decodeFromPersistableRepresentation:(id)a3 error:(id *)a4;
+ (id)decodeFromPersistableRepresentation:(id)a3 expectedContainerIdentifier:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPersistable:(id)a3;
- (NSString)description;
- (NSString)descriptorIdentifier;
- (PRSPosterConfiguration)init;
- (PRSPosterConfiguration)initWithBSXPCCoder:(id)a3;
- (PRSPosterConfiguration)initWithCoder:(id)a3;
- (PRSPosterConfiguration)initWithConfigurationAttributes:(id)a3;
- (id)_initWithPath:(id)a3;
- (id)persistableRepresentationWithError:(id *)a3;
- (id)providerBundleIdentifier;
- (id)serverUUID;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation PRSPosterConfiguration

- (void)dealloc
{
  [(BSInvalidatable *)self->_pathValidityExtension invalidate];
  v3.receiver = self;
  v3.super_class = PRSPosterConfiguration;
  [(PRSPosterConfiguration *)&v3 dealloc];
}

- (PRSPosterConfiguration)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@ is not allowed on %@", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    v18 = self;
    v19 = 2114;
    v20 = @"PRSPosterConfiguration.m";
    v21 = 1024;
    v22 = 32;
    v23 = 2114;
    v24 = v8;
    _os_log_error_impl(&dword_1C26FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (PRSPosterConfiguration)initWithConfigurationAttributes:(id)a3
{
  v4 = [a3 path];
  v5 = [(PRSPosterConfiguration *)self _initWithPath:v4];

  return v5;
}

- (NSString)descriptorIdentifier
{
  v2 = [(PFPosterPath *)self->_path serverIdentity];
  v3 = [v2 descriptorIdentifier];

  return v3;
}

- (id)_initWithPath:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(PRSPosterConfiguration *)a2 _initWithPath:?];
  }

  v7 = v6;
  v16.receiver = self;
  v16.super_class = PRSPosterConfiguration;
  v8 = [(PRSPosterConfiguration *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_path, a3);
    path = v9->_path;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [(PFPosterPath *)path extendValidityForReason:v12];
    pathValidityExtension = v9->_pathValidityExtension;
    v9->_pathValidityExtension = v13;
  }

  return v9;
}

- (id)serverUUID
{
  v2 = [(PFPosterPath *)self->_path serverIdentity];
  v3 = [v2 posterUUID];

  return v3;
}

- (id)providerBundleIdentifier
{
  v2 = [(PFPosterPath *)self->_path serverIdentity];
  v3 = [v2 provider];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(PFPosterPath *)self->_path serverIdentity];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hash];
  }

  else
  {
    v6 = [(PFPosterPath *)self->_path contentsURL];
    v5 = [v6 hash];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = [(PFPosterPath *)self->_path serverIdentity];
      if (v7)
      {
        v8 = [(PFPosterPath *)v4->_path serverIdentity];
        v6 = BSEqualObjects();
      }

      else
      {
        v6 = [(PFPosterPath *)self->_path isEqual:v4->_path];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p path=%@>", v5, self, self->_path];

  return v6;
}

- (PRSPosterConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"p"];

  v6 = [(PRSPosterConfiguration *)self _initWithPath:v5];
  return v6;
}

- (PRSPosterConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"p"];

  if (v5)
  {
    self = [(PRSPosterConfiguration *)self _initWithPath:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)persistableRepresentationWithError:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if ([(PFPosterPath *)self->_path isServerPosterPath]&& [(PFPosterPath *)self->_path isPersistable])
  {
    v5 = [(PRSPosterConfiguration *)self bs_secureEncoded];
  }

  else
  {
    if (a3)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v12 = *MEMORY[0x1E696A588];
      v13[0] = @"configuration is not persistable";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      *a3 = [v6 errorWithDomain:v8 code:1 userInfo:v9];
    }

    v5 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)decodeFromPersistableRepresentation:(id)a3 expectedContainerIdentifier:(id)a4 error:(id *)a5
{
  v67[3] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v66[0] = @"PRSPosterPath";
  v8 = a3;
  v67[0] = objc_opt_class();
  v66[1] = @"PRSServerPosterPath";
  v67[1] = objc_opt_class();
  v66[2] = @"PRSServerPosterIdentity";
  v67[2] = objc_opt_class();
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:3];
  v10 = [PRSPosterConfiguration pf_secureDecodedFromData:v8 classReplacementMap:v9];

  if (v10)
  {
    v11 = [v10 _path];
    v12 = [v11 containerURL];
    v13 = [v12 standardizedURL];

    v14 = +[PRSBehaviorAggregator dataStoreContainerDirectoryPath];
    v15 = PRSLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v59 = v13;
      v60 = 2112;
      v61 = v14;
      v62 = 2112;
      v63 = v7;
      _os_log_impl(&dword_1C26FF000, v15, OS_LOG_TYPE_DEFAULT, "[decodeFromPersistableRepresentation] Attempting to fix up path for configuration. Persisted configuration container URL: %@ kContainerDirectory: %@, targetContainerIdentifier: %@>", buf, 0x20u);
    }

    v16 = [v13 path];
    v17 = [v16 rangeOfString:v14];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = PRSLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C26FF000, v19, OS_LOG_TYPE_DEFAULT, "[decodeFromPersistableRepresentation] unable to find container uuid; checking if this is a valid file system location...", buf, 2u);
      }

      if ([v13 checkResourceIsReachableAndReturnError:a5])
      {
        v20 = v10;
      }

      else
      {
        v26 = PRSLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [(PRSPosterConfiguration *)v13 decodeFromPersistableRepresentation:v26 expectedContainerIdentifier:v27 error:v28, v29, v30, v31, v32];
        }

        v20 = 0;
      }
    }

    else
    {
      v23 = v17;
      v24 = v18;
      v25 = [v7 UUIDString];
      if ([v25 length] == 36)
      {
        v57 = [v16 substringWithRange:{v23 + v24, 36}];
        if ([v57 isEqualToString:v25])
        {
          v20 = v10;
        }

        else
        {
          v34 = [v16 mutableCopy];
          [v34 replaceCharactersInRange:v23 + v24 withString:{36, v25}];
          v56 = v34;
          v35 = [MEMORY[0x1E695DFF8] fileURLWithPath:v34 isDirectory:1];
          v36 = PRSLogCommon();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v59 = v57;
            v60 = 2112;
            v61 = v25;
            _os_log_impl(&dword_1C26FF000, v36, OS_LOG_TYPE_DEFAULT, "[decodeFromPersistableRepresentation] Replacing container %@ with %@...", buf, 0x16u);
          }

          if ([v35 checkResourceIsReachableAndReturnError:a5])
          {
            v37 = MEMORY[0x1E69C51E8];
            v38 = [v10 _path];
            v39 = [v38 serverIdentity];
            v40 = [v37 pathWithContainerURL:v35 identity:v39];

            v20 = [[PRSPosterConfiguration alloc] _initWithPath:v40];
          }

          else
          {
            v40 = PRSLogCommon();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              [(PRSPosterConfiguration *)v35 decodeFromPersistableRepresentation:v40 expectedContainerIdentifier:v48 error:v49, v50, v51, v52, v53];
            }

            v20 = 0;
          }
        }
      }

      else
      {
        v33 = PRSLogCommon();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C26FF000, v33, OS_LOG_TYPE_DEFAULT, "[decodeFromPersistableRepresentation] container UUID was wrong length; checking if this configuration's file system URL is reachable...", buf, 2u);
        }

        if ([v13 checkResourceIsReachableAndReturnError:a5])
        {
          v20 = v10;
        }

        else
        {
          v41 = PRSLogCommon();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [(PRSPosterConfiguration *)v13 decodeFromPersistableRepresentation:v41 expectedContainerIdentifier:v42 error:v43, v44, v45, v46, v47];
          }

          v20 = 0;
        }
      }
    }
  }

  else
  {
    if (!a5)
    {
      v20 = 0;
      goto LABEL_37;
    }

    v21 = MEMORY[0x1E696ABC0];
    v22 = objc_opt_class();
    v13 = NSStringFromClass(v22);
    v64 = *MEMORY[0x1E696A588];
    v65 = @"failed to decode configuration from data";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    [v21 errorWithDomain:v13 code:2 userInfo:v14];
    *a5 = v20 = 0;
  }

LABEL_37:
  v54 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)decodeFromPersistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 bundleIdentifier];
  v9 = [v8 isEqualToString:@"com.apple.springboard"];

  if (v9)
  {
    v10 = [a1 expectedContainerIdentifier];
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1 decodeFromPersistableRepresentation:v6 expectedContainerIdentifier:v10 error:a4];

  return v11;
}

+ (NSUUID)expectedContainerIdentifier
{
  if (+[PRSBehaviorAggregator shouldUseSharedDataStore])
  {
    v2 = +[PRSBehaviorAggregator sharedInstance];
    [v2 sharedDirectoryURL];
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:@"com.apple.PosterBoard" allowPlaceholder:0 error:0];
    [v2 dataContainerURL];
  }
  v3 = ;

  v4 = [v3 lastPathComponent];
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];

  return v5;
}

- (BOOL)isEqualToPersistable:(id)a3
{
  v4 = a3;
  if (self->_pathValidityExtension)
  {
LABEL_2:
    v5 = 0;
    goto LABEL_3;
  }

  v7 = [(PFPosterPath *)self->_path isServerPosterPath];
  v5 = 0;
  if (v4 && v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !*(v4 + 1) && [*(v4 + 2) isServerPosterPath])
    {
      v5 = [(PFPosterPath *)self->_path isEqualToPersistable:*(v4 + 2)];
      goto LABEL_3;
    }

    goto LABEL_2;
  }

LABEL_3:

  return v5;
}

- (void)_initWithPath:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"path"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PRSPosterConfiguration.m";
    v16 = 1024;
    v17 = 56;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1C26FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)decodeFromPersistableRepresentation:(uint64_t)a3 expectedContainerIdentifier:(uint64_t)a4 error:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, a2, a3, "[decodeFromPersistableRepresentation] this is not a valid file system location: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)decodeFromPersistableRepresentation:(uint64_t)a3 expectedContainerIdentifier:(uint64_t)a4 error:(uint64_t)a5 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, a2, a3, "[decodeFromPersistableRepresentation] fixedContainerURL is not a valid file system location: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)decodeFromPersistableRepresentation:(uint64_t)a3 expectedContainerIdentifier:(uint64_t)a4 error:(uint64_t)a5 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, a2, a3, "[decodeFromPersistableRepresentation] unable to find container uuid; this is not a valid file system location: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end