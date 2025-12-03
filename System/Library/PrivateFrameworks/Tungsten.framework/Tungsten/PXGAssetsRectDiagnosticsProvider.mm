@interface PXGAssetsRectDiagnosticsProvider
- (void)enumerateRectDiagnosticsForLayout:(id)layout usingBlock:(id)block;
@end

@implementation PXGAssetsRectDiagnosticsProvider

- (void)enumerateRectDiagnosticsForLayout:(id)layout usingBlock:(id)block
{
  layoutCopy = layout;
  blockCopy = block;
  v7 = +[PXTungstenSettings sharedInstance];
  enableAssetsRectDiagnostics = [v7 enableAssetsRectDiagnostics];

  if (enableAssetsRectDiagnostics)
  {
    [layoutCopy visibleRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __81__PXGAssetsRectDiagnosticsProvider_enumerateRectDiagnosticsForLayout_usingBlock___block_invoke;
    v17[3] = &unk_2782A99E0;
    v18 = blockCopy;
    [layoutCopy enumerateSpritesInRect:v17 usingBlock:{v10, v12, v14, v16}];
  }
}

void __81__PXGAssetsRectDiagnosticsProvider_enumerateRectDiagnosticsForLayout_usingBlock___block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (*(a6 + 1) == 2)
  {
    v10 = a7;
    v11 = [v10 displayAssetSource];
    v12 = [v11 displayAssetFetchResultForSpritesInRange:a2 | 0x100000000 inLayout:v10];

    v28 = [v12 objectAtIndex:0];

    if ([v28 conformsToProtocol:&unk_282CB5F18])
    {
      [v28 weightUsingCriterion:0];
      v14 = v13;
      PXRectWithCenterAndSize();
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = MEMORY[0x277D75348];
      if (v14 >= 0.0)
      {
        v24 = v14;
      }

      else
      {
        v24 = 0.0;
      }

      v25 = tanh(v24) * 0.25;
      v26 = [v23 colorWithHue:v25 saturation:1.0 brightness:(tanh(fmin(v14 alpha:{0.0)) + 1.0), 1.0}];
      v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Weight=%f", *&v14];
      (*(*(a1 + 32) + 16))(v16, v18, v20, v22);
    }
  }
}

@end