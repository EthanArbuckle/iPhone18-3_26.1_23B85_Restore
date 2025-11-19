@interface WFAutoShortcutContextualAction
+ (id)allActionsForAutoShortcut:(id)a3 bundleIdentifier:(id)a4 startIndex:(unint64_t)a5;
+ (id)autoShortcutContextualActionsByQueryingEligibilityForProminentDisplay:(id)a3;
- (BOOL)availableFromLockedContext;
- (BOOL)isEligibleForProminentDisplay;
- (BOOL)isEqual:(id)a3;
- (BOOL)isTopHitEligible;
- (WFAutoShortcutContextualAction)initWithAutoShortcut:(id)a3 bundleIdentifier:(id)a4;
- (WFAutoShortcutContextualAction)initWithAutoShortcut:(id)a3 identifier:(id)a4 parameterlessIdentifier:(id)a5 phrase:(id)a6 alternativePhrases:(id)a7 bundleIdentifier:(id)a8 actionIdentifier:(id)a9 orderOfShortcut:(unint64_t)a10 parentAction:(id)a11 prominentDisplayEligibility:(id)a12 executableAppShortcut:(id)a13;
- (WFAutoShortcutContextualAction)initWithAutoShortcut:(id)a3 phrase:(id)a4 alternativePhrases:(id)a5 bundleIdentifier:(id)a6;
- (WFAutoShortcutContextualAction)initWithCoder:(id)a3;
- (WFAutoShortcutContextualAction)initWithExecutableAppShortcut:(id)a3 index:(unint64_t)a4;
- (id)actionForRunningFromSpotlight;
- (id)creationDate;
- (id)relatedApp;
- (id)spotlightItem;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)wf_launchAppIfNeededUsingSurface:(unint64_t)a3;
@end

