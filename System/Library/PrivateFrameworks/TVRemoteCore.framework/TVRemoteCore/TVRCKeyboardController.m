@interface TVRCKeyboardController
- (NSString)text;
- (TVRCKeyboardControllerDelegate)delegate;
- (id)_initWithDevice:(id)a3;
- (void)_setCurrentState:(id)a3;
- (void)sendReturnKey;
- (void)setText:(id)a3;
@end

@implementation TVRCKeyboardController

- (id)_initWithDevice:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TVRCKeyboardController;
  v5 = [(TVRCKeyboardController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_device, v4);
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

- (void)setText:(id)a3
{
  v4 = [a3 copy];
  text = self->_text;
  self->_text = v4;

  v9 = +[TVRCXPCClient sharedInstance];
  v6 = self->_text;
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v8 = [WeakRetained identifier];
  [v9 sendInputText:v6 toDeviceWithIdentifier:v8];
}

- (void)sendReturnKey
{
  v5 = +[TVRCXPCClient sharedInstance];
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v4 = [WeakRetained identifier];
  [v5 sendInputReturnKeyToDeviceWithIdentifier:v4];
}

- (void)_setCurrentState:(id)a3
{
  if (!a3)
  {
    return;
  }

  editing = self->_editing;
  v24 = self->_text;
  v6 = self->_attributes;
  v7 = a3;
  self->_editing = [v7 isEditing];
  v8 = [v7 text];
  v9 = [v8 copy];
  text = self->_text;
  self->_text = v9;

  v11 = [v7 attributes];

  attributes = self->_attributes;
  self->_attributes = v11;

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