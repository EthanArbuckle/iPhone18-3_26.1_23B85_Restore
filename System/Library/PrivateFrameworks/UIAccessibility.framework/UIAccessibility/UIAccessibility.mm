void _UIAccessibilityCompleteUnregistration(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    _AXAssert();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [__UIAccessibilityFocusedElements allKeys];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [__UIAccessibilityFocusedElements objectForKeyedSubscript:v7];
        if (v8 == a1)
        {
          [__UIAccessibilityFocusedElements removeObjectForKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void _UIAXCleanupRotorCache(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [RotorCache allKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [RotorCache objectForKey:v7];
        v9 = [v8 targetElement];

        if (v9 == a1)
        {
          [RotorCache removeObjectForKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

uint64_t _UIAccessibilityFocusedElements()
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    _AXAssert();
  }

  v0 = __UIAccessibilityFocusedElements;

  return [v0 allValues];
}

void _UIAccessibilityBroadcastNotificationFunction(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AXRuntimeLogNotifications();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = v3;
    if (a1 == 1005 || a1 == 1008 || a1 == 1072 && (os_variant_has_internal_ui() & 1) == 0)
    {

      v6 = @"<Announcement data redacted>";
    }

    v7 = AXRuntimeLogNotifications();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412803;
      *v41 = &stru_1F1DB9E20;
      *&v41[8] = 1024;
      *&v41[10] = a1;
      *&v41[14] = 2117;
      *&v41[16] = v6;
      _os_log_impl(&dword_1A9B83000, v7, OS_LOG_TYPE_INFO, "Attempting to send notification: %@ (%d) %{sensitive}@", buf, 0x1Cu);
    }
  }

  v8 = v3;
  v9 = *MEMORY[0x1E69DD928];
  if (*MEMORY[0x1E69DD910] == a1 || v9 == a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v8 isEqualToString:*MEMORY[0x1E69DD8F0]] & 1) == 0)
    {
      v11 = @"pause";
      if (v9 == a1)
      {
        v11 = @"resume";
      }

      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"You must pass the identifier of the assistive technology to %@.  See UIAccessibilityConstants.h for the list of valid values.", v11}];
    }
  }

  if (_AXBlockAllNotifications == 1)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
    [v12 setObject:v13 forKeyedSubscript:@"notification"];

    [v12 setObject:v8 forKeyedSubscript:@"notificationData"];
    [v12 setObject:_UIAXAssociatedElementContextForNextNotification forKeyedSubscript:@"associatedObject"];
    [_BlockNotificationsLock lock];
    [_BlockedNotificationQueue addObject:v12];
    [_BlockNotificationsLock unlock];
    v14 = AXRuntimeLogNotifications();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 67109379;
      *v41 = a1;
      *&v41[4] = 2117;
      *&v41[6] = v8;
      _os_log_impl(&dword_1A9B83000, v14, OS_LOG_TYPE_INFO, "Did not post. Blocking all notifications: %d (%{sensitive}@)", buf, 0x12u);
    }

    v15 = _UIAXAssociatedElementContextForNextNotification;
    _UIAXAssociatedElementContextForNextNotification = 0;
LABEL_24:

    goto LABEL_33;
  }

  if (_AXNextIgnoredNotification() == a1)
  {
    _AXIgnoreNextNotification();
    v16 = AXRuntimeLogNotifications();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v41 = a1;
      v17 = "Did not post. Ignore next notification was set: %d";
LABEL_31:
      _os_log_impl(&dword_1A9B83000, v16, OS_LOG_TYPE_INFO, v17, buf, 8u);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  [_BlockNotificationsLock lock];
  v18 = _BlockedNotifications;
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  LODWORD(v18) = [v18 containsObject:v19];

  [_BlockNotificationsLock unlock];
  if (v18)
  {
    v16 = AXRuntimeLogNotifications();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v41 = a1;
      v17 = "Did not post. Was among blocked notifications: %d";
      goto LABEL_31;
    }

LABEL_32:

    v12 = _UIAXAssociatedElementContextForNextNotification;
    _UIAXAssociatedElementContextForNextNotification = 0;
    goto LABEL_33;
  }

  if (a1 != 1005 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_43:
    v28 = _UIAXAssociatedElementContextForNextNotification;
    if (v28)
    {
      v29 = AXRuntimeLogNotifications();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        *buf = 138412802;
        *v41 = v30;
        *&v41[8] = 2048;
        *&v41[10] = v28;
        *&v41[18] = 1024;
        *&v41[20] = a1;
        v31 = v30;
        _os_log_impl(&dword_1A9B83000, v29, OS_LOG_TYPE_INFO, "consuming associated object for notification: <%@: %p> %d", buf, 0x1Cu);
      }
    }

    v32 = _UIAXAssociatedElementContextForNextNotification;
    _UIAXAssociatedElementContextForNextNotification = 0;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___UIAccessibilityBroadcastNotificationFunction_block_invoke;
    aBlock[3] = &unk_1E78AB568;
    v39 = a1;
    v33 = v8;
    v37 = v33;
    v38 = v28;
    v12 = v28;
    v34 = _Block_copy(aBlock);
    v35 = v34;
    if (a1 == 1021)
    {
      (*(v34 + 2))(v34);
    }

    else if (v33 | v28 || (_UIAccessibilityIsNotificationQueued(a1) & 1) == 0)
    {
      _UIAccessibilityQueueNotification(a1);
      AXPerformBlockOnMainThreadAfterDelay();
    }

    v15 = v37;
    goto LABEL_24;
  }

  buf[0] = 0;
  objc_opt_class();
  v20 = __UIAccessibilityCastAsClass();
  if (buf[0] == 1)
  {
    abort();
  }

  v12 = v20;
  v21 = [v20 objectForKeyedSubscript:*MEMORY[0x1E6989248]];
  v22 = [v21 BOOLValue];

  v23 = AXDeviceSupportsHoverTextTyping();
  v24 = [MEMORY[0x1E6989890] sharedInstance];
  v25 = [v24 hoverTextTypingEnabled];

  if (!v22 || (v23 & v25 & 1) != 0)
  {

    goto LABEL_43;
  }

  v26 = AXRuntimeLogNotifications();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v41 = v23;
    *&v41[4] = 1024;
    *&v41[6] = v25 & 1;
    _os_log_impl(&dword_1A9B83000, v26, OS_LOG_TYPE_INFO, "Did not post Hover Typing-only notification because the feature is not active (supports: %d, enabled: %d)", buf, 0xEu);
  }

  v27 = _UIAXAssociatedElementContextForNextNotification;
  _UIAXAssociatedElementContextForNextNotification = 0;

LABEL_33:
}

uint64_t _UIAccessibilityIsNotificationQueued(uint64_t a1)
{
  [_QueuedNotificationsLock lock];
  v2 = _QueuedNotifications;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v4 = [v2 containsObject:v3];

  [_QueuedNotificationsLock unlock];
  return v4;
}

uint64_t _UIAccessibilityQueueNotification(uint64_t a1)
{
  if (_UIAccessibilityQueueNotification_onceToken != -1)
  {
    _UIAccessibilityQueueNotification_cold_1();
  }

  [_QueuedNotificationsLock lock];
  v2 = _QueuedNotifications;
  if (!_QueuedNotifications)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = _QueuedNotifications;
    _QueuedNotifications = v3;

    v2 = _QueuedNotifications;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  [v2 addObject:v5];

  v6 = _QueuedNotificationsLock;

  return [v6 unlock];
}

void _UIAXBroadcastMainThread(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v9 = MEMORY[0x1E69DDA98];
  if (([*MEMORY[0x1E69DDA98] _accessibilityIsSystemAppServer] & 1) == 0 && (MEMORY[0x1AC58EF10]() & 1) == 0 && (AXProcessIsCommandAndControl() & 1) == 0)
  {
    if ((a1 - 1009) <= 0x19 && ((1 << (a1 + 15)) & 0x3001001) != 0)
    {

      goto LABEL_12;
    }

    if (a1 == 4002)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v3 = [v8 objectForKey:@"event"];
        if ([v3 isEqualToString:@"AnimationsNonActive"])
        {
          v10 = 1;
          goto LABEL_52;
        }
      }

      if (MEMORY[0x1AC58EF20]())
      {
        goto LABEL_51;
      }
    }

    else
    {
      isKindOfClass = 0;
    }

    if ([*v9 isSuspended] && (objc_msgSend(*v9, "_accessibilityAllowsNotificationsDuringSuspension") & 1) == 0)
    {
      v28 = [objc_opt_class() safeBoolForKey:@"_isSystemUIService"];
      if (isKindOfClass)
      {
      }

      if (v28)
      {
        goto LABEL_4;
      }

      v29 = [MEMORY[0x1E696AAE8] mainBundle];
      v30 = [v29 bundleIdentifier];
      v31 = [v30 hasPrefix:@"com.apple.AdSheet"];

      v32 = [MEMORY[0x1E696AAE8] mainBundle];
      v33 = [v32 infoDictionary];
      v3 = [v33 objectForKey:@"SBAppTags"];

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 containsObject:@"hidden"])
      {
        v10 = v31 ^ 1;
      }

      else
      {
        v10 = 0;
      }

LABEL_52:

      goto LABEL_5;
    }

LABEL_51:
    v10 = 1;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_4:
  v10 = 1;
LABEL_5:
  if (a1 == 1000 && ((AXProcessIsChronod() & 1) != 0 || (AXProcessIsPosterBoard() & 1) != 0 || AXProcessIsWidgetRendererWatchFaces()))
  {
  }

  else
  {

    if (v10)
    {
LABEL_12:
      if (UIAccessibilityMoveToElementNotification == a1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v8 objectForKey:UIAccessibilityMoveToElementNotificationKeyElement], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
      {
        v12 = _preprocessNotificationDataForMoveToElementNotification(v8);
      }

      else
      {
        v12 = _massageNotificationDataBeforePost(a1, v8);
      }

      v13 = v12;

      v15 = _massageAssociatedElementBeforePost(v14, v7);

      if (_AXUnitTestNotificationWillBeSentCallback)
      {
        v16 = AXRuntimeLogNotifications();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          _UIAXBroadcastMainThread_cold_1(v16);
        }

        _AXUnitTestNotificationWillBeSentCallback(a1, v13, v15);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v17 = [NotificationCallbacks allValues];
      v18 = [v17 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v35;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(v17);
            }

            (*(*(*(&v34 + 1) + 8 * i) + 16))();
          }

          v19 = [v17 countByEnumeratingWithState:&v34 objects:v44 count:16];
        }

        while (v19);
      }

      v22 = _AXCreateAXUIElementWithElement();
      v23 = AXPushNotificationToSystemForBroadcast();
      if (v22)
      {
        CFRelease(v22);
      }

      v24 = AXRuntimeLogNotifications();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (v23)
      {
        if (v25)
        {
          *buf = 138413059;
          v39 = &stru_1F1DB9E20;
          v40 = 1024;
          v41 = a1;
          v42 = 1024;
          LODWORD(v43[0]) = v23;
          WORD2(v43[0]) = 2117;
          *(v43 + 6) = v13;
          v26 = "Post notification failed. notification: %@ (%d) error:%d data:%{sensitive}@";
LABEL_35:
          _os_log_impl(&dword_1A9B83000, v24, OS_LOG_TYPE_INFO, v26, buf, 0x22u);
        }
      }

      else if (v25)
      {
        *buf = 138413059;
        v39 = &stru_1F1DB9E20;
        v40 = 1024;
        v41 = a1;
        v42 = 1024;
        LODWORD(v43[0]) = 0;
        WORD2(v43[0]) = 2117;
        *(v43 + 6) = v13;
        v26 = "Did post notification. notification: %@ (%d) error:%d data:%{sensitive}@";
        goto LABEL_35;
      }

      v7 = v15;
      v8 = v13;
      goto LABEL_37;
    }
  }

  if (_AXSInUnitTestMode())
  {
    goto LABEL_12;
  }

  v24 = AXRuntimeLogNotifications();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412803;
    v39 = &stru_1F1DB9E20;
    v40 = 1024;
    v41 = a1;
    v42 = 2117;
    v43[0] = v8;
    _os_log_impl(&dword_1A9B83000, v24, OS_LOG_TYPE_INFO, "Did not post. Not allowed. notification: %@ (%d) data:%{sensitive}@", buf, 0x1Cu);
  }

LABEL_37:
}

id _massageNotificationDataBeforePost(uint64_t a1, void *a2)
{
  v75[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (a1 != 1079 && (isKindOfClass & 1) != 0)
  {
    v5 = v3;
    if ([v5 count] != 2)
    {
      _AXAssert();
    }

    v6 = [v5 firstObject];
    v7 = [v6 isEqualToString:*MEMORY[0x1E69890F0]];

    if ((v7 & 1) == 0)
    {
      _AXAssert();
    }

    v8 = [v5 lastObject];
    v9 = _massageNotificationDataBeforePost(a1, v8);

    v10 = [v5 firstObject];
    v11 = v10;
    if (v9)
    {
      v75[0] = v10;
      v75[1] = v9;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];

      v11 = v12;
    }

    else
    {
    }

    v20 = v11;

    goto LABEL_79;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v3 accessibilityLanguage];

    if (v13)
    {
      v14 = [MEMORY[0x1E6988D60] axAttributedStringWithString:v3];
      v15 = [v3 accessibilityLanguage];
      [v14 setAttribute:v15 forKey:*MEMORY[0x1E6988E88]];

      v3 = v14;
    }
  }

  v5 = 0;
  if (_notificationRequiresElementConversion(a1) && v3)
  {
    v16 = CFGetTypeID(v3);
    if (v16 == AXUIElementGetTypeID() || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), v17 = objc_opt_isKindOfClass(), (v17 & 1) != 0))
    {
      v5 = 0;
    }

    else
    {
      _axuiElementForNotificationData(v17, v3);
      v3 = v5 = v3;
    }
  }

  if (!_notificationRequiresSenderPID(a1))
  {
    v19 = v3;
    goto LABEL_75;
  }

  if (MEMORY[0x1AC58EF10]())
  {
    v18 = *MEMORY[0x1E6989228];
  }

  else
  {
    v18 = getpid();
  }

  if (UIAccessibilityNativeFocusItemDidChangeWithContextNotification == a1)
  {
    v19 = [MEMORY[0x1E695DF90] dictionary];
    v21 = 0x1E696A000uLL;
    v22 = [MEMORY[0x1E696AD98] numberWithInt:v18];
    [v19 setObject:v22 forKeyedSubscript:*MEMORY[0x1E6989100]];

    if (!v3)
    {
      goto LABEL_71;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = MEMORY[0x1E6989048];
      v24 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6989048]];
      [v19 setObject:v24 forKeyedSubscript:*v23];

      v25 = MEMORY[0x1E6989040];
      v26 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6989040]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v26 CGRectValue];
        v27 = NSStringFromRect(v77);
        [v19 setObject:v27 forKeyedSubscript:*v25];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v19 setObject:v26 forKeyedSubscript:*v25];
        }
      }

      goto LABEL_71;
    }

    v31 = v5;
    v32 = v31;
    if (!v31)
    {
      v54 = 0;
      v50 = 0;
      v48 = 0;
      goto LABEL_70;
    }

    v60 = v19;
    v61 = v3;
    v62 = a1;
    v33 = 0;
    v34 = v31;
    while (1)
    {
      if (objc_opt_respondsToSelector())
      {
        v35 = [v34 _accessibilityUnderlyingElementForFocusItem];

        v34 = v35;
      }

      if (![v34 isAccessibilityElement])
      {
        goto LABEL_58;
      }

      if (v34 != v32)
      {
        v36 = [MEMORY[0x1E695DF70] array];
        v37 = [v34 _accessibilitySupplementaryHeaderViews];
        [v36 addObjectsFromArray:v37];

        v38 = [v34 _accessibilitySupplementaryFooterViews];
        [v36 addObjectsFromArray:v38];

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v39 = v36;
        v40 = [v39 countByEnumeratingWithState:&v64 objects:v74 count:16];
        if (v40)
        {
          v41 = v40;
          v63 = v33;
          v42 = 0;
          v43 = *v65;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v65 != v43)
              {
                objc_enumerationMutation(v39);
              }

              if ([v32 _accessibilityIsDescendantOfElement:*(*(&v64 + 1) + 8 * i)])
              {
                v45 = AXRuntimeLogNotifications();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v71 = v32;
                  v72 = 2112;
                  v73 = v34;
                  _os_log_impl(&dword_1A9B83000, v45, OS_LOG_TYPE_DEFAULT, "Native focus change: Not swapping %@ for %@ because it's a supplementary view (or descendant of one)", buf, 0x16u);
                }

                v42 = 1;
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v64 objects:v74 count:16];
          }

          while (v41);

          v33 = v63;
          if (v42)
          {
            goto LABEL_58;
          }
        }

        else
        {
        }
      }

      v46 = v34;

      v33 = v46;
LABEL_58:
      v47 = [v34 accessibilityContainer];

      v34 = v47;
      if (!v47)
      {
        v48 = v32;
        v19 = v60;
        v3 = v61;
        if (v33)
        {
          v49 = [v33 isEqual:v48];
          LODWORD(a1) = v62;
          v50 = v33;
          v21 = 0x1E696A000;
          if ((v49 & 1) == 0)
          {
            v50 = v50;

            v51 = AXRuntimeLogNotifications();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v71 = v32;
              v72 = 2112;
              v73 = v50;
              _os_log_impl(&dword_1A9B83000, v51, OS_LOG_TYPE_DEFAULT, "Native focus change: Swapping %@ for %@ because it's the accessible element", buf, 0x16u);
            }

            v53 = _axuiElementForNotificationData(v52, v50);

            v48 = v50;
            v3 = v53;
          }
        }

        else
        {
          v50 = 0;
          LODWORD(a1) = v62;
          v21 = 0x1E696A000uLL;
        }

LABEL_70:
        [v19 setObject:v3 forKeyedSubscript:*MEMORY[0x1E6989038]];

LABEL_71:
        v55 = [MEMORY[0x1E696AAE8] mainBundle];
        v29 = [v55 bundleIdentifier];

        if (v29)
        {
          [v19 setObject:v29 forKeyedSubscript:*MEMORY[0x1E6989010]];
        }

        v56 = [*(v21 + 3480) numberWithBool:_UIApplicationIsExtension()];
        [v19 setObject:v56 forKeyedSubscript:*MEMORY[0x1E6988FE8]];

LABEL_74:
        goto LABEL_75;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v68[0] = *MEMORY[0x1E6989100];
    v29 = [MEMORY[0x1E696AD98] numberWithInt:v18];
    v69[0] = v29;
    v68[1] = *MEMORY[0x1E69890E0];
    v30 = v3;
    if (!v3)
    {
      v30 = [MEMORY[0x1E695DFB0] null];
    }

    v69[1] = v30;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:2];

    if (!v3)
    {
    }

    goto LABEL_74;
  }

  v19 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v3];
  v28 = [MEMORY[0x1E696AD98] numberWithInt:v18];
  [v19 setObject:v28 forKeyedSubscript:*MEMORY[0x1E6989100]];

LABEL_75:
  if (a1 == 2041)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = [v19 mutableCopy];
      v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:_massageNotificationDataBeforePost_IdToken];
      [v57 setObject:v58 forKeyedSubscript:@"idToken"];

      ++_massageNotificationDataBeforePost_IdToken;
    }
  }

  v20 = v19;
LABEL_79:

  return v20;
}

uint64_t _notificationRequiresElementConversion(int a1)
{
  if (UIAccessibilityElementMovedNotification == a1 || *MEMORY[0x1E69DD930] == a1 || *MEMORY[0x1E69DD8E8] == a1 || UIAccessibilityNativeFocusItemDidChangeWithContextNotification == a1)
  {
    return 1;
  }

  v5 = a1 == 1057;
  if (a1 == 1026)
  {
    v5 = 1;
  }

  return (a1 - 3032) < 2 || v5;
}

id _massageAssociatedElementBeforePost(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    v4 = _axuiElementForNotificationData(v2, v2);
  }

  else
  {
    v4 = *MEMORY[0x1E69DDA98];
  }

  return v4;
}

uint64_t _UIAccessibilityBlockPostingOfNotification(uint64_t a1)
{
  if (_UIAccessibilityBlockPostingOfNotification_onceToken != -1)
  {
    _UIAccessibilityBlockPostingOfNotification_cold_1();
  }

  [_BlockNotificationsLock lock];
  if (!_BlockedNotifications)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v3 = _BlockedNotifications;
    _BlockedNotifications = v2;
  }

  _UIBlockNotificationsForNotification(a1);
  v4 = _BlockNotificationsLock;

  return [v4 unlock];
}

