@interface SiriSharedUICompactHostingInstrumentationSupplement
- (SiriSharedUICompactHostingInstrumentationSupplement)initWithInstrumentationManager:(id)manager;
- (int)viewRegionForPresentedAceObject:(id)object resultTrasncriptItems:(id)items conversationTranscriptItems:(id)transcriptItems serverUtterances:(id)utterances;
- (void)_logPunchOutEventForSiriViewController:(id)controller aceCommand:(id)command URL:(id)l appID:(id)d sashItem:(id)item shouldCreateNewTurn:(BOOL)turn;
- (void)configureSiriViewControllerWithCurrentTurn:(id)turn;
- (void)logDrillInInteractionForSnippetViewControllerIfNecessary:(id)necessary;
- (void)logPunchOutEventForSiriViewController:(id)controller aceCommands:(id)commands sashItem:(id)item;
@end

@implementation SiriSharedUICompactHostingInstrumentationSupplement

- (SiriSharedUICompactHostingInstrumentationSupplement)initWithInstrumentationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SiriSharedUICompactHostingInstrumentationSupplement;
  v6 = [(SiriSharedUICompactHostingInstrumentationSupplement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_instrumentationManager, manager);
  }

  return v7;
}

- (int)viewRegionForPresentedAceObject:(id)object resultTrasncriptItems:(id)items conversationTranscriptItems:(id)transcriptItems serverUtterances:(id)utterances
{
  v54 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  itemsCopy = items;
  transcriptItemsCopy = transcriptItems;
  utterancesCopy = utterances;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v13 = itemsCopy;
  v14 = [v13 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v48;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(v13);
        }

        aceObject = [*(*(&v47 + 1) + 8 * i) aceObject];
        aceId = [aceObject aceId];

        aceId2 = [objectCopy aceId];
        v21 = [aceId isEqualToString:aceId2];

        if (v21)
        {
          LODWORD(v31) = 2;
          v22 = v13;
          goto LABEL_29;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v38 = utterancesCopy;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v22 = transcriptItemsCopy;
  v23 = [v22 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v44;
LABEL_11:
    v26 = 0;
    while (1)
    {
      if (*v44 != v25)
      {
        objc_enumerationMutation(v22);
      }

      aceObject2 = [*(*(&v43 + 1) + 8 * v26) aceObject];
      aceId3 = [aceObject2 aceId];

      aceId4 = [objectCopy aceId];
      v30 = [aceId3 isEqualToString:aceId4];

      if (v30)
      {
        break;
      }

      if (v24 == ++v26)
      {
        v24 = [v22 countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v24)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    utterancesCopy = v38;
    v22 = v38;
    v31 = [v22 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (!v31)
    {
      goto LABEL_29;
    }

    v32 = *v40;
LABEL_19:
    v33 = 0;
    while (1)
    {
      if (*v40 != v32)
      {
        objc_enumerationMutation(v22);
      }

      aceId5 = [*(*(&v39 + 1) + 8 * v33) aceId];
      aceId6 = [objectCopy aceId];
      v36 = [aceId5 isEqualToString:aceId6];

      if (v36)
      {
        break;
      }

      if (v31 == ++v33)
      {
        v31 = [v22 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v31)
        {
          goto LABEL_19;
        }

        goto LABEL_28;
      }
    }
  }

  LODWORD(v31) = 1;
LABEL_28:
  utterancesCopy = v38;
LABEL_29:

  return v31;
}

- (void)logDrillInInteractionForSnippetViewControllerIfNecessary:(id)necessary
{
  v17 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  v5 = objc_alloc_init(MEMORY[0x277D5A928]);
  [v5 setInvocationSource:11];
  if (objc_opt_respondsToSelector())
  {
    instrumentationTurnIdentifier = [necessaryCopy instrumentationTurnIdentifier];
  }

  else
  {
    instrumentationTurnIdentifier = 0;
  }

  v7 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:instrumentationTurnIdentifier];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    turnIdentifier = [v7 turnIdentifier];
    v11 = 136315650;
    v12 = "[SiriSharedUICompactHostingInstrumentationSupplement logDrillInInteractionForSnippetViewControllerIfNecessary:]";
    v13 = 2112;
    v14 = turnIdentifier;
    v15 = 2112;
    v16 = instrumentationTurnIdentifier;
    _os_log_impl(&dword_21E3EB000, v9, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", &v11, 0x20u);
  }

  [(SRUIFInstrumentationManager *)self->_instrumentationManager storeCurrentInstrumentationTurnContext:v7];
  [(SRUIFInstrumentationManager *)self->_instrumentationManager emitInstrumentation:v5];
}

- (void)configureSiriViewControllerWithCurrentTurn:(id)turn
{
  turnCopy = turn;
  if (objc_opt_respondsToSelector())
  {
    currentInstrumentationTurnContext = [(SRUIFInstrumentationManager *)self->_instrumentationManager currentInstrumentationTurnContext];
    turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];
    [turnCopy setInstrumentationTurnIdentifier:turnIdentifier];
  }
}

- (void)logPunchOutEventForSiriViewController:(id)controller aceCommands:(id)commands sashItem:(id)item
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  commandsCopy = commands;
  itemCopy = item;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = commandsCopy;
  v11 = [commandsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
          punchOutUri = [v16 punchOutUri];
          bundleId = [v16 bundleId];
          [(SiriSharedUICompactHostingInstrumentationSupplement *)self _logPunchOutEventForSiriViewController:controllerCopy aceCommand:v16 URL:punchOutUri appID:bundleId sashItem:itemCopy shouldCreateNewTurn:0];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          bundleId = v15;
          punchOutUri = [bundleId appId];
          [(SiriSharedUICompactHostingInstrumentationSupplement *)self _logPunchOutEventForSiriViewController:controllerCopy aceCommand:bundleId URL:0 appID:punchOutUri sashItem:itemCopy shouldCreateNewTurn:0];
        }

LABEL_11:
        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)_logPunchOutEventForSiriViewController:(id)controller aceCommand:(id)command URL:(id)l appID:(id)d sashItem:(id)item shouldCreateNewTurn:(BOOL)turn
{
  turnCopy = turn;
  v32 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  lCopy = l;
  dCopy = d;
  itemCopy = item;
  if (turnCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      instrumentationTurnIdentifier = [controllerCopy instrumentationTurnIdentifier];
    }

    else
    {
      instrumentationTurnIdentifier = 0;
    }

    v18 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:instrumentationTurnIdentifier];
    v19 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      turnIdentifier = [v18 turnIdentifier];
      v26 = 136315650;
      v27 = "[SiriSharedUICompactHostingInstrumentationSupplement _logPunchOutEventForSiriViewController:aceCommand:URL:appID:sashItem:shouldCreateNewTurn:]";
      v28 = 2112;
      v29 = turnIdentifier;
      v30 = 2112;
      v31 = instrumentationTurnIdentifier;
      _os_log_impl(&dword_21E3EB000, v20, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", &v26, 0x20u);
    }

    [(SRUIFInstrumentationManager *)self->_instrumentationManager storeCurrentInstrumentationTurnContext:v18];
    v22 = objc_alloc_init(MEMORY[0x277D5A928]);
    [v22 setInvocationSource:11];
    [(SRUIFInstrumentationManager *)self->_instrumentationManager emitInstrumentation:v22];
  }

  applicationBundleIdentifier = [itemCopy applicationBundleIdentifier];
  v24 = [applicationBundleIdentifier isEqualToString:@"com.apple.MobileSMS"];

  if (v24)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  [(SRUIFInstrumentationManager *)self->_instrumentationManager emitPunchOutEventWithURL:lCopy appID:dCopy punchoutOrigin:v25];
}

@end