@interface UNCNotificationCategoryRecord
- (BOOL)isEqual:(id)a3;
- (UNCNotificationCategoryRecord)initWithCoder:(id)a3;
- (UNCNotificationCategoryRecord)initWithDictionaryRepresentation:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNCNotificationCategoryRecord

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendBool:{-[UNCNotificationCategoryRecord hasCustomDismissAction](self, "hasCustomDismissAction")}];
  v5 = [v3 appendBool:{-[UNCNotificationCategoryRecord hasFollowActivityAction](self, "hasFollowActivityAction")}];
  v6 = [v3 appendBool:{-[UNCNotificationCategoryRecord hasCustomSilenceAction](self, "hasCustomSilenceAction")}];
  v7 = [v3 appendBool:{-[UNCNotificationCategoryRecord shouldAllowInCarPlay](self, "shouldAllowInCarPlay")}];
  v8 = [v3 appendBool:{-[UNCNotificationCategoryRecord privacyOptionShowTitle](self, "privacyOptionShowTitle")}];
  v9 = [v3 appendBool:{-[UNCNotificationCategoryRecord privacyOptionShowSubtitle](self, "privacyOptionShowSubtitle")}];
  v10 = [(UNCNotificationCategoryRecord *)self listPriority];
  v11 = [v3 appendObject:v10];

  v12 = [v3 appendBool:{-[UNCNotificationCategoryRecord preventAutomaticRemovalFromRecent](self, "preventAutomaticRemovalFromRecent")}];
  v13 = [v3 appendBool:{-[UNCNotificationCategoryRecord revealAdditionalContentWhenPresented](self, "revealAdditionalContentWhenPresented")}];
  v14 = [v3 appendBool:{-[UNCNotificationCategoryRecord preventAutomaticLock](self, "preventAutomaticLock")}];
  v15 = [v3 appendBool:{-[UNCNotificationCategoryRecord preventDismissWhenClosed](self, "preventDismissWhenClosed")}];
  v16 = [v3 appendBool:{-[UNCNotificationCategoryRecord presentFullScreenAlertOverList](self, "presentFullScreenAlertOverList")}];
  v17 = [v3 appendBool:{-[UNCNotificationCategoryRecord shouldAllowActionsInCarPlay](self, "shouldAllowActionsInCarPlay")}];
  v18 = [v3 appendBool:{-[UNCNotificationCategoryRecord shouldAllowPersistentBannersInCarPlay](self, "shouldAllowPersistentBannersInCarPlay")}];
  v19 = [(UNCNotificationCategoryRecord *)self actions];
  v20 = [v3 appendObject:v19];

  v21 = [(UNCNotificationCategoryRecord *)self identifier];
  v22 = [v3 appendObject:v21];

  v23 = [(UNCNotificationCategoryRecord *)self intentIdentifiers];
  v24 = [v3 appendObject:v23];

  v25 = [(UNCNotificationCategoryRecord *)self minimalActions];
  v26 = [v3 appendObject:v25];

  v27 = [(UNCNotificationCategoryRecord *)self privateBody];
  v28 = [v3 appendObject:v27];

  v29 = [(UNCNotificationCategoryRecord *)self summaryFormat];
  v30 = [v3 appendObject:v29];

  v31 = [(UNCNotificationCategoryRecord *)self backgroundStyle];
  v32 = [v3 appendObject:v31];

  v33 = [v3 appendBool:{-[UNCNotificationCategoryRecord playMediaWhenRaised](self, "playMediaWhenRaised")}];
  v34 = [v3 appendBool:{-[UNCNotificationCategoryRecord preventClearFromList](self, "preventClearFromList")}];
  v35 = [v3 appendBool:{-[UNCNotificationCategoryRecord alwaysDisplayNotificationsIndicator](self, "alwaysDisplayNotificationsIndicator")}];
  v36 = [v3 appendBool:{-[UNCNotificationCategoryRecord suppressDelayForForwardedNotifications](self, "suppressDelayForForwardedNotifications")}];
  v37 = [v3 appendBool:{-[UNCNotificationCategoryRecord suppressDismissActionInCarPlay](self, "suppressDismissActionInCarPlay")}];
  v38 = [v3 appendBool:{-[UNCNotificationCategoryRecord suppressPresentationInAmbient](self, "suppressPresentationInAmbient")}];
  v39 = [v3 hash];

  return v39;
}

