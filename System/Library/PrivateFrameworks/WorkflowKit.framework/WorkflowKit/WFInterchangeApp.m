@interface WFInterchangeApp
- (BOOL)isCurrentlyInstalled;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInstalled;
- (BOOL)isRestricted;
- (INAppInfo)appInfo;
- (NSArray)allBundleIdentifiers;
- (NSArray)documentActions;
- (NSArray)documentTypes;
- (NSArray)exportedFileTypes;
- (NSArray)metadata;
- (NSArray)schemes;
- (NSString)bundleIdentifier;
- (NSString)iTunesIdentifier;
- (NSString)iconName;
- (NSString)localizedName;
- (NSString)localizedShortName;
- (WFImage)icon;
- (WFInterchangeApp)initWithIdentifier:(id)a3 definition:(id)a4;
- (id)bundleIdentifiersByIdiom;
- (id)description;
- (id)identifierFromDictionaryForCurrentIdiom:(id)a3;
- (id)localizedNameWithContext:(id)a3;
- (id)schemeNamed:(id)a3;
- (unint64_t)hash;
- (void)openFile:(id)a3 withAnnotation:(id)a4 completionHandler:(id)a5;
- (void)resetInstalledStatus;
- (void)setIcon:(id)a3;
- (void)updateInstalledStatus;
@end

@implementation WFInterchangeApp

- (id)identifierFromDictionaryForCurrentIdiom:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"Phone"];
  v5 = [v3 objectForKey:@"Pad"];

  v6 = [MEMORY[0x1E69E0A90] currentDevice];
  v7 = [v6 idiom];

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 == 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  return v9;
}

- (void)openFile:(id)a3 withAnnotation:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v10 = [DCDocument documentWithURL:a3 annotation:a4];
  v9 = [(WFInterchangeApp *)self bundleIdentifier];
  [v10 openWithAppBundleIdentifier:v9 completionHandler:v8];
}

- (BOOL)isInstalled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(WFInterchangeApp *)self stateAccessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__WFInterchangeApp_isInstalled__block_invoke;
  v5[3] = &unk_1E837F898;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

_BYTE *__31__WFInterchangeApp_isInstalled__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[9] & 1) == 0)
  {
    *(*(a1 + 32) + 8) = [result isCurrentlyInstalled];
    *(*(a1 + 32) + 9) = 1;
    result = *(a1 + 32);
  }

  *(*(*(a1 + 40) + 8) + 24) = result[8];
  return result;
}

- (void)updateInstalledStatus
{
  v3 = [(WFInterchangeApp *)self stateAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__WFInterchangeApp_updateInstalledStatus__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __41__WFInterchangeApp_updateInstalledStatus__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCurrentlyInstalled];
  *(*(a1 + 32) + 8) = result;
  *(*(a1 + 32) + 9) = 1;
  return result;
}

- (void)resetInstalledStatus
{
  v3 = [(WFInterchangeApp *)self stateAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__WFInterchangeApp_resetInstalledStatus__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)isCurrentlyInstalled
{
  v2 = MEMORY[0x1E69635E0];
  v3 = [(WFInterchangeApp *)self bundleIdentifier];
  v4 = [v2 applicationProxyForIdentifier:v3];
  v5 = [v4 appState];
  v6 = [v5 isInstalled];

  return v6;
}

- (INAppInfo)appInfo
{
  v22 = *MEMORY[0x1E69E9840];
  appInfo = self->_appInfo;
  if (appInfo)
  {
    goto LABEL_2;
  }

  v5 = objc_alloc(MEMORY[0x1E69635F8]);
  v6 = [(WFInterchangeApp *)self bundleIdentifier];
  v15 = 0;
  v7 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v15];
  v8 = v15;

  if (!v8)
  {
    v13 = [MEMORY[0x1E696E728] appInfoWithApplicationRecord:v7];
    v14 = self->_appInfo;
    self->_appInfo = v13;

    appInfo = self->_appInfo;
LABEL_2:
    v3 = appInfo;
    goto LABEL_7;
  }

  v9 = getWFInterchangeLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [(WFInterchangeApp *)self bundleIdentifier];
    *buf = 136315650;
    v17 = "[WFInterchangeApp appInfo]";
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Unable to get app record for %{public}@, %{public}@", buf, 0x20u);
  }

  v3 = 0;
