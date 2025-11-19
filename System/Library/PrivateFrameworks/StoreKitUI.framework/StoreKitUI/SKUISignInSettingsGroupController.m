@interface SKUISignInSettingsGroupController
- (BOOL)isAuthenticating;
- (id)_keyForSettingDescription:(id)a3;
- (id)_settingDescriptionForKey:(id)a3;
- (id)_submitSettingDescription;
- (id)valueForSettingDescription:(id)a3;
- (void)_attemptSignInWithAccountName:(id)a3 password:(id)a4;
- (void)_becomeFirstResponderWithKey:(id)a3;
- (void)_resignFirstResponder;
- (void)_signInFailed:(id)a3 error:(id)a4;
- (void)_signInSuccess:(id)a3;
- (void)_updateFieldsAuthenticating:(BOOL)a3;
- (void)_updateValidation;
- (void)returnInSettingDescription:(id)a3;
- (void)setValue:(id)a3 forSettingDescription:(id)a4;
- (void)submitSettingDescription:(id)a3;
@end

@implementation SKUISignInSettingsGroupController

- (BOOL)isAuthenticating
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUISignInSettingsGroupController *)v3 isAuthenticating:v4];
      }
    }
  }

  return self->_authenticating;
}

- (void)returnInSettingDescription:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISignInSettingsGroupController *)v5 returnInSettingDescription:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUISignInSettingsGroupController *)self _keyForSettingDescription:v4];
  if ([v13 isEqualToString:@"accountName"])
  {
    [(SKUISignInSettingsGroupController *)self _becomeFirstResponderWithKey:@"password"];
  }

  else
  {
    [(SKUISignInSettingsGroupController *)self _resignFirstResponder];
    if (self->_valid)
    {
      [(SKUISignInSettingsGroupController *)self _attemptSignInWithAccountName:self->_accountName password:self->_password];
    }
  }
}

- (void)setValue:(id)a3 forSettingDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUISignInSettingsGroupController *)v8 setValue:v9 forSettingDescription:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [(SKUISignInSettingsGroupController *)self _keyForSettingDescription:v7];
  if (v16)
  {
    [(SKUISignInSettingsGroupController *)self setValue:v6 forKey:v16];
  }

  [(SKUISignInSettingsGroupController *)self _updateValidation];
}

- (void)submitSettingDescription:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISignInSettingsGroupController *)v5 submitSettingDescription:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUISignInSettingsGroupController *)self _resignFirstResponder];
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_valid && objc_msgSend(v4, "fieldType") == 1)
  {
    [(SKUISignInSettingsGroupController *)self _attemptSignInWithAccountName:self->_accountName password:self->_password];
  }
}

- (id)valueForSettingDescription:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISignInSettingsGroupController *)v5 valueForSettingDescription:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUISignInSettingsGroupController *)self _keyForSettingDescription:v4];
  if (v13)
  {
    v14 = [(SKUISignInSettingsGroupController *)self valueForKey:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_attemptSignInWithAccountName:(id)a3 password:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SKUISignInSettingsGroupController *)self _updateFieldsAuthenticating:1];
  v8 = objc_alloc_init(MEMORY[0x277CF0178]);
  v9 = objc_alloc_init(MEMORY[0x277CF0380]);
  [v9 setServiceType:2];
  [v9 setUsername:v6];
  [v9 _setPassword:v7];
  [v9 setIsUsernameEditable:0];
  [v9 setShouldAllowAppleIDCreation:0];
  v10 = [(SKUISettingsGroupController *)self delegate];
  v11 = [v10 owningViewControllerForSettingsGroupController:self];
  [v9 setPresentingViewController:v11];

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__SKUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke;
  v13[3] = &unk_2781FB090;
  objc_copyWeak(&v15, &location);
  v12 = v6;
  v14 = v12;
  [v8 authenticateWithContext:v9 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __76__SKUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76__SKUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_5;
    v7[3] = &unk_2781FA0C8;
    objc_copyWeak(&v10, (a1 + 40));
    v8 = *(a1 + 32);
    v9 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v7);

    objc_destroyWeak(&v10);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__SKUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_2;
    block[3] = &unk_2781FA368;
    v12 = v5;
    objc_copyWeak(&v14, (a1 + 40));
    v13 = *(a1 + 32);
    dispatch_sync(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v14);
  }
}

void __76__SKUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_2(id *a1)
{
  v2 = [MEMORY[0x277D69BC8] contextForSignIn];
  v3 = [a1[4] objectForKey:*MEMORY[0x277CEFFD8]];
  [v2 setAccountName:v3];

  v4 = [a1[4] objectForKey:*MEMORY[0x277CEFFC8]];
  [v2 setInitialPassword:v4];

  v5 = [a1[4] objectForKey:*MEMORY[0x277CEFF78]];
  [v2 setAltDSID:v5];

  [v2 setAllowsRetry:0];
  [v2 setCanSetActiveAccount:1];
  [v2 setPromptStyle:0];
  v6 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:v2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__SKUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_3;
  v7[3] = &unk_2781FB068;
  objc_copyWeak(&v9, a1 + 6);
  v8 = a1[5];
  [v6 startWithAuthenticateResponseBlock:v7];

  objc_destroyWeak(&v9);
}

void __76__SKUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SKUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_4;
  v9[3] = &unk_2781FB040;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  objc_copyWeak(&v13, (a1 + 40));
  v12 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __76__SKUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!*(a1 + 32))
  {
    if (!v2)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _signInFailed:*(a1 + 48) error:*(a1 + 40)];
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [*(a1 + 32) authenticatedAccount];
  [WeakRetained _signInSuccess:v4];

