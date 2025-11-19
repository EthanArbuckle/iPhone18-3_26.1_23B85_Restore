@interface SBSystemApertureTelemetryEmitter
+ (id)stringBySanitizingNil:(id)a3;
+ (void)_emitCoreAnalyticsTelemetryIfNecessaryWithUpdatedContext:(id)a3 previousContext:(id)a4;
+ (void)_emitPowerLogIfNecessaryWithUpdatedContext:(id)a3 previousContext:(id)a4;
+ (void)logTelemetryForInteractionLongPress:(BOOL)a3 clientIdentifier:(id)a4 elementIdentifier:(id)a5;
+ (void)logTelemetryForInteractionPanGesture:(int64_t)a3 handled:(BOOL)a4 clientIdentifier:(id)a5 elementIdentifier:(id)a6;
+ (void)logTelemetryForInteractionTap:(BOOL)a3 clientIdentifier:(id)a4 elementIdentifier:(id)a5;
+ (void)logTelemetryForUpdatedContext:(id)a3;
@end

@implementation SBSystemApertureTelemetryEmitter

+ (void)logTelemetryForUpdatedContext:(id)a3
{
  v4 = a3;
  [a1 _emitPowerLogIfNecessaryWithUpdatedContext:v4 previousContext:logTelemetryForUpdatedContext____previousContext];
  [a1 _emitCoreAnalyticsTelemetryIfNecessaryWithUpdatedContext:v4 previousContext:logTelemetryForUpdatedContext____previousContext];
  v5 = logTelemetryForUpdatedContext____previousContext;
  logTelemetryForUpdatedContext____previousContext = v4;
}

+ (void)_emitCoreAnalyticsTelemetryIfNecessaryWithUpdatedContext:(id)a3 previousContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ((BSEqualObjects() & 1) == 0)
  {
    v7 = [v5 elementContexts];
    v8 = [v7 count];
    if (v8)
    {
      v9 = [v7 objectAtIndexedSubscript:0];
      if (v8 == 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = [v7 objectAtIndexedSubscript:1];
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = [v6 elementContexts];
    v11 = [v10 count];
    if (v11)
    {
      v12 = [v10 objectAtIndexedSubscript:0];
      if (v11 == 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = [v10 objectAtIndexedSubscript:1];
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

+ (void)_emitPowerLogIfNecessaryWithUpdatedContext:(id)a3 previousContext:(id)a4
{
  v23 = a3;
  v5 = a4;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [v23 elementContexts];
    v7 = [v6 count];
    if (v7)
    {
      v8 = [v6 objectAtIndexedSubscript:0];
      if (v7 == 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = [v6 objectAtIndexedSubscript:1];
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = [v5 elementContexts];
    v10 = [v9 count];
    if (v10)
    {
      v11 = [v9 objectAtIndexedSubscript:0];
      if (v10 == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = [v9 objectAtIndexedSubscript:1];
      }
    }

    else
    {
      v11 = 0;
    }

    if (!_SBElementContextsMatchIdentityAndLayoutState(v8, v11) || !_SBElementContextsMatchIdentityAndLayoutState(v7, v10))
    {
      v12 = [v8 clientIdentifier];
      v13 = [v8 elementIdentifier];
      v14 = [v8 layoutMode];
      [v7 clientIdentifier];
      v21 = v8;
      v22 = v5;
      v15 = v9;
      v16 = v11;
      v18 = v17 = v6;
      [v7 elementIdentifier];
      v20 = v19 = v10;
      SBSystemAperturePowerLogEvent(v12, v13, v14, v18, v20);

      v10 = v19;
      v6 = v17;
      v11 = v16;
      v9 = v15;
      v8 = v21;
      v5 = v22;
    }
  }
}

+ (void)logTelemetryForInteractionTap:(BOOL)a3 clientIdentifier:(id)a4 elementIdentifier:(id)a5
{
  v6 = a4;
  v9 = a5;
  v7 = v9;
  v8 = v6;
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

+ (void)logTelemetryForInteractionLongPress:(BOOL)a3 clientIdentifier:(id)a4 elementIdentifier:(id)a5
{
  v6 = a4;
  v9 = a5;
  v7 = v9;
  v8 = v6;
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

+ (void)logTelemetryForInteractionPanGesture:(int64_t)a3 handled:(BOOL)a4 clientIdentifier:(id)a5 elementIdentifier:(id)a6
{
  v7 = a5;
  v10 = a6;
  v8 = v10;
  v9 = v7;
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

+ (id)stringBySanitizingNil:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"none";
  }

  return v5;
}

@end