@interface UIWebClip
+ (BOOL)webClipFullScreenValueForWebDocumentView:(id)view;
+ (BOOL)webClipWithIdentifierExists:(id)exists;
+ (id)_contentForMetaName:(id)name inWebDocumentView:(id)view;
+ (id)_normalizedWebClipIdentifierFromBundleIdentifier:(id)identifier;
+ (id)_webClipLinkTagsFromWebDocumentView:(id)view;
+ (id)appClips;
+ (id)clipsIncludingWebClips:(BOOL)clips includingAppClips:(BOOL)appClips trustedByClientBundleIdentifier:(id)identifier;
+ (id)pathForWebClipCacheWithIdentifier:(id)identifier;
+ (id)pathForWebClipStorageWithIdentifier:(id)identifier;
+ (id)pathForWebClipWithIdentifier:(id)identifier;
+ (id)urlForWebClipWithIdentifier:(id)identifier;
+ (id)webClipIconsForWebClipLinkTags:(id)tags pageURL:(id)l;
+ (id)webClipIconsForWebDocumentView:(id)view;
+ (id)webClipIdentifierFromBundleIdentifier:(id)identifier;
+ (id)webClipWithDictionaryRepresentation:(id)representation;
+ (id)webClipWithIdentifier:(id)identifier;
+ (id)webClipWithURL:(id)l;
+ (id)webClipWithUUID:(id)d;
+ (id)webClips;
+ (id)webClipsDirectoryPath;
+ (int64_t)_webClipStatusBarStyleForMetaTagContent:(id)content;
+ (int64_t)webClipStatusBarStyleForWebDocumentView:(id)view;
+ (unint64_t)_determineEligibility;
+ (unint64_t)_webClipOrientationsForMetaTagContent:(id)content;
+ (unint64_t)webClipOrientationsForWebDocumentView:(id)view;
- (BOOL)_createApplicationRecord;
- (BOOL)_hasPlaceholderBundle;
- (BOOL)_requiresPlaceholderBundle;
- (BOOL)_writeIconImage:(id)image toDiskWithFileName:(id)name;
- (BOOL)_writeImage:(id)image toDiskWithFileName:(id)name;
- (BOOL)addTrustedClientBundleIdentifier:(id)identifier;
- (BOOL)alternativeFullScreen;
- (BOOL)createOnDisk;
- (BOOL)ensurePlaceholderBundle;
- (BOOL)removeFromDisk;
- (BOOL)tryLoadingNextCustomIcon;
- (BOOL)updateOnDisk;
- (NSSet)trustedClientBundleIdentifiers;
- (NSString)applicationBundleIdentifier;
- (NSString)placeholderBundleIdentifier;
- (NSString)title;
- (NSURL)applicationLaunchURL;
- (NSURL)pageURL;
- (NSUUID)uuid;
- (NSUserActivity)appClipUserActivity;
- (UIImage)darkIconImage;
- (UIImage)iconImage;
- (UIImage)initialLaunchImage;
- (UIImage)startupImage;
- (UIImage)startupLandscapeImage;
- (UIImage)tintableIconImage;
- (WebClipDelegate)delegate;
- (id)_bundleImageWithName:(id)name;
- (id)_bundleResourceWithName:(id)name;
- (id)_createPlaceholderBundleIdentifier;
- (id)_defaultBrowserName;
- (id)_info;
- (id)_initWithIdentifier:(id)identifier dictionaryRepresentation:(id)representation;
- (id)_launchURLWithScheme:(id)scheme;
- (id)bundleIdentifier;
- (id)eligibilityAlert:(id)alert;
- (id)generateIconImageForFormat:(int)format scale:(double)scale;
- (id)getStartupImage:(int64_t)image;
- (void)_readPropertiesFromInfoPlist:(id)plist;
- (void)_reloadProperties;
- (void)_removePlaceholderBundleAndClearBadge;
- (void)_removePlaceholderBundleWithCompletion:(id)completion;
- (void)_setIconImage:(id)image isPrecomposed:(BOOL)precomposed isScreenShotBased:(BOOL)based;
- (void)_updateWebClipWithEligibility:(unint64_t)eligibility;
- (void)cancelMediaUpdate;
- (void)configureWithMetaTags:(id)tags linkTags:(id)linkTags;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connectionDidFinishLoading:(id)loading;
- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client;
- (void)coordinatorDidCompleteSuccessfully:(id)successfully forApplicationRecord:(id)record;
- (void)dealloc;
- (void)requestCustomIconUpdate;
- (void)requestCustomLandscapeStartupImageUpdate;
- (void)requestCustomPortraitStartupImageUpdate;
- (void)requestIconUpdateInSpringBoard;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setContentModeWithString:(id)string;
- (void)setPageURL:(id)l;
- (void)stopLoadingCustomIcon;
- (void)stopLoadingStartupImage;
- (void)stopLoadingStartupLandscapeImage;
- (void)updateCustomMediaLocationsFromWebDocumentView:(id)view;
- (void)updateCustomMediaLocationsWithWebClipLinkTags:(id)tags baseURL:(id)l;
@end

@implementation UIWebClip

+ (id)webClips
{
  v2 = objc_opt_class();

  return [v2 clipsIncludingWebClips:1 includingAppClips:0];
}

+ (id)webClipsDirectoryPath
{
  v2 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/WebClips"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager _web_createDirectoryAtPathWithIntermediateDirectories:v2 attributes:0];

  return v2;
}

- (void)configureWithMetaTags:(id)tags linkTags:(id)linkTags
{
  tagsCopy = tags;
  v6 = MEMORY[0x1E696AFB0];
  linkTagsCopy = linkTags;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];
  v10 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_1EFB14550];

  [(UIWebClip *)self setIdentifier:v10];
  v11 = [tagsCopy objectForKey:@"apple-mobile-web-app-title"];
  _web_stringByTrimmingWhitespace = [v11 _web_stringByTrimmingWhitespace];

  if ([_web_stringByTrimmingWhitespace length])
  {
    [(UIWebClip *)self setTitle:_web_stringByTrimmingWhitespace];
  }

  v13 = objc_opt_class();
  v14 = [tagsCopy _web_stringForKey:@"apple-mobile-web-app-capable"];
  v15 = [v13 _webClipFullScreenValueForMetaTagContent:v14];

  [(UIWebClip *)self setFullScreen:v15];
  v16 = [tagsCopy _web_stringForKey:@"apple-mobile-web-app-status-bar-style"];
  self->_webClipStatusBarStyle = UIWebClipStatusBarStyleForMetaTagContent(v16);

  v17 = objc_opt_class();
  v18 = [tagsCopy _web_stringForKey:@"Orientations"];
  v19 = [v17 _webClipOrientationsForMetaTagContent:v18];

  [(UIWebClip *)self setSupportedOrientations:v19];
  [(UIWebClip *)self updateCustomMediaLocationsWithWebClipLinkTags:linkTagsCopy baseURL:self->pageURL];
}

- (void)_readPropertiesFromInfoPlist:(id)plist
{
  plistCopy = plist;
  v4 = [plistCopy count];
  v5 = plistCopy;
  if (!v4)
  {
    goto LABEL_88;
  }

  v6 = [plistCopy objectForKey:@"URL"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x1E695DFF8] URLWithString:v6 encodingInvalidCharacters:0];
      [(UIWebClip *)self setPageURL:v7];
    }
  }

  v8 = [plistCopy objectForKey:@"Title"];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIWebClip *)self setTitle:v8];
    }
  }

  v9 = [plistCopy objectForKey:@"ConfigurationIsManaged"];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_configurationIsManaged = [v9 BOOLValue];
    }
  }

  v10 = [plistCopy objectForKey:@"ApplicationBundleIdentifier"];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->applicationBundleIdentifier, v10);
    }
  }

  v11 = [plistCopy objectForKey:@"PlaceholderBundleIdentifier"];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->placeholderBundleIdentifier, v11);
    }
  }

  v12 = [plistCopy objectForKey:@"TrustedClientBundleIdentifiers"];

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x1E695DFD8] setWithArray:v12];
      trustedClientBundleIdentifiers = self->_trustedClientBundleIdentifiers;
      self->_trustedClientBundleIdentifiers = v13;
    }
  }

  v15 = [plistCopy objectForKey:@"ShortcutIdentifier"];

  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_shortcutIdentifier, v15);
    }
  }

  v16 = [plistCopy objectForKey:@"FullScreen"];

  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UIWebClip setFullScreen:](self, "setFullScreen:", [v16 BOOLValue]);
    }
  }

  v17 = [plistCopy objectForKey:@"ClassicMode"];

  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UIWebClip setClassicMode:](self, "setClassicMode:", [v17 BOOLValue]);
    }
  }

  v18 = [plistCopy objectForKey:@"Eligibility"];

  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_eligibilityStatus = [v18 unsignedIntegerValue];
    }
  }

  v19 = [plistCopy objectForKey:@"IconIsScreenShotBased"];

  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->iconIsScreenShotBased = [v19 BOOLValue];
    }
  }

  v20 = [plistCopy objectForKey:@"IconIsPrecomposed"];

  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *&self->iconIsPrecomposed = [v20 BOOLValue];
    }
  }

  v21 = [plistCopy objectForKey:@"ApplicationBundleVersion"];

  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v21 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  self->bundleVersion = unsignedIntegerValue;
  v23 = [plistCopy objectForKey:@"IsAppClip"];

  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->applicationBundleIdentifier length]&& ![(NSString *)self->applicationBundleIdentifier isEqualToString:@"com.apple.shortcuts"])
    {
      -[UIWebClip setIsAppClip:](self, "setIsAppClip:", [v23 BOOLValue]);
    }
  }

  v24 = [plistCopy objectForKey:@"ScenelessBackgroundLaunch"];

  if (v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_scenelessBackgroundLaunch = [v24 BOOLValue];
    }
  }

  v25 = [plistCopy objectForKey:@"RemovalDisallowed"];

  if (v25)
  {
    if (!self->_isAppClip)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[UIWebClip setRemovalDisallowed:](self, "setRemovalDisallowed:", [v25 BOOLValue]);
      }
    }
  }

  v26 = [plistCopy objectForKey:@"ContentMode"];

  if (v26)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIWebClip *)self setContentModeWithString:v26];
    }
  }

  v27 = [plistCopy objectForKey:@"IgnoreManifestScope"];

  if (v27)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_ignoreManifestScope = [v27 BOOLValue];
    }
  }

  v28 = [plistCopy objectForKey:@"WebClipStatusBarStyle"];

  if (v28)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
      if ([v29 caseInsensitiveCompare:@"UIWebClipStatusBarStyleDefault"])
      {
        if ([v29 caseInsensitiveCompare:@"UIWebClipStatusBarStyleLegacyBlack"])
        {
          if ([v29 caseInsensitiveCompare:@"UIWebClipStatusBarStyleLegacyBlackTranslucent"])
          {
            if ([v29 caseInsensitiveCompare:@"UIWebClipStatusBarStyleHidden"])
            {
              if ([v29 caseInsensitiveCompare:@"UIWebClipStatusBarStyleLightContent"])
              {
                if ([v29 caseInsensitiveCompare:@"UIWebClipStatusBarStyleDarkContent"])
                {
                  v30 = 0;
                }

                else
                {
                  v30 = 5;
                }
              }

              else
              {
                v30 = 4;
              }
            }

            else
            {
              v30 = 3;
            }
          }

          else
          {
            v30 = 2;
          }
        }

        else
        {
          v30 = 1;
        }
      }

      else
      {
        v30 = 0;
      }

      self->_webClipStatusBarStyle = v30;
      goto LABEL_84;
    }
  }

  v29 = [plistCopy objectForKey:@"UIStatusBarStyle"];

  if (v29)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [UIApplication statusBarStyleForString:v29];
      if (v31 == 1)
      {
        v32 = 2;
        goto LABEL_78;
      }

      if (v31 == 2)
      {
        v32 = 1;
LABEL_78:
        self->_webClipStatusBarStyle = v32;
        goto LABEL_84;
      }

      self->_webClipStatusBarStyle = 0;
    }
  }

