@interface PXGCurrentFocusRectDiagnosticsProvider
- (void)enumerateRectDiagnosticsForLayout:(id)layout usingBlock:(id)block;
@end

@implementation PXGCurrentFocusRectDiagnosticsProvider

- (void)enumerateRectDiagnosticsForLayout:(id)layout usingBlock:(id)block
{
  layoutCopy = layout;
  blockCopy = block;
  v7 = +[PXTungstenSettings sharedInstance];
  enableCurrentFocusRectDiagnostics = [v7 enableCurrentFocusRectDiagnostics];

  if (enableCurrentFocusRectDiagnostics)
  {
    rootLayout = [layoutCopy rootLayout];
    axGroup = [rootLayout axGroup];
    v11 = [MEMORY[0x277D75518] focusSystemForEnvironment:axGroup];
    focusedItem = [v11 focusedItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = focusedItem;
      axContainingGroup = [v13 axContainingGroup];
      containingLayout = [axContainingGroup containingLayout];

      if (containingLayout)
      {
        [v13 axFrame];
        [rootLayout convertRect:containingLayout fromLayout:?];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = 0;
        v24 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.5];
        blockCopy[2](blockCopy, v24, @"Current Item", &v25, v17, v19, v21, v23);
      }
    }
  }
}

@end