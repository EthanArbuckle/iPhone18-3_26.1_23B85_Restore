@interface SiriSharedUICompactHostingInstrumentationSupplement
- (SiriSharedUICompactHostingInstrumentationSupplement)initWithInstrumentationManager:(id)a3;
- (int)viewRegionForPresentedAceObject:(id)a3 resultTrasncriptItems:(id)a4 conversationTranscriptItems:(id)a5 serverUtterances:(id)a6;
- (void)_logPunchOutEventForSiriViewController:(id)a3 aceCommand:(id)a4 URL:(id)a5 appID:(id)a6 sashItem:(id)a7 shouldCreateNewTurn:(BOOL)a8;
- (void)configureSiriViewControllerWithCurrentTurn:(id)a3;
- (void)logDrillInInteractionForSnippetViewControllerIfNecessary:(id)a3;
- (void)logPunchOutEventForSiriViewController:(id)a3 aceCommands:(id)a4 sashItem:(id)a5;
@end

@implementation SiriSharedUICompactHostingInstrumentationSupplement

- (SiriSharedUICompactHostingInstrumentationSupplement)initWithInstrumentationManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SiriSharedUICompactHostingInstrumentationSupplement;
  v6 = [(SiriSharedUICompactHostingInstrumentationSupplement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_instrumentationManager, a3);
  }

  return v7;
}

- (int)viewRegionForPresentedAceObject:(id)a3 resultTrasncriptItems:(id)a4 conversationTranscriptItems:(id)a5 serverUtterances:(id)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v13 = v10;
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

        v18 = [*(*(&v47 + 1) + 8 * i) aceObject];
        v19 = [v18 aceId];

        v20 = [v9 aceId];
        v21 = [v19 isEqualToString:v20];

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

  v38 = v12;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v22 = v11;
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

      v27 = [*(*(&v43 + 1) + 8 * v26) aceObject];
      v28 = [v27 aceId];

      v29 = [v9 aceId];
      v30 = [v28 isEqualToString:v29];

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
    v12 = v38;
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

      v34 = [*(*(&v39 + 1) + 8 * v33) aceId];
      v35 = [v9 aceId];
      v36 = [v34 isEqualToString:v35];

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
  v12 = v38;
LABEL_29:

  return v31;
}

- (void)logDrillInInteractionForSnippetViewControllerIfNecessary:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D5A928]);
  [v5 setInvocationSource:11];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 instrumentationTurnIdentifier];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:v6];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 turnIdentifier];
    v11 = 136315650;
    v12 = "[SiriSharedUICompactHostingInstrumentationSupplement logDrillInInteractionForSnippetViewControllerIfNecessary:]";
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_21E3EB000, v9, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", &v11, 0x20u);
  }

  [(SRUIFInstrumentationManager *)self->_instrumentationManager storeCurrentInstrumentationTurnContext:v7];
  [(SRUIFInstrumentationManager *)self->_instrumentationManager emitInstrumentation:v5];
}

- (void)configureSiriViewControllerWithCurrentTurn:(id)a3
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SRUIFInstrumentationManager *)self->_instrumentationManager currentInstrumentationTurnContext];
    v5 = [v4 turnIdentifier];
    [v6 setInstrumentationTurnIdentifier:v5];
  }
}

- (void)logPunchOutEventForSiriViewController:(id)a3 aceCommands:(id)a4 sashItem:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v9;
  v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          v17 = [v16 punchOutUri];
          v18 = [v16 bundleId];
          [(SiriSharedUICompactHostingInstrumentationSupplement *)self _logPunchOutEventForSiriViewController:v8 aceCommand:v16 URL:v17 appID:v18 sashItem:v10 shouldCreateNewTurn:0];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v18 = v15;
          v17 = [v18 appId];
          [(SiriSharedUICompactHostingInstrumentationSupplement *)self _logPunchOutEventForSiriViewController:v8 aceCommand:v18 URL:0 appID:v17 sashItem:v10 shouldCreateNewTurn:0];
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

- (void)_logPunchOutEventForSiriViewController:(id)a3 aceCommand:(id)a4 URL:(id)a5 appID:(id)a6 sashItem:(id)a7 shouldCreateNewTurn:(BOOL)a8
{
  v8 = a8;
  v32 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [v13 instrumentationTurnIdentifier];
    }

    else
    {
      v17 = 0;
    }

    v18 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:v17];
    v19 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v18 turnIdentifier];
      v26 = 136315650;
      v27 = "[SiriSharedUICompactHostingInstrumentationSupplement _logPunchOutEventForSiriViewController:aceCommand:URL:appID:sashItem:shouldCreateNewTurn:]";
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&dword_21E3EB000, v20, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", &v26, 0x20u);
    }

    [(SRUIFInstrumentationManager *)self->_instrumentationManager storeCurrentInstrumentationTurnContext:v18];
    v22 = objc_alloc_init(MEMORY[0x277D5A928]);
    [v22 setInvocationSource:11];
    [(SRUIFInstrumentationManager *)self->_instrumentationManager emitInstrumentation:v22];
  }

  v23 = [v16 applicationBundleIdentifier];
  v24 = [v23 isEqualToString:@"com.apple.MobileSMS"];

  if (v24)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  [(SRUIFInstrumentationManager *)self->_instrumentationManager emitPunchOutEventWithURL:v14 appID:v15 punchoutOrigin:v25];
}

@end