LABEL_84:
  v33 = [plistCopy objectForKey:@"Orientations"];

  if (v33)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UIWebClip setSupportedOrientations:](self, "setSupportedOrientations:", [v33 unsignedIntValue]);
    }
  }

  v5 = plistCopy;
LABEL_88:
}

- (void)_reloadProperties
{
  if (self->_readOnlyDictionaryRepresentation)
  {

    [(UIWebClip *)self _readPropertiesFromInfoPlist:?];
  }

  else
  {
    v3 = [UIWebClip urlForWebClipWithIdentifier:self->identifier];
    if (v3)
    {
      v7 = v3;
      v4 = [MEMORY[0x1E696AAE8] bundleWithURL:v3];
      bundleURL = [v4 bundleURL];
      v6 = CFBundleCopyInfoDictionaryForURL(bundleURL);

      [(UIWebClip *)self _readPropertiesFromInfoPlist:v6];
      v3 = v7;
    }
  }
}

- (NSUUID)uuid
{
  identifier = [(UIWebClip *)self identifier];
  if ([identifier length] == 32)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [identifier substringWithRange:{0, 8}];
    v5 = [identifier substringWithRange:{8, 4}];
    v6 = [identifier substringWithRange:{12, 4}];
    v7 = [identifier substringWithRange:{16, 4}];
    v8 = [identifier substringWithRange:{20, 12}];
    v9 = [v3 stringWithFormat:@"%@-%@-%@-%@-%@", v4, v5, v6, v7, v8];

    v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v9];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:identifier];
  }

  return v10;
}

- (NSURL)pageURL
{
  pageURL = self->pageURL;
  if (pageURL)
  {
    goto LABEL_5;
  }

  [(UIWebClip *)self _reloadProperties];
  pageURL = self->pageURL;
  if (pageURL)
  {
    goto LABEL_5;
  }

  if (self->applicationBundleIdentifier)
  {
    pageURL = 0;
LABEL_5:
    v4 = pageURL;
    goto LABEL_6;
  }

  v4 = [MEMORY[0x1E695DFF8] URLWithString:@"about:blank"];
LABEL_6:

  return v4;
}

- (NSString)title
{
  title = self->title;
  if (title || ([(UIWebClip *)self _reloadProperties], (title = self->title) != 0))
  {
    v4 = title;
  }

  else
  {
    v4 = @"Untitled";
  }

  return v4;
}

- (NSString)applicationBundleIdentifier
{
  if (!self->applicationBundleIdentifier)
  {
    [(UIWebClip *)self _reloadProperties];
  }

  if (self->_isAppClip && self->_scenelessBackgroundLaunch)
  {
    v3 = @"com.apple.ClipViewService";
  }

  else
  {
    applicationBundleIdentifier = self->applicationBundleIdentifier;
    if (applicationBundleIdentifier)
    {
      v3 = applicationBundleIdentifier;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSString)placeholderBundleIdentifier
{
  placeholderBundleIdentifier = self->placeholderBundleIdentifier;
  if (!placeholderBundleIdentifier)
  {
    [(UIWebClip *)self _reloadProperties];
    placeholderBundleIdentifier = self->placeholderBundleIdentifier;
  }

  return placeholderBundleIdentifier;
}

- (NSSet)trustedClientBundleIdentifiers
{
  trustedClientBundleIdentifiers = self->_trustedClientBundleIdentifiers;
  if (!trustedClientBundleIdentifiers)
  {
    [(UIWebClip *)self _reloadProperties];
    trustedClientBundleIdentifiers = self->_trustedClientBundleIdentifiers;
  }

  return trustedClientBundleIdentifiers;
}

- (BOOL)alternativeFullScreen
{
  [(UIWebClip *)self _reloadProperties];
  fullScreen = _os_feature_enabled_impl();
  if (fullScreen)
  {
    fullScreen = [(UIWebClip *)self fullScreen];
    if (fullScreen)
    {
      LOBYTE(fullScreen) = self->_eligibilityStatus == 2;
    }
  }

  return fullScreen;
}

- (void)setApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!self->_configurationIsManaged || ([identifierCopy lowercaseString], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasPrefix:", @"com.apple"), v5, (v6 & 1) == 0))
  {
    objc_storeStrong(&self->applicationBundleIdentifier, identifier);
  }
}

- (BOOL)addTrustedClientBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    goto LABEL_5;
  }

  trustedClientBundleIdentifiers = self->_trustedClientBundleIdentifiers;
  if (!trustedClientBundleIdentifiers)
  {
    [(UIWebClip *)self _reloadProperties];
    trustedClientBundleIdentifiers = self->_trustedClientBundleIdentifiers;
  }

  if (![(NSSet *)trustedClientBundleIdentifiers containsObject:identifierCopy])
  {
    v7 = self->_trustedClientBundleIdentifiers;
    if (v7)
    {
      [(NSSet *)v7 setByAddingObject:identifierCopy];
    }

    else
    {
      [MEMORY[0x1E695DFD8] setWithObject:identifierCopy];
    }
    v8 = ;
    v9 = self->_trustedClientBundleIdentifiers;
    self->_trustedClientBundleIdentifiers = v8;

    v6 = 1;
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  return v6;
}

- (NSURL)applicationLaunchURL
{
  if (self->_isAppClip && self->_scenelessBackgroundLaunch)
  {
    v3 = @"appclip:";
LABEL_4:
    pageURL = [(UIWebClip *)self _launchURLWithScheme:v3];
    goto LABEL_9;
  }

  if (self->applicationBundleIdentifier || ![(UIWebClip *)self fullScreen]|| [(UIWebClip *)self alternativeFullScreen])
  {
    pageURL = [(UIWebClip *)self pageURL];
  }

  else
  {
    identifier = [(UIWebClip *)self identifier];

    if (identifier)
    {
      v3 = @"webapp:";
      goto LABEL_4;
    }

    pageURL = 0;
  }

LABEL_9:

  return pageURL;
}

- (id)_launchURLWithScheme:(id)scheme
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = MEMORY[0x1E696AEC0];
  schemeCopy = scheme;
  identifier = [(UIWebClip *)self identifier];
  v8 = [v5 stringWithFormat:@"%@%@", schemeCopy, identifier];

  v9 = [v4 URLWithString:v8];

  return v9;
}

- (NSUserActivity)appClipUserActivity
{
  if (self->_isAppClip && self->pageURL)
  {
    v3 = objc_alloc(MEMORY[0x1E696B090]);
    v4 = [v3 initWithActivityType:*MEMORY[0x1E696AA68]];
    [v4 setWebpageURL:self->pageURL];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v5 = qword_1ED4A2FD0;
    v13 = qword_1ED4A2FD0;
    if (!qword_1ED4A2FD0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getAPActivationPayloadClass_block_invoke;
      v9[3] = &unk_1E70F2F20;
      v9[4] = &v10;
      __getAPActivationPayloadClass_block_invoke(v9);
      v5 = v11[3];
    }

    v6 = v5;
    _Block_object_dispose(&v10, 8);
    v7 = [[v5 alloc] initWithURL:self->pageURL];
    [v4 setAppClipActivationPayload:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_info
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  pageURL = self->pageURL;
  if (pageURL)
  {
    absoluteString = [(NSURL *)pageURL absoluteString];
    if (absoluteString)
    {
      [v3 setObject:absoluteString forKey:@"URL"];
    }
  }

  title = self->title;
  if (title)
  {
    [v3 setObject:title forKey:@"Title"];
  }

  applicationBundleIdentifier = self->applicationBundleIdentifier;
  if (applicationBundleIdentifier)
  {
    [v3 setObject:applicationBundleIdentifier forKey:@"ApplicationBundleIdentifier"];
  }

  placeholderBundleIdentifier = self->placeholderBundleIdentifier;
  if (placeholderBundleIdentifier)
  {
    [v3 setObject:placeholderBundleIdentifier forKey:@"PlaceholderBundleIdentifier"];
  }

  if ([(NSSet *)self->_trustedClientBundleIdentifiers count])
  {
    allObjects = [(NSSet *)self->_trustedClientBundleIdentifiers allObjects];
    [v3 setObject:allObjects forKey:@"TrustedClientBundleIdentifiers"];
  }

  shortcutIdentifier = self->_shortcutIdentifier;
  if (shortcutIdentifier)
  {
    [v3 setObject:shortcutIdentifier forKey:@"ShortcutIdentifier"];
  }

  if (self->removalDisallowed)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v3 setObject:v11 forKey:@"RemovalDisallowed"];
  }

  if (self->bundleVersion)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v3 setObject:v12 forKey:@"ApplicationBundleVersion"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->fullScreen];
  [v3 setObject:v13 forKey:@"FullScreen"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->classicMode];
  [v3 setObject:v14 forKey:@"ClassicMode"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_eligibilityStatus];
  [v3 setObject:v15 forKey:@"Eligibility"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAppClip];
  [v3 setObject:v16 forKey:@"IsAppClip"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_scenelessBackgroundLaunch];
  [v3 setObject:v17 forKey:@"ScenelessBackgroundLaunch"];

  contentMode = self->_contentMode;
  if (contentMode > 2)
  {
    v19 = 0;
  }

  else
  {
    v19 = off_1E712BF40[contentMode];
  }

  [v3 setObject:v19 forKey:@"ContentMode"];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_ignoreManifestScope];
  [v3 setObject:v20 forKey:@"IgnoreManifestScope"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_configurationIsManaged];
  [v3 setObject:v21 forKey:@"ConfigurationIsManaged"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->iconIsScreenShotBased];
  [v3 setObject:v22 forKey:@"IconIsScreenShotBased"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->iconIsPrecomposed];
  [v3 setObject:v23 forKey:@"IconIsPrecomposed"];

  webClipStatusBarStyle = self->_webClipStatusBarStyle;
  if (webClipStatusBarStyle > 5)
  {
    v25 = 0;
  }

  else
  {
    v25 = off_1E712BF58[webClipStatusBarStyle];
  }

  [v3 setObject:v25 forKey:@"WebClipStatusBarStyle"];
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->supportedOrientations];
  [v3 setObject:v26 forKey:@"Orientations"];

  return v3;
}