id UIAXTimeStringForDuration(double a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld:%ld:%f", a1 / 3600, a1 % 3600 / 60, a1 - (3600 * (a1 / 3600) + 60 * (a1 % 3600 / 60))];
  v2 = [MEMORY[0x1E6988D60] axAttributedStringWithString:v1];
  [v2 setAttribute:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6988E28]];

  return v2;
}

void _UIBlockNotificationsForNotification(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = UINotificationsToBlockUnblockForNotification(a1);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [_BlockedNotifications addObject:{*(*(&v6 + 1) + 8 * v5++), v6}];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

id UINotificationsToBlockUnblockForNotification(uint64_t a1)
{
  v1 = a1;
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [v3 mutableCopy];

  if (*MEMORY[0x1E69DD930] == v1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:UIAccessibilityScreenWillChangeNotification];
    [v4 addObject:v5];
  }

  return v4;
}

id UIKitAccessibilityLocalizedString(void *a1)
{
  v1 = a1;
  if ([0 length])
  {
    v2 = UIKitAccessibilityLocalizedStringInTable(v1, 0);
    v3 = v2;
    if (!v2 || [v2 isEqual:v1])
    {
      v4 = UIKitAccessibilityLocalizedStringInTable(v1, @"Accessibility");

      v3 = v4;
    }
  }

  else
  {
    v3 = UIKitAccessibilityLocalizedStringInTable(v1, @"Accessibility");
  }

  return v3;
}

id UIKitAccessibilityLocalizedStringInTable(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = UIKitAccessibilityLocalizedStringInTable_axBundle;
  if (UIKitAccessibilityLocalizedStringInTable_axBundle)
  {
    goto LABEL_6;
  }

  if (_CFMZEnabled())
  {
    [MEMORY[0x1E696AAE8] accessibilityMacCalystBundleWithLastPathComponent:@"UIKit.axbundle"];
  }

  else
  {
    [MEMORY[0x1E696AAE8] accessibilityBundleWithLastPathComponent:@"UIKit.axbundle"];
  }
  v6 = ;
  v7 = UIKitAccessibilityLocalizedStringInTable_axBundle;
  UIKitAccessibilityLocalizedStringInTable_axBundle = v6;

  v5 = UIKitAccessibilityLocalizedStringInTable_axBundle;
  if (UIKitAccessibilityLocalizedStringInTable_axBundle)
  {
LABEL_6:
    v8 = [v5 localizedStringForKey:v3 value:&stru_1F1DB9E20 table:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

double UIAccessibilityFrameForBounds(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 _axConvertRect:0 toWindow:{a2, a3, a4, a5}];
    v11 = v10;
  }

  else
  {
    v12 = [v9 window];
    if (v12)
    {
      [v9 convertRect:0 toView:{a2, a3, a4, a5}];
      [v12 _axConvertRect:0 toWindow:?];
      v11 = v13;
    }

    else
    {
      v14 = [v9 _accessibilityProxyViewAncestorWhenMissingWindow];

      [v14 convertRect:0 toView:{a2, a3, a4, a5}];
      v11 = v15;
      v9 = v14;
    }
  }

  return v11;
}

uint64_t _checkSortPriority(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    v30 = v3;
    v31 = v4;
    _AXAssert();
  }

  v35 = 0;
  v6 = [v3 _accessibilitySortPriorityWithReturningElement:{&v35, v30, v31}];
  v7 = v35;
  v8 = [v3 _accessibilitySortPriorityContainer];
  v34 = 0;
  v9 = [v5 _accessibilitySortPriorityWithReturningElement:&v34];
  v10 = v34;
  v11 = [v5 _accessibilitySortPriorityContainer];
  v12 = v11;
  v13 = v11 == 0;
  v14 = v8 == v11 || v8 == 0;
  v15 = UIAccessibilityDefaultSortPriority;
  if (v8 == v11)
  {
    v13 = 1;
  }

  if (v14)
  {
    v16 = v6;
  }

  else
  {
    v16 = UIAccessibilityDefaultSortPriority;
  }

  if (v13)
  {
    v17 = v9;
  }

  else
  {
    v17 = UIAccessibilityDefaultSortPriority;
  }

  if (v7 == v10)
  {
    v17 = UIAccessibilityDefaultSortPriority;
    goto LABEL_20;
  }

  if ([v7 _accessibilityIsDescendantOfElement:v10])
  {
    v15 = UIAccessibilityDefaultSortPriority;
    v17 = UIAccessibilityDefaultSortPriority;
    goto LABEL_21;
  }

  v18 = [v10 _accessibilityIsDescendantOfElement:v7];
  v15 = UIAccessibilityDefaultSortPriority;
  if (v18)
  {
LABEL_20:
    v16 = v15;
    goto LABEL_21;
  }

  if (v16 != UIAccessibilityDefaultSortPriority && v17 != UIAccessibilityDefaultSortPriority)
  {
    v33 = v8;
    v21 = [v7 accessibilityContainer];
    v22 = [v10 accessibilityContainer];
    v23 = [v22 _accessibilitySubviews];

    if (v21)
    {
      while (1)
      {
        v24 = [v21 _accessibilitySortPriority];
        if (v16 <= v24)
        {
          v16 = v24;
        }

        if ([v23 containsObject:v21])
        {
          break;
        }

        v25 = [v21 accessibilityContainer];

        v21 = v25;
        if (!v25)
        {
          goto LABEL_36;
        }
      }

      v26 = v23;
    }

    else
    {
LABEL_36:
      v21 = [v10 accessibilityContainer];
      v32 = [v7 accessibilityContainer];
      v26 = [v32 _accessibilitySubviews];

      if (!v21)
      {
LABEL_41:
        v29 = _accessibilityCommonAncestor(v7, v10);
        v19 = [v29 _accessibilityCompareElement:v7 toElement:v10];

        if (v19)
        {

          v8 = v33;
          goto LABEL_28;
        }

        goto LABEL_45;
      }

      while (1)
      {
        v27 = [v21 _accessibilitySortPriority];
        if (v17 <= v27)
        {
          v17 = v27;
        }

        if ([v26 containsObject:v21])
        {
          break;
        }

        v28 = [v21 accessibilityContainer];

        v21 = v28;
        if (!v28)
        {
          goto LABEL_41;
        }
      }
    }

LABEL_45:
    v8 = v33;

    v15 = UIAccessibilityDefaultSortPriority;
  }

LABEL_21:
  if (v16 != v15 || v17 != v15)
  {
    if (v16 > v17)
    {
      v19 = -1;
      goto LABEL_28;
    }

    if (v17 > v16)
    {
      v19 = 1;
      goto LABEL_28;
    }
  }

  v19 = 0;
LABEL_28:

  return v19;
}

BOOL _AXServerCacheGetPossiblyNilObjectForKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    if (v3 && AXServerCache)
    {
      v5 = [AXServerCache objectForKeyedSubscript:v3];
      v6 = v5 != 0;
      if (v5)
      {
        v7 = [MEMORY[0x1E695DFB0] null];
        if ([v5 isEqual:v7])
        {
          v8 = 0;
        }

        else
        {
          v8 = v5;
        }

        *a2 = v8;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      v6 = 0;
      *a2 = 0;
    }
  }

  else
  {
    v9 = AXLogAppAccessibility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _AXServerCacheGetPossiblyNilObjectForKey_cold_1(v9);
    }

    v6 = 0;
  }

  return v6;
}

void _AXServerCacheInsertPossiblyNilObjectForKey(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (v5 && AXServerCache)
  {
    if (v3)
    {
      [AXServerCache setObject:v3 forKeyedSubscript:v5];
    }

    else
    {
      v4 = [MEMORY[0x1E695DFB0] null];
      [AXServerCache setObject:v4 forKeyedSubscript:v5];
    }
  }
}

id _scrollParentForComparingGeometryOfView(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p-_scrollParentForComparingGeometryOfView", v1];
  v3 = [AXServerCache objectForKeyedSubscript:v2];

  if (v3)
  {
    v4 = [AXServerCache objectForKeyedSubscript:v2];
    goto LABEL_12;
  }

  v5 = [v1 _accessibilityContainingParentForOrdering];
  if ([v1 _accessibilityUsesScrollParentForOrdering])
  {
    v4 = [v1 _accessibilityScrollParent];
    if ([v4 _accessibilityUsesScrollParentForOrdering])
    {
      if (v4)
      {
        if (v5 && [v5 _accessibilityIsDescendantOfElement:v4])
        {
          v6 = v5;

          v4 = v6;
        }

        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v4 = v5;
LABEL_11:
  [AXServerCache setObject:v4 forKeyedSubscript:v2];

LABEL_12:

  return v4;
}

void sub_1A9B88428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _accessibilityCommonAncestor(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 _accessibilityProxyView];
  v5 = [v3 _accessibilityProxyView];

  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = __UIAccessibilityCastAsClass();

  v8 = [MEMORY[0x1E695DF70] array];
  if (v6)
  {
    do
    {
      [v8 addObject:v6];
      v9 = [v6 superview];

      v6 = v9;
    }

    while (v9);
  }

  if (v7)
  {
    do
    {
      if ([v8 containsObject:v7])
      {
        break;
      }

      v10 = [v7 superview];

      v7 = v10;
    }

    while (v10);
  }

  return v7;
}

void _UIAXPostAccessibilityLoadedNotification()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x1E6988FB8], 0, 0, 1u);
  v1 = AXLogLoading();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A9B83000, v1, OS_LOG_TYPE_INFO, "Posted kAXAccessibilityLoaded notification", v2, 2u);
  }
}

void _UIAXInformSystemAppServerIsReady()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69DDA98];
  v1 = [*MEMORY[0x1E69DDA98] _accessibilitySystemAppServerIsReady];
  v2 = AXLogLoading();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
  if (v1)
  {
    if (v3)
    {
      v4 = *v0;
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A9B83000, v2, OS_LOG_TYPE_INFO, "System app server is ready: %@", &v6, 0xCu);
    }

    _UIAXPostAccessibilityLoadedNotification();
  }

  else
  {
    if (v3)
    {
      v5 = *v0;
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1A9B83000, v2, OS_LOG_TYPE_INFO, "System app server is not ready: %@, waiting", &v6, 0xCu);
    }

    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void _UIAXInformPreBoardIsReadyToBeProbed()
{
  if ([*MEMORY[0x1E69DDA98] _accessibilityIsAppReadyToBeProbed])
  {

    _UIAXPostAccessibilityLoadedNotification();
  }

  else
  {

    AXPerformBlockOnMainThreadAfterDelay();
  }
}

uint64_t AXServerCacheSetEnabled(int a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v1 = vars8;
  }

  else
  {
    v2 = 0;
  }

  AXServerCache = v2;

  return MEMORY[0x1EEE66BB8]();
}

void _UIAccessibilityStart()
{
  v14 = *MEMORY[0x1E69E9840];
  if ((_AccessibilityStarted & 1) == 0)
  {
    _AccessibilityStarted = 1;
    v9 = xmmword_1F1DB6A78;
    v10 = *&off_1F1DB6A88;
    v11 = qword_1F1DB6A98;
    v7 = xmmword_1F1DB6A58;
    v8 = *&off_1F1DB6A68;
    IsSystemAppServer = _UIAXAppIsSystemAppServer();
    CFRunLoopGetCurrent();
    if (IsSystemAppServer)
    {
      v1 = _AXUIElementRegisterSystemWideServerWithRunLoop();
    }

    else
    {
      v1 = _AXUIElementRegisterServerWithRunLoop();
    }

    v2 = v1;
    if (v1)
    {
      v3 = AXLogAppAccessibility();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _UIAccessibilityStart_cold_1(v2, v3);
      }
    }

    _AXSetApplicationElementHandler();
    if (_UIAXInitializeConstantValues_onceToken != -1)
    {
      _UIAccessibilityStart_cold_2();
    }

    v4 = [MEMORY[0x1E69887A8] sharedInstance];
    [v4 setIgnoreLogging:_UIAXAutomationIgnoreLogging()];

    v5 = AXLogAppAccessibility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v13 = _UIAXAppIsSystemAppServer();
      _os_log_impl(&dword_1A9B83000, v5, OS_LOG_TYPE_INFO, "Started AXRuntime server. SystemApp=%i", buf, 8u);
    }

    v6 = AXLogAppAccessibility();
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9B83000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UIAccessibilityStart", &unk_1A9BFA3AD, buf, 2u);
    }

    MACaptionAppearanceSetDidDisplayCaptionsCallback();
  }
}

uint64_t _copyAttributeValueCallback(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v23 = a1;
  v24 = a2;
  v6 = AXLogAppAccessibility();
  v7 = os_signpost_id_make_with_pointer(v6, &v23);

  v8 = AXLogAppAccessibility();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 134218496;
    v26 = v23;
    v27 = 2048;
    v28 = v24;
    v29 = 2048;
    v30 = a3;
    _os_signpost_emit_with_name_impl(&dword_1A9B83000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CopyAttribute", "UID:[hash:%llu id:%llu] attr:%ld", buf, 0x20u);
  }

  if (!a4)
  {
    return 4294942095;
  }

  if ((_UIAXAppIsReadyToBeProbed() & 1) == 0 && !_AXSInUnitTestMode())
  {
    return 4294942078;
  }

  v10 = MEMORY[0x1AC58F580](0);
  v11 = _AXElementForAXUIElementUniqueId();
  v12 = v11;
  if (v11 && ![v11 _accessibilityElementShouldBeInvalid])
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v16 = AXServerCache;
    AXServerCache = v15;

    v17 = [v12 _iosAccessibilityAttributeValue:a3];
    v13 = UIAXRuntimeConvertOutgoingParameterizedValue(a3, v17, 0);

    if (v13)
    {
      v18 = CFRetain(v13);
    }

    else
    {
      v18 = 0;
    }

    *a4 = v18;
    v19 = AXServerCache;
    AXServerCache = 0;

    MEMORY[0x1AC58F560](v10);
    v20 = AXLogAppAccessibility();
    v21 = v20;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9B83000, v21, OS_SIGNPOST_INTERVAL_END, v7, "AXCopyAttribute", &unk_1A9BFA3AD, buf, 2u);
    }

    v14 = 0;
  }

  else
  {
    MEMORY[0x1AC58F560](v10);
    v13 = AXLogUIA();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v12;
      _os_log_impl(&dword_1A9B83000, v13, OS_LOG_TYPE_INFO, "Returning invalid element for copy attribute: %@", buf, 0xCu);
    }

    v14 = 4294942094;
  }

  return v14;
}

uint64_t _setAttributeValueCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((_UIAXAppIsReadyToBeProbed() & 1) == 0 && !_AXSInUnitTestMode())
  {
    return 4294942078;
  }

  v4 = MEMORY[0x1AC58F580](0);
  v5 = _AXElementForAXUIElementUniqueId();
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = AXServerCache;
    AXServerCache = v6;

    v8 = AXConvertIncomingValue();
    [v5 _iosAccessibilitySetValue:v8 forAttribute:a3];
    v9 = AXServerCache;
    AXServerCache = 0;

    MEMORY[0x1AC58F560](v4);
    v10 = 0;
  }

  else
  {
    MEMORY[0x1AC58F560](v4);
    v11 = AXLogUIA();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = 0;
      _os_log_impl(&dword_1A9B83000, v11, OS_LOG_TYPE_INFO, "Returning invalid element: for set attribute %@", &v13, 0xCu);
    }

    v10 = 4294942094;
  }

  return v10;
}

uint64_t _performActionCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v20 = a2;
  v4 = AXLogAppAccessibility();
  v5 = os_signpost_id_make_with_pointer(v4, &v19);

  v6 = AXLogAppAccessibility();
  v7 = v6;
  v8 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 134218496;
    v22 = v19;
    v23 = 2048;
    v24 = v20;
    v25 = 2048;
    v26 = a3;
    _os_signpost_emit_with_name_impl(&dword_1A9B83000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PerformAction", "UID:[hash:%llu id:%llu] action:%ld", buf, 0x20u);
  }

  if ((_UIAXAppIsReadyToBeProbed() & 1) == 0 && !_AXSInUnitTestMode())
  {
    return 4294942078;
  }

  v9 = MEMORY[0x1AC58F580](0);
  v10 = _AXElementForAXUIElementUniqueId();
  if (v10)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = AXServerCache;
    AXServerCache = v11;

    if ([v10 _iosAccessibilityPerformAction:a3 withValue:0 fencePort:0])
    {
      v13 = 0;
    }

    else
    {
      v13 = 4294942096;
    }

    v14 = AXServerCache;
    AXServerCache = 0;

    MEMORY[0x1AC58F560](v9);
    v15 = AXLogAppAccessibility();
    v16 = v15;
    if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9B83000, v16, OS_SIGNPOST_INTERVAL_END, v5, "PerformAction", &unk_1A9BFA3AD, buf, 2u);
    }
  }

  else
  {
    MEMORY[0x1AC58F560](v9);
    v17 = AXLogAppAccessibility();
    v16 = v17;
    if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9B83000, v16, OS_SIGNPOST_INTERVAL_END, v5, "PerformAction", &unk_1A9BFA3AD, buf, 2u);
    }

    v13 = 4294942094;
  }

  return v13;
}

uint64_t _performActionWithValueCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v25 = a1;
  v26 = a2;
  v8 = AXLogAppAccessibility();
  v9 = os_signpost_id_make_with_pointer(v8, &v25);

  v10 = AXLogAppAccessibility();
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 134218496;
    v28 = v25;
    v29 = 2048;
    v30 = v26;
    v31 = 2048;
    v32 = a3;
    _os_signpost_emit_with_name_impl(&dword_1A9B83000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PerformActionWithValue", "UID:[hash:%llu id:%llu] action:%ld", buf, 0x20u);
  }

  if ((_UIAXAppIsReadyToBeProbed() & 1) == 0 && !_AXSInUnitTestMode())
  {
    return 4294942078;
  }

  v13 = MEMORY[0x1AC58F580](0);
  v14 = _AXElementForAXUIElementUniqueId();
  if (v14)
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v16 = AXServerCache;
    AXServerCache = v15;

    v17 = AXConvertIncomingValue();
    v18 = [v14 _iosAccessibilityPerformAction:a3 withValue:v17 fencePort:a6];

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = 4294942096;
    }

    v20 = AXServerCache;
    AXServerCache = 0;

    MEMORY[0x1AC58F560](v13);
    v21 = AXLogAppAccessibility();
    v22 = v21;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9B83000, v22, OS_SIGNPOST_INTERVAL_END, v9, "PerformActionWithValue", &unk_1A9BFA3AD, buf, 2u);
    }
  }

  else
  {
    v23 = AXLogAppAccessibility();
    v22 = v23;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9B83000, v22, OS_SIGNPOST_INTERVAL_END, v9, "PerformActionWithValue", &unk_1A9BFA3AD, buf, 2u);
    }

    v19 = 4294942094;
  }

  return v19;
}

