@interface WFSharingSettings
+ (BOOL)isPrivateSharingEnabled;
+ (BOOL)shortcutFileSharingEnabled;
+ (id)privateSharingDisabledAlertWithShortcutName:(id)a3;
+ (id)privateSharingDisabledErrorWithShortcutName:(id)a3;
+ (id)sharingDisabledAlertWithShortcutName:(id)a3;
+ (id)sharingDisabledAlertWithWorkflowName:(id)a3;
+ (id)shortcutFileSharingDisabledAlert;
+ (id)shortcutFileSharingDisabledError;
@end

@implementation WFSharingSettings

+ (id)privateSharingDisabledAlertWithShortcutName:(id)a3
{
  v3 = MEMORY[0x1E6996C70];
  v4 = [a1 privateSharingDisabledErrorWithShortcutName:a3];
  v5 = [v3 alertWithError:v4];

  return v5;
}

+ (id)privateSharingDisabledErrorWithShortcutName:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = WFLocalizedString(@"“%@” Can’t Be Imported");
    v6 = [v4 localizedStringWithFormat:v5, v3];
  }

  else
  {
    v6 = WFLocalizedString(@"Shortcut Cannot Be Imported");
  }

  if ([v3 length])
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"The shortcut “%@” was received from someone you know, but it cannot be opened because Private Sharing is disabled in your Shortcuts settings.");
    v9 = [v7 localizedStringWithFormat:v8, v3];
  }

  else
  {
    v9 = WFLocalizedString(@"This shortcut was received from someone you may know, but it cannot be opened because Private Sharing is disabled in your Shortcuts settings.");
  }

  v10 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A588];
  v16[0] = *MEMORY[0x1E696A578];
  v16[1] = v11;
  v17[0] = v9;
  v17[1] = v6;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [v10 errorWithDomain:@"WFShortcutSharingErrorDomain" code:2 userInfo:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (BOOL)isPrivateSharingEnabled
{
  v2 = +[WFSecuredPreferences standardPreferences];
  v3 = [v2 BOOLForKey:@"WFShortcutsPrivateSharingEnabled"];

  return v3;
}

+ (id)shortcutFileSharingDisabledError
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v9[0] = *MEMORY[0x1E696A578];
  v3 = WFLocalizedString(@"Importing unsigned shortcut files is not supported. Please use another sharing option.");
  v10[0] = v3;
  v9[1] = *MEMORY[0x1E696A588];
  v4 = WFLocalizedString(@"Shortcut Cannot Be Opened");
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = [v2 errorWithDomain:@"WFShortcutSharingErrorDomain" code:0 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)shortcutFileSharingDisabledAlert
{
  v2 = MEMORY[0x1E6996C70];
  v3 = [a1 shortcutFileSharingDisabledError];
  v4 = [v2 alertWithError:v3];

  return v4;
}

+ (id)sharingDisabledAlertWithShortcutName:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = WFLocalizedString(@"“%@” Can’t Be Opened");
    v6 = [v4 localizedStringWithFormat:v5, v3];
  }

  else
  {
    v6 = WFLocalizedString(@"Shortcut Cannot Be Opened");
  }

  v7 = WFLocalizedString(@"This shortcut cannot be opened because your Shortcuts security settings don’t allow untrusted shortcuts.");
  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A588];
  v14[0] = *MEMORY[0x1E696A578];
  v14[1] = v9;
  v15[0] = v7;
  v15[1] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [v8 errorWithDomain:@"WFShortcutSharingErrorDomain" code:2 userInfo:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)sharingDisabledAlertWithWorkflowName:(id)a3
{
  v3 = MEMORY[0x1E6996C70];
  v4 = [a1 sharingDisabledAlertWithShortcutName:a3];
  v5 = [v3 alertWithError:v4];

  return v5;
}

+ (BOOL)shortcutFileSharingEnabled
{
  v2 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v3 = [v2 BOOLForKey:@"WFShortcutsFileSharingEnabled"];

  return v3;
}

@end