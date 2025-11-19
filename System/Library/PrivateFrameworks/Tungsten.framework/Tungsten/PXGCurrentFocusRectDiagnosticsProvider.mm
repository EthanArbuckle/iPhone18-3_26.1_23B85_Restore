@interface PXGCurrentFocusRectDiagnosticsProvider
- (void)enumerateRectDiagnosticsForLayout:(id)a3 usingBlock:(id)a4;
@end

@implementation PXGCurrentFocusRectDiagnosticsProvider

- (void)enumerateRectDiagnosticsForLayout:(id)a3 usingBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[PXTungstenSettings sharedInstance];
  v8 = [v7 enableCurrentFocusRectDiagnostics];

  if (v8)
  {
    v9 = [v5 rootLayout];
    v10 = [v9 axGroup];
    v11 = [MEMORY[0x277D75518] focusSystemForEnvironment:v10];
    v12 = [v11 focusedItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      v14 = [v13 axContainingGroup];
      v15 = [v14 containingLayout];

      if (v15)
      {
        [v13 axFrame];
        [v9 convertRect:v15 fromLayout:?];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = 0;
        v24 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.5];
        v6[2](v6, v24, @"Current Item", &v25, v17, v19, v21, v23);
      }
    }
  }
}

@end