@interface TVRCKeyboardController
- (NSString)text;
- (TVRCKeyboardControllerDelegate)delegate;
- (id)_initWithDevice:(id)device;
- (void)_setCurrentState:(id)state;
- (void)sendReturnKey;
- (void)setText:(id)text;
@end

@implementation TVRCKeyboardController

- (id)_initWithDevice:(id)device
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = TVRCKeyboardController;
  v5 = [(TVRCKeyboardController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_device, deviceCopy);
    v6->_editing = 0;
    attributes = v6->_attributes;
    v6->_attributes = 0;

    text = v6->_text;
    v6->_text = &stru_287E5AB30;
  }

  return v6;
}

- (NSString)text
{
  if (self->_text)
  {
    return self->_text;
  }

  else
  {
    return &stru_287E5AB30;
  }
}

- (void)setText:(id)text
{
  v4 = [text copy];
  text = self->_text;
  self->_text = v4;

  v9 = +[TVRCXPCClient sharedInstance];
  v6 = self->_text;
  WeakRetained = objc_loadWeakRetained(&self->_device);
  identifier = [WeakRetained identifier];
  [v9 sendInputText:v6 toDeviceWithIdentifier:identifier];
}

- (void)sendReturnKey
{
  v5 = +[TVRCXPCClient sharedInstance];
  WeakRetained = objc_loadWeakRetained(&self->_device);
  identifier = [WeakRetained identifier];
  [v5 sendInputReturnKeyToDeviceWithIdentifier:identifier];
}

- (void)_setCurrentState:(id)state
{
  if (!state)
  {
    return;
  }

  editing = self->_editing;
  v24 = self->_text;
  v6 = self->_attributes;
  stateCopy = state;
  self->_editing = [stateCopy isEditing];
  text = [stateCopy text];
  v9 = [text copy];
  text = self->_text;
  self->_text = v9;

  attributes = [stateCopy attributes];

  attributes = self->_attributes;
  self->_attributes = attributes;

  if (editing)
  {
    if (!self->_editing)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = objc_loadWeakRetained(&self->_delegate);
        [v15 keyboardControllerEndedTextEditing:self];
      }
    }

    if (!self->_editing)
    {
      goto LABEL_18;
    }

    if (![(NSString *)v24 isEqualToString:self->_text])
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        v18 = objc_loadWeakRetained(&self->_delegate);
        [v18 keyboardController:self didUpdateText:self->_text];
      }
    }

    if ([(TVRCKeyboardAttributes *)v6 isEqualToAttributes:self->_attributes])
    {
      goto LABEL_18;
    }

    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if ((v20 & 1) == 0)
    {
      goto LABEL_18;
    }

    v21 = objc_loadWeakRetained(&self->_delegate);
    [v21 keyboardController:self didUpdateAttributes:self->_attributes];
    goto LABEL_17;
  }

  if (self->_editing)
  {
    v22 = objc_loadWeakRetained(&self->_delegate);
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v21 = objc_loadWeakRetained(&self->_delegate);
      [v21 keyboardController:self beganTextEditingWithAttributes:self->_attributes];
LABEL_17:
    }
  }

LABEL_18:
}

- (TVRCKeyboardControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end