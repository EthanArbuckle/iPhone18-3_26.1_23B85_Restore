@interface WFContextualAction
+ (id)systemActionWithType:(unint64_t)type identifier:(id)identifier displayString:(id)string inputTypes:(id)types;
- (BOOL)isEqual:(id)equal;
- (BOOL)showsUserInterfaceWhenRunning;
- (BOOL)wf_shouldLaunchAppWithSurface:(unint64_t)surface linkAction:(id)action actionMetadata:(id)metadata appBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier;
- (CSSearchableItem)spotlightItem;
- (NSData)iconImageData;
- (NSString)description;
- (NSString)iconSymbolName;
- (NSString)uniquePrivateIdentifier;
- (WFContextualAction)initWithCoder:(id)coder;
- (WFContextualAction)initWithIdentifier:(id)identifier wfActionIdentifier:(id)actionIdentifier associatedAppBundleIdentifier:(id)bundleIdentifier parameters:(id)parameters displayString:(id)string title:(id)title subtitle:(id)subtitle icon:(id)self0;
- (WFContextualAction)initWithIdentifier:(id)identifier wfActionIdentifier:(id)actionIdentifier associatedAppBundleIdentifier:(id)bundleIdentifier parameters:(id)parameters displayString:(id)string title:(id)title subtitle:(id)subtitle icon:(id)self0 accessoryIcon:(id)self1 actionShowsUserInterface:(BOOL)self2 actionHasResult:(BOOL)self3 isReversible:(BOOL)self4;
- (WFContextualAction)initWithIdentifier:(id)identifier wfActionIdentifier:(id)actionIdentifier type:(unint64_t)type correspondingSystemActionType:(unint64_t)actionType associatedAppBundleIdentifier:(id)bundleIdentifier resultFileOperation:(int64_t)operation alternate:(BOOL)alternate filteringBehavior:(id)self0 parameters:(id)self1 displayString:(id)self2 title:(id)self3 subtitle:(id)self4 icon:(id)self5;
- (WFContextualAction)initWithIdentifier:(id)identifier wfActionIdentifier:(id)actionIdentifier type:(unint64_t)type correspondingSystemActionType:(unint64_t)actionType associatedAppBundleIdentifier:(id)bundleIdentifier resultFileOperation:(int64_t)operation alternate:(BOOL)alternate filteringBehavior:(id)self0 parameters:(id)self1 displayString:(id)self2 title:(id)self3 subtitle:(id)self4 icon:(id)self5 accessoryIcon:(id)self6 actionShowsUserInterface:(BOOL)self7 isReversible:(BOOL)self8;
- (double)iconImageScale;
- (id)contextForSurface:(unint64_t)surface;
- (id)copyWithParameters:(id)parameters;
- (id)runDescriptorForSurface:(unint64_t)surface;
- (id)runRequestForSurface:(unint64_t)surface;
- (unint64_t)hash;
- (void)configureIfNeededForContext:(id)context completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)wf_launchAppIfNeededUsingSurface:(unint64_t)surface linkAction:(id)action appBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier;
@end

@implementation WFContextualAction

- (CSSearchableItem)spotlightItem
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E6964E90]);
  v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.shortcuts.contextual-action"];
  v5 = [v3 initWithContentType:v4];

  displayString = [(WFContextualAction *)self displayString];
  [v5 setDisplayName:displayString];

  icon = [(WFContextualAction *)self icon];
  imageURL = [icon imageURL];

  icon2 = [(WFContextualAction *)self icon];
  systemName = [icon2 systemName];

  icon3 = [(WFContextualAction *)self icon];
  applicationBundleIdentifier = [icon3 applicationBundleIdentifier];

  if (imageURL)
  {
    icon4 = [(WFContextualAction *)self icon];
    imageURL2 = [icon4 imageURL];
    [v5 setThumbnailURL:imageURL2];

LABEL_3:
    goto LABEL_8;
  }

  if (systemName)
  {
    [v5 setThumbnailSymbolName:systemName];
  }

  else
  {
    if (!applicationBundleIdentifier)
    {
      icon4 = [(WFContextualAction *)self iconImageData];
      [v5 setThumbnailData:icon4];
      goto LABEL_3;
    }

    [v5 setThumbnailBundleID:applicationBundleIdentifier];
  }

