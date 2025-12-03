@interface SBPhysicalButtonSceneOverrideManager
- (BOOL)_canSendActionButtonEventsToScene:(id)scene withConfiguration:(id)configuration;
- (BOOL)_canSendCameraCaptureFullPressEventsToScene:(id)scene withConfiguration:(id)configuration;
- (BOOL)_canSendCameraShutterButtonEventsForRequestAuditToken:(id)token;
- (BOOL)_canSendVolumeButtonEventsToScene:(id)scene withConfiguration:(id)configuration activeVolumeCategoryName:(id)name isAudioSessionPlaying:(BOOL)playing;
- (BOOL)_sendsActionsForButtonType:(unint64_t)type;
- (BOOL)isTargetingButton:(uint64_t)button withConfigurationIdentifier:;
- (char)sendVolumeButtonDownForIncrease:(_BYTE *)increase shouldAlsoChangeVolume:;
- (id)_activeRequestForButton:(unint64_t)button;
- (id)_applicationBundleIdentifierForClientBundleIdentifier:(id)identifier;
- (id)_sceneForSceneTarget:(id)target;
- (id)_sendButtonDownForButtonType:(unint64_t)type request:(id)request scene:(id)scene;
- (id)addObserver:(uint64_t)observer forReason:;
- (id)auditTokenForRequestingProcessOfCameraBehaviorScene;
- (id)cameraBehaviorScene;
- (id)initWithSceneManager:(id *)manager;
- (id)reasonCameraBehaviorSceneIsNotEligibleForSupplementalUI;
- (id)sendActionButtonDown;
- (id)sendCameraCaptureButtonDown;
- (id)setWindowScene:(id *)result;
- (uint64_t)captureApplicationProvider;
- (unint64_t)sendHeadphoneButtonClicked:(void *)clicked;
- (void)_addButtonActionCompletionHandler:(id)handler;
- (void)_notifyObserversSomethingDidChange;
- (void)_processZStackParticipantSettings:(id)settings;
- (void)_reevaluateOverrides;
- (void)_sendActionForButtonType:(unint64_t)type buttonState:(unint64_t)state request:(id)request;
- (void)cache:(id)cache didUpdateActiveCategoryName:(id)name;
- (void)cache:(id)cache didUpdateAudioSessionPlaying:(BOOL)playing;
- (void)dealloc;
- (void)setCaptureApplicationProvider:(uint64_t)provider;
- (void)windowSceneDidConnect:(id *)connect;
@end

@implementation SBPhysicalButtonSceneOverrideManager

