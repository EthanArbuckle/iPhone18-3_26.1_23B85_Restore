@interface SiriActivationSource
- (BOOL)isEnabled;
- (SiriActivationSource)init;
- (void)activeChangedTo:(id)to;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SiriActivationSource

- (SiriActivationSource)init
{
  v7.receiver = self;
  v7.super_class = SiriActivationSource;
  v2 = [(SiriActivationSource *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(SiriActivationSource *)self invalidate];
  v3.receiver = self;
  v3.super_class = SiriActivationSource;
  [(SiriActivationSource *)&v3 dealloc];
}

- (BOOL)isEnabled
{
  v2 = _AXSHomeButtonAssistant();
  v3 = +[SASSystemState sharedSystemState];
  if ([v3 siriIsSupported])
  {
    v4 = +[SASSystemState sharedSystemState];
    siriIsEnabled = [v4 siriIsEnabled];
    if (v2)
    {
      v6 = siriIsEnabled;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)invalidate
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v7 = 136315394;
    v8 = "[SiriActivationSource invalidate]";
    v9 = 2112;
    v10 = connection;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation invalidating BSServiceConnection %@", &v7, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(BSServiceConnection *)self->_connection invalidate];
  v5 = self->_connection;
  self->_connection = 0;

  *&self->_active = 256;
  os_unfair_lock_unlock(&self->_lock);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)activeChangedTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AD98];
    active = self->_active;
    v8 = v5;
    v9 = [v6 numberWithBool:active];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(toCopy, "BOOLValue")}];
    v12 = 136315650;
    v13 = "[SiriActivationSource activeChangedTo:]";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation old availability: %@, new availability: %@", &v12, 0x20u);
  }

  self->_active = [toCopy BOOLValue];
  self->_knowsIfActive = 1;

  v11 = *MEMORY[0x1E69E9840];
}

@end