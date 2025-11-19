@interface PXGViewSlowAnimationsDiagnosticsService
- (BOOL)canPerformAction;
- (PXGViewSlowAnimationsDiagnosticsService)initWithItemProviders:(id)a3;
- (id)title;
- (void)performAction;
@end

@implementation PXGViewSlowAnimationsDiagnosticsService

- (void)performAction
{
  v5 = [(PXGViewSlowAnimationsDiagnosticsService *)self gridView];
  v3 = [v5 slowAnimationsEnabled];
  v4 = [(PXGViewSlowAnimationsDiagnosticsService *)self gridView];
  [v4 setSlowAnimationsEnabled:v3 ^ 1u];
}

- (BOOL)canPerformAction
{
  v2 = [(PXGViewSlowAnimationsDiagnosticsService *)self gridView];
  v3 = v2 != 0;

  return v3;
}

- (id)title
{
  v2 = [(PXGViewSlowAnimationsDiagnosticsService *)self gridView];
  if ([v2 slowAnimationsEnabled])
  {
    v3 = @"Disable Slow Animations";
  }

  else
  {
    v3 = @"Enable Slow Animations";
  }

  v4 = v3;

  return v3;
}

- (PXGViewSlowAnimationsDiagnosticsService)initWithItemProviders:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PXGViewSlowAnimationsDiagnosticsService;
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