uint64_t _copyElementAtPositionCallback(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t *a5, float a6, float a7)
{
  v175 = *MEMORY[0x1E69E9840];
  ptr = a1;
  v163 = a2;
  v10 = AXLogAppAccessibility();
  spid = os_signpost_id_make_with_pointer(v10, &ptr);

  v11 = AXLogAppAccessibility();
  v12 = v11;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 134218752;
    *&buf[4] = ptr;
    *&buf[12] = 2048;
    *&buf[14] = v163;
    *&buf[22] = 2048;
    v173 = a6;
    LOWORD(v174) = 2048;
    *(&v174 + 2) = a7;
    _os_signpost_emit_with_name_impl(&dword_1A9B83000, v12, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CopyElementAtPosition", "UID:[hash:%llu id:%llu] Point:[%.2f %.2f]", buf, 0x2Au);
  }

  if (!_UIAXAppIsReadyToBeProbed())
  {
    return 4294942078;
  }

  v127 = MEMORY[0x1AC58F580](0);
  v13 = [MEMORY[0x1E695DF90] dictionary];
  v14 = AXServerCache;
  AXServerCache = v13;

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v173 = COERCE_DOUBLE(__Block_byref_object_copy_);
  *&v174 = __Block_byref_object_dispose_;
  *(&v174 + 1) = 0;
  cf = 0;
  v15 = UIAccessibilityCreateEventForSceneReferencePoint(&cf, a6, a7);
  v16 = v15;
  if (!v15)
  {
    v22 = 4294942096;
    goto LABEL_133;
  }

  [v15 _setAccessibilityHitTestType:a3];
  GSEventGetLocationInWindow();
  v19 = v17;
  v20 = v18;
  if (a4)
  {
    v21 = 0;
  }

  else
  {
    v21 = [MEMORY[0x1E69DD2E8] _findWithDisplayPoint:{v17, v18}];
  }

  *v155 = 0;
  v156 = v155;
  v157 = 0x3032000000;
  v158 = __Block_byref_object_copy_;
  v159 = __Block_byref_object_dispose_;
  v160 = 0;
  v150 = MEMORY[0x1E69E9820];
  v125 = 3221225472;
  v151 = 3221225472;
  v152 = ___copyElementAtPositionCallback_block_invoke;
  v153 = &unk_1E78AA680;
  v154 = v155;
  AXPerformSafeBlock();
  if (a4 && !v21)
  {
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v23 = *(v156 + 5);
    v24 = 0;
    v25 = [v23 countByEnumeratingWithState:&v146 objects:v171 count:16];
    if (v25)
    {
      v26 = *v147;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v147 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v146 + 1) + 8 * i);
          if ([v28 _accessibilityContextId] == a4 && v24 == 0)
          {
            v24 = v28;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v146 objects:v171 count:16];
      }

      while (v25);
    }

    v21 = v24;
  }

  if (!v21 && v163 == 9999)
  {
    v30 = _AXElementForAXUIElementUniqueId();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 accessibilityElements];
      v32 = [v31 firstObject];
      v21 = [v32 _accessibilityWindow];

      v33 = AXLogUIA();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *v164 = 138412546;
        v165 = v30;
        v166 = 2112;
        v167 = v21;
        _os_log_impl(&dword_1A9B83000, v33, OS_LOG_TYPE_INFO, "Incoming remote element hit test -> %@/%@", v164, 0x16u);
      }
    }

    else
    {
      v21 = 0;
    }
  }

  if (_copyElementAtPositionCallback_onceToken != -1)
  {
    _copyElementAtPositionCallback_cold_1();
  }

  if (!v21 || ([v21 accessibilityElementsHidden] & 1) != 0 || (objc_msgSend(v21, "alpha"), v34 <= 0.0) || (objc_msgSend(v21, "isHidden") & 1) != 0 || (objc_msgSend(v21, "isUserInteractionEnabled") & 1) == 0 && !objc_msgSend(v21, "_accessibilityIsUserInteractionEnabled") || (objc_opt_isKindOfClass() & 1) != 0)
  {
    v35 = [MEMORY[0x1E69DD2E8] _findWithDisplayPoint:{v19, v20, v125}];

    if ([v35 accessibilityElementsHidden])
    {
      v36 = AXLogUIA();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *v164 = 138412290;
        v165 = v35;
        v37 = "Window is marked accessibilityHidden: %@";
LABEL_53:
        _os_log_impl(&dword_1A9B83000, v36, OS_LOG_TYPE_INFO, v37, v164, 0xCu);
        goto LABEL_54;
      }

      goto LABEL_54;
    }

    [v35 alpha];
    if (v38 <= 0.0)
    {
      v36 = AXLogUIA();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *v164 = 138412290;
        v165 = v35;
        v37 = "Window has alpha <= 0: %@";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if ([v35 isHidden])
    {
      v36 = AXLogUIA();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *v164 = 138412290;
        v165 = v35;
        v37 = "Window has hidden = true: %@";
        goto LABEL_53;
      }

LABEL_54:

      v21 = 0;
      goto LABEL_55;
    }

    v21 = v35;
  }

LABEL_55:
  v39 = AXLogUIA();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *v164 = 138412290;
    v165 = v21;
    _os_log_impl(&dword_1A9B83000, v39, OS_LOG_TYPE_INFO, "Hit testing with window: %@", v164, 0xCu);
  }

  v40 = AXConvertFromDisplayPointToWindowPoint(v21, v19, v20);
  v129 = v41;
  v130 = v40;
  GSEventRecord = _GSEventGetGSEventRecord();
  *(GSEventRecord + 8) = v19;
  *(GSEventRecord + 16) = v20;
  *(GSEventRecord + 24) = *(GSEventRecord + 8);
  v43 = [v21 screen];
  if ([v16 _gsEvent])
  {
    v44 = _GSEventGetGSEventRecord();
    *(v44 + 8) = v19;
    *(v44 + 16) = v20;
  }

  v45 = [MEMORY[0x1E69DC668] sharedApplication];
  v46 = [v45 _isClassic];

  if (v46)
  {
    *(GSEventRecord + 8) = v130;
    *(GSEventRecord + 16) = v129;
    *(GSEventRecord + 24) = v130;
    *(GSEventRecord + 32) = v129;
  }

  v47 = [v21 windowScene];
  v48 = [v47 statusBarManager];
  [v48 statusBarFrame];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  if (NSClassFromString(&cfstr_Sbwindowscenes.isa))
  {
    v57 = [v21 windowScene];
    v58 = [v57 statusBarManager];
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & (v56 == 0.0)) != 0)
    {
      v60 = [v21 windowScene];
      v61 = [v60 statusBarManager];
      v62 = [v61 safeUIViewForKey:@"statusBar"];
      [v62 frame];
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;

      v179.origin.x = v64;
      v179.origin.y = v66;
      v179.size.width = v68;
      v179.size.height = v70;
      if (!CGRectIsNull(v179))
      {
        v56 = v70;
        v54 = v68;
        v52 = v66;
        v50 = v64;
      }
    }
  }

  if ([v21 _accessibilityIgnoresStatusBarFrame])
  {
    v71 = 0;
  }

  else
  {
    v72 = [v21 windowScene];
    v73 = [v72 statusBarManager];
    if ([v73 isStatusBarHidden])
    {
      v71 = 0;
    }

    else
    {
      v180.origin.x = v50;
      v180.origin.y = v52;
      v180.size.width = v54;
      v180.size.height = v56;
      v178.y = v129;
      v178.x = v130;
      v71 = CGRectContainsPoint(v180, v178);
    }
  }

  if ((AXProcessIsSpringBoard() & 1) != 0 || AXProcessIsClarityBoard())
  {
    if ([*MEMORY[0x1E69DDA98] _accessibilityShouldHitTestStatusBarWindow] && (objc_msgSend(v21, "_accessibilityIsInWidgetStack") & 1) == 0)
    {
      v93 = [v21 _accessibilityIsInJindo];
      v74 = v21;
      if (!(v93 & 1 | !v71))
      {
        v94 = AXLogHitTest();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          v177.y = v129;
          v177.x = v130;
          v121 = NSStringFromCGPoint(v177);
          v122 = [v74 windowScene];
          v123 = [v122 statusBarManager];
          [v123 statusBarFrame];
          v124 = NSStringFromCGRect(v181);
          *v164 = 138412546;
          v165 = v121;
          v166 = 2112;
          v167 = v124;
          _os_log_debug_impl(&dword_1A9B83000, v94, OS_LOG_TYPE_DEBUG, "Hit test was in the status bar frame, point: %@. Status bar frame: %@", v164, 0x16u);
        }

        v144 = 0u;
        v145 = 0u;
        v143 = 0u;
        v142 = 0u;
        v95 = *(v156 + 5);
        v96 = [v95 countByEnumeratingWithState:&v142 objects:v170 count:16];
        v97 = v74;
        if (v96)
        {
          v98 = *v143;
          v97 = v74;
          do
          {
            for (j = 0; j != v96; ++j)
            {
              if (*v143 != v98)
              {
                objc_enumerationMutation(v95);
              }

              v100 = *(*(&v142 + 1) + 8 * j);
              if ([v100 _isStatusBarWindow])
              {
                v101 = v100;

                v97 = v101;
              }
            }

            v96 = [v95 countByEnumeratingWithState:&v142 objects:v170 count:16];
          }

          while (v96);
        }

        v102 = v97;
        v74 = v102;
      }
    }

    else
    {
      v74 = v21;
    }
  }

  else
  {
    v74 = v21;
    if (v71)
    {
      goto LABEL_113;
    }
  }

  v75 = [v74 _accessibilityHitTest:v16 withEvent:{v130, v129}];
  v76 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v75;

  v77 = AXLogUIA();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
  {
    v78 = UIAXMassageElementDescription(*(*&buf[8] + 40));
    v176.y = v129;
    v176.x = v130;
    v79 = NSStringFromPoint(v176);
    *v164 = 138412802;
    v165 = v78;
    v166 = 2112;
    v167 = v74;
    v168 = 2112;
    v169 = v79;
    _os_log_impl(&dword_1A9B83000, v77, OS_LOG_TYPE_INFO, "Hit testing found: %@ with window: %@ > %@", v164, 0x20u);
  }

  if (a3 == 2 && !*(*&buf[8] + 40))
  {
    v80 = [v74 hitTest:v16 withEvent:{v130, v129}];
    v81 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v80;

    v82 = AXLogUIA();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
    {
      v83 = *(*&buf[8] + 40);
      *v164 = 138412546;
      v165 = v74;
      v166 = 2112;
      v167 = v83;
      _os_log_impl(&dword_1A9B83000, v82, OS_LOG_TYPE_INFO, "Is visible query using real hit test: %@ %@", v164, 0x16u);
    }
  }

  if (v74 != 0 && !v71)
  {
    v84 = *(*&buf[8] + 40);
    if (!v84 || a3 != 2 && v74 == v84)
    {
      if ([v74 accessibilityViewIsModal])
      {
        [v74 windowLevel];
        if (v85 > *MEMORY[0x1E69DE330])
        {
          [v74 windowLevel];
          v87 = v86;
          v88 = [MEMORY[0x1E69DCBB8] activeKeyboard];
          v89 = [v88 window];
          [v89 windowLevel];
          v91 = v87 > v90;

          if (v91)
          {
            v92 = 0;
LABEL_112:
            v140[0] = MEMORY[0x1E69E9820];
            v140[1] = v126;
            v140[2] = ___copyElementAtPositionCallback_block_invoke_2;
            v140[3] = &unk_1E78AA6C8;
            v105 = v74;
            v141 = v105;
            v106 = [v92 axFilterObjectsUsingBlock:v140];

            v133[0] = MEMORY[0x1E69E9820];
            v133[1] = v126;
            v133[2] = ___copyElementAtPositionCallback_block_invoke_3;
            v133[3] = &unk_1E78AA6F0;
            v134 = v105;
            v74 = v134;
            v138 = v130;
            v139 = v129;
            v135 = v74;
            v137 = buf;
            v136 = v16;
            [v106 enumerateObjectsUsingBlock:v133];

            goto LABEL_113;
          }
        }

        v103 = AXUIAllKeyboardWindows();
        if ([v103 containsObject:v74])
        {

          v103 = 0;
        }

        v104 = [0 arrayByAddingObjectsFromArray:v103];
      }

      else
      {
        v103 = [*MEMORY[0x1E69DDA98] _accessibilityAllWindowsOnlyVisibleWindows:1];
        v104 = [v103 sortedArrayUsingComparator:&__block_literal_global_304];
      }

      v92 = v104;

      goto LABEL_112;
    }
  }

LABEL_113:
  v107 = *(*&buf[8] + 40);
  if (a3 == 3)
  {
    v108 = [v107 _accessibilityScrollParent];
LABEL_115:
    v109 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v108;

    goto LABEL_123;
  }

  if (([v107 isAccessibilityElement] & 1) == 0)
  {
    if (*(*&buf[8] + 40))
    {
      v110 = AXRemoteElementFromObject();
      v111 = v110 == 0;

      if (v111)
      {
        v112 = [*(*&buf[8] + 40) _accessibilityIsTouchContainer];
        v113 = a3 == 2 ? 1 : v112;
        if ((v113 & 1) == 0)
        {
          v108 = [*(*&buf[8] + 40) _accessibilityTouchContainer];
          goto LABEL_115;
        }
      }
    }
  }

LABEL_123:
  CFRelease(cf);
  if (!*(*&buf[8] + 40))
  {
    v115 = AXLogUIA();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
    {
      *v164 = 0;
      _os_log_impl(&dword_1A9B83000, v115, OS_LOG_TYPE_INFO, "Returning invalid element for copy element at position", v164, 2u);
    }

    goto LABEL_131;
  }

  v114 = _AXCreateAXUIElementWithElement();
  if (!v114)
  {
    v115 = AXLogUIA();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
    {
      v116 = *(*&buf[8] + 40);
      *v164 = 138412290;
      v165 = v116;
      _os_log_impl(&dword_1A9B83000, v115, OS_LOG_TYPE_INFO, "Returning invalid element in copy element for position: %@", v164, 0xCu);
    }

LABEL_131:

    v22 = 4294942094;
    goto LABEL_132;
  }

  v22 = 0;
  *a5 = v114;
LABEL_132:

  _Block_object_dispose(v155, 8);
LABEL_133:
  v117 = AXLogAppAccessibility();
  v118 = v117;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v117))
  {
    *v155 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9B83000, v118, OS_SIGNPOST_INTERVAL_END, spid, "CopyElementAtPosition", &unk_1A9BFA3AD, v155, 2u);
  }

  v119 = AXServerCache;
  AXServerCache = 0;

  MEMORY[0x1AC58F560](v127);
  _Block_object_dispose(buf, 8);

  return v22;
}

void sub_1A9B8CEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v53 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t _copyParameterizedAttributeValueCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v25 = a1;
  v26 = a2;
  v7 = AXLogAppAccessibility();
  v8 = os_signpost_id_make_with_pointer(v7, &v25);

  v9 = AXLogAppAccessibility();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 134218496;
    v28 = v25;
    v29 = 2048;
    v30 = v26;
    v31 = 2048;
    v32 = a3;
    _os_signpost_emit_with_name_impl(&dword_1A9B83000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CopyParameterizedAttribute", "UID:[hash:%llu id:%llu] attr:%ld", buf, 0x20u);
  }

  if ((_UIAXAppIsReadyToBeProbed() & 1) == 0 && !_AXSInUnitTestMode())
  {
    return 4294942078;
  }

  v11 = MEMORY[0x1AC58F580](0);
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v13 = AXServerCache;
  AXServerCache = v12;

  if (a5)
  {
    v14 = AXConvertIncomingValue();
    if (v14)
    {
      v15 = _AXElementForAXUIElementUniqueId();
      v16 = v15;
      if (v15)
      {
        v17 = [v15 _iosAccessibilityAttributeValue:a3 forParameter:v14];
        v18 = UIAXRuntimeConvertOutgoingParameterizedValue(a3, v17, v14);
        v19 = v18;
        if (v18)
        {
          v18 = CFRetain(v18);
        }

        *a5 = v18;

        v20 = 0;
      }

      else
      {
        *a5 = 0;
        v20 = 4294942094;
      }
    }

    else
    {
      *a5 = 0;
      v20 = 4294942095;
    }
  }

  else
  {
    v20 = 4294942095;
  }

  v21 = AXServerCache;
  AXServerCache = 0;

  MEMORY[0x1AC58F560](v11);
  v22 = AXLogAppAccessibility();
  v23 = v22;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9B83000, v23, OS_SIGNPOST_INTERVAL_END, v8, "CopyParameterizedAttribute", &unk_1A9BFA3AD, buf, 2u);
  }

  return v20;
}

uint64_t _copyMultipleAttributeValuesCallback(void *a1, uint64_t a2, const __CFArray *a3, uint64_t a4, __CFArray **a5)
{
  v46 = *MEMORY[0x1E69E9840];
  ptr = a1;
  v39 = a2;
  v7 = AXLogAppAccessibility();
  v8 = os_signpost_id_make_with_pointer(v7, &ptr);

  v9 = AXLogAppAccessibility();
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = ptr;
    v13 = v39;
    Count = CFArrayGetCount(a3);
    *buf = 134218496;
    v41 = v12;
    v42 = 2048;
    v43 = v13;
    v44 = 2048;
    v45 = Count;
    _os_signpost_emit_with_name_impl(&dword_1A9B83000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CopyMultiAttribute", "UID:[hash:%llu id:%llu] attrCount:%ld", buf, 0x20u);
  }

  if ((_UIAXAppIsReadyToBeProbed() & 1) == 0 && !_AXSInUnitTestMode())
  {
    return 4294942078;
  }

  v15 = MEMORY[0x1AC58F580](0);
  v16 = [MEMORY[0x1E695DF90] dictionary];
  v17 = AXServerCache;
  AXServerCache = v16;

  if (a3)
  {
    v18 = _AXElementForAXUIElementUniqueId();
    v19 = v18;
    if (v18 && ![v18 _accessibilityElementShouldBeInvalid])
    {
      v22 = CFArrayGetCount(a3);
      if (v22)
      {
        v23 = v22;
        v35 = v15;
        v36 = a5;
        v37 = v8;
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v22, MEMORY[0x1E695E9C0]);
        if (v23 >= 1)
        {
          for (i = 0; i != v23; ++i)
          {
            v26 = objc_autoreleasePoolPush();
            v27 = [CFArrayGetValueAtIndex(a3 i)];
            v28 = [v19 _iosAccessibilityAttributeValue:v27];
            v29 = UIAXRuntimeConvertOutgoingParameterizedValue(v27, v28, 0);

            if (v29)
            {
              CFArraySetValueAtIndex(Mutable, i, v29);
            }

            else
            {
              *buf = -25205;
              v30 = AXValueCreate(kAXValueTypeAXError, buf);
              CFArraySetValueAtIndex(Mutable, i, v30);
              CFRelease(v30);
            }

            objc_autoreleasePoolPop(v26);
          }
        }

        v21 = 0;
        v15 = v35;
        *v36 = Mutable;
        v8 = v37;
      }

      else
      {
        v21 = 4294942095;
      }
    }

    else
    {
      v20 = AXLogUIA();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = v19;
        _os_log_impl(&dword_1A9B83000, v20, OS_LOG_TYPE_INFO, "Returning invalid element for copy multiple attribute: %@", buf, 0xCu);
      }

      v21 = 4294942094;
    }
  }

  else
  {
    v21 = 4294942095;
  }

  v31 = AXServerCache;
  AXServerCache = 0;

  MEMORY[0x1AC58F560](v15);
  v32 = AXLogAppAccessibility();
  v33 = v32;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9B83000, v33, OS_SIGNPOST_INTERVAL_END, v8, "CopyMultiAttribute", &unk_1A9BFA3AD, buf, 2u);
  }

  return v21;
}

void _UIAXInitializeConstantValues()
{
  if (_UIAXInitializeConstantValues_onceToken != -1)
  {
    _UIAXInitializeConstantValues_cold_1();
  }
}

void _accessibilityCaptionsDidDisplay(void *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *MEMORY[0x1E6989020];
    v5[0] = a1;
    v1 = MEMORY[0x1E695DF20];
    v2 = a1;
    v3 = [v1 dictionaryWithObjects:v5 forKeys:&v4 count:1];

    UIAccessibilityPostNotification(0x42Cu, v3);
  }
}

void _UIAccessibilityStop()
{
  if (_AccessibilityStarted == 1)
  {
    v8 = v0;
    v9 = v1;
    _AccessibilityStarted = 0;
    v2 = _AXUIElementUnregisterServer();
    if (v2)
    {
      v3 = v2;
      v4 = AXLogAppAccessibility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        _UIAccessibilityStop_cold_1(v3, v4);
      }
    }

    v5 = AXLogAppAccessibility();
    if (os_signpost_enabled(v5))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9B83000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UIAccessibilityStop", &unk_1A9BFA3AD, v7, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 1, *MEMORY[0x1E69E4F80], 0);
  }
}

uint64_t _UIAccessibilitySetDisplayPointForEvent(void *a1, double a2, double a3)
{
  result = [a1 _gsEvent];
  if (result)
  {
    result = _GSEventGetGSEventRecord();
    *(result + 8) = a2;
    *(result + 16) = a3;
  }

  return result;
}

