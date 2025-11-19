@interface SPApplication
- (BOOL)displayNameLoaded;
- (BOOL)isEqual:(id)a3;
- (NSString)displayName;
- (SPApplication)initWithCoder:(id)a3;
- (id)description;
- (void)copyToSearchFoundationResult:(id)a3;
- (void)displayName;
- (void)encodeWithCoder:(id)a3;
- (void)setLongDisplayName:(id)a3;
@end

@implementation SPApplication

- (BOOL)displayNameLoaded
{
  v2 = [(SPApplication *)self displayNameInternal];
  v3 = v2 != 0;

  return v3;
}

- (NSString)displayName
{
  v3 = [(SPApplication *)self displayNameInternal];
  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:self->_displayIdentifier allowPlaceholder:1 error:0];
    v3 = [v4 localizedName];

    [(SPApplication *)self setDisplayNameInternal:v3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [(SPApplication *)&self->_displayIdentifier displayName];
    }
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  displayIdentifier = self->_displayIdentifier;
  v6 = a3;
  [v6 encodeObject:displayIdentifier forKey:@"_displayIdentifier"];
  v5 = [(SPApplication *)self displayNameInternal];
  [v6 encodeObject:v5 forKey:@"_displayNameInternal"];

  [v6 encodeObject:self->_longDisplayName forKey:@"_longDisplayName"];
  [v6 encodeObject:self->_keywords forKey:@"_keywords"];
  [v6 encodeObject:self->_URL forKey:@"_URL"];
  [v6 encodeObject:self->_shortVersion forKey:@"_shortVersion"];
  [v6 encodeInteger:self->_webClipType forKey:@"_webClipType"];
  [v6 encodeObject:self->_appBundleIdentifier forKey:@"_appBundleIdentifier"];
  [v6 encodeObject:self->_subtitle forKey:@"_subtitle"];
  [v6 encodeBool:self->_isPlaceholder forKey:@"_isPlaceholder"];
}

- (SPApplication)initWithCoder:(id)a3
{
  v4 = initWithCoder__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    [SPApplication initWithCoder:];
  }

  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_displayIdentifier"];
  displayIdentifier = self->_displayIdentifier;
  self->_displayIdentifier = v6;

  v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_displayNameInternal"];
  [(SPApplication *)self setDisplayNameInternal:v8];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_longDisplayName"];
  longDisplayName = self->_longDisplayName;
  self->_longDisplayName = v9;

  v11 = [v5 decodeObjectOfClasses:initWithCoder__objectClasses forKey:@"_keywords"];
  keywords = self->_keywords;
  self->_keywords = v11;

  v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_URL"];
  URL = self->_URL;
  self->_URL = v13;

  v15 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_shortVersion"];
  shortVersion = self->_shortVersion;
  self->_shortVersion = v15;

  self->_webClipType = [v5 decodeIntegerForKey:@"_webClipType"];
  v17 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_appBundleIdentifier"];
  appBundleIdentifier = self->_appBundleIdentifier;
  self->_appBundleIdentifier = v17;

  v19 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_subtitle"];
  subtitle = self->_subtitle;
  self->_subtitle = v19;

  LOBYTE(v8) = [v5 decodeBoolForKey:@"_isPlaceholder"];
  self->_isPlaceholder = v8;
  return self;
}

