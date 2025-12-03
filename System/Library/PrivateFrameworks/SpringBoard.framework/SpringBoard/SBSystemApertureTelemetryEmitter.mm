@interface SBSystemApertureTelemetryEmitter
+ (id)stringBySanitizingNil:(id)nil;
+ (void)_emitCoreAnalyticsTelemetryIfNecessaryWithUpdatedContext:(id)context previousContext:(id)previousContext;
+ (void)_emitPowerLogIfNecessaryWithUpdatedContext:(id)context previousContext:(id)previousContext;
+ (void)logTelemetryForInteractionLongPress:(BOOL)press clientIdentifier:(id)identifier elementIdentifier:(id)elementIdentifier;
+ (void)logTelemetryForInteractionPanGesture:(int64_t)gesture handled:(BOOL)handled clientIdentifier:(id)identifier elementIdentifier:(id)elementIdentifier;
+ (void)logTelemetryForInteractionTap:(BOOL)tap clientIdentifier:(id)identifier elementIdentifier:(id)elementIdentifier;
+ (void)logTelemetryForUpdatedContext:(id)context;
@end

@implementation SBSystemApertureTelemetryEmitter

+ (void)logTelemetryForUpdatedContext:(id)context
{
  contextCopy = context;
  [self _emitPowerLogIfNecessaryWithUpdatedContext:contextCopy previousContext:logTelemetryForUpdatedContext____previousContext];
  [self _emitCoreAnalyticsTelemetryIfNecessaryWithUpdatedContext:contextCopy previousContext:logTelemetryForUpdatedContext____previousContext];
  v5 = logTelemetryForUpdatedContext____previousContext;
  logTelemetryForUpdatedContext____previousContext = contextCopy;
}

+ (void)_emitCoreAnalyticsTelemetryIfNecessaryWithUpdatedContext:(id)context previousContext:(id)previousContext
{
  contextCopy = context;
  previousContextCopy = previousContext;
  if ((BSEqualObjects() & 1) == 0)
  {
    elementContexts = [contextCopy elementContexts];
    v8 = [elementContexts count];
    if (v8)
    {
      v9 = [elementContexts objectAtIndexedSubscript:0];
      if (v8 == 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = [elementContexts objectAtIndexedSubscript:1];
      }
    }

    else
    {
      v9 = 0;
    }

    elementContexts2 = [previousContextCopy elementContexts];
    v11 = [elementContexts2 count];
    if (v11)
    {
      v12 = [elementContexts2 objectAtIndexedSubscript:0];
      if (v11 == 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = [elementContexts2 objectAtIndexedSubscript:1];
      }
    }

    else
    {
      v12 = 0;
    }

    if (!_SBElementContextsMatchIdentityAndLayoutState(v9, v12) || !_SBElementContextsMatchIdentityAndLayoutState(v8, v11))
    {
      v13 = v9;
      v14 = v12;
      v15 = v8;
      v16 = v11;
      AnalyticsSendEventLazy();
    }
  }
}

id __109__SBSystemApertureTelemetryEmitter__emitCoreAnalyticsTelemetryIfNecessaryWithUpdatedContext_previousContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutMode];
  v3 = [*(a1 + 40) layoutMode];
  v4 = [*(a1 + 48) layoutMode] < 1;
  v5 = [*(a1 + 56) layoutMode];
  v6 = v5 > 0 || v4;
  v7 = v5 > 0 && v4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = *(a1 + 64);
  v10 = [*(a1 + 32) clientIdentifier];
  v11 = [v9 stringBySanitizingNil:v10];
  [v8 setObject:v11 forKeyedSubscript:@"ClientID"];

  v12 = *(a1 + 64);
  v13 = [*(a1 + 32) elementIdentifier];
  v14 = [v12 stringBySanitizingNil:v13];
  [v8 setObject:v14 forKeyedSubscript:@"ElementID"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "layoutMode")}];
  [v8 setObject:v15 forKeyedSubscript:@"LayoutMode"];

  v16 = *(a1 + 64);
  v17 = [*(a1 + 48) clientIdentifier];
  v18 = [v16 stringBySanitizingNil:v17];
  [v8 setObject:v18 forKeyedSubscript:@"SecondaryClientID"];

  v19 = *(a1 + 64);
  v20 = [*(a1 + 48) elementIdentifier];
  v21 = [v19 stringBySanitizingNil:v20];
  [v8 setObject:v21 forKeyedSubscript:@"SecondaryElementID"];

  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "layoutMode")}];
  [v8 setObject:v22 forKeyedSubscript:@"SecondaryLayoutMode"];

  if (v2 < 1 || v3 >= 1)
  {
    if (v2 > 0 || v3 <= 0)
    {
      v24 = @"none";
      if (v7)
      {
        v24 = @"SecondarySessionEnded";
      }

      if (v6)
      {
        v23 = v24;
      }

      else
      {
        v23 = @"SecondarySessionBegan";
      }
    }

    else
    {
      v23 = @"SessionEnded";
    }
  }

  else
  {
    v23 = @"SessionBegan";
  }

  [v8 setObject:v23 forKeyedSubscript:@"Subevent"];

  return v8;
}

