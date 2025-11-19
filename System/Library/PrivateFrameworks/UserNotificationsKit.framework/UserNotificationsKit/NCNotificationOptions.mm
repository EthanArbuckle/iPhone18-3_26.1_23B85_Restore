@interface NCNotificationOptions
- (BOOL)isEqual:(id)a3;
- (NCNotificationOptions)initWithNotificationOptions:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
@end

@implementation NCNotificationOptions

- (NCNotificationOptions)initWithNotificationOptions:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NCNotificationOptions;
  v5 = [(NCNotificationOptions *)&v16 init];
  if (v5)
  {
    v6 = [v4 alertSuppressionContexts];
    v7 = [v6 copy];
    alertSuppressionContexts = v5->_alertSuppressionContexts;
    v5->_alertSuppressionContexts = v7;

    v9 = [v4 alternateActionLabel];
    v10 = [v9 copy];
    alternateActionLabel = v5->_alternateActionLabel;
    v5->_alternateActionLabel = v10;

    v5->_dismissAutomatically = [v4 dismissAutomatically];
    v5->_dismissAutomaticallyForCarPlay = [v4 dismissAutomaticallyForCarPlay];
    v5->_overridesQuietMode = [v4 overridesQuietMode];
    v5->_overridesDowntime = [v4 overridesDowntime];
    v5->_alertsWhenLocked = [v4 alertsWhenLocked];
    v5->_addToLockScreenWhenLocked = [v4 addToLockScreenWhenUnlocked];
    v5->_lockScreenPersistence = [v4 lockScreenPersistence];
    v5->_lockScreenPriority = [v4 lockScreenPriority];
    v5->_realertCount = [v4 realertCount];
    v5->_suppressesAlertsWhenAppIsActive = [v4 suppressesAlertsWhenAppIsActive];
    v5->_silencedByMenuButtonPress = [v4 silencedByMenuButtonPress];
    v5->_overridesPocketMode = [v4 overridesPocketMode];
    v5->_canPlaySound = [v4 canPlaySound];
    v5->_canTurnOnDisplay = [v4 canTurnOnDisplay];
    v5->_requestsFullScreenPresentation = [v4 requestsFullScreenPresentation];
    v5->_hideClearActionInList = [v4 hideClearActionInList];
    v5->_numberOfLinesInfinite = [v4 isNumberOfLinesInfinite];
    v5->_preemptsPresentedNotification = [v4 preemptsPresentedNotification];
    v5->_displaysActionsInline = [v4 displaysActionsInline];
    v5->_revealsAdditionalContentOnPresentation = [v4 revealsAdditionalContentOnPresentation];
    v5->_suppressesTitleWhenLocked = [v4 suppressesTitleWhenLocked];
    v5->_suppressesSubtitleWhenLocked = [v4 suppressesSubtitleWhenLocked];
    v5->_suppressesBodyWhenLocked = [v4 suppressesBodyWhenLocked];
    v12 = [v4 speechLanguage];
    v13 = [v12 copy];
    speechLanguage = v5->_speechLanguage;
    v5->_speechLanguage = v13;

    v5->_contentPreviewSetting = [v4 contentPreviewSetting];
    v5->_canShowSummary = [v4 canShowSummary];
    v5->_coalescesWhenLocked = [v4 coalescesWhenLocked];
    v5->_preventsAutomaticLock = [v4 preventsAutomaticLock];
    v5->_revealsAdditionalContentIfNoDefaultAction = [v4 revealsAdditionalContentIfNoDefaultAction];
    v5->_lauchUsingSiriForCarPlayDefaultAction = [v4 lauchUsingSiriForCarPlayDefaultAction];
    v5->_allowActionsForCarPlay = [v4 allowActionsForCarPlay];
    v5->_playMediaWhenRaised = [v4 playMediaWhenRaised];
    v5->_hideCloseActionForCarPlay = [v4 hideCloseActionForCarPlay];
    v5->_shouldAnnounceForCarPlay = [v4 shouldAnnounceForCarPlay];
    v5->_suppressPresentationInAmbient = [v4 suppressPresentationInAmbient];
    v5->_screenCaptureProhibited = [v4 screenCaptureProhibited];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
LABEL_43:
      LOBYTE(v50) = 0;
      goto LABEL_44;
    }
  }

  v5 = v4;
  if (!v5)
  {
    goto LABEL_43;
  }

  v6 = [(NCNotificationOptions *)self alertSuppressionContexts];
  v7 = [v5 alertSuppressionContexts];
  v8 = NCIsEqual(v6, v7);

  if (!v8)
  {
    goto LABEL_43;
  }

  v9 = [(NCNotificationOptions *)self alternateActionLabel];
  v10 = [v5 alternateActionLabel];
  v11 = NCIsEqual(v9, v10);

  if (!v11)
  {
    goto LABEL_43;
  }

  v12 = [(NCNotificationOptions *)self dismissAutomatically];
  if (v12 != [v5 dismissAutomatically])
  {
    goto LABEL_43;
  }

  v13 = [(NCNotificationOptions *)self dismissAutomaticallyForCarPlay];
  if (v13 != [v5 dismissAutomaticallyForCarPlay])
  {
    goto LABEL_43;
  }

  v14 = [(NCNotificationOptions *)self overridesQuietMode];
  if (v14 != [v5 overridesQuietMode])
  {
    goto LABEL_43;
  }

  v15 = [(NCNotificationOptions *)self overridesDowntime];
  if (v15 != [v5 overridesDowntime])
  {
    goto LABEL_43;
  }

  v16 = [(NCNotificationOptions *)self alertsWhenLocked];
  if (v16 != [v5 alertsWhenLocked])
  {
    goto LABEL_43;
  }

  v17 = [(NCNotificationOptions *)self addToLockScreenWhenUnlocked];
  if (v17 != [v5 addToLockScreenWhenUnlocked])
  {
    goto LABEL_43;
  }

  v18 = [(NCNotificationOptions *)self lockScreenPersistence];
  if (v18 != [v5 lockScreenPersistence])
  {
    goto LABEL_43;
  }

  v19 = [(NCNotificationOptions *)self lockScreenPriority];
  if (v19 != [v5 lockScreenPriority])
  {
    goto LABEL_43;
  }

  v20 = [(NCNotificationOptions *)self realertCount];
  if (v20 != [v5 realertCount])
  {
    goto LABEL_43;
  }

  v21 = [(NCNotificationOptions *)self suppressesAlertsWhenAppIsActive];
  if (v21 != [v5 suppressesAlertsWhenAppIsActive])
  {
    goto LABEL_43;
  }

  v22 = [(NCNotificationOptions *)self silencedByMenuButtonPress];
  if (v22 != [v5 silencedByMenuButtonPress])
  {
    goto LABEL_43;
  }

  v23 = [(NCNotificationOptions *)self overridesPocketMode];
  if (v23 != [v5 overridesPocketMode])
  {
    goto LABEL_43;
  }

  v24 = [(NCNotificationOptions *)self canPlaySound];
  if (v24 != [v5 canPlaySound])
  {
    goto LABEL_43;
  }

  v25 = [(NCNotificationOptions *)self canTurnOnDisplay];
  if (v25 != [v5 canTurnOnDisplay])
  {
    goto LABEL_43;
  }

  v26 = [(NCNotificationOptions *)self requestsFullScreenPresentation];
  if (v26 != [v5 requestsFullScreenPresentation])
  {
    goto LABEL_43;
  }

  v27 = [(NCNotificationOptions *)self hideClearActionInList];
  if (v27 != [v5 hideClearActionInList])
  {
    goto LABEL_43;
  }

  v28 = [(NCNotificationOptions *)self isNumberOfLinesInfinite];
  if (v28 != [v5 isNumberOfLinesInfinite])
  {
    goto LABEL_43;
  }

  v29 = [(NCNotificationOptions *)self preemptsPresentedNotification];
  if (v29 != [v5 preemptsPresentedNotification])
  {
    goto LABEL_43;
  }

  v30 = [(NCNotificationOptions *)self displaysActionsInline];
  if (v30 != [v5 displaysActionsInline])
  {
    goto LABEL_43;
  }

  v31 = [(NCNotificationOptions *)self revealsAdditionalContentOnPresentation];
  if (v31 != [v5 revealsAdditionalContentOnPresentation])
  {
    goto LABEL_43;
  }

  v32 = [(NCNotificationOptions *)self suppressesTitleWhenLocked];
  if (v32 != [v5 suppressesTitleWhenLocked])
  {
    goto LABEL_43;
  }

  v33 = [(NCNotificationOptions *)self suppressesSubtitleWhenLocked];
  if (v33 != [v5 suppressesSubtitleWhenLocked])
  {
    goto LABEL_43;
  }

  v34 = [(NCNotificationOptions *)self suppressesBodyWhenLocked];
  if (v34 != [v5 suppressesBodyWhenLocked])
  {
    goto LABEL_43;
  }

  v35 = [(NCNotificationOptions *)self speechLanguage];
  v36 = [v5 speechLanguage];
  v37 = NCIsEqual(v35, v36);

  if (!v37)
  {
    goto LABEL_43;
  }

  v38 = [(NCNotificationOptions *)self contentPreviewSetting];
  if (v38 != [v5 contentPreviewSetting])
  {
    goto LABEL_43;
  }

  v39 = [(NCNotificationOptions *)self canShowSummary];
  if (v39 != [v5 canShowSummary])
  {
    goto LABEL_43;
  }

  v40 = [(NCNotificationOptions *)self coalescesWhenLocked];
  if (v40 != [v5 coalescesWhenLocked])
  {
    goto LABEL_43;
  }

  v41 = [(NCNotificationOptions *)self preventsAutomaticLock];
  if (v41 != [v5 preventsAutomaticLock])
  {
    goto LABEL_43;
  }

  v42 = [(NCNotificationOptions *)self revealsAdditionalContentIfNoDefaultAction];
  if (v42 != [v5 revealsAdditionalContentIfNoDefaultAction])
  {
    goto LABEL_43;
  }

  v43 = [(NCNotificationOptions *)self lauchUsingSiriForCarPlayDefaultAction];
  if (v43 != [v5 lauchUsingSiriForCarPlayDefaultAction])
  {
    goto LABEL_43;
  }

  v44 = [(NCNotificationOptions *)self allowActionsForCarPlay];
  if (v44 != [v5 allowActionsForCarPlay])
  {
    goto LABEL_43;
  }

  v45 = [(NCNotificationOptions *)self playMediaWhenRaised];
  if (v45 != [v5 playMediaWhenRaised])
  {
    goto LABEL_43;
  }

  v46 = [(NCNotificationOptions *)self hideCloseActionForCarPlay];
  if (v46 != [v5 hideCloseActionForCarPlay])
  {
    goto LABEL_43;
  }

  v47 = [(NCNotificationOptions *)self shouldAnnounceForCarPlay];
  if (v47 != [v5 shouldAnnounceForCarPlay])
  {
    goto LABEL_43;
  }

  v48 = [(NCNotificationOptions *)self suppressPresentationInAmbient];
  if (v48 != [v5 suppressPresentationInAmbient])
  {
    goto LABEL_43;
  }

  v49 = [(NCNotificationOptions *)self screenCaptureProhibited];
  v50 = v49 ^ [v5 screenCaptureProhibited] ^ 1;
