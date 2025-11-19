@interface TVRCRapportRemoteTextInputKeyboardImpl
- (TVRXKeyboardController)keyboardController;
- (id)text;
- (void)_receivedInputSourceSession:(id)a3;
- (void)_stopObservingTelevisionEditingSession;
- (void)handleTextActionPayload:(id)a3;
- (void)inputSessionDidBegin:(id)a3;
- (void)inputSessionDidDie:(id)a3;
- (void)inputSessionDidEnd:(id)a3;
- (void)setCompanionLinkWrapper:(id)a3;
- (void)setTextActionPayload:(id)a3;
@end

@implementation TVRCRapportRemoteTextInputKeyboardImpl

- (void)setCompanionLinkWrapper:(id)a3
{
  v5 = a3;
  p_companionLinkWrapper = &self->_companionLinkWrapper;
  companionLinkWrapper = self->_companionLinkWrapper;
  if (companionLinkWrapper != v5)
  {
    [(TVRCRPCompanionLinkClientWrapper *)companionLinkWrapper setRTISessionHandler:0];
    objc_storeStrong(&self->_companionLinkWrapper, a3);
    objc_initWeak(&location, self);
    v8 = self->_companionLinkWrapper;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__TVRCRapportRemoteTextInputKeyboardImpl_setCompanionLinkWrapper___block_invoke;
    v12[3] = &unk_279D83228;
    objc_copyWeak(&v13, &location);
    [(TVRCRPCompanionLinkClientWrapper *)v8 getCurrentRTISourceSession:v12];
    v9 = *p_companionLinkWrapper;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__TVRCRapportRemoteTextInputKeyboardImpl_setCompanionLinkWrapper___block_invoke_1;
    v10[3] = &unk_279D83250;
    objc_copyWeak(&v11, &location);
    [(TVRCRPCompanionLinkClientWrapper *)v9 setRTISessionHandler:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __66__TVRCRapportRemoteTextInputKeyboardImpl_setCompanionLinkWrapper___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = _TVRCRemoteTextInputLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __66__TVRCRapportRemoteTextInputKeyboardImpl_setCompanionLinkWrapper___block_invoke_cold_1(v6, v8);
      }
    }

    else if (v5)
    {
      v9 = _TVRCRemoteTextInputLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Keyboard connected to existing RemoteTextInput source session during setup", v10, 2u);
      }

      [WeakRetained _receivedInputSourceSession:v5];
    }
  }
}

void __66__TVRCRapportRemoteTextInputKeyboardImpl_setCompanionLinkWrapper___block_invoke_1(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _TVRCRemoteTextInputLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Keyboard received callback for RemoteTextInput session", v6, 2u);
    }

    [WeakRetained _receivedInputSourceSession:v3];
  }
}

- (id)text
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(RTIInputSystemDataPayload *)self->_cachedInputSystemDataPayload documentState];
  v4 = [v3 documentState];
  v5 = [v4 contextBeforeInput];

  v6 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSString *)self->_cachedText length];
    v12 = 134218240;
    v13 = v7;
    v14 = 2048;
    v15 = [v5 length];
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Cached text length:%lu remote text length: %lu", &v12, 0x16u);
  }

  cachedText = self->_cachedText;
  v9 = cachedText;

  v10 = *MEMORY[0x277D85DE8];
  return cachedText;
}

