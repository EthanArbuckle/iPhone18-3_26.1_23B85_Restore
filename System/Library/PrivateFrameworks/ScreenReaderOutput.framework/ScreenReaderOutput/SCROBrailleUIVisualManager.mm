@interface SCROBrailleUIVisualManager
- (AXUIClient)uiClient;
- (SCROBrailleUIAppDelegate)delegate;
- (SCROBrailleUIVisualManager)initWithDelegate:(id)a3;
- (void)_sendMessage:(id)a3 withIdentifier:(int64_t)a4;
- (void)updateEnabledStatus;
- (void)updateWith:(id)a3;
@end

@implementation SCROBrailleUIVisualManager

- (SCROBrailleUIVisualManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCROBrailleUIVisualManager;
  v5 = [(SCROBrailleUIVisualManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = +[SCROBrailleUISettingsManager sharedInstance];
    v6->_isEnabled = [v7 isVisualsEnabled];
  }

  return v6;
}

- (void)updateEnabledStatus
{
  v3 = +[SCROBrailleUISettingsManager sharedInstance];
  self->_isEnabled = [v3 isVisualsEnabled];
}

- (AXUIClient)uiClient
{
  if (uiClient_onceToken != -1)
  {
    [SCROBrailleUIVisualManager uiClient];
  }

  v3 = uiClient__uiClient;

  return v3;
}

uint64_t __38__SCROBrailleUIVisualManager_uiClient__block_invoke()
{
  v0 = [objc_alloc(getAXUIClientClass()) initWithIdentifier:@"BRUI" serviceBundleName:@"BrailleUI"];
  uiClient__uiClient = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (void)updateWith:(id)a3
{
  v4 = [a3 dictionaryForUIMessage];
  [(SCROBrailleUIVisualManager *)self _sendMessage:v4 withIdentifier:2];
}

- (void)_sendMessage:(id)a3 withIdentifier:(int64_t)a4
{
  v6 = a3;
  if ([(SCROBrailleUIVisualManager *)self isEnabled])
  {
    v7 = [(SCROBrailleUIVisualManager *)self uiClient];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__SCROBrailleUIVisualManager__sendMessage_withIdentifier___block_invoke;
    v8[3] = &__block_descriptor_40_e34_v24__0__NSDictionary_8__NSError_16l;
    v8[4] = a4;
    [v7 sendAsynchronousMessage:v6 withIdentifier:a4 targetAccessQueue:0 completion:v8];
  }
}

void __58__SCROBrailleUIVisualManager__sendMessage_withIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = _SCROD_LOG();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_26490B000, v5, OS_LOG_TYPE_DEFAULT, "BrailleUI's AXClient received an error after sending a message with identifier %@: %@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (SCROBrailleUIAppDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end