- (void)setContentModeWithString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString containsString:@"mobile"])
  {
    v5 = 1;
  }

  else if ([lowercaseString containsString:@"desktop"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  self->_contentMode = v5;
}

- (BOOL)_writeImage:(id)image toDiskWithFileName:(id)name
{
  imageCopy = image;
  v7 = MEMORY[0x1E695DFF8];
  identifier = self->identifier;
  nameCopy = name;
  v10 = [UIWebClip pathForWebClipWithIdentifier:identifier];
  v11 = [v10 stringByAppendingPathComponent:nameCopy];

  v12 = [v7 fileURLWithPath:v11];

  v13 = CGImageDestinationCreateWithURL(v12, @"public.png", 1uLL, 0);
  if (v13)
  {
    v14 = v13;
    CGImageDestinationAddImage(v13, [imageCopy imageRef], 0);
    v15 = CGImageDestinationFinalize(v14);
    CFRelease(v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_writeIconImage:(id)image toDiskWithFileName:(id)name
{
  v18[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = [(UIWebClip *)self _writeImage:image toDiskWithFileName:nameCopy];
  v8 = v7;
  if (image && v7)
  {
    v9 = [UIWebClip pathForWebClipWithIdentifier:self->identifier];
    v10 = [v9 stringByAppendingPathComponent:nameCopy];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v17 = *MEMORY[0x1E696A3A0];
    v18[0] = *MEMORY[0x1E696A3A8];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v16 = 0;
    v13 = [defaultManager setAttributes:v12 ofItemAtPath:v10 error:&v16];
    v14 = v16;

    if ((v13 & 1) == 0)
    {
      NSLog(&cfstr_CouldnTChangeW.isa, v14);
    }
  }

  return v8;
}

- (id)_createPlaceholderBundleIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(UIWebClip *)self identifier];
  v4 = [v2 stringWithFormat:@"com.apple.WebKit.PushBundle.%@", identifier];

  return v4;
}

- (BOOL)_requiresPlaceholderBundle
{
  if (self->fullScreen || (v3 = _os_feature_enabled_impl()) != 0)
  {
    LOBYTE(v3) = self->applicationBundleIdentifier == 0;
  }

  return v3;
}

- (BOOL)_hasPlaceholderBundle
{
  selfCopy = self;
  _createPlaceholderBundleIdentifier = [(UIWebClip *)self _createPlaceholderBundleIdentifier];
  placeholderBundleIdentifier = selfCopy->placeholderBundleIdentifier;
  selfCopy->placeholderBundleIdentifier = _createPlaceholderBundleIdentifier;

  v5 = objc_alloc(MEMORY[0x1E69635F8]);
  v6 = selfCopy->placeholderBundleIdentifier;
  v9 = 0;
  v7 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:1 error:&v9];
  LOBYTE(selfCopy) = v7 != 0;

  return selfCopy;
}

- (BOOL)ensurePlaceholderBundle
{
  if (![(UIWebClip *)self _requiresPlaceholderBundle]|| [(UIWebClip *)self _hasPlaceholderBundle])
  {
    return 1;
  }

  if (!self->manifestId)
  {
    objc_storeStrong(&self->manifestId, self->pageURL);
  }

  _createApplicationRecord = [(UIWebClip *)self _createApplicationRecord];
  [(UIWebClip *)self updateOnDisk];
  return _createApplicationRecord;
}

- (BOOL)_createApplicationRecord
{
  v102[1] = *MEMORY[0x1E69E9840];
  _createPlaceholderBundleIdentifier = [(UIWebClip *)self _createPlaceholderBundleIdentifier];
  placeholderBundleIdentifier = self->placeholderBundleIdentifier;
  self->placeholderBundleIdentifier = _createPlaceholderBundleIdentifier;

  v5 = [objc_alloc(getIXApplicationIdentityClass()) initWithBundleIdentifier:self->placeholderBundleIdentifier];
  IXAppInstallCoordinatorClass = getIXAppInstallCoordinatorClass();
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:1 userInfo:0];
  v89 = 0;
  [IXAppInstallCoordinatorClass cancelCoordinatorForAppWithIdentity:v5 withReason:v7 client:25 error:&v89];

  v88 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2050000000;
  v8 = qword_1ED4A2FE0;
  v98 = qword_1ED4A2FE0;
  if (!qword_1ED4A2FE0)
  {
    v90 = MEMORY[0x1E69E9820];
    v91 = 3221225472;
    v92 = __getIXRestoringDemotedAppInstallCoordinatorClass_block_invoke;
    v93 = &unk_1E70F2F20;
    v94 = &v95;
    __getIXRestoringDemotedAppInstallCoordinatorClass_block_invoke(&v90);
    v8 = v96[3];
  }

  v9 = v8;
  _Block_object_dispose(&v95, 8);
  v87 = 0;
  v10 = [v8 processScopedCoordinatorForAppWithIdentity:v5 withClientID:25 createIfNotExisting:1 created:&v88 error:&v87];
  v11 = v87;
  v12 = v11;
  if (v10)
  {
    if (v88)
    {
      [v10 setObserver:self];
      v95 = 0;
      v96 = &v95;
      v97 = 0x2050000000;
      v13 = qword_1ED4A2FE8;
      v98 = qword_1ED4A2FE8;
      if (!qword_1ED4A2FE8)
      {
        v90 = MEMORY[0x1E69E9820];
        v91 = 3221225472;
        v92 = __getIXPlaceholderClass_block_invoke;
        v93 = &unk_1E70F2F20;
        v94 = &v95;
        __getIXPlaceholderClass_block_invoke(&v90);
        v13 = v96[3];
      }

      v14 = v13;
      _Block_object_dispose(&v95, 8);
      v15 = [v13 alloc];
      title = self->title;
      v17 = self->placeholderBundleIdentifier;
      v84 = v12;
      v18 = [v15 initAppPlaceholderWithBundleName:title bundleID:v17 installType:8 client:25 error:&v84];
      v19 = v84;

      if (!v18)
      {
        v32 = self->placeholderBundleIdentifier;
        v33 = [v19 description];
        NSLog(&cfstr_UnableToCreate_4.isa, v32, v33);

        v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:1 userInfo:0];
        v83 = v19;
        [v10 cancelForReason:v12 client:25 error:&v83];
        v30 = v83;
        v31 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v95 = 0;
      v96 = &v95;
      v97 = 0x2050000000;
      v20 = qword_1ED4A2FF0;
      v98 = qword_1ED4A2FF0;
      if (!qword_1ED4A2FF0)
      {
        v90 = MEMORY[0x1E69E9820];
        v91 = 3221225472;
        v92 = __getIXPlaceholderAttributesClass_block_invoke;
        v93 = &unk_1E70F2F20;
        v94 = &v95;
        __getIXPlaceholderAttributesClass_block_invoke(&v90);
        v20 = v96[3];
      }

      v21 = v20;
      _Block_object_dispose(&v95, 8);
      v12 = objc_opt_new();
      [v12 setLaunchProhibited:1];
      manifestId = self->manifestId;
      if (manifestId)
      {
        v101 = @"manifestId";
        absoluteString = [(NSURL *)manifestId absoluteString];
        v102[0] = absoluteString;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:&v101 count:1];
        [v12 setWebKitPushBundleMetadata:v24];
      }

      else
      {
        NSLog(&cfstr_NoManifestidFo.isa, self->placeholderBundleIdentifier);
      }

      v82 = v19;
      v34 = [v18 setPlaceholderAttributes:v12 error:&v82];
      v35 = v82;

      if ((v34 & 1) == 0)
      {
        v49 = self->placeholderBundleIdentifier;
        v50 = [v35 description];
        NSLog(&cfstr_UnableToSetPla.isa, v49, v50);

        v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:1 userInfo:0];
        v81 = v35;
        [v10 cancelForReason:v19 client:25 error:&v81];
        v30 = v81;
        v31 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v36 = self->placeholderBundleIdentifier;
      v99[0] = @"com.apple.private.usernotifications.bundle-identifiers";
      v99[1] = @"com.apple.private.usernotifications.notification-simulator";
      v100[0] = v36;
      v100[1] = MEMORY[0x1E695E118];
      v99[2] = @"com.apple.developer.app-management-domain";
      v99[3] = @"com.apple.private.webkit.pushbundle";
      v100[2] = @"com.apple.WebKit.PushBundles";
      v100[3] = MEMORY[0x1E695E118];
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:4];
      v95 = 0;
      v96 = &v95;
      v97 = 0x2050000000;
      v37 = qword_1ED4A2FF8;
      v98 = qword_1ED4A2FF8;
      if (!qword_1ED4A2FF8)
      {
        v90 = MEMORY[0x1E69E9820];
        v91 = 3221225472;
        v92 = __getIXPromisedInMemoryDictionaryClass_block_invoke;
        v93 = &unk_1E70F2F20;
        v94 = &v95;
        __getIXPromisedInMemoryDictionaryClass_block_invoke(&v90);
        v37 = v96[3];
      }

      v38 = v37;
      _Block_object_dispose(&v95, 8);
      v39 = [v37 alloc];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Entitlements Promise for %@", self->placeholderBundleIdentifier];
      v70 = [v39 initWithName:v40 client:25 dictionary:v19];

      if (v70)
      {

        v79 = 0;
        v41 = [v18 setEntitlementsPromise:v70 error:&v79];
        v42 = v79;
        v35 = v42;
        if (v41)
        {
          iconImage = [(UIWebClip *)self iconImage];
          image = iconImage;
          if (iconImage)
          {
            v44 = UIImagePNGRepresentation(iconImage);
            if (v44)
            {
              v68 = [objc_alloc(getIXPromisedInMemoryDataClass()) initWithName:@"Placeholder icon" client:25 data:v44];
              v77 = v35;
              v45 = [v18 setIconPromise:v68 error:&v77];
              v46 = v77;

              if ((v45 & 1) == 0)
              {
                v47 = self->placeholderBundleIdentifier;
                v48 = [v46 description];
                NSLog(&cfstr_FailedToSetPla_0.isa, v47, v48);
              }
            }

            else
            {
              NSLog(&cfstr_FailedToSetPla_1.isa, self->placeholderBundleIdentifier);
              v46 = v35;
            }
          }

          else
          {
            NSLog(&cfstr_FailedToSetPla_2.isa, self->placeholderBundleIdentifier);
            v46 = v35;
          }

          v76 = v46;
          v55 = [v18 setConfigurationCompleteWithError:&v76];
          v56 = v76;

          if (v55)
          {
            v74 = v56;
            v57 = [v10 setPlaceholderPromise:v18 error:&v74];
            v58 = v74;

            if (v57)
            {
              v35 = [objc_alloc(getIXPromisedOutOfBandTransferClass()) initWithName:@"Empty user data promise" client:25 diskSpaceNeeded:0];
              [v35 setPercentComplete:1.0];
              [v35 setComplete:1];
              v72 = v58;
              v59 = [v10 setUserDataPromise:v35 error:&v72];
              v30 = v72;

              if (v59)
              {
                notify_post("com.apple.webclip.placeholder.added");
                v31 = 1;
              }

              else
              {
                v64 = self->placeholderBundleIdentifier;
                v65 = [v30 description];
                NSLog(&cfstr_FailedToSetUse_0.isa, v64, v65);

                v66 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:1 userInfo:0];
                v71 = v30;
                [v10 cancelForReason:v66 client:25 error:&v71];
                v67 = v71;

                v31 = 0;
                v30 = v67;
              }

              goto LABEL_32;
            }

            v62 = self->placeholderBundleIdentifier;
            v63 = [v58 description];
            NSLog(&cfstr_FailedToSetPla_4.isa, v62, v63);

            v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:1 userInfo:0];
            v73 = v58;
            [v10 cancelForReason:v35 client:25 error:&v73];
            v30 = v73;
          }

          else
          {
            v60 = self->placeholderBundleIdentifier;
            v61 = [v56 description];
            NSLog(&cfstr_FailedToSetPla_3.isa, v60, v61);

            v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:1 userInfo:0];
            v75 = v56;
            [v10 cancelForReason:v35 client:25 error:&v75];
            v30 = v75;
          }

LABEL_31:
          v31 = 0;
LABEL_32:

          v35 = v70;
          goto LABEL_33;
        }

        v52 = self->placeholderBundleIdentifier;
        v53 = [v42 description];
        NSLog(&cfstr_FailedToSetPla.isa, v52, v53);

        image = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:1 userInfo:0];
        v78 = v35;
        [v10 cancelForReason:image client:25 error:&v78];
        v51 = v78;
      }

      else
      {
        NSLog(&cfstr_UnableToCreate_5.isa, self->placeholderBundleIdentifier);
        image = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:1 userInfo:0];
        v80 = v35;
        [v10 cancelForReason:image client:25 error:&v80];
        v51 = v80;
      }

      v30 = v51;
      goto LABEL_31;
    }

    NSLog(&cfstr_ExistingInstal.isa, self->placeholderBundleIdentifier);
    v29 = getIXAppInstallCoordinatorClass();
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:1 userInfo:0];
    v85 = v12;
    [v29 cancelCoordinatorForAppWithIdentity:v5 withReason:v18 client:25 error:&v85];
    v28 = v85;
  }

  else
  {
    v25 = self->placeholderBundleIdentifier;
    v26 = [v11 description];
    NSLog(&cfstr_UnableToCreate_3.isa, v25, v26);

    v27 = getIXAppInstallCoordinatorClass();
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:1 userInfo:0];
    v86 = v12;
    [v27 cancelCoordinatorForAppWithIdentity:v5 withReason:v18 client:25 error:&v86];
    v28 = v86;
  }

  v30 = v28;
  v31 = 0;