LABEL_8:
  creationDate = [(WFContextualAction *)self creationDate];
  [v5 setContentCreationDate:creationDate];

  modificationDate = [(WFContextualAction *)self modificationDate];
  [v5 setContentModificationDate:modificationDate];

  spotlightActionIdentifier = [(WFContextualAction *)self spotlightActionIdentifier];
  v18 = WFSpotlightResultRunnableActionIdentifier();
  [v5 setValue:spotlightActionIdentifier forCustomKey:v18];

  associatedAppBundleIdentifier = [(WFContextualAction *)self associatedAppBundleIdentifier];
  if (associatedAppBundleIdentifier)
  {
    [v5 wf_associateWithBundleIdentifier:associatedAppBundleIdentifier];
  }

  actionForRunningFromSpotlight = [(WFContextualAction *)self actionForRunningFromSpotlight];
  v47 = 0;
  v21 = WFDataFromSpotlightResultRunnable(actionForRunningFromSpotlight, &v47);
  v22 = v47;

  if (v21)
  {
    if ([v21 length] >> 6 >= 0x7D)
    {
      v23 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v49 = "[WFContextualAction(Spotlight) spotlightItem]";
        _os_log_impl(&dword_1B1DE3000, v23, OS_LOG_TYPE_FAULT, "%s Packing large objects into CoreSpotlight index", buf, 0xCu);
      }
    }

    v24 = WFSpotlightResultRunnableAttributeKey();
    [v5 setValue:v21 forCustomKey:v24];

    if ([(WFContextualAction *)self definesDisplayOrder])
    {
      displayOrder = [(WFContextualAction *)self displayOrder];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:displayOrder];
      v27 = WFSpotlightResultRunnableDisplayOrderKey();
      [v5 setValue:v26 forCustomKey:v27];
    }

    v43 = v21;
    accessoryIcon = [(WFContextualAction *)self accessoryIcon];
    systemName2 = [accessoryIcon systemName];

    if ([systemName2 length])
    {
      v30 = WFSpotlightResultRunnableAccessorySystemImageNameKey();
      [v5 setValue:systemName2 forCustomKey:v30];
    }

    v46 = systemName;
    associatedSettingsPreference = [(WFContextualAction *)self associatedSettingsPreference];
    if ([associatedSettingsPreference length])
    {
      v32 = WFSpotlightResultRunnableAssociatedSettingsPreferenceKey();
      [v5 setValue:associatedSettingsPreference forCustomKey:v32];
    }

    v44 = v22;
    v45 = associatedAppBundleIdentifier;
    settingBiomeStreamIdentifier = [(WFContextualAction *)self settingBiomeStreamIdentifier];
    if ([settingBiomeStreamIdentifier length])
    {
      v34 = WFSpotlightResultRunnableSettingBiomeStreamIdentifier();
      [v5 setValue:settingBiomeStreamIdentifier forCustomKey:v34];
    }

    v35 = applicationBundleIdentifier;
    v36 = imageURL;
    if ([(WFContextualAction *)self availableFromLockedContext])
    {
      [v5 setProtectionClass:*MEMORY[0x1E696A3A8]];
    }

    v37 = objc_alloc(MEMORY[0x1E6964E80]);
    uniquePrivateIdentifier = [(WFContextualAction *)self uniquePrivateIdentifier];
    v39 = [objc_opt_class() spotlightDomainIdentifierForBundleIdentifier:0];
    v40 = [v37 initWithUniqueIdentifier:uniquePrivateIdentifier domainIdentifier:v39 attributeSet:v5];

    imageURL = v36;
    associatedAppBundleIdentifier = v45;
    systemName = v46;
    applicationBundleIdentifier = v35;
    v21 = v43;
    v22 = v44;
  }

  else
  {
    systemName2 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(systemName2, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v49 = "[WFContextualAction(Spotlight) spotlightItem]";
      v50 = 2112;
      v51 = v22;
      _os_log_impl(&dword_1B1DE3000, systemName2, OS_LOG_TYPE_FAULT, "%s Cannot pack WFContextualAction into a data blob: %@", buf, 0x16u);
    }

    v40 = 0;
  }

  v41 = *MEMORY[0x1E69E9840];

  return v40;
}

