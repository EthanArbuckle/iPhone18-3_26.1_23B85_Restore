@interface PXDreamyDiagnosticsService
- (PXDreamyDiagnosticsService)initWithItemProviders:(id)providers;
- (id)contextualViewController;
@end

@implementation PXDreamyDiagnosticsService

- (id)contextualViewController
{
  if ([(PXDreamyDiagnosticsService *)self canProvideContextualViewController])
  {
    v3 = [(PXVideoComparisonViewController *)[PXDreamyDiagnosticsViewController alloc] initWithInputAsset:self->_asset];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PXDreamyDiagnosticsService)initWithItemProviders:(id)providers
{
  v20 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  v18.receiver = self;
  v18.super_class = PXDreamyDiagnosticsService;
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