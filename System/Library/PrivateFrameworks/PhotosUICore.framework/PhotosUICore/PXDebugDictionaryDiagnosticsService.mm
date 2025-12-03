@interface PXDebugDictionaryDiagnosticsService
- (BOOL)canProvideContextualViewController;
- (id)_debugDictionary;
- (id)consoleDescription;
- (id)contextualViewController;
@end

@implementation PXDebugDictionaryDiagnosticsService

- (id)_debugDictionary
{
  v15 = *MEMORY[0x1E69E9840];
  [(PXDiagnosticsService *)self itemProviders];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = MEMORY[0x1E695E0F8];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 hasItemForIdentifier:{@"PXDiagnosticsItemIdentifierDebugDictionary", v10}])
        {
          v6 = [v8 itemForIdentifier:@"PXDiagnosticsItemIdentifierDebugDictionary"];
          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

LABEL_12:

  return v6;
}

- (id)contextualViewController
{
  _debugDictionary = [(PXDebugDictionaryDiagnosticsService *)self _debugDictionary];
  v3 = [[PXDebugDictionaryViewController alloc] initWithDebugDictionary:_debugDictionary];

  return v3;
}

- (BOOL)canProvideContextualViewController
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[PXDiagnosticsSettings sharedInstance];
  enableDebugDictionaryService = [v3 enableDebugDictionaryService];

  if (!enableDebugDictionaryService)
  {
    return 0;
  }

  [(PXDiagnosticsService *)self itemProviders];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * i) hasItemForIdentifier:{@"PXDiagnosticsItemIdentifierDebugDictionary", v12}])
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (id)consoleDescription
{
  _debugDictionary = [(PXDebugDictionaryDiagnosticsService *)self _debugDictionary];
  v3 = [_debugDictionary debugDescription];

  return v3;
}

@end