- (void)wf_launchAppIfNeededUsingSurface:(unint64_t)surface linkAction:(id)action appBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier
{
  v35 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
  v13 = objc_alloc_init(MEMORY[0x1E69ACF60]);
  v14 = [v13 actionForBundleIdentifier:identifierCopy andActionIdentifier:actionIdentifierCopy error:0];
  if (v14 && [(WFContextualAction *)self wf_shouldLaunchAppWithSurface:surface linkAction:actionCopy actionMetadata:v14 appBundleIdentifier:identifierCopy actionIdentifier:actionIdentifierCopy])
  {
    v15 = [MEMORY[0x1E69ACE68] policyWithActionMetadata:v14];
    effectiveBundleIdentifier = [v15 effectiveBundleIdentifier];
    type = [effectiveBundleIdentifier type];

    if (type)
    {
      v18 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v34 = "[WFContextualAction(Prewarm_Internal) wf_launchAppIfNeededUsingSurface:linkAction:appBundleIdentifier:actionIdentifier:]";
        _os_log_impl(&dword_1B1DE3000, v18, OS_LOG_TYPE_DEFAULT, "%s The effective bundle identifier is not an app, ignoring app launch", buf, 0xCu);
      }

      goto LABEL_12;
    }

    v19 = objc_alloc(MEMORY[0x1E695DF90]);
    v20 = *MEMORY[0x1E699F970];
    v31[0] = *MEMORY[0x1E699F990];
    v31[1] = v20;
    v32[0] = MEMORY[0x1E695E118];
    v32[1] = MEMORY[0x1E695E118];
    v31[2] = *MEMORY[0x1E699F930];
    v32[2] = &unk_1F2931200;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
    v18 = [v19 initWithDictionary:v21];

    v22 = MEMORY[0x1E69D4438];
    if (surface != 5 && surface != 16)
    {
      if (surface != 12)
      {
LABEL_11:
        serviceWithDefaultShellEndpoint = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
        v24 = [MEMORY[0x1E699FB70] optionsWithDictionary:v18];
        [v15 effectiveBundleIdentifier];
        v25 = v28 = v15;
        bundleIdentifier = [v25 bundleIdentifier];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __121__WFContextualAction_Prewarm_Internal__wf_launchAppIfNeededUsingSurface_linkAction_appBundleIdentifier_actionIdentifier___block_invoke;
        v29[3] = &unk_1E7B01630;
        v30 = v13;
        [serviceWithDefaultShellEndpoint openApplication:bundleIdentifier withOptions:v24 completion:v29];

        v15 = v28;
LABEL_12:

        goto LABEL_13;
      }

      v22 = MEMORY[0x1E69D4428];
    }

    [v18 setObject:*v22 forKeyedSubscript:*MEMORY[0x1E699F940]];
    goto LABEL_11;
  }

LABEL_13:

  v27 = *MEMORY[0x1E69E9840];
}

void __121__WFContextualAction_Prewarm_Internal__wf_launchAppIfNeededUsingSurface_linkAction_appBundleIdentifier_actionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = getWFVoiceShortcutClientLogObject();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[WFContextualAction(Prewarm_Internal) wf_launchAppIfNeededUsingSurface:linkAction:appBundleIdentifier:actionIdentifier:]_block_invoke";
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_1B1DE3000, v7, OS_LOG_TYPE_ERROR, "%s Pre-warmed app launch completed with error %{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "pid")}];
    v10 = 136315394;
    v11 = "[WFContextualAction(Prewarm_Internal) wf_launchAppIfNeededUsingSurface:linkAction:appBundleIdentifier:actionIdentifier:]_block_invoke";
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1B1DE3000, v7, OS_LOG_TYPE_DEFAULT, "%s Pre-warmed app launch completed with pid %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)wf_shouldLaunchAppWithSurface:(unint64_t)surface linkAction:(id)action actionMetadata:(id)metadata appBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier
{
  v27 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  metadataCopy = metadata;
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
  if ([identifierCopy isEqualToString:@"com.apple.mobilenotes"] && objc_msgSend(actionIdentifierCopy, "isEqualToString:", @"CreateNoteLinkAction"))
  {
    v15 = (surface & 0xFFFFFFFFFFFFFFFELL) != 12;
  }

  else
  {
    v16 = [metadataCopy wf_shouldPrewarmAppLaunchWithAction:actionCopy];
    v17 = getWFVoiceShortcutClientLogObject();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v21 = 136315650;
        v22 = "[WFContextualAction(Prewarm_Internal) wf_shouldLaunchAppWithSurface:linkAction:actionMetadata:appBundleIdentifier:actionIdentifier:]";
        v23 = 2114;
        v24 = identifierCopy;
        v25 = 2114;
        v26 = actionIdentifierCopy;
        _os_log_impl(&dword_1B1DE3000, v17, OS_LOG_TYPE_DEFAULT, "%s The action %{public}@:%{public}@ requires pre-warmed app launch", &v21, 0x20u);
      }

      v15 = 1;
    }

    else
    {
      if (v18)
      {
        v21 = 136315650;
        v22 = "[WFContextualAction(Prewarm_Internal) wf_shouldLaunchAppWithSurface:linkAction:actionMetadata:appBundleIdentifier:actionIdentifier:]";
        v23 = 2114;
        v24 = identifierCopy;
        v25 = 2114;
        v26 = actionIdentifierCopy;
        _os_log_impl(&dword_1B1DE3000, v17, OS_LOG_TYPE_DEFAULT, "%s The action %{public}@:%{public}@ doesn't require pre-warmed app launch", &v21, 0x20u);
      }

      v15 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_wfActionIdentifier forKey:@"wfActionIdentifier"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_correspondingSystemActionType forKey:@"correspondingSystemActionType"];
  [coderCopy encodeObject:self->_associatedAppBundleIdentifier forKey:@"associatedAppBundleIdentifier"];
  [coderCopy encodeInteger:self->_resultFileOperation forKey:@"resultFileOperation"];
  [coderCopy encodeBool:self->_alternate forKey:@"alternate"];
  [coderCopy encodeObject:self->_filteringBehavior forKey:@"filteringBehavior"];
  [coderCopy encodeObject:self->_parameters forKey:@"parameters"];
  [coderCopy encodeObject:self->_displayString forKey:@"displayString"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_icon forKey:@"icon"];
  [coderCopy encodeObject:self->_accessoryIcon forKey:@"accessoryIcon"];
  [coderCopy encodeBool:self->_actionShowsUserInterface forKey:@"actionShowsUserInterface"];
  [coderCopy encodeBool:self->_reversible forKey:@"reversible"];
}

