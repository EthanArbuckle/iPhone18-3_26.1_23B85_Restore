@interface REUIDonatedElementProperties
+ (void)createWithDonatedAction:(id)action completion:(id)completion;
- (BOOL)_isMusicDonation;
- (BOOL)_isPodcastsDonation;
- (BOOL)isBeginWorkoutDonation;
- (BOOL)isEndWorkoutDonation;
- (BOOL)isMediaDonation;
- (BOOL)isRunWorkflowDonation;
- (BOOL)isWorkoutDonation;
- (BOOL)requiresRemoteExecution;
- (BOOL)supportsBackgroundExecution;
- (BOOL)supportsLocalIntentExecution;
- (NSString)bodyImageCompositingFilter;
- (REUIDonatedElementProperties)initWithCoder:(id)coder;
- (UIImage)bodyImage;
- (id)_placeholderImageNameForBundleID:(id)d;
- (id)_scaleImageForDisplay:(id)display;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_loadAppContentPropertiesWithCompletion:(id)completion;
- (void)_loadContentForIntent:(id)intent completion:(id)completion;
- (void)_loadContentForRelevantShortcut:(id)shortcut completion:(id)completion;
- (void)_loadContentForUserActivity:(id)activity completion:(id)completion;
- (void)_loadContentForUserActivityOnShortcut:(id)shortcut completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)loadForAction:(id)action completion:(id)completion;
@end

@implementation REUIDonatedElementProperties

+ (void)createWithDonatedAction:(id)action completion:(id)completion
{
  completionCopy = completion;
  actionCopy = action;
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__REUIDonatedElementProperties_createWithDonatedAction_completion___block_invoke;
  v10[3] = &unk_279AF6248;
  v11 = v7;
  v12 = completionCopy;
  v8 = v7;
  v9 = completionCopy;
  [v8 loadForAction:actionCopy completion:v10];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[REUIDonatedElementProperties allocWithZone:](REUIDonatedElementProperties init];
  bundleIdentifier = [(REUIDonatedElementProperties *)self bundleIdentifier];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = bundleIdentifier;

  remoteBundleIdentifier = [(REUIDonatedElementProperties *)self remoteBundleIdentifier];
  remoteBundleIdentifier = v5->_remoteBundleIdentifier;
  v5->_remoteBundleIdentifier = remoteBundleIdentifier;

  localBundleIdentifier = [(REUIDonatedElementProperties *)self localBundleIdentifier];
  localBundleIdentifier = v5->_localBundleIdentifier;
  v5->_localBundleIdentifier = localBundleIdentifier;

  v5->_donationType = [(REUIDonatedElementProperties *)self donationType];
  v5->_localDonation = [(REUIDonatedElementProperties *)self isLocalDonation];
  v5->_actionIdentifier = [(REUIDonatedElementProperties *)self actionIdentifier];
  v12 = [(NSString *)self->_appName copyWithZone:zone];
  appName = v5->_appName;
  v5->_appName = v12;

  objc_storeStrong(&v5->_appIcon, self->_appIcon);
  objc_storeStrong(&v5->_fullsizeAppIcon, self->_fullsizeAppIcon);
  v14 = [(NSString *)self->_title copyWithZone:zone];
  title = v5->_title;
  v5->_title = v14;

  v16 = [(NSString *)self->_subtitle copyWithZone:zone];
  subtitle = v5->_subtitle;
  v5->_subtitle = v16;

  objc_storeStrong(&v5->_bodyImage, self->_bodyImage);
  objc_storeStrong(&v5->_userActivity, self->_userActivity);
  v18 = [(INIntent *)self->_intent copyWithZone:zone];
  intent = v5->_intent;
  v5->_intent = v18;

  v20 = [(INRelevantShortcut *)self->_relevantShortcut copyWithZone:zone];
  relevantShortcut = v5->_relevantShortcut;
  v5->_relevantShortcut = v20;

  v5->_displayAppName = self->_displayAppName;
  return v5;
}

