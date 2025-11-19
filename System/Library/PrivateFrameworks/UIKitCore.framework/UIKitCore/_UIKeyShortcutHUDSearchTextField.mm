@interface _UIKeyShortcutHUDSearchTextField
- (CGRect)clearButtonRectForBounds:(CGRect)a3;
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)rightViewRectForBounds:(CGRect)a3;
- (id)preferredFocusEnvironments;
- (void)buildMenuWithBuilder:(id)a3;
- (void)setShortcutInputView:(id)a3;
@end

@implementation _UIKeyShortcutHUDSearchTextField

- (void)setShortcutInputView:(id)a3
{
  v5 = a3;
  if (self->_shortcutInputView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_shortcutInputView, a3);
    [(UITextField *)self setRightView:v6];
    [(UITextField *)self setRightViewMode:2];
    v5 = v6;
  }
}

- (CGRect)rightViewRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self->_shortcutInputView systemLayoutSizeFittingSize:a3.size.width, a3.size.height];
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

- (CGRect)clearButtonRectForBounds:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = _UIKeyShortcutHUDSearchTextField;
  [(UISearchTextField *)&v21 clearButtonRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [MEMORY[0x1E696B098] valueWithUIOffset:{-4.0, 0.0}];
  v13 = [(UIView *)self effectiveUserInterfaceLayoutDirection];
  if (v12)
  {
    v14 = v13;
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

- (CGRect)editingRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIView *)self effectiveUserInterfaceLayoutDirection];
  v9 = +[UIKeyShortcutHUDMetrics currentMetrics];
  [v9 searchButtonWidth];
  v11 = v10 + -23.0;

  if (v8 == UIUserInterfaceLayoutDirectionRightToLeft)
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
    v4 = [WeakRetained preferredFocusEnvironments];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIKeyShortcutHUDSearchTextField;
    v4 = [(UIView *)&v7 preferredFocusEnvironments];
  }

  v5 = v4;

  return v5;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIKeyShortcutHUDSearchTextField;
  [(UIResponder *)&v7 buildMenuWithBuilder:v4];
  v5 = [v4 system];
  v6 = +[UIMenuSystem contextSystem];

  if (v5 == v6)
  {
    [v4 removeMenuForIdentifier:@"com.apple.menu.share"];
    [v4 removeMenuForIdentifier:@"com.apple.menu.lookup"];
    [v4 removeMenuForIdentifier:@"com.apple.menu.autofill"];
  }
}

@end