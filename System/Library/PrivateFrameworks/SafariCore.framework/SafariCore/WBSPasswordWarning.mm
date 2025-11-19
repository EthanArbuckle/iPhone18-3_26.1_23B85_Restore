@interface WBSPasswordWarning
- (BOOL)hasBeenHidden;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldShowWarningsWhenLoggingIn;
- (NSString)localizedAlertWarningForSharingReusedPassword;
- (NSString)localizedBody;
- (NSString)localizedHeadline;
- (NSString)localizedInformationTextForWarningWhenLoggingIn;
- (NSString)localizedShortDescriptionOfProblemType;
- (NSString)localizedShortDescriptivePhrase;
- (WBSPasswordWarning)initWithSavedAccount:(id)a3 issueTypes:(unint64_t)a4 weakPasswordEvaluation:(id)a5 titlesOfSavedAccountsWithReusedPassword:(id)a6 savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)a7;
- (id)_localizedLongWarningStringsForClient:(unint64_t)a3;
- (id)_localizedShortDescriptionOfMultipleIssuesWithFullDescriptivePhrase:(BOOL)a3;
- (id)_localizedShortDescriptionOfSingleIssueWithFullDescriptivePhrase:(BOOL)a3;
- (id)localizedLongDescriptionForClient:(unint64_t)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hashForUserAcknowlegement;
- (unint64_t)severity;
- (void)_addFormerlySharedWarningStringToWarningStrings:(id)a3;
- (void)_addReusedWarningStringToWarningStrings:(id)a3;
@end

@implementation WBSPasswordWarning