double AXConvertFromDisplayPointToWindowPoint(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 windowScene];
    v8 = [v7 _FBSScene];

    v9 = v8;
    v10 = v6;
    v11 = [v10 windowScene];
    v12 = [v11 _FBSScene];

    if (v12 != v9)
    {
      if (v9)
      {
        v13 = [v9 settings];
        [v13 frame];
        v15 = v14;
        v17 = v16;
        [v13 interfaceOrientation];
        _UIConvertPointFromOrientationToOrientation();
        a2 = v15 + v18;
        a3 = v17 + v19;
      }

      if (v12)
      {
        v20 = [v12 settings];
        [v20 frame];
        [v20 interfaceOrientation];
        _UIConvertPointFromOrientationToOrientation();
        a2 = v21;
        a3 = v22;
      }
    }

    v23 = [v10 layer];
    [v23 convertPoint:0 fromLayer:{a2, a3}];
    a2 = v24;
  }

  return a2;
}

id UIAccessibilityWindowForContextId(int a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __UIAccessibilityWindowForContextId_block_invoke;
  v16 = &unk_1E78AA680;
  v17 = &v18;
  AXPerformSafeBlock();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v19[5];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v24 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 _accessibilityContextId] == a1)
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v24 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  _Block_object_dispose(&v18, 8);

  return v7;
}

void sub_1A9B8E164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __UIAccessibilityWindowForContextId_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [*MEMORY[0x1E69DDA98] _accessibilityAllWindowsOnlyVisibleWindows:1];

  return MEMORY[0x1EEE66BB8]();
}

id AXConvertOutgoingParameterizedValueByFindingLeafDescendant(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 1;
  if (a1 > 3071)
  {
    if (a1 <= 92599)
    {
      if (a1 == 3072)
      {
        goto LABEL_18;
      }

      v6 = 26975;
    }

    else
    {
      if (a1 == 92600 || a1 == 95234)
      {
        goto LABEL_18;
      }

      v6 = 29714;
    }

    if (a1 != (v6 | 0x10000))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (a1 > 2999)
  {
    if ((a1 - 3000) > 0x32)
    {
      goto LABEL_19;
    }

    if (((1 << (a1 + 72)) & 0x4000000810203) == 0)
    {
      if (a1 != 3006)
      {
        goto LABEL_19;
      }

      v5 = 10;
    }

    goto LABEL_18;
  }

  if (a1 == 2013 || a1 == 2026 || a1 == 2231)
  {
LABEL_18:
    v7 = _accessibleElementFromElement(v3, v5);

    v4 = v7;
  }

LABEL_19:

  return v4;
}

uint64_t AXContextIdForPoint(uint64_t a1, double a2, double a3)
{
  v15[2] = *MEMORY[0x1E69E9840];
  *valuePtr = a2;
  *&valuePtr[1] = a3;
  cf = 0;
  v4 = AXValueCreate(kAXValueTypeCGPoint, valuePtr);
  SystemWide = AXUIElementCreateSystemWide();
  v15[0] = v4;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v15[1] = v6;
  v7 = AXUIElementCopyParameterizedAttributeValue(SystemWide, 0x16573, [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2], &cf);

  if (SystemWide)
  {
    CFRelease(SystemWide);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v8 = cf;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = cf == 0;
  }

  if (v9)
  {
    v10 = 0;
    if (!cf)
    {
      return v10;
    }

    goto LABEL_16;
  }

  v11 = CFGetTypeID(cf);
  if (v11 == CFNumberGetTypeID())
  {
    v10 = [cf unsignedIntValue];
  }

  else
  {
    v10 = 0;
  }

  v8 = cf;
  if (cf)
  {
LABEL_16:
    CFRelease(v8);
  }

  return v10;
}

id UIAXRuntimeConvertOutgoingParameterizedValue(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (_AXSAutomationLocalizedStringLookupInfoEnabled() || _AXSAutomationPreferredLocalization())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v5 _accessibilityAttributedLocalizedString];
        v8 = v7;
        if (v7)
        {
          v9 = v7;

          v5 = v9;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __UIAXRuntimeConvertOutgoingParameterizedValue_block_invoke;
      v13[3] = &unk_1E78AA718;
      v14 = v5;
      [v14 enumerateAttributesUsingBlock:v13];
    }

    v10 = AXConvertOutgoingParameterizedValueByFindingLeafDescendant(a1, v5);
    v11 = AXConvertOutgoingValue();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t ___copyElementAtPositionCallback_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [*MEMORY[0x1E69DDA98] _accessibilityAllWindowsOnlyVisibleWindows:1];

  return MEMORY[0x1EEE66BB8]();
}

Class ___copyElementAtPositionCallback_block_invoke_287()
{
  result = NSClassFromString(&cfstr_Uibackgroundhi.isa);
  _copyElementAtPositionCallback_backgroundHitTestWindowClass = result;
  return result;
}

uint64_t ___copyElementAtPositionCallback_block_invoke_301(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 windowLevel];
  v6 = v5;
  [v4 windowLevel];
  v8 = v7;

  v9 = -1;
  if (v6 >= v8)
  {
    v9 = 1;
  }

  if (v6 == v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

BOOL ___copyElementAtPositionCallback_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else if (*(a1 + 32))
  {
    v5 = [v3 windowScene];
    v6 = [*(a1 + 32) windowScene];
    v4 = v5 == v6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void ___copyElementAtPositionCallback_block_invoke_3(double *a1, void *a2, uint64_t a3, char *a4)
{
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = a1[8];
  v9 = a1[9];
  v10 = a2;
  [v7 convertPoint:v6 toView:{v8, v9}];
  [v6 convertPoint:v10 toWindow:?];
  v11 = [v10 _accessibilityHitTest:*(a1 + 6) withEvent:?];
  v12 = *(*(a1 + 7) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(*(*(a1 + 7) + 8) + 40);
  if (v14)
  {
    v15 = v14 == v10;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  *a4 = v16;
}

id _accessibleElementFromElement(void *a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_28;
  }

  v5 = CFGetTypeID(v3);
  if (v5 == AXUIElementGetTypeID())
  {
    v6 = v4;
    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = _accessibleElementFromElement(*(*(&v26 + 1) + 8 * i), a2);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 addObjectsFromArray:v12];
          }

          else if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_28:
    v6 = 0;
    goto LABEL_35;
  }

  v7 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  v13 = [v4 _accessibilityLeafDescendantsWithCount:a2 options:v7];
  if (v13)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = _AXCreateAXUIElementWithElement();
          [v6 axSafelyAddObject:{v19, v22}];
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }

    if ([v6 count] == 1)
    {
      v20 = [v6 firstObject];
LABEL_32:

      v6 = v20;
      goto LABEL_33;
    }

    if (![v6 count])
    {
      v20 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_33:

LABEL_34:
LABEL_35:

  return v6;
}

void __UIAXRuntimeConvertOutgoingParameterizedValue_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v7 = [v11 objectForKey:@"UIAccessibilityTextAttributeContext"];

  v8 = v11;
  if (v7)
  {
    v9 = [v11 objectForKey:*MEMORY[0x1E69DD968]];
    v10 = AXSSTextualContextFromUITextualContext(v9);

    if (v10)
    {
      [*(a1 + 32) setAttribute:v10 forKey:*MEMORY[0x1E6988D58] withRange:{a3, a4}];
    }

    v8 = v11;
  }
}

void AXApplyAttributedLocalizedStringToCopy(void *a1, void *a2)
{
  v6 = a2;
  v3 = [a1 _accessibilityAttributedLocalizedString];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 copyWithZone:0];
    [v6 _setAccessibilityAttributedLocalizedString:v5];
  }
}

id _UIAXCCFindAncestorContentModuleContainerViewController(void *a1)
{
  v1 = a1;
  v2 = NSClassFromString(&cfstr_Ccuicontentmod.isa);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___UIAXCCFindAncestorContentModuleContainerViewController_block_invoke;
  v6[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v6[4] = v2;
  v3 = [v1 _accessibilityFindAncestor:v6 startWithSelf:1];

  v4 = [v3 _accessibilityViewController];

  return v4;
}

uint64_t UIAccessibilityControlCenterElementShouldIncludeOpenModuleAction(void *a1, char a2)
{
  v3 = a1;
  if (a2)
  {
    goto LABEL_11;
  }

  v4 = NSProtocolFromString(&cfstr_Ccuicontentmod_0.isa);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __UIAccessibilityControlCenterElementShouldIncludeOpenModuleAction_block_invoke;
  v16[3] = &unk_1E78AA760;
  v5 = v4;
  v17 = v5;
  v6 = [v3 _accessibilityFindAncestor:v16 startWithSelf:1];
  v7 = [v6 _accessibilityViewController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [v6 _accessibilityViewController];
    v10 = [v9 safeBoolForKey:@"_accessibilityControlCenterShouldExpandContentModule"];

    v11 = 0;
    goto LABEL_10;
  }

  if (v6)
  {
    v12 = [v6 _accessibilityViewController];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v6 _accessibilityViewController];
      v14 = [v13 safeBoolForKey:@"shouldBeginTransitionToExpandedContentModule"];

      if (!v14)
      {
        v11 = 0;
        v10 = 0;
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v10 = 0;
  v11 = 1;
LABEL_10:

  if (v11)
  {
LABEL_11:
    v10 = UIAccessibilityControlCenterModuleIsExpanded(v3) ^ 1;
  }

  return v10;
}

uint64_t __UIAccessibilityControlCenterElementShouldIncludeOpenModuleAction_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  v4 = [v3 conformsToProtocol:*(a1 + 32)];

  return v4;
}

uint64_t UIAccessibilityControlCenterModuleIsExpanded(void *a1)
{
  v1 = _UIAXCCFindAncestorContentModuleContainerViewController(a1);
  v2 = [v1 safeBoolForKey:@"isExpanded"];

  return v2;
}

id UIAccessibilityControlCenterOpenModuleCustomAction(void *a1)
{
  v1 = a1;
  objc_initWeak(&location, v1);
  v2 = objc_alloc(MEMORY[0x1E69DC5E8]);
  v3 = UIKitAccessibilityLocalizedString(@"controlcenter.open.module.custom.action");
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __UIAccessibilityControlCenterOpenModuleCustomAction_block_invoke;
  v6[3] = &unk_1E78AA7B0;
  objc_copyWeak(&v7, &location);
  v4 = [v2 initWithName:v3 actionHandler:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

void sub_1A9B9041C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __UIAccessibilityControlCenterOpenModuleCustomAction_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = _UIAXCCFindAncestorContentModuleContainerViewController(WeakRetained);

  v8 = v5;
  AXPerformSafeBlock();
  v6 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_1A9B9052C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __UIAccessibilityControlCenterOpenModuleCustomAction_block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) expandModule];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

id UIAccessibilityControlCenterCloseModuleCustomAction(void *a1)
{
  v1 = a1;
  objc_initWeak(&location, v1);
  v2 = objc_alloc(MEMORY[0x1E69DC5E8]);
  v3 = UIKitAccessibilityLocalizedString(@"controlcenter.close.module.custom.action");
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __UIAccessibilityControlCenterCloseModuleCustomAction_block_invoke;
  v6[3] = &unk_1E78AA7B0;
  objc_copyWeak(&v7, &location);
  v4 = [v2 initWithName:v3 actionHandler:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

void sub_1A9B90670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __UIAccessibilityControlCenterCloseModuleCustomAction_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = _UIAXCCFindAncestorContentModuleContainerViewController(WeakRetained);

  v8 = v5;
  AXPerformSafeBlock();
  v6 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_1A9B90780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __UIAccessibilityControlCenterCloseModuleCustomAction_block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) dismissExpandedModuleAnimated:1];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void UIAccessibilityControlCenterAttachOpenCloseCustomActionsIfNeeded(void *a1, void *a2, char a3)
{
  v10 = a1;
  v5 = a2;
  ShouldIncludeOpenModuleAction = UIAccessibilityControlCenterElementShouldIncludeOpenModuleAction(v10, a3);
  IsExpanded = UIAccessibilityControlCenterModuleIsExpanded(v10);
  if (ShouldIncludeOpenModuleAction)
  {
    v8 = [v10 _accessibilityValueForKey:@"openModuleAction"];
    if (!v8)
    {
      v8 = UIAccessibilityControlCenterOpenModuleCustomAction(v10);
      [v10 _accessibilitySetRetainedValue:v8 forKey:@"openModuleAction"];
    }

    if (([v5 containsObject:v8] & 1) == 0)
    {
      [v5 axSafelyAddObject:v8];
    }
  }

  if (IsExpanded)
  {
    v9 = [v10 _accessibilityValueForKey:@"closeModuleAction"];
    if (!v9)
    {
      v9 = UIAccessibilityControlCenterCloseModuleCustomAction(v10);
      [v10 _accessibilitySetRetainedValue:v9 forKey:@"closeModuleAction"];
    }

    if (([v5 containsObject:v9] & 1) == 0)
    {
      [v5 axSafelyAddObject:v9];
    }
  }
}

void sub_1A9B910E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIAccessibilityCustomActionLaunchAppFloatImage()
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/CoreServices/AssistiveTouch.app"];
  v2 = [v0 imageNamed:@"SCATIcon_floatApp_launchFloatFromDock" inBundle:v1];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  return v4;
}

id _UIAccessibilityCustomActionLaunchAppPinLeftImage()
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/CoreServices/AssistiveTouch.app"];
  v2 = [v0 imageNamed:@"SCATIcon_floatApp_launchPinFromDockLeft" inBundle:v1];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  return v4;
}

id _UIAccessibilityCustomActionLaunchAppPinRightImage()
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/CoreServices/AssistiveTouch.app"];
  v2 = [v0 imageNamed:@"SCATIcon_floatApp_launchPinFromDockRight" inBundle:v1];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  return v4;
}

id _UIAccessibilityCustomActionDeleteImage()
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/CoreServices/AssistiveTouch.app"];
  v2 = [v0 imageNamed:@"SCATIcon_action_delete" inBundle:v1];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  return v4;
}

id _UIAccessibilityCustomActionMoreImage()
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/CoreServices/AssistiveTouch.app"];
  v2 = [v0 imageNamed:@"SCATIcon_action_more" inBundle:v1];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  return v4;
}

void sub_1A9B9269C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A9B935DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9B96E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A9B9AB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id axAuditSwizzlePreferredContentSizeCategory1()
{
  if (_axFontSizeToReturn)
  {
    return _axFontSizeToReturn;
  }

  else
  {
    return *MEMORY[0x1E69DDC78];
  }
}

id axAuditSwizzlePreferredContentSizeCategory2()
{
  if (_axFontSizeToReturn)
  {
    return _axFontSizeToReturn;
  }

  else
  {
    return *MEMORY[0x1E69DDC78];
  }
}

void sub_1A9B9DCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_GCGamepadEventImplClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_GCGamepadEventImplClass_softClass;
  v7 = get_GCGamepadEventImplClass_softClass;
  if (!get_GCGamepadEventImplClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_GCGamepadEventImplClass_block_invoke;
    v3[3] = &unk_1E78AA680;
    v3[4] = &v4;
    __get_GCGamepadEventImplClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A9B9E09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getGCExtendedGamepadClass_block_invoke(uint64_t a1)
{
  GameControllerLibrary();
  result = objc_getClass("GCExtendedGamepad");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGCExtendedGamepadClass_block_invoke_cold_1();
  }

  getGCExtendedGamepadClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t GameControllerLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!GameControllerLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __GameControllerLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E78AAB80;
    v4 = 0;
    GameControllerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = GameControllerLibraryCore_frameworkLibrary;
  if (!GameControllerLibraryCore_frameworkLibrary)
  {
    GameControllerLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __GameControllerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  GameControllerLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getGCControllerClass_block_invoke(uint64_t a1)
{
  GameControllerLibrary();
  result = objc_getClass("GCController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGCControllerClass_block_invoke_cold_1();
  }

  getGCControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__get_publishCustomControllerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = GameControllerLibrary();
  result = dlsym(v2, "_publishCustomController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_publishCustomControllerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id UIAXMassageElementDescription(void *a1)
{
  v1 = a1;
  NSClassFromString(&cfstr_Ictk2textview.isa);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), v1];
  }

  else
  {
    v2 = [v1 description];
  }

  v3 = v2;

  return v3;
}

void sub_1A9BA0CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BA0EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BA1084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A9BA1388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BA15E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _switchControlNegatesPerformEscapeAnswer(void *a1)
{
  v1 = a1;
  if (_AXSAssistiveTouchScannerEnabled())
  {
    v2 = 0;
  }

  else
  {
    if (_switchControlNegatesPerformEscapeAnswer_onceToken != -1)
    {
      _switchControlNegatesPerformEscapeAnswer_cold_1();
    }

    v2 = [_switchControlNegatesPerformEscapeAnswer_DisregardClasses containsObject:objc_opt_class()];
  }

  return v2;
}

uint64_t ___switchControlNegatesPerformEscapeAnswer_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = _switchControlNegatesPerformEscapeAnswer_DisregardClasses;
  _switchControlNegatesPerformEscapeAnswer_DisregardClasses = v0;

  [_switchControlNegatesPerformEscapeAnswer_DisregardClasses axSafelyAddObject:NSClassFromString(&cfstr_Uinavigationba.isa)];
  [_switchControlNegatesPerformEscapeAnswer_DisregardClasses axSafelyAddObject:NSClassFromString(&cfstr_Uinavigationbu.isa)];
  v2 = _switchControlNegatesPerformEscapeAnswer_DisregardClasses;
  v3 = NSClassFromString(&cfstr_Uikeyboardlayo.isa);

  return [v2 axSafelyAddObject:v3];
}

void sub_1A9BA192C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A9BA1FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BA2544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BA2B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A9BA38FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BA4A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BA4CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BA5000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BA660C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A9BA73EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BA9F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BAA160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getLGRRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLGRRequestClass_softClass;
  v7 = getLGRRequestClass_softClass;
  if (!getLGRRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLGRRequestClass_block_invoke;
    v3[3] = &unk_1E78AA680;
    v3[4] = &v4;
    __getLGRRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A9BAFD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getLGRRuntimeManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLGRRuntimeManagerClass_softClass;
  v7 = getLGRRuntimeManagerClass_softClass;
  if (!getLGRRuntimeManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLGRRuntimeManagerClass_block_invoke;
    v3[3] = &unk_1E78AA680;
    v3[4] = &v4;
    __getLGRRuntimeManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A9BAFE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTinkerRuntimeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTinkerRuntimeClass_softClass;
  v7 = getTinkerRuntimeClass_softClass;
  if (!getTinkerRuntimeClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTinkerRuntimeClass_block_invoke;
    v3[3] = &unk_1E78AA680;
    v3[4] = &v4;
    __getTinkerRuntimeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A9BAFF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BB022C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _accessibilityPostProcessContextKitData(void *a1)
{
  v1 = a1;
  v2 = AXAccessibilityBundlesDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"ContextKitAccessibilityProcessor.bundle"];

  v4 = [MEMORY[0x1E696AAE8] bundleWithPath:v3];
  v12 = 0;
  v5 = [v4 loadAndReturnError:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = objc_alloc_init([v4 principalClass]);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 performSelector:sel_processContextKitAccessibilityData_ withObject:v1];
    }

    else
    {
      NSLog(&cfstr_NeedsToImpleme.isa, v8);
      v9 = v1;
    }

    v10 = v9;
  }

  else
  {
    NSLog(&cfstr_CouldNotLoad.isa, v3, v6);
    v10 = v1;
  }

  return v10;
}

void sub_1A9BB42E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BB4940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BB4F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BB5068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BB51E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BB5554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BB6C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BB94B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BBA094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BBAD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A9BBAF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BBBA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A9BBD130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BBD4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BBDE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BBF120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UIAccessibilitySetFocusedElement(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  if (!v3)
  {
    _AXAssert();
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    _AXAssert();
  }

  if (v3)
  {
    if (_UIAccessibilitySetFocusedElement_onceToken != -1)
    {
      _UIAccessibilitySetFocusedElement_cold_1();
    }

    v4 = [__UIAccessibilityFocusedElements objectForKeyedSubscript:v3];
    if (v4 != v7)
    {
      if (v4)
      {
        [__UIAccessibilityFocusedElements removeObjectForKey:v3];
      }

      if (v7)
      {
        [__UIAccessibilityFocusedElements setObject:v7 forKeyedSubscript:v3];
      }

      v5 = [MEMORY[0x1E695DF90] dictionary];
      if (v7)
      {
        [v5 setObject:v7 forKey:*MEMORY[0x1E69DD8C8]];
      }

      if (v4)
      {
        [v5 setObject:v4 forKey:*MEMORY[0x1E69DDA40]];
      }

      [v5 setObject:v3 forKey:*MEMORY[0x1E69DD890]];
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 postNotificationName:*MEMORY[0x1E69DD8C0] object:0 userInfo:v5];
    }
  }
}

