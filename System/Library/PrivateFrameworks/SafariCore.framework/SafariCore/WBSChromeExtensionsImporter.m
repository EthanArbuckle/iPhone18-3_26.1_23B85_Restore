@interface WBSChromeExtensionsImporter
- (BOOL)_checkNotAtRootLevel;
- (BOOL)_isParsingExtension;
- (BOOL)_isParsingExtensionsArray;
- (BOOL)_openBrowserExtensionMappingJSONFile;
- (BOOL)jsonReader:(id)a3 scalarValue:(id)a4;
- (BOOL)jsonReaderBeginArray:(id)a3;
- (BOOL)jsonReaderBeginObject:(id)a3;
- (BOOL)jsonReaderEndArray:(id)a3;
- (BOOL)jsonReaderEndObject:(id)a3;
- (WBSChromeExtensionsImporter)init;
- (WBSExtensionsImporterDelegate)delegate;
- (id)_popKeyFromStackIfPossible;
- (void)_openBrowserExtensionMappingJSONFile;
- (void)parseFileHandle:(id)a3 completionHandler:(id)a4;
- (void)parseURL:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSChromeExtensionsImporter

- (WBSChromeExtensionsImporter)init
{
  v7.receiver = self;
  v7.super_class = WBSChromeExtensionsImporter;
  v2 = [(WBSChromeExtensionsImporter *)&v7 init];
  if (v2 && ([MEMORY[0x1E695DF90] dictionary], v3 = objc_claimAutoreleasedReturnValue(), browserExtensionMapping = v2->_browserExtensionMapping, v2->_browserExtensionMapping = v3, browserExtensionMapping, -[WBSChromeExtensionsImporter _openBrowserExtensionMappingJSONFile](v2, "_openBrowserExtensionMappingJSONFile")))
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_openBrowserExtensionMappingJSONFile
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"cross-browser-extension-mapping" withExtension:@"json"];

  if (v4)
  {
    v36 = 0;
    v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4 options:0 error:&v36];
    v6 = v36;
    if (!v5)
    {
      v22 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(WBSChromeExtensionsImporter *)v22 _openBrowserExtensionMappingJSONFile];
      }

      v21 = 0;
      v8 = v6;
      goto LABEL_26;
    }

    v35 = v6;
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v35];
    v8 = v35;

    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v8;
        v29 = v5;
        v30 = v4;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v27 = v7;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v32;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v32 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v31 + 1) + 8 * i);
              v15 = [v14 objectForKeyedSubscript:{@"safari_ios", v27, v28, v29, v30, v31}];
              if (v15)
              {
                v16 = v15;
                v17 = [v14 objectForKeyedSubscript:@"chrome"];

                if (v17)
                {
                  browserExtensionMapping = self->_browserExtensionMapping;
                  v19 = [v14 objectForKeyedSubscript:@"safari_ios"];
                  v20 = [v14 objectForKeyedSubscript:@"chrome"];
                  [(NSMutableDictionary *)browserExtensionMapping setObject:v19 forKey:v20];
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
          }

          while (v11);
        }

        v21 = 1;
        v5 = v29;
        v4 = v30;
        v7 = v27;
        v8 = v28;
        goto LABEL_25;
      }

      v24 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(WBSChromeExtensionsImporter *)v24 _openBrowserExtensionMappingJSONFile];
      }
    }

    else
    {
      v23 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(WBSChromeExtensionsImporter *)v23 _openBrowserExtensionMappingJSONFile];
      }
    }

    v21 = 0;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v21 = 0;
LABEL_27:

  v25 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)parseURL:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x1E696AC00];
  v11 = 0;
  v7 = a4;
  v8 = [v6 safari_fileHandleWithURL:a3 options:0 createMode:0 error:&v11];
  v9 = v11;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    v7[2](v7, v9);
  }

  else
  {
    [(WBSChromeExtensionsImporter *)self parseFileHandle:v8 completionHandler:v7];
  }
}

