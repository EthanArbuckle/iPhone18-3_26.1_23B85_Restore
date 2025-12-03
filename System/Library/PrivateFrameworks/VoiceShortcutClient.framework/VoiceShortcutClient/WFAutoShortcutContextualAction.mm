@interface WFAutoShortcutContextualAction
+ (id)allActionsForAutoShortcut:(id)shortcut bundleIdentifier:(id)identifier startIndex:(unint64_t)index;
+ (id)autoShortcutContextualActionsByQueryingEligibilityForProminentDisplay:(id)display;
- (BOOL)availableFromLockedContext;
- (BOOL)isEligibleForProminentDisplay;
- (BOOL)isEqual:(id)equal;
- (BOOL)isTopHitEligible;
- (WFAutoShortcutContextualAction)initWithAutoShortcut:(id)shortcut bundleIdentifier:(id)identifier;
- (WFAutoShortcutContextualAction)initWithAutoShortcut:(id)shortcut identifier:(id)identifier parameterlessIdentifier:(id)parameterlessIdentifier phrase:(id)phrase alternativePhrases:(id)phrases bundleIdentifier:(id)bundleIdentifier actionIdentifier:(id)actionIdentifier orderOfShortcut:(unint64_t)self0 parentAction:(id)self1 prominentDisplayEligibility:(id)self2 executableAppShortcut:(id)self3;
- (WFAutoShortcutContextualAction)initWithAutoShortcut:(id)shortcut phrase:(id)phrase alternativePhrases:(id)phrases bundleIdentifier:(id)identifier;
- (WFAutoShortcutContextualAction)initWithCoder:(id)coder;
- (WFAutoShortcutContextualAction)initWithExecutableAppShortcut:(id)shortcut index:(unint64_t)index;
- (id)actionForRunningFromSpotlight;
- (id)creationDate;
- (id)relatedApp;
- (id)spotlightItem;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)wf_launchAppIfNeededUsingSurface:(unint64_t)surface;
@end