void _UIAccessibilityClearFocusedElementsStore()
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    _AXAssert();
  }

  v0 = __UIAccessibilityFocusedElements;
  __UIAccessibilityFocusedElements = 0;
}

id _UIAccessibilityFocusedElementForAssistiveTech(uint64_t a1)
{
  if (a1)
  {
    v1 = [__UIAccessibilityFocusedElements objectForKeyedSubscript:?];
  }

  else
  {
    v2 = [__UIAccessibilityFocusedElements allValues];
    v1 = [v2 firstObject];
  }

  return v1;
}

id _beaxTextMarkerRangeForArray(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  if ([v1 count] == 2)
  {
    v3 = [v1 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v1 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v6 = MEMORY[0x1E696ACD0];
        v7 = objc_opt_class();
        v8 = [v1 objectAtIndexedSubscript:0];
        v20 = 0;
        v9 = [v6 unarchivedObjectOfClass:v7 fromData:v8 error:&v20];
        v10 = v20;
        [v2 setStartMarker:v9];

        if (v10)
        {
          v11 = AXLogCommon();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v10;
            _os_log_impl(&dword_1A9B83000, v11, OS_LOG_TYPE_DEFAULT, "Could not deserialize start marker: %@", buf, 0xCu);
          }
        }

        v12 = MEMORY[0x1E696ACD0];
        v13 = objc_opt_class();
        v14 = [v1 objectAtIndexedSubscript:1];
        v19 = v10;
        v15 = [v12 unarchivedObjectOfClass:v13 fromData:v14 error:&v19];
        v16 = v19;

        [v2 setEndMarker:v15];
        if (v16)
        {
          v17 = AXLogCommon();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v16;
            _os_log_impl(&dword_1A9B83000, v17, OS_LOG_TYPE_DEFAULT, "Could not deserialize end marker: %@", buf, 0xCu);
          }
        }
      }
    }

    else
    {
    }
  }

  return v2;
}

id _beaxRangeToArray(void *a1)
{
  v1 = MEMORY[0x1E695DEC8];
  v2 = a1;
  v3 = [v2 startMarker];
  v4 = [v2 endMarker];

  v5 = [v1 arrayWithObjects:{v3, v4, 0}];

  return v5;
}

void sub_1A9BC5324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BC63D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9BC9890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v7 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t LookingGlassRuntimeSupportLibraryCore()
{
  if (!LookingGlassRuntimeSupportLibraryCore_frameworkLibrary)
  {
    LookingGlassRuntimeSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return LookingGlassRuntimeSupportLibraryCore_frameworkLibrary;
}

uint64_t __LookingGlassRuntimeSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  LookingGlassRuntimeSupportLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getLGRRequestClass_block_invoke(uint64_t a1)
{
  LookingGlassRuntimeSupportLibrary();
  result = objc_getClass("LGRRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLGRRequestClass_block_invoke_cold_1();
  }

  getLGRRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void LookingGlassRuntimeSupportLibrary()
{
  v0 = 0;
  if (!LookingGlassRuntimeSupportLibraryCore())
  {
    LookingGlassRuntimeSupportLibrary_cold_1(&v0);
  }
}

Class __getLGRRuntimeManagerClass_block_invoke(uint64_t a1)
{
  LookingGlassRuntimeSupportLibrary();
  result = objc_getClass("LGRRuntimeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLGRRuntimeManagerClass_block_invoke_cold_1();
  }

  getLGRRuntimeManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AXTinkerKitLibraryCore()
{
  if (!AXTinkerKitLibraryCore_frameworkLibrary)
  {
    AXTinkerKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AXTinkerKitLibraryCore_frameworkLibrary;
}

uint64_t __AXTinkerKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AXTinkerKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getTinkerRuntimeClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!AXTinkerKitLibraryCore())
  {
    __getTinkerRuntimeClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("TinkerRuntime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTinkerRuntimeClass_block_invoke_cold_1();
  }

  getTinkerRuntimeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_11()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_13@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 8 * v1);

  return [v2 _accessibilityIsDescendantOfElement:v4];
}

void OUTLINED_FUNCTION_14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{

  return [a26 _accessibilityIsDescendantOfElement:v26];
}

void _UIUnblockNotificationsForNotification(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = UINotificationsToBlockUnblockForNotification(a1);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [_BlockedNotifications removeObject:{*(*(&v6 + 1) + 8 * v5++), v6}];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

uint64_t _UIAccessibilityUnblockPostingOfNotification(uint64_t a1)
{
  [_BlockNotificationsLock lock];
  _UIUnblockNotificationsForNotification(a1);
  v2 = _BlockNotificationsLock;

  return [v2 unlock];
}

void _UIAccessibilityBlockPostingOfAllNotifications()
{
  [_BlockNotificationsLock lock];
  if (!_BlockedNotificationQueue)
  {
    v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v1 = _BlockedNotificationQueue;
    _BlockedNotificationQueue = v0;
  }

  [_BlockNotificationsLock unlock];
  _AXLastBlockTime = CFAbsoluteTimeGetCurrent();
  _AXBlockAllNotifications = 1;
  v2 = AXRuntimeLogNotifications();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A9B83000, v2, OS_LOG_TYPE_INFO, "Blocking all notifications", v3, 2u);
  }
}

id _UIAccessibilityNotificationsBlocked()
{
  [_BlockNotificationsLock lock];
  if ([_BlockedNotificationQueue count])
  {
    v0 = [_BlockedNotificationQueue copy];
  }

  else
  {
    v0 = 0;
  }

  [_BlockNotificationsLock unlock];

  return v0;
}

void _UIAccessibilityUnblockPostingOfAllNotifications()
{
  [_BlockNotificationsLock lock];
  v0 = _BlockedNotifications;
  _BlockedNotifications = 0;

  [_BlockedNotificationQueue removeAllObjects];
  [_BlockNotificationsLock unlock];
  _AXBlockAllNotifications = 0;
  v1 = AXRuntimeLogNotifications();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A9B83000, v1, OS_LOG_TYPE_INFO, "Unblocking all notifications", v2, 2u);
  }
}

void _UIAccessibilityPostPlaybackControlsVisibilityChangedNotification(uint64_t a1, void *a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    v6[0] = v4;
    v6[1] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
    UIAccessibilityPostNotification(0x437u, v5);
  }
}

id _axuiElementForNotificationData(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    v5 = v3;
    if (v4 == AXUIElementGetTypeID())
    {
      goto LABEL_36;
    }

    v6 = v3;
    do
    {
      if ([v6 isAccessibilityElement])
      {
        break;
      }

      NSClassFromString(&cfstr_Uitableviewcel.isa);
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if ([v6 _accessibilityHasOrderedChildren] && objc_msgSend(v6, "accessibilityElementCount") >= 1)
      {
        v7 = [v6 accessibilityElementAtIndex:0];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isViewLoaded])
        {
          v8 = [v6 view];

          v6 = v8;
        }

        v7 = [v6 _accessibilityFindDescendant:&__block_literal_global_294];
      }

      v9 = v7;

      v6 = v9;
    }

    while (v9);
  }

  else
  {
    v6 = 0;
  }

  NSClassFromString(&cfstr_Uimenuitem.isa);
  if (objc_opt_isKindOfClass())
  {
    v10 = v3;
    v11 = v6;
    v12 = [NSClassFromString(&cfstr_Uicalloutbar.isa) safeValueForKey:@"activeCalloutBar"];
    v13 = [v12 safeValueForKey:@"m_currentSystemButtons"];
    v14 = [v12 safeValueForKey:@"m_extraButtons"];
    if (v14)
    {
      v15 = [v13 arrayByAddingObjectsFromArray:v14];

      v13 = v15;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    v6 = v11;
    if (v17)
    {
      v18 = v17;
      v28 = v14;
      v29 = v12;
      v30 = v11;
      v31 = v3;
      v19 = *v33;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v32 + 1) + 8 * i);
          v22 = [v21 accessibilityLabel];
          v23 = [v10 safeValueForKey:@"title"];
          v24 = [v22 isEqualToString:v23];

          if (v24)
          {
            v6 = v21;
            v11 = v30;

            goto LABEL_29;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v11 = v30;
      v6 = v30;
LABEL_29:
      v3 = v31;
      v14 = v28;
      v12 = v29;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [v3 safeValueForKey:@"_view"];

    v6 = v25;
  }

  if (!v6)
  {
    v6 = v3;
  }

  v5 = _AXCreateAXUIElementWithElement();

LABEL_36:
  v26 = v5;

  return v26;
}

uint64_t ___axuiElementForNotificationData_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isAccessibilityElement])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 _accessibilityViewIsVisible];
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _preprocessNotificationDataForMoveToElementNotification(void *a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (MEMORY[0x1AC58EF10]())
  {
    v2 = *MEMORY[0x1E6989228];
  }

  else
  {
    v2 = getpid();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 mutableCopy];
    v4 = [v3 objectForKeyedSubscript:UIAccessibilityMoveToElementNotificationKeyElement];
    if (v4)
    {
      v5 = CFGetTypeID(v1);
      TypeID = AXUIElementGetTypeID();
      if (v5 != TypeID)
      {
        v7 = _axuiElementForNotificationData(TypeID, v4);
        [v3 setObject:v7 forKeyedSubscript:UIAccessibilityMoveToElementNotificationKeyElement];
      }
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInt:v2];
    [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6989100]];
  }

  else if (v1)
  {
    v9 = CFGetTypeID(v1);
    v10 = AXUIElementGetTypeID();
    if (v9 == v10)
    {
      v15[0] = *MEMORY[0x1E6989100];
      v11 = [MEMORY[0x1E696AD98] numberWithInt:v2];
      v15[1] = UIAccessibilityMoveToElementNotificationKeyElement;
      v16[0] = v11;
      v16[1] = v1;
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    }

    else
    {
      v12 = _axuiElementForNotificationData(v10, v1);
      v17[0] = *MEMORY[0x1E6989100];
      v11 = [MEMORY[0x1E696AD98] numberWithInt:v2];
      v17[1] = UIAccessibilityMoveToElementNotificationKeyElement;
      v18[0] = v11;
      v13 = v12;
      if (!v12)
      {
        v13 = [MEMORY[0x1E695DFB0] null];
      }

      v18[1] = v13;
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

      if (!v12)
      {
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void AXAddNotificationCallback(void *a1, void *a2)
{
  aBlock = a1;
  v3 = a2;
  if (!NotificationCallbacks)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = NotificationCallbacks;
    NotificationCallbacks = v4;
  }

  v6 = _Block_copy(aBlock);
  [NotificationCallbacks setObject:v6 forKeyedSubscript:v3];
}

uint64_t AXRemoveNotificationCallback(uint64_t a1)
{
  result = NotificationCallbacks;
  if (NotificationCallbacks)
  {
    return [NotificationCallbacks setObject:0 forKeyedSubscript:a1];
  }

  return result;
}

void _UIAccessibilitySetAssociatedElementContextForNextNotification(void *a1)
{
  v2 = a1;
  if (!AXProcessIsMobileMail() || ![*MEMORY[0x1E69DDA98] isSuspended] || (NSClassFromString(&cfstr_Mfwindow.isa), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_storeStrong(&_UIAXAssociatedElementContextForNextNotification, a1);
  }
}

uint64_t __GameControllerLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  GameControllerLibraryCore_frameworkLibrary_0 = result;
  return result;
}

id UIAXCurrentLanguage()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 pathForResource:@"GlobalPreferences" ofType:@"plist"];

  v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v1];
  v3 = [v2 objectForKey:@"AppleLanguages"];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _UIAXSetLastKeyboardUsed(void *a1)
{
  _LastKeyboardUsed = [a1 copy];

  return MEMORY[0x1EEE66BB8]();
}

void *accessibilityUIKitSymbolNamesLocalizedString(void *a1)
{
  v1 = a1;
  v2 = AXSSAccessibilityDescriptionForSymbolName();
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;

  return v3;
}

id accessibilityUIKitLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityUIKitLocalizedString_axBundle;
  if (accessibilityUIKitLocalizedString_axBundle)
  {
    goto LABEL_6;
  }

  if (_CFMZEnabled())
  {
    [MEMORY[0x1E696AAE8] accessibilityMacCalystBundleWithLastPathComponent:@"UIKit.axbundle"];
  }

  else
  {
    [MEMORY[0x1E696AAE8] accessibilityBundleWithLastPathComponent:@"UIKit.axbundle"];
  }
  v3 = ;
  v4 = accessibilityUIKitLocalizedString_axBundle;
  accessibilityUIKitLocalizedString_axBundle = v3;

  v2 = accessibilityUIKitLocalizedString_axBundle;
  if (accessibilityUIKitLocalizedString_axBundle)
  {
LABEL_6:
    v5 = [v2 localizedStringForKey:v1 value:&stru_1F1DB9E20 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void UIAccessibilitySpeakOrQueueIfNeeded(uint64_t a1)
{
  if (a1)
  {
    argument = [MEMORY[0x1E6988D60] axAttributedStringWithString:a1];
    [argument setAttribute:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6988F20]];
    UIAccessibilityPostNotification(*MEMORY[0x1E69DD888], argument);
  }
}

void UIAccessibilitySpeakIfNotSpeaking(uint64_t a1)
{
  if (a1)
  {
    argument = [MEMORY[0x1E6988D60] axAttributedStringWithString:a1];
    [argument setAttribute:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6988FB0]];
    UIAccessibilityPostNotification(*MEMORY[0x1E69DD888], argument);
  }
}

void UIAccessibilitySpeakAndDoNotBeInterrupted(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E6988D60];
    v2 = a1;
    argument = [[v1 alloc] initWithStringOrAttributedString:v2];

    [argument setAttribute:&unk_1F1DC2740 forKey:*MEMORY[0x1E6988DC8]];
    UIAccessibilityPostNotification(*MEMORY[0x1E69DD888], argument);
  }
}

BOOL UIAccessibilityColorEqualToColor(void *a1, void *a2)
{
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v3 = a2;
  [a1 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  [v3 getRed:&v8 green:&v7 blue:&v6 alpha:&v5];

  return vabdd_f64(v12, v8) < 2.22044605e-16 && vabdd_f64(v11, v7) < 2.22044605e-16 && vabdd_f64(v10, v6) < 2.22044605e-16 && vabdd_f64(v9, v5) < 2.22044605e-16;
}

id UIAccessibilitySafeTextForCoreTextObject(void *a1)
{
  if (a1)
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x2020000000;
    v6 = 0;
    AXPerformSafeBlock();
    v1 = v4[3];
    _Block_object_dispose(&v3, 8);
    if (v1 == CTFrameGetTypeID())
    {
      a1 = CTFrameCopyVisibleString();
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_1A9BCF6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeID __UIAccessibilitySafeTextForCoreTextObject_block_invoke(uint64_t a1)
{
  result = CFGetTypeID(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void UIAccessibilityRelateElements(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  if (v8 && v3)
  {
    v4 = [v8 _accessibilityUserDefinedLinkedUIElements];
    v5 = AXGuaranteedMutableArray();

    v6 = [v3 _accessibilityUserDefinedLinkedUIElements];
    v7 = AXGuaranteedMutableArray();

    if (([v5 containsObject:v3] & 1) == 0)
    {
      [v5 addObject:v3];
      [v8 _setAccessibilityLinkedUIElements:v5];
    }

    if (([v7 containsObject:v8] & 1) == 0)
    {
      [v7 addObject:v8];
      [v3 _setAccessibilityLinkedUIElements:v7];
    }
  }
}

void UIAccessibilityUnrelateElements(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  if (v8 && v3)
  {
    v4 = [v8 _accessibilityUserDefinedLinkedUIElements];
    v5 = AXGuaranteedMutableArray();

    v6 = [v3 _accessibilityUserDefinedLinkedUIElements];
    v7 = AXGuaranteedMutableArray();

    if ([v5 containsObject:v3])
    {
      [v5 removeObject:v3];
      [v8 _setAccessibilityLinkedUIElements:v5];
    }

    if ([v7 containsObject:v8])
    {
      [v7 removeObject:v8];
      [v3 _setAccessibilityLinkedUIElements:v7];
    }
  }
}

void UIAccessibilityUnrelateAllElements(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 _accessibilityUserDefinedLinkedUIElements];
    v4 = AXGuaranteedMutableArray();

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 _accessibilityUserDefinedLinkedUIElements];
          v12 = AXGuaranteedMutableArray();

          if ([v12 containsObject:v2])
          {
            [v12 removeObject:v2];
            [v10 _setAccessibilityLinkedUIElements:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [v2 _setAccessibilityLinkedUIElements:MEMORY[0x1E695E0F0]];
  }
}

BOOL _AXStrictIsKindOfClass(void *a1, objc_class *a2)
{
  Class = object_getClass(a1);
  for (i = Class != 0; Class != a2 && Class; i = Class != 0)
  {
    Class = class_getSuperclass(Class);
  }

  return i;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void UIAccessibilityStartCapturingStringDrawingText()
{
  AXCaptureStringDrawingText = 1;
  v0 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v1 = AXCapturedString;
  AXCapturedString = v0;

  if (UIAccessibilityStartCapturingStringDrawingText_onceToken != -1)
  {
    UIAccessibilityStartCapturingStringDrawingText_cold_1();
  }
}

void __UIAccessibilityStartCapturingStringDrawingText_block_invoke()
{
  v0 = [MEMORY[0x1E6988808] sharedInstance];
  [v0 performValidations:&__block_literal_global_339 withPreValidationHandler:&__block_literal_global_350 postValidationHandler:&__block_literal_global_356 safeCategoryInstallationHandler:&__block_literal_global_359];
}

uint64_t __UIAccessibilityStartCapturingStringDrawingText_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"NSString" hasInstanceMethod:@"drawAtPoint: withAttributes:" withFullSignature:{"v", "{CGPoint=dd}", "@", 0}];
  [v2 validateClass:@"NSAttributedString" hasInstanceMethod:@"drawAtPoint:" withFullSignature:{"v", "{CGPoint=dd}", 0}];

  return 1;
}

uint64_t __UIAccessibilityStartCapturingStringDrawingText_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"NSString AX Extras"];
  [v2 setOverrideProcessName:@"NSString AX Extras"];

  return 1;
}

void __UIAccessibilityStartCapturingStringDrawingText_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"NSString__UIKitStringObserver__Foundation" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NSAttributedString__UIKitStringObserver__Foundation" canInteractWithTargetClass:1];
}

id UIAccessibilityStopCapturingStringDrawingText()
{
  AXCaptureStringDrawingText = 0;
  v0 = [AXCapturedString copy];
  v1 = AXCapturedString;
  AXCapturedString = 0;

  return v0;
}

uint64_t UIAXKeyboardIsOnScreen()
{
  v0 = [AXServerCache objectForKeyedSubscript:@"UIAXKeyboardIsOnScreen"];

  if (v0)
  {
    v1 = [AXServerCache objectForKeyedSubscript:@"UIAXKeyboardIsOnScreen"];
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = AXUIKeyboardIsOnScreen();
    v1 = [MEMORY[0x1E696AD98] numberWithBool:v2];
    [AXServerCache setObject:v1 forKeyedSubscript:@"UIAXKeyboardIsOnScreen"];
  }

  return v2;
}