- (REUIDonatedElementProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v40.receiver = self;
  v40.super_class = REUIDonatedElementProperties;
  v5 = [(REUIDonatedElementProperties *)&v40 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_bundleIdentifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_remoteBundleIdentifier);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    remoteBundleIdentifier = v5->_remoteBundleIdentifier;
    v5->_remoteBundleIdentifier = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_localBundleIdentifier);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    localBundleIdentifier = v5->_localBundleIdentifier;
    v5->_localBundleIdentifier = v16;

    v18 = NSStringFromSelector(sel_donationType);
    v5->_donationType = [coderCopy decodeIntegerForKey:v18];

    v19 = NSStringFromSelector(sel_isLocalDonation);
    v5->_localDonation = [coderCopy decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_actionIdentifier);
    v5->_actionIdentifier = [coderCopy decodeInt64ForKey:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
    appName = v5->_appName;
    v5->_appName = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appIcon"];
    appIcon = v5->_appIcon;
    v5->_appIcon = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullsizeAppIcon"];
    fullsizeAppIcon = v5->_fullsizeAppIcon;
    v5->_fullsizeAppIcon = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bodyImage"];
    bodyImage = v5->_bodyImage;
    v5->_bodyImage = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userActivity"];
    userActivity = v5->_userActivity;
    v5->_userActivity = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
    intent = v5->_intent;
    v5->_intent = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relevantShortcut"];
    relevantShortcut = v5->_relevantShortcut;
    v5->_relevantShortcut = v37;

    v5->_displayAppName = [coderCopy decodeBoolForKey:@"displayAppName"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(REUIDonatedElementProperties *)self bundleIdentifier];
  v5 = NSStringFromSelector(sel_bundleIdentifier);
  [coderCopy encodeObject:bundleIdentifier forKey:v5];

  remoteBundleIdentifier = [(REUIDonatedElementProperties *)self remoteBundleIdentifier];
  v7 = NSStringFromSelector(sel_remoteBundleIdentifier);
  [coderCopy encodeObject:remoteBundleIdentifier forKey:v7];

  localBundleIdentifier = [(REUIDonatedElementProperties *)self localBundleIdentifier];
  v9 = NSStringFromSelector(sel_localBundleIdentifier);
  [coderCopy encodeObject:localBundleIdentifier forKey:v9];

  donationType = [(REUIDonatedElementProperties *)self donationType];
  v11 = NSStringFromSelector(sel_donationType);
  [coderCopy encodeInteger:donationType forKey:v11];

  isLocalDonation = [(REUIDonatedElementProperties *)self isLocalDonation];
  v13 = NSStringFromSelector(sel_isLocalDonation);
  [coderCopy encodeBool:isLocalDonation forKey:v13];

  actionIdentifier = [(REUIDonatedElementProperties *)self actionIdentifier];
  v15 = NSStringFromSelector(sel_actionIdentifier);
  [coderCopy encodeInt64:actionIdentifier forKey:v15];

  appName = [(REUIDonatedElementProperties *)self appName];
  [coderCopy encodeObject:appName forKey:@"appName"];

  appIcon = [(REUIDonatedElementProperties *)self appIcon];
  [coderCopy encodeObject:appIcon forKey:@"appIcon"];

  fullsizeAppIcon = [(REUIDonatedElementProperties *)self fullsizeAppIcon];
  [coderCopy encodeObject:fullsizeAppIcon forKey:@"fullsizeAppIcon"];

  title = [(REUIDonatedElementProperties *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(REUIDonatedElementProperties *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  bodyImage = [(REUIDonatedElementProperties *)self bodyImage];
  [coderCopy encodeObject:bodyImage forKey:@"bodyImage"];

  userActivity = [(REUIDonatedElementProperties *)self userActivity];
  [coderCopy encodeObject:userActivity forKey:@"userActivity"];

  intent = [(REUIDonatedElementProperties *)self intent];
  [coderCopy encodeObject:intent forKey:@"intent"];

  relevantShortcut = [(REUIDonatedElementProperties *)self relevantShortcut];
  [coderCopy encodeObject:relevantShortcut forKey:@"relevantShortcut"];

  [coderCopy encodeBool:-[REUIDonatedElementProperties displayAppName](self forKey:{"displayAppName"), @"displayAppName"}];
}

- (void)loadForAction:(id)action completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
  }

  else
  {
    v8 = &__block_literal_global_73;
  }

  bundleIdentifier = [actionCopy bundleIdentifier];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = bundleIdentifier;

  remoteBundleIdentifier = [actionCopy remoteBundleIdentifier];
  remoteBundleIdentifier = self->_remoteBundleIdentifier;
  self->_remoteBundleIdentifier = remoteBundleIdentifier;

  localBundleIdentifier = [actionCopy localBundleIdentifier];
  localBundleIdentifier = self->_localBundleIdentifier;
  self->_localBundleIdentifier = localBundleIdentifier;

  self->_donationType = [actionCopy type];
  self->_localDonation = [actionCopy isLocalDonation];
  actionTypeIdentifier = [actionCopy actionTypeIdentifier];
  self->_actionIdentifier = [actionTypeIdentifier re_actionIdentifierHashValue];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__REUIDonatedElementProperties_loadForAction_completion___block_invoke_2;
  v26[3] = &unk_279AF6270;
  v26[4] = self;
  v16 = v8;
  v27 = v16;
  v17 = MEMORY[0x2667182D0](v26);
  type = [actionCopy type];
  if (type > 1)
  {
    if (type == 2)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __57__REUIDonatedElementProperties_loadForAction_completion___block_invoke_5;
      v20[3] = &unk_279AF62E8;
      v20[4] = self;
      v21 = v17;
      [actionCopy loadRelevantShortcut:v20];
      v19 = v21;
      goto LABEL_13;
    }

    if (type == 3)
    {
      v16[2](v16);
    }
  }

  else
  {
    if (!type)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __57__REUIDonatedElementProperties_loadForAction_completion___block_invoke_4;
      v22[3] = &unk_279AF62C0;
      v22[4] = self;
      v23 = v17;
      [actionCopy loadUserActivity:v22];
      v19 = v23;
      goto LABEL_13;
    }

    if (type == 1)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __57__REUIDonatedElementProperties_loadForAction_completion___block_invoke_3;
      v24[3] = &unk_279AF6298;
      v24[4] = self;
      v25 = v17;
      [actionCopy loadIntent:v24];
      v19 = v25;
LABEL_13:
    }
  }
}