@implementation WFAutoShortcutContextualAction

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFAutoShortcutContextualAction;
  coderCopy = coder;
  [(WFContextualAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_autoShortcut forKey:{@"autoShortcut", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_phrase forKey:@"phrase"];
  [coderCopy encodeObject:self->_alternativePhrases forKey:@"alternativePhrases"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_actionIdentifier forKey:@"actionIdentifier"];
  [coderCopy encodeInteger:self->_orderOfShortcut forKey:@"orderOfShortcut"];
  [coderCopy encodeObject:self->_parentAction forKey:@"parentAction"];
  [coderCopy encodeObject:self->_cachedProminentDisplayEligibility forKey:@"cachedProminentDisplayEligibility"];
  [coderCopy encodeObject:self->_executableAppShortcut forKey:@"executableAppShortcut"];
  [coderCopy encodeObject:self->_parameterlessIdentifier forKey:@"parameterlessIdentifier"];
}

- (WFAutoShortcutContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = WFAutoShortcutContextualAction;
  v5 = [(WFContextualAction *)&v29 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = v5;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2050000000;
    v7 = getLNAutoShortcutClass_softClass;
    v38 = getLNAutoShortcutClass_softClass;
    if (!getLNAutoShortcutClass_softClass)
    {
      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __getLNAutoShortcutClass_block_invoke;
      v33 = &unk_1E7B02C60;
      v34 = &v35;
      __getLNAutoShortcutClass_block_invoke(&v30);
      v7 = v36[3];
    }

    v8 = v7;
    _Block_object_dispose(&v35, 8);
    v28 = [coderCopy decodeObjectOfClass:v7 forKey:@"autoShortcut"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterlessIdentifier"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"executableAppShortcut"];
    v35 = 0;
    v36 = &v35;
    v37 = 0x2050000000;
    v12 = getLNAutoShortcutLocalizedPhraseClass_softClass;
    v38 = getLNAutoShortcutLocalizedPhraseClass_softClass;
    if (!getLNAutoShortcutLocalizedPhraseClass_softClass)
    {
      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __getLNAutoShortcutLocalizedPhraseClass_block_invoke;
      v33 = &unk_1E7B02C60;
      v34 = &v35;
      __getLNAutoShortcutLocalizedPhraseClass_block_invoke(&v30);
      v12 = v36[3];
    }

    v13 = v12;
    _Block_object_dispose(&v35, 8);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:@"phrase"];
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"alternativePhrases"];

    v19 = [coderCopy decodeIntegerForKey:@"orderOfShortcut"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentAction"];
    if (v9)
    {
      if (v14)
      {
        v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cachedProminentDisplayEligibility"];
        v22 = v6;
        v23 = v21;
        v24 = [(WFAutoShortcutContextualAction *)v22 initWithAutoShortcut:v28 identifier:v26 parameterlessIdentifier:v10 phrase:v14 alternativePhrases:v18 bundleIdentifier:v9 actionIdentifier:v27 orderOfShortcut:v19 parentAction:v20 prominentDisplayEligibility:v21 executableAppShortcut:v11];

        v6 = v24;
      }

      else
      {
        v6 = [(WFAutoShortcutContextualAction *)v6 initWithAutoShortcut:v28 bundleIdentifier:v9];
        v24 = v6;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v41.receiver = self;
  v41.super_class = WFAutoShortcutContextualAction;
  if ([(WFContextualAction *)&v41 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v11) = 0;
LABEL_46:

      goto LABEL_47;
    }

    autoShortcut = [v5 autoShortcut];
    autoShortcut2 = [(WFAutoShortcutContextualAction *)self autoShortcut];
    v8 = autoShortcut;
    v9 = autoShortcut2;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      LOBYTE(v11) = 0;
      v12 = v9;
      v13 = v8;
      if (!v8 || !v9)
      {
        goto LABEL_44;
      }

      v14 = [v8 isEqual:v9];

      if (!v14)
      {
        LOBYTE(v11) = 0;
LABEL_45:

        goto LABEL_46;
      }
    }

    phrase = [v5 phrase];
    phrase2 = [(WFAutoShortcutContextualAction *)self phrase];
    v13 = phrase;
    v17 = phrase2;
    v12 = v17;
    if (v13 == v17)
    {
    }

    else
    {
      LOBYTE(v11) = 0;
      v18 = v17;
      v19 = v13;
      if (!v13 || !v17)
      {
        goto LABEL_43;
      }

      v20 = [v13 isEqual:v17];

      if (!v20)
      {
        LOBYTE(v11) = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    alternativePhrases = [v5 alternativePhrases];
    alternativePhrases2 = [(WFAutoShortcutContextualAction *)self alternativePhrases];
    v19 = alternativePhrases;
    v23 = alternativePhrases2;
    v40 = v23;
    if (v19 != v23)
    {
      LOBYTE(v11) = 0;
      if (v19)
      {
        v24 = v23;
        v25 = v19;
        if (v23)
        {
          v11 = [v19 isEqualToArray:v23];

          if (!v11)
          {
            goto LABEL_42;
          }

LABEL_24:
          v39 = v19;
          bundleIdentifier = [v5 bundleIdentifier];
          bundleIdentifier2 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
          v28 = bundleIdentifier;
          v29 = bundleIdentifier2;
          v37 = v29;
          v38 = v28;
          if (v28 == v29)
          {
          }

          else
          {
            LOBYTE(v11) = 0;
            if (!v28)
            {
              v30 = v29;
              v19 = v39;
              goto LABEL_39;
            }

            v30 = v29;
            v19 = v39;
            if (!v29)
            {
LABEL_39:

              goto LABEL_40;
            }

            v31 = [v28 isEqualToString:v29];

            if (!v31)
            {
              LOBYTE(v11) = 0;
              v19 = v39;
LABEL_40:
              v24 = v37;
              v25 = v38;
              goto LABEL_41;
            }
          }

          parentAction = [v5 parentAction];
          parentAction2 = [(WFAutoShortcutContextualAction *)self parentAction];
          v28 = parentAction;
          v34 = parentAction2;
          v35 = v34;
          if (v28 == v34)
          {
            LOBYTE(v11) = 1;
          }

          else
          {
            LOBYTE(v11) = 0;
            if (v28)
            {
              v19 = v39;
              if (v34)
              {
                LOBYTE(v11) = [v28 isEqual:v34];
              }

              goto LABEL_37;
            }
          }

          v19 = v39;
LABEL_37:

          v30 = v35;
          goto LABEL_39;
        }
      }

      else
      {
        v24 = v23;
        v25 = 0;
      }

LABEL_41:

LABEL_42:
      v18 = v40;
LABEL_43:

      goto LABEL_44;
    }

    goto LABEL_24;
  }

  LOBYTE(v11) = 0;
LABEL_47:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v20.receiver = self;
  v20.super_class = WFAutoShortcutContextualAction;
  v4 = [v3 combineInteger:{-[WFContextualAction hash](&v20, sel_hash)}];
  autoShortcut = [(WFAutoShortcutContextualAction *)self autoShortcut];
  v6 = [v3 combine:autoShortcut];

  phrase = [(WFAutoShortcutContextualAction *)self phrase];

  if (phrase)
  {
    phrase2 = [(WFAutoShortcutContextualAction *)self phrase];
    v9 = [v3 combine:phrase2];
  }

  alternativePhrases = [(WFAutoShortcutContextualAction *)self alternativePhrases];

  if (alternativePhrases)
  {
    alternativePhrases2 = [(WFAutoShortcutContextualAction *)self alternativePhrases];
    v12 = [v3 combineContentsOfPropertyListObject:alternativePhrases2];
  }

  bundleIdentifier = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
  v14 = [v3 combineContentsOfPropertyListObject:bundleIdentifier];

  parentAction = [(WFAutoShortcutContextualAction *)self parentAction];

  if (parentAction)
  {
    parentAction2 = [(WFAutoShortcutContextualAction *)self parentAction];
    v17 = [v3 combine:parentAction2];
  }

  v18 = [v3 finalize];

  return v18;
}

- (id)actionForRunningFromSpotlight
{
  v3 = [WFAutoShortcutContextualAction alloc];
  identifier = [(WFContextualAction *)self identifier];
  parameterlessIdentifier = [(WFAutoShortcutContextualAction *)self parameterlessIdentifier];
  phrase = [(WFAutoShortcutContextualAction *)self phrase];
  bundleIdentifier = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
  actionIdentifier = [(WFAutoShortcutContextualAction *)self actionIdentifier];
  orderOfShortcut = [(WFAutoShortcutContextualAction *)self orderOfShortcut];
  v10 = [(WFAutoShortcutContextualAction *)v3 initWithAutoShortcut:0 identifier:identifier parameterlessIdentifier:parameterlessIdentifier phrase:phrase alternativePhrases:0 bundleIdentifier:bundleIdentifier actionIdentifier:actionIdentifier orderOfShortcut:orderOfShortcut parentAction:0 prominentDisplayEligibility:MEMORY[0x1E695E110] executableAppShortcut:0];

  return v10;
}

- (BOOL)isEligibleForProminentDisplay
{
  v15[1] = *MEMORY[0x1E69E9840];
  cachedProminentDisplayEligibility = [(WFAutoShortcutContextualAction *)self cachedProminentDisplayEligibility];

  if (cachedProminentDisplayEligibility)
  {
    cachedProminentDisplayEligibility2 = [(WFAutoShortcutContextualAction *)self cachedProminentDisplayEligibility];
    bOOLValue = [cachedProminentDisplayEligibility2 BOOLValue];

    v6 = *MEMORY[0x1E69E9840];
    return bOOLValue;
  }

  else
  {
    v15[0] = self;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v9 = [WFAutoShortcutContextualAction autoShortcutContextualActionsByQueryingEligibilityForProminentDisplay:v8];
    firstObject = [v9 firstObject];

    isEligibleForProminentDisplay = [firstObject isEligibleForProminentDisplay];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:isEligibleForProminentDisplay];
    cachedProminentDisplayEligibility = self->_cachedProminentDisplayEligibility;
    self->_cachedProminentDisplayEligibility = v12;

    v14 = *MEMORY[0x1E69E9840];
    return isEligibleForProminentDisplay;
  }
}

- (id)creationDate
{
  relatedApp = [(WFAutoShortcutContextualAction *)self relatedApp];
  v4 = relatedApp;
  if (relatedApp)
  {
    registrationDate = [relatedApp registrationDate];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFAutoShortcutContextualAction;
    registrationDate = [(WFContextualAction *)&v8 creationDate];
  }

  v6 = registrationDate;

  return v6;
}

- (id)relatedApp
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  bundleIdentifier = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

  return v5;
}

- (BOOL)isTopHitEligible
{
  phrase = [(WFAutoShortcutContextualAction *)self phrase];
  parameterIdentifier = [phrase parameterIdentifier];
  if (parameterIdentifier)
  {
    v5 = parameterIdentifier;
    executableAppShortcut = [(WFAutoShortcutContextualAction *)self executableAppShortcut];
    entityInfo = [executableAppShortcut entityInfo];
    v8 = entityInfo != 0;
  }

  else
  {
    v8 = 1;
  }

  autoShortcut = [(WFAutoShortcutContextualAction *)self autoShortcut];
  systemImageName = [autoShortcut systemImageName];
  if ([systemImageName length])
  {
    autoShortcut2 = [(WFAutoShortcutContextualAction *)self autoShortcut];
    localizedShortTitle = [autoShortcut2 localizedShortTitle];
    if ([localizedShortTitle length])
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)availableFromLockedContext
{
  if (![(WFAutoShortcutContextualAction *)self isTopHitEligible])
  {
    return 0;
  }

  executableAppShortcut = [(WFAutoShortcutContextualAction *)self executableAppShortcut];
  entityInfo = [executableAppShortcut entityInfo];
  v5 = entityInfo == 0;

  return v5;
}

- (id)spotlightItem
{
  v91 = *MEMORY[0x1E69E9840];
  v85.receiver = self;
  v85.super_class = WFAutoShortcutContextualAction;
  spotlightItem = [(WFContextualAction *)&v85 spotlightItem];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v86 = @"com.apple.musicrecognition";
  *buf = @"com.shazam.Shazam";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v86 count:1];
  bundleIdentifier = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
  v7 = [v5 objectForKeyedSubscript:bundleIdentifier];

  if (v7)
  {
    attributeSet = [spotlightItem attributeSet];
    [attributeSet wf_associateWithBundleIdentifier:v7];
  }

  bundleIdentifier2 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
  v10 = [WFAutoShortcutContextualAction spotlightDomainIdentifierForBundleIdentifier:bundleIdentifier2];
  [spotlightItem setDomainIdentifier:v10];

  alternativePhrases = [(WFAutoShortcutContextualAction *)self alternativePhrases];
  v12 = [alternativePhrases if_compactMap:&__block_literal_global_141];

  if ([v12 count])
  {
    [v4 addObjectsFromArray:v12];
    attributeSet2 = [spotlightItem attributeSet];
    [attributeSet2 setAlternateNames:v12];
  }

  parentAction = [(WFAutoShortcutContextualAction *)self parentAction];
  if (parentAction)
  {
    v15 = 98;
  }

  else
  {
    v15 = 99;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
  attributeSet3 = [spotlightItem attributeSet];
  [attributeSet3 setRankingHint:v16];

  attributeSet4 = [spotlightItem attributeSet];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[WFAutoShortcutContextualAction isEligibleForProminentDisplay](self, "isEligibleForProminentDisplay") ^ 1}];
  v20 = WFSpotlightResultRunnableIneligibleForTopHit();
  [attributeSet4 setValue:v19 forCustomKey:v20];

  phrase = [(WFAutoShortcutContextualAction *)self phrase];
  localizedPhrase = [phrase localizedPhrase];
  v23 = [localizedPhrase length];

  if (v23)
  {
    attributeSet5 = [spotlightItem attributeSet];
    phrase2 = [(WFAutoShortcutContextualAction *)self phrase];
    localizedPhrase2 = [phrase2 localizedPhrase];
    v27 = WFSpotlightResultRunnablePrimaryPhrase();
    [attributeSet5 setValue:localizedPhrase2 forCustomKey:v27];
  }

  associatedAppBundleIdentifier = [(WFContextualAction *)self associatedAppBundleIdentifier];
  v29 = associatedAppBundleIdentifier;
  if (associatedAppBundleIdentifier)
  {
    bundleIdentifier3 = associatedAppBundleIdentifier;
  }

  else
  {
    bundleIdentifier3 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
  }

  v31 = bundleIdentifier3;

  *buf = @"com.apple.mobilenotes";
  *&buf[8] = @"com.apple.freeform";
  *&buf[16] = @"com.apple.mobilephone";
  v88 = @"com.apple.facetime";
  v89 = @"com.apple.Music";
  v90 = @"com.apple.podcasts";
  attributeSet6 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:6];
  if ([attributeSet6 containsObject:v31])
  {
    phrase3 = [(WFAutoShortcutContextualAction *)self phrase];
    parameterIdentifier = [phrase3 parameterIdentifier];

    if (!parameterIdentifier)
    {
      goto LABEL_19;
    }

    v35 = getWFSpotlightSyncLogObject();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[WFAutoShortcutContextualAction spotlightItem]";
      *&buf[12] = 2112;
      *&buf[14] = v31;
      _os_log_impl(&dword_1B1DE3000, v35, OS_LOG_TYPE_INFO, "%s Bundle %@ is top hit exclusive, marking as such", buf, 0x16u);
    }

    attributeSet6 = [spotlightItem attributeSet];
    v36 = WFSpotlightResultRunnableIsAppTopHitExclusive();
    [attributeSet6 setValue:MEMORY[0x1E695E118] forCustomKey:v36];
  }

