@interface UIKeyboardArbiterClientInputDestination
@end

@implementation UIKeyboardArbiterClientInputDestination

void __74___UIKeyboardArbiterClientInputDestination_startConnectionWithCompletion___block_invoke(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = [UIApp _systemAnimationFenceExemptQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74___UIKeyboardArbiterClientInputDestination_startConnectionWithCompletion___block_invoke_2;
  v8[3] = &unk_1E71072D8;
  v10 = a3;
  objc_copyWeak(&v9, (a1 + 32));
  v11 = a4;
  [v7 performAsync:v8];

  objc_destroyWeak(&v9);
}

void __74___UIKeyboardArbiterClientInputDestination_startConnectionWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained pendingKeyboardGrabs];
    [v3 removeAllObjects];

    if (*(a1 + 41) == 1)
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      [v4 setDisableBecomeFirstResponder:1];
    }
  }
}

void __67___UIKeyboardArbiterClientInputDestination_currentBundleIdentifier__block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v2 bundleIdentifier];
  v1 = qword_1ED49C200;
  qword_1ED49C200 = v0;
}

uint64_t __55___UIKeyboardArbiterClientInputDestination_willResume___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) shouldSnapshot])
  {
    [*(a1 + 32) reloadForSnapshotting];
  }

  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) name];
  v4 = [@"notification: " stringByAppendingString:v3];
  v5 = v4;
  if (v2)
  {
    v6 = [v4 UTF8String];
    v7 = [v2 wantsToShowKeyboard];
    v8 = KeyboardArbiterClientLog_3();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315394;
      v12 = v6;
      v13 = 1024;
      v14 = v7;
      _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination resumeConnectionForReason:]  Performing resume required scene update for reason: %s; wantsKeyboard: %d", &v11, 0x12u);
    }

    v9 = +[UIWindow _applicationKeyWindow];
    [(_UIKeyboardArbiterClientInputDestination *)v2 _performRequiredSceneUpdateIfPermittedForWindow:v9 withContext:1];
    [v2 startConnection];
  }

  if ([*(a1 + 32) wantsToShowKeyboard] && (objc_msgSend(*(a1 + 32), "isHostedInAnotherProcess") & 1) == 0)
  {
    [*(a1 + 32) setWindowEnabled:{objc_msgSend(*(a1 + 32), "allowedToShowKeyboard")}];
  }

  [*(a1 + 32) setEnqueuedWillEnterForegroundActions:0];
  result = +[UIKeyboardImpl isFloating];
  if (result)
  {

    return [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_220_1];
  }

  return result;
}

void __120___UIKeyboardArbiterClientInputDestination_inputDestinationDidChange_withIAVHeight_isIAVRelevant_notifyRemote_forScene___block_invoke(uint64_t a1)
{
  v2 = [UIApp _systemAnimationFenceExemptQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __120___UIKeyboardArbiterClientInputDestination_inputDestinationDidChange_withIAVHeight_isIAVRelevant_notifyRemote_forScene___block_invoke_2;
  v3[3] = &unk_1E70F2F80;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 performAsync:v3];

  objc_destroyWeak(&v5);
}

void __120___UIKeyboardArbiterClientInputDestination_inputDestinationDidChange_withIAVHeight_isIAVRelevant_notifyRemote_forScene___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained pendingKeyboardGrabs];
  [v2 removeObject:*(a1 + 32)];
}

void __123___UIKeyboardArbiterClientInputDestination__didHandleKeyboardClientChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = objc_opt_class();
  v4 = [v10 scene];
  v5 = [v3 keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "ignoresPinning")}];
    [v6 setObject:v7 forKey:v5];

    if (([v10 ignoresPinning] & 1) == 0)
    {
      [v10 setIgnoresPinning:1];
    }

    v8 = [*(a1 + 48) sourceSceneIdentityString];
    v9 = [v8 isEqual:v5];

    if (v9)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

