@interface SLGoogleAuthController
+ (id)_identityFromUsername:(id)a3 displayName:(id)a4 token:(id)a5 refreshToken:(id)a6 idToken:(id)a7 grantedDataclasses:(id)a8;
+ (id)googleAuthControllerWithAccount:(id)a3 accountStore:(id)a4 presentationBlock:(id)a5 completion:(id)a6;
+ (id)googleAuthControllerWithPresentationBlock:(id)a3 completion:(id)a4;
+ (id)googleAuthControllerWithYouTubeUsername:(id)a3 presentationBlock:(id)a4 completion:(id)a5;
+ (void)_presentInternetOfflineError;
+ (void)_presentUsernameMismatchAlert;
- (id)_initWithAccount:(id)a3 accountStore:(id)a4 username:(id)a5 youTube:(BOOL)a6 emailOnly:(BOOL)a7 clientID:(id)a8 presentationBlock:(id)a9 completion:(id)a10;
- (id)_redirectPathForURI:(id)a3;
- (id)_webClient;
- (void)_completeWithIdentity:(id)a3 error:(id)a4;
- (void)_didRedirectToURL:(id)a3 codeVerifier:(id)a4;
- (void)_dismissAndCompleteWithIdentity:(id)a3 error:(id)a4;
- (void)dealloc;
@end

@implementation SLGoogleAuthController

- (id)_webClient
{
  v2 = [objc_alloc(MEMORY[0x277CDC7D8]) initWithClientID:self->_clientID];

  return v2;
}

+ (id)googleAuthControllerWithPresentationBlock:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithAccount:0 accountStore:0 username:0 youTube:0 emailOnly:0 clientID:0 presentationBlock:v7 completion:v6];

  return v8;
}

+ (id)googleAuthControllerWithAccount:(id)a3 accountStore:(id)a4 presentationBlock:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] _initWithAccount:v13 accountStore:v12 username:0 youTube:0 emailOnly:0 clientID:0 presentationBlock:v11 completion:v10];

  return v14;
}

+ (id)googleAuthControllerWithYouTubeUsername:(id)a3 presentationBlock:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithAccount:0 accountStore:0 username:v10 youTube:1 emailOnly:0 clientID:0 presentationBlock:v9 completion:v8];

  return v11;
}

- (id)_initWithAccount:(id)a3 accountStore:(id)a4 username:(id)a5 youTube:(BOOL)a6 emailOnly:(BOOL)a7 clientID:(id)a8 presentationBlock:(id)a9 completion:(id)a10
{
  v11 = a7;
  v53 = a6;
  v16 = a3;
  v56 = a4;
  v17 = a5;
  v55 = a8;
  v18 = a9;
  v19 = a10;
  v61.receiver = self;
  v61.super_class = SLGoogleAuthController;
  v20 = [(SLWebAuthController *)&v61 _init];
  if (!v20)
  {
    goto LABEL_14;
  }

  v49 = v11;
  v21 = v17;
  _SLLog();
  objc_storeStrong(v20 + 134, a3);
  objc_storeStrong(v20 + 135, a4);
  v22 = MEMORY[0x26D666280](v18);
  v23 = v20[136];
  v20[136] = v22;

  objc_storeStrong(v20 + 138, a8);
  [v20 setCompletion:{v19, v20}];
  v24 = [v20 _webClient];
  v25 = objc_opt_respondsToSelector();

  v52 = v16;
  if (v25)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = [v20 _webClient];
    v28 = [v27 clientRedirectForAppOpenURL];
    v54 = [v26 stringWithFormat:@"%@:/", v28];

    v16 = v52;
    if (!v52)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v54 = 0;
  if (v16)
  {
LABEL_6:
    v29 = [v16 username];

    v21 = v29;
  }

LABEL_7:
  v30 = [MEMORY[0x277CCAD78] UUID];
  v31 = [v30 UUIDString];

  v32 = [v20 _webClient];
  v33 = v32;
  v50 = v19;
  v51 = v18;
  if (v53)
  {
    v34 = [v32 youTubeScope];
  }

  else
  {
    if (v49)
    {
      [v32 emailScope];
    }

    else
    {
      [v32 defaultScope];
    }
    v34 = ;
  }

  v35 = v34;

  v36 = [v31 sl_urlEncodedSHA256];
  v37 = MEMORY[0x277CDC7D0];
  v38 = [v20 _webClient];
  v39 = [v38 clientID];
  v40 = [v20 _webClient];
  v41 = [v40 authRequestURL];
  v42 = [v37 urlForClientID:v39 redirectURI:v54 scope:v35 username:v21 authRequestURL:v41 codeChallenge:v36];

  _SLLog();
  v43 = objc_alloc(MEMORY[0x277CDC7C8]);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __121__SLGoogleAuthController__initWithAccount_accountStore_username_youTube_emailOnly_clientID_presentationBlock_completion___block_invoke;
  v57[3] = &unk_279CA4D98;
  v58 = 0;
  v44 = v20;
  v59 = v44;
  v60 = v31;
  v45 = v31;
  v46 = [v43 initForPermissionToAccessURL:v42 fromURLString:@"https://gil.apple.com/" completion:{v57, v42}];
  v47 = v44;

  v17 = v21;
  v18 = v51;
  v16 = v52;
  v19 = v50;
LABEL_14:

  return v20;
}

