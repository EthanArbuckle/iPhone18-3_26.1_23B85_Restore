@interface SASRequestOptionsBuilder
- (BOOL)_siriIsEnabled;
- (id)_createRequestOptionsForRequest:(id)request withDataSource:(id)source;
- (id)buildOptionsWithRequest:(id)request presentationIdentifier:(int64_t)identifier dataSource:(id)source;
@end

@implementation SASRequestOptionsBuilder

- (BOOL)_siriIsEnabled
{
  systemState = [(SASRequestOptionsBuilder *)self systemState];
  if ([systemState siriIsEnabled])
  {
    systemState2 = [(SASRequestOptionsBuilder *)self systemState];
    v5 = [systemState2 siriIsRestricted] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)buildOptionsWithRequest:(id)request presentationIdentifier:(int64_t)identifier dataSource:(id)source
{
  requestCopy = request;
  sourceCopy = source;
  if (-[SASRequestOptionsBuilder _siriIsEnabled](self, "_siriIsEnabled") || [requestCopy isVisualIntelligenceRequest])
  {
    [(SASRequestOptionsBuilder *)self setPresentationIdentifier:identifier];
    v10 = [(SASRequestOptionsBuilder *)self _createRequestOptionsForRequest:requestCopy withDataSource:sourceCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_createRequestOptionsForRequest:(id)request withDataSource:(id)source
{
  v116 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  sourceCopy = source;
  v8 = [sourceCopy requestOptionsBuilder:self uiPresentationIdentifierWithActivation:requestCopy activationPresentation:{-[SASRequestOptionsBuilder presentationIdentifier](self, "presentationIdentifier")}];
  v9 = [SASRequestOptions alloc];
  requestSource = [requestCopy requestSource];
  systemState = [(SASRequestOptionsBuilder *)self systemState];
  v12 = [(SASRequestOptions *)v9 initWithRequestSource:requestSource uiPresentationIdentifier:v8 systemState:systemState];

  -[SASRequestOptions setPredictedRecordRouteIsZLL:](v12, "setPredictedRecordRouteIsZLL:", [sourceCopy requestOptionsBuilder:self isPredictedRecordRouteIsZLLWithActiviation:requestCopy]);
  if ([requestCopy isButtonRequest])
  {
    [requestCopy buttonDownTimestamp];
    if (v13 == 0.0)
    {
      v14 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v115 = "[SASRequestOptionsBuilder _createRequestOptionsForRequest:withDataSource:]";
        _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s Button Down Event absent. Artificially update timestamp.", buf, 0xCu);
      }

      processInfo = [MEMORY[0x1E696AE30] processInfo];
      [processInfo systemUptime];
      v17 = v16;

      systemState2 = [(SASRequestOptionsBuilder *)self systemState];
      if ([systemState2 accessibilityShortcutEnabled] && (objc_msgSend(requestCopy, "requestSource") == 1 || objc_msgSend(requestCopy, "requestSource") == 2 || objc_msgSend(requestCopy, "requestSource") == 29))
      {
        isForStark = [(SASRequestOptions *)v12 isForStark];

        if (!isForStark)
        {
          v17 = v17 + -0.3;
        }
      }

      else
      {
      }
    }

    else
    {
      v17 = v13;
    }

    [(SASRequestOptions *)v12 setButtonDownTimestamp:v17];
    -[SASRequestOptions setLongPressBehavior:](v12, "setLongPressBehavior:", [requestCopy longPressBehavior]);
  }

  [requestCopy computedActivationTime];
  [(SASRequestOptions *)v12 setComputedActivationTime:?];
  context = [requestCopy context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isButtonRequest = [requestCopy isButtonRequest];

    if (isButtonRequest)
    {
      v22 = 1;
      goto LABEL_20;
    }
  }

  else
  {
  }

  v22 = 0;
LABEL_20:
  [(SASRequestOptions *)v12 setShortButtonPressAction:v22];
  context2 = [requestCopy context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    context3 = [requestCopy context];
    -[SASRequestOptions setTvRemoteType:](v12, "setTvRemoteType:", SASRemoteTypeFromSiriTVRemoteType([context3 remoteType]));
    -[SASRequestOptions setIsTVRemoteSourcePTTEligible:](v12, "setIsTVRemoteSourcePTTEligible:", [context3 isPTTEligible]);
  }

  if ([requestCopy isButtonRequest] && objc_msgSend(requestCopy, "buttonIdentifier") == 6)
  {
    [(SASRequestOptions *)v12 buttonDownTimestamp];
  }

  else
  {
    [(SASRequestOptions *)v12 computedActivationTime];
  }

  [(SASRequestOptions *)v12 setTimestamp:?];
  -[SASRequestOptions setInitialBringUp:](v12, "setInitialBringUp:", [sourceCopy requestOptionsBuilder:self isRequestInitialWithActiviation:requestCopy]);
  -[SASRequestOptions setUseAutomaticEndpointing:](v12, "setUseAutomaticEndpointing:", [sourceCopy requestOptionsBuilder:self shouldRequestUseAutomaticEndpointingWithActiviation:requestCopy]);
  -[SASRequestOptions setAcousticIdEnabled:](v12, "setAcousticIdEnabled:", [sourceCopy requestOptionsBuilder:self isAcousticIdAllowedWithActiviation:requestCopy]);
  context4 = [requestCopy context];
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (v27)
  {
    context5 = [requestCopy context];
    activationEventInstrumentationIdentifier = [context5 activationEventInstrumentationIdentifier];
    [(SASRequestOptions *)v12 setActivationEventInstrumentationIdenifier:activationEventInstrumentationIdentifier];
  }

  if ([requestCopy isDirectActionRequest])
  {
    v109 = v8;
    v110 = sourceCopy;
    context6 = [requestCopy context];
    -[SASRequestOptions setDirectActionEvent:](v12, "setDirectActionEvent:", [context6 directActionEvent]);
    payload = [context6 payload];
    v32 = [payload mutableCopy];

    allKeys = [v32 allKeys];
    v34 = [allKeys containsObject:@"__supportsCarFullScreen"];

    if (v34)
    {
      [v32 removeObjectForKey:@"__supportsCarFullScreen"];
    }

    allKeys2 = [v32 allKeys];
    v36 = [allKeys2 containsObject:@"__bundleId"];

    if (v36)
    {
      v37 = [v32 objectForKey:@"__bundleId"];
      [(SASRequestOptions *)v12 setAppBundleIdentifier:v37];

      [v32 removeObjectForKey:@"__bundleId"];
    }

    allKeys3 = [v32 allKeys];
    v39 = [allKeys3 containsObject:@"AssistantDirectActionEventKey"];

    if (v39)
    {
      [v32 removeObjectForKey:@"AssistantDirectActionEventKey"];
    }

    bulletin = [context6 bulletin];

    if (bulletin)
    {
      v41 = objc_alloc_init(MEMORY[0x1E698D0E8]);
      bulletin2 = [context6 bulletin];
      [v41 setBulletin:bulletin2];

      [(SASRequestOptions *)v12 setBulletin:v41];
      bundleId = [context6 bundleId];
      [(SASRequestOptions *)v12 setAppBundleIdentifier:bundleId];
    }

    notification = [context6 notification];

    if (notification)
    {
      v45 = objc_alloc_init(MEMORY[0x1E698D0E8]);
      notification2 = [context6 notification];
      bundleId2 = [context6 bundleId];
      [v45 setNotification:notification2 fromSourceApp:bundleId2];

      [(SASRequestOptions *)v12 setBulletin:v45];
      bundleId3 = [context6 bundleId];
      [(SASRequestOptions *)v12 setAppBundleIdentifier:bundleId3];
    }

    bundleId4 = [context6 bundleId];
    if (bundleId4)
    {
      v50 = bundleId4;
      appBundleIdentifier = [(SASRequestOptions *)v12 appBundleIdentifier];

      if (!appBundleIdentifier)
      {
        bundleId5 = [context6 bundleId];
        [(SASRequestOptions *)v12 setAppBundleIdentifier:bundleId5];
      }
    }

    v53 = MEMORY[0x1E698D0D0];
    v111[0] = MEMORY[0x1E69E9820];
    v111[1] = 3221225472;
    v111[2] = __75__SASRequestOptionsBuilder__createRequestOptionsForRequest_withDataSource___block_invoke;
    v111[3] = &unk_1E82F35C0;
    v54 = v12;
    v112 = v54;
    v113 = v32;
    v55 = v32;
    v56 = [v53 newWithBuilder:v111];
    [(SASRequestOptions *)v54 setDirectActionApplicationContext:v56];
    AFDirectActionSourceFromSASRequestSource([(SASRequestOptions *)v54 requestSource]);
    [(SASRequestOptions *)v54 directActionEvent];
    directActionApplicationContext = [(SASRequestOptions *)v54 directActionApplicationContext];
    v58 = AFDirectActionCreateRequestInfo();

    [(SASRequestOptions *)v54 setRequestInfo:v58];
    v8 = v109;
    sourceCopy = v110;
  }

  context7 = [requestCopy context];
  objc_opt_class();
  v60 = objc_opt_isKindOfClass();

  if (v60)
  {
    context8 = [requestCopy context];
    testingRequestInfo = [context8 testingRequestInfo];

    if (testingRequestInfo)
    {
      [(SASRequestOptions *)v12 setRequestInfo:testingRequestInfo];
    }
  }

  if ([requestCopy isBluetoothRequest])
  {
    context9 = [requestCopy context];
    address = [context9 address];
    [(SASRequestOptions *)v12 setActivationDeviceIdentifier:address];
  }

  if ([requestCopy isContinuousConversationRequest])
  {
    context10 = [requestCopy context];
    objc_opt_class();
    v66 = objc_opt_isKindOfClass();

    if (v66)
    {
      context11 = [requestCopy context];
      speechRequestOptions = [context11 speechRequestOptions];
      activationDeviceIdentifier = [speechRequestOptions activationDeviceIdentifier];
      [(SASRequestOptions *)v12 setActivationDeviceIdentifier:activationDeviceIdentifier];
    }
  }

  context12 = [requestCopy context];
  objc_opt_class();
  v71 = objc_opt_isKindOfClass();

  if (v71)
  {
    context13 = [requestCopy context];
    activeDeviceBluetoothIdentifier = [context13 activeDeviceBluetoothIdentifier];
    if ([activeDeviceBluetoothIdentifier length])
    {
      [(SASRequestOptions *)v12 setActivationDeviceIdentifier:activeDeviceBluetoothIdentifier];
    }
  }

  if ([requestCopy isVoiceRequest])
  {
    context14 = [requestCopy context];
    requestInfo = [context14 requestInfo];
    [(SASRequestOptions *)v12 setRequestInfo:requestInfo];
  }

  if ([requestCopy isContinuityRequest])
  {
    context15 = [requestCopy context];
    requestInfo2 = [context15 requestInfo];
    [(SASRequestOptions *)v12 setRequestInfo:requestInfo2];

    userActivity = [context15 userActivity];
    [(SASRequestOptions *)v12 setContinuityInfo:userActivity];

    requestInfo3 = [(SASRequestOptions *)v12 requestInfo];
    activationEvent = [requestInfo3 activationEvent];

    if (activationEvent == 6)
    {
      if ([v8 isEqualToString:@"com.apple.siri.CarDisplay.UIFree"])
      {
        v81 = 38;
      }

      else
      {
        v81 = 41;
      }
    }

    else
    {
      requestInfo4 = [(SASRequestOptions *)v12 requestInfo];
      activationEvent2 = [requestInfo4 activationEvent];

      if (activationEvent2 == 9)
      {
        v81 = 42;
      }

      else
      {
        requestInfo5 = [(SASRequestOptions *)v12 requestInfo];
        activationEvent3 = [requestInfo5 activationEvent];

        if (activationEvent3 != 10)
        {
LABEL_68:

          goto LABEL_69;
        }

        v81 = 43;
      }
    }

    [(SASRequestOptions *)v12 setRequestSource:v81];
    goto LABEL_68;
  }

LABEL_69:
  if ([requestCopy isSpotlightRequest])
  {
    context16 = [requestCopy context];
    utteranceText = [context16 utteranceText];
    [(SASRequestOptions *)v12 setText:utteranceText];
  }

  isTestingRequest = [requestCopy isTestingRequest];
  if (sourceCopy && isTestingRequest)
  {
    v89 = [sourceCopy requestOptionsBuilder:self optionsForOverriding:v12 withActiviation:requestCopy];
    v90 = v89;
    if (v89)
    {
      v91 = v89;

      v12 = v91;
    }
  }

  if ([requestCopy isVocalShortcutRequest])
  {
    context17 = [requestCopy context];
    utteranceText2 = [context17 utteranceText];
    [(SASRequestOptions *)v12 setText:utteranceText2];
  }

  if ([requestCopy requestSource] == 45)
  {
    context18 = [requestCopy context];
    speechRequestOptions2 = [context18 speechRequestOptions];
    activationDeviceIdentifier2 = [speechRequestOptions2 activationDeviceIdentifier];
    [(SASRequestOptions *)v12 setActivationDeviceIdentifier:activationDeviceIdentifier2];
  }

  -[SASRequestOptions setCurrentLockState:](v12, "setCurrentLockState:", [sourceCopy requestOptionsBuilder:self currentLockStateForActivation:requestCopy]);
  -[SASRequestOptions setIsForBluetoothCar:](v12, "setIsForBluetoothCar:", [sourceCopy requestOptionsBuilder:self isSiriCarBluetoothRequest:requestCopy]);
  context19 = [requestCopy context];
  speechRequestOptions3 = [context19 speechRequestOptions];

  if (speechRequestOptions3)
  {
    context20 = [requestCopy context];
    speechRequestOptions4 = [context20 speechRequestOptions];

    [(SASRequestOptions *)v12 setSpeechRequestOptions:speechRequestOptions4];
    if ([speechRequestOptions4 activationEvent] == 31)
    {
      activationDeviceIdentifier3 = [speechRequestOptions4 activationDeviceIdentifier];
      [(SASRequestOptions *)v12 setActivationDeviceIdentifier:activationDeviceIdentifier3];
    }
  }

  context21 = [requestCopy context];
  objc_opt_class();
  v103 = objc_opt_isKindOfClass();

  if (v103)
  {
    context22 = [requestCopy context];
    launchActions = [context22 launchActions];
    [(SASRequestOptions *)v12 setLaunchActions:launchActions];

    activationIdentifier = [context22 activationIdentifier];
    [(SASRequestOptions *)v12 setActivationPreparationReferenceIdentifier:activationIdentifier];
  }

  v107 = *MEMORY[0x1E69E9840];

  return v12;
}

void __75__SASRequestOptionsBuilder__createRequestOptionsForRequest_withDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 appBundleIdentifier];
  [v6 setAssociatedBundleIdentifier:v4];

  v5 = [*(a1 + 32) bulletin];
  [v6 setBulletin:v5];

  [v6 setContextDictionary:*(a1 + 40)];
}

@end