LABEL_35:

  return v31;
}

- (BOOL)updateOnDisk
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!self->_isAppClip)
  {
    v4 = [UIWebClip pathForWebClipWithIdentifier:self->identifier];
    v5 = [v4 stringByAppendingPathComponent:@"Info.plist"];
    _info = [(UIWebClip *)self _info];
    v7 = [_info writeToFile:v5 atomically:1];

    if (v7)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v21 = *MEMORY[0x1E696A3A0];
      v22[0] = *MEMORY[0x1E696A3A8];
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v20 = 0;
      v10 = [defaultManager setAttributes:v9 ofItemAtPath:v5 error:&v20];
      v11 = v20;

      if ((v10 & 1) == 0)
      {
        NSLog(&cfstr_CouldnTChangeW_0.isa, v11);
      }

      iconImage = self->iconImage;
      if (iconImage && ![(UIWebClip *)self _writeIconImage:iconImage toDiskWithFileName:@"icon.png"])
      {
        NSLog(&cfstr_CouldNotSaveWe.isa);
      }

      else
      {
        darkIconImage = self->darkIconImage;
        if (darkIconImage && ![(UIWebClip *)self _writeIconImage:darkIconImage toDiskWithFileName:@"dark-icon.png"])
        {
          NSLog(&cfstr_CouldNotSaveWe_0.isa);
        }

        else
        {
          tintableIconImage = self->tintableIconImage;
          if (tintableIconImage && ![(UIWebClip *)self _writeIconImage:tintableIconImage toDiskWithFileName:@"tintable-icon.png"])
          {
            NSLog(&cfstr_CouldNotSaveWe_1.isa);
          }

          else
          {
            startupImage = self->startupImage;
            if (startupImage && ![(UIWebClip *)self _writeImage:startupImage toDiskWithFileName:@"startup.png"])
            {
              NSLog(&cfstr_CouldNotSaveWe_2.isa);
            }

            else
            {
              startupLandscapeImage = self->startupLandscapeImage;
              if (startupLandscapeImage && ![(UIWebClip *)self _writeImage:startupLandscapeImage toDiskWithFileName:@"startup-landscape.png"])
              {
                NSLog(&cfstr_CouldNotSaveWe_3.isa);
              }

              else
              {
                initialLaunchImage = self->initialLaunchImage;
                if (!initialLaunchImage || [(UIWebClip *)self _writeImage:initialLaunchImage toDiskWithFileName:@"initial-launch-image.png"])
                {
                  v18 = self->iconImage;
                  self->iconImage = 0;

                  [(UIWebClip *)self setDarkIconImage:0];
                  [(UIWebClip *)self setTintableIconImage:0];
                  [(UIWebClip *)self setStartupImage:0];
                  [(UIWebClip *)self setStartupLandscapeImage:0];
                  [(UIWebClip *)self setInitialLaunchImage:0];
                  if ([(UIWebClip *)self _requiresPlaceholderBundle])
                  {
                    notify_post("com.apple.webclip.placeholder.updated");
                  }

                  v2 = 1;
                  goto LABEL_29;
                }

                NSLog(&cfstr_CouldNotSaveWe_4.isa);
              }
            }
          }
        }
      }
    }

    else
    {
      NSLog(&cfstr_CouldnTSaveWeb.isa);
      v11 = 0;
    }

    v2 = 0;
LABEL_29:

    return v2;
  }

  NSLog(&cfstr_UiwebclipUpdat.isa, a2);
  return 0;
}

- (BOOL)createOnDisk
{
  if (self->_isAppClip)
  {
    NSLog(&cfstr_UiwebclipCreat.isa, a2);
    return 0;
  }

  else
  {
    v4 = [UIWebClip pathForWebClipWithIdentifier:self->identifier];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if ([defaultManager createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0])
    {
      if ([(UIWebClip *)self _requiresPlaceholderBundle])
      {
        [(UIWebClip *)self _createApplicationRecord];
      }

      if (!self->bundleVersion)
      {
        self->bundleVersion = 1;
      }

      if (_os_feature_enabled_impl() && -[UIWebClip _subjectToEligibilityUpdates](self, "_subjectToEligibilityUpdates") && [objc_opt_class() _determineEligibility] == 4)
      {
        self->_eligibilityStatus = 2;
      }

      updateOnDisk = [(UIWebClip *)self updateOnDisk];
    }

    else
    {
      NSLog(&cfstr_CouldnTCreateW.isa);
      updateOnDisk = 0;
    }
  }

  return updateOnDisk;
}

- (BOOL)removeFromDisk
{
  if ([(UIWebClip *)self _requiresPlaceholderBundle])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __27__UIWebClip_removeFromDisk__block_invoke;
    v7[3] = &unk_1E70F5AC0;
    v7[4] = self;
    [(UIWebClip *)self _removePlaceholderBundleWithCompletion:v7];
    return 1;
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [UIWebClip pathForWebClipWithIdentifier:self->identifier];
    v6 = [defaultManager removeItemAtPath:v5 error:0];

    return v6;
  }
}

void __27__UIWebClip_removeFromDisk__block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = qword_1ED4A3000;
    v13 = qword_1ED4A3000;
    if (!qword_1ED4A3000)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getSFWebAppDataControllerClass_block_invoke;
      v9[3] = &unk_1E70F2F20;
      v9[4] = &v10;
      __getSFWebAppDataControllerClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = [[v3 alloc] initWithWebClipIdentifier:*(*(a1 + 32) + 8)];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __27__UIWebClip_removeFromDisk__block_invoke_2;
    v8[3] = &unk_1E70F3590;
    v8[4] = *(a1 + 32);
    [v5 clearWebsiteDataWithCompletion:v8];
  }

  else
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [UIWebClip pathForWebClipWithIdentifier:*(*(a1 + 32) + 8)];
    [v6 removeItemAtPath:v7 error:0];

    NSLog(&cfstr_WebclipDeletio.isa);
  }
}

uint64_t __27__UIWebClip_removeFromDisk__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [UIWebClip pathForWebClipWithIdentifier:*(*(a1 + 32) + 8)];
  [v2 removeItemAtPath:v3 error:0];

  return notify_post("com.apple.webclip.placeholder.removed");
}