uint64_t __31__SPApplication_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  initWithCoder__objectClasses = [v0 setWithObjects:{v1, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  displayIdentifier = self->_displayIdentifier;
  v5 = [(SPApplication *)self displayNameInternal];
  v6 = v5;
  longDisplayName = self->_longDisplayName;
  v8 = @", long name:";
  shortVersion = &stru_1F47D3128;
  if (!longDisplayName)
  {
    v8 = &stru_1F47D3128;
    longDisplayName = &stru_1F47D3128;
  }

  if (self->_shortVersion)
  {
    shortVersion = self->_shortVersion;
  }

  v10 = [v3 stringWithFormat:@"SPApplication: %@, display name:%@%@%@ version:%@", displayIdentifier, v5, v8, longDisplayName, shortVersion];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (self->_webClipType == v5[8])
    {
      displayIdentifier = self->_displayIdentifier;
      v7 = v5[3];
      if (displayIdentifier == v7)
      {
        goto LABEL_7;
      }

      v8 = 0;
      if (!displayIdentifier || !v7)
      {
        goto LABEL_24;
      }

      if ([(NSString *)displayIdentifier isEqualToString:?])
      {
LABEL_7:
        appBundleIdentifier = self->_appBundleIdentifier;
        v10 = v5[7];
        if (appBundleIdentifier == v10)
        {
          goto LABEL_11;
        }

        v8 = 0;
        if (!appBundleIdentifier || !v10)
        {
          goto LABEL_24;
        }

        if ([(NSString *)appBundleIdentifier isEqualToString:?])
        {
LABEL_11:
          subtitle = self->_subtitle;
          v12 = v5[9];
          if (subtitle == v12)
          {
LABEL_15:
            v13 = [(SPApplication *)self displayNameInternal];
            v14 = [v5 displayNameInternal];
            if (v13 == v14)
            {
              v17 = 1;
            }

            else
            {
              v15 = [v13 isEqualToString:v14];
              if (v13)
              {
                v16 = v14 == 0;
              }

              else
              {
                v16 = 1;
              }

              if (v16)
              {
                v17 = 0;
              }

              else
              {
                v17 = v15;
              }
            }

            isPlaceholder = self->_isPlaceholder;
            v8 = (isPlaceholder == [v5 isPlaceholder]) & v17;

            goto LABEL_24;
          }

          v8 = 0;
          if (!subtitle || !v12)
          {
LABEL_24:

            goto LABEL_25;
          }

          if ([(NSString *)subtitle isEqualToString:?])
          {
            goto LABEL_15;
          }
        }
      }
    }

    v8 = 0;
    goto LABEL_24;
  }

  v8 = 0;
LABEL_25:

  return v8;
}

- (void)setLongDisplayName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_displayNameInternal)
  {
    v6 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v6;
    if (v4)
    {
      objc_storeStrong(&self->_longDisplayName, self->_displayNameInternal);
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)copyToSearchFoundationResult:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CA4F0]);
  v6 = SPLogForSPLogCategoryDefault();
  v7 = v6;
  if (gSPLogDebugAsDefault)
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v6, v8))
  {
    v9 = [(SPApplication *)self displayName];
    *buf = 138412546;
    v27 = v9;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_1C81BF000, v7, v8, "Set title %@ for result %@", buf, 0x16u);
  }

  v10 = [(SPApplication *)self displayName];

  if (v10)
  {
    v11 = [(SPApplication *)self displayName];
    [v5 setText:v11];
  }

  v12 = [(SPApplication *)self subtitle];

  if (v12)
  {
    v13 = MEMORY[0x1E69CA3A0];
    v14 = [(SPApplication *)self subtitle];
    v15 = [v13 textWithString:v14];

    v25 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [v4 setDescriptions:v16];
  }

  [v4 setTitle:v5];
  if ([(SPApplication *)self isAppClip])
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = *MEMORY[0x1E6994668];
    v19 = [(SPApplication *)self displayIdentifier];
    v20 = [v17 stringWithFormat:@"%@%@", v18, v19];
    [v4 setIdentifier:v20];

    v21 = [(SPApplication *)self appBundleIdentifier];
    [v4 setResultBundleId:v21];

    [v4 setApplicationBundleIdentifier:@"com.apple.application"];
    [v4 setIsAppClip:1];
  }

  else
  {
    [v4 setIsWebClip:{-[SPApplication isWebClip](self, "isWebClip")}];
    v22 = [(SPApplication *)self displayIdentifier];
    [v4 setResultBundleId:v22];
  }

  if ([(SPApplication *)self isAppClip])
  {
    v23 = @"com.apple.app-clips";
  }

  else
  {
    v23 = @"com.apple.application";
  }

  [v4 setSectionBundleIdentifier:v23];
  [v4 setIsLocalApplicationResult:1];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)displayName
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

@end