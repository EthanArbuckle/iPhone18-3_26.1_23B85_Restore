@interface WFAppIcon
- (BOOL)isEqual:(id)a3;
- (WFAppIcon)initWithBundleIdentifier:(id)a3;
- (WFAppIcon)initWithCoder:(id)a3;
- (id)associatedLogo;
@end

@implementation WFAppIcon

- (WFAppIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  v6 = [(WFAppIcon *)self initWithBundleIdentifier:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFAppIcon *)self bundleIdentifier];
    v6 = [v4 bundleIdentifier];
    v7 = v5;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 && v8)
      {
        v10 = [v7 isEqualToString:v8];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (WFAppIcon)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFIcon.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v12.receiver = self;
  v12.super_class = WFAppIcon;
  v6 = [(WFIcon *)&v12 _init];
  if (v6)
  {
    v7 = [v5 copy];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v7;

    v9 = v6;
  }

  return v6;
}

- (id)associatedLogo
{
  v12[7] = *MEMORY[0x1E69E9840];
  v3 = [(WFAppIcon *)self bundleIdentifier];

  if (v3)
  {
    v11[0] = @"com.apple.freeform";
    v11[1] = @"com.apple.Music";
    v12[0] = @"FreeformLogo";
    v12[1] = @"MusicLogo";
    v11[2] = @"com.apple.musicrecognition";
    v11[3] = @"com.apple.podcasts";
    v12[2] = @"ShazamLogo";
    v12[3] = @"PodcastsLogo";
    v11[4] = @"com.apple.mobileslideshow";
    v11[5] = @"com.apple.Translate";
    v12[4] = @"PhotosLogo";
    v12[5] = @"TranslateLogo";
    v11[6] = @"com.apple.VisualIntelligenceCamera";
    v12[6] = @"VisualIntelligenceLogo";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:7];
    v5 = [(WFAppIcon *)self bundleIdentifier];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v8 = [WFImage imageNamed:v6 inBundle:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end