@implementation WFAutoShortcutContextualAction

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFAutoShortcutContextualAction;
  v4 = a3;
  [(WFContextualAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_autoShortcut forKey:{@"autoShortcut", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_phrase forKey:@"phrase"];
  [v4 encodeObject:self->_alternativePhrases forKey:@"alternativePhrases"];
  [v4 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v4 encodeObject:self->_actionIdentifier forKey:@"actionIdentifier"];
  [v4 encodeInteger:self->_orderOfShortcut forKey:@"orderOfShortcut"];
  [v4 encodeObject:self->_parentAction forKey:@"parentAction"];
  [v4 encodeObject:self->_cachedProminentDisplayEligibility forKey:@"cachedProminentDisplayEligibility"];
  [v4 encodeObject:self->_executableAppShortcut forKey:@"executableAppShortcut"];
  [v4 encodeObject:self->_parameterlessIdentifier forKey:@"parameterlessIdentifier"];
}

- (WFAutoShortcutContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = WFAutoShortcutContextualAction;
  v5 = [(WFContextualAction *)&v29 initWithCoder:v4];
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
    v28 = [v4 decodeObjectOfClass:v7 forKey:@"autoShortcut"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterlessIdentifier"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"executableAppShortcut"];
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
    v14 = [v4 decodeObjectOfClass:v12 forKey:@"phrase"];
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"alternativePhrases"];

    v19 = [v4 decodeIntegerForKey:@"orderOfShortcut"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentAction"];
    if (v9)
    {
      if (v14)
      {
        v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cachedProminentDisplayEligibility"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = WFAutoShortcutContextualAction;
  if ([(WFContextualAction *)&v41 isEqual:v4])
  {
    v5 = v4;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v11) = 0;
LABEL_46:

      goto LABEL_47;
    }

    v6 = [v5 autoShortcut];
    v7 = [(WFAutoShortcutContextualAction *)self autoShortcut];
    v8 = v6;
    v9 = v7;
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

    v15 = [v5 phrase];
    v16 = [(WFAutoShortcutContextualAction *)self phrase];
    v13 = v15;
    v17 = v16;
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

    v21 = [v5 alternativePhrases];
    v22 = [(WFAutoShortcutContextualAction *)self alternativePhrases];
    v19 = v21;
    v23 = v22;
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
          v26 = [v5 bundleIdentifier];
          v27 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
          v28 = v26;
          v29 = v27;
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

          v32 = [v5 parentAction];
          v33 = [(WFAutoShortcutContextualAction *)self parentAction];
          v28 = v32;
          v34 = v33;
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
  v5 = [(WFAutoShortcutContextualAction *)self autoShortcut];
  v6 = [v3 combine:v5];

  v7 = [(WFAutoShortcutContextualAction *)self phrase];

  if (v7)
  {
    v8 = [(WFAutoShortcutContextualAction *)self phrase];
    v9 = [v3 combine:v8];
  }

  v10 = [(WFAutoShortcutContextualAction *)self alternativePhrases];

  if (v10)
  {
    v11 = [(WFAutoShortcutContextualAction *)self alternativePhrases];
    v12 = [v3 combineContentsOfPropertyListObject:v11];
  }

  v13 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
  v14 = [v3 combineContentsOfPropertyListObject:v13];

  v15 = [(WFAutoShortcutContextualAction *)self parentAction];

  if (v15)
  {
    v16 = [(WFAutoShortcutContextualAction *)self parentAction];
    v17 = [v3 combine:v16];
  }

  v18 = [v3 finalize];

  return v18;
}

- (id)actionForRunningFromSpotlight
{
  v3 = [WFAutoShortcutContextualAction alloc];
  v4 = [(WFContextualAction *)self identifier];
  v5 = [(WFAutoShortcutContextualAction *)self parameterlessIdentifier];
  v6 = [(WFAutoShortcutContextualAction *)self phrase];
  v7 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
  v8 = [(WFAutoShortcutContextualAction *)self actionIdentifier];
  v9 = [(WFAutoShortcutContextualAction *)self orderOfShortcut];
  v10 = [(WFAutoShortcutContextualAction *)v3 initWithAutoShortcut:0 identifier:v4 parameterlessIdentifier:v5 phrase:v6 alternativePhrases:0 bundleIdentifier:v7 actionIdentifier:v8 orderOfShortcut:v9 parentAction:0 prominentDisplayEligibility:MEMORY[0x1E695E110] executableAppShortcut:0];

  return v10;
}

- (BOOL)isEligibleForProminentDisplay
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [(WFAutoShortcutContextualAction *)self cachedProminentDisplayEligibility];

  if (v3)
  {
    v4 = [(WFAutoShortcutContextualAction *)self cachedProminentDisplayEligibility];
    v5 = [v4 BOOLValue];

    v6 = *MEMORY[0x1E69E9840];
    return v5;
  }

  else
  {
    v15[0] = self;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v9 = [WFAutoShortcutContextualAction autoShortcutContextualActionsByQueryingEligibilityForProminentDisplay:v8];
    v10 = [v9 firstObject];

    v11 = [v10 isEligibleForProminentDisplay];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    cachedProminentDisplayEligibility = self->_cachedProminentDisplayEligibility;
    self->_cachedProminentDisplayEligibility = v12;

    v14 = *MEMORY[0x1E69E9840];
    return v11;
  }
}

- (id)creationDate
{
  v3 = [(WFAutoShortcutContextualAction *)self relatedApp];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 registrationDate];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFAutoShortcutContextualAction;
    v5 = [(WFContextualAction *)&v8 creationDate];
  }

  v6 = v5;

  return v6;
}

- (id)relatedApp
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

  return v5;
}