- (WFContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = WFContextualAction;
  v5 = [(WFContextualAction *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wfActionIdentifier"];
    wfActionIdentifier = v5->_wfActionIdentifier;
    v5->_wfActionIdentifier = v8;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_correspondingSystemActionType = [coderCopy decodeIntegerForKey:@"correspondingSystemActionType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedAppBundleIdentifier"];
    associatedAppBundleIdentifier = v5->_associatedAppBundleIdentifier;
    v5->_associatedAppBundleIdentifier = v10;

    v5->_resultFileOperation = [coderCopy decodeIntegerForKey:@"resultFileOperation"];
    v5->_alternate = [coderCopy decodeBoolForKey:@"alternate"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filteringBehavior"];
    filteringBehavior = v5->_filteringBehavior;
    v5->_filteringBehavior = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"parameters"];
    parameters = v5->_parameters;
    v5->_parameters = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryIcon"];
    accessoryIcon = v5->_accessoryIcon;
    v5->_accessoryIcon = v25;

    v5->_actionShowsUserInterface = [coderCopy decodeBoolForKey:@"actionShowsUserInterface"];
    v5->_reversible = [coderCopy decodeBoolForKey:@"isReversible"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayString"];
    if (!v27)
    {
      _staticDisplayStringForDecoding = [(WFContextualAction *)v5 _staticDisplayStringForDecoding];
      v29 = _staticDisplayStringForDecoding;
      if (!_staticDisplayStringForDecoding)
      {
        v29 = v5->_title;
      }

      v27 = v29;
    }

    objc_storeStrong(&v5->_displayString, v27);
    if (v5->_identifier)
    {
      v30 = v5;
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

  return v30;
}

- (BOOL)showsUserInterfaceWhenRunning
{
  if (self->_actionShowsUserInterface)
  {
    return 1;
  }

  parameters = [(WFContextualAction *)self parameters];
  v4 = [parameters if_firstObjectPassingTest:&__block_literal_global_14496];

  v2 = v4 != 0;
  return v2;
}

- (double)iconImageScale
{
  icon = [(WFContextualAction *)self icon];
  [icon imageScale];
  v4 = v3;

  return v4;
}

- (NSData)iconImageData
{
  icon = [(WFContextualAction *)self icon];
  imageData = [icon imageData];

  return imageData;
}

- (NSString)iconSymbolName
{
  icon = [(WFContextualAction *)self icon];
  systemName = [icon systemName];

  return systemName;
}

- (NSString)uniquePrivateIdentifier
{
  v2 = MEMORY[0x1E696AD98];
  uniqueIdentifier = [(WFContextualAction *)self uniqueIdentifier];
  v4 = [v2 numberWithInteger:{objc_msgSend(uniqueIdentifier, "hash")}];
  stringValue = [v4 stringValue];

  return stringValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_96:

      goto LABEL_97;
    }

    identifier = [(WFContextualAction *)v6 identifier];
    identifier2 = [(WFContextualAction *)self identifier];
    v9 = identifier;
    v10 = identifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_94;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_95:

        goto LABEL_96;
      }
    }

    wfActionIdentifier = [(WFContextualAction *)v6 wfActionIdentifier];
    wfActionIdentifier2 = [(WFContextualAction *)self wfActionIdentifier];
    v14 = wfActionIdentifier;
    v18 = wfActionIdentifier2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_93;
      }

      v21 = [v14 isEqualToString:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_94:

        goto LABEL_95;
      }
    }

    uniqueIdentifier = [(WFContextualAction *)v6 uniqueIdentifier];
    uniqueIdentifier2 = [(WFContextualAction *)self uniqueIdentifier];
    v20 = uniqueIdentifier;
    v24 = uniqueIdentifier2;
    v19 = v24;
    v93 = v20;
    if (v20 == v24)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v25 = v24;
      if (!v20 || !v24)
      {
        goto LABEL_92;
      }

      v12 = [v20 isEqualToString:v24];

      if (!v12)
      {
        goto LABEL_93;
      }
    }

    v92 = v19;
    parameters = [(WFContextualAction *)v6 parameters];
    parameters2 = [(WFContextualAction *)self parameters];
    v20 = parameters;
    v28 = parameters2;
    v29 = v28;
    v91 = v20;
    if (v20 != v28)
    {
      LOBYTE(v12) = 0;
      v30 = v28;
      if (v20)
      {
        v19 = v92;
        if (v28)
        {
          v31 = v28;
          v32 = [v20 isEqualToArray:v28];
          v90 = v31;

          if (!v32)
          {
LABEL_37:
            LOBYTE(v12) = 0;
            v19 = v92;
            v25 = v90;
LABEL_92:

            v20 = v93;
LABEL_93:

            goto LABEL_94;
          }

LABEL_30:
          type = [(WFContextualAction *)v6 type];
          if (type != [(WFContextualAction *)self type])
          {
            goto LABEL_37;
          }

          resultFileOperation = [(WFContextualAction *)v6 resultFileOperation];
          if (resultFileOperation != [(WFContextualAction *)self resultFileOperation])
          {
            goto LABEL_37;
          }

          filteringBehavior = [(WFContextualAction *)v6 filteringBehavior];
          filteringBehavior2 = [(WFContextualAction *)self filteringBehavior];
          v20 = filteringBehavior;
          v37 = filteringBehavior2;
          v89 = v37;
          if (v20 != v37)
          {
            LOBYTE(v12) = 0;
            v88 = v20;
            if (v20)
            {
              v38 = v37;
              v19 = v92;
              if (v37)
              {
                v39 = [v20 isEqual:v37];

                if (!v39)
                {
                  goto LABEL_41;
                }

LABEL_40:
                isAlternate = [(WFContextualAction *)v6 isAlternate];
                if (isAlternate != [(WFContextualAction *)self isAlternate])
                {
LABEL_41:
                  LOBYTE(v12) = 0;
                  v19 = v92;
                  v30 = v89;
                  v29 = v90;
                  goto LABEL_91;
                }

                icon = [(WFContextualAction *)v6 icon];
                icon2 = [(WFContextualAction *)self icon];
                v43 = icon;
                v44 = icon2;
                v86 = v44;
                v87 = v43;
                v88 = v20;
                if (v43 != v44)
                {
                  LOBYTE(v12) = 0;
                  if (v43)
                  {
                    v45 = v44;
                    v46 = v43;
                    v19 = v92;
                    if (v44)
                    {
                      v47 = [v87 isEqual:v44];

                      if (!v47)
                      {
                        LOBYTE(v12) = 0;
                        v19 = v92;
LABEL_89:
                        v38 = v86;
                        v20 = v87;
                        goto LABEL_90;
                      }

LABEL_49:
                      accessoryIcon = [(WFContextualAction *)v6 accessoryIcon];
                      accessoryIcon2 = [(WFContextualAction *)self accessoryIcon];
                      v50 = accessoryIcon;
                      v51 = accessoryIcon2;
                      v84 = v51;
                      v85 = v50;
                      if (v50 != v51)
                      {
                        LOBYTE(v12) = 0;
                        if (v50)
                        {
                          v52 = v51;
                          v53 = v50;
                          v19 = v92;
                          if (v51)
                          {
                            v82 = [v85 isEqual:v51];

                            if (!v82)
                            {
                              LOBYTE(v12) = 0;
                              v19 = v92;
LABEL_87:
                              v45 = v84;
                              v46 = v85;
                              goto LABEL_88;
                            }

LABEL_55:
                            displayString = [(WFContextualAction *)v6 displayString];
                            displayString2 = [(WFContextualAction *)self displayString];
                            v56 = displayString;
                            v57 = displayString2;
                            v81 = v57;
                            v83 = v56;
                            if (v56 != v57)
                            {
                              LOBYTE(v12) = 0;
                              if (v56)
                              {
                                v58 = v57;
                                v79 = v56;
                                v19 = v92;
                                if (v57)
                                {
                                  v80 = [v83 isEqualToString:v57];

                                  if (!v80)
                                  {
                                    LOBYTE(v12) = 0;
                                    v19 = v92;
LABEL_85:
                                    v52 = v81;
                                    v53 = v83;
                                    goto LABEL_86;
                                  }

LABEL_62:
                                  subtitle = [(WFContextualAction *)v6 subtitle];
                                  subtitle2 = [(WFContextualAction *)self subtitle];
                                  v61 = subtitle;
                                  v62 = subtitle2;
                                  v78 = v62;
                                  v79 = v61;
                                  if (v61 == v62)
                                  {
                                  }

                                  else
                                  {
                                    LOBYTE(v12) = 0;
                                    if (!v61)
                                    {
                                      v63 = v62;
                                      goto LABEL_82;
                                    }

                                    v63 = v62;
                                    if (!v62)
                                    {
LABEL_82:

                                      goto LABEL_83;
                                    }

                                    v76 = [v61 isEqualToString:v62];

                                    if (!v76)
                                    {
                                      LOBYTE(v12) = 0;
LABEL_83:
                                      v19 = v92;
                                      v58 = v78;
                                      goto LABEL_84;
                                    }
                                  }

                                  associatedAppBundleIdentifier = [(WFContextualAction *)v6 associatedAppBundleIdentifier];
                                  associatedAppBundleIdentifier2 = [(WFContextualAction *)self associatedAppBundleIdentifier];
                                  v61 = associatedAppBundleIdentifier;
                                  v66 = associatedAppBundleIdentifier2;
                                  v67 = v66;
                                  v77 = v61;
                                  if (v61 == v66)
                                  {
                                    v75 = v66;
                                  }

                                  else
                                  {
                                    if (!v61 || !v66)
                                    {

                                      v63 = v67;
                                      LOBYTE(v12) = 0;
                                      goto LABEL_82;
                                    }

                                    v68 = [v61 isEqualToString:v66];
                                    v75 = v67;

                                    if (!v68)
                                    {
                                      goto LABEL_78;
                                    }
                                  }

                                  correspondingSystemActionType = [(WFContextualAction *)v6 correspondingSystemActionType];
                                  if (correspondingSystemActionType == [(WFContextualAction *)self correspondingSystemActionType])
                                  {
                                    isReversible = [(WFContextualAction *)v6 isReversible];
                                    v12 = isReversible ^ [(WFContextualAction *)self isReversible]^ 1;
LABEL_79:
                                    v63 = v75;
                                    v61 = v77;
                                    goto LABEL_82;
                                  }

LABEL_78:
                                  LOBYTE(v12) = 0;
                                  goto LABEL_79;
                                }
                              }

                              else
                              {
                                v58 = v57;
                                v79 = 0;
                                v19 = v92;
                              }

LABEL_84:

                              goto LABEL_85;
                            }

                            goto LABEL_62;
                          }
                        }

                        else
                        {
                          v52 = v51;
                          v53 = 0;
                          v19 = v92;
                        }

LABEL_86:
                        v71 = v53;

                        goto LABEL_87;
                      }

                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    v45 = v44;
                    v46 = 0;
                    v19 = v92;
                  }

LABEL_88:

                  goto LABEL_89;
                }

                goto LABEL_49;
              }
            }

            else
            {
              v38 = v37;
              v19 = v92;
            }

LABEL_90:

            v30 = v89;
            v29 = v90;
            v20 = v88;
            goto LABEL_91;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v19 = v92;
      }

LABEL_91:
      v72 = v20;
      v73 = v29;

      v25 = v73;
      v20 = v91;
      goto LABEL_92;
    }

    v90 = v28;

    goto LABEL_30;
  }

  LOBYTE(v12) = 1;
LABEL_97:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  identifier = [(WFContextualAction *)self identifier];
  v5 = [v3 combineContentsOfPropertyListObject:identifier];

  wfActionIdentifier = [(WFContextualAction *)self wfActionIdentifier];

  if (wfActionIdentifier)
  {
    wfActionIdentifier2 = [(WFContextualAction *)self wfActionIdentifier];
    v8 = [v3 combineContentsOfPropertyListObject:wfActionIdentifier2];
  }

  uniqueIdentifier = [(WFContextualAction *)self uniqueIdentifier];
  v10 = [v3 combineContentsOfPropertyListObject:uniqueIdentifier];

  parameters = [(WFContextualAction *)self parameters];

  if (parameters)
  {
    parameters2 = [(WFContextualAction *)self parameters];
    v13 = [v3 combine:parameters2];
  }

  v14 = [v3 combineInteger:{-[WFContextualAction type](self, "type")}];
  icon = [(WFContextualAction *)self icon];

  if (icon)
  {
    icon2 = [(WFContextualAction *)self icon];
    v17 = [v3 combine:icon2];
  }

  accessoryIcon = [(WFContextualAction *)self accessoryIcon];

  if (accessoryIcon)
  {
    accessoryIcon2 = [(WFContextualAction *)self accessoryIcon];
    v20 = [v3 combine:accessoryIcon2];
  }

  displayString = [(WFContextualAction *)self displayString];

  if (displayString)
  {
    displayString2 = [(WFContextualAction *)self displayString];
    v23 = [v3 combineContentsOfPropertyListObject:displayString2];
  }

  subtitle = [(WFContextualAction *)self subtitle];

  if (subtitle)
  {
    subtitle2 = [(WFContextualAction *)self subtitle];
    v26 = [v3 combineContentsOfPropertyListObject:subtitle2];
  }

  associatedAppBundleIdentifier = [(WFContextualAction *)self associatedAppBundleIdentifier];

  if (associatedAppBundleIdentifier)
  {
    associatedAppBundleIdentifier2 = [(WFContextualAction *)self associatedAppBundleIdentifier];
    v29 = [v3 combineContentsOfPropertyListObject:associatedAppBundleIdentifier2];
  }

  v30 = [v3 combineInteger:{-[WFContextualAction correspondingSystemActionType](self, "correspondingSystemActionType")}];
  v31 = [v3 combineInteger:{-[WFContextualAction showsUserInterfaceWhenRunning](self, "showsUserInterfaceWhenRunning")}];
  v32 = [v3 combineInteger:{-[WFContextualAction isReversible](self, "isReversible")}];
  v33 = [v3 finalize];

  return v33;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WFContextualAction *)self identifier];
  wfActionIdentifier = [(WFContextualAction *)self wfActionIdentifier];
  displayString = [(WFContextualAction *)self displayString];
  filteringBehavior = [(WFContextualAction *)self filteringBehavior];
  v10 = [v3 stringWithFormat:@"<%@ %p identifier=%@, wfActionIdentifier =%@, display string=%@, filtering behavior=%@>", v5, self, identifier, wfActionIdentifier, displayString, filteringBehavior];

  return v10;
}

