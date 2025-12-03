@interface PRPosterConfigurableOptions(PRBAdditions)
+ (id)pbf_configurableOptionsForPreview:()PRBAdditions;
@end

@implementation PRPosterConfigurableOptions(PRBAdditions)

+ (id)pbf_configurableOptionsForPreview:()PRBAdditions
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  titleStyleConfiguration = [v3 titleStyleConfiguration];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  titleColor = [titleStyleConfiguration titleColor];
  if (titleColor || ([titleStyleConfiguration isUserConfigured] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3EE30], "defaultTitleColor"), (titleColor = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = titleColor;
    [v5 addObject:titleColor];
  }

  timeFontConfiguration = [titleStyleConfiguration timeFontConfiguration];
  v9 = timeFontConfiguration;
  if (timeFontConfiguration)
  {
    v17[0] = timeFontConfiguration;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  }

  else
  {
    defaultConfiguration = [MEMORY[0x277D3EE28] defaultConfiguration];
    v16 = defaultConfiguration;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  }

  v12 = objc_alloc(MEMORY[0x277D3ED50]);
  displayNameLocalizationKey = [v3 displayNameLocalizationKey];

  [titleStyleConfiguration contentsLuminance];
  v14 = [v12 initWithDisplayNameLocalizationKey:displayNameLocalizationKey ambientSupportedDataLayout:0 preferredTimeFontConfigurations:v10 preferredTitleColors:v5 luminance:0 preferredHomeScreenConfiguration:0 preferredRenderingConfiguration:?];

  return v14;
}

@end