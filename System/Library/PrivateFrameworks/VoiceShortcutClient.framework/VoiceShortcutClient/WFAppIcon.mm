@interface WFAppIcon
- (BOOL)isEqual:(id)equal;
- (WFAppIcon)initWithBundleIdentifier:(id)identifier;
- (WFAppIcon)initWithCoder:(id)coder;
- (id)associatedLogo;
@end

@implementation WFAppIcon

- (WFAppIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  v6 = [(WFAppIcon *)self initWithBundleIdentifier:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bundleIdentifier = [(WFAppIcon *)self bundleIdentifier];
    bundleIdentifier2 = [equalCopy bundleIdentifier];
    v7 = bundleIdentifier;
    v8 = bundleIdentifier2;
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

- (WFAppIcon)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFIcon.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v12.receiver = self;
  v12.super_class = WFAppIcon;
  _init = [(WFIcon *)&v12 _init];
  if (_init)
  {
    v7 = [identifierCopy copy];
    bundleIdentifier = _init->_bundleIdentifier;
    _init->_bundleIdentifier = v7;

    v9 = _init;
  }

  return _init;
}

- (id)associatedLogo
{
  v12[7] = *MEMORY[0x1E69E9840];
  bundleIdentifier = [(WFAppIcon *)self bundleIdentifier];

  if (bundleIdentifier)
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
    bundleIdentifier2 = [(WFAppIcon *)self bundleIdentifier];
    v6 = [v4 objectForKeyedSubscript:bundleIdentifier2];

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