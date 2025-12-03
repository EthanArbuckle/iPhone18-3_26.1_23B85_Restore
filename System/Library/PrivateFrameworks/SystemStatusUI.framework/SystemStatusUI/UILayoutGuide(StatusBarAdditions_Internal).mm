@interface UILayoutGuide(StatusBarAdditions_Internal)
- (id)traitCollection;
- (void)_ui_addSubLayoutItem:()StatusBarAdditions_Internal;
- (void)_ui_insertSubLayoutItem:()StatusBarAdditions_Internal atIndex:;
- (void)_ui_removeFromParentLayoutItem;
@end

@implementation UILayoutGuide(StatusBarAdditions_Internal)

- (void)_ui_removeFromParentLayoutItem
{
  owningView = [self owningView];
  [owningView removeLayoutGuide:self];
}

- (void)_ui_addSubLayoutItem:()StatusBarAdditions_Internal
{
  v4 = a3;
  owningView = [self owningView];
  [v4 _ui_addToView:owningView atIndex:-1];
}

- (void)_ui_insertSubLayoutItem:()StatusBarAdditions_Internal atIndex:
{
  v6 = a3;
  owningView = [self owningView];
  [v6 _ui_addToView:owningView atIndex:a4];
}

- (id)traitCollection
{
  _ui_view = [self _ui_view];
  traitCollection = [_ui_view traitCollection];

  return traitCollection;
}

@end