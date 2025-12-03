@interface SASActivationDecision
+ (BOOL)_shouldSiriActivateForSiriSetupWithSystemState:(id)state;
+ (BOOL)canActivateForCondition:(id)condition;
@end

@implementation SASActivationDecision

+ (BOOL)canActivateForCondition:(id)condition
{
  v118 = *MEMORY[0x1E69E9840];
  conditionCopy = condition;
  request = [conditionCopy request];
  buttonTriggerStateActive = [conditionCopy buttonTriggerStateActive];
  systemState = [conditionCopy systemState];
  pocketStateManager = [conditionCopy pocketStateManager];
  preferences = [conditionCopy preferences];
  analyticsContext = [conditionCopy analyticsContext];
  requestState = [conditionCopy requestState];
  assetUtilities = [conditionCopy assetUtilities];
  uiPresentationIdentifier = [conditionCopy uiPresentationIdentifier];
  isVisualIntelligenceRequest = [request isVisualIntelligenceRequest];
  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  alwaysAllowVoiceActivation = [mEMORY[0x1E698D1C0] alwaysAllowVoiceActivation];

  if (([systemState siriIsEnabled] & 1) == 0 && (isVisualIntelligenceRequest & 1) == 0)
  {
    v13 = [self _shouldSiriActivateForSiriSetupWithSystemState:systemState];
LABEL_4:
    v14 = pocketStateManager;
LABEL_5:
    v15 = analyticsContext;
    v16 = uiPresentationIdentifier;
    goto LABEL_46;
  }

  if ((([systemState siriIsSupported] | isVisualIntelligenceRequest) & 1) == 0)
  {
    v14 = pocketStateManager;
    v15 = analyticsContext;
    if (analyticsContext)
    {
      v19 = +[SASAnalytics analytics];
      [v19 enqueueCurrentAnalyticsEventWithType:1405 context:analyticsContext];
    }

    v20 = *MEMORY[0x1E698D0A0];
    v16 = uiPresentationIdentifier;
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      currentSpokenLanguageCode = [systemState currentSpokenLanguageCode];
      *buf = 136315394;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      v115 = 2112;
      *v116 = currentSpokenLanguageCode;
      _os_log_impl(&dword_1C8137000, v21, OS_LOG_TYPE_DEFAULT, "%s #activation NO: Siri is not supported. Language code: %@", buf, 0x16u);
    }

    goto LABEL_45;
  }

  v14 = pocketStateManager;
  if (!(isVisualIntelligenceRequest & 1 | (([systemState siriIsRestricted] & 1) == 0)))
  {
    v15 = analyticsContext;
    if (analyticsContext)
    {
      v23 = +[SASAnalytics analytics];
      [v23 enqueueCurrentAnalyticsEventWithType:1405 context:analyticsContext];
    }

    v24 = *MEMORY[0x1E698D0A0];
    v16 = uiPresentationIdentifier;
    if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *buf = 136315138;
    v114 = "+[SASActivationDecision canActivateForCondition:]";
    v25 = "%s #activation NO: Siri is restricted by profile";
    goto LABEL_44;
  }

  if (([systemState hasUnlockedSinceBoot] & 1) == 0 && !(isVisualIntelligenceRequest & 1 | ((objc_msgSend(request, "isVoiceRequest") & 1) == 0)))
  {
    v15 = analyticsContext;
    if (analyticsContext)
    {
      v26 = +[SASAnalytics analytics];
      [v26 enqueueCurrentAnalyticsEventWithType:1405 context:analyticsContext];
    }

    v24 = *MEMORY[0x1E698D0A0];
    v16 = uiPresentationIdentifier;
    if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *buf = 136315138;
    v114 = "+[SASActivationDecision canActivateForCondition:]";
    v25 = "%s #activation NO: Siri voice activation is disabled until first unlock.";
    goto LABEL_44;
  }

  if ([request isVoiceRequest] && objc_msgSend(pocketStateManager, "pocketStateShouldPreventVoiceTriggerForActivationRequest:", request) && (objc_msgSend(systemState, "isConnectedToCarPlay") & 1) == 0)
  {
    if ([request isRemoteDisplayVoiceRequest])
    {
      v17 = *MEMORY[0x1E698D0A0];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
LABEL_32:

        v14 = pocketStateManager;
        goto LABEL_33;
      }

      *buf = 136315138;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      v18 = "%s #activation: Ignoring pocket state for connected remote display voice activation";
    }

    else
    {
      if (!alwaysAllowVoiceActivation)
      {
        v15 = analyticsContext;
        if (analyticsContext)
        {
          v52 = +[SASAnalytics analytics];
          [v52 enqueueCurrentAnalyticsEventWithType:1405 context:analyticsContext];
        }

        v24 = *MEMORY[0x1E698D0A0];
        v16 = uiPresentationIdentifier;
        if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }

        *buf = 136315138;
        v114 = "+[SASActivationDecision canActivateForCondition:]";
        v25 = "%s #activation NO: Pocket state prevents voice trigger activation";
        goto LABEL_44;
      }

      v17 = *MEMORY[0x1E698D0A0];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 136315138;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      v18 = "%s #activation: Pocket state would normally prevent voice trigger, but the user default to always allow voice activation is set, so ignoring pocket state";
    }

    _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
    goto LABEL_32;
  }