- (void)_removePlaceholderBundleWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(UIWebClip *)self _hasPlaceholderBundle])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v5 = getIXUninstallOptionsClass_softClass;
    v16 = getIXUninstallOptionsClass_softClass;
    if (!getIXUninstallOptionsClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getIXUninstallOptionsClass_block_invoke;
      v12[3] = &unk_1E70F2F20;
      v12[4] = &v13;
      __getIXUninstallOptionsClass_block_invoke(v12);
      v5 = v14[3];
    }

    v6 = v5;
    _Block_object_dispose(&v13, 8);
    v7 = objc_alloc_init(v5);
    IXAppInstallCoordinatorClass = getIXAppInstallCoordinatorClass();
    v9 = [objc_alloc(getIXApplicationIdentityClass()) initWithBundleIdentifier:self->placeholderBundleIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__UIWebClip__removePlaceholderBundleWithCompletion___block_invoke;
    v10[3] = &unk_1E712BE70;
    v11 = completionCopy;
    [IXAppInstallCoordinatorClass uninstallAppWithIdentity:v9 options:v7 completion:v10];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __52__UIWebClip__removePlaceholderBundleWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (a2)
  {
    NSLog(&cfstr_WebAppPlacehol_0.isa);
  }

  else
  {
    NSLog(&cfstr_WebAppPlacehol.isa, v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, 1);
  }
}

- (id)_initWithIdentifier:(id)identifier dictionaryRepresentation:(id)representation
{
  identifierCopy = identifier;
  representationCopy = representation;
  v12.receiver = self;
  v12.super_class = UIWebClip;
  v8 = [(UIWebClip *)&v12 init];
  if (v8)
  {
    v9 = [UIWebClip _normalizedWebClipIdentifierFromBundleIdentifier:identifierCopy];
    [(UIWebClip *)v8 setIdentifier:v9];

    [(UIWebClip *)v8 setFullScreen:0];
    [(UIWebClip *)v8 setClassicMode:0];
    [(UIWebClip *)v8 setStatusBarStyle:0];
    v8->iconIsPrerendered = 1;
    objc_storeStrong(&v8->_readOnlyDictionaryRepresentation, representation);
    [(UIWebClip *)v8 _reloadProperties];
    v10 = +[UIWebClipEligibilityObserver sharedObserver];
    [v10 startObservingEligibility];
  }

  return v8;
}

- (void)setPageURL:(id)l
{
  lCopy = l;
  if (([lCopy isFileURL] & 1) == 0)
  {
    objc_storeStrong(&self->pageURL, l);
  }
}

- (id)_bundleResourceWithName:(id)name
{
  nameCopy = name;
  v5 = [UIWebClip urlForWebClipWithIdentifier:self->identifier];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithURL:v5];
    bundlePath = [v6 bundlePath];
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.png", nameCopy];
    v9 = [bundlePath stringByAppendingPathComponent:nameCopy];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    LODWORD(nameCopy) = [defaultManager fileExistsAtPath:v9];

    if (nameCopy)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_bundleImageWithName:(id)name
{
  v3 = [(UIWebClip *)self _bundleResourceWithName:name];
  if (v3)
  {
    v4 = [UIImage imageWithContentsOfFile:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)generateIconImageForFormat:(int)format scale:(double)scale
{
  v5 = *&format;
  [(UIWebClip *)self _reloadProperties];
  iconImage = [(UIWebClip *)self iconImage];
  scale = [iconImage _applicationIconImageForFormat:v5 precomposed:-[UIWebClip iconIsPrecomposed](self scale:"iconIsPrecomposed"), scale];

  return scale;
}

- (UIImage)iconImage
{
  iconImage = self->iconImage;
  if (iconImage)
  {
    v3 = iconImage;
  }

  else
  {
    v3 = [(UIWebClip *)self _bundleImageWithName:@"icon"];
    if (!v3)
    {
      if (self->_isAppClip)
      {
        v5 = objc_opt_new();
        [v5 setShape:5];
        [v5 setScale:2.0];
        [v5 setSize:{167.0, 167.0}];
        genericApplicationIcon = [MEMORY[0x1E69A8A00] genericApplicationIcon];
        v7 = [genericApplicationIcon prepareImageForDescriptor:v5];

        cGImage = [v7 CGImage];
        [v7 scale];
        v3 = [UIImage imageWithCGImage:cGImage scale:0 orientation:?];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (UIImage)darkIconImage
{
  darkIconImage = self->darkIconImage;
  if (darkIconImage)
  {
    iconImage = darkIconImage;
  }

  else
  {
    iconImage = [(UIWebClip *)self _bundleImageWithName:@"dark-icon"];
    if (!iconImage)
    {
      iconImage = [(UIWebClip *)self iconImage];
    }
  }

  return iconImage;
}

- (UIImage)tintableIconImage
{
  tintableIconImage = self->tintableIconImage;
  if (tintableIconImage)
  {
    iconImage = tintableIconImage;
  }

  else
  {
    iconImage = [(UIWebClip *)self _bundleImageWithName:@"tintable-icon"];
    if (!iconImage)
    {
      iconImage = [(UIWebClip *)self iconImage];
    }
  }

  return iconImage;
}

- (void)_setIconImage:(id)image isPrecomposed:(BOOL)precomposed isScreenShotBased:(BOOL)based
{
  objc_storeStrong(&self->iconImage, image);
  self->iconIsScreenShotBased = based;
  self->iconIsPrecomposed = precomposed;
}

- (UIImage)startupImage
{
  startupImage = self->startupImage;
  if (startupImage)
  {
    v3 = startupImage;
  }

  else
  {
    v3 = [(UIWebClip *)self _bundleImageWithName:@"startup"];
  }

  return v3;
}

- (UIImage)startupLandscapeImage
{
  startupLandscapeImage = self->startupLandscapeImage;
  if (startupLandscapeImage)
  {
    v3 = startupLandscapeImage;
  }

  else
  {
    v3 = [(UIWebClip *)self _bundleImageWithName:@"startup-landscape"];
  }

  return v3;
}

- (UIImage)initialLaunchImage
{
  initialLaunchImage = self->initialLaunchImage;
  if (initialLaunchImage)
  {
    v3 = initialLaunchImage;
  }

  else
  {
    v3 = [(UIWebClip *)self _bundleImageWithName:@"initial-launch-image"];
  }

  return v3;
}

- (void)dealloc
{
  [(UIWebClip *)self cancelMediaUpdate];
  v3.receiver = self;
  v3.super_class = UIWebClip;
  [(UIWebClip *)&v3 dealloc];
}

- (id)_defaultBrowserName
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:@"http://"];
  if (!v4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWebClip.m" lineNumber:1181 description:@"HTTP URL should always construct"];
  }

  v11 = 0;
  v5 = [objc_alloc(MEMORY[0x1E6963630]) initWithURL:v4 error:&v11];
  v6 = v5;
  if (v5)
  {
    bundleRecord = [v5 bundleRecord];
    localizedName = [bundleRecord localizedName];
  }

  else
  {
    localizedName = 0;
  }

  return localizedName;
}

- (id)eligibilityAlert:(id)alert
{
  alertCopy = alert;
  _defaultBrowserName = [(UIWebClip *)self _defaultBrowserName];
  if (_defaultBrowserName)
  {
    _UILocalizedFormat(@"OPEN_IN_BROWSER_TITLE", @"open web page in browser alert title", @"Open “%@” in %@?", v5, v6, v7, v8, v9, self->title);
  }

  else
  {
    _UILocalizedFormat(@"OPEN_IN_BROWSER_TITLE_BACKUP", @"open web page in browser alert title", @"Open “%@” in your browser?", v5, v6, v7, v8, v9, self->title);
  }
  v11 = ;
  v12 = _UILocalizedString(@"OPEN_IN_BROWSER_BODY", @"open web page in browser alert title", @"In your region, web apps now open in your default browser.");
  v13 = _UILocalizedString(@"OPEN_IN_BROWSER", @"open web page in the browser alert action", @"Open");
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __30__UIWebClip_eligibilityAlert___block_invoke;
  v23[3] = &unk_1E712BE98;
  v23[4] = self;
  v14 = alertCopy;
  v24 = v14;
  v15 = [UIAlertAction actionWithTitle:v13 style:0 handler:v23];

  v16 = _UILocalizedString(@"Cancel", @"cancel alert action", @"Cancel");
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __30__UIWebClip_eligibilityAlert___block_invoke_2;
  v21[3] = &unk_1E712BE98;
  v21[4] = self;
  v22 = v14;
  v17 = v14;
  v18 = [UIAlertAction actionWithTitle:v16 style:0 handler:v21];

  v19 = [UIAlertController alertControllerWithTitle:v11 message:v12 preferredStyle:1];
  [v19 addAction:v18];
  [v19 addAction:v15];

  return v19;
}

uint64_t __30__UIWebClip_eligibilityAlert___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 272);
  *(v2 + 272) = 2;
  [*(a1 + 32) updateOnDisk];
  if (!v3)
  {
    [*(a1 + 32) _removePlaceholderBundleAndClearBadge];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t __30__UIWebClip_eligibilityAlert___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 272))
  {
    *(v2 + 272) = 1;
    [*(a1 + 32) updateOnDisk];
    [*(a1 + 32) _removePlaceholderBundleAndClearBadge];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

+ (id)webClipWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[UIWebClip alloc] _initWithIdentifier:identifierCopy dictionaryRepresentation:0];

  return v4;
}

+ (id)webClipWithUUID:(id)d
{
  uUIDString = [d UUIDString];
  v5 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_1EFB14550];

  v6 = [self webClipWithIdentifier:v5];

  return v6;
}