BOOL _UIAXObjectIsBehindKeyboardWithIntersectionType(void *a1, int a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (AXUIKeyboardIsOnScreen())
  {
    v4 = AXUIKeyboardWindow();
    v5 = [v3 _accessibilityWindow];
    v6 = [v5 screen];

    if ([v3 _accessibilityIsDescendantOfElement:v4] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69DCBB8], "activeKeyboardForScreen:", v6), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v3, "_accessibilityIsDescendantOfElement:", v7), v7, (v8) || (objc_msgSend(v3, "_accessibilityParentView"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "window"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "windowLevel"), v12 = v11, objc_msgSend(v4, "windowLevel"), v14 = v13, v10, v9, v12 > v14))
    {
      v15 = 0;
    }

    else
    {
      v17 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
      v18 = [v17 firstResponder];
      v19 = [v18 inputAccessoryView];

      v20 = [MEMORY[0x1E69DCD68] sharedInstance];
      v21 = [v20 safeValueForKey:@"containerRootController"];
      v22 = [v21 safeValueForKey:@"_inputAccessoryView"];

      if (v19)
      {
        v23 = v19 == v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      if (v23 && ([v3 _accessibilityIsDescendantOfElement:v19] & 1) != 0)
      {
        v15 = 0;
      }

      else
      {
        AXUIKeyboardScreenFrame();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        [v3 accessibilityFrame];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v41 = v26;
        v42 = v28;
        v43 = v30;
        v44 = v32;
        v45 = v34;
        v46 = v36;
        v47 = v38;
        v48 = v40;
        if (a2)
        {
          AXMIntersectionOverUnion();
          v15 = v49 > 0.75;
        }

        else
        {
          v15 = CGRectIntersectsRect(*&v41, *&v45);
        }

        if (v24 & v15)
        {
          if ([v19 _accessibilityIsKeyboardPassthroughInputAccessoryView])
          {
            [v19 accessibilityFrame];
            v57.origin.x = v34;
            v57.origin.y = v36;
            v57.size.width = v38;
            v57.size.height = v40;
            v15 = !CGRectIntersectsRect(v56, v57);
          }

          else
          {
            v15 = 1;
          }
        }

        v50 = AXLogUIA();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = UIAXMassageElementDescription(v3);
          v52[0] = 67109378;
          v52[1] = v15;
          v53 = 2112;
          v54 = v51;
          _os_log_impl(&dword_1A9B83000, v50, OS_LOG_TYPE_INFO, "Object is behind keyboard? %d - %@", v52, 0x12u);
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

const void *UIAccessibilityCreateEventForSceneReferencePoint(void *a1, double a2, double a3)
{
  if (!UIAccessibilityCreateEventForSceneReferencePoint_TouchEventClass)
  {
    UIAccessibilityCreateEventForSceneReferencePoint_TouchEventClass = NSClassFromString(&cfstr_Uitouchesevent_0.isa);
  }

  result = GSEventCreateWithEventRecord();
  if (result)
  {
    v7 = result;
    if (a1)
    {
      *a1 = result;
    }

    else
    {
      CFRelease(result);
      v7 = 0;
    }

    return [objc_allocWithZone(UIAccessibilityCreateEventForSceneReferencePoint_TouchEventClass) _initWithEvent:v7 touches:{0, 1, *&a2, *&a3, *&a2, *&a3, 0, 0, 0, 0, 0, 0}];
  }

  return result;
}

double UIAXMidPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

id _UIAccessibilityLocalizedKeyboardName(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 displayName];
  v6 = [v4 primaryLanguage];

  if (![v5 length])
  {
    v7 = [MEMORY[0x1E6989878] nonlocalizedNameForLanguage:v6];

    v5 = v7;
  }

  if ([v5 length])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:v3, v5];
    v9 = [MEMORY[0x1E6988D60] axAttributedStringWithString:v8];
    v10 = [v9 rangeOfString:v5];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v10;
      v13 = v11;
      if (([v6 isEqualToString:@"emoji"] & 1) == 0)
      {
        [v9 setAttribute:v6 forKey:*MEMORY[0x1E6988EE0] withRange:{v12, v13}];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id UIAccessibilityLocalizedKeyboardName(void *a1)
{
  v1 = a1;
  v2 = UIKitAccessibilityLocalizedString(@"keyboard.type");
  v3 = _UIAccessibilityLocalizedKeyboardName(v1, v2);

  return v3;
}

id UIAccessibilityLocalizedCurrentKeyboardName()
{
  v0 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v1 = [v0 currentInputMode];

  v2 = UIKitAccessibilityLocalizedString(@"keyboard.type");
  v3 = _UIAccessibilityLocalizedKeyboardName(v1, v2);

  return v3;
}

id UIAccessibilityAvailableLanguages()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = UIAccessibilityAvailableLanguages__AvailableLanguages;
  if (!UIAccessibilityAvailableLanguages__AvailableLanguages)
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    v2 = UIAccessibilityAvailableLanguages__AvailableLanguages;
    UIAccessibilityAvailableLanguages__AvailableLanguages = v1;

    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = _AXSVoiceOverTouchCopyLanguageRotorItems();
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v12 + 1) + 8 * v7) objectForKey:{@"RotorItem", v12}];
          if ([v8 length])
          {
            v9 = UIAccessibilityAvailableLanguages__AvailableLanguages;
            v10 = [v8 lowercaseString];
            [v9 addObject:v10];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v0 = UIAccessibilityAvailableLanguages__AvailableLanguages;
  }

  return v0;
}

id UIAccessibilityLanguageForCurrentInputMode()
{
  v0 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v1 = [v0 currentInputMode];
  v2 = [v1 primaryLanguage];
  v3 = AXCRemapLanguageCodeToFallbackIfNeccessary();

  return v3;
}

id UIAccessibilityLocalizedNextKeyboardName()
{
  v0 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v1 = [v0 activeInputModes];
  v2 = [v0 nextInputModeFromList:v1 withFilter:0 withTraits:0];

  v3 = UIKitAccessibilityLocalizedString(@"next.international.keyboard.key");
  v4 = _UIAccessibilityLocalizedKeyboardName(v2, v3);

  if (!v4)
  {
    v4 = UIKitAccessibilityLocalizedString(@"next.international.keyboard.key.fallback");
  }

  return v4;
}

uint64_t _UIAXDismissKeyboardIfNecessary(void *a1)
{
  v1 = a1;
  if ([*MEMORY[0x1E69DDA98] _accessibilitySoftwareKeyboardActive] && _UIAXObjectIsBehindKeyboardWithIntersectionType(v1, 0))
  {
    _UIAccessibilityIgnoreNextNotification(*MEMORY[0x1E69DD930]);
    if (([v1 _accessibilityUsesSpecialKeyboardDismiss] & 1) == 0)
    {
      v2 = [v1 _accessibilityWindow];
      v3 = [v2 firstResponder];
      [v3 resignFirstResponder];
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id UIAXApplyPhoneContextTokenToString(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = [a1 componentsSeparatedByString:{@", "}];
  v2 = [MEMORY[0x1E696AD48] decimalDigitCharacterSet];
  [v2 addCharactersInString:@"-"];
  v25 = v2;
  v3 = [v2 invertedSet];
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __UIAXApplyPhoneContextTokenToString_block_invoke;
  v35[3] = &unk_1E78AB640;
  v24 = v3;
  v36 = v24;
  v5 = v4;
  v37 = v5;
  [v1 enumerateObjectsUsingBlock:v35];
  v6 = [MEMORY[0x1E696AD60] string];
  v7 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v8 = [v5 count];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __UIAXApplyPhoneContextTokenToString_block_invoke_2;
  v30[3] = &unk_1E78AB668;
  v9 = v6;
  v31 = v9;
  v23 = v1;
  v32 = v23;
  v10 = v7;
  v33 = v10;
  v34 = v8;
  [v5 enumerateObjectsUsingBlock:v30];
  v11 = [MEMORY[0x1E6988D60] axAttributedStringWithString:v9];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    v16 = *MEMORY[0x1E695E4D0];
    v17 = MEMORY[0x1E6988F00];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *v17;
        v20 = [*(*(&v26 + 1) + 8 * i) rangeValue];
        [v11 setAttribute:v16 forKey:v19 withRange:{v20, v21}];
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v14);
  }

  return v11;
}

void __UIAXApplyPhoneContextTokenToString_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a2;
  v5 = [v3 whitespaceAndNewlineCharacterSet];
  v9 = [v4 stringByTrimmingCharactersInSet:v5];

  v6 = [v9 rangeOfCharacterFromSet:*(a1 + 32)] == 0x7FFFFFFFFFFFFFFFLL;
  v7 = *(a1 + 40);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  [v7 addObject:v8];
}

void __UIAXApplyPhoneContextTokenToString_block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 length];
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) objectAtIndex:a3];
  [v8 appendString:v9];

  LODWORD(v8) = [v6 BOOLValue];
  if (v8)
  {
    v10 = *(a1 + 48);
    v11 = [MEMORY[0x1E696B098] valueWithRange:{v7, objc_msgSend(*(a1 + 32), "length") - v7}];
    [v10 addObject:v11];
  }

  if (*(a1 + 56) - 1 > a3)
  {
    v12 = *(a1 + 32);

    [v12 appendString:{@", "}];
  }
}

id _UIAXStringForAllChildren(void *a1, char a2, uint64_t a3)
{
  v5 = a1;
  v6 = [MEMORY[0x1E695DF70] array];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___UIAXStringForAllChildren_block_invoke;
  v12[3] = &unk_1E78AB780;
  v15 = a2;
  v13 = v5;
  v14 = v6;
  v7 = v6;
  v8 = v5;
  v9 = [v8 _accessibilityFindDescendant:v12 shouldStopAtLeafNodes:a3];
  v10 = AXLabelAndValueForElements();

  return v10;
}

id UIAXStringForAllChildrenWithFilter(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  v7 = [MEMORY[0x1E695DF70] array];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___UIAXStringForAllChildrenWithFilter_block_invoke;
  v14[3] = &unk_1E78AB7A8;
  v18 = 0;
  v16 = v7;
  v17 = v6;
  v15 = v5;
  v8 = v5;
  v9 = v6;
  v10 = v7;
  v11 = [v8 _accessibilityFindDescendant:v14 shouldStopAtLeafNodes:0];
  v12 = AXLabelAndValueForElements();

  return v12;
}

id UIAccessibilityConvertAttachmentsInAttributedStringToAX(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__4;
    v16 = __Block_byref_object_dispose__4;
    v17 = 0;
    v5 = [v3 length];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __UIAccessibilityConvertAttachmentsInAttributedStringToAX_block_invoke;
    v8[3] = &unk_1E78AB690;
    v11 = &v12;
    v9 = v3;
    v10 = v4;
    [v9 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v8}];
    v6 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E6988D60]) initWithString:&stru_1F1DB9E20];
  }

  return v6;
}

void sub_1A9BD50EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __UIAccessibilityConvertAttachmentsInAttributedStringToAX_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7 && !*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = MEMORY[0x1E6988D60];
    v9 = [*(a1 + 32) string];
    v10 = [v8 axAttributedStringWithString:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x1E6965628];
  v14 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6965628]];

  v15 = MEMORY[0x1E69DB648];
  v16 = MEMORY[0x1E69DB650];
  if (v14)
  {
    v17 = [v7 objectForKeyedSubscript:v13];
    v18 = __UIAccessibilitySafeClass();

    if (v18)
    {
      v19 = [v18 contentDescription];
      if ([v19 length])
      {
        v20 = [[UITextAttachmentAccessibilityElement alloc] initWithAccessibilityContainer:*(a1 + 40)];
        [(UITextAttachmentAccessibilityElement *)v20 setGlyph:v18];
        [(UITextAttachmentAccessibilityElement *)v20 setAccessibilityLabel:v19];
        v21 = *(a1 + 40);
        [MEMORY[0x1E696AEC0] stringWithFormat:@"AdaptiveGlyph-%p", v20];
        v23 = v22 = v15;
        [v21 _accessibilitySetRetainedValue:v20 forKey:v23];

        v15 = v22;
        v16 = MEMORY[0x1E69DB650];
        [*(*(*(a1 + 48) + 8) + 40) setAttribute:v20 forKey:*MEMORY[0x1E6988DD8] withRange:{a3, a4}];
      }
    }

LABEL_9:

    goto LABEL_18;
  }

  v24 = *MEMORY[0x1E69DB5F8];
  v25 = [v7 objectForKey:*MEMORY[0x1E69DB5F8]];

  if (v25)
  {
    v26 = [v7 objectForKey:v24];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
      v28 = [(UITextAttachmentAccessibilityElement *)v27 accessibilityLabel];
      v29 = [v28 length];

      if (v29)
      {
        [(UITextAttachmentAccessibilityElement *)v27 setAccessibilityTraits:*MEMORY[0x1E69DDA18]];
        [*(*(*(a1 + 48) + 8) + 40) setAttribute:v27 forKey:*MEMORY[0x1E6988DD8] withRange:{a3, a4}];
        v26 = v27;
      }

      else
      {
        v43 = [(UITextAttachmentAccessibilityElement *)v27 image];

        if (v43)
        {
          v26 = _UIAccessibilityProcessImageAttachment(v27);

          v44 = [(UITextAttachmentAccessibilityElement *)v26 accessibilityLabel];
          v45 = [v44 length];

          if (v45)
          {
            [*(*(*(a1 + 48) + 8) + 40) setAttribute:v26 forKey:*MEMORY[0x1E6988DD8] withRange:{a3, a4}];
          }
        }

        else
        {
          v52 = [(UITextAttachmentAccessibilityElement *)v27 fileType];

          v26 = v27;
          if (v52)
          {
            v53 = MEMORY[0x1E696AEC0];
            v54 = [(UITextAttachmentAccessibilityElement *)v27 fileWrapper];
            v55 = [v54 preferredFilename];
            v56 = [v53 stringWithFormat:@"TextAttachment-%@", v55];

            v57 = [*(a1 + 40) _accessibilityValueForKey:v56];
            v58 = v57;
            if (v57)
            {
              v26 = v57;
            }

            else
            {
              v26 = [[UITextAttachmentAccessibilityElement alloc] initWithAccessibilityContainer:*(a1 + 40)];
              [(UITextAttachmentAccessibilityElement *)v26 setAttachment:v27];
              v60 = _UIAccessibilityProcessImageAttachment(v27);
              v61 = [(UITextAttachmentAccessibilityElement *)v27 accessibilityLabel];
              [(UITextAttachmentAccessibilityElement *)v26 setAccessibilityLabel:v61];

              [(UITextAttachmentAccessibilityElement *)v26 setAccessibilityTraits:[(UITextAttachmentAccessibilityElement *)v27 accessibilityTraits]];
              v62 = [(UITextAttachmentAccessibilityElement *)v27 accessibilityValue];
              [(UITextAttachmentAccessibilityElement *)v26 setAccessibilityValue:v62];

              [*(a1 + 40) _accessibilitySetRetainedValue:v26 forKey:v56];
            }

            [*(*(*(a1 + 48) + 8) + 40) setAttribute:v26 forKey:*MEMORY[0x1E6988DD8] withRange:{a3, a4}];
            v15 = MEMORY[0x1E69DB648];
          }
        }
      }
    }

LABEL_15:

    goto LABEL_18;
  }

  v30 = [v7 objectForKey:*MEMORY[0x1E69DB670]];

  if (!v30)
  {
    v41 = [v7 objectForKey:@"UIAccessibilityTextAttributeContext"];

    if (v41)
    {
      v42 = [v7 objectForKey:*MEMORY[0x1E69DD968]];
      v18 = AXSSTextualContextFromUITextualContext(v42);

      if (v18)
      {
        [*(*(*(a1 + 48) + 8) + 40) setAttribute:v18 forKey:*MEMORY[0x1E6988D58] withRange:{a3, a4}];
      }

      goto LABEL_9;
    }

    v46 = [v7 objectForKeyedSubscript:@"animatedPlaceholderIdentifier"];
    if (!v46 || (v47 = v46, v48 = *(*(*(a1 + 48) + 8) + 40), [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"􀮷"], v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "stringByTrimmingCharactersInSet:", v49), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "length"), v50, v49, v47, v51))
    {
      v18 = [v7 mutableCopy];
      if (!AXDoesRequestingClientDeserveAutomation())
      {
        [v18 removeObjectForKey:*MEMORY[0x1E69DB688]];
        [v18 removeObjectForKey:*v15];
        [v18 removeObjectForKey:*MEMORY[0x1E69DB6A8]];
        [v18 removeObjectForKey:*v16];
      }

      [v18 removeObjectForKey:*MEMORY[0x1E69DB6D0]];
      [v18 removeObjectForKey:*MEMORY[0x1E69DB6E0]];
      [v18 removeObjectForKey:@"_UITextInputDictationResultMetadata"];
      [v18 removeObjectForKey:*MEMORY[0x1E69DB680]];
      [*(*(*(a1 + 48) + 8) + 40) setAttributes:v18 withRange:{a3, a4}];
      goto LABEL_9;
    }

    v59 = *(*(*(a1 + 48) + 8) + 40);
    v26 = UIKitAccessibilityLocalizedString(@"textview.animated.placeholder");
    [v59 setAttribute:v26 forKey:*MEMORY[0x1E6988FA0] withRange:{a3, a4}];
    goto LABEL_15;
  }

  [*(*(*(a1 + 48) + 8) + 40) setAttribute:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6988E90] withRange:{a3, a4}];
LABEL_18:
  v31 = *v16;
  v32 = [v7 objectForKey:*v16];
  v33 = _UIAXColorForObject(v32);

  if (v33)
  {
    [*(*(*(a1 + 48) + 8) + 40) setAttribute:v33 forKey:v31 withRange:{a3, a4}];
  }

  v34 = *MEMORY[0x1E69DB600];
  v35 = [v7 objectForKey:*MEMORY[0x1E69DB600]];
  v36 = _UIAXColorForObject(v35);

  if (v36)
  {
    [*(*(*(a1 + 48) + 8) + 40) setAttribute:v36 forKey:v34 withRange:{a3, a4}];
  }

  v37 = *v15;
  v38 = [v7 objectForKey:*v15];

  if (v38)
  {
    objc_opt_class();
    v39 = [v7 objectForKeyedSubscript:v37];
    v40 = __UIAccessibilityCastAsClass();

    if (v40)
    {
      [*(*(*(a1 + 48) + 8) + 40) setAttribute:v40 forKey:v37 withRange:{a3, a4}];
    }
  }
}

id _UIAccessibilityProcessImageAttachment(void *a1)
{
  v1 = a1;
  v2 = [v1 image];
  [v2 size];
  v5 = *(MEMORY[0x1E695F060] + 8) == v4 && *MEMORY[0x1E695F060] == v3;
  if (v2 == 0 || v5)
  {
    v6 = v1;
  }

  else
  {
    v6 = v2;
  }

  v7 = v6;
  if (([v7 isAccessibilityElement] & 1) == 0 && !v5)
  {
    if (v2)
    {
      v8 = [v2 accessibilityTraits];
      if ((*MEMORY[0x1E69DDA18] & v8) == 0)
      {
        [v7 setAccessibilityTraits:*MEMORY[0x1E69DD9D0]];
      }
    }

    v9 = [v2 accessibilityLabel];
    if (!v9)
    {
      v10 = [v1 fileWrapper];
      v11 = [v10 preferredFilename];

      v12 = [v1 fileWrapper];
      v13 = [v12 filename];
      v14 = [v13 pathExtension];
      v15 = UIAXFileTypeDescriptionForFileExtension();

      v17 = v15;
      v18 = @"__AXStringForVariablesSentinel";
      v9 = __UIAXStringForVariables();
    }

    [v7 setAccessibilityLabel:{v9, v17, v18}];
    [v7 setIsAccessibilityElement:1];
  }

  return v7;
}

id AXSSTextualContextFromUITextualContext(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E69DD9A0]])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v2 = getAXSSVoiceOverTextualContextWordProcessingSymbolLoc_ptr;
    v14 = getAXSSVoiceOverTextualContextWordProcessingSymbolLoc_ptr;
    if (!getAXSSVoiceOverTextualContextWordProcessingSymbolLoc_ptr)
    {
      v3 = AccessibilitySharedSupportLibrary();
      v12[3] = dlsym(v3, "AXSSVoiceOverTextualContextWordProcessing");
      getAXSSVoiceOverTextualContextWordProcessingSymbolLoc_ptr = v12[3];
      v2 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v2)
    {
      AXSSTextualContextFromUITextualContext_cold_5();
    }

LABEL_25:
    v8 = *v2;
