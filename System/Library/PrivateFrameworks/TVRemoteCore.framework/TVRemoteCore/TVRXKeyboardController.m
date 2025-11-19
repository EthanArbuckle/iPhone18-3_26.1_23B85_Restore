@interface TVRXKeyboardController
- (NSString)text;
- (TVRXKeyboardControllerDelegate)delegate;
- (id)_init;
- (void)_beginSessionWithAttributes:(id)a3;
- (void)_editingSessionUpdatedAttributes:(id)a3;
- (void)_editingSessionUpdatedText:(id)a3;
- (void)_endSession;
- (void)_setKeyboardImpl:(id)a3;
- (void)sendTextActionPayload:(id)a3;
- (void)setText:(id)a3;
@end

@implementation TVRXKeyboardController

- (id)_init
{
  v3.receiver = self;
  v3.super_class = TVRXKeyboardController;
  return [(TVRXKeyboardController *)&v3 init];
}

- (NSString)text
{
  v2 = [(TVRXKeyboardImpl *)self->_keyboardImpl text];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_287E5AB30;
  }

  v5 = v4;

  return &v4->isa;
}

- (void)setText:(id)a3
{
  v4 = &stru_287E5AB30;
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  [(TVRXKeyboardImpl *)self->_keyboardImpl setText:v5];
}

- (void)sendTextActionPayload:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  keyboardImpl = self->_keyboardImpl;
  if (objc_opt_respondsToSelector())
  {
    v6 = _TVRCRemoteTextInputLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[TVRXKeyboardController sendTextActionPayload:]";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "%s - payload: %@", &v8, 0x16u);
    }

    [(TVRXKeyboardImpl *)self->_keyboardImpl setTextActionPayload:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setKeyboardImpl:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    keyboardImpl = self->_keyboardImpl;
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = keyboardImpl;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Setting kbimpl: new: %@ old: %@", &v14, 0x16u);
  }

  p_keyboardImpl = &self->_keyboardImpl;
  v8 = self->_keyboardImpl;
  if (v8 != v5)
  {
    v10 = [(TVRXKeyboardImpl *)v8 isEditing];
    [(TVRXKeyboardImpl *)*p_keyboardImpl setKeyboardController:0];
    v11 = *p_keyboardImpl;
    *p_keyboardImpl = 0;

    if (v10)
    {
      [(TVRXKeyboardController *)self _endSession];
    }

    objc_storeStrong(&self->_keyboardImpl, a3);
    [(TVRXKeyboardImpl *)self->_keyboardImpl setKeyboardController:self];
    if ([(TVRXKeyboardImpl *)self->_keyboardImpl isEditing])
    {
      v12 = [(TVRXKeyboardImpl *)self->_keyboardImpl attributes];
      [(TVRXKeyboardController *)self _beginSessionWithAttributes:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_editingSessionUpdatedText:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained keyboardController:self didUpdateText:v5];
  }
}

- (void)_editingSessionUpdatedAttributes:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained keyboardController:self didUpdateAttributes:v5];
  }
}

- (void)_beginSessionWithAttributes:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained keyboardController:self beganTextEditingWithAttributes:v5];
  }
}

- (void)_endSession
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained keyboardControllerEndedTextEditing:self];
  }
}

- (TVRXKeyboardControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end