@interface TUISystemInputAssistantLayoutSplit
- (TUISystemInputAssistantLayoutSplit)init;
- (void)configureButtonBarsInViewSet:(id)set forApplicationAssistantItem:(id)item withSystemAssistantItem:(id)assistantItem withAssistantView:(id)view;
- (void)layoutViewSet:(id)set inBounds:(CGRect)bounds forAssistantView:(id)view;
@end

@implementation TUISystemInputAssistantLayoutSplit

- (void)layoutViewSet:(id)set inBounds:(CGRect)bounds forAssistantView:(id)view
{
  height = bounds.size.height;
  width = bounds.size.width;
  setCopy = set;
  leftButtonBar = [setCopy leftButtonBar];
  [leftButtonBar setHidden:1];

  rightButtonBar = [setCopy rightButtonBar];
  [rightButtonBar setHidden:0];

  [(TUISystemInputAssistantLayoutSplit *)self leftSplitWidth];
  v12 = v11;
  centerView = [setCopy centerView];
  [centerView setFrame:{0.0, 0.0, v12, height}];

  [(TUISystemInputAssistantLayoutSplit *)self rightSplitWidth];
  v15 = v14 + -50.0;
  rightButtonBar2 = [setCopy rightButtonBar];
  [rightButtonBar2 setButtonAlignment:2];

  rightButtonBar3 = [setCopy rightButtonBar];

  [rightButtonBar3 setFrame:{width - v15, 0.0, v15, height}];
}

- (void)configureButtonBarsInViewSet:(id)set forApplicationAssistantItem:(id)item withSystemAssistantItem:(id)assistantItem withAssistantView:(id)view
{
  viewCopy = view;
  assistantItemCopy = assistantItem;
  itemCopy = item;
  setCopy = set;
  showsCenterView = [viewCopy showsCenterView];
  centerView = [setCopy centerView];
  [centerView setHidden:showsCenterView ^ 1u];

  v18 = [(TUISystemInputAssistantLayout *)self _buttonBarGroupSetForApplicationAssistantItem:itemCopy withSystemInputAssistantItem:assistantItemCopy forAssistantView:viewCopy];

  rightButtonBar = [setCopy rightButtonBar];

  unifiedButtonGroups = [v18 unifiedButtonGroups];
  [rightButtonBar setButtonGroups:unifiedButtonGroups];
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