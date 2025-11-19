@interface PXInlineVideoStabilizationDiagnosticsService
- (BOOL)canProvideContextualViewController;
- (PXInlineVideoStabilizationDiagnosticsService)initWithItemProviders:(id)a3;
- (id)contextualViewController;
@end

@implementation PXInlineVideoStabilizationDiagnosticsService

- (id)contextualViewController
{
  if ([(PXInlineVideoStabilizationDiagnosticsService *)self canProvideContextualViewController])
  {
    v3 = [[PXInlineVideoStabilizationDiagnosticsViewController alloc] initWithInputAsset:self->_asset];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)canProvideContextualViewController
{
  v3 = +[PXInlineVideoStabilizationSettings sharedInstance];
  if ([v3 showDiagnosticUI])
  {
    v4 = [(PHAsset *)self->_asset playbackStyle]== 3 || [(PHAsset *)self->_asset playbackStyle]== 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PXInlineVideoStabilizationDiagnosticsService)initWithItemProviders:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PXInlineVideoStabilizationDiagnosticsService;
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
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) itemForIdentifier:{@"PXDiagnosticsItemIdentifierAsset", v14}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            asset = v5->_asset;
            v5->_asset = v11;

            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v5;
}

@end