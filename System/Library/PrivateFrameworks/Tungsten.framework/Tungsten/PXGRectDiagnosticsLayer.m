@interface PXGRectDiagnosticsLayer
+ (NSArray)defaultRectDiagnosticsProviders;
- (void)update;
@end

@implementation PXGRectDiagnosticsLayer

+ (NSArray)defaultRectDiagnosticsProviders
{
  v9[5] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(PXGAnchoringRectDiagnosticsProvider);
  v9[0] = v2;
  v3 = objc_alloc_init(PXGSpritesRectDiagnosticsProvider);
  v9[1] = v3;
  v4 = objc_alloc_init(PXGAssetsRectDiagnosticsProvider);
  v9[2] = v4;
  v5 = objc_alloc_init(PXGFocusRectDiagnosticsProvider);
  v9[3] = v5;
  v6 = objc_alloc_init(PXGCurrentFocusRectDiagnosticsProvider);
  v9[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];

  return v7;
}

- (void)update
{
  v32 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
  v19 = self;
  v4 = [(PXGRectDiagnosticsLayer *)self superlayer];
  [v4 bounds];
  [(PXGRectDiagnosticsLayer *)self setFrame:?];

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v5 = [(PXGRectDiagnosticsLayer *)self layout];
  if (v5)
  {
    v6 = +[PXTungstenSettings sharedInstance];
    v7 = [v6 wantsRectDiagnosticsDebugHUD];

    if (v7)
    {
      [v5 visibleRect];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __33__PXGRectDiagnosticsLayer_update__block_invoke;
      v26[3] = &unk_2782A9940;
      v26[5] = &v27;
      v26[4] = self;
      v26[6] = v8;
      v26[7] = v9;
      v26[8] = a2;
      v10 = MEMORY[0x21CEE40A0](v26);
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = [(PXGRectDiagnosticsLayer *)self rectDiagnosticsProviders];
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v31 count:16];
      if (v12)
      {
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            v20[0] = MEMORY[0x277D85DD0];
            v20[1] = 3221225472;
            v20[2] = __33__PXGRectDiagnosticsLayer_update__block_invoke_2;
            v20[3] = &unk_2782A9968;
            v21 = v10;
            [v15 enumerateRectDiagnosticsForLayout:v5 usingBlock:v20];
          }

          v12 = [v11 countByEnumeratingWithState:&v22 objects:v31 count:16];
        }

        while (v12);
      }
    }
  }

  v16 = [(PXGRectDiagnosticsLayer *)v19 sublayers];
  for (j = v28[3]; j < [v16 count]; ++j)
  {
    v18 = [v16 objectAtIndexedSubscript:j];
    [v18 setHidden:1];
  }

  [MEMORY[0x277CD9FF0] commit];

  _Block_object_dispose(&v27, 8);
}

void __33__PXGRectDiagnosticsLayer_update__block_invoke(uint64_t a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v42 = a2;
  v13 = a3;
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 24);
  *(v14 + 24) = v15 + 1;
  v16 = [*(a1 + 32) sublayers];
  v17 = [v16 count];
  v18 = *(*(*(a1 + 40) + 8) + 24);

  if (v17 < v18)
  {
    do
    {
      v19 = [MEMORY[0x277CD9ED0] layer];
      [*(a1 + 32) addSublayer:v19];
      v20 = [MEMORY[0x277CD9FC8] layer];
      [v19 addSublayer:v20];

      v21 = [*(a1 + 32) sublayers];
      v22 = [v21 count];
      v23 = *(*(*(a1 + 40) + 8) + 24);
    }

    while (v22 < v23);
  }

  v24 = [*(a1 + 32) sublayers];
  v25 = [v24 objectAtIndexedSubscript:v15];

  v26 = [v42 colorWithAlphaComponent:0.15];
  [v25 setBackgroundColor:{objc_msgSend(v26, "CGColor")}];

  v27 = v42;
  [v25 setBorderColor:{objc_msgSend(v42, "CGColor")}];
  [v25 setBorderWidth:5.0];
  v44.origin.x = a4;
  v44.origin.y = a5;
  v44.size.width = a6;
  v44.size.height = a7;
  v45 = CGRectOffset(v44, -*(a1 + 48), -*(a1 + 56));
  [v25 setFrame:{v45.origin.x, v45.origin.y, v45.size.width, v45.size.height}];
  [v25 setHidden:0];
  [*(a1 + 32) contentsScale];
  [v25 setContentsScale:?];
  v28 = [v25 sublayers];
  v29 = [v28 firstObject];

  if (v29)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v33 = [MEMORY[0x277CCA890] currentHandler];
    v38 = *(a1 + 64);
    v39 = *(a1 + 32);
    v40 = objc_opt_class();
    v37 = NSStringFromClass(v40);
    v41 = [v29 px_descriptionForAssertionMessage];
    [v33 handleFailureInMethod:v38 object:v39 file:@"PXGRectDiagnosticsLayer.m" lineNumber:63 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sublayer.sublayers.firstObject", v37, v41}];
  }

  else
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    v34 = *(a1 + 64);
    v35 = *(a1 + 32);
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    [v33 handleFailureInMethod:v34 object:v35 file:@"PXGRectDiagnosticsLayer.m" lineNumber:63 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sublayer.sublayers.firstObject", v37}];
  }

LABEL_5:
  [v25 bounds];
  v47 = CGRectInset(v46, 10.0, 10.0);
  [v29 setFrame:{v47.origin.x, v47.origin.y, v47.size.width, v47.size.height}];
  [v29 setString:v13];
  [v29 setFontSize:13.0];
  v30 = v42;
  [v29 setForegroundColor:{objc_msgSend(v42, "CGColor")}];
  v31 = [MEMORY[0x277D75348] blackColor];
  [v29 setShadowColor:{objc_msgSend(v31, "CGColor")}];

  [v29 setShadowOffset:{0.0, 0.0}];
  [v29 setShadowRadius:5.0];
  LODWORD(v32) = 1.0;
  [v29 setShadowOpacity:v32];
  [v29 setWrapped:1];
  [*(a1 + 32) contentsScale];
  [v29 setContentsScale:?];
}

@end