- (WBSPasswordWarning)initWithSavedAccount:(id)a3 issueTypes:(unint64_t)a4 weakPasswordEvaluation:(id)a5 titlesOfSavedAccountsWithReusedPassword:(id)a6 savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v22.receiver = self;
  v22.super_class = WBSPasswordWarning;
  v16 = [(WBSPasswordWarning *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_savedAccount, a3);
    v17->_issueTypes = a4;
    objc_storeStrong(&v17->_weakPasswordEvaluation, a5);
    v18 = [v15 copy];
    titlesOfSavedAccountsWithReusedPassword = v17->_titlesOfSavedAccountsWithReusedPassword;
    v17->_titlesOfSavedAccountsWithReusedPassword = v18;

    v17->_savedAccountIsOnlySavedAccountForHighLevelDomain = a7;
    v20 = v17;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WBSSavedAccount *)self->_savedAccount isEqual:v5->_savedAccount]&& self->_issueTypes == v5->_issueTypes && [(WBSPasswordEvaluation *)self->_weakPasswordEvaluation isEqual:v5->_weakPasswordEvaluation]&& self->_savedAccountIsOnlySavedAccountForHighLevelDomain == v5->_savedAccountIsOnlySavedAccountForHighLevelDomain;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)severity
{
  result = self->_issueTypes;
  if (result)
  {
    if (result == 64)
    {
      return 3;
    }

    else if (self->_severityScore > 9)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (BOOL)shouldShowWarningsWhenLoggingIn
{
  if ([(WBSPasswordWarning *)self hasBeenCompromised])
  {
    return 1;
  }

  weakPasswordEvaluation = self->_weakPasswordEvaluation;

  return [(WBSPasswordEvaluation *)weakPasswordEvaluation userShouldBeShownActiveWarning];
}

- (NSString)localizedShortDescriptivePhrase
{
  v3 = +[WBSFeatureAvailability isPasswordsAppInstalled]^ 1;

  return [(WBSPasswordWarning *)self _localizedShortDescriptionWithFullDescriptivePhrase:1 shouldDescribeMultipleIssues:v3];
}

- (NSString)localizedShortDescriptionOfProblemType
{
  v3 = +[WBSFeatureAvailability isPasswordsAppInstalled]^ 1;

  return [(WBSPasswordWarning *)self _localizedShortDescriptionWithFullDescriptivePhrase:0 shouldDescribeMultipleIssues:v3];
}

- (id)_localizedShortDescriptionOfMultipleIssuesWithFullDescriptivePhrase:(BOOL)a3
{
  issueTypes = self->_issueTypes;
  if ((issueTypes & 0xC) != 0)
  {
    if ((~issueTypes & 0x30) == 0)
    {
      if (a3)
      {
        v5 = @"Compromised password, previously shared passkey and password";
        goto LABEL_34;
      }

LABEL_33:
      v5 = @"Compromised, previously shared";
      goto LABEL_34;
    }

    if ((issueTypes & 0x10) != 0)
    {
      if (a3)
      {
        v5 = @"Compromised, previously shared password";
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if ((issueTypes & 0x20) != 0)
    {
      if (a3)
      {
        v5 = @"Compromised password, previously shared passkey";
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (issueTypes)
    {
      if (a3)
      {
        v5 = @"Compromised, reused password";
      }

      else
      {
        v5 = @"Compromised, reused";
      }
    }

    else if ((issueTypes & 2) != 0)
    {
      if (a3)
      {
        v5 = @"Compromised, easily guessed password";
      }

      else
      {
        v5 = @"Compromised, easily guessed";
      }
    }

    else if (a3)
    {
      v5 = @"Compromised password";
    }

    else
    {
      v5 = @"Compromised";
    }

LABEL_34:
    v6 = _WBSLocalizedString(v5, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);

    return v6;
  }

  if ((~issueTypes & 3) == 0)
  {
    if (a3)
    {
      v5 = @"Easily guessed, reused password";
    }

    else
    {
      v5 = @"Easily guessed, reused";
    }

    goto LABEL_34;
  }

  if ((issueTypes & 2) != 0)
  {
    if (a3)
    {
      v5 = @"Easily guessed password";
    }

    else
    {
      v5 = @"Easily guessed";
    }

    goto LABEL_34;
  }

  if (issueTypes)
  {
    if (a3)
    {
      v5 = @"Reused password";
    }

    else
    {
      v5 = @"Reused";
    }

    goto LABEL_34;
  }

  if ((~issueTypes & 0x30) == 0)
  {
    if (a3)
    {
      v5 = @"Previously shared passkey and password";
      goto LABEL_34;
    }

LABEL_53:
    v5 = @"Previously shared";
    goto LABEL_34;
  }

  if ((issueTypes & 0x10) != 0)
  {
    if (a3)
    {
      v5 = @"Previously shared password";
      goto LABEL_34;
    }

    goto LABEL_53;
  }

  if ((issueTypes & 0x20) != 0)
  {
    if (a3)
    {
      v5 = @"Previously shared passkey";
      goto LABEL_34;
    }

    goto LABEL_53;
  }

  v6 = 0;

  return v6;
}

- (id)_localizedShortDescriptionOfSingleIssueWithFullDescriptivePhrase:(BOOL)a3
{
  issueTypes = self->_issueTypes;
  if ((issueTypes & 0xC) != 0)
  {
    if (a3)
    {
      v5 = @"Compromised password";
    }

    else
    {
      v5 = @"Compromised";
    }

    goto LABEL_27;
  }

  if ((issueTypes & 2) != 0)
  {
    if (a3)
    {
      v5 = @"Easily guessed password";
    }

    else
    {
      v5 = @"Easily guessed";
    }

LABEL_27:
    v6 = _WBSLocalizedString(v5, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);

    return v6;
  }

  if (issueTypes)
  {
    if (a3)
    {
      v5 = @"Reused password";
    }

    else
    {
      v5 = @"Reused";
    }

    goto LABEL_27;
  }

  if ((~issueTypes & 0x30) == 0)
  {
    if (a3)
    {
      v5 = @"Previously shared passkey and password";
      goto LABEL_27;
    }

LABEL_26:
    v5 = @"Previously shared";
    goto LABEL_27;
  }

  if ((issueTypes & 0x10) != 0)
  {
    if (a3)
    {
      v5 = @"Previously shared password";
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((issueTypes & 0x20) != 0)
  {
    if (a3)
    {
      v5 = @"Previously shared passkey";
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v6 = 0;

  return v6;
}

- (id)_localizedLongWarningStringsForClient:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  issueTypes = self->_issueTypes;
  if ((issueTypes & 8) != 0)
  {
    v7 = _WBSLocalizedString(@"This password has appeared in a data leak, which puts this account at high risk of compromise.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    [v5 addObject:v7];

    issueTypes = self->_issueTypes;
  }

  if ((issueTypes & 4) != 0)
  {
    v8 = _WBSLocalizedString(@"Many people use this password, which makes it easy to guess.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    [v5 addObject:v8];
  }

  v9 = [v5 count];
  v10 = self->_issueTypes;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = (self->_issueTypes & 2) == 0;
  }

  if (!v11)
  {
    v12 = [(WBSPasswordEvaluation *)self->_weakPasswordEvaluation userFeedbackStringWithPasswordVisibility:[(WBSPasswordWarning *)self _passwordVisibilityForClient:a3]];
    if (v12)
    {
      [v5 addObject:v12];
    }

    v10 = self->_issueTypes;
  }

  if ((v10 & 0x30) != 0)
  {
    [(WBSPasswordWarning *)self _addFormerlySharedWarningStringToWarningStrings:v5];
  }

  if ([v5 count] <= 1)
  {
    [(WBSPasswordWarning *)self _addReusedWarningStringToWarningStrings:v5];
  }

  if ([v5 count])
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (void)_addReusedWarningStringToWarningStrings:(id)a3
{
  v26 = a3;
  v4 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword count];
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      v5 = v4 == 3;
      v6 = v26;
      if (v5)
      {
        v10 = [v26 count];
        v11 = MEMORY[0x1E696AEC0];
        if (v10)
        {
          v12 = @"You’re also reusing this password on “%@”, “%@”, and “%@”, which increases the risk to this account if one of those accounts is compromised.";
        }

        else
        {
          v12 = @"You’re reusing this password on “%@”, “%@”, and “%@”, which increases the risk to this account if one of those accounts is compromised.";
        }

        v18 = _WBSLocalizedString(v12, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
        v19 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:0];
        v20 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:1];
        v24 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:2];
        v25 = [v11 stringWithFormat:v18, v19, v20, v24];
        [v26 addObject:v25];

        goto LABEL_26;
      }

      goto LABEL_12;
    }

    v16 = [v26 count];
    v8 = MEMORY[0x1E696AEC0];
    if (v16)
    {
      v17 = @"You’re also reusing this password on “%@” and “%@”, which increases the risk to this account if one of those accounts is compromised.";
    }

    else
    {
      v17 = @"You’re reusing this password on “%@” and “%@”, which increases the risk to this account if one of those accounts is compromised.";
    }

    v18 = _WBSLocalizedString(v17, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    v19 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:0];
    titlesOfSavedAccountsWithReusedPassword = self->_titlesOfSavedAccountsWithReusedPassword;
    v23 = 1;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_27;
    }

    v5 = v4 == 1;
    v6 = v26;
    if (!v5)
    {
LABEL_12:
      v13 = [v6 count];
      v14 = MEMORY[0x1E696AEC0];
      if (v13)
      {
        v15 = @"You’re also reusing this password on other websites, including “%@”, “%@”, and %lu more. This increases the risk to this account if one of those accounts is compromised.";
      }

      else
      {
        v15 = @"You’re reusing this password on other websites, including “%@”, “%@”, and %lu more. This increases the risk to this account if one of those accounts is compromised.";
      }

      v18 = _WBSLocalizedString(v15, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
      v19 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:0];
      v20 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:1];
      v21 = [v14 localizedStringWithFormat:v18, v19, v20, -[NSArray count](self->_titlesOfSavedAccountsWithReusedPassword, "count") - 2];
      goto LABEL_25;
    }

    v7 = [v26 count];
    v8 = MEMORY[0x1E696AEC0];
    if (v7)
    {
      v9 = @"You’re also reusing this password on “%@”, which increases the risk to this account if your “%@” account is compromised.";
    }

    else
    {
      v9 = @"You’re reusing this password on “%@”, which increases the risk to this account if your “%@” account is compromised.";
    }

    v18 = _WBSLocalizedString(v9, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    v19 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:0];
    titlesOfSavedAccountsWithReusedPassword = self->_titlesOfSavedAccountsWithReusedPassword;
    v23 = 0;
  }

  v20 = [(NSArray *)titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:v23];
  v21 = [v8 stringWithFormat:v18, v19, v20];
LABEL_25:
  v24 = v21;
  [v26 addObject:v21];
LABEL_26:

LABEL_27:
}

- (void)_addFormerlySharedWarningStringToWarningStrings:(id)a3
{
  v23 = a3;
  v4 = (self->_issueTypes >> 4) & 3;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v11 = [(WBSSavedAccount *)self->_savedAccount formerlySharedPasskeyMarker];
      v6 = [v11 nameOfGroupCredentialWasLastSharedIn];

      v12 = [v23 count];
      v13 = [v6 length];
      if (v12)
      {
        if (v13)
        {
          v9 = MEMORY[0x1E696AEC0];
          v10 = @"You also previously shared this passkey with the group “%@”. You should change this passkey if you want to ensure that members of that group no longer have access to this account.";
          goto LABEL_22;
        }

        v22 = @"You also previously shared this passkey with a group. You should change this passkey if you want to ensure that members of that group no longer have access to this account.";
      }

      else
      {
        if (v13)
        {
          v9 = MEMORY[0x1E696AEC0];
          v10 = @"You previously shared this passkey with the group “%@”. You should change this passkey if you want to ensure that members of that group no longer have access to this account.";
          goto LABEL_22;
        }

        v22 = @"You previously shared this passkey with a group. You should change this passkey if you want to ensure that members of that group no longer have access to this account.";
      }
    }

    else
    {
      v14 = [(WBSSavedAccount *)self->_savedAccount formerlySharedPasswordMarker];
      v15 = [v14 nameOfGroupCredentialWasLastSharedIn];
      v16 = v15;
      if (v15)
      {
        v6 = v15;
      }

      else
      {
        v17 = [(WBSSavedAccount *)self->_savedAccount formerlySharedPasskeyMarker];
        v6 = [v17 nameOfGroupCredentialWasLastSharedIn];
      }

      v18 = [v23 count];
      v19 = [v6 length];
      if (v18)
      {
        if (v19)
        {
          v9 = MEMORY[0x1E696AEC0];
          v10 = @"You also previously shared this passkey and this password with the group “%@”. You should change them if you want to ensure that members of that group no longer have access to this account.";
          goto LABEL_22;
        }

        v22 = @"You also previously shared this passkey and this password with a group. You should change them if you want to ensure that members of that group no longer have access to this account.";
      }

      else
      {
        if (v19)
        {
          v9 = MEMORY[0x1E696AEC0];
          v10 = @"You previously shared this passkey and this password with the group “%@”. You should change them if you want to ensure that members of that group no longer have access to this account.";
          goto LABEL_22;
        }

        v22 = @"You previously shared this passkey and this password with a group. You should change them if you want to ensure that members of that group no longer have access to this account.";
      }
    }

LABEL_29:
    v20 = _WBSLocalizedString(v22, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    [v23 addObject:v20];
    goto LABEL_30;
  }

  if (!v4)
  {
    goto LABEL_31;
  }

  v5 = [(WBSSavedAccount *)self->_savedAccount formerlySharedPasswordMarker];
  v6 = [v5 nameOfGroupCredentialWasLastSharedIn];

  v7 = [v23 count];
  v8 = [v6 length];
  if (!v7)
  {
    if (v8)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = @"You previously shared this password with the group “%@”. You should change this password if you want to ensure that members of that group no longer have access to this account.";
      goto LABEL_22;
    }

    v22 = @"You previously shared this password with a group. You should change this password if you want to ensure that members of that group no longer have access to this account.";
    goto LABEL_29;
  }

  if (!v8)
  {
    v22 = @"You also previously shared this password with a group. You should change this password if you want to ensure that members of that group no longer have access to this account.";
    goto LABEL_29;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = @"You also previously shared this password with the group “%@”. You should change this password if you want to ensure that members of that group no longer have access to this account.";
LABEL_22:
  v20 = _WBSLocalizedString(v10, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v21 = [v9 localizedStringWithFormat:v20, v6];
  [v23 addObject:v21];

LABEL_30:
LABEL_31:
}

- (NSString)localizedHeadline
{
  if ([(WBSPasswordWarning *)self hasBeenCompromised])
  {
    v3 = @"This password should be changed immediately.";
  }

  else
  {
    issueTypes = self->_issueTypes;
    if ((issueTypes & 3) != 0 || (issueTypes & 0x10) != 0)
    {
      v3 = @"This password should be changed.";
    }

    else
    {
      if ((issueTypes & 0x20) == 0)
      {
        v5 = &stru_1F3064D08;
        goto LABEL_9;
      }

      v3 = @"This passkey should be changed.";
    }
  }

  v5 = _WBSLocalizedString(v3, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
LABEL_9:

  return v5;
}

- (NSString)localizedBody
{
  if ([(WBSPasswordWarning *)self hasBeenCompromised])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = @"Your “%@” password was detected in a data leak and may be compromised. Passwords can create and save a new one to help keep your account safe.";
LABEL_9:
    v7 = _WBSLocalizedString(v4, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    v8 = [(WBSSavedAccount *)self->_savedAccount effectiveTitle];
    v9 = [v3 localizedStringWithFormat:v7, v8];
LABEL_10:

    goto LABEL_11;
  }

  issueTypes = self->_issueTypes;
  if ((issueTypes & 2) != 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = @"Your “%@” password is easy to guess. Passwords can create and save a new one to help keep your account safe.";
    goto LABEL_9;
  }

  if (issueTypes)
  {
    v11 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword count];
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v18 = MEMORY[0x1E696AEC0];
        v7 = _WBSLocalizedString(@"Youʼre already using the password for “%@” with “%@” and “%@”. Passwords can create and save a new one to help keep your account safe.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
        v8 = [(WBSSavedAccount *)self->_savedAccount effectiveTitle];
        v13 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:0];
        v15 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:1];
        [v18 localizedStringWithFormat:v7, v8, v13, v15, v19];
        goto LABEL_25;
      }

      if (v11 == 3)
      {
        v14 = MEMORY[0x1E696AEC0];
        v7 = _WBSLocalizedString(@"Youʼre already using the password for “%@” with “%@”, “%@”, and “%@”. Passwords can create and save a new one to help keep your account safe.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
        v8 = [(WBSSavedAccount *)self->_savedAccount effectiveTitle];
        v13 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:0];
        v15 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:1];
        v16 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:2];
        v9 = [v14 localizedStringWithFormat:v7, v8, v13, v15, v16];

LABEL_26:
        goto LABEL_27;
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_18;
      }

      if (v11 == 1)
      {
        v12 = MEMORY[0x1E696AEC0];
        v7 = _WBSLocalizedString(@"Youʼre already using the password for “%@” with “%@”. Passwords can create and save a new one to help keep your account safe.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
        v8 = [(WBSSavedAccount *)self->_savedAccount effectiveTitle];
        v13 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:0];
        v9 = [v12 localizedStringWithFormat:v7, v8, v13];
LABEL_27:

        goto LABEL_10;
      }
    }

    v17 = MEMORY[0x1E696AEC0];
    v7 = _WBSLocalizedString(@"Youʼre already using the password for “%@” with “%@”, “%@”, and %lu more. Passwords can create and save a new one to help keep your account safe.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    v8 = [(WBSSavedAccount *)self->_savedAccount effectiveTitle];
    v13 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:0];
    v15 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:1];
    [v17 localizedStringWithFormat:v7, v8, v13, v15, -[NSArray count](self->_titlesOfSavedAccountsWithReusedPassword, "count") - 2];
    v9 = LABEL_25:;
    goto LABEL_26;
  }

  if ((issueTypes & 0x30) != 0)
  {
    v6 = [(WBSSavedAccount *)self->_savedAccount credentialTypes];
    v3 = MEMORY[0x1E696AEC0];
    if (v6)
    {
      v4 = @"Your “%@” password was previously shared with other people and should be changed if you want to ensure they no longer have access to this account. Passwords can create and save a new one to help keep your account safe.";
    }

    else
    {
      v4 = @"Your “%@” passkey was previously shared with other people and should be changed if you want to ensure they no longer have access to this account. Passwords can create and save a new one to help keep your account safe.";
    }

    goto LABEL_9;
  }