LABEL_6:
LABEL_7:
  v5 = objc_loadWeakRetained((a1 + 56));
  [v5 _updateFieldsAuthenticating:0];
}

void __76__SKUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _signInFailed:*(a1 + 32) error:*(a1 + 40)];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 _updateFieldsAuthenticating:0];
}

- (void)_updateFieldsAuthenticating:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_authenticating != a3)
  {
    v3 = a3;
    self->_authenticating = a3;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(SKUISettingsGroupController *)self settingDescriptions];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(SKUISettingsGroupController *)self _viewForSettingDescription:*(*(&v11 + 1) + 8 * i)];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 setEnabled:!v3];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_becomeFirstResponderWithKey:(id)a3
{
  v5 = [(SKUISignInSettingsGroupController *)self _settingDescriptionForKey:a3];
  v4 = [(SKUISettingsGroupController *)self _viewForSettingDescription:?];
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    [v4 beginEdits];
  }
}

- (id)_keyForSettingDescription:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_keyMapping objectForKey:v4];
  if (!v5)
  {
    if (!self->_keyMapping)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      keyMapping = self->_keyMapping;
      self->_keyMapping = v6;
    }

    if ([v4 isMemberOfClass:objc_opt_class()])
    {
      v8 = v4;
      v9 = [v8 fieldType];
      if (v9)
      {
        if (v9 == 1)
        {
          v5 = @"valid";
LABEL_13:

          [(NSMapTable *)self->_keyMapping setObject:v5 forKey:v8];
          goto LABEL_17;
        }
      }

      else
      {
        v10 = [v8 viewElement];
        v11 = [v10 textInputViewElement];
        v12 = v11;
        if (v11)
        {
          if ([v11 isSecure])
          {
            v5 = @"password";
          }

          else
          {
            v5 = @"accountName";
          }

          goto LABEL_13;
        }
      }
    }

    v5 = 0;
  }

LABEL_17:

  return v5;
}

- (void)_resignFirstResponder
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(SKUISettingsGroupController *)self settingDescriptions];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(SKUISettingsGroupController *)self _viewForSettingDescription:*(*(&v9 + 1) + 8 * v7)];
        if ([v8 isMemberOfClass:objc_opt_class()])
        {
          [v8 commitEdits];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)_settingDescriptionForKey:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  keyMapping = self->_keyMapping;
  if (keyMapping)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [(NSMapTable *)keyMapping keyEnumerator];
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = [(NSMapTable *)self->_keyMapping objectForKey:v11];
        if ([v4 isEqualToString:v12])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v13 = v11;

      if (v13)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_10:
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [(SKUISettingsGroupController *)self settingDescriptions];
  v13 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v15 = *v21;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v14);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        v18 = [(SKUISignInSettingsGroupController *)self _keyForSettingDescription:0];
        if ([v4 isEqualToString:v18])
        {
          v13 = v17;

          goto LABEL_22;
        }
      }

      v13 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

LABEL_23:

  return v13;
}

- (void)_signInFailed:(id)a3 error:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [(SKUISettingsGroupController *)self delegate];
  v8 = [v7 owningViewControllerForSettingsGroupController:self];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v10 = [v9 clientContext];
    v11 = v10;
    v12 = MEMORY[0x277D75110];
    if (v10)
    {
      [v10 localizedStringForKey:@"CANNOT_LOGIN_TITLE"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"CANNOT_LOGIN_TITLE" inBundles:0];
    }
    v13 = ;
    v14 = [v6 localizedDescription];
    v15 = [v12 alertControllerWithTitle:v13 message:v14 preferredStyle:1];

    v16 = MEMORY[0x277D750F8];
    if (v11)
    {
      [v11 localizedStringForKey:@"OK"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"OK" inBundles:0];
    }
    v17 = ;
    v18 = [v16 actionWithTitle:v17 style:0 handler:0];
    [v15 addAction:v18];

    [v9 presentViewController:v15 animated:1 completion:0];
  }

  v19 = [(SKUISettingsGroupController *)self settingsGroupDescription];
  if (v19)
  {
    v20 = [v6 description];
    v21 = [v19 viewElement];
    v22 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"failed", @"result", v23, @"accountName", v20, @"reason", 0}];
    [v21 dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v22 completionBlock:0];
  }
}

- (void)_signInSuccess:(id)a3
{
  v10 = a3;
  v4 = [(SKUISettingsGroupController *)self settingsGroupDescription];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 viewElement];
    v7 = objc_alloc(MEMORY[0x277CBEAC0]);
    v8 = [v10 accountName];
    v9 = [v7 initWithObjectsAndKeys:{@"success", @"result", v8, @"accountName", 0}];

    [v6 dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v9 completionBlock:0];
  }
}

- (id)_submitSettingDescription
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(SKUISettingsGroupController *)self settingDescriptions];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isMemberOfClass:objc_opt_class()])
        {
          v8 = v7;
          if ([v8 fieldType] == 1)
          {
            goto LABEL_12;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (void)_updateValidation
{
  if ([(NSString *)self->_accountName length])
  {
    v3 = [(NSString *)self->_password length]!= 0;
  }

  else
  {
    v3 = 0;
  }

  self->_valid = v3;
  v4 = [(SKUISignInSettingsGroupController *)self _submitSettingDescription];
  [(SKUISettingsGroupController *)self _reloadSettingDescription:v4];
}

@end