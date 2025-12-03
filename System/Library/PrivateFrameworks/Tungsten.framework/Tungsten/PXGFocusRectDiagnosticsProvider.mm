@interface PXGFocusRectDiagnosticsProvider
- (void)enumerateRectDiagnosticsForLayout:(id)layout usingBlock:(id)block;
@end

@implementation PXGFocusRectDiagnosticsProvider

- (void)enumerateRectDiagnosticsForLayout:(id)layout usingBlock:(id)block
{
  layoutCopy = layout;
  blockCopy = block;
  v7 = +[PXTungstenSettings sharedInstance];
  enableFocusRectDiagnostics = [v7 enableFocusRectDiagnostics];

  if (enableFocusRectDiagnostics)
  {
    v9 = MEMORY[0x277D75518];
    axGroup = [layoutCopy axGroup];
    v11 = [v9 focusSystemForEnvironment:axGroup];

    focusedItem = [v11 focusedItem];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __80__PXGFocusRectDiagnosticsProvider_enumerateRectDiagnosticsForLayout_usingBlock___block_invoke;
    v14[3] = &unk_2782AAB28;
    v15 = focusedItem;
    v16 = blockCopy;
    v13 = focusedItem;
    [layoutCopy enumerateDescendantsLayoutsUsingBlock:v14];
  }
}

void __80__PXGFocusRectDiagnosticsProvider_enumerateRectDiagnosticsForLayout_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 axGroup];
  v4 = [v3 loadedLeafIndexes];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__PXGFocusRectDiagnosticsProvider_enumerateRectDiagnosticsForLayout_usingBlock___block_invoke_2;
  v6[3] = &unk_2782AB5E8;
  v7 = v3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateIndexesUsingBlock:v6];
}

void __80__PXGFocusRectDiagnosticsProvider_enumerateRectDiagnosticsForLayout_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v3 = [*(a1 + 32) loadedLeafAtSpriteIndex:a2];
  v4 = v3;
  if (*(a1 + 40) != v3)
  {
    v5 = *(a1 + 48);
    [v3 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [MEMORY[0x277D75348] colorWithRed:0.0 green:1.0 blue:0.0 alpha:0.5];
    (*(v5 + 16))(v5, v14, @"Focus Item", &v15, v7, v9, v11, v13);
  }
}

@end