@interface CACUtilityToolServer
+ (id)sharedInstance;
- (CACUtilityToolServer)init;
- (id)dictationStatus;
- (id)drillStatus;
- (id)gridNumberToHitRect:(CGRect)a3 displayID:(unsigned int)a4;
- (id)listeningStatus;
- (id)numbersForOnboardingElements;
- (id)overlayStatus;
- (id)recognizedCommandIdentifier;
- (void)addClient:(id)a3;
- (void)notifyClients:(id)a3;
- (void)notifyCorrectionForString;
- (void)notifyDictationModeChanged;
- (void)notifyDidDictateText;
- (void)notifyDrilled;
- (void)notifyListeningStatusChanged;
- (void)notifyNumbersForOnboardingElements;
- (void)notifyOverlayStatusChanged;
- (void)notifyRecognizedCommandIdentifier;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeClient:(id)a3;
- (void)startObserving;
@end

@implementation CACUtilityToolServer

+ (id)sharedInstance
{
  if (sharedInstance_singletonInit != -1)
  {
    +[CACUtilityToolServer sharedInstance];
  }

  v3 = sCACUtilityToolServer;

  return v3;
}

uint64_t __38__CACUtilityToolServer_sharedInstance__block_invoke()
{
  sCACUtilityToolServer = objc_alloc_init(CACUtilityToolServer);

  return MEMORY[0x2821F96F8]();
}

- (CACUtilityToolServer)init
{
  v10.receiver = self;
  v10.super_class = CACUtilityToolServer;
  v2 = [(CACUtilityToolServer *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__getNumbersForElements name:@"SOLabeledElementsOverlayDidUpdateElementsNotification" object:0];

    v4 = dispatch_queue_create("com.apple.speech.ToolServerQueue", 0);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = objc_opt_new();
    [v2 setXpcClients:v6];

    mach_service = xpc_connection_create_mach_service("com.apple.speech.CommandAndControl.utility", *(v2 + 1), 1uLL);
    v8 = *(v2 + 2);
    *(v2 + 2) = mach_service;

    xpc_connection_set_event_handler(*(v2 + 2), &__block_literal_global_10);
    xpc_connection_resume(*(v2 + 2));
  }

  return v2;
}

void __28__CACUtilityToolServer_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (MEMORY[0x26D677810]() == MEMORY[0x277D86450])
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __utility_tool_event_handler_block_invoke;
    handler[3] = &unk_279CEC318;
    v3 = v2;
    v7 = v3;
    xpc_connection_set_event_handler(v3, handler);
    v4 = dispatch_get_global_queue(21, 0);
    xpc_connection_set_target_queue(v3, v4);

    xpc_connection_resume(v3);
    v5 = +[CACUtilityToolServer sharedInstance];
    [v5 addClient:v3];
  }
}

- (void)startObserving
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CACUtilityToolServer_startObserving__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __38__CACUtilityToolServer_startObserving__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CACUtilityToolServer_startObserving__block_invoke_2;
  block[3] = &unk_279CEB2D0;
  block[4] = *(a1 + 32);
  if (startObserving_onceToken != -1)
  {
    dispatch_once(&startObserving_onceToken, block);
  }
}

