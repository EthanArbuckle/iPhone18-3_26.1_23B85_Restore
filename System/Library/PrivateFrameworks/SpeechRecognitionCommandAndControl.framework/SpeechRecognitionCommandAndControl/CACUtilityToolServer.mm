@interface CACUtilityToolServer
+ (id)sharedInstance;
- (CACUtilityToolServer)init;
- (id)dictationStatus;
- (id)drillStatus;
- (id)gridNumberToHitRect:(CGRect)rect displayID:(unsigned int)d;
- (id)listeningStatus;
- (id)numbersForOnboardingElements;
- (id)overlayStatus;
- (id)recognizedCommandIdentifier;
- (void)addClient:(id)client;
- (void)notifyClients:(id)clients;
- (void)notifyCorrectionForString;
- (void)notifyDictationModeChanged;
- (void)notifyDidDictateText;
- (void)notifyDrilled;
- (void)notifyListeningStatusChanged;
- (void)notifyNumbersForOnboardingElements;
- (void)notifyOverlayStatusChanged;
- (void)notifyRecognizedCommandIdentifier;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeClient:(id)client;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__getNumbersForElements name:@"SOLabeledElementsOverlayDidUpdateElementsNotification" object:0];

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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v8 = *MEMORY[0x277CCA300];
  changeCopy = change;
  v10 = [changeCopy objectForKeyedSubscript:v8];
  v11 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

  if (v10 != v11 && ([v10 isEqual:v11] & 1) == 0)
  {
    if (([pathCopy isEqual:@"waitingForWakeUpCommand"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqual:", @"_recognizerInteractionLevels") & 1) != 0 || objc_msgSend(pathCopy, "isEqual:", @"statusIndicatorType"))
    {
      [(CACUtilityToolServer *)self notifyListeningStatusChanged];
    }

    else if ([pathCopy isEqual:@"transientOverlayType"])
    {
      [(CACUtilityToolServer *)self notifyOverlayStatusChanged];
    }

    else if ([pathCopy isEqual:@"dictationRecognizerMode"])
    {
      [(CACUtilityToolServer *)self notifyDictationModeChanged];
    }

    else if ([pathCopy isEqual:@"previousTextInsertionSpecifier"])
    {
      [(CACUtilityToolServer *)self notifyDidDictateText];
    }

    else if ([pathCopy isEqual:@"recognizedCommandIdentifier"])
    {
      [(CACUtilityToolServer *)self notifyRecognizedCommandIdentifier];
    }

    else if ([pathCopy isEqual:@"phoneticAlternative"])
    {
      [(CACUtilityToolServer *)self notifyCorrectionForString];
    }

    else if ([pathCopy isEqual:@"gridDidDrill"])
    {
      [(CACUtilityToolServer *)self notifyDrilled];
    }
  }
}

- (void)notifyNumbersForOnboardingElements
{
  v22 = *MEMORY[0x277D85DE8];
  numbersForOnboardingElements = [(CACUtilityToolServer *)self numbersForOnboardingElements];
  v4 = numbersForOnboardingElements;
  if (numbersForOnboardingElements)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = [numbersForOnboardingElements allKeys];
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

- (id)gridNumberToHitRect:(CGRect)rect displayID:(unsigned int)d
{
  v4 = &unk_287BF0038;
  if (rect.size.width > 0.0)
  {
    height = rect.size.height;
    if (rect.size.height > 0.0)
    {
      v6 = *&d;
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
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
  labeledElementsForItemNumbers = [v3 labeledElementsForItemNumbers];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = labeledElementsForItemNumbers;
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
        axIdentifier = [v10 axIdentifier];
        v12 = axIdentifier;
        if (axIdentifier && [axIdentifier rangeOfString:@"AX_ONBOARDING"] != 0x7FFFFFFFFFFFFFFFLL)
        {
          numberedLabel = [v10 numberedLabel];
          [v2 setObject:numberedLabel forKey:v12];
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
  activeOverlayType = [v2 activeOverlayType];
  v4 = activeOverlayType;
  if (activeOverlayType)
  {
    v5 = activeOverlayType;
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
  dictationStatus = [(CACUtilityToolServer *)self dictationStatus];
  v4 = dictationStatus;
  if (dictationStatus)
  {
    v6 = @"DictationStatusString";
    v7[0] = dictationStatus;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(CACUtilityToolServer *)self notifyClients:v5];
  }
}

- (id)dictationStatus
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  dictationRecognizerMode = [v2 dictationRecognizerMode];

  if (dictationRecognizerMode > 3)
  {
    return @"Default";
  }

  else
  {
    return off_279CEC338[dictationRecognizerMode];
  }
}

- (void)notifyDidDictateText
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  previousTextInsertionSpecifier = [v3 previousTextInsertionSpecifier];

  insertedString = [previousTextInsertionSpecifier insertedString];
  if ([insertedString length])
  {
    v7 = @"DidDictateText";
    v8[0] = insertedString;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CACUtilityToolServer *)self notifyClients:v6];
  }
}

- (void)notifyOverlayStatusChanged
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"OverlayStatusString";
  overlayStatus = [(CACUtilityToolServer *)self overlayStatus];
  v6[0] = overlayStatus;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(CACUtilityToolServer *)self notifyClients:v4];
}