+ (void)_emitPowerLogIfNecessaryWithUpdatedContext:(id)context previousContext:(id)previousContext
{
  contextCopy = context;
  previousContextCopy = previousContext;
  if ((BSEqualObjects() & 1) == 0)
  {
    elementContexts = [contextCopy elementContexts];
    v7 = [elementContexts count];
    if (v7)
    {
      v8 = [elementContexts objectAtIndexedSubscript:0];
      if (v7 == 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = [elementContexts objectAtIndexedSubscript:1];
      }
    }

    else
    {
      v8 = 0;
    }

    elementContexts2 = [previousContextCopy elementContexts];
    v10 = [elementContexts2 count];
    if (v10)
    {
      v11 = [elementContexts2 objectAtIndexedSubscript:0];
      if (v10 == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = [elementContexts2 objectAtIndexedSubscript:1];
      }
    }

    else
    {
      v11 = 0;
    }

    if (!_SBElementContextsMatchIdentityAndLayoutState(v8, v11) || !_SBElementContextsMatchIdentityAndLayoutState(v7, v10))
    {
      clientIdentifier = [v8 clientIdentifier];
      elementIdentifier = [v8 elementIdentifier];
      layoutMode = [v8 layoutMode];
      [v7 clientIdentifier];
      v21 = v8;
      v22 = previousContextCopy;
      v15 = elementContexts2;
      v16 = v11;
      v18 = v17 = elementContexts;
      [v7 elementIdentifier];
      v20 = v19 = v10;
      SBSystemAperturePowerLogEvent(clientIdentifier, elementIdentifier, layoutMode, v18, v20);

      v10 = v19;
      elementContexts = v17;
      v11 = v16;
      elementContexts2 = v15;
      v8 = v21;
      previousContextCopy = v22;
    }
  }
}

+ (void)logTelemetryForInteractionTap:(BOOL)tap clientIdentifier:(id)identifier elementIdentifier:(id)elementIdentifier
{
  identifierCopy = identifier;
  elementIdentifierCopy = elementIdentifier;
  v7 = elementIdentifierCopy;
  v8 = identifierCopy;
  AnalyticsSendEventLazy();
}

id __101__SBSystemApertureTelemetryEmitter_logTelemetryForInteractionTap_clientIdentifier_elementIdentifier___block_invoke(uint64_t a1)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = @"ClientID";
  v2 = [*(a1 + 48) stringBySanitizingNil:*(a1 + 32)];
  v8[0] = v2;
  v7[1] = @"ElementID";
  v3 = [*(a1 + 48) stringBySanitizingNil:*(a1 + 40)];
  v8[1] = v3;
  v7[2] = @"Handled";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v7[3] = @"InteractionType";
  v8[2] = v4;
  v8[3] = @"tap";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

+ (void)logTelemetryForInteractionLongPress:(BOOL)press clientIdentifier:(id)identifier elementIdentifier:(id)elementIdentifier
{
  identifierCopy = identifier;
  elementIdentifierCopy = elementIdentifier;
  v7 = elementIdentifierCopy;
  v8 = identifierCopy;
  AnalyticsSendEventLazy();
}

id __107__SBSystemApertureTelemetryEmitter_logTelemetryForInteractionLongPress_clientIdentifier_elementIdentifier___block_invoke(uint64_t a1)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = @"ClientID";
  v2 = [*(a1 + 48) stringBySanitizingNil:*(a1 + 32)];
  v8[0] = v2;
  v7[1] = @"ElementID";
  v3 = [*(a1 + 48) stringBySanitizingNil:*(a1 + 40)];
  v8[1] = v3;
  v7[2] = @"Handled";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v7[3] = @"InteractionType";
  v8[2] = v4;
  v8[3] = @"longPress";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

+ (void)logTelemetryForInteractionPanGesture:(int64_t)gesture handled:(BOOL)handled clientIdentifier:(id)identifier elementIdentifier:(id)elementIdentifier
{
  identifierCopy = identifier;
  elementIdentifierCopy = elementIdentifier;
  v8 = elementIdentifierCopy;
  v9 = identifierCopy;
  AnalyticsSendEventLazy();
}

id __116__SBSystemApertureTelemetryEmitter_logTelemetryForInteractionPanGesture_handled_clientIdentifier_elementIdentifier___block_invoke(uint64_t a1)
{
  v9[5] = *MEMORY[0x277D85DE8];
  v8[0] = @"ClientID";
  v2 = [*(a1 + 48) stringBySanitizingNil:*(a1 + 32)];
  v9[0] = v2;
  v8[1] = @"ElementID";
  v3 = [*(a1 + 48) stringBySanitizingNil:*(a1 + 40)];
  v9[1] = v3;
  v8[2] = @"LayoutMode";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v9[2] = v4;
  v8[3] = @"Handled";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
  v8[4] = @"InteractionType";
  v9[3] = v5;
  v9[4] = @"pan";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:5];

  return v6;
}

+ (id)stringBySanitizingNil:(id)nil
{
  nilCopy = nil;
  v4 = nilCopy;
  if (nilCopy)
  {
    v5 = nilCopy;
  }

  else
  {
    v5 = @"none";
  }

  return v5;
}

@end