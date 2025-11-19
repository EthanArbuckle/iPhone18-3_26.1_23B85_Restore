@interface STUIStatusBarNameItem
- (STUIStatusBarStringView)nameView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)dependentEntryKeys;
- (void)_create_nameView;
@end

@implementation STUIStatusBarNameItem

- (id)dependentEntryKeys
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(STUIStatusBarNameItem *)self nameEntryKey];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (STUIStatusBarStringView)nameView
{
  nameView = self->_nameView;
  if (!nameView)
  {
    [(STUIStatusBarNameItem *)self _create_nameView];
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

  MEMORY[0x2821F96F8](v4, nameView);
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = STUIStatusBarNameItem;
  v8 = [(STUIStatusBarItem *)&v16 applyUpdate:v6 toDisplayItem:v7];
  if ([v6 dataChanged])
  {
    v9 = [v6 data];
    v10 = [(STUIStatusBarNameItem *)self nameEntryKey];
    v11 = [v9 valueForKey:v10];

    if ([v7 isEnabled])
    {
      v12 = [v11 isEnabled];
    }

    else
    {
      v12 = 0;
    }

    [v7 setEnabled:v12];
    if ([v7 isEnabled])
    {
      v13 = [v11 stringValue];
      v14 = [(STUIStatusBarNameItem *)self nameView];
      [v14 setText:v13];
    }
  }

  return v8;
}

@end