- (BOOL)isTopHitEligible
{
  v3 = [(WFAutoShortcutContextualAction *)self phrase];
  v4 = [v3 parameterIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = [(WFAutoShortcutContextualAction *)self executableAppShortcut];
    v7 = [v6 entityInfo];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(WFAutoShortcutContextualAction *)self autoShortcut];
  v10 = [v9 systemImageName];
  if ([v10 length])
  {
    v11 = [(WFAutoShortcutContextualAction *)self autoShortcut];
    v12 = [v11 localizedShortTitle];
    if ([v12 length])
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

  v3 = [(WFAutoShortcutContextualAction *)self executableAppShortcut];
  v4 = [v3 entityInfo];
  v5 = v4 == 0;

  return v5;
}

- (id)spotlightItem
{
  v91 = *MEMORY[0x1E69E9840];
  v85.receiver = self;
  v85.super_class = WFAutoShortcutContextualAction;
  v3 = [(WFContextualAction *)&v85 spotlightItem];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v86 = @"com.apple.musicrecognition";
  *buf = @"com.shazam.Shazam";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v86 count:1];
  v6 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v3 attributeSet];
    [v8 wf_associateWithBundleIdentifier:v7];
  }

  v9 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
  v10 = [WFAutoShortcutContextualAction spotlightDomainIdentifierForBundleIdentifier:v9];
  [v3 setDomainIdentifier:v10];

  v11 = [(WFAutoShortcutContextualAction *)self alternativePhrases];
  v12 = [v11 if_compactMap:&__block_literal_global_141];

  if ([v12 count])
  {
    [v4 addObjectsFromArray:v12];
    v13 = [v3 attributeSet];
    [v13 setAlternateNames:v12];
  }

  v14 = [(WFAutoShortcutContextualAction *)self parentAction];
  if (v14)
  {
    v15 = 98;
  }

  else
  {
    v15 = 99;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
  v17 = [v3 attributeSet];
  [v17 setRankingHint:v16];

  v18 = [v3 attributeSet];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[WFAutoShortcutContextualAction isEligibleForProminentDisplay](self, "isEligibleForProminentDisplay") ^ 1}];
  v20 = WFSpotlightResultRunnableIneligibleForTopHit();
  [v18 setValue:v19 forCustomKey:v20];

  v21 = [(WFAutoShortcutContextualAction *)self phrase];
  v22 = [v21 localizedPhrase];
  v23 = [v22 length];

  if (v23)
  {
    v24 = [v3 attributeSet];
    v25 = [(WFAutoShortcutContextualAction *)self phrase];
    v26 = [v25 localizedPhrase];
    v27 = WFSpotlightResultRunnablePrimaryPhrase();
    [v24 setValue:v26 forCustomKey:v27];
  }

  v28 = [(WFContextualAction *)self associatedAppBundleIdentifier];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
  }

  v31 = v30;

  *buf = @"com.apple.mobilenotes";
  *&buf[8] = @"com.apple.freeform";
  *&buf[16] = @"com.apple.mobilephone";
  v88 = @"com.apple.facetime";
  v89 = @"com.apple.Music";
  v90 = @"com.apple.podcasts";
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:6];
  if ([v32 containsObject:v31])
  {
    v33 = [(WFAutoShortcutContextualAction *)self phrase];
    v34 = [v33 parameterIdentifier];

    if (!v34)
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

    v32 = [v3 attributeSet];
    v36 = WFSpotlightResultRunnableIsAppTopHitExclusive();
    [v32 setValue:MEMORY[0x1E695E118] forCustomKey:v36];
  }

