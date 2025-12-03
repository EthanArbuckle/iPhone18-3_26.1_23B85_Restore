@interface PSUIAppInstallLockupViewSpecifier
- (PSUIAppInstallLockupViewSpecifier)initWithFailureHandler:(id)handler diagCode:(id)code diagSubCode:(id)subCode OpenAppURL:(id)l appId:(id)id AnalyticsEventForApp:(id)app;
- (void)handleLockupViewFailure:(id)failure;
@end

@implementation PSUIAppInstallLockupViewSpecifier

- (PSUIAppInstallLockupViewSpecifier)initWithFailureHandler:(id)handler diagCode:(id)code diagSubCode:(id)subCode OpenAppURL:(id)l appId:(id)id AnalyticsEventForApp:(id)app
{
  handlerCopy = handler;
  codeCopy = code;
  subCodeCopy = subCode;
  lCopy = l;
  idCopy = id;
  appCopy = app;
  v24.receiver = self;
  v24.super_class = PSUIAppInstallLockupViewSpecifier;
  v20 = [(PSUIAppInstallLockupViewSpecifier *)&v24 initWithName:&stru_287733598 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v21 = v20;
  if (v20)
  {
    [(PSUIAppInstallLockupViewSpecifier *)v20 setLoadingFailureHandler:handlerCopy];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:v22 forKey:*MEMORY[0x277D40140]];

    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:@"AppInstallLockupView" forKey:*MEMORY[0x277D3FFB8]];
    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:lCopy forKey:0x287737EB8];
    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:idCopy forKey:0x287737ED8];
    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:appCopy forKey:0x287737EF8];
    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:codeCopy forKey:0x287737F18];
    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:subCodeCopy forKey:0x287737F38];
  }

  return v21;
}

- (void)handleLockupViewFailure:(id)failure
{
  failureCopy = failure;
  loadingFailureHandler = [(PSUIAppInstallLockupViewSpecifier *)self loadingFailureHandler];

  if (loadingFailureHandler)
  {
    loadingFailureHandler2 = [(PSUIAppInstallLockupViewSpecifier *)self loadingFailureHandler];
    (loadingFailureHandler2)[2](loadingFailureHandler2, failureCopy);
  }
}

@end