LABEL_44:

  return v50;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NCMutableNotificationOptions alloc];

  return [(NCNotificationOptions *)v4 initWithNotificationOptions:self];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(NCNotificationOptions *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__NCNotificationOptions_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

id __63__NCNotificationOptions_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) alertSuppressionContexts];
  v4 = [v3 allObjects];
  [v2 appendArraySection:v4 withName:@"alertSuppressionContexts" skipIfEmpty:0];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) alternateActionLabel];
  v7 = [v5 appendObject:v6 withName:@"alternateActionLabel" skipIfNil:1];

  v8 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"dismissAutomatically"), @"dismissAutomatically"}];
  v9 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"dismissAutomaticallyForCarPlay"), @"dismissAutomaticallyForCarPlay"}];
  v10 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"overridesQuietMode"), @"overidesQuietMode"}];
  v11 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"overridesDowntime"), @"overidesDowntime"}];
  v12 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"alertsWhenLocked"), @"alertsWhenLocked"}];
  v13 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"addToLockScreenWhenUnlocked"), @"addToLockScreenWhenUnlocked"}];
  v14 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"lockScreenPersistence"), @"lockScreenPersistence"}];
  v15 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"lockScreenPriority"), @"lockScreenPriority"}];
  v16 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"suppressesAlertsWhenAppIsActive"), @"suppressesAlertsWhenAppIsActive"}];
  v17 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"silencedByMenuButtonPress"), @"silencedByMenuButtonPress"}];
  v18 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"overridesPocketMode"), @"overridesPocketMode"}];
  v19 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"canPlaySound"), @"canPlaySound"}];
  v20 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"canTurnOnDisplay"), @"canTurnOnDisplay"}];
  v21 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"requestsFullScreenPresentation"), @"requestsFullScreenPresentation"}];
  v22 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"hideClearActionInList"), @"hideClearActionInList"}];
  v23 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isNumberOfLinesInfinite"), @"numberOfLinesInfinite"}];
  v24 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"realertCount"), @"realertCount"}];
  v25 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"preemptsPresentedNotification"), @"preemptsPresentedNotification"}];
  v26 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"displaysActionsInline"), @"displaysActionsInline"}];
  v27 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"revealsAdditionalContentOnPresentation"), @"revealsAdditionalContentOnPresentation"}];
  v28 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"suppressesTitleWhenLocked"), @"suppressesTitleWhenLocked"}];
  v29 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"suppressesSubtitleWhenLocked"), @"suppressesSubtitleWhenLocked"}];
  v30 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"suppressesBodyWhenLocked"), @"suppressesBodyWhenLocked"}];
  v31 = *(a1 + 32);
  v32 = [*(a1 + 40) speechLanguage];
  [v31 appendString:v32 withName:@"speechLanguage"];

  v33 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"contentPreviewSetting"), @"contentPreviewSetting"}];
  v34 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"canShowSummary"), @"canShowSummary"}];
  v35 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"coalescesWhenLocked"), @"coalescesWhenLocked"}];
  v36 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"preventsAutomaticLock"), @"preventsAutomaticLock"}];
  v37 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"revealsAdditionalContentIfNoDefaultAction"), @"revealsAdditionalContentIfNoDefaultAction"}];
  v38 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"lauchUsingSiriForCarPlayDefaultAction"), @"lauchUsingSiriForCarPlayDefaultAction"}];
  v39 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"allowActionsForCarPlay"), @"allowActionsForCarPlay"}];
  v40 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"playMediaWhenRaised"), @"playMediaWhenRaised"}];
  v41 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"hideCloseActionForCarPlay"), @"hideCloseActionForCarPlay"}];
  v42 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"shouldAnnounceForCarPlay"), @"shouldAnnounceForCarPlay"}];
  v43 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"suppressPresentationInAmbient"), @"suppressPresentationInAmbient"}];
  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"screenCaptureProhibited"), @"screenCaptureProhibited"}];
}

- (id)succinctDescription
{
  v2 = [(NCNotificationOptions *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end