+ (id)webClipWithURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  if (([scheme isEqualToString:@"webclip"] & 1) != 0 || objc_msgSend(scheme, "isEqualToString:", @"webapp"))
  {
    resourceSpecifier = [lCopy resourceSpecifier];
    if (resourceSpecifier)
    {
      v7 = [self webClipWithIdentifier:resourceSpecifier];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)webClipWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKeyedSubscript:@"DictionaryRepresentationIdentifier"];
  if ([v4 length])
  {
    v5 = [[UIWebClip alloc] _initWithIdentifier:v4 dictionaryRepresentation:representationCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)appClips
{
  v2 = objc_opt_class();

  return [v2 clipsIncludingWebClips:0 includingAppClips:1];
}

+ (id)clipsIncludingWebClips:(BOOL)clips includingAppClips:(BOOL)appClips trustedByClientBundleIdentifier:(id)identifier
{
  clipsCopy = clips;
  appClipsCopy = appClips;
  identifierCopy = identifier;
  array = [MEMORY[0x1E695DF70] array];
  webClipsDirectoryPath = [self webClipsDirectoryPath];
  v7 = opendir([webClipsDirectoryPath fileSystemRepresentation]);
  if (v7)
  {
    v8 = v7;
    v9 = readdir(v7);
    if (v9)
    {
      v10 = v9;
      v11 = 0x1E696A000uLL;
      v12 = 0x1E696A000uLL;
      v13 = @"Info.plist";
      v33 = v8;
      do
      {
        v14 = [objc_alloc(*(v11 + 3776)) initWithUTF8String:v10->d_name];
        lastPathComponent = [v14 lastPathComponent];
        stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

        if (stringByDeletingPathExtension)
        {
          v17 = [webClipsDirectoryPath stringByAppendingPathComponent:v14];
          v18 = [v17 stringByAppendingPathComponent:v13];

          defaultManager = [*(v12 + 3080) defaultManager];
          v20 = [defaultManager fileExistsAtPath:v18];

          if (v20)
          {
            v21 = webClipsDirectoryPath;
            v22 = v11;
            v23 = v13;
            v24 = v12;
            v25 = [UIWebClip webClipWithIdentifier:stringByDeletingPathExtension];
            v26 = v25;
            if (clipsCopy && appClipsCopy || appClipsCopy && ([v25 isAppClip] & 1) != 0 || clipsCopy && (objc_msgSend(v26, "isAppClip") & 1) == 0)
            {
              if (!identifierCopy || ([v26 trustedClientBundleIdentifiers], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "containsObject:", identifierCopy), v27, v28))
              {
                [array addObject:v26];
              }
            }

            v12 = v24;
            v13 = v23;
            v11 = v22;
            webClipsDirectoryPath = v21;
            v8 = v33;
          }
        }

        v10 = readdir(v8);
      }

      while (v10);
    }

    closedir(v8);
  }

  return array;
}

+ (BOOL)webClipWithIdentifierExists:(id)exists
{
  v3 = [self pathForWebClipWithIdentifier:exists];
  v4 = [v3 stringByAppendingPathComponent:@"Info.plist"];

  if (v4)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [defaultManager fileExistsAtPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)webClipIdentifierFromBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"com.apple.webapp-"])
  {
    v4 = [identifierCopy substringFromIndex:{objc_msgSend(@"com.apple.webapp-", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_normalizedWebClipIdentifierFromBundleIdentifier:(id)identifier
{
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"com.apple.webapp-";
  v8[1] = @"com.apple.appclip-";
  v3 = MEMORY[0x1E695DEC8];
  identifierCopy = identifier;
  v5 = [v3 arrayWithObjects:v8 count:2];
  v6 = [identifierCopy _uikit_stringByRemovingFirstMatchFromPrefixes:v5];

  return v6;
}

+ (id)_contentForMetaName:(id)name inWebDocumentView:(id)view
{
  nameCopy = name;
  viewCopy = view;
  WebThreadLock();
  webView = [viewCopy webView];
  mainFrame = [webView mainFrame];
  dOMDocument = [mainFrame DOMDocument];
  v10 = dOMDocument;
  if (dOMDocument)
  {
    v20 = mainFrame;
    v21 = webView;
    v22 = viewCopy;
    v11 = [dOMDocument getElementsByTagName:@"meta"];
    v12 = 0;
    if ([v11 length])
    {
      v13 = 0;
      do
      {
        v14 = [v11 item:v13];
        v15 = [v14 getAttribute:@"name"];
        v16 = [nameCopy caseInsensitiveCompare:v15];

        if (!v16)
        {
          v17 = [v14 getAttribute:@"content"];

          v12 = v17;
        }

        v13 = (v13 + 1);
      }

      while (v13 < [v11 length]);
    }

    webView = v21;
    viewCopy = v22;
    mainFrame = v20;
  }

  else
  {
    v12 = 0;
  }

  v18 = v12;

  return v12;
}

+ (int64_t)_webClipStatusBarStyleForMetaTagContent:(id)content
{
  contentCopy = content;
  v4 = contentCopy;
  if (contentCopy)
  {
    if ([contentCopy caseInsensitiveCompare:@"black"])
    {
      v5 = [v4 caseInsensitiveCompare:@"black-translucent"] == 0;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)webClipStatusBarStyleForWebDocumentView:(id)view
{
  v4 = [self _contentForMetaName:@"apple-mobile-web-app-status-bar-style" inWebDocumentView:view];
  v5 = [self _webClipStatusBarStyleForMetaTagContent:v4];

  return v5;
}

+ (BOOL)webClipFullScreenValueForWebDocumentView:(id)view
{
  selfCopy = self;
  v4 = [self _contentForMetaName:@"apple-mobile-web-app-capable" inWebDocumentView:view];
  LOBYTE(selfCopy) = [selfCopy _webClipFullScreenValueForMetaTagContent:v4];

  return selfCopy;
}

+ (unint64_t)_webClipOrientationsForMetaTagContent:(id)content
{
  v23 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  if (contentCopy)
  {
    v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@", "}];
    v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" \t\n\f\r"];
    v16 = v4;
    v17 = contentCopy;
    v6 = [contentCopy componentsSeparatedByCharactersInSet:v4];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v18 + 1) + 8 * i) stringByTrimmingCharactersInSet:v5];
          if ([v12 caseInsensitiveCompare:@"portrait"])
          {
            if ([v12 caseInsensitiveCompare:@"portrait-upside-down"])
            {
              if ([v12 caseInsensitiveCompare:@"landscape-right"])
              {
                if ([v12 caseInsensitiveCompare:@"landscape-left"])
                {
                  if ([v12 caseInsensitiveCompare:@"portrait-any"])
                  {
                    if ([v12 caseInsensitiveCompare:@"landscape-any"])
                    {
                      if (![v12 caseInsensitiveCompare:@"any"])
                      {
                        v9 |= 0x1EuLL;
                      }
                    }

                    else
                    {
                      v9 |= 0x18uLL;
                    }
                  }

                  else
                  {
                    v9 |= 6uLL;
                  }
                }

                else
                {
                  v9 |= 0x10uLL;
                }
              }

              else
              {
                v9 |= 8uLL;
              }
            }

            else
            {
              v9 |= 4uLL;
            }
          }

          else
          {
            v9 |= 2uLL;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    if ((v9 & 0x10) != 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = v9;
    }

    if ((~v9 & 0xE) != 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = v14;
    }

    contentCopy = v17;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (unint64_t)webClipOrientationsForWebDocumentView:(id)view
{
  v4 = [self _contentForMetaName:@"apple-mobile-web-app-orientations" inWebDocumentView:view];
  v5 = [self _webClipOrientationsForMetaTagContent:v4];

  return v5;
}

- (void)cancelMediaUpdate
{
  [(UIWebClip *)self stopLoadingCustomIcon];
  [(UIWebClip *)self stopLoadingStartupImage];

  [(UIWebClip *)self stopLoadingStartupLandscapeImage];
}

- (void)stopLoadingCustomIcon
{
  iconConnection = self->_iconConnection;
  if (iconConnection)
  {
    [(NSURLConnection *)iconConnection cancel];
    v4 = self->_iconConnection;
    self->_iconConnection = 0;

    customIconData = self->_customIconData;
    self->_customIconData = 0;
  }
}

- (void)stopLoadingStartupImage
{
  startupImageConnection = self->_startupImageConnection;
  if (startupImageConnection)
  {
    [(NSURLConnection *)startupImageConnection cancel];
    v4 = self->_startupImageConnection;
    self->_startupImageConnection = 0;

    customStartupImageData = self->_customStartupImageData;
    self->_customStartupImageData = 0;
  }
}

- (void)stopLoadingStartupLandscapeImage
{
  startupLandscapeImageConnection = self->_startupLandscapeImageConnection;
  if (startupLandscapeImageConnection)
  {
    [(NSURLConnection *)startupLandscapeImageConnection cancel];
    v4 = self->_startupLandscapeImageConnection;
    self->_startupLandscapeImageConnection = 0;

    customStartupLandscapeImageData = self->_customStartupLandscapeImageData;
    self->_customStartupLandscapeImageData = 0;
  }
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  connectionCopy = connection;
  dataCopy = data;
  if (self->_iconConnection == connectionCopy)
  {
    customIconData = self->_customIconData;
    if (!customIconData)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithData:dataCopy];
      customStartupImageData = self->_customIconData;
      self->_customIconData = v10;
      goto LABEL_11;
    }

LABEL_9:
    [(NSMutableData *)customIconData appendData:dataCopy];
    goto LABEL_12;
  }

  if (self->_startupImageConnection == connectionCopy)
  {
    customIconData = self->_customStartupImageData;
    if (!customIconData)
    {
      v11 = [objc_alloc(MEMORY[0x1E695DF88]) initWithData:dataCopy];
      customStartupImageData = self->_customStartupImageData;
      self->_customStartupImageData = v11;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (self->_startupLandscapeImageConnection != connectionCopy)
  {
    goto LABEL_12;
  }

  customIconData = self->_customStartupLandscapeImageData;
  if (customIconData)
  {
    goto LABEL_9;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithData:dataCopy];
  customStartupImageData = self->_customStartupLandscapeImageData;
  self->_customStartupLandscapeImageData = v8;
LABEL_11:

LABEL_12:
}

- (id)bundleIdentifier
{
  identifier = [(UIWebClip *)self identifier];
  if ([(UIWebClip *)self isAppClip])
  {
    v4 = @"com.apple.appclip-";
LABEL_5:
    v5 = [(__CFString *)v4 stringByAppendingString:identifier];
    goto LABEL_7;
  }

  if ([(UIWebClip *)self fullScreen])
  {
    v4 = @"com.apple.webapp-";
    goto LABEL_5;
  }

  v5 = identifier;
LABEL_7:
  v6 = v5;

  return v6;
}

- (void)requestIconUpdateInSpringBoard
{
  v49 = *MEMORY[0x1E69E9840];
  bundleIdentifier = [(UIWebClip *)self bundleIdentifier];
  v3 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *buffer = 0u;
    v18 = 0u;
    if (CFStringGetCString(bundleIdentifier, buffer, 1024, 0x8000100u))
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v4 = off_1ED4A3018;
      v16 = off_1ED4A3018;
      if (!off_1ED4A3018)
      {
        v5 = SpringBoardServicesLibrary_3();
        v14[3] = dlsym(v5, "SBSSpringBoardServerPort");
        off_1ED4A3018 = v14[3];
        v4 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (v4)
      {
        v6 = v4();
        v13 = 0;
        v14 = &v13;
        v15 = 0x2020000000;
        v7 = off_1ED4A3010;
        v16 = off_1ED4A3010;
        if (!off_1ED4A3010)
        {
          v8 = SpringBoardServicesLibrary_3();
          v14[3] = dlsym(v8, "SBReloadIconForIdentifier");
          off_1ED4A3010 = v14[3];
          v7 = v14[3];
        }

        _Block_object_dispose(&v13, 8);
        if (v7)
        {
          v7(v6, buffer);
          goto LABEL_10;
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"kern_return_t softLink_SBReloadIconForIdentifier(mach_port_t, char *)"}];
        [currentHandler handleFailureInFunction:v12 file:@"UIWebClip.m" lineNumber:49 description:{@"%s", dlerror()}];
      }

      else
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mach_port_t softLink_SBSSpringBoardServerPort(void)"];
        [currentHandler2 handleFailureInFunction:v10 file:@"UIWebClip.m" lineNumber:48 description:{@"%s", dlerror()}];
      }

      __break(1u);
    }
  }

LABEL_10:
}

