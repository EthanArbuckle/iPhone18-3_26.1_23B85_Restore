@interface _UIStatusBarNameItem
- (_UIStatusBarStringView)nameView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)dependentEntryKeys;
- (void)_create_nameView;
@end

@implementation _UIStatusBarNameItem

- (id)dependentEntryKeys
{
  v2 = MEMORY[0x1E695DFD8];
  nameEntryKey = [(_UIStatusBarNameItem *)self nameEntryKey];
  v4 = [v2 setWithObject:nameEntryKey];

  return v4;
}

- (_UIStatusBarStringView)nameView
{
  nameView = self->_nameView;
  if (!nameView)
  {
    [(_UIStatusBarNameItem *)self _create_nameView];
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
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = _UIStatusBarNameItem;
  v8 = [(_UIStatusBarItem *)&v16 applyUpdate:updateCopy toDisplayItem:itemCopy];
  if ([updateCopy dataChanged])
  {
    data = [updateCopy data];
    nameEntryKey = [(_UIStatusBarNameItem *)self nameEntryKey];
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
      nameView = [(_UIStatusBarNameItem *)self nameView];
      [nameView setText:stringValue];
    }
  }

  return v8;
}

@end