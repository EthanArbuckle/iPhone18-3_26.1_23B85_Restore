@interface _UITextFormattingDeferredColorPickingDelegate
- (UIResponderStandardEditActions)editResponder;
- (void)_removeAssociatedDelegate;
- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5;
- (void)colorPickerViewControllerDidFinish:(id)a3;
- (void)setEditResponder:(id)a3;
@end

@implementation _UITextFormattingDeferredColorPickingDelegate

- (void)setEditResponder:(id)a3
{
  obj = a3;
  objc_setAssociatedObject(obj, &_UITextFormattingDeferredColorPickingDelegateIdentifier, self, 1);
  objc_storeWeak(&self->_editResponder, obj);
}

- (void)_removeAssociatedDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editResponder);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_editResponder);
    objc_setAssociatedObject(v4, &_UITextFormattingDeferredColorPickingDelegateIdentifier, 0, 1);
  }
}

- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v11 = *off_1E70EC920;
    v12[0] = a4;
    v6 = MEMORY[0x1E695DF20];
    v7 = a4;
    v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

    v9 = [(_UITextFormattingDeferredColorPickingDelegate *)self editResponder];

    if (v9)
    {
      v10 = [(_UITextFormattingDeferredColorPickingDelegate *)self editResponder];
      SendUpdatesToEditResponder(v8, v10);
    }
  }
}

- (void)colorPickerViewControllerDidFinish:(id)a3
{
  [a3 dismissViewControllerAnimated:1 completion:0];

  [(_UITextFormattingDeferredColorPickingDelegate *)self _removeAssociatedDelegate];
}

- (UIResponderStandardEditActions)editResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_editResponder);

  return WeakRetained;
}

@end