- (void)_reevaluateOverrides
{
  v133 = *MEMORY[0x277D85DE8];
  if (self)
  {
    selfCopy = self;
    WeakRetained = objc_loadWeakRetained((self + 16));
    if (!WeakRetained)
    {
LABEL_133:

      return;
    }

    v104 = WeakRetained;
    v4 = selfCopy[1]._physicalButtonBehavior;
    v5 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v132 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Physical button scene targets: %{public}@", buf, 0xCu);
    }

    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v109 = selfCopy;
    allObjects = [selfCopy[1]._generation allObjects];
    v7 = [allObjects countByEnumeratingWithState:&v125 objects:v130 count:16];
    if (v7)
    {
      v8 = v7;
      selfCopy = *v126;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v126 != selfCopy)
          {
            objc_enumerationMutation(allObjects);
          }

          v1 = *(*(&v125 + 1) + 8 * i);
          queue = [(SBHomeScreenConfigurationServer *)v1 queue];
          v123[0] = MEMORY[0x277D85DD0];
          v123[1] = 3221225472;
          v123[2] = __60__SBPhysicalButtonSceneOverrideManager__reevaluateOverrides__block_invoke;
          v123[3] = &unk_2783BE5B8;
          v11 = queue;
          v124 = v11;
          if (([v4 bs_containsObjectPassingTest:v123] & 1) == 0)
          {
            [(SBPhysicalButtonBehaviorRequest *)v1 completeWithResult:1];
          }
        }

        v8 = [allObjects countByEnumeratingWithState:&v125 objects:v130 count:16];
      }

      while (v8);
    }

    p_isa = &v109->super.isa;
    activeCategoryName = [(BSAuditToken *)v109->_requestingProcessAuditToken activeCategoryName];
    [(BSAuditToken *)v109->_requestingProcessAuditToken isAudioSessionPlaying];
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    obj = [v4 reverseObjectEnumerator];
    v13 = [obj countByEnumeratingWithState:&v119 objects:v129 count:16];
    if (v13)
    {
      v14 = v13;
      OUTLINED_FUNCTION_4_13();
      v108 = *v120;
      *&v15 = 138543362;
      v103 = v15;
LABEL_16:
      v16 = 0;
      v106 = v14;
      while (1)
      {
        if (*v120 != v108)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v119 + 1) + 8 * v16);
        if (v116 && selfCopy && v115 && v117 && v114 && v1 && v113)
        {
          goto LABEL_100;
        }

        v18 = [p_isa _sceneForSceneTarget:{*(*(&v119 + 1) + 8 * v16), v103}];
        v19 = v18;
        if (!v18)
        {
          v23 = SBLogButtonsInteraction();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = v103;
            v132 = v17;
            _os_log_error_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_ERROR, "Found no concrete scene for scene target: %{public}@", buf, 0xCu);
          }

          goto LABEL_96;
        }

        v112 = v1;
        clientSettings = [v18 clientSettings];
        physicalButtonConfigurations = [clientSettings physicalButtonConfigurations];

        v118 = physicalButtonConfigurations;
        if (v116)
        {
          v22 = 0;
          v1 = v112;
        }

        else
        {
          v24 = [v17 buttonTargetForButton:1];
          if (v24)
          {
            [physicalButtonConfigurations _configurationForButton:1];
            objc_claimAutoreleasedReturnValue();
            v25 = [OUTLINED_FUNCTION_0_44() _canSendVolumeButtonEventsToScene:? withConfiguration:? activeVolumeCategoryName:? isAudioSessionPlaying:?];
            v26 = 0;
            if (physicalButtonConfigurations && v25)
            {
              v26 = -[SBPhysicalButtonBehaviorRequest initWithPhysicalButtonConfiguration:generation:identifier:scene:]([SBPhysicalButtonBehaviorRequest alloc], "initWithPhysicalButtonConfiguration:generation:identifier:scene:", physicalButtonConfigurations, -[NSObject _generation](physicalButtonConfigurations, "_generation"), [v24 identifier], v19);
            }

            v27 = v26;

            v1 = v112;
          }

          else
          {
            v27 = 0;
            v1 = v112;
          }

          v14 = v106;
          v22 = v27;
        }

        v111 = v22;
        if (selfCopy)
        {
          v28 = 0;
        }

        else
        {
          v29 = [v17 buttonTargetForButton:2];
          if (v29)
          {
            [physicalButtonConfigurations _configurationForButton:2];
            objc_claimAutoreleasedReturnValue();
            v30 = [OUTLINED_FUNCTION_0_44() _canSendVolumeButtonEventsToScene:? withConfiguration:? activeVolumeCategoryName:? isAudioSessionPlaying:?];
            v28 = 0;
            if (physicalButtonConfigurations && v30)
            {
              v31 = [SBPhysicalButtonBehaviorRequest alloc];
              _generation = [physicalButtonConfigurations _generation];
              identifier = [v29 identifier];
              v34 = v31;
              v14 = v106;
              v28 = [(SBPhysicalButtonBehaviorRequest *)v34 initWithPhysicalButtonConfiguration:physicalButtonConfigurations generation:_generation identifier:identifier scene:v19];
            }
          }

          else
          {
            v28 = 0;
          }

          v22 = v111;
        }

        v35 = v22;
        scene = [(SBPhysicalButtonBehaviorRequest *)v22 scene];
        v110 = v28;
        scene2 = [(SBPhysicalButtonBehaviorRequest *)v28 scene];

        if (scene != scene2)
        {
          break;
        }

        if (v35 && v110)
        {
          v39 = v35;

          p_super = &selfCopy->super;
          selfCopy = v110;
          v116 = v39;
LABEL_53:
          p_isa = &v109->super.isa;

          goto LABEL_54;
        }

        p_isa = &v109->super.isa;
LABEL_54:
        v23 = v118;
        if (!v115)
        {
          v40 = [v17 buttonTargetForButton:4];
          if (v40)
          {
            v41 = [v118 _configurationForButton:4];
            if (v41)
            {
              v42 = [SBPhysicalButtonBehaviorRequest alloc];
              v43 = selfCopy;
              _generation2 = [v41 _generation];
              identifier2 = [v40 identifier];
              v46 = v42;
              p_isa = &v109->super.isa;
              v47 = _generation2;
              selfCopy = v43;
              v1 = v112;
              v115 = [(SBPhysicalButtonBehaviorRequest *)v46 initWithPhysicalButtonConfiguration:v41 generation:v47 identifier:identifier2 scene:v19];
            }

            else
            {
              v115 = 0;
            }

            v23 = v118;
          }

          else
          {
            v115 = 0;
          }
        }

        if (!v117)
        {
          v48 = [v17 buttonTargetForButton:3];
          if (v48)
          {
            [v23 _configurationForButton:3];
            objc_claimAutoreleasedReturnValue();
            v49 = [OUTLINED_FUNCTION_0_44() _canSendActionButtonEventsToScene:? withConfiguration:?];
            v117 = 0;
            if (v23 && v49)
            {
              v1 = selfCopy;
              selfCopy = [SBPhysicalButtonBehaviorRequest alloc];
              p_isa = [v23 _generation];
              v117 = OUTLINED_FUNCTION_3_28([v48 identifier]);
            }

            v23 = v118;
          }

          else
          {
            v117 = 0;
          }
        }

        if (!v114)
        {
          v50 = [v17 buttonTargetForButton:5];
          if (v50)
          {
            [v23 _configurationForButton:5];
            objc_claimAutoreleasedReturnValue();
            v51 = [OUTLINED_FUNCTION_0_44() _canSendCameraCaptureFullPressEventsToScene:? withConfiguration:?];
            v114 = 0;
            if (v23 && v51)
            {
              v1 = selfCopy;
              selfCopy = [SBPhysicalButtonBehaviorRequest alloc];
              p_isa = [v23 _generation];
              v114 = OUTLINED_FUNCTION_3_28([v50 identifier]);
            }

            v23 = v118;
          }

          else
          {
            v114 = 0;
          }

          if (v1)
          {
            goto LABEL_87;
          }

LABEL_81:
          v52 = [v23 _configurationForButton:6];
          v53 = [v17 buttonTargetForButton:6];
          if (v53)
          {
            v54 = selfCopy;
            _auditToken = [v52 _auditToken];
            v56 = [p_isa _canSendCameraShutterButtonEventsForRequestAuditToken:_auditToken];

            if (v56)
            {
              p_isa = &v109->super.isa;
              selfCopy = v54;
              v1 = -[SBPhysicalButtonBehaviorRequest initWithPhysicalButtonConfiguration:generation:identifier:scene:]([SBPhysicalButtonBehaviorRequest alloc], "initWithPhysicalButtonConfiguration:generation:identifier:scene:", v52, [v52 _generation], objc_msgSend(v53, "identifier"), v19);
LABEL_86:

              v23 = v118;
              goto LABEL_87;
            }

            p_isa = &v109->super.isa;
            selfCopy = v54;
          }

          v1 = 0;
          goto LABEL_86;
        }

        if (!v1)
        {
          goto LABEL_81;
        }

