@interface _UIKeyShortcutHUDSearchTextField
- (CGRect)clearButtonRectForBounds:(CGRect)bounds;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (id)preferredFocusEnvironments;
- (void)buildMenuWithBuilder:(id)builder;
- (void)setShortcutInputView:(id)view;
@end

@implementation _UIKeyShortcutHUDSearchTextField

- (void)setShortcutInputView:(id)view
{
  viewCopy = view;
  if (self->_shortcutInputView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_shortcutInputView, view);
    [(UITextField *)self setRightView:v6];
    [(UITextField *)self setRightViewMode:2];
    viewCopy = v6;
  }
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self->_shortcutInputView systemLayoutSizeFittingSize:bounds.size.width, bounds.size.height];
  v8 = v7;
  v10 = v9;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v11 = CGRectGetWidth(v16) - v8 + -10.0;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v12 = (CGRectGetHeight(v17) - v10) * 0.5;
  v13 = v11;
  v14 = v8;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds
{
  v21.receiver = self;
  v21.super_class = _UIKeyShortcutHUDSearchTextField;
  [(UISearchTextField *)&v21 clearButtonRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [MEMORY[0x1E696B098] valueWithUIOffset:{-4.0, 0.0}];
  effectiveUserInterfaceLayoutDirection = [(UIView *)self effectiveUserInterfaceLayoutDirection];
  if (v12)
  {
    v14 = effectiveUserInterfaceLayoutDirection;
    [v12 UIOffsetValue];
    if (v14 == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      v15 = -v15;
    }

    v5 = v5 + v15;
    v7 = v7 + v16;
  }

  v17 = v5;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  effectiveUserInterfaceLayoutDirection = [(UIView *)self effectiveUserInterfaceLayoutDirection];
  v9 = +[UIKeyShortcutHUDMetrics currentMetrics];
  [v9 searchButtonWidth];
  v11 = v10 + -23.0;

  if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v12 = 8.0;
  }

  else
  {
    v12 = v11;
  }

  v20.receiver = self;
  v20.super_class = _UIKeyShortcutHUDSearchTextField;
  [(UISearchTextField *)&v20 editingRectForBounds:x, y, width, height];
  v15 = v12 + v14;
  v17 = v16 - (v11 + 8.0);
  v19 = v18 + 0.0;
  result.size.height = v13;
  result.size.width = v17;
  result.origin.y = v19;
  result.origin.x = v15;
  return result;
}

- (id)preferredFocusEnvironments
{
  objc_opt_self();
  WeakRetained = objc_loadWeakRetained(&_currentHUDCollectionViewManager);
  if ([WeakRetained nextFocusUpdatePrefersTopSearchResult])
  {
    preferredFocusEnvironments = [WeakRetained preferredFocusEnvironments];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIKeyShortcutHUDSearchTextField;
    preferredFocusEnvironments = [(UIView *)&v7 preferredFocusEnvironments];
  }

  v5 = preferredFocusEnvironments;

  return v5;
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = _UIKeyShortcutHUDSearchTextField;
  [(UIResponder *)&v7 buildMenuWithBuilder:builderCopy];
  system = [builderCopy system];
  v6 = +[UIMenuSystem contextSystem];

  if (system == v6)
  {
    [builderCopy removeMenuForIdentifier:@"com.apple.menu.share"];
    [builderCopy removeMenuForIdentifier:@"com.apple.menu.lookup"];
    [builderCopy removeMenuForIdentifier:@"com.apple.menu.autofill"];
  }
}

@end