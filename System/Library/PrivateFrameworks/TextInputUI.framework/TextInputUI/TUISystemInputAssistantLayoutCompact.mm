@interface TUISystemInputAssistantLayoutCompact
- (id)_buttonBarGroupSetForApplicationAssistantItem:(id)item withSystemInputAssistantItem:(id)assistantItem forAssistantView:(id)view;
- (void)_layoutViewSet:(id)set forFixedCenterViewWidth:(double)width inBounds:(CGRect)bounds forAssistantView:(id)view;
- (void)configureButtonBarsInViewSet:(id)set forApplicationAssistantItem:(id)item withSystemAssistantItem:(id)assistantItem withAssistantView:(id)view;
- (void)invalidate:(id)invalidate;
@end

@implementation TUISystemInputAssistantLayoutCompact

- (void)invalidate:(id)invalidate
{
  v16.receiver = self;
  v16.super_class = TUISystemInputAssistantLayoutCompact;
  invalidateCopy = invalidate;
  [(TUISystemInputAssistantLayout *)&v16 invalidate:invalidateCopy];
  leftButtonBar = [invalidateCopy leftButtonBar];
  [leftButtonBar minimumInterItemSpace];
  v6 = v5;
  leftButtonBar2 = [invalidateCopy leftButtonBar];
  [leftButtonBar2 setEffectiveInterItemSpacing:v6];

  leftButtonBar3 = [invalidateCopy leftButtonBar];
  [leftButtonBar3 setButtonAlignment:0];

  rightButtonBar = [invalidateCopy rightButtonBar];
  [rightButtonBar minimumInterItemSpace];
  v11 = v10;
  rightButtonBar2 = [invalidateCopy rightButtonBar];
  [rightButtonBar2 setEffectiveInterItemSpacing:v11];

  rightButtonBar3 = [invalidateCopy rightButtonBar];
  [rightButtonBar3 setButtonAlignment:2];

  rightButtonBar4 = [invalidateCopy rightButtonBar];
  [rightButtonBar4 setAlpha:1.0];

  centerView = [invalidateCopy centerView];

  [centerView setAlpha:1.0];
}

- (id)_buttonBarGroupSetForApplicationAssistantItem:(id)item withSystemInputAssistantItem:(id)assistantItem forAssistantView:(id)view
{
  v13[1] = *MEMORY[0x1E69E9840];
  assistantItemCopy = assistantItem;
  leadingBarButtonGroups = [assistantItemCopy leadingBarButtonGroups];
  v7 = [leadingBarButtonGroups count];

  if (v7)
  {
    leadingBarButtonGroups2 = [assistantItemCopy leadingBarButtonGroups];
    firstObject = [leadingBarButtonGroups2 firstObject];
    v13[0] = firstObject;
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

- (void)configureButtonBarsInViewSet:(id)set forApplicationAssistantItem:(id)item withSystemAssistantItem:(id)assistantItem withAssistantView:(id)view
{
  viewCopy = view;
  setCopy = set;
  v16 = [(TUISystemInputAssistantLayoutCompact *)self _buttonBarGroupSetForApplicationAssistantItem:item withSystemInputAssistantItem:assistantItem forAssistantView:viewCopy];
  leftButtonBar = [setCopy leftButtonBar];
  unifiedButtonGroups = [v16 unifiedButtonGroups];
  [leftButtonBar setButtonGroups:unifiedButtonGroups animated:{objc_msgSend(viewCopy, "isTransitioning")}];

  rightButtonBar = [setCopy rightButtonBar];

  isTransitioning = [viewCopy isTransitioning];
  [rightButtonBar setButtonGroups:MEMORY[0x1E695E0F0] animated:isTransitioning];
}

- (void)_layoutViewSet:(id)set forFixedCenterViewWidth:(double)width inBounds:(CGRect)bounds forAssistantView:(id)view
{
  height = bounds.size.height;
  width = bounds.size.width;
  setCopy = set;
  viewCopy = view;
  viewSetContainer = [setCopy viewSetContainer];
  translatesAutoresizingMaskIntoConstraints = [viewSetContainer translatesAutoresizingMaskIntoConstraints];

  if (translatesAutoresizingMaskIntoConstraints)
  {
    viewSetContainer2 = [setCopy viewSetContainer];
    [viewCopy bounds];
    [viewSetContainer2 setFrame:?];
  }

  else
  {
    [viewCopy resetContainerConstraints];
  }

  leftButtonBar = [setCopy leftButtonBar];
  [leftButtonBar effectiveInterItemSpacing];
  v15 = v14;
  leftButtonBar2 = [setCopy leftButtonBar];
  [leftButtonBar2 setEffectiveInterItemSpacing:v15];

  leftButtonBar3 = [setCopy leftButtonBar];
  [leftButtonBar3 setButtonAlignment:1];

  v18 = width * 0.5 + -32.5;
  v19 = height + -50.0;
  leftButtonBar4 = [setCopy leftButtonBar];
  [leftButtonBar4 setFrame:{v18, v19, 65.0, 50.0}];
  rightButtonBar = [setCopy rightButtonBar];
  [rightButtonBar setFrame:{v18, v19, 65.0, 50.0}];
  centerView = [setCopy centerView];
  [centerView setFrame:{v18, v19, 65.0, 50.0}];

  centerView2 = [setCopy centerView];
  [centerView2 setAlpha:0.0];

  rightButtonBar2 = [setCopy rightButtonBar];
  [rightButtonBar2 setAlpha:0.0];
}

@end