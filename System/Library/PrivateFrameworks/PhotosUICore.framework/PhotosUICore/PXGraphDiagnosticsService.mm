@interface PXGraphDiagnosticsService
+ (id)viewControllerForDetailsOfAsset:(id)asset;
- (BOOL)canProvideContextualViewController;
- (id)contextualViewController;
- (id)saliencyStringForAsset:(id)asset;
- (id)title;
@end

@implementation PXGraphDiagnosticsService

+ (id)viewControllerForDetailsOfAsset:(id)asset
{
  assetCopy = asset;
  px_curationDebugString = [assetCopy px_curationDebugString];
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Asset Details" message:0 preferredStyle:1];
  [v5 _setAttributedMessage:px_curationDebugString];
  v6 = MEMORY[0x1E69DC648];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__PXGraphDiagnosticsService_viewControllerForDetailsOfAsset___block_invoke;
  v19[3] = &unk_1E7749600;
  v20 = px_curationDebugString;
  v7 = px_curationDebugString;
  v8 = [v6 actionWithTitle:@"Copy Text" style:0 handler:v19];
  [v5 addAction:v8];

  v9 = MEMORY[0x1E69DC648];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __61__PXGraphDiagnosticsService_viewControllerForDetailsOfAsset___block_invoke_2;
  v17 = &unk_1E7749600;
  v18 = assetCopy;
  v10 = assetCopy;
  v11 = [v9 actionWithTitle:@"Copy UUID" style:0 handler:&v14];
  [v5 addAction:{v11, v14, v15, v16, v17}];

  v12 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:1 handler:0];
  [v5 addAction:v12];

  return v5;
}

void __61__PXGraphDiagnosticsService_viewControllerForDetailsOfAsset___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v3 = [*(a1 + 32) string];
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 setObjects:v4];
}

void __61__PXGraphDiagnosticsService_viewControllerForDetailsOfAsset___block_invoke_2(uint64_t a1)
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
  selfCopy = self;
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  itemProviders = [(PXDiagnosticsService *)self itemProviders];
  v4 = [itemProviders countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v26 = selfCopy;
    obj = itemProviders;
    v28 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if ([v12 hasItemForIdentifier:@"PXDiagnosticsItemIdentifierAsset"])
        {
          v13 = [v12 itemForIdentifier:@"PXDiagnosticsItemIdentifierAsset"];

          v9 = v13;
        }

        if ([v12 hasItemForIdentifier:@"PXDiagnosticsItemIdentifierMemory"])
        {
          v14 = [v12 itemForIdentifier:@"PXDiagnosticsItemIdentifierMemory"];

          v8 = v14;
        }

        if ([v12 hasItemForIdentifier:@"PXDiagnosticsItemIdentifierHighlight"])
        {
          v15 = [v12 itemForIdentifier:@"PXDiagnosticsItemIdentifierHighlight"];

          v7 = v15;
        }

        if ([v12 hasItemForIdentifier:@"PXDiagnosticsItemIdentifierViewDescription"])
        {
          v16 = [v12 itemForIdentifier:@"PXDiagnosticsItemIdentifierViewDescription"];

          v6 = v16;
        }

        if ([v12 hasItemForIdentifier:@"PXDiagnosticsItemIdentifierLayoutDescription"])
        {
          v17 = [v12 itemForIdentifier:@"PXDiagnosticsItemIdentifierLayoutDescription"];

          v28 = v17;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v5);

    if (v9)
    {
      v18 = v9;
      selfCopy = v26;
      v19 = [objc_opt_class() viewControllerForDetailsOfAsset:v9];
      v20 = v6;
      v21 = v28;
      if (v19)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    v20 = v6;
    selfCopy = v26;
    v21 = v28;
  }

  else
  {

    v8 = 0;
    v7 = 0;
    v20 = 0;
    v21 = 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (v8)
  {
    v19 = [[PXDebugMemoriesViewController alloc] initWithMemory:v8 memoryInfo:0];
  }

  else if (v7)
  {
    v19 = [[PXHighlightDiagnosticsViewController alloc] initWithHighlight:v7];
    [(PXDebugMemoriesViewController *)v19 setHostViewDiagnosticDescription:v20];
    [(PXDebugMemoriesViewController *)v19 setHostLayoutDiagnosticDescription:v21];
    [(PXDebugMemoriesViewController *)v19 setCurrentCurationType:3];
  }

  else
  {
    v19 = 0;
  }

  v18 = 0;
  if (v19)
  {
    goto LABEL_32;
  }

LABEL_29:
  v23 = PLUIGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    itemProviders2 = [(PXDiagnosticsService *)selfCopy itemProviders];
    *buf = 138412290;
    v34 = itemProviders2;
    _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEFAULT, "Memories & Storytelling Diagnosis Error: No item providers can be used (%@)", buf, 0xCu);
  }

