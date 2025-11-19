@interface STUIStatusBarNavigationItem
- (STUIStatusBarStringView)nameView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)createDisplayItemForIdentifier:(id)a3;
- (void)_create_nameView;
@end

@implementation STUIStatusBarNavigationItem

- (STUIStatusBarStringView)nameView
{
  nameView = self->_nameView;
  if (!nameView)
  {
    [(STUIStatusBarNavigationItem *)self _create_nameView];
    nameView = self->_nameView;
  }

  return nameView;
}

- (void)_create_nameView
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  nameView = self->_nameView;
  self->_nameView = v4;

  LODWORD(v6) = 1132068864;
  [(STUIStatusBarStringView *)self->_nameView setContentCompressionResistancePriority:0 forAxis:v6];
  v7 = self->_nameView;

  [(STUIStatusBarStringView *)v7 setAccessibilityIdentifier:@"breadcrumb"];
}

- (id)createDisplayItemForIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarNavigationItem;
  v3 = [(STUIStatusBarItem *)&v6 createDisplayItemForIdentifier:a3];
  v4 = +[STUIStatusBarSystemNavigationAction backNavigationAction];
  [v3 setAction:v4];

  [v3 setActionInsets:{-100.0, -20.0, -10.0, -20.0}];

  return v3;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = STUIStatusBarNavigationItem;
  v7 = [(STUIStatusBarItem *)&v19 applyUpdate:v6 toDisplayItem:a4];
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

    v12 = MEMORY[0x277CCACA8];
    v13 = [v6 data];
    v14 = [v13 backNavigationEntry];
    v15 = [v14 stringValue];
    v16 = [v12 localizedStringWithFormat:v11, v15];

    v17 = [(STUIStatusBarNavigationItem *)self nameView];
    [v17 setText:v16];
  }

  return v7;
}

@end