+ (id)webClipIconsForWebClipLinkTags:(id)tags pageURL:(id)l
{
  v71 = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  lCopy = l;
  array = [MEMORY[0x1E695DF70] array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v7 = tagsCopy;
  v8 = [v7 countByEnumeratingWithState:&v61 objects:v69 count:16];
  v52 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = *v62;
    v11 = *MEMORY[0x1E695F060];
    v12 = *(MEMORY[0x1E695F060] + 8);
    v50 = *v62;
    v51 = array;
    do
    {
      v13 = 0;
      v53 = v9;
      do
      {
        if (*v62 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v58 = v13;
        v14 = *(*(&v61 + 1) + 8 * v13);
        v59 = [v14 rel];
        if (([v59 _web_isCaseInsensitiveEqualToString:@"apple-touch-icon"] & 1) != 0 || objc_msgSend(v59, "_web_isCaseInsensitiveEqualToString:", @"apple-touch-icon-precomposed"))
        {
          href = [v14 href];
          if (![href length])
          {
            goto LABEL_32;
          }

          v57 = href;
          v16 = [MEMORY[0x1E695DFF8] URLWithString:href encodingInvalidCharacters:0];
          if (!v16)
          {
            goto LABEL_31;
          }

          v56 = objc_alloc_init(UIWebClipIcon);
          -[UIWebClipIcon setPrecomposed:](v56, "setPrecomposed:", [v59 _web_isCaseInsensitiveEqualToString:@"apple-touch-icon-precomposed"]);
          sizes = [v14 sizes];
          v18 = array;
          if (sizes)
          {
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v55 = sizes;
            v19 = [sizes componentsSeparatedByString:@" "];
            v20 = [v19 countByEnumeratingWithState:&v65 objects:v70 count:16];
            if (v20)
            {
              v21 = v20;
              v54 = v16;
              v22 = 0;
              v23 = *v66;
              v24 = v12;
              v25 = v11;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v66 != v23)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v27 = [*(*(&v65 + 1) + 8 * i) componentsSeparatedByString:@"x"];
                  if ([v27 count] == 2)
                  {
                    v28 = [v27 objectAtIndex:0];
                    integerValue = [v28 integerValue];

                    v30 = [v27 objectAtIndex:1];
                    integerValue2 = [v30 integerValue];

                    if (integerValue >= 1 && integerValue2 >= 1)
                    {
                      if ([MEMORY[0x1E6963698] _compareApplicationIconCanvasSize:integerValue withSize:{integerValue2, v25, v24}] == 1)
                      {
                        v24 = integerValue2;
                        v25 = integerValue;
                      }

                      v22 = 1;
                    }
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v65 objects:v70 count:16];
              }

              while (v21);

              v18 = v51;
              v7 = v52;
              v10 = v50;
              v9 = v53;
              v16 = v54;
              sizes = v55;
              if (v22)
              {
LABEL_30:

                [(UIWebClipIcon *)v56 setBestSize:v25, v24];
                [(UIWebClipIcon *)v56 setUrl:v16];
                array = v18;
                [v18 addObject:v56];

LABEL_31:
                href = v57;
LABEL_32:

                goto LABEL_33;
              }
            }

            else
            {

              v9 = v53;
              sizes = v55;
            }
          }

          v24 = 57.0;
          v25 = 57.0;
          goto LABEL_30;
        }

LABEL_33:

        v13 = v58 + 1;
      }

      while (v58 + 1 != v9);
      v9 = [v7 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v9);
  }

  [MEMORY[0x1E6963698] _applicationIconCanvasSize];
  v34 = v33;
  v36 = v35;
  v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldx%ld", v33, v35];
  v38 = objc_alloc_init(UIWebClipIcon);
  v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/apple-touch-icon-%@.png", v37];
  v39 = [MEMORY[0x1E695DFF8] URLWithString:v60 relativeToURL:lCopy];
  [(UIWebClipIcon *)v38 setUrl:v39];

  [(UIWebClipIcon *)v38 setSiteWide:1];
  [(UIWebClipIcon *)v38 setBestSize:v34, v36];
  v40 = array;
  [array addObject:v38];
  v41 = objc_alloc_init(UIWebClipIcon);
  v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/apple-touch-icon-%@-precomposed.png", v37];
  v43 = [MEMORY[0x1E695DFF8] URLWithString:v42 relativeToURL:lCopy];
  [(UIWebClipIcon *)v41 setUrl:v43];

  [(UIWebClipIcon *)v41 setSiteWide:1];
  [(UIWebClipIcon *)v41 setBestSize:v34, v36];
  [(UIWebClipIcon *)v41 setPrecomposed:1];
  [array addObject:v41];
  v44 = objc_alloc_init(UIWebClipIcon);
  v45 = [MEMORY[0x1E695DFF8] URLWithString:@"/apple-touch-icon.png" relativeToURL:lCopy];
  [(UIWebClipIcon *)v44 setUrl:v45];

  [(UIWebClipIcon *)v44 setSiteWide:1];
  [v40 addObject:v44];
  v46 = objc_alloc_init(UIWebClipIcon);
  [(UIWebClipIcon *)v46 setPrecomposed:1];
  v47 = [MEMORY[0x1E695DFF8] URLWithString:@"/apple-touch-icon-precomposed.png" relativeToURL:lCopy];
  [(UIWebClipIcon *)v46 setUrl:v47];

  [(UIWebClipIcon *)v46 setSiteWide:1];
  [v40 addObject:v44];
  [v40 sortWithOptions:16 usingComparator:&__block_literal_global_724];

  return v40;
}

+ (id)webClipIconsForWebDocumentView:(id)view
{
  viewCopy = view;
  WebThreadLock();
  v5 = baseURLForWebDocumentView(viewCopy);
  v6 = [self _webClipLinkTagsFromWebDocumentView:viewCopy];

  v7 = [self webClipIconsForWebClipLinkTags:v6 pageURL:v5];

  return v7;
}

- (void)updateCustomMediaLocationsWithWebClipLinkTags:(id)tags baseURL:(id)l
{
  v28 = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  lCopy = l;
  v7 = [objc_opt_class() webClipIconsForWebClipLinkTags:tagsCopy pageURL:lCopy];
  selfCopy = self;
  [(UIWebClip *)self setIcons:v7];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = tagsCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 rel];
        v17 = [v16 _web_isCaseInsensitiveEqualToString:@"apple-touch-startup-image"];

        if (v17)
        {
          hrefURL = [v15 hrefURL];
          if (hrefURL)
          {
            if ([v15 mediaMatchesPortraitOrientation])
            {
              v19 = hrefURL;

              v12 = v19;
            }

            if ([v15 mediaMatchesLandscapeOrientation])
            {
              v20 = hrefURL;

              v11 = v20;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  [(UIWebClip *)selfCopy setStartupImageURL:v12];
  [(UIWebClip *)selfCopy setStartupLandscapeImageURL:v11];
  [(UIWebClip *)selfCopy requestCustomIconUpdate];
  if ([(UIWebClip *)selfCopy fullScreen])
  {
    [(UIWebClip *)selfCopy requestCustomPortraitStartupImageUpdate];
    [(UIWebClip *)selfCopy requestCustomLandscapeStartupImageUpdate];
  }
}

- (void)updateCustomMediaLocationsFromWebDocumentView:(id)view
{
  viewCopy = view;
  WebThreadLock();
  v6 = baseURLForWebDocumentView(viewCopy);
  v5 = [objc_opt_class() _webClipLinkTagsFromWebDocumentView:viewCopy];

  [(UIWebClip *)self updateCustomMediaLocationsWithWebClipLinkTags:v5 baseURL:v6];
}

+ (id)_webClipLinkTagsFromWebDocumentView:(id)view
{
  viewCopy = view;
  WebThreadLock();
  array = [MEMORY[0x1E695DF70] array];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = __49__UIWebClip__webClipLinkTagsFromWebDocumentView___block_invoke;
  v18 = &unk_1E712BEC0;
  v5 = array;
  v19 = v5;
  v6 = v16;
  webView = [viewCopy webView];
  mainFrame = [webView mainFrame];
  dOMDocument = [mainFrame DOMDocument];

  if (dOMDocument)
  {
    v10 = [dOMDocument getElementsByTagName:@"link"];
    v11 = [v10 length];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      do
      {
        v14 = [v10 item:v13];
        v17(v6, v14);

        v13 = (v13 + 1);
      }

      while (v12 != v13);
    }
  }

  return v5;
}

void __49__UIWebClip__webClipLinkTagsFromWebDocumentView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_alloc_init(UIWebClipLinkTag);
  v4 = [v3 href];
  [(UIWebClipLinkTag *)v8 setHref:v4];

  v5 = [v3 rel];
  [(UIWebClipLinkTag *)v8 setRel:v5];

  v6 = [v3 getAttribute:@"sizes"];
  [(UIWebClipLinkTag *)v8 setSizes:v6];

  -[UIWebClipLinkTag setMediaMatchesPortraitOrientation:](v8, "setMediaMatchesPortraitOrientation:", [v3 _mediaQueryMatchesForOrientation:1]);
  v7 = [v3 _mediaQueryMatchesForOrientation:2];

  [(UIWebClipLinkTag *)v8 setMediaMatchesLandscapeOrientation:v7];
  [*(a1 + 32) addObject:v8];
}

- (BOOL)tryLoadingNextCustomIcon
{
  p_icons = &self->icons;
  icons = self->icons;
  v5 = &p_icons[1]->super.isa + 1;
  self->currentIconIndex = v5;
  v6 = [(NSArray *)icons count];
  if (v5 >= v6)
  {
    self->currentIconIndex = 0;
  }

  else
  {
    [(UIWebClip *)self requestCustomIconUpdate];
  }

  return v5 < v6;
}

