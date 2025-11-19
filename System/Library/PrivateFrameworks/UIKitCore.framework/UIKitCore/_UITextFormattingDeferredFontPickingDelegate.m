@interface _UITextFormattingDeferredFontPickingDelegate
- (UIResponderStandardEditActions)editResponder;
- (void)_removeAssociatedDelegate;
- (void)fontPickerViewControllerDidCancel:(id)a3;
- (void)fontPickerViewControllerDidPickFont:(id)a3;
- (void)setEditResponder:(id)a3;
@end

@implementation _UITextFormattingDeferredFontPickingDelegate

- (void)setEditResponder:(id)a3
{
  obj = a3;
  objc_setAssociatedObject(obj, &_UITextFormattingDeferredFontPickingDelegateIdentifier, self, 1);
  objc_storeWeak(&self->_editResponder, obj);
}

- (void)_removeAssociatedDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editResponder);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_editResponder);
    objc_setAssociatedObject(v4, &_UITextFormattingDeferredFontPickingDelegateIdentifier, 0, 1);
  }
}

- (void)fontPickerViewControllerDidCancel:(id)a3
{
  [a3 dismissViewControllerAnimated:1 completion:0];

  [(_UITextFormattingDeferredFontPickingDelegate *)self _removeAssociatedDelegate];
}

- (void)fontPickerViewControllerDidPickFont:(id)a3
{
  v4 = a3;
  v5 = [v4 selectedFontDescriptor];
  if (v5)
  {
    v6 = MEMORY[0x1E695DF20];
    [(_UITextFormattingDeferredFontPickingDelegate *)self fontSize];
    v7 = [off_1E70ECC18 fontWithDescriptor:v5 size:?];
    v8 = [v6 dictionaryWithObject:v7 forKey:*off_1E70EC918];

    if (v8)
    {
      v9 = [(_UITextFormattingDeferredFontPickingDelegate *)self editResponder];

      if (v9)
      {
        v10 = [(_UITextFormattingDeferredFontPickingDelegate *)self editResponder];
        SendUpdatesToEditResponder(v8, v10);
      }
    }
  }

  v11 = dispatch_time(0, 300000000);
  objc_initWeak(&location, v4);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __84___UITextFormattingDeferredFontPickingDelegate_fontPickerViewControllerDidPickFont___block_invoke;
  v15 = &unk_1E70F5A28;
  objc_copyWeak(&v16, &location);
  dispatch_after(v11, MEMORY[0x1E69E96A0], &v12);
  [(_UITextFormattingDeferredFontPickingDelegate *)self _removeAssociatedDelegate:v12];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (UIResponderStandardEditActions)editResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_editResponder);

  return WeakRetained;
}

@end