void __123___UIKeyboardArbiterClientInputDestination__didHandleKeyboardClientChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 scene];
  v6 = [v4 keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:v5];

  v7 = [*(a1 + 40) sourceSceneIdentityString];
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 40) sourceSceneIdentityString];
    if ([v9 isEqualToString:v6])
    {

      goto LABEL_11;
    }

    [*(a1 + 40) sourceDisplayIdentifier];
    v10 = v21 = v6;
    v11 = [v3 scene];
    v12 = [v11 screen];
    v13 = [v12 displayConfiguration];
    v14 = [v13 _nameForDisplayType];
    v15 = [v10 isEqualToString:v14];

    v6 = v21;
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  v16 = [*(a1 + 40) hostBundleIdentifier];
  v17 = _UIMainBundleIdentifier();
  v18 = [v16 isEqualToString:v17];

  if (([*(a1 + 40) keyboardOnScreen] & 1) != 0 || !v18)
  {
    if (([*(a1 + 40) keyboardOnScreen] & v18) == 1)
    {
      v20 = dispatch_time(0, 300000000);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __123___UIKeyboardArbiterClientInputDestination__didHandleKeyboardClientChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_4;
      v22[3] = &unk_1E70F3590;
      v22[4] = *(a1 + 32);
      dispatch_after(v20, MEMORY[0x1E69E96A0], v22);
    }
  }

  else
  {
    v19 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __123___UIKeyboardArbiterClientInputDestination__didHandleKeyboardClientChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_3;
    block[3] = &unk_1E70F3590;
    v24 = v3;
    dispatch_after(v19, MEMORY[0x1E69E96A0], block);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_11:
}

void __123___UIKeyboardArbiterClientInputDestination__didHandleKeyboardClientChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_6(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_opt_class();
  v4 = [v8 scene];
  v5 = [v3 keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:v4];

  if (v5)
  {
    v6 = [*(a1 + 40) objectForKey:v5];
    v7 = [v6 BOOLValue];

    if ((v7 & 1) == 0)
    {
      [v8 setIgnoresPinning:0];
    }
  }
}

uint64_t __80___UIKeyboardArbiterClientInputDestination_queue_endInputSessionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX endInputSession", v6, 2u);
  }

  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 remoteTextInputPartner];
  [v4 endInputSessionOnSwitchingApps];

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __77___UIKeyboardArbiterClientInputDestination_queue_keyboardChanged_onComplete___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 208));
  v2 = *(a1 + 32);
  if (*(v2 + 200))
  {
    v3 = KeyboardArbiterClientLog_3();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 40);
      v7 = 138412290;
      v8 = v6;
      _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination queue_keyboardChanged:onComplete:]_block_invoke  releasing os transaction for client changed task on timeout for info: %@", &v7, 0xCu);
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 200);
    *(v4 + 200) = 0;

    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 208));
}

void __77___UIKeyboardArbiterClientInputDestination_queue_keyboardChanged_onComplete___block_invoke_291(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) sourceSceneIdentityString];

  if (v4)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v6 = [WeakRetained pendingKeyboardGrabs];

    v7 = [v6 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v7)
    {
      v8 = v7;
      v2 = *v37;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v37 != v2)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v36 + 1) + 8 * v9);
          v11 = [*(a1 + 32) sourceSceneIdentityString];
          if (v11)
          {
            v12 = v11;
            v13 = [v10 sceneIdentityString];
            v1 = [*(a1 + 32) sourceSceneIdentityString];
            v14 = [v13 isEqual:v1];

            if (v14)
            {
              v15 = 1;
              goto LABEL_17;
            }
          }

          ++v9;
        }

        while (v8 != v9);
        v8 = [v6 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) sourceBundleIdentifier];
    v16 = [objc_opt_class() currentBundleIdentifier];
    if ([v6 isEqualToString:v16])
    {
      v15 = 1;
    }

    else
    {
      v17 = [*(a1 + 32) hostBundleIdentifier];
      v1 = [objc_opt_class() currentBundleIdentifier];
      v15 = [v17 isEqualToString:v1];
    }
  }