LABEL_18:
  v9 = &stru_1F3064D08;
LABEL_11:

  return v9;
}

- (id)localizedLongDescriptionForClient:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(WBSPasswordWarning *)self _localizedLongWarningStringsForClient:?];
    v4 = [v3 componentsJoinedByString:@"\n\n"];
  }

  else
  {
    if (self->_issueTypes == 1)
    {
      v5 = _WBSLocalizedString(@"You’re reusing this password on other websites, which increases the risk to this account if one of those other accounts is compromised.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
      goto LABEL_7;
    }

    v3 = [(WBSPasswordWarning *)self _localizedLongWarningStringsForClient:?];
    v4 = [v3 firstObject];
  }

  v5 = v4;

LABEL_7:

  return v5;
}

- (NSString)localizedInformationTextForWarningWhenLoggingIn
{
  v2 = [(WBSSavedAccount *)self->_savedAccount highLevelDomain];
  v3 = +[WBSDevice currentDevice];
  v4 = [v3 deviceClass];

  v5 = MEMORY[0x1E696AEC0];
  if (v4 == 3)
  {
    v6 = @"iPad can create a strong password for you. Would you like to change your password for “%@”?";
  }

  else
  {
    v6 = @"iPhone can create a strong password for you. Would you like to change your password for “%@”?";
  }

  v7 = _WBSLocalizedString(v6, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v8 = [v5 stringWithFormat:v7, v2];

  return v8;
}

- (NSString)localizedAlertWarningForSharingReusedPassword
{
  v3 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword count];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v13 = MEMORY[0x1E696AEC0];
      v5 = _WBSLocalizedString(@"You’re also using this password on “%@” and “%@”. Sharing this password might allow other members of this group to sign into accounts you don’t intend to share.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
      v6 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:0];
      v9 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:1];
      v12 = [v13 stringWithFormat:v5, v6, v9];
      goto LABEL_11;
    }

    if (v3 == 3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v5 = _WBSLocalizedString(@"You’re also using this password on “%@”, “%@”, and “%@”. Sharing this password might allow other members of this group to sign into accounts you don’t intend to share.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
      v6 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:0];
      v9 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:1];
      v10 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:2];
      v7 = [v8 stringWithFormat:v5, v6, v9, v10];