LABEL_26:
    v9 = v8;
    goto LABEL_27;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E69DD998]])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v2 = getAXSSVoiceOverTextualContextSpreadsheetSymbolLoc_ptr;
    v14 = getAXSSVoiceOverTextualContextSpreadsheetSymbolLoc_ptr;
    if (!getAXSSVoiceOverTextualContextSpreadsheetSymbolLoc_ptr)
    {
      v4 = AccessibilitySharedSupportLibrary();
      v12[3] = dlsym(v4, "AXSSVoiceOverTextualContextSpreadsheet");
      getAXSSVoiceOverTextualContextSpreadsheetSymbolLoc_ptr = v12[3];
      v2 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v2)
    {
      AXSSTextualContextFromUITextualContext_cold_4();
    }

    goto LABEL_25;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E69DD990]])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v2 = getAXSSVoiceOverTextualContextSourceCodeSymbolLoc_ptr;
    v14 = getAXSSVoiceOverTextualContextSourceCodeSymbolLoc_ptr;
    if (!getAXSSVoiceOverTextualContextSourceCodeSymbolLoc_ptr)
    {
      v5 = AccessibilitySharedSupportLibrary();
      v12[3] = dlsym(v5, "AXSSVoiceOverTextualContextSourceCode");
      getAXSSVoiceOverTextualContextSourceCodeSymbolLoc_ptr = v12[3];
      v2 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v2)
    {
      AXSSTextualContextFromUITextualContext_cold_3();
    }

    goto LABEL_25;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E69DD970]])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v2 = getAXSSVoiceOverTextualContextConsoleSymbolLoc_ptr;
    v14 = getAXSSVoiceOverTextualContextConsoleSymbolLoc_ptr;
    if (!getAXSSVoiceOverTextualContextConsoleSymbolLoc_ptr)
    {
      v6 = AccessibilitySharedSupportLibrary();
      v12[3] = dlsym(v6, "AXSSVoiceOverTextualContextConsole");
      getAXSSVoiceOverTextualContextConsoleSymbolLoc_ptr = v12[3];
      v2 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v2)
    {
      AXSSTextualContextFromUITextualContext_cold_2();
    }

    goto LABEL_25;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E69DD978]])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v2 = getAXSSVoiceOverTextualContextFileSystemSymbolLoc_ptr;
    v14 = getAXSSVoiceOverTextualContextFileSystemSymbolLoc_ptr;
    if (!getAXSSVoiceOverTextualContextFileSystemSymbolLoc_ptr)
    {
      v7 = AccessibilitySharedSupportLibrary();
      v12[3] = dlsym(v7, "AXSSVoiceOverTextualContextFileSystem");
      getAXSSVoiceOverTextualContextFileSystemSymbolLoc_ptr = v12[3];
      v2 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v2)
    {
      AXSSTextualContextFromUITextualContext_cold_1();
    }

    goto LABEL_25;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E69DD988]])
  {
    v8 = getAXSSVoiceOverTextualContextNarrative();
    goto LABEL_26;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E69DD980]])
  {
    v8 = getAXSSVoiceOverTextualContextMessaging();
    goto LABEL_26;
  }

  v9 = 0;
LABEL_27:

  return v9;
}

void sub_1A9BD5F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIAXColorForObject(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v2 = __UIAccessibilityCastAsClass();
      if (v2)
      {
        v3 = [v1 CGColor];
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v4 = CFGetTypeID(v1);
      if (v4 == CGColorGetTypeID())
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id getAXSSVoiceOverTextualContextNarrative()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAXSSVoiceOverTextualContextNarrativeSymbolLoc_ptr;
  v7 = getAXSSVoiceOverTextualContextNarrativeSymbolLoc_ptr;
  if (!getAXSSVoiceOverTextualContextNarrativeSymbolLoc_ptr)
  {
    v1 = AccessibilitySharedSupportLibrary();
    v5[3] = dlsym(v1, "AXSSVoiceOverTextualContextNarrative");
    getAXSSVoiceOverTextualContextNarrativeSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getAXSSVoiceOverTextualContextNarrative_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A9BD6148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXSSVoiceOverTextualContextMessaging()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAXSSVoiceOverTextualContextMessagingSymbolLoc_ptr;
  v7 = getAXSSVoiceOverTextualContextMessagingSymbolLoc_ptr;
  if (!getAXSSVoiceOverTextualContextMessagingSymbolLoc_ptr)
  {
    v1 = AccessibilitySharedSupportLibrary();
    v5[3] = dlsym(v1, "AXSSVoiceOverTextualContextMessaging");
    getAXSSVoiceOverTextualContextMessagingSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getAXSSVoiceOverTextualContextMessaging_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A9BD624C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AXAttributedStringForBetterPronuciation(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E6988D60] axAttributedStringWithString:a2];
  v5 = [MEMORY[0x1E695DF58] preferredLanguages];
  v6 = [v5 firstObject];
  v7 = [v6 hasPrefix:@"en"];

  if (v7 && [v3 isEqualToString:UIAXBetterPronuciationKeyLive])
  {
    [v4 setAttribute:&unk_1F1DC2B50 forKey:*MEMORY[0x1E6988D38]];
  }

  return v4;
}

uint64_t UIAccessibilityIsAppExtension()
{
  if (UIAccessibilityIsAppExtension_onceToken != -1)
  {
    UIAccessibilityIsAppExtension_cold_1();
  }

  return UIAccessibilityIsAppExtension_IsExtension;
}

void __UIAccessibilityIsAppExtension_block_invoke()
{
  objc_opt_class();
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v2 = [v1 objectForKeyedSubscript:@"NSExtension"];
  v3 = __UIAccessibilityCastAsClass();

  v4 = [v3 objectForKey:@"NSExtensionPointIdentifier"];
  UIAccessibilityIsAppExtension_IsExtension = v4 != 0;
}

uint64_t UIAccessibilityIsWidgetExtension()
{
  if (UIAccessibilityIsWidgetExtension_onceToken != -1)
  {
    UIAccessibilityIsWidgetExtension_cold_1();
  }

  return UIAccessibilityIsWidgetExtension_IsWidget;
}

void __UIAccessibilityIsWidgetExtension_block_invoke()
{
  objc_opt_class();
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v2 = [v1 objectForKeyedSubscript:@"NSExtension"];
  v3 = __UIAccessibilityCastAsClass();

  v4 = [v3 objectForKey:@"NSExtensionPointIdentifier"];
  UIAccessibilityIsWidgetExtension_IsWidget = [v4 isEqualToString:@"com.apple.widget-extension"];
}

void sub_1A9BD7254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

id _UIAccessibilityPathForPath(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___UIAccessibilityPathForPath_block_invoke;
  v9[3] = &unk_1E78AB708;
  v10 = v5;
  v11 = a3;
  v6 = v5;
  v7 = UIAccessibilityPathForPath(v6, a2, v9);

  return v7;
}

id UIAccessibilityPathForPath(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    [a2 CGPath];
    Mutable = CGPathCreateMutable();
    v8 = MEMORY[0x1E69E9820];
    v9 = v4;
    AX_CGPathEnumerateElementsUsingBlock();
    v6 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:{Mutable, v8, 3221225472, __UIAccessibilityPathForPath_block_invoke, &unk_1E78AB730}];
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __UIAccessibilityPathForPath_block_invoke(uint64_t a1, int a2, double *a3, uint64_t a4)
{
  if (a4)
  {
    v7 = a4;
    v8 = a3 + 1;
    do
    {
      *(v8 - 1) = (*(*(a1 + 32) + 16))(*(v8 - 1), *v8);
      *v8 = v9;
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = *(a1 + 40);
        v12 = *a3;
        v13 = a3[1];

        CGPathAddLineToPoint(v11, 0, v12, v13);
      }
    }

    else
    {
      v26 = *(a1 + 40);
      v27 = *a3;
      v28 = a3[1];

      CGPathMoveToPoint(v26, 0, v27, v28);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v14 = *(a1 + 40);
        v15 = *a3;
        v16 = a3[1];
        v17 = a3[2];
        v18 = a3[3];

        CGPathAddQuadCurveToPoint(v14, 0, v15, v16, v17, v18);
        break;
      case 3:
        v19 = *(a1 + 40);
        v20 = *a3;
        v21 = a3[1];
        v22 = a3[2];
        v23 = a3[3];
        v24 = a3[4];
        v25 = a3[5];

        CGPathAddCurveToPoint(v19, 0, v20, v21, v22, v23, v24, v25);
        break;
      case 4:
        v10 = *(a1 + 40);

        CGPathCloseSubpath(v10);
        break;
    }
  }
}

double UIAccessibilityPointToPoint(void *a1, double a2, double a3)
{
  v5 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = [v5 window];
  }

  v7 = v6;
  [v6 convertPoint:0 fromWindow:{a2, a3}];
  [v5 convertPoint:v7 fromView:?];
  v9 = v8;

  return v9;
}

double UIAccessibilityPointForPoint(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 window];
  [v5 convertPoint:v6 toView:{a2, a3}];
  v8 = v7;
  v10 = v9;

  if (v6)
  {
    [v6 convertPoint:0 toWindow:{v8, v10}];
    v8 = v11;
  }

  return v8;
}

double UIAccessibilitySceneReferencePointToScreenPointWithView(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 window];
  [v6 convertPoint:0 fromWindow:{a2, a3}];
  v8 = v7;
  v10 = v9;

  v11 = [v5 window];

  [v11 _convertPointFromSceneReferenceSpace:{v8, v10}];
  v13 = v12;

  return v13;
}

id UIAccessibilityInsetBezierPath(void *a1, CGFloat a2, CGFloat a3)
{
  if (a1)
  {
    v5 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:{objc_msgSend(a1, "CGPath")}];
    [v5 bounds];
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    v29 = CGRectInset(v28, a2, a3);
    v10 = v29.size.width;
    v11 = v29.size.height;
    v12 = v29.origin.x;
    v13 = v29.origin.y;
    v22 = CGRectGetWidth(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    sx = v22 / CGRectGetWidth(v30);
    v31.origin.x = v12;
    v31.origin.y = v13;
    v31.size.width = v10;
    v31.size.height = v11;
    v14 = CGRectGetHeight(v31);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v15 = CGRectGetHeight(v32);
    memset(&v26, 0, sizeof(v26));
    v21 = *(MEMORY[0x1E695EFD0] + 16);
    *&v25.a = *MEMORY[0x1E695EFD0];
    v23 = *&v25.a;
    *&v25.c = v21;
    *&v25.tx = *(MEMORY[0x1E695EFD0] + 32);
    v20 = *&v25.tx;
    CGAffineTransformScale(&v26, &v25, sx, v14 / v15);
    v25 = v26;
    [v5 applyTransform:&v25];
    [v5 bounds];
    *&v24.a = v23;
    *&v24.c = v21;
    *&v24.tx = v20;
    memset(&v25, 0, sizeof(v25));
    CGAffineTransformTranslate(&v25, &v24, v12 - v16, v13 - v17);
    v24 = v25;
    [v5 applyTransform:&v24];
    [v5 closePath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

double UIAccessibilityFrameToBounds(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = [v9 window];
  }

  v11 = v10;
  [v10 convertRect:0 fromWindow:{a2, a3, a4, a5}];
  [v9 convertRect:0 fromView:?];
  v13 = v12;

  return v13;
}

double UIAccessibilitySceneReferencePointForScreenPoint(double a1, double a2)
{
  v4 = _anyMainScreenWindow();
  [v4 convertPoint:0 fromWindow:{a1, a2}];
  [v4 _convertPointToSceneReferenceSpace:?];
  v6 = v5;

  return v6;
}

id _anyMainScreenWindow()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  v1 = [v0 screen];
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];

  if (v1 != v2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = AXUIApplicationWindows();
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 screen];
          v10 = [MEMORY[0x1E69DCEB0] mainScreen];

          if (v9 == v10)
          {
            v11 = v8;

            v0 = v11;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  return v0;
}

double UIAccessibilitySceneReferencePointToScreenPoint(double a1, double a2)
{
  v4 = _anyMainScreenWindow();
  [v4 _convertPointFromSceneReferenceSpace:{a1, a2}];
  [v4 convertPoint:0 toWindow:?];
  v6 = v5;

  return v6;
}

double UIAXFrameForElements(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3 = *MEMORY[0x1E695F050];
  v2 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v4 = *(MEMORY[0x1E695F050] + 24);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v15 + 1) + 8 * v9) accessibilityFrame];
        x = v21.origin.x;
        y = v21.origin.y;
        width = v21.size.width;
        height = v21.size.height;
        if (!CGRectIsEmpty(v21))
        {
          v22.origin.x = v3;
          v22.origin.y = v2;
          v22.size.width = v5;
          v22.size.height = v4;
          if (CGRectIsEmpty(v22))
          {
            v4 = height;
            v5 = width;
            v2 = y;
            v3 = x;
          }

          else
          {
            v23.origin.x = v3;
            v23.origin.y = v2;
            v23.size.width = v5;
            v23.size.height = v4;
            v25.origin.x = x;
            v25.origin.y = y;
            v25.size.width = width;
            v25.size.height = height;
            v24 = CGRectUnion(v23, v25);
            v3 = v24.origin.x;
            v2 = v24.origin.y;
            v5 = v24.size.width;
            v4 = v24.size.height;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v3;
}

id __UIAXStringForVariables()
{
  v0 = __AXStringForVariablesWithVariadics();

  return v0;
}

__CFString *UIAXPrivateLocalizedString(void *a1)
{
  v1 = a1;
  v2 = UIAXPrivateLocalizedString_axBundle;
  v3 = &stru_1F1DB9E20;
  if (UIAXPrivateLocalizedString_axBundle || ([MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AXExtraExtras.axbundle"], v4 = objc_claimAutoreleasedReturnValue(), v5 = UIAXPrivateLocalizedString_axBundle, UIAXPrivateLocalizedString_axBundle = v4, v5, (v2 = UIAXPrivateLocalizedString_axBundle) != 0))
  {
    v6 = [v2 localizedStringForKey:v1 value:&stru_1F1DB9E20 table:@"Accessibility"];
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v3 = v6;
  }

  v7 = v3;

  return v3;
}

id UIAXLocalizedStringForKnownAXIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"UIButtonBarPlay"])
  {
    v2 = @"play.button";
LABEL_15:
    v3 = UIKitAccessibilityLocalizedString(v2);
    goto LABEL_16;
  }

  if ([v1 isEqualToString:@"UIButtonBarListIcon"])
  {
    v2 = @"item.list.button";
    goto LABEL_15;
  }

  if ([v1 containsString:@"UITabBarMoreTemplate"])
  {
    v2 = @"more.button";
    goto LABEL_15;
  }

  if ([v1 containsString:@"UIButtonBarArrowUp"])
  {
    v2 = @"previous.input.item";
    goto LABEL_15;
  }

  if ([v1 containsString:@"UIButtonBarArrowDown"])
  {
    v2 = @"next.input.item";
    goto LABEL_15;
  }

  if ([v1 containsString:@"UIButtonBarMarkup"])
  {
    v2 = @"markup.button.label";
    goto LABEL_15;
  }

  if ([v1 containsString:@"UniversalSearchBarButtonIcon"])
  {
    v2 = @"search.button";
    goto LABEL_15;
  }

  v3 = 0;
LABEL_16:

  return v3;
}

id UIAXPriceRangeDescription(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = UIKitAccessibilityLocalizedString(@"price.range.output");
    v4 = [v2 stringWithFormat:v3, v1];

    v5 = [MEMORY[0x1E6988D60] axAttributedStringWithString:v4];
    v6 = [v5 rangeOfString:v1];
    [v5 setAttribute:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6988F88] withRange:{v6, v7}];
  }

  else
  {
    v5 = v1;
  }

  return v5;
}

id UIAXStarRatingStringForRatingWithMaxRatingGranularity(uint64_t a1, int a2, double a3)
{
  if (a2 == 1)
  {
    if (a3 < 0.25 && a3 >= -0.25)
    {
      goto LABEL_65;
    }

    if (a3 < 0.5 && a3 >= 0.0)
    {
LABEL_62:
      v8 = @"star.count.onequarters";
      goto LABEL_63;
    }

    if (a3 < 0.75 && a3 >= 0.25)
    {
LABEL_80:
      v11 = @"star.count.onehalf";
      goto LABEL_66;
    }

    if (a3 >= 1.0 || a3 < 0.5)
    {
      if (a3 >= 1.25 || a3 < 0.75)
      {
        if (a3 >= 1.5 || a3 < 1.0)
        {
          if (a3 >= 1.75 || a3 < 1.25)
          {
            if (a3 >= 2.0 || a3 < 1.5)
            {
              if (a3 >= 2.25 || a3 < 1.75)
              {
                if (a3 >= 2.5 || a3 < 2.0)
                {
                  if (a3 >= 2.75 || a3 < 2.25)
                  {
                    if (a3 >= 3.0 || a3 < 2.5)
                    {
                      if (a3 >= 3.25 || a3 < 2.75)
                      {
                        if (a3 >= 3.5 || a3 < 3.0)
                        {
                          if (a3 >= 3.75 || a3 < 3.25)
                          {
                            if (a3 >= 4.0 || a3 < 3.5)
                            {
                              if (a3 >= 4.25 || a3 < 3.75)
                              {
                                if (a3 >= 4.5 || a3 < 4.0)
                                {
                                  if (a3 >= 4.75 || a3 < 4.25)
                                  {
                                    if (a3 >= 5.0 || a3 < 4.5)
                                    {
                                      if (a3 >= 5.25 || a3 < 4.75)
                                      {
                                        goto LABEL_132;
                                      }

                                      goto LABEL_131;
                                    }

                                    goto LABEL_128;
                                  }

LABEL_125:
                                  v11 = @"star.count.fourandhalf";
                                  goto LABEL_66;
                                }

LABEL_122:
                                v8 = @"star.count.fourandquarters";
                                goto LABEL_63;
                              }

LABEL_119:
                              v11 = @"star.count.four";
                              goto LABEL_66;
                            }

LABEL_116:
                            v8 = @"star.count.threeandthreequarters";
                            goto LABEL_63;
                          }

LABEL_113:
                          v11 = @"star.count.threeandhalf";
                          goto LABEL_66;
                        }

LABEL_110:
                        v8 = @"star.count.threeandquarters";
                        goto LABEL_63;
                      }

LABEL_107:
                      v11 = @"star.count.three";
                      goto LABEL_66;
                    }

LABEL_104:
                    v8 = @"star.count.twoandthreequarters";
                    goto LABEL_63;
                  }

LABEL_101:
                  v11 = @"star.count.twoandhalf";
                  goto LABEL_66;
                }

LABEL_98:
                v8 = @"star.count.twoandquarters";
                goto LABEL_63;
              }

LABEL_95:
              v11 = @"star.count.two";
              goto LABEL_66;
            }

LABEL_92:
            v8 = @"star.count.oneandthreequarters";
            goto LABEL_63;
          }

LABEL_89:
          v11 = @"star.count.oneandhalf";
          goto LABEL_66;
        }

LABEL_86:
        v8 = @"star.count.oneandquarters";
        goto LABEL_63;
      }

LABEL_83:
      v11 = @"star.count.one";
      goto LABEL_66;
    }

LABEL_79:
    v8 = @"star.count.onethreequarters";
    goto LABEL_63;
  }

  if (a2 || (a3 < 0.125 ? (v4 = a3 < -0.125) : (v4 = 1), !v4))
  {
LABEL_65:
    v11 = @"star.count.zerostars";
LABEL_66:
    v12 = UIKitAccessibilityLocalizedString(v11);
    goto LABEL_67;
  }

  if (a3 < 0.375 && a3 >= 0.125)
  {
    goto LABEL_62;
  }

  if (a3 < 0.625 && a3 >= 0.375)
  {
    goto LABEL_80;
  }

  if (a3 < 0.875 && a3 >= 0.625)
  {
    goto LABEL_79;
  }

  if (a3 < 1.125 && a3 >= 0.875)
  {
    goto LABEL_83;
  }

  if (a3 < 1.375 && a3 >= 1.125)
  {
    goto LABEL_86;
  }

  if (a3 < 1.625 && a3 >= 1.375)
  {
    goto LABEL_89;
  }

  if (a3 < 1.875 && a3 >= 1.625)
  {
    goto LABEL_92;
  }

  if (a3 < 2.125 && a3 >= 1.875)
  {
    goto LABEL_95;
  }

  if (a3 < 2.375 && a3 >= 2.125)
  {
    goto LABEL_98;
  }

  if (a3 < 2.625 && a3 >= 2.375)
  {
    goto LABEL_101;
  }

  if (a3 < 2.875 && a3 >= 2.625)
  {
    goto LABEL_104;
  }

  if (a3 < 3.125 && a3 >= 2.875)
  {
    goto LABEL_107;
  }

  if (a3 < 3.375 && a3 >= 3.125)
  {
    goto LABEL_110;
  }

  if (a3 < 3.625 && a3 >= 3.375)
  {
    goto LABEL_113;
  }

  if (a3 < 3.875 && a3 >= 3.625)
  {
    goto LABEL_116;
  }

  if (a3 < 4.125 && a3 >= 3.875)
  {
    goto LABEL_119;
  }

  if (a3 < 4.375 && a3 >= 4.125)
  {
    goto LABEL_122;
  }

  if (a3 < 4.625 && a3 >= 4.375)
  {
    goto LABEL_125;
  }

  if (a3 >= 4.875 || a3 < 4.625)
  {
    if (a3 >= 5.125 || a3 < 4.875)
    {
LABEL_132:
      v12 = UIAXFormatInteger(a3);
LABEL_67:
      v9 = v12;
      if (a1)
      {
        goto LABEL_68;
      }

LABEL_64:
      v10 = v9;
      goto LABEL_69;
    }

LABEL_131:
    v11 = @"star.count.five";
    goto LABEL_66;
  }

LABEL_128:
  v8 = @"star.count.fourandthreequarters";
LABEL_63:
  v9 = UIKitAccessibilityLocalizedString(v8);
  if (!a1)
  {
    goto LABEL_64;
  }

LABEL_68:
  v13 = MEMORY[0x1E696AEC0];
  v14 = UIKitAccessibilityLocalizedString(@"star.verbose.count.format");
  v15 = UIAXFormatFloat();
  v10 = [v13 localizedStringWithFormat:v14, v15, a1];

LABEL_69:

  return v10;
}

