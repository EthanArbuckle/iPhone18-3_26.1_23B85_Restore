@interface WBSAddSavedAccountValidationAlertConfiguration
+ (id)alertSubtitleForFailedAccountCreationWithErrorCode:(int64_t)code forUserTypedSite:(id)site userTypedUsername:(id)username highLevelDomain:(id)domain;
+ (id)alertTitleForFailedAccountCreationWithErrorCode:(int64_t)code;
@end

@implementation WBSAddSavedAccountValidationAlertConfiguration

+ (id)alertTitleForFailedAccountCreationWithErrorCode:(int64_t)code
{
  if ((code - 2) >= 2)
  {
    if (code == 1)
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

+ (id)alertSubtitleForFailedAccountCreationWithErrorCode:(int64_t)code forUserTypedSite:(id)site userTypedUsername:(id)username highLevelDomain:(id)domain
{
  siteCopy = site;
  usernameCopy = username;
  domainCopy = domain;
  if (code <= 2)
  {
    if (code == 1)
    {
      v13 = @"Add a complete website address to allow this password to AutoFill in Safari and other apps.";
      goto LABEL_13;
    }

    if (code != 2)
    {
      goto LABEL_14;
    }

    v14 = MEMORY[0x1E696AEC0];
    v15 = _WBSLocalizedString(@"A password for “%@” on “%@” already exists.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    [v14 localizedStringWithFormat:v15, usernameCopy, siteCopy];
    v17 = LABEL_10:;

    goto LABEL_16;
  }

  if (code == 3)
  {
    v16 = MEMORY[0x1E696AEC0];
    v15 = _WBSLocalizedString(@"A password for “%@” on “%@” already exists.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    [v16 localizedStringWithFormat:v15, usernameCopy, domainCopy];
    goto LABEL_10;
  }

  if (code == 4)
  {
    v13 = @"To save a password, you need to provide either a website, app name, or label.";
    goto LABEL_13;
  }

  if (code != 5)
  {
LABEL_14:
    alertUnknownErrorStringForFailedAccountCreation = [self alertUnknownErrorStringForFailedAccountCreation];
    goto LABEL_15;
  }

  v13 = @"Cannot add password to this group.";
LABEL_13:
  alertUnknownErrorStringForFailedAccountCreation = _WBSLocalizedString(v13, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
LABEL_15:
  v17 = alertUnknownErrorStringForFailedAccountCreation;
LABEL_16:

  return v17;
}

@end