LABEL_33:
  if (buttonTriggerStateActive && [request isHoldToTalkSource])
  {
    v15 = analyticsContext;
    if (analyticsContext)
    {
      v27 = +[SASAnalytics analytics];
      [v27 enqueueCurrentAnalyticsEventWithType:1405 context:analyticsContext];
    }

    v24 = *MEMORY[0x1E698D0A0];
    v16 = uiPresentationIdentifier;
    if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *buf = 136315138;
    v114 = "+[SASActivationDecision canActivateForCondition:]";
    v25 = "%s #activation NO: There is an existing HoldToTalk trigger.";
LABEL_44:
    _os_log_impl(&dword_1C8137000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
LABEL_45:
    v13 = 0;
    goto LABEL_46;
  }

  if ([systemState isAssessmentModeActive])
  {
    v15 = analyticsContext;
    if (analyticsContext)
    {
      v28 = +[SASAnalytics analytics];
      [v28 enqueueCurrentAnalyticsEventWithType:1405 context:analyticsContext];
    }

    v24 = *MEMORY[0x1E698D0A0];
    v16 = uiPresentationIdentifier;
    if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *buf = 136315138;
    v114 = "+[SASActivationDecision canActivateForCondition:]";
    v25 = "%s #activation NO: assessment mode is active.";
    goto LABEL_44;
  }

  if ([systemState smartCoverClosed] && objc_msgSend(systemState, "isPad") && ((objc_msgSend(request, "isDeviceButtonRequest") & 1) != 0 || objc_msgSend(request, "isVoiceRequest")))
  {
    if ([request isRemoteDisplayVoiceRequest])
    {
      v31 = *MEMORY[0x1E698D0A0];
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
LABEL_58:

        goto LABEL_59;
      }

      *buf = 136315138;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      v32 = "%s #activation: Ignoring Smart cover state for connected remote display voice activation";
    }

    else
    {
      isVoiceRequest = [request isVoiceRequest];
      v34 = *MEMORY[0x1E698D0A0];
      if ((isVoiceRequest & alwaysAllowVoiceActivation) != 1)
      {
        if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_208;
        }

        *buf = 136315138;
        v114 = "+[SASActivationDecision canActivateForCondition:]";
        v38 = "%s #activation NO: Siri is disabled because an iPad Smart Cover is closed which blocks home button or Hey Siri";
        v39 = v34;
        goto LABEL_73;
      }

      v31 = v34;
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      *buf = 136315138;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      v32 = "%s #activation: Smart Cover is closed, which would normally prevent voice trigger, but the user default to always allow voice activation is set, so ignoring Smart Cover state";
    }

    _os_log_impl(&dword_1C8137000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 0xCu);
    goto LABEL_58;
  }