LABEL_87:
        if (!v113)
        {
          v57 = [v23 _configurationForButton:7];
          v58 = [v17 buttonTargetForButton:7];
          if (v58)
          {
            v59 = v1;
            v60 = selfCopy;
            _auditToken2 = [v57 _auditToken];
            v62 = [p_isa _canSendCameraShutterButtonEventsForRequestAuditToken:_auditToken2];

            if (v62)
            {
              v113 = -[SBPhysicalButtonBehaviorRequest initWithPhysicalButtonConfiguration:generation:identifier:scene:]([SBPhysicalButtonBehaviorRequest alloc], "initWithPhysicalButtonConfiguration:generation:identifier:scene:", v57, [v57 _generation], objc_msgSend(v58, "identifier"), v19);
            }

            else
            {
              v113 = 0;
            }

            selfCopy = v60;
            v1 = v59;
            v14 = v106;
            v23 = v118;
          }

          else
          {
            v113 = 0;
          }
        }

LABEL_96:
        if (v14 == ++v16)
        {
          v14 = [obj countByEnumeratingWithState:&v119 objects:v129 count:16];
          if (v14)
          {
            goto LABEL_16;
          }

          goto LABEL_100;
        }
      }

      p_super = SBLogButtonsVolume();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21ED4E000, p_super, OS_LOG_TYPE_ERROR, "You must override both volume buttons", buf, 2u);
      }

      goto LABEL_53;
    }

    OUTLINED_FUNCTION_4_13();
LABEL_100:
    v63 = v1;

    v64 = BSEqualObjects();
    if ((v64 & 1) == 0)
    {
      objc_storeStrong(p_isa + 11, v116);
      scene3 = [(SBPhysicalButtonBehaviorRequest *)v116 scene];
      v66 = SBLogButtonsVolume();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        [scene3 identifier];
        v68 = v67 = selfCopy;
        OUTLINED_FUNCTION_2_29(v68, 5.8381e-34);
        _os_log_impl(&dword_21ED4E000, v66, OS_LOG_TYPE_DEFAULT, "volume up button scene override: %{public}@", buf, 0xCu);

        selfCopy = v67;
      }
    }

    v69 = p_isa + 12;
    if (BSEqualObjects())
    {
      v70 = selfCopy;
      v71 = v64 ^ 1;
    }

    else
    {
      objc_storeStrong(p_isa + 12, selfCopy);
      v70 = selfCopy;
      scene4 = [(SBPhysicalButtonBehaviorRequest *)selfCopy scene];
      v73 = SBLogButtonsVolume();
      if (OUTLINED_FUNCTION_6_9(v73))
      {
        identifier3 = [scene4 identifier];
        OUTLINED_FUNCTION_2_29(identifier3, 5.8381e-34);
        OUTLINED_FUNCTION_1_26(&dword_21ED4E000, v75, v76, "volume down button scene override: %{public}@");
      }

      v71 = 1;
    }

    if ((BSEqualObjects() & 1) == 0)
    {
      objc_storeStrong(p_isa + 15, v115);
      scene5 = [(SBPhysicalButtonBehaviorRequest *)v115 scene];
      v78 = SBLogButtonsLock();
      if (OUTLINED_FUNCTION_6_9(v78))
      {
        identifier4 = [scene5 identifier];
        OUTLINED_FUNCTION_2_29(identifier4, 5.8381e-34);
        OUTLINED_FUNCTION_1_26(&dword_21ED4E000, v80, v81, "lock button scene override: %{public}@");
      }

      v71 = 1;
    }

    if ((BSEqualObjects() & 1) == 0)
    {
      objc_storeStrong(p_isa + 16, v117);
      scene6 = [v117 scene];
      v83 = SBLogButtonsAction();
      if (OUTLINED_FUNCTION_6_9(v83))
      {
        identifier5 = [scene6 identifier];
        OUTLINED_FUNCTION_2_29(identifier5, 5.8381e-34);
        OUTLINED_FUNCTION_1_26(&dword_21ED4E000, v85, v86, "action button scene override: %{public}@");
      }

      v71 = 1;
    }

    if ((BSEqualObjects() & 1) == 0)
    {
      objc_storeStrong(p_isa + 17, v114);
      scene7 = [v114 scene];
      v88 = SBLogButtonsCapture();
      if (OUTLINED_FUNCTION_6_9(v88))
      {
        identifier6 = [scene7 identifier];
        OUTLINED_FUNCTION_2_29(identifier6, 5.8381e-34);
        OUTLINED_FUNCTION_1_26(&dword_21ED4E000, v90, v91, "camera capture button scene override: %{public}@");
      }

      v71 = 1;
    }

    if (BSEqualObjects())
    {
      v92 = p_isa + 14;
      if (BSEqualObjects())
      {
        if (!v71)
        {
          goto LABEL_132;
        }

        goto LABEL_131;
      }
    }

    else
    {
      objc_storeStrong(p_isa + 13, v63);
      scene8 = [(SBPhysicalButtonBehaviorRequest *)v63 scene];
      v94 = SBLogButtonsInteraction();
      if (OUTLINED_FUNCTION_6_9(v94))
      {
        identifier7 = [scene8 identifier];
        OUTLINED_FUNCTION_2_29(identifier7, 5.8381e-34);
        OUTLINED_FUNCTION_1_26(&dword_21ED4E000, v96, v97, "headphone left button scene override: %{public}@");
      }

      v92 = p_isa + 14;
      if (BSEqualObjects())
      {
        goto LABEL_131;
      }
    }

    objc_storeStrong(v92, v113);
    scene9 = [(SBPhysicalButtonBehaviorRequest *)v113 scene];
    v99 = SBLogButtonsInteraction();
    if (OUTLINED_FUNCTION_6_9(v99))
    {
      identifier8 = [scene9 identifier];
      OUTLINED_FUNCTION_2_29(identifier8, 5.8381e-34);
      OUTLINED_FUNCTION_1_26(&dword_21ED4E000, v101, v102, "headphone right button scene override: %{public}@");
    }

