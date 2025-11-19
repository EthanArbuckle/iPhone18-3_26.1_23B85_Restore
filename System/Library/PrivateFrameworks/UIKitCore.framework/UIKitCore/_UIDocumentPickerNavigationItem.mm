@interface _UIDocumentPickerNavigationItem
- (_UIDocumentPickerNavigationItem)initWithTitle:(id)a3 rightBarButtonItem:(id)a4;
@end

@implementation _UIDocumentPickerNavigationItem

- (_UIDocumentPickerNavigationItem)initWithTitle:(id)a3 rightBarButtonItem:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIDocumentPickerNavigationItem;
  v5 = [(UINavigationItem *)&v8 initWithTitle:a3];
  if (v5)
  {
    v9[0] = a4;
    v7.receiver = v5;
    v7.super_class = _UIDocumentPickerNavigationItem;
    -[UINavigationItem setRightBarButtonItems:animated:](&v7, sel_setRightBarButtonItems_animated_, [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1], 0);
  }

  return v5;
}

@end