LABEL_59:
  if ([systemState smartCoverClosed] && (objc_msgSend(systemState, "isPad") & 1) == 0 && ((objc_msgSend(request, "isDeviceButtonRequest") & 1) != 0 || objc_msgSend(request, "isVoiceRequest")) && (objc_msgSend(systemState, "isConnectedToCarPlay") & 1) == 0)
  {
    v35 = [request isVoiceRequest] & alwaysAllowVoiceActivation;
    v36 = *MEMORY[0x1E698D0A0];
    if (v35 != 1)
    {
      if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_208;
      }

      *buf = 136315138;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      v38 = "%s #activation NO: Siri is disabled because an iPhone Smart Cover is closed which blocks home button or Hey Siri";
      goto LABEL_72;
    }

    v37 = v36;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      _os_log_impl(&dword_1C8137000, v37, OS_LOG_TYPE_DEFAULT, "%s #activation: Smart Cover is closed, which would normally prevent voice trigger, but the user default to always allow voice activation is set, so ignoring Smart Cover state", buf, 0xCu);
    }
  }

  if ([request isDeviceButtonRequest] && _AXSHomeButtonAssistant())
  {
    v36 = *MEMORY[0x1E698D0A0];
    if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
LABEL_208:
      v13 = 0;
      goto LABEL_5;
    }

    *buf = 136315138;
    v114 = "+[SASActivationDecision canActivateForCondition:]";
    v38 = "%s #activation NO: Press Home/Side For Siri is disabled in Settings";
    goto LABEL_72;
  }

  if (requestState && requestState != 3)
  {
    v49 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v50 = v49;
      v51 = SASRequestStateGetName(requestState);
      *buf = 136315650;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      v115 = 2112;
      *v116 = v51;
      *&v116[8] = 2112;
      v117 = request;
      _os_log_impl(&dword_1C8137000, v50, OS_LOG_TYPE_DEFAULT, "%s #activation NO: Siri state is %@. Ignoring activationRequest %@.", buf, 0x20u);
    }

    goto LABEL_208;
  }

  if (!(isVisualIntelligenceRequest & 1 | (([systemState deviceIsPasscodeLocked] & 1) == 0)))
  {
    context = [request context];
    if (context)
    {
      context2 = [request context];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        context3 = [request context];
        requestInfo = [context3 requestInfo];
        requiresUserInteraction = [requestInfo requiresUserInteraction];
        context = [requestInfo isAlwaysAllowedWhileDeviceLocked];
        v47 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          [MEMORY[0x1E696AD98] numberWithBool:context];
          v48 = v108 = context3;
          *buf = 136315394;
          v114 = "+[SASActivationDecision canActivateForCondition:]";
          v115 = 2112;
          *v116 = v48;
          _os_log_impl(&dword_1C8137000, v47, OS_LOG_TYPE_DEFAULT, "%s #activation: AFRequestInfo.isAlwaysAllowedWhileDeviceLocked = %@", buf, 0x16u);

          context3 = v108;
        }

        v14 = pocketStateManager;
LABEL_102:
        if ([preferences disableAssistantWhilePasscodeLocked] && (requiresUserInteraction & 1) == 0 && (context & 1) == 0 && (objc_msgSend(systemState, "isConnectedToTrustedCarPlay") & 1) == 0)
        {
          v15 = analyticsContext;
          if (analyticsContext)
          {
            v73 = +[SASAnalytics analytics];
            [v73 enqueueCurrentAnalyticsEventWithType:1405 context:analyticsContext];
          }

          v24 = *MEMORY[0x1E698D0A0];
          v16 = uiPresentationIdentifier;
          if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_45;
          }

          *buf = 136315138;
          v114 = "+[SASActivationDecision canActivateForCondition:]";
          v25 = "%s #activation NO: Siri is disabled while passcode locked";
          goto LABEL_44;
        }

        requestSource = [request requestSource];
        if (requestSource == 19)
        {
          context4 = [request context];
          objc_opt_class();
          v64 = objc_opt_isKindOfClass();

          if ((v64 & 1) == 0)
          {
            goto LABEL_77;
          }

          context5 = [request context];
          speechRequestOptions = [context5 speechRequestOptions];
          activationEvent = [speechRequestOptions activationEvent];
          v67 = MEMORY[0x1E698D0A0];
          v68 = *MEMORY[0x1E698D0A0];
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = AFSpeechEventGetDescription();
            isTemporaryDevice = [context5 isTemporaryDevice];
            *buf = 136315650;
            v114 = "+[SASActivationDecision canActivateForCondition:]";
            v115 = 2112;
            *v116 = v69;
            *&v116[8] = 1024;
            LODWORD(v117) = isTemporaryDevice;
            _os_log_impl(&dword_1C8137000, v68, OS_LOG_TYPE_DEFAULT, "%s event:%@ isTemporaryDevice:%i", buf, 0x1Cu);

            v67 = MEMORY[0x1E698D0A0];
          }

          if ((activationEvent & 0xFFFFFFFFFFFFFFFELL) == 0xE && -[NSObject isTemporaryDevice](context5, "isTemporaryDevice") && ([systemState isWirelessSplitterOn] & 1) == 0 && objc_msgSend(systemState, "isGuestConnected"))
          {
            v71 = *v67;
            if (os_log_type_enabled(*v67, OS_LOG_TYPE_DEFAULT))
            {
              v72 = @"Double-Tap";
              if (activationEvent == 15)
              {
                v72 = @"Hey Siri";
              }

              *buf = 136315394;
              v114 = "+[SASActivationDecision canActivateForCondition:]";
              v115 = 2112;
              *v116 = v72;
              _os_log_impl(&dword_1C8137000, v71, OS_LOG_TYPE_DEFAULT, "%s #activation NO: Blocking wireless splitter guest that's using B288 %@", buf, 0x16u);
            }

            goto LABEL_234;
          }

          v14 = pocketStateManager;
        }

        else
        {
          if (requestSource != 5)
          {
            goto LABEL_77;
          }

          context6 = [request context];
          objc_opt_class();
          v55 = objc_opt_isKindOfClass();

          if ((v55 & 1) == 0)
          {
            goto LABEL_77;
          }

          context5 = [request context];
          v57 = MEMORY[0x1E698D0A0];
          v58 = *MEMORY[0x1E698D0A0];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            isTemporaryDevice2 = [context5 isTemporaryDevice];
            *buf = 136315394;
            v114 = "+[SASActivationDecision canActivateForCondition:]";
            v115 = 1024;
            *v116 = isTemporaryDevice2;
            _os_log_impl(&dword_1C8137000, v58, OS_LOG_TYPE_DEFAULT, "%s requestSource:SASRequestSourceBluetoothHeadset isTemporaryDevice:%i", buf, 0x12u);
          }

          if (-[NSObject isTemporaryDevice](context5, "isTemporaryDevice") && ([systemState isWirelessSplitterOn] & 1) == 0 && objc_msgSend(systemState, "isGuestConnected"))
          {
            v60 = *v57;
            if (os_log_type_enabled(*v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v114 = "+[SASActivationDecision canActivateForCondition:]";
              v61 = "%s #activation NO: Blocking wireless splitter guest that's using B188 / bluetooth device";
              v62 = v60;
LABEL_174:
              v86 = 12;
LABEL_206:
              _os_log_impl(&dword_1C8137000, v62, OS_LOG_TYPE_DEFAULT, v61, buf, v86);
              goto LABEL_207;
            }

            goto LABEL_207;
          }
        }

        goto LABEL_77;
      }

      LOBYTE(context) = 0;
    }

    requiresUserInteraction = 0;
    goto LABEL_102;
  }

