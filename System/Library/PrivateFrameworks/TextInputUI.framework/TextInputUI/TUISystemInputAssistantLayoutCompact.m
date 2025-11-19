@interface TUISystemInputAssistantLayoutCompact
- (id)_buttonBarGroupSetForApplicationAssistantItem:(id)a3 withSystemInputAssistantItem:(id)a4 forAssistantView:(id)a5;
- (void)_layoutViewSet:(id)a3 forFixedCenterViewWidth:(double)a4 inBounds:(CGRect)a5 forAssistantView:(id)a6;
- (void)configureButtonBarsInViewSet:(id)a3 forApplicationAssistantItem:(id)a4 withSystemAssistantItem:(id)a5 withAssistantView:(id)a6;
- (void)invalidate:(id)a3;
@end

@implementation TUISystemInputAssistantLayoutCompact

- (void)invalidate:(id)a3
{
  v16.receiver = self;
  v16.super_class = TUISystemInputAssistantLayoutCompact;
  v3 = a3;
  [(TUISystemInputAssistantLayout *)&v16 invalidate:v3];
  v4 = [v3 leftButtonBar];
  [v4 minimumInterItemSpace];
  v6 = v5;
  v7 = [v3 leftButtonBar];
  [v7 setEffectiveInterItemSpacing:v6];

  v8 = [v3 leftButtonBar];
  [v8 setButtonAlignment:0];

  v9 = [v3 rightButtonBar];
  [v9 minimumInterItemSpace];
  v11 = v10;
  v12 = [v3 rightButtonBar];
  [v12 setEffectiveInterItemSpacing:v11];

  v13 = [v3 rightButtonBar];
  [v13 setButtonAlignment:2];

  v14 = [v3 rightButtonBar];
  [v14 setAlpha:1.0];

  v15 = [v3 centerView];

  [v15 setAlpha:1.0];
}

- (id)_buttonBarGroupSetForApplicationAssistantItem:(id)a3 withSystemInputAssistantItem:(id)a4 forAssistantView:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 leadingBarButtonGroups];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v5 leadingBarButtonGroups];
    v9 = [v8 firstObject];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = objc_alloc_init(TUIButtonBarGroupSet);
  [(TUIButtonBarGroupSet *)v11 setTrailingButtonGroups:v10];
  [(TUIButtonBarGroupSet *)v11 setUnifiedButtonGroups:v10];

  return v11;
}

- (void)configureButtonBarsInViewSet:(id)a3 forApplicationAssistantItem:(id)a4 withSystemAssistantItem:(id)a5 withAssistantView:(id)a6
{
  v10 = a6;
  v11 = a3;
  v16 = [(TUISystemInputAssistantLayoutCompact *)self _buttonBarGroupSetForApplicationAssistantItem:a4 withSystemInputAssistantItem:a5 forAssistantView:v10];
  v12 = [v11 leftButtonBar];
  v13 = [v16 unifiedButtonGroups];
  [v12 setButtonGroups:v13 animated:{objc_msgSend(v10, "isTransitioning")}];

  v14 = [v11 rightButtonBar];

  v15 = [v10 isTransitioning];
  [v14 setButtonGroups:MEMORY[0x1E695E0F0] animated:v15];
}

- (void)_layoutViewSet:(id)a3 forFixedCenterViewWidth:(double)a4 inBounds:(CGRect)a5 forAssistantView:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  v25 = a3;
  v9 = a6;
  v10 = [v25 viewSetContainer];
  v11 = [v10 translatesAutoresizingMaskIntoConstraints];

  if (v11)
  {
    v12 = [v25 viewSetContainer];
    [v9 bounds];
    [v12 setFrame:?];
  }

  else
  {
    [v9 resetContainerConstraints];
  }

  v13 = [v25 leftButtonBar];
  [v13 effectiveInterItemSpacing];
  v15 = v14;
  v16 = [v25 leftButtonBar];
  [v16 setEffectiveInterItemSpacing:v15];

  v17 = [v25 leftButtonBar];
  [v17 setButtonAlignment:1];

  v18 = width * 0.5 + -32.5;
  v19 = height + -50.0;
  v20 = [v25 leftButtonBar];
  [v20 setFrame:{v18, v19, 65.0, 50.0}];
  v21 = [v25 rightButtonBar];
  [v21 setFrame:{v18, v19, 65.0, 50.0}];
  v22 = [v25 centerView];
  [v22 setFrame:{v18, v19, 65.0, 50.0}];

  v23 = [v25 centerView];
  [v23 setAlpha:0.0];

  v24 = [v25 rightButtonBar];
  [v24 setAlpha:0.0];
}

@end