LABEL_19:
  searchKeywords = [(WFAutoShortcutContextualAction *)self searchKeywords];
  [v4 addObjectsFromArray:searchKeywords];

  attributeSet7 = [spotlightItem attributeSet];
  [attributeSet7 setKeywords:v4];

  executableAppShortcut = [(WFAutoShortcutContextualAction *)self executableAppShortcut];
  entityInfo = [executableAppShortcut entityInfo];

  attributeSet8 = [spotlightItem attributeSet];
  v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFAutoShortcutContextualAction isTopHitEligible](self, "isTopHitEligible")}];
  v43 = WFSpotlightResultRunnableIsAppShortcutTopHit();
  [attributeSet8 setValue:v42 forCustomKey:v43];

  if (![(WFAutoShortcutContextualAction *)self isTopHitEligible])
  {
    goto LABEL_36;
  }

  if (entityInfo)
  {
    name = [entityInfo name];
    attributeSet9 = [spotlightItem attributeSet];
    [attributeSet9 setDisplayName:name];

    subtitle = [entityInfo subtitle];
    attributeSet10 = [spotlightItem attributeSet];
    [attributeSet10 setSubtitle:subtitle];

    icon = [entityInfo icon];
    imageURL = [icon imageURL];

    icon2 = [entityInfo icon];
    attributeSet13 = icon2;
    if (imageURL)
    {
      imageURL2 = [icon2 imageURL];
      attributeSet11 = [spotlightItem attributeSet];
      [attributeSet11 setThumbnailURL:imageURL2];

      v54 = 0x1E696A000;
      goto LABEL_29;
    }

    systemName = [icon2 systemName];

    icon3 = [entityInfo icon];
    attributeSet13 = icon3;
    v54 = 0x1E696A000;
    if (systemName)
    {
      imageURL2 = [icon3 systemName];
      attributeSet12 = [spotlightItem attributeSet];
      [(__CFString *)attributeSet12 setThumbnailSymbolName:imageURL2];
    }

    else
    {
      lnPropertyIdentifier = [icon3 lnPropertyIdentifier];

      if (lnPropertyIdentifier)
      {
        attributeSet13 = [spotlightItem attributeSet];
        imageURL2 = [entityInfo icon];
        attributeSet12 = [imageURL2 lnPropertyIdentifier];
        v65 = WFSpotlightResultRunnableLNPropertyIdentifier();
        [attributeSet13 setValue:attributeSet12 forCustomKey:v65];

        v54 = 0x1E696A000uLL;
      }

      else
      {
        v80 = getWFSpotlightSyncLogObject();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          bundleIdentifier4 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
          *buf = 136315394;
          *&buf[4] = "[WFAutoShortcutContextualAction spotlightItem]";
          *&buf[12] = 2112;
          *&buf[14] = bundleIdentifier4;
          _os_log_impl(&dword_1B1DE3000, v80, OS_LOG_TYPE_DEBUG, "%s Indexing App Shortcut with data backed image for %@, this should be investigated", buf, 0x16u);
        }

        icon4 = [entityInfo icon];
        attributeSet13 = [icon4 imageData];

        attributeSet14 = [spotlightItem attributeSet];
        [attributeSet14 setThumbnailData:attributeSet13];

        if ([attributeSet13 length] < 0x7A121)
        {
          goto LABEL_30;
        }

        imageURL2 = getWFSpotlightSyncLogObject();
        if (!os_log_type_enabled(imageURL2, OS_LOG_TYPE_DEBUG))
        {
LABEL_29:

LABEL_30:
          subtitle2 = [entityInfo subtitle];
          v67 = [subtitle2 length];

          if (v67)
          {
            attributeSet15 = [spotlightItem attributeSet];
            subtitle3 = [entityInfo subtitle];
            v70 = WFSpotlightResultRunnableSubtitle();
            [attributeSet15 setValue:subtitle3 forCustomKey:v70];
          }

          icon5 = [entityInfo icon];
          displayStyle = [icon5 displayStyle];

          if (displayStyle)
          {
            attributeSet16 = [spotlightItem attributeSet];
            v74 = *(v54 + 3480);
            icon6 = [entityInfo icon];
            v76 = [v74 numberWithUnsignedInteger:{objc_msgSend(icon6, "displayStyle")}];
            v77 = WFSpotlightResultRunnableImageDisplayStyle();
            [attributeSet16 setValue:v76 forCustomKey:v77];

            v54 = 0x1E696A000uLL;
          }

          attributeSet17 = [spotlightItem attributeSet];
          localizedAutoShortcutDescription = [*(v54 + 3480) numberWithUnsignedInteger:{objc_msgSend(entityInfo, "badge")}];
          attributeSet19 = WFSpotlightResultRunnableTopHitBadge();
          [attributeSet17 setValue:localizedAutoShortcutDescription forCustomKey:attributeSet19];
          goto LABEL_35;
        }

        v84 = [attributeSet13 length];
        attributeSet12 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
        *buf = 136315650;
        *&buf[4] = "[WFAutoShortcutContextualAction spotlightItem]";
        *&buf[12] = 2048;
        *&buf[14] = v84;
        v54 = 0x1E696A000;
        *&buf[22] = 2112;
        v88 = attributeSet12;
        _os_log_impl(&dword_1B1DE3000, imageURL2, OS_LOG_TYPE_DEBUG, "%s Indexing large App Shortcut image of size %lu for app %@", buf, 0x20u);
      }
    }

    goto LABEL_29;
  }

  autoShortcut = [(WFAutoShortcutContextualAction *)self autoShortcut];
  localizedShortTitle = [autoShortcut localizedShortTitle];
  attributeSet18 = [spotlightItem attributeSet];
  [attributeSet18 setDisplayName:localizedShortTitle];

  attributeSet17 = [(WFAutoShortcutContextualAction *)self autoShortcut];
  localizedAutoShortcutDescription = [attributeSet17 localizedAutoShortcutDescription];
  attributeSet19 = [spotlightItem attributeSet];
  [attributeSet19 setSubtitle:localizedAutoShortcutDescription];