LABEL_17:

  v18 = [*(a1 + 32) sourceSceneIdentityString];
  v19 = *(a1 + 32);
  if (v18)
  {
    v20 = [v19 sourceSceneIdentityString];
    v21 = _UISceneIdentityToLogString(v20);
  }

  else
  {
    v22 = [v19 sourceBundleIdentifier];
    v20 = v22;
    v23 = @"(unspecified)";
    if (v22)
    {
      v23 = v22;
    }

    v21 = v23;
  }

  v24 = v21;

  v25 = _UIArbiterClientLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = "N";
    if (v15)
    {
      v26 = "Y";
    }

    *buf = 136315394;
    v41 = v26;
    v42 = 2112;
    v43 = v24;
    _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_DEFAULT, "RX keyboardChanged (isLocal:%s source:%@)", buf, 0x16u);
  }

  v27 = [UIApp systemIsAnimatingApplicationLifecycleEvent];
  v28 = objc_loadWeakRetained((a1 + 56));
  if ([v28 deactivatedByControlCenter])
  {
    goto LABEL_30;
  }

  v29 = [UIApp _isSpringBoard];
  if (v29)
  {
    v1 = objc_loadWeakRetained((a1 + 56));
    v2 = [v1 pendingKeyboardGrabs];
    if ([v2 count])
    {

LABEL_30:
      goto LABEL_35;
    }
  }

  v35 = v15;
  v30 = objc_loadWeakRetained((a1 + 56));
  v31 = +[_UIKeyboardArbiterClientInputDestination currentBundleIdentifier];
  v32 = [v30 isSpotlight:v31];

  if (v29)
  {
  }

  if ((v32 & 1) == 0 && (v27 & 1) == 0)
  {
    v34 = objc_loadWeakRetained((a1 + 56));
    [v34 _handleKeyboardChanged:*(a1 + 32) isLocal:v35 onComplete:*(a1 + 48)];

    goto LABEL_37;
  }

LABEL_35:
  v33 = *(a1 + 48);
  if (v33)
  {
    (*(v33 + 16))();
  }

LABEL_37:
}

void __75___UIKeyboardArbiterClientInputDestination_handleKeyboardUITrackingChange___block_invoke_2(double *a1, void *a2)
{
  v35 = a2;
  if ([v35 isTrackingKeyboard])
  {
    v3 = [v35 windowScene];
    v4 = +[UITextEffectsWindow sharedTextEffectsWindowForWindowScene:forViewService:](UITextEffectsWindow, "sharedTextEffectsWindowForWindowScene:forViewService:", v3, [v35 _isHostedInAnotherProcess]);

    [v35 convertRect:v4 fromWindow:{a1[4], a1[5], a1[6], a1[7]}];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v4 actualSceneFrame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v35 bounds];
    v23 = v6 - v14;
    if (v18 == v21 && v20 == v22)
    {
      v8 = v8 - v16;
      v6 = v6 - v14;
    }

    [v35 frame];
    v43.origin.x = v6;
    v43.origin.y = v8;
    v43.size.width = v10;
    v43.size.height = v12;
    v38 = CGRectIntersection(v37, v43);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    if (CGRectIsEmpty(v38))
    {
      [v35 frame];
      MaxY = CGRectGetMaxY(v39);
      [v35 insetForDismissedKeyboardGuide];
      y = MaxY - v29;
      [v35 insetForDismissedKeyboardGuide];
      height = v30;
      x = 0.0;
      width = v18;
    }

    v31 = [v35 _primaryKeyboardTrackingGuide];
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    MinX = CGRectGetMinX(v40);
    [v35 frame];
    v33 = CGRectGetMaxY(v41);
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    [v31 changeOffsetConstants:{MinX, v33 - CGRectGetMaxY(v42)}];

    v34 = [v35 _primaryKeyboardTrackingGuide];
    [v34 changeSizingConstants:{width, height}];
  }
}