LABEL_77:
  if ([systemState deviceIsBlocked])
  {
    v15 = analyticsContext;
    if (analyticsContext)
    {
      v40 = +[SASAnalytics analytics];
      [v40 enqueueCurrentAnalyticsEventWithType:1405 context:analyticsContext];
    }

    v24 = *MEMORY[0x1E698D0A0];
    v16 = uiPresentationIdentifier;
    if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *buf = 136315138;
    v114 = "+[SASActivationDecision canActivateForCondition:]";
    v25 = "%s #activation NO: Siri is disabled because the device is blocked";
    goto LABEL_44;
  }

  if (isVisualIntelligenceRequest & 1 | (([systemState isInActiveCall] & 1) == 0))
  {
    goto LABEL_90;
  }

  if ([systemState isConnectedToCarPlay])
  {
    v36 = *MEMORY[0x1E698D0A0];
    if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_208;
    }

    *buf = 136315138;
    v114 = "+[SASActivationDecision canActivateForCondition:]";
    v38 = "%s #activation NO: active call while connected to CarPlay";
    goto LABEL_72;
  }

  if (([systemState isCallAudioRouteAllowed] & 1) == 0)
  {
    v36 = *MEMORY[0x1E698D0A0];
    if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_208;
    }

    *buf = 136315138;
    v114 = "+[SASActivationDecision canActivateForCondition:]";
    v38 = "%s #activation NO: call on an unsupported audio route";