void __121__SLGoogleAuthController__initWithAccount_accountStore_username_youTube_emailOnly_clientID_presentationBlock_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v5 != 0];
  _SLLog();

  _SLLog();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __121__SLGoogleAuthController__initWithAccount_accountStore_username_youTube_emailOnly_clientID_presentationBlock_completion___block_invoke_2;
  block[3] = &unk_279CA4D70;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __121__SLGoogleAuthController__initWithAccount_accountStore_username_youTube_emailOnly_clientID_presentationBlock_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v11 = *(*(a1 + 40) + 1096);
    _SLLog();
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = *(a1 + 40);
    v2 = objc_alloc(MEMORY[0x277CBA9D8]);
    v3 = *(a1 + 32);
    v4 = [v17[5] _webClient];
    v5 = [v4 clientRedirectForAppOpenURL];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __121__SLGoogleAuthController__initWithAccount_accountStore_username_youTube_emailOnly_clientID_presentationBlock_completion___block_invoke_27;
    v12[3] = &unk_279CA4D48;
    v15 = &v16;
    v13 = *(a1 + 48);
    v14 = *(a1 + 40);
    v6 = [v2 initWithURL:v3 callbackURLScheme:v5 usingEphemeralSession:1 completionHandler:v12];
    v7 = *(a1 + 40);
    v8 = *(v7 + 1096);
    *(v7 + 1096) = v6;

    [*(*(a1 + 40) + 1096) start];
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);

    [v9 _completeWithIdentity:0 error:v10];
  }
}

void __121__SLGoogleAuthController__initWithAccount_accountStore_username_youTube_emailOnly_clientID_presentationBlock_completion___block_invoke_27(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _SLLog();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __121__SLGoogleAuthController__initWithAccount_accountStore_username_youTube_emailOnly_clientID_presentationBlock_completion___block_invoke_2_31;
    block[3] = &unk_279CA4D20;
    v6 = v5;
    v7 = a1[6];
    v13 = v6;
    v14 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [*(*(a1[6] + 8) + 40) _didRedirectToURL:a2 codeVerifier:a1[4]];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  v10 = a1[5];
  v11 = *(v10 + 1096);
  *(v10 + 1096) = 0;
}

void __121__SLGoogleAuthController__initWithAccount_accountStore_username_youTube_emailOnly_clientID_presentationBlock_completion___block_invoke_2_31(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) domain];
  if (![v2 isEqualToString:*MEMORY[0x277CBA8B8]])
  {

    goto LABEL_5;
  }

  v3 = [*(a1 + 32) code];

  if (v3 != 1)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  _SLLog();
  v4 = -1;
