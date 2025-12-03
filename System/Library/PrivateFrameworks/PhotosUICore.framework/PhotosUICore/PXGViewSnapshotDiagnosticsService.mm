@interface PXGViewSnapshotDiagnosticsService
- (BOOL)canPerformAction;
- (PXGViewSnapshotDiagnosticsService)initWithItemProviders:(id)providers;
- (void)performAction;
@end

@implementation PXGViewSnapshotDiagnosticsService

- (void)performAction
{
  tungstenView = [(PXGViewSnapshotDiagnosticsService *)self tungstenView];
  visualDiagnosticsConfigurationForFullPageSnapshot = [tungstenView visualDiagnosticsConfigurationForFullPageSnapshot];
  viewController = [(PXGViewSnapshotDiagnosticsService *)self viewController];
  [PXVisualDiagnosticsFactory showVisualDiagnosticsWithConfiguration:visualDiagnosticsConfigurationForFullPageSnapshot fromViewController:viewController completionHandler:0];
}

- (BOOL)canPerformAction
{
  tungstenView = [(PXGViewSnapshotDiagnosticsService *)self tungstenView];
  v3 = tungstenView != 0;

  return v3;
}

- (PXGViewSnapshotDiagnosticsService)initWithItemProviders:(id)providers
{
  v22 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  v20.receiver = self;
  v20.super_class = PXGViewSnapshotDiagnosticsService;
  v5 = [(PXDiagnosticsService *)&v20 initWithItemProviders:providersCopy];
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = providersCopy;
    obj = providersCopy;
    v6 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 itemForIdentifier:{@"PXDiagnosticsItemIdentifierTungstenView", v14}];
          if (v11)
          {
            objc_storeStrong(&v5->_tungstenView, v11);
          }

          v12 = [v10 itemForIdentifier:@"PXDiagnosticsItemIdentifierViewController"];
          if (v12)
          {
            objc_storeStrong(&v5->_viewController, v12);
          }

          if (v5->_tungstenView && v5->_viewController)
          {

            goto LABEL_17;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    providersCopy = v14;
  }

  return v5;
}

@end