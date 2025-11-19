@interface UIKeyboardHiddenViewController_Autofill
- (BOOL)isValidedString:(id)a3;
- (id)customInfoFromCredential:(id)a3;
- (void)passwordViewController:(id)a3 selectedCredential:(id)a4;
- (void)presentViewController:(BOOL)a3;
- (void)setAutofillVC:(id)a3;
@end

@implementation UIKeyboardHiddenViewController_Autofill

- (void)setAutofillVC:(id)a3
{
  objc_storeStrong(&self->super._autofillVC, a3);
  v5 = a3;
  [(_SFPasswordViewController *)self->super._autofillVC setDelegate:self];
}

- (void)presentViewController:(BOOL)a3
{
  v4 = self;
  v5 = [(UIKeyboardHiddenViewController *)self autofillVC];
  if (v5 && (v6 = v5, [(UIKeyboardHiddenViewController *)v4 autofillVC], v7 = objc_claimAutoreleasedReturnValue(), get_SFAppAutoFillPasswordViewControllerClass(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) != 0))
  {
    v9 = [(UIKeyboardHiddenViewController *)v4 autofillVC];
  }

  else
  {
    v9 = 0;
  }

  v10 = +[UIKeyboardImpl activeInstance];
  v11 = [v10 _autofillContext];
  v12 = [v11 objectForKey:@"_WebViewURL"];

  [v9 setWebViewURL:v12];
  v13 = +[UIKeyboardImpl activeInstance];
  v14 = [v13 _remoteAppId];

  [v9 setRemoteAppID:v14];
  v15 = +[UIKeyboardImpl activeInstance];
  v16 = [v15 _remoteLocalizedAppName];

  [v9 setRemoteLocalizedAppName:v16];
  v17 = +[UIKeyboardImpl activeInstance];
  v18 = [v17 _remoteUnlocalizedAppName];

  [v9 setRemoteUnlocalizedAppName:v18];
  v19 = +[UIKeyboardImpl activeInstance];
  v20 = [v19 _remoteAssociatedDomains];

  [v9 setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:v20];
  if (objc_opt_respondsToSelector())
  {
    +[UIKeyboardImpl activeInstance];
    v21 = v38 = a3;
    [v21 _autofillContext];
    v22 = v37 = v4;
    v23 = [v22 objectForKey:@"_credential_type"];

    v24 = +[UIKeyboardImpl activeInstance];
    v25 = [v24 _autofillContext];
    [v25 objectForKey:@"_page_id"];
    v36 = v16;
    v27 = v26 = v12;

    v28 = +[UIKeyboardImpl activeInstance];
    v29 = [v28 _autofillContext];
    [v29 objectForKey:@"_frame_id"];
    v31 = v30 = v14;

    a3 = v38;
    v4 = v37;
    [v9 setPageID:v27 frameID:v31 credentialType:v23];

    v14 = v30;
    v12 = v26;
    v16 = v36;
  }

  v32 = [(UIKeyboardHiddenViewController *)v4 shouldPresentAsPopover];
  v33 = v4;
  v34 = v32;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __65__UIKeyboardHiddenViewController_Autofill_presentViewController___block_invoke;
  v39[3] = &unk_1E70F8A60;
  v40 = v9;
  v41 = v33;
  v42 = a3;
  v35 = v9;
  [v35 authenticateToPresentInPopover:v34 completion:v39];
}

- (BOOL)isValidedString:(id)a3
{
  v3 = a3;
  if (qword_1ED49F9D8 != -1)
  {
    dispatch_once(&qword_1ED49F9D8, &__block_literal_global_427);
  }

  if ([v3 length])
  {
    v4 = [v3 rangeOfCharacterFromSet:_MergedGlobals_1219] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)customInfoFromCredential:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [v4 user];
  if ([(UIKeyboardHiddenViewController_Autofill *)self isValidedString:v6])
  {
    [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69D98A0]];
  }

  v7 = [v4 password];
  if ([(UIKeyboardHiddenViewController_Autofill *)self isValidedString:v7])
  {
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69D9888]];
  }

  v8 = [v5 copy];

  return v8;
}

- (void)passwordViewController:(id)a3 selectedCredential:(id)a4
{
  v5 = [(UIKeyboardHiddenViewController_Autofill *)self customInfoFromCredential:a4];
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 processPayloadInfo:v5];
}

@end