LABEL_19:
  v37 = [(WFAutoShortcutContextualAction *)self searchKeywords];
  [v4 addObjectsFromArray:v37];

  v38 = [v3 attributeSet];
  [v38 setKeywords:v4];

  v39 = [(WFAutoShortcutContextualAction *)self executableAppShortcut];
  v40 = [v39 entityInfo];

  v41 = [v3 attributeSet];
  v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFAutoShortcutContextualAction isTopHitEligible](self, "isTopHitEligible")}];
  v43 = WFSpotlightResultRunnableIsAppShortcutTopHit();
  [v41 setValue:v42 forCustomKey:v43];

  if (![(WFAutoShortcutContextualAction *)self isTopHitEligible])
  {
    goto LABEL_36;
  }

  if (v40)
  {
    v44 = [v40 name];
    v45 = [v3 attributeSet];
    [v45 setDisplayName:v44];

    v46 = [v40 subtitle];
    v47 = [v3 attributeSet];
    [v47 setSubtitle:v46];

    v48 = [v40 icon];
    v49 = [v48 imageURL];

    v50 = [v40 icon];
    v51 = v50;
    if (v49)
    {
      v52 = [v50 imageURL];
      v53 = [v3 attributeSet];
      [v53 setThumbnailURL:v52];

      v54 = 0x1E696A000;
      goto LABEL_29;
    }

    v61 = [v50 systemName];

    v62 = [v40 icon];
    v51 = v62;
    v54 = 0x1E696A000;
    if (v61)
    {
      v52 = [v62 systemName];
      v63 = [v3 attributeSet];
      [(__CFString *)v63 setThumbnailSymbolName:v52];
    }

    else
    {
      v64 = [v62 lnPropertyIdentifier];

      if (v64)
      {
        v51 = [v3 attributeSet];
        v52 = [v40 icon];
        v63 = [v52 lnPropertyIdentifier];
        v65 = WFSpotlightResultRunnableLNPropertyIdentifier();
        [v51 setValue:v63 forCustomKey:v65];

        v54 = 0x1E696A000uLL;
      }

      else
      {
        v80 = getWFSpotlightSyncLogObject();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          v81 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
          *buf = 136315394;
          *&buf[4] = "[WFAutoShortcutContextualAction spotlightItem]";
          *&buf[12] = 2112;
          *&buf[14] = v81;
          _os_log_impl(&dword_1B1DE3000, v80, OS_LOG_TYPE_DEBUG, "%s Indexing App Shortcut with data backed image for %@, this should be investigated", buf, 0x16u);
        }

        v82 = [v40 icon];
        v51 = [v82 imageData];

        v83 = [v3 attributeSet];
        [v83 setThumbnailData:v51];

        if ([v51 length] < 0x7A121)
        {
          goto LABEL_30;
        }

        v52 = getWFSpotlightSyncLogObject();
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
LABEL_29:

LABEL_30:
          v66 = [v40 subtitle];
          v67 = [v66 length];

          if (v67)
          {
            v68 = [v3 attributeSet];
            v69 = [v40 subtitle];
            v70 = WFSpotlightResultRunnableSubtitle();
            [v68 setValue:v69 forCustomKey:v70];
          }

          v71 = [v40 icon];
          v72 = [v71 displayStyle];

          if (v72)
          {
            v73 = [v3 attributeSet];
            v74 = *(v54 + 3480);
            v75 = [v40 icon];
            v76 = [v74 numberWithUnsignedInteger:{objc_msgSend(v75, "displayStyle")}];
            v77 = WFSpotlightResultRunnableImageDisplayStyle();
            [v73 setValue:v76 forCustomKey:v77];

            v54 = 0x1E696A000uLL;
          }

          v58 = [v3 attributeSet];
          v59 = [*(v54 + 3480) numberWithUnsignedInteger:{objc_msgSend(v40, "badge")}];
          v60 = WFSpotlightResultRunnableTopHitBadge();
          [v58 setValue:v59 forCustomKey:v60];
          goto LABEL_35;
        }

        v84 = [v51 length];
        v63 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
        *buf = 136315650;
        *&buf[4] = "[WFAutoShortcutContextualAction spotlightItem]";
        *&buf[12] = 2048;
        *&buf[14] = v84;
        v54 = 0x1E696A000;
        *&buf[22] = 2112;
        v88 = v63;
        _os_log_impl(&dword_1B1DE3000, v52, OS_LOG_TYPE_DEBUG, "%s Indexing large App Shortcut image of size %lu for app %@", buf, 0x20u);
      }
    }

    goto LABEL_29;
  }

  v55 = [(WFAutoShortcutContextualAction *)self autoShortcut];
  v56 = [v55 localizedShortTitle];
  v57 = [v3 attributeSet];
  [v57 setDisplayName:v56];

  v58 = [(WFAutoShortcutContextualAction *)self autoShortcut];
  v59 = [v58 localizedAutoShortcutDescription];
  v60 = [v3 attributeSet];
  [v60 setSubtitle:v59];
LABEL_35:

LABEL_36:
  v78 = *MEMORY[0x1E69E9840];

  return v3;
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

- (WFAutoShortcutContextualAction)initWithExecutableAppShortcut:(id)a3 index:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 underlyingAutoShortcut];
  v8 = [v7 basePhraseTemplates];
  v9 = [v8 firstObject];
  v10 = [v9 key];

  v11 = [v6 underlyingAutoShortcut];
  v12 = [v6 phrase];
  v13 = [v6 alternatePhrases];
  v14 = [v6 bundleIdentifier];
  v15 = [v6 underlyingAutoShortcut];
  v16 = [v15 actionIdentifier];
  v17 = [(WFAutoShortcutContextualAction *)self initWithAutoShortcut:v11 identifier:0 parameterlessIdentifier:v10 phrase:v12 alternativePhrases:v13 bundleIdentifier:v14 actionIdentifier:v16 orderOfShortcut:a4 parentAction:0 prominentDisplayEligibility:0 executableAppShortcut:v6];

  return v17;
}

