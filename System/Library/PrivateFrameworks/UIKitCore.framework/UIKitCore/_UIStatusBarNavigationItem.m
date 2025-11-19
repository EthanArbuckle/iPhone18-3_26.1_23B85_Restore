@interface _UIStatusBarNavigationItem
- (_UIStatusBarStringView)nameView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)createDisplayItemForIdentifier:(id)a3;
- (void)_create_nameView;
@end

@implementation _UIStatusBarNavigationItem

- (id)createDisplayItemForIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarNavigationItem;
  v3 = [(_UIStatusBarItem *)&v6 createDisplayItemForIdentifier:a3];
  v4 = +[_UIStatusBarSystemNavigationAction backNavigationAction];
  [v3 setAction:v4];

  [v3 setActionInsets:{-100.0, -20.0, -10.0, -20.0}];

  return v3;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = _UIStatusBarNavigationItem;
  v7 = [(_UIStatusBarItem *)&v19 applyUpdate:v6 toDisplayItem:a4];
  if (([v6 dataChanged] & 1) != 0 || objc_msgSend(v6, "styleAttributesChanged"))
  {
    v8 = [v6 styleAttributes];
    v9 = [v8 effectiveLayoutDirection];
    v10 = @"\u200E◀︎ %@";
    if (v9 == 1)
    {
      v10 = @"\u200F▶︎ %@";
    }

    v11 = v10;

    v12 = MEMORY[0x1E696AEC0];
    v13 = [v6 data];
    v14 = [v13 backNavigationEntry];
    v15 = [v14 stringValue];
    v16 = [v12 localizedStringWithFormat:v11, v15];

    v17 = [(_UIStatusBarNavigationItem *)self nameView];
    [v17 setText:v16];
  }

  return v7;
}

- (_UIStatusBarStringView)nameView
{
  nameView = self->_nameView;
  if (!nameView)
  {
    [(_UIStatusBarNavigationItem *)self _create_nameView];
    nameView = self->_nameView;
  }

  return nameView;
}

- (void)_create_nameView
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  nameView = self->_nameView;
  self->_nameView = v4;

  LODWORD(v6) = 1132068864;
  [(UIView *)self->_nameView setContentCompressionResistancePriority:0 forAxis:v6];
  v7 = self->_nameView;

  [v7 setAccessibilityIdentifier:@"breadcrumb"];
}

@end