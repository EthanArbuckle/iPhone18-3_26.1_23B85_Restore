@interface UIKeyboardHiddenViewController_Autofill
- (BOOL)isValidedString:(id)string;
- (id)customInfoFromCredential:(id)credential;
- (void)passwordViewController:(id)controller selectedCredential:(id)credential;
- (void)presentViewController:(BOOL)controller;
- (void)setAutofillVC:(id)c;
@end

@implementation UIKeyboardHiddenViewController_Autofill

- (void)setAutofillVC:(id)c
{
  objc_storeStrong(&self->super._autofillVC, c);
  cCopy = c;
  [(_SFPasswordViewController *)self->super._autofillVC setDelegate:self];
}

- (void)presentViewController:(BOOL)controller
{
  selfCopy = self;
  autofillVC = [(UIKeyboardHiddenViewController *)self autofillVC];
  if (autofillVC && (v6 = autofillVC, [(UIKeyboardHiddenViewController *)selfCopy autofillVC], v7 = objc_claimAutoreleasedReturnValue(), get_SFAppAutoFillPasswordViewControllerClass(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) != 0))
  {
    autofillVC2 = [(UIKeyboardHiddenViewController *)selfCopy autofillVC];
  }

  else
  {
    autofillVC2 = 0;
  }

  v10 = +[UIKeyboardImpl activeInstance];
  _autofillContext = [v10 _autofillContext];
  v12 = [_autofillContext objectForKey:@"_WebViewURL"];

  [autofillVC2 setWebViewURL:v12];
  v13 = +[UIKeyboardImpl activeInstance];
  _remoteAppId = [v13 _remoteAppId];

  [autofillVC2 setRemoteAppID:_remoteAppId];
  v15 = +[UIKeyboardImpl activeInstance];
  _remoteLocalizedAppName = [v15 _remoteLocalizedAppName];

  [autofillVC2 setRemoteLocalizedAppName:_remoteLocalizedAppName];
  v17 = +[UIKeyboardImpl activeInstance];
  _remoteUnlocalizedAppName = [v17 _remoteUnlocalizedAppName];

  [autofillVC2 setRemoteUnlocalizedAppName:_remoteUnlocalizedAppName];
  v19 = +[UIKeyboardImpl activeInstance];
  _remoteAssociatedDomains = [v19 _remoteAssociatedDomains];

  [autofillVC2 setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:_remoteAssociatedDomains];
  if (objc_opt_respondsToSelector())
  {
    +[UIKeyboardImpl activeInstance];
    v21 = v38 = controller;
    [v21 _autofillContext];
    v22 = v37 = selfCopy;
    v23 = [v22 objectForKey:@"_credential_type"];

    v24 = +[UIKeyboardImpl activeInstance];
    _autofillContext2 = [v24 _autofillContext];
    [_autofillContext2 objectForKey:@"_page_id"];
    v36 = _remoteLocalizedAppName;
    v27 = v26 = v12;

    v28 = +[UIKeyboardImpl activeInstance];
    _autofillContext3 = [v28 _autofillContext];
    [_autofillContext3 objectForKey:@"_frame_id"];
    v31 = v30 = _remoteAppId;

    controller = v38;
    selfCopy = v37;
    [autofillVC2 setPageID:v27 frameID:v31 credentialType:v23];

    _remoteAppId = v30;
    v12 = v26;
    _remoteLocalizedAppName = v36;
  }

  shouldPresentAsPopover = [(UIKeyboardHiddenViewController *)selfCopy shouldPresentAsPopover];
  v33 = selfCopy;
  v34 = shouldPresentAsPopover;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __65__UIKeyboardHiddenViewController_Autofill_presentViewController___block_invoke;
  v39[3] = &unk_1E70F8A60;
  v40 = autofillVC2;
  v41 = v33;
  controllerCopy = controller;
  v35 = autofillVC2;
  [v35 authenticateToPresentInPopover:v34 completion:v39];
}

- (BOOL)isValidedString:(id)string
{
  stringCopy = string;
  if (qword_1ED49F9D8 != -1)
  {
    dispatch_once(&qword_1ED49F9D8, &__block_literal_global_427);
  }

  if ([stringCopy length])
  {
    v4 = [stringCopy rangeOfCharacterFromSet:_MergedGlobals_1219] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)customInfoFromCredential:(id)credential
{
  credentialCopy = credential;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  user = [credentialCopy user];
  if ([(UIKeyboardHiddenViewController_Autofill *)self isValidedString:user])
  {
    [v5 setObject:user forKeyedSubscript:*MEMORY[0x1E69D98A0]];
  }

  password = [credentialCopy password];
  if ([(UIKeyboardHiddenViewController_Autofill *)self isValidedString:password])
  {
    [v5 setObject:password forKeyedSubscript:*MEMORY[0x1E69D9888]];
  }

  v8 = [v5 copy];

  return v8;
}

- (void)passwordViewController:(id)controller selectedCredential:(id)credential
{
  v5 = [(UIKeyboardHiddenViewController_Autofill *)self customInfoFromCredential:credential];
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 processPayloadInfo:v5];
}

@end