LABEL_131:
    [p_isa _notifyObserversSomethingDidChange];
LABEL_132:

    WeakRetained = v104;
    goto LABEL_133;
  }
}

- (void)_notifyObserversSomethingDidChange
{
  v14 = *MEMORY[0x277D85DE8];
  orderedContext = [(BSCompoundAssertion *)self->_observers orderedContext];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [orderedContext countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(orderedContext);
        }

        [*(*(&v9 + 1) + 8 * i) physicalButtonSceneOverridesDidChange:self];
      }

      v5 = [orderedContext countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if (self->_headphoneRightButtonRequest)
  {
    v8 = (32 * (self->_headphoneLeftButtonRequest != 0)) | 0x40;
  }

  else
  {
    v8 = 32 * (self->_headphoneLeftButtonRequest != 0);
  }

  [(SBSPhysicalButtonTargetMonitorServer *)self->_physicalButtonTargetMonitorServer setPhysicalButtonTargets:v8];
}

- (id)cameraBehaviorScene
{
  p_cameraCaptureButtonRequest = &self->_cameraCaptureButtonRequest;
  cameraCaptureButtonRequest = self->_cameraCaptureButtonRequest;
  if (!cameraCaptureButtonRequest || [(SBPhysicalButtonBehaviorRequest *)cameraCaptureButtonRequest physicalButtonBehavior])
  {
    p_cameraCaptureButtonRequest = &self->_actionButtonRequest;
    actionButtonRequest = self->_actionButtonRequest;
    if (!actionButtonRequest || [(SBPhysicalButtonBehaviorRequest *)actionButtonRequest physicalButtonBehavior])
    {
      p_cameraCaptureButtonRequest = &self->_volumeUpButtonRequest;
      volumeUpButtonRequest = self->_volumeUpButtonRequest;
      if (!volumeUpButtonRequest || [(SBPhysicalButtonBehaviorRequest *)volumeUpButtonRequest physicalButtonBehavior])
      {
        volumeDownButtonRequest = self->_volumeDownButtonRequest;
        p_volumeDownButtonRequest = &self->_volumeDownButtonRequest;
        scene = volumeDownButtonRequest;
        if (!volumeDownButtonRequest)
        {
          goto LABEL_12;
        }

        if ([scene physicalButtonBehavior])
        {
          scene = 0;
          goto LABEL_12;
        }

        p_cameraCaptureButtonRequest = p_volumeDownButtonRequest;
      }
    }
  }

  scene = [(SBPhysicalButtonBehaviorRequest *)*p_cameraCaptureButtonRequest scene];
LABEL_12:

  return scene;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  zStackResolver = [WeakRetained zStackResolver];

  [zStackResolver removeObserver:self ofParticipantWithIdentifier:29];
  [(SBCameraViewfinderMonitoring *)self->_cameraViewfinderMonitorToken cancel];
  cameraViewfinderMonitorToken = self->_cameraViewfinderMonitorToken;
  self->_cameraViewfinderMonitorToken = 0;

  v6.receiver = self;
  v6.super_class = SBPhysicalButtonSceneOverrideManager;
  [(SBPhysicalButtonSceneOverrideManager *)&v6 dealloc];
}