void __70___UIKeyboardArbiterClientInputDestination_handleKeyboardUIDidChange___block_invoke(uint64_t a1, void *a2)
{
  v120 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) hasValidNotification])
  {
    v4 = [*(a1 + 32) notificationInfo];
    if (([v4 shouldSendInClient] & 1) == 0)
    {
      v5 = [v3 existingContainerRootController];
      if (v5)
      {
        v6 = v5;
        v7 = [v3 existingContainerRootController];
        v8 = [v7 isRotating];

        if ((v8 & 1) == 0)
        {
          v9 = MEMORY[0x1E696AEC0];
          v10 = [*(a1 + 32) isStartNotification];
          v11 = @"is end";
          if (v10)
          {
            v11 = @"is start";
          }

          v12 = [v9 stringWithFormat:@"handleKeyboardUIDidChange: notification from keyboard %@", v11];
          [v4 addKeyboardNotificationDebuggingInfo:v12];

          v13 = [v3 existingContainerRootController];
          v14 = [v13 inputViewSet];
          v15 = [v14 inputAccessoryView];

          if (!v15)
          {
            v16 = [v3 containerWindow];
            v17 = [v16 _isHostedInAnotherProcess];

            if (v17)
            {
              v18 = [v3 containerWindow];
              [v18 hostedViewReference];
              v20 = v19;
              v22 = v21;
              v24 = v23;
              v26 = v25;

              [v4 beginFrame];
              v126.origin.x = v20;
              v126.origin.y = v22;
              v126.size.width = v24;
              v126.size.height = v26;
              v122 = CGRectIntersection(v121, v126);
              x = v122.origin.x;
              y = v122.origin.y;
              width = v122.size.width;
              height = v122.size.height;
              if (!CGRectIsEmpty(v122))
              {
                [v4 populateStartInfoWithFrame:{x - v20, y - v22, width, height}];
              }

              [v4 endFrame];
              v127.origin.x = v20;
              v127.origin.y = v22;
              v127.size.width = v24;
              v127.size.height = v26;
              v124 = CGRectIntersection(v123, v127);
              v31 = v124.origin.x;
              v32 = v124.origin.y;
              v33 = v124.size.width;
              v34 = v124.size.height;
              if (!CGRectIsEmpty(v124))
              {
                [v4 populateEndInfoWithFrame:{v31 - v20, v32 - v22, v33, v34}];
              }

              [v4 addKeyboardNotificationDebuggingInfo:@" is hosted"];
            }

            [v4 setShouldSendInClient:1];
            [v4 duration];
            if (v35 > 0.0)
            {
              v36 = [*(a1 + 32) animationFence];
              v37 = [v36 isUsable];

              if (v37)
              {
                v38 = [v3 scene];
                v39 = [*(a1 + 32) animationFence];
                [v38 _synchronizeDrawingWithFence:v39];
              }
            }

            v40 = [*(a1 + 32) isStartNotification];
            v41 = [v3 existingContainerRootController];
            v42 = [v4 type];
            if (v40)
            {
              [v41 postStartNotifications:v42 withInfo:v4];
            }

            else
            {
              [v41 postEndNotifications:v42 withInfo:v4];
            }
          }
        }
      }
    }

    goto LABEL_92;
  }

  if ([v3 isOnScreen] && (objc_msgSend(v3, "responder"), v43 = objc_claimAutoreleasedReturnValue(), v43, v43))
  {
    v44 = [v3 scene];
    v45 = [v44 keyboardSceneDelegate];
    v46 = [v45 responder];
    v47 = [v46 _window];

    if (v47 && ([v47 _requiresKeyboardPresentationFence] & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v48 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v49 = [v48 nextAnimationStyle];
      v50 = [v49 canTakeSnapshot];

      if (v50)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  else
  {
    v44 = KeyboardArbiterClientLog_3();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [v3 isOnScreen];
      v52 = @" not";
      if (v51)
      {
        v52 = &stru_1EFB14550;
      }

      *buf = 138412290;
      v115 = v52;
      _os_log_impl(&dword_188A29000, v44, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination handleKeyboardUIDidChange:]_block_invoke  Keyboard destination responder is%@ on screen", buf, 0xCu);
    }
  }

  v113 = 0;
  v53 = [*(a1 + 32) applicationIdentifier];
  v54 = CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
  LODWORD(v55) = v54 != 0;

  if (!v54)
  {
    v59 = KeyboardArbiterClientLog_3();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = [*(a1 + 32) applicationIdentifier];
      *buf = 138412546;
      v115 = v113;
      v116 = 2112;
      v117 = v60;
      _os_log_impl(&dword_188A29000, v59, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination handleKeyboardUIDidChange:]_block_invoke  Unexpected bundleIdentifier: %@ for applicationIdentifier: %@", buf, 0x16u);
    }

LABEL_38:

    if ([*(a1 + 32) keyboardOnScreen])
    {
      if (!v54)
      {
        LOBYTE(v55) = 0;
LABEL_42:
        v61 = 1;
        goto LABEL_50;
      }

      goto LABEL_44;
    }

    goto LABEL_46;
  }

  v56 = +[UIApplication displayIdentifier];
  v57 = [v56 isEqualToString:v113];

  v58 = [*(a1 + 32) keyboardOnScreen];
  if (!v57)
  {
    LODWORD(v55) = 0;
    if (v58)
    {
      goto LABEL_42;
    }

    goto LABEL_46;
  }

  if (v58)
  {
    v59 = [v3 containerRootController];
    [v59 clearKeyboardSnapshot];
    goto LABEL_38;
  }

  if ([*(a1 + 32) keyboardOnScreen])
  {
LABEL_44:
    v61 = [*(a1 + 40) disableBecomeFirstResponder] ^ 1;
    LOBYTE(v55) = 1;
    goto LABEL_50;
  }

  LODWORD(v55) = 1;
LABEL_46:
  v62 = [v3 containerRootController];
  v63 = [v62 placement];
  v64 = [v63 showsInputOrAssistantViews];
  v61 = v64;
  if (v55 && (v64 & 1) != 0)
  {
    v61 = [*(a1 + 40) disableBecomeFirstResponder] ^ 1;
  }

LABEL_50:
  v65 = [v3 containerRootController];
  v66 = [v65 inputViewSet];
  v67 = [v66 inputAccessoryView];
  if (v67)
  {
    v68 = 1;
  }

  else
  {
    v69 = [v3 containerRootController];
    [v69 placement];
    v71 = v70 = a1;
    v68 = [v71 accessoryViewWillAppear];

    a1 = v70;
  }

  v72 = [*(a1 + 32) keyboardOnScreen];
  v73 = [v3 containerRootController];
  v74 = [v73 placement];
  v75 = [v74 showsInputOrAssistantViews];

  v76 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    v77 = v61 == 0;
    v108 = v75;
    v78 = v61;
    v79 = v72;
    v80 = v55;
    if (v77)
    {
      v55 = @"not ";
    }

    else
    {
      v55 = &stru_1EFB14550;
    }

    v81 = v68;
    v82 = v3;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v83 = &stru_1EFB14550;
    }

    else
    {
      v83 = @"not ";
    }

    v84 = [*(a1 + 40) currentUIState];
    [v84 animationFence];
    v85 = v109 = a1;
    *buf = 138412802;
    v115 = v55;
    LOBYTE(v55) = v80;
    v72 = v79;
    v61 = v78;
    v75 = v108;
    v116 = 2112;
    v117 = v83;
    v3 = v82;
    v68 = v81;
    v118 = 2112;
    v119 = v85;
    _os_log_impl(&dword_188A29000, v76, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination handleKeyboardUIDidChange:]_block_invoke  Keyboard destination should %@update UI and should %@skip fencing: %@", buf, 0x20u);

    a1 = v109;
  }

  [v3 cleanUpWaitingForInputUI];
  if (v61)
  {
    if (v68)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    v86 = v72 ^ v75;
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v87 = [v3 containerRootController];
      v88 = [v87 isRotating];

      if ((v88 & 1) == 0)
      {
        v89 = [v3 scene];
        v90 = [*(a1 + 40) currentUIState];
        v91 = [v90 animationFence];
        [v89 _synchronizeDrawingWithFence:v91];
      }
    }

    if (v55)
    {
      goto LABEL_77;
    }

    v92 = [*(a1 + 32) applicationIdentifier];
    if (-[NSObject isEqualToString:](v92, "isEqualToString:", @"com.apple.Spotlight") && [*(a1 + 32) keyboardOnScreen] && objc_msgSend(v3, "showingKeyboard"))
    {
      v93 = [v3 scene];
      v94 = [v93 activationState];

      if (v94)
      {
LABEL_77:
        v98 = KeyboardArbiterClientLog_3();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          [*(a1 + 32) keyboardPosition];
          v99 = NSStringFromCGRect(v125);
          v100 = [*(a1 + 32) animated];
          v101 = @"unanimated";
          if (v100)
          {
            v101 = @"animated";
          }

          *buf = 138412802;
          v115 = v99;
          v116 = 2112;
          v117 = v101;
          if (v86)
          {
            v102 = @"keyboardUIDidChange";
          }

          else
          {
            v102 = @"updateSizingFromRemoteChange";
          }

          v118 = 2112;
          v119 = v102;
          _os_log_impl(&dword_188A29000, v98, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination handleKeyboardUIDidChange:]_block_invoke  Keyboard destination updating keyboardPosition %@ for %@ transition using %@", buf, 0x20u);
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __70___UIKeyboardArbiterClientInputDestination_handleKeyboardUIDidChange___block_invoke_335;
        aBlock[3] = &unk_1E70F35E0;
        v112 = v86 ^ 1;
        v103 = v3;
        v111 = v103;
        v104 = _Block_copy(aBlock);
        if ([*(a1 + 32) animated] && (objc_msgSend(v103, "containerRootController"), v105 = objc_claimAutoreleasedReturnValue(), v106 = objc_msgSend(v105, "isRotating"), v105, (v106 & 1) == 0))
        {
          v104[2](v104);
        }

        else
        {
          v107 = +[UIInputViewAnimationStyle animationStyleImmediate];
          [v103 pushAnimationStyle:v107];

          v104[2](v104);
          [v103 popAnimationStyle];
        }

        goto LABEL_92;
      }

      v95 = _UIArbiterClientLog();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v95, OS_LOG_TYPE_DEFAULT, "handleKeyboardUIChange: resignFirstResponder (for Spotlight)", buf, 2u);
      }

      v96 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v97 = [v96 responder];
      [v97 resignFirstResponder];

      v92 = KeyboardArbiterClientLog_3();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v92, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination handleKeyboardUIDidChange:]_block_invoke  ResignFirstResponder, due to Spotlight grab InputUI in background", buf, 2u);
      }
    }

    goto LABEL_77;
  }