LABEL_6:
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CDC7F8];
  v7 = *(a1 + 32);
  v13 = *MEMORY[0x277CCA7E8];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v5 errorWithDomain:v6 code:v4 userInfo:v8];

  [*(*(*(a1 + 40) + 8) + 40) _dismissAndCompleteWithIdentity:0 error:v9];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(ASWebAuthenticationSession *)self->_authenticationSession cancel];
  v3.receiver = self;
  v3.super_class = SLGoogleAuthController;
  [(SLGoogleAuthController *)&v3 dealloc];
}

- (id)_redirectPathForURI:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:?];
    v4 = [v3 host];
    if (!v4)
    {
      v5 = [v3 path];
      v6 = [v5 hasPrefix:@"/"];

      v7 = [v3 path];
      v4 = v7;
      if (v6)
      {
        v8 = [v7 substringFromIndex:1];

        v4 = v8;
      }
    }

    v9 = MEMORY[0x277CCACA8];
    v10 = [v3 scheme];
    v11 = [v9 stringWithFormat:@"%@://%@", v10, v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_identityFromUsername:(id)a3 displayName:(id)a4 token:(id)a5 refreshToken:(id)a6 idToken:(id)a7 grantedDataclasses:(id)a8
{
  v8 = a3;
  if (a3)
  {
    v13 = MEMORY[0x277CDC7E0];
    v14 = a8;
    v15 = a7;
    v16 = a6;
    v17 = a5;
    v18 = a4;
    v19 = v8;
    v8 = [[v13 alloc] initWithUsername:v19 token:v17 displayName:v18 refreshToken:v16 youTubeUsername:0 idToken:v15 grantedDataclasses:v14];
  }

  return v8;
}

- (void)_didRedirectToURL:(id)a3 codeVerifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  _SLLog();
  v8 = [MEMORY[0x277CDC7D0] authCodeFromRedirectURL:{v7, v7}];

  if (v6 && v8)
  {
    v9 = objc_alloc(MEMORY[0x277CDC7E8]);
    v10 = [(SLGoogleAuthController *)self _webClient];
    v11 = [v9 initWithWebClient:v10];

    v12 = [(SLGoogleAuthController *)self _webClient];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [(SLGoogleAuthController *)self _webClient];
      v16 = [v15 clientRedirectForAppOpenURL];
      v17 = [v14 stringWithFormat:@"%@:/", v16];
    }

    else
    {
      v17 = 0;
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__SLGoogleAuthController__didRedirectToURL_codeVerifier___block_invoke;
    v19[3] = &unk_279CA4E38;
    v19[4] = self;
    [v11 exchangeAuthCode:v8 usingRedirect:v17 codeVerifier:v6 forAccountResponse:v19];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SLGoogleAuthController__didRedirectToURL_codeVerifier___block_invoke_5;
    block[3] = &unk_279CA4E60;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __57__SLGoogleAuthController__didRedirectToURL_codeVerifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _SLLog();
  v7 = *(*(a1 + 32) + 1072);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = [v7 objectID];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v8;
  v10 = [v5 token];
  if (!v10)
  {
LABEL_16:

    goto LABEL_17;
  }

  v11 = v10;
  v12 = [v5 refreshToken];
  if (!v12)
  {

    goto LABEL_16;
  }

  v13 = v12;
  v14 = [v5 usernames];
  v15 = [v14 firstObject];

  if (v15)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v16 = [v5 usernames];
    v17 = [v16 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v61;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v61 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v60 + 1) + 8 * i);
          v22 = [*(*(a1 + 32) + 1072) username];
          v23 = [v22 compare:v21 options:1];

          if (!v23)
          {

            goto LABEL_17;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v60 objects:v64 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v24 = [*(*(a1 + 32) + 1072) username];
    v25 = [v5 usernames];
    v52 = [v25 firstObject];
    _SLLog();

    [SLGoogleAuthController _presentUsernameMismatchAlert:v24];
    [v5 setToken:0];
  }

LABEL_17:
  v26 = *(*(a1 + 32) + 1072);
  if (!v26)
  {
    goto LABEL_25;
  }

  v27 = [v26 objectID];
  if (!v27)
  {
    goto LABEL_25;
  }

  v28 = v27;
  v29 = [v5 token];
  if (!v29)
  {
    goto LABEL_24;
  }

  v30 = v29;
  v31 = [v5 refreshToken];
  if (!v31)
  {

LABEL_24:
    goto LABEL_25;
  }

  v32 = v31;
  v33 = [v5 usernames];
  v34 = [v33 firstObject];

  if (!v34)
  {
LABEL_25:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SLGoogleAuthController__didRedirectToURL_codeVerifier___block_invoke_4;
    block[3] = &unk_279CA4E10;
    v50 = *(a1 + 32);
    v54 = v5;
    v55 = v50;
    v56 = v6;
    v39 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v49 = v54;
    goto LABEL_26;
  }

  [*(*(a1 + 32) + 1072) setAccountProperty:0 forKey:@"ACUISaysNotToSaveThis"];
  v35 = objc_alloc(MEMORY[0x277CB8F38]);
  v36 = [v5 token];
  v37 = [v5 refreshToken];
  v38 = [v5 expiryDate];
  v39 = [v35 initWithOAuth2Token:v36 refreshToken:v37 expiryDate:v38];

  [*(*(a1 + 32) + 1072) setCredential:v39];
  v40 = [v5 usernames];
  v41 = [v40 firstObject];
  [*(*(a1 + 32) + 1072) setUsername:v41];

  v42 = *(*(a1 + 32) + 1072);
  v43 = [v5 grantedDataclasses];
  [v42 setAccountProperty:v43 forKey:*MEMORY[0x277CB8AC0]];

  v44 = *(*(a1 + 32) + 1072);
  v45 = [v5 displayName];
  [v44 setAccountProperty:v45 forKey:*MEMORY[0x277CB8AB8]];

  _SLLog();
  v46 = *(a1 + 32);
  v47 = *(v46 + 1080);
  v48 = *(v46 + 1072);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __57__SLGoogleAuthController__didRedirectToURL_codeVerifier___block_invoke_2;
  v57[3] = &unk_279CA4DE8;
  v58 = v5;
  v59 = v46;
  v49 = v5;
  [v47 saveAccount:v48 withCompletionHandler:v57];

LABEL_26:
  v51 = *MEMORY[0x277D85DE8];
}

