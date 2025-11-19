@interface WFShortcutServiceContext
- (INUIVoiceShortcutRemoteServingInterface)delegate;
- (void)buildForAddingShortcut:(id)a3;
- (void)buildForEditingVoiceShortcut:(id)a3;
@end

@implementation WFShortcutServiceContext

- (INUIVoiceShortcutRemoteServingInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)buildForEditingVoiceShortcut:(id)a3
{
  v4 = a3;
  v5 = [(WFShortcutServiceContext *)self delegate];
  [v5 buildForEditingVoiceShortcut:v4];
}

- (void)buildForAddingShortcut:(id)a3
{
  v4 = a3;
  v5 = [(WFShortcutServiceContext *)self delegate];
  [v5 buildForAddingShortcut:v4];
}

@end