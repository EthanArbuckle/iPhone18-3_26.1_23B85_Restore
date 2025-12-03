@interface _UIDocumentPickerNavigationItem
- (_UIDocumentPickerNavigationItem)initWithTitle:(id)title rightBarButtonItem:(id)item;
@end

@implementation _UIDocumentPickerNavigationItem

- (_UIDocumentPickerNavigationItem)initWithTitle:(id)title rightBarButtonItem:(id)item
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIDocumentPickerNavigationItem;
  v5 = [(UINavigationItem *)&v8 initWithTitle:title];
  if (v5)
  {
    v9[0] = item;
    v7.receiver = v5;
    v7.super_class = _UIDocumentPickerNavigationItem;
    -[UINavigationItem setRightBarButtonItems:animated:](&v7, sel_setRightBarButtonItems_animated_, [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1], 0);
  }

  return v5;
}

@end