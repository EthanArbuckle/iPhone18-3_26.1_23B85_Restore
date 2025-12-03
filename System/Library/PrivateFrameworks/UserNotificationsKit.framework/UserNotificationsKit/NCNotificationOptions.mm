@interface NCNotificationOptions
- (BOOL)isEqual:(id)equal;
- (NCNotificationOptions)initWithNotificationOptions:(id)options;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
@end

@implementation NCNotificationOptions

- (NCNotificationOptions)initWithNotificationOptions:(id)options
{
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = NCNotificationOptions;
  v5 = [(NCNotificationOptions *)&v16 init];
  if (v5)
  {
    alertSuppressionContexts = [optionsCopy alertSuppressionContexts];
    v7 = [alertSuppressionContexts copy];
    alertSuppressionContexts = v5->_alertSuppressionContexts;
    v5->_alertSuppressionContexts = v7;

    alternateActionLabel = [optionsCopy alternateActionLabel];
    v10 = [alternateActionLabel copy];
    alternateActionLabel = v5->_alternateActionLabel;
    v5->_alternateActionLabel = v10;

    v5->_dismissAutomatically = [optionsCopy dismissAutomatically];
    v5->_dismissAutomaticallyForCarPlay = [optionsCopy dismissAutomaticallyForCarPlay];
    v5->_overridesQuietMode = [optionsCopy overridesQuietMode];
    v5->_overridesDowntime = [optionsCopy overridesDowntime];
    v5->_alertsWhenLocked = [optionsCopy alertsWhenLocked];
    v5->_addToLockScreenWhenLocked = [optionsCopy addToLockScreenWhenUnlocked];
    v5->_lockScreenPersistence = [optionsCopy lockScreenPersistence];
    v5->_lockScreenPriority = [optionsCopy lockScreenPriority];
    v5->_realertCount = [optionsCopy realertCount];
    v5->_suppressesAlertsWhenAppIsActive = [optionsCopy suppressesAlertsWhenAppIsActive];
    v5->_silencedByMenuButtonPress = [optionsCopy silencedByMenuButtonPress];
    v5->_overridesPocketMode = [optionsCopy overridesPocketMode];
    v5->_canPlaySound = [optionsCopy canPlaySound];
    v5->_canTurnOnDisplay = [optionsCopy canTurnOnDisplay];
    v5->_requestsFullScreenPresentation = [optionsCopy requestsFullScreenPresentation];
    v5->_hideClearActionInList = [optionsCopy hideClearActionInList];
    v5->_numberOfLinesInfinite = [optionsCopy isNumberOfLinesInfinite];
    v5->_preemptsPresentedNotification = [optionsCopy preemptsPresentedNotification];
    v5->_displaysActionsInline = [optionsCopy displaysActionsInline];
    v5->_revealsAdditionalContentOnPresentation = [optionsCopy revealsAdditionalContentOnPresentation];
    v5->_suppressesTitleWhenLocked = [optionsCopy suppressesTitleWhenLocked];
    v5->_suppressesSubtitleWhenLocked = [optionsCopy suppressesSubtitleWhenLocked];
    v5->_suppressesBodyWhenLocked = [optionsCopy suppressesBodyWhenLocked];
    speechLanguage = [optionsCopy speechLanguage];
    v13 = [speechLanguage copy];
    speechLanguage = v5->_speechLanguage;
    v5->_speechLanguage = v13;

    v5->_contentPreviewSetting = [optionsCopy contentPreviewSetting];
    v5->_canShowSummary = [optionsCopy canShowSummary];
    v5->_coalescesWhenLocked = [optionsCopy coalescesWhenLocked];
    v5->_preventsAutomaticLock = [optionsCopy preventsAutomaticLock];
    v5->_revealsAdditionalContentIfNoDefaultAction = [optionsCopy revealsAdditionalContentIfNoDefaultAction];
    v5->_lauchUsingSiriForCarPlayDefaultAction = [optionsCopy lauchUsingSiriForCarPlayDefaultAction];
    v5->_allowActionsForCarPlay = [optionsCopy allowActionsForCarPlay];
    v5->_playMediaWhenRaised = [optionsCopy playMediaWhenRaised];
    v5->_hideCloseActionForCarPlay = [optionsCopy hideCloseActionForCarPlay];
    v5->_shouldAnnounceForCarPlay = [optionsCopy shouldAnnounceForCarPlay];
    v5->_suppressPresentationInAmbient = [optionsCopy suppressPresentationInAmbient];
    v5->_screenCaptureProhibited = [optionsCopy screenCaptureProhibited];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  v5 = equalCopy;
  if (!v5)
  {
    goto LABEL_43;
  }

  alertSuppressionContexts = [(NCNotificationOptions *)self alertSuppressionContexts];
  alertSuppressionContexts2 = [v5 alertSuppressionContexts];
  v8 = NCIsEqual(alertSuppressionContexts, alertSuppressionContexts2);

  if (!v8)
  {
    goto LABEL_43;
  }

  alternateActionLabel = [(NCNotificationOptions *)self alternateActionLabel];
  alternateActionLabel2 = [v5 alternateActionLabel];
  v11 = NCIsEqual(alternateActionLabel, alternateActionLabel2);

  if (!v11)
  {
    goto LABEL_43;
  }

  dismissAutomatically = [(NCNotificationOptions *)self dismissAutomatically];
  if (dismissAutomatically != [v5 dismissAutomatically])
  {
    goto LABEL_43;
  }

  dismissAutomaticallyForCarPlay = [(NCNotificationOptions *)self dismissAutomaticallyForCarPlay];
  if (dismissAutomaticallyForCarPlay != [v5 dismissAutomaticallyForCarPlay])
  {
    goto LABEL_43;
  }

  overridesQuietMode = [(NCNotificationOptions *)self overridesQuietMode];
  if (overridesQuietMode != [v5 overridesQuietMode])
  {
    goto LABEL_43;
  }

  overridesDowntime = [(NCNotificationOptions *)self overridesDowntime];
  if (overridesDowntime != [v5 overridesDowntime])
  {
    goto LABEL_43;
  }

  alertsWhenLocked = [(NCNotificationOptions *)self alertsWhenLocked];
  if (alertsWhenLocked != [v5 alertsWhenLocked])
  {
    goto LABEL_43;
  }

  addToLockScreenWhenUnlocked = [(NCNotificationOptions *)self addToLockScreenWhenUnlocked];
  if (addToLockScreenWhenUnlocked != [v5 addToLockScreenWhenUnlocked])
  {
    goto LABEL_43;
  }

  lockScreenPersistence = [(NCNotificationOptions *)self lockScreenPersistence];
  if (lockScreenPersistence != [v5 lockScreenPersistence])
  {
    goto LABEL_43;
  }

  lockScreenPriority = [(NCNotificationOptions *)self lockScreenPriority];
  if (lockScreenPriority != [v5 lockScreenPriority])
  {
    goto LABEL_43;
  }

  realertCount = [(NCNotificationOptions *)self realertCount];
  if (realertCount != [v5 realertCount])
  {
    goto LABEL_43;
  }

  suppressesAlertsWhenAppIsActive = [(NCNotificationOptions *)self suppressesAlertsWhenAppIsActive];
  if (suppressesAlertsWhenAppIsActive != [v5 suppressesAlertsWhenAppIsActive])
  {
    goto LABEL_43;
  }

  silencedByMenuButtonPress = [(NCNotificationOptions *)self silencedByMenuButtonPress];
  if (silencedByMenuButtonPress != [v5 silencedByMenuButtonPress])
  {
    goto LABEL_43;
  }

  overridesPocketMode = [(NCNotificationOptions *)self overridesPocketMode];
  if (overridesPocketMode != [v5 overridesPocketMode])
  {
    goto LABEL_43;
  }

  canPlaySound = [(NCNotificationOptions *)self canPlaySound];
  if (canPlaySound != [v5 canPlaySound])
  {
    goto LABEL_43;
  }

  canTurnOnDisplay = [(NCNotificationOptions *)self canTurnOnDisplay];
  if (canTurnOnDisplay != [v5 canTurnOnDisplay])
  {
    goto LABEL_43;
  }

  requestsFullScreenPresentation = [(NCNotificationOptions *)self requestsFullScreenPresentation];
  if (requestsFullScreenPresentation != [v5 requestsFullScreenPresentation])
  {
    goto LABEL_43;
  }

  hideClearActionInList = [(NCNotificationOptions *)self hideClearActionInList];
  if (hideClearActionInList != [v5 hideClearActionInList])
  {
    goto LABEL_43;
  }

  isNumberOfLinesInfinite = [(NCNotificationOptions *)self isNumberOfLinesInfinite];
  if (isNumberOfLinesInfinite != [v5 isNumberOfLinesInfinite])
  {
    goto LABEL_43;
  }

  preemptsPresentedNotification = [(NCNotificationOptions *)self preemptsPresentedNotification];
  if (preemptsPresentedNotification != [v5 preemptsPresentedNotification])
  {
    goto LABEL_43;
  }

  displaysActionsInline = [(NCNotificationOptions *)self displaysActionsInline];
  if (displaysActionsInline != [v5 displaysActionsInline])
  {
    goto LABEL_43;
  }

  revealsAdditionalContentOnPresentation = [(NCNotificationOptions *)self revealsAdditionalContentOnPresentation];
  if (revealsAdditionalContentOnPresentation != [v5 revealsAdditionalContentOnPresentation])
  {
    goto LABEL_43;
  }

  suppressesTitleWhenLocked = [(NCNotificationOptions *)self suppressesTitleWhenLocked];
  if (suppressesTitleWhenLocked != [v5 suppressesTitleWhenLocked])
  {
    goto LABEL_43;
  }

  suppressesSubtitleWhenLocked = [(NCNotificationOptions *)self suppressesSubtitleWhenLocked];
  if (suppressesSubtitleWhenLocked != [v5 suppressesSubtitleWhenLocked])
  {
    goto LABEL_43;
  }

  suppressesBodyWhenLocked = [(NCNotificationOptions *)self suppressesBodyWhenLocked];
  if (suppressesBodyWhenLocked != [v5 suppressesBodyWhenLocked])
  {
    goto LABEL_43;
  }

  speechLanguage = [(NCNotificationOptions *)self speechLanguage];
  speechLanguage2 = [v5 speechLanguage];
  v37 = NCIsEqual(speechLanguage, speechLanguage2);

  if (!v37)
  {
    goto LABEL_43;
  }

  contentPreviewSetting = [(NCNotificationOptions *)self contentPreviewSetting];
  if (contentPreviewSetting != [v5 contentPreviewSetting])
  {
    goto LABEL_43;
  }

  canShowSummary = [(NCNotificationOptions *)self canShowSummary];
  if (canShowSummary != [v5 canShowSummary])
  {
    goto LABEL_43;
  }

  coalescesWhenLocked = [(NCNotificationOptions *)self coalescesWhenLocked];
  if (coalescesWhenLocked != [v5 coalescesWhenLocked])
  {
    goto LABEL_43;
  }

  preventsAutomaticLock = [(NCNotificationOptions *)self preventsAutomaticLock];
  if (preventsAutomaticLock != [v5 preventsAutomaticLock])
  {
    goto LABEL_43;
  }

  revealsAdditionalContentIfNoDefaultAction = [(NCNotificationOptions *)self revealsAdditionalContentIfNoDefaultAction];
  if (revealsAdditionalContentIfNoDefaultAction != [v5 revealsAdditionalContentIfNoDefaultAction])
  {
    goto LABEL_43;
  }

  lauchUsingSiriForCarPlayDefaultAction = [(NCNotificationOptions *)self lauchUsingSiriForCarPlayDefaultAction];
  if (lauchUsingSiriForCarPlayDefaultAction != [v5 lauchUsingSiriForCarPlayDefaultAction])
  {
    goto LABEL_43;
  }

  allowActionsForCarPlay = [(NCNotificationOptions *)self allowActionsForCarPlay];
  if (allowActionsForCarPlay != [v5 allowActionsForCarPlay])
  {
    goto LABEL_43;
  }

  playMediaWhenRaised = [(NCNotificationOptions *)self playMediaWhenRaised];
  if (playMediaWhenRaised != [v5 playMediaWhenRaised])
  {
    goto LABEL_43;
  }

  hideCloseActionForCarPlay = [(NCNotificationOptions *)self hideCloseActionForCarPlay];
  if (hideCloseActionForCarPlay != [v5 hideCloseActionForCarPlay])
  {
    goto LABEL_43;
  }

  shouldAnnounceForCarPlay = [(NCNotificationOptions *)self shouldAnnounceForCarPlay];
  if (shouldAnnounceForCarPlay != [v5 shouldAnnounceForCarPlay])
  {
    goto LABEL_43;
  }

  suppressPresentationInAmbient = [(NCNotificationOptions *)self suppressPresentationInAmbient];
  if (suppressPresentationInAmbient != [v5 suppressPresentationInAmbient])
  {
    goto LABEL_43;
  }

  screenCaptureProhibited = [(NCNotificationOptions *)self screenCaptureProhibited];
  v50 = screenCaptureProhibited ^ [v5 screenCaptureProhibited] ^ 1;
LABEL_44:

  return v50;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NCMutableNotificationOptions alloc];

  return [(NCNotificationOptions *)v4 initWithNotificationOptions:self];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(NCNotificationOptions *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__NCNotificationOptions_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

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
  succinctDescriptionBuilder = [(NCNotificationOptions *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end