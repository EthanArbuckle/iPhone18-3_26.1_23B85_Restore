@interface WFWallpaperConfiguration
- (NSURL)assetURL;
- (WFWallpaperConfiguration)initWithAssetURL:(id)a3 localIdentifier:(id)a4 location:(int64_t)a5 legibilityBlur:(id)a6 smartCrop:(id)a7 usePreview:(id)a8;
- (WFWallpaperConfiguration)initWithCoder:(id)a3;
- (WFWallpaperConfiguration)initWithUserInfo:(id)a3;
- (id)description;
- (id)userInfoRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWallpaperConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFWallpaperConfiguration *)self assetURLWrapper];
  [v4 encodeObject:v5 forKey:@"assetURLWrapper"];

  v6 = [(WFWallpaperConfiguration *)self assetIdentifier];
  [v4 encodeObject:v6 forKey:@"assetIdentifier"];

  [v4 encodeInteger:-[WFWallpaperConfiguration location](self forKey:{"location"), @"location"}];
  v7 = [(WFWallpaperConfiguration *)self legibilityBlur];
  [v4 encodeObject:v7 forKey:@"legibilityBlur"];

  v8 = [(WFWallpaperConfiguration *)self smartCrop];
  [v4 encodeObject:v8 forKey:@"smartCrop"];

  v9 = [(WFWallpaperConfiguration *)self usePreview];
  [v4 encodeObject:v9 forKey:@"usePreview"];
}

- (WFWallpaperConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WFWallpaperConfiguration;
  v5 = [(WFWallpaperConfiguration *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetURLWrapper"];
    assetURLWrapper = v5->_assetURLWrapper;
    v5->_assetURLWrapper = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetIdentifier"];
    assetIdentifier = v5->_assetIdentifier;
    v5->_assetIdentifier = v8;

    v5->_location = [v4 decodeIntegerForKey:@"location"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"legibilityBlur"];
    legibilityBlur = v5->_legibilityBlur;
    v5->_legibilityBlur = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"smartCrop"];
    smartCrop = v5->_smartCrop;
    v5->_smartCrop = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usePreview"];
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
  v5 = [(WFWallpaperConfiguration *)self assetURL];
  v6 = [(WFWallpaperConfiguration *)self assetIdentifier];
  v7 = [(WFWallpaperConfiguration *)self location];
  if (v7 > 2)
  {
    v8 = @"invalid";
  }

  else
  {
    v8 = off_1E7B015C8[v7];
  }

  v9 = [(WFWallpaperConfiguration *)self legibilityBlur];
  v10 = [(WFWallpaperConfiguration *)self smartCrop];
  v11 = [(WFWallpaperConfiguration *)self usePreview];
  v12 = [v3 stringWithFormat:@"<%@, assetURL: %@, assetID: %@, location: %@, legibilityBlur: %@, smartCrop: %@, usePreview: %@", v4, v5, v6, v8, v9, v10, v11];

  return v12;
}

- (NSURL)assetURL
{
  v2 = [(WFWallpaperConfiguration *)self assetURLWrapper];
  v3 = [v2 url];

  return v3;
}

- (id)userInfoRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(WFWallpaperConfiguration *)self assetIdentifier];
  [v3 if_setObjectIfNonNil:v4 forKey:@"wf_assetIdentifier"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WFWallpaperConfiguration location](self, "location")}];
  [v3 if_setObjectIfNonNil:v5 forKey:@"wf_wallpaperLocation"];

  v6 = [(WFWallpaperConfiguration *)self legibilityBlur];
  [v3 if_setObjectIfNonNil:v6 forKey:@"wf_legibilityBlur"];

  v7 = [(WFWallpaperConfiguration *)self smartCrop];
  [v3 if_setObjectIfNonNil:v7 forKey:@"wf_smartCrop"];

  v8 = [(WFWallpaperConfiguration *)self usePreview];
  [v3 if_setObjectIfNonNil:v8 forKey:@"wf_usePreview"];

  v9 = [(WFWallpaperConfiguration *)self assetURLWrapper];

  if (v9)
  {
    v10 = MEMORY[0x1E696ACC8];
    v11 = [(WFWallpaperConfiguration *)self assetURLWrapper];
    v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];

    [v3 if_setObjectIfNonNil:v12 forKey:@"wf_assetURLWrapper"];
  }

  v13 = [v3 copy];

  return v13;
}

- (WFWallpaperConfiguration)initWithUserInfo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v8 = [v4 objectForKey:@"wf_assetURLWrapper"];
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

  v13 = [v4 objectForKey:@"wf_assetIdentifier"];
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

  v17 = [v4 objectForKey:@"wf_wallpaperLocation"];
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

  v20 = [v19 integerValue];
  v5->_location = v20;
  v21 = [v4 objectForKey:@"wf_legibilityBlur"];
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

  v25 = [v4 objectForKey:@"wf_smartCrop"];
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

  v29 = [v4 objectForKey:@"wf_usePreview"];
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
      v39 = v4;
      _os_log_impl(&dword_1B1DE3000, v34, OS_LOG_TYPE_DEFAULT, "Unable to make wallpaper configuration from userInfo due to missing asset URL and identifier: %@", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v33 = v5;
LABEL_39:

  v35 = *MEMORY[0x1E69E9840];
  return v33;
}

- (WFWallpaperConfiguration)initWithAssetURL:(id)a3 localIdentifier:(id)a4 location:(int64_t)a5 legibilityBlur:(id)a6 smartCrop:(id)a7 usePreview:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = WFWallpaperConfiguration;
  v19 = [(WFWallpaperConfiguration *)&v26 init];
  if (v19)
  {
    if (v14)
    {
      v20 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v14 readonly:1];
    }

    else
    {
      v20 = 0;
    }

    assetURLWrapper = v19->_assetURLWrapper;
    v19->_assetURLWrapper = v20;

    v22 = [v15 copy];
    assetIdentifier = v19->_assetIdentifier;
    v19->_assetIdentifier = v22;

    v19->_location = a5;
    objc_storeStrong(&v19->_legibilityBlur, a6);
    objc_storeStrong(&v19->_smartCrop, a7);
    objc_storeStrong(&v19->_usePreview, a8);
    v24 = v19;
  }

  return v19;
}

@end