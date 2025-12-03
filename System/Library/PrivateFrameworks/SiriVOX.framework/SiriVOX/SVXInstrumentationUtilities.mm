@interface SVXInstrumentationUtilities
- (SVXInstrumentationUtilities)init;
- (SVXInstrumentationUtilities)initWithSiriAnalyticsProvider:(id)provider powerInstrumentation:(id)instrumentation;
- (int)convertModeToResponseMode:(unint64_t)mode;
- (int)rfSchemaRFPatternFromPatternType:(id)type;
- (int)rfSchemaRFSiriModeFromResponseMode:(id)mode;
- (void)_emitUUFRSaidWithModeSupport:(id)support dialogIdentifier:(id)identifier dialogPhase:(id)phase speakableText:(id)text currentMode:(unint64_t)mode;
- (void)emitPatternExecutedEvent:(id)event addViews:(id)views;
- (void)emitUUFRSaid:(id)said dialogIdentifier:(id)identifier dialogPhase:(id)phase;
@end

@implementation SVXInstrumentationUtilities

- (int)convertModeToResponseMode:(unint64_t)mode
{
  v8 = *MEMORY[0x277D85DE8];
  if (mode >= 3)
  {
    v4 = *MEMORY[0x277CEF098];
    result = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR);
    if (result)
    {
      v6 = 136315138;
      v7 = "[SVXInstrumentationUtilities convertModeToResponseMode:]";
      _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s #SVXInstrumentation - Unable to convert. Using unknown MDMode.", &v6, 0xCu);
      result = 0;
    }
  }

  else
  {
    result = mode + 1;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)rfSchemaRFPatternFromPatternType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy)
  {
    if ([typeCopy caseInsensitiveCompare:@"pattern.ResultSet"])
    {
      if ([v4 caseInsensitiveCompare:@"pattern.TableSet"])
      {
        if ([v4 caseInsensitiveCompare:@"pattern.SimpleResult"])
        {
          if ([v4 caseInsensitiveCompare:@"pattern.DetailedResult"])
          {
            if ([v4 caseInsensitiveCompare:@"pattern.SuccessStatus"])
            {
              if ([v4 caseInsensitiveCompare:@"pattern.CancelledStatus"])
              {
                if ([v4 caseInsensitiveCompare:@"pattern.ErrorStatus"])
                {
                  if ([v4 caseInsensitiveCompare:@"pattern.ProgressStatus"])
                  {
                    if ([v4 caseInsensitiveCompare:@"pattern.OpenEndedClarification"])
                    {
                      if ([v4 caseInsensitiveCompare:@"pattern.YesNoClarification"])
                      {
                        if ([v4 caseInsensitiveCompare:@"pattern.SimpleDisambiguationClarification"])
                        {
                          if ([v4 caseInsensitiveCompare:@"pattern.DetailedDisambiguationClarification"])
                          {
                            if ([v4 caseInsensitiveCompare:@"pattern.MultiLevelResultSet"])
                            {
                              if ([v4 caseInsensitiveCompare:@"pattern.DetailedDisambiguationPrompt"])
                              {
                                if ([v4 caseInsensitiveCompare:@"pattern.OpenEndedPrompt"])
                                {
                                  if ([v4 caseInsensitiveCompare:@"pattern.SimpleDisambiguationPrompt"])
                                  {
                                    if ([v4 caseInsensitiveCompare:@"pattern.YesNoPrompt"])
                                    {
                                      v5 = 0;
                                    }

                                    else
                                    {
                                      v5 = 18;
                                    }
                                  }

                                  else
                                  {
                                    v5 = 17;
                                  }
                                }

                                else
                                {
                                  v5 = 16;
                                }
                              }

                              else
                              {
                                v5 = 15;
                              }
                            }

                            else
                            {
                              v5 = 4;
                            }
                          }

                          else
                          {
                            v5 = 10;
                          }
                        }

                        else
                        {
                          v5 = 9;
                        }
                      }

                      else
                      {
                        v5 = 7;
                      }
                    }

                    else
                    {
                      v5 = 8;
                    }
                  }

                  else
                  {
                    v5 = 14;
                  }
                }

                else
                {
                  v5 = 12;
                }
              }

              else
              {
                v5 = 13;
              }
            }

            else
            {
              v5 = 11;
            }
          }

          else
          {
            v5 = 2;
          }
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 5;
      }
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)rfSchemaRFSiriModeFromResponseMode:(id)mode
{
  modeCopy = mode;
  v4 = modeCopy;
  if (modeCopy)
  {
    if ([modeCopy caseInsensitiveCompare:*MEMORY[0x277D48C98]])
    {
      if ([v4 caseInsensitiveCompare:*MEMORY[0x277D48C90]])
      {
        if ([v4 caseInsensitiveCompare:*MEMORY[0x277D48CA8]])
        {
          if ([v4 caseInsensitiveCompare:*MEMORY[0x277D48CA0]])
          {
            v5 = 0;
          }

          else
          {
            v5 = 3;
          }
        }

        else
        {
          v5 = 4;
        }
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)emitPatternExecutedEvent:(id)event addViews:(id)views
{
  v26 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  viewsCopy = views;
  patternId = [viewsCopy patternId];

  if (patternId)
  {
    v9 = objc_alloc_init(MEMORY[0x277D5A370]);
    patternId2 = [viewsCopy patternId];
    [v9 setPatternId:patternId2];

    patternType = [viewsCopy patternType];
    [v9 setPattern:{-[SVXInstrumentationUtilities rfSchemaRFPatternFromPatternType:](self, "rfSchemaRFPatternFromPatternType:", patternType)}];

    responseMode = [viewsCopy responseMode];
    [v9 setMode:{-[SVXInstrumentationUtilities rfSchemaRFSiriModeFromResponseMode:](self, "rfSchemaRFSiriModeFromResponseMode:", responseMode)}];

    v13 = objc_alloc_init(MEMORY[0x277D5A330]);
    v14 = objc_alloc(MEMORY[0x277D5AC78]);
    turnIdentifier = [eventCopy turnIdentifier];
    v16 = [v14 initWithNSUUID:turnIdentifier];
    [v13 setTurnId:v16];

    v17 = objc_alloc_init(MEMORY[0x277D5A328]);
    [v17 setEventMetadata:v13];
    [v17 setPatternExecuted:v9];
    v18 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v22 = 136315394;
      v23 = "[SVXInstrumentationUtilities emitPatternExecutedEvent:addViews:]";
      v24 = 2112;
      v25 = viewsCopy;
      _os_log_impl(&dword_2695B9000, v18, OS_LOG_TYPE_INFO, "%s #SVXInstrumentation - Emit Pattern Executed event (addViews: %@)", &v22, 0x16u);
    }

    v19 = [(SVXAssistantSiriAnalyticsProvider *)self->_siriAnalyticsProvider get];
    defaultMessageStream = [v19 defaultMessageStream];
    [defaultMessageStream emitMessage:v17];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_emitUUFRSaidWithModeSupport:(id)support dialogIdentifier:(id)identifier dialogPhase:(id)phase speakableText:(id)text currentMode:(unint64_t)mode
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  phaseCopy = phase;
  textCopy = text;
  v15 = MEMORY[0x277D5AA18];
  supportCopy = support;
  v17 = objc_alloc_init(v15);
  [v17 setDialogPhase:phaseCopy];
  [v17 setPresentationType:6];
  [v17 setSiriResponseMode:{-[SVXInstrumentationUtilities convertModeToResponseMode:](self, "convertModeToResponseMode:", mode)}];
  v18 = objc_alloc_init(MEMORY[0x277D5AC48]);
  [v18 setDialogIdentifier:identifierCopy];
  [v18 setSiriResponseContext:v17];
  v19 = [textCopy containsString:@"\\audio=/successSonicResponse"];
  v20 = MEMORY[0x277CEF098];
  if (v19)
  {
    [v18 setHasSonicResponse:1];
    if ([textCopy containsString:@"\\audio=/successSonicResponse&overlap"])
    {
      [v18 setSonicResponse:2];
      v21 = *v20;
      if (!os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_7;
      }
    }

    else
    {
      [v18 setSonicResponse:4];
      v21 = *v20;
      if (!os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_7;
      }
    }

    v22 = v21;
    *v27 = 136315394;
    *&v27[4] = "[SVXInstrumentationUtilities _emitUUFRSaidWithModeSupport:dialogIdentifier:dialogPhase:speakableText:currentMode:]";
    *&v27[12] = 1024;
    *&v27[14] = [v18 sonicResponse];
    _os_log_impl(&dword_2695B9000, v22, OS_LOG_TYPE_INFO, "%s #SVXInstrumentation - Added sonic response to UUFR said event (type: %d)", v27, 0x12u);
  }

LABEL_7:
  v23 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
  {
    v24 = v23;
    v25 = MDModeGetName();
    *v27 = 136315906;
    *&v27[4] = "[SVXInstrumentationUtilities _emitUUFRSaidWithModeSupport:dialogIdentifier:dialogPhase:speakableText:currentMode:]";
    *&v27[12] = 2112;
    *&v27[14] = identifierCopy;
    *&v27[22] = 2112;
    v28 = phaseCopy;
    v29 = 2112;
    v30 = v25;
    _os_log_impl(&dword_2695B9000, v24, OS_LOG_TYPE_INFO, "%s #SVXInstrumentation - Emit UUFR said event (dialogIdentifier: %@, dialogPhase: %@, mode: %@)", v27, 0x2Au);
  }

  [supportCopy emitInstrumentation:{v18, *v27, *&v27[16]}];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)emitUUFRSaid:(id)said dialogIdentifier:(id)identifier dialogPhase:(id)phase
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  phaseCopy = phase;
  v9 = MEMORY[0x277D5AA18];
  saidCopy = said;
  v11 = objc_alloc_init(v9);
  [v11 setDialogPhase:phaseCopy];
  [v11 setPresentationType:6];
  [v11 setSiriResponseMode:1];
  v12 = objc_alloc_init(MEMORY[0x277D5AC48]);
  [v12 setDialogIdentifier:identifierCopy];
  [v12 setSiriResponseContext:v11];
  v13 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v15 = 136315650;
    v16 = "[SVXInstrumentationUtilities emitUUFRSaid:dialogIdentifier:dialogPhase:]";
    v17 = 2112;
    v18 = identifierCopy;
    v19 = 2112;
    v20 = phaseCopy;
    _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s #SVXInstrumentation - Emit UUFR said event (dialogIdentifier: %@, dialogPhase: %@)", &v15, 0x20u);
  }

  [saidCopy emitInstrumentation:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (SVXInstrumentationUtilities)initWithSiriAnalyticsProvider:(id)provider powerInstrumentation:(id)instrumentation
{
  providerCopy = provider;
  instrumentationCopy = instrumentation;
  v12.receiver = self;
  v12.super_class = SVXInstrumentationUtilities;
  v9 = [(SVXInstrumentationUtilities *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_siriAnalyticsProvider, provider);
    objc_storeStrong(&v10->_powerInstrumentation, instrumentation);
  }

  return v10;
}

- (SVXInstrumentationUtilities)init
{
  v3 = objc_alloc_init(SVXAssistantSiriAnalyticsProvider);
  v4 = objc_alloc_init(SVXPowerInstrumentation);
  v5 = [(SVXInstrumentationUtilities *)self initWithSiriAnalyticsProvider:v3 powerInstrumentation:v4];

  return v5;
}

@end