void __57__REUIDonatedElementProperties_loadForAction_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (RelevanceEngineLibraryCore())
  {
    v7 = v6;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v8 = getREIntentBySimplifyingParametersForIntentSymbolLoc_ptr;
    v17 = getREIntentBySimplifyingParametersForIntentSymbolLoc_ptr;
    if (!getREIntentBySimplifyingParametersForIntentSymbolLoc_ptr)
    {
      v9 = RelevanceEngineLibrary();
      v15[3] = dlsym(v9, "REIntentBySimplifyingParametersForIntent");
      getREIntentBySimplifyingParametersForIntentSymbolLoc_ptr = v15[3];
      v8 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (!v8)
    {
      v13 = softRESampleRelevanceProviderForPosition_cold_1();
      _Block_object_dispose(&v14, 8);
      _Unwind_Resume(v13);
    }

    v10 = v8(v7);
  }

  else
  {
    v10 = 0;
  }

  [*(a1 + 32) _loadContentForIntent:v10 completion:*(a1 + 40)];
  v11 = *(a1 + 32);
  v12 = *(v11 + 112);
  *(v11 + 112) = v5;
}

void __57__REUIDonatedElementProperties_loadForAction_completion___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) _loadContentForUserActivity:a3 completion:*(a1 + 40)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = v5;
}

void __57__REUIDonatedElementProperties_loadForAction_completion___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) _loadContentForRelevantShortcut:a3 completion:*(a1 + 40)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = v5;
}