- (WFContextualAction)initWithIdentifier:(id)identifier wfActionIdentifier:(id)actionIdentifier type:(unint64_t)type correspondingSystemActionType:(unint64_t)actionType associatedAppBundleIdentifier:(id)bundleIdentifier resultFileOperation:(int64_t)operation alternate:(BOOL)alternate filteringBehavior:(id)self0 parameters:(id)self1 displayString:(id)self2 title:(id)self3 subtitle:(id)self4 icon:(id)self5 accessoryIcon:(id)self6 actionShowsUserInterface:(BOOL)self7 isReversible:(BOOL)self8
{
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  behaviorCopy = behavior;
  v24 = identifierCopy;
  selfCopy = self;
  parametersCopy = parameters;
  stringCopy = string;
  titleCopy = title;
  subtitleCopy = subtitle;
  iconCopy = icon;
  accessoryIconCopy = accessoryIcon;
  if (!v24)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"WFContextualAction.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v54.receiver = selfCopy;
  v54.super_class = WFContextualAction;
  v31 = [(WFContextualAction *)&v54 init];
  if (v31)
  {
    v32 = [v24 copy];
    identifier = v31->_identifier;
    v31->_identifier = v32;

    if (actionIdentifierCopy)
    {
      v34 = actionIdentifierCopy;
    }

    else
    {
      v34 = v24;
    }

    v35 = [v34 copy];
    wfActionIdentifier = v31->_wfActionIdentifier;
    v31->_wfActionIdentifier = v35;

    v31->_type = type;
    v31->_correspondingSystemActionType = actionType;
    v37 = [bundleIdentifierCopy copy];
    associatedAppBundleIdentifier = v31->_associatedAppBundleIdentifier;
    v31->_associatedAppBundleIdentifier = v37;

    v31->_resultFileOperation = operation;
    v31->_alternate = alternate;
    objc_storeStrong(&v31->_filteringBehavior, behavior);
    objc_storeStrong(&v31->_parameters, parameters);
    v39 = [stringCopy copy];
    displayString = v31->_displayString;
    v31->_displayString = v39;

    v41 = [titleCopy copy];
    title = v31->_title;
    v31->_title = v41;

    v43 = [subtitleCopy copy];
    subtitle = v31->_subtitle;
    v31->_subtitle = v43;

    objc_storeStrong(&v31->_icon, icon);
    objc_storeStrong(&v31->_accessoryIcon, accessoryIcon);
    v31->_actionShowsUserInterface = interface;
    v31->_reversible = reversible;
    v45 = v31;
  }

  return v31;
}

