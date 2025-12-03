@interface PSGCertTrustSettings
- (id)isFullTrustEnabled:(id)enabled;
- (id)specifierForTrustSettings:(__SecCertificate *)settings isRestricted:(BOOL)restricted;
- (id)specifiers;
- (id)trustAssetVersionString:(id)string;
- (id)trustVersionString:(id)string;
- (void)setFullTrustEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation PSGCertTrustSettings

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PSGCertTrustSettings;
  [(PSGCertTrustSettings *)&v4 viewDidLoad];
  v3 = PSG_LocalizedString(@"CERT_TRUST_SETTINGS");
  [(PSGCertTrustSettings *)self setTitle:v3];
}

void __39__PSGCertTrustSettings_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v34 = 0;
    v7 = [mEMORY[0x277D262A0] lockedDownRootCertificatesWithOutLocalizedSourceDescription:&v34];
    v8 = v34;

    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v33 = v8;
    [emptyGroupSpecifier setProperty:v8 forKey:*MEMORY[0x277D3FF88]];
    [v5 addObject:emptyGroupSpecifier];
    v10 = emptyGroupSpecifier;
    v11 = PSG_BundleForGeneralSettingsUIFramework();
    v12 = [v11 localizedStringForKey:&stru_282E88A90 value:&stru_282E88A90 table:0];

    v13 = PSG_BundleForGeneralSettingsUIFramework();
    v14 = [v13 localizedStringForKey:@"TRUST_STORE_VERSION" value:&stru_282E88A90 table:0];

    v32 = v14;
    v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:self set:0 get:sel_trustVersionString_ detail:0 cell:4 edit:0];
    v16 = *MEMORY[0x277D3FFB8];
    [v15 setProperty:@"TRUST_STORE_VERSION" forKey:*MEMORY[0x277D3FFB8]];
    v31 = v15;
    [v5 addObject:v15];
    v17 = MEMORY[0x277D3FAD8];
    v18 = PSG_LocalizedStringForGeneral(@"TRUST_ASSET_VERSION");
    v19 = [v17 preferenceSpecifierNamed:v18 target:self set:0 get:sel_trustAssetVersionString_ detail:0 cell:4 edit:0];

    v20 = v19;
    [v19 setProperty:@"TRUST_ASSET_VERSION" forKey:v16];
    [v5 addObject:v19];
    SecTrustStoreForDomain();
    SecTrustStoreCopyAll();
    v21 = PSG_LocalizedStringForGeneral(@"TRUST_STORE_ABOUT");
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v10 setProperty:v23 forKey:*MEMORY[0x277D3FF48]];

    [v10 setProperty:v21 forKey:*MEMORY[0x277D3FF70]];
    v36.length = [v21 length];
    v36.location = 0;
    v24 = NSStringFromRange(v36);
    [v10 setProperty:v24 forKey:*MEMORY[0x277D3FF58]];

    v25 = MEMORY[0x277CBEBC0];
    v26 = PSG_LocalizedStringForGeneral(@"TRUST_STORE_URL");
    v27 = [v25 URLWithString:v26];
    [v10 setProperty:v27 forKey:*MEMORY[0x277D3FF78]];

    v28 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;
    v29 = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)isFullTrustEnabled:(id)enabled
{
  [enabled propertyForKey:@"certName"];
  SecTrustStoreForDomain();
  SecTrustStoreCopyUsageConstraints();
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];

  return v3;
}

- (void)setFullTrustEnabled:(id)enabled forSpecifier:(id)specifier
{
  v36[2] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  enabledCopy = enabled;
  v8 = [specifierCopy propertyForKey:@"certName"];
  intValue = [enabledCopy intValue];

  if (intValue)
  {
    v10 = MEMORY[0x277D75110];
    v11 = PSG_LocalizedStringForGeneral(@"ROOT_CERTIFICATE");
    v12 = PSG_LocalizedStringForGeneral(@"ROOT_CERTIFICATE_MESSAGE");
    v13 = [v10 alertControllerWithTitle:v11 message:v12 preferredStyle:1];

    v14 = MEMORY[0x277D750F8];
    v15 = PSG_LocalizedStringForGeneral(@"CONTINUE");
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __57__PSGCertTrustSettings_setFullTrustEnabled_forSpecifier___block_invoke;
    v31[3] = &__block_descriptor_40_e23_v16__0__UIAlertAction_8l;
    v31[4] = v8;
    v16 = [v14 actionWithTitle:v15 style:0 handler:v31];
    [v13 addAction:v16];

    v17 = MEMORY[0x277D750F8];
    v18 = PSG_LocalizedStringForGeneral(@"CANCEL");
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __57__PSGCertTrustSettings_setFullTrustEnabled_forSpecifier___block_invoke_2;
    v28 = &unk_2783250E0;
    selfCopy = self;
    v30 = specifierCopy;
    v19 = [v17 actionWithTitle:v18 style:1 handler:&v25];
    [v13 addAction:{v19, v25, v26, v27, v28, selfCopy}];

    [(PSGCertTrustSettings *)self presentViewController:v13 animated:1 completion:0];
LABEL_5:

    goto LABEL_6;
  }

  SSL = SecPolicyCreateSSL(1u, 0);
  if (SSL)
  {
    v21 = SSL;
    v34[0] = @"kSecTrustSettingsPolicy";
    v34[1] = @"kSecTrustSettingsResult";
    v35[0] = SSL;
    v35[1] = &unk_282E8FDE8;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v36[0] = v22;
    v32 = @"kSecTrustSettingsResult";
    v33 = &unk_282E8FE00;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v36[1] = v23;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];

    SecTrustStoreForDomain();
    SecTrustStoreSetTrustSettings();
    CFRelease(v21);
    goto LABEL_5;
  }

LABEL_6:

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __57__PSGCertTrustSettings_setFullTrustEnabled_forSpecifier___block_invoke(uint64_t a1)
{
  SecTrustStoreForDomain();
  v2 = *(a1 + 32);

  return SecTrustStoreSetTrustSettings();
}

- (id)specifierForTrustSettings:(__SecCertificate *)settings isRestricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  v7 = SecCertificateCopyCommonNames();
  if ([v7 count] && (objc_msgSend(v7, "firstObject"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:sel_setFullTrustEnabled_forSpecifier_ get:sel_isFullTrustEnabled_ detail:0 cell:6 edit:0];
    [v10 setProperty:settings forKey:@"certName"];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:!restrictedCopy];
    [v10 setProperty:v11 forKey:*MEMORY[0x277D3FF38]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)trustVersionString:(id)string
{
  if (SecTrustStoreGetSettingsVersionNumber())
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", 0];
  }

  return v3;
}

- (id)trustAssetVersionString:(id)string
{
  if (SecTrustStoreGetSettingsAssetVersionNumber())
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", 0];
  }

  return v3;
}

@end