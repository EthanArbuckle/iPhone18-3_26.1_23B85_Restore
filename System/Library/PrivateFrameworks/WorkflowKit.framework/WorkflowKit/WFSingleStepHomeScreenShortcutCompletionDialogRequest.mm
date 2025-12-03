@interface WFSingleStepHomeScreenShortcutCompletionDialogRequest
- (WFSingleStepHomeScreenShortcutCompletionDialogRequest)initWithShortcutName:(id)name applicationBundleIdentifier:(id)identifier;
@end

@implementation WFSingleStepHomeScreenShortcutCompletionDialogRequest

- (WFSingleStepHomeScreenShortcutCompletionDialogRequest)initWithShortcutName:(id)name applicationBundleIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  hasSystemAperture = [currentDevice hasSystemAperture];

  if ((hasSystemAperture & 1) != 0 || ![nameCopy length])
  {
    if ([nameCopy length])
    {
      v13 = nameCopy;
    }

    else
    {
      v13 = WFLocalizedString(@"Shortcuts");
    }

    nameCopy = v13;
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = WFLocalizedString(@"%@ │ Shortcuts");
    nameCopy = [v10 localizedStringWithFormat:v11, nameCopy];
  }

  v14 = [objc_alloc(MEMORY[0x1E69E0960]) initWithBundleIdentifier:identifierCopy];
  v15 = [objc_alloc(MEMORY[0x1E69E0A98]) initWithTitle:nameCopy icon:v14];
  v20.receiver = self;
  v20.super_class = WFSingleStepHomeScreenShortcutCompletionDialogRequest;
  v16 = [(WFDialogRequest *)&v20 initWithAttribution:v15 prompt:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_applicationBundleIdentifier, identifier);
    v17->_requiresRunningShortcut = 0;
    v18 = v17;
  }

  return v17;
}

@end