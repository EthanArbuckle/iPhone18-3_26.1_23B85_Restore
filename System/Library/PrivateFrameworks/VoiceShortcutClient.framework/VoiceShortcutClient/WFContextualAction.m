@interface WFContextualAction
+ (id)systemActionWithType:(unint64_t)a3 identifier:(id)a4 displayString:(id)a5 inputTypes:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)showsUserInterfaceWhenRunning;
- (BOOL)wf_shouldLaunchAppWithSurface:(unint64_t)a3 linkAction:(id)a4 actionMetadata:(id)a5 appBundleIdentifier:(id)a6 actionIdentifier:(id)a7;
- (CSSearchableItem)spotlightItem;
- (NSData)iconImageData;
- (NSString)description;
- (NSString)iconSymbolName;
- (NSString)uniquePrivateIdentifier;
- (WFContextualAction)initWithCoder:(id)a3;
- (WFContextualAction)initWithIdentifier:(id)a3 wfActionIdentifier:(id)a4 associatedAppBundleIdentifier:(id)a5 parameters:(id)a6 displayString:(id)a7 title:(id)a8 subtitle:(id)a9 icon:(id)a10;
- (WFContextualAction)initWithIdentifier:(id)a3 wfActionIdentifier:(id)a4 associatedAppBundleIdentifier:(id)a5 parameters:(id)a6 displayString:(id)a7 title:(id)a8 subtitle:(id)a9 icon:(id)a10 accessoryIcon:(id)a11 actionShowsUserInterface:(BOOL)a12 actionHasResult:(BOOL)a13 isReversible:(BOOL)a14;
- (WFContextualAction)initWithIdentifier:(id)a3 wfActionIdentifier:(id)a4 type:(unint64_t)a5 correspondingSystemActionType:(unint64_t)a6 associatedAppBundleIdentifier:(id)a7 resultFileOperation:(int64_t)a8 alternate:(BOOL)a9 filteringBehavior:(id)a10 parameters:(id)a11 displayString:(id)a12 title:(id)a13 subtitle:(id)a14 icon:(id)a15;
- (WFContextualAction)initWithIdentifier:(id)a3 wfActionIdentifier:(id)a4 type:(unint64_t)a5 correspondingSystemActionType:(unint64_t)a6 associatedAppBundleIdentifier:(id)a7 resultFileOperation:(int64_t)a8 alternate:(BOOL)a9 filteringBehavior:(id)a10 parameters:(id)a11 displayString:(id)a12 title:(id)a13 subtitle:(id)a14 icon:(id)a15 accessoryIcon:(id)a16 actionShowsUserInterface:(BOOL)a17 isReversible:(BOOL)a18;
- (double)iconImageScale;
- (id)contextForSurface:(unint64_t)a3;
- (id)copyWithParameters:(id)a3;
- (id)runDescriptorForSurface:(unint64_t)a3;
- (id)runRequestForSurface:(unint64_t)a3;
- (unint64_t)hash;
- (void)configureIfNeededForContext:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)wf_launchAppIfNeededUsingSurface:(unint64_t)a3 linkAction:(id)a4 appBundleIdentifier:(id)a5 actionIdentifier:(id)a6;
@end

@implementation WFContextualAction

- (CSSearchableItem)spotlightItem
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E6964E90]);
  v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.shortcuts.contextual-action"];
  v5 = [v3 initWithContentType:v4];

  v6 = [(WFContextualAction *)self displayString];
  [v5 setDisplayName:v6];

  v7 = [(WFContextualAction *)self icon];
  v8 = [v7 imageURL];

  v9 = [(WFContextualAction *)self icon];
  v10 = [v9 systemName];

  v11 = [(WFContextualAction *)self icon];
  v12 = [v11 applicationBundleIdentifier];

  if (v8)
  {
    v13 = [(WFContextualAction *)self icon];
    v14 = [v13 imageURL];
    [v5 setThumbnailURL:v14];

LABEL_3:
    goto LABEL_8;
  }

  if (v10)
  {
    [v5 setThumbnailSymbolName:v10];
  }

  else
  {
    if (!v12)
    {
      v13 = [(WFContextualAction *)self iconImageData];
      [v5 setThumbnailData:v13];
      goto LABEL_3;
    }

    [v5 setThumbnailBundleID:v12];
  }

