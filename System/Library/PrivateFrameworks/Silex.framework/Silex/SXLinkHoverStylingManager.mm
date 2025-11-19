@interface SXLinkHoverStylingManager
- (SXLinkHoverStylingManager)initWithTangierController:(id)a3;
- (id)allHoverViews;
- (id)createHoverView;
- (void)applyHoverStyling;
@end

@implementation SXLinkHoverStylingManager

- (SXLinkHoverStylingManager)initWithTangierController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXLinkHoverStylingManager;
  v6 = [(SXLinkHoverStylingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tangierController, a3);
  }

  return v7;
}

- (void)applyHoverStyling
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(SXLinkHoverStylingManager *)self hoverViews];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 removeFromSuperview];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = [(SXLinkHoverStylingManager *)self allHoverViews];
  [(SXLinkHoverStylingManager *)self setHoverViews:v9];
}

- (id)allHoverViews
{
  v30 = *MEMORY[0x1E69E9840];
  v19 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = [(SXLinkHoverStylingManager *)self tangierController];
  v3 = [v2 icc];
  v4 = [v3 canvas];
  v5 = [v4 topLevelReps];

  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        v11 = TSUDynamicCast();
        v12 = v11;
        if (v11)
        {
          v13 = [v11 storage];
          v14 = [v12 range];
          v16 = v15;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __42__SXLinkHoverStylingManager_allHoverViews__block_invoke;
          v20[3] = &unk_1E84FFB08;
          v21 = v12;
          v22 = v10;
          v23 = self;
          v24 = v19;
          [v13 enumerateSmartFieldsWithAttributeKind:6 inRange:v14 usingBlock:{v16, v20}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  return v19;
}

void __42__SXLinkHoverStylingManager_allHoverViews__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v28 = v3;
    v5 = [*(a1 + 32) columns];
    v6 = [v5 firstObject];

    v7 = [v4 range];
    v27 = v6;
    v9 = [v6 rectsForSelectionRange:v7 selectionType:{v8, 0}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        v13 = 0;
        do
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(a1 + 40);
          [*(*(&v29 + 1) + 8 * v13) CGRectValue];
          [v14 convertNaturalRectToUnscaledCanvas:?];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v23 = [*(a1 + 48) createHoverView];
          [v23 setFrame:{v16, v18, v20, v22}];
          v24 = [*(a1 + 48) tangierController];
          v25 = [v24 icc];
          v26 = [v25 canvasView];
          [v26 addSubview:v23];

          [*(a1 + 56) addObject:v23];
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
    }

    v3 = v28;
  }
}

- (id)createHoverView
{
  v2 = objc_alloc_init(SXHoverStyleView);
  v3 = [MEMORY[0x1E69DCAB0] automaticStyle];
  [(SXHoverStyleView *)v2 setHoverStyle:v3];

  return v2;
}

@end