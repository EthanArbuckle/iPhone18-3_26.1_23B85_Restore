@interface _UITextFormattingDeferredColorPickingDelegate
- (UIResponderStandardEditActions)editResponder;
- (void)_removeAssociatedDelegate;
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
- (void)colorPickerViewControllerDidFinish:(id)finish;
- (void)setEditResponder:(id)responder;
@end

@implementation _UITextFormattingDeferredColorPickingDelegate

- (void)setEditResponder:(id)responder
{
  obj = responder;
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

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!continuously)
  {
    v11 = *off_1E70EC920;
    v12[0] = color;
    v6 = MEMORY[0x1E695DF20];
    colorCopy = color;
    v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

    editResponder = [(_UITextFormattingDeferredColorPickingDelegate *)self editResponder];

    if (editResponder)
    {
      editResponder2 = [(_UITextFormattingDeferredColorPickingDelegate *)self editResponder];
      SendUpdatesToEditResponder(v8, editResponder2);
    }
  }
}

- (void)colorPickerViewControllerDidFinish:(id)finish
{
  [finish dismissViewControllerAnimated:1 completion:0];

  [(_UITextFormattingDeferredColorPickingDelegate *)self _removeAssociatedDelegate];
}

- (UIResponderStandardEditActions)editResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_editResponder);

  return WeakRetained;
}

@end