LABEL_8:
  v15 = [(WFContextualAction *)self creationDate];
  [v5 setContentCreationDate:v15];

  v16 = [(WFContextualAction *)self modificationDate];
  [v5 setContentModificationDate:v16];

  v17 = [(WFContextualAction *)self spotlightActionIdentifier];
  v18 = WFSpotlightResultRunnableActionIdentifier();
  [v5 setValue:v17 forCustomKey:v18];

  v19 = [(WFContextualAction *)self associatedAppBundleIdentifier];
  if (v19)
  {
    [v5 wf_associateWithBundleIdentifier:v19];
  }

  v20 = [(WFContextualAction *)self actionForRunningFromSpotlight];
  v47 = 0;
  v21 = WFDataFromSpotlightResultRunnable(v20, &v47);
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
      v25 = [(WFContextualAction *)self displayOrder];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
      v27 = WFSpotlightResultRunnableDisplayOrderKey();
      [v5 setValue:v26 forCustomKey:v27];
    }

    v43 = v21;
    v28 = [(WFContextualAction *)self accessoryIcon];
    v29 = [v28 systemName];

    if ([v29 length])
    {
      v30 = WFSpotlightResultRunnableAccessorySystemImageNameKey();
      [v5 setValue:v29 forCustomKey:v30];
    }

    v46 = v10;
    v31 = [(WFContextualAction *)self associatedSettingsPreference];
    if ([v31 length])
    {
      v32 = WFSpotlightResultRunnableAssociatedSettingsPreferenceKey();
      [v5 setValue:v31 forCustomKey:v32];
    }

    v44 = v22;
    v45 = v19;
    v33 = [(WFContextualAction *)self settingBiomeStreamIdentifier];
    if ([v33 length])
    {
      v34 = WFSpotlightResultRunnableSettingBiomeStreamIdentifier();
      [v5 setValue:v33 forCustomKey:v34];
    }

    v35 = v12;
    v36 = v8;
    if ([(WFContextualAction *)self availableFromLockedContext])
    {
      [v5 setProtectionClass:*MEMORY[0x1E696A3A8]];
    }

    v37 = objc_alloc(MEMORY[0x1E6964E80]);
    v38 = [(WFContextualAction *)self uniquePrivateIdentifier];
    v39 = [objc_opt_class() spotlightDomainIdentifierForBundleIdentifier:0];
    v40 = [v37 initWithUniqueIdentifier:v38 domainIdentifier:v39 attributeSet:v5];

    v8 = v36;
    v19 = v45;
    v10 = v46;
    v12 = v35;
    v21 = v43;
    v22 = v44;
  }

  else
  {
    v29 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v49 = "[WFContextualAction(Spotlight) spotlightItem]";
      v50 = 2112;
      v51 = v22;
      _os_log_impl(&dword_1B1DE3000, v29, OS_LOG_TYPE_FAULT, "%s Cannot pack WFContextualAction into a data blob: %@", buf, 0x16u);
    }

    v40 = 0;
  }

  v41 = *MEMORY[0x1E69E9840];

  return v40;
}