LABEL_92:
}

void __70___UIKeyboardArbiterClientInputDestination_handleKeyboardUIDidChange___block_invoke_335(uint64_t a1)
{
  if (*(a1 + 40) == 1 && ([*(a1 + 32) containerRootController], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isRotating"), v2, (v3 & 1) == 0))
  {
    v5 = [*(a1 + 32) containerRootController];
    [v5 updateSizingFromRemoteChange];
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 keyboardUIDidChange];
  }
}

uint64_t __81___UIKeyboardArbiterClientInputDestination_queue_keyboardUIDidChange_onComplete___block_invoke(uint64_t a1)
{
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX keyboardUIDidChange", v4, 2u);
  }

  return [*(a1 + 32) keyboardUIDidChange:*(a1 + 40) onComplete:*(a1 + 48)];
}

uint64_t __84___UIKeyboardArbiterClientInputDestination_queue_activeProcessResignWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX activeProcessResign", v4, 2u);
  }

  [*(a1 + 32) setCurrentInputDestination:1];
  [*(a1 + 32) didBecomeActive:0];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __100___UIKeyboardArbiterClientInputDestination_queue_keyboardArbiterClientHandleChanged_withCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = "Y";
    }

    else
    {
      v3 = "N";
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX queue_keyboardArbiterClientHandleChanged:%s", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __85___UIKeyboardArbiterClientInputDestination_queue_setKeyboardDisabled_withCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 48))
    {
      v3 = "Y";
    }

    else
    {
      v3 = "N";
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX setKeyboardDisabled:%s", &v5, 0xCu);
  }

  [*(a1 + 32) setDisableBecomeFirstResponder:*(a1 + 48) forSuppressionAssertion:0 updatePlacement:0];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __84___UIKeyboardArbiterClientInputDestination_queue_sceneBecameFocused_withCompletion___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = _UIArbiterClientLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v1 = [*(a1 + 32) description];
      v5 = _UISceneIdentityToLogString(v1);
    }

    else
    {
      v5 = @"(other)";
    }

    *buf = 138543362;
    v30 = v5;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "RX SceneBecameFocused:%{public}@", buf, 0xCu);
    if (v4)
    {
    }
  }

  v6 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v23 = [*(a1 + 32) stringRepresentation];
    *buf = 138412290;
    v30 = v23;
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination queue_sceneBecameFocused:withCompletion:]_block_invoke  Scene became focused: %@", buf, 0xCu);
  }

  if (*(a1 + 32))
  {
    [(UIScene *)UIWindowScene _scenesIncludingInternal:1];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v28 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v8)
    {
      v9 = *v26;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = [v11 _FBSScene];
          v13 = [v12 identityToken];
          v14 = BSEqualObjects();

          if (v14)
          {
            v8 = v11;
            goto LABEL_20;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    v15 = [v8 keyWindow];
    if (v15 && ([v8 _isTargetOfKeyboardEventDeferringEnvironment] & 1) == 0)
    {
      v16 = KeyboardArbiterClientLog_3();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v24 = [*(a1 + 32) stringRepresentation];
        *buf = 134218242;
        v30 = v15;
        v31 = 2112;
        v32 = v24;
        _os_log_debug_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination queue_sceneBecameFocused:withCompletion:]_block_invoke  Performing required scene update because it was focused in the arbiter: %p; scene: %@", buf, 0x16u);
      }

      [(_UIKeyboardArbiterClientInputDestination *)*(a1 + 40) _performRequiredSceneUpdateIfPermittedForWindow:v15 withContext:65537];
    }
  }

  else
  {
    v8 = 0;
  }

  v17 = [*(a1 + 40) focusedSceneIdentityStringOrIdentifier];
  v18 = v17;
  if (!v8)
  {
    if (v17)
    {
      v19 = [*(a1 + 32) stringRepresentation];
      v20 = BSEqualStrings();

      if ((v20 & 1) == 0)
      {
        v21 = KeyboardArbiterClientLog_3();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination queue_sceneBecameFocused:withCompletion:]_block_invoke  Setting focused scene identity or identifier to nil because a scene from another application was focused", buf, 2u);
        }

        [*(a1 + 40) setFocusedSceneIdentityStringOrIdentifier:0];
      }
    }
  }

  v22 = *(a1 + 48);
  if (v22)
  {
    (*(v22 + 16))();
  }
}

@end