- (WFContextualAction)initWithIdentifier:(id)identifier wfActionIdentifier:(id)actionIdentifier type:(unint64_t)type correspondingSystemActionType:(unint64_t)actionType associatedAppBundleIdentifier:(id)bundleIdentifier resultFileOperation:(int64_t)operation alternate:(BOOL)alternate filteringBehavior:(id)self0 parameters:(id)self1 displayString:(id)self2 title:(id)self3 subtitle:(id)self4 icon:(id)self5
{
  LOWORD(v17) = 0;
  LOBYTE(v16) = alternate;
  return [(WFContextualAction *)self initWithIdentifier:identifier wfActionIdentifier:actionIdentifier type:type correspondingSystemActionType:actionType associatedAppBundleIdentifier:bundleIdentifier resultFileOperation:operation alternate:v16 filteringBehavior:behavior parameters:parameters displayString:string title:title subtitle:subtitle icon:icon accessoryIcon:0 actionShowsUserInterface:v17 isReversible:?];
}

- (WFContextualAction)initWithIdentifier:(id)identifier wfActionIdentifier:(id)actionIdentifier associatedAppBundleIdentifier:(id)bundleIdentifier parameters:(id)parameters displayString:(id)string title:(id)title subtitle:(id)subtitle icon:(id)self0 accessoryIcon:(id)self1 actionShowsUserInterface:(BOOL)self2 actionHasResult:(BOOL)self3 isReversible:(BOOL)self4
{
  BYTE1(v16) = reversible;
  LOBYTE(v16) = interface;
  LOBYTE(v15) = 0;
  return [(WFContextualAction *)self initWithIdentifier:identifier wfActionIdentifier:actionIdentifier type:!result correspondingSystemActionType:0 associatedAppBundleIdentifier:bundleIdentifier resultFileOperation:1 alternate:v15 filteringBehavior:0 parameters:parameters displayString:string title:title subtitle:subtitle icon:icon accessoryIcon:accessoryIcon actionShowsUserInterface:v16 isReversible:?];
}