LABEL_35:

LABEL_36:
  v78 = *MEMORY[0x1E69E9840];

  return spotlightItem;
}

id __47__WFAutoShortcutContextualAction_spotlightItem__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 localizedPhrase];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [v2 localizedPhrase];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (WFAutoShortcutContextualAction)initWithExecutableAppShortcut:(id)shortcut index:(unint64_t)index
{
  shortcutCopy = shortcut;
  underlyingAutoShortcut = [shortcutCopy underlyingAutoShortcut];
  basePhraseTemplates = [underlyingAutoShortcut basePhraseTemplates];
  firstObject = [basePhraseTemplates firstObject];
  v10 = [firstObject key];

  underlyingAutoShortcut2 = [shortcutCopy underlyingAutoShortcut];
  phrase = [shortcutCopy phrase];
  alternatePhrases = [shortcutCopy alternatePhrases];
  bundleIdentifier = [shortcutCopy bundleIdentifier];
  underlyingAutoShortcut3 = [shortcutCopy underlyingAutoShortcut];
  actionIdentifier = [underlyingAutoShortcut3 actionIdentifier];
  v17 = [(WFAutoShortcutContextualAction *)self initWithAutoShortcut:underlyingAutoShortcut2 identifier:0 parameterlessIdentifier:v10 phrase:phrase alternativePhrases:alternatePhrases bundleIdentifier:bundleIdentifier actionIdentifier:actionIdentifier orderOfShortcut:index parentAction:0 prominentDisplayEligibility:0 executableAppShortcut:shortcutCopy];

  return v17;
}