void __38__CACUtilityToolServer_startObserving__block_invoke_2(uint64_t a1)
{
  v2 = +[CACDisplayManager sharedManager];
  [v2 addObserver:*(a1 + 32) forKeyPath:@"_statusIndicatorType" options:3 context:0];

  v3 = +[CACDisplayManager sharedManager];
  [v3 addObserver:*(a1 + 32) forKeyPath:@"statusIndicatorType" options:3 context:0];

  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v4 addObserver:*(a1 + 32) forKeyPath:@"_recognizerInteractionLevels" options:3 context:0];

  v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v5 addObserver:*(a1 + 32) forKeyPath:@"transientOverlayType" options:3 context:0];

  v6 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v6 addObserver:*(a1 + 32) forKeyPath:@"dictationRecognizerMode" options:3 context:0];

  v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v7 addObserver:*(a1 + 32) forKeyPath:@"previousTextInsertionSpecifier" options:3 context:0];

  v8 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v8 addObserver:*(a1 + 32) forKeyPath:@"recognizedCommandIdentifier" options:3 context:0];

  v9 = +[CACUtilityToolServer sharedInstance];
  [v9 addObserver:*(a1 + 32) forKeyPath:@"phoneticAlternative" options:3 context:0];

  v10 = +[CACDisplayManager sharedManager];
  [v10 addObserver:*(a1 + 32) forKeyPath:@"gridDidDrill" options:3 context:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v12 = a3;
  v8 = *MEMORY[0x277CCA300];
  v9 = a5;
  v10 = [v9 objectForKeyedSubscript:v8];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

  if (v10 != v11 && ([v10 isEqual:v11] & 1) == 0)
  {
    if (([v12 isEqual:@"waitingForWakeUpCommand"] & 1) != 0 || (objc_msgSend(v12, "isEqual:", @"_recognizerInteractionLevels") & 1) != 0 || objc_msgSend(v12, "isEqual:", @"statusIndicatorType"))
    {
      [(CACUtilityToolServer *)self notifyListeningStatusChanged];
    }

    else if ([v12 isEqual:@"transientOverlayType"])
    {
      [(CACUtilityToolServer *)self notifyOverlayStatusChanged];
    }

    else if ([v12 isEqual:@"dictationRecognizerMode"])
    {
      [(CACUtilityToolServer *)self notifyDictationModeChanged];
    }

    else if ([v12 isEqual:@"previousTextInsertionSpecifier"])
    {
      [(CACUtilityToolServer *)self notifyDidDictateText];
    }

    else if ([v12 isEqual:@"recognizedCommandIdentifier"])
    {
      [(CACUtilityToolServer *)self notifyRecognizedCommandIdentifier];
    }

    else if ([v12 isEqual:@"phoneticAlternative"])
    {
      [(CACUtilityToolServer *)self notifyCorrectionForString];
    }

    else if ([v12 isEqual:@"gridDidDrill"])
    {
      [(CACUtilityToolServer *)self notifyDrilled];
    }
  }
}

- (void)notifyNumbersForOnboardingElements
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(CACUtilityToolServer *)self numbersForOnboardingElements];
  v4 = v3;
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = [v3 allKeys];
    v5 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = MEMORY[0x277CCACA8];
          v11 = [v4 valueForKey:v9];
          v12 = [v10 stringWithFormat:@"%@ : %@", v9, v11];

          v19 = @"NumbersForOnboardingElements";
          v20 = v12;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
          [(CACUtilityToolServer *)self notifyClients:v13];
        }

        v6 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v6);
    }
  }
}

- (id)gridNumberToHitRect:(CGRect)a3 displayID:(unsigned int)a4
{
  v4 = &unk_287BF0038;
  if (a3.size.width > 0.0)
  {
    height = a3.size.height;
    if (a3.size.height > 0.0)
    {
      v6 = *&a4;
      width = a3.size.width;
      y = a3.origin.y;
      x = a3.origin.x;
      v10 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v11 = [v10 isActiveOverlayType:@"NumberedGrid"];

      if (v11)
      {
        v12 = +[CACDisplayManager sharedManager];
        v4 = [v12 gridNumberForRect:v6 displayID:{x, y, width, height}];
      }

      else
      {
        v4 = &unk_287BF0060;
      }
    }
  }

  return v4;
}

- (id)numbersForOnboardingElements
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = +[CACDisplayManager sharedManager];
  v4 = [v3 labeledElementsForItemNumbers];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 axIdentifier];
        v12 = v11;
        if (v11 && [v11 rangeOfString:@"AX_ONBOARDING"] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = [v10 numberedLabel];
          [v2 setObject:v13 forKey:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v2 count])
  {
    v14 = v2;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)overlayStatus
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v3 = [v2 activeOverlayType];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"none";
  }

  v6 = v5;

  return v5;
}

- (id)drillStatus
{
  v2 = +[CACDisplayManager sharedManager];
  if ([v2 gridDidDrill])
  {
    v3 = @"1";
  }

  else
  {
    v3 = @"0";
  }

  v4 = v3;

  return v3;
}