LABEL_7:
  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isRestricted
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [(WFInterchangeApp *)self bundleIdentifier];
  v12 = 0;
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v12];
  v6 = v12;

  if (v6)
  {
    v7 = getWFInterchangeLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(WFInterchangeApp *)self bundleIdentifier];
      *buf = 136315650;
      v14 = "[WFInterchangeApp isRestricted]";
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Unable to get app record for %{public}@, %{public}@", buf, 0x20u);
    }

    v9 = 0;
  }

  else
  {
    v7 = [v5 applicationState];
    v9 = [v7 isRestricted];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (NSString)iconName
{
  v2 = [(WFInterchangeApp *)self definition];
  v3 = [v2 objectForKey:@"Icon"];

  return v3;
}

- (NSArray)metadata
{
  v2 = [(WFInterchangeApp *)self definition];
  v3 = [v2 objectForKey:@"Metadata"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (NSArray)documentActions
{
  v3 = [(WFInterchangeApp *)self definition];
  v4 = [v3 objectForKey:@"DocumentActions"];

  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__WFInterchangeApp_documentActions__block_invoke;
    v7[3] = &unk_1E8379580;
    v7[4] = self;
    v5 = [v4 if_compactMap:v7];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

id __35__WFInterchangeApp_documentActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"ActionClass"];
  v5 = NSClassFromString(v4);
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  v6 = [[v5 alloc] initWithDefinition:v3 app:*(a1 + 32)];

  return v6;
}

- (NSArray)documentTypes
{
  v2 = [(WFInterchangeApp *)self definition];
  v3 = [v2 objectForKey:@"DocumentTypes"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.maps.directionsrequest", @"com.appcubby.launchpro.lcpbackup", 0}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__WFInterchangeApp_documentTypes__block_invoke;
    v8[3] = &unk_1E8376E20;
    v9 = v4;
    v5 = v4;
    v6 = [v3 if_compactMap:v8];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

id __33__WFInterchangeApp_documentTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E69E0AF8] typeWithString:v3];
  }

  return v4;
}

- (NSArray)exportedFileTypes
{
  v2 = MEMORY[0x1E69E0AF8];
  v3 = [(WFInterchangeApp *)self definition];
  v4 = [v3 objectForKey:@"ExportedTypes"];
  v5 = [v2 typesFromStrings:v4];

  return v5;
}

- (id)schemeNamed:(id)a3
{
  v4 = a3;
  v5 = [(WFInterchangeApp *)self schemes];
  v6 = [v5 objectMatchingKey:@"scheme" value:v4];

  return v6;
}

- (NSArray)schemes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10748;
  v11 = __Block_byref_object_dispose__10749;
  v12 = 0;
  v3 = [(WFInterchangeApp *)self stateAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__WFInterchangeApp_schemes__block_invoke;
  v6[3] = &unk_1E837F898;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __27__WFInterchangeApp_schemes__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = [*(a1 + 32) definition];
    v5 = [v4 objectForKey:@"URLSchemes"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = v5;
      v7 = [(WFInterchangeScheme *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v18 + 1) + 8 * i);
            v12 = [WFInterchangeScheme alloc];
            v13 = [(WFInterchangeScheme *)v12 initWithDefinition:v11 app:*(a1 + 32), v18];
            [v3 addObject:v13];
          }

          v8 = [(WFInterchangeScheme *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_15:
        v14 = [v3 copy];
        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        objc_storeStrong((*(a1 + 32) + 16), v14);
        goto LABEL_16;
      }

      v6 = [[WFInterchangeScheme alloc] initWithDefinition:v5 app:*(a1 + 32)];
      [v3 addObject:v6];
    }

    goto LABEL_15;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
LABEL_16:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)setIcon:(id)a3
{
  v4 = a3;
  v5 = [(WFInterchangeApp *)self stateAccessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__WFInterchangeApp_setIcon___block_invoke;
  v7[3] = &unk_1E837F870;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (WFImage)icon
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10748;
  v11 = __Block_byref_object_dispose__10749;
  v12 = 0;
  v3 = [(WFInterchangeApp *)self stateAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__WFInterchangeApp_icon__block_invoke;
  v6[3] = &unk_1E837F898;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __24__WFInterchangeApp_icon__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = v3;
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;
  }

  else
  {
    v7 = MEMORY[0x1E69E0B58];
    v8 = [v2 bundleIdentifier];
    v9 = [v7 applicationIconImageForBundleIdentifier:v8];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v12 = [*(a1 + 32) iconName];

      if (v12)
      {
        v13 = MEMORY[0x1E69E0B58];
        v14 = [*(a1 + 32) iconName];
        v15 = [v13 workflowKitImageNamed:v14];
        v16 = *(*(a1 + 40) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;
      }
    }

    v18 = [*(*(*(a1 + 40) + 8) + 40) copy];
    v19 = *(a1 + 32);
    v6 = *(v19 + 24);
    *(v19 + 24) = v18;
  }
}

- (NSString)iTunesIdentifier
{
  v3 = [(WFInterchangeApp *)self definition];
  v4 = [v3 objectForKey:@"iTunesIdentifiers"];

  if (v4)
  {
    v5 = [(WFInterchangeApp *)self identifierFromDictionaryForCurrentIdiom:v4];
  }

  else
  {
    v6 = [(WFInterchangeApp *)self definition];
    v5 = [v6 objectForKey:@"iTunesIdentifier"];
  }

  return v5;
}

- (NSString)localizedShortName
{
  v3 = [(WFInterchangeApp *)self definition];
  v4 = [v3 objectForKey:@"ShortName"];

  if (v4)
  {
    [v4 localize];
  }

  else
  {
    [(WFInterchangeApp *)self localizedName];
  }
  v5 = ;

  return v5;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFInterchangeApp *)self definition];
  v6 = [v5 objectForKey:@"Name"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 localize:v6];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (NSString)localizedName
{
  v3 = [MEMORY[0x1E69E0BE0] defaultContext];
  v4 = [(WFInterchangeApp *)self localizedNameWithContext:v3];

  return v4;
}

