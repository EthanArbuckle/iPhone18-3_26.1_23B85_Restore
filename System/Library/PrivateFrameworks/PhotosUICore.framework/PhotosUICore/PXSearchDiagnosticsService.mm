@interface PXSearchDiagnosticsService
+ (id)viewControllerForDetailsOfAsset:(id)asset;
- (BOOL)canProvideContextualViewController;
- (id)contextualViewController;
@end

@implementation PXSearchDiagnosticsService

+ (id)viewControllerForDetailsOfAsset:(id)asset
{
  assetCopy = asset;
  px_searchDebugString = [assetCopy px_searchDebugString];
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Search Details" message:0 preferredStyle:1];
  [v5 _setAttributedMessage:px_searchDebugString];
  v6 = MEMORY[0x1E69DC648];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__PXSearchDiagnosticsService_viewControllerForDetailsOfAsset___block_invoke;
  v19[3] = &unk_1E7749600;
  v20 = px_searchDebugString;
  v7 = px_searchDebugString;
  v8 = [v6 actionWithTitle:@"Copy Text" style:0 handler:v19];
  [v5 addAction:v8];

  v9 = MEMORY[0x1E69DC648];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __62__PXSearchDiagnosticsService_viewControllerForDetailsOfAsset___block_invoke_2;
  v17 = &unk_1E7749600;
  v18 = assetCopy;
  v10 = assetCopy;
  v11 = [v9 actionWithTitle:@"Copy UUID" style:0 handler:&v14];
  [v5 addAction:{v11, v14, v15, v16, v17}];

  v12 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:1 handler:0];
  [v5 addAction:v12];

  return v5;
}

void __62__PXSearchDiagnosticsService_viewControllerForDetailsOfAsset___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v3 = [*(a1 + 32) string];
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 setObjects:v4];
}

void __62__PXSearchDiagnosticsService_viewControllerForDetailsOfAsset___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v3 = [*(a1 + 32) uuid];
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 setObjects:v4];
}

- (id)contextualViewController
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  itemProviders = [(PXDiagnosticsService *)self itemProviders];
  v4 = [itemProviders countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (!v4)
  {

    v6 = 0;
LABEL_14:
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      itemProviders2 = [(PXDiagnosticsService *)self itemProviders];
      *buf = 138412290;
      v20 = itemProviders2;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_INFO, "Search Diagnostics Service Error: No item providers can be used (%@)", buf, 0xCu);
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
        objc_enumerationMutation(itemProviders);
      }

      v9 = *(*(&v15 + 1) + 8 * i);
      if ([v9 hasItemForIdentifier:@"PXDiagnosticsItemIdentifierAsset"])
      {
        v10 = [v9 itemForIdentifier:@"PXDiagnosticsItemIdentifierAsset"];

        v6 = v10;
      }
    }

    v5 = [itemProviders countByEnumeratingWithState:&v15 objects:v21 count:16];
  }

  while (v5);

  if (!v6)
  {
    goto LABEL_14;
  }

  v11 = [objc_opt_class() viewControllerForDetailsOfAsset:v6];
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_17:

  return v11;
}

- (BOOL)canProvideContextualViewController
{
  v14 = *MEMORY[0x1E69E9840];
  [(PXDiagnosticsService *)self itemProviders];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) hasItemForIdentifier:{@"PXDiagnosticsItemIdentifierAsset", v9}])
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

@end