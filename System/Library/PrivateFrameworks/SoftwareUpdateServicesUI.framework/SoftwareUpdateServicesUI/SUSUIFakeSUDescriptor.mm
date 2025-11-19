@interface SUSUIFakeSUDescriptor
- (SUSUIFakeSUDescriptor)init;
- (id)fakeDocumentation;
@end

@implementation SUSUIFakeSUDescriptor

- (SUSUIFakeSUDescriptor)init
{
  v10 = a2;
  v11 = 0;
  v9.receiver = self;
  v9.super_class = SUSUIFakeSUDescriptor;
  v8 = [(SUDescriptor *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    [(SUDescriptor *)v11 setAutoDownloadAllowableForCellular:1];
    [(SUDescriptor *)v11 setDownloadable:1];
    [(SUDescriptor *)v11 _setDisableInstallTonight:0];
    [(SUDescriptor *)v11 setRampEnabled:0];
    [(SUDescriptor *)v11 setSetupCritical:?];
    [(SUDescriptor *)v11 setCriticalOutOfBoxOnly:1];
    [(SUDescriptor *)v11 setAutoUpdateEnabled:0];
    [(SUDescriptor *)v11 setPrerequisiteBuild:0];
    [(SUDescriptor *)v11 setPrerequisiteOS:0];
    [(SUDescriptor *)v11 setAssetID:0];
    [(SUDescriptor *)v11 setHideInstallAlert:0];
    [(SUDescriptor *)v11 setAudienceType:?];
    [(SUDescriptor *)v11 setPreferenceType:0];
    [(SUDescriptor *)v11 setUpgradeType:0];
    [(SUDescriptor *)v11 setPromoteAlternateUpdate:0];
    [(SUDescriptor *)v11 setIsSplatOnly:0];
    [(SUDescriptor *)v11 setHumanReadableUpdateName:@"FakeOS 17.0"];
    [(SUDescriptor *)v11 setMandatoryUpdateEligible:0];
    [(SUDescriptor *)v11 setMandatoryUpdateVersionMin:0];
    [(SUDescriptor *)v11 setMandatoryUpdateVersionMax:0];
    [(SUDescriptor *)v11 setMandatoryUpdateOptional:0];
    [(SUDescriptor *)v11 setMandatoryUpdateRestrictedToOutOfTheBox:0];
    [(SUDescriptor *)v11 setForcePasscodeRequired:0];
    [(SUDescriptor *)v11 setPublisher:@"FakeApple"];
    [(SUDescriptor *)v11 setProductSystemName:@"FakeOS"];
    v5 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v5 systemVersion];
    [(SUDescriptor *)v11 setProductVersion:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    v7 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v7 buildVersion];
    [(SUDescriptor *)v11 setProductBuildVersion:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    [(SUDescriptor *)v11 setDownloadSize:?];
    [(SUDescriptor *)v11 setInstallationSize:26214400];
    [(SUDescriptor *)v11 _setUnarchiveSize:?];
    [(SUDescriptor *)v11 _setMsuPrepareSize:5242880];
    [(SUDescriptor *)v11 setUpdateType:1];
  }

  v3 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  return v3;
}

- (id)fakeDocumentation
{
  v2 = objc_alloc_init(SUSUIFakeDocumentation);

  return v2;
}

@end