- (WFContextualAction)initWithIdentifier:(id)identifier wfActionIdentifier:(id)actionIdentifier associatedAppBundleIdentifier:(id)bundleIdentifier parameters:(id)parameters displayString:(id)string title:(id)title subtitle:(id)subtitle icon:(id)self0
{
  BYTE2(v11) = 0;
  LOWORD(v11) = 0;
  return [WFContextualAction initWithIdentifier:"initWithIdentifier:wfActionIdentifier:associatedAppBundleIdentifier:parameters:displayString:title:subtitle:icon:accessoryIcon:actionShowsUserInterface:actionHasResult:isReversible:" wfActionIdentifier:identifier associatedAppBundleIdentifier:actionIdentifier parameters:bundleIdentifier displayString:parameters title:string subtitle:title icon:subtitle accessoryIcon:icon actionShowsUserInterface:0 actionHasResult:v11 isReversible:?];
}

- (void)configureIfNeededForContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualAction.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];

    completionCopy = 0;
  }

  (*(completionCopy + 2))(completionCopy, self, 0);
}

- (id)copyWithParameters:(id)parameters
{
  parametersCopy = parameters;
  if (!parametersCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualAction.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];
  }

  v23 = objc_alloc(objc_opt_class());
  identifier = [(WFContextualAction *)self identifier];
  wfActionIdentifier = [(WFContextualAction *)self wfActionIdentifier];
  type = [(WFContextualAction *)self type];
  correspondingSystemActionType = [(WFContextualAction *)self correspondingSystemActionType];
  associatedAppBundleIdentifier = [(WFContextualAction *)self associatedAppBundleIdentifier];
  resultFileOperation = [(WFContextualAction *)self resultFileOperation];
  isAlternate = [(WFContextualAction *)self isAlternate];
  filteringBehavior = [(WFContextualAction *)self filteringBehavior];
  displayString = [(WFContextualAction *)self displayString];
  title = [(WFContextualAction *)self title];
  subtitle = [(WFContextualAction *)self subtitle];
  icon = [(WFContextualAction *)self icon];
  accessoryIcon = [(WFContextualAction *)self accessoryIcon];
  actionShowsUserInterface = [(WFContextualAction *)self actionShowsUserInterface];
  BYTE1(v17) = [(WFContextualAction *)self isReversible];
  LOBYTE(v17) = actionShowsUserInterface;
  LOBYTE(v16) = isAlternate;
  v24 = [v23 initWithIdentifier:identifier wfActionIdentifier:wfActionIdentifier type:type correspondingSystemActionType:correspondingSystemActionType associatedAppBundleIdentifier:associatedAppBundleIdentifier resultFileOperation:resultFileOperation alternate:v16 filteringBehavior:filteringBehavior parameters:parametersCopy displayString:displayString title:title subtitle:subtitle icon:icon accessoryIcon:accessoryIcon actionShowsUserInterface:v17 isReversible:?];

  return v24;
}

