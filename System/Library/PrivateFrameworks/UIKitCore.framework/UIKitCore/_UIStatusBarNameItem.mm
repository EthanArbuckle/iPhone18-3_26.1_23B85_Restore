@interface _UIStatusBarNameItem
- (_UIStatusBarStringView)nameView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)dependentEntryKeys;
- (void)_create_nameView;
@end

@implementation _UIStatusBarNameItem

- (id)dependentEntryKeys
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(_UIStatusBarNameItem *)self nameEntryKey];
  v4 = [v2 setWithObject:v3];

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

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = _UIStatusBarNameItem;
  v8 = [(_UIStatusBarItem *)&v16 applyUpdate:v6 toDisplayItem:v7];
  if ([v6 dataChanged])
  {
    v9 = [v6 data];
    v10 = [(_UIStatusBarNameItem *)self nameEntryKey];
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
      v14 = [(_UIStatusBarNameItem *)self nameView];
      [v14 setText:v13];
    }
  }

  return v8;
}

@end