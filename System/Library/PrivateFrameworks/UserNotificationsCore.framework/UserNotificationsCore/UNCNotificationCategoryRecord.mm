@interface UNCNotificationCategoryRecord
- (BOOL)isEqual:(id)equal;
- (UNCNotificationCategoryRecord)initWithCoder:(id)coder;
- (UNCNotificationCategoryRecord)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNCNotificationCategoryRecord

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:{-[UNCNotificationCategoryRecord hasCustomDismissAction](self, "hasCustomDismissAction")}];
  v5 = [builder appendBool:{-[UNCNotificationCategoryRecord hasFollowActivityAction](self, "hasFollowActivityAction")}];
  v6 = [builder appendBool:{-[UNCNotificationCategoryRecord hasCustomSilenceAction](self, "hasCustomSilenceAction")}];
  v7 = [builder appendBool:{-[UNCNotificationCategoryRecord shouldAllowInCarPlay](self, "shouldAllowInCarPlay")}];
  v8 = [builder appendBool:{-[UNCNotificationCategoryRecord privacyOptionShowTitle](self, "privacyOptionShowTitle")}];
  v9 = [builder appendBool:{-[UNCNotificationCategoryRecord privacyOptionShowSubtitle](self, "privacyOptionShowSubtitle")}];
  listPriority = [(UNCNotificationCategoryRecord *)self listPriority];
  v11 = [builder appendObject:listPriority];

  v12 = [builder appendBool:{-[UNCNotificationCategoryRecord preventAutomaticRemovalFromRecent](self, "preventAutomaticRemovalFromRecent")}];
  v13 = [builder appendBool:{-[UNCNotificationCategoryRecord revealAdditionalContentWhenPresented](self, "revealAdditionalContentWhenPresented")}];
  v14 = [builder appendBool:{-[UNCNotificationCategoryRecord preventAutomaticLock](self, "preventAutomaticLock")}];
  v15 = [builder appendBool:{-[UNCNotificationCategoryRecord preventDismissWhenClosed](self, "preventDismissWhenClosed")}];
  v16 = [builder appendBool:{-[UNCNotificationCategoryRecord presentFullScreenAlertOverList](self, "presentFullScreenAlertOverList")}];
  v17 = [builder appendBool:{-[UNCNotificationCategoryRecord shouldAllowActionsInCarPlay](self, "shouldAllowActionsInCarPlay")}];
  v18 = [builder appendBool:{-[UNCNotificationCategoryRecord shouldAllowPersistentBannersInCarPlay](self, "shouldAllowPersistentBannersInCarPlay")}];
  actions = [(UNCNotificationCategoryRecord *)self actions];
  v20 = [builder appendObject:actions];

  identifier = [(UNCNotificationCategoryRecord *)self identifier];
  v22 = [builder appendObject:identifier];

  intentIdentifiers = [(UNCNotificationCategoryRecord *)self intentIdentifiers];
  v24 = [builder appendObject:intentIdentifiers];

  minimalActions = [(UNCNotificationCategoryRecord *)self minimalActions];
  v26 = [builder appendObject:minimalActions];

  privateBody = [(UNCNotificationCategoryRecord *)self privateBody];
  v28 = [builder appendObject:privateBody];

  summaryFormat = [(UNCNotificationCategoryRecord *)self summaryFormat];
  v30 = [builder appendObject:summaryFormat];

  backgroundStyle = [(UNCNotificationCategoryRecord *)self backgroundStyle];
  v32 = [builder appendObject:backgroundStyle];

  v33 = [builder appendBool:{-[UNCNotificationCategoryRecord playMediaWhenRaised](self, "playMediaWhenRaised")}];
  v34 = [builder appendBool:{-[UNCNotificationCategoryRecord preventClearFromList](self, "preventClearFromList")}];
  v35 = [builder appendBool:{-[UNCNotificationCategoryRecord alwaysDisplayNotificationsIndicator](self, "alwaysDisplayNotificationsIndicator")}];
  v36 = [builder appendBool:{-[UNCNotificationCategoryRecord suppressDelayForForwardedNotifications](self, "suppressDelayForForwardedNotifications")}];
  v37 = [builder appendBool:{-[UNCNotificationCategoryRecord suppressDismissActionInCarPlay](self, "suppressDismissActionInCarPlay")}];
  v38 = [builder appendBool:{-[UNCNotificationCategoryRecord suppressPresentationInAmbient](self, "suppressPresentationInAmbient")}];
  v39 = [builder hash];

  return v39;
}