- (NSString)bundleIdentifier
{
  v3 = [(WFInterchangeApp *)self bundleIdentifiersByIdiom];
  v4 = [v3 allValues];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(WFInterchangeApp *)self bundleIdentifiersByIdiom];
    v7 = [(WFInterchangeApp *)self identifierFromDictionaryForCurrentIdiom:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [(WFInterchangeApp *)self identifier];
    }

    v10 = v9;
  }

  else
  {
    v10 = [(WFInterchangeApp *)self identifier];
  }

  return v10;
}

- (NSArray)allBundleIdentifiers
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(WFInterchangeApp *)self bundleIdentifiersByIdiom];
  v4 = [v3 allValues];
  if ([v4 count])
  {
    v5 = [(WFInterchangeApp *)self bundleIdentifiersByIdiom];
    v6 = [v5 allValues];
  }

  else
  {
    v5 = [(WFInterchangeApp *)self identifier];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  v7 = v6;

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)bundleIdentifiersByIdiom
{
  v2 = [(WFInterchangeApp *)self definition];
  v3 = [v2 objectForKey:@"BundleIdentifiers"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = WFInterchangeApp;
  v4 = [(WFInterchangeApp *)&v11 description];
  v5 = [(WFInterchangeApp *)self localizedName];
  v6 = [(WFInterchangeApp *)self identifier];
  v7 = v6;
  if (self->_checkedInstallStatus)
  {
    if (self->_installed)
    {
      v8 = @"Installed";
    }

    else
    {
      v8 = @"Not Installed";
    }
  }

  else
  {
    v8 = @"Undetermined Install Status";
  }

  v9 = [v3 stringWithFormat:@"%@: %@ [%@] (%@)", v4, v5, v6, v8];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(WFInterchangeApp *)self identifier];
  v4 = [v3 hash];
  v5 = [(WFInterchangeApp *)self definition];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFInterchangeApp *)self identifier];
      v6 = [(WFInterchangeApp *)v4 identifier];
      if ([v5 isEqualToString:v6])
      {
        v7 = [(WFInterchangeApp *)self definition];
        v8 = [(WFInterchangeApp *)v4 definition];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0;
          if (v9 && v10)
          {
            v12 = [v9 isEqualToDictionary:v10];
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (WFInterchangeApp)initWithIdentifier:(id)a3 definition:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFInterchangeApp.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v9 = [(WFInterchangeApp *)self init];
  if (v9)
  {
    v10 = [v7 copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [v8 copy];
    definition = v9->_definition;
    v9->_definition = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.WorkflowKit.WFInterchangeApp.stateAccessQueue", v14);
    stateAccessQueue = v9->_stateAccessQueue;
    v9->_stateAccessQueue = v15;

    v17 = v9;
  }

  return v9;
}

@end