LABEL_12:
      goto LABEL_13;
    }

LABEL_8:
    v11 = MEMORY[0x1E696AEC0];
    v5 = _WBSLocalizedString(@"You’re also using this password on other websites, including “%@”, “%@”, and %lu more. Sharing this password might allow other members of this group to sign into accounts you don’t intend to share.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    v6 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:0];
    v9 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:1];
    v12 = [v11 localizedStringWithFormat:v5, v6, v9, -[NSArray count](self->_titlesOfSavedAccountsWithReusedPassword, "count") - 2];
LABEL_11:
    v7 = v12;
    goto LABEL_12;
  }

  if (!v3)
  {
    v7 = &stru_1F3064D08;
    goto LABEL_14;
  }

  if (v3 != 1)
  {
    goto LABEL_8;
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = _WBSLocalizedString(@"You’re also using this password on “%@”. Sharing this password might allow other members of this group to sign into accounts you don’t intend to share.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v6 = [(NSArray *)self->_titlesOfSavedAccountsWithReusedPassword objectAtIndexedSubscript:0];
  v7 = [v4 stringWithFormat:v5, v6];
LABEL_13:

LABEL_14:

  return v7;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4[6]];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_severityScore];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v7 = [(WBSSavedAccount *)self->_savedAccount compare:v4[4]];
  }

  return v7;
}

- (unint64_t)hashForUserAcknowlegement
{
  v3 = [(WBSSavedAccount *)self->_savedAccount highLevelDomain];
  v4 = [v3 hash];
  issueTypes = self->_issueTypes;

  return issueTypes ^ v4;
}

- (BOOL)hasBeenHidden
{
  v3 = [(WBSSavedAccount *)self->_savedAccount hideWarningMarker];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  if (!self->_issueTypes || (v5 = [v3 issueTypes], (self->_issueTypes | v5) != v5))
  {
    v7 = +[WBSSavedAccountStore sharedStore];
    [v7 removeHideWarningMarkerForSavedAccount:self->_savedAccount];

LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_7:

  return v6;
}

@end