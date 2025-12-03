@interface _UIStickerPickerKeyboardSession
- (_UIStickerPickerKeyboardSessionDelegate)delegate;
- (void)presentWithTextInput:(id)input view:(id)view;
- (void)stickerPickerViewControllerDidDismiss;
@end

@implementation _UIStickerPickerKeyboardSession

- (void)presentWithTextInput:(id)input view:(id)view
{
  inputCopy = input;
  viewCopy = view;
  objc_storeStrong(&self->_textInput, input);
  objc_storeStrong(&self->_view, view);
  v8 = objc_alloc_init(_UIStickerPickerViewController);
  stickerPicker = self->_stickerPicker;
  self->_stickerPicker = v8;

  [(_UIStickerPickerViewController *)self->_stickerPicker setIsLaunchedFromKeyboard:1];
  [(_UIStickerPickerViewController *)self->_stickerPicker setDelegate:self];
  _viewControllerForAncestor = [viewCopy _viewControllerForAncestor];
  presentedViewController = [_viewControllerForAncestor presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [_viewControllerForAncestor presentedViewController];

      v12PresentedViewController = [presentedViewController2 presentedViewController];

      _viewControllerForAncestor = presentedViewController2;
    }

    while (v12PresentedViewController);
  }

  else
  {
    presentedViewController2 = _viewControllerForAncestor;
  }

  selectedTextRange = [inputCopy selectedTextRange];
  start = [selectedTextRange start];

  [inputCopy caretRectForPosition:start];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(_UIStickerPickerViewController *)self->_stickerPicker setSourceView:viewCopy];
  [(_UIStickerPickerViewController *)self->_stickerPicker setSourceRect:v17, v19, v21, v23];
  _window = [viewCopy _window];
  _isTextEffectsWindow = [_window _isTextEffectsWindow];

  if ((_isTextEffectsWindow & 1) != 0 || (+[UITextInputPayloadController sharedInstance](UITextInputPayloadController, "sharedInstance"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 supportsStickerTapbackPayload], v26, v27))
  {
    v28 = objc_alloc_init(_UIFallbackPresentationViewController);
    [(UIApplicationRotationFollowingController *)v28 setSizesWindowToScene:1];
    [(_UIFallbackPresentationViewController *)v28 _presentViewController:self->_stickerPicker sendingView:viewCopy animated:0];
  }

  else
  {
    [presentedViewController2 presentViewController:self->_stickerPicker animated:0 completion:0];
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

  delegate = [(_UIStickerPickerKeyboardSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(_UIStickerPickerKeyboardSession *)self delegate];
    [delegate2 stickerPickerKeyboardSessionDidFinish];
  }
}

- (_UIStickerPickerKeyboardSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end