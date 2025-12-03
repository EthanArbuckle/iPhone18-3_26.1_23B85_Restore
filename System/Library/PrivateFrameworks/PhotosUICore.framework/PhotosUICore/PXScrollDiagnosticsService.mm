@interface PXScrollDiagnosticsService
- (BOOL)canProvideContextualViewController;
- (id)contextualViewController;
- (id)scrollViewWithScrollAxis:(int64_t)axis;
@end

@implementation PXScrollDiagnosticsService

- (id)scrollViewWithScrollAxis:(int64_t)axis
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  itemProviders = [(PXDiagnosticsService *)self itemProviders];
  v5 = [itemProviders countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = *v14;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(itemProviders);
      }

      v9 = *(*(&v13 + 1) + 8 * i);
      if ([v9 hasItemForIdentifier:@"PXDiagnosticsItemIdentifierScrollView"])
      {
        v10 = [v9 itemForIdentifier:@"PXDiagnosticsItemIdentifierScrollView"];
        v11 = v10;
        if (axis == 1)
        {
          if ([v10 px_isScrolledAtEdge:1] && objc_msgSend(v11, "px_isScrolledAtEdge:", 3))
          {
LABEL_14:

            continue;
          }
        }

        else if (axis != 2 || [v10 px_isScrolledAtEdge:0] && (objc_msgSend(v11, "px_isScrolledAtEdge:", 2) & 1) != 0)
        {
          goto LABEL_14;
        }

        if (v11)
        {
          goto LABEL_19;
        }
      }
    }

    v6 = [itemProviders countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v6);
LABEL_18:
  v11 = 0;
LABEL_19:

  return v11;
}

- (id)contextualViewController
{
  v3 = +[PXScrollViewStresser sharedInstance];
  if ([v3 isScrolling])
  {
    v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Scroll Stress" message:@"Stop scrolling?" preferredStyle:1];
    v5 = [MEMORY[0x1E69DC648] actionWithTitle:@"Continue" style:1 handler:0];
    [v4 addAction:v5];

    v6 = MEMORY[0x1E69DC648];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__PXScrollDiagnosticsService_contextualViewController__block_invoke_3;
    v16[3] = &unk_1E7749600;
    v17 = v3;
    v7 = [v6 actionWithTitle:@"Stop" style:2 handler:v16];
    [v4 addAction:v7];

    v8 = v17;
  }

  else
  {
    v8 = [(PXScrollDiagnosticsService *)self scrollViewWithScrollAxis:2];
    v9 = [(PXScrollDiagnosticsService *)self scrollViewWithScrollAxis:1];
    v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Scroll Stress" message:@"Ready?" preferredStyle:1];
    v10 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
    [v4 addAction:v10];

    if (v8)
    {
      v11 = MEMORY[0x1E69DC648];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __54__PXScrollDiagnosticsService_contextualViewController__block_invoke;
      v21[3] = &unk_1E774A2C8;
      v22 = v3;
      v23 = v8;
      v12 = [v11 actionWithTitle:@"Scroll Horizontally" style:0 handler:v21];
      [v4 addAction:v12];
    }

    if (v9)
    {
      v13 = MEMORY[0x1E69DC648];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __54__PXScrollDiagnosticsService_contextualViewController__block_invoke_2;
      v18[3] = &unk_1E774A2C8;
      v19 = v3;
      v20 = v9;
      v14 = [v13 actionWithTitle:@"Scroll Vertically" style:0 handler:v18];
      [v4 addAction:v14];
    }
  }

  return v4;
}

- (BOOL)canProvideContextualViewController
{
  v3 = +[PXScrollViewStresser sharedInstance];
  isScrolling = [v3 isScrolling];

  if (isScrolling)
  {
    return 1;
  }

  v6 = +[PXDiagnosticsSettings sharedInstance];
  if ([v6 enableScrollService])
  {
    v5 = 1;
    v7 = [(PXScrollDiagnosticsService *)self scrollViewWithScrollAxis:1];
    if (!v7)
    {
      v8 = [(PXScrollDiagnosticsService *)self scrollViewWithScrollAxis:2];
      v5 = v8 != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end