- (id)runRequestForSurface:(unint64_t)surface
{
  v5 = [WFContextualActionRunRequest alloc];
  v6 = [(WFContextualAction *)self contextForSurface:surface];
  v7 = [(WFContextualActionRunRequest *)v5 initWithAction:self actionContext:v6];

  return v7;
}

- (id)runDescriptorForSurface:(unint64_t)surface
{
  v5 = [WFContextualActionRunDescriptor alloc];
  v6 = [(WFContextualAction *)self contextForSurface:surface];
  v7 = [(WFContextualActionRunDescriptor *)v5 initWithAction:self context:v6];

  return v7;
}

- (id)contextForSurface:(unint64_t)surface
{
  if (surface > 4)
  {
    v3 = 5;
  }

  else
  {
    v3 = qword_1B1F369D8[surface];
  }

  v4 = [[WFContextualActionContext alloc] initWithSurface:v3];

  return v4;
}

+ (id)systemActionWithType:(unint64_t)type identifier:(id)identifier displayString:(id)string inputTypes:(id)types
{
  typesCopy = types;
  stringCopy = string;
  identifierCopy = identifier;
  v12 = [[WFSystemContextualAction alloc] initWithType:type identifier:identifierCopy displayString:stringCopy inputTypes:typesCopy];

  return v12;
}

@end