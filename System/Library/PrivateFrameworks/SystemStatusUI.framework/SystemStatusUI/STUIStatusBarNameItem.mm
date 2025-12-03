@interface STUIStatusBarNameItem
- (STUIStatusBarStringView)nameView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)dependentEntryKeys;
- (void)_create_nameView;
@end

@implementation STUIStatusBarNameItem

- (id)dependentEntryKeys
{
  v2 = MEMORY[0x277CBEB98];
  nameEntryKey = [(STUIStatusBarNameItem *)self nameEntryKey];
  v4 = [v2 setWithObject:nameEntryKey];

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

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = STUIStatusBarNameItem;
  v8 = [(STUIStatusBarItem *)&v16 applyUpdate:updateCopy toDisplayItem:itemCopy];
  if ([updateCopy dataChanged])
  {
    data = [updateCopy data];
    nameEntryKey = [(STUIStatusBarNameItem *)self nameEntryKey];
    v11 = [data valueForKey:nameEntryKey];

    if ([itemCopy isEnabled])
    {
      isEnabled = [v11 isEnabled];
    }

    else
    {
      isEnabled = 0;
    }

    [itemCopy setEnabled:isEnabled];
    if ([itemCopy isEnabled])
    {
      stringValue = [v11 stringValue];
      nameView = [(STUIStatusBarNameItem *)self nameView];
      [nameView setText:stringValue];
    }
  }

  return v8;
}

@end