- (void)windowSceneDidConnect:(id *)connect
{
  v4 = a2;
  if (connect)
  {
    WeakRetained = objc_loadWeakRetained(connect + 3);

    if (WeakRetained)
    {
      [SBPhysicalButtonSceneOverrideManager windowSceneDidConnect:?];
    }

    [(SBPhysicalButtonSceneOverrideManager *)connect + 3 windowSceneDidConnect:v4, connect];
  }
}

- (unint64_t)sendHeadphoneButtonClicked:(void *)clicked
{
  clickedCopy = clicked;
  v18 = *MEMORY[0x277D85DE8];
  if (clicked)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 6)
    {
      [(SBPhysicalButtonSceneOverrideManager *)sel_sendHeadphoneButtonClicked_ sendHeadphoneButtonClicked:clicked];
    }

    if ([clicked _sendsActionsForButtonType:a2])
    {
      v4 = 112;
      if (a2 == 6)
      {
        v4 = 104;
      }

      v5 = *(clickedCopy + v4);
      scene = [v5 scene];
      if (scene)
      {
        v7 = [clickedCopy _sendButtonDownForButtonType:a2 request:v5 scene:scene];
        clickedCopy = v7 != 0;
        [v7 completeWithResult:0];
      }

      else
      {
        clickedCopy = 0;
      }
    }

    else
    {
      scene = 0;
      clickedCopy = 0;
    }

    v8 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = _NSStringFromUIPhysicalButton();
      identifier = [scene identifier];
      v12 = 138543874;
      v13 = v9;
      v14 = 1024;
      v15 = clickedCopy;
      v16 = 2114;
      v17 = identifier;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Sending %{public}@ %{BOOL}u to %{public}@", &v12, 0x1Cu);
    }
  }

  return clickedCopy;
}

- (id)_sendButtonDownForButtonType:(unint64_t)type request:(id)request scene:(id)scene
{
  requestCopy = request;
  sceneCopy = scene;
  [(SBPhysicalButtonSceneOverrideManager *)self _sendActionForButtonType:type buttonState:0 request:requestCopy];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  identifier = [sceneCopy identifier];
  v14 = [v10 stringWithFormat:@"%@ (%@)", v12, identifier];

  v15 = [SBPhysicalButtonCompletionHandler alloc];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__SBPhysicalButtonSceneOverrideManager__sendButtonDownForButtonType_request_scene___block_invoke;
  v20[3] = &unk_2783BE590;
  v20[4] = self;
  v21 = sceneCopy;
  v22 = requestCopy;
  typeCopy = type;
  v16 = requestCopy;
  v17 = sceneCopy;
  v18 = [(SBPhysicalButtonCompletionHandler *)v15 initWithIdentifier:v14 button:type block:v20];
  [(SBCameraHardwareButton *)v18 setDeferringRuleAssertion:v16];
  [(SBPhysicalButtonSceneOverrideManager *)self _addButtonActionCompletionHandler:v18];

  return v18;
}

void __83__SBPhysicalButtonSceneOverrideManager__sendButtonDownForButtonType_request_scene___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _removeButtonActionCompletionHandler:a2];
  v5 = *(a1 + 40);
  [*(a1 + 32) _sendActionForButtonType:*(a1 + 56) buttonState:_UIPhysicalButtonStateFromSBPhysicalButtonResult(a3) request:*(a1 + 48)];
}

- (void)cache:(id)cache didUpdateActiveCategoryName:(id)name
{
  v9 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = nameCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Re-evaluating overrides with new active volume category: %{public}@", &v7, 0xCu);
  }

  [(SBPhysicalButtonSceneOverrideManager *)self _reevaluateOverrides];
}

- (id)auditTokenForRequestingProcessOfCameraBehaviorScene
{
  if ([(SBPhysicalButtonBehaviorRequest *)self->_cameraCaptureButtonRequest physicalButtonBehavior])
  {
    requestingProcessAuditToken = 0;
  }

  else
  {
    requestingProcessAuditToken = [(SBPhysicalButtonBehaviorRequest *)self->_cameraCaptureButtonRequest requestingProcessAuditToken];
  }

  return requestingProcessAuditToken;
}

- (id)reasonCameraBehaviorSceneIsNotEligibleForSupplementalUI
{
  if ([(SBPhysicalButtonBehaviorRequest *)self->_cameraCaptureButtonRequest physicalButtonBehavior])
  {
    v3 = @"scene does not have camera behavior";
  }

  else
  {
    scene = [(SBPhysicalButtonBehaviorRequest *)self->_cameraCaptureButtonRequest scene];
    cameraBehaviorScene = [(SBPhysicalButtonSceneOverrideManager *)self cameraBehaviorScene];
    if (BSEqualObjects())
    {
      requestingProcessAuditToken = [(SBPhysicalButtonBehaviorRequest *)self->_cameraCaptureButtonRequest requestingProcessAuditToken];
      v7 = [(SBPhysicalButtonSceneOverrideManager *)self _canSendCameraShutterButtonEventsForRequestAuditToken:requestingProcessAuditToken];

      if (v7)
      {
        v3 = 0;
      }

      else
      {
        v3 = @"audit token does not match viewfinder session";
      }
    }

    else
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ does not match %@", cameraBehaviorScene, scene];
    }
  }

  return v3;
}

- (id)_applicationBundleIdentifierForClientBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(SBFCaptureApplicationProviding *)self->_captureApplicationProvider captureApplicationForExtensionIdentifier:identifierCopy];
  v6 = v5;
  if (v5)
  {
    bundleIdentifier = [v5 bundleIdentifier];
  }

  else
  {
    bundleIdentifier = identifierCopy;
  }

  v8 = bundleIdentifier;

  return v8;
}

- (void)_processZStackParticipantSettings:(id)settings
{
  settingsCopy = settings;
  physicalButtonSceneTargets = [settingsCopy physicalButtonSceneTargets];
  v5 = BSEqualArrays();
  if ((v5 & 1) == 0)
  {
    objc_storeStrong(&self->_lastPhysicalButtonSceneTargets, physicalButtonSceneTargets);
  }

  captureButtonFullFidelityEventRequestingScenes = [settingsCopy captureButtonFullFidelityEventRequestingScenes];
  if (BSEqualArrays())
  {
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    objc_storeStrong(&self->_lastScenesRequestingFullFidelityCaptureButtonEvents, captureButtonFullFidelityEventRequestingScenes);
  }

  [(SBPhysicalButtonSceneOverrideManager *)self _reevaluateOverrides];
LABEL_5:
}

uint64_t __60__SBPhysicalButtonSceneOverrideManager__reevaluateOverrides__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 scene];
  v5 = [v4 identity];
  v6 = [v3 sceneIdentity];

  v7 = [v5 isEqual:v6];
  return v7;
}

- (id)_sceneForSceneTarget:(id)target
{
  targetCopy = target;
  scene = [targetCopy scene];
  v6 = scene;
  if (scene)
  {
    v7 = scene;
  }

  else
  {
    [(SBPhysicalButtonSceneOverrideManager *)self _sceneForSceneTarget:targetCopy, &v9, &v10];
    v7 = v10;
  }

  return v7;
}

uint64_t __61__SBPhysicalButtonSceneOverrideManager__sceneForSceneTarget___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identity];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)_canSendVolumeButtonEventsToScene:(id)scene withConfiguration:(id)configuration activeVolumeCategoryName:(id)name isAudioSessionPlaying:(BOOL)playing
{
  playingCopy = playing;
  sceneCopy = scene;
  configurationCopy = configuration;
  nameCopy = name;
  v13 = 0;
  if (sceneCopy && configurationCopy)
  {
    if (![configurationCopy _behavior])
    {
      v17 = [(SBPhysicalButtonSceneOverrideManager *)self _canSendCameraCaptureFullPressEventsToScene:sceneCopy withConfiguration:configurationCopy];
LABEL_10:
      v13 = v17;
      goto LABEL_11;
    }

    if ([configurationCopy _behavior] == 2)
    {
      definition = [sceneCopy definition];
      clientIdentity = [definition clientIdentity];
      isLocal = [clientIdentity isLocal];

      if (isLocal)
      {
        v17 = [(SBVolumeControl *)self->_volumeControl canChangeVolumeForActiveCategory:nameCopy isAudioSessionPlaying:playingCopy];
      }

      else
      {
        v17 = [nameCopy isEqualToString:@"Audio/Video"];
      }

      goto LABEL_10;
    }

    v13 = 1;
  }

LABEL_11:

  return v13;
}

- (BOOL)_canSendActionButtonEventsToScene:(id)scene withConfiguration:(id)configuration
{
  sceneCopy = scene;
  configurationCopy = configuration;
  v8 = configurationCopy;
  v9 = 0;
  if (sceneCopy && configurationCopy)
  {
    systemActionControl = [SBApp systemActionControl];
    clientHandle = [sceneCopy clientHandle];
    bundleIdentifier = [clientHandle bundleIdentifier];
    v13 = [(SBPhysicalButtonSceneOverrideManager *)self _applicationBundleIdentifierForClientBundleIdentifier:bundleIdentifier];

    if (([(SBSystemActionControl *)systemActionControl isSelectedActionHostedByApplicationWithBundleIdentifier:v13]& 1) == 0)
    {
      _auditToken = [v8 _auditToken];
      if ([_auditToken hasEntitlement:@"com.apple.springboard.private.action-button-events"])
      {
      }

      else
      {
        _auditToken2 = [v8 _auditToken];
        v16 = [_auditToken2 hasEntitlement:@"com.apple.springboard.private.ringer-button-events"];

        if (!v16)
        {
          v9 = 0;
LABEL_11:

          goto LABEL_12;
        }
      }
    }

    if ([v8 _behavior])
    {
      v9 = 1;
    }

    else
    {
      v9 = [(SBPhysicalButtonSceneOverrideManager *)self _canSendCameraCaptureFullPressEventsToScene:sceneCopy withConfiguration:v8];
    }

    goto LABEL_11;
  }

LABEL_12:

  return v9;
}