- (void)wf_launchAppIfNeededUsingSurface:(unint64_t)a3 linkAction:(id)a4 appBundleIdentifier:(id)a5 actionIdentifier:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x1E69ACF60]);
  v14 = [v13 actionForBundleIdentifier:v11 andActionIdentifier:v12 error:0];
  if (v14 && [(WFContextualAction *)self wf_shouldLaunchAppWithSurface:a3 linkAction:v10 actionMetadata:v14 appBundleIdentifier:v11 actionIdentifier:v12])
  {
    v15 = [MEMORY[0x1E69ACE68] policyWithActionMetadata:v14];
    v16 = [v15 effectiveBundleIdentifier];
    v17 = [v16 type];

    if (v17)
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
    if (a3 != 5 && a3 != 16)
    {
      if (a3 != 12)
      {
LABEL_11:
        v23 = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
        v24 = [MEMORY[0x1E699FB70] optionsWithDictionary:v18];
        [v15 effectiveBundleIdentifier];
        v25 = v28 = v15;
        v26 = [v25 bundleIdentifier];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __121__WFContextualAction_Prewarm_Internal__wf_launchAppIfNeededUsingSurface_linkAction_appBundleIdentifier_actionIdentifier___block_invoke;
        v29[3] = &unk_1E7B01630;
        v30 = v13;
        [v23 openApplication:v26 withOptions:v24 completion:v29];

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

- (BOOL)wf_shouldLaunchAppWithSurface:(unint64_t)a3 linkAction:(id)a4 actionMetadata:(id)a5 appBundleIdentifier:(id)a6 actionIdentifier:(id)a7
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if ([v13 isEqualToString:@"com.apple.mobilenotes"] && objc_msgSend(v14, "isEqualToString:", @"CreateNoteLinkAction"))
  {
    v15 = (a3 & 0xFFFFFFFFFFFFFFFELL) != 12;
  }

  else
  {
    v16 = [v12 wf_shouldPrewarmAppLaunchWithAction:v11];
    v17 = getWFVoiceShortcutClientLogObject();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v21 = 136315650;
        v22 = "[WFContextualAction(Prewarm_Internal) wf_shouldLaunchAppWithSurface:linkAction:actionMetadata:appBundleIdentifier:actionIdentifier:]";
        v23 = 2114;
        v24 = v13;
        v25 = 2114;
        v26 = v14;
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
        v24 = v13;
        v25 = 2114;
        v26 = v14;
        _os_log_impl(&dword_1B1DE3000, v17, OS_LOG_TYPE_DEFAULT, "%s The action %{public}@:%{public}@ doesn't require pre-warmed app launch", &v21, 0x20u);
      }

      v15 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_wfActionIdentifier forKey:@"wfActionIdentifier"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeInteger:self->_correspondingSystemActionType forKey:@"correspondingSystemActionType"];
  [v5 encodeObject:self->_associatedAppBundleIdentifier forKey:@"associatedAppBundleIdentifier"];
  [v5 encodeInteger:self->_resultFileOperation forKey:@"resultFileOperation"];
  [v5 encodeBool:self->_alternate forKey:@"alternate"];
  [v5 encodeObject:self->_filteringBehavior forKey:@"filteringBehavior"];
  [v5 encodeObject:self->_parameters forKey:@"parameters"];
  [v5 encodeObject:self->_displayString forKey:@"displayString"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v5 encodeObject:self->_icon forKey:@"icon"];
  [v5 encodeObject:self->_accessoryIcon forKey:@"accessoryIcon"];
  [v5 encodeBool:self->_actionShowsUserInterface forKey:@"actionShowsUserInterface"];
  [v5 encodeBool:self->_reversible forKey:@"reversible"];
}

- (WFContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = WFContextualAction;
  v5 = [(WFContextualAction *)&v32 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wfActionIdentifier"];
    wfActionIdentifier = v5->_wfActionIdentifier;
    v5->_wfActionIdentifier = v8;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_correspondingSystemActionType = [v4 decodeIntegerForKey:@"correspondingSystemActionType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedAppBundleIdentifier"];
    associatedAppBundleIdentifier = v5->_associatedAppBundleIdentifier;
    v5->_associatedAppBundleIdentifier = v10;

    v5->_resultFileOperation = [v4 decodeIntegerForKey:@"resultFileOperation"];
    v5->_alternate = [v4 decodeBoolForKey:@"alternate"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filteringBehavior"];
    filteringBehavior = v5->_filteringBehavior;
    v5->_filteringBehavior = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"parameters"];
    parameters = v5->_parameters;
    v5->_parameters = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryIcon"];
    accessoryIcon = v5->_accessoryIcon;
    v5->_accessoryIcon = v25;

    v5->_actionShowsUserInterface = [v4 decodeBoolForKey:@"actionShowsUserInterface"];
    v5->_reversible = [v4 decodeBoolForKey:@"isReversible"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayString"];
    if (!v27)
    {
      v28 = [(WFContextualAction *)v5 _staticDisplayStringForDecoding];
      v29 = v28;
      if (!v28)
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

  v3 = [(WFContextualAction *)self parameters];
  v4 = [v3 if_firstObjectPassingTest:&__block_literal_global_14496];

  v2 = v4 != 0;
  return v2;
}

- (double)iconImageScale
{
  v2 = [(WFContextualAction *)self icon];
  [v2 imageScale];
  v4 = v3;

  return v4;
}

- (NSData)iconImageData
{
  v2 = [(WFContextualAction *)self icon];
  v3 = [v2 imageData];

  return v3;
}

- (NSString)iconSymbolName
{
  v2 = [(WFContextualAction *)self icon];
  v3 = [v2 systemName];

  return v3;
}

- (NSString)uniquePrivateIdentifier
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(WFContextualAction *)self uniqueIdentifier];
  v4 = [v2 numberWithInteger:{objc_msgSend(v3, "hash")}];
  v5 = [v4 stringValue];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_96:

      goto LABEL_97;
    }

    v7 = [(WFContextualAction *)v6 identifier];
    v8 = [(WFContextualAction *)self identifier];
    v9 = v7;
    v10 = v8;
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

    v16 = [(WFContextualAction *)v6 wfActionIdentifier];
    v17 = [(WFContextualAction *)self wfActionIdentifier];
    v14 = v16;
    v18 = v17;
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

    v22 = [(WFContextualAction *)v6 uniqueIdentifier];
    v23 = [(WFContextualAction *)self uniqueIdentifier];
    v20 = v22;
    v24 = v23;
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
    v26 = [(WFContextualAction *)v6 parameters];
    v27 = [(WFContextualAction *)self parameters];
    v20 = v26;
    v28 = v27;
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
          v33 = [(WFContextualAction *)v6 type];
          if (v33 != [(WFContextualAction *)self type])
          {
            goto LABEL_37;
          }

          v34 = [(WFContextualAction *)v6 resultFileOperation];
          if (v34 != [(WFContextualAction *)self resultFileOperation])
          {
            goto LABEL_37;
          }

          v35 = [(WFContextualAction *)v6 filteringBehavior];
          v36 = [(WFContextualAction *)self filteringBehavior];
          v20 = v35;
          v37 = v36;
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
                v40 = [(WFContextualAction *)v6 isAlternate];
                if (v40 != [(WFContextualAction *)self isAlternate])
                {
LABEL_41:
                  LOBYTE(v12) = 0;
                  v19 = v92;
                  v30 = v89;
                  v29 = v90;
                  goto LABEL_91;
                }

                v41 = [(WFContextualAction *)v6 icon];
                v42 = [(WFContextualAction *)self icon];
                v43 = v41;
                v44 = v42;
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
                      v48 = [(WFContextualAction *)v6 accessoryIcon];
                      v49 = [(WFContextualAction *)self accessoryIcon];
                      v50 = v48;
                      v51 = v49;
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
                            v54 = [(WFContextualAction *)v6 displayString];
                            v55 = [(WFContextualAction *)self displayString];
                            v56 = v54;
                            v57 = v55;
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
                                  v59 = [(WFContextualAction *)v6 subtitle];
                                  v60 = [(WFContextualAction *)self subtitle];
                                  v61 = v59;
                                  v62 = v60;
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

                                  v64 = [(WFContextualAction *)v6 associatedAppBundleIdentifier];
                                  v65 = [(WFContextualAction *)self associatedAppBundleIdentifier];
                                  v61 = v64;
                                  v66 = v65;
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

                                  v69 = [(WFContextualAction *)v6 correspondingSystemActionType];
                                  if (v69 == [(WFContextualAction *)self correspondingSystemActionType])
                                  {
                                    v70 = [(WFContextualAction *)v6 isReversible];
                                    v12 = v70 ^ [(WFContextualAction *)self isReversible]^ 1;
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
  v4 = [(WFContextualAction *)self identifier];
  v5 = [v3 combineContentsOfPropertyListObject:v4];

  v6 = [(WFContextualAction *)self wfActionIdentifier];

  if (v6)
  {
    v7 = [(WFContextualAction *)self wfActionIdentifier];
    v8 = [v3 combineContentsOfPropertyListObject:v7];
  }

  v9 = [(WFContextualAction *)self uniqueIdentifier];
  v10 = [v3 combineContentsOfPropertyListObject:v9];

  v11 = [(WFContextualAction *)self parameters];

  if (v11)
  {
    v12 = [(WFContextualAction *)self parameters];
    v13 = [v3 combine:v12];
  }

  v14 = [v3 combineInteger:{-[WFContextualAction type](self, "type")}];
  v15 = [(WFContextualAction *)self icon];

  if (v15)
  {
    v16 = [(WFContextualAction *)self icon];
    v17 = [v3 combine:v16];
  }

  v18 = [(WFContextualAction *)self accessoryIcon];

  if (v18)
  {
    v19 = [(WFContextualAction *)self accessoryIcon];
    v20 = [v3 combine:v19];
  }

  v21 = [(WFContextualAction *)self displayString];

  if (v21)
  {
    v22 = [(WFContextualAction *)self displayString];
    v23 = [v3 combineContentsOfPropertyListObject:v22];
  }

  v24 = [(WFContextualAction *)self subtitle];

  if (v24)
  {
    v25 = [(WFContextualAction *)self subtitle];
    v26 = [v3 combineContentsOfPropertyListObject:v25];
  }

  v27 = [(WFContextualAction *)self associatedAppBundleIdentifier];

  if (v27)
  {
    v28 = [(WFContextualAction *)self associatedAppBundleIdentifier];
    v29 = [v3 combineContentsOfPropertyListObject:v28];
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
  v6 = [(WFContextualAction *)self identifier];
  v7 = [(WFContextualAction *)self wfActionIdentifier];
  v8 = [(WFContextualAction *)self displayString];
  v9 = [(WFContextualAction *)self filteringBehavior];
  v10 = [v3 stringWithFormat:@"<%@ %p identifier=%@, wfActionIdentifier =%@, display string=%@, filtering behavior=%@>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (WFContextualAction)initWithIdentifier:(id)a3 wfActionIdentifier:(id)a4 type:(unint64_t)a5 correspondingSystemActionType:(unint64_t)a6 associatedAppBundleIdentifier:(id)a7 resultFileOperation:(int64_t)a8 alternate:(BOOL)a9 filteringBehavior:(id)a10 parameters:(id)a11 displayString:(id)a12 title:(id)a13 subtitle:(id)a14 icon:(id)a15 accessoryIcon:(id)a16 actionShowsUserInterface:(BOOL)a17 isReversible:(BOOL)a18
{
  v21 = a3;
  v22 = a4;
  v23 = a7;
  v53 = a10;
  v24 = v21;
  v25 = self;
  v52 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  if (!v24)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:v25 file:@"WFContextualAction.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v54.receiver = v25;
  v54.super_class = WFContextualAction;
  v31 = [(WFContextualAction *)&v54 init];
  if (v31)
  {
    v32 = [v24 copy];
    identifier = v31->_identifier;
    v31->_identifier = v32;

    if (v22)
    {
      v34 = v22;
    }

    else
    {
      v34 = v24;
    }

    v35 = [v34 copy];
    wfActionIdentifier = v31->_wfActionIdentifier;
    v31->_wfActionIdentifier = v35;

    v31->_type = a5;
    v31->_correspondingSystemActionType = a6;
    v37 = [v23 copy];
    associatedAppBundleIdentifier = v31->_associatedAppBundleIdentifier;
    v31->_associatedAppBundleIdentifier = v37;

    v31->_resultFileOperation = a8;
    v31->_alternate = a9;
    objc_storeStrong(&v31->_filteringBehavior, a10);
    objc_storeStrong(&v31->_parameters, a11);
    v39 = [v26 copy];
    displayString = v31->_displayString;
    v31->_displayString = v39;

    v41 = [v27 copy];
    title = v31->_title;
    v31->_title = v41;

    v43 = [v28 copy];
    subtitle = v31->_subtitle;
    v31->_subtitle = v43;

    objc_storeStrong(&v31->_icon, a15);
    objc_storeStrong(&v31->_accessoryIcon, a16);
    v31->_actionShowsUserInterface = a17;
    v31->_reversible = a18;
    v45 = v31;
  }

  return v31;
}

- (WFContextualAction)initWithIdentifier:(id)a3 wfActionIdentifier:(id)a4 type:(unint64_t)a5 correspondingSystemActionType:(unint64_t)a6 associatedAppBundleIdentifier:(id)a7 resultFileOperation:(int64_t)a8 alternate:(BOOL)a9 filteringBehavior:(id)a10 parameters:(id)a11 displayString:(id)a12 title:(id)a13 subtitle:(id)a14 icon:(id)a15
{
  LOWORD(v17) = 0;
  LOBYTE(v16) = a9;
  return [(WFContextualAction *)self initWithIdentifier:a3 wfActionIdentifier:a4 type:a5 correspondingSystemActionType:a6 associatedAppBundleIdentifier:a7 resultFileOperation:a8 alternate:v16 filteringBehavior:a10 parameters:a11 displayString:a12 title:a13 subtitle:a14 icon:a15 accessoryIcon:0 actionShowsUserInterface:v17 isReversible:?];
}

- (WFContextualAction)initWithIdentifier:(id)a3 wfActionIdentifier:(id)a4 associatedAppBundleIdentifier:(id)a5 parameters:(id)a6 displayString:(id)a7 title:(id)a8 subtitle:(id)a9 icon:(id)a10 accessoryIcon:(id)a11 actionShowsUserInterface:(BOOL)a12 actionHasResult:(BOOL)a13 isReversible:(BOOL)a14
{
  BYTE1(v16) = a14;
  LOBYTE(v16) = a12;
  LOBYTE(v15) = 0;
  return [(WFContextualAction *)self initWithIdentifier:a3 wfActionIdentifier:a4 type:!a13 correspondingSystemActionType:0 associatedAppBundleIdentifier:a5 resultFileOperation:1 alternate:v15 filteringBehavior:0 parameters:a6 displayString:a7 title:a8 subtitle:a9 icon:a10 accessoryIcon:a11 actionShowsUserInterface:v16 isReversible:?];
}

- (WFContextualAction)initWithIdentifier:(id)a3 wfActionIdentifier:(id)a4 associatedAppBundleIdentifier:(id)a5 parameters:(id)a6 displayString:(id)a7 title:(id)a8 subtitle:(id)a9 icon:(id)a10
{
  BYTE2(v11) = 0;
  LOWORD(v11) = 0;
  return [WFContextualAction initWithIdentifier:"initWithIdentifier:wfActionIdentifier:associatedAppBundleIdentifier:parameters:displayString:title:subtitle:icon:accessoryIcon:actionShowsUserInterface:actionHasResult:isReversible:" wfActionIdentifier:a3 associatedAppBundleIdentifier:a4 parameters:a5 displayString:a6 title:a7 subtitle:a8 icon:a9 accessoryIcon:a10 actionShowsUserInterface:0 actionHasResult:v11 isReversible:?];
}

- (void)configureIfNeededForContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"WFContextualAction.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];

    v6 = 0;
  }

  (*(v6 + 2))(v6, self, 0);
}

- (id)copyWithParameters:(id)a3
{
  v25 = a3;
  if (!v25)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFContextualAction.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];
  }

  v23 = objc_alloc(objc_opt_class());
  v5 = [(WFContextualAction *)self identifier];
  v22 = [(WFContextualAction *)self wfActionIdentifier];
  v21 = [(WFContextualAction *)self type];
  v20 = [(WFContextualAction *)self correspondingSystemActionType];
  v19 = [(WFContextualAction *)self associatedAppBundleIdentifier];
  v18 = [(WFContextualAction *)self resultFileOperation];
  v6 = [(WFContextualAction *)self isAlternate];
  v7 = [(WFContextualAction *)self filteringBehavior];
  v8 = [(WFContextualAction *)self displayString];
  v9 = [(WFContextualAction *)self title];
  v10 = [(WFContextualAction *)self subtitle];
  v11 = [(WFContextualAction *)self icon];
  v12 = [(WFContextualAction *)self accessoryIcon];
  v13 = [(WFContextualAction *)self actionShowsUserInterface];
  BYTE1(v17) = [(WFContextualAction *)self isReversible];
  LOBYTE(v17) = v13;
  LOBYTE(v16) = v6;
  v24 = [v23 initWithIdentifier:v5 wfActionIdentifier:v22 type:v21 correspondingSystemActionType:v20 associatedAppBundleIdentifier:v19 resultFileOperation:v18 alternate:v16 filteringBehavior:v7 parameters:v25 displayString:v8 title:v9 subtitle:v10 icon:v11 accessoryIcon:v12 actionShowsUserInterface:v17 isReversible:?];

  return v24;
}

- (id)runRequestForSurface:(unint64_t)a3
{
  v5 = [WFContextualActionRunRequest alloc];
  v6 = [(WFContextualAction *)self contextForSurface:a3];
  v7 = [(WFContextualActionRunRequest *)v5 initWithAction:self actionContext:v6];

  return v7;
}

- (id)runDescriptorForSurface:(unint64_t)a3
{
  v5 = [WFContextualActionRunDescriptor alloc];
  v6 = [(WFContextualAction *)self contextForSurface:a3];
  v7 = [(WFContextualActionRunDescriptor *)v5 initWithAction:self context:v6];

  return v7;
}

- (id)contextForSurface:(unint64_t)a3
{
  if (a3 > 4)
  {
    v3 = 5;
  }

  else
  {
    v3 = qword_1B1F369D8[a3];
  }

  v4 = [[WFContextualActionContext alloc] initWithSurface:v3];

  return v4;
}

+ (id)systemActionWithType:(unint64_t)a3 identifier:(id)a4 displayString:(id)a5 inputTypes:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [[WFSystemContextualAction alloc] initWithType:a3 identifier:v11 displayString:v10 inputTypes:v9];

  return v12;
}

@end