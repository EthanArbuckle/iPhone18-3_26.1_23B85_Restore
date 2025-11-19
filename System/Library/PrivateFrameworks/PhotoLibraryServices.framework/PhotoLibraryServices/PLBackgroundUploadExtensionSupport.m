@interface PLBackgroundUploadExtensionSupport
+ (BOOL)_containsValidExtensionForApplicationRecord:(id)a3 extensionPointLabel:(id)a4;
+ (BOOL)_containsValidExtensionFromExtensionRecord:(id)a3 extensionPointLabel:(id)a4;
+ (BOOL)_validInfoDictionaryFromExtensionRecord:(id)a3 extensionPointLabel:(id)a4;
+ (id)_baseURLFromExtensionRecord:(id)a3;
+ (int64_t)containsValidExtensionFromAuditToken:(id *)a3 extensionPointLabel:(id)a4;
- (id)_validatedBundleIdentifierWithClientAuthorization:(id)a3;
- (id)backgroundUploadJobConfigurationPredicateWithClientAuthorization:(id)a3;
- (id)backgroundUploadJobPredicateWithClientAuthorization:(id)a3 managedObjectContext:(id)a4;
@end

@implementation PLBackgroundUploadExtensionSupport

+ (id)_baseURLFromExtensionRecord:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [a3 infoDictionary];
  v4 = [v3 objectForKey:@"BackgroundUploadURLBase" ofClass:objc_opt_class()];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 scheme];
      if (v7)
      {
        v8 = v7;
        v9 = [v6 host];

        if (v9)
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

+ (BOOL)_validInfoDictionaryFromExtensionRecord:(id)a3 extensionPointLabel:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"com.apple.photos.background-upload"])
  {
    v7 = [a1 _baseURLFromExtensionRecord:v6];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)_containsValidExtensionForApplicationRecord:(id)a3 extensionPointLabel:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    [a3 applicationExtensionRecords];
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

          if ([a1 _containsValidExtensionFromExtensionRecord:*(*(&v14 + 1) + 8 * i) extensionPointLabel:{v6, v14}])
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

+ (BOOL)_containsValidExtensionFromExtensionRecord:(id)a3 extensionPointLabel:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
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

  if ([a1 _validInfoDictionaryFromExtensionRecord:v6 extensionPointLabel:v7])
  {
    v8 = [v6 extensionPointRecord];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 identifier];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 isEqualToString:v7];
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

+ (int64_t)containsValidExtensionFromAuditToken:(id *)a3 extensionPointLabel:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v17 = 0;
  v7 = *&a3->var0[4];
  *buf = *a3->var0;
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

      v13 = [a1 _containsValidExtensionForApplicationRecord:v12 extensionPointLabel:v6];
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

      if ([a1 _containsValidExtensionFromExtensionRecord:v12 extensionPointLabel:v6])
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

- (id)_validatedBundleIdentifierWithClientAuthorization:(id)a3
{
  v3 = a3;
  if ([v3 isBackgroundResourceUploadExtensionClient])
  {
    v4 = [v3 fetchFilterIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)backgroundUploadJobPredicateWithClientAuthorization:(id)a3 managedObjectContext:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a3;
  v7 = [v5 predicateWithValue:0];
  v8 = [(PLBackgroundUploadExtensionSupport *)self _validatedBundleIdentifierWithClientAuthorization:v6];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"configuration.bundleIdentifier", v8];

    v7 = v9;
  }

  return v7;
}

- (id)backgroundUploadJobConfigurationPredicateWithClientAuthorization:(id)a3
{
  v4 = MEMORY[0x1E696AE18];
  v5 = a3;
  v6 = [v4 predicateWithValue:0];
  v7 = [(PLBackgroundUploadExtensionSupport *)self _validatedBundleIdentifierWithClientAuthorization:v5];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"bundleIdentifier", v7];

    v6 = v8;
  }

  return v6;
}

@end