LABEL_32:

  return v19;
}

- (id)saliencyStringForAsset:(id)asset
{
  v45[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  [assetCopy preferredCropRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  pixelWidth = [assetCopy pixelWidth];
  pixelHeight = [assetCopy pixelHeight];
  v14 = v5 * pixelWidth;
  v15 = v7 * pixelHeight;
  v16 = round(v9 * pixelWidth);
  v17 = round(v11 * pixelHeight);
  v18 = round(v14);
  v19 = round(v15);
  [assetCopy acceptableCropRect];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  pixelWidth2 = [assetCopy pixelWidth];
  pixelHeight2 = [assetCopy pixelHeight];

  v30 = v21 * pixelWidth2;
  v31 = v23 * pixelHeight2;
  v32 = round(v25 * pixelWidth2);
  v33 = round(v27 * pixelHeight2);
  v34 = round(v30);
  v35 = round(v31);
  v36 = MEMORY[0x1E696AEC0];
  v47.origin.x = v18;
  v47.origin.y = v19;
  v47.size.width = v16;
  v47.size.height = v17;
  v37 = NSStringFromCGRect(v47);
  v38 = [v36 stringWithFormat:@"Preferred crop rect: %@", v37];

  v39 = MEMORY[0x1E696AEC0];
  v48.origin.x = v34;
  v48.origin.y = v35;
  v48.size.width = v32;
  v48.size.height = v33;
  v40 = NSStringFromCGRect(v48);
  v41 = [v39 stringWithFormat:@"Acceptable crop rect: %@", v40];

  v45[0] = v38;
  v45[1] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v43 = [v42 componentsJoinedByString:@"\n"];

  return v43;
}

- (BOOL)canProvideContextualViewController
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[PXDiagnosticsSettings sharedInstance];
  enableGraphService = [v3 enableGraphService];

  if (!enableGraphService)
  {
    return 0;
  }

  [(PXDiagnosticsService *)self itemProviders];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 hasItemForIdentifier:{@"PXDiagnosticsItemIdentifierAsset", v13}] & 1) != 0 || (objc_msgSend(v10, "hasItemForIdentifier:", @"PXDiagnosticsItemIdentifierMemory") & 1) != 0 || (objc_msgSend(v10, "hasItemForIdentifier:", @"PXDiagnosticsItemIdentifierHighlight"))
        {
          v11 = 1;
          goto LABEL_16;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_16:

  return v11;
}

- (id)title
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemProviders = [(PXDiagnosticsService *)self itemProviders];
  v3 = [itemProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = @"Graph Diagnostics";
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(itemProviders);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 hasItemForIdentifier:@"PXDiagnosticsItemIdentifierAsset"])
        {
          v6 = @"Asset Details";
          goto LABEL_16;
        }

        if ([v8 hasItemForIdentifier:@"PXDiagnosticsItemIdentifierMemory"])
        {
          v6 = @"Memory Details";
          goto LABEL_16;
        }

        if ([v8 hasItemForIdentifier:@"PXDiagnosticsItemIdentifierHighlight"])
        {
          v6 = @"Highlight Details";
          goto LABEL_16;
        }
      }

      v4 = [itemProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = @"Graph Diagnostics";
  }

LABEL_16:

  return v6;
}

@end