- (UNCNotificationCategoryRecord)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = UNCNotificationCategoryRecord;
  v5 = [(UNCNotificationCategoryRecord *)&v42 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"Actions"];
    v7 = [v6 bs_map:UNSDictionaryToNotificationActionRecord];
    [(UNCNotificationCategoryRecord *)v5 setActions:v7];

    v8 = [v4 objectForKey:@"BackgroundStyle"];
    [(UNCNotificationCategoryRecord *)v5 setBackgroundStyle:v8];

    v9 = [v4 objectForKey:@"HasCustomDismissAction"];
    -[UNCNotificationCategoryRecord setHasCustomDismissAction:](v5, "setHasCustomDismissAction:", [v9 BOOLValue]);

    v10 = [v4 objectForKey:@"HasFollowActivityAction"];
    -[UNCNotificationCategoryRecord setHasFollowActivityAction:](v5, "setHasFollowActivityAction:", [v10 BOOLValue]);

    v11 = [v4 objectForKey:@"HasCustomSilenceAction"];
    -[UNCNotificationCategoryRecord setHasCustomSilenceAction:](v5, "setHasCustomSilenceAction:", [v11 BOOLValue]);

    v12 = [v4 objectForKey:@"Identifier"];
    [(UNCNotificationCategoryRecord *)v5 setIdentifier:v12];

    v13 = [v4 objectForKey:@"IntentIdentifiers"];
    [(UNCNotificationCategoryRecord *)v5 setIntentIdentifiers:v13];

    v14 = [v4 objectForKey:@"ListPriority"];
    [(UNCNotificationCategoryRecord *)v5 setListPriority:v14];

    v15 = [v4 objectForKey:@"MinimalActions"];
    v16 = [v15 bs_map:UNSDictionaryToNotificationActionRecord];
    [(UNCNotificationCategoryRecord *)v5 setMinimalActions:v16];

    v17 = [v4 objectForKey:@"ShouldAllowInCarPlay"];
    -[UNCNotificationCategoryRecord setShouldAllowInCarPlay:](v5, "setShouldAllowInCarPlay:", [v17 BOOLValue]);

    v18 = MEMORY[0x1E696AEC0];
    v19 = [v4 objectForKey:@"PrivateBody"];
    v20 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v21 = [v18 bs_secureDecodedFromData:v19 withAdditionalClasses:v20];
    [(UNCNotificationCategoryRecord *)v5 setPrivateBody:v21];

    v22 = [v4 objectForKey:@"PrivacyOptionShowTitle"];
    -[UNCNotificationCategoryRecord setPrivacyOptionShowTitle:](v5, "setPrivacyOptionShowTitle:", [v22 BOOLValue]);

    v23 = [v4 objectForKey:@"PrivacyOptionShowSubtitle"];
    -[UNCNotificationCategoryRecord setPrivacyOptionShowSubtitle:](v5, "setPrivacyOptionShowSubtitle:", [v23 BOOLValue]);

    v24 = [v4 objectForKey:@"PreventAutomaticRemovalFromRecent"];
    -[UNCNotificationCategoryRecord setPreventAutomaticRemovalFromRecent:](v5, "setPreventAutomaticRemovalFromRecent:", [v24 BOOLValue]);

    v25 = [v4 objectForKey:@"RevealAdditionalContentOnPresentation"];
    -[UNCNotificationCategoryRecord setRevealAdditionalContentWhenPresented:](v5, "setRevealAdditionalContentWhenPresented:", [v25 BOOLValue]);

    v26 = [v4 objectForKey:@"PreventAutomaticLock"];
    -[UNCNotificationCategoryRecord setPreventAutomaticLock:](v5, "setPreventAutomaticLock:", [v26 BOOLValue]);

    v27 = [v4 objectForKey:@"PreventDismissWhenClosed"];
    -[UNCNotificationCategoryRecord setPreventDismissWhenClosed:](v5, "setPreventDismissWhenClosed:", [v27 BOOLValue]);

    v28 = [v4 objectForKey:@"PresentFullScreenAlertOverList"];
    -[UNCNotificationCategoryRecord setPresentFullScreenAlertOverList:](v5, "setPresentFullScreenAlertOverList:", [v28 BOOLValue]);

    v29 = MEMORY[0x1E696AEC0];
    v30 = [v4 objectForKey:@"SummaryFormat"];
    v31 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v32 = [v29 bs_secureDecodedFromData:v30 withAdditionalClasses:v31];
    [(UNCNotificationCategoryRecord *)v5 setSummaryFormat:v32];

    v33 = [v4 objectForKey:@"ShouldAllowActionsInCarPlay"];
    -[UNCNotificationCategoryRecord setShouldAllowActionsInCarPlay:](v5, "setShouldAllowActionsInCarPlay:", [v33 BOOLValue]);

    v34 = [v4 objectForKey:@"ShouldAllowPersistentBannersInCarPlay"];
    -[UNCNotificationCategoryRecord setShouldAllowPersistentBannersInCarPlay:](v5, "setShouldAllowPersistentBannersInCarPlay:", [v34 BOOLValue]);

    v35 = [v4 objectForKey:@"PlayMediaWhenRaised"];
    -[UNCNotificationCategoryRecord setPlayMediaWhenRaised:](v5, "setPlayMediaWhenRaised:", [v35 BOOLValue]);

    v36 = [v4 objectForKey:@"PreventClearFromList"];
    -[UNCNotificationCategoryRecord setPreventClearFromList:](v5, "setPreventClearFromList:", [v36 BOOLValue]);

    v37 = [v4 objectForKey:@"AlwaysDisplayNotificationsIndicator"];
    -[UNCNotificationCategoryRecord setAlwaysDisplayNotificationsIndicator:](v5, "setAlwaysDisplayNotificationsIndicator:", [v37 BOOLValue]);

    v38 = [v4 objectForKey:@"SuppressDelayForForwardedNotifications"];
    -[UNCNotificationCategoryRecord setSuppressDelayForForwardedNotifications:](v5, "setSuppressDelayForForwardedNotifications:", [v38 BOOLValue]);

    v39 = [v4 objectForKey:@"SuppressDismissActionInCarPlay"];
    -[UNCNotificationCategoryRecord setSuppressDismissActionInCarPlay:](v5, "setSuppressDismissActionInCarPlay:", [v39 BOOLValue]);

    v40 = [v4 objectForKey:@"SuppressPresentationInAmbient"];
    -[UNCNotificationCategoryRecord setSuppressPresentationInAmbient:](v5, "setSuppressPresentationInAmbient:", [v40 BOOLValue]);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(UNCNotificationCategoryRecord *)self actions];
  v5 = [v4 bs_map:UNCNotificationActionRecordToDictionary];
  [v3 unc_safeSetObject:v5 forKey:@"Actions"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord hasCustomDismissAction](self, "hasCustomDismissAction")}];
  [v3 unc_safeSetObject:v6 forKey:@"HasCustomDismissAction"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord hasFollowActivityAction](self, "hasFollowActivityAction")}];
  [v3 unc_safeSetObject:v7 forKey:@"HasFollowActivityAction"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord hasCustomSilenceAction](self, "hasCustomSilenceAction")}];
  [v3 unc_safeSetObject:v8 forKey:@"HasCustomSilenceAction"];

  v9 = [(UNCNotificationCategoryRecord *)self identifier];
  [v3 unc_safeSetObject:v9 forKey:@"Identifier"];

  v10 = [(UNCNotificationCategoryRecord *)self intentIdentifiers];
  [v3 unc_safeSetObject:v10 forKey:@"IntentIdentifiers"];

  v11 = [(UNCNotificationCategoryRecord *)self minimalActions];
  v12 = [v11 bs_map:UNCNotificationActionRecordToDictionary];
  [v3 unc_safeSetObject:v12 forKey:@"MinimalActions"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord shouldAllowInCarPlay](self, "shouldAllowInCarPlay")}];
  [v3 unc_safeSetObject:v13 forKey:@"ShouldAllowInCarPlay"];

  v14 = [(UNCNotificationCategoryRecord *)self privateBody];
  v15 = [v14 bs_secureEncoded];
  [v3 unc_safeSetObject:v15 forKey:@"PrivateBody"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord privacyOptionShowTitle](self, "privacyOptionShowTitle")}];
  [v3 unc_safeSetObject:v16 forKey:@"PrivacyOptionShowTitle"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord privacyOptionShowSubtitle](self, "privacyOptionShowSubtitle")}];
  [v3 unc_safeSetObject:v17 forKey:@"PrivacyOptionShowSubtitle"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord preventAutomaticRemovalFromRecent](self, "preventAutomaticRemovalFromRecent")}];
  [v3 unc_safeSetObject:v18 forKey:@"PreventAutomaticRemovalFromRecent"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord revealAdditionalContentWhenPresented](self, "revealAdditionalContentWhenPresented")}];
  [v3 unc_safeSetObject:v19 forKey:@"RevealAdditionalContentOnPresentation"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord preventAutomaticLock](self, "preventAutomaticLock")}];
  [v3 unc_safeSetObject:v20 forKey:@"PreventAutomaticLock"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord preventDismissWhenClosed](self, "preventDismissWhenClosed")}];
  [v3 unc_safeSetObject:v21 forKey:@"PreventDismissWhenClosed"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord presentFullScreenAlertOverList](self, "presentFullScreenAlertOverList")}];
  [v3 unc_safeSetObject:v22 forKey:@"PresentFullScreenAlertOverList"];

  v23 = [(UNCNotificationCategoryRecord *)self summaryFormat];
  v24 = [v23 bs_secureEncoded];
  [v3 unc_safeSetObject:v24 forKey:@"SummaryFormat"];

  v25 = [(UNCNotificationCategoryRecord *)self backgroundStyle];
  [v3 unc_safeSetObject:v25 forKey:@"BackgroundStyle"];

  v26 = [(UNCNotificationCategoryRecord *)self listPriority];
  [v3 unc_safeSetObject:v26 forKey:@"ListPriority"];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord shouldAllowActionsInCarPlay](self, "shouldAllowActionsInCarPlay")}];
  [v3 unc_safeSetObject:v27 forKey:@"ShouldAllowActionsInCarPlay"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord shouldAllowPersistentBannersInCarPlay](self, "shouldAllowPersistentBannersInCarPlay")}];
  [v3 unc_safeSetObject:v28 forKey:@"ShouldAllowPersistentBannersInCarPlay"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord playMediaWhenRaised](self, "playMediaWhenRaised")}];
  [v3 unc_safeSetObject:v29 forKey:@"PlayMediaWhenRaised"];

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord preventClearFromList](self, "preventClearFromList")}];
  [v3 unc_safeSetObject:v30 forKey:@"PreventClearFromList"];

  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord alwaysDisplayNotificationsIndicator](self, "alwaysDisplayNotificationsIndicator")}];
  [v3 unc_safeSetObject:v31 forKey:@"AlwaysDisplayNotificationsIndicator"];

  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord suppressDelayForForwardedNotifications](self, "suppressDelayForForwardedNotifications")}];
  [v3 unc_safeSetObject:v32 forKey:@"SuppressDelayForForwardedNotifications"];

  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord suppressDismissActionInCarPlay](self, "suppressDismissActionInCarPlay")}];
  [v3 unc_safeSetObject:v33 forKey:@"SuppressDismissActionInCarPlay"];

  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCNotificationCategoryRecord suppressPresentationInAmbient](self, "suppressPresentationInAmbient")}];
  [v3 unc_safeSetObject:v34 forKey:@"SuppressPresentationInAmbient"];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(UNCNotificationCategoryRecord *)self identifier];
  v5 = [v3 appendObject:v4 withName:@"Identifier"];

  v6 = [v3 appendBool:-[UNCNotificationCategoryRecord hasCustomDismissAction](self withName:{"hasCustomDismissAction"), @"HasCustomDismissAction"}];
  v7 = [v3 appendBool:-[UNCNotificationCategoryRecord hasFollowActivityAction](self withName:{"hasFollowActivityAction"), @"HasFollowActivityAction"}];
  v8 = [v3 appendBool:-[UNCNotificationCategoryRecord hasCustomSilenceAction](self withName:{"hasCustomSilenceAction"), @"HasCustomSilenceAction"}];
  v9 = [(UNCNotificationCategoryRecord *)self actions];
  v10 = [v3 appendObject:v9 withName:@"Actions"];

  v11 = [(UNCNotificationCategoryRecord *)self listPriority];
  v12 = [v3 appendObject:v11 withName:@"ListPriority"];

  v13 = [(UNCNotificationCategoryRecord *)self minimalActions];
  v14 = [v3 appendObject:v13 withName:@"MinimalActions"];

  v15 = [(UNCNotificationCategoryRecord *)self intentIdentifiers];
  v16 = [v3 appendObject:v15 withName:@"IntentIdentifiers"];

  v17 = [v3 appendBool:-[UNCNotificationCategoryRecord shouldAllowInCarPlay](self withName:{"shouldAllowInCarPlay"), @"ShouldAllowInCarPlay"}];
  v18 = [(UNCNotificationCategoryRecord *)self privateBody];
  v19 = [v3 appendObject:v18 withName:@"PrivateBody"];

  v20 = [v3 appendBool:-[UNCNotificationCategoryRecord privacyOptionShowTitle](self withName:{"privacyOptionShowTitle"), @"PrivacyOptionShowTitle"}];
  v21 = [v3 appendBool:-[UNCNotificationCategoryRecord privacyOptionShowSubtitle](self withName:{"privacyOptionShowSubtitle"), @"PrivacyOptionShowSubtitle"}];
  v22 = [v3 appendBool:-[UNCNotificationCategoryRecord preventAutomaticRemovalFromRecent](self withName:{"preventAutomaticRemovalFromRecent"), @"PreventAutomaticRemovalFromRecent"}];
  v23 = [v3 appendBool:-[UNCNotificationCategoryRecord revealAdditionalContentWhenPresented](self withName:{"revealAdditionalContentWhenPresented"), @"RevealAdditionalContentOnPresentation"}];
  v24 = [v3 appendBool:-[UNCNotificationCategoryRecord preventAutomaticLock](self withName:{"preventAutomaticLock"), @"PreventAutomaticLock"}];
  v25 = [v3 appendBool:-[UNCNotificationCategoryRecord presentFullScreenAlertOverList](self withName:{"presentFullScreenAlertOverList"), @"PresentFullScreenAlertOverList"}];
  v26 = [v3 appendBool:-[UNCNotificationCategoryRecord preventDismissWhenClosed](self withName:{"preventDismissWhenClosed"), @"PreventDismissWhenClosed"}];
  v27 = [(UNCNotificationCategoryRecord *)self summaryFormat];
  v28 = [v3 appendObject:v27 withName:@"SummaryFormat"];

  v29 = [(UNCNotificationCategoryRecord *)self backgroundStyle];
  v30 = [v3 appendObject:v29 withName:@"BackgroundStyle"];

  v31 = [v3 appendBool:-[UNCNotificationCategoryRecord shouldAllowActionsInCarPlay](self withName:{"shouldAllowActionsInCarPlay"), @"ShouldAllowActionsInCarPlay"}];
  v32 = [v3 appendBool:-[UNCNotificationCategoryRecord shouldAllowPersistentBannersInCarPlay](self withName:{"shouldAllowPersistentBannersInCarPlay"), @"ShouldAllowPersistentBannersInCarPlay"}];
  v33 = [v3 appendBool:-[UNCNotificationCategoryRecord playMediaWhenRaised](self withName:{"playMediaWhenRaised"), @"PlayMediaWhenRaised"}];
  v34 = [v3 appendBool:-[UNCNotificationCategoryRecord preventClearFromList](self withName:{"preventClearFromList"), @"PreventClearFromList"}];
  v35 = [v3 appendBool:-[UNCNotificationCategoryRecord alwaysDisplayNotificationsIndicator](self withName:{"alwaysDisplayNotificationsIndicator"), @"AlwaysDisplayNotificationsIndicator"}];
  v36 = [v3 appendBool:-[UNCNotificationCategoryRecord suppressDelayForForwardedNotifications](self withName:{"suppressDelayForForwardedNotifications"), @"SuppressDelayForForwardedNotifications"}];
  v37 = [v3 appendBool:-[UNCNotificationCategoryRecord suppressDismissActionInCarPlay](self withName:{"suppressDismissActionInCarPlay"), @"SuppressDismissActionInCarPlay"}];
  v38 = [v3 appendBool:-[UNCNotificationCategoryRecord suppressPresentationInAmbient](self withName:{"suppressPresentationInAmbient"), @"SuppressPresentationInAmbient"}];
  v39 = [v3 build];

  return v39;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_27;
  }

  v6 = [(UNCNotificationCategoryRecord *)self actions];
  v7 = [v4 actions];
  v8 = UNEqualObjects();

  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = [(UNCNotificationCategoryRecord *)self hasCustomDismissAction];
  if (v9 != [v4 hasCustomDismissAction])
  {
    goto LABEL_27;
  }

  v10 = [(UNCNotificationCategoryRecord *)self hasFollowActivityAction];
  if (v10 != [v4 hasFollowActivityAction])
  {
    goto LABEL_27;
  }

  v11 = [(UNCNotificationCategoryRecord *)self hasCustomSilenceAction];
  if (v11 != [v4 hasCustomSilenceAction])
  {
    goto LABEL_27;
  }

  v12 = [(UNCNotificationCategoryRecord *)self identifier];
  v13 = [v4 identifier];
  v14 = UNEqualObjects();

  if (!v14)
  {
    goto LABEL_27;
  }

  v15 = [(UNCNotificationCategoryRecord *)self intentIdentifiers];
  v16 = [v4 intentIdentifiers];
  v17 = UNEqualObjects();

  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = [(UNCNotificationCategoryRecord *)self listPriority];
  v19 = [v4 listPriority];
  v20 = UNEqualObjects();

  if (!v20)
  {
    goto LABEL_27;
  }

  v21 = [(UNCNotificationCategoryRecord *)self minimalActions];
  v22 = [v4 minimalActions];
  v23 = UNEqualObjects();

  if (!v23)
  {
    goto LABEL_27;
  }

  v24 = [(UNCNotificationCategoryRecord *)self shouldAllowInCarPlay];
  if (v24 != [v4 shouldAllowInCarPlay])
  {
    goto LABEL_27;
  }

  v25 = [(UNCNotificationCategoryRecord *)self privateBody];
  v26 = [v4 privateBody];
  v27 = UNEqualObjects();

  if (!v27)
  {
    goto LABEL_27;
  }

  v28 = [(UNCNotificationCategoryRecord *)self privacyOptionShowTitle];
  if (v28 != [v4 privacyOptionShowTitle])
  {
    goto LABEL_27;
  }

  v29 = [(UNCNotificationCategoryRecord *)self privacyOptionShowSubtitle];
  if (v29 != [v4 privacyOptionShowSubtitle])
  {
    goto LABEL_27;
  }

  v30 = [(UNCNotificationCategoryRecord *)self preventAutomaticRemovalFromRecent];
  if (v30 != [v4 preventAutomaticRemovalFromRecent])
  {
    goto LABEL_27;
  }

  v31 = [(UNCNotificationCategoryRecord *)self revealAdditionalContentWhenPresented];
  if (v31 != [v4 revealAdditionalContentWhenPresented])
  {
    goto LABEL_27;
  }

  v32 = [(UNCNotificationCategoryRecord *)self preventDismissWhenClosed];
  if (v32 != [v4 preventDismissWhenClosed])
  {
    goto LABEL_27;
  }

  v33 = [(UNCNotificationCategoryRecord *)self summaryFormat];
  v34 = [v4 summaryFormat];
  v35 = UNEqualObjects();

  if (!v35)
  {
    goto LABEL_27;
  }

  v36 = [(UNCNotificationCategoryRecord *)self backgroundStyle];
  v37 = [v4 backgroundStyle];
  v38 = UNEqualObjects();

  if (!v38)
  {
    goto LABEL_27;
  }

  v39 = [(UNCNotificationCategoryRecord *)self shouldAllowActionsInCarPlay];
  if (v39 == [v4 shouldAllowActionsInCarPlay] && (v40 = -[UNCNotificationCategoryRecord shouldAllowPersistentBannersInCarPlay](self, "shouldAllowPersistentBannersInCarPlay"), v40 == objc_msgSend(v4, "shouldAllowPersistentBannersInCarPlay")) && (v41 = -[UNCNotificationCategoryRecord playMediaWhenRaised](self, "playMediaWhenRaised"), v41 == objc_msgSend(v4, "playMediaWhenRaised")) && (v42 = -[UNCNotificationCategoryRecord preventClearFromList](self, "preventClearFromList"), v42 == objc_msgSend(v4, "preventClearFromList")) && (v43 = -[UNCNotificationCategoryRecord alwaysDisplayNotificationsIndicator](self, "alwaysDisplayNotificationsIndicator"), v43 == objc_msgSend(v4, "alwaysDisplayNotificationsIndicator")) && (v44 = -[UNCNotificationCategoryRecord suppressDelayForForwardedNotifications](self, "suppressDelayForForwardedNotifications"), v44 == objc_msgSend(v4, "suppressDelayForForwardedNotifications")) && (v45 = -[UNCNotificationCategoryRecord suppressDismissActionInCarPlay](self, "suppressDismissActionInCarPlay"), v45 == objc_msgSend(v4, "suppressDismissActionInCarPlay")))
  {
    v48 = [(UNCNotificationCategoryRecord *)self suppressPresentationInAmbient];
    v46 = v48 ^ [v4 suppressPresentationInAmbient] ^ 1;
  }

  else
  {
LABEL_27:
    LOBYTE(v46) = 0;
  }

  return v46;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNCNotificationCategoryRecord *)self dictionaryRepresentation];
  [v4 encodeObject:v5 forKey:@"dictionary"];
}

- (UNCNotificationCategoryRecord)initWithCoder:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:7];
  v7 = [v4 setWithArray:{v6, v12, v13, v14, v15, v16, v17}];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"dictionary"];

  v9 = [[UNCNotificationCategoryRecord alloc] initWithDictionaryRepresentation:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end