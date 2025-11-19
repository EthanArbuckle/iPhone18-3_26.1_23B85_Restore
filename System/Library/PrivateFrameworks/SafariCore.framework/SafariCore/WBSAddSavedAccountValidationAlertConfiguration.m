@interface WBSAddSavedAccountValidationAlertConfiguration
+ (id)alertSubtitleForFailedAccountCreationWithErrorCode:(int64_t)a3 forUserTypedSite:(id)a4 userTypedUsername:(id)a5 highLevelDomain:(id)a6;
+ (id)alertTitleForFailedAccountCreationWithErrorCode:(int64_t)a3;
@end

@implementation WBSAddSavedAccountValidationAlertConfiguration

+ (id)alertTitleForFailedAccountCreationWithErrorCode:(int64_t)a3
{
  if ((a3 - 2) >= 2)
  {
    if (a3 == 1)
    {
      v4 = @"Incomplete Website Address";
    }

    else
    {
      v4 = @"Cannot Add Password";
    }
  }

  else
  {
    v4 = @"Password Already Exists";
  }

  v5 = _WBSLocalizedString(v4, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);

  return v5;
}

+ (id)alertSubtitleForFailedAccountCreationWithErrorCode:(int64_t)a3 forUserTypedSite:(id)a4 userTypedUsername:(id)a5 highLevelDomain:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v13 = @"Add a complete website address to allow this password to AutoFill in Safari and other apps.";
      goto LABEL_13;
    }

    if (a3 != 2)
    {
      goto LABEL_14;
    }

    v14 = MEMORY[0x1E696AEC0];
    v15 = _WBSLocalizedString(@"A password for “%@” on “%@” already exists.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    [v14 localizedStringWithFormat:v15, v11, v10];
    v17 = LABEL_10:;

    goto LABEL_16;
  }

  if (a3 == 3)
  {
    v16 = MEMORY[0x1E696AEC0];
    v15 = _WBSLocalizedString(@"A password for “%@” on “%@” already exists.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    [v16 localizedStringWithFormat:v15, v11, v12];
    goto LABEL_10;
  }

  if (a3 == 4)
  {
    v13 = @"To save a password, you need to provide either a website, app name, or label.";
    goto LABEL_13;
  }

  if (a3 != 5)
  {
LABEL_14:
    v18 = [a1 alertUnknownErrorStringForFailedAccountCreation];
    goto LABEL_15;
  }

  v13 = @"Cannot add password to this group.";
LABEL_13:
  v18 = _WBSLocalizedString(v13, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
LABEL_15:
  v17 = v18;
LABEL_16:

  return v17;
}

@end