- (WFAutoShortcutContextualAction)initWithAutoShortcut:(id)shortcut identifier:(id)identifier parameterlessIdentifier:(id)parameterlessIdentifier phrase:(id)phrase alternativePhrases:(id)phrases bundleIdentifier:(id)bundleIdentifier actionIdentifier:(id)actionIdentifier orderOfShortcut:(unint64_t)self0 parentAction:(id)self1 prominentDisplayEligibility:(id)self2 executableAppShortcut:(id)self3
{
  shortcutCopy = shortcut;
  identifierCopy = identifier;
  parameterlessIdentifierCopy = parameterlessIdentifier;
  parameterlessIdentifierCopy2 = parameterlessIdentifier;
  phraseCopy = phrase;
  phraseCopy2 = phrase;
  phrasesCopy = phrases;
  bundleIdentifierCopy = bundleIdentifier;
  actionIdentifierCopy = actionIdentifier;
  actionCopy = action;
  eligibilityCopy = eligibility;
  appShortcutCopy = appShortcut;
  if (!bundleIdentifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAutoShortcutContextualAction.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  attributionBundleIdentifier = [shortcutCopy attributionBundleIdentifier];
  v22 = attributionBundleIdentifier;
  if (attributionBundleIdentifier)
  {
    v23 = attributionBundleIdentifier;
  }

  else
  {
    v23 = bundleIdentifierCopy;
  }

  v24 = v23;

  signature = [phraseCopy2 signature];
  if (identifierCopy)
  {
    v26 = identifierCopy;

    signature = v26;
  }

  v27 = phrasesCopy;
  localizedPhrase = [phraseCopy2 localizedPhrase];
  systemImageName = [shortcutCopy systemImageName];
  v55 = systemImageName;
  if (systemImageName)
  {
    v29 = [WFContextualActionIcon iconWithSystemName:systemImageName];
  }

  else
  {
    v29 = 0;
  }

  v68[0] = 0;
  v53 = objc_opt_new();
  v54 = bundleIdentifierCopy;
  v30 = actionIdentifierCopy;
  v31 = [v53 actionForBundleIdentifier:bundleIdentifierCopy andActionIdentifier:actionIdentifierCopy error:v68];
  v52 = v68[0];
  v32 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  if (v31)
  {
    descriptionMetadata = [v31 descriptionMetadata];

    if (descriptionMetadata)
    {
      descriptionMetadata2 = [v31 descriptionMetadata];
      searchKeywords = [descriptionMetadata2 searchKeywords];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __229__WFAutoShortcutContextualAction_initWithAutoShortcut_identifier_parameterlessIdentifier_phrase_alternativePhrases_bundleIdentifier_actionIdentifier_orderOfShortcut_parentAction_prominentDisplayEligibility_executableAppShortcut___block_invoke;
      v66[3] = &unk_1E7B00780;
      v67 = shortcutCopy;
      v36 = [searchKeywords if_map:v66];

      v32 = v36;
      v27 = phrasesCopy;
    }
  }

  BYTE2(v48) = 0;
  LOWORD(v48) = 1;
  v37 = [WFContextualAction initWithIdentifier:"initWithIdentifier:wfActionIdentifier:associatedAppBundleIdentifier:parameters:displayString:title:subtitle:icon:accessoryIcon:actionShowsUserInterface:actionHasResult:isReversible:" wfActionIdentifier:signature associatedAppBundleIdentifier:&stru_1F28FBBB8 parameters:v24 displayString:MEMORY[0x1E695E0F0] title:localizedPhrase subtitle:localizedPhrase icon:0 accessoryIcon:0 actionShowsUserInterface:v29 actionHasResult:v48 isReversible:?];
  v38 = v37;
  if (v37)
  {
    objc_storeStrong(&v37->_autoShortcut, shortcut);
    objc_storeStrong(&v38->_phrase, phraseCopy);
    v39 = [v27 copy];
    alternativePhrases = v38->_alternativePhrases;
    v38->_alternativePhrases = v39;

    v41 = [v54 copy];
    bundleIdentifier = v38->_bundleIdentifier;
    v38->_bundleIdentifier = v41;

    v43 = [v30 copy];
    actionIdentifier = v38->_actionIdentifier;
    v38->_actionIdentifier = v43;

    v38->_orderOfShortcut = ofShortcut;
    objc_storeStrong(&v38->_cachedProminentDisplayEligibility, eligibility);
    objc_storeStrong(&v38->_parentAction, action);
    objc_storeStrong(&v38->_executableAppShortcut, appShortcut);
    objc_storeStrong(&v38->_parameterlessIdentifier, parameterlessIdentifierCopy);
    objc_storeStrong(&v38->_searchKeywords, v32);
    v45 = v38;
  }

  return v38;
}

id __229__WFAutoShortcutContextualAction_initWithAutoShortcut_identifier_parameterlessIdentifier_phrase_alternativePhrases_bundleIdentifier_actionIdentifier_orderOfShortcut_parentAction_prominentDisplayEligibility_executableAppShortcut___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localeIdentifier];
  v5 = [v3 localizedStringForLocaleIdentifier:v4];

  return v5;
}

