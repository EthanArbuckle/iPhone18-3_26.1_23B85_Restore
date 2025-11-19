@interface PXGViewDebugHierarchyDumpService
- (BOOL)canPerformAction;
- (PXGViewDebugHierarchyDumpService)initWithItemProviders:(id)a3;
- (void)performAction;
@end

@implementation PXGViewDebugHierarchyDumpService

- (void)performAction
{
  v2 = [(PXGViewDebugHierarchyDumpService *)self gridView];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 temporaryDirectory];
  v5 = [v2 preferredFileNameForExportingDebugHierarchy];
  v6 = [v4 URLByAppendingPathComponent:v5];

  v19 = 0;
  v7 = [v2 exportDebugHierarchyToURL:v6 error:&v19];
  v8 = v19;
  if (v7)
  {
    v9 = @"Success";
  }

  else
  {
    v9 = @"An error occurred";
  }

  if (v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = v9;
    v12 = [v6 path];
    v13 = [v10 stringWithFormat:@"Debug hierarchy saved to %@", v12];
  }

  else
  {
    v14 = v9;
    v13 = [v8 localizedDescription];
  }

  v15 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v13 preferredStyle:1];

  v16 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
  [v15 addAction:v16];

  v17 = [v2 window];
  v18 = [v17 rootViewController];
  [v18 presentViewController:v15 animated:1 completion:0];
}

- (BOOL)canPerformAction
{
  v2 = [(PXGViewDebugHierarchyDumpService *)self gridView];
  v3 = v2 != 0;

  return v3;
}

- (PXGViewDebugHierarchyDumpService)initWithItemProviders:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PXGViewDebugHierarchyDumpService;
  v5 = [(PXDiagnosticsService *)&v18 initWithItemProviders:v4];
  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) itemForIdentifier:{@"PXDiagnosticsItemIdentifierTungstenView", v14}];
        gridView = v5->_gridView;
        v5->_gridView = v11;

        if (v5->_gridView)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  return v5;
}

@end