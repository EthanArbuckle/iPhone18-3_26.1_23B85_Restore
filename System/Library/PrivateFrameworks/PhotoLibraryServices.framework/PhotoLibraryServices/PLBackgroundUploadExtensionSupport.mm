@interface PLBackgroundUploadExtensionSupport
+ (BOOL)_containsValidExtensionForApplicationRecord:(id)record extensionPointLabel:(id)label;
+ (BOOL)_containsValidExtensionFromExtensionRecord:(id)record extensionPointLabel:(id)label;
+ (BOOL)_validInfoDictionaryFromExtensionRecord:(id)record extensionPointLabel:(id)label;
+ (id)_baseURLFromExtensionRecord:(id)record;
+ (int64_t)containsValidExtensionFromAuditToken:(id *)token extensionPointLabel:(id)label;
- (id)_validatedBundleIdentifierWithClientAuthorization:(id)authorization;
- (id)backgroundUploadJobConfigurationPredicateWithClientAuthorization:(id)authorization;
- (id)backgroundUploadJobPredicateWithClientAuthorization:(id)authorization managedObjectContext:(id)context;
@end

@implementation PLBackgroundUploadExtensionSupport

+ (id)_baseURLFromExtensionRecord:(id)record
{
  v15 = *MEMORY[0x1E69E9840];
  infoDictionary = [record infoDictionary];
  v4 = [infoDictionary objectForKey:@"BackgroundUploadURLBase" ofClass:objc_opt_class()];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v4];
    v6 = v5;
    if (v5)
    {
      scheme = [v5 scheme];
      if (scheme)
      {
        v8 = scheme;
        host = [v6 host];

        if (host)
        {
          v6 = v6;
          v10 = v6;
          goto LABEL_12;
        }
      }
    }

    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Background upload extension specified an invalid mandatory base URL: %@", &v13, 0xCu);
    }
  }

  else
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = @"BackgroundUploadURLBase";
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Background upload extension is missing missing a mandatory value for the %@ in its Info.plist", &v13, 0xCu);
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

+ (BOOL)_validInfoDictionaryFromExtensionRecord:(id)record extensionPointLabel:(id)label
{
  recordCopy = record;
  if ([label isEqualToString:@"com.apple.photos.background-upload"])
  {
    v7 = [self _baseURLFromExtensionRecord:recordCopy];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)_containsValidExtensionForApplicationRecord:(id)record extensionPointLabel:(id)label
{
  v20 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  if (record)
  {
    [record applicationExtensionRecords];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([self _containsValidExtensionFromExtensionRecord:*(*(&v14 + 1) + 8 * i) extensionPointLabel:{labelCopy, v14}])
          {
            v12 = 1;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_12:
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "client is not a bundle", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

+ (BOOL)_containsValidExtensionFromExtensionRecord:(id)record extensionPointLabel:(id)label
{
  recordCopy = record;
  labelCopy = label;
  if (!recordCopy)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "client does not have an extension record", buf, 2u);
    }

    v12 = 0;
    goto LABEL_17;
  }

  if ([self _validInfoDictionaryFromExtensionRecord:recordCopy extensionPointLabel:labelCopy])
  {
    extensionPointRecord = [recordCopy extensionPointRecord];
    v9 = extensionPointRecord;
    if (extensionPointRecord)
    {
      identifier = [extensionPointRecord identifier];
      if (identifier)
      {
        v11 = identifier;
        v12 = [identifier isEqualToString:labelCopy];
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "extension point identifier is unexpectedly nil", v15, 2u);
      }

      v11 = 0;
    }

    else
    {
      v11 = PLBackendGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "extension point record is unexpectedly nil", v16, 2u);
      }
    }

    v12 = 0;
    goto LABEL_16;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

+ (int64_t)containsValidExtensionFromAuditToken:(id *)token extensionPointLabel:(id)label
{
  v20 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  v17 = 0;
  v7 = *&token->var0[4];
  *buf = *token->var0;
  v19 = v7;
  v8 = [MEMORY[0x1E6963620] bundleRecordForAuditToken:buf error:&v17];
  v9 = v17;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v10 = v8;
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = [self _containsValidExtensionForApplicationRecord:v12 extensionPointLabel:labelCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = 0;
        goto LABEL_18;
      }

      objc_opt_class();
      v14 = v8;
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v12 = v15;

      if ([self _containsValidExtensionFromExtensionRecord:v12 extensionPointLabel:labelCopy])
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Client is not a bundled executable: %@", buf, 0xCu);
    }

    v13 = 0;
  }

LABEL_18:
  return v13;
}

- (id)_validatedBundleIdentifierWithClientAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  if ([authorizationCopy isBackgroundResourceUploadExtensionClient])
  {
    fetchFilterIdentifier = [authorizationCopy fetchFilterIdentifier];
  }

  else
  {
    fetchFilterIdentifier = 0;
  }

  return fetchFilterIdentifier;
}

- (id)backgroundUploadJobPredicateWithClientAuthorization:(id)authorization managedObjectContext:(id)context
{
  v5 = MEMORY[0x1E696AE18];
  authorizationCopy = authorization;
  v7 = [v5 predicateWithValue:0];
  v8 = [(PLBackgroundUploadExtensionSupport *)self _validatedBundleIdentifierWithClientAuthorization:authorizationCopy];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"configuration.bundleIdentifier", v8];

    v7 = v9;
  }

  return v7;
}

- (id)backgroundUploadJobConfigurationPredicateWithClientAuthorization:(id)authorization
{
  v4 = MEMORY[0x1E696AE18];
  authorizationCopy = authorization;
  v6 = [v4 predicateWithValue:0];
  v7 = [(PLBackgroundUploadExtensionSupport *)self _validatedBundleIdentifierWithClientAuthorization:authorizationCopy];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"bundleIdentifier", v7];

    v6 = v8;
  }

  return v6;
}

@end