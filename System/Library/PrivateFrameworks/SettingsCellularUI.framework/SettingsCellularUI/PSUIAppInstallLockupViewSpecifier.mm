@interface PSUIAppInstallLockupViewSpecifier
- (PSUIAppInstallLockupViewSpecifier)initWithFailureHandler:(id)a3 diagCode:(id)a4 diagSubCode:(id)a5 OpenAppURL:(id)a6 appId:(id)a7 AnalyticsEventForApp:(id)a8;
- (void)handleLockupViewFailure:(id)a3;
@end

@implementation PSUIAppInstallLockupViewSpecifier

- (PSUIAppInstallLockupViewSpecifier)initWithFailureHandler:(id)a3 diagCode:(id)a4 diagSubCode:(id)a5 OpenAppURL:(id)a6 appId:(id)a7 AnalyticsEventForApp:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v24.receiver = self;
  v24.super_class = PSUIAppInstallLockupViewSpecifier;
  v20 = [(PSUIAppInstallLockupViewSpecifier *)&v24 initWithName:&stru_287733598 target:self set:0 get:0 detail:0 cell:4 edit:0];
  v21 = v20;
  if (v20)
  {
    [(PSUIAppInstallLockupViewSpecifier *)v20 setLoadingFailureHandler:v14];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:v22 forKey:*MEMORY[0x277D40140]];

    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:@"AppInstallLockupView" forKey:*MEMORY[0x277D3FFB8]];
    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:v17 forKey:0x287737EB8];
    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:v18 forKey:0x287737ED8];
    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:v19 forKey:0x287737EF8];
    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:v15 forKey:0x287737F18];
    [(PSUIAppInstallLockupViewSpecifier *)v21 setProperty:v16 forKey:0x287737F38];
  }

  return v21;
}

- (void)handleLockupViewFailure:(id)a3
{
  v6 = a3;
  v4 = [(PSUIAppInstallLockupViewSpecifier *)self loadingFailureHandler];

  if (v4)
  {
    v5 = [(PSUIAppInstallLockupViewSpecifier *)self loadingFailureHandler];
    (v5)[2](v5, v6);
  }
}

@end