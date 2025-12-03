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
  posterDescriptorLookupInfo = [v12 posterDescriptorLookupInfo];
  posterDescriptorPath = [posterDescriptorLookupInfo posterDescriptorPath];

  role = [posterDescriptorPath role];
  titleStyleConfiguration = [v12 titleStyleConfiguration];
  posterDescriptorLookupInfo2 = [v12 posterDescriptorLookupInfo];

  posterDescriptorExtension = [posterDescriptorLookupInfo2 posterDescriptorExtension];
  posterExtensionBundle = [posterDescriptorExtension posterExtensionBundle];

  bundleURL = [posterExtensionBundle bundleURL];
  v20 = [titleStyleConfiguration vibrancyConfigurationWithExtensionBundle:posterExtensionBundle forRole:role];
  v21 = [v20 copyWithGroupName:@"PBFPosterAssetViewController"];

  groupName = [v21 groupName];
  [self setGroupName:groupName];

  timeNumberingSystem = [titleStyleConfiguration timeNumberingSystem];
  [self setNumberingSystem:timeNumberingSystem];
  titleContentStyle = [titleStyleConfiguration titleContentStyle];
  [self setTitleContentStyle:titleContentStyle];

  alternativeVibrancyEffectLUT = [v21 alternativeVibrancyEffectLUT];
  lutIdentifier = [alternativeVibrancyEffectLUT lutIdentifier];
  bundleURL2 = [alternativeVibrancyEffectLUT bundleURL];
  [self setAlternativeVibrancyEffectLUTIdentifier:lutIdentifier alternativeVibrancyEffectLUTBundleURL:bundleURL2 luminanceReduced:0];

  [self pr_setAlternateDateEnabled:{objc_msgSend(titleStyleConfiguration, "isAlternateDateEnabled")}];
  [self pr_setStylingFromTitleStyleConfiguration:titleStyleConfiguration salientContentRectangle:bundleURL withExtensionBundleURL:role forRole:{a2, a3, a4, a5}];
}

@end