- (void)notifyDrilled
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"DrilledAtNumber";
  drillStatus = [(CACUtilityToolServer *)self drillStatus];
  v6[0] = drillStatus;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(CACUtilityToolServer *)self notifyClients:v4];
}

- (id)listeningStatus
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  isListening = [v2 isListening];

  if (!isListening)
  {
    return @"Off";
  }

  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  currentInteractionLevel = [v4 currentInteractionLevel];

  if ((currentInteractionLevel - 1) >= 2)
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
  listeningStatus = [(CACUtilityToolServer *)self listeningStatus];
  v4 = listeningStatus;
  if (listeningStatus)
  {
    v6 = @"ListeningStatusString";
    v7[0] = listeningStatus;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(CACUtilityToolServer *)self notifyClients:v5];
  }
}

- (void)notifyRecognizedCommandIdentifier
{
  v7[1] = *MEMORY[0x277D85DE8];
  recognizedCommandIdentifier = [(CACUtilityToolServer *)self recognizedCommandIdentifier];
  v4 = recognizedCommandIdentifier;
  if (recognizedCommandIdentifier)
  {
    v6 = @"RecognizedCommandIdentifierString";
    v7[0] = recognizedCommandIdentifier;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(CACUtilityToolServer *)self notifyClients:v5];
  }
}

- (id)recognizedCommandIdentifier
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  recognizedCommandIdentifier = [v2 recognizedCommandIdentifier];

  if (recognizedCommandIdentifier && (v12 = 0u, v13 = 0u, v10 = 0u, v11 = 0u, (v4 = [&unk_287BEFFC0 countByEnumeratingWithState:&v10 objects:v14 count:16]) != 0))
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

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:recognizedCommandIdentifier])
        {
          v7 = recognizedCommandIdentifier;
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
  phoneticAlternative = [(CACUtilityToolServer *)self phoneticAlternative];

  if (phoneticAlternative)
  {
    v6 = @"PhoneticAlternative";
    phoneticAlternative2 = [(CACUtilityToolServer *)self phoneticAlternative];
    v7[0] = phoneticAlternative2;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(CACUtilityToolServer *)self notifyClients:v5];
  }
}

- (void)notifyClients:(id)clients
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = CACCreateSerializedObject(clients);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  xpcClients = [(CACUtilityToolServer *)self xpcClients];
  v6 = [xpcClients countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(xpcClients);
        }

        xpc_connection_send_message(*(*(&v10 + 1) + 8 * v9++), v4);
      }

      while (v7 != v9);
      v7 = [xpcClients countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addClient:(id)client
{
  clientCopy = client;
  if (clientCopy)
  {
    [(CACUtilityToolServer *)self startObserving];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __34__CACUtilityToolServer_addClient___block_invoke;
    v5[3] = &unk_279CEB4C0;
    v6 = clientCopy;
    selfCopy = self;
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

- (void)removeClient:(id)client
{
  clientCopy = client;
  v5 = clientCopy;
  if (clientCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__CACUtilityToolServer_removeClient___block_invoke;
    v6[3] = &unk_279CEB4C0;
    v6[4] = self;
    v7 = clientCopy;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __37__CACUtilityToolServer_removeClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcClients];
  [v2 removeObject:*(a1 + 40)];
}

@end