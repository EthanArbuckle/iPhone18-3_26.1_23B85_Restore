@interface UILayoutGuide(StatusBarAdditions_Internal)
- (id)traitCollection;
- (void)_ui_addSubLayoutItem:()StatusBarAdditions_Internal;
- (void)_ui_insertSubLayoutItem:()StatusBarAdditions_Internal atIndex:;
- (void)_ui_removeFromParentLayoutItem;
@end

@implementation UILayoutGuide(StatusBarAdditions_Internal)

- (void)_ui_removeFromParentLayoutItem
{
  v2 = [a1 owningView];
  [v2 removeLayoutGuide:a1];
}

- (void)_ui_addSubLayoutItem:()StatusBarAdditions_Internal
{
  v4 = a3;
  v5 = [a1 owningView];
  [v4 _ui_addToView:v5 atIndex:-1];
}

- (void)_ui_insertSubLayoutItem:()StatusBarAdditions_Internal atIndex:
{
  v6 = a3;
  v7 = [a1 owningView];
  [v6 _ui_addToView:v7 atIndex:a4];
}

- (id)traitCollection
{
  v1 = [a1 _ui_view];
  v2 = [v1 traitCollection];

  return v2;
}

@end