@interface WFSingleStepHomeScreenShortcutCompletionDialogRequest
- (WFSingleStepHomeScreenShortcutCompletionDialogRequest)initWithShortcutName:(id)a3 applicationBundleIdentifier:(id)a4;
@end

@implementation WFSingleStepHomeScreenShortcutCompletionDialogRequest

- (WFSingleStepHomeScreenShortcutCompletionDialogRequest)initWithShortcutName:(id)a3 applicationBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69E0A90] currentDevice];
  v9 = [v8 hasSystemAperture];

  if ((v9 & 1) != 0 || ![v6 length])
  {
    if ([v6 length])
    {
      v13 = v6;
    }

    else
    {
      v13 = WFLocalizedString(@"Shortcuts");
    }

    v12 = v13;
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = WFLocalizedString(@"%@ │ Shortcuts");
    v12 = [v10 localizedStringWithFormat:v11, v6];
  }

  v14 = [objc_alloc(MEMORY[0x1E69E0960]) initWithBundleIdentifier:v7];
  v15 = [objc_alloc(MEMORY[0x1E69E0A98]) initWithTitle:v12 icon:v14];
  v20.receiver = self;
  v20.super_class = WFSingleStepHomeScreenShortcutCompletionDialogRequest;
  v16 = [(WFDialogRequest *)&v20 initWithAttribution:v15 prompt:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_applicationBundleIdentifier, a4);
    v17->_requiresRunningShortcut = 0;
    v18 = v17;
  }

  return v17;
}

@end