@interface PXCMMDiagnosticsService
- (BOOL)canProvideContextualViewController;
- (id)contextualViewController;
@end

@implementation PXCMMDiagnosticsService

- (id)contextualViewController
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(PXDiagnosticsService *)self itemProviders];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (!v4)
  {
    v6 = 0;
LABEL_14:
    v12 = PLSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(PXDiagnosticsService *)self itemProviders];
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Diagnosis Error: No item providers can be used (%@)", buf, 0xCu);
    }

    v11 = 0;
    goto LABEL_17;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v16;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v15 + 1) + 8 * i);
      if ([v9 hasItemForIdentifier:@"PXDiagnosticsItemIdentifierSharingSuggestion"])
      {
        v10 = [v9 itemForIdentifier:@"PXDiagnosticsItemIdentifierSharingSuggestion"];

        v6 = v10;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  }

  while (v5);
  if (!v6)
  {
    goto LABEL_14;
  }

  v11 = [[PXCMMDebugSharingSuggestionViewController alloc] initWithSharingSuggestion:v6];
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_17:

  return v11;
}

- (BOOL)canProvideContextualViewController
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[PXDiagnosticsSettings sharedInstance];
  v4 = [v3 enableCompleteMyMomentService];

  if (!v4)
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

        if ([*(*(&v12 + 1) + 8 * i) hasItemForIdentifier:{@"PXDiagnosticsItemIdentifierSharingSuggestion", v12}])
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

@end