- (BOOL)isMediaDonation
{
  intent = [(REUIDonatedElementProperties *)self intent];
  if (intent)
  {
    intent2 = [(REUIDonatedElementProperties *)self intent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)isWorkoutDonation
{
  bundleIdentifier = [(REUIDonatedElementProperties *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.SessionTrackerApp"];

  return v3;
}

- (BOOL)isBeginWorkoutDonation
{
  if ([(REUIDonatedElementProperties *)self isWorkoutDonation])
  {
    isKindOfClass = 1;
  }

  else
  {
    intent = [(REUIDonatedElementProperties *)self intent];
    if (intent)
    {
      intent2 = [(REUIDonatedElementProperties *)self intent];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isKindOfClass = 1;
      }

      else
      {
        intent3 = [(REUIDonatedElementProperties *)self intent];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)isEndWorkoutDonation
{
  intent = [(REUIDonatedElementProperties *)self intent];
  if (intent)
  {
    intent2 = [(REUIDonatedElementProperties *)self intent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      intent3 = [(REUIDonatedElementProperties *)self intent];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isKindOfClass = 1;
      }

      else
      {
        intent4 = [(REUIDonatedElementProperties *)self intent];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)isRunWorkflowDonation
{
  intent = [(REUIDonatedElementProperties *)self intent];
  if (intent)
  {
    intent2 = [(REUIDonatedElementProperties *)self intent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)_isMusicDonation
{
  isMediaDonation = [(REUIDonatedElementProperties *)self isMediaDonation];
  if (isMediaDonation)
  {
    bundleIdentifier = [(REUIDonatedElementProperties *)self bundleIdentifier];
    v5 = [bundleIdentifier isEqualToString:@"com.apple.Music"];

    LOBYTE(isMediaDonation) = v5;
  }

  return isMediaDonation;
}

- (BOOL)_isPodcastsDonation
{
  isMediaDonation = [(REUIDonatedElementProperties *)self isMediaDonation];
  if (isMediaDonation)
  {
    bundleIdentifier = [(REUIDonatedElementProperties *)self bundleIdentifier];
    v5 = [bundleIdentifier isEqualToString:@"com.apple.podcasts"];

    LOBYTE(isMediaDonation) = v5;
  }

  return isMediaDonation;
}

- (BOOL)requiresRemoteExecution
{
  isMediaDonation = [(REUIDonatedElementProperties *)self isMediaDonation];
  if (isMediaDonation)
  {
    LOBYTE(isMediaDonation) = ![(REUIDonatedElementProperties *)self isLocalDonation];
  }

  return isMediaDonation;
}

- (BOOL)supportsLocalIntentExecution
{
  if (![(REUIDonatedElementProperties *)self requiresRemoteExecution]&& [(REUIDonatedElementProperties *)self isLocalDonation])
  {
    return 1;
  }

  return [(REUIDonatedElementProperties *)self _hasLocalExtensionForIntentExecution];
}

- (BOOL)supportsBackgroundExecution
{
  if (!self->_intent)
  {
    return 0;
  }

  if ([(REUIDonatedElementProperties *)self isMediaDonation]&& [(REUIDonatedElementProperties *)self isLocalDonation])
  {

    return [(REUIDonatedElementProperties *)self _hasLocalExtensionForIntentExecution];
  }

  else
  {
    intent = self->_intent;

    return [(INIntent *)intent _supportsBackgroundExecution];
  }
}

- (id)_placeholderImageNameForBundleID:(id)d
{
  v3 = _placeholderImageNameForBundleID__onceToken;
  dCopy = d;
  if (v3 != -1)
  {
    [REUIDonatedElementProperties _placeholderImageNameForBundleID:];
  }

  v5 = [_placeholderImageNameForBundleID__bundleIDToImageName objectForKeyedSubscript:dCopy];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"Med Music";
  }

  v7 = v6;

  return v6;
}

void __65__REUIDonatedElementProperties__placeholderImageNameForBundleID___block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"com.apple.Music";
  v3[1] = @"com.apple.podcasts";
  v4[0] = @"Med Music";
  v4[1] = @"Med Podcasts";
  v3[2] = @"com.apple.NanoRadio";
  v4[2] = @"Med Radio";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = _placeholderImageNameForBundleID__bundleIDToImageName;
  _placeholderImageNameForBundleID__bundleIDToImageName = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (UIImage)bodyImage
{
  if (!self->_bodyImage && [(REUIDonatedElementProperties *)self isMediaDonation])
  {
    bundleIdentifier = [(REUIDonatedElementProperties *)self bundleIdentifier];
    intent = [(REUIDonatedElementProperties *)self intent];
    mediaContainer = [intent mediaContainer];
    type = [mediaContainer type];

    if (type == 9)
    {

      bundleIdentifier = @"com.apple.NanoRadio";
    }

    v7 = [(REUIDonatedElementProperties *)self _placeholderImageNameForBundleID:bundleIdentifier];
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.RelevanceEngineSiriActions"];
    v9 = REImageNamedFromBundle(v8, v7);
    bodyImage = self->_bodyImage;
    self->_bodyImage = v9;

    self->_isUsingPlaceholderArtwork = 1;
  }

  v11 = self->_bodyImage;

  return v11;
}

- (NSString)bodyImageCompositingFilter
{
  if ([(REUIDonatedElementProperties *)self isMediaDonation]&& (v3 = [(REUIDonatedElementProperties *)self bodyImage], self->_isUsingPlaceholderArtwork))
  {
    v4 = *MEMORY[0x277CDA5E8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_loadContentForIntent:(id)intent completion:(id)completion
{
  objc_storeStrong(&self->_intent, intent);
  intentCopy = intent;
  completionCopy = completion;
  _title = [intentCopy _title];
  title = self->_title;
  self->_title = _title;

  _subtitle = [intentCopy _subtitle];
  subtitle = self->_subtitle;
  self->_subtitle = _subtitle;

  v12 = MEMORY[0x277D755B8];
  keyImage = [intentCopy keyImage];
  _imageData = [keyImage _imageData];
  v15 = [v12 imageWithData:_imageData];
  bodyImage = self->_bodyImage;
  self->_bodyImage = v15;

  completionCopy[2]();
}

- (void)_loadContentForUserActivity:(id)activity completion:(id)completion
{
  objc_storeStrong(&self->_userActivity, activity);
  activityCopy = activity;
  completionCopy = completion;
  title = [activityCopy title];
  title = self->_title;
  self->_title = title;

  v10 = MEMORY[0x277D755B8];
  contentAttributeSet = [activityCopy contentAttributeSet];
  thumbnailData = [contentAttributeSet thumbnailData];
  v13 = [v10 imageWithData:thumbnailData];
  bodyImage = self->_bodyImage;
  self->_bodyImage = v13;

  completionCopy[2]();
}

- (void)_loadContentForUserActivityOnShortcut:(id)shortcut completion:(id)completion
{
  completionCopy = completion;
  shortcutCopy = shortcut;
  activitySubtitle = [shortcutCopy activitySubtitle];
  subtitle = self->_subtitle;
  self->_subtitle = activitySubtitle;

  userActivity = [shortcutCopy userActivity];

  [(REUIDonatedElementProperties *)self _loadContentForUserActivity:userActivity completion:completionCopy];
}

- (void)_loadContentForRelevantShortcut:(id)shortcut completion:(id)completion
{
  shortcutCopy = shortcut;
  completionCopy = completion;
  objc_storeStrong(&self->_relevantShortcut, shortcut);
  shortcut = [shortcutCopy shortcut];
  intent = [shortcut intent];
  intent = self->_intent;
  self->_intent = intent;

  shortcut2 = [shortcutCopy shortcut];
  userActivity = [shortcut2 userActivity];
  userActivity = self->_userActivity;
  self->_userActivity = userActivity;

  watchTemplate = [shortcutCopy watchTemplate];

  if (watchTemplate)
  {
    watchTemplate2 = [shortcutCopy watchTemplate];
    title = [watchTemplate2 title];
    title = self->_title;
    self->_title = title;

    watchTemplate3 = [shortcutCopy watchTemplate];
    subtitle = [watchTemplate3 subtitle];
    subtitle = self->_subtitle;
    self->_subtitle = subtitle;

    v22 = MEMORY[0x277D755B8];
    watchTemplate4 = [shortcutCopy watchTemplate];
    image = [watchTemplate4 image];
    _imageData = [image _imageData];
    v26 = [v22 imageWithData:_imageData];
    bodyImage = self->_bodyImage;
    self->_bodyImage = v26;

    watchTemplate5 = [shortcutCopy watchTemplate];
    LOBYTE(watchTemplate4) = objc_opt_respondsToSelector();

    if (watchTemplate4)
    {
      watchTemplate6 = [shortcutCopy watchTemplate];
      monochromeImage = [watchTemplate6 monochromeImage];

      if (monochromeImage)
      {
        v31 = MEMORY[0x277D755B8];
        _imageData2 = [monochromeImage _imageData];
        v33 = [v31 imageWithData:_imageData2];
        monochromeBodyImage = self->_monochromeBodyImage;
        self->_monochromeBodyImage = v33;
      }
    }
  }

  else
  {
    v35 = self->_intent;
    if (v35)
    {
      [(REUIDonatedElementProperties *)self _loadContentForIntent:v35 completion:completionCopy];
      goto LABEL_11;
    }

    if (self->_userActivity)
    {
      shortcut3 = [shortcutCopy shortcut];
      [(REUIDonatedElementProperties *)self _loadContentForUserActivityOnShortcut:shortcut3 completion:completionCopy];

      goto LABEL_11;
    }

    v37 = RELogForDomain();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [REUIDonatedElementProperties _loadContentForRelevantShortcut:v37 completion:?];
    }
  }

  completionCopy[2](completionCopy);
LABEL_11:
}

- (id)_scaleImageForDisplay:(id)display
{
  displayCopy = display;
  v4 = RESuggestedBodyImageSizeForStyle();
  v6 = v5;
  v7 = 0;
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  if (*MEMORY[0x277CBF3A8] != v4 || v8 != v6)
  {
    preferredFormat = [MEMORY[0x277D75568] preferredFormat];
    [preferredFormat setOpaque:0];
    v11 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:preferredFormat format:{v4, v6}];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__REUIDonatedElementProperties__scaleImageForDisplay___block_invoke;
    v13[3] = &unk_279AF6310;
    v14 = displayCopy;
    v15 = v4;
    v16 = v6;
    v7 = [v11 imageWithActions:v13];
  }

  return v7;
}

void __54__REUIDonatedElementProperties__scaleImageForDisplay___block_invoke(uint64_t a1, void *a2)
{
  v28 = a2;
  [*(a1 + 32) size];
  v4 = v3;
  RESupergreenSuggestedImageDonationWidth();
  if (v4 >= v5 || ([*(a1 + 32) size], v7 = v6, RESupergreenSuggestedImageDonationWidth(), v7 >= v8))
  {
    v10 = [v28 CGContext];
    CGContextSetInterpolationQuality(v10, kCGInterpolationHigh);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277CBBAE8] currentDevice];
    __ClippingRadiusForDevice_block_invoke(v13, v13);
    v14 = *&ClippingRadiusForDevice__clippingRadius;

    v15 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v11, v12, v14}];
    v16 = [v15 CGPath];

    CGContextAddPath(v10, v16);
    CGContextClip(v10);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v17 = [MEMORY[0x277D759A0] mainScreen];
  [v17 scale];
  v19 = v18;

  [*(a1 + 32) size];
  v21 = v20 / v19;
  v22 = *(a1 + 40);
  v24 = v23 / v19;
  if (v9)
  {
    v25 = v22 / v21;
    v26 = *(a1 + 48);
    if (v22 / v21 < v26 / v24)
    {
      v25 = v26 / v24;
    }
  }

  else
  {
    RESupergreenSuggestedImageDonationWidth();
    v25 = v22 / (v27 * 0.5);
    v22 = *(a1 + 40);
    v26 = *(a1 + 48);
  }

  [*(a1 + 32) drawInRect:{(v22 - v21 * v25) * 0.5, (v26 - v24 * v25) * 0.5}];
}

- (void)_loadAppContentPropertiesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_bodyImage)
  {
    v5 = [(REUIDonatedElementProperties *)self _scaleImageForDisplay:?];
    bodyImage = self->_bodyImage;
    self->_bodyImage = v5;
  }

  if ([(REUIDonatedElementProperties *)self _isMusicDonation]|| [(REUIDonatedElementProperties *)self _isPodcastsDonation])
  {
    v7 = self->_intent;
    title = self->_title;
    self->_title = 0;

    mediaContainer = [(INIntent *)v7 mediaContainer];
    title = [mediaContainer title];
    subtitle = self->_subtitle;
    self->_subtitle = title;

    mediaItems = [(INIntent *)v7 mediaItems];
    v13 = [mediaItems count];

    if (!v13)
    {
      goto LABEL_9;
    }

    mediaItems2 = [(INIntent *)v7 mediaItems];
    firstObject = [mediaItems2 firstObject];
    title2 = [firstObject title];
    v17 = self->_title;
    self->_title = title2;
  }

  else
  {
    v18 = self->_title;
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [(NSString *)v18 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
    v21 = [(INIntent *)v7 componentsSeparatedByCharactersInSet:newlineCharacterSet];
    v22 = [v21 componentsJoinedByString:@" "];
    v23 = self->_title;
    self->_title = v22;

    v24 = self->_subtitle;
    whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    mediaItems2 = [(NSString *)v24 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

    firstObject = [MEMORY[0x277CCA900] newlineCharacterSet];
    v17 = [mediaItems2 componentsSeparatedByCharactersInSet:firstObject];
    v26 = [v17 componentsJoinedByString:@" "];
    v27 = self->_subtitle;
    self->_subtitle = v26;
  }

LABEL_9:
  if (![(NSString *)self->_title length])
  {
    objc_storeStrong(&self->_title, self->_subtitle);
    v28 = self->_subtitle;
    self->_subtitle = 0;
  }

  isWorkoutDonation = [(REUIDonatedElementProperties *)self isMediaDonation]|| [(REUIDonatedElementProperties *)self isRunWorkflowDonation]|| [(REUIDonatedElementProperties *)self isWorkoutDonation];
  bundleIdentifier = [(REUIDonatedElementProperties *)self bundleIdentifier];
  Type = REApplicationGetType();

  if (Type != 1 || !self->_bodyImage && (![(NSString *)self->_title length]|| ![(NSString *)self->_subtitle length]))
  {
    isWorkoutDonation = 1;
  }

  self->_displayAppName = isWorkoutDonation;
  if ([(REUIDonatedElementProperties *)self supportsLocalIntentExecution])
  {
    v32 = 1;
  }

  else
  {
    userActivity = [(REUIDonatedElementProperties *)self userActivity];
    v32 = userActivity != 0;
  }

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __72__REUIDonatedElementProperties__loadAppContentPropertiesWithCompletion___block_invoke;
  v52[3] = &unk_279AF6360;
  v52[4] = self;
  v54 = v32;
  v34 = completionCopy;
  v53 = v34;
  v35 = MEMORY[0x2667182D0](v52);
  v36 = v35;
  if (v32)
  {
    localBundleIdentifier = [(REUIDonatedElementProperties *)self localBundleIdentifier];
    if (RelevanceEngineLibraryCore())
    {
      v60 = 0;
      v61 = &v60;
      v62 = 0x2050000000;
      v38 = getREAppNameCacheClass_softClass;
      v63 = getREAppNameCacheClass_softClass;
      if (!getREAppNameCacheClass_softClass)
      {
        v55 = MEMORY[0x277D85DD0];
        v56 = 3221225472;
        v57 = __getREAppNameCacheClass_block_invoke;
        v58 = &unk_279AF61E8;
        v59 = &v60;
        __getREAppNameCacheClass_block_invoke(&v55);
        v38 = v61[3];
      }

      v39 = v38;
      _Block_object_dispose(&v60, 8);
      v40 = v38;
    }

    else
    {
      v38 = 0;
    }

    sharedInstance = [v38 sharedInstance];
    v42 = [sharedInstance localizedNameForApplicationWithIdentifier:localBundleIdentifier];

    if ([(REUIDonatedElementProperties *)self isWorkoutDonation]&& (v43 = self->_bodyImage) != 0)
    {
      self->_bodyImage = 0;
      v44 = v43;

      (v36)[2](v36, v42, v44);
    }

    else
    {
      if (RelevanceEngineLibraryCore())
      {
        v60 = 0;
        v61 = &v60;
        v62 = 0x2050000000;
        v45 = getREAppIconCacheClass_softClass;
        v63 = getREAppIconCacheClass_softClass;
        if (!getREAppIconCacheClass_softClass)
        {
          v55 = MEMORY[0x277D85DD0];
          v56 = 3221225472;
          v57 = __getREAppIconCacheClass_block_invoke;
          v58 = &unk_279AF61E8;
          v59 = &v60;
          __getREAppIconCacheClass_block_invoke(&v55);
          v45 = v61[3];
        }

        v46 = v45;
        _Block_object_dispose(&v60, 8);
        v47 = v45;
      }

      else
      {
        v45 = 0;
      }

      sharedInstance2 = [v45 sharedInstance];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __72__REUIDonatedElementProperties__loadAppContentPropertiesWithCompletion___block_invoke_5;
      v49[3] = &unk_279AF6388;
      v51 = v36;
      v50 = v42;
      [sharedInstance2 iconForApplicationWithIdentifier:localBundleIdentifier completion:v49];

      v44 = v51;
    }
  }

  else
  {
    (*(v35 + 16))(v35, 0, 0);
  }
}

void __72__REUIDonatedElementProperties__loadAppContentPropertiesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1 + 32) + 64), a2);
  v8 = [MEMORY[0x277D75568] defaultFormat];
  [v8 setOpaque:0];
  objc_storeStrong((*(a1 + 32) + 80), a3);
  v9 = RESuggestedHeaderImageSizeForStyle();
  v11 = v10;
  if (*(a1 + 48) == 1 && ![*(a1 + 32) isWorkoutDonation])
  {
    v17 = objc_alloc(MEMORY[0x277D1B1A8]);
    v18 = [*(a1 + 32) localBundleIdentifier];
    v16 = [v17 initWithBundleIdentifier:v18];

    v19 = [MEMORY[0x277D759A0] mainScreen];
    [v19 scale];
    v21 = v20;

    v22 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:v9 scale:{v11, v21}];
    [v22 setShape:2];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__REUIDonatedElementProperties__loadAppContentPropertiesWithCompletion___block_invoke_3;
    v23[3] = &unk_279AF6338;
    v23[4] = *(a1 + 32);
    v26 = v21;
    v27 = v9;
    v28 = v11;
    v24 = v8;
    v25 = *(a1 + 40);
    [v16 getCGImageForImageDescriptor:v22 completion:v23];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v8 format:{v9, v11}];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __72__REUIDonatedElementProperties__loadAppContentPropertiesWithCompletion___block_invoke_2;
    v29[3] = &unk_279AF6310;
    v30 = v7;
    v31 = v9;
    v32 = v11;
    v13 = [v12 imageWithActions:v29];
    v14 = *(a1 + 32);
    v15 = *(v14 + 72);
    *(v14 + 72) = v13;

    (*(*(a1 + 40) + 16))();
    v16 = v30;
  }
}

uint64_t __72__REUIDonatedElementProperties__loadAppContentPropertiesWithCompletion___block_invoke_2(double *a1, void *a2)
{
  CGContextSetInterpolationQuality([a2 CGContext], kCGInterpolationHigh);
  v3 = *(a1 + 4);
  v4 = a1[5];
  v5 = a1[6];

  return [v3 drawInRect:{0.0, 0.0, v4, v5}];
}

void __72__REUIDonatedElementProperties__loadAppContentPropertiesWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D755B8] imageWithCGImage:a2 scale:0 orientation:*(a1 + 56)];
  v4 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:*(a1 + 40) format:{*(a1 + 64), *(a1 + 72)}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__REUIDonatedElementProperties__loadAppContentPropertiesWithCompletion___block_invoke_4;
  v9[3] = &unk_279AF6310;
  v10 = v3;
  v11 = *(a1 + 64);
  v5 = v3;
  v6 = [v4 imageWithActions:v9];
  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  *(v7 + 72) = v6;

  (*(*(a1 + 48) + 16))();
}

uint64_t __72__REUIDonatedElementProperties__loadAppContentPropertiesWithCompletion___block_invoke_4(double *a1, void *a2)
{
  CGContextSetInterpolationQuality([a2 CGContext], kCGInterpolationHigh);
  v3 = *(a1 + 4);
  v4 = a1[5];
  v5 = a1[6];

  return [v3 drawInRect:{0.0, 0.0, v4, v5}];
}

void __72__REUIDonatedElementProperties__loadAppContentPropertiesWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = [a2 image];
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

@end