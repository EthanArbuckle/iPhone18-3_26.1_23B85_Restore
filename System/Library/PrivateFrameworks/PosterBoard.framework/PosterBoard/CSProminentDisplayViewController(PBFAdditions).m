@interface CSProminentDisplayViewController(PBFAdditions)
+ (id)pbf_createIdealizedTimeProminentDisplayViewController;
- (void)pbf_updateWithPreview:()PBFAdditions salientContentRectangle:;
@end

@implementation CSProminentDisplayViewController(PBFAdditions)

+ (id)pbf_createIdealizedTimeProminentDisplayViewController
{
  v0 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:190057260.0];
  v1 = [objc_alloc(MEMORY[0x277D02CE0]) initWithElements:1 baseFont:0 date:v0 textColor:0];

  return v1;
}

- (void)pbf_updateWithPreview:()PBFAdditions salientContentRectangle:
{
  v12 = a7;
  v13 = [v12 posterDescriptorLookupInfo];
  v28 = [v13 posterDescriptorPath];

  v14 = [v28 role];
  v15 = [v12 titleStyleConfiguration];
  v16 = [v12 posterDescriptorLookupInfo];

  v17 = [v16 posterDescriptorExtension];
  v18 = [v17 posterExtensionBundle];

  v19 = [v18 bundleURL];
  v20 = [v15 vibrancyConfigurationWithExtensionBundle:v18 forRole:v14];
  v21 = [v20 copyWithGroupName:@"PBFPosterAssetViewController"];

  v22 = [v21 groupName];
  [a1 setGroupName:v22];

  v23 = [v15 timeNumberingSystem];
  [a1 setNumberingSystem:v23];
  v24 = [v15 titleContentStyle];
  [a1 setTitleContentStyle:v24];

  v25 = [v21 alternativeVibrancyEffectLUT];
  v26 = [v25 lutIdentifier];
  v27 = [v25 bundleURL];
  [a1 setAlternativeVibrancyEffectLUTIdentifier:v26 alternativeVibrancyEffectLUTBundleURL:v27 luminanceReduced:0];

  [a1 pr_setAlternateDateEnabled:{objc_msgSend(v15, "isAlternateDateEnabled")}];
  [a1 pr_setStylingFromTitleStyleConfiguration:v15 salientContentRectangle:v19 withExtensionBundleURL:v14 forRole:{a2, a3, a4, a5}];
}

@end