- (UNCNotificationCategoryRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v42.receiver = self;
  v42.super_class = UNCNotificationCategoryRecord;
  v5 = [(UNCNotificationCategoryRecord *)&v42 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"Actions"];
    v7 = [v6 bs_map:UNSDictionaryToNotificationActionRecord];
    [(UNCNotificationCategoryRecord *)v5 setActions:v7];

    v8 = [representationCopy objectForKey:@"BackgroundStyle"];
    [(UNCNotificationCategoryRecord *)v5 setBackgroundStyle:v8];

    v9 = [representationCopy objectForKey:@"HasCustomDismissAction"];
    -[UNCNotificationCategoryRecord setHasCustomDismissAction:](v5, "setHasCustomDismissAction:", [v9 BOOLValue]);

    v10 = [representationCopy objectForKey:@"HasFollowActivityAction"];
    -[UNCNotificationCategoryRecord setHasFollowActivityAction:](v5, "setHasFollowActivityAction:", [v10 BOOLValue]);

    v11 = [representationCopy objectForKey:@"HasCustomSilenceAction"];
    -[UNCNotificationCategoryRecord setHasCustomSilenceAction:](v5, "setHasCustomSilenceAction:", [v11 BOOLValue]);

    v12 = [representationCopy objectForKey:@"Identifier"];
    [(UNCNotificationCategoryRecord *)v5 setIdentifier:v12];

    v13 = [representationCopy objectForKey:@"IntentIdentifiers"];
    [(UNCNotificationCategoryRecord *)v5 setIntentIdentifiers:v13];

    v14 = [representationCopy objectForKey:@"ListPriority"];
    [(UNCNotificationCategoryRecord *)v5 setListPriority:v14];

    v15 = [representationCopy objectForKey:@"MinimalActions"];
    v16 = [v15 bs_map:UNSDictionaryToNotificationActionRecord];
    [(UNCNotificationCategoryRecord *)v5 setMinimalActions:v16];

    v17 = [representationCopy objectForKey:@"ShouldAllowInCarPlay"];
    -[UNCNotificationCategoryRecord setShouldAllowInCarPlay:](v5, "setShouldAllowInCarPlay:", [v17 BOOLValue]);

    v18 = MEMORY[0x1E696AEC0];
    v19 = [representationCopy objectForKey:@"PrivateBody"];
    v20 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v21 = [v18 bs_secureDecodedFromData:v19 withAdditionalClasses:v20];
    [(UNCNotificationCategoryRecord *)v5 setPrivateBody:v21];

    v22 = [representationCopy objectForKey:@"PrivacyOptionShowTitle"];
    -[UNCNotificationCategoryRecord setPrivacyOptionShowTitle:](v5, "setPrivacyOptionShowTitle:", [v22 BOOLValue]);

    v23 = [representationCopy objectForKey:@"PrivacyOptionShowSubtitle"];
    -[UNCNotificationCategoryRecord setPrivacyOptionShowSubtitle:](v5, "setPrivacyOptionShowSubtitle:", [v23 BOOLValue]);

    v24 = [representationCopy objectForKey:@"PreventAutomaticRemovalFromRecent"];
    -[UNCNotificationCategoryRecord setPreventAutomaticRemovalFromRecent:](v5, "setPreventAutomaticRemovalFromRecent:", [v24 BOOLValue]);

    v25 = [representationCopy objectForKey:@"RevealAdditionalContentOnPresentation"];
    -[UNCNotificationCategoryRecord setRevealAdditionalContentWhenPresented:](v5, "setRevealAdditionalContentWhenPresented:", [v25 BOOLValue]);

    v26 = [representationCopy objectForKey:@"PreventAutomaticLock"];
    -[UNCNotificationCategoryRecord setPreventAutomaticLock:](v5, "setPreventAutomaticLock:", [v26 BOOLValue]);

    v27 = [representationCopy objectForKey:@"PreventDismissWhenClosed"];
    -[UNCNotificationCategoryRecord setPreventDismissWhenClosed:](v5, "setPreventDismissWhenClosed:", [v27 BOOLValue]);

    v28 = [representationCopy objectForKey:@"PresentFullScreenAlertOverList"];
    -[UNCNotificationCategoryRecord setPresentFullScreenAlertOverList:](v5, "setPresentFullScreenAlertOverList:", [v28 BOOLValue]);

    v29 = MEMORY[0x1E696AEC0];
    v30 = [representationCopy objectForKey:@"SummaryFormat"];
    v31 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v32 = [v29 bs_secureDecodedFromData:v30 withAdditionalClasses:v31];
    [(UNCNotificationCategoryRecord *)v5 setSummaryFormat:v32];

    v33 = [representationCopy objectForKey:@"ShouldAllowActionsInCarPlay"];
    -[UNCNotificationCategoryRecord setShouldAllowActionsInCarPlay:](v5, "setShouldAllowActionsInCarPlay:", [v33 BOOLValue]);

    v34 = [representationCopy objectForKey:@"ShouldAllowPersistentBannersInCarPlay"];
    -[UNCNotificationCategoryRecord setShouldAllowPersistentBannersInCarPlay:](v5, "setShouldAllowPersistentBannersInCarPlay:", [v34 BOOLValue]);

    v35 = [representationCopy objectForKey:@"PlayMediaWhenRaised"];
    -[UNCNotificationCategoryRecord setPlayMediaWhenRaised:](v5, "setPlayMediaWhenRaised:", [v35 BOOLValue]);

    v36 = [representationCopy objectForKey:@"PreventClearFromList"];
    -[UNCNotificationCategoryRecord setPreventClearFromList:](v5, "setPreventClearFromList:", [v36 BOOLValue]);

    v37 = [representationCopy objectForKey:@"AlwaysDisplayNotificationsIndicator"];
    -[UNCNotificationCategoryRecord setAlwaysDisplayNotificationsIndicator:](v5, "setAlwaysDisplayNotificationsIndicator:", [v37 BOOLValue]);

    v38 = [representationCopy objectForKey:@"SuppressDelayForForwardedNotifications"];
    -[UNCNotificationCategoryRecord setSuppressDelayForForwardedNotifications:](v5, "setSuppressDelayForForwardedNotifications:", [v38 BOOLValue]);

    v39 = [representationCopy objectForKey:@"SuppressDismissActionInCarPlay"];
    -[UNCNotificationCategoryRecord setSuppressDismissActionInCarPlay:](v5, "setSuppressDismissActionInCarPlay:", [v39 BOOLValue]);

    v40 = [representationCopy objectForKey:@"SuppressPresentationInAmbient"];
    -[UNCNotificationCategoryRecord setSuppressPresentationInAmbient:](v5, "setSuppressPresentationInAmbient:", [v40 BOOLValue]);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  actions = [(UNCNotificationCategoryRecord *)self actions];
  v5 = [actions bs_map:UNCNotificationActionRecordToDictionary];
  [dictionary unc_safeSetObject:v5 forKey:@"Actions"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord hasCustomDismissAction](self, "hasCustomDismissAction")}];
  [dictionary unc_safeSetObject:v6 forKey:@"HasCustomDismissAction"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord hasFollowActivityAction](self, "hasFollowActivityAction")}];
  [dictionary unc_safeSetObject:v7 forKey:@"HasFollowActivityAction"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord hasCustomSilenceAction](self, "hasCustomSilenceAction")}];
  [dictionary unc_safeSetObject:v8 forKey:@"HasCustomSilenceAction"];

  identifier = [(UNCNotificationCategoryRecord *)self identifier];
  [dictionary unc_safeSetObject:identifier forKey:@"Identifier"];

  intentIdentifiers = [(UNCNotificationCategoryRecord *)self intentIdentifiers];
  [dictionary unc_safeSetObject:intentIdentifiers forKey:@"IntentIdentifiers"];

  minimalActions = [(UNCNotificationCategoryRecord *)self minimalActions];
  v12 = [minimalActions bs_map:UNCNotificationActionRecordToDictionary];
  [dictionary unc_safeSetObject:v12 forKey:@"MinimalActions"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord shouldAllowInCarPlay](self, "shouldAllowInCarPlay")}];
  [dictionary unc_safeSetObject:v13 forKey:@"ShouldAllowInCarPlay"];

  privateBody = [(UNCNotificationCategoryRecord *)self privateBody];
  bs_secureEncoded = [privateBody bs_secureEncoded];
  [dictionary unc_safeSetObject:bs_secureEncoded forKey:@"PrivateBody"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord privacyOptionShowTitle](self, "privacyOptionShowTitle")}];
  [dictionary unc_safeSetObject:v16 forKey:@"PrivacyOptionShowTitle"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord privacyOptionShowSubtitle](self, "privacyOptionShowSubtitle")}];
  [dictionary unc_safeSetObject:v17 forKey:@"PrivacyOptionShowSubtitle"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord preventAutomaticRemovalFromRecent](self, "preventAutomaticRemovalFromRecent")}];
  [dictionary unc_safeSetObject:v18 forKey:@"PreventAutomaticRemovalFromRecent"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord revealAdditionalContentWhenPresented](self, "revealAdditionalContentWhenPresented")}];
  [dictionary unc_safeSetObject:v19 forKey:@"RevealAdditionalContentOnPresentation"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord preventAutomaticLock](self, "preventAutomaticLock")}];
  [dictionary unc_safeSetObject:v20 forKey:@"PreventAutomaticLock"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord preventDismissWhenClosed](self, "preventDismissWhenClosed")}];
  [dictionary unc_safeSetObject:v21 forKey:@"PreventDismissWhenClosed"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord presentFullScreenAlertOverList](self, "presentFullScreenAlertOverList")}];
  [dictionary unc_safeSetObject:v22 forKey:@"PresentFullScreenAlertOverList"];

  summaryFormat = [(UNCNotificationCategoryRecord *)self summaryFormat];
  bs_secureEncoded2 = [summaryFormat bs_secureEncoded];
  [dictionary unc_safeSetObject:bs_secureEncoded2 forKey:@"SummaryFormat"];

  backgroundStyle = [(UNCNotificationCategoryRecord *)self backgroundStyle];
  [dictionary unc_safeSetObject:backgroundStyle forKey:@"BackgroundStyle"];

  listPriority = [(UNCNotificationCategoryRecord *)self listPriority];
  [dictionary unc_safeSetObject:listPriority forKey:@"ListPriority"];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord shouldAllowActionsInCarPlay](self, "shouldAllowActionsInCarPlay")}];
  [dictionary unc_safeSetObject:v27 forKey:@"ShouldAllowActionsInCarPlay"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord shouldAllowPersistentBannersInCarPlay](self, "shouldAllowPersistentBannersInCarPlay")}];
  [dictionary unc_safeSetObject:v28 forKey:@"ShouldAllowPersistentBannersInCarPlay"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord playMediaWhenRaised](self, "playMediaWhenRaised")}];
  [dictionary unc_safeSetObject:v29 forKey:@"PlayMediaWhenRaised"];

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord preventClearFromList](self, "preventClearFromList")}];
  [dictionary unc_safeSetObject:v30 forKey:@"PreventClearFromList"];

  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord alwaysDisplayNotificationsIndicator](self, "alwaysDisplayNotificationsIndicator")}];
  [dictionary unc_safeSetObject:v31 forKey:@"AlwaysDisplayNotificationsIndicator"];

  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord suppressDelayForForwardedNotifications](self, "suppressDelayForForwardedNotifications")}];
  [dictionary unc_safeSetObject:v32 forKey:@"SuppressDelayForForwardedNotifications"];

  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord suppressDismissActionInCarPlay](self, "suppressDismissActionInCarPlay")}];
  [dictionary unc_safeSetObject:v33 forKey:@"SuppressDismissActionInCarPlay"];

  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord suppressPresentationInAmbient](self, "suppressPresentationInAmbient")}];
  [dictionary unc_safeSetObject:v34 forKey:@"SuppressPresentationInAmbient"];

  return dictionary;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  identifier = [(UNCNotificationCategoryRecord *)self identifier];
  v5 = [v3 appendObject:identifier withName:@"Identifier"];

  v6 = [v3 appendBool:-[UNCNotificationCategoryRecord hasCustomDismissAction](self withName:{"hasCustomDismissAction"), @"HasCustomDismissAction"}];
  v7 = [v3 appendBool:-[UNCNotificationCategoryRecord hasFollowActivityAction](self withName:{"hasFollowActivityAction"), @"HasFollowActivityAction"}];
  v8 = [v3 appendBool:-[UNCNotificationCategoryRecord hasCustomSilenceAction](self withName:{"hasCustomSilenceAction"), @"HasCustomSilenceAction"}];
  actions = [(UNCNotificationCategoryRecord *)self actions];
  v10 = [v3 appendObject:actions withName:@"Actions"];

  listPriority = [(UNCNotificationCategoryRecord *)self listPriority];
  v12 = [v3 appendObject:listPriority withName:@"ListPriority"];

  minimalActions = [(UNCNotificationCategoryRecord *)self minimalActions];
  v14 = [v3 appendObject:minimalActions withName:@"MinimalActions"];

  intentIdentifiers = [(UNCNotificationCategoryRecord *)self intentIdentifiers];
  v16 = [v3 appendObject:intentIdentifiers withName:@"IntentIdentifiers"];

  v17 = [v3 appendBool:-[UNCNotificationCategoryRecord shouldAllowInCarPlay](self withName:{"shouldAllowInCarPlay"), @"ShouldAllowInCarPlay"}];
  privateBody = [(UNCNotificationCategoryRecord *)self privateBody];
  v19 = [v3 appendObject:privateBody withName:@"PrivateBody"];

  v20 = [v3 appendBool:-[UNCNotificationCategoryRecord privacyOptionShowTitle](self withName:{"privacyOptionShowTitle"), @"PrivacyOptionShowTitle"}];
  v21 = [v3 appendBool:-[UNCNotificationCategoryRecord privacyOptionShowSubtitle](self withName:{"privacyOptionShowSubtitle"), @"PrivacyOptionShowSubtitle"}];
  v22 = [v3 appendBool:-[UNCNotificationCategoryRecord preventAutomaticRemovalFromRecent](self withName:{"preventAutomaticRemovalFromRecent"), @"PreventAutomaticRemovalFromRecent"}];
  v23 = [v3 appendBool:-[UNCNotificationCategoryRecord revealAdditionalContentWhenPresented](self withName:{"revealAdditionalContentWhenPresented"), @"RevealAdditionalContentOnPresentation"}];
  v24 = [v3 appendBool:-[UNCNotificationCategoryRecord preventAutomaticLock](self withName:{"preventAutomaticLock"), @"PreventAutomaticLock"}];
  v25 = [v3 appendBool:-[UNCNotificationCategoryRecord presentFullScreenAlertOverList](self withName:{"presentFullScreenAlertOverList"), @"PresentFullScreenAlertOverList"}];
  v26 = [v3 appendBool:-[UNCNotificationCategoryRecord preventDismissWhenClosed](self withName:{"preventDismissWhenClosed"), @"PreventDismissWhenClosed"}];
  summaryFormat = [(UNCNotificationCategoryRecord *)self summaryFormat];
  v28 = [v3 appendObject:summaryFormat withName:@"SummaryFormat"];

  backgroundStyle = [(UNCNotificationCategoryRecord *)self backgroundStyle];
  v30 = [v3 appendObject:backgroundStyle withName:@"BackgroundStyle"];

  v31 = [v3 appendBool:-[UNCNotificationCategoryRecord shouldAllowActionsInCarPlay](self withName:{"shouldAllowActionsInCarPlay"), @"ShouldAllowActionsInCarPlay"}];
  v32 = [v3 appendBool:-[UNCNotificationCategoryRecord shouldAllowPersistentBannersInCarPlay](self withName:{"shouldAllowPersistentBannersInCarPlay"), @"ShouldAllowPersistentBannersInCarPlay"}];
  v33 = [v3 appendBool:-[UNCNotificationCategoryRecord playMediaWhenRaised](self withName:{"playMediaWhenRaised"), @"PlayMediaWhenRaised"}];
  v34 = [v3 appendBool:-[UNCNotificationCategoryRecord preventClearFromList](self withName:{"preventClearFromList"), @"PreventClearFromList"}];
  v35 = [v3 appendBool:-[UNCNotificationCategoryRecord alwaysDisplayNotificationsIndicator](self withName:{"alwaysDisplayNotificationsIndicator"), @"AlwaysDisplayNotificationsIndicator"}];
  v36 = [v3 appendBool:-[UNCNotificationCategoryRecord suppressDelayForForwardedNotifications](self withName:{"suppressDelayForForwardedNotifications"), @"SuppressDelayForForwardedNotifications"}];
  v37 = [v3 appendBool:-[UNCNotificationCategoryRecord suppressDismissActionInCarPlay](self withName:{"suppressDismissActionInCarPlay"), @"SuppressDismissActionInCarPlay"}];
  v38 = [v3 appendBool:-[UNCNotificationCategoryRecord suppressPresentationInAmbient](self withName:{"suppressPresentationInAmbient"), @"SuppressPresentationInAmbient"}];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (!equalCopy)
  {
    goto LABEL_27;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_27;
  }

  actions = [(UNCNotificationCategoryRecord *)self actions];
  actions2 = [equalCopy actions];
  v8 = UNEqualObjects();

  if (!v8)
  {
    goto LABEL_27;
  }

  hasCustomDismissAction = [(UNCNotificationCategoryRecord *)self hasCustomDismissAction];
  if (hasCustomDismissAction != [equalCopy hasCustomDismissAction])
  {
    goto LABEL_27;
  }

  hasFollowActivityAction = [(UNCNotificationCategoryRecord *)self hasFollowActivityAction];
  if (hasFollowActivityAction != [equalCopy hasFollowActivityAction])
  {
    goto LABEL_27;
  }

  hasCustomSilenceAction = [(UNCNotificationCategoryRecord *)self hasCustomSilenceAction];
  if (hasCustomSilenceAction != [equalCopy hasCustomSilenceAction])
  {
    goto LABEL_27;
  }

  identifier = [(UNCNotificationCategoryRecord *)self identifier];
  identifier2 = [equalCopy identifier];
  v14 = UNEqualObjects();

  if (!v14)
  {
    goto LABEL_27;
  }

  intentIdentifiers = [(UNCNotificationCategoryRecord *)self intentIdentifiers];
  intentIdentifiers2 = [equalCopy intentIdentifiers];
  v17 = UNEqualObjects();

  if (!v17)
  {
    goto LABEL_27;
  }

  listPriority = [(UNCNotificationCategoryRecord *)self listPriority];
  listPriority2 = [equalCopy listPriority];
  v20 = UNEqualObjects();

  if (!v20)
  {
    goto LABEL_27;
  }

  minimalActions = [(UNCNotificationCategoryRecord *)self minimalActions];
  minimalActions2 = [equalCopy minimalActions];
  v23 = UNEqualObjects();

  if (!v23)
  {
    goto LABEL_27;
  }

  shouldAllowInCarPlay = [(UNCNotificationCategoryRecord *)self shouldAllowInCarPlay];
  if (shouldAllowInCarPlay != [equalCopy shouldAllowInCarPlay])
  {
    goto LABEL_27;
  }

  privateBody = [(UNCNotificationCategoryRecord *)self privateBody];
  privateBody2 = [equalCopy privateBody];
  v27 = UNEqualObjects();

  if (!v27)
  {
    goto LABEL_27;
  }

  privacyOptionShowTitle = [(UNCNotificationCategoryRecord *)self privacyOptionShowTitle];
  if (privacyOptionShowTitle != [equalCopy privacyOptionShowTitle])
  {
    goto LABEL_27;
  }

  privacyOptionShowSubtitle = [(UNCNotificationCategoryRecord *)self privacyOptionShowSubtitle];
  if (privacyOptionShowSubtitle != [equalCopy privacyOptionShowSubtitle])
  {
    goto LABEL_27;
  }

  preventAutomaticRemovalFromRecent = [(UNCNotificationCategoryRecord *)self preventAutomaticRemovalFromRecent];
  if (preventAutomaticRemovalFromRecent != [equalCopy preventAutomaticRemovalFromRecent])
  {
    goto LABEL_27;
  }

  revealAdditionalContentWhenPresented = [(UNCNotificationCategoryRecord *)self revealAdditionalContentWhenPresented];
  if (revealAdditionalContentWhenPresented != [equalCopy revealAdditionalContentWhenPresented])
  {
    goto LABEL_27;
  }

  preventDismissWhenClosed = [(UNCNotificationCategoryRecord *)self preventDismissWhenClosed];
  if (preventDismissWhenClosed != [equalCopy preventDismissWhenClosed])
  {
    goto LABEL_27;
  }

  summaryFormat = [(UNCNotificationCategoryRecord *)self summaryFormat];
  summaryFormat2 = [equalCopy summaryFormat];
  v35 = UNEqualObjects();

  if (!v35)
  {
    goto LABEL_27;
  }

  backgroundStyle = [(UNCNotificationCategoryRecord *)self backgroundStyle];
  backgroundStyle2 = [equalCopy backgroundStyle];
  v38 = UNEqualObjects();

  if (!v38)
  {
    goto LABEL_27;
  }

  shouldAllowActionsInCarPlay = [(UNCNotificationCategoryRecord *)self shouldAllowActionsInCarPlay];
  if (shouldAllowActionsInCarPlay == [equalCopy shouldAllowActionsInCarPlay] && (v40 = -[UNCNotificationCategoryRecord shouldAllowPersistentBannersInCarPlay](self, "shouldAllowPersistentBannersInCarPlay"), v40 == objc_msgSend(equalCopy, "shouldAllowPersistentBannersInCarPlay")) && (v41 = -[UNCNotificationCategoryRecord playMediaWhenRaised](self, "playMediaWhenRaised"), v41 == objc_msgSend(equalCopy, "playMediaWhenRaised")) && (v42 = -[UNCNotificationCategoryRecord preventClearFromList](self, "preventClearFromList"), v42 == objc_msgSend(equalCopy, "preventClearFromList")) && (v43 = -[UNCNotificationCategoryRecord alwaysDisplayNotificationsIndicator](self, "alwaysDisplayNotificationsIndicator"), v43 == objc_msgSend(equalCopy, "alwaysDisplayNotificationsIndicator")) && (v44 = -[UNCNotificationCategoryRecord suppressDelayForForwardedNotifications](self, "suppressDelayForForwardedNotifications"), v44 == objc_msgSend(equalCopy, "suppressDelayForForwardedNotifications")) && (v45 = -[UNCNotificationCategoryRecord suppressDismissActionInCarPlay](self, "suppressDismissActionInCarPlay"), v45 == objc_msgSend(equalCopy, "suppressDismissActionInCarPlay")))
  {
    suppressPresentationInAmbient = [(UNCNotificationCategoryRecord *)self suppressPresentationInAmbient];
    v46 = suppressPresentationInAmbient ^ [equalCopy suppressPresentationInAmbient] ^ 1;
  }

  else
  {
LABEL_27:
    LOBYTE(v46) = 0;
  }

  return v46;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(UNCNotificationCategoryRecord *)self dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"dictionary"];
}

- (UNCNotificationCategoryRecord)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:7];
  v7 = [v4 setWithArray:{v6, v12, v13, v14, v15, v16, v17}];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"dictionary"];

  v9 = [[UNCNotificationCategoryRecord alloc] initWithDictionaryRepresentation:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end