LABEL_72:
    v39 = v36;
LABEL_73:
    _os_log_impl(&dword_1C8137000, v39, OS_LOG_TYPE_DEFAULT, v38, buf, 0xCu);
    goto LABEL_208;
  }

  v74 = _os_feature_enabled_impl();
  requestSource2 = [request requestSource];
  if ([systemState hasRingingCall])
  {
    goto LABEL_162;
  }

  if (_os_feature_enabled_impl())
  {
    v76 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      v77 = "%s #activation in-call checks disabled";
LABEL_160:
      _os_log_impl(&dword_1C8137000, v76, OS_LOG_TYPE_DEFAULT, v77, buf, 0xCu);
      goto LABEL_161;
    }

    goto LABEL_161;
  }

  if (requestSource2 == 48)
  {
    v78 = v74;
  }

  else
  {
    v78 = 0;
  }

  if (v78 == 1)
  {
    v76 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      v77 = "%s #activation Type to Siri during a call";
      goto LABEL_160;
    }

LABEL_161:

    goto LABEL_162;
  }

  siriInCallEnabled = [systemState siriInCallEnabled];
  callHangUpEnabled = [systemState callHangUpEnabled];
  if ((siriInCallEnabled & 1) == 0 && (callHangUpEnabled & 1) == 0)
  {
    v91 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v92 = MEMORY[0x1E696AD98];
      context5 = v91;
      v93 = [v92 numberWithBool:0];
      v94 = [MEMORY[0x1E696AD98] numberWithBool:0];
      *buf = 136315650;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      v115 = 2112;
      *v116 = v93;
      *&v116[8] = 2112;
      v117 = v94;
      _os_log_impl(&dword_1C8137000, context5, OS_LOG_TYPE_DEFAULT, "%s #activation NO: Siri is disabled in connected calls: inCallEnabled: %@, callHangUpEnabled: %@", buf, 0x20u);

      goto LABEL_234;
    }

    goto LABEL_235;
  }

  if ([request requestSource] == 8)
  {
    v96 = 0;
  }

  else
  {
    context7 = [request context];
    speechRequestOptions2 = [context7 speechRequestOptions];
    v96 = [speechRequestOptions2 activationEvent] != 15;
  }

  v105 = [request requestSource] != 48 && objc_msgSend(request, "requestSource") != 16;
  if ([systemState callHangUpEnabled] & v96) == 1 && ((v74 ^ 1 | v105))
  {
    v106 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      v107 = "%s #activation NO: Siri only supports VT on a connected call for Call Hang Up device";
      goto LABEL_244;
    }

LABEL_235:
    v13 = 0;
    goto LABEL_4;
  }

  if ([request requestSource] == 2)
  {
    v106 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      v107 = "%s #activation NO: side button activation not supported during a call";
      goto LABEL_244;
    }

    goto LABEL_235;
  }

  if (([assetUtilities understandingOnDeviceAssetsAvailable] & 1) == 0)
  {
    v106 = *MEMORY[0x1E698D0A0];
    if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_235;
    }

    *buf = 136315138;
    v114 = "+[SASActivationDecision canActivateForCondition:]";
    v107 = "%s #activation NO: uod assets unavailable during a voice call";
    goto LABEL_244;
  }