- (void)setTextActionPayload:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[TVRCRapportRemoteTextInputKeyboardImpl setTextActionPayload:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s - payload: %@", &v13, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 documentState];
    v7 = [v6 documentState];
    v8 = [v7 contextBeforeInput];

    v9 = _TVRCRemoteTextInputLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 length];
      v13 = 134217984;
      v14 = v10;
      _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Keyboard RemoteTextInput send payload string length: %lu", &v13, 0xCu);
    }
  }

  v11 = [(RTIInputSystemSourceSession *)self->_currentSession payloadDelegate];
  [v11 handleTextActionPayload:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)inputSessionDidBegin:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    editing = self->_editing;
    v8[0] = 67109120;
    v8[1] = editing;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Keyboard RemoteTextInput source session did begin isEditing: %{BOOL}d", v8, 8u);
  }

  if (!self->_editing)
  {
    self->_editing = 1;
    WeakRetained = objc_loadWeakRetained(&self->_keyboardController);
    [WeakRetained _editingSessionBeganWithAttributes:self->_currentAttributes];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)inputSessionDidEnd:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    editing = self->_editing;
    v8[0] = 67109120;
    v8[1] = editing;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Keyboard RemoteTextInput source session did end isEditing: %{BOOL}d", v8, 8u);
  }

  if (self->_editing)
  {
    self->_editing = 0;
    WeakRetained = objc_loadWeakRetained(&self->_keyboardController);
    [WeakRetained _editingSessionEnded];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)inputSessionDidDie:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    editing = self->_editing;
    v8[0] = 67109120;
    v8[1] = editing;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Keyboard RemoteTextInput source session did die isEditing: %{BOOL}d", v8, 8u);
  }

  if (self->_editing)
  {
    self->_editing = 0;
    WeakRetained = objc_loadWeakRetained(&self->_keyboardController);
    [WeakRetained _editingSessionEnded];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleTextActionPayload:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = _TVRCRemoteTextInputLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      v24 = v4;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Keyboard RemoteTextInput received text action payload: %{public}@", &v23, 0xCu);
    }

    v6 = MEMORY[0x277D46160];
    v7 = [v4 data];
    v8 = [v6 payloadWithData:v7 version:{objc_msgSend(v4, "version")}];

    objc_storeStrong(&self->_cachedInputSystemDataPayload, v8);
    v9 = [v8 documentState];
    v10 = [v9 documentState];
    v11 = [v10 contextBeforeInput];

    objc_storeStrong(&self->_cachedText, v11);
    v12 = _TVRCRemoteTextInputLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 length];
      v23 = 134217984;
      v24 = v13;
      _os_log_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEFAULT, "Keyboard RemoteTextInput received payload string length: %lu", &v23, 0xCu);
    }

    v14 = [[TVRCKeyboardAttributes alloc] _init];
    currentAttributes = self->_currentAttributes;
    self->_currentAttributes = v14;

    [(TVRCKeyboardAttributes *)self->_currentAttributes setRtiDataPayload:v4];
    v16 = [(RTIInputSystemSourceSession *)self->_currentSession documentTraits];
    v17 = [v16 prompt];

    v18 = self->_currentAttributes;
    if (v17)
    {
      [(TVRCKeyboardAttributes *)self->_currentAttributes setTitle:v17];
    }

    else
    {
      v19 = [(RTIInputSystemSourceSession *)self->_currentSession documentTraits];
      v20 = [v19 title];
      [(TVRCKeyboardAttributes *)v18 setTitle:v20];
    }

    if (self->_editing)
    {
      WeakRetained = objc_loadWeakRetained(&self->_keyboardController);
      [WeakRetained _editingSessionUpdatedAttributes:self->_currentAttributes];
    }

    else
    {
      self->_editing = 1;
      WeakRetained = objc_loadWeakRetained(&self->_keyboardController);
      [WeakRetained _editingSessionBeganWithAttributes:self->_currentAttributes];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingTelevisionEditingSession
{
  v3 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stop observing TV editing session", v6, 2u);
  }

  [(RTIInputSystemSourceSession *)self->_currentSession removeSessionDelegate:self];
  [(RTIInputSystemSourceSession *)self->_currentSession setForwardingPayloadDelegate:0];
  currentSession = self->_currentSession;
  self->_currentSession = 0;

  cachedText = self->_cachedText;
  self->_cachedText = 0;
}

- (void)_receivedInputSourceSession:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentSession = self->_currentSession;
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = currentSession;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "_receivedInputSourceSession: newSession: %@ currentSession: %@", &v12, 0x16u);
  }

  v8 = self->_currentSession;
  if (v8 != v5)
  {
    [(RTIInputSystemSourceSession *)v8 setForwardingPayloadDelegate:0];
    [(RTIInputSystemSourceSession *)self->_currentSession removeSessionDelegate:self];
    cachedInputSystemDataPayload = self->_cachedInputSystemDataPayload;
    self->_cachedInputSystemDataPayload = 0;

    objc_storeStrong(&self->_currentSession, a3);
    [(RTIInputSystemSourceSession *)self->_currentSession addSessionDelegate:self];
    [(RTIInputSystemSourceSession *)self->_currentSession setForwardingPayloadDelegate:self];
    v10 = [(RTIInputSystemSourceSession *)self->_currentSession currentForwardingDataPayload];
    [(TVRCRapportRemoteTextInputKeyboardImpl *)self handleTextActionPayload:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (TVRXKeyboardController)keyboardController
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardController);

  return WeakRetained;
}

void __66__TVRCRapportRemoteTextInputKeyboardImpl_setCompanionLinkWrapper___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Keyboard failed to fetch current RemoteTextInput source session from television. Error %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end