id UIAXPriceRangeRating(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v1 stringWithFormat:@"UnicodeHex.%04hx", objc_msgSend(v2, "characterAtIndex:", 0)];
  v4 = VOTBundle();
  v5 = AXNSLocalizedStringForLocale();

  v6 = MEMORY[0x1E696AEC0];
  v7 = UIKitAccessibilityLocalizedString(@"price.range.output");
  [v2 length];

  v8 = AXFormatInteger();
  v9 = [v6 stringWithFormat:v7, v8, v5];

  return v9;
}

id UIAccessibilityGetKeyboardLayoutStar()
{
  v0 = [MEMORY[0x1E69DCBE0] activeInstance];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 safeValueForKey:@"_layout"];
    NSClassFromString(&cfstr_Uikeyboardlayo.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _AXAssert();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void UIAccessibilityPerformBlockForOrientationChange(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = [v8 _accessibilityWindow];
  v5 = [v4 windowScene];
  v6 = [v5 interfaceOrientation];

  v7 = [v8 _accessibilityValueForKey:@"__accessibilityLastSeenInterfaceOrientation"];

  if (v7)
  {
    if ([v8 _accessibilityIntegerValueForKey:@"__accessibilityLastSeenInterfaceOrientation"] != v6)
    {
      [v8 _accessibilitySetIntegerValue:v6 forKey:@"__accessibilityLastSeenInterfaceOrientation"];
      v3[2](v3);
    }
  }

  else
  {
    [v8 _accessibilitySetIntegerValue:v6 forKey:@"__accessibilityLastSeenInterfaceOrientation"];
  }
}

void UIAccessibilityConvertRectToPortraitCoordinates()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 bounds];
}

uint64_t UIAccessibilityViewHasHiddenOrZeroAlphaAncestor(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  v7 = 0;
  v8 = v5;
  if (v5 && v5 != v4)
  {
    v9 = v5;
    while (([v9 isHidden] & 1) == 0)
    {
      [v9 alpha];
      if (v10 < 2.22044605e-16)
      {
        break;
      }

      v8 = [v9 superview];

      v7 = 0;
      if (v8)
      {
        v9 = v8;
        if (v8 != v4)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    v7 = 1;
    v8 = v9;
  }

LABEL_10:

  return v7;
}

id AXUIKeyboardEntryNotificationBlockTimer()
{
  v0 = _UnblockTimer;
  if (!_UnblockTimer)
  {
    v1 = objc_alloc(MEMORY[0x1E6988780]);
    v2 = [v1 initWithTargetSerialQueue:MEMORY[0x1E69E96A0]];
    v3 = _UnblockTimer;
    _UnblockTimer = v2;

    v0 = _UnblockTimer;
  }

  return v0;
}

void AXUIUnblockKeyboardEntryNotifications()
{
  v39 = *MEMORY[0x1E69E9840];
  [_UnblockTimer cancel];
  v0 = _UIAccessibilityNotificationsBlocked();
  v1 = AXLogUIA();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v38 = [v0 count];
    _os_log_impl(&dword_1A9B83000, v1, OS_LOG_TYPE_INFO, "Finished keyboard task, unblocking notifications[%d]", buf, 8u);
  }

  _UIAccessibilityUnblockPostingOfAllNotifications();
  if ([v0 count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v3 = v0;
    v4 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
    v25 = v0;
    if (v4)
    {
      v5 = v4;
      *&v26[8] = 0;
      v6 = 0;
      v7 = *v32;
      *v26 = *MEMORY[0x1E69DD930];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:@"notification"];
          v11 = [v10 unsignedIntValue];

          if (v11 == UIAccessibilitySelectionChangedNotification)
          {
            v12 = v9;

            v6 = v12;
          }

          else if (v11 == UIAccessibilityValueChangedNotification)
          {
            v13 = v9;

            *&v26[4] = v13;
          }

          else if (v11 != *v26)
          {
            [v2 addObject:v9];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v5);

      if (v6)
      {
        [v2 insertObject:v6 atIndex:0];
      }

      v24 = v6;
      if (*&v26[4])
      {
        [v2 insertObject:*&v26[4] atIndex:0];
      }

      else
      {
        *&v26[4] = 0;
      }
    }

    else
    {

      *&v26[4] = 0;
      v24 = 0;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v2;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * j);
          v20 = [v19 objectForKeyedSubscript:@"notification"];
          v21 = [v20 unsignedIntValue];

          v22 = [v19 objectForKeyedSubscript:@"notificationData"];
          v23 = [v19 objectForKeyedSubscript:@"associatedObject"];
          _UIAccessibilitySetAssociatedElementContextForNextNotification(v23);
          UIAccessibilityPostNotification(v21, v22);
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v16);
    }

    v0 = v25;
  }
}

void *__getAXSSVoiceOverTextualContextWordProcessingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilitySharedSupportLibrary();
  result = dlsym(v2, "AXSSVoiceOverTextualContextWordProcessing");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSSVoiceOverTextualContextWordProcessingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilitySharedSupportLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AccessibilitySharedSupportLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AccessibilitySharedSupportLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E78AB7C8;
    v4 = 0;
    AccessibilitySharedSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AccessibilitySharedSupportLibraryCore_frameworkLibrary;
  if (!AccessibilitySharedSupportLibraryCore_frameworkLibrary)
  {
    AccessibilitySharedSupportLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __AccessibilitySharedSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilitySharedSupportLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAXSSVoiceOverTextualContextSpreadsheetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilitySharedSupportLibrary();
  result = dlsym(v2, "AXSSVoiceOverTextualContextSpreadsheet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSSVoiceOverTextualContextSpreadsheetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXSSVoiceOverTextualContextSourceCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilitySharedSupportLibrary();
  result = dlsym(v2, "AXSSVoiceOverTextualContextSourceCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSSVoiceOverTextualContextSourceCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXSSVoiceOverTextualContextConsoleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilitySharedSupportLibrary();
  result = dlsym(v2, "AXSSVoiceOverTextualContextConsole");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSSVoiceOverTextualContextConsoleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXSSVoiceOverTextualContextFileSystemSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilitySharedSupportLibrary();
  result = dlsym(v2, "AXSSVoiceOverTextualContextFileSystem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSSVoiceOverTextualContextFileSystemSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXSSVoiceOverTextualContextNarrativeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilitySharedSupportLibrary();
  result = dlsym(v2, "AXSSVoiceOverTextualContextNarrative");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSSVoiceOverTextualContextNarrativeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXSSVoiceOverTextualContextMessagingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilitySharedSupportLibrary();
  result = dlsym(v2, "AXSSVoiceOverTextualContextMessaging");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSSVoiceOverTextualContextMessagingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AXUIAutomationHandleKeyComplete(__CFString *a1, __CFString *a2, void *a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v16[0] = @"event";
  v16[1] = @"ModifiedInput";
  v5 = &stru_1F1DB9E20;
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = &stru_1F1DB9E20;
  }

  v17[0] = @"KeyEventComplete";
  v17[1] = v6;
  if (a2)
  {
    v5 = a2;
  }

  v16[2] = @"UnmodifiedInput";
  v16[3] = @"ModifierFlags";
  v7 = &unk_1F1DC2788;
  if (a3)
  {
    v7 = a3;
  }

  v17[2] = v5;
  v17[3] = v7;
  v8 = MEMORY[0x1E695DF20];
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = [v8 dictionaryWithObjects:v17 forKeys:v16 count:4];

  v13 = AXLogUIA();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_1A9B83000, v13, OS_LOG_TYPE_INFO, "Posting key notification: %{public}@", &v14, 0xCu);
  }

  UIAccessibilityPostNotification(0xFA2u, v12);
}

uint64_t _UIAXAutomationIgnoreLogging()
{
  if (_UIAXAutomationIgnoreLogging_onceToken != -1)
  {
    _UIAXAutomationIgnoreLogging_cold_1();
  }

  return _UIAXAutomationIgnoreLogging_IgnoreLogging;
}

id _accessibilityAttributesForObject(void *a1, void *a2, unint64_t a3, uint64_t a4, void *a5)
{
  v43 = a5;
  v70 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a2;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v11 = v9;
  v52 = [v11 countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v52)
  {
    v50 = 0;
    v12 = *v56;
    v44 = v60;
    v51 = *v56;
    v46 = v10;
    v47 = v8;
    v45 = a4;
    v49 = v11;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v55 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v54 = v14;
        v16 = [v14 integerValue];
        v17 = [v8 _iosAccessibilityAttributeValue:v16];
        if (v17)
        {
          v18 = v17;
          objc_opt_class();
          v53 = v15;
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 count] > a3)
          {
            v19 = v18;
            v20 = v50;
            if (!v50)
            {
              v20 = [MEMORY[0x1E695DF90] dictionary];
            }

            v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "count", v43, v44)}];
            v50 = v20;
            [v20 setObject:v21 forKeyedSubscript:v54];

            v18 = v19;
            if ([v19 count] > a3)
            {
              v18 = [v19 subarrayWithRange:{0, a3}];
            }

            v12 = v51;
          }

          v22 = UIAXRuntimeConvertOutgoingValue(v16, v18);
          v23 = v22;
          if (v22)
          {
            v24 = a4 == 0;
          }

          else
          {
            v24 = 1;
          }

          if (!v24)
          {
            v25 = v22;
            v26 = v11;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v25, "count")}];
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v48 = v25;
              v27 = v25;
              v28 = [v27 countByEnumeratingWithState:&v64 objects:v69 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = *v65;
                do
                {
                  for (j = 0; j != v29; ++j)
                  {
                    if (*v65 != v30)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v32 = _fetchAttributesIfNecessary(*(*(&v64 + 1) + 8 * j), v26, a3);
                    if (v32)
                    {
                      [v23 addObject:v32];
                    }
                  }

                  v29 = [v27 countByEnumeratingWithState:&v64 objects:v69 count:16];
                }

                while (v29);
              }

              v10 = v46;
              v8 = v47;
              a4 = v45;
              v12 = v51;
              v25 = v48;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v33 = [MEMORY[0x1E695DF90] dictionary];
                v59[0] = MEMORY[0x1E69E9820];
                v59[1] = 3221225472;
                v60[0] = ___fetchAttributesForAllAXUIElementsInOutgoingValue_block_invoke;
                v60[1] = &unk_1E78AB858;
                v61 = v26;
                v63 = a3;
                v34 = v33;
                v62 = v34;
                [v25 enumerateKeysAndObjectsUsingBlock:v59];
                v35 = a4;
                v36 = v10;
                v37 = v25;
                v38 = v62;
                v39 = v34;
                v12 = v51;
                v23 = v39;

                v25 = v37;
                v10 = v36;
                a4 = v35;
                v8 = v47;
              }

              else
              {
                v23 = _fetchAttributesIfNecessary(v25, v26, a3);
              }
            }

            v11 = v49;
          }

          if (v23)
          {
            [v10 setObject:v23 forKeyedSubscript:v54];
          }

          v15 = v53;
        }

        objc_autoreleasePoolPop(v15);
      }

      v52 = [v11 countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v52);
  }

  else
  {
    v50 = 0;
  }

  v40 = v50;
  if (v43)
  {
    v41 = v50;
    v40 = v50;
    *v43 = v50;
  }

  return v10;
}

id _fetchAttributesIfNecessary(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = CFGetTypeID(v5);
  if (v7 == AXUIElementGetTypeID())
  {
    v8 = _UIAXElementForAXUIElementRef();
    v9 = v8;
    if (v8)
    {
      v15 = 0;
      v10 = _accessibilityAttributesForObject(v8, v6, a3, 0, &v15);
      v11 = v15;
      if ([v10 count])
      {
        v12 = [MEMORY[0x1E695DF90] dictionary];
        [v12 setObject:v5 forKeyedSubscript:@"UIAccessibilitySnapshotKeyElement"];
        v13 = AXLogUIA();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          _fetchAttributesIfNecessary_cold_1();
        }

        [v12 setObject:v10 forKeyedSubscript:@"UIAccessibilitySnapshotKeyAttributes"];
        if (v11)
        {
          [v12 setObject:v11 forKeyedSubscript:@"UIAccessibilitySnapshotKeyAttributeArrayCounts"];
        }
      }

      else
      {
        v12 = v5;
      }
    }

    else
    {
      v12 = v5;
    }
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

void ___fetchAttributesForAllAXUIElementsInOutgoingValue_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = _fetchAttributesIfNecessary(a3, *(a1 + 32), *(a1 + 48));
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

void ___accessibilityPluginPostProcessAutomationData_block_invoke()
{
  v0 = AXAccessibilityBundlesDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"UIAutomationSnapshotProcessing.bundle"];

  v2 = [MEMORY[0x1E696AAE8] bundleWithPath:v1];
  v8 = 0;
  v3 = [v2 loadAndReturnError:&v8];
  v4 = v8;
  if (!v3)
  {
    v7 = AXLogUIA();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      ___accessibilityPluginPostProcessAutomationData_block_invoke_cold_1(v1, v4, v7);
    }

    goto LABEL_8;
  }

  v5 = objc_alloc_init([v2 principalClass]);
  v6 = _accessibilityPluginPostProcessAutomationData_Processor;
  _accessibilityPluginPostProcessAutomationData_Processor = v5;

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = AXLogUIA();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___accessibilityPluginPostProcessAutomationData_block_invoke_cold_2(v7);
    }

LABEL_8:

    goto LABEL_9;
  }

  _accessibilityPluginPostProcessAutomationData_Loaded = 1;
LABEL_9:
}

uint64_t ___defaultSnapshotAttributes_block_invoke()
{
  _defaultSnapshotAttributes_defaultAttributes = [&unk_1F1DC2B78 copy];

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_1A9BE04D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1A9BE17AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id location)
{
  objc_destroyWeak((v44 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A9BE4004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSCRCMathExpressionClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ScreenReaderCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ScreenReaderCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E78ABA08;
    v5 = 0;
    ScreenReaderCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ScreenReaderCoreLibraryCore_frameworkLibrary)
  {
    __getSCRCMathExpressionClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SCRCMathExpression");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSCRCMathExpressionClass_block_invoke_cold_1();
  }

  getSCRCMathExpressionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenReaderCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ScreenReaderCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A9BE6044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id UIAccessibilityBundle()
{
  if (UIAccessibilityBundle_onceToken != -1)
  {
    UIAccessibilityBundle_cold_1();
  }

  v1 = UIAccessibilityBundle_UIAXBundle;

  return v1;
}

uint64_t __UIAccessibilityBundle_block_invoke()
{
  UIAccessibilityBundle_UIAXBundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

void _UIAccessibilityStart_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1A9B83000, a2, OS_LOG_TYPE_ERROR, "unable to start accessibility server. error=%d", v2, 8u);
}

void _UIAccessibilityStop_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1A9B83000, a2, OS_LOG_TYPE_ERROR, "unable to stop accessibility server. error=%d", v2, 8u);
}

void __getGCExtendedGamepadClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGCExtendedGamepadClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"UIAccessibilityGameController.m" lineNumber:20 description:{@"Unable to find class %s", "GCExtendedGamepad"}];

  __break(1u);
}

void GameControllerLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GameControllerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"UIAccessibilityGameController.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getGCControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGCControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"UIAccessibilityGameController.m" lineNumber:19 description:{@"Unable to find class %s", "GCController"}];

  __break(1u);
}

void __getLGRRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLGRRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"NSObjectAccessibility.m" lineNumber:97 description:{@"Unable to find class %s", "LGRRequest"}];

  __break(1u);
}

void LookingGlassRuntimeSupportLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LookingGlassRuntimeSupportLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"NSObjectAccessibility.m" lineNumber:95 description:{@"%s", *a1}];

  __break(1u);
}

void __getLGRRuntimeManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLGRRuntimeManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"NSObjectAccessibility.m" lineNumber:96 description:{@"Unable to find class %s", "LGRRuntimeManager"}];

  __break(1u);
}

void __getTinkerRuntimeClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTinkerRuntimeClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"NSObjectAccessibility.m" lineNumber:106 description:{@"Unable to find class %s", "TinkerRuntime"}];

  __break(1u);
}

void __getTinkerRuntimeClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AXTinkerKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"NSObjectAccessibility.m" lineNumber:105 description:{@"%s", *a1}];

  __break(1u);
}

void AXSSTextualContextFromUITextualContext_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAXSSVoiceOverTextualContextFileSystem(void)"];
  [v0 handleFailureInFunction:v1 file:@"UIKitAccessibility.m" lineNumber:38 description:{@"%s", dlerror()}];

  __break(1u);
}

void AXSSTextualContextFromUITextualContext_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAXSSVoiceOverTextualContextConsole(void)"];
  [v0 handleFailureInFunction:v1 file:@"UIKitAccessibility.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

void AXSSTextualContextFromUITextualContext_cold_3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAXSSVoiceOverTextualContextSourceCode(void)"];
  [v0 handleFailureInFunction:v1 file:@"UIKitAccessibility.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
}

void AXSSTextualContextFromUITextualContext_cold_4()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAXSSVoiceOverTextualContextSpreadsheet(void)"];
  [v0 handleFailureInFunction:v1 file:@"UIKitAccessibility.m" lineNumber:44 description:{@"%s", dlerror()}];

  __break(1u);
}

void AXSSTextualContextFromUITextualContext_cold_5()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAXSSVoiceOverTextualContextWordProcessing(void)"];
  [v0 handleFailureInFunction:v1 file:@"UIKitAccessibility.m" lineNumber:32 description:{@"%s", dlerror()}];

  __break(1u);
}

void getAXSSVoiceOverTextualContextNarrative_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAXSSVoiceOverTextualContextNarrative(void)"];
  [v0 handleFailureInFunction:v1 file:@"UIKitAccessibility.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

void getAXSSVoiceOverTextualContextMessaging_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAXSSVoiceOverTextualContextMessaging(void)"];
  [v0 handleFailureInFunction:v1 file:@"UIKitAccessibility.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
}

void AccessibilitySharedSupportLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AccessibilitySharedSupportLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"UIKitAccessibility.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

void _fetchAttributesIfNecessary_cold_1()
{
  OUTLINED_FUNCTION_10();
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_1_2(&dword_1A9B83000, v1, v2, "Set snapshot element %{private}@ for outgoing value %{private}@", v3, v4, v5, v6, 3u);
}

void ___accessibilityPluginPostProcessAutomationData_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&dword_1A9B83000, log, OS_LOG_TYPE_DEBUG, "Could not load: %{public}@ %public}@", &v3, 0x16u);
}

void ___accessibilityPluginPostProcessAutomationData_block_invoke_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = _accessibilityPluginPostProcessAutomationData_Processor;
  _os_log_error_impl(&dword_1A9B83000, log, OS_LOG_TYPE_ERROR, "%{public}@ needs to implement: processSnapshot:options:", &v1, 0xCu);
}

void __getSCRCMathExpressionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSCRCMathExpressionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"UIAccessibilityMathExpression.m" lineNumber:17 description:{@"Unable to find class %s", "SCRCMathExpression"}];

  __break(1u);
}

void __getSCRCMathExpressionClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ScreenReaderCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"UIAccessibilityMathExpression.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x1EEDC70A0](aString);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect UIAccessibilityConvertFrameToScreenCoordinates(CGRect rect, UIView *view)
{
  MEMORY[0x1EEE4DB90](view, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}