- (WFAutoShortcutContextualAction)initWithAutoShortcut:(id)shortcut phrase:(id)phrase alternativePhrases:(id)phrases bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  phrasesCopy = phrases;
  phraseCopy = phrase;
  shortcutCopy = shortcut;
  basePhraseTemplates = [shortcutCopy basePhraseTemplates];
  firstObject = [basePhraseTemplates firstObject];
  v16 = [firstObject key];

  actionIdentifier = [shortcutCopy actionIdentifier];
  v18 = [(WFAutoShortcutContextualAction *)self initWithAutoShortcut:shortcutCopy identifier:0 parameterlessIdentifier:v16 phrase:phraseCopy alternativePhrases:phrasesCopy bundleIdentifier:identifierCopy actionIdentifier:actionIdentifier orderOfShortcut:0 parentAction:0 prominentDisplayEligibility:0 executableAppShortcut:0];

  return v18;
}

- (WFAutoShortcutContextualAction)initWithAutoShortcut:(id)shortcut bundleIdentifier:(id)identifier
{
  shortcutCopy = shortcut;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (shortcutCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAutoShortcutContextualAction.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"autoShortcut"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFAutoShortcutContextualAction.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

LABEL_3:
  v10 = WFParameterlessPhrasesForAutoShortcut(shortcutCopy);
  v11 = WFLocalizedPhrasesGroupedByParameterIdentifier(shortcutCopy, 0, 0);
  if (v11 | v10)
  {
    if ([v10 count])
    {
      v12 = v10;
      if ([v12 count] >= 2)
      {
        v13 = [v12 subarrayWithRange:{1, objc_msgSend(v12, "count") - 1}];
        v19 = v13;
      }

      else
      {
        v13 = 0;
      }

      firstObject = [v12 firstObject];

      v21 = v13;
    }

    else
    {
      firstObject2 = [v11 firstObject];
      phrases = [firstObject2 phrases];

      v17 = phrases;
      if ([v17 count] >= 2)
      {
        v18 = [v17 subarrayWithRange:{1, objc_msgSend(v17, "count") - 1}];
        v22 = v18;
      }

      else
      {
        v18 = 0;
      }

      firstObject = [v17 firstObject];

      v21 = v18;
    }

    self = [(WFAutoShortcutContextualAction *)self initWithAutoShortcut:shortcutCopy phrase:firstObject alternativePhrases:v21 bundleIdentifier:v9];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)autoShortcutContextualActionsByQueryingEligibilityForProminentDisplay:(id)display
{
  displayCopy = display;
  if (!displayCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAutoShortcutContextualAction.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"autoShortcutContextualActions"}];
  }

  v6 = [displayCopy if_map:&__block_literal_global_4726];
  v7 = +[WFAppIntentsMetadataProvider daemonProvider];
  v8 = [v7 actionsWithFullyQualifiedIdentifiers:v6];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__WFAutoShortcutContextualAction_autoShortcutContextualActionsByQueryingEligibilityForProminentDisplay___block_invoke_2;
  v13[3] = &unk_1E7B00758;
  v14 = v8;
  v9 = v8;
  v10 = [displayCopy if_compactMap:v13];

  return v10;
}

