@interface _UIStickerPickerKeyboardSession
- (_UIStickerPickerKeyboardSessionDelegate)delegate;
- (void)presentWithTextInput:(id)a3 view:(id)a4;
- (void)stickerPickerViewControllerDidDismiss;
@end

@implementation _UIStickerPickerKeyboardSession

- (void)presentWithTextInput:(id)a3 view:(id)a4
{
  v29 = a3;
  v7 = a4;
  objc_storeStrong(&self->_textInput, a3);
  objc_storeStrong(&self->_view, a4);
  v8 = objc_alloc_init(_UIStickerPickerViewController);
  stickerPicker = self->_stickerPicker;
  self->_stickerPicker = v8;

  [(_UIStickerPickerViewController *)self->_stickerPicker setIsLaunchedFromKeyboard:1];
  [(_UIStickerPickerViewController *)self->_stickerPicker setDelegate:self];
  v10 = [v7 _viewControllerForAncestor];
  v11 = [v10 presentedViewController];

  if (v11)
  {
    do
    {
      v12 = [v10 presentedViewController];

      v13 = [v12 presentedViewController];

      v10 = v12;
    }

    while (v13);
  }

  else
  {
    v12 = v10;
  }

  v14 = [v29 selectedTextRange];
  v15 = [v14 start];

  [v29 caretRectForPosition:v15];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(_UIStickerPickerViewController *)self->_stickerPicker setSourceView:v7];
  [(_UIStickerPickerViewController *)self->_stickerPicker setSourceRect:v17, v19, v21, v23];
  v24 = [v7 _window];
  v25 = [v24 _isTextEffectsWindow];

  if ((v25 & 1) != 0 || (+[UITextInputPayloadController sharedInstance](UITextInputPayloadController, "sharedInstance"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 supportsStickerTapbackPayload], v26, v27))
  {
    v28 = objc_alloc_init(_UIFallbackPresentationViewController);
    [(UIApplicationRotationFollowingController *)v28 setSizesWindowToScene:1];
    [(_UIFallbackPresentationViewController *)v28 _presentViewController:self->_stickerPicker sendingView:v7 animated:0];
  }

  else
  {
    [v12 presentViewController:self->_stickerPicker animated:0 completion:0];
  }
}

- (void)stickerPickerViewControllerDidDismiss
{
  textInput = self->_textInput;
  self->_textInput = 0;

  view = self->_view;
  self->_view = 0;

  stickerPicker = self->_stickerPicker;
  self->_stickerPicker = 0;

  v6 = [(_UIStickerPickerKeyboardSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_UIStickerPickerKeyboardSession *)self delegate];
    [v8 stickerPickerKeyboardSessionDidFinish];
  }
}

- (_UIStickerPickerKeyboardSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end