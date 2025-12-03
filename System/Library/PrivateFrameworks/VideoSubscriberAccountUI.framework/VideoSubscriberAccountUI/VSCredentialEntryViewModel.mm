@interface VSCredentialEntryViewModel
- (NSString)linkTitle;
- (VSCredentialEntryViewModelDelegate)delegate;
- (void)_bindField:(id)field;
- (void)_unbindField:(id)field;
- (void)buttonTappedAtIndex:(unint64_t)index;
- (void)clearFieldsAfterUsername;
- (void)configureWithRequest:(id)request;
- (void)pickerDidSelectRow:(unint64_t)row;
- (void)setCredentialEntryFields:(id)fields;
- (void)validateCredentialEntryFields;
@end

@implementation VSCredentialEntryViewModel

- (void)_unbindField:(id)field
{
  fieldCopy = field;
  [fieldCopy vs_unbind:@"recentsTitle"];
  [fieldCopy vs_unbind:@"recentsMessage"];
}

- (void)_bindField:(id)field
{
  fieldCopy = field;
  v5 = VSMainConcurrencyBindingOptions();
  [fieldCopy vs_bind:@"recentsTitle" toObject:self withKeyPath:@"recentsTitle" options:v5];

  v6 = VSMainConcurrencyBindingOptions();
  [fieldCopy vs_bind:@"recentsMessage" toObject:self withKeyPath:@"recentsMessage" options:v6];
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
    vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v3 = [vs_frameworkBundle localizedStringForKey:@"CREDENTIAL_ENTRY_FOOTER_LINK" value:0 table:0];
  }

  return v3;
}

- (void)setCredentialEntryFields:(id)fields
{
  fieldsCopy = fields;
  objc_storeStrong(&self->_credentialEntryFields, fields);
  firstObject = [fieldsCopy firstObject];

  if (!firstObject)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [credentialEntryFields firstObject] parameter must not be nil."];
  }

  firstObject2 = [fieldsCopy firstObject];
  [(VSCredentialEntryViewModel *)self _bindField:firstObject2];

  [(VSCredentialEntryViewModel *)self validateCredentialEntryFields];
}

- (void)configureWithRequest:(id)request
{
  requestCopy = request;
  identityProvider = [(VSViewModel *)self identityProvider];
  displayName = [identityProvider displayName];
  forceUnwrapObject = [displayName forceUnwrapObject];

  v8 = MEMORY[0x277CCA8D8];
  v9 = forceUnwrapObject;
  vs_frameworkBundle = [v8 vs_frameworkBundle];
  v11 = [vs_frameworkBundle localizedStringForKey:@"CREDENTIAL_ENTRY_MESSAGE" value:0 table:0];

  vs_frameworkBundle2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v13 = [vs_frameworkBundle2 localizedStringForKey:@"CREDENTIAL_ENTRY_FOOTER" value:0 table:0];
  v14 = [v13 mutableCopy];

  [v14 appendString:@" "];
  vs_frameworkBundle3 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v16 = [vs_frameworkBundle3 localizedStringForKey:@"CREDENTIAL_ENTRY_FOOTER_IOS" value:0 table:0];
  [v14 appendString:v16];

  [(VSViewModel *)self setTitle:v9];
  vs_frameworkBundle4 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v18 = [vs_frameworkBundle4 localizedStringForKey:@"SIGN_IN_BUTTON_TITLE" value:0 table:0];

  [(VSCuratedViewModel *)self setBeginValidationButtonTitle:v18];
  [(VSCuratedViewModel *)self setMessage:v11];
  identityProvider2 = [(VSViewModel *)self identityProvider];
  displayName2 = [identityProvider2 displayName];
  [(VSCuratedViewModel *)self setIdentityProviderDisplayName:displayName2];

  -[VSCuratedViewModel setShowFooter:](self, "setShowFooter:", [v14 length] != 0);
  [(VSCuratedViewModel *)self setFooterText:v14];
  vs_frameworkBundle5 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v22 = [vs_frameworkBundle5 localizedStringForKey:@"RECENT_ACCOUNT_TITLE_FORMAT" value:0 table:0];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:v22, v9];

  [(VSCredentialEntryViewModel *)self setRecentsTitle:v23];
  vs_frameworkBundle6 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v25 = [vs_frameworkBundle6 localizedStringForKey:@"RECENT_ACCOUNT_INSTRUCTIONS" value:0 table:0];

  [(VSCredentialEntryViewModel *)self setRecentsMessage:v25];
  v26.receiver = self;
  v26.super_class = VSCredentialEntryViewModel;
  [(VSCuratedViewModel *)&v26 configureWithRequest:requestCopy];
}

- (void)validateCredentialEntryFields
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  credentialEntryFields = [(VSCredentialEntryViewModel *)self credentialEntryFields];
  v4 = [credentialEntryFields countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(credentialEntryFields);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isRequired])
        {
          text = [v9 text];
          v11 = [text length] != 0;

          v7 &= v11;
        }
      }

      v5 = [credentialEntryFields countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)buttonTappedAtIndex:(unint64_t)index
{
  delegate = [(VSCredentialEntryViewModel *)self delegate];
  [delegate viewModel:self buttonTappedAtIndex:index];
}

- (void)pickerDidSelectRow:(unint64_t)row
{
  delegate = [(VSCredentialEntryViewModel *)self delegate];
  [delegate viewModel:self pickerDidSelectRow:row];
}

- (void)clearFieldsAfterUsername
{
  credentialEntryFields = [(VSCredentialEntryViewModel *)self credentialEntryFields];
  v4 = [credentialEntryFields count];

  if (v4 >= 2)
  {
    v5 = *MEMORY[0x277CBE660];
    v6 = 1;
    do
    {
      credentialEntryFields2 = [(VSCredentialEntryViewModel *)self credentialEntryFields];
      v8 = [credentialEntryFields2 objectAtIndex:v6];

      if (!v8)
      {
        [MEMORY[0x277CBEAD8] raise:v5 format:@"The [[self credentialEntryFields] objectAtIndex:i] parameter must not be nil."];
      }

      credentialEntryFields3 = [(VSCredentialEntryViewModel *)self credentialEntryFields];
      v10 = [credentialEntryFields3 objectAtIndex:v6];

      [v10 setText:&stru_2880B8BB0];
      ++v6;
      credentialEntryFields4 = [(VSCredentialEntryViewModel *)self credentialEntryFields];
      v12 = [credentialEntryFields4 count];
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