id __104__WFAutoShortcutContextualAction_autoShortcutContextualActionsByQueryingEligibilityForProminentDisplay___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 bundleIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v3 autoShortcut];
    v8 = [v7 actionIdentifier];
    v9 = [v6 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [v3 actionBySettingEligibilityForProminentDisplay:{-[NSObject openAppWhenRun](v9, "openAppWhenRun") ^ 1}];
      goto LABEL_10;
    }

    v12 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = [v3 autoShortcut];
      v14 = [v13 actionIdentifier];
      v15 = [v3 bundleIdentifier];
      v18 = 136315650;
      v19 = "+[WFAutoShortcutContextualAction autoShortcutContextualActionsByQueryingEligibilityForProminentDisplay:]_block_invoke";
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_1B1DE3000, v12, OS_LOG_TYPE_FAULT, "%s We got auto shortcut metadata with no error, but can't find %@ in the returned set (for bundle %@)", &v18, 0x20u);
    }

    v9 = 0;
  }

  else
  {
    v9 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = [v3 bundleIdentifier];
      v18 = 136315394;
      v19 = "+[WFAutoShortcutContextualAction autoShortcutContextualActionsByQueryingEligibilityForProminentDisplay:]_block_invoke_2";
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_1B1DE3000, v9, OS_LOG_TYPE_FAULT, "%s We got auto shortcut metadata with no error, but can't find %@ in the returned set", &v18, 0x16u);
    }
  }

  v10 = 0;
