@interface WFWallpaperConfiguration
- (NSURL)assetURL;
- (WFWallpaperConfiguration)initWithAssetURL:(id)l localIdentifier:(id)identifier location:(int64_t)location legibilityBlur:(id)blur smartCrop:(id)crop usePreview:(id)preview;
- (WFWallpaperConfiguration)initWithCoder:(id)coder;
- (WFWallpaperConfiguration)initWithUserInfo:(id)info;
- (id)description;
- (id)userInfoRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWallpaperConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetURLWrapper = [(WFWallpaperConfiguration *)self assetURLWrapper];
  [coderCopy encodeObject:assetURLWrapper forKey:@"assetURLWrapper"];

  assetIdentifier = [(WFWallpaperConfiguration *)self assetIdentifier];
  [coderCopy encodeObject:assetIdentifier forKey:@"assetIdentifier"];

  [coderCopy encodeInteger:-[WFWallpaperConfiguration location](self forKey:{"location"), @"location"}];
  legibilityBlur = [(WFWallpaperConfiguration *)self legibilityBlur];
  [coderCopy encodeObject:legibilityBlur forKey:@"legibilityBlur"];

  smartCrop = [(WFWallpaperConfiguration *)self smartCrop];
  [coderCopy encodeObject:smartCrop forKey:@"smartCrop"];

  usePreview = [(WFWallpaperConfiguration *)self usePreview];
  [coderCopy encodeObject:usePreview forKey:@"usePreview"];
}

- (WFWallpaperConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = WFWallpaperConfiguration;
  v5 = [(WFWallpaperConfiguration *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetURLWrapper"];
    assetURLWrapper = v5->_assetURLWrapper;
    v5->_assetURLWrapper = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetIdentifier"];
    assetIdentifier = v5->_assetIdentifier;
    v5->_assetIdentifier = v8;

    v5->_location = [coderCopy decodeIntegerForKey:@"location"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"legibilityBlur"];
    legibilityBlur = v5->_legibilityBlur;
    v5->_legibilityBlur = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smartCrop"];
    smartCrop = v5->_smartCrop;
    v5->_smartCrop = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usePreview"];
    usePreview = v5->_usePreview;
    v5->_usePreview = v14;

    v16 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = WFWallpaperConfiguration;
  v4 = [(WFWallpaperConfiguration *)&v14 description];
  assetURL = [(WFWallpaperConfiguration *)self assetURL];
  assetIdentifier = [(WFWallpaperConfiguration *)self assetIdentifier];
  location = [(WFWallpaperConfiguration *)self location];
  if (location > 2)
  {
    v8 = @"invalid";
  }

  else
  {
    v8 = off_1E7B015C8[location];
  }

  legibilityBlur = [(WFWallpaperConfiguration *)self legibilityBlur];
  smartCrop = [(WFWallpaperConfiguration *)self smartCrop];
  usePreview = [(WFWallpaperConfiguration *)self usePreview];
  v12 = [v3 stringWithFormat:@"<%@, assetURL: %@, assetID: %@, location: %@, legibilityBlur: %@, smartCrop: %@, usePreview: %@", v4, assetURL, assetIdentifier, v8, legibilityBlur, smartCrop, usePreview];

  return v12;
}

- (NSURL)assetURL
{
  assetURLWrapper = [(WFWallpaperConfiguration *)self assetURLWrapper];
  v3 = [assetURLWrapper url];

  return v3;
}

- (id)userInfoRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  assetIdentifier = [(WFWallpaperConfiguration *)self assetIdentifier];
  [v3 if_setObjectIfNonNil:assetIdentifier forKey:@"wf_assetIdentifier"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WFWallpaperConfiguration location](self, "location")}];
  [v3 if_setObjectIfNonNil:v5 forKey:@"wf_wallpaperLocation"];

  legibilityBlur = [(WFWallpaperConfiguration *)self legibilityBlur];
  [v3 if_setObjectIfNonNil:legibilityBlur forKey:@"wf_legibilityBlur"];

  smartCrop = [(WFWallpaperConfiguration *)self smartCrop];
  [v3 if_setObjectIfNonNil:smartCrop forKey:@"wf_smartCrop"];

  usePreview = [(WFWallpaperConfiguration *)self usePreview];
  [v3 if_setObjectIfNonNil:usePreview forKey:@"wf_usePreview"];

  assetURLWrapper = [(WFWallpaperConfiguration *)self assetURLWrapper];

  if (assetURLWrapper)
  {
    v10 = MEMORY[0x1E696ACC8];
    assetURLWrapper2 = [(WFWallpaperConfiguration *)self assetURLWrapper];
    v12 = [v10 archivedDataWithRootObject:assetURLWrapper2 requiringSecureCoding:1 error:0];

    [v3 if_setObjectIfNonNil:v12 forKey:@"wf_assetURLWrapper"];
  }

  v13 = [v3 copy];

  return v13;
}