LABEL_162:
  if ([request isContinuityRequest])
  {
    context8 = [request context];
    requestInfo2 = [context8 requestInfo];
    activationEvent2 = [requestInfo2 activationEvent];
  }

  else
  {
    activationEvent2 = 0;
  }

  context9 = [request context];
  speechRequestOptions3 = [context9 speechRequestOptions];
  activationEvent3 = [speechRequestOptions3 activationEvent];

  if (activationEvent3 != 15)
  {
    v14 = pocketStateManager;
    if ([request requestSource] == 8)
    {
      v85 = @"Voice Request during a call";
      goto LABEL_177;
    }

    if ([request requestSource] == 27)
    {
      v85 = @"triggerless reply to announce call during a call";
      goto LABEL_177;
    }

    if (activationEvent2 == 9)
    {
      v85 = @"announce call on headphones request during a call";
      goto LABEL_167;
    }

    if (activationEvent2 == 10)
    {
      v85 = @"gesture request during a call";
      goto LABEL_167;
    }

    if (_os_feature_enabled_impl())
    {
      v85 = @"all invocations allowed during a call";
      goto LABEL_167;
    }

    if (v74 && [request requestSource] == 48)
    {
      v85 = @"Type to Siri during a call";
      goto LABEL_167;
    }

    v106 = *MEMORY[0x1E698D0A0];
    if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_235;
    }

    *buf = 136315138;
    v114 = "+[SASActivationDecision canActivateForCondition:]";
    v107 = "%s #activation NO: request type unsupported during a call";
LABEL_244:
    _os_log_impl(&dword_1C8137000, v106, OS_LOG_TYPE_DEFAULT, v107, buf, 0xCu);
    goto LABEL_235;
  }

  v85 = @"W2 HS activation event during a call";
LABEL_167:
  v14 = pocketStateManager;
LABEL_177:
  if (canActivateForCondition__once != -1)
  {
    +[SASActivationDecision canActivateForCondition:];
  }

  v87 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v114 = "+[SASActivationDecision canActivateForCondition:]";
    v115 = 2112;
    *v116 = v85;
    _os_log_impl(&dword_1C8137000, v87, OS_LOG_TYPE_DEFAULT, "%s #activation continue: %@", buf, 0x16u);
  }

  v88 = canActivateForCondition__log;
  if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v114 = v85;
    _os_log_impl(&dword_1C8137000, v88, OS_LOG_TYPE_INFO, "AnnounceTelephony: %@", buf, 0xCu);
  }

