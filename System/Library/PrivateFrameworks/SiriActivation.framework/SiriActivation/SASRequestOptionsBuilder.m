@interface SASRequestOptionsBuilder
- (BOOL)_siriIsEnabled;
- (id)_createRequestOptionsForRequest:(id)a3 withDataSource:(id)a4;
- (id)buildOptionsWithRequest:(id)a3 presentationIdentifier:(int64_t)a4 dataSource:(id)a5;
@end

@implementation SASRequestOptionsBuilder

- (BOOL)_siriIsEnabled
{
  v3 = [(SASRequestOptionsBuilder *)self systemState];
  if ([v3 siriIsEnabled])
  {
    v4 = [(SASRequestOptionsBuilder *)self systemState];
    v5 = [v4 siriIsRestricted] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)buildOptionsWithRequest:(id)a3 presentationIdentifier:(int64_t)a4 dataSource:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (-[SASRequestOptionsBuilder _siriIsEnabled](self, "_siriIsEnabled") || [v8 isVisualIntelligenceRequest])
  {
    [(SASRequestOptionsBuilder *)self setPresentationIdentifier:a4];
    v10 = [(SASRequestOptionsBuilder *)self _createRequestOptionsForRequest:v8 withDataSource:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_createRequestOptionsForRequest:(id)a3 withDataSource:(id)a4
{
  v116 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 requestOptionsBuilder:self uiPresentationIdentifierWithActivation:v6 activationPresentation:{-[SASRequestOptionsBuilder presentationIdentifier](self, "presentationIdentifier")}];
  v9 = [SASRequestOptions alloc];
  v10 = [v6 requestSource];
  v11 = [(SASRequestOptionsBuilder *)self systemState];
  v12 = [(SASRequestOptions *)v9 initWithRequestSource:v10 uiPresentationIdentifier:v8 systemState:v11];

  -[SASRequestOptions setPredictedRecordRouteIsZLL:](v12, "setPredictedRecordRouteIsZLL:", [v7 requestOptionsBuilder:self isPredictedRecordRouteIsZLLWithActiviation:v6]);
  if ([v6 isButtonRequest])
  {
    [v6 buttonDownTimestamp];
    if (v13 == 0.0)
    {
      v14 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v115 = "[SASRequestOptionsBuilder _createRequestOptionsForRequest:withDataSource:]";
        _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s Button Down Event absent. Artificially update timestamp.", buf, 0xCu);
      }

      v15 = [MEMORY[0x1E696AE30] processInfo];
      [v15 systemUptime];
      v17 = v16;

      v18 = [(SASRequestOptionsBuilder *)self systemState];
      if ([v18 accessibilityShortcutEnabled] && (objc_msgSend(v6, "requestSource") == 1 || objc_msgSend(v6, "requestSource") == 2 || objc_msgSend(v6, "requestSource") == 29))
      {
        v19 = [(SASRequestOptions *)v12 isForStark];

        if (!v19)
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
    -[SASRequestOptions setLongPressBehavior:](v12, "setLongPressBehavior:", [v6 longPressBehavior]);
  }

  [v6 computedActivationTime];
  [(SASRequestOptions *)v12 setComputedActivationTime:?];
  v20 = [v6 context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v6 isButtonRequest];

    if (v21)
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
  v23 = [v6 context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v25 = [v6 context];
    -[SASRequestOptions setTvRemoteType:](v12, "setTvRemoteType:", SASRemoteTypeFromSiriTVRemoteType([v25 remoteType]));
    -[SASRequestOptions setIsTVRemoteSourcePTTEligible:](v12, "setIsTVRemoteSourcePTTEligible:", [v25 isPTTEligible]);
  }

  if ([v6 isButtonRequest] && objc_msgSend(v6, "buttonIdentifier") == 6)
  {
    [(SASRequestOptions *)v12 buttonDownTimestamp];
  }

  else
  {
    [(SASRequestOptions *)v12 computedActivationTime];
  }

  [(SASRequestOptions *)v12 setTimestamp:?];
  -[SASRequestOptions setInitialBringUp:](v12, "setInitialBringUp:", [v7 requestOptionsBuilder:self isRequestInitialWithActiviation:v6]);
  -[SASRequestOptions setUseAutomaticEndpointing:](v12, "setUseAutomaticEndpointing:", [v7 requestOptionsBuilder:self shouldRequestUseAutomaticEndpointingWithActiviation:v6]);
  -[SASRequestOptions setAcousticIdEnabled:](v12, "setAcousticIdEnabled:", [v7 requestOptionsBuilder:self isAcousticIdAllowedWithActiviation:v6]);
  v26 = [v6 context];
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (v27)
  {
    v28 = [v6 context];
    v29 = [v28 activationEventInstrumentationIdentifier];
    [(SASRequestOptions *)v12 setActivationEventInstrumentationIdenifier:v29];
  }

  if ([v6 isDirectActionRequest])
  {
    v109 = v8;
    v110 = v7;
    v30 = [v6 context];
    -[SASRequestOptions setDirectActionEvent:](v12, "setDirectActionEvent:", [v30 directActionEvent]);
    v31 = [v30 payload];
    v32 = [v31 mutableCopy];

    v33 = [v32 allKeys];
    v34 = [v33 containsObject:@"__supportsCarFullScreen"];

    if (v34)
    {
      [v32 removeObjectForKey:@"__supportsCarFullScreen"];
    }

    v35 = [v32 allKeys];
    v36 = [v35 containsObject:@"__bundleId"];

    if (v36)
    {
      v37 = [v32 objectForKey:@"__bundleId"];
      [(SASRequestOptions *)v12 setAppBundleIdentifier:v37];

      [v32 removeObjectForKey:@"__bundleId"];
    }

    v38 = [v32 allKeys];
    v39 = [v38 containsObject:@"AssistantDirectActionEventKey"];

    if (v39)
    {
      [v32 removeObjectForKey:@"AssistantDirectActionEventKey"];
    }

    v40 = [v30 bulletin];

    if (v40)
    {
      v41 = objc_alloc_init(MEMORY[0x1E698D0E8]);
      v42 = [v30 bulletin];
      [v41 setBulletin:v42];

      [(SASRequestOptions *)v12 setBulletin:v41];
      v43 = [v30 bundleId];
      [(SASRequestOptions *)v12 setAppBundleIdentifier:v43];
    }

    v44 = [v30 notification];

    if (v44)
    {
      v45 = objc_alloc_init(MEMORY[0x1E698D0E8]);
      v46 = [v30 notification];
      v47 = [v30 bundleId];
      [v45 setNotification:v46 fromSourceApp:v47];

      [(SASRequestOptions *)v12 setBulletin:v45];
      v48 = [v30 bundleId];
      [(SASRequestOptions *)v12 setAppBundleIdentifier:v48];
    }

    v49 = [v30 bundleId];
    if (v49)
    {
      v50 = v49;
      v51 = [(SASRequestOptions *)v12 appBundleIdentifier];

      if (!v51)
      {
        v52 = [v30 bundleId];
        [(SASRequestOptions *)v12 setAppBundleIdentifier:v52];
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
    v57 = [(SASRequestOptions *)v54 directActionApplicationContext];
    v58 = AFDirectActionCreateRequestInfo();

    [(SASRequestOptions *)v54 setRequestInfo:v58];
    v8 = v109;
    v7 = v110;
  }

  v59 = [v6 context];
  objc_opt_class();
  v60 = objc_opt_isKindOfClass();

  if (v60)
  {
    v61 = [v6 context];
    v62 = [v61 testingRequestInfo];

    if (v62)
    {
      [(SASRequestOptions *)v12 setRequestInfo:v62];
    }
  }

  if ([v6 isBluetoothRequest])
  {
    v63 = [v6 context];
    v64 = [v63 address];
    [(SASRequestOptions *)v12 setActivationDeviceIdentifier:v64];
  }

  if ([v6 isContinuousConversationRequest])
  {
    v65 = [v6 context];
    objc_opt_class();
    v66 = objc_opt_isKindOfClass();

    if (v66)
    {
      v67 = [v6 context];
      v68 = [v67 speechRequestOptions];
      v69 = [v68 activationDeviceIdentifier];
      [(SASRequestOptions *)v12 setActivationDeviceIdentifier:v69];
    }
  }

  v70 = [v6 context];
  objc_opt_class();
  v71 = objc_opt_isKindOfClass();

  if (v71)
  {
    v72 = [v6 context];
    v73 = [v72 activeDeviceBluetoothIdentifier];
    if ([v73 length])
    {
      [(SASRequestOptions *)v12 setActivationDeviceIdentifier:v73];
    }
  }

  if ([v6 isVoiceRequest])
  {
    v74 = [v6 context];
    v75 = [v74 requestInfo];
    [(SASRequestOptions *)v12 setRequestInfo:v75];
  }

  if ([v6 isContinuityRequest])
  {
    v76 = [v6 context];
    v77 = [v76 requestInfo];
    [(SASRequestOptions *)v12 setRequestInfo:v77];

    v78 = [v76 userActivity];
    [(SASRequestOptions *)v12 setContinuityInfo:v78];

    v79 = [(SASRequestOptions *)v12 requestInfo];
    v80 = [v79 activationEvent];

    if (v80 == 6)
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
      v82 = [(SASRequestOptions *)v12 requestInfo];
      v83 = [v82 activationEvent];

      if (v83 == 9)
      {
        v81 = 42;
      }

      else
      {
        v84 = [(SASRequestOptions *)v12 requestInfo];
        v85 = [v84 activationEvent];

        if (v85 != 10)
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
  if ([v6 isSpotlightRequest])
  {
    v86 = [v6 context];
    v87 = [v86 utteranceText];
    [(SASRequestOptions *)v12 setText:v87];
  }

  v88 = [v6 isTestingRequest];
  if (v7 && v88)
  {
    v89 = [v7 requestOptionsBuilder:self optionsForOverriding:v12 withActiviation:v6];
    v90 = v89;
    if (v89)
    {
      v91 = v89;

      v12 = v91;
    }
  }

  if ([v6 isVocalShortcutRequest])
  {
    v92 = [v6 context];
    v93 = [v92 utteranceText];
    [(SASRequestOptions *)v12 setText:v93];
  }

  if ([v6 requestSource] == 45)
  {
    v94 = [v6 context];
    v95 = [v94 speechRequestOptions];
    v96 = [v95 activationDeviceIdentifier];
    [(SASRequestOptions *)v12 setActivationDeviceIdentifier:v96];
  }

  -[SASRequestOptions setCurrentLockState:](v12, "setCurrentLockState:", [v7 requestOptionsBuilder:self currentLockStateForActivation:v6]);
  -[SASRequestOptions setIsForBluetoothCar:](v12, "setIsForBluetoothCar:", [v7 requestOptionsBuilder:self isSiriCarBluetoothRequest:v6]);
  v97 = [v6 context];
  v98 = [v97 speechRequestOptions];

  if (v98)
  {
    v99 = [v6 context];
    v100 = [v99 speechRequestOptions];

    [(SASRequestOptions *)v12 setSpeechRequestOptions:v100];
    if ([v100 activationEvent] == 31)
    {
      v101 = [v100 activationDeviceIdentifier];
      [(SASRequestOptions *)v12 setActivationDeviceIdentifier:v101];
    }
  }

  v102 = [v6 context];
  objc_opt_class();
  v103 = objc_opt_isKindOfClass();

  if (v103)
  {
    v104 = [v6 context];
    v105 = [v104 launchActions];
    [(SASRequestOptions *)v12 setLaunchActions:v105];

    v106 = [v104 activationIdentifier];
    [(SASRequestOptions *)v12 setActivationPreparationReferenceIdentifier:v106];
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