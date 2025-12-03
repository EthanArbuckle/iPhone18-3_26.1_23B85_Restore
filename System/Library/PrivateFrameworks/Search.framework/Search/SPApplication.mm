@interface SPApplication
- (BOOL)displayNameLoaded;
- (BOOL)isEqual:(id)equal;
- (NSString)displayName;
- (SPApplication)initWithCoder:(id)coder;
- (id)description;
- (void)copyToSearchFoundationResult:(id)result;
- (void)displayName;
- (void)encodeWithCoder:(id)coder;
- (void)setLongDisplayName:(id)name;
@end

@implementation SPApplication

- (BOOL)displayNameLoaded
{
  displayNameInternal = [(SPApplication *)self displayNameInternal];
  v3 = displayNameInternal != 0;

  return v3;
}

- (NSString)displayName
{
  displayNameInternal = [(SPApplication *)self displayNameInternal];
  if (!displayNameInternal)
  {
    v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:self->_displayIdentifier allowPlaceholder:1 error:0];
    displayNameInternal = [v4 localizedName];

    [(SPApplication *)self setDisplayNameInternal:displayNameInternal];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [(SPApplication *)&self->_displayIdentifier displayName];
    }
  }

  return displayNameInternal;
}

- (void)encodeWithCoder:(id)coder
{
  displayIdentifier = self->_displayIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:displayIdentifier forKey:@"_displayIdentifier"];
  displayNameInternal = [(SPApplication *)self displayNameInternal];
  [coderCopy encodeObject:displayNameInternal forKey:@"_displayNameInternal"];

  [coderCopy encodeObject:self->_longDisplayName forKey:@"_longDisplayName"];
  [coderCopy encodeObject:self->_keywords forKey:@"_keywords"];
  [coderCopy encodeObject:self->_URL forKey:@"_URL"];
  [coderCopy encodeObject:self->_shortVersion forKey:@"_shortVersion"];
  [coderCopy encodeInteger:self->_webClipType forKey:@"_webClipType"];
  [coderCopy encodeObject:self->_appBundleIdentifier forKey:@"_appBundleIdentifier"];
  [coderCopy encodeObject:self->_subtitle forKey:@"_subtitle"];
  [coderCopy encodeBool:self->_isPlaceholder forKey:@"_isPlaceholder"];
}

- (SPApplication)initWithCoder:(id)coder
{
  v4 = initWithCoder__onceToken;
  coderCopy = coder;
  if (v4 != -1)
  {
    [SPApplication initWithCoder:];
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayIdentifier"];
  displayIdentifier = self->_displayIdentifier;
  self->_displayIdentifier = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayNameInternal"];
  [(SPApplication *)self setDisplayNameInternal:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_longDisplayName"];
  longDisplayName = self->_longDisplayName;
  self->_longDisplayName = v9;

  v11 = [coderCopy decodeObjectOfClasses:initWithCoder__objectClasses forKey:@"_keywords"];
  keywords = self->_keywords;
  self->_keywords = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_URL"];
  URL = self->_URL;
  self->_URL = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_shortVersion"];
  shortVersion = self->_shortVersion;
  self->_shortVersion = v15;

  self->_webClipType = [coderCopy decodeIntegerForKey:@"_webClipType"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_appBundleIdentifier"];
  appBundleIdentifier = self->_appBundleIdentifier;
  self->_appBundleIdentifier = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_subtitle"];
  subtitle = self->_subtitle;
  self->_subtitle = v19;

  LOBYTE(v8) = [coderCopy decodeBoolForKey:@"_isPlaceholder"];
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
  displayNameInternal = [(SPApplication *)self displayNameInternal];
  v6 = displayNameInternal;
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

  shortVersion = [v3 stringWithFormat:@"SPApplication: %@, display name:%@%@%@ version:%@", displayIdentifier, displayNameInternal, v8, longDisplayName, shortVersion];

  return shortVersion;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
            displayNameInternal = [(SPApplication *)self displayNameInternal];
            displayNameInternal2 = [v5 displayNameInternal];
            if (displayNameInternal == displayNameInternal2)
            {
              v17 = 1;
            }

            else
            {
              v15 = [displayNameInternal isEqualToString:displayNameInternal2];
              if (displayNameInternal)
              {
                v16 = displayNameInternal2 == 0;
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

- (void)setLongDisplayName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (self->_displayNameInternal)
  {
    v6 = nameCopy;
    nameCopy = [nameCopy isEqualToString:?];
    v5 = v6;
    if (nameCopy)
    {
      objc_storeStrong(&self->_longDisplayName, self->_displayNameInternal);
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](nameCopy, v5);
}

- (void)copyToSearchFoundationResult:(id)result
{
  v30 = *MEMORY[0x1E69E9840];
  resultCopy = result;
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
    displayName = [(SPApplication *)self displayName];
    *buf = 138412546;
    v27 = displayName;
    v28 = 2112;
    v29 = resultCopy;
    _os_log_impl(&dword_1C81BF000, v7, v8, "Set title %@ for result %@", buf, 0x16u);
  }

  displayName2 = [(SPApplication *)self displayName];

  if (displayName2)
  {
    displayName3 = [(SPApplication *)self displayName];
    [v5 setText:displayName3];
  }

  subtitle = [(SPApplication *)self subtitle];

  if (subtitle)
  {
    v13 = MEMORY[0x1E69CA3A0];
    subtitle2 = [(SPApplication *)self subtitle];
    v15 = [v13 textWithString:subtitle2];

    v25 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [resultCopy setDescriptions:v16];
  }

  [resultCopy setTitle:v5];
  if ([(SPApplication *)self isAppClip])
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = *MEMORY[0x1E6994668];
    displayIdentifier = [(SPApplication *)self displayIdentifier];
    v20 = [v17 stringWithFormat:@"%@%@", v18, displayIdentifier];
    [resultCopy setIdentifier:v20];

    appBundleIdentifier = [(SPApplication *)self appBundleIdentifier];
    [resultCopy setResultBundleId:appBundleIdentifier];

    [resultCopy setApplicationBundleIdentifier:@"com.apple.application"];
    [resultCopy setIsAppClip:1];
  }

  else
  {
    [resultCopy setIsWebClip:{-[SPApplication isWebClip](self, "isWebClip")}];
    displayIdentifier2 = [(SPApplication *)self displayIdentifier];
    [resultCopy setResultBundleId:displayIdentifier2];
  }

  if ([(SPApplication *)self isAppClip])
  {
    v23 = @"com.apple.app-clips";
  }

  else
  {
    v23 = @"com.apple.application";
  }

  [resultCopy setSectionBundleIdentifier:v23];
  [resultCopy setIsLocalApplicationResult:1];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)displayName
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *self;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

@end