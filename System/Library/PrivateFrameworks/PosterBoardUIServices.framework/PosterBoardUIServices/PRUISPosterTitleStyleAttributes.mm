@interface PRUISPosterTitleStyleAttributes
- (PRUISPosterTitleStyleAttributes)initWithPRPosterTitleStyleConfiguration:(id)a3 extensionBundleURL:(id)a4 role:(id)a5;
- (PRUISPosterTitleStyleAttributes)initWithTitleColor:(id)a3 titleFont:(id)a4 preferredTitleAlignment:(unint64_t)a5 preferredTitleLayout:(unint64_t)a6 vibrancyConfiguration:(id)a7;
@end

@implementation PRUISPosterTitleStyleAttributes

- (PRUISPosterTitleStyleAttributes)initWithPRPosterTitleStyleConfiguration:(id)a3 extensionBundleURL:(id)a4 role:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 effectiveTitleColor];
  v12 = [v11 color];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [MEMORY[0x1E69C5340] defaultTitleColor];
    v14 = [v15 color];
  }

  v16 = [v8 effectiveTimeFontWithExtensionBundleURL:v9 forRole:v10];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [MEMORY[0x1E69C5340] defaultTitleFontForRole:v10];
  }

  v19 = v18;

  v20 = [v8 vibrancyConfigurationWithExtensionBundleURL:v9];
  v21 = -[PRUISPosterTitleStyleAttributes initWithTitleColor:titleFont:preferredTitleAlignment:preferredTitleLayout:vibrancyConfiguration:](self, "initWithTitleColor:titleFont:preferredTitleAlignment:preferredTitleLayout:vibrancyConfiguration:", v14, v19, [v8 preferredTitleAlignment], objc_msgSend(v8, "preferredTitleLayout"), v20);

  return v21;
}

- (PRUISPosterTitleStyleAttributes)initWithTitleColor:(id)a3 titleFont:(id)a4 preferredTitleAlignment:(unint64_t)a5 preferredTitleLayout:(unint64_t)a6 vibrancyConfiguration:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = PRUISPosterTitleStyleAttributes;
  v16 = [(PRUISPosterTitleStyleAttributes *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_titleColor, a3);
    objc_storeStrong(&v17->_titleFont, a4);
    v17->_preferredTitleAlignment = a5;
    v17->_preferredTitleLayout = a6;
    objc_storeStrong(&v17->_vibrancyConfiguration, a7);
  }

  return v17;
}

@end