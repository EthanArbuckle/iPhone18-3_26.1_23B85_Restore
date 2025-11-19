@interface SRUIFPlatformHostingInstrumentationHandler
- (SRUIFPlatformHostingInstrumentationHandler)init;
- (SRUIFPlatformHostingInstrumentationHandlerDelegate)testDelegate;
- (void)_computeStateAndInstrumentIfNecessaryForEvent:(unint64_t)a3;
- (void)appearanceDidChange:(unint64_t)a3 machAbsoluteTime:(unint64_t)a4;
- (void)hostingBringUpProcessedWithTurnIdenitfier:(id)a3;
- (void)hostingDismissalProcessedWithTurnIdenitfier:(id)a3;
- (void)instrumentForAppearanceEvent:(unint64_t)a3 turn:(id)a4 machAbsoluteTime:(unint64_t)a5;
@end

@implementation SRUIFPlatformHostingInstrumentationHandler

- (SRUIFPlatformHostingInstrumentationHandler)init
{
  v6.receiver = self;
  v6.super_class = SRUIFPlatformHostingInstrumentationHandler;
  v2 = [(SRUIFPlatformHostingInstrumentationHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    machAbsoluteForAppearances = v2->_machAbsoluteForAppearances;
    v2->_machAbsoluteForAppearances = v3;
  }

  return v2;
}

- (void)hostingBringUpProcessedWithTurnIdenitfier:(id)a3
{
  objc_storeStrong(&self->_bringUpTurnIdentifier, a3);
  [(SRUIFPlatformHostingInstrumentationHandler *)self _computeStateAndInstrumentIfNecessaryForEvent:0];

  [(SRUIFPlatformHostingInstrumentationHandler *)self _computeStateAndInstrumentIfNecessaryForEvent:1];
}

- (void)hostingDismissalProcessedWithTurnIdenitfier:(id)a3
{
  objc_storeStrong(&self->_dismissalTurnIdentifier, a3);
  [(SRUIFPlatformHostingInstrumentationHandler *)self _computeStateAndInstrumentIfNecessaryForEvent:2];

  [(SRUIFPlatformHostingInstrumentationHandler *)self _computeStateAndInstrumentIfNecessaryForEvent:3];
}

- (void)appearanceDidChange:(unint64_t)a3 machAbsoluteTime:(unint64_t)a4
{
  machAbsoluteForAppearances = self->_machAbsoluteForAppearances;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)machAbsoluteForAppearances setObject:v7 forKey:v8];

  [(SRUIFPlatformHostingInstrumentationHandler *)self _computeStateAndInstrumentIfNecessaryForEvent:a3];
}

- (void)_computeStateAndInstrumentIfNecessaryForEvent:(unint64_t)a3
{
  machAbsoluteForAppearances = self->_machAbsoluteForAppearances;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v13 = [(NSMutableDictionary *)machAbsoluteForAppearances objectForKeyedSubscript:v6];

  if (a3 > 1)
  {
    dismissalTurnIdentifier = self->_dismissalTurnIdentifier;
    if (!dismissalTurnIdentifier)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dismissalTurnIdentifier = self->_bringUpTurnIdentifier;
    if (!dismissalTurnIdentifier)
    {
LABEL_3:
      v8 = 0;
      goto LABEL_11;
    }
  }

  v8 = dismissalTurnIdentifier;
  if (v13)
  {
    -[SRUIFPlatformHostingInstrumentationHandler instrumentForAppearanceEvent:turn:machAbsoluteTime:](self, "instrumentForAppearanceEvent:turn:machAbsoluteTime:", a3, v8, [v13 longLongValue]);
    v9 = self->_machAbsoluteForAppearances;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v9 removeObjectForKey:v10];

    if (a3 == 1)
    {
      v11 = 16;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      v11 = 24;
    }

    v12 = *(&self->super.isa + v11);
    *(&self->super.isa + v11) = 0;
  }

LABEL_11:
}

- (void)instrumentForAppearanceEvent:(unint64_t)a3 turn:(id)a4 machAbsoluteTime:(unint64_t)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_19;
      }

      v9 = objc_alloc_init(MEMORY[0x277D5AB48]);
      v10 = MEMORY[0x277D5AB50];
LABEL_8:
      v11 = objc_alloc_init(v10);
      [v11 setExists:1];
      [v9 setEnded:v11];
      goto LABEL_12;
    }

    v9 = objc_alloc_init(MEMORY[0x277D5AB48]);
    v12 = MEMORY[0x277D5AB58];
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_19;
      }

      v9 = objc_alloc_init(MEMORY[0x277D5AB30]);
      v10 = MEMORY[0x277D5AB38];
      goto LABEL_8;
    }

    v9 = objc_alloc_init(MEMORY[0x277D5AB30]);
    v12 = MEMORY[0x277D5AB40];
  }

  v11 = objc_alloc_init(v12);
  [v11 setExists:1];
  [v9 setStartedOrChanged:v11];
LABEL_12:

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_testDelegate);

    if (WeakRetained)
    {
      v14 = objc_loadWeakRetained(&self->_testDelegate);
      [v14 handler:self requestToInstrumentEvent:v9 turn:v8 machAbsoluteTime:a5];
    }

    else
    {
      v15 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v8 turnIdentifier];
        v18 = [v9 formattedText];
        v20 = 136315906;
        v21 = "[SRUIFPlatformHostingInstrumentationHandler instrumentForAppearanceEvent:turn:machAbsoluteTime:]";
        v22 = 2112;
        v23 = v9;
        v24 = 2112;
        v25 = v17;
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&dword_26951F000, v16, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", &v20, 0x2Au);
      }

      [v8 emitInstrumentation:v9 machAbsoluteTime:a5];
    }
  }

LABEL_19:

  v19 = *MEMORY[0x277D85DE8];
}

- (SRUIFPlatformHostingInstrumentationHandlerDelegate)testDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testDelegate);

  return WeakRetained;
}

@end