@interface PXGViewDebugHierarchyDumpService
- (BOOL)canPerformAction;
- (PXGViewDebugHierarchyDumpService)initWithItemProviders:(id)providers;
- (void)performAction;
@end

@implementation PXGViewDebugHierarchyDumpService

- (void)performAction
{
  gridView = [(PXGViewDebugHierarchyDumpService *)self gridView];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];
  preferredFileNameForExportingDebugHierarchy = [gridView preferredFileNameForExportingDebugHierarchy];
  v6 = [temporaryDirectory URLByAppendingPathComponent:preferredFileNameForExportingDebugHierarchy];

  v19 = 0;
  v7 = [gridView exportDebugHierarchyToURL:v6 error:&v19];
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
    path = [v6 path];
    localizedDescription = [v10 stringWithFormat:@"Debug hierarchy saved to %@", path];
  }

  else
  {
    v14 = v9;
    localizedDescription = [v8 localizedDescription];
  }

  v15 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:localizedDescription preferredStyle:1];

  v16 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
  [v15 addAction:v16];

  window = [gridView window];
  rootViewController = [window rootViewController];
  [rootViewController presentViewController:v15 animated:1 completion:0];
}

- (BOOL)canPerformAction
{
  gridView = [(PXGViewDebugHierarchyDumpService *)self gridView];
  v3 = gridView != 0;

  return v3;
}

- (PXGViewDebugHierarchyDumpService)initWithItemProviders:(id)providers
{
  v20 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  v18.receiver = self;
  v18.super_class = PXGViewDebugHierarchyDumpService;
  v5 = [(PXDiagnosticsService *)&v18 initWithItemProviders:providersCopy];
  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = providersCopy;
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