LABEL_10:

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

id __104__WFAutoShortcutContextualAction_autoShortcutContextualActionsByQueryingEligibilityForProminentDisplay___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69AC858];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 autoShortcut];
  v6 = [v5 actionIdentifier];
  v7 = [v3 bundleIdentifier];

  v8 = [v4 initWithActionIdentifier:v6 bundleIdentifier:v7];

  return v8;
}

+ (id)allActionsForAutoShortcut:(id)shortcut bundleIdentifier:(id)identifier startIndex:(unint64_t)index
{
  v36[1] = *MEMORY[0x1E69E9840];
  shortcutCopy = shortcut;
  identifierCopy = identifier;
  v11 = identifierCopy;
  if (shortcutCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAutoShortcutContextualAction.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"autoShortcut"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFAutoShortcutContextualAction.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

LABEL_3:
  v12 = WFParameterlessPhrasesForAutoShortcut(shortcutCopy);
  v13 = WFLocalizedPhrasesGroupedByParameterIdentifier(shortcutCopy, 0, 0);
  if (v13 | v12)
  {
    v14 = v12;
    if ([v14 count] >= 2)
    {
      v15 = [v14 subarrayWithRange:{1, objc_msgSend(v14, "count") - 1}];
      v17 = v15;
    }

    else
    {
      v15 = 0;
    }

    firstObject = [v14 firstObject];

    v19 = v15;
    if (firstObject)
    {
      v20 = [WFAutoShortcutContextualAction alloc];
      actionIdentifier = [shortcutCopy actionIdentifier];
      v22 = [(WFAutoShortcutContextualAction *)v20 initWithAutoShortcut:shortcutCopy identifier:0 parameterlessIdentifier:0 phrase:firstObject alternativePhrases:v19 bundleIdentifier:v11 actionIdentifier:actionIdentifier orderOfShortcut:index parentAction:0 prominentDisplayEligibility:0 executableAppShortcut:0];

      ++index;
    }

    else
    {
      v22 = 0;
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __88__WFAutoShortcutContextualAction_allActionsForAutoShortcut_bundleIdentifier_startIndex___block_invoke;
    v31[3] = &unk_1E7B00710;
    indexCopy = index;
    v32 = shortcutCopy;
    v33 = v11;
    v23 = v22;
    v34 = v23;
    v24 = [v13 if_compactMap:v31];
    v25 = v24;
    if (v23)
    {
      v36[0] = v23;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      v16 = [v26 arrayByAddingObjectsFromArray:v25];
    }

    else
    {
      v16 = v24;
    }
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  v27 = *MEMORY[0x1E69E9840];

  return v16;
}

WFAutoShortcutContextualAction *__88__WFAutoShortcutContextualAction_allActionsForAutoShortcut_bundleIdentifier_startIndex___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[7];
  v6 = [a2 phrases];
  if ([v6 count] >= 2)
  {
    v7 = [v6 subarrayWithRange:{1, objc_msgSend(v6, "count") - 1}];
    v8 = v7;
  }

  else
  {
    v7 = 0;
  }

  v9 = v5 + a3;
  v10 = [v6 firstObject];
  v11 = v7;

  v12 = [WFAutoShortcutContextualAction alloc];
  v13 = a1[4];
  v14 = a1[5];
  v15 = [v13 actionIdentifier];
  v16 = [(WFAutoShortcutContextualAction *)v12 initWithAutoShortcut:v13 identifier:0 parameterlessIdentifier:0 phrase:v10 alternativePhrases:v11 bundleIdentifier:v14 actionIdentifier:v15 orderOfShortcut:v9 parentAction:a1[6] prominentDisplayEligibility:0 executableAppShortcut:0];

  return v16;
}

- (void)wf_launchAppIfNeededUsingSurface:(unint64_t)surface
{
  bundleIdentifier = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
  actionIdentifier = [(WFAutoShortcutContextualAction *)self actionIdentifier];
  [(WFContextualAction *)self wf_launchAppIfNeededUsingSurface:surface linkAction:0 appBundleIdentifier:bundleIdentifier actionIdentifier:actionIdentifier];
}

@end