void __57__SLGoogleAuthController__didRedirectToURL_codeVerifier___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SLGoogleAuthController__didRedirectToURL_codeVerifier___block_invoke_3;
  v9[3] = &unk_279CA4DC0;
  v13 = a2;
  v10 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __57__SLGoogleAuthController__didRedirectToURL_codeVerifier___block_invoke_3(uint64_t a1)
{
  v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v10 = *(a1 + 32);
  _SLLog();

  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 40) usernames];
    v3 = [v2 firstObject];
    v4 = [*(a1 + 40) displayName];
    v5 = [*(a1 + 40) token];
    v6 = [*(a1 + 40) refreshToken];
    v7 = [*(a1 + 40) idToken];
    v8 = [*(a1 + 40) grantedDataclasses];
    v11 = [SLGoogleAuthController _identityFromUsername:v3 displayName:v4 token:v5 refreshToken:v6 idToken:v7 grantedDataclasses:v8];
  }

  else
  {
    v11 = 0;
  }

  [*(a1 + 48) _dismissAndCompleteWithIdentity:v11 error:{*(a1 + 32), v9, v10}];
}

void __57__SLGoogleAuthController__didRedirectToURL_codeVerifier___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) usernames];
  v3 = [v2 firstObject];
  v4 = [*(a1 + 32) displayName];
  v5 = [*(a1 + 32) token];
  v6 = [*(a1 + 32) refreshToken];
  v7 = [*(a1 + 32) idToken];
  v8 = [*(a1 + 32) grantedDataclasses];
  v9 = [SLGoogleAuthController _identityFromUsername:v3 displayName:v4 token:v5 refreshToken:v6 idToken:v7 grantedDataclasses:v8];

  [*(a1 + 40) _dismissAndCompleteWithIdentity:v9 error:*(a1 + 48)];
}

