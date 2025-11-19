@interface VSCredentialEntryViewModel
- (NSString)linkTitle;
- (VSCredentialEntryViewModelDelegate)delegate;
- (void)_bindField:(id)a3;
- (void)_unbindField:(id)a3;
- (void)buttonTappedAtIndex:(unint64_t)a3;
- (void)clearFieldsAfterUsername;
- (void)configureWithRequest:(id)a3;
- (void)pickerDidSelectRow:(unint64_t)a3;
- (void)setCredentialEntryFields:(id)a3;
- (void)validateCredentialEntryFields;
@end

@implementation VSCredentialEntryViewModel

- (void)_unbindField:(id)a3
{
  v3 = a3;
  [v3 vs_unbind:@"recentsTitle"];
  [v3 vs_unbind:@"recentsMessage"];
}

- (void)_bindField:(id)a3
{
  v4 = a3;
  v5 = VSMainConcurrencyBindingOptions();
  [v4 vs_bind:@"recentsTitle" toObject:self withKeyPath:@"recentsTitle" options:v5];

  v6 = VSMainConcurrencyBindingOptions();
  [v4 vs_bind:@"recentsMessage" toObject:self withKeyPath:@"recentsMessage" options:v6];
}

- (NSString)linkTitle
{
  linkTitle = self->_linkTitle;
  if (linkTitle)
  {
    v3 = linkTitle;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v3 = [v4 localizedStringForKey:@"CREDENTIAL_ENTRY_FOOTER_LINK" value:0 table:0];
  }

  return v3;
}

- (void)setCredentialEntryFields:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_credentialEntryFields, a3);
  v5 = [v7 firstObject];

  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [credentialEntryFields firstObject] parameter must not be nil."];
  }

  v6 = [v7 firstObject];
  [(VSCredentialEntryViewModel *)self _bindField:v6];

  [(VSCredentialEntryViewModel *)self validateCredentialEntryFields];
}

- (void)configureWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(VSViewModel *)self identityProvider];
  v6 = [v5 displayName];
  v7 = [v6 forceUnwrapObject];

  v8 = MEMORY[0x277CCA8D8];
  v9 = v7;
  v10 = [v8 vs_frameworkBundle];
  v11 = [v10 localizedStringForKey:@"CREDENTIAL_ENTRY_MESSAGE" value:0 table:0];

  v12 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v13 = [v12 localizedStringForKey:@"CREDENTIAL_ENTRY_FOOTER" value:0 table:0];
  v14 = [v13 mutableCopy];

  [v14 appendString:@" "];
  v15 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v16 = [v15 localizedStringForKey:@"CREDENTIAL_ENTRY_FOOTER_IOS" value:0 table:0];
  [v14 appendString:v16];

  [(VSViewModel *)self setTitle:v9];
  v17 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v18 = [v17 localizedStringForKey:@"SIGN_IN_BUTTON_TITLE" value:0 table:0];

  [(VSCuratedViewModel *)self setBeginValidationButtonTitle:v18];
  [(VSCuratedViewModel *)self setMessage:v11];
  v19 = [(VSViewModel *)self identityProvider];
  v20 = [v19 displayName];
  [(VSCuratedViewModel *)self setIdentityProviderDisplayName:v20];

  -[VSCuratedViewModel setShowFooter:](self, "setShowFooter:", [v14 length] != 0);
  [(VSCuratedViewModel *)self setFooterText:v14];
  v21 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v22 = [v21 localizedStringForKey:@"RECENT_ACCOUNT_TITLE_FORMAT" value:0 table:0];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:v22, v9];

  [(VSCredentialEntryViewModel *)self setRecentsTitle:v23];
  v24 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v25 = [v24 localizedStringForKey:@"RECENT_ACCOUNT_INSTRUCTIONS" value:0 table:0];

  [(VSCredentialEntryViewModel *)self setRecentsMessage:v25];
  v26.receiver = self;
  v26.super_class = VSCredentialEntryViewModel;
  [(VSCuratedViewModel *)&v26 configureWithRequest:v4];
}

- (void)validateCredentialEntryFields
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(VSCredentialEntryViewModel *)self credentialEntryFields];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isRequired])
        {
          v10 = [v9 text];
          v11 = [v10 length] != 0;

          v7 &= v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  [(VSCuratedViewModel *)self setBeginValidationButtonEnabled:v7 & 1];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)buttonTappedAtIndex:(unint64_t)a3
{
  v5 = [(VSCredentialEntryViewModel *)self delegate];
  [v5 viewModel:self buttonTappedAtIndex:a3];
}

- (void)pickerDidSelectRow:(unint64_t)a3
{
  v5 = [(VSCredentialEntryViewModel *)self delegate];
  [v5 viewModel:self pickerDidSelectRow:a3];
}

- (void)clearFieldsAfterUsername
{
  v3 = [(VSCredentialEntryViewModel *)self credentialEntryFields];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v5 = *MEMORY[0x277CBE660];
    v6 = 1;
    do
    {
      v7 = [(VSCredentialEntryViewModel *)self credentialEntryFields];
      v8 = [v7 objectAtIndex:v6];

      if (!v8)
      {
        [MEMORY[0x277CBEAD8] raise:v5 format:@"The [[self credentialEntryFields] objectAtIndex:i] parameter must not be nil."];
      }

      v9 = [(VSCredentialEntryViewModel *)self credentialEntryFields];
      v10 = [v9 objectAtIndex:v6];

      [v10 setText:&stru_2880B8BB0];
      ++v6;
      v11 = [(VSCredentialEntryViewModel *)self credentialEntryFields];
      v12 = [v11 count];
    }

    while (v6 < v12);
  }
}

- (VSCredentialEntryViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end