- (WFAutoShortcutContextualAction)initWithAutoShortcut:(id)a3 identifier:(id)a4 parameterlessIdentifier:(id)a5 phrase:(id)a6 alternativePhrases:(id)a7 bundleIdentifier:(id)a8 actionIdentifier:(id)a9 orderOfShortcut:(unint64_t)a10 parentAction:(id)a11 prominentDisplayEligibility:(id)a12 executableAppShortcut:(id)a13
{
  v65 = a3;
  v63 = a4;
  v51 = a5;
  v59 = a5;
  v50 = a6;
  v64 = a6;
  v61 = a7;
  v19 = a8;
  v20 = a9;
  v58 = a11;
  v57 = a12;
  v56 = a13;
  if (!v19)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"WFAutoShortcutContextualAction.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v21 = [v65 attributionBundleIdentifier];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23;

  v25 = [v64 signature];
  if (v63)
  {
    v26 = v63;

    v25 = v26;
  }

  v27 = v61;
  v62 = [v64 localizedPhrase];
  v28 = [v65 systemImageName];
  v55 = v28;
  if (v28)
  {
    v29 = [WFContextualActionIcon iconWithSystemName:v28];
  }

  else
  {
    v29 = 0;
  }

  v68[0] = 0;
  v53 = objc_opt_new();
  v54 = v19;
  v30 = v20;
  v31 = [v53 actionForBundleIdentifier:v19 andActionIdentifier:v20 error:v68];
  v52 = v68[0];
  v32 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  if (v31)
  {
    v33 = [v31 descriptionMetadata];

    if (v33)
    {
      v34 = [v31 descriptionMetadata];
      v35 = [v34 searchKeywords];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __229__WFAutoShortcutContextualAction_initWithAutoShortcut_identifier_parameterlessIdentifier_phrase_alternativePhrases_bundleIdentifier_actionIdentifier_orderOfShortcut_parentAction_prominentDisplayEligibility_executableAppShortcut___block_invoke;
      v66[3] = &unk_1E7B00780;
      v67 = v65;
      v36 = [v35 if_map:v66];

      v32 = v36;
      v27 = v61;
    }
  }

  BYTE2(v48) = 0;
  LOWORD(v48) = 1;
  v37 = [WFContextualAction initWithIdentifier:"initWithIdentifier:wfActionIdentifier:associatedAppBundleIdentifier:parameters:displayString:title:subtitle:icon:accessoryIcon:actionShowsUserInterface:actionHasResult:isReversible:" wfActionIdentifier:v25 associatedAppBundleIdentifier:&stru_1F28FBBB8 parameters:v24 displayString:MEMORY[0x1E695E0F0] title:v62 subtitle:v62 icon:0 accessoryIcon:0 actionShowsUserInterface:v29 actionHasResult:v48 isReversible:?];
  v38 = v37;
  if (v37)
  {
    objc_storeStrong(&v37->_autoShortcut, a3);
    objc_storeStrong(&v38->_phrase, v50);
    v39 = [v27 copy];
    alternativePhrases = v38->_alternativePhrases;
    v38->_alternativePhrases = v39;

    v41 = [v54 copy];
    bundleIdentifier = v38->_bundleIdentifier;
    v38->_bundleIdentifier = v41;

    v43 = [v30 copy];
    actionIdentifier = v38->_actionIdentifier;
    v38->_actionIdentifier = v43;

    v38->_orderOfShortcut = a10;
    objc_storeStrong(&v38->_cachedProminentDisplayEligibility, a12);
    objc_storeStrong(&v38->_parentAction, a11);
    objc_storeStrong(&v38->_executableAppShortcut, a13);
    objc_storeStrong(&v38->_parameterlessIdentifier, v51);
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

- (WFAutoShortcutContextualAction)initWithAutoShortcut:(id)a3 phrase:(id)a4 alternativePhrases:(id)a5 bundleIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 basePhraseTemplates];
  v15 = [v14 firstObject];
  v16 = [v15 key];

  v17 = [v13 actionIdentifier];
  v18 = [(WFAutoShortcutContextualAction *)self initWithAutoShortcut:v13 identifier:0 parameterlessIdentifier:v16 phrase:v12 alternativePhrases:v11 bundleIdentifier:v10 actionIdentifier:v17 orderOfShortcut:0 parentAction:0 prominentDisplayEligibility:0 executableAppShortcut:0];

  return v18;
}

