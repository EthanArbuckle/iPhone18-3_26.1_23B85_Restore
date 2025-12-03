@interface WFShortcutServiceContext
- (INUIVoiceShortcutRemoteServingInterface)delegate;
- (void)buildForAddingShortcut:(id)shortcut;
- (void)buildForEditingVoiceShortcut:(id)shortcut;
@end

@implementation WFShortcutServiceContext

- (INUIVoiceShortcutRemoteServingInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)buildForEditingVoiceShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  delegate = [(WFShortcutServiceContext *)self delegate];
  [delegate buildForEditingVoiceShortcut:shortcutCopy];
}

- (void)buildForAddingShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  delegate = [(WFShortcutServiceContext *)self delegate];
  [delegate buildForAddingShortcut:shortcutCopy];
}

@end