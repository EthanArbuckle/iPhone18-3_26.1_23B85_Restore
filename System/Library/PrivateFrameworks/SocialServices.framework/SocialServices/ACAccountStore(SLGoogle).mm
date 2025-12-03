@interface ACAccountStore(SLGoogle)
- (void)sl_openGoogleAuthenticationSheetForAccount:()SLGoogle shouldConfirm:delegateClassName:completion:;
- (void)sl_openGoogleAuthenticationSheetWithAccountDescription:()SLGoogle completion:;
- (void)sl_openYouTubeAuthenticationSheetWithAccountDescription:()SLGoogle completion:;
- (void)sl_openYouTubeAuthenticationSheetWithUsername:()SLGoogle accountDescription:completion:;
@end

@implementation ACAccountStore(SLGoogle)

- (void)sl_openGoogleAuthenticationSheetWithAccountDescription:()SLGoogle completion:
{
  v6 = a4;
  v7 = *MEMORY[0x277CB8C40];
  v8 = a3;
  v9 = [self accountTypeWithAccountTypeIdentifier:v7];
  v10 = [objc_alloc(MEMORY[0x277CB8F30]) initWithAccountType:v9];
  [v10 setAccountDescription:v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__ACAccountStore_SLGoogle__sl_openGoogleAuthenticationSheetWithAccountDescription_completion___block_invoke;
  v12[3] = &unk_279CA4CF8;
  v13 = v6;
  v11 = v6;
  [self sl_openGoogleAuthenticationSheetForAccount:v10 shouldConfirm:0 completion:v12];
}

- (void)sl_openYouTubeAuthenticationSheetWithAccountDescription:()SLGoogle completion:
{
  v6 = a4;
  v7 = *MEMORY[0x277CB8C40];
  v8 = a3;
  v9 = [self accountTypeWithAccountTypeIdentifier:v7];
  v10 = [objc_alloc(MEMORY[0x277CB8F30]) initWithAccountType:v9];
  [v10 setAccountDescription:v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__ACAccountStore_SLGoogle__sl_openYouTubeAuthenticationSheetWithAccountDescription_completion___block_invoke;
  v12[3] = &unk_279CA4CF8;
  v13 = v6;
  v11 = v6;
  [self sl_openGoogleAuthenticationSheetForAccount:v10 shouldConfirm:0 delegateClassName:@"SLYouTubeAuthFlowController" completion:v12];
}

- (void)sl_openYouTubeAuthenticationSheetWithUsername:()SLGoogle accountDescription:completion:
{
  v8 = a5;
  v9 = *MEMORY[0x277CB8C40];
  v10 = a4;
  v11 = a3;
  v12 = [self accountTypeWithAccountTypeIdentifier:v9];
  v13 = [objc_alloc(MEMORY[0x277CB8F30]) initWithAccountType:v12];
  [v13 setUsername:v11];

  [v13 setAccountDescription:v10];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__ACAccountStore_SLGoogle__sl_openYouTubeAuthenticationSheetWithUsername_accountDescription_completion___block_invoke;
  v15[3] = &unk_279CA4CF8;
  v16 = v8;
  v14 = v8;
  [self sl_openGoogleAuthenticationSheetForAccount:v13 shouldConfirm:1 delegateClassName:@"SLYouTubeAuthFlowController" completion:v15];
}

- (void)sl_openGoogleAuthenticationSheetForAccount:()SLGoogle shouldConfirm:delegateClassName:completion:
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = CPSystemRootDirectory();
  v14 = [v13 stringByAppendingPathComponent:@"System/Library/Frameworks/Social.framework"];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __114__ACAccountStore_SLGoogle__sl_openGoogleAuthenticationSheetForAccount_shouldConfirm_delegateClassName_completion___block_invoke;
  v16[3] = &unk_279CA4CF8;
  v17 = v10;
  v15 = v10;
  [self openAuthenticationURLForAccount:v12 withDelegateClassName:v11 fromBundleAtPath:v14 shouldConfirm:a4 completion:v16];
}

@end