- (WFAutoShortcutContextualAction)initWithAutoShortcut:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"WFAutoShortcutContextualAction.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"autoShortcut"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"WFAutoShortcutContextualAction.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

LABEL_3:
  v10 = WFParameterlessPhrasesForAutoShortcut(v7);
  v11 = WFLocalizedPhrasesGroupedByParameterIdentifier(v7, 0, 0);
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

      v20 = [v12 firstObject];

      v21 = v13;
    }

    else
    {
      v15 = [v11 firstObject];
      v16 = [v15 phrases];

      v17 = v16;
      if ([v17 count] >= 2)
      {
        v18 = [v17 subarrayWithRange:{1, objc_msgSend(v17, "count") - 1}];
        v22 = v18;
      }

      else
      {
        v18 = 0;
      }

      v20 = [v17 firstObject];

      v21 = v18;
    }

    self = [(WFAutoShortcutContextualAction *)self initWithAutoShortcut:v7 phrase:v20 alternativePhrases:v21 bundleIdentifier:v9];

    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)autoShortcutContextualActionsByQueryingEligibilityForProminentDisplay:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"WFAutoShortcutContextualAction.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"autoShortcutContextualActions"}];
  }

  v6 = [v5 if_map:&__block_literal_global_4726];
  v7 = +[WFAppIntentsMetadataProvider daemonProvider];
  v8 = [v7 actionsWithFullyQualifiedIdentifiers:v6];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__WFAutoShortcutContextualAction_autoShortcutContextualActionsByQueryingEligibilityForProminentDisplay___block_invoke_2;
  v13[3] = &unk_1E7B00758;
  v14 = v8;
  v9 = v8;
  v10 = [v5 if_compactMap:v13];

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

+ (id)allActionsForAutoShortcut:(id)a3 bundleIdentifier:(id)a4 startIndex:(unint64_t)a5
{
  v36[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"WFAutoShortcutContextualAction.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"autoShortcut"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:a1 file:@"WFAutoShortcutContextualAction.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

LABEL_3:
  v12 = WFParameterlessPhrasesForAutoShortcut(v9);
  v13 = WFLocalizedPhrasesGroupedByParameterIdentifier(v9, 0, 0);
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

    v18 = [v14 firstObject];

    v19 = v15;
    if (v18)
    {
      v20 = [WFAutoShortcutContextualAction alloc];
      v21 = [v9 actionIdentifier];
      v22 = [(WFAutoShortcutContextualAction *)v20 initWithAutoShortcut:v9 identifier:0 parameterlessIdentifier:0 phrase:v18 alternativePhrases:v19 bundleIdentifier:v11 actionIdentifier:v21 orderOfShortcut:a5 parentAction:0 prominentDisplayEligibility:0 executableAppShortcut:0];

      ++a5;
    }

    else
    {
      v22 = 0;
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __88__WFAutoShortcutContextualAction_allActionsForAutoShortcut_bundleIdentifier_startIndex___block_invoke;
    v31[3] = &unk_1E7B00710;
    v35 = a5;
    v32 = v9;
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

- (void)wf_launchAppIfNeededUsingSurface:(unint64_t)a3
{
  v6 = [(WFAutoShortcutContextualAction *)self bundleIdentifier];
  v5 = [(WFAutoShortcutContextualAction *)self actionIdentifier];
  [(WFContextualAction *)self wf_launchAppIfNeededUsingSurface:a3 linkAction:0 appBundleIdentifier:v6 actionIdentifier:v5];
}

@end