@interface PXGAnchoringRectDiagnosticsProvider
- (void)enumerateRectDiagnosticsForLayout:(id)a3 usingBlock:(id)a4;
@end

@implementation PXGAnchoringRectDiagnosticsProvider

- (void)enumerateRectDiagnosticsForLayout:(id)a3 usingBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[PXTungstenSettings sharedInstance];
  v8 = [v7 enableAnchoringRectDiagnostics];

  if (v8)
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v13[3] = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __84__PXGAnchoringRectDiagnosticsProvider_enumerateRectDiagnosticsForLayout_usingBlock___block_invoke;
    v9[3] = &unk_2782A9990;
    v10 = v5;
    v11 = v6;
    v12 = v13;
    [v10 enumerateVisibleAnchoringSpriteIndexesUsingBlock:v9];

    _Block_object_dispose(v13, 8);
  }
}

void __84__PXGAnchoringRectDiagnosticsProvider_enumerateRectDiagnosticsForLayout_usingBlock___block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v23[6] = xmmword_21AE2E2C0;
  v23[7] = unk_21AE2E2D0;
  v23[8] = xmmword_21AE2E2E0;
  v23[9] = unk_21AE2E2F0;
  v23[2] = xmmword_21AE2E280;
  v23[3] = unk_21AE2E290;
  v23[4] = xmmword_21AE2E2A0;
  v23[5] = unk_21AE2E2B0;
  v23[0] = PXGSpriteStyleDefault;
  v23[1] = unk_21AE2E270;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  [*(a1 + 32) copyLayoutForSpritesInRange:a2 | 0x100000000 entities:&v22 geometries:v21 styles:v23 infos:v19];
  PXRectWithCenterAndSize();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (a3 == 2)
  {
    v15 = [MEMORY[0x277D75348] orangeColor];
  }

  else
  {
    if (a3 == 1)
    {
      [MEMORY[0x277D75348] redColor];
    }

    else
    {
      [MEMORY[0x277D75348] purpleColor];
    }
    v15 = ;
  }

  v16 = v15;
  v17 = *(a1 + 40);
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Anchor #%li", *(*(*(a1 + 48) + 8) + 24)];
  (*(v17 + 16))(v17, v16, v18, a4, v8, v10, v12, v14);

  ++*(*(*(a1 + 48) + 8) + 24);
}

@end