- (void)_dismissAndCompleteWithIdentity:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  _SLLog();
  [(ASWebAuthenticationSession *)self->_authenticationSession cancel:v7];
  _SLLog();
  [(SLGoogleAuthController *)self _completeWithIdentity:v7 error:v6];
}

- (void)_completeWithIdentity:(id)a3 error:(id)a4
{
  v13 = a3;
  v6 = a4;
  v12 = v6;
  v11 = v13;
  _SLLog();
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v6 domain];
  if ([v7 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v8 = [v6 code];

    if (v8 != -1009)
    {
      goto LABEL_6;
    }

    +[SLGoogleAuthController _presentInternetOfflineError];
    v7 = v6;
    v6 = 0;
  }

LABEL_6:
  v9 = [(SLWebAuthController *)self completion:v11];

  if (v9)
  {
    v10 = [(SLWebAuthController *)self completion];
    (v10)[2](v10, v13, v6);

    [(SLWebAuthController *)self setCompletion:0];
  }

  else
  {
    _SLLog();
  }
}

+ (void)_presentUsernameMismatchAlert
{
  v14 = MEMORY[0x277CBEB38];
  v15 = SLSocialFrameworkBundle();
  v2 = [v15 localizedStringForKey:@"GOOGLE_EMAIL_MISMATCH_TITLE" value:&stru_287B2CFF0 table:@"Localizable"];
  v3 = *MEMORY[0x277CBF188];
  v4 = SLSocialFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"GOOGLE_EMAIL_MISMATCH_MESSAGE" value:&stru_287B2CFF0 table:@"Localizable"];
  v6 = *MEMORY[0x277CBF198];
  v7 = SLSocialFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"GOOGLE_EMAIL_MISMATCH_OK" value:&stru_287B2CFF0 table:@"Localizable"];
  v9 = *MEMORY[0x277CBF1E8];
  v10 = SLSocialFrameworkBundle();
  v11 = [v10 resourceURL];
  v12 = [v14 dictionaryWithObjectsAndKeys:{v2, v3, v5, v6, v8, v9, v11, *MEMORY[0x277CBF208], 0}];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v12);
  if (v18[3])
  {
    v13 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SLGoogleAuthController__presentUsernameMismatchAlert__block_invoke;
    block[3] = &unk_279CA4E88;
    block[4] = &v17;
    dispatch_async(v13, block);
  }

  _Block_object_dispose(&v17, 8);
}

void __55__SLGoogleAuthController__presentUsernameMismatchAlert__block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 32) + 8) + 24), 0.0, &responseFlags);
  CFRelease(*(*(*(a1 + 32) + 8) + 24));
}

+ (void)_presentInternetOfflineError
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277CBF188];
  v2 = SLSocialFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"SIGN_IN_ERROR_TITLE" value:&stru_287B2CFF0 table:@"Localizable"];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277CBF198];
  v4 = SLSocialFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"SIGN_IN_ERROR_MESSAGE_NO_CONNECTION" value:&stru_287B2CFF0 table:@"Localizable"];
  v19[1] = v5;
  v18[2] = *MEMORY[0x277CBF1E8];
  v6 = SLSocialFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"SIGN_IN_ERROR_OK" value:&stru_287B2CFF0 table:@"Localizable"];
  v19[2] = v7;
  v18[3] = *MEMORY[0x277CBF208];
  v8 = SLSocialFrameworkBundle();
  v9 = [v8 resourceURL];
  v19[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v10);
  if (v15[3])
  {
    v11 = dispatch_get_global_queue(25, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__SLGoogleAuthController__presentInternetOfflineError__block_invoke;
    v13[3] = &unk_279CA4E88;
    v13[4] = &v14;
    dispatch_async(v11, v13);
  }

  _Block_object_dispose(&v14, 8);

  v12 = *MEMORY[0x277D85DE8];
}

void __54__SLGoogleAuthController__presentInternetOfflineError__block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 32) + 8) + 24), 0.0, &responseFlags);
  CFRelease(*(*(*(a1 + 32) + 8) + 24));
}

@end