- (void)connectionDidFinishLoading:(id)loading
{
  loadingCopy = loading;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  v6 = v5;
  [mainScreen bounds];
  v8 = v7;
  v10 = v9;
  [UIApp statusBarHeight];
  v12 = v11;
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  if (self->_iconConnection != loadingCopy)
  {
    v14 = v10 - v12;
    v15 = v6 * v8;
    v16 = v6 * (v10 - v12);
    if (self->_startupImageConnection == loadingCopy)
    {
      v17 = [UIImage imageWithData:self->_customStartupImageData];
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained webClip:self startupImageRequestDidFinishWithImage:v17];
      }

      if (v17)
      {
        [v17 size];
        v41 = v40 == v8 && v39 == v14;
        if (v41 || (([v17 size], v43 == v15) ? (v44 = v42 == v16) : (v44 = 0), v44))
        {
          [(UIWebClip *)self setStartupImage:v17];
          [(UIWebClip *)self updateOnDisk];
        }
      }

      [(UIWebClip *)self stopLoadingStartupImage];
    }

    else
    {
      if (self->_startupLandscapeImageConnection != loadingCopy)
      {
        goto LABEL_50;
      }

      v17 = [UIImage imageWithData:self->_customStartupLandscapeImageData];
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained webClip:self startupLandscapeImageRequestDidFinishWithImage:v17];
      }

      if (v17)
      {
        v18 = v8 - v12;
        v19 = v12 + v14;
        [v17 size];
        v22 = v21 == v8 - v12 && v20 == v19;
        if (v22 || ((v23 = v6 * v12, v24 = v15 - v6 * v12, v25 = v23 + v16, [v17 size], v27 == v24) ? (v28 = v26 == v25) : (v28 = 0), v28))
        {
          [(UIWebClip *)self setStartupLandscapeImage:v17];
          [(UIWebClip *)self updateOnDisk];
        }

        else
        {
          [v17 size];
          v31 = v29;
          v32 = v30;
          v33 = v30 == v18 && v29 == v19;
          if (v33 || (v30 == v24 ? (v34 = v29 == v25) : (v34 = 0), v34))
          {
            _UIGraphicsBeginImageContextWithOptions(0, 0, v24, v25, 1.0);
            ContextStack = GetContextStack(0);
            if (*ContextStack < 1)
            {
              v36 = 0;
            }

            else
            {
              v36 = ContextStack[3 * (*ContextStack - 1) + 1];
            }

            CGContextTranslateCTM(v36, v32 * 0.5, v31 * 0.5);
            CGContextRotateCTM(v36, 1.57079633);
            CGContextTranslateCTM(v36, v31 * -0.5, v32 * -0.5);
            [v17 drawAtPoint:{0.0, 0.0}];
            v45 = _UIGraphicsGetImageFromCurrentImageContext(0);
            UIGraphicsEndImageContext();
            [(UIWebClip *)self setStartupLandscapeImage:v45];
            [(UIWebClip *)self updateOnDisk];
          }
        }
      }

      [(UIWebClip *)self stopLoadingStartupLandscapeImage];
    }

    goto LABEL_49;
  }

  v37 = [(NSArray *)self->icons objectAtIndex:self->currentIconIndex];
  isPrecomposed = [v37 isPrecomposed];

  v17 = [UIImage imageWithData:self->_customIconData];
  if (!v17)
  {
    if ([(UIWebClip *)self tryLoadingNextCustomIcon])
    {
      goto LABEL_50;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (objc_opt_respondsToSelector())
  {
LABEL_45:
    [WeakRetained webClip:self iconRequestDidFinishWithImage:v17 precomposed:isPrecomposed];
    goto LABEL_46;
  }

  [(UIWebClip *)self setIconImage:v17 isPrecomposed:isPrecomposed];
  [(UIWebClip *)self updateOnDisk];
  [(UIWebClip *)self requestIconUpdateInSpringBoard];
LABEL_46:
  [(UIWebClip *)self stopLoadingCustomIcon];
LABEL_49:

LABEL_50:
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  connectionCopy = connection;
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  if (self->_iconConnection == connectionCopy)
  {
    [(UIWebClip *)self stopLoadingCustomIcon];
    if (![(UIWebClip *)self tryLoadingNextCustomIcon]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained webClip:self iconRequestDidFinishWithImage:0 precomposed:0];
    }
  }

  else if (self->_startupImageConnection == connectionCopy)
  {
    [(UIWebClip *)self stopLoadingStartupImage];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained webClip:self startupImageRequestDidFinishWithImage:0];
    }
  }

  else if (self->_startupLandscapeImageConnection == connectionCopy)
  {
    [(UIWebClip *)self stopLoadingStartupLandscapeImage];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained webClip:self startupLandscapeImageRequestDidFinishWithImage:0];
    }
  }
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  connectionCopy = connection;
  responseCopy = response;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [responseCopy statusCode] >= 400)
  {
    [(UIWebClip *)self connection:connectionCopy didFailWithError:0];
  }
}

- (void)requestCustomIconUpdate
{
  if (self->_iconConnection)
  {
    [(UIWebClip *)self stopLoadingCustomIcon];
  }

  currentIconIndex = self->currentIconIndex;
  if (currentIconIndex < -[NSArray count](self->icons, "count") && (v4 = MEMORY[0x1E695AC68], -[NSArray objectAtIndex:](self->icons, "objectAtIndex:", self->currentIconIndex), v5 = objc_claimAutoreleasedReturnValue(), [v5 url], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "requestWithURL:cachePolicy:timeoutInterval:", v6, 0, 60.0), WeakRetained = objc_claimAutoreleasedReturnValue(), v6, v5, WeakRetained))
  {
    v7 = [MEMORY[0x1E695AC40] connectionWithRequest:WeakRetained delegate:self];
    iconConnection = self->_iconConnection;
    self->_iconConnection = v7;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained webClip:self iconRequestDidFinishWithImage:0 precomposed:0];
    }
  }
}

- (void)requestCustomPortraitStartupImageUpdate
{
  if (self->_startupImageConnection)
  {
    [(UIWebClip *)self stopLoadingStartupImage];
  }

  v3 = [MEMORY[0x1E695AC68] requestWithURL:self->startupImageURL cachePolicy:0 timeoutInterval:60.0];
  v6 = v3;
  if (v3)
  {
    v4 = [MEMORY[0x1E695AC40] connectionWithRequest:v3 delegate:self];
    startupImageConnection = self->_startupImageConnection;
    self->_startupImageConnection = v4;
  }

  else
  {
    startupImageConnection = objc_loadWeakRetained(&self->delegate);
    if (objc_opt_respondsToSelector())
    {
      [startupImageConnection webClip:self startupImageRequestDidFinishWithImage:0];
    }
  }
}

- (void)requestCustomLandscapeStartupImageUpdate
{
  if (self->_startupLandscapeImageConnection)
  {
    [(UIWebClip *)self stopLoadingStartupLandscapeImage];
  }

  v3 = [MEMORY[0x1E695AC68] requestWithURL:self->startupLandscapeImageURL cachePolicy:0 timeoutInterval:60.0];
  v6 = v3;
  if (v3)
  {
    v4 = [MEMORY[0x1E695AC40] connectionWithRequest:v3 delegate:self];
    startupLandscapeImageConnection = self->_startupLandscapeImageConnection;
    self->_startupLandscapeImageConnection = v4;
  }

  else
  {
    startupLandscapeImageConnection = objc_loadWeakRetained(&self->delegate);
    if (objc_opt_respondsToSelector())
    {
      [startupLandscapeImageConnection webClip:self startupLandscapeImageRequestDidFinishWithImage:0];
    }
  }
}

+ (id)pathForWebClipWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  webClipsDirectoryPath = [self webClipsDirectoryPath];
  v6 = [webClipsDirectoryPath stringByAppendingPathComponent:identifierCopy];

  v7 = [v6 stringByAppendingPathExtension:@"webclip"];

  return v7;
}

+ (id)pathForWebClipStorageWithIdentifier:(id)identifier
{
  v3 = [self pathForWebClipWithIdentifier:identifier];
  v4 = [v3 stringByAppendingPathComponent:@"Storage"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager _web_createDirectoryAtPathWithIntermediateDirectories:v4 attributes:0];

  return v4;
}

+ (id)pathForWebClipCacheWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v5 = [v4 objectAtIndex:0];
  v6 = [v5 stringByAppendingPathComponent:@"Caches/WebClips"];

  v7 = [v6 stringByAppendingPathComponent:identifierCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager _web_createDirectoryAtPathWithIntermediateDirectories:v7 attributes:0];

  return v7;
}

+ (id)urlForWebClipWithIdentifier:(id)identifier
{
  v3 = [self pathForWebClipWithIdentifier:identifier];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)_determineEligibility
{
  _os_feature_enabled_impl();
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    NSLog(&cfstr_ErrorWhenDeter.isa, domain_answer);
  }

  else
  {
    NSLog(&cfstr_UnableToDeterm.isa);
  }

  return 0;
}

- (void)_updateWebClipWithEligibility:(unint64_t)eligibility
{
  if (eligibility == 2)
  {
    if (self->_eligibilityStatus - 1 <= 1)
    {
      self->_eligibilityStatus = 0;

      [(UIWebClip *)self updateOnDisk];
    }
  }

  else if (eligibility == 4 && !self->_eligibilityStatus)
  {
    self->_eligibilityStatus = 1;
    [(UIWebClip *)self updateOnDisk];

    [(UIWebClip *)self _removePlaceholderBundleAndClearBadge];
  }
}

- (void)_removePlaceholderBundleAndClearBadge
{
  if ((_os_feature_enabled_impl() & 1) == 0 && [(UIWebClip *)self _hasPlaceholderBundle])
  {
    v3 = [objc_alloc(MEMORY[0x1E69DEBB0]) initWithBundleIdentifier:self->placeholderBundleIdentifier];
    [v3 setBadgeValue:0];
    [(UIWebClip *)self _removePlaceholderBundleWithCompletion:0];
  }
}

- (id)getStartupImage:(int64_t)image
{
  if ((image - 1) > 1)
  {
    [(UIWebClip *)self startupLandscapeImage];
  }

  else
  {
    [(UIWebClip *)self startupImage];
  }
  v3 = ;

  return v3;
}

- (void)coordinatorDidCompleteSuccessfully:(id)successfully forApplicationRecord:(id)record
{
  bundleIdentifier = [record bundleIdentifier];
  NSLog(&cfstr_WebClipPlaceho.isa, bundleIdentifier);
}

- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client
{
  v5 = [reason description];
  NSLog(&cfstr_WebClipPlaceho_0.isa, v5);
}

- (WebClipDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end