@interface WBUGeneratedPasswordCredentialUpdateRequest
+ (id)requestWithNewUsername:(id)a3 newGeneratedPassword:(id)a4 lastGeneratedPassword:(id)a5 credentialURL:(id)a6 protectionSpace:(id)a7 savedAccountContext:(id)a8 shouldSaveNewCredential:(BOOL)a9 shouldSaveExistingCredential:(BOOL)a10 associatedDomainsManager:(id)a11;
- (id)_initRequestWithNewUsername:(id)a3 newGeneratedPassword:(id)a4 lastGeneratedPassword:(id)a5 credentialURL:(id)a6 protectionSpace:(id)a7 savedAccountContext:(id)a8 shouldSaveNewCredential:(BOOL)a9 shouldSaveExistingCredential:(BOOL)a10 associatedDomainsManager:(id)a11;
@end

@implementation WBUGeneratedPasswordCredentialUpdateRequest

+ (id)requestWithNewUsername:(id)a3 newGeneratedPassword:(id)a4 lastGeneratedPassword:(id)a5 credentialURL:(id)a6 protectionSpace:(id)a7 savedAccountContext:(id)a8 shouldSaveNewCredential:(BOOL)a9 shouldSaveExistingCredential:(BOOL)a10 associatedDomainsManager:(id)a11
{
  v18 = a11;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  LOWORD(v27) = __PAIR16__(a10, a9);
  v25 = [[a1 alloc] _initRequestWithNewUsername:v24 newGeneratedPassword:v23 lastGeneratedPassword:v22 credentialURL:v21 protectionSpace:v20 savedAccountContext:v19 shouldSaveNewCredential:v27 shouldSaveExistingCredential:v18 associatedDomainsManager:?];

  return v25;
}

- (id)_initRequestWithNewUsername:(id)a3 newGeneratedPassword:(id)a4 lastGeneratedPassword:(id)a5 credentialURL:(id)a6 protectionSpace:(id)a7 savedAccountContext:(id)a8 shouldSaveNewCredential:(BOOL)a9 shouldSaveExistingCredential:(BOOL)a10 associatedDomainsManager:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v32 = a7;
  v31 = a8;
  v21 = a11;
  v33.receiver = self;
  v33.super_class = WBUGeneratedPasswordCredentialUpdateRequest;
  v22 = [(WBUGeneratedPasswordCredentialUpdateRequest *)&v33 init];
  if (v22)
  {
    v23 = [v17 copy];
    username = v22->_username;
    v22->_username = v23;

    v25 = [v18 copy];
    generatedPassword = v22->_generatedPassword;
    v22->_generatedPassword = v25;

    v27 = [v19 copy];
    lastGeneratedPassword = v22->_lastGeneratedPassword;
    v22->_lastGeneratedPassword = v27;

    objc_storeStrong(&v22->_urlForCredential, a6);
    objc_storeStrong(&v22->_protectionSpace, a7);
    objc_storeStrong(&v22->_savedAccountContext, a8);
    v22->_shouldSaveNewCredential = a9;
    v22->_shouldSaveExistingCredential = a10;
    objc_storeStrong(&v22->_associatedDomainsManager, a11);
    v29 = v22;
  }

  return v22;
}

@end