- (BOOL)_canSendCameraCaptureFullPressEventsToScene:(id)scene withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7 = configurationCopy;
  v8 = 0;
  if (scene && configurationCopy)
  {
    _auditToken = [configurationCopy _auditToken];
    if ([(SBPhysicalButtonSceneOverrideManager *)self _canSendCameraShutterButtonEventsForRequestAuditToken:_auditToken])
    {
      v8 = 1;
    }

    else
    {
      _auditToken2 = [v7 _auditToken];
      v8 = ([_auditToken2 hasEntitlement:@"com.apple.springboard.private.capture-button-events"] & 1) != 0 || objc_msgSend(_auditToken2, "hasEntitlement:", @"com.apple.springboard.private.9403EBFD-90B8-4676-84BF-9F38143337E3");
    }
  }

  return v8;
}

- (id)_activeRequestForButton:(unint64_t)button
{
  if (button - 1 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.isa + qword_21F8A7E08[button - 1]);
  }

  return v4;
}

- (void)_addButtonActionCompletionHandler:(id)handler
{
  handlerCopy = handler;
  buttonActionCompletionHandlers = self->_buttonActionCompletionHandlers;
  v8 = handlerCopy;
  if (!buttonActionCompletionHandlers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_buttonActionCompletionHandlers;
    self->_buttonActionCompletionHandlers = weakObjectsHashTable;

    handlerCopy = v8;
    buttonActionCompletionHandlers = self->_buttonActionCompletionHandlers;
  }

  [(NSHashTable *)buttonActionCompletionHandlers addObject:handlerCopy];
}

- (void)_sendActionForButtonType:(unint64_t)type buttonState:(unint64_t)state request:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  physicalButtonBehavior = [requestCopy physicalButtonBehavior];
  scene = [requestCopy scene];
  v11 = scene;
  if (state)
  {
    if (([scene isValid] & 1) == 0)
    {
      v12 = SBLogButtonsInteraction();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = _NSStringFromUIPhysicalButton();
        v14 = _NSStringFromUIPhysicalButtonState();
        v19 = 138543874;
        v20 = v13;
        v21 = 2114;
        v22 = v14;
        v23 = 2114;
        v24 = v11;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "ignoring send button %{public}@-%{public}@ to invalidated scene %{public}@", &v19, 0x20u);
      }

      goto LABEL_9;
    }
  }

  else if (!scene)
  {
    [SBPhysicalButtonSceneOverrideManager _sendActionForButtonType:a2 buttonState:? request:?];
  }

  v12 = [objc_alloc(MEMORY[0x277D76158]) initWithPhysicalButton:type behavior:physicalButtonBehavior state:state generation:objc_msgSend(requestCopy completion:{"generation"), 0}];
  v15 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = _NSStringFromUIPhysicalButton();
    v17 = _NSStringFromUIPhysicalButtonState();
    v19 = 138543874;
    v20 = v16;
    v21 = 2114;
    v22 = v17;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "send button %{public}@-%{public}@ to scene %{public}@", &v19, 0x20u);
  }

  v18 = [MEMORY[0x277CBEB98] setWithObject:v12];
  [v11 sendActions:v18];

LABEL_9:
}

- (id)initWithSceneManager:(id *)manager
{
  v3 = a2;
  if (manager)
  {
    v19.receiver = manager;
    v19.super_class = SBPhysicalButtonSceneOverrideManager;
    v4 = objc_msgSendSuper2(&v19, sel_init);
    manager = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 2, v3);
      volumeControl = [SBApp volumeControl];
      v6 = manager[4];
      manager[4] = volumeControl;

      v7 = +[SBAVSystemControllerCache sharedInstance];
      v8 = manager[5];
      manager[5] = v7;

      [manager[5] addObserver:manager];
      v9 = +[SBCaptureApplicationCenter sharedInstance];
      v10 = manager[18];
      manager[18] = v9;

      v11 = +[SBCameraViewfinderMonitor sharedInstance];
      v12 = [v11 addObserver:manager];
      v13 = manager[6];
      manager[6] = v12;

      v14 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"SBPhysicalButtonSceneOverrideManager observers"];
      v15 = manager[10];
      manager[10] = v14;

      *(manager + 4) = 257;
      v16 = objc_alloc_init(MEMORY[0x277D66B90]);
      v17 = manager[19];
      manager[19] = v16;
    }
  }

  return manager;
}

- (id)addObserver:(uint64_t)observer forReason:
{
  if (self)
  {
    self = [self[10] acquireForReason:observer withContext:a2];
    v3 = vars8;
  }

  return self;
}