LABEL_90:
  if ([systemState isRemoteWebcamMode])
  {
    v36 = *MEMORY[0x1E698D0A0];
    if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_208;
    }

    *buf = 136315138;
    v114 = "+[SASActivationDecision canActivateForCondition:]";
    v38 = "%s #activation NO: in remote webcam mode";
    goto LABEL_72;
  }

  if ([MEMORY[0x1E698D258] saeAvailable])
  {
    if ([systemState isInAAAGame])
    {
      v36 = *MEMORY[0x1E698D0A0];
      if (!os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_208;
      }

      *buf = 136315138;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      v38 = "%s #activation NO: siri disabled when playing AAA game";
      goto LABEL_72;
    }

    if ([request requestSource] == 48 || objc_msgSend(request, "requestSource") == 16)
    {
      if ([systemState isConnectedToCarPlay])
      {
        context5 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(context5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v114 = "+[SASActivationDecision canActivateForCondition:]";
          v61 = "%s #activation NO: type to siri disabled when connected to CarPlay";
LABEL_173:
          v62 = context5;
          goto LABEL_174;
        }

        goto LABEL_207;
      }

      if ([uiPresentationIdentifier isEqualToString:@"com.apple.siri.EyesFree"])
      {
        context5 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(context5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v114 = "+[SASActivationDecision canActivateForCondition:]";
          v61 = "%s #activation NO: type to siri disabled when in eyesfree mode";
          goto LABEL_173;
        }

LABEL_207:

        goto LABEL_208;
      }

      if ([uiPresentationIdentifier isEqualToString:@"com.apple.siri.BluetoothCar"])
      {
        context5 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(context5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v114 = "+[SASActivationDecision canActivateForCondition:]";
          v95 = "%s #activation NO: type to siri disabled when connected to bluetooth car";
LABEL_233:
          _os_log_impl(&dword_1C8137000, context5, OS_LOG_TYPE_DEFAULT, v95, buf, 0xCu);
          goto LABEL_234;
        }

        goto LABEL_234;
      }

      if (([request isQuickTypeGestureEnabled] & 1) == 0)
      {
        context5 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(context5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v114 = "+[SASActivationDecision canActivateForCondition:]";
          v95 = "%s #activation NO: type to siri setting disabled in settings";
          goto LABEL_233;
        }

LABEL_234:

        goto LABEL_235;
      }
    }
  }

  if (isVisualIntelligenceRequest)
  {
    if ([systemState isConnectedToCarPlay])
    {
      v97 = *MEMORY[0x1E698D0A0];
      v16 = uiPresentationIdentifier;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v114 = "+[SASActivationDecision canActivateForCondition:]";
        _os_log_impl(&dword_1C8137000, v97, OS_LOG_TYPE_DEFAULT, "%s #activation NO: Tamale Launch disabled when connected to CarPlay", buf, 0xCu);
      }

      v13 = 0;
      v15 = analyticsContext;
      goto LABEL_46;
    }

    if (([uiPresentationIdentifier isEqualToString:@"com.apple.siri.EyesFree"] & 1) != 0 || objc_msgSend(systemState, "carDNDActive"))
    {
      context5 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(context5, OS_LOG_TYPE_DEFAULT))
      {
        isConnectedToCarPlay = [systemState isConnectedToCarPlay];
        carDNDActive = [systemState carDNDActive];
        *buf = 136315650;
        v114 = "+[SASActivationDecision canActivateForCondition:]";
        v115 = 1024;
        *v116 = isConnectedToCarPlay;
        *&v116[4] = 1024;
        *&v116[6] = carDNDActive;
        v61 = "%s #activation NO: Tamale Launch disabled when in one of the following modes. carplay: %d or carDND: %d";
        v62 = context5;
        v86 = 24;
        goto LABEL_206;
      }

      goto LABEL_207;
    }
  }

  v16 = uiPresentationIdentifier;
  if ([uiPresentationIdentifier isEqualToString:@"com.apple.siri.UIFree"] && objc_msgSend(systemState, "isConnectedToCarPlay"))
  {
    v100 = *MEMORY[0x1E698D0A0];
    v15 = analyticsContext;
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v114 = "+[SASActivationDecision canActivateForCondition:]";
      v115 = 2112;
      *v116 = uiPresentationIdentifier;
      _os_log_impl(&dword_1C8137000, v100, OS_LOG_TYPE_DEFAULT, "%s #activation NO: Mismatching info: uiPresentationIdentifier: %@ but car session exists.", buf, 0x16u);
    }

    goto LABEL_45;
  }

  v101 = *MEMORY[0x1E698D0A0];
  v15 = analyticsContext;
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
  {
    v102 = SASRequestSourceGetName([request requestSource]);
    *buf = 136315394;
    v114 = "+[SASActivationDecision canActivateForCondition:]";
    v115 = 2112;
    *v116 = v102;
    _os_log_impl(&dword_1C8137000, v101, OS_LOG_TYPE_DEFAULT, "%s #activation YES: source:%@", buf, 0x16u);
  }

  v13 = 1;
LABEL_46:

  v29 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __49__SASActivationDecision_canActivateForCondition___block_invoke()
{
  canActivateForCondition__log = os_log_create("com.apple.siri", "AnnounceTelephony");

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)_shouldSiriActivateForSiriSetupWithSystemState:(id)state
{
  v11 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if ([stateCopy siriIsRestricted])
  {
    v4 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "+[SASActivationDecision _shouldSiriActivateForSiriSetupWithSystemState:]";
      v5 = "%s #activation NO: Siri is restricted by profile.";
LABEL_13:
      _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, v5, &v9, 0xCu);
    }
  }

  else if ([stateCopy isInActiveCall])
  {
    v4 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "+[SASActivationDecision _shouldSiriActivateForSiriSetupWithSystemState:]";
      v5 = "%s #activation NO: Siri is in an active call.";
      goto LABEL_13;
    }
  }

  else if ([stateCopy deviceIsPasscodeLocked])
  {
    v4 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "+[SASActivationDecision _shouldSiriActivateForSiriSetupWithSystemState:]";
      v5 = "%s #activation NO: Siri Setup is disabled while passcode locked";
      goto LABEL_13;
    }
  }

  else
  {
    if (![stateCopy isAssessmentModeActive])
    {
      v6 = 1;
      goto LABEL_15;
    }

    v4 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "+[SASActivationDecision _shouldSiriActivateForSiriSetupWithSystemState:]";
      v5 = "%s #activation NO: Siri Setup is disabled while assessment session is active";
      goto LABEL_13;
    }
  }

  v6 = 0;
LABEL_15:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

@end