- (void)parseFileHandle:(id)a3 completionHandler:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(WBSJSONReader);
  [(WBSJSONReader *)v8 setDelegate:self];
  lastError = self->_lastError;
  self->_lastError = 0;

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  stack = self->_stack;
  self->_stack = v10;

  v19 = 0;
  [(WBSJSONReader *)v8 parseFileHandle:v7 error:&v19];

  v12 = v19;
  if (v12)
  {
    v6[2](v6, v12);
  }

  else
  {
    v13 = self->_lastError;
    if (!self->_foundExtensionsArray && !v13)
    {
      v14 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v21[0] = @"Could not find extensions array in JSON file";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v16 = [v14 errorWithDomain:@"com.apple.SafariShared.WBSChromeExtensionsImporterErrorDomain" code:2 userInfo:v15];
      v17 = self->_lastError;
      self->_lastError = v16;

      v13 = self->_lastError;
    }

    v6[2](v6, v13);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)_checkNotAtRootLevel
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_stack count];
  if (!v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Root node is expected to be a dictionary";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [v4 errorWithDomain:@"com.apple.SafariShared.WBSChromeExtensionsImporterErrorDomain" code:1 userInfo:v5];
    lastError = self->_lastError;
    self->_lastError = v6;
  }

  result = v3 != 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_isParsingExtensionsArray
{
  v6[3] = *MEMORY[0x1E69E9840];
  stack = self->_stack;
  v6[0] = &unk_1F308E258;
  v6[1] = @"Extensions";
  v6[2] = &unk_1F308E270;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  LOBYTE(stack) = [(NSMutableArray *)stack isEqual:v3];

  v4 = *MEMORY[0x1E69E9840];
  return stack;
}

- (BOOL)_isParsingExtension
{
  v6[4] = *MEMORY[0x1E69E9840];
  stack = self->_stack;
  v6[0] = &unk_1F308E258;
  v6[1] = @"Extensions";
  v6[2] = &unk_1F308E270;
  v6[3] = &unk_1F308E258;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  LOBYTE(stack) = [(NSMutableArray *)stack isEqual:v3];

  v4 = *MEMORY[0x1E69E9840];
  return stack;
}

- (id)_popKeyFromStackIfPossible
{
  v3 = [(NSMutableArray *)self->_stack lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(NSMutableArray *)self->_stack lastObject];
    [(NSMutableArray *)self->_stack removeLastObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)jsonReader:(id)a3 scalarValue:(id)a4
{
  v6 = a4;
  v7 = [(WBSChromeExtensionsImporter *)self _checkNotAtRootLevel];
  if (v7)
  {
    v8 = [(WBSChromeExtensionsImporter *)self _popKeyFromStackIfPossible];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 isEqualToString:@"id"])
    {
      objc_storeStrong(&self->_chromeExtensionIdentifier, a4);
    }
  }

  return v7;
}

- (BOOL)jsonReaderBeginObject:(id)a3
{
  [(NSMutableArray *)self->_stack addObject:&unk_1F308E258];
  if ([(WBSChromeExtensionsImporter *)self _isParsingExtension])
  {
    chromeExtensionIdentifier = self->_chromeExtensionIdentifier;
    self->_chromeExtensionIdentifier = 0;
  }

  return 1;
}

- (BOOL)jsonReaderEndObject:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_browserExtensionMapping objectForKeyedSubscript:self->_chromeExtensionIdentifier];
  if ([(WBSChromeExtensionsImporter *)self _isParsingExtension]&& v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [v4 objectForKeyedSubscript:@"store_identifier"];
    v7 = [v4 objectForKeyedSubscript:@"extension_identifiers"];

    if (v7)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [v4 objectForKeyedSubscript:{@"extension_identifiers", 0}];
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          v12 = 0;
          do
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [WeakRetained enableExtensionWithComposedIdentifier:*(*(&v16 + 1) + 8 * v12++) adamIdentifier:v6 alternatePlatformAppBundleIdentifier:0 alternatePlatformExtensionBundleIdentifier:0];
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }

    else
    {
      [WeakRetained enableExtensionWithComposedIdentifier:0 adamIdentifier:v6 alternatePlatformAppBundleIdentifier:0 alternatePlatformExtensionBundleIdentifier:0];
    }
  }

  [(NSMutableArray *)self->_stack removeLastObject];
  v13 = [(WBSChromeExtensionsImporter *)self _popKeyFromStackIfPossible];

  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)jsonReaderBeginArray:(id)a3
{
  v4 = [(WBSChromeExtensionsImporter *)self _checkNotAtRootLevel];
  if (v4)
  {
    [(NSMutableArray *)self->_stack addObject:&unk_1F308E270];
    if ([(WBSChromeExtensionsImporter *)self _isParsingExtensionsArray])
    {
      self->_foundExtensionsArray = 1;
    }
  }

  return v4;
}

- (BOOL)jsonReaderEndArray:(id)a3
{
  [(NSMutableArray *)self->_stack removeLastObject];
  v4 = [(WBSChromeExtensionsImporter *)self _popKeyFromStackIfPossible];
  return 1;
}

- (WBSExtensionsImporterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_openBrowserExtensionMappingJSONFile
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "The browser extension mapping JSON file could not be opened: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

@end