- (BOOL)isTargetingButton:(uint64_t)button withConfigurationIdentifier:
{
  if (!self)
  {
    return 0;
  }

  v4 = [self _activeRequestForButton:a2];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier] == button;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (char)sendVolumeButtonDownForIncrease:(_BYTE *)increase shouldAlsoChangeVolume:
{
  selfCopy = self;
  if (self)
  {
    if (a2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if ([self _sendsActionsForButtonType:v6])
    {
      v7 = 96;
      if (a2)
      {
        v7 = 88;
      }

      v8 = *&selfCopy[v7];
      scene = [v8 scene];
      if (scene)
      {
        if (increase)
        {
          if ([v8 physicalButtonBehavior] == 2)
          {
            definition = [scene definition];
            clientIdentity = [definition clientIdentity];
            *increase = [clientIdentity isLocal] ^ 1;
          }

          else
          {
            *increase = 0;
          }
        }

        selfCopy = [selfCopy _sendButtonDownForButtonType:v6 request:v8 scene:scene];
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)sendActionButtonDown
{
  selfCopy = self;
  if (self)
  {
    if ([self _sendsActionsForButtonType:3])
    {
      v2 = selfCopy[16];
      scene = [v2 scene];
      if (scene)
      {
        selfCopy = [selfCopy _sendButtonDownForButtonType:3 request:v2 scene:scene];
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)sendCameraCaptureButtonDown
{
  selfCopy = self;
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if ([self _sendsActionsForButtonType:5])
    {
      v2 = selfCopy[17];
      scene = [v2 scene];
      if (scene)
      {
        if ([selfCopy[8] containsObject:scene])
        {
          v4 = MEMORY[0x277CCACA8];
          v5 = objc_opt_class();
          v6 = NSStringFromClass(v5);
          identifier = [scene identifier];
          v8 = [v4 stringWithFormat:@"%@ (%@)", v6, identifier];

          selfCopy = [[SBPhysicalButtonCompletionHandler alloc] initWithIdentifier:v8 button:5 block:&__block_literal_global_298];
          v9 = SBLogButtonsInteraction();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = _NSStringFromUIPhysicalButton();
            *buf = 138543618;
            v13 = v10;
            v14 = 2114;
            v15 = scene;
            _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "NOT sending button %{public}@ BSAction to scene %{public}@ since it is already receiving full-fidelity events", buf, 0x16u);
          }
        }

        else
        {
          selfCopy = [selfCopy _sendButtonDownForButtonType:5 request:v2 scene:scene];
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)cache:(id)cache didUpdateAudioSessionPlaying:(BOOL)playing
{
  playingCopy = playing;
  v8 = *MEMORY[0x277D85DE8];
  v6 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = playingCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Re-evaluating overrides with audioSessionPlaying: %{BOOL}u", v7, 8u);
  }

  [(SBPhysicalButtonSceneOverrideManager *)self _reevaluateOverrides];
}

- (BOOL)_canSendCameraShutterButtonEventsForRequestAuditToken:(id)token
{
  if (self)
  {
    cameraViewfinderMonitorToken = self->_cameraViewfinderMonitorToken;
  }

  else
  {
    cameraViewfinderMonitorToken = 0;
  }

  tokenCopy = token;
  auditTokenForProcessWithActiveOrImminentViewfinderSession = [(SBCameraViewfinderMonitoring *)cameraViewfinderMonitorToken auditTokenForProcessWithActiveOrImminentViewfinderSession];
  v6 = [tokenCopy hasSameProcessAsAuditToken:auditTokenForProcessWithActiveOrImminentViewfinderSession];

  return v6;
}

- (BOOL)_sendsActionsForButtonType:(unint64_t)type
{
  if (type > 7)
  {
    return OUTLINED_FUNCTION_0_9(0);
  }

  if (((1 << type) & 0xE8) != 0)
  {
    return OUTLINED_FUNCTION_0_9(1);
  }

  if (((1 << type) & 6) != 0 && self)
  {
    return OUTLINED_FUNCTION_0_9(self->_sendsPhysicalVolumeButtonActions);
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (id)setWindowScene:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 3, a2);
  }

  return result;
}

- (uint64_t)captureApplicationProvider
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

- (void)setCaptureApplicationProvider:(uint64_t)provider
{
  if (provider)
  {
    objc_storeStrong((provider + 144), a2);
  }
}

- (void)windowSceneDidConnect:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"The window scene should only connect once"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    v8 = @"SBPhysicalButtonSceneOverrideManager.m";
    v9 = 1024;
    v10 = 170;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)windowSceneDidConnect:(void *)a3 .cold.2(id *a1, void *a2, void *a3)
{
  objc_storeWeak(a1, a2);
  v6 = [a2 zStackResolver];
  v5 = [v6 addObserver:a3 ofParticipantWithIdentifier:29];
  [a3 _processZStackParticipantSettings:v5];
}

- (void)sendHeadphoneButtonClicked:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"button == _UIPhysicalButtonHeadphoneLeft || button == _UIPhysicalButtonHeadphoneRight"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBPhysicalButtonSceneOverrideManager.m";
    v16 = 1024;
    v17 = 210;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_sceneForSceneTarget:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v8 = [a2 sceneIdentity];
  v9 = [WeakRetained allScenes];
  *a3 = MEMORY[0x277D85DD0];
  *(a3 + 8) = 3221225472;
  *(a3 + 16) = __61__SBPhysicalButtonSceneOverrideManager__sceneForSceneTarget___block_invoke;
  *(a3 + 24) = &unk_2783ADE10;
  *(a3 + 32) = v8;
  v10 = v8;
  *a4 = [v9 bs_firstObjectPassingTest:a3];
}

- (void)_sendActionForButtonType:(const char *)a1 buttonState:request:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"can't begin a button-action sequence with a nil scene"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    v8 = @"SBPhysicalButtonSceneOverrideManager.m";
    v9 = 1024;
    v10 = 779;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end