@interface PRPosterConfigurableOptions(PRBAdditions)
+ (id)pbf_configurableOptionsForPreview:()PRBAdditions;
@end

@implementation PRPosterConfigurableOptions(PRBAdditions)

+ (id)pbf_configurableOptionsForPreview:()PRBAdditions
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 titleStyleConfiguration];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v6 = [v4 titleColor];
  if (v6 || ([v4 isUserConfigured] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3EE30], "defaultTitleColor"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [v5 addObject:v6];
  }

  v8 = [v4 timeFontConfiguration];
  v9 = v8;
  if (v8)
  {
    v17[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  }

  else
  {
    v11 = [MEMORY[0x277D3EE28] defaultConfiguration];
    v16 = v11;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  }

  v12 = objc_alloc(MEMORY[0x277D3ED50]);
  v13 = [v3 displayNameLocalizationKey];

  [v4 contentsLuminance];
  v14 = [v12 initWithDisplayNameLocalizationKey:v13 ambientSupportedDataLayout:0 preferredTimeFontConfigurations:v10 preferredTitleColors:v5 luminance:0 preferredHomeScreenConfiguration:0 preferredRenderingConfiguration:?];

  return v14;
}

@end