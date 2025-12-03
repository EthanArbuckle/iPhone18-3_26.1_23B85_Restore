@interface WBUGeneratedPasswordCredentialUpdateRequest
+ (id)requestWithNewUsername:(id)username newGeneratedPassword:(id)password lastGeneratedPassword:(id)generatedPassword credentialURL:(id)l protectionSpace:(id)space savedAccountContext:(id)context shouldSaveNewCredential:(BOOL)credential shouldSaveExistingCredential:(BOOL)self0 associatedDomainsManager:(id)self1;
- (id)_initRequestWithNewUsername:(id)username newGeneratedPassword:(id)password lastGeneratedPassword:(id)generatedPassword credentialURL:(id)l protectionSpace:(id)space savedAccountContext:(id)context shouldSaveNewCredential:(BOOL)credential shouldSaveExistingCredential:(BOOL)self0 associatedDomainsManager:(id)self1;
@end

@implementation WBUGeneratedPasswordCredentialUpdateRequest

+ (id)requestWithNewUsername:(id)username newGeneratedPassword:(id)password lastGeneratedPassword:(id)generatedPassword credentialURL:(id)l protectionSpace:(id)space savedAccountContext:(id)context shouldSaveNewCredential:(BOOL)credential shouldSaveExistingCredential:(BOOL)self0 associatedDomainsManager:(id)self1
{
  managerCopy = manager;
  contextCopy = context;
  spaceCopy = space;
  lCopy = l;
  generatedPasswordCopy = generatedPassword;
  passwordCopy = password;
  usernameCopy = username;
  LOWORD(v27) = __PAIR16__(existingCredential, credential);
  v25 = [[self alloc] _initRequestWithNewUsername:usernameCopy newGeneratedPassword:passwordCopy lastGeneratedPassword:generatedPasswordCopy credentialURL:lCopy protectionSpace:spaceCopy savedAccountContext:contextCopy shouldSaveNewCredential:v27 shouldSaveExistingCredential:managerCopy associatedDomainsManager:?];

  return v25;
}

- (id)_initRequestWithNewUsername:(id)username newGeneratedPassword:(id)password lastGeneratedPassword:(id)generatedPassword credentialURL:(id)l protectionSpace:(id)space savedAccountContext:(id)context shouldSaveNewCredential:(BOOL)credential shouldSaveExistingCredential:(BOOL)self0 associatedDomainsManager:(id)self1
{
  usernameCopy = username;
  passwordCopy = password;
  generatedPasswordCopy = generatedPassword;
  lCopy = l;
  spaceCopy = space;
  contextCopy = context;
  managerCopy = manager;
  v33.receiver = self;
  v33.super_class = WBUGeneratedPasswordCredentialUpdateRequest;
  v22 = [(WBUGeneratedPasswordCredentialUpdateRequest *)&v33 init];
  if (v22)
  {
    v23 = [usernameCopy copy];
    username = v22->_username;
    v22->_username = v23;

    v25 = [passwordCopy copy];
    generatedPassword = v22->_generatedPassword;
    v22->_generatedPassword = v25;

    v27 = [generatedPasswordCopy copy];
    lastGeneratedPassword = v22->_lastGeneratedPassword;
    v22->_lastGeneratedPassword = v27;

    objc_storeStrong(&v22->_urlForCredential, l);
    objc_storeStrong(&v22->_protectionSpace, space);
    objc_storeStrong(&v22->_savedAccountContext, context);
    v22->_shouldSaveNewCredential = credential;
    v22->_shouldSaveExistingCredential = existingCredential;
    objc_storeStrong(&v22->_associatedDomainsManager, manager);
    v29 = v22;
  }

  return v22;
}

@end