@interface TUISystemInputAssistantLayoutSplit
- (TUISystemInputAssistantLayoutSplit)init;
- (void)configureButtonBarsInViewSet:(id)a3 forApplicationAssistantItem:(id)a4 withSystemAssistantItem:(id)a5 withAssistantView:(id)a6;
- (void)layoutViewSet:(id)a3 inBounds:(CGRect)a4 forAssistantView:(id)a5;
@end

@implementation TUISystemInputAssistantLayoutSplit

- (void)layoutViewSet:(id)a3 inBounds:(CGRect)a4 forAssistantView:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  v8 = a3;
  v9 = [v8 leftButtonBar];
  [v9 setHidden:1];

  v10 = [v8 rightButtonBar];
  [v10 setHidden:0];

  [(TUISystemInputAssistantLayoutSplit *)self leftSplitWidth];
  v12 = v11;
  v13 = [v8 centerView];
  [v13 setFrame:{0.0, 0.0, v12, height}];

  [(TUISystemInputAssistantLayoutSplit *)self rightSplitWidth];
  v15 = v14 + -50.0;
  v16 = [v8 rightButtonBar];
  [v16 setButtonAlignment:2];

  v17 = [v8 rightButtonBar];

  [v17 setFrame:{width - v15, 0.0, v15, height}];
}

- (void)configureButtonBarsInViewSet:(id)a3 forApplicationAssistantItem:(id)a4 withSystemAssistantItem:(id)a5 withAssistantView:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 showsCenterView];
  v15 = [v13 centerView];
  [v15 setHidden:v14 ^ 1u];

  v18 = [(TUISystemInputAssistantLayout *)self _buttonBarGroupSetForApplicationAssistantItem:v12 withSystemInputAssistantItem:v11 forAssistantView:v10];

  v16 = [v13 rightButtonBar];

  v17 = [v18 unifiedButtonGroups];
  [v16 setButtonGroups:v17];
}

- (TUISystemInputAssistantLayoutSplit)init
{
  v5.receiver = self;
  v5.super_class = TUISystemInputAssistantLayoutSplit;
  v2 = [(TUISystemInputAssistantLayoutSplit *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TUISystemInputAssistantLayoutSplit *)v2 setRightSplitWidth:260.0];
    [(TUISystemInputAssistantLayoutSplit *)v3 setLeftSplitWidth:260.0];
  }

  return v3;
}

@end