- (WFWallpaperConfiguration)initWithUserInfo:(id)info
{
  v40 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v37.receiver = self;
  v37.super_class = WFWallpaperConfiguration;
  v5 = [(WFWallpaperConfiguration *)&v37 init];
  if (!v5)
  {
LABEL_38:
    v33 = 0;
    goto LABEL_39;
  }

  v6 = MEMORY[0x1E696ACD0];
  v7 = objc_opt_class();
  v8 = [infoCopy objectForKey:@"wf_assetURLWrapper"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v6 unarchivedObjectOfClass:v7 fromData:v10 error:0];

  assetURLWrapper = v5->_assetURLWrapper;
  v5->_assetURLWrapper = v11;

  v13 = [infoCopy objectForKey:@"wf_assetIdentifier"];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  assetIdentifier = v5->_assetIdentifier;
  v5->_assetIdentifier = v15;

  v17 = [infoCopy objectForKey:@"wf_wallpaperLocation"];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  integerValue = [v19 integerValue];
  v5->_location = integerValue;
  v21 = [infoCopy objectForKey:@"wf_legibilityBlur"];
  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  legibilityBlur = v5->_legibilityBlur;
  v5->_legibilityBlur = v23;

  v25 = [infoCopy objectForKey:@"wf_smartCrop"];
  if (v25)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  smartCrop = v5->_smartCrop;
  v5->_smartCrop = v27;

  v29 = [infoCopy objectForKey:@"wf_usePreview"];
  if (v29)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  usePreview = v5->_usePreview;
  v5->_usePreview = v31;

  if (!v5->_assetURLWrapper && !v5->_assetIdentifier)
  {
    v34 = os_log_create("com.apple.shortcuts", "Actions");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = infoCopy;
      _os_log_impl(&dword_1B1DE3000, v34, OS_LOG_TYPE_DEFAULT, "Unable to make wallpaper configuration from userInfo due to missing asset URL and identifier: %@", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v33 = v5;
LABEL_39:

  v35 = *MEMORY[0x1E69E9840];
  return v33;
}

- (WFWallpaperConfiguration)initWithAssetURL:(id)l localIdentifier:(id)identifier location:(int64_t)location legibilityBlur:(id)blur smartCrop:(id)crop usePreview:(id)preview
{
  lCopy = l;
  identifierCopy = identifier;
  blurCopy = blur;
  cropCopy = crop;
  previewCopy = preview;
  v26.receiver = self;
  v26.super_class = WFWallpaperConfiguration;
  v19 = [(WFWallpaperConfiguration *)&v26 init];
  if (v19)
  {
    if (lCopy)
    {
      v20 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:lCopy readonly:1];
    }

    else
    {
      v20 = 0;
    }

    assetURLWrapper = v19->_assetURLWrapper;
    v19->_assetURLWrapper = v20;

    v22 = [identifierCopy copy];
    assetIdentifier = v19->_assetIdentifier;
    v19->_assetIdentifier = v22;

    v19->_location = location;
    objc_storeStrong(&v19->_legibilityBlur, blur);
    objc_storeStrong(&v19->_smartCrop, crop);
    objc_storeStrong(&v19->_usePreview, preview);
    v24 = v19;
  }

  return v19;
}

@end