- (void)notifyDictationModeChanged
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(CACUtilityToolServer *)self dictationStatus];
  v4 = v3;
  if (v3)
  {
    v6 = @"DictationStatusString";
    v7[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(CACUtilityToolServer *)self notifyClients:v5];
  }
}

- (id)dictationStatus
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v3 = [v2 dictationRecognizerMode];

  if (v3 > 3)
  {
    return @"Default";
  }

  else
  {
    return off_279CEC338[v3];
  }
}

- (void)notifyDidDictateText
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v4 = [v3 previousTextInsertionSpecifier];

  v5 = [v4 insertedString];
  if ([v5 length])
  {
    v7 = @"DidDictateText";
    v8[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CACUtilityToolServer *)self notifyClients:v6];
  }
}

- (void)notifyOverlayStatusChanged
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"OverlayStatusString";
  v3 = [(CACUtilityToolServer *)self overlayStatus];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(CACUtilityToolServer *)self notifyClients:v4];
}

- (void)notifyDrilled
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"DrilledAtNumber";
  v3 = [(CACUtilityToolServer *)self drillStatus];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(CACUtilityToolServer *)self notifyClients:v4];
}

- (id)listeningStatus
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v3 = [v2 isListening];

  if (!v3)
  {
    return @"Off";
  }

  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v5 = [v4 currentInteractionLevel];

  if ((v5 - 1) >= 2)
  {
    return @"Listening";
  }

  else
  {
    return @"Sleeping";
  }
}

- (void)notifyListeningStatusChanged
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(CACUtilityToolServer *)self listeningStatus];
  v4 = v3;
  if (v3)
  {
    v6 = @"ListeningStatusString";
    v7[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(CACUtilityToolServer *)self notifyClients:v5];
  }
}

- (void)notifyRecognizedCommandIdentifier
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(CACUtilityToolServer *)self recognizedCommandIdentifier];
  v4 = v3;
  if (v3)
  {
    v6 = @"RecognizedCommandIdentifierString";
    v7[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(CACUtilityToolServer *)self notifyClients:v5];
  }
}

- (id)recognizedCommandIdentifier
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v3 = [v2 recognizedCommandIdentifier];

  if (v3 && (v12 = 0u, v13 = 0u, v10 = 0u, v11 = 0u, (v4 = [&unk_287BEFFC0 countByEnumeratingWithState:&v10 objects:v14 count:16]) != 0))
  {
    v5 = v4;
    v6 = *v11;
    v7 = @"OtherIdentifier";
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(&unk_287BEFFC0);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:v3])
        {
          v7 = v3;
          goto LABEL_13;
        }
      }

      v5 = [&unk_287BEFFC0 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = @"OtherIdentifier";
  }

LABEL_13:

  return v7;
}

- (void)notifyCorrectionForString
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(CACUtilityToolServer *)self phoneticAlternative];

  if (v3)
  {
    v6 = @"PhoneticAlternative";
    v4 = [(CACUtilityToolServer *)self phoneticAlternative];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(CACUtilityToolServer *)self notifyClients:v5];
  }
}

- (void)notifyClients:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = CACCreateSerializedObject(a3);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CACUtilityToolServer *)self xpcClients];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        xpc_connection_send_message(*(*(&v10 + 1) + 8 * v9++), v4);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addClient:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CACUtilityToolServer *)self startObserving];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __34__CACUtilityToolServer_addClient___block_invoke;
    v5[3] = &unk_279CEB4C0;
    v6 = v4;
    v7 = self;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __34__CACUtilityToolServer_addClient___block_invoke(uint64_t a1)
{
  if (utility_tool_connection_entitled())
  {
    v2 = [*(a1 + 40) xpcClients];
    [v2 addObject:*(a1 + 32)];
  }
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__CACUtilityToolServer_removeClient___block_invoke;
    v6[3] = &unk_279CEB4C0;
    v6[4] = self;
    v7 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __37__CACUtilityToolServer_removeClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcClients];
  [v2 removeObject:*(a1 + 40)];
}

@end