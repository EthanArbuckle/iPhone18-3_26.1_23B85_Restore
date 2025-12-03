@interface PRUISPosterTitleStyleAttributes
- (PRUISPosterTitleStyleAttributes)initWithPRPosterTitleStyleConfiguration:(id)configuration extensionBundleURL:(id)l role:(id)role;
- (PRUISPosterTitleStyleAttributes)initWithTitleColor:(id)color titleFont:(id)font preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout vibrancyConfiguration:(id)configuration;
@end

@implementation PRUISPosterTitleStyleAttributes

- (PRUISPosterTitleStyleAttributes)initWithPRPosterTitleStyleConfiguration:(id)configuration extensionBundleURL:(id)l role:(id)role
{
  configurationCopy = configuration;
  lCopy = l;
  roleCopy = role;
  effectiveTitleColor = [configurationCopy effectiveTitleColor];
  color = [effectiveTitleColor color];
  v13 = color;
  if (color)
  {
    color2 = color;
  }

  else
  {
    defaultTitleColor = [MEMORY[0x1E69C5340] defaultTitleColor];
    color2 = [defaultTitleColor color];
  }

  v16 = [configurationCopy effectiveTimeFontWithExtensionBundleURL:lCopy forRole:roleCopy];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [MEMORY[0x1E69C5340] defaultTitleFontForRole:roleCopy];
  }

  v19 = v18;

  v20 = [configurationCopy vibrancyConfigurationWithExtensionBundleURL:lCopy];
  v21 = -[PRUISPosterTitleStyleAttributes initWithTitleColor:titleFont:preferredTitleAlignment:preferredTitleLayout:vibrancyConfiguration:](self, "initWithTitleColor:titleFont:preferredTitleAlignment:preferredTitleLayout:vibrancyConfiguration:", color2, v19, [configurationCopy preferredTitleAlignment], objc_msgSend(configurationCopy, "preferredTitleLayout"), v20);

  return v21;
}

- (PRUISPosterTitleStyleAttributes)initWithTitleColor:(id)color titleFont:(id)font preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout vibrancyConfiguration:(id)configuration
{
  colorCopy = color;
  fontCopy = font;
  configurationCopy = configuration;
  v19.receiver = self;
  v19.super_class = PRUISPosterTitleStyleAttributes;
  v16 = [(PRUISPosterTitleStyleAttributes *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_titleColor, color);
    objc_storeStrong(&v17->_titleFont, font);
    v17->_preferredTitleAlignment = alignment;
    v17->_preferredTitleLayout = layout;
    objc_storeStrong(&v17->_vibrancyConfiguration, configuration);
  }

  return v17;
}

@end